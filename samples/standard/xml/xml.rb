#!/usr/bin/ruby
# encoding: utf-8
$:.unshift( File.dirname( __FILE__ ) )
require 'XML'

for file in ARGV
  input = ANTLR3::FileStream.new( file )
  XML::Lexer.new( input ).to_a
end
