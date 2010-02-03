#!/usr/bin/ruby
# encoding: utf-8
$:.unshift( File.dirname( __FILE__ ) )
require 'DynamicScopesLexer'
require 'DynamicScopesParser'

for file in ARGV
  input = ANTLR3::FileStream.new( file )
  lexer = DynamicScopes::Lexer.new( input )
  parser = DynamicScopes::Parser.new( lexer )
  parser.program
end
