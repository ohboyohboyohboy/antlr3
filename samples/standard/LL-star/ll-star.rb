#!/usr/bin/ruby
# encoding: utf-8
$:.unshift( File.dirname( __FILE__ ) )
require 'LLStarLexer'
require 'LLStarParser'

for file in ARGV
  input = ANTLR3::FileStream.new( file )
  lexer = LLStar::Lexer.new( input )
  parser = LLStar::Parser.new( lexer )
  parser.program
end
