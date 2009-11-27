#!/usr/bin/ruby
# encoding: utf-8

module StringTemplate
module Markup
Location = Struct.new(:position, :line, :column, :markup_position)

class Location
  include Comparable
  
  def to_a
    [position, line, column]
  end
  
  def to_s
    [line, column].join(':')
  end
  
  def <<(text)
    length     = text.length
    line_count = text.count("\n")
    line_count.zero? ? (self.column += length) :
      (self.column = length - text.rindex("\n") - 1)
    self.line += line_count
    self.position += length
    return self
  end
  
  def +(text)
    self.dup << text
  end
  
  def <=>(location)
    position <=> location.position
  end
end
end
end
