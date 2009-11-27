#!/usr/bin/ruby
# encoding: utf-8

module Text
module Utils
  ALIGNMENTS = [ :left, :right, :center ]
  UTF = /[\xC2-\xDF][\x80-\xBF]|[\xE0-\xEF][\x80-\xBF]{2}|[\xF0-\xF4][\x80-\xBF]{3}/
  
module_function
  
  def block_height( str )
    str.to_s.count( $/ ) + 1
  end
  
  def block_width( str )
    str = bleach( str.to_s )
    str.gsub!( UTF, ' ' )
    str.split( $/, -1 ).
      map! { | t | t.length }.max or 0
  end
  
  def measure( str )
    str = bleach( str.to_s )
    str.gsub!( UTF, ' ' )
    str.length
  end
  
  def bleach( str )
    str.gsub( /\e\[\S+?m/, '' )
  end
  
  def adjust( str, width )
    width + str.length - measure( str )
  end
  
  def invisible_length( str )
    str.length - measure( str )
  end
  
  
  def fill_text( str, width )
    str ||= ' '
    repetitions, remainder = width.divmod( measure( str ) )
    return( str * repetitions << str[0, remainder] )
  end
  
  def cast_style( name )
    case name
    when BoxStyle then name
    when String, Symbol
      if BoxStyle::NAMED_STYLES.include?( name.to_sym )
        BoxStyle.send( name )
      else
        raise NameError.new( "%p is not a named Text::BoxStyle" % name, name )
      end
    else
      raise( ArgumentError,
            "cannot convert %p into a Text::BoxStyle object" % name )
    end
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
end
