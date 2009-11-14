#!/usr/bin/ruby
# encoding: utf-8

=begin      ::about::
author:     Kyle Yetter <kcy5b@yahoo.com>
created on: October 09, 2009
purpose:    core-extension
summary:    adds Integer#digits, which returns the minimum number of digits
            used to represent the number in a given base
=end

class Integer
  
  #
  # int.digits    => num digits in base 10
  # int.digits(b) => num digits in base b
  #
  # returns the minimum number of digits to represent an integer in text
  # (without leading zeros or sign) in any given base.
  # This method is particularly useful in various text-formatting tasks.
  #
  # === Examples
  #
  #    10.digits       # => 2
  # 99999.digits       # => 5
  #     0.digits       # => 1
  # 0b101.digits(2)    # => 3
  # -0xa5.digits(16)   # => 2
  # 
  def digits(base = 10)
    if zero? then 1
    else
      (Math.log10( self.abs ) / Math.log10( base )).floor + 1
    end
  end
  
end


