#!/usr/bin/ruby
# encoding: utf-8

Highlight.load_recognizer 'shell'

module Highlight
module Languages
class Shell
  include ::Shell::TokenData
  
  attr_reader :lexer, :source, :html
  
  CATEGORIES = {}
  
  def self.add_category( name, *types )
    for type in types
      Integer === type or type = ::Shell::TokenData[ type ]
      CATEGORIES[ type ] = name
    end
    return nil
  end
  
  add_category( "c", COMMENT )
  add_category( 'go', CMD_OUTPUT )
  add_category( "ni", COMMAND_NAME )
  add_category( "kp", COMMAND_END, CLOSE_PAR, OPEN_PAR )
  add_category( "nv", CHUNK )
  add_category( "o", REDIRECT, PIPELINE_OPERATOR )
  add_category( "ow", GLOB )
  add_category( "s", STRING )
  add_category( "sb", SHELL_STRING )
  add_category( "ss", SWITCH )
  add_category( "vg", VARIABLE )
  add_category( "w", SPACE )
  
  def initialize( source, options = {} )
    @source = source.to_s
    @lexer  = ::Shell::Lexer.new( source )
    @tokens = ANTLR3::CommonTokenStream.new( @lexer )
    
    klass = options.fetch( :class, 'shell' )
    id    = options.fetch( :id, __id__.abs.to_s )
    
    @html = Formatters::HTML::CodeBlock.new( klass, id, options )
    if @prompt = options[ :prompt ]
      @html.add_token( 'gp', @prompt )
      @html.add_token( 'w', ' ' )
    end
    
    @tokens.walk do | token |
      text = ( token.type == CMD_OUTPUT ? token.text.fixed_indent( 0 ) : token.text )
      @html.add_token( categorize( token ), text )
      
      if @prompt and token.type == COMMAND_END and token.text =~ /[\r\n]/
        @tokens.hold do
          while token = @tokens.look and token.type == SPACE || token.type == CMD_OUTPUT
            @tokens.consume
          end
          
          if token = @tokens.look and token.type != EOF
            @html.add_token( 'gp', @prompt )
            @html.add_token( 'w', ' ' )
          end
        end
      end
    end
  end
  
  def to_s
    @html.to_s
  end
  
private
  
  def categorize( token )
    CATEGORIES[ token.type ]
  end
end
end
end
