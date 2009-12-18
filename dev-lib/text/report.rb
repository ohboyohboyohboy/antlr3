#!/usr/bin/ruby
# encoding: utf-8

module Monocle
class Report
  include View
  attr_reader :output, :members
  
  def initialize( output = nil, options = {} )
    @output = 
      case device
      when nil then OutputDevice.new( StringIO.new( '' ), options )
      when Hash
        # device = options
        OutputDevice.new( StringIO.new( '' ), device )
      when OutputDevice then device
      else OutputDevice.new( device, options )
      end
    @members = []
    initialize_view( options )
    block_given? and yield( self )
  end
  
  def table( *args )
    Table.new( *args ) do | table |
      block_given? and yield( table )
      @members << table
    end
  end
  
  def list( *args )
    List.new( *args ) do | list |
      list.owner = self
      @members << list
      block_given? and yield( list )
    end
  end
  
  def calculate_width
    @output.width
  end
  
  def calculate_height
    @output.height
  end
  
  def render
    for member in @members
      member.render( @output )
    end
  end
  
  def heading( *args )
    Heading.new( *args ) do | head |
      block_given? and yield( list )
      @members << head
    end
  end
  
  def say( *args )
    Paragraph.new( *args ) do | para |
      
    end
  end
  
  def verbatim( *args )
    Verbatim.new( *args ) do | verb |
      block_given? and yield( verb )
      @members << verb
    end
  end
  
  def tree( *args )
    Tree.new( *args ) do | tree |
      block_given? and yield( tree )
      @members << tree
    end
  end
  
end

class Heading
end

class Paragraph
end

class Verbatim
end

end
