#!/usr/bin/ruby
# encoding: utf-8

module Highlight
module Formatters
module HTML
module Taggable
  def tags
    @tags ||= []
  end
  
  def tag( *words )
    tags.push( *words )
  end
  
private
  
  def class_attribute( *tags )
    @tags and tags.concat( @tags )
    tags.uniq!
    attr = tags.join( ' ' )
    attr.strip!
    unless attr.empty?
      attr = attr.inspect
      attr.insert( 0, "class=" )
    end
    return attr
  end
  
end
end
end
end
