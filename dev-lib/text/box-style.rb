#!/usr/bin/ruby
# encoding: utf-8


module Text

BoxStyle = Struct.new(
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
  :ensw # east north south west - intersection of horiz & vertical lines
)

class BoxStyle
  NAMED_STYLES = [ :ascii, :single_line, :double_line ]
  
  def self.ascii
    new( '-', '|', '+', '+', '+', '+', '+', '+', '+', '+', '+' )
  end
  
  def self.single_line
    new( '─', '│', '┌', '┐', '┘', '└', '├', '┤', '┴', '┬', '┼' )
  end
  
  def self.double_line
    new( '═', '║', '╔', '╗', '╝', '╚', '╠', '╣', '╩', '╦', '╬' )
  end
  
  def format( description )
    description.gsub( /<([nsewlrtbudhv]+)(?::(\d+))?>/i ) do
      box_bit = resolve_name( $1 )
      $2 ? box_bit * $2.to_i : box_bit
    end
  end

private
  
  def resolve_name( name )
    name.downcase!
    name.tr!( 'lrtbud', 'wensns' )
    name.gsub!( 'h', 'ew' )
    name.gsub!( 'v', 'ns' )
    chars = name.chars.to_a.sort!
    chars.uniq!
    self[ chars.join('') ]
  end
  
end

end
