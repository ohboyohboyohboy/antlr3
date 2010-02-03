#!/usr/bin/ruby
# encoding: utf-8
$:.unshift( File.dirname( __FILE__ ) )
require 'TweakLexer'
require 'TweakParser'

for file in ARGV
  input = ANTLR3::FileStream.new( file )
  lexer = Tweak::Lexer.new( input )
  parser = Tweak::Parser.new( lexer )
  parser.program
  puts( parser.input.render )
end
