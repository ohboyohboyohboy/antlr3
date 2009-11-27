#!/usr/bin/ruby
# encoding: utf-8

module ANTLR3
module Test
  
Summary = Struct.new(
  :passed, :pending, :failed, :example_errors, :import_errors,
  :syntax_errors, :compilation_failures, :duration
)

class Summary
  COUNT_FIELDS = members - %w( duration )
  
  def self.restore( serialized )
    new.restore( serialized )
  end
  
  DESCRIPTIONS = {
    :passed                 => %w( passed green ),
    :pending                => %w( pending yellow ),
    :failed                 => %w( failed red ),
    :example_errors         => %w( error red ),
    :import_errors          => %w( runtime magenta ),
    :syntax_errors          => %w( syntax magenta ),
    :compilation_failures   => %w( antlr magenta ),
    nil                     => %w( no\ tests cyan )
  }
  
  def initialize( *args )
    members.length.times do | i |
      args[ i ] ||= 0
    end
    
    super( *args )
  end
  
  def serialize
    to_a.join(':')
  end
  
  def restore( serialized )
    fields = serialized.split( ':' )
    duration = fields.pop.to_f
    fields.map! { | i | i.to_i }.push( duration )
    fields.each_with_index do | value, i |
      self[ i ] = value
    end
    return( self )
  end
  
  def total
    to_a[0...-1].inject( 0 ) { | t, m | t + m }
  end
  
  def <<( sum )
    for field in members
      self[ field ] += sum[ field ]
    end
    return self
  end
  
  def +( sum )
    dup << sum
  end
  
  def description( with_color = false )
    field = COUNT_FIELDS.reverse.find do | f |
      self[ f ] > 0
    end
    
    desc, color =
      DESCRIPTIONS.fetch( field.to_sym, [ field.to_s, 'blue' ] )
    with_color and desc = desc.send( color )
    
    return( desc )
  end
  
  def report( opts = nil )
    if opts
      with_color = opts.fetch( :color, true )
      desc = opts[ :description ] || description( with_color )
    else
      desc = description( true )
    end
    
    report = [ desc, total, *to_a ]
  end
  
end

end
end
