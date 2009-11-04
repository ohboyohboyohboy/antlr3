#!/usr/bin/ruby
# encoding: utf-8
require 'rubygems'

if ARGV.first == '--group-mode'
  ARGV.shift
  $group_mode = true
else
  $group_mode = false
end

DEFAULT_COMPILE_OPTIONS = {
  :debug_st => true,
  :log => true,
  :wrap => true
}

for switch in ANTLRCommand::SWITCHES.keys
  true_switch  = "--#{switch}"
  true_switch.tr!('_','-')
  false_switch = "--no-#{switch}"
  false_switch.tr!('_','-')
  if ARGV.member?(true_switch)
    DEFAULT_COMPILE_OPTIONS[switch] = true
    ARGV.delete(true_switch)
  end
  if ARGV.member?(false_switch)
    DEFAULT_COMPILE_OPTIONS[switch] = false
    ARGV.delete(false_switch)
  end
end

gem :rspec
require 'spec'
require 'spec/runner/formatter/progress_bar_formatter'
require 'test-tools'
require 'antlr3'
require 'pp'
#require 'progressbar'

module RecognizerTestHelpers
  module SilenceErrors
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
  module Trace
    def traces
      @traces ||= []
    end
    def trace_in(rule_name, rule_index)
      traces << ">#{rule_name}"
    end
    def trace_out(rule_name, rule_index)
      traces << "<#{rule_name}"
    end
  end

  module RaiseOnRecover
    def recover(error)
      raise(error)
    end
  end
  def shut_up!
    include SilenceErrors
  end
  def raise_on_recover!
    include RaiseOnRecover
  end
  def collect_errors!
    include CollectErrors
  end

  def add_buffer!
    include CaptureOutput
  end

  def trace!
    include Trace
  end
  

end

ANTLR3::BaseRecognizer.extend(RecognizerTestHelpers)

class TestBroken < StandardError; end

# <tt>Object.const_missing</tt> is overridden as a hack way of
# coping with scoping issues that come up when referencing
# token types in example code. If further explanation is needed,
# stay tuned for a long-winded, possibly overcomplicated
# explanation of the issue.
# 
# Currently, ANTLR will generate ruby code in which token types are
# represented as named constants with integer values defined in
# a seperate module. Lexer and parser code includes the TokenData
# module and thus references the token type names just as regular
# constants.
#
# So if in an ANTLR grammar, you define a token 'INT', the token will have
# type <tt>INT</tt>, which is some abritrary integer value that ANTLR picks.
# In the ruby code, when a token type needs to be referenced, it can be
# done using a constant reference <tt>INT</tt>
# 
# In the RSpec DSL, test groups are actually anonymous classes and
# the examples are instances of the anonymous class. But all of the
# definitions are made by using blocks that are <tt>class_eval</tt>-ed or
# <tt>instance_eval</tt>-ed. Now, one problem with using the RSpec DSL for writing examples and tests
# is that test code blocks are evaluated within an instance context of the
# enclosing test group, but in ruby, the values of constants, when written
# without a full module address, basically follow lexical scoping rules. 
# In effect, they end up being looked up in the top level scope,
# which is Object.
#
# The token constants are not defined in Object, and thus the test code
# can't check the type of a token INT by using the plain constant
# reference; it will cause a constant not defined name error.
# Even if the Token module is dynamically located and included
# into the example-group class, the constant will still be looked
# up in <tt>Object</tt>, not the scope of the class.
#
# So, to cope with locating the values of constants, when an example
# group compiles and loads ruby code generated from an ANTLR grammar,
# it will dynamically fish out the token definition module
# of the grammar, and assign it to the global variable $token_module.
# In test code, when a type is referenced, such as <tt>INT</tt>,
# when the lookup fails, Object.const_missing will be called.
# Thus, for the purposes of these grammar output tests,
# const_missing is defined to check if $token_module is a module
# that contains the missing constant, and if so, to return
# the integer value of the constant.

def Object.const_missing(name)
  if $token_module and $token_module.const_defined?(name)
    $token_module.const_get(name)
  else super
  end
end


