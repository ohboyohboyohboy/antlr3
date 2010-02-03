#!/usr/bin/ruby
# encoding: utf-8

$:.unshift( File.dirname( __FILE__ ) )
require 'SimpleCLexer'
require 'SimpleCParser'
require 'SimpleCWalker'

for file in ARGV
  input = ANTLR3::FileStream.new( file )
  parser = SimpleC::Parser.new( input )
  tree = parser.program.tree
  puts( "tree: #{ tree.inspect }" )
  nodes = ANTLR3::AST::CommonTreeNodeStream.new(
    tree, :token_stream => parser.input
  )
  SimpleCWalker::TreeParser.new( nodes ).program
end
