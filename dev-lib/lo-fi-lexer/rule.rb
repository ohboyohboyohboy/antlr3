#!/usr/bin/ruby
# encoding: utf-8

=begin      ::about::
author:     Kyle Yetter <kcy5b@yahoo.com>
created on: June 07, 2009
=end

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
