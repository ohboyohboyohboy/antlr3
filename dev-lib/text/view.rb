#!/usr/bin/ruby
# encoding: utf-8

module Monocle
module View
  attr_accessor :owner
  protected :owner=
  
  for attr in %w( margin padding )
    class_eval( <<-END, __FILE__, __LINE__ + 1 )
      def #{ attr }( value = nil )
        value and self.#{ attr } = value
        @#{ attr } ||= Rectangle.new( 0, 0, 0, 0 )
        block_given? ? yield( @#{ attr } ) : @#{ attr }
      end
      
      def #{ attr }= value
        @#{ attr } = 
          case value
          when nil then nil
          when Rectangle then value
          when Array then Rectangle.new( *value )
          when Hash then Rectangle.create( value )
          else Rectangle.new( value )
          end
        end
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
    @style or @owner ? @owner.style : default_style
  end
  
  def style= value
    case value
    when BoxStyle then value
    else BoxStyle::NAMED_STYLES[ value.to_s ]
    end
  end
  
  def height
    @height or @fixed_height or calculate_height
  end
  
  def width
    @width or @fixed_width or calculate_width
  end
  
  def width=( w )
    @fixed_width = w.nil? ? w : w.to_i.at_least( 0 )
  end
  
  def initialize_view( options = { }, owner = nil )
    @fixed_height = @fixed_width = @width = @height = nil
    @margin = @padding = @alignment = @style = nil
    @foreground = @background = nil
    
    if options
      val = options[ :width ] and self.width = val
      val = options[ :align ] and self.alignment = val
      val = options[ :style ] and self.style = val
      val = options[ :padding ] and self.padding = val
      val = options[ :margin ] and self.margin = val
    end
    
    @owner = owner
  end
  private :initialize_view
  
  def render( output )
    lock( output )
    render_content( output )
    unlock( output )
    return( output )
  end
  
private
  
  def lock( output = nil )
    @width = width || ( output && output.width )
    @height = height || ( output && output.height )
  end
  
  def unlock( output = nil )
    @width, @height = nil, nil
  end
  
  def calculate_height
    @owner and @owner.height
  end
  
  def calculate_width
    @owner and @owner.height
  end
  
  def default_style
    # none
  end
  
end
end