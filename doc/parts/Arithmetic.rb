#!/usr/bin/env ruby
# 
# generated using ANTLR Version: 3.2 Oct 17, 2009 11:23:44
# input grammar file: Arithmetic.g
# generated at: 2009-10-22 11:12:07

this_directory = File.expand_path( File.dirname( __FILE__ ) )
$:.unshift( this_directory ) unless $:.include?( this_directory )

begin
  require 'rubygems'
  gem 'antlr3'
rescue LoadError
end

require 'antlr3'


module Arithmetic
  # TokenData defines all of the token type integer values
  # as constants, which will be included in all 
  # ANTLR-generated recognizers.
  const_defined?(:TokenData) or TokenData = ANTLR3::TokenScheme.new

  module TokenData

    # define the token constants
    define_tokens(:EXPONENT => 5, :WS => 11, :DECIMAL => 6, :OPERATOR => 4, 
                  :OCTAL => 9, :HEXADECIMAL => 8, :FLOAT => 7, :BINARY => 10, 
                  :EOF => -1)
  end


  class Lexer < ANTLR3::Lexer
    @grammar_home = Arithmetic
    
    include TokenData

    begin
      generated_using('Arithmetic.g', '3.2 Oct 17, 2009 11:23:44')
    rescue NoMethodError => error
      error.name == :generated_using or raise
    end
    
    RULE_NAMES   = ["OPERATOR", "FLOAT", "EXPONENT", "HEXADECIMAL", "DECIMAL", 
                    "OCTAL", "BINARY", "WS"].freeze
    RULE_METHODS = [:operator!, :float!, :exponent!, :hexadecimal!, :decimal!, 
                    :octal!, :binary!, :ws!].freeze

    
    def initialize(input=nil, options = {})
      
      super(input, options)

    end
    
    # - - - - - - - - - - - lexer rules - - - - - - - - - - - -
    # lexer rule operator! (OPERATOR)
    # (in Arithmetic.g)
    def operator!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 1)

      type = OPERATOR
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 
      if @input.peek(1).between?(?*, ?+) || @input.peek(1) == ?- || @input.peek(1) == ?/
        @input.consume
      else
        mse = MismatchedSet(nil)
        recover(mse)
        raise mse
      end



      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 1)

    end

    # lexer rule float! (FLOAT)
    # (in Arithmetic.g)
    def float!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 2)

      type = FLOAT
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 11:3: ( ( '-' )? ( '0' .. '9' )+ '.' ( '0' .. '9' )+ ( EXPONENT )? | DECIMAL EXPONENT )
      alt_5 = 2
      alt_5 = @dfa5.predict(@input)
      case alt_5
      when 1
        # at line 11:5: ( '-' )? ( '0' .. '9' )+ '.' ( '0' .. '9' )+ ( EXPONENT )?
        # at line 11:5: ( '-' )?
        alt_1 = 2
        look_1_0 = @input.peek(1)

        if (look_1_0 == ?-) 
          alt_1 = 1
        end
        case alt_1
        when 1
          # at line 11:5: '-'
          match(?-)

        end
        # at file 11:10: ( '0' .. '9' )+
        match_count_2 = 0
        loop do
          alt_2 = 2
          look_2_0 = @input.peek(1)

          if (look_2_0.between?(?0, ?9)) 
            alt_2 = 1

          end
          case alt_2
          when 1
            # at line 11:11: '0' .. '9'
            match_range(?0, ?9)

          else
            match_count_2 > 0 and break
            eee = EarlyExit(2)


            raise eee
          end
          match_count_2 += 1
        end

        match(?.)
        # at file 11:26: ( '0' .. '9' )+
        match_count_3 = 0
        loop do
          alt_3 = 2
          look_3_0 = @input.peek(1)

          if (look_3_0.between?(?0, ?9)) 
            alt_3 = 1

          end
          case alt_3
          when 1
            # at line 11:27: '0' .. '9'
            match_range(?0, ?9)

          else
            match_count_3 > 0 and break
            eee = EarlyExit(3)


            raise eee
          end
          match_count_3 += 1
        end

        # at line 11:38: ( EXPONENT )?
        alt_4 = 2
        look_4_0 = @input.peek(1)

        if (look_4_0 == ?E || look_4_0 == ?e) 
          alt_4 = 1
        end
        case alt_4
        when 1
          # at line 11:38: EXPONENT
          exponent!

        end

      when 2
        # at line 12:5: DECIMAL EXPONENT
        decimal!
        exponent!

      end
      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 2)

    end

    # lexer rule exponent! (EXPONENT)
    # (in Arithmetic.g)
    def exponent!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 3)

      
      # - - - - main rule block - - - -
      # at line 17:5: ( 'e' | 'E' ) ( '-' )? DECIMAL
      if @input.peek(1) == ?E || @input.peek(1) == ?e
        @input.consume
      else
        mse = MismatchedSet(nil)
        recover(mse)
        raise mse
      end


      # at line 17:15: ( '-' )?
      alt_6 = 2
      look_6_0 = @input.peek(1)

      if (look_6_0 == ?-) 
        alt_6 = 1
      end
      case alt_6
      when 1
        # at line 17:15: '-'
        match(?-)

      end
      decimal!

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 3)

    end

    # lexer rule hexadecimal! (HEXADECIMAL)
    # (in Arithmetic.g)
    def hexadecimal!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 4)

      type = HEXADECIMAL
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 21:5: ( '-' )? '0x' ( 'a' .. 'f' | 'A' .. 'F' | '0' .. '9' )+
      # at line 21:5: ( '-' )?
      alt_7 = 2
      look_7_0 = @input.peek(1)

      if (look_7_0 == ?-) 
        alt_7 = 1
      end
      case alt_7
      when 1
        # at line 21:5: '-'
        match(?-)

      end
      match("0x")
      # at file 21:15: ( 'a' .. 'f' | 'A' .. 'F' | '0' .. '9' )+
      match_count_8 = 0
      loop do
        alt_8 = 2
        look_8_0 = @input.peek(1)

        if (look_8_0.between?(?0, ?9) || look_8_0.between?(?A, ?F) || look_8_0.between?(?a, ?f)) 
          alt_8 = 1

        end
        case alt_8
        when 1
          # at line 
          if @input.peek(1).between?(?0, ?9) || @input.peek(1).between?(?A, ?F) || @input.peek(1).between?(?a, ?f)
            @input.consume
          else
            mse = MismatchedSet(nil)
            recover(mse)
            raise mse
          end



        else
          match_count_8 > 0 and break
          eee = EarlyExit(8)


          raise eee
        end
        match_count_8 += 1
      end


      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 4)

    end

    # lexer rule decimal! (DECIMAL)
    # (in Arithmetic.g)
    def decimal!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 5)

      type = DECIMAL
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 25:5: ( '-' )? '1' .. '9' ( '0' .. '9' )*
      # at line 25:5: ( '-' )?
      alt_9 = 2
      look_9_0 = @input.peek(1)

      if (look_9_0 == ?-) 
        alt_9 = 1
      end
      case alt_9
      when 1
        # at line 25:5: '-'
        match(?-)

      end
      match_range(?1, ?9)
      # at line 25:20: ( '0' .. '9' )*
      loop do  #loop 10
        alt_10 = 2
        look_10_0 = @input.peek(1)

        if (look_10_0.between?(?0, ?9)) 
          alt_10 = 1

        end
        case alt_10
        when 1
          # at line 25:21: '0' .. '9'
          match_range(?0, ?9)

        else
          break #loop 10
        end
      end

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 5)

    end

    # lexer rule octal! (OCTAL)
    # (in Arithmetic.g)
    def octal!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 6)

      type = OCTAL
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 29:5: ( '-' )? '0' ( '0' .. '7' )*
      # at line 29:5: ( '-' )?
      alt_11 = 2
      look_11_0 = @input.peek(1)

      if (look_11_0 == ?-) 
        alt_11 = 1
      end
      case alt_11
      when 1
        # at line 29:5: '-'
        match(?-)

      end
      match(?0)
      # at line 29:14: ( '0' .. '7' )*
      loop do  #loop 12
        alt_12 = 2
        look_12_0 = @input.peek(1)

        if (look_12_0.between?(?0, ?7)) 
          alt_12 = 1

        end
        case alt_12
        when 1
          # at line 29:15: '0' .. '7'
          match_range(?0, ?7)

        else
          break #loop 12
        end
      end

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 6)

    end

    # lexer rule binary! (BINARY)
    # (in Arithmetic.g)
    def binary!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 7)

      type = BINARY
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 33:5: ( '-' )? '0b' ( '0' .. '1' )+
      # at line 33:5: ( '-' )?
      alt_13 = 2
      look_13_0 = @input.peek(1)

      if (look_13_0 == ?-) 
        alt_13 = 1
      end
      case alt_13
      when 1
        # at line 33:5: '-'
        match(?-)

      end
      match("0b")
      # at file 33:15: ( '0' .. '1' )+
      match_count_14 = 0
      loop do
        alt_14 = 2
        look_14_0 = @input.peek(1)

        if (look_14_0.between?(?0, ?1)) 
          alt_14 = 1

        end
        case alt_14
        when 1
          # at line 33:16: '0' .. '1'
          match_range(?0, ?1)

        else
          match_count_14 > 0 and break
          eee = EarlyExit(14)


          raise eee
        end
        match_count_14 += 1
      end


      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 7)

    end

    # lexer rule ws! (WS)
    # (in Arithmetic.g)
    def ws!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 8)

      type = WS
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 36:5: ( ' ' | '\\t' | '\\r' | '\\n' )+
      # at file 36:5: ( ' ' | '\\t' | '\\r' | '\\n' )+
      match_count_15 = 0
      loop do
        alt_15 = 2
        look_15_0 = @input.peek(1)

        if (look_15_0.between?(?\t, ?\n) || look_15_0 == ?\r || look_15_0 == ?\s) 
          alt_15 = 1

        end
        case alt_15
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
          match_count_15 > 0 and break
          eee = EarlyExit(15)


          raise eee
        end
        match_count_15 += 1
      end

      # --> action
       channel = HIDDEN 
      # <-- action

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 8)

    end

    # main rule used to study the input at the current position,
    # and choose the proper lexer rule to call in order to
    # fetch the next token
    # 
    # usually, you don't make direct calls to this method,
    # but instead use the next_token method, which will
    # build and emit the actual next token
    def token!
      # at line 1:8: ( OPERATOR | FLOAT | HEXADECIMAL | DECIMAL | OCTAL | BINARY | WS )
      alt_16 = 7
      alt_16 = @dfa16.predict(@input)
      case alt_16
      when 1
        # at line 1:10: OPERATOR
        operator!

      when 2
        # at line 1:19: FLOAT
        float!

      when 3
        # at line 1:25: HEXADECIMAL
        hexadecimal!

      when 4
        # at line 1:37: DECIMAL
        decimal!

      when 5
        # at line 1:45: OCTAL
        octal!

      when 6
        # at line 1:51: BINARY
        binary!

      when 7
        # at line 1:58: WS
        ws!

      end
    end

    
    # - - - - - - - - - - DFA definitions - - - - - - - - - - -
    class DFA5 < ANTLR3::DFA
      EOT = unpack(6, -1)
      EOF = unpack(6, -1)
      MIN = unpack(1, 45, 1, 48, 1, 46, 1, -1, 1, 46, 1, -1)
      MAX = unpack(2, 57, 1, 101, 1, -1, 1, 101, 1, -1)
      ACCEPT = unpack(3, -1, 1, 1, 1, -1, 1, 2)
      SPECIAL = unpack(6, -1)
      TRANSITION = [
        unpack(1, 1, 2, -1, 1, 3, 9, 2),
        unpack(1, 3, 9, 2),
        unpack(1, 3, 1, -1, 10, 4, 11, -1, 1, 5, 31, -1, 1, 5),
        unpack(),
        unpack(1, 3, 1, -1, 10, 4, 11, -1, 1, 5, 31, -1, 1, 5),
        unpack()
      ].freeze
      
      @decision = 5
      

      def description
        <<-'__dfa_description__'.strip!
          10:1: FLOAT : ( ( '-' )? ( '0' .. '9' )+ '.' ( '0' .. '9' )+ ( EXPONENT )? | DECIMAL EXPONENT );
        __dfa_description__
      end
    end
    class DFA16 < ANTLR3::DFA
      EOT = unpack(1, -1, 1, 2, 1, -1, 1, 8, 1, 12, 2, -1, 1, 8, 3, -1, 
                   1, 12, 1, -1)
      EOF = unpack(13, -1)
      MIN = unpack(1, 9, 1, 48, 1, -1, 2, 46, 2, -1, 1, 46, 3, -1, 1, 46, 
                   1, -1)
      MAX = unpack(2, 57, 1, -1, 1, 101, 1, 120, 2, -1, 1, 101, 3, -1, 1, 
                   57, 1, -1)
      ACCEPT = unpack(2, -1, 1, 1, 2, -1, 1, 7, 1, 2, 1, -1, 1, 4, 1, 3, 
                      1, 6, 1, -1, 1, 5)
      SPECIAL = unpack(13, -1)
      TRANSITION = [
        unpack(2, 5, 2, -1, 1, 5, 18, -1, 1, 5, 9, -1, 2, 2, 1, -1, 1, 1, 
               1, -1, 1, 2, 1, 4, 9, 3),
        unpack(1, 4, 9, 3),
        unpack(),
        unpack(1, 6, 1, -1, 10, 7, 11, -1, 1, 6, 31, -1, 1, 6),
        unpack(1, 6, 1, -1, 8, 11, 2, 6, 40, -1, 1, 10, 21, -1, 1, 9),
        unpack(),
        unpack(),
        unpack(1, 6, 1, -1, 10, 7, 11, -1, 1, 6, 31, -1, 1, 6),
        unpack(),
        unpack(),
        unpack(),
        unpack(1, 6, 1, -1, 8, 11, 2, 6),
        unpack()
      ].freeze
      
      @decision = 16
      

      def description
        <<-'__dfa_description__'.strip!
          1:1: Tokens : ( OPERATOR | FLOAT | HEXADECIMAL | DECIMAL | OCTAL | BINARY | WS );
        __dfa_description__
      end
    end

    
    private
    
    def initialize_dfas
      super rescue nil
      @dfa5 = DFA5.new(self, 5)
      @dfa16 = DFA16.new(self, 16)

    end
  end # class Lexer
end

if __FILE__ == $0 and ARGV.first != '--'
  main = ANTLR3::Main::LexerMain.new(Arithmetic::Lexer)
  main.execute(ARGV)
end