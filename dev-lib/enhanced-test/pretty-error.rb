#!/usr/bin/ruby
# encoding: utf-8

require 'string-template/markup'
require 'call-stack'

module PrettyError
  BLACKLIST = []
  FILE_CACHE = {}
  
  class << FILE_CACHE
    def fetch( path )
      path = File.expand_path( path.to_s )
      super( path ) do
        self[ path ] = read( path )
      end
    end
    
    def read( path )
      case
      when !test( ?f, path ) then nil
      when path =~ /\.so$/ then nil
      else
        markup = StringTemplate::Markup.load( path ) rescue nil
        if markup
          [ markup.ruby_source.lines.to_a, markup ]
        else
          [ File.readlines( path ), nil ]
        end
      end
    rescue IOError
      return( nil )
    end
    
  end
  
  class << self
    
    def pretty(exception, options = {})
      width = options[:width] ||= $stderr.screen_width - 10
      backtrace = options.fetch(:backtrace, true)
      clear_trace = options.fetch( :clear_backtrace, true )
      
      buffer = StringIO.new
      buffer.puts('')
      
      case exception
      when SyntaxError
        syntax_error_header(buffer, exception, width)
        syntax_error_list(buffer, exception, width)
      else
        error_header(buffer, exception, width)
        
        if backtrace
          error_backtrace(buffer, exception, width, backtrace)
          exception.set_backtrace([]) if clear_trace
        end
      end
      
      message = buffer.string.gsub!(/^/,'   ')
      exception.message.replace(message)
      return(exception)
    end
    
  private
    
    def error_header(buffer, exception, width)
      open_box( buffer, width )
      box_line( buffer, exception.class.name, width, :center )
      thin_divide( buffer, width )
      
      exception.message.each_line do | line |
        line.chomp!
        box_line( buffer, line, width )
      end
      
      close_box( buffer, width )
      buffer.puts('')
    end
    
    def syntax_error_header(buffer, exception, width)
      open_box( buffer, width )
      box_line( buffer, exception.class.name, width, :center )
      thin_divide( buffer, width )
      box_line( buffer, "compilation error (see list below)", width )
      close_box( buffer, width )
      buffer.puts('')
    end
    
    def error_backtrace(buffer, exception, width, limit = nil)
      trace = exception.backtrace!.
        delete_if { |call| BLACKLIST.any? { |rx| call.file =~ rx } }
      
      if limit and Integer === limit
        trace = trace.first( limit )
        label = "Detailed Backtrace (Last #{limit} Calls)"
      else
        label = "Detailed Backtrace"
      end
      
      calls = trace.each_with_index.map do |call, i|
        CallDetails.new(
          trace.length - i, call.file, call.line,
          call.method, buffer, width
        )
      end
      
      open_box( buffer, width )
      box_line( buffer, label, width, :center )
      for call in calls do call.format end
      close_box( buffer, width )
    end
    
    def syntax_error_list(buffer, exception, width, limit = nil)
      errors = exception.message.
        scan(/^([^\n\r]*?):(\d+):(.*?)(?=\z|\n[^\n\r]*?:\d+:)/m)
      errors = errors.each_with_index.map do |segments, i|
        file, line, error_text = segments
        SyntaxErrorDetails.new(
          i + 1, file, line.to_i, error_text, buffer, width
        )
      end
      
      open_box( buffer, width )
      box_line( buffer, 'List of Syntax Errors', width, :center )
      for error in errors do error.format end
      close_box( buffer, width )
    end
    
    def open_box( buffer, width )
      buffer.print( '╔' )
      buffer.print( '═' * (width - 2) )
      buffer.puts( '╗' )
    end
    
    def close_box( buffer, width )
      buffer.print( '╚' )
      buffer.print( '═' * (width - 2) )
      buffer.puts( '╝' )
    end
    
    def thin_divide( buffer, width )
      buffer.print( '╟' )
      buffer.print( '─' * (width - 2) )
      buffer.puts( '╢' )
    end
    
    def box_line( buffer, line, width, align = :ljust )
      buffer.print( '║ ' )
      buffer.print( line.send( align, width - 4 ) )
      buffer.puts( ' ║' )
    end
  end
  
module_function
  
  def blacklist( *patterns )
    unless patterns.empty?
      for pattern in [ patterns ].flatten!
        BLACKLIST << (Regexp === pattern ? pattern : Regexp.literal( pattern ))
      end
    end
    
    return( BLACKLIST )
  end
  
  def pretty_error( exception, options = {} )
    PrettyError.pretty( exception )
  end
  
  blacklist 'rubygems/custom_require'
end

class Exception
  
  def pretty!( options = {} )
    PrettyError.pretty( self, options )
    return( self )
  end
  
  def pretty( options = {} )
    copy =
      begin
        Marshal.load( Marshal.dump( self ) )
      rescue clone
      end
    copy.pretty!( options )
  end
  
end

require 'enhanced-test/pretty-error/box-formatting'
require 'enhanced-test/pretty-error/call-details'
require 'enhanced-test/pretty-error/syntax-error-details'
