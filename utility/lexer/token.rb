#!/usr/bin/ruby
# encoding: utf-8

=begin      ::about::
author:     Kyle Yetter <kcy5b@yahoo.com>
created on: June 07, 2009
purpose:    (program | library | utility script | ?)
summary:    
loads:      files required by this
autoloads:  autoload entries in this (e.g. YAML(yaml))
=end

class Location
  MEMBERS = %w(file position line column)
  def self.[](*args)
    new(*args)
  end
  attr_accessor *MEMBERS
  
  def initialize(file = nil, position = nil, line = nil, column = nil)
    @file = file
    @position = position
    @line = line
    @column = column
  end
  
  def <<(text)
    length     = text.length
    line_count = text.count("\n")
    line_count.zero? ? (@column += length) :
      (@column = length - text.rindex("\n") - 1)
    @line += line_count
    @position += length
    return self
  end
  def >>(text)
    length     = text.length
    line_count = text.count("\n")
    line_count.zero? ? (@column -= length) : (@column = text.index("\n"))
    @line -= line_count
    @position -= length
    return self
  end
  
  def +(text)
    clone << text
  end
  def -(text)
    clone >> text
  end
  
  def <=>(location)
    @position <=> location.position
  end
  
  include Comparable
  
  def to_s(long = true)
    if long
      'file %s @ (%i:%i)' % [@file, @line, @column]
    else
      '[%i:%i]' % [@line, @column]
    end
  end
end

module Locatable
  for member in Location::MEMBERS
    class_eval(<<-DELEGATE, __FILE__, __LINE__)
      def #{member}
        location.#{member} rescue nil
      end
    DELEGATE
  end
end

class Token
  include Locatable
  attr_accessor :index, :channel, :type, :text, :location
  def initialize(index = nil, type = nil, text = nil, location = nil, channel = nil)
    @index = index
    @type  = type
    @text  = text
    @location = location
    @channel = channel
    block_given? and yield(self)
  end
  def inspect
    '[%i %p(%p) @ %s]' % [@index, @type, @text, @location.to_s(false)]
  end
  def to_s
    text
  end
  def after
    location + text
  end
end
