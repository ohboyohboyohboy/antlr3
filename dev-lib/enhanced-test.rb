#!/usr/bin/ruby
# encoding: utf-8

require 'antlr3/test/functional'
require 'enhanced-test/pretty-error'
require 'enhanced-test/functional'
require 'enhanced-test/runner'
require 'enhanced-test/summary'

at_exit do
  if error = $!
    PrettyError.pretty_error( error )
    raise
  end
end
