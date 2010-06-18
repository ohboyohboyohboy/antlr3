#!/usr/bin/ruby
# encoding: utf-8

=begin      ::about::
author:     Kyle Yetter <kcy5b@yahoo.com>
created on: June 05, 2010
purpose:    (program | library | utility script | ?)
summary:    
loads:      files required by this
autoloads:  autoload entries in this (e.g. YAML(yaml))
=end

module ANTLRDoc

module Markup
  WIKI_LINK_RX = %r<
    ‹
    ( (?:\S|\ (?=\S))+? )
    (?: : \ ? ( (?:\S|\ (?=\S))+? ) )?
    ›
  >x
  
  def textile( source, *args )
    doc = RedCloth::TextileDoc.new( source, args )
    doc.hard_breaks = false
    return( doc )
  end
  
  def markup( source, inline = true )
    source = convert_links( source )
    doc = inline ? textile( source, :lite_mode ) : textile( source )
    doc.to_html
  end
  
  def convert_links( source )
    source.gsub( WIKI_LINK_RX ) do
      content_link( *$~[ 0..2 ] )
    end
  end
  
  def content_link( full, name, text )
    full
  end
  
  def eval_template( __template__, __vars__ = {} )
    ERB === __template__ or __template__ = erb( __template__ )
    __bind__ = binding
    __vars__.each do | k, v |
      eval( "#{ k } = __vars__[ #{ k.inspect } ]", __bind__, __FILE__, __LINE__ )
    end
    __template__.result( __bind__ )
  end
  
  def erb( source )
    ERB.new( source, nil, '%' )
  end
  
  def raw_html( src )
    ( "<notextile>\n" << src.to_s ).chomp( "\n" ) << "\n</notextile>"
  end
  
end

end
