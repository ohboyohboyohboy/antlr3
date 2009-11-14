#!/usr/bin/ruby
# encoding: utf-8

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
