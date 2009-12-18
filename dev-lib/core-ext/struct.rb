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