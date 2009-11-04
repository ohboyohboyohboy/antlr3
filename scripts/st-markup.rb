#!/usr/bin/ruby
# encoding: utf-8

establish 'cli-main'
require 'strscan'
Ruby.project ||= 'text'
require 'text/table'


class STMarkupParser < StringScanner
  class Node < Array
    def type
      self[0]
    end
    def start
      self[1,2]
    end
    def start_line
      self[1]
    end
    def start_column
      self[2]
    end
    def finish
      self[-2,2]
    end
    def finish_line
      self[-2]
    end
    def finish_column
      self[-1]
    end
    def line_span
      (self[1])..(self[-2])
    end
    def to_s
      self[3...-2].map { |v| v.to_s }.join('')
    end
  end
  Context = Struct.new(:node)
  
  attr_reader :stack, :context, :index
  
  def initialize(source)
    super
    @stack = []
    @line = 1
    @column = 0
    @context = nil
    @index = []
    open('top')
  end
  
  def parse
    until eos?
      step
    end
    unless @context[-2,2] == [@line, @column]
      @context.push @line, @column
    end
    return @context
  end
  
  def step
    if scan(%r|<(/)?(\w\S*?)>|)
      if self[1]
        close(self[2])
      else
        open(self[2])
      end
    elsif text = scan_until(%r|(?=</?\w\S*>)|) and !text.empty?
      add(text)
    else
      add(rest)
    end
  end
  
  def add(text)
    @context << text
    line_count = text.count("\n")
    @line += line_count
    line_count.zero? ? (@column += text.length) :
        (@column = text.length - text.rindex("\n") - 1)
  end
  
  def close(tag)
    if @context[0] == tag
      @context << @line << @column
      @context = @stack.pop
    else
      puts "bad close tag %p" % tag
    end
  end
  def open(tag)
    node = Node[tag, @line, @column]
    new_context = node
    unless @context.nil?
      @stack.push(@context)
      @context << new_context
    end
    @index << new_context
    @context = new_context
  end
end

#$scanner = STMarkupParser.new(source)

Main do
  mixin(:sources) do
    argument(:file) do
      arity(1)
      validate { |v| test(?f, v) }
    end
    
    def new_parser
      source = File.read params[:file].value
      parser = STMarkupParser.new(source)
      parser.parse
      return parser
    end
  end
  mixin(:filters) do
    option(:line, 'l') do
      description "an integer line number or a range in the form of start..finish -- used to limit the scope"
      cast do |v|
        case v
        when /^\d+$/ then v.to_i
        when /^(\d+)..(\d+)$/ then ($1.to_i)..($2.to_i)
        when /^(\d+)...(\d+)$/ then ($1.to_i)...($2.to_i)
        else raise "bad line range value #{v}"
        end
      end
      arity(1)
      argument_required
    end
  end
  mode(:list) do
    mixin(:sources)
    mixin(:filters)
    
    def run
      parser = new_parser
      if lines = params[:line].value
        matches =
          case lines
          when Integer
            parser.index.select do |node|
              node.line_span.include?(lines)
            end
          when Range
            parser.index.select do |node|
              span = node.line_span
              span.include?(lines.begin) || lines.include?(span.begin)
            end
          end
        rows = matches.map { |m| [m.type, m.line_span.inspect] }
        table = Text::Table.new(rows) do |t, name, span|
          name.title = 'Template Name'
          span.title = 'Line Span'
          t.row_divider = true
        end
        puts(table)
      end
    
    end
  end
  
end

