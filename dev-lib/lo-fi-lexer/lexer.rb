#!/usr/bin/ruby
# encoding: utf-8

=begin      ::about::
author:     Kyle Yetter <kcy5b@yahoo.com>
created on: June 07, 2009
=end

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
