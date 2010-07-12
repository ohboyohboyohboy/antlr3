#!/usr/bin/ruby
# encoding: utf-8

Highlight.load_recognizer 'pygmentize'

module Highlight
module Languages
class Generic
  attr_reader :language, :lexer, :source, :tokens, :html
  
  def initialize( language, source, options = {} )
    @language = language.to_s
    @source = source.to_s
    @lexer  = Pygmentize.new( language )
    @lexer.lex( @source, options )
    @tokens = ANTLR3::CommonTokenStream.new( @lexer )
    c = options[ :class ] || @language
    id = options[ :id ] || @language + __id__.abs.to_s
    @html = Formatters::HTML::CodeBlock.new( c.to_s, id.to_s, options )
    
    preprocess
    for token in @tokens
      @html.add_token( categorize( token ), token.text )
    end
    postprocess
  end
  
  def to_s
    @html.to_s
  end

private
  
  def categorize( token )
    token.name
  end
  
  def preprocess
    
  end
  
  def postprocess
    lines = @html.lines
    jumps = ( 0 ... lines.length ).select do |i|
      lines[ i ].find { |t| t.type == 'c1' and t.text =~ /~~> \d+/ }
    end
    jumps << lines.length
    jumps.each_cons( 2 ) do |min, max|
      jump_line = lines[ min ]
      jump_line.tag( 'jump' )
      jump_line.number = nil
      
      for tk in jump_line
        if tk.type == 'c1' and tk.text =~ /(~~> (\d+))/
          number = $2.to_i
          tk.text[ $1 ] = "skipping to line #{ number }..."
        end
      end
      
      lines[ min + 1 ... max ].each_with_index do |ln, i|
        ln.number = number + i
      end
    end
  end
  
end
end
end
