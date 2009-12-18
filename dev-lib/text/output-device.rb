#!/usr/bin/ruby
# encoding: utf-8

require 'ansi-color'

module Monocle
class OutputDevice
  DEFAULT_SIZE = Rect.new( 80, 22 ).freeze
  IO_PRINT_METHODS = %w( puts print printf putc write )
  SIZE_IOCTL = 0x5413
  SIZE_STRUCT = [ 0, 0, 0, 0 ].pack( "SSSS" ).freeze
  
  attr_reader :device
  attr_accessor :newline, :use_color, :blank
  
  def initialize( output, options = {} )
    if output.is_a?( String )
      output = File.open( output, options.fetch( :mode, 'w' ) )
    end
    self.device = output
    
    @cursor = Rect.new( 0, 0 )
    @background_stack = []
    @foreground_stack = []
    @tab_width = options.fetch( :tab_width, 8 )
    
    @newline = options.fetch( :newline, $/ )
    @blank = options[ :blank ]
    @use_color = options.fetch( :use_color, @tty )
    
    margin = options.fetch( :margin, 0 )
    @margin = Rect.new(
      options.fetch( :left_margin, margin ),
      options.fetch( :right_margin, margin )
    )
    @screen_size = nil
  end
  
  def device=( output )
    @device =
      if IO === output or IO_PRINT_METHODS.all? { |m| output.respond_to?( m ) }
        output
      else
        raise ArgumentError, "%p is not an IO-like object" % output
      end
    @tty = @device.tty? rescue false
  end
  
  
  def reset!
    @fg_stack.clear
    @bg_stack.clear
    @margin = Rect.new
    @cursor = Rect.new
    @screen_size = nil
  end
  
  def tty?
    @tty
  end
  
  alias use_color? use_color
  
  def close
    @device.close rescue nil
  end
  
  def height
    screen_size.height
  end
  
  def width
    screen_size.width
  end
  
  def line( text )
    @device.puts( text )
  end
  
  #def indent( amount = 2 )
  #  @margin.left += amount
  #  yield
  #ensure
  #  @margin.left = ( @margin.left - amount ).at_least( 0 )
  #end
  #
  #def edge_distance
  #  ( width - @cursor.column ).at_least( 0 )
  #end
  #
  #def margin_distance
  #  ( width - @cursor.column - @margin.right ).at_least( 0 )
  #end
  #
  #def open_line
  #  print_color_escapes if @use_color
  #  print_blank( @margin.left )
  #end
  #
  #def close_line
  #  print_blank( edge_distance )
  #  print_color_clear if @use_color
  #end
  #
  #def newline!
  #  close_line
  #  @cursor.line += 1
  #  @cursor.column = 0
  #  @device.print( @newline || $/ )
  #  open_line
  #end
  #
  #def return!
  #  @cursor.column = 0
  #  @device.print( "\r" )
  #  @device.flush
  #end
  #
  #def print_blank( width )
  #  if width > 0
  #    @device.print( make_blank( width ) )
  #    @cursor >> width
  #  end
  #end
  #
  #def make_blank( width )
  #  if @blank
  #    if @blank.respond_to?( :call ) then @blank.call( width )
  #    else @blank * width
  #    end
  #  else ' ' * width
  #  end
  #end
  
  def screen_size
    @screen_size ||= begin
      data = SIZE_STRUCT.dup
      if @device.ioctl( SIZE_IOCTL, data ) >= 0
        height, width = data.unpack( "SS" )
        Rect.new(
          width  > 0 ? width  : default_width,
          height > 0 ? height : default_height
        )
      else
        default_size
      end
    rescue Exception
      default_size
    end
  end
  
  def default_size
    [ default_height, default_width ]
  end
  
  def default_height
    ( ENV[ 'LINES' ] || DEFAULT_SIZE.height ).to_i
  end
  
  def default_width
    ( ENV[ 'COLUMNS' ] || DEFAULT_SIZE.width ).to_i
  end
  
end
end