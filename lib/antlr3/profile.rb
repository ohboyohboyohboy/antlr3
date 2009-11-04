#!/usr/bin/ruby
# encoding: utf-8

module ANTLR3
module Profile
=begin rdoc ANTLR3::Profile::ParserEvents

ANTLR3::Profile::ParserEvents expands basic debugging events for use by
recognition code generated by ANTLR when called with the <tt>-profile</tt>
switch.

=end
module ParserEvents
  include ANTLR3::Debug::ParserEvents
  
  def initialize(stream, options = {})
    options[:debug_listener] ||= Profiler.new( self )
    super( stream, options )
  end
  
  def already_parsed_rule?(rule)
    @debug_listener.examine_rule_memoization(rule)
    super
  end
  
  def profile
    @debug_listener.profile
  end
  
  def memoize(rule, start_index, success)
    @debug_listener.memoize(rule, rule_start_index, sucess)
    super
  end
end

class DataSet < ::Array
  include ::Math
  def total
    inject(:+)
  end
  def average
    length > 0 ? (total.to_f / length) : 0
  end
  def variance
    length.zero? and return(0.0)
    mean = average
    inject(0.0) { |t, i| t + (i - mean)**2 } / (length - 1)
  end
  def standard_deviation
    sqrt(variance)
  end
end





unless const_defined?(:Profile)
  Profile = Struct.new(
    :grammar_file, :parser_class, :top_rule,
    :rule_invocations, :guessing_rule_invocations, :rule_invocation_depth,
    :fixed_looks, :cyclic_looks, :syntactic_predicate_looks,
    :memoization_cache_entries, :memoization_cache_hits,
    :memoization_cache_misses, :tokens, :hidden_tokens,
    :characters_matched, :hidden_characters_matched, :semantic_predicates,
    :syntactic_predicates, :reported_errors
  )
end

class Profile
  def initialize
    init_values = Array.new(self.class.members.length, 0)
    super(*init_values)
    self.top_rule = self.parser_class = self.grammar_file = nil
    self.fixed_looks = DataSet.new
    self.cyclic_looks = DataSet.new
    self.syntactic_predicate_looks = DataSet.new
  end
  
  def fixed_decisions
    fixed_looks.length
  end
  
  def cyclic_decisions
    cyclic_looks.length
  end
  
  def backtracking_decisions
    syntactic_predicate_looks.length
  end
  
  def generate_report
    report = '+' << '-' * 78 << "+\n"
    report << '| ' << "ANTLR Rule Profile".center(76) << " |\n"
    report << '+' << '-' * 78 << "+\n"
    report << "| Generated at #{Time.now}".ljust(78) << " |\n"
    report << "| Profiled #{parser_class.name}##{top_rule}".ljust(78) << " |\n"
    report << "| Rule source generated from grammar file #{grammar_file}".ljust(78) << " |\n"
    report << '+' << '-' * 78 << "+\n"
    
    report << '| ' << "Rule Invocations".center(76) << " |\n"
    report << '+' << '-' * 68 << '+' << '-' * 9 << "+\n"
    report << "| %-66s | %7i |\n" % ["Total Invocations", rule_invocations]
    report << "| %-66s | %7i |\n" % ["``Guessing'' Invocations", guessing_rule_invocations]
    report << "| %-66s | %7i |\n" % ["Deepest Level of Invocation", rule_invocation_depth]
    report << '+' << '-' * 68 << '+' << '-' * 9 << "+\n"
    
    report << '| ' << "Execution Events".center(76) << " |\n"
    report << '+' << '-' * 68 << '+' << '-' * 9 << "+\n"
    report << "| %-66s | %7i |\n" % ["Semantic Predicates Evaluated", semantic_predicates]
    report << "| %-66s | %7i |\n" % ["Syntactic Predicates Evaluated", syntactic_predicates]
    report << "| %-66s | %7i |\n" % ["Errors Reported", reported_errors]
    report << '+' << '-' * 68 << '+' << '-' * 9 << "+\n"
    
    report << '| ' << "Token and Character Data".center(76) << " |\n"
    report << '+' << '-' * 68 << '+' << '-' * 9 << "+\n"
    report << "| %-66s | %7i |\n" % ["Tokens Consumed", tokens]
    report << "| %-66s | %7i |\n" % ["Hidden Tokens Consumed", hidden_tokens]
    report << "| %-66s | %7i |\n" % ["Characters Matched", characters_matched]
    report << "| %-66s | %7i |\n" % ["Hidden Characters Matched", hidden_characters_matched]
    report << '+' << '-' * 68 << '+' << '-' * 9 << "+\n"
    
    report << '| ' << "Memoization".center(76) << " |\n"
    report << '+' << '-' * 68 << '+' << '-' * 9 << "+\n"
    report << "| %-66s | %7i |\n" % ["Cache Entries", memoization_cache_entries]
    report << "| %-66s | %7i |\n" % ["Cache Hits", memoization_cache_hits]
    report << "| %-66s | %7i |\n" % ["Cache Misses", memoization_cache_misses]
    report << '+' << '-' * 68 << '+' << '-' * 9 << "+\n"
    
    [
      ['Fixed Lookahead (k)', fixed_looks],
      ['Arbitrary Lookahead (k)', cyclic_looks],
      ['Backtracking (Syntactic Predicate)', syntactic_predicate_looks]
    ].each do |name, set|
      mean, stdev = '%4.2f' % set.average, '%4.2f' % set.standard_deviation
      report << '| ' << "#{name} Decisions".center(76) << " |\n"
      report << '+' << '-' * 68 << '+' << '-' * 9 << "+\n"
      report << "| %-66s | %7i |\n" % ["Count", set.length]
      report << "| %-66s | %7i |\n" % ["Minimum k", set.min]
      report << "| %-66s | %7i |\n" % ["Maximum k", set.max]
      report << "| %-66s | %7s |\n" % ["Average k", mean]
      report << "| %-66s | %7s |\n" % ["Standard Deviation of k", stdev]
      report << '+' << '-' * 68 << '+' << '-' * 9 << "+\n"
    end
    return(report)
  end
