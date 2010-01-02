#!/usr/bin/env ruby
#
# SearchExpression.g
# 
# Generated using ANTLR version: 3.2.1-SNAPSHOT Dec 18, 2009 04:29:28
# Ruby runtime library version: 1.2.6
# Input grammar file: SearchExpression.g
# Generated at: 2010-01-02 09:57:07
# 

# ~~~> start load path setup
this_directory = File.expand_path( File.dirname( __FILE__ ) )
$:.unshift( this_directory ) unless $:.include?( this_directory )

antlr_load_failed = proc do
  load_path = $LOAD_PATH.map { |dir| '  - ' << dir }.join( $/ )
  raise LoadError, <<-'END'.strip!
  
Failed to load the ANTLR3 runtime library (version 1.2.6):

Ensure the library has been installed on your system and is available
on the load path. If rubygems is available on your system, this can
be done with the command:
  
  gem install antlr3

Current load path:
#{ load_path }

  END
end

defined?(ANTLR3) or begin
  
  # 1: try to load the ruby antlr3 runtime library from the system path
  require 'antlr3'
  
rescue LoadError
  
  # 2: try to load rubygems if it isn't already loaded
  defined?(Gem) or begin
    require 'rubygems'
  rescue LoadError
    antlr_load_failed.call
  end
  
  # 3: try to activate the antlr3 gem
  begin
    Gem.activate( 'antlr3', '= 1.2.6' )
  rescue Gem::LoadError
    antlr_load_failed.call
  end
  
  require 'antlr3'
  
end
# <~~~ end load path setup


