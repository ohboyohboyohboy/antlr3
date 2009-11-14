#!/usr/bin/ruby
# encoding: utf-8

class String
  def block_height
    count("\n") + 1
  end
  def block_width
    split(/\r?\n/).map do |line|
      line.split(/\e\[[0-9;]+m/).inject(0) { |w, prt| w + prt.length }
    end.max || 0
  end
end