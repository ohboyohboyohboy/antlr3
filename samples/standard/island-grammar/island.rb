#!/usr/bin/ruby
# encoding: utf-8
$:.unshift( File.dirname( __FILE__ ) )
require 'SimpleLexer'
require 'SimpleParser'

for file in ARGV
  input  = ANTLR3::FileStream.new( file )
  lexer  = Simple::Lexer.new( input )
  parser = Simple::Parser.new( lexer )
  parser.program
end