class GrammarOutputTest < Spec::Example::ExampleGroup
  module GrammarAttributes
    attr_accessor :directory, :grammar, :output_directory, :grammar_directory, :token_module
    
    def directory
      @directory ||= '.'
    end
    
    for type in %w(lexer parser tree_parser)
      module_eval(<<-END, __FILE__, __LINE__)
      def #{type}_class(&body)
        if block_given? && @#{type}_class then @#{type}_class = Class.new(@#{type}_class, &body) end
        return(@#{type}_class)
      end
      attr_writer :#{type}_class
      END
    end
    
    def local_path(path)
      directory / path.to_s
    end
    
    def inline_grammar(source, options = {})
      call = call_stack[0]
      
      options = compile_options.merge(options)
      options[:output_directory] ||= grammar_directory
      options[:file] ||= call.file
      options[:line] ||= call.line
      
      @grammar = Grammar.inline(source, options)
      return(@grammar)
    end
    
    def load_grammar(path, options = {})
      options = compile_options.merge(options)
      options[:output_directory] ||= grammar_directory
      unless test(?f, path.to_s)
        path = local_path(path.to_s + '.g')
      end
      @grammar = Grammar.new(path, options)
      return @grammar
    end
    
    def output_directory
      @output_directory ||= local_path('output')
    end
    
    def compile(grammar, options = {})
      grammar.compile_and_load(options)
      for type in %w(lexer parser tree_parser)
        if klass = grammar.send(:"#{type}_class")
          self.send(:"#{type}_class=", klass)
          grammar_module = grammar.module.const_get(grammar.name)
          grammar_module.const_defined?(:TokenData) and
            $token_module = @token_module = grammar_module.const_get(:TokenData)
        end
      end
      if $group_mode
        $stdout.print(".")
        $stdout.flush
      end
      return(grammar)
    end
    
    def compile_grammar(path, options = {})
      options = compile_options.merge(options)
      gram = load_grammar(path, options)
      compile(gram, options)
    end
    def broken!(message = 'broken!')
      @broken = true
      raise TestBroken, message, caller
    end
    
    attr_accessor :broken
    alias :broken? :broken
  end
  
  
  class << self
    def compile_options(opts = nil)
      @compile_options ||= DEFAULT_COMPILE_OPTIONS.clone
      @compile_options.update(opts) unless opts.nil?
      return(@compile_options)
    end
    
    alias :the_parser :it
    alias :the_lexer :it
    
    attr_accessor :error
    
    def grammar_directory
      @grammar_directory ||= output_directory
    end
    
    def test_group(*grammar_names, &body)
      options = grammar_names.last.is_a?(::Hash) ? grammar_names.pop : {}
      
      description = grammar_names.first.is_a?(String) ? grammar_names.shift : options[:description]
      description ||= "grammar test#{grammar_names.first && ' for ' << grammar_names.first.to_s}"
      
      test_directory = @directory
      test_file = @test_file
      
      describe(description, :type => :grammar) do
        # a class eval context (same locals, different instance variables and self)
        
        @directory = test_directory
        @test_file = test_file
        
        before :all do
          # an object instance context
          @directory = test_directory
          @test_file = test_file
          
          @grammar = self.class.grammar
          @lexer_class = self.class.lexer_class
          @parser_class = self.class.parser_class
          @tree_parser_class = self.class.tree_parser_class
          $token_module = @token_module = self.class.token_module
        end
          
        begin
          for grammar in grammar_names
            compile_grammar(grammar, options)
          end
          
          class_eval(&body)
        rescue Exception => error
          $stderr.puts PrettyException.pretty_error(error)
          @error = error
        end
        
        class_eval(&body)
      end
    end
    
    def test(*args, &block)
      args.length > 1 and return(super)
      it(*args, &block)
    end
  end
  
  extend GrammarAttributes
  include GrammarAttributes
  
  def compile_options(opts = nil)
    @compile_options ||= self.class.compile_options.clone
    @compile_options.update(opts) unless opts.nil?
    return(@compile_options)
  end
  
  def read(path)
    File.read(local_path(path))
  end
  
  def file_stream(path)
    @input = ANTLR3::FileStream.new(local_path(path))
  end
  
  def text_stream(text)
    @input = ANTLR3::StringStream.new(text)
  end
  
  def token_stream(lexer)
    @tokens = ANTLR3::CommonTokenStream.new(lexer)
  end
  
  def node_stream(tree)
    @nodes = ANTLR3::CommonTreeNodeStream.new(tree)
  end
  
  def make_lexer(text) #, lexer_class = @lexer_class)
    @lexer = lexer_class.new(text_stream(text))
  end
  
  def make_lexer_for_file(local_path) #, lexer_class = @lexer_class)
    @lexer = lexer_class.new(file_stream(local_path))
  end
  
  def make_parser(input) #, parser_class = @parser_class, lexer_class = @lexer_class)
    stream =
      case input
      when String then token_stream( make_lexer( input ) )
      when ANTLR3::Stream then input
      end
    @parser = parser_class.new( stream )
  end
  
  def make_parser_for_file(local_path) #, parser_class = self.parser_class, lexer_class = self.lexer_class)
    @parser = parser_class.new(
      token_stream( make_lexer_for_file(local_path) )
    )
  end
  
  def grammar_directory
    output_directory / test_name
  end

  def test_name
    @_defined_description.to_s
  end
  
end
Spec::Example::ExampleGroupFactory.register(:grammar, GrammarOutputTest)

module Kernel
  
  def grammar_test(*grammar_names, &body)
    options = grammar_names.last.is_a?(::Hash) ? grammar_names.pop : {}
    
    description = grammar_names.first.is_a?(String) ? grammar_names.shift : options[:description]
    description ||= "grammar test#{grammar_names.first && ' for ' << grammar_names.first.to_s}"
    
    if RUBY_VERSION.start_with?("1.9.")
      test_file, test_line = body.source_location
    else test_file = File.expand_path(eval('__FILE__', body.binding))
    end
    test_directory = File.dirname(test_file)
    
    describe(description, :type => :grammar) do
      @directory = test_directory
      @test_file = test_file
      
      before :all do
        @directory = test_directory
        @test_file = test_file
        
        @grammar = self.class.grammar
        @lexer_class = self.class.lexer_class
        @parser_class = self.class.parser_class
        @tree_parser_class = self.class.tree_parser_class
        @token_module = self.class.token_module
      end
        
      begin
        for grammar in grammar_names
          compile_grammar(grammar, options)
        end
        
        class_eval(&body)
      rescue Exception => error
        $stderr.puts PrettyException.pretty_error(error)
        @error = error
      end
    end
  end
end


class GrammarOutputSpecFormatter < ::Spec::Runner::Formatter::ProgressBarFormatter
  include PrettyException
  PrettyException.blacklist(%r(/rspec-\d+\.\d+\.\d+/))
  
  Summary = Struct.new(:passed, :pending, :failed, :broken, :compilation_failures,
                     :bad_syntax_generation, :bad_source_generation, :duration)
  class Summary
    def initialize; super(0,0,0,0,0,0,0); end
    def total; self.class.members[0...-1].inject(0) { |t, c| t + self[c] }; end
  end
  
  def test_count
    ObjectSpace.each_object(::GrammarOutputTest) { }
  end
  
  def progress_bar
    @progress_bar ||= ProgressBar.new("running...", test_count)
  end
  
  def initialize(options, where)
    super
    @summary = Summary.new
  end
  
  def example_passed(example)
    if $group_mode
      @summary.passed += 1
    else
      progress_bar.title = "#{example.test_name}:passed"
      progress_bar.inc
    end
  end
  
  def example_pending(example, message, pending_caller)
    if $group_mode
      @summary.pending += 1
    else
      progress_bar.title = "#{example.test_name}: pending"
      progress_bar.inc
    end
  end
  
  def example_failed(example, counter, failure)
    if $group_mode
      case failure.exception
      when TestBroken then @summary.broken += 1
      when Grammar::CompilationFailure then @summary.compilation_failures += 1
      when RubyFile::BadSyntax then @summary.bad_syntax_generation += 1
      when RubyFile::NotRunnable then @summary.bad_source_generation += 1
      else @summary.failed += 1
      end
    else
      progress_bar.title = "#{example.test_name}: failed"
      progress_bar.inc
    end
  end

  def dump_failure(counter, failure)
    @where.puts
    @where.puts "#{counter.to_s}) #{failure.example.test_name}"
    case failure.exception
    when nil then super
    when TestBroken then
      @where.puts(pretty_error(failure.exception, :backtrace => false))
      at_exit { exit!(101) } if $group_mode
    when Spec::Expectations::ExpectationNotMetError then
      @where.puts(pretty_error(failure.exception, :backtrace => 1))
    else
      @where.puts(pretty_error(failure.exception).to_s)
      @where.flush
    end
  end
  
  def start_dump(*args)
    progress_bar.clear unless $group_mode
    super
  end
  
  def dump_summary(duration, example_count, failure_count, pending_count)
    ret = super
    if $group_mode
      @where.puts("\n__END__")
      @summary.duration = duration
      @where.puts(@summary.to_a.join(':'))
      @where.flush
    end
    return(ret)
  end


#  add_example_group, close, dump_failure, dump_pending,
#  dump_summary, example_failed, example_passed, example_pending,
#  example_started, start, start_dump
end

class GrammarTestRunner < Spec::Runner::ExampleGroupRunner
  
  FAILURES            = 1 << 1
  COMPILATION_FAILURE = 1 << 2
  ERRORED_EXAMPLE     = 1 << 3
  EXAMPLE_BROKEN      = 1 << 4
  
  def initialize(options, *)
    super(options)
    @status = 0
  end
  
  def run
    prepare
    for example_group in example_groups
      case
      when example_group.broken? then @status |= EXAMPLE_BROKEN
      when example_group.error
        if Grammar::CompilationFailure === example_group.error
          @status ||= COMPILATION_FAILURE
        else
          @status |= ERRORED_EXAMPLE
        end
      when example_group.run
      else @status |= FAILURES
      end
    end
    failed = (@status & FAILURES).zero?
    return(!failed)
  ensure
    finish
  end
  
  def finish
    super
    exit!(@status)
  end
  
end


Spec::Runner.options.parse_format('GrammarOutputSpecFormatter') if ARGV.grep(/^\-\-format$/).empty?
Spec::Runner.options.colour = true
Spec::Runner.options.backtrace_tweaker = Spec::Runner::NoisyBacktraceTweaker.new
Spec::Runner.options.user_input_for_runner = 'GrammarTestRunner'