#!/usr/bin/ruby
# encoding: utf-8

require 'PythonLexer'
require 'PythonTokenSource'
require 'PythonParser'

sample_input = File.read('sample.py')

lexer = Python::Lexer.new(sample_input)
include Python::TokenData

tk_source = Python::TokenSource.new(lexer)

#require 'string/ansi'
#for tk in tk_source
#  color = 
#    case tk.channel
#    when ANTLR3::DEFAULT_CHANNEL then :yellow
#    when ANTLR3::HIDDEN_CHANNEL then :blue
#    else :magenta
#    end
#  display = "  %-15s %-20p @ %3i:%3i" % [tk.name, tk.text, tk.line, tk.column]
#  puts display.send(color)
#end

tokens = ANTLR3::CommonTokenStream.new(tk_source)
#tracer = ANTLR3::Debug::RuleTrace.new(:input => tokens)
parser = Python::Parser.new(tokens) #, :debug_listener => tracer)

parser.file_input