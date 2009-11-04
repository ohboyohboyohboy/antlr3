#!/usr/bin/ruby
# encoding: utf-8
require 'rubygems'
gem :color

module StringTemplate
  class SourceCodeObject
    include Lexer::Locatable
    array_part(:tokens)
    def location
      tokens.first
    end
    def source
      tokens.join('')
    end
  end
  
  class Group < SourceCodeObject
    array_part(:interfaces)
    array_part(:members)
    hash_part :templates
    hash_part :type_maps
    attr_accessor :file, :supergroup, :name
    
    def self.parse(source, file = '(string)')
      GroupParser.new.parse(source, file)
    end
    
    def self.load(path)
      GroupParser.new.parse_file(path)
    end
    
    def initialize(file = '(string)')
      @file = file
    end
    
    def implements!(name)
      interfaces << name.to_s
    end
    
    def add(member)
      member.group = self
      member.index = members.length
      members << member
      member.is_a?(Comment) and return member
      index =
        case member
        when Template then templates
        when TypeMap then type_maps
        end
      index[member.name] = member
      return member
    end
    
    def header
      head = "group #{@name}"
      supergroup and head << " : #{supergroup}"
      interfaces.empty? or head << " implements " << interfaces.join(', ')
      head << ';'
    end
    
    class Member < SourceCodeObject
      attr_accessor :group, :index, :name, :span
      def tokens
        return [] unless group
        group.tokens[span]
      end
      
      def span_size
        @span.end - @span.begin
      end
      
    end
    
    
  end
  class Comment < Group::Member
    def initialize(index)
      @span = index..index
    end
    
    def token
      tokens[0]
    end
    
    def doc_comment?
      source.start_with?("/**")
    end
    
    def to_s
      token.text
    end
  end
  class Template < Group::Member
    Parameter = Struct.new(:name, :value)
    array_part(:parameters)
    def parameter!(name, value = nil)
      param = Parameter[name, value]
      parameters << param
      return param
    end
    
    def lex!(filter = false)
      TemplateLexer.new(body, :location => body_start).lex!(filter)
    end
    def body_token
      defined?(@body_token) and return(@body_token)
      return(tokens.last)
    end
    def body
      text = body_token.text
      case text
      when /^<<[ \t]*\n?(.*)\n?[ \t]*>>$/m then $1
      when /^"(.*)"$/m then $1.gsub(/\\"/,'"')
      else text
      end
    end
    def body_start
      token  = body_token
      location = token.location
      case token.text
      when /^(<<[ \t]*\n?)$/, /^(")/ then location + $1
      else location
      end
    end
    def body_end
      token    = body_token
      location = token.location + token.text
      case token.text
      when /(\n?[ \t]*>>)$/, /(")$/ then location - $1
      else location
      end
    end
    def alias!(name)
      return TemplateAlias.new(self, name)
    end
    
    def to_html(out = '')
      require 'color'
      color = Color::RGB.from_html('#e7fbcf')
      colors = []
      darkening_types = [:TAG_OPEN, :BRACE_OPEN]
      lightening_types = [:TAG_CLOSE, :BRACE_CLOSE]
      escapes = { '<' => 'lt',  '>' => 'gt', '"' => 'quot', '&' => 'amp'  }
      categories = Hash.new { |h,k| k.to_s.downcase }.update(
        :COMMA => "punctuation", :DOT => "operator",
        :LAST => "keyword", :BRACKET_CLOSE => "delimiter",
        :ENDIF => "keyword", :SEMICOLON => "punctuation",
        :BANG => "operator", :LENGTH => "keyword",
        :PAREN_OPEN => "delimiter", :SPACE_ESCAPE => "escape",
        :SHORT_STRING => "string",  :SET => "operator",
        :REST => "keyword",  :PAREN_CLOSE => "delimiter",
        :UNICODE_ESCAPE => "escape",  :LONG_STRING => "string",
        :STRIP => "keyword", :BRACE_OPEN => "delimiter", :ESCAPE => "escape",
        :FIRST => "keyword", :ELSEIF => "keyword", :BRACE_CLOSE => "delimiter",
        :COLON => "operator", :TRUNC => "keyword",
        :IF => "keyword", :BRACKET_OPEN => "delimiter",
        :ELSE => "keyword", :BAR => 'punctuation'
      )
      #:TAG_OPEN => "delimiter", :TAG_CLOSE => "delimiter",
      digits = Math.log10(body_end.line).floor + 1
      line_number = body_start.line
      
      darken = lambda do
        out << '<span style="background-color: %s;">' % color.html
        colors << color
        color = color.darken_by(93)
      end
      lighten = lambda do
        out << '</span>'
        color = colors.pop
      end
      make_line_number = lambda do |line|
        %(<span class="line_number"> %0#{digits}i </span>) % line
      end
      escape = lambda do |text|
        text.gsub(/[<>"&]/) { |char| '&%s;' % escapes[char] }.tap do |text|
          text.gsub!(/\r?\n/) do |nl|
            nl << make_line_number[ line_number += 1 ]
          end
        end
      end
      add_token = lambda do |token|
        darkening_types.include?(token.type) and darken[]
        lightening_types.include?(token.type) and lighten[]
        span_class = categories[token.type] + '_token'
        inner_text = escape[token.text]
        out << '<span class="%s">%s</span>' % [span_class, inner_text]
      end
      
      out << make_line_number[line_number]
      lex!.each do |token|
        add_token[token]
      end
      return out
    end
    
  end
  class TemplateAlias < Template
    def initialize(template, name)
      @template = template
      @name = name
    end
    %w(parameters parameter! alias! body_token body body_location lex!).each do |m|
      class_eval(<<-END, __FILE__, __LINE__)
      def #{m}(*args)
        return @template.#{m}(*args)
      end
      END
    end
  end
  
  class TypeMap < Group::Member
    array_part    :pairs
    attr_accessor :default
    
    def pair!(key, value = nil)
      pair = [key, value]
      pairs << pair
      return pair
    end
  end
end