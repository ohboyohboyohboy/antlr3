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

    # register the proper human-readable name or literal value
    # for each token type
    #
    # this is necessary because anonymous tokens, which are
    # created from literal values in the grammar, do not
    # have descriptive names
    register_names("ID", "INT", "BANG", "WS")
  end


  class Parser < ANTLR3::Parser
    @grammar_home = DebugDFA
    include ANTLR3::Debug::ParserEvents

    RULE_METHODS = [:a, :b, :c].freeze


    include TokenData

    generated_using("./test/benchmark/DebugDFA/DebugDFA.g", "3.2 Oct 27, 2009 04:48:59")

    def initialize(input, options = {})
      super(input, options)


    end
    RULE_NAMES = [
      :invalid_rule, :a, :c, :b
    ].freeze
    # - - - - - - - - - - - - Rules - - - - - - - - - - - - -

    # parser rule a
    # 
    # (in ./test/benchmark/DebugDFA/DebugDFA.g)
    # 5:1: a : ( b | c ) EOF ;
    def a
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 1)

      in_rule(grammar_file_name, "a") do
        @debug_listener.location(5, 1)
        
        begin
          in_alternative(1)

          # at line 5:5: ( b | c ) EOF
          @debug_listener.location(5, 5)
          # at line 5:5: ( b | c )
          alt_1 = 2
          in_subrule(1) do
            in_decision(1) do
              begin
                @state.cyclic_decision = true
                alt_1 = @dfa1.predict(@input)
              rescue ANTLR3::Error::NoViableAlternative => nvae
                @debug_listener.recognition_exception(nvae)
                raise
              end
            end
            case alt_1
            when 1
              in_alternative(1)

              # at line 5:7: b
              @debug_listener.location(5, 7)
              @state.following.push(TOKENS_FOLLOWING_b_IN_a_22)
              b
              @state.following.pop

            when 2
              in_alternative(2)

              # at line 5:11: c
              @debug_listener.location(5, 11)
              @state.following.push(TOKENS_FOLLOWING_c_IN_a_26)
              c
              @state.following.pop

            end
          end
          @debug_listener.location(5, 15)
          match(EOF, TOKENS_FOLLOWING_EOF_IN_a_30)

        rescue ANTLR3::Error::RecognitionError => re
          report_error(re)
          recover(re)

        ensure
          # -> uncomment the next line to manually enable rule tracing
          # trace_out(__method__, 1)

        end
        
        @debug_listener.location(5, 18)
      end
      
      return 
    end


    # parser rule b
    # 
    # (in ./test/benchmark/DebugDFA/DebugDFA.g)
    # 6:1: b : ( ID )* INT ;
    def b
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 2)

      in_rule(grammar_file_name, "b") do
        @debug_listener.location(6, 1)
        
        begin
          in_alternative(1)

          # at line 6:5: ( ID )* INT
          @debug_listener.location(6, 5)
          # at line 6:5: ( ID )*
          in_subrule(2) do
            loop do  #loop 2
              alt_2 = 2
              in_decision(2) do
                look_2_0 = @input.peek(1)

                if (look_2_0 == ID) 
                  alt_2 = 1

                end
              end
              case alt_2
              when 1
                in_alternative(1)

                # at line 6:5: ID
                @debug_listener.location(6, 5)
                match(ID, TOKENS_FOLLOWING_ID_IN_b_37)

              else
                break #loop 2
              end
            end
          end
          @debug_listener.location(6, 9)
          match(INT, TOKENS_FOLLOWING_INT_IN_b_40)

        rescue ANTLR3::Error::RecognitionError => re
          report_error(re)
          recover(re)

        ensure
          # -> uncomment the next line to manually enable rule tracing
          # trace_out(__method__, 2)

        end
        
        @debug_listener.location(6, 12)
      end
      
      return 
    end


    # parser rule c
    # 
    # (in ./test/benchmark/DebugDFA/DebugDFA.g)
    # 7:1: c : ( ID )+ BANG ;
    def c
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 3)

      in_rule(grammar_file_name, "c") do
        @debug_listener.location(7, 1)
        
        begin
          in_alternative(1)

          # at line 7:5: ( ID )+ BANG
          @debug_listener.location(7, 5)
          # at file 7:5: ( ID )+
          in_subrule(3) do
            match_count_3 = 0
            loop do
              alt_3 = 2
              in_decision(3) do
                look_3_0 = @input.peek(1)

                if (look_3_0 == ID) 
                  alt_3 = 1

                end
              end
              case alt_3
              when 1
                in_alternative(1)

                # at line 7:5: ID
                @debug_listener.location(7, 5)
                match(ID, TOKENS_FOLLOWING_ID_IN_c_47)

              else
                match_count_3 > 0 and break
                eee = EarlyExit(3)
                @debug_listener.recognition_exception(eee)

                raise eee
              end
              match_count_3 += 1
            end

          end
          @debug_listener.location(7, 9)
          match(BANG, TOKENS_FOLLOWING_BANG_IN_c_50)

        rescue ANTLR3::Error::RecognitionError => re
          report_error(re)
          recover(re)

        ensure
          # -> uncomment the next line to manually enable rule tracing
          # trace_out(__method__, 3)

        end
        
        @debug_listener.location(7, 13)
      end
      
      return 
    end



    # - - - - - - - - - - DFA definitions - - - - - - - - - - -
    class DFA1 < ANTLR3::DFA
      EOT = unpack(4, -1)
      EOF = unpack(4, -1)
      MIN = unpack(2, 4, 2, -1)
      MAX = unpack(1, 5, 1, 6, 2, -1)
      ACCEPT = unpack(2, -1, 1, 1, 1, 2)
      SPECIAL = unpack(4, -1)
      TRANSITION = [
        unpack(1, 1, 1, 2),
        unpack(1, 1, 1, 2, 1, 3),
        unpack(),
        unpack()
      ].freeze
      
      @decision = 1
      
      def error(nvae)
        @recognizer.debug_listener.recognition_exception(nvae)
        super
      end

      def description
        <<-'__dfa_description__'.strip!
          5:5: ( b | c )
        __dfa_description__
      end
    end


    private

    def initialize_dfas
      super rescue nil
      @dfa1 = DFA1.new(self, 1)

    end
    TOKENS_FOLLOWING_b_IN_a_22 = Set[]
    TOKENS_FOLLOWING_c_IN_a_26 = Set[]
    TOKENS_FOLLOWING_EOF_IN_a_30 = Set[1]
    TOKENS_FOLLOWING_ID_IN_b_37 = Set[4, 5]
    TOKENS_FOLLOWING_INT_IN_b_40 = Set[1]
    TOKENS_FOLLOWING_ID_IN_c_47 = Set[4, 6]
    TOKENS_FOLLOWING_BANG_IN_c_50 = Set[1]

  end # class Parser < ANTLR3::Parser
end

if __FILE__ == $0 and ARGV.first != '--'
  main = ANTLR3::Main::ParserMain.new(DebugDFA::Parser, :lexer_class_name => "DebugDFA::Lexer")
  main.execute(ARGV)
end