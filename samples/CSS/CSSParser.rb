#!/usr/bin/env ruby
#
# samples/CSS.g
# 
# Generated using ANTLR version: 3.2.1-SNAPSHOT Dec 18, 2009 04:29:28
# Ruby runtime library version: 1.4.0
# Input grammar file: samples/CSS.g
# Generated at: 2010-01-25 13:58:23
# 

# ~~~> start load path setup
this_directory = File.expand_path( File.dirname( __FILE__ ) )
$:.unshift( this_directory ) unless $:.include?( this_directory )

antlr_load_failed = proc do
  load_path = $LOAD_PATH.map { |dir| '  - ' << dir }.join( $/ )
  raise LoadError, <<-END.strip!
  
Failed to load the ANTLR3 runtime library (version 1.4.0):

Ensure the library has been installed on your system and is available
on the load path. If rubygems is available on your system, this can
be done with the command:
  
  gem install antlr3

Current load path:
#{ load_path }

  END
end

defined?( ANTLR3 ) or begin
  
  # 1: try to load the ruby antlr3 runtime library from the system path
  require 'antlr3'
  
rescue LoadError
  
  # 2: try to load rubygems if it isn't already loaded
  defined?( Gem ) or begin
    require 'rubygems'
  rescue LoadError
    antlr_load_failed.call
  end
  
  # 3: try to activate the antlr3 gem
  begin
    Gem.activate( 'antlr3', '= 1.4.0' )
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
    define_tokens( :FUNCTION => 6, :UNICODE_RANGE => 34, :MEDIA_LIST => 17, 
                   :ID => 22, :EOF => -1, :LENGTH => 9, :T__55 => 55, :T__56 => 56, 
                   :TIME => 11, :T__57 => 57, :UNDER => 16, :T__51 => 51, 
                   :SELECTOR => 18, :T__52 => 52, :ESCAPE => 28, :T__53 => 53, 
                   :T__54 => 54, :HEX => 33, :ELEMENT => 15, :DIMENSION => 5, 
                   :FREQ => 10, :AT_KEYWORD => 31, :COMMENT => 26, :T__50 => 50, 
                   :T__42 => 42, :T__43 => 43, :T__40 => 40, :T__41 => 41, 
                   :T__46 => 46, :T__47 => 47, :T__44 => 44, :ANGLE => 8, 
                   :RULE => 14, :T__45 => 45, :T__48 => 48, :T__49 => 49, 
                   :NUMBER => 25, :HASH => 23, :S => 32, :INVALID => 7, 
                   :PERCENTAGE => 4, :IMPORTANT => 24, :URI => 21, :WS => 19, 
                   :NEWLINE => 27, :T__35 => 35, :T__36 => 36, :T__37 => 37, 
                   :T__38 => 38, :EMS => 12, :T__39 => 39, :EXS => 13, :PLAIN_ID => 29, 
                   :NONASCII => 30, :STRING => 20 )

    # register the proper human-readable name or literal value
    # for each token type
    #
    # this is necessary because anonymous tokens, which are
    # created from literal values in the grammar, do not
    # have descriptive names
    register_names( "PERCENTAGE", "DIMENSION", "FUNCTION", "INVALID", "ANGLE", 
                    "LENGTH", "FREQ", "TIME", "EMS", "EXS", "RULE", "ELEMENT", 
                    "UNDER", "MEDIA_LIST", "SELECTOR", "WS", "STRING", "URI", 
                    "ID", "HASH", "IMPORTANT", "NUMBER", "COMMENT", "NEWLINE", 
                    "ESCAPE", "PLAIN_ID", "NONASCII", "AT_KEYWORD", "S", 
                    "HEX", "UNICODE_RANGE", "'<!--'", "'-->'", "'@charset'", 
                    "';'", "'@import'", "'@media'", "'{'", "'}'", "','", 
                    "'@page'", "':'", "'+'", "'>'", "'*'", "'.'", "'['", 
                    "']'", "')'", "'='", "'~='", "'|='", "'/'", "'-'" )
    
  end


  class Parser < ANTLR3::Parser
    @grammar_home = CSS
    include ANTLR3::ASTBuilder

    RULE_METHODS = [ :stylesheet, :charset, :import_statement, :media, :media_list, 
                     :page, :rule, :selector, :relational_selector, :simple_selector, 
                     :element, :modifier, :match_attribute, :declaration, 
                     :expr, :term ].freeze


    include TokenData

    generated_using( "samples/CSS.g", "3.2.1-SNAPSHOT Dec 18, 2009 04:29:28", "1.4.0" )

    def initialize( input, options = {} )
      super( input, options )


    end
    # - - - - - - - - - - - - Rules - - - - - - - - - - - - -
    StylesheetReturnValue = define_return_scope 

    # 
    # parser rule stylesheet
    # 
    # (in samples/CSS.g)
    # 15:1: stylesheet : ( charset )? ( WS | '<!--' | '-->' )* ( import_statement ( '<!--' ( WS )* | '-->' ( WS )* )* )* ( ( rule | media | page ) ( '<!--' ( WS )* | '-->' ( WS )* )* )* ;
    # 
    def stylesheet
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 1)
      return_value = StylesheetReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __WS2__ = nil
      string_literal3 = nil
      string_literal4 = nil
      string_literal6 = nil
      __WS7__ = nil
      string_literal8 = nil
      __WS9__ = nil
      string_literal13 = nil
      __WS14__ = nil
      string_literal15 = nil
      __WS16__ = nil
      charset1 = nil
      import_statement5 = nil
      rule10 = nil
      media11 = nil
      page12 = nil

      tree_for_WS2 = nil
      tree_for_string_literal3 = nil
      tree_for_string_literal4 = nil
      tree_for_string_literal6 = nil
      tree_for_WS7 = nil
      tree_for_string_literal8 = nil
      tree_for_WS9 = nil
      tree_for_string_literal13 = nil
      tree_for_WS14 = nil
      tree_for_string_literal15 = nil
      tree_for_WS16 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 16:5: ( charset )? ( WS | '<!--' | '-->' )* ( import_statement ( '<!--' ( WS )* | '-->' ( WS )* )* )* ( ( rule | media | page ) ( '<!--' ( WS )* | '-->' ( WS )* )* )*
        # at line 16:5: ( charset )?
        alt_1 = 2
        look_1_0 = @input.peek(1)

        if (look_1_0 == T__37) 
          alt_1 = 1
        end
        case alt_1
        when 1
          # at line 16:5: charset
          @state.following.push(TOKENS_FOLLOWING_charset_IN_stylesheet_93)
          charset1 = charset
          @state.following.pop
          @adaptor.add_child(root_0, charset1.tree)

        end
        # at line 17:5: ( WS | '<!--' | '-->' )*
        loop do # decision 2
          alt_2 = 4
          case look_2 = @input.peek(1)
          when WS then alt_2 = 1
          when T__35 then alt_2 = 2
          when T__36 then alt_2 = 3
          end
          case alt_2
          when 1
            # at line 17:7: WS
            __WS2__ = match(WS, TOKENS_FOLLOWING_WS_IN_stylesheet_102)

          when 2
            # at line 17:13: '<!--'
            string_literal3 = match(T__35, TOKENS_FOLLOWING_T__35_IN_stylesheet_107)

          when 3
            # at line 17:23: '-->'
            string_literal4 = match(T__36, TOKENS_FOLLOWING_T__36_IN_stylesheet_112)

          else
            break # out of loop for decision 2
          end
        end # loop for decision 2
        # at line 18:5: ( import_statement ( '<!--' ( WS )* | '-->' ( WS )* )* )*
        loop do # decision 6
          alt_6 = 2
          look_6_0 = @input.peek(1)

          if (look_6_0 == T__39) 
            alt_6 = 1

          end
          case alt_6
          when 1
            # at line 18:7: import_statement ( '<!--' ( WS )* | '-->' ( WS )* )*
            @state.following.push(TOKENS_FOLLOWING_import_statement_IN_stylesheet_124)
            import_statement5 = import_statement
            @state.following.pop
            @adaptor.add_child(root_0, import_statement5.tree)
            # at line 18:24: ( '<!--' ( WS )* | '-->' ( WS )* )*
            loop do # decision 5
              alt_5 = 3
              look_5_0 = @input.peek(1)

              if (look_5_0 == T__35) 
                alt_5 = 1
              elsif (look_5_0 == T__36) 
                alt_5 = 2

              end
              case alt_5
              when 1
                # at line 18:26: '<!--' ( WS )*
                string_literal6 = match(T__35, TOKENS_FOLLOWING_T__35_IN_stylesheet_128)
                # at line 18:36: ( WS )*
                loop do # decision 3
                  alt_3 = 2
                  look_3_0 = @input.peek(1)

                  if (look_3_0 == WS) 
                    alt_3 = 1

                  end
                  case alt_3
                  when 1
                    # at line 18:36: WS
                    __WS7__ = match(WS, TOKENS_FOLLOWING_WS_IN_stylesheet_131)

                  else
                    break # out of loop for decision 3
                  end
                end # loop for decision 3

              when 2
                # at line 18:41: '-->' ( WS )*
                string_literal8 = match(T__36, TOKENS_FOLLOWING_T__36_IN_stylesheet_137)
                # at line 18:50: ( WS )*
                loop do # decision 4
                  alt_4 = 2
                  look_4_0 = @input.peek(1)

                  if (look_4_0 == WS) 
                    alt_4 = 1

                  end
                  case alt_4
                  when 1
                    # at line 18:50: WS
                    __WS9__ = match(WS, TOKENS_FOLLOWING_WS_IN_stylesheet_140)

                  else
                    break # out of loop for decision 4
                  end
                end # loop for decision 4

              else
                break # out of loop for decision 5
              end
            end # loop for decision 5

          else
            break # out of loop for decision 6
          end
        end # loop for decision 6
        # at line 19:5: ( ( rule | media | page ) ( '<!--' ( WS )* | '-->' ( WS )* )* )*
        loop do # decision 11
          alt_11 = 2
          look_11_0 = @input.peek(1)

          if (look_11_0.between?(ID, HASH) || look_11_0 == T__40 || look_11_0.between?(T__44, T__45) || look_11_0.between?(T__48, T__50)) 
            alt_11 = 1

          end
          case alt_11
          when 1
            # at line 19:7: ( rule | media | page ) ( '<!--' ( WS )* | '-->' ( WS )* )*
            # at line 19:7: ( rule | media | page )
            alt_7 = 3
            case look_7 = @input.peek(1)
            when ID, HASH, T__45, T__48, T__49, T__50 then alt_7 = 1
            when T__40 then alt_7 = 2
            when T__44 then alt_7 = 3
            else
              nvae = NoViableAlternative("", 7, 0)
              raise nvae
            end
            case alt_7
            when 1
              # at line 19:9: rule
              @state.following.push(TOKENS_FOLLOWING_rule_IN_stylesheet_158)
              rule10 = rule
              @state.following.pop
              @adaptor.add_child(root_0, rule10.tree)

            when 2
              # at line 19:16: media
              @state.following.push(TOKENS_FOLLOWING_media_IN_stylesheet_162)
              media11 = media
              @state.following.pop
              @adaptor.add_child(root_0, media11.tree)

            when 3
              # at line 19:24: page
              @state.following.push(TOKENS_FOLLOWING_page_IN_stylesheet_166)
              page12 = page
              @state.following.pop
              @adaptor.add_child(root_0, page12.tree)

            end
            # at line 19:31: ( '<!--' ( WS )* | '-->' ( WS )* )*
            loop do # decision 10
              alt_10 = 3
              look_10_0 = @input.peek(1)

              if (look_10_0 == T__35) 
                alt_10 = 1
              elsif (look_10_0 == T__36) 
                alt_10 = 2

              end
              case alt_10
              when 1
                # at line 19:33: '<!--' ( WS )*
                string_literal13 = match(T__35, TOKENS_FOLLOWING_T__35_IN_stylesheet_172)
                # at line 19:43: ( WS )*
                loop do # decision 8
                  alt_8 = 2
                  look_8_0 = @input.peek(1)

                  if (look_8_0 == WS) 
                    alt_8 = 1

                  end
                  case alt_8
                  when 1
                    # at line 19:43: WS
                    __WS14__ = match(WS, TOKENS_FOLLOWING_WS_IN_stylesheet_175)

                  else
                    break # out of loop for decision 8
                  end
                end # loop for decision 8

              when 2
                # at line 19:48: '-->' ( WS )*
                string_literal15 = match(T__36, TOKENS_FOLLOWING_T__36_IN_stylesheet_181)
                # at line 19:57: ( WS )*
                loop do # decision 9
                  alt_9 = 2
                  look_9_0 = @input.peek(1)

                  if (look_9_0 == WS) 
                    alt_9 = 1

                  end
                  case alt_9
                  when 1
                    # at line 19:57: WS
                    __WS16__ = match(WS, TOKENS_FOLLOWING_WS_IN_stylesheet_184)

                  else
                    break # out of loop for decision 9
                  end
                end # loop for decision 9

              else
                break # out of loop for decision 10
              end
            end # loop for decision 10

          else
            break # out of loop for decision 11
          end
        end # loop for decision 11
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)


        return_value.tree = @adaptor.rule_post_processing(root_0)
        @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 1)

      end
      
      return return_value
    end

    CharsetReturnValue = define_return_scope 

    # 
    # parser rule charset
    # 
    # (in samples/CSS.g)
    # 22:1: charset : '@charset' STRING ';' ;
    # 
    def charset
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 2)
      return_value = CharsetReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal17 = nil
      __STRING18__ = nil
      char_literal19 = nil

      tree_for_string_literal17 = nil
      tree_for_STRING18 = nil
      tree_for_char_literal19 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 23:5: '@charset' STRING ';'
        string_literal17 = match(T__37, TOKENS_FOLLOWING_T__37_IN_charset_205)

        tree_for_string_literal17 = @adaptor.create_with_payload!(string_literal17)
        root_0 = @adaptor.become_root(tree_for_string_literal17, root_0)

        __STRING18__ = match(STRING, TOKENS_FOLLOWING_STRING_IN_charset_208)

        tree_for_STRING18 = @adaptor.create_with_payload!(__STRING18__)
        @adaptor.add_child(root_0, tree_for_STRING18)

        char_literal19 = match(T__38, TOKENS_FOLLOWING_T__38_IN_charset_210)
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)


        return_value.tree = @adaptor.rule_post_processing(root_0)
        @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 2)

      end
      
      return return_value
    end

    ImportStatementReturnValue = define_return_scope 

    # 
    # parser rule import_statement
    # 
    # (in samples/CSS.g)
    # 26:1: import_statement : '@import' ( WS )* ( STRING | URI ) ( WS )* ( media_list )? ';' ( WS )* ;
    # 
    def import_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 3)
      return_value = ImportStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal20 = nil
      __WS21__ = nil
      set22 = nil
      __WS23__ = nil
      char_literal25 = nil
      __WS26__ = nil
      media_list24 = nil

      tree_for_string_literal20 = nil
      tree_for_WS21 = nil
      tree_for_set22 = nil
      tree_for_WS23 = nil
      tree_for_char_literal25 = nil
      tree_for_WS26 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 27:5: '@import' ( WS )* ( STRING | URI ) ( WS )* ( media_list )? ';' ( WS )*
        string_literal20 = match(T__39, TOKENS_FOLLOWING_T__39_IN_import_statement_224)

        tree_for_string_literal20 = @adaptor.create_with_payload!(string_literal20)
        root_0 = @adaptor.become_root(tree_for_string_literal20, root_0)

        # at line 27:18: ( WS )*
        loop do # decision 12
          alt_12 = 2
          look_12_0 = @input.peek(1)

          if (look_12_0 == WS) 
            alt_12 = 1

          end
          case alt_12
          when 1
            # at line 27:18: WS
            __WS21__ = match(WS, TOKENS_FOLLOWING_WS_IN_import_statement_227)

          else
            break # out of loop for decision 12
          end
        end # loop for decision 12
        set22 = @input.look
        if @input.peek(1).between?(STRING, URI)
          @input.consume
          @adaptor.add_child(root_0, @adaptor.create_with_payload!(set22))
          @state.error_recovery = false
        else
          mse = MismatchedSet(nil)
          raise mse
        end


        # at line 27:40: ( WS )*
        loop do # decision 13
          alt_13 = 2
          look_13_0 = @input.peek(1)

          if (look_13_0 == WS) 
            alt_13 = 1

          end
          case alt_13
          when 1
            # at line 27:40: WS
            __WS23__ = match(WS, TOKENS_FOLLOWING_WS_IN_import_statement_241)

          else
            break # out of loop for decision 13
          end
        end # loop for decision 13
        # at line 27:43: ( media_list )?
        alt_14 = 2
        look_14_0 = @input.peek(1)

        if (look_14_0 == ID) 
          alt_14 = 1
        end
        case alt_14
        when 1
          # at line 27:43: media_list
          @state.following.push(TOKENS_FOLLOWING_media_list_IN_import_statement_245)
          media_list24 = media_list
          @state.following.pop
          @adaptor.add_child(root_0, media_list24.tree)

        end
        char_literal25 = match(T__38, TOKENS_FOLLOWING_T__38_IN_import_statement_248)
        # at line 27:62: ( WS )*
        loop do # decision 15
          alt_15 = 2
          look_15_0 = @input.peek(1)

          if (look_15_0 == WS) 
            alt_15 = 1

          end
          case alt_15
          when 1
            # at line 27:62: WS
            __WS26__ = match(WS, TOKENS_FOLLOWING_WS_IN_import_statement_251)

          else
            break # out of loop for decision 15
          end
        end # loop for decision 15
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)


        return_value.tree = @adaptor.rule_post_processing(root_0)
        @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 3)

      end
      
      return return_value
    end

    MediaReturnValue = define_return_scope 

    # 
    # parser rule media
    # 
    # (in samples/CSS.g)
    # 30:1: media : '@media' ( WS )* media_list '{' ( WS )* ( rule )* '}' ( WS )* ;
    # 
    def media
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 4)
      return_value = MediaReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal27 = nil
      __WS28__ = nil
      char_literal30 = nil
      __WS31__ = nil
      char_literal33 = nil
      __WS34__ = nil
      media_list29 = nil
      rule32 = nil

      tree_for_string_literal27 = nil
      tree_for_WS28 = nil
      tree_for_char_literal30 = nil
      tree_for_WS31 = nil
      tree_for_char_literal33 = nil
      tree_for_WS34 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 31:5: '@media' ( WS )* media_list '{' ( WS )* ( rule )* '}' ( WS )*
        string_literal27 = match(T__40, TOKENS_FOLLOWING_T__40_IN_media_266)

        tree_for_string_literal27 = @adaptor.create_with_payload!(string_literal27)
        root_0 = @adaptor.become_root(tree_for_string_literal27, root_0)

        # at line 31:17: ( WS )*
        loop do # decision 16
          alt_16 = 2
          look_16_0 = @input.peek(1)

          if (look_16_0 == WS) 
            alt_16 = 1

          end
          case alt_16
          when 1
            # at line 31:17: WS
            __WS28__ = match(WS, TOKENS_FOLLOWING_WS_IN_media_269)

          else
            break # out of loop for decision 16
          end
        end # loop for decision 16
        @state.following.push(TOKENS_FOLLOWING_media_list_IN_media_273)
        media_list29 = media_list
        @state.following.pop
        @adaptor.add_child(root_0, media_list29.tree)
        char_literal30 = match(T__41, TOKENS_FOLLOWING_T__41_IN_media_275)
        # at line 31:38: ( WS )*
        loop do # decision 17
          alt_17 = 2
          look_17_0 = @input.peek(1)

          if (look_17_0 == WS) 
            alt_17 = 1

          end
          case alt_17
          when 1
            # at line 31:38: WS
            __WS31__ = match(WS, TOKENS_FOLLOWING_WS_IN_media_278)

          else
            break # out of loop for decision 17
          end
        end # loop for decision 17
        # at line 31:41: ( rule )*
        loop do # decision 18
          alt_18 = 2
          look_18_0 = @input.peek(1)

          if (look_18_0.between?(ID, HASH) || look_18_0 == T__45 || look_18_0.between?(T__48, T__50)) 
            alt_18 = 1

          end
          case alt_18
          when 1
            # at line 31:41: rule
            @state.following.push(TOKENS_FOLLOWING_rule_IN_media_282)
            rule32 = rule
            @state.following.pop
            @adaptor.add_child(root_0, rule32.tree)

          else
            break # out of loop for decision 18
          end
        end # loop for decision 18
        char_literal33 = match(T__42, TOKENS_FOLLOWING_T__42_IN_media_285)
        # at line 31:54: ( WS )*
        loop do # decision 19
          alt_19 = 2
          look_19_0 = @input.peek(1)

          if (look_19_0 == WS) 
            alt_19 = 1

          end
          case alt_19
          when 1
            # at line 31:54: WS
            __WS34__ = match(WS, TOKENS_FOLLOWING_WS_IN_media_288)

          else
            break # out of loop for decision 19
          end
        end # loop for decision 19
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)


        return_value.tree = @adaptor.rule_post_processing(root_0)
        @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 4)

      end
      
      return return_value
    end

    MediaListReturnValue = define_return_scope 

    # 
    # parser rule media_list
    # 
    # (in samples/CSS.g)
    # 34:1: media_list : ID ( WS )* ( ',' ( WS )* ID ( WS )* )* -> ^( MEDIA_LIST ( ID )+ ) ;
    # 
    def media_list
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 5)
      return_value = MediaListReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __ID35__ = nil
      __WS36__ = nil
      char_literal37 = nil
      __WS38__ = nil
      __ID39__ = nil
      __WS40__ = nil

      tree_for_ID35 = nil
      tree_for_WS36 = nil
      tree_for_char_literal37 = nil
      tree_for_WS38 = nil
      tree_for_ID39 = nil
      tree_for_WS40 = nil
      stream_T__43 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__43")
      stream_WS = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token WS")
      stream_ID = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token ID")

      begin
        # at line 35:5: ID ( WS )* ( ',' ( WS )* ID ( WS )* )*
        __ID35__ = match(ID, TOKENS_FOLLOWING_ID_IN_media_list_303) 
        stream_ID.add(__ID35__)
        # at line 35:8: ( WS )*
        loop do # decision 20
          alt_20 = 2
          look_20_0 = @input.peek(1)

          if (look_20_0 == WS) 
            alt_20 = 1

          end
          case alt_20
          when 1
            # at line 35:8: WS
            __WS36__ = match(WS, TOKENS_FOLLOWING_WS_IN_media_list_305) 
            stream_WS.add(__WS36__)

          else
            break # out of loop for decision 20
          end
        end # loop for decision 20
        # at line 35:12: ( ',' ( WS )* ID ( WS )* )*
        loop do # decision 23
          alt_23 = 2
          look_23_0 = @input.peek(1)

          if (look_23_0 == T__43) 
            alt_23 = 1

          end
          case alt_23
          when 1
            # at line 35:14: ',' ( WS )* ID ( WS )*
            char_literal37 = match(T__43, TOKENS_FOLLOWING_T__43_IN_media_list_310) 
            stream_T__43.add(char_literal37)
            # at line 35:18: ( WS )*
            loop do # decision 21
              alt_21 = 2
              look_21_0 = @input.peek(1)

              if (look_21_0 == WS) 
                alt_21 = 1

              end
              case alt_21
              when 1
                # at line 35:18: WS
                __WS38__ = match(WS, TOKENS_FOLLOWING_WS_IN_media_list_312) 
                stream_WS.add(__WS38__)

              else
                break # out of loop for decision 21
              end
            end # loop for decision 21
            __ID39__ = match(ID, TOKENS_FOLLOWING_ID_IN_media_list_315) 
            stream_ID.add(__ID39__)
            # at line 35:25: ( WS )*
            loop do # decision 22
              alt_22 = 2
              look_22_0 = @input.peek(1)

              if (look_22_0 == WS) 
                alt_22 = 1

              end
              case alt_22
              when 1
                # at line 35:25: WS
                __WS40__ = match(WS, TOKENS_FOLLOWING_WS_IN_media_list_317) 
                stream_WS.add(__WS40__)

              else
                break # out of loop for decision 22
              end
            end # loop for decision 22

          else
            break # out of loop for decision 23
          end
        end # loop for decision 23
        # AST Rewrite
        # elements: ID
        # token labels: 
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 

        return_value.tree = root_0
        stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

        root_0 = @adaptor.create_flat_list!
        # 35:32: -> ^( MEDIA_LIST ( ID )+ )
        # at line 35:35: ^( MEDIA_LIST ( ID )+ )
        root_1 = @adaptor.create_flat_list!
        root_1 = @adaptor.become_root(@adaptor.create_from_type!(MEDIA_LIST, "MEDIA_LIST"), root_1)

        # at line 35:49: ( ID )+
        unless stream_ID.has_next?
          raise ANTLR3::RewriteEarlyExit
        end

        while stream_ID.has_next?
          @adaptor.add_child(root_1, stream_ID.next_node)

        end

        stream_ID.reset

        @adaptor.add_child(root_0, root_1)



        return_value.tree = root_0
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)


        return_value.tree = @adaptor.rule_post_processing(root_0)
        @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 5)

      end
      
      return return_value
    end

    PageReturnValue = define_return_scope 

    # 
    # parser rule page
    # 
    # (in samples/CSS.g)
    # 38:1: page : '@page' ( WS )* ( ':' ID ( WS )* )? '{' ( WS )* ( declaration )? ( ';' ( WS )* ( declaration )? )* '}' ( WS )* -> ^( '@page' ( ID )? ( declaration )* ) ;
    # 
    def page
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 6)
      return_value = PageReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal41 = nil
      __WS42__ = nil
      char_literal43 = nil
      __ID44__ = nil
      __WS45__ = nil
      char_literal46 = nil
      __WS47__ = nil
      char_literal49 = nil
      __WS50__ = nil
      char_literal52 = nil
      __WS53__ = nil
      declaration48 = nil
      declaration51 = nil

      tree_for_string_literal41 = nil
      tree_for_WS42 = nil
      tree_for_char_literal43 = nil
      tree_for_ID44 = nil
      tree_for_WS45 = nil
      tree_for_char_literal46 = nil
      tree_for_WS47 = nil
      tree_for_char_literal49 = nil
      tree_for_WS50 = nil
      tree_for_char_literal52 = nil
      tree_for_WS53 = nil
      stream_T__42 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__42")
      stream_T__41 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__41")
      stream_WS = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token WS")
      stream_T__44 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__44")
      stream_T__45 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__45")
      stream_ID = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token ID")
      stream_T__38 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__38")
      stream_declaration = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule declaration")
      begin
        # at line 39:5: '@page' ( WS )* ( ':' ID ( WS )* )? '{' ( WS )* ( declaration )? ( ';' ( WS )* ( declaration )? )* '}' ( WS )*
        string_literal41 = match(T__44, TOKENS_FOLLOWING_T__44_IN_page_345) 
        stream_T__44.add(string_literal41)
        # at line 39:13: ( WS )*
        loop do # decision 24
          alt_24 = 2
          look_24_0 = @input.peek(1)

          if (look_24_0 == WS) 
            alt_24 = 1

          end
          case alt_24
          when 1
            # at line 39:13: WS
            __WS42__ = match(WS, TOKENS_FOLLOWING_WS_IN_page_347) 
            stream_WS.add(__WS42__)

          else
            break # out of loop for decision 24
          end
        end # loop for decision 24
        # at line 39:17: ( ':' ID ( WS )* )?
        alt_26 = 2
        look_26_0 = @input.peek(1)

        if (look_26_0 == T__45) 
          alt_26 = 1
        end
        case alt_26
        when 1
          # at line 39:19: ':' ID ( WS )*
          char_literal43 = match(T__45, TOKENS_FOLLOWING_T__45_IN_page_352) 
          stream_T__45.add(char_literal43)
          __ID44__ = match(ID, TOKENS_FOLLOWING_ID_IN_page_354) 
          stream_ID.add(__ID44__)
          # at line 39:26: ( WS )*
          loop do # decision 25
            alt_25 = 2
            look_25_0 = @input.peek(1)

            if (look_25_0 == WS) 
              alt_25 = 1

            end
            case alt_25
            when 1
              # at line 39:26: WS
              __WS45__ = match(WS, TOKENS_FOLLOWING_WS_IN_page_356) 
              stream_WS.add(__WS45__)

            else
              break # out of loop for decision 25
            end
          end # loop for decision 25

        end
        char_literal46 = match(T__41, TOKENS_FOLLOWING_T__41_IN_page_366) 
        stream_T__41.add(char_literal46)
        # at line 40:9: ( WS )*
        loop do # decision 27
          alt_27 = 2
          look_27_0 = @input.peek(1)

          if (look_27_0 == WS) 
            alt_27 = 1

          end
          case alt_27
          when 1
            # at line 40:9: WS
            __WS47__ = match(WS, TOKENS_FOLLOWING_WS_IN_page_368) 
            stream_WS.add(__WS47__)

          else
            break # out of loop for decision 27
          end
        end # loop for decision 27
        # at line 40:13: ( declaration )?
        alt_28 = 2
        look_28_0 = @input.peek(1)

        if (look_28_0 == ID) 
          alt_28 = 1
        end
        case alt_28
        when 1
          # at line 40:13: declaration
          @state.following.push(TOKENS_FOLLOWING_declaration_IN_page_371)
          declaration48 = declaration
          @state.following.pop
          stream_declaration.add(declaration48.tree)

        end
        # at line 40:26: ( ';' ( WS )* ( declaration )? )*
        loop do # decision 31
          alt_31 = 2
          look_31_0 = @input.peek(1)

          if (look_31_0 == T__38) 
            alt_31 = 1

          end
          case alt_31
          when 1
            # at line 40:28: ';' ( WS )* ( declaration )?
            char_literal49 = match(T__38, TOKENS_FOLLOWING_T__38_IN_page_376) 
            stream_T__38.add(char_literal49)
            # at line 40:32: ( WS )*
            loop do # decision 29
              alt_29 = 2
              look_29_0 = @input.peek(1)

              if (look_29_0 == WS) 
                alt_29 = 1

              end
              case alt_29
              when 1
                # at line 40:32: WS
                __WS50__ = match(WS, TOKENS_FOLLOWING_WS_IN_page_378) 
                stream_WS.add(__WS50__)

              else
                break # out of loop for decision 29
              end
            end # loop for decision 29
            # at line 40:36: ( declaration )?
            alt_30 = 2
            look_30_0 = @input.peek(1)

            if (look_30_0 == ID) 
              alt_30 = 1
            end
            case alt_30
            when 1
              # at line 40:36: declaration
              @state.following.push(TOKENS_FOLLOWING_declaration_IN_page_381)
              declaration51 = declaration
              @state.following.pop
              stream_declaration.add(declaration51.tree)

            end

          else
            break # out of loop for decision 31
          end
        end # loop for decision 31
        char_literal52 = match(T__42, TOKENS_FOLLOWING_T__42_IN_page_387) 
        stream_T__42.add(char_literal52)
        # at line 40:56: ( WS )*
        loop do # decision 32
          alt_32 = 2
          look_32_0 = @input.peek(1)

          if (look_32_0 == WS) 
            alt_32 = 1

          end
          case alt_32
          when 1
            # at line 40:56: WS
            __WS53__ = match(WS, TOKENS_FOLLOWING_WS_IN_page_389) 
            stream_WS.add(__WS53__)

          else
            break # out of loop for decision 32
          end
        end # loop for decision 32
        # AST Rewrite
        # elements: declaration, ID, T__44
        # token labels: 
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 

        return_value.tree = root_0
        stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

        root_0 = @adaptor.create_flat_list!
        # 41:3: -> ^( '@page' ( ID )? ( declaration )* )
        # at line 41:6: ^( '@page' ( ID )? ( declaration )* )
        root_1 = @adaptor.create_flat_list!
        root_1 = @adaptor.become_root(stream_T__44.next_node, root_1)

        # at line 41:17: ( ID )?
        if stream_ID.has_next?
          @adaptor.add_child(root_1, stream_ID.next_node)

        end

        stream_ID.reset();
        # at line 41:21: ( declaration )*
        while stream_declaration.has_next?
          @adaptor.add_child(root_1, stream_declaration.next_tree)

        end

        stream_declaration.reset();

        @adaptor.add_child(root_0, root_1)



        return_value.tree = root_0
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)


        return_value.tree = @adaptor.rule_post_processing(root_0)
        @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 6)

      end
      
      return return_value
    end

    RuleReturnValue = define_return_scope 

    # 
    # parser rule rule
    # 
    # (in samples/CSS.g)
    # 44:1: rule : selector ( WS )* '{' ( WS )* ( declaration )? ( ';' ( WS )* ( declaration )? )* '}' ( WS )* -> ^( RULE selector ( ^( declaration ) )* ) ;
    # 
    def rule
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 7)
      return_value = RuleReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __WS55__ = nil
      char_literal56 = nil
      __WS57__ = nil
      char_literal59 = nil
      __WS60__ = nil
      char_literal62 = nil
      __WS63__ = nil
      selector54 = nil
      declaration58 = nil
      declaration61 = nil

      tree_for_WS55 = nil
      tree_for_char_literal56 = nil
      tree_for_WS57 = nil
      tree_for_char_literal59 = nil
      tree_for_WS60 = nil
      tree_for_char_literal62 = nil
      tree_for_WS63 = nil
      stream_T__42 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__42")
      stream_T__41 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__41")
      stream_WS = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token WS")
      stream_T__38 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__38")
      stream_selector = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule selector")
      stream_declaration = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule declaration")
      begin
        # at line 45:5: selector ( WS )* '{' ( WS )* ( declaration )? ( ';' ( WS )* ( declaration )? )* '}' ( WS )*
        @state.following.push(TOKENS_FOLLOWING_selector_IN_rule_419)
        selector54 = selector
        @state.following.pop
        stream_selector.add(selector54.tree)
        # at line 45:14: ( WS )*
        loop do # decision 33
          alt_33 = 2
          look_33_0 = @input.peek(1)

          if (look_33_0 == WS) 
            alt_33 = 1

          end
          case alt_33
          when 1
            # at line 45:14: WS
            __WS55__ = match(WS, TOKENS_FOLLOWING_WS_IN_rule_421) 
            stream_WS.add(__WS55__)

          else
            break # out of loop for decision 33
          end
        end # loop for decision 33
        char_literal56 = match(T__41, TOKENS_FOLLOWING_T__41_IN_rule_428) 
        stream_T__41.add(char_literal56)
        # at line 46:9: ( WS )*
        loop do # decision 34
          alt_34 = 2
          look_34_0 = @input.peek(1)

          if (look_34_0 == WS) 
            alt_34 = 1

          end
          case alt_34
          when 1
            # at line 46:9: WS
            __WS57__ = match(WS, TOKENS_FOLLOWING_WS_IN_rule_430) 
            stream_WS.add(__WS57__)

          else
            break # out of loop for decision 34
          end
        end # loop for decision 34
        # at line 46:13: ( declaration )?
        alt_35 = 2
        look_35_0 = @input.peek(1)

        if (look_35_0 == ID) 
          alt_35 = 1
        end
        case alt_35
        when 1
          # at line 46:13: declaration
          @state.following.push(TOKENS_FOLLOWING_declaration_IN_rule_433)
          declaration58 = declaration
          @state.following.pop
          stream_declaration.add(declaration58.tree)

        end
        # at line 46:26: ( ';' ( WS )* ( declaration )? )*
        loop do # decision 38
          alt_38 = 2
          look_38_0 = @input.peek(1)

          if (look_38_0 == T__38) 
            alt_38 = 1

          end
          case alt_38
          when 1
            # at line 46:28: ';' ( WS )* ( declaration )?
            char_literal59 = match(T__38, TOKENS_FOLLOWING_T__38_IN_rule_438) 
            stream_T__38.add(char_literal59)
            # at line 46:32: ( WS )*
            loop do # decision 36
              alt_36 = 2
              look_36_0 = @input.peek(1)

              if (look_36_0 == WS) 
                alt_36 = 1

              end
              case alt_36
              when 1
                # at line 46:32: WS
                __WS60__ = match(WS, TOKENS_FOLLOWING_WS_IN_rule_440) 
                stream_WS.add(__WS60__)

              else
                break # out of loop for decision 36
              end
            end # loop for decision 36
            # at line 46:36: ( declaration )?
            alt_37 = 2
            look_37_0 = @input.peek(1)

            if (look_37_0 == ID) 
              alt_37 = 1
            end
            case alt_37
            when 1
              # at line 46:36: declaration
              @state.following.push(TOKENS_FOLLOWING_declaration_IN_rule_443)
              declaration61 = declaration
              @state.following.pop
              stream_declaration.add(declaration61.tree)

            end

          else
            break # out of loop for decision 38
          end
        end # loop for decision 38
        char_literal62 = match(T__42, TOKENS_FOLLOWING_T__42_IN_rule_449) 
        stream_T__42.add(char_literal62)
        # at line 46:56: ( WS )*
        loop do # decision 39
          alt_39 = 2
          look_39_0 = @input.peek(1)

          if (look_39_0 == WS) 
            alt_39 = 1

          end
          case alt_39
          when 1
            # at line 46:56: WS
            __WS63__ = match(WS, TOKENS_FOLLOWING_WS_IN_rule_451) 
            stream_WS.add(__WS63__)

          else
            break # out of loop for decision 39
          end
        end # loop for decision 39
        # AST Rewrite
        # elements: declaration, selector
        # token labels: 
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 

        return_value.tree = root_0
        stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

        root_0 = @adaptor.create_flat_list!
        # 47:5: -> ^( RULE selector ( ^( declaration ) )* )
        # at line 47:8: ^( RULE selector ( ^( declaration ) )* )
        root_1 = @adaptor.create_flat_list!
        root_1 = @adaptor.become_root(@adaptor.create_from_type!(RULE, "RULE"), root_1)

        @adaptor.add_child(root_1, stream_selector.next_tree)
        # at line 47:25: ( ^( declaration ) )*
        while stream_declaration.has_next?
          # at line 47:25: ^( declaration )
          root_2 = @adaptor.create_flat_list!
          root_2 = @adaptor.become_root(stream_declaration.next_node(), root_2)

          @adaptor.add_child(root_1, root_2)

        end

        stream_declaration.reset();

        @adaptor.add_child(root_0, root_1)



        return_value.tree = root_0
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)


        return_value.tree = @adaptor.rule_post_processing(root_0)
        @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 7)

      end
      
      return return_value
    end

    SelectorReturnValue = define_return_scope 

    # 
    # parser rule selector
    # 
    # (in samples/CSS.g)
    # 50:1: selector : relational_selector ( ',' ( WS )* relational_selector )* -> ^( SELECTOR ( relational_selector )+ ) ;
    # 
    def selector
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 8)
      return_value = SelectorReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal65 = nil
      __WS66__ = nil
      relational_selector64 = nil
      relational_selector67 = nil

      tree_for_char_literal65 = nil
      tree_for_WS66 = nil
      stream_T__43 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__43")
      stream_WS = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token WS")
      stream_relational_selector = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule relational_selector")
      begin
        # at line 51:5: relational_selector ( ',' ( WS )* relational_selector )*
        @state.following.push(TOKENS_FOLLOWING_relational_selector_IN_selector_486)
        relational_selector64 = relational_selector
        @state.following.pop
        stream_relational_selector.add(relational_selector64.tree)
        # at line 51:25: ( ',' ( WS )* relational_selector )*
        loop do # decision 41
          alt_41 = 2
          look_41_0 = @input.peek(1)

          if (look_41_0 == T__43) 
            alt_41 = 1

          end
          case alt_41
          when 1
            # at line 51:27: ',' ( WS )* relational_selector
            char_literal65 = match(T__43, TOKENS_FOLLOWING_T__43_IN_selector_490) 
            stream_T__43.add(char_literal65)
            # at line 51:31: ( WS )*
            loop do # decision 40
              alt_40 = 2
              look_40_0 = @input.peek(1)

              if (look_40_0 == WS) 
                alt_40 = 1

              end
              case alt_40
              when 1
                # at line 51:31: WS
                __WS66__ = match(WS, TOKENS_FOLLOWING_WS_IN_selector_492) 
                stream_WS.add(__WS66__)

              else
                break # out of loop for decision 40
              end
            end # loop for decision 40
            @state.following.push(TOKENS_FOLLOWING_relational_selector_IN_selector_495)
            relational_selector67 = relational_selector
            @state.following.pop
            stream_relational_selector.add(relational_selector67.tree)

          else
            break # out of loop for decision 41
          end
        end # loop for decision 41
        # AST Rewrite
        # elements: relational_selector
        # token labels: 
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 

        return_value.tree = root_0
        stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

        root_0 = @adaptor.create_flat_list!
        # 52:3: -> ^( SELECTOR ( relational_selector )+ )
        # at line 52:6: ^( SELECTOR ( relational_selector )+ )
        root_1 = @adaptor.create_flat_list!
        root_1 = @adaptor.become_root(@adaptor.create_from_type!(SELECTOR, "SELECTOR"), root_1)

        # at line 52:18: ( relational_selector )+
        unless stream_relational_selector.has_next?
          raise ANTLR3::RewriteEarlyExit
        end

        while stream_relational_selector.has_next?
          @adaptor.add_child(root_1, stream_relational_selector.next_tree)

        end

        stream_relational_selector.reset

        @adaptor.add_child(root_0, root_1)



        return_value.tree = root_0
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)


        return_value.tree = @adaptor.rule_post_processing(root_0)
        @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 8)

      end
      
      return return_value
    end

    RelationalSelectorReturnValue = define_return_scope 

    # 
    # parser rule relational_selector
    # 
    # (in samples/CSS.g)
    # 55:1: relational_selector : ( simple_selector -> simple_selector ) ( ( WS )* '+' ( WS )* r= simple_selector -> ^( '+' $relational_selector $r) | ( WS )* '>' ( WS )* r= simple_selector -> ^( '>' $relational_selector $r) | ( WS )+ r= simple_selector -> ^( UNDER $relational_selector $r) )* ;
    # 
    def relational_selector
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 9)
      return_value = RelationalSelectorReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __WS69__ = nil
      char_literal70 = nil
      __WS71__ = nil
      __WS72__ = nil
      char_literal73 = nil
      __WS74__ = nil
      __WS75__ = nil
      r = nil
      simple_selector68 = nil

      tree_for_WS69 = nil
      tree_for_char_literal70 = nil
      tree_for_WS71 = nil
      tree_for_WS72 = nil
      tree_for_char_literal73 = nil
      tree_for_WS74 = nil
      tree_for_WS75 = nil
      stream_T__46 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__46")
      stream_WS = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token WS")
      stream_T__47 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__47")
      stream_simple_selector = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule simple_selector")
      begin
        # at line 56:5: ( simple_selector -> simple_selector ) ( ( WS )* '+' ( WS )* r= simple_selector -> ^( '+' $relational_selector $r) | ( WS )* '>' ( WS )* r= simple_selector -> ^( '>' $relational_selector $r) | ( WS )+ r= simple_selector -> ^( UNDER $relational_selector $r) )*
        # at line 56:5: ( simple_selector -> simple_selector )
        # at line 56:7: simple_selector
        @state.following.push(TOKENS_FOLLOWING_simple_selector_IN_relational_selector_526)
        simple_selector68 = simple_selector
        @state.following.pop
        stream_simple_selector.add(simple_selector68.tree)
        # AST Rewrite
        # elements: simple_selector
        # token labels: 
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 

        return_value.tree = root_0
        stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

        root_0 = @adaptor.create_flat_list!
        # 56:23: -> simple_selector
        @adaptor.add_child(root_0, stream_simple_selector.next_tree)



        return_value.tree = root_0

        # at line 57:5: ( ( WS )* '+' ( WS )* r= simple_selector -> ^( '+' $relational_selector $r) | ( WS )* '>' ( WS )* r= simple_selector -> ^( '>' $relational_selector $r) | ( WS )+ r= simple_selector -> ^( UNDER $relational_selector $r) )*
        loop do # decision 47
          alt_47 = 4
          alt_47 = @dfa47.predict(@input)
          case alt_47
          when 1
            # at line 57:7: ( WS )* '+' ( WS )* r= simple_selector
            # at line 57:7: ( WS )*
            loop do # decision 42
              alt_42 = 2
              look_42_0 = @input.peek(1)

              if (look_42_0 == WS) 
                alt_42 = 1

              end
              case alt_42
              when 1
                # at line 57:7: WS
                __WS69__ = match(WS, TOKENS_FOLLOWING_WS_IN_relational_selector_540) 
                stream_WS.add(__WS69__)

              else
                break # out of loop for decision 42
              end
            end # loop for decision 42
            char_literal70 = match(T__46, TOKENS_FOLLOWING_T__46_IN_relational_selector_543) 
            stream_T__46.add(char_literal70)
            # at line 57:15: ( WS )*
            loop do # decision 43
              alt_43 = 2
              look_43_0 = @input.peek(1)

              if (look_43_0 == WS) 
                alt_43 = 1

              end
              case alt_43
              when 1
                # at line 57:15: WS
                __WS71__ = match(WS, TOKENS_FOLLOWING_WS_IN_relational_selector_545) 
                stream_WS.add(__WS71__)

              else
                break # out of loop for decision 43
              end
            end # loop for decision 43
            @state.following.push(TOKENS_FOLLOWING_simple_selector_IN_relational_selector_550)
            r = simple_selector
            @state.following.pop
            stream_simple_selector.add(r.tree)
            # AST Rewrite
            # elements: r, relational_selector, T__46
            # token labels: 
            # rule labels: return_value, r
            # token list labels: 
            # rule list labels: 
            # wildcard labels: 

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")
            stream_r = r ? subtree_stream("rule r", r.tree) : subtree_stream("token r")

            root_0 = @adaptor.create_flat_list!
            # 57:37: -> ^( '+' $relational_selector $r)
            # at line 57:40: ^( '+' $relational_selector $r)
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(stream_T__46.next_node, root_1)

            @adaptor.add_child(root_1, stream_return_value.next_tree)
            @adaptor.add_child(root_1, stream_r.next_tree)

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          when 2
            # at line 58:7: ( WS )* '>' ( WS )* r= simple_selector
            # at line 58:7: ( WS )*
            loop do # decision 44
              alt_44 = 2
              look_44_0 = @input.peek(1)

              if (look_44_0 == WS) 
                alt_44 = 1

              end
              case alt_44
              when 1
                # at line 58:7: WS
                __WS72__ = match(WS, TOKENS_FOLLOWING_WS_IN_relational_selector_572) 
                stream_WS.add(__WS72__)

              else
                break # out of loop for decision 44
              end
            end # loop for decision 44
            char_literal73 = match(T__47, TOKENS_FOLLOWING_T__47_IN_relational_selector_575) 
            stream_T__47.add(char_literal73)
            # at line 58:15: ( WS )*
            loop do # decision 45
              alt_45 = 2
              look_45_0 = @input.peek(1)

              if (look_45_0 == WS) 
                alt_45 = 1

              end
              case alt_45
              when 1
                # at line 58:15: WS
                __WS74__ = match(WS, TOKENS_FOLLOWING_WS_IN_relational_selector_577) 
                stream_WS.add(__WS74__)

              else
                break # out of loop for decision 45
              end
            end # loop for decision 45
            @state.following.push(TOKENS_FOLLOWING_simple_selector_IN_relational_selector_582)
            r = simple_selector
            @state.following.pop
            stream_simple_selector.add(r.tree)
            # AST Rewrite
            # elements: relational_selector, r, T__47
            # token labels: 
            # rule labels: return_value, r
            # token list labels: 
            # rule list labels: 
            # wildcard labels: 

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")
            stream_r = r ? subtree_stream("rule r", r.tree) : subtree_stream("token r")

            root_0 = @adaptor.create_flat_list!
            # 58:37: -> ^( '>' $relational_selector $r)
            # at line 58:40: ^( '>' $relational_selector $r)
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(stream_T__47.next_node, root_1)

            @adaptor.add_child(root_1, stream_return_value.next_tree)
            @adaptor.add_child(root_1, stream_r.next_tree)

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          when 3
            # at line 59:7: ( WS )+ r= simple_selector
            # at file 59:7: ( WS )+
            match_count_46 = 0
            loop do
              alt_46 = 2
              look_46_0 = @input.peek(1)

              if (look_46_0 == WS) 
                alt_46 = 1

              end
              case alt_46
              when 1
                # at line 59:7: WS
                __WS75__ = match(WS, TOKENS_FOLLOWING_WS_IN_relational_selector_604) 
                stream_WS.add(__WS75__)

              else
                match_count_46 > 0 and break
                eee = EarlyExit(46)


                raise eee
              end
              match_count_46 += 1
            end

            @state.following.push(TOKENS_FOLLOWING_simple_selector_IN_relational_selector_609)
            r = simple_selector
            @state.following.pop
            stream_simple_selector.add(r.tree)
            # AST Rewrite
            # elements: r, relational_selector
            # token labels: 
            # rule labels: return_value, r
            # token list labels: 
            # rule list labels: 
            # wildcard labels: 

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")
            stream_r = r ? subtree_stream("rule r", r.tree) : subtree_stream("token r")

            root_0 = @adaptor.create_flat_list!
            # 59:37: -> ^( UNDER $relational_selector $r)
            # at line 59:40: ^( UNDER $relational_selector $r)
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(@adaptor.create_from_type!(UNDER, "UNDER"), root_1)

            @adaptor.add_child(root_1, stream_return_value.next_tree)
            @adaptor.add_child(root_1, stream_r.next_tree)

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          else
            break # out of loop for decision 47
          end
        end # loop for decision 47
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)


        return_value.tree = @adaptor.rule_post_processing(root_0)
        @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 9)

      end
      
      return return_value
    end

    SimpleSelectorReturnValue = define_return_scope 

    # 
    # parser rule simple_selector
    # 
    # (in samples/CSS.g)
    # 63:1: simple_selector : ( element ( modifier )* | ( modifier )+ );
    # 
    def simple_selector
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 10)
      return_value = SimpleSelectorReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      element76 = nil
      modifier77 = nil
      modifier78 = nil


      begin
        # at line 64:3: ( element ( modifier )* | ( modifier )+ )
        alt_50 = 2
        look_50_0 = @input.peek(1)

        if (look_50_0 == ID || look_50_0 == T__48) 
          alt_50 = 1
        elsif (look_50_0 == HASH || look_50_0 == T__45 || look_50_0.between?(T__49, T__50)) 
          alt_50 = 2
        else
        nvae = NoViableAlternative("", 50, 0)
          raise nvae
        end
        case alt_50
        when 1
          root_0 = @adaptor.create_flat_list!


          # at line 64:5: element ( modifier )*
          @state.following.push(TOKENS_FOLLOWING_element_IN_simple_selector_651)
          element76 = element
          @state.following.pop
          @adaptor.add_child(root_0, element76.tree)
          # at line 64:13: ( modifier )*
          loop do # decision 48
            alt_48 = 2
            look_48_0 = @input.peek(1)

            if (look_48_0 == HASH || look_48_0 == T__45 || look_48_0.between?(T__49, T__50)) 
              alt_48 = 1

            end
            case alt_48
            when 1
              # at line 64:13: modifier
              @state.following.push(TOKENS_FOLLOWING_modifier_IN_simple_selector_653)
              modifier77 = modifier
              @state.following.pop
              @adaptor.add_child(root_0, modifier77.tree)

            else
              break # out of loop for decision 48
            end
          end # loop for decision 48

        when 2
          root_0 = @adaptor.create_flat_list!


          # at line 65:5: ( modifier )+
          # at file 65:5: ( modifier )+
          match_count_49 = 0
          loop do
            alt_49 = 2
            look_49_0 = @input.peek(1)

            if (look_49_0 == HASH || look_49_0 == T__45 || look_49_0.between?(T__49, T__50)) 
              alt_49 = 1

            end
            case alt_49
            when 1
              # at line 65:5: modifier
              @state.following.push(TOKENS_FOLLOWING_modifier_IN_simple_selector_660)
              modifier78 = modifier
              @state.following.pop
              @adaptor.add_child(root_0, modifier78.tree)

            else
              match_count_49 > 0 and break
              eee = EarlyExit(49)


              raise eee
            end
            match_count_49 += 1
          end


        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)


        return_value.tree = @adaptor.rule_post_processing(root_0)
        @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 10)

      end
      
      return return_value
    end

    ElementReturnValue = define_return_scope 

    # 
    # parser rule element
    # 
    # (in samples/CSS.g)
    # 68:1: element : ( '*' -> '*' | ID -> ELEMENT[$ID] );
    # 
    def element
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 11)
      return_value = ElementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal79 = nil
      __ID80__ = nil

      tree_for_char_literal79 = nil
      tree_for_ID80 = nil
      stream_ID = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token ID")
      stream_T__48 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__48")

      begin
        # at line 69:3: ( '*' -> '*' | ID -> ELEMENT[$ID] )
        alt_51 = 2
        look_51_0 = @input.peek(1)

        if (look_51_0 == T__48) 
          alt_51 = 1
        elsif (look_51_0 == ID) 
          alt_51 = 2
        else
        nvae = NoViableAlternative("", 51, 0)
          raise nvae
        end
        case alt_51
        when 1
          # at line 69:5: '*'
          char_literal79 = match(T__48, TOKENS_FOLLOWING_T__48_IN_element_674) 
          stream_T__48.add(char_literal79)
          # AST Rewrite
          # elements: T__48
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 

          return_value.tree = root_0
          stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

          root_0 = @adaptor.create_flat_list!
          # 69:9: -> '*'
          @adaptor.add_child(root_0, stream_T__48.next_node)



          return_value.tree = root_0

        when 2
          # at line 70:5: ID
          __ID80__ = match(ID, TOKENS_FOLLOWING_ID_IN_element_684) 
          stream_ID.add(__ID80__)
          # AST Rewrite
          # elements: 
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 

          return_value.tree = root_0
          stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

          root_0 = @adaptor.create_flat_list!
          # 70:9: -> ELEMENT[$ID]
          @adaptor.add_child(root_0, @adaptor.create!(ELEMENT, __ID80__))



          return_value.tree = root_0

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)


        return_value.tree = @adaptor.rule_post_processing(root_0)
        @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 11)

      end
      
      return return_value
    end

    ModifierReturnValue = define_return_scope 

    # 
    # parser rule modifier
    # 
    # (in samples/CSS.g)
    # 73:1: modifier : ( HASH | '.' ID | '[' ( WS )* match_attribute ']' | ':' ( ID | FUNCTION ( WS )* ( ID ( WS )* )? ')' ) );
    # 
    def modifier
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 12)
      return_value = ModifierReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __HASH81__ = nil
      char_literal82 = nil
      __ID83__ = nil
      char_literal84 = nil
      __WS85__ = nil
      char_literal87 = nil
      char_literal88 = nil
      __ID89__ = nil
      __FUNCTION90__ = nil
      __WS91__ = nil
      __ID92__ = nil
      __WS93__ = nil
      char_literal94 = nil
      match_attribute86 = nil

      tree_for_HASH81 = nil
      tree_for_char_literal82 = nil
      tree_for_ID83 = nil
      tree_for_char_literal84 = nil
      tree_for_WS85 = nil
      tree_for_char_literal87 = nil
      tree_for_char_literal88 = nil
      tree_for_ID89 = nil
      tree_for_FUNCTION90 = nil
      tree_for_WS91 = nil
      tree_for_ID92 = nil
      tree_for_WS93 = nil
      tree_for_char_literal94 = nil

      begin
        # at line 74:3: ( HASH | '.' ID | '[' ( WS )* match_attribute ']' | ':' ( ID | FUNCTION ( WS )* ( ID ( WS )* )? ')' ) )
        alt_57 = 4
        case look_57 = @input.peek(1)
        when HASH then alt_57 = 1
        when T__49 then alt_57 = 2
        when T__50 then alt_57 = 3
        when T__45 then alt_57 = 4
        else
          nvae = NoViableAlternative("", 57, 0)
          raise nvae
        end
        case alt_57
        when 1
          root_0 = @adaptor.create_flat_list!


          # at line 74:5: HASH
          __HASH81__ = match(HASH, TOKENS_FOLLOWING_HASH_IN_modifier_703)

          tree_for_HASH81 = @adaptor.create_with_payload!(__HASH81__)
          root_0 = @adaptor.become_root(tree_for_HASH81, root_0)


        when 2
          root_0 = @adaptor.create_flat_list!


          # at line 75:5: '.' ID
          char_literal82 = match(T__49, TOKENS_FOLLOWING_T__49_IN_modifier_710)

          tree_for_char_literal82 = @adaptor.create_with_payload!(char_literal82)
          root_0 = @adaptor.become_root(tree_for_char_literal82, root_0)

          __ID83__ = match(ID, TOKENS_FOLLOWING_ID_IN_modifier_713)

          tree_for_ID83 = @adaptor.create_with_payload!(__ID83__)
          @adaptor.add_child(root_0, tree_for_ID83)


        when 3
          root_0 = @adaptor.create_flat_list!


          # at line 76:5: '[' ( WS )* match_attribute ']'
          char_literal84 = match(T__50, TOKENS_FOLLOWING_T__50_IN_modifier_719)

          tree_for_char_literal84 = @adaptor.create_with_payload!(char_literal84)
          root_0 = @adaptor.become_root(tree_for_char_literal84, root_0)

          # at line 76:12: ( WS )*
          loop do # decision 52
            alt_52 = 2
            look_52_0 = @input.peek(1)

            if (look_52_0 == WS) 
              alt_52 = 1

            end
            case alt_52
            when 1
              # at line 76:12: WS
              __WS85__ = match(WS, TOKENS_FOLLOWING_WS_IN_modifier_722)

            else
              break # out of loop for decision 52
            end
          end # loop for decision 52
          @state.following.push(TOKENS_FOLLOWING_match_attribute_IN_modifier_726)
          match_attribute86 = match_attribute
          @state.following.pop
          @adaptor.add_child(root_0, match_attribute86.tree)
          char_literal87 = match(T__51, TOKENS_FOLLOWING_T__51_IN_modifier_728)

        when 4
          root_0 = @adaptor.create_flat_list!


          # at line 77:5: ':' ( ID | FUNCTION ( WS )* ( ID ( WS )* )? ')' )
          char_literal88 = match(T__45, TOKENS_FOLLOWING_T__45_IN_modifier_735)

          tree_for_char_literal88 = @adaptor.create_with_payload!(char_literal88)
          root_0 = @adaptor.become_root(tree_for_char_literal88, root_0)

          # at line 77:10: ( ID | FUNCTION ( WS )* ( ID ( WS )* )? ')' )
          alt_56 = 2
          look_56_0 = @input.peek(1)

          if (look_56_0 == ID) 
            alt_56 = 1
          elsif (look_56_0 == FUNCTION) 
            alt_56 = 2
          else
          nvae = NoViableAlternative("", 56, 0)
            raise nvae
          end
          case alt_56
          when 1
            # at line 77:12: ID
            __ID89__ = match(ID, TOKENS_FOLLOWING_ID_IN_modifier_740)

            tree_for_ID89 = @adaptor.create_with_payload!(__ID89__)
            @adaptor.add_child(root_0, tree_for_ID89)


          when 2
            # at line 77:17: FUNCTION ( WS )* ( ID ( WS )* )? ')'
            __FUNCTION90__ = match(FUNCTION, TOKENS_FOLLOWING_FUNCTION_IN_modifier_744)

            tree_for_FUNCTION90 = @adaptor.create_with_payload!(__FUNCTION90__)
            @adaptor.add_child(root_0, tree_for_FUNCTION90)

            # at line 77:28: ( WS )*
            loop do # decision 53
              alt_53 = 2
              look_53_0 = @input.peek(1)

              if (look_53_0 == WS) 
                alt_53 = 1

              end
              case alt_53
              when 1
                # at line 77:28: WS
                __WS91__ = match(WS, TOKENS_FOLLOWING_WS_IN_modifier_746)

              else
                break # out of loop for decision 53
              end
            end # loop for decision 53
            # at line 77:31: ( ID ( WS )* )?
            alt_55 = 2
            look_55_0 = @input.peek(1)

            if (look_55_0 == ID) 
              alt_55 = 1
            end
            case alt_55
            when 1
              # at line 77:33: ID ( WS )*
              __ID92__ = match(ID, TOKENS_FOLLOWING_ID_IN_modifier_752)

              tree_for_ID92 = @adaptor.create_with_payload!(__ID92__)
              @adaptor.add_child(root_0, tree_for_ID92)

              # at line 77:38: ( WS )*
              loop do # decision 54
                alt_54 = 2
                look_54_0 = @input.peek(1)

                if (look_54_0 == WS) 
                  alt_54 = 1

                end
                case alt_54
                when 1
                  # at line 77:38: WS
                  __WS93__ = match(WS, TOKENS_FOLLOWING_WS_IN_modifier_754)

                else
                  break # out of loop for decision 54
                end
              end # loop for decision 54

            end
            char_literal94 = match(T__52, TOKENS_FOLLOWING_T__52_IN_modifier_761)

          end

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)


        return_value.tree = @adaptor.rule_post_processing(root_0)
        @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 12)

      end
      
      return return_value
    end

    MatchAttributeReturnValue = define_return_scope 

    # 
    # parser rule match_attribute
    # 
    # (in samples/CSS.g)
    # 80:1: match_attribute : ID ( WS )* ( ( '=' | '~=' | '|=' ) ( WS )* ( ID | STRING ) ( WS )* )? ;
    # 
    def match_attribute
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 13)
      return_value = MatchAttributeReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __ID95__ = nil
      __WS96__ = nil
      char_literal97 = nil
      string_literal98 = nil
      string_literal99 = nil
      __WS100__ = nil
      set101 = nil
      __WS102__ = nil

      tree_for_ID95 = nil
      tree_for_WS96 = nil
      tree_for_char_literal97 = nil
      tree_for_string_literal98 = nil
      tree_for_string_literal99 = nil
      tree_for_WS100 = nil
      tree_for_set101 = nil
      tree_for_WS102 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 81:5: ID ( WS )* ( ( '=' | '~=' | '|=' ) ( WS )* ( ID | STRING ) ( WS )* )?
        __ID95__ = match(ID, TOKENS_FOLLOWING_ID_IN_match_attribute_777)

        tree_for_ID95 = @adaptor.create_with_payload!(__ID95__)
        @adaptor.add_child(root_0, tree_for_ID95)

        # at line 81:10: ( WS )*
        loop do # decision 58
          alt_58 = 2
          look_58_0 = @input.peek(1)

          if (look_58_0 == WS) 
            alt_58 = 1

          end
          case alt_58
          when 1
            # at line 81:10: WS
            __WS96__ = match(WS, TOKENS_FOLLOWING_WS_IN_match_attribute_779)

          else
            break # out of loop for decision 58
          end
        end # loop for decision 58
        # at line 81:13: ( ( '=' | '~=' | '|=' ) ( WS )* ( ID | STRING ) ( WS )* )?
        alt_62 = 2
        look_62_0 = @input.peek(1)

        if (look_62_0.between?(T__53, T__55)) 
          alt_62 = 1
        end
        case alt_62
        when 1
          # at line 81:15: ( '=' | '~=' | '|=' ) ( WS )* ( ID | STRING ) ( WS )*
          # at line 81:15: ( '=' | '~=' | '|=' )
          alt_59 = 3
          case look_59 = @input.peek(1)
          when T__53 then alt_59 = 1
          when T__54 then alt_59 = 2
          when T__55 then alt_59 = 3
          else
            nvae = NoViableAlternative("", 59, 0)
            raise nvae
          end
          case alt_59
          when 1
            # at line 81:17: '='
            char_literal97 = match(T__53, TOKENS_FOLLOWING_T__53_IN_match_attribute_787)

            tree_for_char_literal97 = @adaptor.create_with_payload!(char_literal97)
            root_0 = @adaptor.become_root(tree_for_char_literal97, root_0)


          when 2
            # at line 81:24: '~='
            string_literal98 = match(T__54, TOKENS_FOLLOWING_T__54_IN_match_attribute_792)

            tree_for_string_literal98 = @adaptor.create_with_payload!(string_literal98)
            root_0 = @adaptor.become_root(tree_for_string_literal98, root_0)


          when 3
            # at line 81:32: '|='
            string_literal99 = match(T__55, TOKENS_FOLLOWING_T__55_IN_match_attribute_797)

            tree_for_string_literal99 = @adaptor.create_with_payload!(string_literal99)
            root_0 = @adaptor.become_root(tree_for_string_literal99, root_0)


          end
          # at line 81:42: ( WS )*
          loop do # decision 60
            alt_60 = 2
            look_60_0 = @input.peek(1)

            if (look_60_0 == WS) 
              alt_60 = 1

            end
            case alt_60
            when 1
              # at line 81:42: WS
              __WS100__ = match(WS, TOKENS_FOLLOWING_WS_IN_match_attribute_802)

            else
              break # out of loop for decision 60
            end
          end # loop for decision 60
          set101 = @input.look
          if @input.peek(1) == STRING || @input.peek(1) == ID
            @input.consume
            @adaptor.add_child(root_0, @adaptor.create_with_payload!(set101))
            @state.error_recovery = false
          else
            mse = MismatchedSet(nil)
            raise mse
          end


          # at line 81:63: ( WS )*
          loop do # decision 61
            alt_61 = 2
            look_61_0 = @input.peek(1)

            if (look_61_0 == WS) 
              alt_61 = 1

            end
            case alt_61
            when 1
              # at line 81:63: WS
              __WS102__ = match(WS, TOKENS_FOLLOWING_WS_IN_match_attribute_816)

            else
              break # out of loop for decision 61
            end
          end # loop for decision 61

        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)


        return_value.tree = @adaptor.rule_post_processing(root_0)
        @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 13)

      end
      
      return return_value
    end

    DeclarationReturnValue = define_return_scope 

    # 
    # parser rule declaration
    # 
    # (in samples/CSS.g)
    # 84:1: declaration : ID ( WS )* ':' ( WS )* expr ( IMPORTANT ( WS )* )? ;
    # 
    def declaration
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 14)
      return_value = DeclarationReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __ID103__ = nil
      __WS104__ = nil
      char_literal105 = nil
      __WS106__ = nil
      __IMPORTANT108__ = nil
      __WS109__ = nil
      expr107 = nil

      tree_for_ID103 = nil
      tree_for_WS104 = nil
      tree_for_char_literal105 = nil
      tree_for_WS106 = nil
      tree_for_IMPORTANT108 = nil
      tree_for_WS109 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 85:5: ID ( WS )* ':' ( WS )* expr ( IMPORTANT ( WS )* )?
        __ID103__ = match(ID, TOKENS_FOLLOWING_ID_IN_declaration_834)

        tree_for_ID103 = @adaptor.create_with_payload!(__ID103__)
        @adaptor.add_child(root_0, tree_for_ID103)

        # at line 85:10: ( WS )*
        loop do # decision 63
          alt_63 = 2
          look_63_0 = @input.peek(1)

          if (look_63_0 == WS) 
            alt_63 = 1

          end
          case alt_63
          when 1
            # at line 85:10: WS
            __WS104__ = match(WS, TOKENS_FOLLOWING_WS_IN_declaration_836)

          else
            break # out of loop for decision 63
          end
        end # loop for decision 63
        char_literal105 = match(T__45, TOKENS_FOLLOWING_T__45_IN_declaration_840)

        tree_for_char_literal105 = @adaptor.create_with_payload!(char_literal105)
        root_0 = @adaptor.become_root(tree_for_char_literal105, root_0)

        # at line 85:20: ( WS )*
        loop do # decision 64
          alt_64 = 2
          look_64_0 = @input.peek(1)

          if (look_64_0 == WS) 
            alt_64 = 1

          end
          case alt_64
          when 1
            # at line 85:20: WS
            __WS106__ = match(WS, TOKENS_FOLLOWING_WS_IN_declaration_843)

          else
            break # out of loop for decision 64
          end
        end # loop for decision 64
        @state.following.push(TOKENS_FOLLOWING_expr_IN_declaration_847)
        expr107 = expr
        @state.following.pop
        @adaptor.add_child(root_0, expr107.tree)
        # at line 85:28: ( IMPORTANT ( WS )* )?
        alt_66 = 2
        look_66_0 = @input.peek(1)

        if (look_66_0 == IMPORTANT) 
          alt_66 = 1
        end
        case alt_66
        when 1
          # at line 85:29: IMPORTANT ( WS )*
          __IMPORTANT108__ = match(IMPORTANT, TOKENS_FOLLOWING_IMPORTANT_IN_declaration_850)

          tree_for_IMPORTANT108 = @adaptor.create_with_payload!(__IMPORTANT108__)
          @adaptor.add_child(root_0, tree_for_IMPORTANT108)

          # at line 85:41: ( WS )*
          loop do # decision 65
            alt_65 = 2
            look_65_0 = @input.peek(1)

            if (look_65_0 == WS) 
              alt_65 = 1

            end
            case alt_65
            when 1
              # at line 85:41: WS
              __WS109__ = match(WS, TOKENS_FOLLOWING_WS_IN_declaration_852)

            else
              break # out of loop for decision 65
            end
          end # loop for decision 65

        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)


        return_value.tree = @adaptor.rule_post_processing(root_0)
        @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 14)

      end
      
      return return_value
    end

    ExprReturnValue = define_return_scope 

    # 
    # parser rule expr
    # 
    # (in samples/CSS.g)
    # 88:1: expr : term ( ( '/' ( WS )* | ',' ( WS )* )? term )* ;
    # 
    def expr
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 15)
      return_value = ExprReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal111 = nil
      __WS112__ = nil
      char_literal113 = nil
      __WS114__ = nil
      term110 = nil
      term115 = nil

      tree_for_char_literal111 = nil
      tree_for_WS112 = nil
      tree_for_char_literal113 = nil
      tree_for_WS114 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 89:5: term ( ( '/' ( WS )* | ',' ( WS )* )? term )*
        @state.following.push(TOKENS_FOLLOWING_term_IN_expr_869)
        term110 = term
        @state.following.pop
        @adaptor.add_child(root_0, term110.tree)
        # at line 89:10: ( ( '/' ( WS )* | ',' ( WS )* )? term )*
        loop do # decision 70
          alt_70 = 2
          look_70_0 = @input.peek(1)

          if (look_70_0 == PERCENTAGE || look_70_0 == FUNCTION || look_70_0.between?(ANGLE, EXS) || look_70_0.between?(STRING, HASH) || look_70_0 == NUMBER || look_70_0 == T__43 || look_70_0 == T__46 || look_70_0.between?(T__56, T__57)) 
            alt_70 = 1

          end
          case alt_70
          when 1
            # at line 89:12: ( '/' ( WS )* | ',' ( WS )* )? term
            # at line 89:12: ( '/' ( WS )* | ',' ( WS )* )?
            alt_69 = 3
            look_69_0 = @input.peek(1)

            if (look_69_0 == T__56) 
              alt_69 = 1
            elsif (look_69_0 == T__43) 
              alt_69 = 2
            end
            case alt_69
            when 1
              # at line 89:14: '/' ( WS )*
              char_literal111 = match(T__56, TOKENS_FOLLOWING_T__56_IN_expr_875)

              tree_for_char_literal111 = @adaptor.create_with_payload!(char_literal111)
              root_0 = @adaptor.become_root(tree_for_char_literal111, root_0)

              # at line 89:21: ( WS )*
              loop do # decision 67
                alt_67 = 2
                look_67_0 = @input.peek(1)

                if (look_67_0 == WS) 
                  alt_67 = 1

                end
                case alt_67
                when 1
                  # at line 89:21: WS
                  __WS112__ = match(WS, TOKENS_FOLLOWING_WS_IN_expr_878)

                else
                  break # out of loop for decision 67
                end
              end # loop for decision 67

            when 2
              # at line 89:26: ',' ( WS )*
              char_literal113 = match(T__43, TOKENS_FOLLOWING_T__43_IN_expr_884)

              tree_for_char_literal113 = @adaptor.create_with_payload!(char_literal113)
              root_0 = @adaptor.become_root(tree_for_char_literal113, root_0)

              # at line 89:33: ( WS )*
              loop do # decision 68
                alt_68 = 2
                look_68_0 = @input.peek(1)

                if (look_68_0 == WS) 
                  alt_68 = 1

                end
                case alt_68
                when 1
                  # at line 89:33: WS
                  __WS114__ = match(WS, TOKENS_FOLLOWING_WS_IN_expr_887)

                else
                  break # out of loop for decision 68
                end
              end # loop for decision 68

            end
            @state.following.push(TOKENS_FOLLOWING_term_IN_expr_894)
            term115 = term
            @state.following.pop
            @adaptor.add_child(root_0, term115.tree)

          else
            break # out of loop for decision 70
          end
        end # loop for decision 70
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)


        return_value.tree = @adaptor.rule_post_processing(root_0)
        @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 15)

      end
      
      return return_value
    end

    TermReturnValue = define_return_scope 

    # 
    # parser rule term
    # 
    # (in samples/CSS.g)
    # 92:1: term : ( ( '-' | '+' )? ( NUMBER | PERCENTAGE | LENGTH | EMS | EXS | ANGLE | TIME | FREQ ) ( WS )* | STRING ( WS )* | ID ( WS )* | URI ( WS )* | HASH ( WS )* | FUNCTION ( WS )* expr ')' ( WS )* );
    # 
    def term
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 16)
      return_value = TermReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      set116 = nil
      set117 = nil
      __WS118__ = nil
      __STRING119__ = nil
      __WS120__ = nil
      __ID121__ = nil
      __WS122__ = nil
      __URI123__ = nil
      __WS124__ = nil
      __HASH125__ = nil
      __WS126__ = nil
      __FUNCTION127__ = nil
      __WS128__ = nil
      char_literal130 = nil
      __WS131__ = nil
      expr129 = nil

      tree_for_set116 = nil
      tree_for_set117 = nil
      tree_for_WS118 = nil
      tree_for_STRING119 = nil
      tree_for_WS120 = nil
      tree_for_ID121 = nil
      tree_for_WS122 = nil
      tree_for_URI123 = nil
      tree_for_WS124 = nil
      tree_for_HASH125 = nil
      tree_for_WS126 = nil
      tree_for_FUNCTION127 = nil
      tree_for_WS128 = nil
      tree_for_char_literal130 = nil
      tree_for_WS131 = nil

      begin
        # at line 93:3: ( ( '-' | '+' )? ( NUMBER | PERCENTAGE | LENGTH | EMS | EXS | ANGLE | TIME | FREQ ) ( WS )* | STRING ( WS )* | ID ( WS )* | URI ( WS )* | HASH ( WS )* | FUNCTION ( WS )* expr ')' ( WS )* )
        alt_79 = 6
        case look_79 = @input.peek(1)
        when PERCENTAGE, ANGLE, LENGTH, FREQ, TIME, EMS, EXS, NUMBER, T__46, T__57 then alt_79 = 1
        when STRING then alt_79 = 2
        when ID then alt_79 = 3
        when URI then alt_79 = 4
        when HASH then alt_79 = 5
        when FUNCTION then alt_79 = 6
        else
          nvae = NoViableAlternative("", 79, 0)
          raise nvae
        end
        case alt_79
        when 1
          root_0 = @adaptor.create_flat_list!


          # at line 93:5: ( '-' | '+' )? ( NUMBER | PERCENTAGE | LENGTH | EMS | EXS | ANGLE | TIME | FREQ ) ( WS )*
          # at line 93:5: ( '-' | '+' )?
          alt_71 = 2
          look_71_0 = @input.peek(1)

          if (look_71_0 == T__46 || look_71_0 == T__57) 
            alt_71 = 1
          end
          case alt_71
          when 1
            # at line 
            set116 = @input.look
            if @input.peek(1) == T__46 || @input.peek(1) == T__57
              @input.consume
              @adaptor.add_child(root_0, @adaptor.create_with_payload!(set116))
              @state.error_recovery = false
            else
              mse = MismatchedSet(nil)
              raise mse
            end



          end
          set117 = @input.look
          if @input.peek(1) == PERCENTAGE || @input.peek(1).between?(ANGLE, EXS) || @input.peek(1) == NUMBER
            @input.consume
            @adaptor.add_child(root_0, @adaptor.create_with_payload!(set117))
            @state.error_recovery = false
          else
            mse = MismatchedSet(nil)
            raise mse
          end


          # at line 93:89: ( WS )*
          loop do # decision 72
            alt_72 = 2
            look_72_0 = @input.peek(1)

            if (look_72_0 == WS) 
              alt_72 = 1

            end
            case alt_72
            when 1
              # at line 93:89: WS
              __WS118__ = match(WS, TOKENS_FOLLOWING_WS_IN_term_955)

            else
              break # out of loop for decision 72
            end
          end # loop for decision 72

        when 2
          root_0 = @adaptor.create_flat_list!


          # at line 94:5: STRING ( WS )*
          __STRING119__ = match(STRING, TOKENS_FOLLOWING_STRING_IN_term_963)

          tree_for_STRING119 = @adaptor.create_with_payload!(__STRING119__)
          @adaptor.add_child(root_0, tree_for_STRING119)

          # at line 94:14: ( WS )*
          loop do # decision 73
            alt_73 = 2
            look_73_0 = @input.peek(1)

            if (look_73_0 == WS) 
              alt_73 = 1

            end
            case alt_73
            when 1
              # at line 94:14: WS
              __WS120__ = match(WS, TOKENS_FOLLOWING_WS_IN_term_965)

            else
              break # out of loop for decision 73
            end
          end # loop for decision 73

        when 3
          root_0 = @adaptor.create_flat_list!


          # at line 95:5: ID ( WS )*
          __ID121__ = match(ID, TOKENS_FOLLOWING_ID_IN_term_973)

          tree_for_ID121 = @adaptor.create_with_payload!(__ID121__)
          @adaptor.add_child(root_0, tree_for_ID121)

          # at line 95:10: ( WS )*
          loop do # decision 74
            alt_74 = 2
            look_74_0 = @input.peek(1)

            if (look_74_0 == WS) 
              alt_74 = 1

            end
            case alt_74
            when 1
              # at line 95:10: WS
              __WS122__ = match(WS, TOKENS_FOLLOWING_WS_IN_term_975)

            else
              break # out of loop for decision 74
            end
          end # loop for decision 74

        when 4
          root_0 = @adaptor.create_flat_list!


          # at line 96:5: URI ( WS )*
          __URI123__ = match(URI, TOKENS_FOLLOWING_URI_IN_term_983)

          tree_for_URI123 = @adaptor.create_with_payload!(__URI123__)
          @adaptor.add_child(root_0, tree_for_URI123)

          # at line 96:11: ( WS )*
          loop do # decision 75
            alt_75 = 2
            look_75_0 = @input.peek(1)

            if (look_75_0 == WS) 
              alt_75 = 1

            end
            case alt_75
            when 1
              # at line 96:11: WS
              __WS124__ = match(WS, TOKENS_FOLLOWING_WS_IN_term_985)

            else
              break # out of loop for decision 75
            end
          end # loop for decision 75

        when 5
          root_0 = @adaptor.create_flat_list!


          # at line 97:5: HASH ( WS )*
          __HASH125__ = match(HASH, TOKENS_FOLLOWING_HASH_IN_term_993)

          tree_for_HASH125 = @adaptor.create_with_payload!(__HASH125__)
          @adaptor.add_child(root_0, tree_for_HASH125)

          # at line 97:12: ( WS )*
          loop do # decision 76
            alt_76 = 2
            look_76_0 = @input.peek(1)

            if (look_76_0 == WS) 
              alt_76 = 1

            end
            case alt_76
            when 1
              # at line 97:12: WS
              __WS126__ = match(WS, TOKENS_FOLLOWING_WS_IN_term_995)

            else
              break # out of loop for decision 76
            end
          end # loop for decision 76

        when 6
          root_0 = @adaptor.create_flat_list!


          # at line 98:5: FUNCTION ( WS )* expr ')' ( WS )*
          __FUNCTION127__ = match(FUNCTION, TOKENS_FOLLOWING_FUNCTION_IN_term_1009)

          tree_for_FUNCTION127 = @adaptor.create_with_payload!(__FUNCTION127__)
          @adaptor.add_child(root_0, tree_for_FUNCTION127)

          # at line 98:16: ( WS )*
          loop do # decision 77
            alt_77 = 2
            look_77_0 = @input.peek(1)

            if (look_77_0 == WS) 
              alt_77 = 1

            end
            case alt_77
            when 1
              # at line 98:16: WS
              __WS128__ = match(WS, TOKENS_FOLLOWING_WS_IN_term_1011)

            else
              break # out of loop for decision 77
            end
          end # loop for decision 77
          @state.following.push(TOKENS_FOLLOWING_expr_IN_term_1015)
          expr129 = expr
          @state.following.pop
          @adaptor.add_child(root_0, expr129.tree)
          char_literal130 = match(T__52, TOKENS_FOLLOWING_T__52_IN_term_1017)

          tree_for_char_literal130 = @adaptor.create_with_payload!(char_literal130)
          @adaptor.add_child(root_0, tree_for_char_literal130)

          # at line 98:30: ( WS )*
          loop do # decision 78
            alt_78 = 2
            look_78_0 = @input.peek(1)

            if (look_78_0 == WS) 
              alt_78 = 1

            end
            case alt_78
            when 1
              # at line 98:30: WS
              __WS131__ = match(WS, TOKENS_FOLLOWING_WS_IN_term_1019)

            else
              break # out of loop for decision 78
            end
          end # loop for decision 78

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)


        return_value.tree = @adaptor.rule_post_processing(root_0)
        @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 16)

      end
      
      return return_value
    end



    # - - - - - - - - - - DFA definitions - - - - - - - - - - -
    class DFA47 < ANTLR3::DFA
      EOT = unpack(6, -1)
      EOF = unpack(6, -1)
      MIN = unpack(1, 19, 1, -1, 1, 19, 3, -1)
      MAX = unpack(1, 47, 1, -1, 1, 50, 3, -1)
      ACCEPT = unpack(1, -1, 1, 4, 1, -1, 1, 1, 1, 2, 1, 3)
      SPECIAL = unpack(6, -1)
      TRANSITION = [
        unpack(1, 2, 21, -1, 1, 1, 1, -1, 1, 1, 2, -1, 1, 3, 1, 4),
        unpack(),
        unpack(1, 2, 2, -1, 2, 5, 17, -1, 1, 1, 3, -1, 1, 5, 1, 3, 1, 4, 
                3, 5),
        unpack(),
        unpack(),
        unpack()
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 47
      

      def description
        <<-'__dfa_description__'.strip!
          ()* loopback of 57:5: ( ( WS )* '+' ( WS )* r= simple_selector -> ^( '+' $relational_selector $r) | ( WS )* '>' ( WS )* r= simple_selector -> ^( '>' $relational_selector $r) | ( WS )+ r= simple_selector -> ^( UNDER $relational_selector $r) )*
        __dfa_description__
      end
    end


    private

    def initialize_dfas
      super rescue nil
      @dfa47 = DFA47.new(self, 47)

    end
    TOKENS_FOLLOWING_charset_IN_stylesheet_93 = Set[1, 19, 22, 23, 35, 36, 39, 40, 44, 45, 48, 49, 50]
    TOKENS_FOLLOWING_WS_IN_stylesheet_102 = Set[1, 19, 22, 23, 35, 36, 39, 40, 44, 45, 48, 49, 50]
    TOKENS_FOLLOWING_T__35_IN_stylesheet_107 = Set[1, 19, 22, 23, 35, 36, 39, 40, 44, 45, 48, 49, 50]
    TOKENS_FOLLOWING_T__36_IN_stylesheet_112 = Set[1, 19, 22, 23, 35, 36, 39, 40, 44, 45, 48, 49, 50]
    TOKENS_FOLLOWING_import_statement_IN_stylesheet_124 = Set[1, 22, 23, 35, 36, 39, 40, 44, 45, 48, 49, 50]
    TOKENS_FOLLOWING_T__35_IN_stylesheet_128 = Set[1, 19, 22, 23, 35, 36, 39, 40, 44, 45, 48, 49, 50]
    TOKENS_FOLLOWING_WS_IN_stylesheet_131 = Set[1, 19, 22, 23, 35, 36, 39, 40, 44, 45, 48, 49, 50]
    TOKENS_FOLLOWING_T__36_IN_stylesheet_137 = Set[1, 19, 22, 23, 35, 36, 39, 40, 44, 45, 48, 49, 50]
    TOKENS_FOLLOWING_WS_IN_stylesheet_140 = Set[1, 19, 22, 23, 35, 36, 39, 40, 44, 45, 48, 49, 50]
    TOKENS_FOLLOWING_rule_IN_stylesheet_158 = Set[1, 22, 23, 35, 36, 40, 44, 45, 48, 49, 50]
    TOKENS_FOLLOWING_media_IN_stylesheet_162 = Set[1, 22, 23, 35, 36, 40, 44, 45, 48, 49, 50]
    TOKENS_FOLLOWING_page_IN_stylesheet_166 = Set[1, 22, 23, 35, 36, 40, 44, 45, 48, 49, 50]
    TOKENS_FOLLOWING_T__35_IN_stylesheet_172 = Set[1, 19, 22, 23, 35, 36, 40, 44, 45, 48, 49, 50]
    TOKENS_FOLLOWING_WS_IN_stylesheet_175 = Set[1, 19, 22, 23, 35, 36, 40, 44, 45, 48, 49, 50]
    TOKENS_FOLLOWING_T__36_IN_stylesheet_181 = Set[1, 19, 22, 23, 35, 36, 40, 44, 45, 48, 49, 50]
    TOKENS_FOLLOWING_WS_IN_stylesheet_184 = Set[1, 19, 22, 23, 35, 36, 40, 44, 45, 48, 49, 50]
    TOKENS_FOLLOWING_T__37_IN_charset_205 = Set[20]
    TOKENS_FOLLOWING_STRING_IN_charset_208 = Set[38]
    TOKENS_FOLLOWING_T__38_IN_charset_210 = Set[1]
    TOKENS_FOLLOWING_T__39_IN_import_statement_224 = Set[19, 20, 21]
    TOKENS_FOLLOWING_WS_IN_import_statement_227 = Set[19, 20, 21]
    TOKENS_FOLLOWING_set_IN_import_statement_231 = Set[19, 22, 38]
    TOKENS_FOLLOWING_WS_IN_import_statement_241 = Set[19, 22, 38]
    TOKENS_FOLLOWING_media_list_IN_import_statement_245 = Set[38]
    TOKENS_FOLLOWING_T__38_IN_import_statement_248 = Set[1, 19]
    TOKENS_FOLLOWING_WS_IN_import_statement_251 = Set[1, 19]
    TOKENS_FOLLOWING_T__40_IN_media_266 = Set[19, 22]
    TOKENS_FOLLOWING_WS_IN_media_269 = Set[19, 22]
    TOKENS_FOLLOWING_media_list_IN_media_273 = Set[41]
    TOKENS_FOLLOWING_T__41_IN_media_275 = Set[19, 22, 23, 42, 45, 48, 49, 50]
    TOKENS_FOLLOWING_WS_IN_media_278 = Set[19, 22, 23, 42, 45, 48, 49, 50]
    TOKENS_FOLLOWING_rule_IN_media_282 = Set[22, 23, 42, 45, 48, 49, 50]
    TOKENS_FOLLOWING_T__42_IN_media_285 = Set[1, 19]
    TOKENS_FOLLOWING_WS_IN_media_288 = Set[1, 19]
    TOKENS_FOLLOWING_ID_IN_media_list_303 = Set[1, 19, 43]
    TOKENS_FOLLOWING_WS_IN_media_list_305 = Set[1, 19, 43]
    TOKENS_FOLLOWING_T__43_IN_media_list_310 = Set[19, 22]
    TOKENS_FOLLOWING_WS_IN_media_list_312 = Set[19, 22]
    TOKENS_FOLLOWING_ID_IN_media_list_315 = Set[1, 19, 43]
    TOKENS_FOLLOWING_WS_IN_media_list_317 = Set[1, 19, 43]
    TOKENS_FOLLOWING_T__44_IN_page_345 = Set[19, 41, 45]
    TOKENS_FOLLOWING_WS_IN_page_347 = Set[19, 41, 45]
    TOKENS_FOLLOWING_T__45_IN_page_352 = Set[22]
    TOKENS_FOLLOWING_ID_IN_page_354 = Set[19, 41]
    TOKENS_FOLLOWING_WS_IN_page_356 = Set[19, 41]
    TOKENS_FOLLOWING_T__41_IN_page_366 = Set[19, 22, 38, 42]
    TOKENS_FOLLOWING_WS_IN_page_368 = Set[19, 22, 38, 42]
    TOKENS_FOLLOWING_declaration_IN_page_371 = Set[38, 42]
    TOKENS_FOLLOWING_T__38_IN_page_376 = Set[19, 22, 38, 42]
    TOKENS_FOLLOWING_WS_IN_page_378 = Set[19, 22, 38, 42]
    TOKENS_FOLLOWING_declaration_IN_page_381 = Set[38, 42]
    TOKENS_FOLLOWING_T__42_IN_page_387 = Set[1, 19]
    TOKENS_FOLLOWING_WS_IN_page_389 = Set[1, 19]
    TOKENS_FOLLOWING_selector_IN_rule_419 = Set[19, 41]
    TOKENS_FOLLOWING_WS_IN_rule_421 = Set[19, 41]
    TOKENS_FOLLOWING_T__41_IN_rule_428 = Set[19, 22, 38, 42]
    TOKENS_FOLLOWING_WS_IN_rule_430 = Set[19, 22, 38, 42]
    TOKENS_FOLLOWING_declaration_IN_rule_433 = Set[38, 42]
    TOKENS_FOLLOWING_T__38_IN_rule_438 = Set[19, 22, 38, 42]
    TOKENS_FOLLOWING_WS_IN_rule_440 = Set[19, 22, 38, 42]
    TOKENS_FOLLOWING_declaration_IN_rule_443 = Set[38, 42]
    TOKENS_FOLLOWING_T__42_IN_rule_449 = Set[1, 19]
    TOKENS_FOLLOWING_WS_IN_rule_451 = Set[1, 19]
    TOKENS_FOLLOWING_relational_selector_IN_selector_486 = Set[1, 43]
    TOKENS_FOLLOWING_T__43_IN_selector_490 = Set[19, 22, 23, 45, 48, 49, 50]
    TOKENS_FOLLOWING_WS_IN_selector_492 = Set[19, 22, 23, 45, 48, 49, 50]
    TOKENS_FOLLOWING_relational_selector_IN_selector_495 = Set[1, 43]
    TOKENS_FOLLOWING_simple_selector_IN_relational_selector_526 = Set[1, 19, 46, 47]
    TOKENS_FOLLOWING_WS_IN_relational_selector_540 = Set[19, 46]
    TOKENS_FOLLOWING_T__46_IN_relational_selector_543 = Set[19, 22, 23, 45, 48, 49, 50]
    TOKENS_FOLLOWING_WS_IN_relational_selector_545 = Set[19, 22, 23, 45, 48, 49, 50]
    TOKENS_FOLLOWING_simple_selector_IN_relational_selector_550 = Set[1, 19, 46, 47]
    TOKENS_FOLLOWING_WS_IN_relational_selector_572 = Set[19, 47]
    TOKENS_FOLLOWING_T__47_IN_relational_selector_575 = Set[19, 22, 23, 45, 48, 49, 50]
    TOKENS_FOLLOWING_WS_IN_relational_selector_577 = Set[19, 22, 23, 45, 48, 49, 50]
    TOKENS_FOLLOWING_simple_selector_IN_relational_selector_582 = Set[1, 19, 46, 47]
    TOKENS_FOLLOWING_WS_IN_relational_selector_604 = Set[19, 22, 23, 45, 48, 49, 50]
    TOKENS_FOLLOWING_simple_selector_IN_relational_selector_609 = Set[1, 19, 46, 47]
    TOKENS_FOLLOWING_element_IN_simple_selector_651 = Set[1, 22, 23, 45, 48, 49, 50]
    TOKENS_FOLLOWING_modifier_IN_simple_selector_653 = Set[1, 22, 23, 45, 48, 49, 50]
    TOKENS_FOLLOWING_modifier_IN_simple_selector_660 = Set[1, 22, 23, 45, 48, 49, 50]
    TOKENS_FOLLOWING_T__48_IN_element_674 = Set[1]
    TOKENS_FOLLOWING_ID_IN_element_684 = Set[1]
    TOKENS_FOLLOWING_HASH_IN_modifier_703 = Set[1]
    TOKENS_FOLLOWING_T__49_IN_modifier_710 = Set[22]
    TOKENS_FOLLOWING_ID_IN_modifier_713 = Set[1]
    TOKENS_FOLLOWING_T__50_IN_modifier_719 = Set[19, 22]
    TOKENS_FOLLOWING_WS_IN_modifier_722 = Set[19, 22]
    TOKENS_FOLLOWING_match_attribute_IN_modifier_726 = Set[51]
    TOKENS_FOLLOWING_T__51_IN_modifier_728 = Set[1]
    TOKENS_FOLLOWING_T__45_IN_modifier_735 = Set[6, 22]
    TOKENS_FOLLOWING_ID_IN_modifier_740 = Set[1]
    TOKENS_FOLLOWING_FUNCTION_IN_modifier_744 = Set[19, 22, 52]
    TOKENS_FOLLOWING_WS_IN_modifier_746 = Set[19, 22, 52]
    TOKENS_FOLLOWING_ID_IN_modifier_752 = Set[19, 52]
    TOKENS_FOLLOWING_WS_IN_modifier_754 = Set[19, 52]
    TOKENS_FOLLOWING_T__52_IN_modifier_761 = Set[1]
    TOKENS_FOLLOWING_ID_IN_match_attribute_777 = Set[1, 19, 53, 54, 55]
    TOKENS_FOLLOWING_WS_IN_match_attribute_779 = Set[1, 19, 53, 54, 55]
    TOKENS_FOLLOWING_T__53_IN_match_attribute_787 = Set[19, 20, 22]
    TOKENS_FOLLOWING_T__54_IN_match_attribute_792 = Set[19, 20, 22]
    TOKENS_FOLLOWING_T__55_IN_match_attribute_797 = Set[19, 20, 22]
    TOKENS_FOLLOWING_WS_IN_match_attribute_802 = Set[19, 20, 22]
    TOKENS_FOLLOWING_set_IN_match_attribute_806 = Set[1, 19]
    TOKENS_FOLLOWING_WS_IN_match_attribute_816 = Set[1, 19]
    TOKENS_FOLLOWING_ID_IN_declaration_834 = Set[19, 45]
    TOKENS_FOLLOWING_WS_IN_declaration_836 = Set[19, 45]
    TOKENS_FOLLOWING_T__45_IN_declaration_840 = Set[4, 6, 8, 9, 10, 11, 12, 13, 19, 20, 21, 22, 23, 25, 46, 57]
    TOKENS_FOLLOWING_WS_IN_declaration_843 = Set[4, 6, 8, 9, 10, 11, 12, 13, 19, 20, 21, 22, 23, 25, 46, 57]
    TOKENS_FOLLOWING_expr_IN_declaration_847 = Set[1, 24]
    TOKENS_FOLLOWING_IMPORTANT_IN_declaration_850 = Set[1, 19]
    TOKENS_FOLLOWING_WS_IN_declaration_852 = Set[1, 19]
    TOKENS_FOLLOWING_term_IN_expr_869 = Set[1, 4, 6, 8, 9, 10, 11, 12, 13, 19, 20, 21, 22, 23, 25, 43, 46, 56, 57]
    TOKENS_FOLLOWING_T__56_IN_expr_875 = Set[4, 6, 8, 9, 10, 11, 12, 13, 19, 20, 21, 22, 23, 25, 46, 57]
    TOKENS_FOLLOWING_WS_IN_expr_878 = Set[4, 6, 8, 9, 10, 11, 12, 13, 19, 20, 21, 22, 23, 25, 46, 57]
    TOKENS_FOLLOWING_T__43_IN_expr_884 = Set[4, 6, 8, 9, 10, 11, 12, 13, 19, 20, 21, 22, 23, 25, 46, 57]
    TOKENS_FOLLOWING_WS_IN_expr_887 = Set[4, 6, 8, 9, 10, 11, 12, 13, 19, 20, 21, 22, 23, 25, 46, 57]
    TOKENS_FOLLOWING_term_IN_expr_894 = Set[1, 4, 6, 8, 9, 10, 11, 12, 13, 19, 20, 21, 22, 23, 25, 43, 46, 56, 57]
    TOKENS_FOLLOWING_set_IN_term_910 = Set[4, 8, 9, 10, 11, 12, 13, 25]
    TOKENS_FOLLOWING_set_IN_term_921 = Set[1, 19]
    TOKENS_FOLLOWING_WS_IN_term_955 = Set[1, 19]
    TOKENS_FOLLOWING_STRING_IN_term_963 = Set[1, 19]
    TOKENS_FOLLOWING_WS_IN_term_965 = Set[1, 19]
    TOKENS_FOLLOWING_ID_IN_term_973 = Set[1, 19]
    TOKENS_FOLLOWING_WS_IN_term_975 = Set[1, 19]
    TOKENS_FOLLOWING_URI_IN_term_983 = Set[1, 19]
    TOKENS_FOLLOWING_WS_IN_term_985 = Set[1, 19]
    TOKENS_FOLLOWING_HASH_IN_term_993 = Set[1, 19]
    TOKENS_FOLLOWING_WS_IN_term_995 = Set[1, 19]
    TOKENS_FOLLOWING_FUNCTION_IN_term_1009 = Set[4, 6, 8, 9, 10, 11, 12, 13, 19, 20, 21, 22, 23, 25, 46, 57]
    TOKENS_FOLLOWING_WS_IN_term_1011 = Set[4, 6, 8, 9, 10, 11, 12, 13, 19, 20, 21, 22, 23, 25, 46, 57]
    TOKENS_FOLLOWING_expr_IN_term_1015 = Set[52]
    TOKENS_FOLLOWING_T__52_IN_term_1017 = Set[1, 19]
    TOKENS_FOLLOWING_WS_IN_term_1019 = Set[1, 19]

  end # class Parser < ANTLR3::Parser

  at_exit { Parser.main(ARGV) } if __FILE__ == $0
end

