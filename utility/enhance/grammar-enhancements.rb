#!/usr/bin/ruby
# encoding: utf-8

require 'antlr3/test/grammar'
require 'string-template-markup'

module ANTLR3
module Test
module GrammarEnhancements

private
  def post_compile(options)
    if options[:debug_st]
      for f in target_files.grep(/\.rb/)
        STMarkup.convert_file(f)
      end
    end
  end
  
end
end
end
