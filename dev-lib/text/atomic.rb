#!/usr/bin/ruby
# encoding: utf-8

module Monocle
  MULTIBYTE_CHARACTER = %r<
    [\xC2-\xDF][\x80-\xBF]
  | [\xE0-\xEF][\x80-\xBF]{2}
  | [\xF0-\xF4][\x80-\xBF]{3}
  >x
  COLOR_ESCAPE = /\e\[[\d:;]*?m/
  
class SingleLine < ::String
  def bleach!
    gsub!( COLOR_ESCAPE, '' )
  end
  
  def bleach
    gsub( COLOR_ESCAPE, '' )
  end
  
  @@width = {}
  @@invisible_width = {}
  
  if RUBY_VERSION =~ /^1\.8/
    
    def width
      @@width[ hash ] ||= begin
        (temp = bleach).gsub!( MULTIBYTE_CHARACTER, ' ' )
        temp.size
      end
    end
    
  elsif RUBY_VERSION =~ /^1\.9/
    
    def width
      @@width[ hash ] ||= bleach.length
    end
    
  end
  
  def invisible_size
    @@invisible_size[ hash ] ||= size - width
  end
  
  def align!( alignment, width, fill = ' ' )
    case alignment.to_sym
    when :left then replace( ljust( width + invisible_size, fill ) )
    when :center then replace( center( width + invisible_size, fill ) )
    when :right then replace( rjust( width + invisible_size, fill ) )
    end
  end
  
  def align( alignment, width, fill = ' ' )
    dup.align!( alignment, width, fill )
  end
  
end

class Text
  def self.convert( string )
    new(
      string.to_s.lines.map do | line |
        line.chomp!
        SingleLine.new( line )
      end
    )
  end
  
  attr_accessor :lines
  
  protected :lines, :lines=
  
  def initialize( lines )
    @lines = lines
    string.to_s.lines.map do | line |
      SingleLine.new( line.chomp )
    end
  end
  
  def initialize_copy( orig )
    @lines = orig.lines.map { | line | line.dup }
  end
  
  def bleach!
    @lines.each { | line | line.bleach! }
    return( self )
  end
  
  def bleach
    clone.bleach!
  end
  
  @@width = {}
  def width
    @@width[ @lines.hash ] ||= @lines.map { | line | line.width }.max
  end
  
  def align!( alignment, width, fill = ' ' )
    for line in @lines; line.align!( alignment, width, fill ); end
    return( self )
  end
  
  def align( alignment, width, fill = ' ' )
    dup.align!( alignment, width, fill )
  end
  
  def to_s
    @lines.join( $/ )
  end
  
private
  def calculate_height
    @lines.length
  end
  
  def calculate_width
    @lines.map { | line | line.width }.max
  end
  
end

class Block < Text
  include View
  
  def self.convert( string, options = nil, owner = nil )
    lines = string.to_s.lines.map do | line |
      line.chomp!
      SingleLine.new( line )
    end
    new( lines, options, owner )
  end
  
  def initialize( lines, options = nil, owner = nil )
    initialize_view( options, owner )
    super( lines )
  end
  
  def render( device )
    for line in align( alignment, width ).lines
      device.line( line )
    end
  end
  
end
end