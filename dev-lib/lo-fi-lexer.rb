#!/usr/bin/ruby
# encoding: utf-8

=begin      ::about::
author:     Kyle Yetter <kcy5b@yahoo.com>
created on: June 07, 2009
summary:    creates new Lexer class which can be inheritted
            and then specified using a built in DSL
=end

require 'strscan'

module LoFiLexer
class LexerError < StandardError
  attr_reader :lexer
  
  def initialize(lexer)
    @lexer = lexer
    location = @lexer.location
    glimpse = @lexer.scanner.string[location.position, 13] + '...'
    message = (
      "unable to match any lexical rule of %s " % @lexer.class.name <<
      "for %s => %p" % [location, glimpse]
    )
    super(message)
  end
end

class Location
  MEMBERS = %w(file position line column)
  
  def self.[](*args)
    new(*args)
  end
  
  attr_accessor( *MEMBERS )
  
  def initialize(file = nil, position = nil, line = nil, column = nil)
    @file = file
    @position = position
    @line = line
    @column = column
  end
  
  def <<(text)
    length     = text.length
    line_count = text.count("\n")
    line_count.zero? ? (@column += length) :
      (@column = length - text.rindex("\n") - 1)
    @line += line_count
    @position += length
    return self
  end
  
  def >>(text)
    length     = text.length
    line_count = text.count("\n")
    line_count.zero? ? (@column -= length) : (@column = text.index("\n"))
    @line -= line_count
    @position -= length
    return self
  end
  
  def +(text)
    clone << text
  end
  
  def -(text)
    clone >> text
  end
  
  def <=>(location)
    @position <=> location.position
  end
  
  include Comparable
  
  def to_s(long = true)
    if long
      'file %s @ (%i:%i)' % [@file, @line, @column]
    else
      '[%i:%i]' % [@line, @column]
    end
  end
end

module Locatable
  for member in Location::MEMBERS
    class_eval(<<-DELEGATE, __FILE__, __LINE__)
      def #{member}
        location.#{member} rescue nil
      end
    DELEGATE
  end
end

class Token
  include Locatable
  attr_accessor :index, :channel, :type, :text, :location
  def initialize(index = nil, type = nil, text = nil, location = nil, channel = nil)
    @index = index
    @type  = type
    @text  = text
    @location = location
    @channel = channel
    block_given? and yield(self)
  end
  def inspect
    '[%i %p(%p) @ %s]' % [@index, @type, @text, @location.to_s(false)]
  end
  def to_s
    text
  end
  def after
    location + text
  end
end

class Rule
  attr_accessor :name, :channel, :action, :transition, :target_state
  attr_reader :options
  
  def initialize(name, options = {}, &action)
    @name = name.to_sym
    @channel = options[:channel] || :default
    @action = options[:action] || action
    @transition = [:go_to, :push, :pop, :stay].find do |type|
      @target_state = options[type]
    end
    @transition ||= :stay
  end
  
  def match(scanner)
    raise NotImplementedError, "#match must be implemented by subclasses"
  end
end

class RegexRule < Rule
  
  def self.keyword(*args, &action)
    options = args.last.is_a?(Hash) ? options.pop : {}
    case args.length
    when 1
      word = args[0].to_s
      name = options[:name] || word.to_s.upcase
    when 2
      name, word = args
      word = word.to_s
    else
      raise ArgumentError, <<-END.here_flow! % [options, args]
      | bad arguments: need (name, keyword, options = {}, &action) or
      | (keyword, options = {}, &action) -- got:
      | options = %p
      | other arguments = %p
      END
    end
    return new(name, word, options, &action)
  end
  
  attr_accessor :pattern
  def initialize(name, pattern, options = {}, &action)
    super(name, options, &action)
    @pattern = pattern.is_a?(Regexp) ? pattern : Regexp.literal(pattern)
  end
  
  def match(scanner)
    scanner.scan(pattern)
  end
end

class DelimiterRule < Rule
  attr_accessor :open, :close, :escape
  
  def initialize(name, open, close = {}, options = nil, &action)
    @open = open.to_s
    if Hash === close
      @close = open
      options = close
    else
      @close = close.to_s
      options ||= {}
    end
    @escape = (options[:escape] || '\\').to_s
    super(name, options, &action)
    @escape_regexp = Regexp.new( Regexp.escape( @escape ) << '.' )
    @open_regexp   = Regexp.literal( @open )
    @close_regexp  = Regexp.literal( @close )
    @content_pause = Regexp.union( @escape_regexp, @close_regexp )
  end
  
  def match(scanner)
    start_position = scanner.pos
    catch(:nevermind) do
      if scanner.scan(@open_regexp)
        loop do
          throw(:nevermind) unless scanner.skip_until(@content_pause)
          break if scanner.matched == @close
        end
        return(scanner.string[start_position...scanner.pos])
      else return false
      end
    end
    scanner.pos = start_position
    return false
  end
