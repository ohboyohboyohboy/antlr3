#!/usr/bin/ruby
# encoding: utf-8

Ruby.project ||= 'antlr3'
$project.test_mode!
require 'test-tools'
require 'st-markup'
require 'set'
include ANTLR3::TestTools

begin
  grammar_files    = Dir.glob(__DIR__ / '*.g')
  output_directory = __DIR__ / 'output'
  
  grammars = grammar_files.map { |file| Grammar.new(file, output_directory) }
  ruby_files = grammars.map { |grammar| grammar.targets.grep(/\.rb$/i) }.flatten
  
  failures = Set.new
  for grammar in grammars
    grammar.compile!(:options => {'XdbgST' => true})
    grammar.command.status.success? or failures.add(grammar.path)
    if test(?d, output_directory)
      log = output_directory / (File.basename(grammar.path, '.g') << '.yaml')
      open(log, 'w') { |f| f.write(grammar.command.yaml_report) }
    end
  end
  
  ruby_files.delete_if do |f|
    !test(?f, f)
  end
  
  for file in ruby_files
    STMarkup.convert_file(file)
  end
  
  for file in ruby_files
    ruby_file = RubyFile.new(file)
    ruby_file.run
    ruby_file.runnable? or failures.add(file)
    open(file + '.yaml', 'w') { |f| f.write(ruby_file.yaml_report) }
  end
  
rescue => error
  #raise
  exit(1)
else
  if failures.empty?
    exit(0)
  else
    exit(1)
  end
end