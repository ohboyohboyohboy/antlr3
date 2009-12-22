#!/usr/bin/ruby
# encoding: utf-8

module Monocle
Pair = Struct.new( :x, :y )
class Pair
  alias_member( :width, :x )
  alias_member( :height, :y )
  
  alias_member( :column, :x )
  alias_member( :line, :y )
  
  alias_member( :left, :x )
  alias_member( :right, :y )
  
  def initialize( x = 0, y = 0 )
    super
  end
  
  def +@
    self.column = 0
    self.line += 1
    self
  end
  
  def ~
    self.column = 0
    self
  end
  
  def -@
    self.column = 0
    self.line -= 1
    self
  end
  
  def +( n )
    self.column += n
    self
  end
  
  def -( n )
    self.column -= n
    self
  end
end

Rectangle = Struct.new( :left, :top, :right, :bottom )
class Rectangle
  def self.create( params )
    left = params.fetch( :left, 0 )
    right = params.fetch( :right, left )
    top = params.fetch( :top, left )
    bottom = params.fetch( :bottom, top )
    new( left, top, right, bottom )
  end
  
  def initialize( left = 0, top = left, right = left, bottom = top )
    super( left, top, right, bottom )
  end
end
end
