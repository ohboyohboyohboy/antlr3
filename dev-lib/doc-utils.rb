#!/usr/bin/ruby
# encoding: utf-8

require 'redcloth'
require 'highlight'
require 'erb'

module ANTLRDoc
  RAW_HTML = <<-END.gsub( /^\s+/, '' )
    <notextile>
    %s
    </notextile>
  END
  
  class Markup < RedCloth::TextileDoc
    def self.convert( source, *args )
      m = new( source, *args )
      block_given? and yield( m )
      return( m.to_html )
    end
    
    def initialize( source, *args )
      super( source, args )
      self.hard_breaks = false
    end
  end
  
  class CodeFrame
    SOURCE = ERB.new( <<-END.gsub( /^\s+/, '' ), nil, '%' )
      <notextile>
      <div class="code-frame">
      % if @header
        <div class="code-header"><%= Markup.convert( @header, :lite_mode ) %></div>
      % end
        <%= @body %>
      % if @footer
        <div class="code-footer"><%= Markup.convert( @footer, :lite_mode ) %></div>
      % end
      </div>
      </notextile>
    END
    
    attr_accessor :language, :body
    
    def initialize( language, source, options = {} )
      @header = @footer = nil
      if source =~ /\A(.+?)\n={3,}\n(.+)/m
        @header, source = $1, $2
        options[ :line ] and options[ :line ] += @header.count( $/ ) + 2
        @header.strip!
      end
      if source =~ /\A(.+?)\n\-{3,}\n(.+)/m
        source, @footer = $1, $2.strip
      end
      
      @body = 
        case @language = language
        when :antlr
          Highlight::Languages::ANTLR.new( source, options )
        when :ruby then
          Highlight::Languages::Generic.new( 'ruby', source )
        when :cmd, :shell
          options[ :prompt ] ||= '~>'
          options.has_key?( :number_lines ) or
            options[ :number_lines ] = false
          Highlight::Languages::Shell.new( source, options )
        end
    end
    
    def to_s
      SOURCE.result( binding )
    end
    
  end
  
  class Article
    REGION = %r<
      ^(
        « \ * (\S+) \ * \n    # tag line:     « ruby
          (.*?) \n            # body:         some = ruby.code
        » \ * \n              # closing line: »
      )
    >mx
    
    $articles = []
    $article_index = {}
    
    def self.load( file, template, options = {} )
      file = File.expand_path( file )
      unless article = $articles.find { | a | a.source_file == file }
        article = new( file )
        $articles << article
      end
      
      article.configure( template, options )
      $article_index[ article.title ] =
        $article_index[ article.name ] =
        article
      
      return( article )
    end
    
    attr_accessor :source_file, :name, :source, :title, :time, :stylesheets, :scripts,
                  :author, :email, :output_directory, :template, :empty
    
    def initialize( source_file )
      @source_file = source_file
      if not test( ?f, @source_file ) and test( ?d, File.dirname( @source_file ) )
        warn( "article source #{ source_file } does not exist" )
        warn( "creating an empty source file at #{ source_file }" )
        open( @source_file, 'w' ) { | f | f.write( '' ) }
      end
      
      @empty = false
      @name = File.basename( @source_file, '.*' )
      @template = nil
      @source = File.read( source_file )
      if @source.empty?
        @empty = true
        @source = "h1. Coming Soon"
      end
      
      @time = File.mtime( source_file )
      @title = File.basename( source_file, '.*' )
      @output_directory = File.dirname( source_file )
      @email = @author = nil
      @stylesheets = []
      @scripts = []
      @inline_styles = []
    end
    
    alias :empty? :empty
    
    def configure( template, options = {} )
      @template = template
      title = options[ :title ] and @title = title
      time  = options[ :time ]  and @time  = time
      author = options[ :author ] and @author = author
      email = options[ :email ] and @email = email
      dir = options[ :output_directory ] and @output_directory = dir
      return( self )
    end
    
    def convert( dest = output_file )
      open( dest, 'w' ) do | out |
        out.write( generate )
      end
    end
    
    def output_file
      File.join( @output_directory, "#@name.html" )
    end
    
    def generate
      outline
      @template.result( binding )
    end
    
    def body
      @body ||= begin
        rc = RedCloth.new( preprocess )
        rc.hard_breaks = false
        rc.to_html
      end
    end
    
    def raw_html( src )
      RAW_HTML % src.to_s
    end
    
    def outline
      @outline ||= begin
        count = 0
        headers = []
        body.gsub!( %r(<h1([^\n<>]*)>(.+?)</h1>)m ) do
          attrs, title = $1, $2
          if attrs =~ /id="(.+?)"/
            id = $1
          else
            id = "section-#{ count += 1 }"
            attrs << %( id="#{ id }")
          end
          headers << [ id, title.strip ]
          %(<h1#{ attrs }>#{ title }</h1>)
        end
        headers
      end
    end
    
    def preprocess
      [ @stylesheets, @scripts, @inline_styles ].each { | list | list.clear }
      
      source = @source.gsub( /(\[\[((?:\S| (?=\S))+?)\]\])/ ) do
        ( article = $article_index[ $2 ] ) ? link_article( article ) : $1
      end
      
      line_no = 0
      out = []
      block_line = block = tag = nil
      for line in source.split( $/ )
        line_no += 1
        if ( line =~ /^« *(\S+)\ */ ) ... ( line =~ /^»/ )
          if tag.nil? then
            tag = $1.downcase.to_sym
            block = ''
            block_line = line_no + 1
          elsif line =~ /^»/
            out << special_block( tag, block.chomp, block_line )
            tag = block = block_line = nil
          else
            block << line << $/
          end
        else
          out << line
        end
      end
      
      [ @stylesheets, @scripts, @inline_styles ].each { | list | list.uniq! }
      
      return( out.join( $/ ) )
    end
    
    def special_block( tag, content, block_line )
      case tag
      when :raw then raw_html( content )
      when :antlr then
        @stylesheets << 'ANTLR3.css'
        CodeFrame.new(
          tag, content,
          :line => block_line, :file => File.relative( @source_file )
        )
      when :ruby then
        @stylesheets << "ruby.css"
        CodeFrame.new( tag, content )
      when :style
        @inline_styles << content
        ''
      when :cmd, :shell
        @stylesheets << 'shell.css'
        CodeFrame.new( tag, content, :number_lines => false, :prompt => '~>' )
      end
    end
    
    def link_article( article )
      href = File.relative( article.output_file, @output_directory )
      %(<a href="#{ href }">#{ article.title }</a>)
    end
    
    def relative( file )
      File.relative( file, @output_directory )
    end
    
    private :raw_html
  end
  
end
