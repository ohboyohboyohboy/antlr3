#!/usr/bin/ruby
# encoding: utf-8

$:.unshift( File.dirname( __FILE__ ) )
require 'CalculatorLexer'
require 'CalculatorParser'

fetch = 
  begin
    require 'readline'
    proc do
      Readline.readline( ">>> ", true )
    end
  rescue LoadError
    proc do
      print( ">>> " )
      l = $stdin.gets and l.chomp
    end
  end

puts( "enter calculator expressions or `quit' to exit")
loop do
  case line = fetch.call
  when /q(uit)?/i, /e(xit)?/i, nil then break
  else
    printf( "\t=> %s\n", Calculator::Parser.new( line ).evaluate )
  end
end
