#!/usr/bin/ruby

require 'facets/string/align'
require 'facets/string/fold'
require 'facets/string/words'

# assumptions:
#   String#block_height & String#block_width


module Text
class Table
  ALIGNMENTS = [:left, :right, :center]
  
  DEFAULT_SEGMENTS = {
    :fill => '-',
    :joint => '-+-',
    :row_joint => ' | ',
    :edges => %w(+- -+),
    :row_edges => [ '| ', ' |' ]
  }
  
  Segments = Struct.new( :head, :title_row, :title_divider, :row, :row_divider, :foot ) do
    def self.default_filling
      fill = DEFAULT_SEGMENTS[ :fill ].dup
      new( fill, nil, fill, nil, fill, fill )
    end
    
    def self.default_joints
      joint = DEFAULT_SEGMENTS[ :joint ]
      row_joint = DEFAULT_SEGMENTS[ :row_joint ]
      new( joint, row_joint, joint, row_joint, joint, joint )
    end
    
    def self.default_left_edge
      edge = DEFAULT_SEGMENTS[ :edges ].first.dup
      row_edge = DEFAULT_SEGMENTS[ :row_edges ].first.dup
      new( edge, row_edge, edge, row_edge, edge, edge )
    end
    
    def self.default_right_edge
      edge = DEFAULT_SEGMENTS[ :edges ].last.dup
      row_edge = DEFAULT_SEGMENTS[ :row_edges ].last.dup
      new( edge, row_edge, edge, row_edge, edge, edge )
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
      return( map { |text| text ? text.to_s.length : 0 }.max )
    end
    
    def normalize( inclusion_mask = nil )
      
    end
    
  end
  
  class Column
    
    def initialize( table, index, options = {} )
      @table = table
      @index = index
      @filling = options[ :filling ] || Segments.default_filling
      @left_side = options[ :left_side ] || Segments.default_joints
      @right_side = options[ :right_side ] || Segments.default_joints
      @converter = nil
      @wrap = false
      @flow = true
      @alignment = :left
      @width = nil
      @fixed_width = options[ :width ]
    end
    
    def title
      @table.title_row[ @index ].to_s
    end
    
    def title=( text )
      @table.title_row[ @index ] = text.to_s
    end
    
    def spawn!
      self.class.new( @table, @index + 1, :left_side => @right_side )
    end
    
    def left_side
      first? ? @table.left_edge : @left_side
    end
    
    def right_side
      last? ? @table.right_edge : @right_side
    end
    
    attr_reader :table, :index, :filling
    attr_accessor :alignment
    
    for m in %w(wrap flow)
      attr_accessor( m )
      alias_method( "#{m}?", m )
      undef_method( m )
    end
    
    def converter(method = nil, &block)
      case
      when block_given? then @converter = block
      when !method.nil? then @converter = method
      when !defined?(@converter) then @converter = nil
      end
      return(@converter)
    end
    
    def cells
      @table.rows.collect { |row| row.at( @index ) }
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
    
    def reset
      @width = nil
    end
    
    def prepare( cell_text )
      @width ||= width
      cell_text = convert(cell_text)
      if @wrap
        @flow and cell_text = cell_text.fold
        cell_text = cell_text.word_wrap(@width)
      end
      cell_text.split( $/ ).map! do |line|
        line.align( @alignment, width )
      end.join( $/ )
    end
    
    def fill_text( text )
      text.is_a?( Symbol ) and text = @filling[ text ]
      text = text.to_s
      repetitions, remainder = width.divmod( text.length )
      return( text * repetitions << text[0, remainder] )
    end
    
    def width=( w )
      @fixed_width = w.to_i.at_least( 0 )
    end
    
    def width
      @fixed_width || calculate_width
    end
    
  protected
    
    def calculate_width
      cells =
        @table.rows.map do |row|
          convert( row.at( @index ) ).block_width
        end
      cells << convert( title ).block_width
      return( cells.max )
    end
    
    def convert(object)
      text =
        case @converter
        when nil then object
        when String, Symbol then object.send(converter)
        when Proc then converter.call(object)
        end
      return(text.to_s)
    end
    
  end
  
  class Row < ::Array
    def pad!( length, value = '' )
      fill( value, self.length, length - self.length)
    end
    
    def render(table, type, stripe_mask = nil)
      columns = table.columns
      pad!(columns.length, '')
      
      cells = self.zip(columns).map! do |object, column|
        column.prepare(object)
      end
      
      height = cells.map { |cell| cell.block_height }.max
      lines = cells.zip(columns).map! do |cell, column|
        lines = cell.split( $/ )
        lines.length < height and
          lines.fill( column.fill_text(' '), lines.length, height - lines.length )
        lines 
      end.transpose
      
      lines.map! do | line_cells |
        line = '' << table.left_edge[ type ].to_s
        columns.zip(line_cells) do | column, line_cell |
          line << line_cell << column.right_side[ type ].to_s
        end
        line
      end
      lines.map! { |line| stripe_mask % line } if stripe_mask
      lines.join( $/ )
    end
    
  end
  
  def self.[](*rows)
    new(*rows)
  end
  
  def initialize(rows, options = {}, &block)
    @columns = []
    @rows = []
    @title_row = Row.new
    @included_sections = Segments.new( true, nil, nil, true, false, true )
    @left_edge = Segments.default_left_edge
    @right_edge = Segments.default_right_edge
    @stripe_masks = nil
    for row in rows
      push row
    end
    
    block_given? and yield(self)
    
    @included_sections.title_row.nil? and
      @included_sections.title_row = ! @title_row.empty?
    @included_sections.title_divider.nil? and
      @included_sections.title_divider = @included_sections.title_row
  end
  
  attr_reader :included_sections, :title_row, :right_edge, :left_edge, :rows, :columns
  attr_accessor :stripe_masks
  
  def title_row=( titles )
    @title_row = Row.new( titles.to_a )
  end
  
  for section in Segments.members
    class_eval( <<-END, __FILE__, __LINE__ + 1 )
      def enable_#{ section }
        @included_sections.#{ section } = true
      end
      
      def disable_#{ section }
        @included_sections.#{ section } = false
      end
      
      def include_#{ section }?
        @included_sections.#{ section }
      end
    END
  end
  
  for meth in %w(push unshift)
    class_eval(<<-END, __FILE__, __LINE__ + 1)
      def #{meth}(*rows)
        ncols = @columns.length
        rows = rows.map do |row|
          row = Row.new( row.to_a )
          case row.length <=> ncols
          when 1 then expand_columns( row.length )
          when -1 then row.pad!( ncols )
          end
          row
        end
        @rows.#{ meth }( *rows )
        return self
      end
    END
  end
  
  def insert( index, *rows )
    ncols = @columns.length
    rows = rows.map do |row|
      row = Row.new( row.to_a )
      case row.length <=> ncols
      when 1 then expand_columns( row.length )
      when -1 then row.pad!( ncols )
      end
      row
    end
    @rows.insert(index, *rows)
  end
  
  def render( out = '' )
    new_line = $/.to_s
    include_head? and out << render_skeleton(:head)
    
    if include_title_row?
      out << @title_row.render( self, :title_row ) << new_line
      include_title_divider? and out << render_skeleton(:title_divider)
    end
    
    row_divider = 
      if include_row_divider?
        new_line + render_skeleton( :row_divider )
      else
        new_line
      end
    
    stripe = nil
    last_index = @rows.length - 1
    @rows.each_with_index do | row, index |
      @stripe_masks and stripe = @stripe_masks[ index % @stripe_masks.length ]
      out << row.render( self, :row, stripe )
      out << row_divider unless index == last_index
    end
    out << new_line
    include_foot? and out << render_skeleton( :foot )
    
    for column in @columns
      column.reset   # reset width calculation
    end
    
    return( out )
  end
  
  def each_column
    block_given? or return enum_for(:each_column)
    for column in columns
      yield(column)
    end
  end
  
  def each_row
    block_given? or return enum_for(:each_row)
    for row in rows
      yield(row)
    end
  end
  
  alias :to_s :render

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
  
  def width
    w = @left_edge.width( @included_sections )
    @columns.inject( w ) do | w, col |
      w + col.width + col.right_side.width( @included_sections )
    end
  end
  
private

  def render_skeleton(section, out = '')
    first, last = @columns.first, @columns.last
    out << @left_edge[ section ].to_s
    for column in @columns
      out << column.fill_text( section )
      out << column.right_side[ section ].to_s
    end
    return( out << $/.to_s )
  end
  
  def expand_columns(new_size)
    new_size.zero? and return
    @columns.empty? and @columns << Column.new( self, 0 )
    c = @columns.last
    while new_size > @columns.length
      @columns << (c = c.spawn!)
    end
  end
end
end