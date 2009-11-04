#!/usr/bin/ruby
# encoding: utf-8

require 'antlr3'
require 'antlr3/test/core-extensions'
require 'antlr3/test/grammar'
require 'antlr3/test/call-stack'

require 'test/unit'
require 'rubygems'
gem :rspec unless RUBY_VERSION =~ /^1\.9/
require 'spec'

module ANTLR3
module Test
module Location
  attr_accessor :test_path
  
  def test_group
    File.basename( test_path, '.rb' )
  end
  
  def test_directory
    File.dirname( test_path )
  end
  
  def local_path(*parts)
    File.join( test_directory, *parts )
  end
  
  def output_directory(name = test_group)
    local_path( name )
  end
  
end # module Location

module NameSpace
  def import(ruby_file)
    constants_before = constants
    class_eval(File.read(ruby_file), ruby_file, 1)
    constants - constants_before
  end
  
  def import_grammar_targets(grammar)
    # reverse because delegates need to be in the test class's name
    # space before the masters
    for file in grammar.target_files
      import(file)
    end
  end
end

module GrammarManager
  include Location
  include NameSpace
  
  DEFAULT_COMPILE_OPTIONS = {}
  if jar = ENV['ANTLR_JAR'] || ANTLR3.antlr_jar
    DEFAULT_COMPILE_OPTIONS[:antlr_jar] = jar
    Grammar.global_dependency jar
  end
  
  def grammars
    @grammars ||= []
  end
  
  def load_grammar( name )
    path = local_path( name.to_s )
    path =~ /\.g$/ or path << '.g'
    grammar = Grammar.new( path, :output_directory => output_directory )
    register_grammar(grammar)
    return grammar
  end
  
  def inline_grammar(source, options = {})
    call = call_stack.find { |call| call.file != __FILE__}
    grammar = Grammar.inline source,
                :output_directory => output_directory,
                :file => (call.file rescue nil),
                :line => (call.line rescue nil)
    if options.fetch(:compile, true)
      register_grammar(grammar)
    end
    return grammar
  end
  
  def compile_options(defaults = nil)
    @compile_options ||= DEFAULT_COMPILE_OPTIONS.clone
    @compile_options.update(defaults) if defaults
    return @compile_options
  end
  
  def compile(grammar_name, options = {})
    record = grammars.assoc(grammar_name.to_s)
    unless record[2]
      grammar = record[1]
      grammar.compile(compile_options.merge(options))
      import_grammar_targets( grammar )
      record[2] = true
    end
    return record[1]
  end
  
private
  def register_grammar(grammar)
    name = grammar.name
    if existing_record = grammars.assoc(name)
      conflicting_grammar = existing_record[1]
      unless conflicting_grammar.source == grammar.source
        error = NameError.new(<<-END.here_indent!, name)
        | Multiple grammars exist with the name ``#{name}''
        END
        raise error, caller
      end
    else
      grammars << [name, grammar, false]
    end
  end
end # module GrammarManager

class Functional < ::Test::Unit::TestCase
  extend GrammarManager
  
  def self.inherited(klass)
    super
    klass.test_path = call_stack[0].file
    
    klass.send(:before, :all) do
      grammars = klass.grammars.map { |n, *| n }
      total = grammars.length
      grammars.each_with_index do |name, i|
        notify_progress(name, i, total)
        klass.compile( name )
      end
      $stderr.print(' ' * 80 << "\r")
      $stderr.flush
    end
  end
  
  def notify_progress(name, index, total)
    progress = (index.to_f * 100 / total).round
    $stderr.printf("[%2i%% %3i of %3i] compiling grammar %s\r",
                   progress, index + 1, total, name)
    $stderr.flush
  end
  
  def local_path(*args)
    self.class.local_path(*args)
  end
  
  def test_path
    self.class.test_path
  end
  
  def output_directory
    self.class.output_directory
  end
  
  def inline_grammar( source )
    call = call_stack.find { |call| call.file != __FILE__}
    grammar = Grammar.inline source,
                :output_directory => output_directory,
                :file => call.file,
                :line => call.line
  end
  
  def compile_and_load( grammar, options = {} )
    options = self.class.compile_options.merge options
    grammar.compile( options )
    self.class.import_grammar_targets( grammar )
  end
end # class Functional


module CaptureOutput
  require 'stringio'
  def output_buffer
    defined?(@output_buffer) or @output_buffer = StringIO.new('')
    @output_buffer
  end
  
  def output
    output_buffer.string
  end
  
  def say(*args)
    output_buffer.puts(*args)
  end
  
  def capture(*args)
    output_buffer.write(*args)
  end
end

module RaiseErrors
  def emit_error_message(msg)
    # do nothing
  end
  
  def report_error(error)
    raise error
  end
end

module CollectErrors
  def reported_errors
    defined?(@reported_errors) or @reported_errors = []
    return @reported_errors
  end
  
  def emit_error_message(msg)
    reported_errors << msg
  end
end

end # module Test
end # module ANTLR3