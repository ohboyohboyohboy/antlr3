#!/usr/bin/ruby
# encoding: utf-8

$:.unshift( File.dirname( __FILE__ ) )
require 'LangLexer'
require 'LangParser'
require 'LangDumpDecl'

for file in ARGV
  input = ANTLR3::FileStream.new( file )
  parser = Lang::Parser.new( input )
  tree = parser.start.tree
  puts( "tree: #{ tree.inspect }" )
  nodes = ANTLR3::AST::CommonTreeNodeStream.new(
    tree, :token_stream => parser.input
  )
  LangDumpDecl::TreeParser.new( nodes ).decl
end
