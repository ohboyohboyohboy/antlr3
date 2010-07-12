#!/usr/bin/ruby
# encoding: utf-8

module Monocle
module TerminalEscapes
  ANSI_COLORS = { 
    :blue => 4,   :white => 7,  :magenta => 5,
    :yellow => 3, :green => 2,  :black => 0,
    :red => 1,    :cyan => 6
  }
module_function
  
  def ansi_color( type, color, bold = nil )
    offset =
      case type
      when ?f then 30  # foreground
      when ?b then 40  # background
      end
    code = offset + ANSI_COLORS.fetch( color.to_sym ) do
      raise( ArgumentError, "unknown color name `%s'" % color )
    end
    "\e[#{ '1;' if bold }#{ code }m"
  end
  
  def xterm_color( type, color_index, bold = nil )
    prefix =
      case type
      when ?f then 38  # foreground
      when ?b then 48  # background
      end
    "\e[#{ prefix };5;#{ color_index }m"
  end
  
  def konsole_color( type, r, g, b, bold = nil )
    prefix =
      case type
      when ?f then 38  # foreground
      when ?b then 48  # background
      end
    "\e[#{ prefix };2;#{ r };#{ g };#{ b }m"
  end
  
  def clear_attr
    "\e[0m"
  end
  
  def bold
    "\e[1m"
  end
  
  def underline
    "\e[4m"
  end
  
  def blink
    "\e[5m"
  end
  
  def reverse
    "\e[7m"
  end
  
  def conceal
    "\e[8m"
  end
  
  def set_cursor( line = 0, column = 0 )
    "\e[%i;%iH" % [ line, column ]
  end
  
  def cursor_up( lines = 1 )
    "\e[%iA" % lines
  end
  
  def cursor_down( lines = 1 )
    "\e[%iB" % lines
  end
  
  def cursor_forward( columns = 1 )
    "\e[%iC" % columns
  end
  
  def cursor_backward( columns = 1 )
    "\e[%iD" % columns
  end
  
  def save_cursor
    "\e[s"
  end
  
  def restore_cursor
    "\e[u"
  end
  
  #def clear_line
  #  "\e[K"
  #end
  
  # VT100 escapes
  def double_height_top
    "\e#3"
  end
  
  def dobule_height_bottom
    "\e#4"
  end
  
  def single_width
    "\e#5"
  end
  
  def double_width
    "\e#6"
  end
  
  def clear_right
    "\e[0K"
  end
  
  def clear_left
    "\e[1K"
  end
  
  def clear_line
    "\e[2K"
  end
  
  def clear_down
    "\e[0J"
  end
  
  def clear_up
    "\e[1J"
  end
  
  def clear_screen
    "\e[2J"
  end
  
end
end

if __FILE__ == $0
  
  TE = Monocle::TerminalEscapes
  for attr in %w[ bold underline blink reverse conceal ]
    print( "This should be #{ attr }:".ljust( 30 ) )
    printf( "%swhateva\e[0m\n", TE.send( attr ) )
  end
  
  colors = TE::ANSI_COLORS.keys.map( &:to_s ).sort!
  for color in colors
    print( "This should be #{ color }:".ljust( 30 ) )
    printf( "%swhateva\e[0m\t", TE.ansi_color( ?f, color ) )
    printf( "%swhateva\e[0m\t", TE.ansi_color( ?b, color ) )
    printf( "%sbright_whateva\e[0m\n", TE.ansi_color( ?f, color, true ) )
  end
  
  for dir in %w( left right line )
    name = "clear_#{ dir }"
    code = TE.send( name )
    puts
    puts( "[ Clear Code: #{ name } ]" )
    puts
    puts( "at start" )
    printf( "%s<= %-14s\n", code, name )
    puts( "in middle" )
    printf( "%-14s =>%s<= %-14s\n", name, code, name )
    puts( "at end" )
    printf( "%-14s =>%s\n", name, code, name )
  end
  
  puts( "[ Tabs ]" )
  puts( "     \eHx              \eHx      \eHx " )
  puts( "one\ttwo\tthree\tfour" )
  puts( "\e[3g" )
  puts( "one\ttwo\tthree\tfour" )
end
