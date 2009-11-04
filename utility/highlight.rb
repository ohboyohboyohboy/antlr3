#!/usr/bin/ruby
# encoding: utf-8

module Highlight
class << self
  def path(*args)
    dir = __FILE__.gsub(/\.rb$/, '')
    return File.join(dir, *args)
  end
  
  def style_path(name)
    path('styles', name)
  end
  
  def load_recognizer(name)
    require "highlight/recognizers/#{name}"
  end
end
end

$:.unshift( Highlight.path )
require 'highlight/formatters'
require 'highlight/languages'
