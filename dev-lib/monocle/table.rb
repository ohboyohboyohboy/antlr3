#!/usr/bin/ruby

module Monocle
class Table
  include Presentation
  
  def self.build( *args )
    table = new( *args ) do | table |
      block_given? and yield( table )
    end
    return( table.render )
  end
  
  
  def initialize( columns, options = {} )
    @item = @head = Divider.new( self, :head )
    @foot = Divider.new( self, :foot )
    @columns = []
    @width = @inner_width = nil
    initialize_view( options )
    
    case columns
    when Fixnum
      expand_columns( columns )
    when Array
      @item = @item.title_row!( *columns )
    end
    
    block_given? and yield( self )
  end
  
  def inspect
    map { |i| i.inspect }.join( "\n" )
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
  
  def rows( array_of_rows )
    for row in array_of_rows
      row( *row )
    end
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
      # fixed with is smaller than the current width
      diff = current_width - w
      # pick the columns that can be "flowed" into
      # a smaller size
      resizable = @columns.select { |c| c.flow? }
      unless resizable.empty?
        # try to redistribute the width across the
        # resizable columns
        additional, extra = diff.divmod( resizable.length )
        resizable.each { |c| c.width -= additional }
        resizable.last.width -= extra
      end
    when 1
      diff = w - current_width
      resizable = @columns.select { |c| c.flow? }
      unless resizable.empty?
        additional, extra = diff.divmod( resizable.length )
        resizable.each { |c| c.width += additional }
        resizable.last.width += extra
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
class Table
class Column
  
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
      cell_text.strip!
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

class Member
  include Constructors
  
  class << self
    attr_reader :member_name
    
    def define( member_name, sup = self, &body )
      klass = Class.new( sup ) do
        @member_name = member_name
        class_eval( &body )
      end
      
      define_method( "#{ member_name }!" ) do |*args|
        klass.new( @table, *args ) { |m| link(m) }.tail
      end
      return( klass )
    end
  end
  
  attr_reader :table
  attr_accessor :before, :after
  protected :before, :after
  
  def initialize( table, *args )
    @table = table
    @before = before
    @after = nil
    @disabled = false
    block_given? and yield( self )
    initialize!( *args )
  end
  
  def initialize!( * )
    # do nothing
  end
  
  def inspect( *args )
    content = args.map! { |a| a.inspect }.join(', ')
    "#{self.class.member_name}(#{content})"
  end
  
  def each
    block_given? or return( enum_for( __method__ ) )
    node = self
    begin
      yield( node )
      node = node.after
    end while( node )
  end
  
  def disable
    @disabled = true
  end
  
  def enable
    @disabled = false
  end
  
  def enabled?
    not disabled?
  end
  
  def disabled?
    @disabled
  end
  
  def first?
    @before.nil?
  end
  
  def last?
    @after.nil?
  end
  
  def link( item )
    after, @after, item.before = @after, item, self
    after ? item.link( after ) : item
  end
  
  def unlink
    @before and @before.after = nil
    @before = nil
    return( self )
  end
  
  def render( out )
    render!( out ) unless disabled?
  end
  
  def columns
    table.columns
  end
  
  def tail
    @after ? @after.tail : self
  end
end

Row = Member.define( 'row' ) do
  def initialize!( *content )
    @cells = [ content ].flatten!.map! { | c | Text( c ) }
    table.expand_columns( @cells.length )
  end
  
  def []( index )
    @cells[ index ]
  end
  
  def []=(index, value)
    @cells[ index ] = value
  end
  
  def cells
    pad
    @table.columns.zip( @cells ).
      map! { | col, cell | col.prepare( cell ) }
  end
  
  def height
    cells.map! { | c | c.height }.max
  end
  
  def render!( out, type = :row )
    left_edge = @table.left_edge[ type ].to_s
    sides = @table.columns.map { | t | t.right_side[ type ].to_s }
    
    for line_cells in prepare.transpose
      out.print( left_edge )
      line_cells.zip( sides ) do | line_cell, side |
        out.print( line_cell )
        out.print( side )
      end
      out.puts( '' )
    end
    return out
  end
  
  def inspect
    super( *cells )
  end
  
private
  
  def prepare
    cell_lines = cells.map! { | cell | cell.split( $/, -1 ) }
    height = cell_lines.map { | lines | lines.length }.max
    if height > 1
      cell_lines.zip( @table.columns ) do | lines, col |
        if lines.length < height
          blank = col.fill_text( ' ' )
          lines.fill( blank, lines.length, height - lines.length )
        end
      end
    end
    return( cell_lines )
  end
  
  def pad
    n = @table.columns.length
    m = @cells.length
    if n > m
      @cells.fill( ' ', m, n - m )
    end
  end
  
end

TitleRow = Member.define( 'title_row', Row ) do
  def initialize!( *content )
    super
    divider!( :title_divider )
  end
  
  def render!( out )
    super( out, :title_row )
  end
end

Divider = Member.define( 'divider' ) do
  attr_accessor :type
  
  def initialize!( type )
    @type = type.to_sym
  end
  
  def render( out )
    super( out ) unless @after.is_a?( Divider )
  end
  
  def inspect( *args )
    super( @type, *args )
  end
  
  def render!( out )
    for c in columns
      out.print( c.left_side[ @type ] )
      out.print( c.fill_text( @type ) )
    end
    out.puts( @table.right_edge[ @type ] )
  end
end

SectionTitle = Member.define( 'section', Divider ) do
  attr_accessor :title, :alignment
  
  def initialize!( title, options = {} )
    @title = title.to_s
    @alignment = options.fetch( :align, :left )
  end
  
  def inspect
    super( @title, @alignment )
  end
  
  def render!( out )
    out.puts simulate( :foot )
    
    out.print( @table.left_edge[ :row ] )
    out.print( align( @title, @alignment, @table.inner_width ) )
    out.puts( @table.right_edge[ :row ] )
    
    out.puts simulate( :head )
  end
  
private
  
  def simulate( section )
    temp = StringIO.new
    Divider.new( @table, section ).render( temp )
    div = temp.string.chomp!
    a = @table.left_edge[ section ].length
    z = @table.right_edge[ section ].length
    
    div[  0, a ] = table.left_edge[ :row_divider ].to_s
    div[ -z, z ] = table.right_edge[ :row_divider ].to_s
    
    return( div )
  end
  
end

end
end

