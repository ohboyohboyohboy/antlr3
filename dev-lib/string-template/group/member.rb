#!/usr/bin/ruby
# encoding: utf-8

module StringTemplate
class Group
class Member
  include CodeObject
  attr_accessor :group, :index, :name, :span
  
  def tokens
    return [] unless group
    group.tokens[ span ]
  end
  
  def span_size
    @span.end - @span.begin
  end
  
  def inspect
    source.to_s
  end
  
  def pred
    index > 0 ? group.members[ index - 1 ] : nil
  end
  
  def succ
    group.members[ index + 1 ]
  end
  
  def through( member )
    span.begin .. member.span.end
  end
  
end
end
end
