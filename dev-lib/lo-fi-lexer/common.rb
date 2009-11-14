#!/usr/bin/ruby
# encoding: utf-8

=begin      ::about::
author:     Kyle Yetter <kcy5b@yahoo.com>
created on: June 07, 2009
=end

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
