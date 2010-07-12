#!/usr/bin/ruby
# encoding: utf-8

Highlight.load_recognizer 'pygmentize'

module Highlight
module Languages
class Ruby < Generic
  attr_reader :lexer, :source, :html
  
  def initialize( source, options = {} )
    super( 'ruby', source, options )
  end
end
end
end
