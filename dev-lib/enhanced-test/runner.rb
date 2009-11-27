#!/usr/bin/ruby
# encoding: utf-8

require 'spec/runner/formatter/progress_bar_formatter'

PrettyError.blacklist( __FILE__, 'rspec', 'timeout.rb' )

module ANTLR3
module Test
class Formatter < ::Spec::Runner::Formatter::ProgressBarFormatter
  
  # just a little alias to keep things clean
  NoDice = Spec::Expectations::ExpectationNotMetError
  
  def initialize(options, where)
    super
    @summary = Summary.new
  end
  
  def example_passed(example)
    @summary.passed += 1
    $stdout.print('+')
    $stdout.flush
  end
  
  def example_pending(example, message, pending_caller)
    @summary.pending += 1
    $stdout.print('-')
    $stdout.flush
  end
  
  def example_failed(example, counter, failure)
    case failure.exception
    when Grammar::CompilationFailure then @summary.compilation_failures += 1
    when SyntaxError then @summary.syntax_errors += 1
    when ImportError then @summary.import_errors += 1
    when NoDice      then @summary.failed += 1
    else @summary.example_errors += 1
    end
    $stdout.print('!')
    $stdout.flush
  end
  
  def dump_failure(counter, failure)
    @where.puts
    @where.puts "#{counter.to_s}) #{failure.example}"
    
    case error = failure.exception
    when NoDice
      @where.puts error.pretty!( :backtrace => 1 )
    when nil then super
    else
      @where.puts( error.pretty! )
    end
    
    @where.flush
  end
  
  def dump_summary(duration, example_count, failure_count, pending_count)
    ret = super
    @summary.duration = duration
    @where.write("\n__END__\n#{ @summary.serialize }")
    @where.flush
    return(ret)
  end
  
#  add_example_group, close, dump_failure, dump_pending,
#  dump_summary, example_failed, example_passed, example_pending,
#  example_started, start, start_dump
end

class Runner < Spec::Runner::ExampleGroupRunner
  
  def initialize(options, *)
    super( options )
    Grammar.inform!
    @status = 0
  end
  
  def run
    prepare
    
    for example_group in example_groups
      example_group.run or @status = 2
    end
    
    failed = (@status & FAILURES).zero?
    return( !failed )
    
  ensure
    finish
  end
  
  def finish
    
    super
    exit!( @status )
    
  end
  
end

end
end

# turns out rspec won't recognize "ANTLR3::Test::Formatter"
# as a command line option for formatter -- these are
# aliases to make it work

ANTLRFormatter = ANTLR3::Test::Formatter
ANTLRRunner = ANTLR3::Test::Runner
