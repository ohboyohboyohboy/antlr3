#!/usr/bin/ruby
# encoding: utf-8

module Text
class Table
class Column
  include Utils
  
  def initialize( table, index )
    @table = table
    @index = index
    @filling = Segments.default_filling( @table.style )
    @left_side = Segments.default_joints( @table.style )
    @wrap = false
    @flow = true
    @alignment = :left
    @width = nil
    @fixed_width = nil
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
    alias_method( "#{m}?", m )
    undef_method( m )
  end
  
  def cells
    @table.grep( Row ) { | row | row[ @index ].to_s }
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
    @index == (table.columns.length - 1)
  end
  
  def prepare( cell_text )
    cell_text = cell_text.to_s
    
    if @wrap
      @flow and cell_text = cell_text.fold
      cell_text = cell_text.word_wrap( width )
    end
    
    align( cell_text, @alignment, width )
  end
  
  def fill_text( text )
    text.is_a?( Symbol ) and text = @filling[ text ]
    super( text, width )
  end
  
  def width=( w )
    @fixed_width = w.to_i.at_least( 0 )
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
    cells.map { | c | block_width( c ) }.max
  end
  
end
end
end
