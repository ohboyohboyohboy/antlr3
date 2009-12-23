#!/usr/bin/ruby
# encoding: utf-8

class Struct
  # 
  # create a pair of accessor methods that alias a struct member
  #
  #   Sides = Struct.new( :left, :right ) do
  #     alias_member( :top, :left )
  #     alias_member( :bottom, :right )
  #   end
  #   
  #   vertical_sizes = Sides.new( 1, 2 )
  #   horizontal_sizes = Sides.new( 3, 4 )
  #
  #   horizontal_sizes.left  # => 3
  #   vertical_sizes.top     # => 1
  #
  #  CREDIT: Kyle Yetter
  #
  
  def self.alias_member( new, cur )
    alias_method( new, cur )
    alias_method( "#{new}=", "#{cur}=" )
  end
  
  def to_h
    h = {}
    each_pair { | member, value | h[ member ] = value }
    return( h )
  end
  
  def to_h!
    h = {}
    each_pair do | member, value |
      h[ member ] =
        case value
        when Struct then value.to_h!
        when Array then value.map { |v| Struct === v ? v.to_h! : v }
        when Hash then Hash[ value.map { |pair| pair.map! { |v| Struct === v ? v.to_h! : v } } ]
        else value
        end
    end
    return( h )
  end
  
end

if __FILE__ == $0
  require 'test/unit'

  class TestStruct < Test::Unit::TestCase

    def setup
      # do nothing
    end

    def teardown
      # do nothing
    end

    def test_alias_member
      raise NotImplementedError, 'write me'
    end

  end
end