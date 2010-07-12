#!/usr/bin/ruby
# encoding: utf-8

module Monocle
class Table

Segments = Struct.new( 
  :head, :title_row, :title_divider, :row, :row_divider,
  :section, :section_close, :section_open, :foot
)

class Segments
  include Monocle
  
  def self.default_filling( style )
    fill = style.ew.dup
    new( fill, nil, fill, nil, fill, nil, fill, fill, fill )
  end
  
  def self.default_joints( style )
    head = style.format( "<h><hd><h>" )
    row  = style.format( " <v> " )
    div  = style.format( "<h><hv><h>" )
    foot = style.format( "<h><hu><h>" )
    
    new( head, row, div, row, div, nil, foot, head, foot )
  end
  
  def self.default_left_edge( style )
    head = style.format( "<dr><h>" )
    row  = style.format( "<v> " )
    div  = style.format( "<vr><h>" )
    foot = style.format( "<ur><h>" )
    new( head, row, div, row, div, row, div, div, foot )
  end
  
  def self.default_right_edge( style )
    head = style.format( "<h><dl>" )
    row  = style.format( " <v>" )
    div  = style.format( "<h><vl>" )
    foot = style.format( "<h><ul>" )
    new( head, row, div, row, div, row, div, div, foot )
  end
  
  def mask( inclusion_settings )
    masked = self.class.new
    each_pair do | name, text |
      if text and inclusion_settings[ name ]
        masked[ name ] = text
      end
    end
    return( masked )
  end
  
  def width( inclusion_mask = nil )
    inclusion_mask and return( self.mask( inclusion_mask ).width )
    return( map { |text| text ? text.width : 0 }.max )
  end
end

end
end
