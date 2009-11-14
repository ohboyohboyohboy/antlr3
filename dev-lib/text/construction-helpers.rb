#!/usr/bin/ruby
# encoding: utf-8

require 'text'

module Text::ConstructionHelpers
  def list(*items)
    puts(ColumnList.new(items.flatten).render)
  end
  
  def box(text, &b)
    puts(Box.new(text, &b).render)
  end
  
  def table(rows, options = {}, &b)
    puts(Table.new(rows, options, &b).to_s)
  end
end

module Kernel
  include Text::ConstructionHelpers
end
