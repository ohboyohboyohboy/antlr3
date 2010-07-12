#!/usr/bin/ruby
# encoding: utf-8

module StringTemplate
class Group
  include CodeObject
  
  def self.parse( source, file = '(string)' )
    Parser.new.parse( source, file )
  end
  
  def self.load( path )
    Parser.new.parse_file( path )
  end
  
  def interfaces
    @interfaces ||= []
  end
  
  def members
    @members ||= []
  end
  
  def templates
    @templates ||= {}
  end
  
  def type_maps
    @type_maps ||= {}
  end
  
  attr_accessor :file, :supergroup, :name
  
  def initialize( file = '(string)' )
    @file = file
  end
  
  def implements!( name )
    interfaces << name.to_s
  end
  
  def add( member )
    member.group = self
    member.index = members.length
    members << member
    member.is_a?( Comment ) and return member
    index =
      case member
      when Template then templates
      when TypeMap then type_maps
      end
    index[ member.name ] = member
    return member
  end
  
  def header
    head = "group #{ @name }"
    supergroup and head << " : #{ supergroup }"
    interfaces.empty? or head << " implements " << interfaces.join( ', ' )
    head << ';'
  end
  
end
end

for lib in %w(member comment template template-alias type-map lexer parser)
  require "string-template/group/#{ lib }"
end
