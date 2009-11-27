#!/usr/bin/ruby
# encoding: utf-8

module StringTemplate
module Markup
  def self.convert(path)
    source = File.read(path)
    source =~ /^__END__$/ and raise(<<-END.here_flow!)
    | #{ path.inspect } appears to already contain
    | embeded data following an __END__ declaration
    END
    
    document = Parser.new( source, path ).parse
    open( path, 'w' ) do | f |
      document.serialize( f )
    end
    
    return document
  end
  
  def self.load( path )
    Document.restore( path )
  end
  
end
end

require 'strscan'
require 'string-template/markup/location'
require 'string-template/markup/node'
require 'string-template/markup/parser'
require 'string-template/markup/document'
