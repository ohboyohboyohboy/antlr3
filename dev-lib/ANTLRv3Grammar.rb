#!/usr/bin/ruby
# encoding: utf-8
#
# author: Kyle Yetter
#

require 'ANTLRv3Grammar/parser'
require 'ANTLRv3Grammar/lexer'

module ANTLRv3Grammar
  module_function
  
  def parse_char_literal( literal )
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

end
