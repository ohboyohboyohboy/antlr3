#!/usr/bin/ruby
# encoding: utf-8

module Monocle
module Presentation
  include Monocle
  ALIGNMENTS = [ :left, :right, :center ]
  
  def self.included( klass )
    super
    klass.extend( ClassMethods )
  end
  
  attr_accessor :owner
  protected :owner=
  
  for attr in %w( margin padding border )
    class_eval( <<-END, __FILE__, __LINE__ + 1 )
      def #{ attr }( value = nil )
        value and self.#{ attr } = value
        @#{ attr } ||= default_#{ attr }
        block_given? ? yield( @#{ attr } ) : @#{ attr }
      end
      
      def #{ attr }= value
        @#{ attr } = Rectangle( value )
      end
    END
  end
  
  def alignment( value = nil )
    value and self.alignment = value
    @alignment or @owner ? @owner.alignment : :left
  end
  
  def alignment= value
    ALIGNMENTS.member?( value = value.to_sym ) or
      raise( ArgumentError, "unkown alignment: %p" % value )
    @alignment = value
  end
  
  def style( value = nil )
    value and self.style = value
    @style or @owner ? @owner.style : Graphics::NAMED_STYLES[ 'ascii' ]
  end
  
  def style= value
    @style = Style( value )
  end
  
  def render( output = @output )
    if output
      render_content( output )
      return output
    else
      OutputDevice.buffer do | out |
        render_content( out )
      end
    end
  end
  
  def to_s
    OutputDevice.buffer do | out |
      render_content( out )
    end
  end
  
  def height
    @height or calculate_height
  end
  
  def width
    @width or calculate_width
  end
  
  attr_writer :max_width
  
  def max_width
    @max_width or @owner && @owner.max_width or output.width
  end
  
  def output
    @output ||= ( @owner and @owner.output or OutputDevice.stdout )
  end
  
  def output=( io )
    @output = io.nil? ? io : Output( io )
  end
  
private
  
  def initialize_view( options = nil, owner = nil )
    @max_width = @width = @height = nil
    @margin = @padding = @alignment = @style = nil
    @output = @foreground = @background = nil
    
    if options
      val = options[ :width ]   and self.width = val
      val = options[ :align ]   and self.alignment = val
      val = options[ :style ]   and self.style = val
      val = options[ :padding ] and self.padding = val
      val = options[ :margin ]  and self.margin = val
      val = options[ :output ]  and self.output = val
    end
    
    @owner = owner
  end
  
  def default_margin
    Rectangle.new( 0, 0, 0, 0 )
  end
  
  def default_padding
    Rectangle.new( 0, 0, 0, 0 )
  end
  
  def default_border
    Rectangle.new( false, false, false, false )
  end
  
end

module Presentation::ClassMethods
  def default( property, value = nil, &dynamic )
    if dynamic
      define_method( :"default_#{property}", &dynamic )
    else
      define_method( :"default_#{property}" ) { value }
    end
  end
end
end