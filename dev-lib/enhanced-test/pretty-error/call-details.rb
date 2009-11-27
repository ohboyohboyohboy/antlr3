#!/usr/bin/ruby
# encoding: utf-8

module PrettyError

CallDetails = Struct.new(
  :depth, :file, :line, :method, :buffer, :width, :source, :st_nodes
)

class CallDetails
  
  include BoxFormatting
  
  def initialize(depth, file, line, method, buffer, width, range_width = 2)
    lines, markup = FILE_CACHE.fetch( file )
    
    source = lines ? extract_source( lines, line, range_width ) :
              '( unable to extract source )'
    st_nodes = markup ? extract_nodes( markup, line ) : nil
    
    super(depth, file, line, method, buffer, width, source, st_nodes)
  end
  
  def format
    format_head
    
    if st_nodes and not st_nodes.empty?
      format_nodes
    else
      buffer.puts( '╠═════╧' << '═' * (width - 8) << '╣' )
    end
    
    format_source
    return buffer
  end
  
  def location
    tail =  method ? " in `#{ method }'" : ''
    "#{ format_path( file ) } @ #{ line }#{ tail }"
  end
  
end

end