module SearchExpression
  # TokenData defines all of the token type integer values
  # as constants, which will be included in all 
  # ANTLR-generated recognizers.
  const_defined?(:TokenData) or TokenData = ANTLR3::TokenScheme.new

  module TokenData

    # define the token constants
    define_tokens(:CHUNK => 5, :REGEX => 7, :EOF => -1, :T__9 => 9, :T__19 => 19, 
                  :T__16 => 16, :WS => 8, :T__15 => 15, :T__18 => 18, :T__17 => 17, 
                  :SCOPE => 4, :T__12 => 12, :T__11 => 11, :T__14 => 14, 
                  :T__13 => 13, :T__10 => 10, :STRING => 6)
  end


  class Lexer < ANTLR3::Lexer
    @grammar_home = SearchExpression
    include TokenData

    begin
      generated_using( "SearchExpression.g", "3.2.1-SNAPSHOT Dec 18, 2009 04:29:28", "1.2.6" )
    rescue NoMethodError => error
      error.name.to_sym == :generated_using or raise
    end
    
    RULE_NAMES   = ["T__9", "T__10", "T__11", "T__12", "T__13", "T__14", 
                    "T__15", "T__16", "T__17", "T__18", "T__19", "CHUNK", 
                    "REGEX", "STRING", "WS"].freeze
    RULE_METHODS = [:t__9!, :t__10!, :t__11!, :t__12!, :t__13!, :t__14!, 
                    :t__15!, :t__16!, :t__17!, :t__18!, :t__19!, :chunk!, 
                    :regex!, :string!, :ws!].freeze

    
    def initialize(input=nil, options = {})
      super(input, options)

    end
    
    # - - - - - - - - - - - lexer rules - - - - - - - - - - - -
    # lexer rule t__9! (T__9)
    # (in SearchExpression.g)
    def t__9!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 1)

      type = T__9
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 7:8: 'and'
      match("and")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 1)

    end

    # lexer rule t__10! (T__10)
    # (in SearchExpression.g)
    def t__10!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 2)

      type = T__10
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 8:9: 'or'
      match("or")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 2)

    end

    # lexer rule t__11! (T__11)
    # (in SearchExpression.g)
    def t__11!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 3)

      type = T__11
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 9:9: 'xor'
      match("xor")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 3)

    end

    # lexer rule t__12! (T__12)
    # (in SearchExpression.g)
    def t__12!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 4)

      type = T__12
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 10:9: 'not'
      match("not")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 4)

    end

    # lexer rule t__13! (T__13)
    # (in SearchExpression.g)
    def t__13!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 5)

      type = T__13
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 11:9: ':'
      match(?:)

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 5)

    end

    # lexer rule t__14! (T__14)
    # (in SearchExpression.g)
    def t__14!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 6)

      type = T__14
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 12:9: '('
      match(?()

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 6)

    end

    # lexer rule t__15! (T__15)
    # (in SearchExpression.g)
    def t__15!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 7)

      type = T__15
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 13:9: ')'
      match(?))

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 7)

    end

    # lexer rule t__16! (T__16)
    # (in SearchExpression.g)
    def t__16!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 8)

      type = T__16
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 14:9: '['
      match(?[)

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 8)

    end

    # lexer rule t__17! (T__17)
    # (in SearchExpression.g)
    def t__17!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 9)

      type = T__17
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 15:9: ']'
      match(?])

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 9)

    end

    # lexer rule t__18! (T__18)
    # (in SearchExpression.g)
    def t__18!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 10)

      type = T__18
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 16:9: '{'
      match(?{)

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 10)

    end

    # lexer rule t__19! (T__19)
    # (in SearchExpression.g)
    def t__19!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 11)

      type = T__19
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 17:9: '}'
      match(?})

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 11)

    end

    # lexer rule chunk! (CHUNK)
    # (in SearchExpression.g)
    def chunk!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 12)

      type = CHUNK
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 39:7: ( 'a' .. 'z' | 'A' .. 'Z' | '0' .. '9' | '_' | '-' | '.' | ',' | '\\\\' . )+
      # at file 39:7: ( 'a' .. 'z' | 'A' .. 'Z' | '0' .. '9' | '_' | '-' | '.' | ',' | '\\\\' . )+
      match_count_1 = 0
      loop do
        alt_1 = 9
        alt_1 = @dfa1.predict(@input)
        case alt_1
        when 1
          # at line 39:8: 'a' .. 'z'
          match_range(?a, ?z)

        when 2
          # at line 39:21: 'A' .. 'Z'
          match_range(?A, ?Z)

        when 3
          # at line 39:34: '0' .. '9'
          match_range(?0, ?9)

        when 4
          # at line 39:47: '_'
          match(?_)

        when 5
          # at line 39:53: '-'
          match(?-)

        when 6
          # at line 39:59: '.'
          match(?.)

        when 7
          # at line 39:65: ','
          match(?,)

        when 8
          # at line 39:71: '\\\\' .
          match(?\\)
          match_any

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
      # trace_out(__method__, 12)

    end

    # lexer rule regex! (REGEX)
    # (in SearchExpression.g)
    def regex!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 13)

      type = REGEX
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 43:7: '/' ( '\\\\' . | ~ '/' )+ '/' ( 'i' | 'm' | 'x' )*
      match(?/)
      # at file 43:11: ( '\\\\' . | ~ '/' )+
      match_count_2 = 0
      loop do
        alt_2 = 3
        alt_2 = @dfa2.predict(@input)
        case alt_2
        when 1
          # at line 43:13: '\\\\' .
          match(?\\)
          match_any

        when 2
          # at line 43:22: ~ '/'
          if @input.peek(1).between?(0x0000, ?.) || @input.peek(1).between?(?0, 0x00FF)
            @input.consume
          else
            mse = MismatchedSet(nil)
            recover(mse)
            raise mse
          end



        else
          match_count_2 > 0 and break
          eee = EarlyExit(2)


          raise eee
        end
        match_count_2 += 1
      end

      match(?/)
      # at line 43:34: ( 'i' | 'm' | 'x' )*
      loop do  #loop 3
        alt_3 = 2
        look_3_0 = @input.peek(1)

        if (look_3_0 == ?i || look_3_0 == ?m || look_3_0 == ?x) 
          alt_3 = 1

        end
        case alt_3
        when 1
          # at line 
          if @input.peek(1) == ?i || @input.peek(1) == ?m || @input.peek(1) == ?x
            @input.consume
          else
            mse = MismatchedSet(nil)
            recover(mse)
            raise mse
          end



        else
          break #loop 3
        end
      end

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 13)

    end

    # lexer rule string! (STRING)
    # (in SearchExpression.g)
    def string!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 14)

      type = STRING
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 47:5: ( '\"' (~ ( '\"' | '\\\\' ) | '\\\\' . )* '\"' | '\\'' (~ ( '\\'' | '\\\\' ) | '\\\\' . )* '\\'' )
      alt_6 = 2
      look_6_0 = @input.peek(1)

      if (look_6_0 == ?") 
        alt_6 = 1
      elsif (look_6_0 == ?\') 
        alt_6 = 2
      else
      nvae = NoViableAlternative("", 6, 0)
        raise nvae
      end
      case alt_6
      when 1
        # at line 47:7: '\"' (~ ( '\"' | '\\\\' ) | '\\\\' . )* '\"'
        match(?")
        # at line 47:11: (~ ( '\"' | '\\\\' ) | '\\\\' . )*
        loop do  #loop 4
          alt_4 = 3
          look_4_0 = @input.peek(1)

          if (look_4_0.between?(0x0000, ?!) || look_4_0.between?(?#, ?[) || look_4_0.between?(?], 0xFFFF)) 
            alt_4 = 1
          elsif (look_4_0 == ?\\) 
            alt_4 = 2

          end
          case alt_4
          when 1
            # at line 47:13: ~ ( '\"' | '\\\\' )
            if @input.peek(1).between?(0x0000, ?!) || @input.peek(1).between?(?#, ?[) || @input.peek(1).between?(?], 0x00FF)
              @input.consume
            else
              mse = MismatchedSet(nil)
              recover(mse)
              raise mse
            end



          when 2
            # at line 47:27: '\\\\' .
            match(?\\)
            match_any

          else
            break #loop 4
          end
        end
        match(?")

      when 2
        # at line 48:7: '\\'' (~ ( '\\'' | '\\\\' ) | '\\\\' . )* '\\''
        match(?\')
        # at line 48:12: (~ ( '\\'' | '\\\\' ) | '\\\\' . )*
        loop do  #loop 5
          alt_5 = 3
          look_5_0 = @input.peek(1)

          if (look_5_0.between?(0x0000, ?&) || look_5_0.between?(?(, ?[) || look_5_0.between?(?], 0xFFFF)) 
            alt_5 = 1
          elsif (look_5_0 == ?\\) 
            alt_5 = 2

          end
          case alt_5
          when 1
            # at line 48:14: ~ ( '\\'' | '\\\\' )
            if @input.peek(1).between?(0x0000, ?&) || @input.peek(1).between?(?(, ?[) || @input.peek(1).between?(?], 0x00FF)
              @input.consume
            else
              mse = MismatchedSet(nil)
              recover(mse)
              raise mse
            end



          when 2
            # at line 48:29: '\\\\' .
            match(?\\)
            match_any

          else
            break #loop 5
          end
        end
        match(?\')

      end
      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 14)

    end

    # lexer rule ws! (WS)
    # (in SearchExpression.g)
    def ws!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 15)

      type = WS
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 51:7: ( ' ' | '\\t' | '\\n' | '\\r' )+
      # at file 51:7: ( ' ' | '\\t' | '\\n' | '\\r' )+
      match_count_7 = 0
      loop do
        alt_7 = 2
        look_7_0 = @input.peek(1)

        if (look_7_0.between?(?\t, ?\n) || look_7_0 == ?\r || look_7_0 == ?\s) 
          alt_7 = 1

        end
        case alt_7
        when 1
          # at line 
          if @input.peek(1).between?(?\t, ?\n) || @input.peek(1) == ?\r || @input.peek(1) == ?\s
            @input.consume
          else
            mse = MismatchedSet(nil)
            recover(mse)
            raise mse
          end



        else
          match_count_7 > 0 and break
          eee = EarlyExit(7)


          raise eee
        end
        match_count_7 += 1
      end

      # --> action
       channel = HIDDEN 
      # <-- action

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 15)

    end

    # main rule used to study the input at the current position,
    # and choose the proper lexer rule to call in order to
    # fetch the next token
    # 
    # usually, you don't make direct calls to this method,
    # but instead use the next_token method, which will
    # build and emit the actual next token
    def token!
      # at line 1:8: ( T__9 | T__10 | T__11 | T__12 | T__13 | T__14 | T__15 | T__16 | T__17 | T__18 | T__19 | CHUNK | REGEX | STRING | WS )
      alt_8 = 15
      alt_8 = @dfa8.predict(@input)
      case alt_8
      when 1
        # at line 1:10: T__9
        t__9!

      when 2
        # at line 1:15: T__10
        t__10!

      when 3
        # at line 1:21: T__11
        t__11!

      when 4
        # at line 1:27: T__12
        t__12!

      when 5
        # at line 1:33: T__13
        t__13!

      when 6
        # at line 1:39: T__14
        t__14!

      when 7
        # at line 1:45: T__15
        t__15!

      when 8
        # at line 1:51: T__16
        t__16!

      when 9
        # at line 1:57: T__17
        t__17!

      when 10
        # at line 1:63: T__18
        t__18!

      when 11
        # at line 1:69: T__19
        t__19!

      when 12
        # at line 1:75: CHUNK
        chunk!

      when 13
        # at line 1:81: REGEX
        regex!

      when 14
        # at line 1:87: STRING
        string!

      when 15
        # at line 1:94: WS
        ws!

      end
    end

    
    # - - - - - - - - - - DFA definitions - - - - - - - - - - -
    class DFA1 < ANTLR3::DFA
      EOT = unpack(1, 1, 9, -1)
      EOF = unpack(10, -1)
      MIN = unpack(1, 44, 9, -1)
      MAX = unpack(1, 122, 9, -1)
      ACCEPT = unpack(1, -1, 1, 9, 1, 1, 1, 2, 1, 3, 1, 4, 1, 5, 1, 6, 1, 
                      7, 1, 8)
      SPECIAL = unpack(10, -1)
      TRANSITION = [
        unpack(1, 8, 1, 6, 1, 7, 1, -1, 10, 4, 7, -1, 26, 3, 1, -1, 1, 9, 
               2, -1, 1, 5, 1, -1, 26, 2),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack()
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 1
      

      def description
        <<-'__dfa_description__'.strip!
          ()+ loopback of 39:7: ( 'a' .. 'z' | 'A' .. 'Z' | '0' .. '9' | '_' | '-' | '.' | ',' | '\\\\' . )+
        __dfa_description__
      end
    end
    class DFA2 < ANTLR3::DFA
      EOT = unpack(4, -1, 1, 3, 2, -1, 1, 3)
      EOF = unpack(8, -1)
      MIN = unpack(1, 0, 1, -1, 1, 0, 1, -1, 1, 0, 2, -1, 1, 0)
      MAX = unpack(1, -1, 1, -1, 1, -1, 1, -1, 1, -1, 2, -1, 1, -1)
      ACCEPT = unpack(1, -1, 1, 3, 1, -1, 1, 2, 1, -1, 2, 1, 1, -1)
      SPECIAL = unpack(1, 2, 1, -1, 1, 1, 1, -1, 1, 0, 2, -1, 1, 3)
      TRANSITION = [
        unpack(47, 3, 1, 1, 44, 3, 1, 2, 65443, 3),
        unpack(),
        unpack(47, 6, 1, 4, 44, 6, 1, 5, 65443, 6),
        unpack(),
        unpack(105, 6, 1, 7, 3, 6, 1, 7, 10, 6, 1, 7, 65415, 6),
        unpack(),
        unpack(),
        unpack(105, 6, 1, 7, 3, 6, 1, 7, 10, 6, 1, 7, 65415, 6)
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 2
      

      def description
        <<-'__dfa_description__'.strip!
          ()+ loopback of 43:11: ( '\\\\' . | ~ '/' )+
        __dfa_description__
      end
    end
    class DFA8 < ANTLR3::DFA
      EOT = unpack(1, -1, 4, 12, 11, -1, 1, 12, 1, 21, 2, 12, 1, 24, 1, 
                   -1, 1, 25, 1, 26, 3, -1)
      EOF = unpack(27, -1)
      MIN = unpack(1, 9, 1, 110, 1, 114, 2, 111, 11, -1, 1, 100, 1, 44, 
                   1, 114, 1, 116, 1, 44, 1, -1, 2, 44, 3, -1)
      MAX = unpack(1, 125, 1, 110, 1, 114, 2, 111, 11, -1, 1, 100, 1, 122, 
                   1, 114, 1, 116, 1, 122, 1, -1, 2, 122, 3, -1)
      ACCEPT = unpack(5, -1, 1, 5, 1, 6, 1, 7, 1, 8, 1, 9, 1, 10, 1, 11, 
                      1, 12, 1, 13, 1, 14, 1, 15, 5, -1, 1, 2, 2, -1, 1, 
                      1, 1, 3, 1, 4)
      SPECIAL = unpack(27, -1)
      TRANSITION = [
        unpack(2, 15, 2, -1, 1, 15, 18, -1, 1, 15, 1, -1, 1, 14, 4, -1, 
               1, 14, 1, 6, 1, 7, 2, -1, 3, 12, 1, 13, 10, 12, 1, 5, 6, 
               -1, 26, 12, 1, 8, 1, 12, 1, 9, 1, -1, 1, 12, 1, -1, 1, 1, 
               12, 12, 1, 4, 1, 2, 8, 12, 1, 3, 2, 12, 1, 10, 1, -1, 1, 
               11),
        unpack(1, 16),
        unpack(1, 17),
        unpack(1, 18),
        unpack(1, 19),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(1, 20),
        unpack(3, 12, 1, -1, 10, 12, 7, -1, 26, 12, 1, -1, 1, 12, 2, -1, 
                1, 12, 1, -1, 26, 12),
        unpack(1, 22),
        unpack(1, 23),
        unpack(3, 12, 1, -1, 10, 12, 7, -1, 26, 12, 1, -1, 1, 12, 2, -1, 
                1, 12, 1, -1, 26, 12),
        unpack(),
        unpack(3, 12, 1, -1, 10, 12, 7, -1, 26, 12, 1, -1, 1, 12, 2, -1, 
                1, 12, 1, -1, 26, 12),
        unpack(3, 12, 1, -1, 10, 12, 7, -1, 26, 12, 1, -1, 1, 12, 2, -1, 
                1, 12, 1, -1, 26, 12),
        unpack(),
        unpack(),
        unpack()
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 8
      

      def description
        <<-'__dfa_description__'.strip!
          1:1: Tokens : ( T__9 | T__10 | T__11 | T__12 | T__13 | T__14 | T__15 | T__16 | T__17 | T__18 | T__19 | CHUNK | REGEX | STRING | WS );
        __dfa_description__
      end
    end

    
    private
    
    def initialize_dfas
      super rescue nil
      @dfa1 = DFA1.new(self, 1)
      @dfa2 = DFA2.new(self, 2) do |s|
        case s
        when 0
          look_2_4 = @input.peek
          s = -1
          if (look_2_4 == ?i || look_2_4 == ?m || look_2_4 == ?x)
            s = 7
          elsif (look_2_4.between?(0x0000, ?h) || look_2_4.between?(?j, ?l) || look_2_4.between?(?n, ?w) || look_2_4.between?(?y, 0xFFFF))
            s = 6
          else
            s = 3
          end

        when 1
          look_2_2 = @input.peek
          s = -1
          if (look_2_2 == ?/)
            s = 4
          elsif (look_2_2 == ?\\)
            s = 5
          elsif (look_2_2.between?(0x0000, ?.) || look_2_2.between?(?0, ?[) || look_2_2.between?(?], 0xFFFF))
            s = 6
          end

        when 2
          look_2_0 = @input.peek
          s = -1
          if (look_2_0 == ?/)
            s = 1
          elsif (look_2_0 == ?\\)
            s = 2
          elsif (look_2_0.between?(0x0000, ?.) || look_2_0.between?(?0, ?[) || look_2_0.between?(?], 0xFFFF))
            s = 3
          end

        when 3
          look_2_7 = @input.peek
          s = -1
          if (look_2_7.between?(0x0000, ?h) || look_2_7.between?(?j, ?l) || look_2_7.between?(?n, ?w) || look_2_7.between?(?y, 0xFFFF))
            s = 6
          elsif (look_2_7 == ?i || look_2_7 == ?m || look_2_7 == ?x)
            s = 7
          else
            s = 3
          end

        end
        
        if s < 0
          nva = ANTLR3::Error::NoViableAlternative.new(@dfa2.description, 2, s, input)
          @dfa2.error(nva)
          raise nva
        end
        
        s
      end
      @dfa8 = DFA8.new(self, 8)

    end
  end # class Lexer < ANTLR3::Lexer

  at_exit { Lexer.main(ARGV) } if __FILE__ == $0
end

