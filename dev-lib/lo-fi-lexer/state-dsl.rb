#!/usr/bin/ruby
# encoding: utf-8

=begin      ::about::
author:     Kyle Yetter <kcy5b@yahoo.com>
created on: June 07, 2009
=end

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