end

=begin rdoc ANTLR3::Profile::Profiler

When ANTLR is run with the <tt>-profile</tt> switch, it generates recognition
code that performs accounting about the decision logic performed while parsing
any given input. This information can be used to help refactor a slow grammar.
Profiler is an event-listener that performs all of the profiling accounting and
builds a simple report to present the various statistics.

=end
class Profiler
  include ANTLR3::Debug::EventListener
  
  PROTOCOL_VERSION = 2
  
  attr_accessor :parser
  attr_reader :rule_level
  attr_reader :decision_level
  
  # tracks the maximum look value for the current decision
  # (maxLookaheadInCurrentDecision in java Profiler)
  attr_reader :decision_look
  
  # the last token consumed
  # (lastTokenConsumed in java Profiler)
  attr_reader :last_token
  attr_reader :look_stack
  attr_reader :profile
  
  attr_accessor :output
  
  def initialize(parser = nil, output = nil)
    @parser = parser
    @profile = nil
    @rule_level = 0
    @decision_level = 0
    @decision_look = 0
    @last_token = nil
    @look_stack = []
    @output = output
  end
  
  def commence
    @profile = Profile.new
    @rule_level = 0
    @decision_level = 0
    @decision_look = 0
    @last_token = nil
    @look_stack = []
  end
  
  def enter_rule(grammar_file_name, rule_name)
    if @rule_level.zero?
      commence
      @profile.grammar_file = grammar_file_name
      @profile.parser_class = @parser.class
      @profile.top_rule = rule_name
    end
    @rule_level += 1
    @profile.rule_invocations += 1
    @profile.rule_invocation_depth < @rule_level and
      @profile.rule_invocation_depth = @rule_level
  end
  
  def exit_rule(grammar_file_name, rule_name)
    @rule_level -= 1
  end

  def examine_rule_memoization(rule)
    stop_index = parser.rule_memoization(rule, @parser.input.index)
    if stop_index == BaseRecognizer::MEMO_RULE_UNKNOWN
      @profile.memoization_cache_misses += 1
      @profile.guessing_rule_invocations += 1
    else
      @profile.memoization_cache_hits += 1
    end
  end
  
  def memoize(rule, start_index, success)
    @profile.memoization_cache_entries += 1
  end
  
  
  def enter_decision(decision_number)
    @decision_level += 1
    starting_look_index = @parser.token_stream.index
    @look_stack << starting_look_index
  end

  def exit_decision(decision_number)
    @look_stack.pop
    @decision_level -= 1
    if @parser.cyclic_decision? then
      @profile.cyclic_looks << @decision_look
    else @profile.fixed_looks << @decision_look
    end
    
    @parser.cyclic_decision = false
    @decision_look = 0    
  end
  
  def consume_token(token)
    @last_token = token
  end

  def in_decision?
    return(@decision_level > 0)
  end
  
  def consume_hidden_token(token)
    @last_token = token
  end

  def look(i, token)
    in_decision? or return
    starting_index = look_stack.last
    input = @parser.token_stream
    this_ref_index = input.index
    num_hidden = input.tokens(starting_index, this_ref_index).count { |t| t.hidden? }
    depth = i + this_ref_index - starting_index - num_hidden
    if depth > @decision_look
      @decision_look = depth
    end
  end
  
  def end_backtrack(level, successful)
    @profile.syntactic_predicate_looks << @decision_look
  end
  
  def recognition_exception(error)
    @profile.reported_errors += 1
  end
  
  def semantic_predicate(result, predicate)
    in_decision? and @profile.semantic_predicates += 1
  end
  
  def terminate
    input = @parser.token_stream
    hidden_tokens = input.select { |token| token.hidden? }
    @profile.hidden_tokens = hidden_tokens.length
    @profile.tokens = input.tokens.length
    @profile.hidden_characters_matched = hidden_tokens.inject(0) do |count, token|
      count + token.text.length rescue count
    end
    @profile.characters_matched = (@last_token || input.tokens.last).stop + 1
    write_report
  end
  
  
  def write_report
    @output << @profile.generate_report unless @output.nil?
  rescue NoMethodError => error
    if error.name.to_s == '<<'
      warn(<<-END.strip! % [__FILE__, __LINE__, @output])
        [%s @ %s]: failed to write report to %p as it does not respond to :<<
      END
    else raise
    end
  rescue IOError => error
    $stderr.puts( Util.tidy(<<-END) % [__FILE__, __LINE__, @output, error.class, error.message])
    | [%s @ %s]: failed to write profile report to %p due to an IO Error:
    |   %s: %s
    END
    $stderr.puts(error.backtrace.map { |call| "  - #{call}" }.join("\n"))
  end
  
  def report
    @profile.generate_report
  end
  
  alias to_s report
end
end
end
