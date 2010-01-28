#!/usr/bin/ruby
# encoding: utf-8

$:.unshift( File.dirname( __FILE__ ) )
require 'HoistedPredicatesLexer'
require 'HoistedPredicatesParser'

for file in ARGV
  input = ANTLR3::FileStream.new( file )
  lexer = HoistedPredicates::Lexer.new( input )
  parser = HoistedPredicates::Parser.new( lexer )
  parser.stat
end
