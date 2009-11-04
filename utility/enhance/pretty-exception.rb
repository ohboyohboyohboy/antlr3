#!/usr/bin/ruby
# encoding: utf-8

module PrettyException
  
  FILE_CACHE = Hash.new do |cache, path|
    test(?f, path) and cache[path] = File.readlines(path)
  end
  
  def FILE_CACHE.[](key)
    file = File.expand_path(key.to_s)
    if File.extname(file) == '.so'
      return "<binary .so extension>"
    else
      super(file)
    end
  end
  
  @@blacklist = [/rubygems\/custom_require/]
  def self.measure_invisible(text)
    text.scan(/\e\[.*?m/).inject(0) do |width, escape|
      width + escape.length
    end
  end
  
  module_function
  def blacklist(rx)
    @@blacklist << (rx.is_a?(Regexp) ? rx : Regexp.new(Regexp.escape(rx)))
  end
  
  def pretty_error(exception, options = {})
    width = options[:width] ||= screen_width - 10
    backtrace = options.fetch(:backtrace, true)
    
    buffer = StringIO.new
    buffer.puts('')
    
    case exception
    when SyntaxError
      syntax_error_header(buffer, exception, width)
      syntax_error_list(buffer, exception, width)
    else
      error_header(buffer, exception, width)
    end
    
    
    if backtrace
      error_backtrace(buffer, exception, width, backtrace)
      exception.set_backtrace([])
    end
    
    message = buffer.string.gsub!(/^/,'   ')
    exception.message.replace(message)
    return(exception)
  end
  
  def error_header(buffer, exception, width)
    buffer.puts('╔' << '═' * (width - 2) << '╗')
    buffer.puts('║ ' << exception.class.name.center(width - 4) << ' ║')
    buffer.puts('╟' << '─' * (width - 2) << '╢')
    for line in exception.message.split(/\n/)
      w = width + PrettyException.measure_invisible(line) - 4
      buffer.puts('║ ' << line.ljust(w) << ' ║')
    end
    buffer.puts('╚' << '═' * (width - 2) << '╝')
    buffer.puts('')
  end
  
  def syntax_error_header(buffer, exception, width)
    buffer.puts('╔' << '═' * (width - 2) << '╗')
    buffer.puts('║ ' << exception.class.name.center(width - 4) << ' ║')
    buffer.puts('╟' << '─' * (width - 2) << '╢')
    buffer.puts('║ ' << "compilation error (see list below)".ljust(width - 4) << ' ║')
    buffer.puts('╚' << '═' * (width - 2) << '╝')
    buffer.puts('')
  end
  
  def error_backtrace(buffer, exception, width, limit = nil)
    trace = exception.backtrace!
    trace.delete_if { |call| @@blacklist.any? { |rx| rx === call.file } }
    if limit and Integer === limit
      trace = trace.first(limit)
      label = "Detailed Backtrace (Last #{limit} Calls)"
    else
      label = "Detailed Backtrace"
    end
    
    calls = trace.each_with_index.map do |call, i|
      DetailedCall.new(trace.length - i, call.file, call.line, call.method)
    end
    
    buffer.puts('╔' << '═' * (width - 2) << '╗')
    buffer.puts('║ ' << label.center(width - 4) << ' ║')
    for call in calls do buffer.puts(call.format(width)) end
    buffer.puts('╚' << '═' * (width - 2) << '╝')
  end
  
  def syntax_error_list(buffer, exception, width)
    errors = exception.message.scan(/^([^\n\r]*?):(\d+):(.*?)(?=\z|\n[^\n\r]*?:\d+:)/m)
    errors = errors.each_with_index.map do |segments, i|
      file, line, error_text = segments
      SyntaxErrorInformation.new(i + 1, file, line, error_text)
    end
    buffer.puts('╔' << '═' * (width - 2) << '╗')
    buffer.puts('║ ' << 'List of Syntax Errors'.center(width - 4) << ' ║')
    for error in errors do buffer.puts(error.format(width)) end
    buffer.puts('╚' << '═' * (width - 2) << '╝')
    buffer.puts('')
  end
end

PrettyException::DetailedCall =
Struct.new(:depth, :file, :line, :method, :source, :string_template_nodes)

class PrettyException::DetailedCall
  
  def initialize(depth, file, line, method, range_width = 2)
    case source_lines = FILE_CACHE[file]
    when Array
      start, finish = (line - range_width - 1), (line + range_width - 1)
      start < 0 and start = 0
      source = source_lines[start..finish].join('').fixed_indent(0)
      ndigits = Math.log10(finish + 1).floor + 1
      source = source.split(/\n/).each_with_index.map do |ln, index|
        ln = ln.expand_tabs(4)
        line_no = start + index + 1
        prefix = index == range_width ? "==> %#{ndigits}i | " : "    %#{ndigits}i | "
        prefix %= line_no
        prefix << ln
      end.join("\n")
    when String then source = source_lines
    when nil then source = ''
    end
    nodes = nil
    markup = (STMarkup.load(file) rescue nil) and
      nodes = markup.nodes_covering_line(line).reject { |n| n.tag == 'top' }
    
    super(depth, file, line, method, source, nodes)
  end
  
  def format(width)
    lines = []
    lines << ('╠═════╤' << '═' * (width - 8) << '╣')
    ln = '║ %2i  │ %s @ %i ' % [depth, file, line]
    method and ln << "in `#{method}' "
    lines << (ln.ljust(width + 3) << '║')
    if nodes = string_template_nodes and not nodes.empty?
      ndigits = Math.log10(nodes[0].finish_line).floor + 1
      divider = '╠═════╧' << '═' * (width - 14 - 2*ndigits) << '╤' <<
        '═' * (ndigits + 2) << '╤' << '═' * (ndigits + 2) << '╣'
      lines << divider
      for n in nodes
        lines <<
          ('║ ' << [ (' ' * n.depth << n.tag).ljust(width - 2*ndigits - 10),
            n.start_line.to_s.center(ndigits),
            n.finish_line.to_s.center(ndigits) ].join(' │ ') << ' ║')
      end
      divider = '╠' << '═' * (width - 8 - 2*ndigits) << '╧' <<
        '═' * (ndigits + 2) << '╧' << '═' * (ndigits + 2) << '╣'
      lines << divider
    else
      lines << ('╠═════╧' << '═' * (width - 8) << '╣')
    end
    
    for src_line in source.split(/[ \t]*\n/)
      lines << ('║ ' << src_line.ljust(width - 4) << ' ║')
    end
    
    return(lines.join("\n"))
  end
  

end

PrettyException::SyntaxErrorInformation =
Struct.new(:index, :file, :line, :description, :source, :string_template_nodes)

class PrettyException::SyntaxErrorInformation
  def initialize(index, file, line, error_text, range_width = 2)
    line = line.to_i
    error_column = 
      if error_text =~ /^( *)\^$/
        # then this is one of those syntax errors with extra info about
        # where in the line the syntax error occurs
        error_column = $1.length
      else 0
      end
    
    # fetch the source range
    if source_lines = FILE_CACHE[file]
      start, finish = (line - range_width - 1), (line + range_width - 1)
      start < 0 and start = 0
      lines = source_lines[start..finish].map! { |ln| ln.clone }
      
      # highlight the error
      error_line = lines[range_width]
      error_line.insert(error_line.length - 1, ' <~~~ ')
      error_line.insert(error_column, ' ~~~> ')
      
      lines = lines.join("\n").fixed_indent(0).split("\n")
      
      ndigits = Math.log10(finish + 1).floor + 1
      source = lines.each_with_index.map do |ln, i|
        ln = ln.expand_tabs(4)
        line_no = start + i + 1
        prefix = i == range_width ? "==> %#{ndigits}i | " : "    %#{ndigits}i | "
        prefix %= line_no
        prefix << ln
      end.join("\n")
    else source = ''
    end
    
    nodes = nil
    markup = (STMarkup.load(file) rescue nil) and
      nodes = markup.nodes_covering_line(line).reject { |n| n.tag == 'top' }
    
    description = error_text.split("\n")[0]
    super(index, file, line, description, source, nodes)
  end
  
  def format(width)
    
     # format:
     #   1. fancy separation line
     #   2. index & location boxes
     #   3. another separation line
     #   4. error description boxy
     # if string template data available
     #   * separation line
     #   * string template tree display
     # if source code availble
     #   * separation line
     #   * source code region display box
    
    lines = []
    lines << ('╠═════╤' << '═' * (width - 8) << '╣')
    
    prefix = '║ %2i  │ ' % [index]               # fixed width of 8 visible chars
    body = "#{file} @ #{line}".ljust(width - 10) # fill to visible width to avoid multi-byte box char count issues
    tail = ' ║'                                  # fixed width of 2 visible chars
    lines << (prefix << body << tail)
    
    lines << ('╠═════╧' << '═' * (width - 8) << '╣')
    lines << ('║ ' << description.center(width - 4) << ' ║')
    
    if nodes = string_template_nodes and not nodes.empty?
      ndigits = Math.log10(nodes[0].finish_line).floor + 1
      
      divider = '╠' << '═' * (width - 8 - 2*ndigits) << '╤' <<
        '═' * (ndigits + 2) << '╤' << '═' * (ndigits + 2) << '╣'
      
      lines << divider
      
      for n in nodes
        lines <<
          ('║ ' << [ (' ' * n.depth << n.tag).ljust(width - 2*ndigits - 10),
            n.start_line.to_s.center(ndigits),
            n.finish_line.to_s.center(ndigits) ].join(' │ ') << ' ║')
      end
      
      divider = '╠' << '═' * (width - 8 - 2*ndigits) << '╧' <<
        '═' * (ndigits + 2) << '╧' << '═' * (ndigits + 2) << '╣'
      lines << divider
    else
      lines << ('╠' << '═' * (width - 2) << '╣')
    end
    
    for src_line in source.split(/[ \t]*\n/)
      lines << ('║ ' << src_line.ljust(width - 4) << ' ║')
    end
    
    return(lines.join("\n"))
  end
  
end
