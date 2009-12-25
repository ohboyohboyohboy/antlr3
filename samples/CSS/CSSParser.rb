#!/usr/bin/env ruby
#
# CSS.g
# 
# generated using ANTLR Version: 3.2.1-SNAPSHOT Dec 18, 2009 04:29:28
# input grammar file: CSS.g
# generated at: 2009-12-24 23:57:43
# 

# ~~~> start load path setup
this_directory = File.expand_path( File.dirname( __FILE__ ) )
$:.unshift( this_directory ) unless $:.include?( this_directory )

antlr_load_failed = proc do
  load_path = $LOAD_PATH.map { |dir| '  - ' << dir }.join( $/ )
  raise LoadError, <<-'END'.strip!
  
Failed to load the ANTLR3 runtime library:

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
    Gem.activate( 'antlr3' )
  rescue Gem::LoadError
    antlr_load_failed.call
  end
  
  require 'antlr3'
  
end
# <~~~ end load path setup


module CSS
  # TokenData defines all of the token type integer values
  # as constants, which will be included in all 
  # ANTLR-generated recognizers.
  const_defined?(:TokenData) or TokenData = ANTLR3::TokenScheme.new

  module TokenData

    # define the token constants
    define_tokens(:FUNCTION => 14, :UNICODE_RANGE => 13, :T__29 => 29, :T__28 => 28, 
                  :T__27 => 27, :T__26 => 26, :T__25 => 25, :NMCHAR => 16, 
                  :NUMBER => 9, :HASH => 12, :ID => 8, :EOF => -1, :INVALID => 19, 
                  :UNICODE => 23, :PERCENTAGE => 4, :URI => 11, :T__30 => 30, 
                  :T__31 => 31, :T__32 => 32, :NMSTART => 15, :T__33 => 33, 
                  :WS => 6, :T__34 => 34, :ESCAPE => 18, :NEWLINE => 17, 
                  :T__35 => 35, :T__36 => 36, :HEX => 24, :DIMENSION => 5, 
                  :AT_KEYWORD => 7, :COMMENT => 22, :NONASCII => 20, :SIX_HEX => 21, 
                  :STRING => 10)

    # register the proper human-readable name or literal value
    # for each token type
    #
    # this is necessary because anonymous tokens, which are
    # created from literal values in the grammar, do not
    # have descriptive names
    register_names("PERCENTAGE", "DIMENSION", "WS", "AT_KEYWORD", "ID", 
                   "NUMBER", "STRING", "URI", "HASH", "UNICODE_RANGE", "FUNCTION", 
                   "NMSTART", "NMCHAR", "NEWLINE", "ESCAPE", "INVALID", 
                   "NONASCII", "SIX_HEX", "COMMENT", "UNICODE", "HEX", "'<!--'", 
                   "'-->'", "';'", "'{'", "'}'", "':'", "'~='", "'|='", 
                   "')'", "'('", "'['", "']'")
  end


  class Parser < ANTLR3::Parser
    @grammar_home = CSS

    RULE_METHODS = [:stylesheet, :statement, :at_rule, :block, :rule_set, 
                    :selector, :declaration, :property, :value, :any].freeze


    include TokenData

    generated_using("CSS.g", "3.2.1-SNAPSHOT Dec 18, 2009 04:29:28")

    def initialize(input, options = {})
      super(input, options)


    end
    # - - - - - - - - - - - - Rules - - - - - - - - - - - - -

    # parser rule stylesheet
    # 
    # (in CSS.g)
    # 10:1: stylesheet : ( '<!--' | '-->' | WS | statement )* ;
    def stylesheet
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 1)

      begin
        # at line 11:5: ( '<!--' | '-->' | WS | statement )*
        # at line 11:5: ( '<!--' | '-->' | WS | statement )*
        loop do  #loop 1
          alt_1 = 5
          case look_1 = @input.peek(1)
          when T__25 then alt_1 = 1
          when T__26 then alt_1 = 2
          when WS then alt_1 = 3
          when PERCENTAGE, DIMENSION, AT_KEYWORD, ID, NUMBER, STRING, URI, HASH, UNICODE_RANGE, FUNCTION, T__28, T__30, T__31, T__32, T__34, T__35 then alt_1 = 4
          end
          case alt_1
          when 1
            # at line 11:7: '<!--'
            match(T__25, TOKENS_FOLLOWING_T__25_IN_stylesheet_41)

          when 2
            # at line 12:7: '-->'
            match(T__26, TOKENS_FOLLOWING_T__26_IN_stylesheet_49)

          when 3
            # at line 13:7: WS
            match(WS, TOKENS_FOLLOWING_WS_IN_stylesheet_57)

          when 4
            # at line 14:7: statement
            @state.following.push(TOKENS_FOLLOWING_statement_IN_stylesheet_65)
            statement
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


    # parser rule statement
    # 
    # (in CSS.g)
    # 17:1: statement : ( rule_set | at_rule );
    def statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 2)

      begin
        # at line 18:3: ( rule_set | at_rule )
        alt_2 = 2
        look_2_0 = @input.peek(1)

        if (look_2_0.between?(PERCENTAGE, DIMENSION) || look_2_0.between?(ID, FUNCTION) || look_2_0 == T__28 || look_2_0.between?(T__30, T__32) || look_2_0.between?(T__34, T__35)) 
          alt_2 = 1
        elsif (look_2_0 == AT_KEYWORD) 
          alt_2 = 2
        else
        nvae = NoViableAlternative("", 2, 0)
          raise nvae
        end
        case alt_2
        when 1
          # at line 18:5: rule_set
          @state.following.push(TOKENS_FOLLOWING_rule_set_IN_statement_81)
          rule_set
          @state.following.pop

        when 2
          # at line 19:5: at_rule
          @state.following.push(TOKENS_FOLLOWING_at_rule_IN_statement_87)
          at_rule
          @state.following.pop

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


    # parser rule at_rule
    # 
    # (in CSS.g)
    # 22:1: at_rule : AT_KEYWORD ( WS )* ( any )* ( block | ';' ( WS )* ) ;
    def at_rule
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 3)

      begin
        # at line 23:5: AT_KEYWORD ( WS )* ( any )* ( block | ';' ( WS )* )
        match(AT_KEYWORD, TOKENS_FOLLOWING_AT_KEYWORD_IN_at_rule_100)
        # at line 23:16: ( WS )*
        loop do  #loop 3
          alt_3 = 2
          look_3_0 = @input.peek(1)

          if (look_3_0 == WS) 
            alt_3 = 1

          end
          case alt_3
          when 1
            # at line 23:16: WS
            match(WS, TOKENS_FOLLOWING_WS_IN_at_rule_102)

          else
            break #loop 3
          end
        end
        # at line 23:20: ( any )*
        loop do  #loop 4
          alt_4 = 2
          look_4_0 = @input.peek(1)

          if (look_4_0.between?(PERCENTAGE, DIMENSION) || look_4_0.between?(ID, FUNCTION) || look_4_0.between?(T__30, T__32) || look_4_0.between?(T__34, T__35)) 
            alt_4 = 1

          end
          case alt_4
          when 1
            # at line 23:20: any
            @state.following.push(TOKENS_FOLLOWING_any_IN_at_rule_105)
            any
            @state.following.pop

          else
            break #loop 4
          end
        end
        # at line 23:25: ( block | ';' ( WS )* )
        alt_6 = 2
        look_6_0 = @input.peek(1)

        if (look_6_0 == T__28) 
          alt_6 = 1
        elsif (look_6_0 == T__27) 
          alt_6 = 2
        else
        nvae = NoViableAlternative("", 6, 0)
          raise nvae
        end
        case alt_6
        when 1
          # at line 23:27: block
          @state.following.push(TOKENS_FOLLOWING_block_IN_at_rule_110)
          block
          @state.following.pop

        when 2
          # at line 23:35: ';' ( WS )*
          match(T__27, TOKENS_FOLLOWING_T__27_IN_at_rule_114)
          # at line 23:39: ( WS )*
          loop do  #loop 5
            alt_5 = 2
            look_5_0 = @input.peek(1)

            if (look_5_0 == WS) 
              alt_5 = 1

            end
            case alt_5
            when 1
              # at line 23:39: WS
              match(WS, TOKENS_FOLLOWING_WS_IN_at_rule_116)

            else
              break #loop 5
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


    # parser rule block
    # 
    # (in CSS.g)
    # 26:1: block : '{' ( WS )* ( any | block | AT_KEYWORD ( WS )* | ';' ( WS )* )* '}' ( WS )* ;
    def block
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 4)

      begin
        # at line 27:5: '{' ( WS )* ( any | block | AT_KEYWORD ( WS )* | ';' ( WS )* )* '}' ( WS )*
        match(T__28, TOKENS_FOLLOWING_T__28_IN_block_132)
        # at line 27:9: ( WS )*
        loop do  #loop 7
          alt_7 = 2
          look_7_0 = @input.peek(1)

          if (look_7_0 == WS) 
            alt_7 = 1

          end
          case alt_7
          when 1
            # at line 27:9: WS
            match(WS, TOKENS_FOLLOWING_WS_IN_block_134)

          else
            break #loop 7
          end
        end
        # at line 28:5: ( any | block | AT_KEYWORD ( WS )* | ';' ( WS )* )*
        loop do  #loop 10
          alt_10 = 5
          case look_10 = @input.peek(1)
          when PERCENTAGE, DIMENSION, ID, NUMBER, STRING, URI, HASH, UNICODE_RANGE, FUNCTION, T__30, T__31, T__32, T__34, T__35 then alt_10 = 1
          when T__28 then alt_10 = 2
          when AT_KEYWORD then alt_10 = 3
          when T__27 then alt_10 = 4
          end
          case alt_10
          when 1
            # at line 28:7: any
            @state.following.push(TOKENS_FOLLOWING_any_IN_block_143)
            any
            @state.following.pop

          when 2
            # at line 29:7: block
            @state.following.push(TOKENS_FOLLOWING_block_IN_block_151)
            block
            @state.following.pop

          when 3
            # at line 30:7: AT_KEYWORD ( WS )*
            match(AT_KEYWORD, TOKENS_FOLLOWING_AT_KEYWORD_IN_block_159)
            # at line 30:18: ( WS )*
            loop do  #loop 8
              alt_8 = 2
              look_8_0 = @input.peek(1)

              if (look_8_0 == WS) 
                alt_8 = 1

              end
              case alt_8
              when 1
                # at line 30:18: WS
                match(WS, TOKENS_FOLLOWING_WS_IN_block_161)

              else
                break #loop 8
              end
            end

          when 4
            # at line 31:7: ';' ( WS )*
            match(T__27, TOKENS_FOLLOWING_T__27_IN_block_170)
            # at line 31:11: ( WS )*
            loop do  #loop 9
              alt_9 = 2
              look_9_0 = @input.peek(1)

              if (look_9_0 == WS) 
                alt_9 = 1

              end
              case alt_9
              when 1
                # at line 31:11: WS
                match(WS, TOKENS_FOLLOWING_WS_IN_block_172)

              else
                break #loop 9
              end
            end

          else
            break #loop 10
          end
        end
        match(T__29, TOKENS_FOLLOWING_T__29_IN_block_186)
        # at line 33:9: ( WS )*
        loop do  #loop 11
          alt_11 = 2
          look_11_0 = @input.peek(1)

          if (look_11_0 == WS) 
            alt_11 = 1

          end
          case alt_11
          when 1
            # at line 33:9: WS
            match(WS, TOKENS_FOLLOWING_WS_IN_block_188)

          else
            break #loop 11
          end
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


    # parser rule rule_set
    # 
    # (in CSS.g)
    # 36:1: rule_set : ( selector )? '{' ( WS )* ( declaration )? ( ';' ( WS )* ( declaration )? )* '}' ( WS )* ;
    def rule_set
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 5)

      begin
        # at line 37:5: ( selector )? '{' ( WS )* ( declaration )? ( ';' ( WS )* ( declaration )? )* '}' ( WS )*
        # at line 37:5: ( selector )?
        alt_12 = 2
        look_12_0 = @input.peek(1)

        if (look_12_0.between?(PERCENTAGE, DIMENSION) || look_12_0.between?(ID, FUNCTION) || look_12_0.between?(T__30, T__32) || look_12_0.between?(T__34, T__35)) 
          alt_12 = 1
        end
        case alt_12
        when 1
          # at line 37:5: selector
          @state.following.push(TOKENS_FOLLOWING_selector_IN_rule_set_202)
          selector
          @state.following.pop

        end
        match(T__28, TOKENS_FOLLOWING_T__28_IN_rule_set_205)
        # at line 37:19: ( WS )*
        loop do  #loop 13
          alt_13 = 2
          look_13_0 = @input.peek(1)

          if (look_13_0 == WS) 
            alt_13 = 1

          end
          case alt_13
          when 1
            # at line 37:19: WS
            match(WS, TOKENS_FOLLOWING_WS_IN_rule_set_207)

          else
            break #loop 13
          end
        end
        # at line 37:23: ( declaration )?
        alt_14 = 2
        look_14_0 = @input.peek(1)

        if (look_14_0 == ID) 
          alt_14 = 1
        end
        case alt_14
        when 1
          # at line 37:23: declaration
          @state.following.push(TOKENS_FOLLOWING_declaration_IN_rule_set_210)
          declaration
          @state.following.pop

        end
        # at line 38:5: ( ';' ( WS )* ( declaration )? )*
        loop do  #loop 17
          alt_17 = 2
          look_17_0 = @input.peek(1)

          if (look_17_0 == T__27) 
            alt_17 = 1

          end
          case alt_17
          when 1
            # at line 38:7: ';' ( WS )* ( declaration )?
            match(T__27, TOKENS_FOLLOWING_T__27_IN_rule_set_219)
            # at line 38:11: ( WS )*
            loop do  #loop 15
              alt_15 = 2
              look_15_0 = @input.peek(1)

              if (look_15_0 == WS) 
                alt_15 = 1

              end
              case alt_15
              when 1
                # at line 38:11: WS
                match(WS, TOKENS_FOLLOWING_WS_IN_rule_set_221)

              else
                break #loop 15
              end
            end
            # at line 38:15: ( declaration )?
            alt_16 = 2
            look_16_0 = @input.peek(1)

            if (look_16_0 == ID) 
              alt_16 = 1
            end
            case alt_16
            when 1
              # at line 38:15: declaration
              @state.following.push(TOKENS_FOLLOWING_declaration_IN_rule_set_224)
              declaration
              @state.following.pop

            end

          else
            break #loop 17
          end
        end
        match(T__29, TOKENS_FOLLOWING_T__29_IN_rule_set_234)
        # at line 39:9: ( WS )*
        loop do  #loop 18
          alt_18 = 2
          look_18_0 = @input.peek(1)

          if (look_18_0 == WS) 
            alt_18 = 1

          end
          case alt_18
          when 1
            # at line 39:9: WS
            match(WS, TOKENS_FOLLOWING_WS_IN_rule_set_236)

          else
            break #loop 18
          end
        end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 5)

      end
      
      return 
    end


    # parser rule selector
    # 
    # (in CSS.g)
    # 42:1: selector : ( any )+ ;
    def selector
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 6)

      begin
        # at line 43:5: ( any )+
        # at file 43:5: ( any )+
        match_count_19 = 0
        loop do
          alt_19 = 2
          look_19_0 = @input.peek(1)

          if (look_19_0.between?(PERCENTAGE, DIMENSION) || look_19_0.between?(ID, FUNCTION) || look_19_0.between?(T__30, T__32) || look_19_0.between?(T__34, T__35)) 
            alt_19 = 1

          end
          case alt_19
          when 1
            # at line 43:5: any
            @state.following.push(TOKENS_FOLLOWING_any_IN_selector_250)
            any
            @state.following.pop

          else
            match_count_19 > 0 and break
            eee = EarlyExit(19)


            raise eee
          end
          match_count_19 += 1
        end


      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 6)

      end
      
      return 
    end


    # parser rule declaration
    # 
    # (in CSS.g)
    # 46:1: declaration : property ( WS )* ':' ( WS )* value ;
    def declaration
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 7)

      begin
        # at line 47:5: property ( WS )* ':' ( WS )* value
        @state.following.push(TOKENS_FOLLOWING_property_IN_declaration_264)
        property
        @state.following.pop
        # at line 47:14: ( WS )*
        loop do  #loop 20
          alt_20 = 2
          look_20_0 = @input.peek(1)

          if (look_20_0 == WS) 
            alt_20 = 1

          end
          case alt_20
          when 1
            # at line 47:14: WS
            match(WS, TOKENS_FOLLOWING_WS_IN_declaration_266)

          else
            break #loop 20
          end
        end
        match(T__30, TOKENS_FOLLOWING_T__30_IN_declaration_269)
        # at line 47:22: ( WS )*
        loop do  #loop 21
          alt_21 = 2
          look_21_0 = @input.peek(1)

          if (look_21_0 == WS) 
            alt_21 = 1

          end
          case alt_21
          when 1
            # at line 47:22: WS
            match(WS, TOKENS_FOLLOWING_WS_IN_declaration_271)

          else
            break #loop 21
          end
        end
        @state.following.push(TOKENS_FOLLOWING_value_IN_declaration_274)
        value
        @state.following.pop

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 7)

      end
      
      return 
    end


    # parser rule property
    # 
    # (in CSS.g)
    # 50:1: property : ID ;
    def property
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 8)

      begin
        # at line 51:5: ID
        match(ID, TOKENS_FOLLOWING_ID_IN_property_287)

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 8)

      end
      
      return 
    end


    # parser rule value
    # 
    # (in CSS.g)
    # 54:1: value : ( any | block | AT_KEYWORD ( WS )* )+ ;
    def value
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 9)

      begin
        # at line 55:5: ( any | block | AT_KEYWORD ( WS )* )+
        # at file 55:5: ( any | block | AT_KEYWORD ( WS )* )+
        match_count_23 = 0
        loop do
          alt_23 = 4
          case look_23 = @input.peek(1)
          when PERCENTAGE, DIMENSION, ID, NUMBER, STRING, URI, HASH, UNICODE_RANGE, FUNCTION, T__30, T__31, T__32, T__34, T__35 then alt_23 = 1
          when T__28 then alt_23 = 2
          when AT_KEYWORD then alt_23 = 3
          end
          case alt_23
          when 1
            # at line 55:7: any
            @state.following.push(TOKENS_FOLLOWING_any_IN_value_302)
            any
            @state.following.pop

          when 2
            # at line 56:7: block
            @state.following.push(TOKENS_FOLLOWING_block_IN_value_310)
            block
            @state.following.pop

          when 3
            # at line 57:7: AT_KEYWORD ( WS )*
            match(AT_KEYWORD, TOKENS_FOLLOWING_AT_KEYWORD_IN_value_318)
            # at line 57:18: ( WS )*
            loop do  #loop 22
              alt_22 = 2
              look_22_0 = @input.peek(1)

              if (look_22_0 == WS) 
                alt_22 = 1

              end
              case alt_22
              when 1
                # at line 57:18: WS
                match(WS, TOKENS_FOLLOWING_WS_IN_value_320)

              else
                break #loop 22
              end
            end

          else
            match_count_23 > 0 and break
            eee = EarlyExit(23)


            raise eee
          end
          match_count_23 += 1
        end


      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 9)

      end
      
      return 
    end


    # parser rule any
    # 
    # (in CSS.g)
    # 61:1: any : ( ID | NUMBER | PERCENTAGE | DIMENSION | STRING | URI | HASH | UNICODE_RANGE | '~=' | '|=' | ':' | FUNCTION ( WS )* ( any )* ')' | '(' ( WS )* ( any )* ')' | '[' ( WS )* ( any )* ']' ) ( WS )* ;
    def any
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 10)

      begin
        # at line 62:5: ( ID | NUMBER | PERCENTAGE | DIMENSION | STRING | URI | HASH | UNICODE_RANGE | '~=' | '|=' | ':' | FUNCTION ( WS )* ( any )* ')' | '(' ( WS )* ( any )* ')' | '[' ( WS )* ( any )* ']' ) ( WS )*
        # at line 62:5: ( ID | NUMBER | PERCENTAGE | DIMENSION | STRING | URI | HASH | UNICODE_RANGE | '~=' | '|=' | ':' | FUNCTION ( WS )* ( any )* ')' | '(' ( WS )* ( any )* ')' | '[' ( WS )* ( any )* ']' )
        alt_30 = 14
        case look_30 = @input.peek(1)
        when ID then alt_30 = 1
        when NUMBER then alt_30 = 2
        when PERCENTAGE then alt_30 = 3
        when DIMENSION then alt_30 = 4
        when STRING then alt_30 = 5
        when URI then alt_30 = 6
        when HASH then alt_30 = 7
        when UNICODE_RANGE then alt_30 = 8
        when T__31 then alt_30 = 9
        when T__32 then alt_30 = 10
        when T__30 then alt_30 = 11
        when FUNCTION then alt_30 = 12
        when T__34 then alt_30 = 13
        when T__35 then alt_30 = 14
        else
          nvae = NoViableAlternative("", 30, 0)
          raise nvae
        end
        case alt_30
        when 1
          # at line 62:7: ID
          match(ID, TOKENS_FOLLOWING_ID_IN_any_343)

        when 2
          # at line 62:13: NUMBER
          match(NUMBER, TOKENS_FOLLOWING_NUMBER_IN_any_348)

        when 3
          # at line 62:24: PERCENTAGE
          match(PERCENTAGE, TOKENS_FOLLOWING_PERCENTAGE_IN_any_354)

        when 4
          # at line 62:40: DIMENSION
          match(DIMENSION, TOKENS_FOLLOWING_DIMENSION_IN_any_361)

        when 5
          # at line 62:54: STRING
          match(STRING, TOKENS_FOLLOWING_STRING_IN_any_367)

        when 6
          # at line 63:7: URI
          match(URI, TOKENS_FOLLOWING_URI_IN_any_375)

        when 7
          # at line 63:13: HASH
          match(HASH, TOKENS_FOLLOWING_HASH_IN_any_379)

        when 8
          # at line 63:24: UNICODE_RANGE
          match(UNICODE_RANGE, TOKENS_FOLLOWING_UNICODE_RANGE_IN_any_387)

        when 9
          # at line 63:40: '~='
          match(T__31, TOKENS_FOLLOWING_T__31_IN_any_391)

        when 10
          # at line 63:47: '|='
          match(T__32, TOKENS_FOLLOWING_T__32_IN_any_395)

        when 11
          # at line 63:54: ':'
          match(T__30, TOKENS_FOLLOWING_T__30_IN_any_399)

        when 12
          # at line 64:7: FUNCTION ( WS )* ( any )* ')'
          match(FUNCTION, TOKENS_FOLLOWING_FUNCTION_IN_any_407)
          # at line 64:16: ( WS )*
          loop do  #loop 24
            alt_24 = 2
            look_24_0 = @input.peek(1)

            if (look_24_0 == WS) 
              alt_24 = 1

            end
            case alt_24
            when 1
              # at line 64:16: WS
              match(WS, TOKENS_FOLLOWING_WS_IN_any_409)

            else
              break #loop 24
            end
          end
          # at line 64:20: ( any )*
          loop do  #loop 25
            alt_25 = 2
            look_25_0 = @input.peek(1)

            if (look_25_0.between?(PERCENTAGE, DIMENSION) || look_25_0.between?(ID, FUNCTION) || look_25_0.between?(T__30, T__32) || look_25_0.between?(T__34, T__35)) 
              alt_25 = 1

            end
            case alt_25
            when 1
              # at line 64:20: any
              @state.following.push(TOKENS_FOLLOWING_any_IN_any_412)
              any
              @state.following.pop

            else
              break #loop 25
            end
          end
          match(T__33, TOKENS_FOLLOWING_T__33_IN_any_415)

        when 13
          # at line 65:7: '(' ( WS )* ( any )* ')'
          match(T__34, TOKENS_FOLLOWING_T__34_IN_any_423)
          # at line 65:11: ( WS )*
          loop do  #loop 26
            alt_26 = 2
            look_26_0 = @input.peek(1)

            if (look_26_0 == WS) 
              alt_26 = 1

            end
            case alt_26
            when 1
              # at line 65:11: WS
              match(WS, TOKENS_FOLLOWING_WS_IN_any_425)

            else
              break #loop 26
            end
          end
          # at line 65:15: ( any )*
          loop do  #loop 27
            alt_27 = 2
            look_27_0 = @input.peek(1)

            if (look_27_0.between?(PERCENTAGE, DIMENSION) || look_27_0.between?(ID, FUNCTION) || look_27_0.between?(T__30, T__32) || look_27_0.between?(T__34, T__35)) 
              alt_27 = 1

            end
            case alt_27
            when 1
              # at line 65:15: any
              @state.following.push(TOKENS_FOLLOWING_any_IN_any_428)
              any
              @state.following.pop

            else
              break #loop 27
            end
          end
          match(T__33, TOKENS_FOLLOWING_T__33_IN_any_431)

        when 14
          # at line 66:7: '[' ( WS )* ( any )* ']'
          match(T__35, TOKENS_FOLLOWING_T__35_IN_any_439)
          # at line 66:11: ( WS )*
          loop do  #loop 28
            alt_28 = 2
            look_28_0 = @input.peek(1)

            if (look_28_0 == WS) 
              alt_28 = 1

            end
            case alt_28
            when 1
              # at line 66:11: WS
              match(WS, TOKENS_FOLLOWING_WS_IN_any_441)

            else
              break #loop 28
            end
          end
          # at line 66:15: ( any )*
          loop do  #loop 29
            alt_29 = 2
            look_29_0 = @input.peek(1)

            if (look_29_0.between?(PERCENTAGE, DIMENSION) || look_29_0.between?(ID, FUNCTION) || look_29_0.between?(T__30, T__32) || look_29_0.between?(T__34, T__35)) 
              alt_29 = 1

            end
            case alt_29
            when 1
              # at line 66:15: any
              @state.following.push(TOKENS_FOLLOWING_any_IN_any_444)
              any
              @state.following.pop

            else
              break #loop 29
            end
          end
          match(T__36, TOKENS_FOLLOWING_T__36_IN_any_447)

        end
        # at line 67:7: ( WS )*
        loop do  #loop 31
          alt_31 = 2
          look_31_0 = @input.peek(1)

          if (look_31_0 == WS) 
            alt_31 = 1

          end
          case alt_31
          when 1
            # at line 67:7: WS
            match(WS, TOKENS_FOLLOWING_WS_IN_any_455)

          else
            break #loop 31
          end
        end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 10)

      end
      
      return 
    end



    TOKENS_FOLLOWING_T__25_IN_stylesheet_41 = Set[1, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 25, 26, 28, 30, 31, 32, 34, 35]
    TOKENS_FOLLOWING_T__26_IN_stylesheet_49 = Set[1, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 25, 26, 28, 30, 31, 32, 34, 35]
    TOKENS_FOLLOWING_WS_IN_stylesheet_57 = Set[1, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 25, 26, 28, 30, 31, 32, 34, 35]
    TOKENS_FOLLOWING_statement_IN_stylesheet_65 = Set[1, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 25, 26, 28, 30, 31, 32, 34, 35]
    TOKENS_FOLLOWING_rule_set_IN_statement_81 = Set[1]
    TOKENS_FOLLOWING_at_rule_IN_statement_87 = Set[1]
    TOKENS_FOLLOWING_AT_KEYWORD_IN_at_rule_100 = Set[4, 5, 6, 8, 9, 10, 11, 12, 13, 14, 27, 28, 30, 31, 32, 34, 35]
    TOKENS_FOLLOWING_WS_IN_at_rule_102 = Set[4, 5, 6, 8, 9, 10, 11, 12, 13, 14, 27, 28, 30, 31, 32, 34, 35]
    TOKENS_FOLLOWING_any_IN_at_rule_105 = Set[4, 5, 8, 9, 10, 11, 12, 13, 14, 27, 28, 30, 31, 32, 34, 35]
    TOKENS_FOLLOWING_block_IN_at_rule_110 = Set[1]
    TOKENS_FOLLOWING_T__27_IN_at_rule_114 = Set[1, 6]
    TOKENS_FOLLOWING_WS_IN_at_rule_116 = Set[1, 6]
    TOKENS_FOLLOWING_T__28_IN_block_132 = Set[4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 27, 28, 29, 30, 31, 32, 34, 35]
    TOKENS_FOLLOWING_WS_IN_block_134 = Set[4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 27, 28, 29, 30, 31, 32, 34, 35]
    TOKENS_FOLLOWING_any_IN_block_143 = Set[4, 5, 7, 8, 9, 10, 11, 12, 13, 14, 27, 28, 29, 30, 31, 32, 34, 35]
    TOKENS_FOLLOWING_block_IN_block_151 = Set[4, 5, 7, 8, 9, 10, 11, 12, 13, 14, 27, 28, 29, 30, 31, 32, 34, 35]
    TOKENS_FOLLOWING_AT_KEYWORD_IN_block_159 = Set[4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 27, 28, 29, 30, 31, 32, 34, 35]
    TOKENS_FOLLOWING_WS_IN_block_161 = Set[4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 27, 28, 29, 30, 31, 32, 34, 35]
    TOKENS_FOLLOWING_T__27_IN_block_170 = Set[4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 27, 28, 29, 30, 31, 32, 34, 35]
    TOKENS_FOLLOWING_WS_IN_block_172 = Set[4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 27, 28, 29, 30, 31, 32, 34, 35]
    TOKENS_FOLLOWING_T__29_IN_block_186 = Set[1, 6]
    TOKENS_FOLLOWING_WS_IN_block_188 = Set[1, 6]
    TOKENS_FOLLOWING_selector_IN_rule_set_202 = Set[28]
    TOKENS_FOLLOWING_T__28_IN_rule_set_205 = Set[6, 8, 27, 29]
    TOKENS_FOLLOWING_WS_IN_rule_set_207 = Set[6, 8, 27, 29]
    TOKENS_FOLLOWING_declaration_IN_rule_set_210 = Set[27, 29]
    TOKENS_FOLLOWING_T__27_IN_rule_set_219 = Set[6, 8, 27, 29]
    TOKENS_FOLLOWING_WS_IN_rule_set_221 = Set[6, 8, 27, 29]
    TOKENS_FOLLOWING_declaration_IN_rule_set_224 = Set[27, 29]
    TOKENS_FOLLOWING_T__29_IN_rule_set_234 = Set[1, 6]
    TOKENS_FOLLOWING_WS_IN_rule_set_236 = Set[1, 6]
    TOKENS_FOLLOWING_any_IN_selector_250 = Set[1, 4, 5, 8, 9, 10, 11, 12, 13, 14, 30, 31, 32, 34, 35]
    TOKENS_FOLLOWING_property_IN_declaration_264 = Set[6, 30]
    TOKENS_FOLLOWING_WS_IN_declaration_266 = Set[6, 30]
    TOKENS_FOLLOWING_T__30_IN_declaration_269 = Set[4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 28, 30, 31, 32, 34, 35]
    TOKENS_FOLLOWING_WS_IN_declaration_271 = Set[4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 28, 30, 31, 32, 34, 35]
    TOKENS_FOLLOWING_value_IN_declaration_274 = Set[1]
    TOKENS_FOLLOWING_ID_IN_property_287 = Set[1]
    TOKENS_FOLLOWING_any_IN_value_302 = Set[1, 4, 5, 7, 8, 9, 10, 11, 12, 13, 14, 28, 30, 31, 32, 34, 35]
    TOKENS_FOLLOWING_block_IN_value_310 = Set[1, 4, 5, 7, 8, 9, 10, 11, 12, 13, 14, 28, 30, 31, 32, 34, 35]
    TOKENS_FOLLOWING_AT_KEYWORD_IN_value_318 = Set[1, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 28, 30, 31, 32, 34, 35]
    TOKENS_FOLLOWING_WS_IN_value_320 = Set[1, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 28, 30, 31, 32, 34, 35]
    TOKENS_FOLLOWING_ID_IN_any_343 = Set[1, 6]
    TOKENS_FOLLOWING_NUMBER_IN_any_348 = Set[1, 6]
    TOKENS_FOLLOWING_PERCENTAGE_IN_any_354 = Set[1, 6]
    TOKENS_FOLLOWING_DIMENSION_IN_any_361 = Set[1, 6]
    TOKENS_FOLLOWING_STRING_IN_any_367 = Set[1, 6]
    TOKENS_FOLLOWING_URI_IN_any_375 = Set[1, 6]
    TOKENS_FOLLOWING_HASH_IN_any_379 = Set[1, 6]
    TOKENS_FOLLOWING_UNICODE_RANGE_IN_any_387 = Set[1, 6]
    TOKENS_FOLLOWING_T__31_IN_any_391 = Set[1, 6]
    TOKENS_FOLLOWING_T__32_IN_any_395 = Set[1, 6]
    TOKENS_FOLLOWING_T__30_IN_any_399 = Set[1, 6]
    TOKENS_FOLLOWING_FUNCTION_IN_any_407 = Set[4, 5, 6, 8, 9, 10, 11, 12, 13, 14, 30, 31, 32, 33, 34, 35]
    TOKENS_FOLLOWING_WS_IN_any_409 = Set[4, 5, 6, 8, 9, 10, 11, 12, 13, 14, 30, 31, 32, 33, 34, 35]
    TOKENS_FOLLOWING_any_IN_any_412 = Set[4, 5, 8, 9, 10, 11, 12, 13, 14, 30, 31, 32, 33, 34, 35]
    TOKENS_FOLLOWING_T__33_IN_any_415 = Set[1, 6]
    TOKENS_FOLLOWING_T__34_IN_any_423 = Set[4, 5, 6, 8, 9, 10, 11, 12, 13, 14, 30, 31, 32, 33, 34, 35]
    TOKENS_FOLLOWING_WS_IN_any_425 = Set[4, 5, 6, 8, 9, 10, 11, 12, 13, 14, 30, 31, 32, 33, 34, 35]
    TOKENS_FOLLOWING_any_IN_any_428 = Set[4, 5, 8, 9, 10, 11, 12, 13, 14, 30, 31, 32, 33, 34, 35]
    TOKENS_FOLLOWING_T__33_IN_any_431 = Set[1, 6]
    TOKENS_FOLLOWING_T__35_IN_any_439 = Set[4, 5, 6, 8, 9, 10, 11, 12, 13, 14, 30, 31, 32, 34, 35, 36]
    TOKENS_FOLLOWING_WS_IN_any_441 = Set[4, 5, 6, 8, 9, 10, 11, 12, 13, 14, 30, 31, 32, 34, 35, 36]
    TOKENS_FOLLOWING_any_IN_any_444 = Set[4, 5, 8, 9, 10, 11, 12, 13, 14, 30, 31, 32, 34, 35, 36]
    TOKENS_FOLLOWING_T__36_IN_any_447 = Set[1, 6]
    TOKENS_FOLLOWING_WS_IN_any_455 = Set[1, 6]

  end # class Parser < ANTLR3::Parser

  at_exit { Parser.main(ARGV) } if __FILE__ == $0
end

