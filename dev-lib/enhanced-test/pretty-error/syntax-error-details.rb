#!/usr/bin/ruby
# encoding: utf-8


module PrettyError

SyntaxErrorDetails = Struct.new(
  :index, :file, :line, :description, :buffer, :width, :source, :st_nodes
)

class SyntaxErrorDetails
  include BoxFormatting
  
  def initialize(index, file, line, error_text, buffer, width, range_width = 2)
    error_column = 
      if error_text =~ /^( *)\^$/
        # then this is one of those syntax errors with extra info about
        # where in the line the syntax error occurs
        error_column = $1.length
      else 0
      end
    
    lines, markup = FILE_CACHE.fetch( file )
    
    source = lines ? extract_source( lines, line, error_column, range_width ) :
              '( unable to extract source )'
    st_nodes = markup ? extract_nodes( markup, line ) : nil
    
    description = ( error_text =~ /$/ && $` )  # first line
    super( index, file, line, description, buffer, width, source, st_nodes )
  end
  
  alias depth index
  
  def format
    format_head
    box_line( description, :center )
    if st_nodes and not st_nodes.empty?
      format_nodes
    else
      buffer.puts( '╠' << ( '═' * ( width - 2 ) ) << '╣' )
    end
    format_source
    return( buffer )
  end
  
  def location
    "#{ format_path( file ) } @ #{ line }"
  end

private

  def format_head
    super
    buffer.print( '╠═════╧' )
    buffer.print( '═' * ( width - 8 ) )
    buffer.puts( '╣' )
    box_line( description, :center )
  end
  
  def open_node_table( line_digits )
    buffer.print( '╠' )
    buffer.print( '═' * ( width - 8 - 2 * line_digits ) )
    2.times do
      buffer.print( '╤' )
      buffer.print( '═' * ( line_digits + 2 ) )
    end
    buffer.puts( '╣' )
  end
  
  def extract_source( source_lines, line_no, error_column, range_width )
    max = source_lines.length
    start  = ( line_no - range_width ).at_least( 1 )
    finish = ( line_no + range_width ).at_most( max )
    
    line_format = "%0#{ finish.digits }i | %s"
    code = source_lines[ start - 1 .. finish - 1 ]
    error_line = code[ line_no - start ].to_s.dup
    error_line.insert( error_line.length - $/.length, ' <~~~ ' )
    error_line.insert( error_column, ' ~~~> ' ) rescue nil
    code[ line_no - start ] = error_line
    code = code.join( '' ).expand_tabs( 4 ).fixed_indent( 0 )
    
    source = ''
    code.each_line.with_index do | line, offset |
      current_line = start + offset
      prefix = current_line == line_no ? '==> ' : '    '
      source << prefix << ( line_format % [ current_line, line ] )
    end
    
    return( source )
  end

end
end