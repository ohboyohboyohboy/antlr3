class Integer

  # Returns the lower of self or x.
  #
  #   4.at_least(5)  #=> 5
  #   6.at_least(5)  #=> 6
  #
  #   CREDIT Florian Gross

  def at_least(x)
    (self >= x) ? self : x
  end

  # Returns the greater of self or x.
  #
  #   4.at_most(5)  #=> 4
  #   6.at_most(5)  #=> 5
  #
  #   CREDIT Florian Gross

  def at_most(x)
    (self <= x) ? self : x
  end

  # Returns self if above the given lower bound, or
  # within the given lower and upper bounds,
  # otherwise returns the the bound of which the
  # value falls outside.
  #
  #   4.bound(3)    #=> 4
  #   4.bound(5)    #=> 5
  #   4.bound(2,7)  #=> 4
  #   9.bound(2,7)  #=> 7
  #   1.bound(2,7)  #=> 2
  #
  #   CREDIT Trans

  def bound(lower, upper=nil)
    return lower if self < lower
    return self unless upper
    return upper if self > upper
    return self
  end

end

