#!/usr/bin/ruby
# encoding: utf-8

class Range
  def covers?(range)
    range.first >= first or return false
    if exclude_end?
      range.exclude_end? ? last >= range.last : last > range.last
    else
      range.exclude_end? ? last.succ >= range.last : last >= range.last
    end
  end
  
  def covered_by?(range)
    range.covers?(self)
  end
  
  def overlaps?(range)
    range.include?(first) or include?(range.first)
  end
  
  def disjoint?(range)
    not overlaps?(range)
  end
  
end

if __FILE__ == $0
  require 'rubygems'
  gem 'rspec'
  require 'spec'
  
  describe Range do
    
    example 'covers?' do
      (1..10).covers?(1..3).should be_true
      (1..10).covers?(3...10).should be_true
      (1..10).covers?(0...10).should be_false
      (1...10).covers?(1...10).should be_true
      (1...10).covers?(1..10).should be_false
      (1..10).covers?(1...11).should be_true
    end
    
    example 'overlaps?' do
      (1..10).overlaps?(1..3).should be_true
      (1..10).overlaps?(10...12).should be_true
      (1..10).overlaps?(-5...10).should be_true
      (1...10).overlaps?(10...11).should be_false
    end
    
  end
  
end
