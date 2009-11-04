#!/usr/bin/ruby
# encoding: utf-8

=begin      ::about::
author:     Kyle Yetter <kcy5b@yahoo.com>
created on: June 07, 2009
purpose:    (program | library | utility script | ?)
summary:    
loads:      files required by this
autoloads:  autoload entries in this (e.g. YAML(yaml))
=end

class CommonLexer < Lexer
  extend DSL
  
  attr_reader :lexer
  attr_accessor :channel
  
  def initialize(text, options = {})
    super
    @rules = self.class.rules
  end
  
  def next(tune = true)
    @scanner.eos? and return nil
    for rule in rules
      text = rule.match(@scanner) and return matched!(rule, text, tune)
    end
    match_failed!
  end
  
  def matched!(rule, text, tune)
    token = Token.new(@tokens.length, rule.name, text, @location, rule.channel)
    @tokens << token
    @location += text
    action = rule.action and instance_eval(&action)
    filter = tune && @channel != token.channel
    return(filter ? self.next(tune) : token)
  end
  
  def match_failed!
    error = LexerError.new(self)
    error.set_backtrace(caller)
    raise(error)
  end
  
  private :match_failed!, :matched!
  
end
__END__

