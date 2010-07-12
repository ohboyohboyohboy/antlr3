#!/usr/bin/ruby
# encoding: utf-8
require 'string-template/group'

module StringTemplate
  class Interface < SourceCodeObject
    
    def self.parse( source, file = '(string)' )
      InterfaceParser.new.parse( source, file )
    end
    
    def self.load( path )
      InterfaceParser.new.parse_file( path )
    end
    
    attr_reader :specifications
    attr_accessor :name, :file
    
    def initialize( file = '(string)' )
      @file = file
      @specifications = []
    end
    
    def add( spec )
      spec.interface = self
      spec.index = specifications.length
      specifications << spec
      index[ member.name ] = member
      return member
    end
    
    class Specification < SourceCodeObject
      attr_accessor :name, :interface, :span, :index
      attr_reader :parameters
      toggle_part :optional, false
      
      def initialize( name, optional = false )
        @name = name.to_s
        @optional = optional
        @parameters = []
      end
    end
  end
end
