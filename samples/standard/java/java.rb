#!/usr/bin/ruby
# encoding: utf-8
$:.unshift( File.dirname( __FILE__ ) )
require 'JavaLexer'
require 'JavaParser'

for file in ARGV
  input = ANTLR3::FileStream.new( file )
  lexer = Java::Lexer.new( input )
  parser = Java::Parser.new( lexer )
  parser.compilationUnit
  puts( "finished parsing #{ file }" )
end
