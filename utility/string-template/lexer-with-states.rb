#!/usr/bin/ruby
# encoding: utf-8

class LexerWithStates < Lexer
  @state_map = {:global => []}
  @active_states = [:global]
  @start_state = nil
  
  class << self
    attr_accessor :active_states, :state_map, :start_state
    
    def start_in(state)
      @start_state = state.to_sym
    end
    
    def inherited(klass)
      super
      klass.active_states = []
      klass.state_map = @state_map.inject({}) do |map, (name, rules)|
        map[name] = rules.dup; map
      end
      klass.start_state = @start_state
    end
    
    
    
    
    def rule(name, pattern, options = {}, &action)
      pattern = Regexp.new(Regexp.escape(pattern.to_s)) unless pattern.is_a?(Regexp)
      name = name.to_s.to_sym unless name.is_a?(Symbol)
      channel = options[:channel] || :default
      action ||= options[:action]
      rule = RegexRule[name, channel, pattern, action]
      @rules << rule
      return rule
    end
    
    def delimited(name, char, *args, &action)
      name = name.to_s.to_sym unless name.is_a?(Symbol)
      open = char.to_s
      options = Hash === args.last ? args.pop : {}
      close = (args.pop || options[:close] || open).to_s
      unless args.empty?
        raise ArgumentError, (<<-END.here_flow! % [name, open, close, options, args] )
        | too many arguments: needs (name, open, close, options = {}, &action) or
        | (name, char, options = {}, &action); have name=%p, open=%p, close=%p,
        | options = %p, and don't know what to do with extra arguments %p
        END
      end
      
      channel = options[:channel] || :default
      escape = (options[:escape] || '\\')
      action ||= options[:action]
      
      rule = DelimiterRule[name, channel, open, close, escape, action]
      @rules << rule
      return rule
    end
    
    def nested(name, open, close, options = {}, &action)
      name = name.to_s.to_sym unless name.is_a?(Symbol)
      open = open.to_s
      close = close.to_s
      
      channel = options[:channel] || :default
      action ||= options[:action]
      
      rule = NestedDelimiterRule[name, channel, open, close, action]
      @rules << rule
      return rule
    end
    
    def keyword(text, options = {}, &action)
      pattern_source = Regexp.escape(text.to_s)
      pattern = /\b#{pattern_source}\b/
      name = (options[:name] || text.to_s.upcase)
      name = name.to_s.to_sym unless name.is_a?(Symbol)
      rule(name, pattern, options, &action)
    end
    
    def inherited(klass)
      klass.rules = @rules.dup
    end
    
    protected :rules=
  end
  
  attr_reader :scanner, :tokens, :location
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
  end
  
  def reset
    @scanner.pos = 0
    @location = @starting_line
    @tokens.clear
  end
  
  def next(tune = true)
    @scanner.eos? and return nil
    for rule in self.rules
      text = rule.match(@scanner) and return matched!(rule, text, tune)
    end
    match_failed!
  end
  
  def token
    @tokens.last
  end
  
  def matched!(rule, text, tune)
    token = Token.new(@tokens.length, rule.channel, rule.name, text, @location)
    @tokens << token
    @location += text
    action = rule.action and instance_eval(&action)
    filter = tune && @channel != token.channel
    return(filter ? self.next(tune) : token)
  end
  private :matched!
  
  def match_failed!
    error = LexerError.new(self)
    raise(error, caller)
  end
  
  private :match_failed!
  
  def [](*args)
    @tokens[*args]
  end
  
  def rules
    self.class.rules
  end
  
  def each(tune = true)
    block_given? or return enum_for(__method__)
    if tune
      @tokens.each { |token| yield(token) }
      while token = self.next
        yield(token)
      end
    else
    end
    return self
  end
  include Enumerable
  
end




