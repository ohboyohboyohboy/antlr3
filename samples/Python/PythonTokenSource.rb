#!/usr/bin/ruby
# encoding: utf-8

module Python
  unless defined?(TokenData)
    require 'PythonLexer'
    require 'PythonParser'
  end
  
  class TokenSource
    include ANTLR3::TokenSource
    include ANTLR3::Constants
    include TokenData
    
    def initialize(lexer)
      @lexer = lexer
      @indent_stack = []
      @eof = nil
      @token_queue = []
    end
    
    def next_token
      queue_tokens if @token_queue.empty? and @eof.nil?
      return @token_queue.shift || @eof
    end
    
    def queue_tokens
      begin
        t = fetch or return false
        @token_queue << t
      end until t.type == NEWLINE
      
      while t = fetch and t.hidden?
        # skip past things like comments
        @token_queue << t
      end
      
      if t.nil? # EOF
        if prior = (@token_queue.last || @eof)
          line = prior.line || 0
          column = prior.column + prior.text.to_s.length rescue -1
        else
          line, column = 0, -1
        end
        insert_indentation(0, line, column)
      elsif t.type == LEADING_WS
        t.channel = ANTLR3::HIDDEN_CHANNEL
        @token_queue << t
        width = measure(t.text)
        insert_indentation(width, t.line, t.column)
      else
        insert_indentation(0, t.line, t.column)
        @token_queue << t
      end
      return true
    end
    
    def insert_indentation(width, line, col)
      case width <=> current_indent
      when 1  # an indent
        @indent_stack.push(width)
        tk = Token.new(INDENT, DEFAULT, '')
        tk.line    = line
        tk.column  = col
        @token_queue << tk
      when -1 # a dedent
        begin
          @indent_stack.pop || break
          tk = Token.new(DEDENT, DEFAULT, '')
          tk.line = line
          tk.column = col
          @token_queue << tk
        end until current_indent <= width
      when 0  # same level
        # do nothing
      end
    end
    
    def current_indent
      @indent_stack.last || 0
    end
    
    def measure(space)
      size = 0
      space.each_byte do |char|
        case char
        when ?\s then size += 1
        when ?\t
          size += 8
          size -= size % 8
        else break
        end
      end
      return size
    end
    
    def fetch
      @eof and return nil
      t = @lexer.next_token
      if t.nil? or t.type == EOF
        @eof = t || EOFToken
        return nil
      end
      return t
    end
  end
end
