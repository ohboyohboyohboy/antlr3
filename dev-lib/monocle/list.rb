#!/usr/bin/ruby
# encoding: utf-8

module Monocle
class List
  include Presentation
  
  def initialize( *items )
    @spacer = nil
    @columns = nil
    
    items = [ items ].flatten!
    options = items.last.is_a?( Hash ) ? items.pop : nil
    initialize_view( options )
    
    @items = items.map! { | item | SingleLine.new( item ) }
    @sorted = nil
    
    if options
      value = options[ :column_spacer ] and self.column_spacing = value
      value = options[ :columns ] and self.columns = value
    end
    block_given? and yield( self )
  end
  
  def spacer( value = nil )
    value and self.column_spacer = value
    @spacer or SingleLine.new( '  ' )
  end
  
  def spacer= value
    @spacer =
      case value
      when nil, SingleLine then value
      else SingleLine.new( value )
      end
  end
  
  def spacing( n )
    self.spacing = n
    spacer.width
  end
  
  def spacing= width
    self.spacer = ' ' * width.to_i.at_least( 0 )
  end
  
  def columns( n = nil )
    n and self.columns = n
    @columns or optimize_columns
  end
  
  def columns= n
    @columns =
      case n
      when nil then n
      else n.to_i.at_least( 1 )
      end
  end

private

  def render_content( output )
    unless columns = @columns
      @sorted = sorted
      columns = optimize_columns
      @sorted = nil
    end
    
    widths = calculate_columns( columns )
    number_of_rows = ( @items.length.to_f / columns ).ceil
    
    each_column = @items.each_slice( number_of_rows )
    columns = each_column.zip( widths ).map do | cells, width |
      if cells.length < number_of_rows
        cells.fill( SingleLine.new( '' ), cells.length,
                    number_of_rows - cells.length )
      end
      cells.map! { | cell | cell.align( alignment, width ) }
    end
    
    for row in columns.transpose
      output.puts( row.join( spacer ) )
    end
    return( output )
  end
  
  def sorted
    @sorted or @items.each_with_index.sort_by { | item, index | -item.width }
  end
  
  def optimize_columns
    limit = max_width
    @items.empty? and return( nil )
    c, rem = @items.length.divmod( 2 )
    rem.zero? or c += 1
    column_spacing = spacer.width
    
    best_columns = 1
    for number_of_rows in ( 1 .. c )
      number_of_columns = ( @items.length.to_f / number_of_rows ).ceil
      columns = calculate_columns( number_of_columns )
      total_width = columns.inject( ( number_of_columns - 1 ) * column_spacing, :+ )
      if total_width <= limit
        best_columns = number_of_columns
        break
      end
    end
    return( best_columns )
  end
  
  #
  # create a fixed number of columns, calculating respsective
  # widths and indices within the list
  # 
  def calculate_columns( n )
    rows, rem = @items.length.divmod( n )
    rem.zero? or rows += 1
    columns = Array.new( n )
    items = sorted.dup
    # items is now ordered from widest to thinnest, along with respective indices
    
    # collect n columns and their respective width metrics,
    # working through items from widest down
    n.times do
      # if a column has already been marked with a width,
      # repeat this block
      begin
        item, index = items.shift
        column_number = index / rows
      end while columns[ column_number ]
      columns[ column_number ] = item.width
    end
    return( columns )
  end
  
end
end
