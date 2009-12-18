#!/usr/bin/ruby
# encoding: utf-8

require 'antlr3/test/functional'
require 'enhanced-test/messages'
require 'enhanced-test/summary'
require 'enhanced-test/pretty-error'
require 'enhanced-test/functional'
require 'enhanced-test/runner'

at_exit do
  if error = $!
    raise( error.pretty! )
  end
end
