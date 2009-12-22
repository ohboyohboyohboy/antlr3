#!/usr/bin/ruby
# encoding: utf-8

module Monocle
class Template
  PARAMETER_RX = %r(
    \[ ( [<\|>\^\-\_\.\,\*\d\#\$]* ) \] ( [a-zA-Z]? )
  )x
  Parameter = Struct.new(
    :template, :index, :align, :valign, :name,
    :width, :height, :format_mask, :shaping
  )
  include Monocle
  
  def initialize( source )
    @source = Text( source )
    @members = Array.new( @source.height )
    
    @source.grep( PARAMETER_RX )
    @members = []
  end
  
end


class Template::Parameter
  
  def initialize( template, index )

  end
  
end
end
