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
  
  for lib in %w( location node parser document )
    module_load( __DIR__ / 'markup' / "#{lib}.rb" )
  end
end
end