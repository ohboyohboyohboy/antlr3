#!/usr/bin/ruby
# encoding: utf-8

module ANTLR3

=begin rdoc ANTLR3::Main::InteractiveStringStream

A special stream used in the <b>interactive mode</b> of the Main scripts. It
uses Readline (if available) or standard IO#gets to fetch data on demand.

=end

class InteractiveStringStream < StringStream
  def initialize(options = {}, &block)
    @data = ''
    @size = @position = @column = @mark_depth = 0
    @line = 1
    @markers = []
    @initialized = @eof = false
    @last_marker = @name = nil
    @readline = block or raise(ArgumentError, "no block was provided")
    @name = options.fetch(:name, '(interactive)')
  end
  
  def <<(data)
    tail = data.to_s
    @size += tail.length
    @data << tail
  end
  
  def consume
    @position < @size and return(super)
    unless @eof
      readline
      consume
    end
  end
  
  def peek(i = 1)
    i.zero? and return 0
    i += 1 if i < 0
    index = @position + i - 1
    index < 0 and return 0
    
    if index < @size
      char = @data[index]
    elsif readline
      peek(i)
    else EOF
    end
  end
  
  def look(i = 1)
    peek(i).chr rescue EOF
  end
  
  alias >> peek
  
  def substring(start, stop)
    fill_through(stop)
    @data[start..stop]
  end
  
  private
  def fill_through(position)
    @eof and return
    if position < 0 then fill_out
    else readline until (@size > position or @eof)
    end
  end
  
  def readline
    @initialized = true
    unless @eof
      if line = @readline.call
        self << line.to_s
        return true
      else
        @eof = true
        return false
      end
    end
  end
  
  def fill_out
    @eof and return
    readline until @eof
  end
end

end
