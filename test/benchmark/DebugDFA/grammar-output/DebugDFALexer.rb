#!/usr/bin/env ruby
# 
# generated using ANTLR Version: 3.2 Oct 27, 2009 04:48:59
# input grammar file: ./test/benchmark/DebugDFA/DebugDFA.g
# generated at: 2009-10-28 23:39:44

this_directory = File.expand_path( File.dirname( __FILE__ ) )
$:.unshift( this_directory ) unless $:.include?( this_directory )

begin
  require 'rubygems'
  gem 'antlr3'
rescue LoadError
  # ignore load error and assume antlr3.rb is in the load path already
end

require 'antlr3'


module DebugDFA
  # TokenData defines all of the token type integer values
  # as constants, which will be included in all 
  # ANTLR-generated recognizers.
  const_defined?(:TokenData) or TokenData = ANTLR3::TokenScheme.new

  module TokenData

    # define the token constants
    define_tokens(:WS => 7, :INT => 5, :BANG => 6, :ID => 4, :EOF => -1)
  end


  class Lexer < ANTLR3::Lexer
    @grammar_home = DebugDFA
    include TokenData

    begin
      generated_using('./test/benchmark/DebugDFA/DebugDFA.g', '3.2 Oct 27, 2009 04:48:59')
    rescue NoMethodError => error
      error.name.to_sym == :generated_using or raise
    end
    
    RULE_NAMES   = ["ID", "INT", "BANG", "WS"].freeze
    RULE_METHODS = [:id!, :int!, :bang!, :ws!].freeze

    
    def initialize(input=nil, options = {})
      super(input, options)

    end
    
    # - - - - - - - - - - - lexer rules - - - - - - - - - - - -
    # lexer rule id! (ID)
    # (in ./test/benchmark/DebugDFA/DebugDFA.g)
    def id!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 1)

      type = ID
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 8:6: ( 'a' .. 'z' )+
      # at file 8:6: ( 'a' .. 'z' )+
      match_count_1 = 0
      loop do
        alt_1 = 2
        look_1_0 = @input.peek(1)

        if (look_1_0.between?(?a, ?z)) 
          alt_1 = 1

        end
        case alt_1
        when 1
          # at line 8:6: 'a' .. 'z'
          match_range(?a, ?z)

        else
          match_count_1 > 0 and break
          eee = EarlyExit(1)


          raise eee
        end
        match_count_1 += 1
      end


      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 1)

    end

    # lexer rule int! (INT)
    # (in ./test/benchmark/DebugDFA/DebugDFA.g)
    def int!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 2)

      type = INT
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 9:7: ( '0' .. '9' )+
      # at file 9:7: ( '0' .. '9' )+
      match_count_2 = 0
      loop do
        alt_2 = 2
        look_2_0 = @input.peek(1)

        if (look_2_0.between?(?0, ?9)) 
          alt_2 = 1

        end
        case alt_2
        when 1
          # at line 9:7: '0' .. '9'
          match_range(?0, ?9)

        else
          match_count_2 > 0 and break
          eee = EarlyExit(2)


          raise eee
        end
        match_count_2 += 1
      end


      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 2)

    end

    # lexer rule bang! (BANG)
    # (in ./test/benchmark/DebugDFA/DebugDFA.g)
    def bang!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 3)

      type = BANG
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 10:8: '!'
      match(?!)

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 3)

    end

    # lexer rule ws! (WS)
    # (in ./test/benchmark/DebugDFA/DebugDFA.g)
    def ws!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 4)

      type = WS
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 11:6: ( ' ' | '\\n' )
      if @input.peek(1) == ?\n || @input.peek(1) == ?\s
        @input.consume
      else
        mse = MismatchedSet(nil)
        recover(mse)
        raise mse
      end


      # --> action
      channel=HIDDEN;
      # <-- action

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 4)

    end

    # main rule used to study the input at the current position,
    # and choose the proper lexer rule to call in order to
    # fetch the next token
    # 
    # usually, you don't make direct calls to this method,
    # but instead use the next_token method, which will
    # build and emit the actual next token
    def token!
      # at line 1:8: ( ID | INT | BANG | WS )
      alt_3 = 4
      case look_3 = @input.peek(1)
      when ?a, ?b, ?c, ?d, ?e, ?f, ?g, ?h, ?i, ?j, ?k, ?l, ?m, ?n, ?o, ?p, ?q, ?r, ?s, ?t, ?u, ?v, ?w, ?x, ?y, ?z then alt_3 = 1
      when ?0, ?1, ?2, ?3, ?4, ?5, ?6, ?7, ?8, ?9 then alt_3 = 2
      when ?! then alt_3 = 3
      when ?\n, ?\s then alt_3 = 4
      else
        nvae = NoViableAlternative("", 3, 0)
        raise nvae
      end
      case alt_3
      when 1
        # at line 1:10: ID
        id!

      when 2
        # at line 1:13: INT
        int!

      when 3
        # at line 1:17: BANG
        bang!

      when 4
        # at line 1:22: WS
        ws!

      end
    end

  end # class Lexer < ANTLR3::Lexer
end

if __FILE__ == $0 and ARGV.first != '--'
  main = ANTLR3::Main::LexerMain.new(DebugDFA::Lexer)
  main.execute(ARGV)
end