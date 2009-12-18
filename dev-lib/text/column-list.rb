#!/usr/bin/ruby
# encoding: utf-8

require 'text'

module Text
  class ColumnList
    include Measurement
    
    SizeToken = Struct.new(:length, :index) do
      def <=>(o)
        o.length <=> length
      end
    end
    Column = Struct.new(:index, :width, :start, :finish, :padding)
    
    attr_reader :column_spacing, :items, :width_limit, :columns, :number_of_columns
    
    def initialize( *items )
      items = [ items ].flatten!
      options = items.last.is_a?( Hash ) ? items.pop : {}
      
      @items = []
      @tokens = []
      
      for item in items
        item = item.to_s
        @tokens << SizeToken[ measure( item ), @items.length ]
        @items << item
      end
      @tokens.sort!
      
      @width_limit = options.fetch( :width_limit ) { $stdout.screen_width }
      @column_spacing = options.fetch( :column_spacing, 2 )
      @number_of_columns = options.fetch( :columns ) { optimize_width }
    end
    
    def spacer
      ' ' * @column_spacing
    end
    
    def column_spacing=( num_spaces )
      @column_spacing = num_spaces.to_i.at_least( 0 )
    end
    
    def width_limit=( limit )
      @width_limit = limit.to_i.at_least( 0 )
    end
    
    def number_of_columns=( number )
      @number_of_columns = number.to_i.at_least( 1 )
      @columns = Array.new( @number_of_columns )
      size_tokens = @tokens.dup
      
      @number_of_columns.times do
        begin
          size_token = size_tokens.shift or throw( :uneven_columns )
          token_column = column_number( size_token.index )
        end while( @columns[ token_column ] )
        
        start = token_column * number_of_rows
        finish = (( token_column + 1 ) * number_of_rows)
        actual_finish = finish.at_most( @items.length )
        padding = finish - actual_finish
        
        @columns[ token_column ] =
          Column.new( token_column, size_token.length, start, actual_finish, padding )
      end
      @number_of_columns
    end
    
    def number_of_rows
      div, rem = @items.length.divmod( @number_of_columns )
      return( rem.zero? ? div : div + 1 )
    end
    
    def padding
      number_of_rows * @number_of_columns - @items.length
    end
    
    def total_width
      basic_width = columns.inject( 0 ) { | sum, column | sum + column.width }
      space_width = (@number_of_columns - 1) * @column_spacing
      basic_width + space_width
    end
    
    def optimize_width(limit = @width_limit)
      @items.empty? and return(@number_of_columns = 0)
      self.number_of_columns = 1
      
      catch(:uneven_columns) do
        until total_width > limit or @number_of_columns == @items.length
          self.number_of_columns += 1
        end
        total_width > limit and self.number_of_columns -= 1
        return self.number_of_columns
      end
      self.number_of_columns -= 1
    end
    
    def render(&b)
      first, *rest = render_columns(&b)
      first.zip( *rest ).map { |row| row.join( spacer ) }.join( "\n" )
    end
    
    def render_columns
      return [[]] if @items.empty?
      @columns.map do |c|
        cells = @items[ c.start ... c.finish ]
        cells.fill( '', cells.length, c.padding )
        cells.map! do |cell|
          cell = cell.ljust( c.width )
          block_given? ? yield(cell)  : cell
        end
      end
    end
    
    def to_s
      self.render
    end
    
    def column_number( index )
      index / number_of_rows
    end
    
  end
  
  module_function
  def columnize(list, opts = {}, &b)
    list = ColumnList.new(list, opts)
    return list.render(&b)
  end
  
end
