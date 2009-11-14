#!/usr/bin/ruby
# encoding: utf-8

module StringTemplate
class Group
class TypeMap < Member
  attr_accessor :default
  
  def pairs
    @pairs ||= []
  end
  
  def pair!(key, value = nil)
    pair = [key, value]
    pairs << pair
    return pair
  end
end
end
end