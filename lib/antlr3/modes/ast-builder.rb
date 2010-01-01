#!/usr/bin/ruby
# encoding: utf-8
require 'antlr3'
require 'antlr3/tree'

module ANTLR3
module ASTBuilder
  extend ClassMacros
  
  def self.included(klass)
    def klass.return_scope_members
      super.push(:tree)
    end
  end
  
  def initialize( input, options = {} )
    @adaptor = options[:adaptor] ||= begin
      (input.adaptor rescue nil) or
        AST::CommonTreeAdaptor.new( token_class )
    end
    super( input, options )
  end
  
  shared_attribute( :adaptor )
  
private

  def subtree_stream(desc, element = nil)
    AST::RewriteRuleSubtreeStream.new( @adaptor, desc, element )
    #if element.instance_of?( Array )
    #  AST::RewriteRuleSubtreeStream.new( @adaptor, desc, *element )
    #elsif element
    #  AST::RewriteRuleSubtreeStream.new( @adaptor, desc, element )
    #else
    #  AST::RewriteRuleSubtreeStream.new( @adaptor, desc )
    #end
  end
  
  def token_stream(desc, element = nil)
    AST::RewriteRuleTokenStream.new( @adaptor, desc, element )
    #if element.instance_of?( Array )
    #  AST::RewriteRuleTokenStream.new( @adaptor, desc, *element )
    #elsif element
    #  AST::RewriteRuleTokenStream.new( @adaptor, desc, element )
    #else
    #  AST::RewriteRuleTokenStream.new( @adaptor, desc )
    #end
  end
  
  def node_stream(desc, element = nil)
    AST::RewriteRuleNodeStream.new( @adaptor, desc, element )
    #if element.instance_of?( Array )
    #  AST::RewriteRuleNodeStream.new( @adaptor, desc, *element )
    #elsif element
    #  AST::RewriteRuleNodeStream.new( @adaptor, desc, element )
    #else
    #  AST::RewriteRuleNodeStream.new( @adaptor, desc )
    #end
  end
end
end
