#!/usr/bin/ruby
# encoding: utf-8

=begin      ::about::
author:     Kyle Yetter <kcy5b@yahoo.com>
created on: June 07, 2009
purpose:    library: new class
summary:    creates new Lexer class which can be inheritted
            and then specified using a built in DSL
requires:   core/regexp/literal
=end

require 'core/regexp/literal'
require 'core/module/module_load'
require 'core/string/path-join'
require 'strscan'
require 'part'

class Lexer
  class LexerError < StandardError
    attr_reader :lexer
    def initialize(lexer)
      @lexer = lexer
      location = @lexer.location
      glimpse = @lexer.scanner.string[location.position, 13] + '...'
      message = (
        "unable to match any lexical rule of %s " % @lexer.class.name <<
        "for %s => %p" % [location, glimpse]
      )
      super(message)
    end
  end

  module_load __DIR__ / 'lexer/token.rb'
  module_load __DIR__ / 'lexer/rule.rb'
  module_load __DIR__ / 'lexer/common-dsl.rb'
         load __DIR__ / 'lexer/lexer.rb'
  module_load __DIR__ / 'lexer/common.rb'
  module_load __DIR__ / 'lexer/state-dsl.rb'
  module_load __DIR__ / 'lexer/stateful.rb'
  
end

