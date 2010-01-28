#!/usr/bin/ruby
# encoding: utf-8

$LOAD_PATH.unshift( File.dirname( __FILE__ ) )
require 'CMinusLexer'
require 'CMinusParser'

input = ARGV.shift or fail( "please provide an input file path" )
options = {}
if template_file = ARGV.shift
  options[ :templates ] = ANTLR3::Template::Group.load( template_file )
end

input = ANTLR3::FileStream.new( input )
lexer = CMinus::Lexer.new( input )
puts( CMinus::Parser.new( lexer, options ).program.template )
