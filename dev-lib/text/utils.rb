#!/usr/bin/ruby

module Text
Rect = Struct.new( :x, :y )
module Measurement
  ALIGNMENTS = [ :left, :right, :center ]
  unless RUBY_VERSION =~ /^1\.9/
    UTF = /[\xC2-\xDF][\x80-\xBF]|[\xE0-\xEF][\x80-\xBF]{2}|[\xF0-\xF4][\x80-\xBF]{3}/
  end
  
  
  @@memo_maps = []
  
  def self.memoize( name, &body )
    function = Hash.new do | h, k |
      h[ k ] = body[ k ]
    end
    @@memo_maps << class_variable_set( :"@@#{ name }", function )
    
    module_eval( <<-END, __FILE__, __LINE__ + 1 )
      module_function
      def #{ name }( str )
        @@#{name}[ str.to_s ]
      end
    END
  end
  
  memoize( :block_height ) do | str |
    str.count( $/ ) + 1
  end
  
  
  if RUBY_VERSION =~ /^1\.9/
    memoize( :block_width ) do | str |
      str = bleach( str )
      str.split( $/, -1 ).
        map! { | t | t.length }.max or 0
    end
    
    memoize( :measure ) do | str |
      str = bleach( str )
      str.length
    end
  else
    memoize( :block_width ) do | str |
      str = bleach( str )
      str.gsub!( UTF, ' ' )
      str.split( $/, -1 ).
        map! { | t | t.length }.max or 0
    end
    memoize( :measure ) do | str |
      str = bleach( str )
      str.gsub!( UTF, ' ' )
      str.length
    end
  end
  
  
  memoize( :bleach ) do | str |
    str.gsub( /\e\[\S+?m/, '' )
  end
  
  memoize( :invisible_length ) do | str |
    str.length - measure( str )
  end
  
module_function
  
  def clear_memory!
    for m in @@memo_maps; m.clear; end
  end  
end

module Utils
  include Measurement
  
  module_function
  
  def adjust( str, width )
    width + str.length - measure( str )
  end
  
  def fill_text( str, width )
    str ||= ' '
    repetitions, remainder = width.divmod( measure( str ) )
    return( str * repetitions << str[0, remainder] )
  end
  
  def cast_style( name )
    Text::BoxStyle( name )
  end
  
  def align( text, alignment, len, *args )
    method = 
      case alignment.to_sym
      when :left then :ljust
      when :right then :rjust
      when :center then :center
      end
    
    text.split( $/, -1 ).map! do | line |
      line.send( method, adjust( line, len ), *args )
    end.join( $/ )
  end
  
end

class Rect
  alias_member( :width, :x )
  alias_member( :height, :y )
  
  alias_member( :column, :x )
  alias_member( :line, :y )
  
  def initialize( x = 0, y = 0 )
    super
  end
  
  def >>( dist )
    case dist
    when Fixnum then self.x += dist
    when Rect
      if dist.y > 0
        self.y += dist.y
        self.x = dist.x
      else
        self.x += dist.x
      end
    end
  end
  
end
end
