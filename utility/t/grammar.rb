#!/usr/bin/ruby
# encoding: utf-8

__DIR__ = File.dirname( __FILE__ )
$:.unshift( __DIR__ )
for ext in Dir[ File.join( __DIR__, 'core-ext/*.rb') ]
  load ext
end

require 'tree-like'
require 'grammar/loggable_output'
require 'grammar/ruby_file'
require 'grammar/antlr_command'
require 'grammar/grammar'
require 'grammar/errors'
require 'call-stack'
require 'pretty-exception'
require 'string-template-markup'