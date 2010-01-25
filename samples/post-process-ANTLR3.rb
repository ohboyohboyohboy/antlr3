#!/usr/bin/ruby
# encoding: utf-8

establish 'standard'

def extract(file, pattern)
  src = File.read(file)
  if src =~ pattern
    return $~[0]
  else
    fail "failed to anything in #{file} against #{pattern.inspect}"
  end
end

lexer_lib = 'ANTLRv3Grammar/ANTLRv3GrammarLexer.rb'
parser_lib = 'ANTLRv3Grammar/ANTLRv3GrammarParser.rb'

lexer = extract(lexer_lib, /^ *class Lexer \< ANTLR3::Lexer.+? *end # class Lexer/m)
parser = extract(parser_lib, /^( *)class Parser \< ANTLR3::Parser.+?\n\1end +# class Parser < ANTLR3::Parser/m)


output = ERB.new(<<-'ERB')
this_directory = File.expand_path( File.dirname( __FILE__ ) )
$:.unshift( this_directory ) unless $:.include?( this_directory )

antlr_load_failed = proc do
  load_path = $LOAD_PATH.map { |dir| '  - ' << dir }.join( $/ )
  raise LoadError, <<-END.strip!
  
Failed to load the ANTLR3 runtime library (version 1.4.0):

Ensure the library has been installed on your system and is available
on the load path. If rubygems is available on your system, this can
be done with the command:
  
  gem install antlr3

Current load path:
#{ load_path }

  END
end

defined?( ANTLR3 ) or begin
  
  # 1: try to load the ruby antlr3 runtime library from the system path
  require 'antlr3'
  
rescue LoadError
  
  # 2: try to load rubygems if it isn't already loaded
  defined?( Gem ) or begin
    require 'rubygems'
  rescue LoadError
    antlr_load_failed.call
  end
  
  # 3: try to activate the antlr3 gem
  begin
    Gem.activate( 'antlr3', '= 1.4.0' )
  rescue Gem::LoadError
    antlr_load_failed.call
  end
  
  require 'antlr3'
  
end
# <~~~ end load path setup

module ANTLRv3Grammar
  module_function
  
  def parse_char_literal(literal)
    case literal
    when /^'\\u([0-9A-F]{4})'$/i
      case value = $1.to_i(16)
      when 0x00..0x7f then value.chr
      when 0x80..0x7ff
        char = ''
        high, low = value >> 8, value & 0b1111_1111
        char << (0b1100_0000 | high << 2 | low >> 6)
        char << (0b1000_0000 | low & 0b0011_1111)
        return(char)
      when 0x80..0xffff
        char = ''
        high, low = value >> 8, value & 0b1111_1111
        char << (0b1110_0000 | high >> 4)
        char << (0b1000_0000 | (high & 0b0000_1111) << 2 | low >> 6)
        char << (0b1000_0000 | low & 0b0011_1111)
        return(char)
      end
    when /^'\\([nrtbf">\\'\.])'$/
      case $1
      when 'n' then "\n"
      when 'r' then "\r"
      when 't' then "\t"
      when 'b' then "\b"
      when 'f' then "\f"
      else $1
      end
    when /^'(.)'$/ then $1
    else $stderr.puts("#{__FILE__}:#{__LINE__} -> unknown literal #{literal.inspect}"); literal
    end
  end
  
  def convert_to_sexp(node)
    require 'sexp'
    if node.leaf?
      if token = node.token
        case token.name
        when 'ID' then token.text.to_sym
        when 'CHAR_LITERAL' then s(:literal, parse_char_literal(token.text))
        when 'ACTION' then s(:action, token.text[1...-1])
        when 'STRING_LITERAL' then s(:literal, token.text)
        when 'SEMPRED' then s(:sem_pred, token.text[1...-2])
        when 'EOA', 'EOB', 'EOR' then s(token.name.downcase.to_sym)
        when 'TOKEN_REF', 'RULE_REF' then s(token.name.downcase.to_sym, token.text.to_sym)
        when 'INT' then s(:literal, token.text.to_i)
        when 'T__92' then '.'
        when 'SYN_SEMPRED' then :syn_sempred
        else $stderr.puts "#{token.name}: #{token.text.inspect}";  token
        end
      else
        return(nil)
      end
    else
      name = (token = node.token) ? token.name.downcase.to_sym : :block
      children = node.children.map { |child| convert_to_sexp(child) }
      if children.last.is_a?(::Sexp)
        case children.last[0]
        when :eob, :eor, :eoa then children.pop
        end
      end
      return(s(name, *children))
    end
  end
  
  def parse( grammar_source )
    lexer = Lexer.new( grammar_source )
    parser = Parser.new( lexer )
    return( parser.grammar_def.tree )
  end
  
  def load( grammar_path )
    parse( ANTLR3::FileStream.new( grammar_path ) )
  end

  # TokenData defines all of the token type integer values
  # as constants, which will be included in all 
  # ANTLR-generated recognizers.
  const_defined?(:TokenData) or TokenData = ANTLR3::TokenScheme.new

  module TokenData

    # define the token constants
    define_tokens( :BACKTRACK_SEMPRED => 34, :DOUBLE_ANGLE_STRING_LITERAL => 53, 
                   :LEXER_GRAMMAR => 24, :EOA => 19, :ARGLIST => 22, :EOF => -1, 
                   :SEMPRED => 31, :ACTION => 47, :EOB => 18, :TOKEN_REF => 44, 
                   :T__93 => 93, :T__91 => 91, :RET => 23, :T__92 => 92, 
                   :STRING_LITERAL => 45, :T__90 => 90, :ARG => 21, :EOR => 17, 
                   :ARG_ACTION => 50, :DOUBLE_QUOTE_STRING_LITERAL => 52, 
                   :NESTED_ARG_ACTION => 60, :ACTION_CHAR_LITERAL => 62, 
                   :T__80 => 80, :T__81 => 81, :RULE => 7, :T__82 => 82, 
                   :T__83 => 83, :ACTION_ESC => 64, :PARSER_GRAMMAR => 25, 
                   :SRC => 54, :CHAR_RANGE => 14, :INT => 49, :EPSILON => 15, 
                   :T__85 => 85, :T__84 => 84, :T__87 => 87, :T__86 => 86, 
                   :T__89 => 89, :REWRITE => 39, :T__88 => 88, :WS => 66, 
                   :T__71 => 71, :T__72 => 72, :COMBINED_GRAMMAR => 27, 
                   :T__70 => 70, :LEXER => 6, :SL_COMMENT => 55, :TREE_GRAMMAR => 26, 
                   :T__76 => 76, :CLOSURE => 10, :T__75 => 75, :PARSER => 5, 
                   :T__74 => 74, :T__73 => 73, :T__79 => 79, :T__78 => 78, 
                   :T__77 => 77, :T__68 => 68, :T__69 => 69, :T__67 => 67, 
                   :NESTED_ACTION => 63, :ESC => 58, :FRAGMENT => 35, :ID => 20, 
                   :TREE_BEGIN => 36, :AT => 40, :ML_COMMENT => 56, :ALT => 16, 
                   :SCOPE => 30, :LABEL_ASSIGN => 41, :DOC_COMMENT => 4, 
                   :WS_LOOP => 65, :RANGE => 13, :TOKENS => 43, :GATED_SEMPRED => 32, 
                   :LITERAL_CHAR => 57, :BANG => 38, :LIST_LABEL_ASSIGN => 42, 
                   :ACTION_STRING_LITERAL => 61, :ROOT => 37, :RULE_REF => 51, 
                   :SYNPRED => 12, :OPTIONAL => 9, :CHAR_LITERAL => 46, 
                   :LABEL => 28, :TEMPLATE => 29, :SYN_SEMPRED => 33, :XDIGIT => 59, 
                   :BLOCK => 8, :POSITIVE_CLOSURE => 11, :OPTIONS => 48 )

    # register the proper human-readable name or literal value
    # for each token type
    #
    # this is necessary because anonymous tokens, which are
    # created from literal values in the grammar, do not
    # have descriptive names
    register_names( "DOC_COMMENT", "PARSER", "LEXER", "RULE", "BLOCK", "OPTIONAL", 
                    "CLOSURE", "POSITIVE_CLOSURE", "SYNPRED", "RANGE", "CHAR_RANGE", 
                    "EPSILON", "ALT", "EOR", "EOB", "EOA", "ID", "ARG", 
                    "ARGLIST", "RET", "LEXER_GRAMMAR", "PARSER_GRAMMAR", 
                    "TREE_GRAMMAR", "COMBINED_GRAMMAR", "LABEL", "TEMPLATE", 
                    "SCOPE", "SEMPRED", "GATED_SEMPRED", "SYN_SEMPRED", 
                    "BACKTRACK_SEMPRED", "FRAGMENT", "TREE_BEGIN", "ROOT", 
                    "BANG", "REWRITE", "AT", "LABEL_ASSIGN", "LIST_LABEL_ASSIGN", 
                    "TOKENS", "TOKEN_REF", "STRING_LITERAL", "CHAR_LITERAL", 
                    "ACTION", "OPTIONS", "INT", "ARG_ACTION", "RULE_REF", 
                    "DOUBLE_QUOTE_STRING_LITERAL", "DOUBLE_ANGLE_STRING_LITERAL", 
                    "SRC", "SL_COMMENT", "ML_COMMENT", "LITERAL_CHAR", "ESC", 
                    "XDIGIT", "NESTED_ARG_ACTION", "ACTION_STRING_LITERAL", 
                    "ACTION_CHAR_LITERAL", "NESTED_ACTION", "ACTION_ESC", 
                    "WS_LOOP", "WS", "'lexer'", "'parser'", "'tree'", "'grammar'", 
                    "';'", "'}'", "'::'", "'*'", "'protected'", "'public'", 
                    "'private'", "':'", "'throws'", "','", "'('", "'|'", 
                    "')'", "'catch'", "'finally'", "'=>'", "'~'", "'<'", 
                    "'>'", "'.'", "'?'", "'+'", "'$'" )
    
  end

<%= lexer %>

<%= parser %>

end
ERB

puts output.result(binding)