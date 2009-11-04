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

__END__

