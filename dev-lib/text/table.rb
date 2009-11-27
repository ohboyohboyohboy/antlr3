#!/usr/bin/ruby

require 'facets/string/fold'
require 'facets/string/words'

require 'stringio'
require 'text/table/segments'
require 'text/table/members'
require 'text/table/column'

module Text
class Table
  include Utils
  include Enumerable
  
  def self.build( *args )
    table = new( *args ) do | table |
      block_given? and yield( table )
    end
    return( table.render )
  end
  
  
  attr_reader :right_edge, :left_edge, :title_row, :columns, :style
  
  def initialize( columns, options = {} )
    @body = []
    @item = @head = Divider.new( self, :head )
    @foot = Divider.new( self, :foot )
    @columns = []
    @style = cast_style( options[ :style ] || BoxStyle.ascii )
    @left_edge  = Segments.default_left_edge( @style )
    @right_edge = Segments.default_right_edge( @style )
    @width = @inner_width = nil
    
    case columns
    when Fixnum
      expand_columns( columns )
    when Array
      @item = @item.title_row!( *columns )
    end
    
    block_given? and yield( self )
  end
  
  def render( out = StringIO.new )
    calculate_metrics
    @item.link( @foot )
    
    for member in @head
      member.render( out )
    end
    
    @foot.unlink
    clear_metrics
    
    return( out.is_a?( StringIO ) ? out.string : out )
  end
  
  def each
    block_given? or return( enum_for( :each ) )
    for item in @head
      yield( item )
    end
  end
  alias :to_s :render
  
  def row( *members )
    @item = @item.row!( *members )
  end
  
  def section( title, options = {} )
    @item = @item.section!( title, options )
  end
  
  def divider( type = :row_divider )
    @item = @item.divider!( type )
  end
  
  def joints( area )
    @columns.last( @columns.length - 1 ).map! do | c |
      c.left_side[ area ]
    end
  end
  
  def fills( area )
    @columns.map { | c | c.fills[ area ] }
  end
  
  def width=(w)
    current_width = self.width
    case w <=> current_width
    when -1
      diff = current_width - w
      cols = @columns.select { |c| c.flow? }
      unless cols.empty?
        additional, extra = diff.divmod(cols.length)
        cols.each { |c| c.width -= additional }
        cols.last.width -= extra
      end
    when 1
      diff = w - current_width
      cols = @columns.select { |c| c.flow? }
      unless cols.empty?
        additional, extra = diff.divmod(cols.length)
        cols.each { |c| c.width += additional }
        cols.last.width += extra
      end
    end
  end
  
  def inner_width
    @inner_width or calculate_inner_width
  end
  
  def width
    @width or calculate_width
  end
  
  def expand_columns(new_size)
    new_size.zero? and return
    
    until @columns.length >= new_size
      @columns << Column.new( self, @columns.length )
    end
  end

private
  
  def calculate_metrics
    @columns.each { | c | c.calculate_metrics }
    @inner_width = calculate_inner_width
    @width = calculate_width
  end
  
  def clear_metrics
    @columns.each { | c | c.clear_metrics }
    @inner_width = nil
    @width = nil
  end
  
  def calculate_inner_width
    @columns[1..-1].inject( @columns.first.width ) do | w, c |
      w + c.left_side.width + c.width
    end
  end
  
  def calculate_width
    calculate_inner_width +
      @left_edge.width +
      @right_edge.width
  end
  
end
end

