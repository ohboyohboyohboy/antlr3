#!/usr/bin/ruby
# encoding: utf-8

module Monocle
  if RUBY_VERSION =~ /^1\.8/
    MULTIBYTE_CHARACTER = %r<
      [\xC2-\xDF][\x80-\xBF]
    | [\xE0-\xEF][\x80-\xBF]{2}
    | [\xF0-\xF4][\x80-\xBF]{3}
    >x
    
    ONE_BYTE    = 0x20 .. 0x7E
    TWO_BYTES   = 0xC2 .. 0xDF
    THREE_BYTES = 0xE0 .. 0xEF
    FOUR_BYTES  = 0xF0 .. 0xF4
  end
  
  COLOR_ESCAPE = /\e\[[\d:;]*?m/

class SingleLine < ::String
  def self.clear_cache
    @@width.clear
    @@invisible_size.clear
    return( self )
  end
  
  @@width = {}
  @@invisible_size = {}
  
  if RUBY_VERSION =~ /^1\.8/
    
    def char_byte( n )
      n.zero? and return( 0 )
      seen = byte = 0
      while c = self[ byte ] and seen < n
        step = 
          case c
          when ONE_BYTE then seen += 1; 1
          when ?\e
            self[i, size] =~ /^#{COLOR_ESCAPE}/ ? $~.end(0) : 1
          when TWO_BYTES then seen += 1; 2
          when THREE_BYTES then seen += 1; 3
          when FOUR_BYTES then seen += 1; 4
          else 1
          end
        i += step
      end
      return( i )
    end
    
    def width
      @@width[ hash ] ||= begin
        (temp = bleach).gsub!( MULTIBYTE_CHARACTER, ' ' )
        temp.size
      end
    end
    
  elsif RUBY_VERSION =~ /^1\.9/
    
    def char_byte( n )
      seen = byte = 0
      if esc = self =~ COLOR_ESCAPE and esc < n
        return( $~.end(0) + $'.char_byte( n - esc ) )
      else n
      end
    end
    
    def width
      @@width[ hash ] ||= bleach.length
    end
    
  end
  
  def align( alignment, width, fill = ' ' )
    dup.align!( alignment, width, fill )
  end

  def align!( alignment, width, fill = ' ' )
    strip!
    case alignment.to_sym
    when :left then left!( width, fill )
    when :center then center!( width, fill )
    when :right then right!( width, fill )
    end
  end

  def bleach
    gsub( COLOR_ESCAPE, '' )
  end

  def bleach!
    gsub!( COLOR_ESCAPE, '' )
  end

  def center!( w, fill = ' ' )
    w > width or return( self )
    if fill.length == 1
      replace( center( w + invisible_size, fill ) )
    else fill = self.class.new( fill )
      even, odd = ( width - w ).divmod( 2 )
      insert( 0, fill.tile( even ) )
      self << fill.tile( even + odd )
    end
    self
  end

  def invisible_size
    @@invisible_size[ hash ] ||= size - width
  end

  def left!( w, fill = ' ' )
    w > width or return( self )
    if fill.length == 1
      replace( ljust( w + invisible_size, fill ) )
    else fill = self.class.new( fill )
      insert( 0, fill.tile( width - w ) )
    end
    self
  end

  def pad!( left, right = left )
    right!( width + left )
    left!( width + right )
  end

  def partial(len)
    self[ 0, char_byte( len ) ]
  end

  def right!( w, fill = ' ' )
    w > width or return( self )
    if fill.length == 1
      replace( rjust( w + invisible_size, fill ) )
    else fill = self.class.new( fill )
      self << fill.tile( w - width )
    end
    self
  end

  def tile( size )
    width == 0 and return( )
    full, partial = size.divmod( width )
    partial
    self * full << partial( partial )
  end

  def words
    strip.split(/\s+/)
  end

  def wrap( w )
    width <= w and return( Text.new( self ) )
    line = strip
    out = Text.new
    line.split( /\s+/ )
  end
  
end

class Text < Array
  def self.clear_cache
    @@width.clear
    @@uniform.clear
    return( self )
  end
  
  include Constructors
  @@width = {}
  @@uniform = {}

  def initialize( lines, default = nil )
    case lines
    when Fixnum
      if block_given?
        super( lines ) { | i | Line( yield( i ) ) }
      else
        default = Line( default )
        super( lines, default )
      end
    when Text then super( lines )
    when Array
      super( lines.join( $/ ).map { | l | Line( l.chomp! || l ) } )
    when SingleLine then super(1, lines)
    else
      super( lines.to_s.lines.map { |l| Line( l.chomp! || l ) } )
    end
  end
  
  def initialize_copy( orig )
    for line in orig
      self << line.dup
    end
  end
  
  def align( alignment, width, fill = ' ' )
    dup.align!( alignment, width, fill )
  end

  def align!( alignment, width, fill = ' ' )
    for line in self
      line.align!( alignment, width, fill )
    end
    return( self )
  end

  def bleach
    dup.bleach!
  end

  def bleach!
    each { | l | l.bleach! }
  end

  def fix
    dup.fix!
  end

  def fix!
    align!( a, width )
  end
  
  def frame( graphic_style )
    dup.frame!( graphic_style )
  end
  
  def frame!( graphic_style )
    top = graphic_style.box_top( width )
    bottom = graphic_style.box_bottom( width )
    for line in self
      line.insert( 0, graphic_style.v )
      line.insert( -1, graphic_style.v )
    end
    unshift( top )
    push( bottom )
    return( self )
  end
  
  def inspect
    map { | line | line.inspect }.join( "\n" )
  end
  
  def juxtapose( text, joint = ' ' )
    dup.juxtapose!( text, joint )
  end

  def juxtapose!( text, joint = '' )
    text = self.class.new( text ).fix!.valign!( :top, height )
    valign!( :top, text.height ); fix!
    
    zip( text ) do | left, right |
      left << joint.to_s << right
    end
    return( self )
  end

  def pad( padding )
    dup.pad!( padding )
  end

  def pad!( padding )
    padding.top.times { unshift( Line('') ) }
    padding.bottom.times { push( Line('') ) }
    w = width
    for line in self
      line.left!( w )
      line.pad!( padding.left, padding.right )
    end
    self
  end

  def reflow( width )
    to_s.split( /\s*\n\s*\n\s*/, -1 ) do | section |
      
    end
  end
  
  def to_s
    @lines.join( $/ )
  end

  def uniform?
    @@uniform.fetch( hash ) do | h |
      @@uniform[ h ] = all? { | l | l.width == width }
    end
  end

  def valign!( alignment, h, filler = ''  )
    filler = Line( filler )
    h > height or return( self )
    case alignment
    when :top
      fill( filler, height, h - height )
    when :bottom
      ( h - height ).times { unshift( filler ) }
    when :center
      even, odd = ( h - height ).divmod( 2 )
      even.times { push( filler ); unshift( filler ) }
      odd == 1 and push( filler )
    end
    return( self )
  end

  def width
    @@width[ hash ] ||= map { | line | line.width }.max
  end

  alias height length
  alias | juxtapose
end

class Block < Text
  alias calculate_width width
  
  include Presentation
  
  def initialize( lines, options = nil, owner = nil )
    initialize_view( options, owner )
    super( lines )
  end
  
  def render
    dup.render!
  end
  
  def render!
    align!( alignment, width )
    @padding and pad!( @padding )
    @border and frame!( style )
    @margin and pad!( @margin )
    return( self )
  end
  
end
end