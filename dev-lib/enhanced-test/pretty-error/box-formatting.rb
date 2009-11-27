#!/usr/bin/ruby
# encoding: utf-8

module PrettyError
module BoxFormatting

private
  
  def open_box
    buffer.print( '╔' )
    buffer.print( '═' * (width - 2) )
    buffer.puts( '╗' )
  end
  
  def close_box
    buffer.print( '╚' )
    buffer.print( '═' * (width - 2) )
    buffer.puts( '╝' )
  end
  
  def box_line( line, align = :ljust )
    buffer.print( '║ ' )
    buffer.print( line.send( align, width - 4 ) )
    buffer.puts( ' ║' )
  end
  
  def format_head
    buffer.puts('╠═════╤' << '═' * (width - 8) << '╣')
    buffer.printf( '║ %2i  │ ', depth )
    buffer.printf( location.ljust( width - 10 ) )
    buffer.puts( ' ║' )
  end
  
  def format_nodes
    line_digits = st_nodes[0].finish.line.digits
    open_node_table( line_digits )
    for n in st_nodes
      node_row( n, line_digits )
    end
    close_node_table( line_digits )
  end
  
  def open_node_table( line_digits )
    buffer.print( '╠═════╧' )
    buffer.print( '═' * ( width - 14 - 2 * line_digits ) )
    2.times do
      buffer.print( '╤' )
      buffer.print( '═' * ( line_digits + 2 ) )
    end
    buffer.puts( '╣' )
  end
  
  def close_node_table( line_digits )
    buffer.print( '╠' )
    buffer.print( '═' * ( width - 8 - 2 * line_digits ) )
    2.times do
      buffer.print( '╧' )
      buffer.print( '═' * ( line_digits + 2 ) )
    end
    buffer.puts( '╣' )
  end
  
  def node_row( node, digits )
    tag = ( ' ' * node.depth ) << node.tag
    line_range  = [ node.start.line, node.finish.line ]
    
    buffer.print( '║ ' )
    buffer.print( tag.ljust( width - 2 * digits - 10 ) )
    
    for number in line_range
      buffer.print( ' │ ' )
      buffer.print( number.to_s.center( digits ) )
    end
    
    buffer.puts( ' ║' )
  end
  
  def format_source
    source.each_line do | line |
      line.rstrip!
      box_line( line )
    end
  end
  
  def box_line( line, align = :ljust )
    buffer.print( '║ ' )
    buffer.print( line.send( align, width - 4 ) )
    buffer.puts( ' ║' )
  end
  
  def extract_source( source_lines, line_no, range_width )
    max = source_lines.length
    start  = ( line_no - range_width ).at_least( 1 )
    finish = ( line_no + range_width ).at_most( max )
    
    line_format = "%0#{ finish.digits }i | %s"
    code = source_lines[ start - 1 .. finish - 1 ].join('')
    code = code.expand_tabs( 4 ).fixed_indent( 0 )
    
    source = ''
    code.each_line.with_index do | line, offset |
      current_line = start + offset
      prefix = current_line == line_no ? '==> ' : '    '
      source << prefix << ( line_format % [ current_line, line ] )
    end
    
    return( source )
  end
    
  def extract_nodes( markup, line_no )
    markup.index.select do | node |
      line_no.between?( node.start.line, node.finish.line ) and
        node.tag != 'top'
    end
  end

  
  def format_path( path )
    if path.start_with?( Dir.pwd )
      path = path.dup
      path[ 0, Dir.pwd.length + 1 ] = './'
    end
    path
  end
  
end
end
