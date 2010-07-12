#!/usr/bin/ruby
# encoding: utf-8


module Monocle
Graphics = Struct.new( 
  :ew,  # west east - horizontal line
  :ns,  # north south - vertical line
  :es,  # north west - top right corner
  :sw,  # north east
  :nw,  # south east
  :en,  # south west
  :ens, # north south east
  :nsw, # north south west
  :enw, # east north west
  :esw, # east south west
  :ensw, # east north south west - intersection of horiz & vertical lines
  :tree_fork,
  :tree_tail
)

class Graphics
  include Monocle
  
  NAMED_STYLES = Hash.new { |h, k| h[ 'ascii' ].dup  }
  
  def self.define( name, *parts )
    parts.map! { | p | Line( p ).freeze }
    NAMED_STYLES[ name.to_s ] = new( *parts ).freeze
  end
  
  define :ascii, '-', '|', '+', '+', '+', '+', '+', '+', '+', '+', '+', '|', '`'
  define :single_line, '─', '│', '┌', '┐', '┘', '└', '├', '┤', '┴', '┬', '┼', '├', '└'
  define :double_line, '═', '║', '╔', '╗', '╝', '╚', '╠', '╣', '╩', '╦', '╬', '╠', '╚'
  
  def format( description )
    out = Line( description )
    out.gsub!( /<([nsewlrtbudhv]+)(?::(\d+))?>/i ) do
      box_bit = resolve_name( $1 )
      $2 ? box_bit.tile( $2.to_i ) : box_bit
    end
    return( out )
  end
  
  def horizontal_line( width )
    ew.tile( width )
  end
  
  def box_top( width )
    format( "<se><ew:#{ width }><sw>" )
  end
  
  def box_bottom( width )
    format( "<ne><ew:#{ width }><nw>" )
  end
  
  def table_top( *column_widths )
    nw + line_with_joints( esw, column_widths ) + ne
  end
  
  def table_divide( *column_widths )
    ens + line_with_joints( ensw, column_widths ) + nsw
  end
  
  def table_bottom( *column_widths )
    sw + line_with_joints( enw, column_widths ) + se
  end
  
  def line_with_joints( joint, *widths )
    widths.map { | w | horizontal_line( w ) }.join( joint )
  end
  
  alias h ew
  alias v ns
  
  
private
  
  def resolve_name( name )
    name.downcase!
    name.tr!( 'lrtbud', 'wensns' )
    name.gsub!( 'h', 'ew' )
    name.gsub!( 'v', 'ns' )
    chars = name.chars.to_a.sort!
    chars.uniq!
    self[ chars.join( '' ) ]
  end
  
end

end
