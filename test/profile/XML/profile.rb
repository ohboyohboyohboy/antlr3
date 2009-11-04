#!/usr/bin/ruby
# encoding: utf-8
project.setup_extras
require 'ruby-prof'

GRAMMAR = 'XML.g'
require 'test-tools'
require 'fileutils'
include FileUtils

__DIR__ = File.dirname(__FILE__)
output_directory = File.join(__DIR__, 'grammar-output')
test(?d, output_directory) or mkdir(output_directory)

input_glob  = File.join(__DIR__, 'input-samples', '*.*')

input_samples = Dir.glob(input_glob).map! do |path|
  [File.basename( path ), File.read( path )]
end

grammar = Grammar.new( File.join(__DIR__, GRAMMAR), :output_directory => output_directory )
grammar.compile

ruby_libs = grammar.target_files.map { |rb_f| File.expand_path(rb_f.path) }

for lib in ruby_libs
  lib_name = File.basename(lib)
  load lib
end

for input_name, source in input_samples
  puts "profiling the lexing of #{input_name}"
  profile_name = File.basename(input_name, '.*') << '.html'
  profile_path = File.join(output_directory, profile_name)
  profile = RubyProf.profile do
    input = ANTLR3::StringStream.new(source, :file => input_name)
    lexer = XML::Lexer.new(input)
    lexer.map { |tk| tk }
  end
  open(profile_path, 'w') do |f|
    RubyProf::GraphHtmlPrinter.new(profile).print(f)
  end
  puts "wrote profile graph to #{profile_path}"
end
