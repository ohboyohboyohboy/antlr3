#!/usr/bin/ruby
# encoding: utf-8
$:.unshift( File.dirname( __FILE__ ) )
require 'PythonLexer'
require 'PythonParser'
require 'PythonTokenSource'

for file in ARGV
  input = ANTLR3::FileStream.new( file )
  lexer = Python::Lexer.new( input )
  source = Python::TokenSource.new( lexer )
  parser = Python::Parser.new( source )
  parser.file_input
end
