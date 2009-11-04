#!/usr/bin/ruby
# encoding: utf-8
# = irb configuration
# -> set up anything you want automatically loaded when you run irb sessions
#    in this file
require 'antlr3'
#establish 'parse-tree'

project.setup_extras

#module Ruby
#class Script
#  attr_reader :sexp, :path, :source, :embed
#  
#  def initialize(path)
#    path = path.to_s
#    if test(?f, path)
#      @path = path.to_s
#      source, @embed = File.read(@path).split(/^__END__$/, 2)[0]
#    else
#      @path = '(string)'
#      source, @embed = path.split(/^__END__$/, 2)[0]
#    end
#    @sexp = Sexp.for(source, @path, 1)
#    @source = source.split(/\r?\n/)
#  end
#  
#  def line(n)
#    @source[n.to_i - 1]
#  end
#  
#  def lines(from, to = nil)
#    case
#    when Range === from then lines(from.begin, from.exclude_end? ? from.end - 1 : from.end)
#    when to.nil? then @source[from.to_i - 1, 1]
#    else
#      @source[from.to_i - 1 .. to.to_i - 1]
#    end
#  end
#  
#  def section(from, to = nil)
#    lines(from, to).join("\n")
#  end
#  
#  def independent_statement?(sexp)
#    parent = sexp.parent or return true
#    parent[0] == :block and return true
#    
#    return false
#  end
#  
#  def line_with_comments(sexp)
#    cursor = start = sexp.line - 1
#    
#    begin
#      line = @source[cursor -= 1] or break
#      while line =~ /^=end\b/ ... line =~ /^=begin\b/
#        line = @source[cursor -= 1] or break
#      end
#    end while line =~ /^\s*(#.*)?$/
#    
#    begin
#      line = @source[cursor += 1] or break
#    end while line =~ /^\s*$/
#    
#    cursor + 1
#  end
#  
#  def leading_comments(sexp)
#    start = line_with_comments(sexp)
#    @source[start - 1 ... sexp.line - 1].join("\n")
#  end
#  
#  def span(sexp)
#    parent = sexp.parent or (1..@source.length)
#    
#  end
#  
#  def locate_end(sexp)
#    child_index(sexp)
#  end
#  
#  def root?(sexp)
#    sexp.parent.nil?
#  end
#  
#  def child_index(sexp)
#    parent = sexp.parent or return 0
#    parent.index(sexp)
#  end
#end
#end
#
#$stderr.puts("project: Ruby::ScriptBlock defined")
#
#
#def sort_code(source = clip)
#  script = Ruby::Script.new(source.to_s + "\n3+3\n")
#  sexp = script.sexp
#  
#  unless sexp[0] == :block and sexp[1...-1].all? { |sx| sx[0] == :defn }
#    raise("the code is not a block of method definitions")
#  end
#  
#  
#  
#  starts = sexp[1..-1].map! do |sx|
#    script.line_with_comments(sx)
#  end
#  ranges = starts.each_cons(2).map { |a,b| a...b }
#  
#  sexp[1..-1].zip(ranges).sort_by do |sx, r|
#    sx[1].to_s
#  end.map { |sx, r| script.section(r).rstrip }.join("\n\n").gsub(/^3\+3\n/, '')
#end
#
#$stderr.puts("project: sort_code(source = clip) defined")