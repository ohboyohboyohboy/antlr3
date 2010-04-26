#!/usr/bin/ruby
# encoding: utf-8

class Exception
  # 
  # display exception information in a simple formatted manner on an output
  #
  #   WRITE AN EXAMPLE
  #   FILL IN DETIALS
  #
  #  CREDIT: Kyle Yetter
  # 
  def dump( out = $stderr )
    out.puts( "#{ self.class }: #{ self }" )
    trace = backtrace || caller
    out.puts( trace.map { | call | "  - #{ call }" } )
    return( self )
  end
  
  alias display dump

end

if __FILE__ == $0
  require 'test/unit'

  class TestException < Test::Unit::TestCase

    def setup
      # do nothing
    end

    def teardown
      # do nothing
    end

    def test_display
    end

  end
end