end

class NestedDelimiterRule < DelimiterRule
  def initialize(name, open, close, options = {}, &action)
    super
    @content_pause = Regexp.union(@escape_regexp, @open_regexp, @close_regexp)
  end
  
  def match(scanner)
    start_position = scanner.pos
    scanner.scan(@open_regexp) or return false
    catch(:nevermind) do
      loop do
        scanner.scan_until(@content_pause) or throw(:nevermind)
        case scanner.matched
        when @escape_regexp then next
        when @close then break
        when @open
          # back up over the open delimiter, and recursively invoke the matching procedure
          scanner.pos -= scanner.matched_size
          match(scanner) or throw(:nevermind)
        else
          raise(<<-END.here_flow! % [@name, scanner.matched, @escape_regexp, @open, @close])
          | this shouldn't happen:
          | rule %p
          | scanner.matched = %p
          | @escape_regexp  = %p
          | @open = %p
          | @close = %p
          END
        end
      end
      return(scanner.string[start_position...scanner.pos])
    end
    scanner.pos = start_position
    return false
  end
  alias :match? :match
end

module CommonDSL
  attr_accessor :rules
  def self.extended(klass)
    klass.instance_variable_set(:@rules, [])
  end
  def register(rule)
    rules << rule
    return rule
  end
  def rule(name, pattern, options = {}, &action)
    register RegexRule.new(name, pattern, options, &action)
  end
  def delimited(name, open, close = {}, options = nil, &action)
    register DelimiterRule.new(name, open, close, options, &action)
  end
  def nested(name, open, close, options = {}, &action)
    register NestedDelimiterRule.new(name, open, close, options, &action)
  end
  def keyword(*args, &action)
    register RegexRule.keyword(*args, &action)
  end
  def inherited(klass)
    klass.rules = @rules.clone
  end
  protected :rules=
  private :register, :rule, :delimited, :nested, :keyword, :inherited
end

class Lexer
  
  attr_reader :scanner, :location, :token
  attr_accessor :channel
  
  def initialize(text, options = {})
    file_name = options[:file] || options[:file_name] || '(string)'
    channel   = options[:channel] || :default
    unless location  = options[:location]
      position  = options[:position] || 0
      line      = options[:line] || 1
      column    = options[:column] || 0
      location  = Location.new(file_name, position, line, column)
    end
    
    @scanner = StringScanner.new(text)
    @channel = channel
    @starting_line = @location = location
    @tokens = []
    @emission_buffer = []
    @token = nil
  end
  
  def source
    @scanner.string
  end
  
  def reset
    @scanner.pos = 0
    @location = @starting_line
    @tokens.clear
    @token = nil
  end
  
  def next(tune = true)
    channel = tune.is_a?(Symbol) ? tune : @channel
    until @emission_buffer.empty?
      @token = @emission_buffer.shift
      @tokens << @token
      return(@token) unless tune
      return(@token) if token.channel == channel
    end
    return( match ? self.next(tune) : nil )
  end
  
  def match
    raise NotImplementedError, "subclasses must implement #match"
  end
  
  def emit_token(type, text, channel = :default)
    index = @tokens.length + @emission_buffer.length
    token = Token.new(index, type, text, @location, channel)
    @emission_buffer << token
    @location += text
    return token
  end
  
  def each(tune = true)
    block_given? or return enum_for(__method__, tune)
    if tune
      channel = tune.is_a?(Symbol) ? tune : @channel
      @tokens.each { |token| token.channel == channel and yield(token) }
    else
      @tokens.each { |token| yield(token) }
    end
    while token = self.next(tune)
      yield(token)
    end
    return self
  end
  
  include Enumerable
  def lex!(tune = true)
    if block_given? 
      each(tune).map do |token|
        yield(token)
      end
    else
      return each(tune).map
    end
  end
  
  def tokens(tune = true)
    if tune
      channel = tune.is_a?(Symbol) ? tune : @channel
      @tokens.select { |token| token.channel == channel }
    else
      return @tokens
    end
  end
  
  def [](*args)
    @tokens[*args]
  end
  
end

