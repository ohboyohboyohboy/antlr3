#!/usr/bin/ruby
# encoding: utf-8

module Monocle
class Table
class Column
  include Monocle
  
  def initialize( table, index )
    @table = table
    @index = index
    @filling = Segments.default_filling( @table.style )
    @left_side = Segments.default_joints( @table.style )
    @wrap = false
    @flow = true
    @alignment = :left
    @width = @fixed_width = nil
  end
  
  def left_side
    first? ? @table.left_edge : @left_side
  end
  
  def right_side
    last? ? @table.right_edge : next_column.left_side
  end
  
  attr_reader :table, :index, :filling
  attr_accessor :alignment
  
  for m in %w(wrap flow)
    attr_accessor( m )
    alias_method( "#{ m }?", m )
    undef_method( m )
  end
  
  def cells
    @table.grep( Row ) { | row | row[ @index ] || Line( '' ) }
  end
  
  def previous_column
    @index.zero? ? nil : @table.columns[ @index - 1 ]
  end
  
  def next_column
    @table.columns[ @index + 1 ]
  end
  
  def first?
    @index.zero?
  end
  
  def last?
    @index == ( table.columns.length - 1 )
  end
  
  def prepare( cell_text )
    cell_text.nil? and cell_text = Text( '' )
    @wrap and cell_text = cell_text.wrap( width )
    cell_text.align( @alignment, width )
  end
  
  def fill_text( text )
    text.is_a?( Symbol ) and text = @filling[ text ]
    Line( text ).tile( width )
  end
  
  def width=( w )
    @fixed_width = w.to_i.at_least( 1 )
  end
  
  def width
    @fixed_width or @width or calculate_width
  end
  
  def calculate_metrics
    @width = @fixed_width || calculate_width
  end
  
  def clear_metrics
    @width = nil
  end
  
protected
  
  def calculate_width
    @table.grep( Row ) { |r| c = r[ @index ] and c.width or 0 }.max
  end
end
end
end
