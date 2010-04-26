#!/usr/bin/ruby
# encoding: utf-8

module Monocle
  VERSION = '0.5.0'
  
  def self.included( kl )
    super
    kl.extend( self )
  end
  
  def self.library_path( *args )
    File.join( File.dirname( __FILE__ ), *args )
  end
  
module_function
  
  def Line( obj )
    SingleLine === obj ? obj : SingleLine.new( obj.to_s )
  end
  
  def Output( dev )
    OutputDevice === dev ? dev : OutputDevice.new( dev )
  end
  
  def Text( obj )
    case obj
    when Text then obj
    when nil then Text.new( '' )
    else Text.new( obj.to_s )
    end
  end
  
  def Style( obj )
    Graphics === obj ? obj : Graphics::NAMED_STYLES[ obj.to_s ]
  end
  
  def Rectangle( obj )
    case obj
    when Rectangle then obj
    when Array then Rectangle.new( *obj )
    when Hash then Rectangle.create( obj )
    else Rectangle.new( obj )
    end
  end
  
end

%w(
  utils presentation terminal-escapes
  atomic graphics output-device progress
  table list
).each do | lib |
  require "monocle/#{ lib }"
end