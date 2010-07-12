#!/usr/bin/ruby
# encoding: utf-8

module Monocle
class Layout < Array
  include Presentation
  
  def initialize( options = nil )
    initialize_view( options )
    super( 0 )
    block_given? and yield( self )
  end
end

class Horizontal < Layout
  
  def width
    inject( 0 ) do | width, view |
      width + view.width
    end
  end
  
  def height
    empty? ? 0 : collect { | view | view.height }.max
  end
  
  def render
    map { | i | i.render }.inject do | out, text |
      out.juxtapose!( text )
    end
  end
  
end

class Vertical < Layout
  
  def width
    empty? ? 0 : collect { | view | view.width }.max
  end
  
  def height
    inject( 0 ) do | height, view |
      height + view.height
    end
  end
  
  def render
    map { | i | i.render }.inject do | out, text |
      out.concat( text )
    end.fix!
  end
  
end

class Flow < Layout
  
end
end
