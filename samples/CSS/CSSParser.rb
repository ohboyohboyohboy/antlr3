#!/usr/bin/env ruby
#
# CSS.g
# 
# generated using ANTLR Version: 3.2.1-SNAPSHOT Dec 18, 2009 04:29:28
# input grammar file: CSS.g
# generated at: 2009-12-27 03:46:50
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
    define_tokens(:FUNCTION => 6, :UNICODE_RANGE => 34, :MEDIA_LIST => 17, 
                  :DELIM => 35, :ID => 22, :EOF => -1, :LENGTH => 9, :T__55 => 55, 
                  :T__56 => 56, :TIME => 11, :T__57 => 57, :T__58 => 58, 
                  :UNDER => 16, :T__51 => 51, :SELECTOR => 18, :T__52 => 52, 
                  :ESCAPE => 28, :T__53 => 53, :T__54 => 54, :HEX => 33, 
                  :ELEMENT => 15, :DIMENSION => 5, :FREQ => 10, :AT_KEYWORD => 31, 
                  :COMMENT => 26, :T__50 => 50, :T__42 => 42, :T__43 => 43, 
                  :T__40 => 40, :T__41 => 41, :T__46 => 46, :T__47 => 47, 
                  :T__44 => 44, :ANGLE => 8, :RULE => 14, :T__45 => 45, 
                  :T__48 => 48, :T__49 => 49, :NUMBER => 25, :HASH => 23, 
                  :S => 32, :INVALID => 7, :PERCENTAGE => 4, :IMPORTANT => 24, 
                  :URI => 21, :WS => 20, :NEWLINE => 27, :T__36 => 36, :T__37 => 37, 
                  :T__38 => 38, :EMS => 12, :T__39 => 39, :EXS => 13, :PLAIN_ID => 29, 
                  :NONASCII => 30, :STRING => 19)

    # register the proper human-readable name or literal value
    # for each token type
    #
    # this is necessary because anonymous tokens, which are
    # created from literal values in the grammar, do not
    # have descriptive names
    register_names("PERCENTAGE", "DIMENSION", "FUNCTION", "INVALID", "ANGLE", 
                   "LENGTH", "FREQ", "TIME", "EMS", "EXS", "RULE", "ELEMENT", 
                   "UNDER", "MEDIA_LIST", "SELECTOR", "STRING", "WS", "URI", 
                   "ID", "HASH", "IMPORTANT", "NUMBER", "COMMENT", "NEWLINE", 
                   "ESCAPE", "PLAIN_ID", "NONASCII", "AT_KEYWORD", "S", 
                   "HEX", "UNICODE_RANGE", "DELIM", "'@charset'", "';'", 
                   "'<!--'", "'-->'", "'@import'", "'@media'", "'{'", "'}'", 
                   "','", "'@page'", "':'", "'+'", "'>'", "'*'", "'.'", 
                   "'['", "']'", "')'", "'='", "'~='", "'|='", "'/'", "'-'")
  end


  class Parser < ANTLR3::Parser
    @grammar_home = CSS
    include ANTLR3::ASTBuilder

    RULE_METHODS = [:stylesheet, :import_statement, :media, :media_list, 
                    :page, :rule, :selector, :relational_selector, :simple_selector, 
                    :element, :modifier, :match_attribute, :declaration, 
                    :expr, :term].freeze


    include TokenData

    generated_using("CSS.g", "3.2.1-SNAPSHOT Dec 18, 2009 04:29:28")

    def initialize(input, options = {})
      super(input, options)


    end
    # - - - - - - - - - - - - Rules - - - - - - - - - - - - -
    StylesheetReturnValue = define_return_scope 

    # parser rule stylesheet
    # 
    # (in CSS.g)
    # 15:1: stylesheet : ( '@charset' STRING ';' )? ( WS | '<!--' | '-->' )* ( import_statement ( '<!--' ( WS )* | '-->' ( WS )* )* )* ( ( rule | media | page ) ( '<!--' ( WS )* | '-->' ( WS )* )* )* ;
    def stylesheet
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 1)
      return_value = StylesheetReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal1 = nil
      __STRING2__ = nil
      char_literal3 = nil
      __WS4__ = nil
      string_literal5 = nil
      string_literal6 = nil
      string_literal8 = nil
      __WS9__ = nil
      string_literal10 = nil
      __WS11__ = nil
      string_literal15 = nil
      __WS16__ = nil
      string_literal17 = nil
      __WS18__ = nil
      import_statement7 = nil
      rule12 = nil
      media13 = nil
      page14 = nil

      tree_for_string_literal1 = nil
      tree_for_STRING2 = nil
      tree_for_char_literal3 = nil
      tree_for_WS4 = nil
      tree_for_string_literal5 = nil
      tree_for_string_literal6 = nil
      tree_for_string_literal8 = nil
      tree_for_WS9 = nil
      tree_for_string_literal10 = nil
      tree_for_WS11 = nil
      tree_for_string_literal15 = nil
      tree_for_WS16 = nil
      tree_for_string_literal17 = nil
      tree_for_WS18 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 16:5: ( '@charset' STRING ';' )? ( WS | '<!--' | '-->' )* ( import_statement ( '<!--' ( WS )* | '-->' ( WS )* )* )* ( ( rule | media | page ) ( '<!--' ( WS )* | '-->' ( WS )* )* )*
        # at line 16:5: ( '@charset' STRING ';' )?
        alt_1 = 2
        look_1_0 = @input.peek(1)

        if (look_1_0 == T__36) 
          alt_1 = 1
        end
        case alt_1
        when 1
          # at line 16:7: '@charset' STRING ';'
          string_literal1 = match(T__36, TOKENS_FOLLOWING_T__36_IN_stylesheet_95)

          tree_for_string_literal1 = @adaptor.create_with_payload!(string_literal1)
          @adaptor.add_child(root_0, tree_for_string_literal1)

          __STRING2__ = match(STRING, TOKENS_FOLLOWING_STRING_IN_stylesheet_97)

          tree_for_STRING2 = @adaptor.create_with_payload!(__STRING2__)
          @adaptor.add_child(root_0, tree_for_STRING2)

          char_literal3 = match(T__37, TOKENS_FOLLOWING_T__37_IN_stylesheet_99)

        end
        # at line 17:5: ( WS | '<!--' | '-->' )*
        loop do  #loop 2
          alt_2 = 4
          case look_2 = @input.peek(1)
          when WS then alt_2 = 1
          when T__38 then alt_2 = 2
          when T__39 then alt_2 = 3
          end
          case alt_2
          when 1
            # at line 17:7: WS
            __WS4__ = match(WS, TOKENS_FOLLOWING_WS_IN_stylesheet_111)

          when 2
            # at line 17:13: '<!--'
            string_literal5 = match(T__38, TOKENS_FOLLOWING_T__38_IN_stylesheet_116)

          when 3
            # at line 17:23: '-->'
            string_literal6 = match(T__39, TOKENS_FOLLOWING_T__39_IN_stylesheet_121)

          else
            break #loop 2
          end
        end
        # at line 18:5: ( import_statement ( '<!--' ( WS )* | '-->' ( WS )* )* )*
        loop do  #loop 6
          alt_6 = 2
          look_6_0 = @input.peek(1)

          if (look_6_0 == T__40) 
            alt_6 = 1

          end
          case alt_6
          when 1
            # at line 18:7: import_statement ( '<!--' ( WS )* | '-->' ( WS )* )*
            @state.following.push(TOKENS_FOLLOWING_import_statement_IN_stylesheet_133)
            import_statement7 = import_statement
            @state.following.pop
            @adaptor.add_child(root_0, import_statement7.tree)
            # at line 18:24: ( '<!--' ( WS )* | '-->' ( WS )* )*
            loop do  #loop 5
              alt_5 = 3
              look_5_0 = @input.peek(1)

              if (look_5_0 == T__38) 
                alt_5 = 1
              elsif (look_5_0 == T__39) 
                alt_5 = 2

              end
              case alt_5
              when 1
                # at line 18:26: '<!--' ( WS )*
                string_literal8 = match(T__38, TOKENS_FOLLOWING_T__38_IN_stylesheet_137)
                # at line 18:36: ( WS )*
                loop do  #loop 3
                  alt_3 = 2
                  look_3_0 = @input.peek(1)

                  if (look_3_0 == WS) 
                    alt_3 = 1

                  end
                  case alt_3
                  when 1
                    # at line 18:36: WS
                    __WS9__ = match(WS, TOKENS_FOLLOWING_WS_IN_stylesheet_140)

                  else
                    break #loop 3
                  end
                end

              when 2
                # at line 18:41: '-->' ( WS )*
                string_literal10 = match(T__39, TOKENS_FOLLOWING_T__39_IN_stylesheet_146)
                # at line 18:50: ( WS )*
                loop do  #loop 4
                  alt_4 = 2
                  look_4_0 = @input.peek(1)

                  if (look_4_0 == WS) 
                    alt_4 = 1

                  end
                  case alt_4
                  when 1
                    # at line 18:50: WS
                    __WS11__ = match(WS, TOKENS_FOLLOWING_WS_IN_stylesheet_149)

                  else
                    break #loop 4
                  end
                end

              else
                break #loop 5
              end
            end

          else
            break #loop 6
          end
        end
        # at line 19:5: ( ( rule | media | page ) ( '<!--' ( WS )* | '-->' ( WS )* )* )*
        loop do  #loop 11
          alt_11 = 2
          look_11_0 = @input.peek(1)

          if (look_11_0.between?(ID, HASH) || look_11_0 == T__41 || look_11_0.between?(T__45, T__46) || look_11_0.between?(T__49, T__51)) 
            alt_11 = 1

          end
          case alt_11
          when 1
            # at line 19:7: ( rule | media | page ) ( '<!--' ( WS )* | '-->' ( WS )* )*
            # at line 19:7: ( rule | media | page )
            alt_7 = 3
            case look_7 = @input.peek(1)
            when ID, HASH, T__46, T__49, T__50, T__51 then alt_7 = 1
            when T__41 then alt_7 = 2
            when T__45 then alt_7 = 3
            else
              nvae = NoViableAlternative("", 7, 0)
              raise nvae
            end
            case alt_7
            when 1
              # at line 19:9: rule
              @state.following.push(TOKENS_FOLLOWING_rule_IN_stylesheet_167)
              rule12 = rule
              @state.following.pop
              @adaptor.add_child(root_0, rule12.tree)

            when 2
              # at line 19:16: media
              @state.following.push(TOKENS_FOLLOWING_media_IN_stylesheet_171)
              media13 = media
              @state.following.pop
              @adaptor.add_child(root_0, media13.tree)

            when 3
              # at line 19:24: page
              @state.following.push(TOKENS_FOLLOWING_page_IN_stylesheet_175)
              page14 = page
              @state.following.pop
              @adaptor.add_child(root_0, page14.tree)

            end
            # at line 19:31: ( '<!--' ( WS )* | '-->' ( WS )* )*
            loop do  #loop 10
              alt_10 = 3
              look_10_0 = @input.peek(1)

              if (look_10_0 == T__38) 
                alt_10 = 1
              elsif (look_10_0 == T__39) 
                alt_10 = 2

              end
              case alt_10
              when 1
                # at line 19:33: '<!--' ( WS )*
                string_literal15 = match(T__38, TOKENS_FOLLOWING_T__38_IN_stylesheet_181)
                # at line 19:43: ( WS )*
                loop do  #loop 8
                  alt_8 = 2
                  look_8_0 = @input.peek(1)

                  if (look_8_0 == WS) 
                    alt_8 = 1

                  end
                  case alt_8
                  when 1
                    # at line 19:43: WS
                    __WS16__ = match(WS, TOKENS_FOLLOWING_WS_IN_stylesheet_184)

                  else
                    break #loop 8
                  end
                end

              when 2
                # at line 19:48: '-->' ( WS )*
                string_literal17 = match(T__39, TOKENS_FOLLOWING_T__39_IN_stylesheet_190)
                # at line 19:57: ( WS )*
                loop do  #loop 9
                  alt_9 = 2
                  look_9_0 = @input.peek(1)

                  if (look_9_0 == WS) 
                    alt_9 = 1

                  end
                  case alt_9
                  when 1
                    # at line 19:57: WS
                    __WS18__ = match(WS, TOKENS_FOLLOWING_WS_IN_stylesheet_193)

                  else
                    break #loop 9
                  end
                end

              else
                break #loop 10
              end
            end

          else
            break #loop 11
          end
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
        # trace_out(__method__, 1)

      end
      
      return return_value
    end

    ImportStatementReturnValue = define_return_scope 

    # parser rule import_statement
    # 
    # (in CSS.g)
    # 22:1: import_statement : '@import' ( WS )* ( STRING | URI ) ( WS )* ( media_list )? ';' ( WS )* ;
    def import_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 2)
      return_value = ImportStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal19 = nil
      __WS20__ = nil
      set21 = nil
      __WS22__ = nil
      char_literal24 = nil
      __WS25__ = nil
      media_list23 = nil

      tree_for_string_literal19 = nil
      tree_for_WS20 = nil
      tree_for_set21 = nil
      tree_for_WS22 = nil
      tree_for_char_literal24 = nil
      tree_for_WS25 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 23:5: '@import' ( WS )* ( STRING | URI ) ( WS )* ( media_list )? ';' ( WS )*
        string_literal19 = match(T__40, TOKENS_FOLLOWING_T__40_IN_import_statement_214)

        tree_for_string_literal19 = @adaptor.create_with_payload!(string_literal19)
        root_0 = @adaptor.become_root(tree_for_string_literal19, root_0)

        # at line 23:18: ( WS )*
        loop do  #loop 12
          alt_12 = 2
          look_12_0 = @input.peek(1)

          if (look_12_0 == WS) 
            alt_12 = 1

          end
          case alt_12
          when 1
            # at line 23:18: WS
            __WS20__ = match(WS, TOKENS_FOLLOWING_WS_IN_import_statement_217)

          else
            break #loop 12
          end
        end
        set21 = @input.look
        if @input.peek(1) == STRING || @input.peek(1) == URI
          @input.consume
          @adaptor.add_child(root_0, @adaptor.create_with_payload!(set21))
          @state.error_recovery = false
        else
          mse = MismatchedSet(nil)
          raise mse
        end


        # at line 23:40: ( WS )*
        loop do  #loop 13
          alt_13 = 2
          look_13_0 = @input.peek(1)

          if (look_13_0 == WS) 
            alt_13 = 1

          end
          case alt_13
          when 1
            # at line 23:40: WS
            __WS22__ = match(WS, TOKENS_FOLLOWING_WS_IN_import_statement_231)

          else
            break #loop 13
          end
        end
        # at line 23:43: ( media_list )?
        alt_14 = 2
        look_14_0 = @input.peek(1)

        if (look_14_0 == ID) 
          alt_14 = 1
        end
        case alt_14
        when 1
          # at line 23:43: media_list
          @state.following.push(TOKENS_FOLLOWING_media_list_IN_import_statement_235)
          media_list23 = media_list
          @state.following.pop
          @adaptor.add_child(root_0, media_list23.tree)

        end
        char_literal24 = match(T__37, TOKENS_FOLLOWING_T__37_IN_import_statement_238)
        # at line 23:62: ( WS )*
        loop do  #loop 15
          alt_15 = 2
          look_15_0 = @input.peek(1)

          if (look_15_0 == WS) 
            alt_15 = 1

          end
          case alt_15
          when 1
            # at line 23:62: WS
            __WS25__ = match(WS, TOKENS_FOLLOWING_WS_IN_import_statement_241)

          else
            break #loop 15
          end
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
        # trace_out(__method__, 2)

      end
      
      return return_value
    end

    MediaReturnValue = define_return_scope 

    # parser rule media
    # 
    # (in CSS.g)
    # 26:1: media : '@media' ( WS )* media_list '{' ( WS )* ( rule )* '}' ( WS )* ;
    def media
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 3)
      return_value = MediaReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal26 = nil
      __WS27__ = nil
      char_literal29 = nil
      __WS30__ = nil
      char_literal32 = nil
      __WS33__ = nil
      media_list28 = nil
      rule31 = nil

      tree_for_string_literal26 = nil
      tree_for_WS27 = nil
      tree_for_char_literal29 = nil
      tree_for_WS30 = nil
      tree_for_char_literal32 = nil
      tree_for_WS33 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 27:5: '@media' ( WS )* media_list '{' ( WS )* ( rule )* '}' ( WS )*
        string_literal26 = match(T__41, TOKENS_FOLLOWING_T__41_IN_media_256)

        tree_for_string_literal26 = @adaptor.create_with_payload!(string_literal26)
        root_0 = @adaptor.become_root(tree_for_string_literal26, root_0)

        # at line 27:17: ( WS )*
        loop do  #loop 16
          alt_16 = 2
          look_16_0 = @input.peek(1)

          if (look_16_0 == WS) 
            alt_16 = 1

          end
          case alt_16
          when 1
            # at line 27:17: WS
            __WS27__ = match(WS, TOKENS_FOLLOWING_WS_IN_media_259)

          else
            break #loop 16
          end
        end
        @state.following.push(TOKENS_FOLLOWING_media_list_IN_media_263)
        media_list28 = media_list
        @state.following.pop
        @adaptor.add_child(root_0, media_list28.tree)
        char_literal29 = match(T__42, TOKENS_FOLLOWING_T__42_IN_media_265)
        # at line 27:38: ( WS )*
        loop do  #loop 17
          alt_17 = 2
          look_17_0 = @input.peek(1)

          if (look_17_0 == WS) 
            alt_17 = 1

          end
          case alt_17
          when 1
            # at line 27:38: WS
            __WS30__ = match(WS, TOKENS_FOLLOWING_WS_IN_media_268)

          else
            break #loop 17
          end
        end
        # at line 27:41: ( rule )*
        loop do  #loop 18
          alt_18 = 2
          look_18_0 = @input.peek(1)

          if (look_18_0.between?(ID, HASH) || look_18_0 == T__46 || look_18_0.between?(T__49, T__51)) 
            alt_18 = 1

          end
          case alt_18
          when 1
            # at line 27:41: rule
            @state.following.push(TOKENS_FOLLOWING_rule_IN_media_272)
            rule31 = rule
            @state.following.pop
            @adaptor.add_child(root_0, rule31.tree)

          else
            break #loop 18
          end
        end
        char_literal32 = match(T__43, TOKENS_FOLLOWING_T__43_IN_media_275)
        # at line 27:54: ( WS )*
        loop do  #loop 19
          alt_19 = 2
          look_19_0 = @input.peek(1)

          if (look_19_0 == WS) 
            alt_19 = 1

          end
          case alt_19
          when 1
            # at line 27:54: WS
            __WS33__ = match(WS, TOKENS_FOLLOWING_WS_IN_media_278)

          else
            break #loop 19
          end
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
        # trace_out(__method__, 3)

      end
      
      return return_value
    end

    MediaListReturnValue = define_return_scope 

    # parser rule media_list
    # 
    # (in CSS.g)
    # 30:1: media_list : ID ( WS )* ( ',' ( WS )* ID ( WS )* )* -> ^( MEDIA_LIST ( ID )+ ) ;
    def media_list
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 4)
      return_value = MediaListReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __ID34__ = nil
      __WS35__ = nil
      char_literal36 = nil
      __WS37__ = nil
      __ID38__ = nil
      __WS39__ = nil

      tree_for_ID34 = nil
      tree_for_WS35 = nil
      tree_for_char_literal36 = nil
      tree_for_WS37 = nil
      tree_for_ID38 = nil
      tree_for_WS39 = nil
      stream_WS = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token WS")
      stream_T__44 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__44")
      stream_ID = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token ID")

      begin
        # at line 31:5: ID ( WS )* ( ',' ( WS )* ID ( WS )* )*
        __ID34__ = match(ID, TOKENS_FOLLOWING_ID_IN_media_list_293) 
        stream_ID.add(__ID34__)
        # at line 31:8: ( WS )*
        loop do  #loop 20
          alt_20 = 2
          look_20_0 = @input.peek(1)

          if (look_20_0 == WS) 
            alt_20 = 1

          end
          case alt_20
          when 1
            # at line 31:8: WS
            __WS35__ = match(WS, TOKENS_FOLLOWING_WS_IN_media_list_295) 
            stream_WS.add(__WS35__)

          else
            break #loop 20
          end
        end
        # at line 31:12: ( ',' ( WS )* ID ( WS )* )*
        loop do  #loop 23
          alt_23 = 2
          look_23_0 = @input.peek(1)

          if (look_23_0 == T__44) 
            alt_23 = 1

          end
          case alt_23
          when 1
            # at line 31:14: ',' ( WS )* ID ( WS )*
            char_literal36 = match(T__44, TOKENS_FOLLOWING_T__44_IN_media_list_300) 
            stream_T__44.add(char_literal36)
            # at line 31:18: ( WS )*
            loop do  #loop 21
              alt_21 = 2
              look_21_0 = @input.peek(1)

              if (look_21_0 == WS) 
                alt_21 = 1

              end
              case alt_21
              when 1
                # at line 31:18: WS
                __WS37__ = match(WS, TOKENS_FOLLOWING_WS_IN_media_list_302) 
                stream_WS.add(__WS37__)

              else
                break #loop 21
              end
            end
            __ID38__ = match(ID, TOKENS_FOLLOWING_ID_IN_media_list_305) 
            stream_ID.add(__ID38__)
            # at line 31:25: ( WS )*
            loop do  #loop 22
              alt_22 = 2
              look_22_0 = @input.peek(1)

              if (look_22_0 == WS) 
                alt_22 = 1

              end
              case alt_22
              when 1
                # at line 31:25: WS
                __WS39__ = match(WS, TOKENS_FOLLOWING_WS_IN_media_list_307) 
                stream_WS.add(__WS39__)

              else
                break #loop 22
              end
            end

          else
            break #loop 23
          end
        end
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
        # 31:32: -> ^( MEDIA_LIST ( ID )+ )
        # at line 31:35: ^( MEDIA_LIST ( ID )+ )
        root_1 = @adaptor.create_flat_list!
        root_1 = @adaptor.become_root(@adaptor.create_from_type!(MEDIA_LIST, "MEDIA_LIST"), root_1)

        # at line 31:49: ( ID )+
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
        # trace_out(__method__, 4)

      end
      
      return return_value
    end

    PageReturnValue = define_return_scope 

    # parser rule page
    # 
    # (in CSS.g)
    # 34:1: page : '@page' ( WS )* ( ':' ID ( WS )* )? '{' ( WS )* ( declaration )? ( ';' ( WS )* ( declaration )? )* '}' ( WS )* -> ^( '@page' ( ID )? ( declaration )* ) ;
    def page
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 5)
      return_value = PageReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal40 = nil
      __WS41__ = nil
      char_literal42 = nil
      __ID43__ = nil
      __WS44__ = nil
      char_literal45 = nil
      __WS46__ = nil
      char_literal48 = nil
      __WS49__ = nil
      char_literal51 = nil
      __WS52__ = nil
      declaration47 = nil
      declaration50 = nil

      tree_for_string_literal40 = nil
      tree_for_WS41 = nil
      tree_for_char_literal42 = nil
      tree_for_ID43 = nil
      tree_for_WS44 = nil
      tree_for_char_literal45 = nil
      tree_for_WS46 = nil
      tree_for_char_literal48 = nil
      tree_for_WS49 = nil
      tree_for_char_literal51 = nil
      tree_for_WS52 = nil
      stream_T__42 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__42")
      stream_T__43 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__43")
      stream_T__46 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__46")
      stream_WS = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token WS")
      stream_T__45 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__45")
      stream_ID = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token ID")
      stream_T__37 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__37")
      stream_declaration = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule declaration")
      begin
        # at line 35:5: '@page' ( WS )* ( ':' ID ( WS )* )? '{' ( WS )* ( declaration )? ( ';' ( WS )* ( declaration )? )* '}' ( WS )*
        string_literal40 = match(T__45, TOKENS_FOLLOWING_T__45_IN_page_335) 
        stream_T__45.add(string_literal40)
        # at line 35:13: ( WS )*
        loop do  #loop 24
          alt_24 = 2
          look_24_0 = @input.peek(1)

          if (look_24_0 == WS) 
            alt_24 = 1

          end
          case alt_24
          when 1
            # at line 35:13: WS
            __WS41__ = match(WS, TOKENS_FOLLOWING_WS_IN_page_337) 
            stream_WS.add(__WS41__)

          else
            break #loop 24
          end
        end
        # at line 35:17: ( ':' ID ( WS )* )?
        alt_26 = 2
        look_26_0 = @input.peek(1)

        if (look_26_0 == T__46) 
          alt_26 = 1
        end
        case alt_26
        when 1
          # at line 35:19: ':' ID ( WS )*
          char_literal42 = match(T__46, TOKENS_FOLLOWING_T__46_IN_page_342) 
          stream_T__46.add(char_literal42)
          __ID43__ = match(ID, TOKENS_FOLLOWING_ID_IN_page_344) 
          stream_ID.add(__ID43__)
          # at line 35:26: ( WS )*
          loop do  #loop 25
            alt_25 = 2
            look_25_0 = @input.peek(1)

            if (look_25_0 == WS) 
              alt_25 = 1

            end
            case alt_25
            when 1
              # at line 35:26: WS
              __WS44__ = match(WS, TOKENS_FOLLOWING_WS_IN_page_346) 
              stream_WS.add(__WS44__)

            else
              break #loop 25
            end
          end

        end
        char_literal45 = match(T__42, TOKENS_FOLLOWING_T__42_IN_page_356) 
        stream_T__42.add(char_literal45)
        # at line 36:9: ( WS )*
        loop do  #loop 27
          alt_27 = 2
          look_27_0 = @input.peek(1)

          if (look_27_0 == WS) 
            alt_27 = 1

          end
          case alt_27
          when 1
            # at line 36:9: WS
            __WS46__ = match(WS, TOKENS_FOLLOWING_WS_IN_page_358) 
            stream_WS.add(__WS46__)

          else
            break #loop 27
          end
        end
        # at line 36:13: ( declaration )?
        alt_28 = 2
        look_28_0 = @input.peek(1)

        if (look_28_0 == ID) 
          alt_28 = 1
        end
        case alt_28
        when 1
          # at line 36:13: declaration
          @state.following.push(TOKENS_FOLLOWING_declaration_IN_page_361)
          declaration47 = declaration
          @state.following.pop
          stream_declaration.add(declaration47.tree)

        end
        # at line 36:26: ( ';' ( WS )* ( declaration )? )*
        loop do  #loop 31
          alt_31 = 2
          look_31_0 = @input.peek(1)

          if (look_31_0 == T__37) 
            alt_31 = 1

          end
          case alt_31
          when 1
            # at line 36:28: ';' ( WS )* ( declaration )?
            char_literal48 = match(T__37, TOKENS_FOLLOWING_T__37_IN_page_366) 
            stream_T__37.add(char_literal48)
            # at line 36:32: ( WS )*
            loop do  #loop 29
              alt_29 = 2
              look_29_0 = @input.peek(1)

              if (look_29_0 == WS) 
                alt_29 = 1

              end
              case alt_29
              when 1
                # at line 36:32: WS
                __WS49__ = match(WS, TOKENS_FOLLOWING_WS_IN_page_368) 
                stream_WS.add(__WS49__)

              else
                break #loop 29
              end
            end
            # at line 36:36: ( declaration )?
            alt_30 = 2
            look_30_0 = @input.peek(1)

            if (look_30_0 == ID) 
              alt_30 = 1
            end
            case alt_30
            when 1
              # at line 36:36: declaration
              @state.following.push(TOKENS_FOLLOWING_declaration_IN_page_371)
              declaration50 = declaration
              @state.following.pop
              stream_declaration.add(declaration50.tree)

            end

          else
            break #loop 31
          end
        end
        char_literal51 = match(T__43, TOKENS_FOLLOWING_T__43_IN_page_377) 
        stream_T__43.add(char_literal51)
        # at line 36:56: ( WS )*
        loop do  #loop 32
          alt_32 = 2
          look_32_0 = @input.peek(1)

          if (look_32_0 == WS) 
            alt_32 = 1

          end
          case alt_32
          when 1
            # at line 36:56: WS
            __WS52__ = match(WS, TOKENS_FOLLOWING_WS_IN_page_379) 
            stream_WS.add(__WS52__)

          else
            break #loop 32
          end
        end
        # AST Rewrite
        # elements: ID, T__45, declaration
        # token labels: 
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 

        return_value.tree = root_0
        stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

        root_0 = @adaptor.create_flat_list!
        # 37:3: -> ^( '@page' ( ID )? ( declaration )* )
        # at line 37:6: ^( '@page' ( ID )? ( declaration )* )
        root_1 = @adaptor.create_flat_list!
        root_1 = @adaptor.become_root(stream_T__45.next_node, root_1)

        # at line 37:17: ( ID )?
        if stream_ID.has_next?
          @adaptor.add_child(root_1, stream_ID.next_node)

        end

        stream_ID.reset();
        # at line 37:21: ( declaration )*
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
        # trace_out(__method__, 5)

      end
      
      return return_value
    end

    RuleReturnValue = define_return_scope 

    # parser rule rule
    # 
    # (in CSS.g)
    # 40:1: rule : selector ( WS )* '{' ( WS )* ( declaration )? ( ';' ( WS )* ( declaration )? )* '}' ( WS )* -> ^( RULE selector ( ^( declaration ) )* ) ;
    def rule
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 6)
      return_value = RuleReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __WS54__ = nil
      char_literal55 = nil
      __WS56__ = nil
      char_literal58 = nil
      __WS59__ = nil
      char_literal61 = nil
      __WS62__ = nil
      selector53 = nil
      declaration57 = nil
      declaration60 = nil

      tree_for_WS54 = nil
      tree_for_char_literal55 = nil
      tree_for_WS56 = nil
      tree_for_char_literal58 = nil
      tree_for_WS59 = nil
      tree_for_char_literal61 = nil
      tree_for_WS62 = nil
      stream_T__42 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__42")
      stream_T__43 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__43")
      stream_WS = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token WS")
      stream_T__37 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__37")
      stream_selector = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule selector")
      stream_declaration = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule declaration")
      begin
        # at line 41:5: selector ( WS )* '{' ( WS )* ( declaration )? ( ';' ( WS )* ( declaration )? )* '}' ( WS )*
        @state.following.push(TOKENS_FOLLOWING_selector_IN_rule_409)
        selector53 = selector
        @state.following.pop
        stream_selector.add(selector53.tree)
        # at line 41:14: ( WS )*
        loop do  #loop 33
          alt_33 = 2
          look_33_0 = @input.peek(1)

          if (look_33_0 == WS) 
            alt_33 = 1

          end
          case alt_33
          when 1
            # at line 41:14: WS
            __WS54__ = match(WS, TOKENS_FOLLOWING_WS_IN_rule_411) 
            stream_WS.add(__WS54__)

          else
            break #loop 33
          end
        end
        char_literal55 = match(T__42, TOKENS_FOLLOWING_T__42_IN_rule_418) 
        stream_T__42.add(char_literal55)
        # at line 42:9: ( WS )*
        loop do  #loop 34
          alt_34 = 2
          look_34_0 = @input.peek(1)

          if (look_34_0 == WS) 
            alt_34 = 1

          end
          case alt_34
          when 1
            # at line 42:9: WS
            __WS56__ = match(WS, TOKENS_FOLLOWING_WS_IN_rule_420) 
            stream_WS.add(__WS56__)

          else
            break #loop 34
          end
        end
        # at line 42:13: ( declaration )?
        alt_35 = 2
        look_35_0 = @input.peek(1)

        if (look_35_0 == ID) 
          alt_35 = 1
        end
        case alt_35
        when 1
          # at line 42:13: declaration
          @state.following.push(TOKENS_FOLLOWING_declaration_IN_rule_423)
          declaration57 = declaration
          @state.following.pop
          stream_declaration.add(declaration57.tree)

        end
        # at line 42:26: ( ';' ( WS )* ( declaration )? )*
        loop do  #loop 38
          alt_38 = 2
          look_38_0 = @input.peek(1)

          if (look_38_0 == T__37) 
            alt_38 = 1

          end
          case alt_38
          when 1
            # at line 42:28: ';' ( WS )* ( declaration )?
            char_literal58 = match(T__37, TOKENS_FOLLOWING_T__37_IN_rule_428) 
            stream_T__37.add(char_literal58)
            # at line 42:32: ( WS )*
            loop do  #loop 36
              alt_36 = 2
              look_36_0 = @input.peek(1)

              if (look_36_0 == WS) 
                alt_36 = 1

              end
              case alt_36
              when 1
                # at line 42:32: WS
                __WS59__ = match(WS, TOKENS_FOLLOWING_WS_IN_rule_430) 
                stream_WS.add(__WS59__)

              else
                break #loop 36
              end
            end
            # at line 42:36: ( declaration )?
            alt_37 = 2
            look_37_0 = @input.peek(1)

            if (look_37_0 == ID) 
              alt_37 = 1
            end
            case alt_37
            when 1
              # at line 42:36: declaration
              @state.following.push(TOKENS_FOLLOWING_declaration_IN_rule_433)
              declaration60 = declaration
              @state.following.pop
              stream_declaration.add(declaration60.tree)

            end

          else
            break #loop 38
          end
        end
        char_literal61 = match(T__43, TOKENS_FOLLOWING_T__43_IN_rule_439) 
        stream_T__43.add(char_literal61)
        # at line 42:56: ( WS )*
        loop do  #loop 39
          alt_39 = 2
          look_39_0 = @input.peek(1)

          if (look_39_0 == WS) 
            alt_39 = 1

          end
          case alt_39
          when 1
            # at line 42:56: WS
            __WS62__ = match(WS, TOKENS_FOLLOWING_WS_IN_rule_441) 
            stream_WS.add(__WS62__)

          else
            break #loop 39
          end
        end
        # AST Rewrite
        # elements: selector, declaration
        # token labels: 
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 

        return_value.tree = root_0
        stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

        root_0 = @adaptor.create_flat_list!
        # 43:5: -> ^( RULE selector ( ^( declaration ) )* )
        # at line 43:8: ^( RULE selector ( ^( declaration ) )* )
        root_1 = @adaptor.create_flat_list!
        root_1 = @adaptor.become_root(@adaptor.create_from_type!(RULE, "RULE"), root_1)

        @adaptor.add_child(root_1, stream_selector.next_tree)
        # at line 43:25: ( ^( declaration ) )*
        while stream_declaration.has_next?
          # at line 43:25: ^( declaration )
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
        # trace_out(__method__, 6)

      end
      
      return return_value
    end

    SelectorReturnValue = define_return_scope 

    # parser rule selector
    # 
    # (in CSS.g)
    # 46:1: selector : relational_selector ( ',' ( WS )* relational_selector )* -> ^( SELECTOR ( relational_selector )+ ) ;
    def selector
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 7)
      return_value = SelectorReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal64 = nil
      __WS65__ = nil
      relational_selector63 = nil
      relational_selector66 = nil

      tree_for_char_literal64 = nil
      tree_for_WS65 = nil
      stream_WS = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token WS")
      stream_T__44 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__44")
      stream_relational_selector = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule relational_selector")
      begin
        # at line 47:5: relational_selector ( ',' ( WS )* relational_selector )*
        @state.following.push(TOKENS_FOLLOWING_relational_selector_IN_selector_476)
        relational_selector63 = relational_selector
        @state.following.pop
        stream_relational_selector.add(relational_selector63.tree)
        # at line 47:25: ( ',' ( WS )* relational_selector )*
        loop do  #loop 41
          alt_41 = 2
          look_41_0 = @input.peek(1)

          if (look_41_0 == T__44) 
            alt_41 = 1

          end
          case alt_41
          when 1
            # at line 47:27: ',' ( WS )* relational_selector
            char_literal64 = match(T__44, TOKENS_FOLLOWING_T__44_IN_selector_480) 
            stream_T__44.add(char_literal64)
            # at line 47:31: ( WS )*
            loop do  #loop 40
              alt_40 = 2
              look_40_0 = @input.peek(1)

              if (look_40_0 == WS) 
                alt_40 = 1

              end
              case alt_40
              when 1
                # at line 47:31: WS
                __WS65__ = match(WS, TOKENS_FOLLOWING_WS_IN_selector_482) 
                stream_WS.add(__WS65__)

              else
                break #loop 40
              end
            end
            @state.following.push(TOKENS_FOLLOWING_relational_selector_IN_selector_485)
            relational_selector66 = relational_selector
            @state.following.pop
            stream_relational_selector.add(relational_selector66.tree)

          else
            break #loop 41
          end
        end
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
        # 48:3: -> ^( SELECTOR ( relational_selector )+ )
        # at line 48:6: ^( SELECTOR ( relational_selector )+ )
        root_1 = @adaptor.create_flat_list!
        root_1 = @adaptor.become_root(@adaptor.create_from_type!(SELECTOR, "SELECTOR"), root_1)

        # at line 48:18: ( relational_selector )+
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
        # trace_out(__method__, 7)

      end
      
      return return_value
    end

    RelationalSelectorReturnValue = define_return_scope 

    # parser rule relational_selector
    # 
    # (in CSS.g)
    # 51:1: relational_selector : ( simple_selector -> simple_selector ) ( ( WS )* '+' ( WS )* r= simple_selector -> ^( '+' $relational_selector $r) | ( WS )* '>' ( WS )* r= simple_selector -> ^( '>' $relational_selector $r) | ( WS )+ r= simple_selector -> ^( UNDER $relational_selector $r) )* ;
    def relational_selector
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 8)
      return_value = RelationalSelectorReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __WS68__ = nil
      char_literal69 = nil
      __WS70__ = nil
      __WS71__ = nil
      char_literal72 = nil
      __WS73__ = nil
      __WS74__ = nil
      r = nil
      simple_selector67 = nil

      tree_for_WS68 = nil
      tree_for_char_literal69 = nil
      tree_for_WS70 = nil
      tree_for_WS71 = nil
      tree_for_char_literal72 = nil
      tree_for_WS73 = nil
      tree_for_WS74 = nil
      stream_WS = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token WS")
      stream_T__47 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__47")
      stream_T__48 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__48")
      stream_simple_selector = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule simple_selector")
      begin
        # at line 52:5: ( simple_selector -> simple_selector ) ( ( WS )* '+' ( WS )* r= simple_selector -> ^( '+' $relational_selector $r) | ( WS )* '>' ( WS )* r= simple_selector -> ^( '>' $relational_selector $r) | ( WS )+ r= simple_selector -> ^( UNDER $relational_selector $r) )*
        # at line 52:5: ( simple_selector -> simple_selector )
        # at line 52:7: simple_selector
        @state.following.push(TOKENS_FOLLOWING_simple_selector_IN_relational_selector_516)
        simple_selector67 = simple_selector
        @state.following.pop
        stream_simple_selector.add(simple_selector67.tree)
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
        # 52:23: -> simple_selector
        @adaptor.add_child(root_0, stream_simple_selector.next_tree)



        return_value.tree = root_0

        # at line 53:5: ( ( WS )* '+' ( WS )* r= simple_selector -> ^( '+' $relational_selector $r) | ( WS )* '>' ( WS )* r= simple_selector -> ^( '>' $relational_selector $r) | ( WS )+ r= simple_selector -> ^( UNDER $relational_selector $r) )*
        loop do  #loop 47
          alt_47 = 4
          alt_47 = @dfa47.predict(@input)
          case alt_47
          when 1
            # at line 53:7: ( WS )* '+' ( WS )* r= simple_selector
            # at line 53:7: ( WS )*
            loop do  #loop 42
              alt_42 = 2
              look_42_0 = @input.peek(1)

              if (look_42_0 == WS) 
                alt_42 = 1

              end
              case alt_42
              when 1
                # at line 53:7: WS
                __WS68__ = match(WS, TOKENS_FOLLOWING_WS_IN_relational_selector_530) 
                stream_WS.add(__WS68__)

              else
                break #loop 42
              end
            end
            char_literal69 = match(T__47, TOKENS_FOLLOWING_T__47_IN_relational_selector_533) 
            stream_T__47.add(char_literal69)
            # at line 53:15: ( WS )*
            loop do  #loop 43
              alt_43 = 2
              look_43_0 = @input.peek(1)

              if (look_43_0 == WS) 
                alt_43 = 1

              end
              case alt_43
              when 1
                # at line 53:15: WS
                __WS70__ = match(WS, TOKENS_FOLLOWING_WS_IN_relational_selector_535) 
                stream_WS.add(__WS70__)

              else
                break #loop 43
              end
            end
            @state.following.push(TOKENS_FOLLOWING_simple_selector_IN_relational_selector_540)
            r = simple_selector
            @state.following.pop
            stream_simple_selector.add(r.tree)
            # AST Rewrite
            # elements: r, relational_selector, T__47
            # token labels: 
            # rule labels: return_value, r
            # token list labels: 
            # rule list labels: 
            # wildcard labels: 

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")
            stream_r = r ? subtree_stream("rule r", r.tree) : subtree_stream("token r")

            root_0 = @adaptor.create_flat_list!
            # 53:37: -> ^( '+' $relational_selector $r)
            # at line 53:40: ^( '+' $relational_selector $r)
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(stream_T__47.next_node, root_1)

            @adaptor.add_child(root_1, stream_return_value.next_tree)
            @adaptor.add_child(root_1, stream_r.next_tree)

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          when 2
            # at line 54:7: ( WS )* '>' ( WS )* r= simple_selector
            # at line 54:7: ( WS )*
            loop do  #loop 44
              alt_44 = 2
              look_44_0 = @input.peek(1)

              if (look_44_0 == WS) 
                alt_44 = 1

              end
              case alt_44
              when 1
                # at line 54:7: WS
                __WS71__ = match(WS, TOKENS_FOLLOWING_WS_IN_relational_selector_562) 
                stream_WS.add(__WS71__)

              else
                break #loop 44
              end
            end
            char_literal72 = match(T__48, TOKENS_FOLLOWING_T__48_IN_relational_selector_565) 
            stream_T__48.add(char_literal72)
            # at line 54:15: ( WS )*
            loop do  #loop 45
              alt_45 = 2
              look_45_0 = @input.peek(1)

              if (look_45_0 == WS) 
                alt_45 = 1

              end
              case alt_45
              when 1
                # at line 54:15: WS
                __WS73__ = match(WS, TOKENS_FOLLOWING_WS_IN_relational_selector_567) 
                stream_WS.add(__WS73__)

              else
                break #loop 45
              end
            end
            @state.following.push(TOKENS_FOLLOWING_simple_selector_IN_relational_selector_572)
            r = simple_selector
            @state.following.pop
            stream_simple_selector.add(r.tree)
            # AST Rewrite
            # elements: r, relational_selector, T__48
            # token labels: 
            # rule labels: return_value, r
            # token list labels: 
            # rule list labels: 
            # wildcard labels: 

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")
            stream_r = r ? subtree_stream("rule r", r.tree) : subtree_stream("token r")

            root_0 = @adaptor.create_flat_list!
            # 54:37: -> ^( '>' $relational_selector $r)
            # at line 54:40: ^( '>' $relational_selector $r)
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(stream_T__48.next_node, root_1)

            @adaptor.add_child(root_1, stream_return_value.next_tree)
            @adaptor.add_child(root_1, stream_r.next_tree)

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          when 3
            # at line 55:7: ( WS )+ r= simple_selector
            # at file 55:7: ( WS )+
            match_count_46 = 0
            loop do
              alt_46 = 2
              look_46_0 = @input.peek(1)

              if (look_46_0 == WS) 
                alt_46 = 1

              end
              case alt_46
              when 1
                # at line 55:7: WS
                __WS74__ = match(WS, TOKENS_FOLLOWING_WS_IN_relational_selector_594) 
                stream_WS.add(__WS74__)

              else
                match_count_46 > 0 and break
                eee = EarlyExit(46)


                raise eee
              end
              match_count_46 += 1
            end

            @state.following.push(TOKENS_FOLLOWING_simple_selector_IN_relational_selector_599)
            r = simple_selector
            @state.following.pop
            stream_simple_selector.add(r.tree)
            # AST Rewrite
            # elements: relational_selector, r
            # token labels: 
            # rule labels: return_value, r
            # token list labels: 
            # rule list labels: 
            # wildcard labels: 

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")
            stream_r = r ? subtree_stream("rule r", r.tree) : subtree_stream("token r")

            root_0 = @adaptor.create_flat_list!
            # 55:37: -> ^( UNDER $relational_selector $r)
            # at line 55:40: ^( UNDER $relational_selector $r)
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(@adaptor.create_from_type!(UNDER, "UNDER"), root_1)

            @adaptor.add_child(root_1, stream_return_value.next_tree)
            @adaptor.add_child(root_1, stream_r.next_tree)

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          else
            break #loop 47
          end
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
        # trace_out(__method__, 8)

      end
      
      return return_value
    end

    SimpleSelectorReturnValue = define_return_scope 

    # parser rule simple_selector
    # 
    # (in CSS.g)
    # 59:1: simple_selector : ( element ( modifier )* | ( modifier )+ );
    def simple_selector
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 9)
      return_value = SimpleSelectorReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      element75 = nil
      modifier76 = nil
      modifier77 = nil


      begin
        # at line 60:3: ( element ( modifier )* | ( modifier )+ )
        alt_50 = 2
        look_50_0 = @input.peek(1)

        if (look_50_0 == ID || look_50_0 == T__49) 
          alt_50 = 1
        elsif (look_50_0 == HASH || look_50_0 == T__46 || look_50_0.between?(T__50, T__51)) 
          alt_50 = 2
        else
        nvae = NoViableAlternative("", 50, 0)
          raise nvae
        end
        case alt_50
        when 1
          root_0 = @adaptor.create_flat_list!


          # at line 60:5: element ( modifier )*
          @state.following.push(TOKENS_FOLLOWING_element_IN_simple_selector_641)
          element75 = element
          @state.following.pop
          @adaptor.add_child(root_0, element75.tree)
          # at line 60:13: ( modifier )*
          loop do  #loop 48
            alt_48 = 2
            look_48_0 = @input.peek(1)

            if (look_48_0 == HASH || look_48_0 == T__46 || look_48_0.between?(T__50, T__51)) 
              alt_48 = 1

            end
            case alt_48
            when 1
              # at line 60:13: modifier
              @state.following.push(TOKENS_FOLLOWING_modifier_IN_simple_selector_643)
              modifier76 = modifier
              @state.following.pop
              @adaptor.add_child(root_0, modifier76.tree)

            else
              break #loop 48
            end
          end

        when 2
          root_0 = @adaptor.create_flat_list!


          # at line 61:5: ( modifier )+
          # at file 61:5: ( modifier )+
          match_count_49 = 0
          loop do
            alt_49 = 2
            look_49_0 = @input.peek(1)

            if (look_49_0 == HASH || look_49_0 == T__46 || look_49_0.between?(T__50, T__51)) 
              alt_49 = 1

            end
            case alt_49
            when 1
              # at line 61:5: modifier
              @state.following.push(TOKENS_FOLLOWING_modifier_IN_simple_selector_650)
              modifier77 = modifier
              @state.following.pop
              @adaptor.add_child(root_0, modifier77.tree)

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
        # trace_out(__method__, 9)

      end
      
      return return_value
    end

    ElementReturnValue = define_return_scope 

    # parser rule element
    # 
    # (in CSS.g)
    # 64:1: element : ( '*' -> '*' | ID -> ELEMENT[$ID] );
    def element
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 10)
      return_value = ElementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal78 = nil
      __ID79__ = nil

      tree_for_char_literal78 = nil
      tree_for_ID79 = nil
      stream_ID = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token ID")
      stream_T__49 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__49")

      begin
        # at line 65:3: ( '*' -> '*' | ID -> ELEMENT[$ID] )
        alt_51 = 2
        look_51_0 = @input.peek(1)

        if (look_51_0 == T__49) 
          alt_51 = 1
        elsif (look_51_0 == ID) 
          alt_51 = 2
        else
        nvae = NoViableAlternative("", 51, 0)
          raise nvae
        end
        case alt_51
        when 1
          # at line 65:5: '*'
          char_literal78 = match(T__49, TOKENS_FOLLOWING_T__49_IN_element_664) 
          stream_T__49.add(char_literal78)
          # AST Rewrite
          # elements: T__49
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 

          return_value.tree = root_0
          stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

          root_0 = @adaptor.create_flat_list!
          # 65:9: -> '*'
          @adaptor.add_child(root_0, stream_T__49.next_node)



          return_value.tree = root_0

        when 2
          # at line 66:5: ID
          __ID79__ = match(ID, TOKENS_FOLLOWING_ID_IN_element_674) 
          stream_ID.add(__ID79__)
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
          # 66:9: -> ELEMENT[$ID]
          @adaptor.add_child(root_0, @adaptor.create!(ELEMENT, __ID79__))



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
        # trace_out(__method__, 10)

      end
      
      return return_value
    end

    ModifierReturnValue = define_return_scope 

    # parser rule modifier
    # 
    # (in CSS.g)
    # 69:1: modifier : ( HASH | '.' ID | '[' ( WS )* match_attribute ']' | ':' ( ID | FUNCTION ( WS )* ( ID ( WS )* )? ')' ) );
    def modifier
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 11)
      return_value = ModifierReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __HASH80__ = nil
      char_literal81 = nil
      __ID82__ = nil
      char_literal83 = nil
      __WS84__ = nil
      char_literal86 = nil
      char_literal87 = nil
      __ID88__ = nil
      __FUNCTION89__ = nil
      __WS90__ = nil
      __ID91__ = nil
      __WS92__ = nil
      char_literal93 = nil
      match_attribute85 = nil

      tree_for_HASH80 = nil
      tree_for_char_literal81 = nil
      tree_for_ID82 = nil
      tree_for_char_literal83 = nil
      tree_for_WS84 = nil
      tree_for_char_literal86 = nil
      tree_for_char_literal87 = nil
      tree_for_ID88 = nil
      tree_for_FUNCTION89 = nil
      tree_for_WS90 = nil
      tree_for_ID91 = nil
      tree_for_WS92 = nil
      tree_for_char_literal93 = nil

      begin
        # at line 70:3: ( HASH | '.' ID | '[' ( WS )* match_attribute ']' | ':' ( ID | FUNCTION ( WS )* ( ID ( WS )* )? ')' ) )
        alt_57 = 4
        case look_57 = @input.peek(1)
        when HASH then alt_57 = 1
        when T__50 then alt_57 = 2
        when T__51 then alt_57 = 3
        when T__46 then alt_57 = 4
        else
          nvae = NoViableAlternative("", 57, 0)
          raise nvae
        end
        case alt_57
        when 1
          root_0 = @adaptor.create_flat_list!


          # at line 70:5: HASH
          __HASH80__ = match(HASH, TOKENS_FOLLOWING_HASH_IN_modifier_693)

          tree_for_HASH80 = @adaptor.create_with_payload!(__HASH80__)
          root_0 = @adaptor.become_root(tree_for_HASH80, root_0)


        when 2
          root_0 = @adaptor.create_flat_list!


          # at line 71:5: '.' ID
          char_literal81 = match(T__50, TOKENS_FOLLOWING_T__50_IN_modifier_700)

          tree_for_char_literal81 = @adaptor.create_with_payload!(char_literal81)
          root_0 = @adaptor.become_root(tree_for_char_literal81, root_0)

          __ID82__ = match(ID, TOKENS_FOLLOWING_ID_IN_modifier_703)

          tree_for_ID82 = @adaptor.create_with_payload!(__ID82__)
          @adaptor.add_child(root_0, tree_for_ID82)


        when 3
          root_0 = @adaptor.create_flat_list!


          # at line 72:5: '[' ( WS )* match_attribute ']'
          char_literal83 = match(T__51, TOKENS_FOLLOWING_T__51_IN_modifier_709)

          tree_for_char_literal83 = @adaptor.create_with_payload!(char_literal83)
          root_0 = @adaptor.become_root(tree_for_char_literal83, root_0)

          # at line 72:12: ( WS )*
          loop do  #loop 52
            alt_52 = 2
            look_52_0 = @input.peek(1)

            if (look_52_0 == WS) 
              alt_52 = 1

            end
            case alt_52
            when 1
              # at line 72:12: WS
              __WS84__ = match(WS, TOKENS_FOLLOWING_WS_IN_modifier_712)

            else
              break #loop 52
            end
          end
          @state.following.push(TOKENS_FOLLOWING_match_attribute_IN_modifier_716)
          match_attribute85 = match_attribute
          @state.following.pop
          @adaptor.add_child(root_0, match_attribute85.tree)
          char_literal86 = match(T__52, TOKENS_FOLLOWING_T__52_IN_modifier_718)

        when 4
          root_0 = @adaptor.create_flat_list!


          # at line 73:5: ':' ( ID | FUNCTION ( WS )* ( ID ( WS )* )? ')' )
          char_literal87 = match(T__46, TOKENS_FOLLOWING_T__46_IN_modifier_725)

          tree_for_char_literal87 = @adaptor.create_with_payload!(char_literal87)
          root_0 = @adaptor.become_root(tree_for_char_literal87, root_0)

          # at line 73:10: ( ID | FUNCTION ( WS )* ( ID ( WS )* )? ')' )
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
            # at line 73:12: ID
            __ID88__ = match(ID, TOKENS_FOLLOWING_ID_IN_modifier_730)

            tree_for_ID88 = @adaptor.create_with_payload!(__ID88__)
            @adaptor.add_child(root_0, tree_for_ID88)


          when 2
            # at line 73:17: FUNCTION ( WS )* ( ID ( WS )* )? ')'
            __FUNCTION89__ = match(FUNCTION, TOKENS_FOLLOWING_FUNCTION_IN_modifier_734)

            tree_for_FUNCTION89 = @adaptor.create_with_payload!(__FUNCTION89__)
            @adaptor.add_child(root_0, tree_for_FUNCTION89)

            # at line 73:28: ( WS )*
            loop do  #loop 53
              alt_53 = 2
              look_53_0 = @input.peek(1)

              if (look_53_0 == WS) 
                alt_53 = 1

              end
              case alt_53
              when 1
                # at line 73:28: WS
                __WS90__ = match(WS, TOKENS_FOLLOWING_WS_IN_modifier_736)

              else
                break #loop 53
              end
            end
            # at line 73:31: ( ID ( WS )* )?
            alt_55 = 2
            look_55_0 = @input.peek(1)

            if (look_55_0 == ID) 
              alt_55 = 1
            end
            case alt_55
            when 1
              # at line 73:33: ID ( WS )*
              __ID91__ = match(ID, TOKENS_FOLLOWING_ID_IN_modifier_742)

              tree_for_ID91 = @adaptor.create_with_payload!(__ID91__)
              @adaptor.add_child(root_0, tree_for_ID91)

              # at line 73:38: ( WS )*
              loop do  #loop 54
                alt_54 = 2
                look_54_0 = @input.peek(1)

                if (look_54_0 == WS) 
                  alt_54 = 1

                end
                case alt_54
                when 1
                  # at line 73:38: WS
                  __WS92__ = match(WS, TOKENS_FOLLOWING_WS_IN_modifier_744)

                else
                  break #loop 54
                end
              end

            end
            char_literal93 = match(T__53, TOKENS_FOLLOWING_T__53_IN_modifier_751)

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
        # trace_out(__method__, 11)

      end
      
      return return_value
    end

    MatchAttributeReturnValue = define_return_scope 

    # parser rule match_attribute
    # 
    # (in CSS.g)
    # 76:1: match_attribute : ID ( WS )* ( ( '=' | '~=' | '|=' ) ( WS )* ( ID | STRING ) ( WS )* )? ;
    def match_attribute
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 12)
      return_value = MatchAttributeReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __ID94__ = nil
      __WS95__ = nil
      char_literal96 = nil
      string_literal97 = nil
      string_literal98 = nil
      __WS99__ = nil
      set100 = nil
      __WS101__ = nil

      tree_for_ID94 = nil
      tree_for_WS95 = nil
      tree_for_char_literal96 = nil
      tree_for_string_literal97 = nil
      tree_for_string_literal98 = nil
      tree_for_WS99 = nil
      tree_for_set100 = nil
      tree_for_WS101 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 77:5: ID ( WS )* ( ( '=' | '~=' | '|=' ) ( WS )* ( ID | STRING ) ( WS )* )?
        __ID94__ = match(ID, TOKENS_FOLLOWING_ID_IN_match_attribute_767)

        tree_for_ID94 = @adaptor.create_with_payload!(__ID94__)
        @adaptor.add_child(root_0, tree_for_ID94)

        # at line 77:10: ( WS )*
        loop do  #loop 58
          alt_58 = 2
          look_58_0 = @input.peek(1)

          if (look_58_0 == WS) 
            alt_58 = 1

          end
          case alt_58
          when 1
            # at line 77:10: WS
            __WS95__ = match(WS, TOKENS_FOLLOWING_WS_IN_match_attribute_769)

          else
            break #loop 58
          end
        end
        # at line 77:13: ( ( '=' | '~=' | '|=' ) ( WS )* ( ID | STRING ) ( WS )* )?
        alt_62 = 2
        look_62_0 = @input.peek(1)

        if (look_62_0.between?(T__54, T__56)) 
          alt_62 = 1
        end
        case alt_62
        when 1
          # at line 77:15: ( '=' | '~=' | '|=' ) ( WS )* ( ID | STRING ) ( WS )*
          # at line 77:15: ( '=' | '~=' | '|=' )
          alt_59 = 3
          case look_59 = @input.peek(1)
          when T__54 then alt_59 = 1
          when T__55 then alt_59 = 2
          when T__56 then alt_59 = 3
          else
            nvae = NoViableAlternative("", 59, 0)
            raise nvae
          end
          case alt_59
          when 1
            # at line 77:17: '='
            char_literal96 = match(T__54, TOKENS_FOLLOWING_T__54_IN_match_attribute_777)

            tree_for_char_literal96 = @adaptor.create_with_payload!(char_literal96)
            root_0 = @adaptor.become_root(tree_for_char_literal96, root_0)


          when 2
            # at line 77:24: '~='
            string_literal97 = match(T__55, TOKENS_FOLLOWING_T__55_IN_match_attribute_782)

            tree_for_string_literal97 = @adaptor.create_with_payload!(string_literal97)
            root_0 = @adaptor.become_root(tree_for_string_literal97, root_0)


          when 3
            # at line 77:32: '|='
            string_literal98 = match(T__56, TOKENS_FOLLOWING_T__56_IN_match_attribute_787)

            tree_for_string_literal98 = @adaptor.create_with_payload!(string_literal98)
            root_0 = @adaptor.become_root(tree_for_string_literal98, root_0)


          end
          # at line 77:42: ( WS )*
          loop do  #loop 60
            alt_60 = 2
            look_60_0 = @input.peek(1)

            if (look_60_0 == WS) 
              alt_60 = 1

            end
            case alt_60
            when 1
              # at line 77:42: WS
              __WS99__ = match(WS, TOKENS_FOLLOWING_WS_IN_match_attribute_792)

            else
              break #loop 60
            end
          end
          set100 = @input.look
          if @input.peek(1) == STRING || @input.peek(1) == ID
            @input.consume
            @adaptor.add_child(root_0, @adaptor.create_with_payload!(set100))
            @state.error_recovery = false
          else
            mse = MismatchedSet(nil)
            raise mse
          end


          # at line 77:63: ( WS )*
          loop do  #loop 61
            alt_61 = 2
            look_61_0 = @input.peek(1)

            if (look_61_0 == WS) 
              alt_61 = 1

            end
            case alt_61
            when 1
              # at line 77:63: WS
              __WS101__ = match(WS, TOKENS_FOLLOWING_WS_IN_match_attribute_806)

            else
              break #loop 61
            end
          end

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
        # trace_out(__method__, 12)

      end
      
      return return_value
    end

    DeclarationReturnValue = define_return_scope 

    # parser rule declaration
    # 
    # (in CSS.g)
    # 80:1: declaration : ID ( WS )* ':' ( WS )* expr ( IMPORTANT ( WS )* )? ;
    def declaration
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 13)
      return_value = DeclarationReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __ID102__ = nil
      __WS103__ = nil
      char_literal104 = nil
      __WS105__ = nil
      __IMPORTANT107__ = nil
      __WS108__ = nil
      expr106 = nil

      tree_for_ID102 = nil
      tree_for_WS103 = nil
      tree_for_char_literal104 = nil
      tree_for_WS105 = nil
      tree_for_IMPORTANT107 = nil
      tree_for_WS108 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 81:5: ID ( WS )* ':' ( WS )* expr ( IMPORTANT ( WS )* )?
        __ID102__ = match(ID, TOKENS_FOLLOWING_ID_IN_declaration_824)

        tree_for_ID102 = @adaptor.create_with_payload!(__ID102__)
        @adaptor.add_child(root_0, tree_for_ID102)

        # at line 81:10: ( WS )*
        loop do  #loop 63
          alt_63 = 2
          look_63_0 = @input.peek(1)

          if (look_63_0 == WS) 
            alt_63 = 1

          end
          case alt_63
          when 1
            # at line 81:10: WS
            __WS103__ = match(WS, TOKENS_FOLLOWING_WS_IN_declaration_826)

          else
            break #loop 63
          end
        end
        char_literal104 = match(T__46, TOKENS_FOLLOWING_T__46_IN_declaration_830)

        tree_for_char_literal104 = @adaptor.create_with_payload!(char_literal104)
        root_0 = @adaptor.become_root(tree_for_char_literal104, root_0)

        # at line 81:20: ( WS )*
        loop do  #loop 64
          alt_64 = 2
          look_64_0 = @input.peek(1)

          if (look_64_0 == WS) 
            alt_64 = 1

          end
          case alt_64
          when 1
            # at line 81:20: WS
            __WS105__ = match(WS, TOKENS_FOLLOWING_WS_IN_declaration_833)

          else
            break #loop 64
          end
        end
        @state.following.push(TOKENS_FOLLOWING_expr_IN_declaration_837)
        expr106 = expr
        @state.following.pop
        @adaptor.add_child(root_0, expr106.tree)
        # at line 81:28: ( IMPORTANT ( WS )* )?
        alt_66 = 2
        look_66_0 = @input.peek(1)

        if (look_66_0 == IMPORTANT) 
          alt_66 = 1
        end
        case alt_66
        when 1
          # at line 81:29: IMPORTANT ( WS )*
          __IMPORTANT107__ = match(IMPORTANT, TOKENS_FOLLOWING_IMPORTANT_IN_declaration_840)

          tree_for_IMPORTANT107 = @adaptor.create_with_payload!(__IMPORTANT107__)
          @adaptor.add_child(root_0, tree_for_IMPORTANT107)

          # at line 81:41: ( WS )*
          loop do  #loop 65
            alt_65 = 2
            look_65_0 = @input.peek(1)

            if (look_65_0 == WS) 
              alt_65 = 1

            end
            case alt_65
            when 1
              # at line 81:41: WS
              __WS108__ = match(WS, TOKENS_FOLLOWING_WS_IN_declaration_842)

            else
              break #loop 65
            end
          end

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

    ExprReturnValue = define_return_scope 

    # parser rule expr
    # 
    # (in CSS.g)
    # 84:1: expr : term ( ( '/' ( WS )* | ',' ( WS )* )? term )* ;
    def expr
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 14)
      return_value = ExprReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal110 = nil
      __WS111__ = nil
      char_literal112 = nil
      __WS113__ = nil
      term109 = nil
      term114 = nil

      tree_for_char_literal110 = nil
      tree_for_WS111 = nil
      tree_for_char_literal112 = nil
      tree_for_WS113 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 85:5: term ( ( '/' ( WS )* | ',' ( WS )* )? term )*
        @state.following.push(TOKENS_FOLLOWING_term_IN_expr_859)
        term109 = term
        @state.following.pop
        @adaptor.add_child(root_0, term109.tree)
        # at line 85:10: ( ( '/' ( WS )* | ',' ( WS )* )? term )*
        loop do  #loop 70
          alt_70 = 2
          look_70_0 = @input.peek(1)

          if (look_70_0 == PERCENTAGE || look_70_0 == FUNCTION || look_70_0.between?(ANGLE, EXS) || look_70_0 == STRING || look_70_0.between?(URI, HASH) || look_70_0 == NUMBER || look_70_0 == T__44 || look_70_0 == T__47 || look_70_0.between?(T__57, T__58)) 
            alt_70 = 1

          end
          case alt_70
          when 1
            # at line 85:12: ( '/' ( WS )* | ',' ( WS )* )? term
            # at line 85:12: ( '/' ( WS )* | ',' ( WS )* )?
            alt_69 = 3
            look_69_0 = @input.peek(1)

            if (look_69_0 == T__57) 
              alt_69 = 1
            elsif (look_69_0 == T__44) 
              alt_69 = 2
            end
            case alt_69
            when 1
              # at line 85:14: '/' ( WS )*
              char_literal110 = match(T__57, TOKENS_FOLLOWING_T__57_IN_expr_865)

              tree_for_char_literal110 = @adaptor.create_with_payload!(char_literal110)
              root_0 = @adaptor.become_root(tree_for_char_literal110, root_0)

              # at line 85:21: ( WS )*
              loop do  #loop 67
                alt_67 = 2
                look_67_0 = @input.peek(1)

                if (look_67_0 == WS) 
                  alt_67 = 1

                end
                case alt_67
                when 1
                  # at line 85:21: WS
                  __WS111__ = match(WS, TOKENS_FOLLOWING_WS_IN_expr_868)

                else
                  break #loop 67
                end
              end

            when 2
              # at line 85:26: ',' ( WS )*
              char_literal112 = match(T__44, TOKENS_FOLLOWING_T__44_IN_expr_874)

              tree_for_char_literal112 = @adaptor.create_with_payload!(char_literal112)
              root_0 = @adaptor.become_root(tree_for_char_literal112, root_0)

              # at line 85:33: ( WS )*
              loop do  #loop 68
                alt_68 = 2
                look_68_0 = @input.peek(1)

                if (look_68_0 == WS) 
                  alt_68 = 1

                end
                case alt_68
                when 1
                  # at line 85:33: WS
                  __WS113__ = match(WS, TOKENS_FOLLOWING_WS_IN_expr_877)

                else
                  break #loop 68
                end
              end

            end
            @state.following.push(TOKENS_FOLLOWING_term_IN_expr_884)
            term114 = term
            @state.following.pop
            @adaptor.add_child(root_0, term114.tree)

          else
            break #loop 70
          end
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

    TermReturnValue = define_return_scope 

    # parser rule term
    # 
    # (in CSS.g)
    # 88:1: term : ( ( '-' | '+' )? ( NUMBER | PERCENTAGE | LENGTH | EMS | EXS | ANGLE | TIME | FREQ ) ( WS )* | STRING ( WS )* | ID ( WS )* | URI ( WS )* | HASH ( WS )* | FUNCTION ( WS )* expr ')' ( WS )* );
    def term
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 15)
      return_value = TermReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      set115 = nil
      set116 = nil
      __WS117__ = nil
      __STRING118__ = nil
      __WS119__ = nil
      __ID120__ = nil
      __WS121__ = nil
      __URI122__ = nil
      __WS123__ = nil
      __HASH124__ = nil
      __WS125__ = nil
      __FUNCTION126__ = nil
      __WS127__ = nil
      char_literal129 = nil
      __WS130__ = nil
      expr128 = nil

      tree_for_set115 = nil
      tree_for_set116 = nil
      tree_for_WS117 = nil
      tree_for_STRING118 = nil
      tree_for_WS119 = nil
      tree_for_ID120 = nil
      tree_for_WS121 = nil
      tree_for_URI122 = nil
      tree_for_WS123 = nil
      tree_for_HASH124 = nil
      tree_for_WS125 = nil
      tree_for_FUNCTION126 = nil
      tree_for_WS127 = nil
      tree_for_char_literal129 = nil
      tree_for_WS130 = nil

      begin
        # at line 89:3: ( ( '-' | '+' )? ( NUMBER | PERCENTAGE | LENGTH | EMS | EXS | ANGLE | TIME | FREQ ) ( WS )* | STRING ( WS )* | ID ( WS )* | URI ( WS )* | HASH ( WS )* | FUNCTION ( WS )* expr ')' ( WS )* )
        alt_79 = 6
        case look_79 = @input.peek(1)
        when PERCENTAGE, ANGLE, LENGTH, FREQ, TIME, EMS, EXS, NUMBER, T__47, T__58 then alt_79 = 1
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


          # at line 89:5: ( '-' | '+' )? ( NUMBER | PERCENTAGE | LENGTH | EMS | EXS | ANGLE | TIME | FREQ ) ( WS )*
          # at line 89:5: ( '-' | '+' )?
          alt_71 = 2
          look_71_0 = @input.peek(1)

          if (look_71_0 == T__47 || look_71_0 == T__58) 
            alt_71 = 1
          end
          case alt_71
          when 1
            # at line 
            set115 = @input.look
            if @input.peek(1) == T__47 || @input.peek(1) == T__58
              @input.consume
              @adaptor.add_child(root_0, @adaptor.create_with_payload!(set115))
              @state.error_recovery = false
            else
              mse = MismatchedSet(nil)
              raise mse
            end



          end
          set116 = @input.look
          if @input.peek(1) == PERCENTAGE || @input.peek(1).between?(ANGLE, EXS) || @input.peek(1) == NUMBER
            @input.consume
            @adaptor.add_child(root_0, @adaptor.create_with_payload!(set116))
            @state.error_recovery = false
          else
            mse = MismatchedSet(nil)
            raise mse
          end


          # at line 89:89: ( WS )*
          loop do  #loop 72
            alt_72 = 2
            look_72_0 = @input.peek(1)

            if (look_72_0 == WS) 
              alt_72 = 1

            end
            case alt_72
            when 1
              # at line 89:89: WS
              __WS117__ = match(WS, TOKENS_FOLLOWING_WS_IN_term_945)

            else
              break #loop 72
            end
          end

        when 2
          root_0 = @adaptor.create_flat_list!


          # at line 90:5: STRING ( WS )*
          __STRING118__ = match(STRING, TOKENS_FOLLOWING_STRING_IN_term_953)

          tree_for_STRING118 = @adaptor.create_with_payload!(__STRING118__)
          @adaptor.add_child(root_0, tree_for_STRING118)

          # at line 90:14: ( WS )*
          loop do  #loop 73
            alt_73 = 2
            look_73_0 = @input.peek(1)

            if (look_73_0 == WS) 
              alt_73 = 1

            end
            case alt_73
            when 1
              # at line 90:14: WS
              __WS119__ = match(WS, TOKENS_FOLLOWING_WS_IN_term_955)

            else
              break #loop 73
            end
          end

        when 3
          root_0 = @adaptor.create_flat_list!


          # at line 91:5: ID ( WS )*
          __ID120__ = match(ID, TOKENS_FOLLOWING_ID_IN_term_963)

          tree_for_ID120 = @adaptor.create_with_payload!(__ID120__)
          @adaptor.add_child(root_0, tree_for_ID120)

          # at line 91:10: ( WS )*
          loop do  #loop 74
            alt_74 = 2
            look_74_0 = @input.peek(1)

            if (look_74_0 == WS) 
              alt_74 = 1

            end
            case alt_74
            when 1
              # at line 91:10: WS
              __WS121__ = match(WS, TOKENS_FOLLOWING_WS_IN_term_965)

            else
              break #loop 74
            end
          end

        when 4
          root_0 = @adaptor.create_flat_list!


          # at line 92:5: URI ( WS )*
          __URI122__ = match(URI, TOKENS_FOLLOWING_URI_IN_term_973)

          tree_for_URI122 = @adaptor.create_with_payload!(__URI122__)
          @adaptor.add_child(root_0, tree_for_URI122)

          # at line 92:11: ( WS )*
          loop do  #loop 75
            alt_75 = 2
            look_75_0 = @input.peek(1)

            if (look_75_0 == WS) 
              alt_75 = 1

            end
            case alt_75
            when 1
              # at line 92:11: WS
              __WS123__ = match(WS, TOKENS_FOLLOWING_WS_IN_term_975)

            else
              break #loop 75
            end
          end

        when 5
          root_0 = @adaptor.create_flat_list!


          # at line 93:5: HASH ( WS )*
          __HASH124__ = match(HASH, TOKENS_FOLLOWING_HASH_IN_term_983)

          tree_for_HASH124 = @adaptor.create_with_payload!(__HASH124__)
          @adaptor.add_child(root_0, tree_for_HASH124)

          # at line 93:12: ( WS )*
          loop do  #loop 76
            alt_76 = 2
            look_76_0 = @input.peek(1)

            if (look_76_0 == WS) 
              alt_76 = 1

            end
            case alt_76
            when 1
              # at line 93:12: WS
              __WS125__ = match(WS, TOKENS_FOLLOWING_WS_IN_term_985)

            else
              break #loop 76
            end
          end

        when 6
          root_0 = @adaptor.create_flat_list!


          # at line 94:5: FUNCTION ( WS )* expr ')' ( WS )*
          __FUNCTION126__ = match(FUNCTION, TOKENS_FOLLOWING_FUNCTION_IN_term_999)

          tree_for_FUNCTION126 = @adaptor.create_with_payload!(__FUNCTION126__)
          @adaptor.add_child(root_0, tree_for_FUNCTION126)

          # at line 94:16: ( WS )*
          loop do  #loop 77
            alt_77 = 2
            look_77_0 = @input.peek(1)

            if (look_77_0 == WS) 
              alt_77 = 1

            end
            case alt_77
            when 1
              # at line 94:16: WS
              __WS127__ = match(WS, TOKENS_FOLLOWING_WS_IN_term_1001)

            else
              break #loop 77
            end
          end
          @state.following.push(TOKENS_FOLLOWING_expr_IN_term_1005)
          expr128 = expr
          @state.following.pop
          @adaptor.add_child(root_0, expr128.tree)
          char_literal129 = match(T__53, TOKENS_FOLLOWING_T__53_IN_term_1007)

          tree_for_char_literal129 = @adaptor.create_with_payload!(char_literal129)
          @adaptor.add_child(root_0, tree_for_char_literal129)

          # at line 94:30: ( WS )*
          loop do  #loop 78
            alt_78 = 2
            look_78_0 = @input.peek(1)

            if (look_78_0 == WS) 
              alt_78 = 1

            end
            case alt_78
            when 1
              # at line 94:30: WS
              __WS130__ = match(WS, TOKENS_FOLLOWING_WS_IN_term_1009)

            else
              break #loop 78
            end
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
        # trace_out(__method__, 15)

      end
      
      return return_value
    end



    # - - - - - - - - - - DFA definitions - - - - - - - - - - -
    class DFA47 < ANTLR3::DFA
      EOT = unpack(6, -1)
      EOF = unpack(6, -1)
      MIN = unpack(1, 20, 1, -1, 1, 20, 3, -1)
      MAX = unpack(1, 48, 1, -1, 1, 51, 3, -1)
      ACCEPT = unpack(1, -1, 1, 4, 1, -1, 1, 1, 1, 2, 1, 3)
      SPECIAL = unpack(6, -1)
      TRANSITION = [
        unpack(1, 2, 21, -1, 1, 1, 1, -1, 1, 1, 2, -1, 1, 3, 1, 4),
        unpack(),
        unpack(1, 2, 1, -1, 2, 5, 18, -1, 1, 1, 3, -1, 1, 5, 1, 3, 1, 4, 
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
          ()* loopback of 53:5: ( ( WS )* '+' ( WS )* r= simple_selector -> ^( '+' $relational_selector $r) | ( WS )* '>' ( WS )* r= simple_selector -> ^( '>' $relational_selector $r) | ( WS )+ r= simple_selector -> ^( UNDER $relational_selector $r) )*
        __dfa_description__
      end
    end


    private

    def initialize_dfas
      super rescue nil
      @dfa47 = DFA47.new(self, 47)

    end
    TOKENS_FOLLOWING_T__36_IN_stylesheet_95 = Set[19]
    TOKENS_FOLLOWING_STRING_IN_stylesheet_97 = Set[37]
    TOKENS_FOLLOWING_T__37_IN_stylesheet_99 = Set[1, 20, 22, 23, 38, 39, 40, 41, 45, 46, 49, 50, 51]
    TOKENS_FOLLOWING_WS_IN_stylesheet_111 = Set[1, 20, 22, 23, 38, 39, 40, 41, 45, 46, 49, 50, 51]
    TOKENS_FOLLOWING_T__38_IN_stylesheet_116 = Set[1, 20, 22, 23, 38, 39, 40, 41, 45, 46, 49, 50, 51]
    TOKENS_FOLLOWING_T__39_IN_stylesheet_121 = Set[1, 20, 22, 23, 38, 39, 40, 41, 45, 46, 49, 50, 51]
    TOKENS_FOLLOWING_import_statement_IN_stylesheet_133 = Set[1, 22, 23, 38, 39, 40, 41, 45, 46, 49, 50, 51]
    TOKENS_FOLLOWING_T__38_IN_stylesheet_137 = Set[1, 20, 22, 23, 38, 39, 40, 41, 45, 46, 49, 50, 51]
    TOKENS_FOLLOWING_WS_IN_stylesheet_140 = Set[1, 20, 22, 23, 38, 39, 40, 41, 45, 46, 49, 50, 51]
    TOKENS_FOLLOWING_T__39_IN_stylesheet_146 = Set[1, 20, 22, 23, 38, 39, 40, 41, 45, 46, 49, 50, 51]
    TOKENS_FOLLOWING_WS_IN_stylesheet_149 = Set[1, 20, 22, 23, 38, 39, 40, 41, 45, 46, 49, 50, 51]
    TOKENS_FOLLOWING_rule_IN_stylesheet_167 = Set[1, 22, 23, 38, 39, 41, 45, 46, 49, 50, 51]
    TOKENS_FOLLOWING_media_IN_stylesheet_171 = Set[1, 22, 23, 38, 39, 41, 45, 46, 49, 50, 51]
    TOKENS_FOLLOWING_page_IN_stylesheet_175 = Set[1, 22, 23, 38, 39, 41, 45, 46, 49, 50, 51]
    TOKENS_FOLLOWING_T__38_IN_stylesheet_181 = Set[1, 20, 22, 23, 38, 39, 41, 45, 46, 49, 50, 51]
    TOKENS_FOLLOWING_WS_IN_stylesheet_184 = Set[1, 20, 22, 23, 38, 39, 41, 45, 46, 49, 50, 51]
    TOKENS_FOLLOWING_T__39_IN_stylesheet_190 = Set[1, 20, 22, 23, 38, 39, 41, 45, 46, 49, 50, 51]
    TOKENS_FOLLOWING_WS_IN_stylesheet_193 = Set[1, 20, 22, 23, 38, 39, 41, 45, 46, 49, 50, 51]
    TOKENS_FOLLOWING_T__40_IN_import_statement_214 = Set[19, 20, 21]
    TOKENS_FOLLOWING_WS_IN_import_statement_217 = Set[19, 20, 21]
    TOKENS_FOLLOWING_set_IN_import_statement_221 = Set[20, 22, 37]
    TOKENS_FOLLOWING_WS_IN_import_statement_231 = Set[20, 22, 37]
    TOKENS_FOLLOWING_media_list_IN_import_statement_235 = Set[37]
    TOKENS_FOLLOWING_T__37_IN_import_statement_238 = Set[1, 20]
    TOKENS_FOLLOWING_WS_IN_import_statement_241 = Set[1, 20]
    TOKENS_FOLLOWING_T__41_IN_media_256 = Set[20, 22]
    TOKENS_FOLLOWING_WS_IN_media_259 = Set[20, 22]
    TOKENS_FOLLOWING_media_list_IN_media_263 = Set[42]
    TOKENS_FOLLOWING_T__42_IN_media_265 = Set[20, 22, 23, 43, 46, 49, 50, 51]
    TOKENS_FOLLOWING_WS_IN_media_268 = Set[20, 22, 23, 43, 46, 49, 50, 51]
    TOKENS_FOLLOWING_rule_IN_media_272 = Set[22, 23, 43, 46, 49, 50, 51]
    TOKENS_FOLLOWING_T__43_IN_media_275 = Set[1, 20]
    TOKENS_FOLLOWING_WS_IN_media_278 = Set[1, 20]
    TOKENS_FOLLOWING_ID_IN_media_list_293 = Set[1, 20, 44]
    TOKENS_FOLLOWING_WS_IN_media_list_295 = Set[1, 20, 44]
    TOKENS_FOLLOWING_T__44_IN_media_list_300 = Set[20, 22]
    TOKENS_FOLLOWING_WS_IN_media_list_302 = Set[20, 22]
    TOKENS_FOLLOWING_ID_IN_media_list_305 = Set[1, 20, 44]
    TOKENS_FOLLOWING_WS_IN_media_list_307 = Set[1, 20, 44]
    TOKENS_FOLLOWING_T__45_IN_page_335 = Set[20, 42, 46]
    TOKENS_FOLLOWING_WS_IN_page_337 = Set[20, 42, 46]
    TOKENS_FOLLOWING_T__46_IN_page_342 = Set[22]
    TOKENS_FOLLOWING_ID_IN_page_344 = Set[20, 42]
    TOKENS_FOLLOWING_WS_IN_page_346 = Set[20, 42]
    TOKENS_FOLLOWING_T__42_IN_page_356 = Set[20, 22, 37, 43]
    TOKENS_FOLLOWING_WS_IN_page_358 = Set[20, 22, 37, 43]
    TOKENS_FOLLOWING_declaration_IN_page_361 = Set[37, 43]
    TOKENS_FOLLOWING_T__37_IN_page_366 = Set[20, 22, 37, 43]
    TOKENS_FOLLOWING_WS_IN_page_368 = Set[20, 22, 37, 43]
    TOKENS_FOLLOWING_declaration_IN_page_371 = Set[37, 43]
    TOKENS_FOLLOWING_T__43_IN_page_377 = Set[1, 20]
    TOKENS_FOLLOWING_WS_IN_page_379 = Set[1, 20]
    TOKENS_FOLLOWING_selector_IN_rule_409 = Set[20, 42]
    TOKENS_FOLLOWING_WS_IN_rule_411 = Set[20, 42]
    TOKENS_FOLLOWING_T__42_IN_rule_418 = Set[20, 22, 37, 43]
    TOKENS_FOLLOWING_WS_IN_rule_420 = Set[20, 22, 37, 43]
    TOKENS_FOLLOWING_declaration_IN_rule_423 = Set[37, 43]
    TOKENS_FOLLOWING_T__37_IN_rule_428 = Set[20, 22, 37, 43]
    TOKENS_FOLLOWING_WS_IN_rule_430 = Set[20, 22, 37, 43]
    TOKENS_FOLLOWING_declaration_IN_rule_433 = Set[37, 43]
    TOKENS_FOLLOWING_T__43_IN_rule_439 = Set[1, 20]
    TOKENS_FOLLOWING_WS_IN_rule_441 = Set[1, 20]
    TOKENS_FOLLOWING_relational_selector_IN_selector_476 = Set[1, 44]
    TOKENS_FOLLOWING_T__44_IN_selector_480 = Set[20, 22, 23, 46, 49, 50, 51]
    TOKENS_FOLLOWING_WS_IN_selector_482 = Set[20, 22, 23, 46, 49, 50, 51]
    TOKENS_FOLLOWING_relational_selector_IN_selector_485 = Set[1, 44]
    TOKENS_FOLLOWING_simple_selector_IN_relational_selector_516 = Set[1, 20, 47, 48]
    TOKENS_FOLLOWING_WS_IN_relational_selector_530 = Set[20, 47]
    TOKENS_FOLLOWING_T__47_IN_relational_selector_533 = Set[20, 22, 23, 46, 49, 50, 51]
    TOKENS_FOLLOWING_WS_IN_relational_selector_535 = Set[20, 22, 23, 46, 49, 50, 51]
    TOKENS_FOLLOWING_simple_selector_IN_relational_selector_540 = Set[1, 20, 47, 48]
    TOKENS_FOLLOWING_WS_IN_relational_selector_562 = Set[20, 48]
    TOKENS_FOLLOWING_T__48_IN_relational_selector_565 = Set[20, 22, 23, 46, 49, 50, 51]
    TOKENS_FOLLOWING_WS_IN_relational_selector_567 = Set[20, 22, 23, 46, 49, 50, 51]
    TOKENS_FOLLOWING_simple_selector_IN_relational_selector_572 = Set[1, 20, 47, 48]
    TOKENS_FOLLOWING_WS_IN_relational_selector_594 = Set[20, 22, 23, 46, 49, 50, 51]
    TOKENS_FOLLOWING_simple_selector_IN_relational_selector_599 = Set[1, 20, 47, 48]
    TOKENS_FOLLOWING_element_IN_simple_selector_641 = Set[1, 22, 23, 46, 49, 50, 51]
    TOKENS_FOLLOWING_modifier_IN_simple_selector_643 = Set[1, 22, 23, 46, 49, 50, 51]
    TOKENS_FOLLOWING_modifier_IN_simple_selector_650 = Set[1, 22, 23, 46, 49, 50, 51]
    TOKENS_FOLLOWING_T__49_IN_element_664 = Set[1]
    TOKENS_FOLLOWING_ID_IN_element_674 = Set[1]
    TOKENS_FOLLOWING_HASH_IN_modifier_693 = Set[1]
    TOKENS_FOLLOWING_T__50_IN_modifier_700 = Set[22]
    TOKENS_FOLLOWING_ID_IN_modifier_703 = Set[1]
    TOKENS_FOLLOWING_T__51_IN_modifier_709 = Set[20, 22]
    TOKENS_FOLLOWING_WS_IN_modifier_712 = Set[20, 22]
    TOKENS_FOLLOWING_match_attribute_IN_modifier_716 = Set[52]
    TOKENS_FOLLOWING_T__52_IN_modifier_718 = Set[1]
    TOKENS_FOLLOWING_T__46_IN_modifier_725 = Set[6, 22]
    TOKENS_FOLLOWING_ID_IN_modifier_730 = Set[1]
    TOKENS_FOLLOWING_FUNCTION_IN_modifier_734 = Set[20, 22, 53]
    TOKENS_FOLLOWING_WS_IN_modifier_736 = Set[20, 22, 53]
    TOKENS_FOLLOWING_ID_IN_modifier_742 = Set[20, 53]
    TOKENS_FOLLOWING_WS_IN_modifier_744 = Set[20, 53]
    TOKENS_FOLLOWING_T__53_IN_modifier_751 = Set[1]
    TOKENS_FOLLOWING_ID_IN_match_attribute_767 = Set[1, 20, 54, 55, 56]
    TOKENS_FOLLOWING_WS_IN_match_attribute_769 = Set[1, 20, 54, 55, 56]
    TOKENS_FOLLOWING_T__54_IN_match_attribute_777 = Set[19, 20, 22]
    TOKENS_FOLLOWING_T__55_IN_match_attribute_782 = Set[19, 20, 22]
    TOKENS_FOLLOWING_T__56_IN_match_attribute_787 = Set[19, 20, 22]
    TOKENS_FOLLOWING_WS_IN_match_attribute_792 = Set[19, 20, 22]
    TOKENS_FOLLOWING_set_IN_match_attribute_796 = Set[1, 20]
    TOKENS_FOLLOWING_WS_IN_match_attribute_806 = Set[1, 20]
    TOKENS_FOLLOWING_ID_IN_declaration_824 = Set[20, 46]
    TOKENS_FOLLOWING_WS_IN_declaration_826 = Set[20, 46]
    TOKENS_FOLLOWING_T__46_IN_declaration_830 = Set[4, 6, 8, 9, 10, 11, 12, 13, 19, 20, 21, 22, 23, 25, 47, 58]
    TOKENS_FOLLOWING_WS_IN_declaration_833 = Set[4, 6, 8, 9, 10, 11, 12, 13, 19, 20, 21, 22, 23, 25, 47, 58]
    TOKENS_FOLLOWING_expr_IN_declaration_837 = Set[1, 24]
    TOKENS_FOLLOWING_IMPORTANT_IN_declaration_840 = Set[1, 20]
    TOKENS_FOLLOWING_WS_IN_declaration_842 = Set[1, 20]
    TOKENS_FOLLOWING_term_IN_expr_859 = Set[1, 4, 6, 8, 9, 10, 11, 12, 13, 19, 20, 21, 22, 23, 25, 44, 47, 57, 58]
    TOKENS_FOLLOWING_T__57_IN_expr_865 = Set[4, 6, 8, 9, 10, 11, 12, 13, 19, 20, 21, 22, 23, 25, 47, 58]
    TOKENS_FOLLOWING_WS_IN_expr_868 = Set[4, 6, 8, 9, 10, 11, 12, 13, 19, 20, 21, 22, 23, 25, 47, 58]
    TOKENS_FOLLOWING_T__44_IN_expr_874 = Set[4, 6, 8, 9, 10, 11, 12, 13, 19, 20, 21, 22, 23, 25, 47, 58]
    TOKENS_FOLLOWING_WS_IN_expr_877 = Set[4, 6, 8, 9, 10, 11, 12, 13, 19, 20, 21, 22, 23, 25, 47, 58]
    TOKENS_FOLLOWING_term_IN_expr_884 = Set[1, 4, 6, 8, 9, 10, 11, 12, 13, 19, 20, 21, 22, 23, 25, 44, 47, 57, 58]
    TOKENS_FOLLOWING_set_IN_term_900 = Set[4, 8, 9, 10, 11, 12, 13, 25]
    TOKENS_FOLLOWING_set_IN_term_911 = Set[1, 20]
    TOKENS_FOLLOWING_WS_IN_term_945 = Set[1, 20]
    TOKENS_FOLLOWING_STRING_IN_term_953 = Set[1, 20]
    TOKENS_FOLLOWING_WS_IN_term_955 = Set[1, 20]
    TOKENS_FOLLOWING_ID_IN_term_963 = Set[1, 20]
    TOKENS_FOLLOWING_WS_IN_term_965 = Set[1, 20]
    TOKENS_FOLLOWING_URI_IN_term_973 = Set[1, 20]
    TOKENS_FOLLOWING_WS_IN_term_975 = Set[1, 20]
    TOKENS_FOLLOWING_HASH_IN_term_983 = Set[1, 20]
    TOKENS_FOLLOWING_WS_IN_term_985 = Set[1, 20]
    TOKENS_FOLLOWING_FUNCTION_IN_term_999 = Set[4, 6, 8, 9, 10, 11, 12, 13, 19, 20, 21, 22, 23, 25, 47, 58]
    TOKENS_FOLLOWING_WS_IN_term_1001 = Set[4, 6, 8, 9, 10, 11, 12, 13, 19, 20, 21, 22, 23, 25, 47, 58]
    TOKENS_FOLLOWING_expr_IN_term_1005 = Set[53]
    TOKENS_FOLLOWING_T__53_IN_term_1007 = Set[1, 20]
    TOKENS_FOLLOWING_WS_IN_term_1009 = Set[1, 20]

  end # class Parser < ANTLR3::Parser

  at_exit { Parser.main(ARGV) } if __FILE__ == $0
end

