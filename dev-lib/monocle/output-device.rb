#!/usr/bin/ruby
# encoding: utf-8

require 'delegate'
autoload :StringIO, 'stringio' unless defined?( StringIO )

module Monocle
class OutputDevice < DelegateClass( IO )
  include Monocle
  include TerminalEscapes
  
  def self.open( path, options = {} )
    File.open( path, options.fetch( :mode, 'w' ) ) do | file |
      return( yield( new( file, options ) ) )
    end
  end
  
  def self.buffer( options = {} )
    buffer = StringIO.new( '', options.fetch( :mode, 'w' ) )
    out = new( buffer, options )
    if block_given?
      begin
        yield( out )
        return( out.string )
      ensure
        out.close
      end
    else
      return out
    end
  end
  
  def self.stdout( options = {} )
    device = new( $stdout, options )
    block_given? ? yield( device ) : device
  end
  
  DEFAULT_SIZE = Pair.new( 80, 22 ).freeze
  IO_PRINT_METHODS = %w( puts print printf putc )
  SIZE_IOCTL = 0x5413
  SIZE_STRUCT = [ 0, 0, 0, 0 ].pack( "SSSS" ).freeze
  
  private :reopen
  attr_reader :device
  attr_accessor :style
  
  def initialize( output, options = {} )
    @device = 
      case output
      when String then File.open( output, options.fetch( :mode, 'w' ) )
      when IO then output
      else
        if IO_PRINT_METHODS.all? { | m | output.respond_to?( m ) }
          output
        else
          msg = "%s requires an IO-like object, but was given: %p" % [ self.class, output ]
          raise( ArgumentError, msg )
        end
      end
    super( @device )
    
    @cursor = Pair.new( 0, 0 )
    @background_stack = []
    @foreground_stack = []
    @background = @foreground = nil
    @tab_width = options.fetch( :tab_width, 8 )
    
    @newline = options.fetch( :newline, $/ )
    @use_color = options.fetch( :use_color, tty? )
    
    @margin = Pair.new( 0, 0 )
    case margin = options.fetch( :margin, 0 )
    when Numeric then @margin.left = @margin.right = margin.to_i
    else
      @margin.left = margin[ :left ].to_i
      @margin.right = margin[ :right ].to_i
    end
    
    @tabs = {}
    @screen_size = nil
    @alignment = options.fetch( :alignment, :left )
    @style = Style( options[ :style ] )
  end
  
  def foreground( color = nil )
    color or return( @foreground_stack.last )
    begin
      @foreground_stack.push( color )
      yield
    ensure
      @foreground_stack.pop
    end
  end
  
  def colors( fg, bg )
    foreground( fg ) { background( bg ) { yield } }
  end
  
  def background( color = nil )
    color or return( @background_stack.last )
    begin
      @background_stack.push( color )
      yield
    ensure
      @background_stack.pop
    end
  end
  
  alias on background
  
  for color in ANSI_COLORS.keys
    class_eval( <<-END, __FILE__, __LINE__ )
      def #{ color }
        foreground( :#{ color } ) { yield }
      end
      
      def on_#{ color }
        background( :#{ color } ) { yield }
      end
    END
  end
  
  def use_color?
    @use_color
  end
  
  def use_color( v = nil )
    v.nil? or self.use_color = v
    return( @use_color )
  end
  
  def use_color= v
    @use_color = ! ! v # 'not not x' casts x to either `true' or 'false'
  end
  
  def margin= n
    left_margin = right_margin = n.to_i.at_least( 0 )
  end
  
  def indent( n = 0, m = 0 )
    n, m = n.to_i, m.to_i
    self.left_margin += n
    self.right_margin += m
    if block_given?
      begin
        yield
      ensure
        self.left_margin -= n
        self.right_margin -= m
      end
    else
      self
    end
  end
  
  def outdent( n )
    self.left_margin -= n.to_i
    block_given? and
      begin yield
      ensure self.left_margin += n.to_i
      end
  end
  
  def left_margin
    @margin.left
  end
  
  def right_margin
    @margin.right
  end
  
  def left_margin= n
    @margin.left = n.to_i
  end
  
  def right_margin= n
    @margin.right = n.to_i
  end
  
  def reset!
    @fg_stack.clear
    @bg_stack.clear
    @margin = Pair.new( 0, 0 )
    @cursor = Pair.new( 0, 0 )
    @screen_size = nil
  end
  
  alias use_color? use_color
  
  def list( *args )
    List.new( *args ) do | list |
      list.output = self
      block_given? and yield( list )
      list.render
    end
    return( self )
  end
  
  def table( *args )
    Table.new( *args ) do | t |
      block_given? and yield( t )
      t.render( self )
    end
  end
  
  def leger( char = '<h>', w = width )
    puts( @style.format( char ).tile( w ) )
  end
  
  def print( *objs )
    text = Text( [ objs ].flatten!.join )
    @use_color or text.bleach!
    last_line = text.pop
    for line in text
      put!( line )
    end
    fill( @margin.left )
    @device.print( color_code )
    @cursor + last_line.width
    @device.print( last_line )
    self
  end
  
  def puts( *objs )
    text = Text( [ objs ].flatten!.join( @newline ) )
    ( text.empty? or text.last.empty? ) and text << Line( '' )
    for line in text
      put( line )
      newline!
    end
    self
  end
  
  def printf( fmt, *args )
    print( sprintf( fmt, *args ) )
  end
  
  def putsf( fmt, *args )
    puts( sprintf( fmt, *args ) )
  end
  
  for m in %w( left right center )
    class_eval( <<-END, __FILE__, __LINE__ + 1 )
      def #{ m }
        prior, @alignment = @alignment, :#{ m }
        yield
      ensure
        @alignment = prior
      end
    END
  end
  
  def close
    @device.close rescue nil
  end
  
  def height
    screen_size.height
  end
  
  def full_width
    screen_size.width
  end
  
  def width
    screen_size.width - @margin.left - @margin.right
  end
  
  def put( str, options = nil )
    if options
      fill  = @style.format( options.fetch( :fill, ' ' ) )
      align = options.fetch( :align, @alignment )
    else
      fill, align = ' ', @alignment
    end
    
    str = SingleLine.new( str ).align!( align, width, fill )
    fill( @margin.left )
    @device.print( color_code )
    @device.print( str )
    @cursor + str.width
    @device.print( clear_attr )
    fill( @screen_size.width - @cursor.column )
    self
  end
  
  def put!( str, options = nil )
    put( str, options )
    newline!
  end
  
  def return!
    ~@cursor
    @device.print( "\r" )
    @device.flush
  end
  
  def fill( width, char = ' ' )
    width =
      case width
      when Symbol, String
        distance_to( width )
      when Fixnum
        width.at_least( 0 )
      end
    if width > 0
      fill_str = 
        if char.length > 1 and ( char = SingleLine( char ) ).width > 1
          char.tile( width )
        else
          char * width
        end
      @cursor.column += width
      @device.print( fill_str )
    end
    self
  end
  
  def newline!
    +@cursor
    @device.print( @newline )
    @device.flush
    self
  end
  
  def space( n_lines = 1 )
    n_lines.times do
      put( '' )
      newline!
    end
    self
  end
  
  def column
    @cursor.column
  end
  
  def line
    @cursor.line
  end
  
  def clear
    @cursor.line = @cursor.column = 0
    @device.print( set_cursor( 0, 0 ), clear_screen )
    @device.flush
    return( self )
  end
  
  def clear_line
    @device.print( super )
    @device.flush
    return!
  end
  
  
  for m in %w( horizontal_line box_top box_bottom )
    class_eval( <<-END, __FILE__, __LINE__ + 1 )
      def #{ m }
        put( @style.#{ m }( width ) )
        newline!
      end
    END
  end
  
private
  
  def abs( col )
    col < 0 and col += width
    col.bound( 0, width - 1 )
  end
  
  def color_code
    @use_color or return ''
    code = ''
    case fg = @foreground_stack.last
    when Fixnum then code << xterm_color( ?f, fg )
    when String, Symbol then code << ansi_color( ?f, fg )
    end
    case bg = @background_stack.last
    when Fixnum then code << xterm_color( ?b, bg )
    when String, Symbol then code << ansi_color( ?b, bg )
    end
    code
  end
  
  def distance_to( tab )
    ( abs( @tabs[ tab ] ) - @cursor.column ).at_least( 0 )
  end
  
  def screen_size
    @screen_size ||= begin
      data = SIZE_STRUCT.dup
      if @device.ioctl( SIZE_IOCTL, data ) >= 0
        height, width = data.unpack( "SS" )
        Pair.new( 
          width  > 0 ? width  : default_width,
          height > 0 ? height : default_height
        )
      else
        default_size
      end
    rescue Exception
      default_size
    end
  end
  
  def default_size
    Pair.new( default_width, default_height )
  end
  
  def default_height
    ( ENV[ 'LINES' ] || DEFAULT_SIZE.height ).to_i
  end
  
  def default_width
    ( ENV[ 'COLUMNS' ] || DEFAULT_SIZE.width ).to_i
  end
end

class Pager < OutputDevice
  unless pager_command = ENV[ 'PAGER' ]
    pagers = %w( most less more )
    system_path = ENV.read( 'PATH', Array )
    pager_command = pagers.find do | cmd |
      system_path.find { | dir | test( ?x, dir / cmd ) }
    end
  end
  PAGER_COMMAND = pager_command
  
  def self.open( options = {} )
    unless PAGER_COMMAND
      message = <<-END.gsub!( /\s+/, ' ' ).strip!
      unable to locate a pager program on the system's PATH or from
      the environmental variable, PAGER
      END
      raise( IOError, message )
    end
    
    options.fetch( :use_color ) { options[ :use_color ] = true }
    
    if block_given?
      IO.popen( PAGER_COMMAND, 'w' ) do | pager |
        pager = new( pager, options )
        return yield( pager )
      end
    else
      return new( IO.popen( PAGER_COMMAND, 'w' ), options )
    end
  end

private

  def screen_size
    @screen_size ||= begin
      data = SIZE_STRUCT.dup
      if STDOUT.ioctl( SIZE_IOCTL, data ) >= 0
        height, width = data.unpack( "SS" )
        Pair.new( 
          width  > 0 ? width  : default_width,
          height > 0 ? height : default_height
        )
      else
        default_size
      end
    rescue Exception
      default_size
    end
  end
end

end
