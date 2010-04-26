#!/usr/bin/ruby
# encoding: utf-8

=begin :about:
author: Kyle Yetter (kcy5b@yahoo.com)
created-on: May 21, 2009
purpose: extends File with a 'relative_path' class method
  for converting paths to a relative path from some reference path
=end


class File
  
  # Given some target path string, and an optional reference path
  # (Dir.pwd by default), this method returns a string containing
  # the relative path of the target path from the reference path
  # 
  # Examples:
  #    File.relative_path('rel/path')   # => './rel/path'
  #    File.relative_path('/some/abs/path', '/some')  # => './abs/path'
  #    File.relative_path('/some/file.txt', '/some/abs/path')  # => '../../file.txt'
  def self.relative_path( target, reference = Dir.pwd )
    pair = [target, reference].map! do |path|
      File.expand_path(path.to_s).split(File::Separator).tap do |list|
        if list.empty? then list << String.new(File::Separator)
        elsif list.first.empty? then list.first.replace(File::Separator)
        end
      end
    end

    target_list, reference_list = pair
    while target_list.first == reference_list.first
      target_list.shift
      reference_list.shift or break
    end
    
    relative_list = Array.new(reference_list.length, '..')
    relative_list.empty? and relative_list << '.'
    relative_list.concat(target_list).compact!
    return relative_list.join(File::Separator)
  end
  
end

if $0 == __FILE__
  require 'test/unit'
  
  class TestRelativePath < Test::Unit::TestCase
    def test_relative_path
      assert_equal './rel/path', File.relative_path('./rel/path')
      assert_equal './abs/path', File.relative_path('/some/abs/path', '/some')
      assert_equal '../..',  File.relative_path('/some', '/some/abs/path')
      assert_equal '.', File.relative_path('whatever', 'whatever')
      assert_equal './another/dir', File.relative_path('/another/dir', '/')
    end
  end
end