#!/usr/bin/ruby
# encoding: utf-8

require 'tree-like'

module StringTemplate
module Markup
class Node
  include TreeLike
  attr_accessor :id, :start, :finish, :document, :parent_id, :tag_id
  
  def initialize( document = nil, id = nil, tag_id = nil, start = nil, parent = nil )
    @document = document
    @id = id
    @tag_id = tag_id
    @start = start
    @finish = nil
    self.parent = parent unless parent.nil?
  end
  
  def tag
    @document.tag( @tag_id )
  end
  
  def marshal_dump
    @parent_id = parent.id if parent
    [ @parent_id, @tag_id, @start, @finish ]
  end
  
  def marshal_load( data )
    @parent_id, @tag_id, @start, @finish = data
  end
  
  def line_span
    @start.line .. @finish.line
  end
  
  def source_range
    @start.position ... @finish.position
  end
  
  def empty?
    @start.position == @finish.position
  end
  
  def content
    @document[ source_range ]
  end
  
  def source_code_context( before = 0, after = before )
    output_source = ''
    source_lines = @document.ruby_source.split
    
    start = ( @start.line - 1 - before ).at_least( 0 )
    finish = ( @finish.line - 1 + after ).at_most( lines.length - 1 )
    
    context_lines = source_lines[ start..finish ]
    context_lines[ @finish.line - finish - 2 ].insert( @finish.column, 255.chr )
    context_lines[ @start.line - 1 - start ].insert( @start.column, 255.chr )
    
    return [ context_lines.join( "\n" ), start ]
  end
  
  alias :to_s :content
  
  def node_display
    '  ' * depth << tag
  end
end
end
end
