mixin :TextFormatting do
  
  def initialize
    require 'text'
    @width = (stdout.screen_width * 0.9).round
    @indent = 0
    super
  end
  
  def leading_space
    ' ' * @indent
  end
  
  def print_line( line )
    stdout.print( leading_space )
    stdout.puts( line )
  end
  
  def puts( text )
    for line in text.split( $/, -1 )
      print_line( line )
    end
  end
  
  def indent
    @indent += 2; @width -= 2
    yield
  ensure
    @indent -= 2; @width += 2
  end
  
  def column_list( items )
    puts(
      Text::ColumnList.new( items, :width_limit => @width ).render
    )
  end
  
  def table( title_row, *rows )
    t = Text::Table.new( rows ) do | table |
      table.title_row = title_row
      block_given? and yield( table )
    end
    
    t.width > @width and t.width = @width
    puts( t.render )
  end
  
  def title_bar( title )
    bar = "===[ #{ title } ]".ljust( @width, '=' )
    puts( bar )
  end
  
end
