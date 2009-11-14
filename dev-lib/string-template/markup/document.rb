#!/usr/bin/ruby
# encoding: utf-8

require 'base64'

class Document
  include Base64
  
  DATA_PREAMBLE = (<<-END.here_indent!).freeze
  | 
  | __END__
  | Below this line is String Template debugging data -- DO NOT MODIFY:
  | 
  END

  def self.restore( path )
    source = File.read( path )
    unless source =~ Regexp.literal( DATA_PREAMBLE )
      raise( "#{ path.inspect } does not appear to have any " <<
             "string template markup data embedded within it" )
    end
    
    ruby_source, document = $`, $'
    document = Marshal.load( Base64.decode64( document ) )
    document.ruby_source = ruby_source
    document.file = path
    return document
  end
  
  attr_accessor :top, :ruby_source, :file
  attr_reader :index, :tags
  
  def initialize(file = '(string)')
    @file = file.freeze
    @index = []
    @tags = []
    @ruby_source = ''
    @top = nil
  end
  
  def []( id )
    @index[ id ]
  end
  
  def create_node( tag_id, start, parent )
    node = Node.new( self, @index.length, tag_id, start, parent )
    @index << node
    return node
  end
  
  def tag( id )
    @tags[ id ]
  end
  
  def marshal_dump
    [@tags, @index]
  end
  
  def marshal_load( data )
    @tags, @index = data
    @ruby_source = ''
    
    @index.each_with_index do |node, id|
      node.document = self
      node.id = id
      pid = node.parent_id and node.parent = @index[ pid ]
    end
    @top = @index.first
  end
  
  def serialize( output )
    output.write( @ruby_source )
    output.write( DATA_PREAMBLE )
    output.write( encode64( Marshal.dump( self ) ) )
  end
  
  def nodes_covering_line(line)
    @index.select do |node|
      node.line_span === line
    end
  end
end

