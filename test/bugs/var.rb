#!/usr/bin/ruby
# encoding: utf-8

require 'VarParser'

tokens = Var::Lexer.new( "const char *rl_library_version r" ).to_a
# will be missing the first 'const char *' CTYPE token