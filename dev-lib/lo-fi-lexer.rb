#!/usr/bin/ruby
# encoding: utf-8

=begin      ::about::
author:     Kyle Yetter <kcy5b@yahoo.com>
created on: June 07, 2009
summary:    creates new Lexer class which can be inheritted
            and then specified using a built in DSL
=end

require 'strscan'

module LoFiLexer
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
  
  module_load __DIR__ / 'lo-fi-lexer/token.rb'
  module_load __DIR__ / 'lo-fi-lexer/rule.rb'
  module_load __DIR__ / 'lo-fi-lexer/common-dsl.rb'
  module_load __DIR__ / 'lo-fi-lexer/lexer.rb'
  module_load __DIR__ / 'lo-fi-lexer/common.rb'
  module_load __DIR__ / 'lo-fi-lexer/state-dsl.rb'
  module_load __DIR__ / 'lo-fi-lexer/stateful.rb'
end

