#!/usr/bin/ruby
# encoding: utf-8
$:.unshift( File.dirname( __FILE__ ) )
require 'CLexer'
require 'CParser'

for file in ARGV
  input = ANTLR3::FileStream.new( file )
  lexer = C::Lexer.new( input )
  parser = C::Parser.new( lexer )
  parser.translation_unit
end
