#!/usr/bin/ruby
# encoding: utf-8

module ANTLR3
module Test
module Diff
  module_function
  
  # trim common head and tail elements of the two lists
  def width
    screen_width - 20
  end
  
  def column_width
    width / 2 - 1
  end
  
  def segment(list_a, list_b)
    # trim leading common elements
    common_head = 0
    list_a.zip(list_b) do |a, b|
      a == b ? (common_head += 1) : break
    end
    head = list_a[0...common_head]
    list_a = list_a[common_head..-1].reverse!
    list_b = list_b[common_head..-1].reverse!
    
    
    common_tail = 0
    list_a.zip(list_b) { |a,b| a == b ? (common_tail += 1) : break }
    tail = list_a[0...common_tail].reverse!
    list_a = list_a[common_tail..-1].reverse!
    list_b = list_b[common_tail..-1].reverse!
    
    return [head, tail, list_a, list_b]
  end

  def max(a,b)
    case a <=> b
    when -1 then b
    else a
    end
  end
  
  def colorize(text, color)
    lines = text.split("\n")
    escape = 
      case color
      when :white then "\e[37m"
      when :magenta then "\e[35m"
      when :yellow then "\e[33m"
      when :green then "\e[32m"
      when :black then "\e[30m"
      when :red then "\e[31m"
      when :cyan then "\e[36m"
      when :blue then "\e[34m"
      end
    lines.map! { |ln| escape + ln << "\e[\0m" }.join("\n")
  end
  
  def display_shared(item)
    colorize(pair(item, item), :green)
  end
  def display_addition(item)
    colorize(pair(nil, item), :magenta)
  end
  def display_subtraction(item)
    colorize(pair(item, nil), :red)
  end
  def wrapped_inspect(list)
    width = column_width
    list = list.map { |i| i.inspect }
    list[-1] << ' ]'
    
    lines, line, joint = [], '[ ', ''
    
    add_line = proc do |l|
      lines << l.ljust(width)
      '  '
    end
    
    for item in list
      line << joint
      leftover = width - line.length
      if item.length > leftover
        i = item.rindex(/\s+/, leftover - 1) || leftover
        if 
          line = add_line[line << item[0, i]]
          item = item[i..-1]
        else
          
        end
      end
      line << item
      
      d = item.length + 2
      if line.length + d > width
        line << ','
        lines << line
        line, joint = '  ', ''
      else
        joint = ", "
      end
    end
    lines << line
    
    lines.join("\n")
  end

  def pair(x, y)
    x = x ? wrapped_inspect(x).split("\n") : []
    y = y ? wrapped_inspect(y).split("\n") : []
    line_count = max(x.length, y.length)
    x.pad!(line_count, '')
    y.pad!(line_count, '')
    
    x.zip(y).map! { |pair| pair.map! { |i| i.ljust(column_width) }.join(' ') }.join("\n")
  end

  def compute_lcs(list_a, list_b)
    m, n = list_a.length, list_b.length
    lcs_matrix = Array.new(m + 1) do |row|
      Array.new(n + 1, 0)
    end
    m.times do |i| n.times do |j|
      if list_a[i] == list_b[j] then lcs_matrix[i+1][j+1] = lcs_matrix[i][j] + 1
      else lcs_matrix[i+1][j+1] = max(lcs_matrix[i+1][j], lcs_matrix[i][j+1])
      end
    end end
    return lcs_matrix
  end

  def partial_diff(out, a, b, lcs, i = a.length, j = b.length)
    if i > 0 and j > 0 and a[i-1] == b[j-1]
      partial_diff(out, a, b, lcs, i-1, j-1)
      out << display_shared(a[i-1])
    else
      if j > 0 and i.zero? || lcs[i][j-1] >= lcs[i-1][j]
        partial_diff(out,a,b,lcs,i,j-1)
        out << display_addition(b[j-1])
      elsif i > 0 and j.zero? || lcs[i][j-1] < lcs[i-1][j]
        partial_diff(out, a,b,lcs,i-1,j)
        out << display_subtraction(a[i-1])
      end
    end
    return out
  end
  
  def diff(a, b, options = {})
    head, tail, a, b = segment(a, b)
    lcs = compute_lcs(a,b)
    out = []
    out << %w(Expected Got).map! { |w| w.ljust(column_width) }.join(' ')
    head.each do |item|
      out << display_shared(item)
    end
    partial_diff(out, a, b, lcs)
    tail.each do |item|
      out << display_shared(item)
    end
    out.join("\n")
  end
end
end
end
