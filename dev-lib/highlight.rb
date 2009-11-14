#!/usr/bin/ruby
# encoding: utf-8

# an admittedly half-hearted source code highlighting library
# thrown together for the purposes of writing documentation
# for the ruby ANTLRv3 library

module Highlight
class << self
  def path(*args)
    dir = __FILE__.gsub(/\.rb$/, '')
    return File.join(dir, *args)
  end
  
  def style_path(name)
    path('styles', name + '.css')
  end
  
  def styles
    Dir[ style_path( '*' ) ].map do |css|
      css.chomp!('.css')
    end
  end
  
  def load_style( name, language )
    css = File.read( style_path( name ) )
    css.gsub!(/«lang»/, language)
    return css
  end
  
  def load_recognizer(name)
    require "highlight/recognizers/#{name}"
  end
end
end

$:.unshift( Highlight.path )
require 'highlight/formatters'
require 'highlight/languages'
