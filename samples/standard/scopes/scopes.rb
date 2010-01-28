#!/usr/bin/ruby
# encoding: utf-8
$:.unshift( File.dirname( __FILE__ ) )
require 'SymbolTableLexer'
require 'SymbolTableParser'

for file in ARGV
  input = ANTLR3::FileStream.new( file )
  lexer = SymbolTable::Lexer.new( input )
  parser = SymbolTable::Parser.new( lexer )
  parser.prog
end
