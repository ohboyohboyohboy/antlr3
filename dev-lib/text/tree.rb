#!/usr/bin/ruby

require 'text'
require 'part'
require 'tree-like'
require 'delegate'

class Text::Tree < DelegateClass(::String)
  include TreeLike
  
  def initialize(text, parent = nil)
    super(text.to_s)
    parent and self.parent = parent
  end
  
  def sort!
    if block_given? then children.replace(children.sort_by { |c| yield(c) })
    else children.sort! end
    return self
  end
  
  def add_child(text)
    Text::Tree.new(text.to_s, self)
  end
  
  def deep_sort!(&b)
    sort!(&b)
    for child in children; child.deep_sort!(&b); end
    return(self)
  end
  
  def render(buffer = '', indent = 0)
    line = '  ' * indent + self.to_s
    buffer << line << "\n"
    for child in children; child.render(buffer, indent + 1); end
    return(buffer)
  end
end