class CommonLexer < Lexer
  extend CommonDSL
  
  def initialize(text, options = {})
    super
    @rules = self.class.rules
  end
  
  def match
    @scanner.eos? and return nil
    for rule in @rules
      if text = rule.match(@scanner)
        matched!(rule, text)
        return true
      end
    end
    match_failed!
  end
  
  def matched!(rule, text)
    emit_token(rule.name, text, rule.channel)
    action = rule.action and instance_eval(&action)
  end
  
  def match_failed!
    error = LexerError.new(self)
    error.set_backtrace(caller)
    raise(error)
  end
  
  private :match_failed!, :matched!
  
end

module StatefulDSL
  attr_accessor :states, :initial_state, :global_state
  
  def self.extended(klass)
    klass.instance_variable_set(:@states, {})
    klass.instance_variable_set(:@global_state, klass.state(:global))
    klass.instance_variable_set(:@initial_state, nil)
  end
  
  def state(name, *args, &body)
    state = @states[name.to_sym] ||= State.new(self, name, *args)
    @initial_state ||= state
    block_given? and state.specify(&body)
    return state
  end
  
  def start_in(name)
    @initial_state = state(name)
  end
  
  def register(rule)
    @global_state.rules << rule
    return rule
  end
  
  def inherited(klass)
    klass.states = @states.inject({}) do |h, (name, state)|
      state = state.clone
      state.lexer = klass
      h[name] = state; h
    end
    klass.global_state = klass.state(:global)
    klass.initial_state = (@initial_state && klass.states[@initial_state.name])
  end
  
  protected :states=, :global_state
  private :register, :inherited, :start_in
end

class State
  include CommonDSL
  
  def on_enter( action = nil, &b )
    if block_given? then @on_enter = b
    elsif action then @on_enter = action.to_proc
    end
    return @on_enter
  end
  
  def on_exit( action = nil, &b )
    if block_given? then @on_exit = b
    elsif action then @on_exit = action.to_proc
    end
    return @on_exit
  end
  
  def on_failure( action = nil, &b )
    if block_given? then @on_failure = b
    elsif action then @on_failure = action.to_proc
    end
    return @on_failure
  end
  
  attr_accessor :name, :lexer
  
  def initialize(lexer_class, name, options = {}, &body)
    @lexer = lexer_class
    @name = name.to_sym
    @rules = []
    fail_action = [:go_to, :push, :pop].find do |action|
      options[action]
    end
    @on_failure = fail_action && lambda do
      make_transition(fail_action, options[fail_action])
    end
    @on_enter = nil
    @on_exit  = nil
    block_given? and specify(&body)
  end
  
  def initialize_copy(orig)
    @lexer = nil
    @rules = orig.rules.map { |rule| rule.clone }
  end
  
  alias specify instance_eval
  
  def include(state_name)
    state = @lexer.state(state_name)
    @rules.concat(state.rules)
    @on_failure ||= state.on_failure
    @on_exit ||= state.on_exit
    @on_enter ||= state.on_enter
  end
  
end

class StatefulLexer < Lexer
  extend CommonDSL
  extend StatefulDSL
  
  attr_reader :state, :start_state
  def initialize(text, options = {})
    super
    @states = self.class.states
    @state_stack = []
    if name = (options[:initial_state]  || options[:state])
      @state = @states[name]
    elsif state = self.class.initial_state
      @state = state
    else
      @state = self.class.global_state
    end
    @start_state = @state
  end
  
  def rules
    @state.rules # or raise("state %p has no rules" % @state)
  end
  
  def reset
    super
    @state = @start_state
  end
  
  def make_transition(type, target)
    case type
    when :go_to
      action = @state.on_exit and instance_eval(&action)
      @state = fetch_state(target)
      action = @state.on_enter and instance_eval(&action)
    when :push
      action = @state.on_exit and instance_eval(&action)
      @state_stack.push(@state)
      @state = fetch_state(target)
      action = @state.on_enter and instance_eval(&action)
    when :pop
      action = @state.on_exit and instance_eval(&action)
      @state = @state_stack.pop || @start_state
      action = @state.on_enter and instance_eval(&action)
    end
  end
  
  
  def fetch_state(name)
    @states.fetch(name) do
      # TODO: make this more informative
      raise("this lexer has no state named %p" % name)
    end
  end
  
  def match
    @scanner.eos? and return nil
    for rule in @state.rules
      if text = rule.match(@scanner)
        matched!(rule, text)
        return true
      end
    end
    match_failed!
  end
  
  def matched!(rule, text)
    emit_token(rule.name, text, rule.channel)
    make_transition(rule.transition, rule.target_state)
    action = rule.action and instance_eval(&action)
  end
  
  def match_failed!
    if action = @state.on_failure
      instance_eval(&action)
    else
      error = LexerError.new(self)
      error.set_backtrace(caller)
      raise(error)
    end
  end
  private :make_transition, :matched!, :match_failed!

end
end

