#!/usr/bin/env ruby
# 
# generated using ANTLR Version: 3.2 Oct 17, 2009 11:23:44
# input grammar file: Arithmetic.g
# generated at: 2009-10-24 11:47:24

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
    define_tokens(:EXPONENT => 9, :WS => 10, :T__16 => 16, :T__15 => 15, 
                  :DECIMAL => 6, :T__17 => 17, :T__12 => 12, :T__11 => 11, 
                  :T__14 => 14, :T__13 => 13, :OCTAL => 7, :HEXADECIMAL => 5, 
                  :FLOAT => 4, :BINARY => 8, :EOF => -1)

    # register the proper human-readable name or literal value
    # for each token type
    #
    # this is necessary because anonymous tokens, which are
    # created from literal values in the grammar, do not
    # have descriptive names
    register_names("FLOAT", "HEXADECIMAL", "DECIMAL", "OCTAL", "BINARY", 
                   "EXPONENT", "WS", "';'", "'+'", "'-'", "'*'", "'/'", 
                   "'('", "')'")
  end

  class Parser < ANTLR3::Parser
    @grammar_home = Arithmetic

    RULE_METHODS = [:expressions, :add, :mult, :value, :synpred3_Arithmetic, 
                    :synpred6_Arithmetic].freeze


    include TokenData

    generated_using("Arithmetic.g", "3.2 Oct 17, 2009 11:23:44")

    def initialize(input, options = {})
      super(input, options)


    end
    # - - - - - - - - - - - - Rules - - - - - - - - - - - - -

    # parser rule expressions
    # 
    # (in Arithmetic.g)
    # 7:1: expressions : add ( ';' add )* ;
    def expressions
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 1)

      begin
        # at line 8:9: add ( ';' add )*
        @state.following.push(TOKENS_FOLLOWING_add_IN_expressions_39)
        add
        @state.following.pop
        # at line 8:13: ( ';' add )*
        loop do  #loop 1
          alt_1 = 2
          look_1_0 = @input.peek(1)

          if (look_1_0 == T__11) 
            alt_1 = 1

          end
          case alt_1
          when 1
            # at line 8:14: ';' add
            match(T__11, TOKENS_FOLLOWING_T__11_IN_expressions_42)
            @state.following.push(TOKENS_FOLLOWING_add_IN_expressions_44)
            add
            @state.following.pop

          else
            break #loop 1
          end
        end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 1)

      end
      
      return 
    end


    # parser rule add
    # 
    # (in Arithmetic.g)
    # 11:1: add : ( mult ( '+' mult )* | mult ( '-' mult )* );
    def add
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 2)

      begin
        # at line 11:6: ( mult ( '+' mult )* | mult ( '-' mult )* )
        alt_4 = 2
        case look_4 = @input.peek(1)
        when FLOAT then look_4_1 = @input.peek(2)

        if (syntactic_predicate?(:synpred_3_arithmetic!)) 
          alt_4 = 1
        elsif (true) 
          alt_4 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 4, 1)
          raise nvae
        end
        when HEXADECIMAL then look_4_2 = @input.peek(2)

        if (syntactic_predicate?(:synpred_3_arithmetic!)) 
          alt_4 = 1
        elsif (true) 
          alt_4 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 4, 2)
          raise nvae
        end
        when DECIMAL then look_4_3 = @input.peek(2)

        if (syntactic_predicate?(:synpred_3_arithmetic!)) 
          alt_4 = 1
        elsif (true) 
          alt_4 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 4, 3)
          raise nvae
        end
        when OCTAL then look_4_4 = @input.peek(2)

        if (syntactic_predicate?(:synpred_3_arithmetic!)) 
          alt_4 = 1
        elsif (true) 
          alt_4 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 4, 4)
          raise nvae
        end
        when BINARY then look_4_5 = @input.peek(2)

        if (syntactic_predicate?(:synpred_3_arithmetic!)) 
          alt_4 = 1
        elsif (true) 
          alt_4 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 4, 5)
          raise nvae
        end
        when T__16 then look_4_6 = @input.peek(2)

        if (syntactic_predicate?(:synpred_3_arithmetic!)) 
          alt_4 = 1
        elsif (true) 
          alt_4 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 4, 6)
          raise nvae
        end
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          nvae = NoViableAlternative("", 4, 0)
          raise nvae
        end
        case alt_4
        when 1
          # at line 11:8: mult ( '+' mult )*
          @state.following.push(TOKENS_FOLLOWING_mult_IN_add_62)
          mult
          @state.following.pop
          # at line 11:13: ( '+' mult )*
          loop do  #loop 2
            alt_2 = 2
            look_2_0 = @input.peek(1)

            if (look_2_0 == T__12) 
              alt_2 = 1

            end
            case alt_2
            when 1
              # at line 11:15: '+' mult
              match(T__12, TOKENS_FOLLOWING_T__12_IN_add_66)
              @state.following.push(TOKENS_FOLLOWING_mult_IN_add_68)
              mult
              @state.following.pop

            else
              break #loop 2
            end
          end

        when 2
          # at line 12:9: mult ( '-' mult )*
          @state.following.push(TOKENS_FOLLOWING_mult_IN_add_80)
          mult
          @state.following.pop
          # at line 12:14: ( '-' mult )*
          loop do  #loop 3
            alt_3 = 2
            look_3_0 = @input.peek(1)

            if (look_3_0 == T__13) 
              alt_3 = 1

            end
            case alt_3
            when 1
              # at line 12:16: '-' mult
              match(T__13, TOKENS_FOLLOWING_T__13_IN_add_84)
              @state.following.push(TOKENS_FOLLOWING_mult_IN_add_86)
              mult
              @state.following.pop

            else
              break #loop 3
            end
          end

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 2)

      end
      
      return 
    end


    # parser rule mult
    # 
    # (in Arithmetic.g)
    # 15:1: mult : ( value ( '*' value )* | value ( '/' value )* );
    def mult
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 3)

      begin
        # at line 15:6: ( value ( '*' value )* | value ( '/' value )* )
        alt_7 = 2
        case look_7 = @input.peek(1)
        when FLOAT then look_7_1 = @input.peek(2)

        if (syntactic_predicate?(:synpred_6_arithmetic!)) 
          alt_7 = 1
        elsif (true) 
          alt_7 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 7, 1)
          raise nvae
        end
        when HEXADECIMAL then look_7_2 = @input.peek(2)

        if (syntactic_predicate?(:synpred_6_arithmetic!)) 
          alt_7 = 1
        elsif (true) 
          alt_7 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 7, 2)
          raise nvae
        end
        when DECIMAL then look_7_3 = @input.peek(2)

        if (syntactic_predicate?(:synpred_6_arithmetic!)) 
          alt_7 = 1
        elsif (true) 
          alt_7 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 7, 3)
          raise nvae
        end
        when OCTAL then look_7_4 = @input.peek(2)

        if (syntactic_predicate?(:synpred_6_arithmetic!)) 
          alt_7 = 1
        elsif (true) 
          alt_7 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 7, 4)
          raise nvae
        end
        when BINARY then look_7_5 = @input.peek(2)

        if (syntactic_predicate?(:synpred_6_arithmetic!)) 
          alt_7 = 1
        elsif (true) 
          alt_7 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 7, 5)
          raise nvae
        end
        when T__16 then look_7_6 = @input.peek(2)

        if (syntactic_predicate?(:synpred_6_arithmetic!)) 
          alt_7 = 1
        elsif (true) 
          alt_7 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 7, 6)
          raise nvae
        end
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          nvae = NoViableAlternative("", 7, 0)
          raise nvae
        end
        case alt_7
        when 1
          # at line 15:8: value ( '*' value )*
          @state.following.push(TOKENS_FOLLOWING_value_IN_mult_103)
          value
          @state.following.pop
          # at line 15:14: ( '*' value )*
          loop do  #loop 5
            alt_5 = 2
            look_5_0 = @input.peek(1)

            if (look_5_0 == T__14) 
              alt_5 = 1

            end
            case alt_5
            when 1
              # at line 15:16: '*' value
              match(T__14, TOKENS_FOLLOWING_T__14_IN_mult_107)
              @state.following.push(TOKENS_FOLLOWING_value_IN_mult_109)
              value
              @state.following.pop

            else
              break #loop 5
            end
          end

        when 2
          # at line 16:9: value ( '/' value )*
          @state.following.push(TOKENS_FOLLOWING_value_IN_mult_121)
          value
          @state.following.pop
          # at line 16:15: ( '/' value )*
          loop do  #loop 6
            alt_6 = 2
            look_6_0 = @input.peek(1)

            if (look_6_0 == T__15) 
              alt_6 = 1

            end
            case alt_6
            when 1
              # at line 16:17: '/' value
              match(T__15, TOKENS_FOLLOWING_T__15_IN_mult_125)
              @state.following.push(TOKENS_FOLLOWING_value_IN_mult_127)
              value
              @state.following.pop

            else
              break #loop 6
            end
          end

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 3)

      end
      
      return 
    end


    # parser rule value
    # 
    # (in Arithmetic.g)
    # 19:1: value : ( FLOAT | HEXADECIMAL | DECIMAL | OCTAL | BINARY | '(' add ')' );
    def value
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 4)

      begin
        # at line 19:6: ( FLOAT | HEXADECIMAL | DECIMAL | OCTAL | BINARY | '(' add ')' )
        alt_8 = 6
        case look_8 = @input.peek(1)
        when FLOAT then alt_8 = 1
        when HEXADECIMAL then alt_8 = 2
        when DECIMAL then alt_8 = 3
        when OCTAL then alt_8 = 4
        when BINARY then alt_8 = 5
        when T__16 then alt_8 = 6
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          nvae = NoViableAlternative("", 8, 0)
          raise nvae
        end
        case alt_8
        when 1
          # at line 19:8: FLOAT
          match(FLOAT, TOKENS_FOLLOWING_FLOAT_IN_value_143)

        when 2
          # at line 20:9: HEXADECIMAL
          match(HEXADECIMAL, TOKENS_FOLLOWING_HEXADECIMAL_IN_value_153)

        when 3
          # at line 21:9: DECIMAL
          match(DECIMAL, TOKENS_FOLLOWING_DECIMAL_IN_value_163)

        when 4
          # at line 22:9: OCTAL
          match(OCTAL, TOKENS_FOLLOWING_OCTAL_IN_value_173)

        when 5
          # at line 23:9: BINARY
          match(BINARY, TOKENS_FOLLOWING_BINARY_IN_value_183)

        when 6
          # at line 24:9: '(' add ')'
          match(T__16, TOKENS_FOLLOWING_T__16_IN_value_193)
          @state.following.push(TOKENS_FOLLOWING_add_IN_value_195)
          add
          @state.following.pop
          match(T__17, TOKENS_FOLLOWING_T__17_IN_value_197)

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 4)

      end
      
      return 
    end

    # parser rule synpred_3_arithmetic! (synpred3_Arithmetic)
    # 
    # (in Arithmetic.g)
    # 11:8: synpred3_Arithmetic : mult ( '+' mult )* ;
    def synpred_3_arithmetic!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 7)

      # at line 11:8: mult ( '+' mult )*
      @state.following.push(TOKENS_FOLLOWING_mult_IN_synpred3_Arithmetic_62)
      mult
      @state.following.pop
      # at line 11:13: ( '+' mult )*
      loop do  #loop 9
        alt_9 = 2
        look_9_0 = @input.peek(1)

        if (look_9_0 == T__12) 
          alt_9 = 1

        end
        case alt_9
        when 1
          # at line 11:15: '+' mult
          match(T__12, TOKENS_FOLLOWING_T__12_IN_synpred3_Arithmetic_66)
          @state.following.push(TOKENS_FOLLOWING_mult_IN_synpred3_Arithmetic_68)
          mult
          @state.following.pop

        else
          break #loop 9
        end
      end

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 7)

    end
    # parser rule synpred_6_arithmetic! (synpred6_Arithmetic)
    # 
    # (in Arithmetic.g)
    # 15:8: synpred6_Arithmetic : value ( '*' value )* ;
    def synpred_6_arithmetic!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 10)

      # at line 15:8: value ( '*' value )*
      @state.following.push(TOKENS_FOLLOWING_value_IN_synpred6_Arithmetic_103)
      value
      @state.following.pop
      # at line 15:14: ( '*' value )*
      loop do  #loop 10
        alt_10 = 2
        look_10_0 = @input.peek(1)

        if (look_10_0 == T__14) 
          alt_10 = 1

        end
        case alt_10
        when 1
          # at line 15:16: '*' value
          match(T__14, TOKENS_FOLLOWING_T__14_IN_synpred6_Arithmetic_107)
          @state.following.push(TOKENS_FOLLOWING_value_IN_synpred6_Arithmetic_109)
          value
          @state.following.pop

        else
          break #loop 10
        end
      end

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 10)

    end


    TOKENS_FOLLOWING_add_IN_expressions_39 = Set[1, 11]
    TOKENS_FOLLOWING_T__11_IN_expressions_42 = Set[4, 5, 6, 7, 8, 16]
    TOKENS_FOLLOWING_add_IN_expressions_44 = Set[1, 11]
    TOKENS_FOLLOWING_mult_IN_add_62 = Set[1, 12]
    TOKENS_FOLLOWING_T__12_IN_add_66 = Set[4, 5, 6, 7, 8, 16]
    TOKENS_FOLLOWING_mult_IN_add_68 = Set[1, 12]
    TOKENS_FOLLOWING_mult_IN_add_80 = Set[1, 13]
    TOKENS_FOLLOWING_T__13_IN_add_84 = Set[4, 5, 6, 7, 8, 16]
    TOKENS_FOLLOWING_mult_IN_add_86 = Set[1, 13]
    TOKENS_FOLLOWING_value_IN_mult_103 = Set[1, 14]
    TOKENS_FOLLOWING_T__14_IN_mult_107 = Set[4, 5, 6, 7, 8, 16]
    TOKENS_FOLLOWING_value_IN_mult_109 = Set[1, 14]
    TOKENS_FOLLOWING_value_IN_mult_121 = Set[1, 15]
    TOKENS_FOLLOWING_T__15_IN_mult_125 = Set[4, 5, 6, 7, 8, 16]
    TOKENS_FOLLOWING_value_IN_mult_127 = Set[1, 15]
    TOKENS_FOLLOWING_FLOAT_IN_value_143 = Set[1]
    TOKENS_FOLLOWING_HEXADECIMAL_IN_value_153 = Set[1]
    TOKENS_FOLLOWING_DECIMAL_IN_value_163 = Set[1]
    TOKENS_FOLLOWING_OCTAL_IN_value_173 = Set[1]
    TOKENS_FOLLOWING_BINARY_IN_value_183 = Set[1]
    TOKENS_FOLLOWING_T__16_IN_value_193 = Set[4, 5, 6, 7, 8, 16]
    TOKENS_FOLLOWING_add_IN_value_195 = Set[17]
    TOKENS_FOLLOWING_T__17_IN_value_197 = Set[1]
    TOKENS_FOLLOWING_mult_IN_synpred3_Arithmetic_62 = Set[1, 12]
    TOKENS_FOLLOWING_T__12_IN_synpred3_Arithmetic_66 = Set[4, 5, 6, 7, 8, 16]
    TOKENS_FOLLOWING_mult_IN_synpred3_Arithmetic_68 = Set[1, 12]
    TOKENS_FOLLOWING_value_IN_synpred6_Arithmetic_103 = Set[1, 14]
    TOKENS_FOLLOWING_T__14_IN_synpred6_Arithmetic_107 = Set[4, 5, 6, 7, 8, 16]
    TOKENS_FOLLOWING_value_IN_synpred6_Arithmetic_109 = Set[1, 14]

  end
end

if __FILE__ == $0 and ARGV.first != '--'
  main = ANTLR3::Main::ParserMain.new(Arithmetic::Parser, :lexer_class_name => "Arithmetic::Lexer")
  main.execute(ARGV)
end