#!/usr/bin/ruby
# encoding: utf-8

class Dir
  DOTS = %w(. ..).freeze
  def self.children(directory)
    entries = Dir.entries(directory) - DOTS
    entries.map! do |entry|
      File.join(directory, entry)
    end
  end
  
  def self.mkpath(path)
    $VERBOSE and $stderr.puts("INFO: Dir.mkpath(%p)" % path)
    test(?d, path) and return(path)
    parent = File.dirname(path)
    test(?d, parent) or mkpath(parent)
    Dir.mkdir(path)
    return(path)
  end
end
