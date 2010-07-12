#!/usr/bin/ruby
# encoding: utf-8

module Monocle
class Table
class Member
  include Monocle
  include Enumerable
  
  class << self
    attr_reader :member_name
    def define( member_name, sup = self, &body )
      klass = Class.new( sup ) do
        @member_name = member_name
        class_eval( &body )
      end
      
      define_method( "#{ member_name }!" ) do |*args|
        klass.new( @table, *args ) { |m| link( m ) }.tail
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
    content = args.map! { |a| a.inspect }.join( ', ' )
    "#{ self.class.member_name }(#{ content })"
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
    @table.expand_columns( @cells.length )
  end
  
  def []( index )
    @cells[ index ]
  end
  
  def []=( index, value )
    @cells[ index ] = value
  end
  
  def cells
    @table.columns.zip( @cells ).
      map! { | col, cell | col.prepare( cell ) }
  end
  
  def height
    cells.map! { | c | c.height }.max
  end
  
  def render!( out, type = :row )
    cells = @table.columns.zip( @cells ).map! do | pair |
      pair[ 1 ] = pair[ 0 ].prepare( pair[ 1 ] )
      pair
    end
    height = cells.map { | col, cell | cell ? cell.height : 0 }.max
    
    result = Text.new
    for column, cell in cells
      joint = column.left_side[ type ].to_s
      result.juxtapose!( cell, joint )
    end
    result.juxtapose!( '', @table.right_edge[ type ].to_s )
    out.puts( result )
  end
  
  def inspect
    super( *cells )
  end
  
private
  
  def prepare
    height = cells.map { | c | c.height }.max
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
    @cells.fill( Text( ' ' ), m, n - m ) if n > m
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
    line = columns.inject( Line( '' ) ) do | line, c |
      line << c.left_side[ @type ] << c.fill_text( @type )
    end
    line << @table.right_edge[ @type ]
    out.puts( line )
  end
end

SectionTitle = Member.define( 'section' ) do
  attr_accessor :title, :alignment
  
  def initialize!( title, options = {} )
    @title = Text( title )
    @alignment = options.fetch( :align, :left )
    @before.divider!( :section_close )
    divider!( :section_open )
  end
  
  def inspect
    super( @title, @alignment )
  end
  
  def render!( out )
    w = @table.inner_width
    title = @title.width > w ? @title.wrap( w ) : @title
    for line in title.align( @alignment, w )
      out.puts( @table.left_edge.section + line + @table.right_edge.section )
    end
  end
  
private
  
  def simulate( section )
    div = @table.left_edge.row.to_s.dup
    columns[ 0...-1 ].
      each { | c | div << c.fill_text( :foot ) << c.right_edge.foot }
    c = columns.last
    return( div )
  end
  
end

end
end
