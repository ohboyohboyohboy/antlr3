#!/usr/bin/env ruby
# 
# generated using ANTLR Version: 3.1.3 Oct 07, 2009 18:36:49
# input grammar file: samples/Python.g
# generated at: 2009-10-07 18:45:04

this_directory = File.expand_path( File.dirname( __FILE__ ) )
$:.unshift( this_directory ) unless $:.include?( this_directory )

require 'antlr3'

module Python
  # TokenData defines all of the token type integer values
  # as constants, which will be included in all 
  # ANTLR-generated recognizers.
  const_defined?(:TokenData) or TokenData = ANTLR3::TokenScheme.new

  module TokenData

    # define the token constants
    TokenData.define_tokens(:DOUBLE_STAR_EQUAL => 29, :BACKQUOTE => 56, :STAR => 15, 
                            :DOUBLE_SLASH => 50, :MINUS_EQUAL => 20, :TRIAPOS => 64, 
                            :COMPLEX => 60, :NOT => 34, :EOF => -1, :LEADING_WS => 68, 
                            :DOUBLE_STAR => 16, :T__93 => 93, :T__94 => 94, :VBAR => 42, 
                            :RPAREN => 10, :T__91 => 91, :NAME => 11, :T__92 => 92, 
                            :GREATER => 36, :T__90 => 90, :NOT_EQUAL => 41, :LESS => 35, 
                            :COMMENT => 69, :T__98 => 98, :T__97 => 97, :T__96 => 96, 
                            :T__95 => 95, :RBRACK => 53, :RIGHT_SHIFT_EQUAL => 28, 
                            :T__80 => 80, :T__81 => 81, :T__82 => 82, :T__83 => 83, 
                            :VBAR_EQUAL => 25, :LCURLY => 54, :INT => 57, :SLASH_EQUAL => 22, 
                            :T__85 => 85, :T__84 => 84, :T__87 => 87, :T__86 => 86, 
                            :T__89 => 89, :T__88 => 88, :WS => 70, :T__71 => 71, 
                            :T__72 => 72, :PERCENT_EQUAL => 23, :OR => 32, :LONGINT => 58, 
                            :LESS_EQUAL => 39, :LEFT_SHIFT => 45, :DOUBLE_SLASH_EQUAL => 30, 
                            :T__76 => 76, :T__75 => 75, :T__74 => 74, :T__73 => 73, 
                            :T__79 => 79, :T__78 => 78, :T__77 => 77, :CONTINUED_LINE => 67, 
                            :LBRACK => 52, :ESC => 66, :DIGITS => 62, :Exponent => 63, 
                            :DEDENT => 5, :FLOAT => 59, :AND => 33, :LPAREN => 9, 
                            :INDENT => 4, :AT => 8, :SLASH => 48, :COMMA => 14, 
                            :STAR_EQUAL => 21, :AMPER => 44, :EQUAL => 37, :RIGHT_SHIFT => 31, 
                            :TILDE => 51, :PLUS => 46, :PLUS_EQUAL => 19, :DOT => 12, 
                            :PERCENT => 49, :MINUS => 47, :SEMI => 18, :TRIQUOTE => 65, 
                            :COLON => 13, :AMPER_EQUAL => 24, :NEWLINE => 7, :BLOCK => 6, 
                            :RCURLY => 55, :ASSIGN => 17, :ALT_NOT_EQUAL => 40, 
                            :CIRCUMFLEX_EQUAL => 26, :GREATER_EQUAL => 38, :CIRCUMFLEX => 43, 
                            :STRING => 61, :LEFT_SHIFT_EQUAL => 27)

    # register the proper human-readable name or literal value
    # for each token type
    #
    # this is necessary because anonymous tokens, which are
    # created from literal values in the grammar, do not
    # have descriptive names
    TokenData.register_names("INDENT", "DEDENT", "BLOCK", "NEWLINE", "AT", "LPAREN", 
                             "RPAREN", "NAME", "DOT", "COLON", "COMMA", "STAR", 
                             "DOUBLE_STAR", "ASSIGN", "SEMI", "PLUS_EQUAL", "MINUS_EQUAL", 
                             "STAR_EQUAL", "SLASH_EQUAL", "PERCENT_EQUAL", "AMPER_EQUAL", 
                             "VBAR_EQUAL", "CIRCUMFLEX_EQUAL", "LEFT_SHIFT_EQUAL", 
                             "RIGHT_SHIFT_EQUAL", "DOUBLE_STAR_EQUAL", "DOUBLE_SLASH_EQUAL", 
                             "RIGHT_SHIFT", "OR", "AND", "NOT", "LESS", "GREATER", 
                             "EQUAL", "GREATER_EQUAL", "LESS_EQUAL", "ALT_NOT_EQUAL", 
                             "NOT_EQUAL", "VBAR", "CIRCUMFLEX", "AMPER", "LEFT_SHIFT", 
                             "PLUS", "MINUS", "SLASH", "PERCENT", "DOUBLE_SLASH", 
                             "TILDE", "LBRACK", "RBRACK", "LCURLY", "RCURLY", "BACKQUOTE", 
                             "INT", "LONGINT", "FLOAT", "COMPLEX", "STRING", "DIGITS", 
                             "Exponent", "TRIAPOS", "TRIQUOTE", "ESC", "CONTINUED_LINE", 
                             "LEADING_WS", "COMMENT", "WS", "'def'", "'print'", 
                             "'del'", "'pass'", "'break'", "'continue'", "'return'", 
                             "'raise'", "'import'", "'from'", "'as'", "'global'", 
                             "'exec'", "'in'", "'assert'", "'if'", "'else'", "'elif'", 
                             "'while'", "'for'", "'try'", "'finally'", "'with'", 
                             "'except'", "'is'", "'lambda'", "'class'", "'yield'")
  end

  class Parser < ANTLR3::Parser

    include TokenData

    generated_using("samples/Python.g", "3.1.3 Oct 07, 2009 18:36:49")

    def initialize(input, options = {})
      super(input, options)

      @adaptor = ANTLR3::AST::CommonTreeAdaptor.new(token_class)
    end
    def self.return_scope_members
      super.push(:tree)
    end

    attr_accessor :adaptor

    # - - - - - - - - - - - - Rules - - - - - - - - - - - - -
    SingleInputReturnValue = define_return_scope 

    # parser rule single_input
    # 
    # (in samples/Python.g)
    # 131:1: single_input : ( NEWLINE | simple_statement | compound_statement NEWLINE );
    def single_input
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 1)
      return_value = SingleInputReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __NEWLINE1__ = nil
      __NEWLINE4__ = nil
      simple_statement2 = nil
      compound_statement3 = nil

      tree_for_NEWLINE1 = nil
      tree_for_NEWLINE4 = nil

      begin
        # at line 131:14: ( NEWLINE | simple_statement | compound_statement NEWLINE )
        alt_1 = 3
        case look_1 = @input.peek(1)
        when NEWLINE then alt_1 = 1
        when LPAREN, NAME, NOT, PLUS, MINUS, TILDE, LBRACK, LCURLY, BACKQUOTE, INT, LONGINT, FLOAT, COMPLEX, STRING, T__72, T__73, T__74, T__75, T__76, T__77, T__78, T__79, T__80, T__82, T__83, T__85, T__96, T__98 then alt_1 = 2
        when AT, T__71, T__86, T__89, T__90, T__91, T__93, T__97 then alt_1 = 3
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          nvae = NoViableAlternative("", 1, 0)
          raise nvae
        end
        case alt_1
        when 1
          root_0 = @adaptor.create_flat_list!


          # at line 131:16: NEWLINE
          __NEWLINE1__ = match(NEWLINE, TOKENS_FOLLOWING_NEWLINE_IN_single_input_92)
          if @state.backtracking == 0

            tree_for_NEWLINE1 = @adaptor.create_with_payload!(__NEWLINE1__)
            @adaptor.add_child(root_0, tree_for_NEWLINE1)

          end

        when 2
          root_0 = @adaptor.create_flat_list!


          # at line 132:16: simple_statement
          @state.following.push(TOKENS_FOLLOWING_simple_statement_IN_single_input_109)
          simple_statement2 = simple_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, simple_statement2.tree)
          end

        when 3
          root_0 = @adaptor.create_flat_list!


          # at line 133:16: compound_statement NEWLINE
          @state.following.push(TOKENS_FOLLOWING_compound_statement_IN_single_input_126)
          compound_statement3 = compound_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, compound_statement3.tree)
          end
          __NEWLINE4__ = match(NEWLINE, TOKENS_FOLLOWING_NEWLINE_IN_single_input_128)
          if @state.backtracking == 0

            tree_for_NEWLINE4 = @adaptor.create_with_payload!(__NEWLINE4__)
            @adaptor.add_child(root_0, tree_for_NEWLINE4)

          end

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
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

    FileInputReturnValue = define_return_scope 

    # parser rule file_input
    # 
    # (in samples/Python.g)
    # 136:1: file_input : ( NEWLINE | statement )* -> ^( nil ( statements )* ) ;
    def file_input
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 2)
      return_value = FileInputReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __NEWLINE5__ = nil
      statement6 = nil

      tree_for_NEWLINE5 = nil
      stream_NEWLINE = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token NEWLINE")
      stream_statement = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule statement")
      begin
        # at line 136:14: ( NEWLINE | statement )*
        # at line 136:14: ( NEWLINE | statement )*
        loop do  #loop 2
          alt_2 = 3
          look_2_0 = @input.peek(1)

          if (look_2_0 == NEWLINE) 
            alt_2 = 1
          elsif (look_2_0.between?(AT, LPAREN) || look_2_0 == NAME || look_2_0 == NOT || look_2_0.between?(PLUS, MINUS) || look_2_0.between?(TILDE, LBRACK) || look_2_0 == LCURLY || look_2_0.between?(BACKQUOTE, STRING) || look_2_0.between?(T__71, T__80) || look_2_0.between?(T__82, T__83) || look_2_0.between?(T__85, T__86) || look_2_0.between?(T__89, T__91) || look_2_0 == T__93 || look_2_0.between?(T__96, T__98)) 
            alt_2 = 2

          end
          case alt_2
          when 1
            # at line 136:15: NEWLINE
            __NEWLINE5__ = match(NEWLINE, TOKENS_FOLLOWING_NEWLINE_IN_file_input_151) 
            if @state.backtracking == 0
              stream_NEWLINE.add(__NEWLINE5__)
            end

          when 2
            # at line 136:25: statement
            @state.following.push(TOKENS_FOLLOWING_statement_IN_file_input_155)
            statement6 = statement
            @state.following.pop
            if @state.backtracking == 0
              stream_statement.add(statement6.tree)
            end

          else
            break #loop 2
          end
        end
        # AST Rewrite
        # elements: statements, nil
        # token labels: 
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 
        if @state.backtracking == 0

          return_value.tree = root_0
          stream_return_value = return_value ? ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule return_value", return_value.tree) :
                                               ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "token return_value", nil)

          root_0 = @adaptor.create_flat_list!
          # 136:37: -> ^( nil ( statements )* )
          # at line 136:40: ^( nil ( statements )* )
          root_1 = @adaptor.create_flat_list!
          # at line 136:46: ( statements )*
          while stream_statements.has_next?
          end

          stream_statements.reset();

          @adaptor.add_child(root_0, root_1)



          return_value.tree = root_0

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
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

    EvalInputReturnValue = define_return_scope 

    # parser rule eval_input
    # 
    # (in samples/Python.g)
    # 139:1: eval_input : ( NEWLINE )* test_list ( NEWLINE )* ;
    def eval_input
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 3)
      return_value = EvalInputReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __NEWLINE7__ = nil
      __NEWLINE9__ = nil
      test_list8 = nil

      tree_for_NEWLINE7 = nil
      tree_for_NEWLINE9 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 139:14: ( NEWLINE )* test_list ( NEWLINE )*
        # at line 139:14: ( NEWLINE )*
        loop do  #loop 3
          alt_3 = 2
          look_3_0 = @input.peek(1)

          if (look_3_0 == NEWLINE) 
            alt_3 = 1

          end
          case alt_3
          when 1
            # at line 139:15: NEWLINE
            __NEWLINE7__ = match(NEWLINE, TOKENS_FOLLOWING_NEWLINE_IN_eval_input_187)
            if @state.backtracking == 0

              tree_for_NEWLINE7 = @adaptor.create_with_payload!(__NEWLINE7__)
              @adaptor.add_child(root_0, tree_for_NEWLINE7)

            end

          else
            break #loop 3
          end
        end
        @state.following.push(TOKENS_FOLLOWING_test_list_IN_eval_input_191)
        test_list8 = test_list
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, test_list8.tree)
        end
        # at line 139:35: ( NEWLINE )*
        loop do  #loop 4
          alt_4 = 2
          look_4_0 = @input.peek(1)

          if (look_4_0 == NEWLINE) 
            alt_4 = 1

          end
          case alt_4
          when 1
            # at line 139:36: NEWLINE
            __NEWLINE9__ = match(NEWLINE, TOKENS_FOLLOWING_NEWLINE_IN_eval_input_194)
            if @state.backtracking == 0

              tree_for_NEWLINE9 = @adaptor.create_with_payload!(__NEWLINE9__)
              @adaptor.add_child(root_0, tree_for_NEWLINE9)

            end

          else
            break #loop 4
          end
        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
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

    DecoratorsReturnValue = define_return_scope 

    # parser rule decorators
    # 
    # (in samples/Python.g)
    # 142:1: decorators : ( decorator )+ ;
    def decorators
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 4)
      return_value = DecoratorsReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      decorator10 = nil


      begin
        root_0 = @adaptor.create_flat_list!


        # at line 142:13: ( decorator )+
        # at file 142:13: ( decorator )+
        match_count_5 = 0
        loop do
          alt_5 = 2
          look_5_0 = @input.peek(1)

          if (look_5_0 == AT) 
            alt_5 = 1

          end
          case alt_5
          when 1
            # at line 142:13: decorator
            @state.following.push(TOKENS_FOLLOWING_decorator_IN_decorators_215)
            decorator10 = decorator
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, decorator10.tree)
            end

          else
            match_count_5 > 0 and break
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

            eee = EarlyExit(5)


            raise eee
          end
          match_count_5 += 1
        end

        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
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

    DecoratorReturnValue = define_return_scope 

    # parser rule decorator
    # 
    # (in samples/Python.g)
    # 145:1: decorator : AT dotted_attr ( LPAREN ( arg_list )? RPAREN )? NEWLINE -> ^( AT dotted_attr ( arg_list )? ) ;
    def decorator
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 5)
      return_value = DecoratorReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __AT11__ = nil
      __LPAREN13__ = nil
      __RPAREN15__ = nil
      __NEWLINE16__ = nil
      dotted_attr12 = nil
      arg_list14 = nil

      tree_for_AT11 = nil
      tree_for_LPAREN13 = nil
      tree_for_RPAREN15 = nil
      tree_for_NEWLINE16 = nil
      stream_AT = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token AT")
      stream_RPAREN = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token RPAREN")
      stream_NEWLINE = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token NEWLINE")
      stream_LPAREN = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token LPAREN")
      stream_arg_list = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule arg_list")
      stream_dotted_attr = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule dotted_attr")
      begin
        # at line 145:12: AT dotted_attr ( LPAREN ( arg_list )? RPAREN )? NEWLINE
        __AT11__ = match(AT, TOKENS_FOLLOWING_AT_IN_decorator_234) 
        if @state.backtracking == 0
          stream_AT.add(__AT11__)
        end
        @state.following.push(TOKENS_FOLLOWING_dotted_attr_IN_decorator_236)
        dotted_attr12 = dotted_attr
        @state.following.pop
        if @state.backtracking == 0
          stream_dotted_attr.add(dotted_attr12.tree)
        end
        # at line 145:27: ( LPAREN ( arg_list )? RPAREN )?
        alt_7 = 2
        look_7_0 = @input.peek(1)

        if (look_7_0 == LPAREN) 
          alt_7 = 1
        end
        case alt_7
        when 1
          # at line 145:28: LPAREN ( arg_list )? RPAREN
          __LPAREN13__ = match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_decorator_239) 
          if @state.backtracking == 0
            stream_LPAREN.add(__LPAREN13__)
          end
          # at line 145:35: ( arg_list )?
          alt_6 = 2
          look_6_0 = @input.peek(1)

          if (look_6_0 == LPAREN || look_6_0 == NAME || look_6_0.between?(STAR, DOUBLE_STAR) || look_6_0 == NOT || look_6_0.between?(PLUS, MINUS) || look_6_0.between?(TILDE, LBRACK) || look_6_0 == LCURLY || look_6_0.between?(BACKQUOTE, STRING) || look_6_0 == T__96) 
            alt_6 = 1
          end
          case alt_6
          when 1
            # at line 145:35: arg_list
            @state.following.push(TOKENS_FOLLOWING_arg_list_IN_decorator_241)
            arg_list14 = arg_list
            @state.following.pop
            if @state.backtracking == 0
              stream_arg_list.add(arg_list14.tree)
            end

          end
          __RPAREN15__ = match(RPAREN, TOKENS_FOLLOWING_RPAREN_IN_decorator_244) 
          if @state.backtracking == 0
            stream_RPAREN.add(__RPAREN15__)
          end

        end
        __NEWLINE16__ = match(NEWLINE, TOKENS_FOLLOWING_NEWLINE_IN_decorator_248) 
        if @state.backtracking == 0
          stream_NEWLINE.add(__NEWLINE16__)
        end
        # AST Rewrite
        # elements: arg_list, dotted_attr, AT
        # token labels: 
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 
        if @state.backtracking == 0

          return_value.tree = root_0
          stream_return_value = return_value ? ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule return_value", return_value.tree) :
                                               ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "token return_value", nil)

          root_0 = @adaptor.create_flat_list!
          # 146:10: -> ^( AT dotted_attr ( arg_list )? )
          # at line 146:13: ^( AT dotted_attr ( arg_list )? )
          root_1 = @adaptor.create_flat_list!
          root_1 = @adaptor.become_root(stream_AT.next_node, root_1)

          @adaptor.add_child(root_1, stream_dotted_attr.next_tree)
          # at line 146:30: ( arg_list )?
          if stream_arg_list.has_next?
            @adaptor.add_child(root_1, stream_arg_list.next_tree)

          end

          stream_arg_list.reset();

          @adaptor.add_child(root_0, root_1)



          return_value.tree = root_0

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
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

    DottedAttrReturnValue = define_return_scope 

    # parser rule dotted_attr
    # 
    # (in samples/Python.g)
    # 149:1: dotted_attr : ( NAME ( DOT NAME )+ -> ^( DOT ( NAME )+ ) | NAME );
    def dotted_attr
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 6)
      return_value = DottedAttrReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __NAME17__ = nil
      __DOT18__ = nil
      __NAME19__ = nil
      __NAME20__ = nil

      tree_for_NAME17 = nil
      tree_for_DOT18 = nil
      tree_for_NAME19 = nil
      tree_for_NAME20 = nil
      stream_NAME = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token NAME")
      stream_DOT = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token DOT")

      begin
        # at line 150:5: ( NAME ( DOT NAME )+ -> ^( DOT ( NAME )+ ) | NAME )
        alt_9 = 2
        look_9_0 = @input.peek(1)

        if (look_9_0 == NAME) 
          look_9_1 = @input.peek(2)

          if (look_9_1 == DOT) 
            alt_9 = 1
          elsif (look_9_1 == NEWLINE || look_9_1 == LPAREN) 
            alt_9 = 2
          else
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
          nvae = NoViableAlternative("", 9, 1)
            raise nvae
          end
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 9, 0)
          raise nvae
        end
        case alt_9
        when 1
          # at line 150:7: NAME ( DOT NAME )+
          __NAME17__ = match(NAME, TOKENS_FOLLOWING_NAME_IN_dotted_attr_290) 
          if @state.backtracking == 0
            stream_NAME.add(__NAME17__)
          end
          # at file 150:12: ( DOT NAME )+
          match_count_8 = 0
          loop do
            alt_8 = 2
            look_8_0 = @input.peek(1)

            if (look_8_0 == DOT) 
              alt_8 = 1

            end
            case alt_8
            when 1
              # at line 150:13: DOT NAME
              __DOT18__ = match(DOT, TOKENS_FOLLOWING_DOT_IN_dotted_attr_293) 
              if @state.backtracking == 0
                stream_DOT.add(__DOT18__)
              end
              __NAME19__ = match(NAME, TOKENS_FOLLOWING_NAME_IN_dotted_attr_295) 
              if @state.backtracking == 0
                stream_NAME.add(__NAME19__)
              end

            else
              match_count_8 > 0 and break
              @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

              eee = EarlyExit(8)


              raise eee
            end
            match_count_8 += 1
          end

          # AST Rewrite
          # elements: NAME, DOT
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule return_value", return_value.tree) :
                                                 ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "token return_value", nil)

            root_0 = @adaptor.create_flat_list!
            # 150:24: -> ^( DOT ( NAME )+ )
            # at line 150:27: ^( DOT ( NAME )+ )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(stream_DOT.next_node, root_1)

            # at line 150:33: ( NAME )+
            unless stream_NAME.has_next?
              raise ANTLR3::RewriteEarlyExit
            end

            while stream_NAME.has_next?
              @adaptor.add_child(root_1, stream_NAME.next_node)

            end

            stream_NAME.reset

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 2
          root_0 = @adaptor.create_flat_list!


          # at line 151:7: NAME
          __NAME20__ = match(NAME, TOKENS_FOLLOWING_NAME_IN_dotted_attr_314)
          if @state.backtracking == 0

            tree_for_NAME20 = @adaptor.create_with_payload!(__NAME20__)
            @adaptor.add_child(root_0, tree_for_NAME20)

          end

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
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

    FuncDefReturnValue = define_return_scope 

    # parser rule func_def
    # 
    # (in samples/Python.g)
    # 154:1: func_def : ( decorators )? 'def' NAME parameters COLON suite -> ^( 'def' NAME parameters ( decorators )? suite ) ;
    def func_def
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 7)
      return_value = FuncDefReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal22 = nil
      __NAME23__ = nil
      __COLON25__ = nil
      decorators21 = nil
      parameters24 = nil
      suite26 = nil

      tree_for_string_literal22 = nil
      tree_for_NAME23 = nil
      tree_for_COLON25 = nil
      stream_COLON = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token COLON")
      stream_NAME = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token NAME")
      stream_T__71 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__71")
      stream_decorators = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule decorators")
      stream_parameters = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule parameters")
      stream_suite = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule suite")
      begin
        # at line 154:12: ( decorators )? 'def' NAME parameters COLON suite
        # at line 154:12: ( decorators )?
        alt_10 = 2
        look_10_0 = @input.peek(1)

        if (look_10_0 == AT) 
          alt_10 = 1
        end
        case alt_10
        when 1
          # at line 154:12: decorators
          @state.following.push(TOKENS_FOLLOWING_decorators_IN_func_def_327)
          decorators21 = decorators
          @state.following.pop
          if @state.backtracking == 0
            stream_decorators.add(decorators21.tree)
          end

        end
        string_literal22 = match(T__71, TOKENS_FOLLOWING_T__71_IN_func_def_330) 
        if @state.backtracking == 0
          stream_T__71.add(string_literal22)
        end
        __NAME23__ = match(NAME, TOKENS_FOLLOWING_NAME_IN_func_def_332) 
        if @state.backtracking == 0
          stream_NAME.add(__NAME23__)
        end
        @state.following.push(TOKENS_FOLLOWING_parameters_IN_func_def_334)
        parameters24 = parameters
        @state.following.pop
        if @state.backtracking == 0
          stream_parameters.add(parameters24.tree)
        end
        __COLON25__ = match(COLON, TOKENS_FOLLOWING_COLON_IN_func_def_336) 
        if @state.backtracking == 0
          stream_COLON.add(__COLON25__)
        end
        @state.following.push(TOKENS_FOLLOWING_suite_IN_func_def_338)
        suite26 = suite
        @state.following.pop
        if @state.backtracking == 0
          stream_suite.add(suite26.tree)
        end
        # AST Rewrite
        # elements: suite, decorators, T__71, parameters, NAME
        # token labels: 
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 
        if @state.backtracking == 0

          return_value.tree = root_0
          stream_return_value = return_value ? ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule return_value", return_value.tree) :
                                               ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "token return_value", nil)

          root_0 = @adaptor.create_flat_list!
          # 155:9: -> ^( 'def' NAME parameters ( decorators )? suite )
          # at line 155:12: ^( 'def' NAME parameters ( decorators )? suite )
          root_1 = @adaptor.create_flat_list!
          root_1 = @adaptor.become_root(stream_T__71.next_node, root_1)

          @adaptor.add_child(root_1, stream_NAME.next_node)
          @adaptor.add_child(root_1, stream_parameters.next_tree)
          # at line 155:36: ( decorators )?
          if stream_decorators.has_next?
            @adaptor.add_child(root_1, stream_decorators.next_tree)

          end

          stream_decorators.reset();
          @adaptor.add_child(root_1, stream_suite.next_tree)

          @adaptor.add_child(root_0, root_1)



          return_value.tree = root_0

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
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

    ParametersReturnValue = define_return_scope 

    # parser rule parameters
    # 
    # (in samples/Python.g)
    # 158:1: parameters : LPAREN ( var_args_list )? RPAREN ;
    def parameters
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 8)
      return_value = ParametersReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __LPAREN27__ = nil
      __RPAREN29__ = nil
      var_args_list28 = nil

      tree_for_LPAREN27 = nil
      tree_for_RPAREN29 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 158:14: LPAREN ( var_args_list )? RPAREN
        __LPAREN27__ = match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_parameters_378)
        if @state.backtracking == 0

          tree_for_LPAREN27 = @adaptor.create_with_payload!(__LPAREN27__)
          @adaptor.add_child(root_0, tree_for_LPAREN27)

        end
        # at line 158:21: ( var_args_list )?
        alt_11 = 2
        look_11_0 = @input.peek(1)

        if (look_11_0 == LPAREN || look_11_0 == NAME || look_11_0.between?(STAR, DOUBLE_STAR)) 
          alt_11 = 1
        end
        case alt_11
        when 1
          # at line 158:22: var_args_list
          @state.following.push(TOKENS_FOLLOWING_var_args_list_IN_parameters_381)
          var_args_list28 = var_args_list
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, var_args_list28.tree)
          end

        end
        __RPAREN29__ = match(RPAREN, TOKENS_FOLLOWING_RPAREN_IN_parameters_385)
        if @state.backtracking == 0

          tree_for_RPAREN29 = @adaptor.create_with_payload!(__RPAREN29__)
          @adaptor.add_child(root_0, tree_for_RPAREN29)

        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
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

    VarArgsListReturnValue = define_return_scope 

    # parser rule var_args_list
    # 
    # (in samples/Python.g)
    # 161:1: var_args_list : ( def_parameter ( options {greedy=true; } : COMMA def_parameter )* ( COMMA ( STAR NAME ( COMMA DOUBLE_STAR NAME )? | DOUBLE_STAR NAME )? )? | STAR NAME ( COMMA DOUBLE_STAR NAME )? | DOUBLE_STAR NAME );
    def var_args_list
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 9)
      return_value = VarArgsListReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __COMMA31__ = nil
      __COMMA33__ = nil
      __STAR34__ = nil
      __NAME35__ = nil
      __COMMA36__ = nil
      __DOUBLE_STAR37__ = nil
      __NAME38__ = nil
      __DOUBLE_STAR39__ = nil
      __NAME40__ = nil
      __STAR41__ = nil
      __NAME42__ = nil
      __COMMA43__ = nil
      __DOUBLE_STAR44__ = nil
      __NAME45__ = nil
      __DOUBLE_STAR46__ = nil
      __NAME47__ = nil
      def_parameter30 = nil
      def_parameter32 = nil

      tree_for_COMMA31 = nil
      tree_for_COMMA33 = nil
      tree_for_STAR34 = nil
      tree_for_NAME35 = nil
      tree_for_COMMA36 = nil
      tree_for_DOUBLE_STAR37 = nil
      tree_for_NAME38 = nil
      tree_for_DOUBLE_STAR39 = nil
      tree_for_NAME40 = nil
      tree_for_STAR41 = nil
      tree_for_NAME42 = nil
      tree_for_COMMA43 = nil
      tree_for_DOUBLE_STAR44 = nil
      tree_for_NAME45 = nil
      tree_for_DOUBLE_STAR46 = nil
      tree_for_NAME47 = nil

      begin
        # at line 161:15: ( def_parameter ( options {greedy=true; } : COMMA def_parameter )* ( COMMA ( STAR NAME ( COMMA DOUBLE_STAR NAME )? | DOUBLE_STAR NAME )? )? | STAR NAME ( COMMA DOUBLE_STAR NAME )? | DOUBLE_STAR NAME )
        alt_17 = 3
        case look_17 = @input.peek(1)
        when LPAREN, NAME then alt_17 = 1
        when STAR then alt_17 = 2
        when DOUBLE_STAR then alt_17 = 3
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          nvae = NoViableAlternative("", 17, 0)
          raise nvae
        end
        case alt_17
        when 1
          root_0 = @adaptor.create_flat_list!


          # at line 161:17: def_parameter ( options {greedy=true; } : COMMA def_parameter )* ( COMMA ( STAR NAME ( COMMA DOUBLE_STAR NAME )? | DOUBLE_STAR NAME )? )?
          @state.following.push(TOKENS_FOLLOWING_def_parameter_IN_var_args_list_405)
          def_parameter30 = def_parameter
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, def_parameter30.tree)
          end
          # at line 162:15: ( options {greedy=true; } : COMMA def_parameter )*
          loop do  #loop 12
            alt_12 = 2
            look_12_0 = @input.peek(1)

            if (look_12_0 == COMMA) 
              look_12_1 = @input.peek(2)

              if (look_12_1 == LPAREN || look_12_1 == NAME) 
                alt_12 = 1

              end

            end
            case alt_12
            when 1
              # at line 162:40: COMMA def_parameter
              __COMMA31__ = match(COMMA, TOKENS_FOLLOWING_COMMA_IN_var_args_list_430)
              if @state.backtracking == 0

                tree_for_COMMA31 = @adaptor.create_with_payload!(__COMMA31__)
                @adaptor.add_child(root_0, tree_for_COMMA31)

              end
              @state.following.push(TOKENS_FOLLOWING_def_parameter_IN_var_args_list_432)
              def_parameter32 = def_parameter
              @state.following.pop
              if @state.backtracking == 0
                @adaptor.add_child(root_0, def_parameter32.tree)
              end

            else
              break #loop 12
            end
          end
          # at line 163:15: ( COMMA ( STAR NAME ( COMMA DOUBLE_STAR NAME )? | DOUBLE_STAR NAME )? )?
          alt_15 = 2
          look_15_0 = @input.peek(1)

          if (look_15_0 == COMMA) 
            alt_15 = 1
          end
          case alt_15
          when 1
            # at line 163:16: COMMA ( STAR NAME ( COMMA DOUBLE_STAR NAME )? | DOUBLE_STAR NAME )?
            __COMMA33__ = match(COMMA, TOKENS_FOLLOWING_COMMA_IN_var_args_list_451)
            if @state.backtracking == 0

              tree_for_COMMA33 = @adaptor.create_with_payload!(__COMMA33__)
              @adaptor.add_child(root_0, tree_for_COMMA33)

            end
            # at line 164:19: ( STAR NAME ( COMMA DOUBLE_STAR NAME )? | DOUBLE_STAR NAME )?
            alt_14 = 3
            look_14_0 = @input.peek(1)

            if (look_14_0 == STAR) 
              alt_14 = 1
            elsif (look_14_0 == DOUBLE_STAR) 
              alt_14 = 2
            end
            case alt_14
            when 1
              # at line 164:21: STAR NAME ( COMMA DOUBLE_STAR NAME )?
              __STAR34__ = match(STAR, TOKENS_FOLLOWING_STAR_IN_var_args_list_473)
              if @state.backtracking == 0

                tree_for_STAR34 = @adaptor.create_with_payload!(__STAR34__)
                @adaptor.add_child(root_0, tree_for_STAR34)

              end
              __NAME35__ = match(NAME, TOKENS_FOLLOWING_NAME_IN_var_args_list_475)
              if @state.backtracking == 0

                tree_for_NAME35 = @adaptor.create_with_payload!(__NAME35__)
                @adaptor.add_child(root_0, tree_for_NAME35)

              end
              # at line 164:31: ( COMMA DOUBLE_STAR NAME )?
              alt_13 = 2
              look_13_0 = @input.peek(1)

              if (look_13_0 == COMMA) 
                alt_13 = 1
              end
              case alt_13
              when 1
                # at line 164:32: COMMA DOUBLE_STAR NAME
                __COMMA36__ = match(COMMA, TOKENS_FOLLOWING_COMMA_IN_var_args_list_478)
                if @state.backtracking == 0

                  tree_for_COMMA36 = @adaptor.create_with_payload!(__COMMA36__)
                  @adaptor.add_child(root_0, tree_for_COMMA36)

                end
                __DOUBLE_STAR37__ = match(DOUBLE_STAR, TOKENS_FOLLOWING_DOUBLE_STAR_IN_var_args_list_480)
                if @state.backtracking == 0

                  tree_for_DOUBLE_STAR37 = @adaptor.create_with_payload!(__DOUBLE_STAR37__)
                  @adaptor.add_child(root_0, tree_for_DOUBLE_STAR37)

                end
                __NAME38__ = match(NAME, TOKENS_FOLLOWING_NAME_IN_var_args_list_482)
                if @state.backtracking == 0

                  tree_for_NAME38 = @adaptor.create_with_payload!(__NAME38__)
                  @adaptor.add_child(root_0, tree_for_NAME38)

                end

              end

            when 2
              # at line 165:21: DOUBLE_STAR NAME
              __DOUBLE_STAR39__ = match(DOUBLE_STAR, TOKENS_FOLLOWING_DOUBLE_STAR_IN_var_args_list_506)
              if @state.backtracking == 0

                tree_for_DOUBLE_STAR39 = @adaptor.create_with_payload!(__DOUBLE_STAR39__)
                @adaptor.add_child(root_0, tree_for_DOUBLE_STAR39)

              end
              __NAME40__ = match(NAME, TOKENS_FOLLOWING_NAME_IN_var_args_list_508)
              if @state.backtracking == 0

                tree_for_NAME40 = @adaptor.create_with_payload!(__NAME40__)
                @adaptor.add_child(root_0, tree_for_NAME40)

              end

            end

          end

        when 2
          root_0 = @adaptor.create_flat_list!


          # at line 168:15: STAR NAME ( COMMA DOUBLE_STAR NAME )?
          __STAR41__ = match(STAR, TOKENS_FOLLOWING_STAR_IN_var_args_list_562)
          if @state.backtracking == 0

            tree_for_STAR41 = @adaptor.create_with_payload!(__STAR41__)
            @adaptor.add_child(root_0, tree_for_STAR41)

          end
          __NAME42__ = match(NAME, TOKENS_FOLLOWING_NAME_IN_var_args_list_564)
          if @state.backtracking == 0

            tree_for_NAME42 = @adaptor.create_with_payload!(__NAME42__)
            @adaptor.add_child(root_0, tree_for_NAME42)

          end
          # at line 168:25: ( COMMA DOUBLE_STAR NAME )?
          alt_16 = 2
          look_16_0 = @input.peek(1)

          if (look_16_0 == COMMA) 
            alt_16 = 1
          end
          case alt_16
          when 1
            # at line 168:26: COMMA DOUBLE_STAR NAME
            __COMMA43__ = match(COMMA, TOKENS_FOLLOWING_COMMA_IN_var_args_list_567)
            if @state.backtracking == 0

              tree_for_COMMA43 = @adaptor.create_with_payload!(__COMMA43__)
              @adaptor.add_child(root_0, tree_for_COMMA43)

            end
            __DOUBLE_STAR44__ = match(DOUBLE_STAR, TOKENS_FOLLOWING_DOUBLE_STAR_IN_var_args_list_569)
            if @state.backtracking == 0

              tree_for_DOUBLE_STAR44 = @adaptor.create_with_payload!(__DOUBLE_STAR44__)
              @adaptor.add_child(root_0, tree_for_DOUBLE_STAR44)

            end
            __NAME45__ = match(NAME, TOKENS_FOLLOWING_NAME_IN_var_args_list_571)
            if @state.backtracking == 0

              tree_for_NAME45 = @adaptor.create_with_payload!(__NAME45__)
              @adaptor.add_child(root_0, tree_for_NAME45)

            end

          end

        when 3
          root_0 = @adaptor.create_flat_list!


          # at line 169:15: DOUBLE_STAR NAME
          __DOUBLE_STAR46__ = match(DOUBLE_STAR, TOKENS_FOLLOWING_DOUBLE_STAR_IN_var_args_list_589)
          if @state.backtracking == 0

            tree_for_DOUBLE_STAR46 = @adaptor.create_with_payload!(__DOUBLE_STAR46__)
            @adaptor.add_child(root_0, tree_for_DOUBLE_STAR46)

          end
          __NAME47__ = match(NAME, TOKENS_FOLLOWING_NAME_IN_var_args_list_591)
          if @state.backtracking == 0

            tree_for_NAME47 = @adaptor.create_with_payload!(__NAME47__)
            @adaptor.add_child(root_0, tree_for_NAME47)

          end

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
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

    DefParameterReturnValue = define_return_scope 

    # parser rule def_parameter
    # 
    # (in samples/Python.g)
    # 172:1: def_parameter : fp_def ( ASSIGN test )? ;
    def def_parameter
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 10)
      return_value = DefParameterReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __ASSIGN49__ = nil
      fp_def48 = nil
      test50 = nil

      tree_for_ASSIGN49 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 172:17: fp_def ( ASSIGN test )?
        @state.following.push(TOKENS_FOLLOWING_fp_def_IN_def_parameter_612)
        fp_def48 = fp_def
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, fp_def48.tree)
        end
        # at line 172:24: ( ASSIGN test )?
        alt_18 = 2
        look_18_0 = @input.peek(1)

        if (look_18_0 == ASSIGN) 
          alt_18 = 1
        end
        case alt_18
        when 1
          # at line 172:25: ASSIGN test
          __ASSIGN49__ = match(ASSIGN, TOKENS_FOLLOWING_ASSIGN_IN_def_parameter_615)
          if @state.backtracking == 0

            tree_for_ASSIGN49 = @adaptor.create_with_payload!(__ASSIGN49__)
            @adaptor.add_child(root_0, tree_for_ASSIGN49)

          end
          @state.following.push(TOKENS_FOLLOWING_test_IN_def_parameter_617)
          test50 = test
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, test50.tree)
          end

        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
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

    FpDefReturnValue = define_return_scope 

    # parser rule fp_def
    # 
    # (in samples/Python.g)
    # 175:1: fp_def : ( NAME | LPAREN fp_list RPAREN );
    def fp_def
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 11)
      return_value = FpDefReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __NAME51__ = nil
      __LPAREN52__ = nil
      __RPAREN54__ = nil
      fp_list53 = nil

      tree_for_NAME51 = nil
      tree_for_LPAREN52 = nil
      tree_for_RPAREN54 = nil

      begin
        # at line 175:8: ( NAME | LPAREN fp_list RPAREN )
        alt_19 = 2
        look_19_0 = @input.peek(1)

        if (look_19_0 == NAME) 
          alt_19 = 1
        elsif (look_19_0 == LPAREN) 
          alt_19 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 19, 0)
          raise nvae
        end
        case alt_19
        when 1
          root_0 = @adaptor.create_flat_list!


          # at line 175:10: NAME
          __NAME51__ = match(NAME, TOKENS_FOLLOWING_NAME_IN_fp_def_641)
          if @state.backtracking == 0

            tree_for_NAME51 = @adaptor.create_with_payload!(__NAME51__)
            @adaptor.add_child(root_0, tree_for_NAME51)

          end

        when 2
          root_0 = @adaptor.create_flat_list!


          # at line 176:9: LPAREN fp_list RPAREN
          __LPAREN52__ = match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_fp_def_651)
          if @state.backtracking == 0

            tree_for_LPAREN52 = @adaptor.create_with_payload!(__LPAREN52__)
            @adaptor.add_child(root_0, tree_for_LPAREN52)

          end
          @state.following.push(TOKENS_FOLLOWING_fp_list_IN_fp_def_653)
          fp_list53 = fp_list
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, fp_list53.tree)
          end
          __RPAREN54__ = match(RPAREN, TOKENS_FOLLOWING_RPAREN_IN_fp_def_655)
          if @state.backtracking == 0

            tree_for_RPAREN54 = @adaptor.create_with_payload!(__RPAREN54__)
            @adaptor.add_child(root_0, tree_for_RPAREN54)

          end

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
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

    FpListReturnValue = define_return_scope 

    # parser rule fp_list
    # 
    # (in samples/Python.g)
    # 179:1: fp_list : fp_def ( options {greedy=true; } : COMMA fp_def )* ( COMMA )? ;
    def fp_list
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 12)
      return_value = FpListReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __COMMA56__ = nil
      __COMMA58__ = nil
      fp_def55 = nil
      fp_def57 = nil

      tree_for_COMMA56 = nil
      tree_for_COMMA58 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 179:11: fp_def ( options {greedy=true; } : COMMA fp_def )* ( COMMA )?
        @state.following.push(TOKENS_FOLLOWING_fp_def_IN_fp_list_670)
        fp_def55 = fp_def
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, fp_def55.tree)
        end
        # at line 179:18: ( options {greedy=true; } : COMMA fp_def )*
        loop do  #loop 20
          alt_20 = 2
          look_20_0 = @input.peek(1)

          if (look_20_0 == COMMA) 
            look_20_1 = @input.peek(2)

            if (look_20_1 == LPAREN || look_20_1 == NAME) 
              alt_20 = 1

            end

          end
          case alt_20
          when 1
            # at line 179:42: COMMA fp_def
            __COMMA56__ = match(COMMA, TOKENS_FOLLOWING_COMMA_IN_fp_list_680)
            if @state.backtracking == 0

              tree_for_COMMA56 = @adaptor.create_with_payload!(__COMMA56__)
              @adaptor.add_child(root_0, tree_for_COMMA56)

            end
            @state.following.push(TOKENS_FOLLOWING_fp_def_IN_fp_list_682)
            fp_def57 = fp_def
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, fp_def57.tree)
            end

          else
            break #loop 20
          end
        end
        # at line 179:57: ( COMMA )?
        alt_21 = 2
        look_21_0 = @input.peek(1)

        if (look_21_0 == COMMA) 
          alt_21 = 1
        end
        case alt_21
        when 1
          # at line 179:58: COMMA
          __COMMA58__ = match(COMMA, TOKENS_FOLLOWING_COMMA_IN_fp_list_687)
          if @state.backtracking == 0

            tree_for_COMMA58 = @adaptor.create_with_payload!(__COMMA58__)
            @adaptor.add_child(root_0, tree_for_COMMA58)

          end

        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
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

    StatementReturnValue = define_return_scope 

    # parser rule statement
    # 
    # (in samples/Python.g)
    # 182:1: statement : ( simple_statement | compound_statement );
    def statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 13)
      return_value = StatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      simple_statement59 = nil
      compound_statement60 = nil


      begin
        # at line 183:6: ( simple_statement | compound_statement )
        alt_22 = 2
        look_22_0 = @input.peek(1)

        if (look_22_0 == LPAREN || look_22_0 == NAME || look_22_0 == NOT || look_22_0.between?(PLUS, MINUS) || look_22_0.between?(TILDE, LBRACK) || look_22_0 == LCURLY || look_22_0.between?(BACKQUOTE, STRING) || look_22_0.between?(T__72, T__80) || look_22_0.between?(T__82, T__83) || look_22_0 == T__85 || look_22_0 == T__96 || look_22_0 == T__98) 
          alt_22 = 1
        elsif (look_22_0 == AT || look_22_0 == T__71 || look_22_0 == T__86 || look_22_0.between?(T__89, T__91) || look_22_0 == T__93 || look_22_0 == T__97) 
          alt_22 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 22, 0)
          raise nvae
        end
        case alt_22
        when 1
          root_0 = @adaptor.create_flat_list!


          # at line 183:8: simple_statement
          @state.following.push(TOKENS_FOLLOWING_simple_statement_IN_statement_710)
          simple_statement59 = simple_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, simple_statement59.tree)
          end

        when 2
          root_0 = @adaptor.create_flat_list!


          # at line 184:8: compound_statement
          @state.following.push(TOKENS_FOLLOWING_compound_statement_IN_statement_719)
          compound_statement60 = compound_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, compound_statement60.tree)
          end

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
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

    SimpleStatementReturnValue = define_return_scope 

    # parser rule simple_statement
    # 
    # (in samples/Python.g)
    # 187:1: simple_statement : small_statement ( options {greedy=true; } : SEMI small_statement )* ( SEMI )? NEWLINE ;
    def simple_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 14)
      return_value = SimpleStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __SEMI62__ = nil
      __SEMI64__ = nil
      __NEWLINE65__ = nil
      small_statement61 = nil
      small_statement63 = nil

      tree_for_SEMI62 = nil
      tree_for_SEMI64 = nil
      tree_for_NEWLINE65 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 188:8: small_statement ( options {greedy=true; } : SEMI small_statement )* ( SEMI )? NEWLINE
        @state.following.push(TOKENS_FOLLOWING_small_statement_IN_simple_statement_739)
        small_statement61 = small_statement
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, small_statement61.tree)
        end
        # at line 189:8: ( options {greedy=true; } : SEMI small_statement )*
        loop do  #loop 23
          alt_23 = 2
          look_23_0 = @input.peek(1)

          if (look_23_0 == SEMI) 
            look_23_1 = @input.peek(2)

            if (look_23_1 == LPAREN || look_23_1 == NAME || look_23_1 == NOT || look_23_1.between?(PLUS, MINUS) || look_23_1.between?(TILDE, LBRACK) || look_23_1 == LCURLY || look_23_1.between?(BACKQUOTE, STRING) || look_23_1.between?(T__72, T__80) || look_23_1.between?(T__82, T__83) || look_23_1 == T__85 || look_23_1 == T__96 || look_23_1 == T__98) 
              alt_23 = 1

            end

          end
          case alt_23
          when 1
            # at line 189:32: SEMI small_statement
            __SEMI62__ = match(SEMI, TOKENS_FOLLOWING_SEMI_IN_simple_statement_757)
            if @state.backtracking == 0

              tree_for_SEMI62 = @adaptor.create_with_payload!(__SEMI62__)
              @adaptor.add_child(root_0, tree_for_SEMI62)

            end
            @state.following.push(TOKENS_FOLLOWING_small_statement_IN_simple_statement_759)
            small_statement63 = small_statement
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, small_statement63.tree)
            end

          else
            break #loop 23
          end
        end
        # at line 190:8: ( SEMI )?
        alt_24 = 2
        look_24_0 = @input.peek(1)

        if (look_24_0 == SEMI) 
          alt_24 = 1
        end
        case alt_24
        when 1
          # at line 190:9: SEMI
          __SEMI64__ = match(SEMI, TOKENS_FOLLOWING_SEMI_IN_simple_statement_772)
          if @state.backtracking == 0

            tree_for_SEMI64 = @adaptor.create_with_payload!(__SEMI64__)
            @adaptor.add_child(root_0, tree_for_SEMI64)

          end

        end
        __NEWLINE65__ = match(NEWLINE, TOKENS_FOLLOWING_NEWLINE_IN_simple_statement_776)
        if @state.backtracking == 0

          tree_for_NEWLINE65 = @adaptor.create_with_payload!(__NEWLINE65__)
          @adaptor.add_child(root_0, tree_for_NEWLINE65)

        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
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

    SmallStatementReturnValue = define_return_scope 

    # parser rule small_statement
    # 
    # (in samples/Python.g)
    # 193:1: small_statement : ( expr_statement | print_statement | del_statement | pass_statement | flow_statement | import_statement | global_statement | exec_statement | assert_statement );
    def small_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 15)
      return_value = SmallStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      expr_statement66 = nil
      print_statement67 = nil
      del_statement68 = nil
      pass_statement69 = nil
      flow_statement70 = nil
      import_statement71 = nil
      global_statement72 = nil
      exec_statement73 = nil
      assert_statement74 = nil


      begin
        # at line 193:16: ( expr_statement | print_statement | del_statement | pass_statement | flow_statement | import_statement | global_statement | exec_statement | assert_statement )
        alt_25 = 9
        case look_25 = @input.peek(1)
        when LPAREN, NAME, NOT, PLUS, MINUS, TILDE, LBRACK, LCURLY, BACKQUOTE, INT, LONGINT, FLOAT, COMPLEX, STRING, T__96 then alt_25 = 1
        when T__72 then alt_25 = 2
        when T__73 then alt_25 = 3
        when T__74 then alt_25 = 4
        when T__75, T__76, T__77, T__78, T__98 then alt_25 = 5
        when T__79, T__80 then alt_25 = 6
        when T__82 then alt_25 = 7
        when T__83 then alt_25 = 8
        when T__85 then alt_25 = 9
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          nvae = NoViableAlternative("", 25, 0)
          raise nvae
        end
        case alt_25
        when 1
          root_0 = @adaptor.create_flat_list!


          # at line 193:18: expr_statement
          @state.following.push(TOKENS_FOLLOWING_expr_statement_IN_small_statement_789)
          expr_statement66 = expr_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, expr_statement66.tree)
          end

        when 2
          root_0 = @adaptor.create_flat_list!


          # at line 194:14: print_statement
          @state.following.push(TOKENS_FOLLOWING_print_statement_IN_small_statement_804)
          print_statement67 = print_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, print_statement67.tree)
          end

        when 3
          root_0 = @adaptor.create_flat_list!


          # at line 195:14: del_statement
          @state.following.push(TOKENS_FOLLOWING_del_statement_IN_small_statement_819)
          del_statement68 = del_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, del_statement68.tree)
          end

        when 4
          root_0 = @adaptor.create_flat_list!


          # at line 196:14: pass_statement
          @state.following.push(TOKENS_FOLLOWING_pass_statement_IN_small_statement_834)
          pass_statement69 = pass_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, pass_statement69.tree)
          end

        when 5
          root_0 = @adaptor.create_flat_list!


          # at line 197:14: flow_statement
          @state.following.push(TOKENS_FOLLOWING_flow_statement_IN_small_statement_849)
          flow_statement70 = flow_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, flow_statement70.tree)
          end

        when 6
          root_0 = @adaptor.create_flat_list!


          # at line 198:14: import_statement
          @state.following.push(TOKENS_FOLLOWING_import_statement_IN_small_statement_864)
          import_statement71 = import_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, import_statement71.tree)
          end

        when 7
          root_0 = @adaptor.create_flat_list!


          # at line 199:14: global_statement
          @state.following.push(TOKENS_FOLLOWING_global_statement_IN_small_statement_879)
          global_statement72 = global_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, global_statement72.tree)
          end

        when 8
          root_0 = @adaptor.create_flat_list!


          # at line 200:14: exec_statement
          @state.following.push(TOKENS_FOLLOWING_exec_statement_IN_small_statement_894)
          exec_statement73 = exec_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, exec_statement73.tree)
          end

        when 9
          root_0 = @adaptor.create_flat_list!


          # at line 201:14: assert_statement
          @state.following.push(TOKENS_FOLLOWING_assert_statement_IN_small_statement_909)
          assert_statement74 = assert_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, assert_statement74.tree)
          end

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
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

    ExprStatementReturnValue = define_return_scope 

    # parser rule expr_statement
    # 
    # (in samples/Python.g)
    # 204:1: expr_statement : test_list ( augmented_assign yield_expr | augmented_assign test_list | assigns )? ;
    def expr_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 16)
      return_value = ExprStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      test_list75 = nil
      augmented_assign76 = nil
      yield_expr77 = nil
      augmented_assign78 = nil
      test_list79 = nil
      assigns80 = nil


      begin
        root_0 = @adaptor.create_flat_list!


        # at line 204:18: test_list ( augmented_assign yield_expr | augmented_assign test_list | assigns )?
        @state.following.push(TOKENS_FOLLOWING_test_list_IN_expr_statement_929)
        test_list75 = test_list
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, test_list75.tree)
        end
        # at line 205:13: ( augmented_assign yield_expr | augmented_assign test_list | assigns )?
        alt_26 = 4
        look_26_0 = @input.peek(1)

        if (look_26_0.between?(PLUS_EQUAL, DOUBLE_SLASH_EQUAL)) 
          look_26_1 = @input.peek(2)

          if (look_26_1 == T__98) 
            alt_26 = 1
          elsif (look_26_1 == LPAREN || look_26_1 == NAME || look_26_1 == NOT || look_26_1.between?(PLUS, MINUS) || look_26_1.between?(TILDE, LBRACK) || look_26_1 == LCURLY || look_26_1.between?(BACKQUOTE, STRING) || look_26_1 == T__96) 
            alt_26 = 2
          end
        elsif (look_26_0 == ASSIGN) 
          alt_26 = 3
        end
        case alt_26
        when 1
          # at line 205:15: augmented_assign yield_expr
          @state.following.push(TOKENS_FOLLOWING_augmented_assign_IN_expr_statement_945)
          augmented_assign76 = augmented_assign
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, augmented_assign76.tree)
          end
          @state.following.push(TOKENS_FOLLOWING_yield_expr_IN_expr_statement_947)
          yield_expr77 = yield_expr
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, yield_expr77.tree)
          end

        when 2
          # at line 206:15: augmented_assign test_list
          @state.following.push(TOKENS_FOLLOWING_augmented_assign_IN_expr_statement_963)
          augmented_assign78 = augmented_assign
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, augmented_assign78.tree)
          end
          @state.following.push(TOKENS_FOLLOWING_test_list_IN_expr_statement_965)
          test_list79 = test_list
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, test_list79.tree)
          end

        when 3
          # at line 207:15: assigns
          @state.following.push(TOKENS_FOLLOWING_assigns_IN_expr_statement_981)
          assigns80 = assigns
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, assigns80.tree)
          end

        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
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

    AssignsReturnValue = define_return_scope 

    # parser rule assigns
    # 
    # (in samples/Python.g)
    # 211:1: assigns : ( ( assign_testlist )+ | ( assign_yield )+ );
    def assigns
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 17)
      return_value = AssignsReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      assign_testlist81 = nil
      assign_yield82 = nil


      begin
        # at line 212:5: ( ( assign_testlist )+ | ( assign_yield )+ )
        alt_29 = 2
        look_29_0 = @input.peek(1)

        if (look_29_0 == ASSIGN) 
          look_29_1 = @input.peek(2)

          if (look_29_1 == LPAREN || look_29_1 == NAME || look_29_1 == NOT || look_29_1.between?(PLUS, MINUS) || look_29_1.between?(TILDE, LBRACK) || look_29_1 == LCURLY || look_29_1.between?(BACKQUOTE, STRING) || look_29_1 == T__96) 
            alt_29 = 1
          elsif (look_29_1 == T__98) 
            alt_29 = 2
          else
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
          nvae = NoViableAlternative("", 29, 1)
            raise nvae
          end
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 29, 0)
          raise nvae
        end
        case alt_29
        when 1
          root_0 = @adaptor.create_flat_list!


          # at line 212:7: ( assign_testlist )+
          # at file 212:7: ( assign_testlist )+
          match_count_27 = 0
          loop do
            alt_27 = 2
            look_27_0 = @input.peek(1)

            if (look_27_0 == ASSIGN) 
              alt_27 = 1

            end
            case alt_27
            when 1
              # at line 212:7: assign_testlist
              @state.following.push(TOKENS_FOLLOWING_assign_testlist_IN_assigns_1019)
              assign_testlist81 = assign_testlist
              @state.following.pop
              if @state.backtracking == 0
                @adaptor.add_child(root_0, assign_testlist81.tree)
              end

            else
              match_count_27 > 0 and break
              @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

              eee = EarlyExit(27)


              raise eee
            end
            match_count_27 += 1
          end


        when 2
          root_0 = @adaptor.create_flat_list!


          # at line 213:7: ( assign_yield )+
          # at file 213:7: ( assign_yield )+
          match_count_28 = 0
          loop do
            alt_28 = 2
            look_28_0 = @input.peek(1)

            if (look_28_0 == ASSIGN) 
              alt_28 = 1

            end
            case alt_28
            when 1
              # at line 213:7: assign_yield
              @state.following.push(TOKENS_FOLLOWING_assign_yield_IN_assigns_1028)
              assign_yield82 = assign_yield
              @state.following.pop
              if @state.backtracking == 0
                @adaptor.add_child(root_0, assign_yield82.tree)
              end

            else
              match_count_28 > 0 and break
              @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

              eee = EarlyExit(28)


              raise eee
            end
            match_count_28 += 1
          end


        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 17)

      end
      
      return return_value
    end

    AssignTestlistReturnValue = define_return_scope 

    # parser rule assign_testlist
    # 
    # (in samples/Python.g)
    # 216:1: assign_testlist : ASSIGN test_list ;
    def assign_testlist
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 18)
      return_value = AssignTestlistReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __ASSIGN83__ = nil
      test_list84 = nil

      tree_for_ASSIGN83 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 217:10: ASSIGN test_list
        __ASSIGN83__ = match(ASSIGN, TOKENS_FOLLOWING_ASSIGN_IN_assign_testlist_1049)
        if @state.backtracking == 0

          tree_for_ASSIGN83 = @adaptor.create_with_payload!(__ASSIGN83__)
          @adaptor.add_child(root_0, tree_for_ASSIGN83)

        end
        @state.following.push(TOKENS_FOLLOWING_test_list_IN_assign_testlist_1051)
        test_list84 = test_list
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, test_list84.tree)
        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 18)

      end
      
      return return_value
    end

    AssignYieldReturnValue = define_return_scope 

    # parser rule assign_yield
    # 
    # (in samples/Python.g)
    # 220:1: assign_yield : ASSIGN yield_expr ;
    def assign_yield
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 19)
      return_value = AssignYieldReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __ASSIGN85__ = nil
      yield_expr86 = nil

      tree_for_ASSIGN85 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 221:7: ASSIGN yield_expr
        __ASSIGN85__ = match(ASSIGN, TOKENS_FOLLOWING_ASSIGN_IN_assign_yield_1071)
        if @state.backtracking == 0

          tree_for_ASSIGN85 = @adaptor.create_with_payload!(__ASSIGN85__)
          @adaptor.add_child(root_0, tree_for_ASSIGN85)

        end
        @state.following.push(TOKENS_FOLLOWING_yield_expr_IN_assign_yield_1073)
        yield_expr86 = yield_expr
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, yield_expr86.tree)
        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 19)

      end
      
      return return_value
    end

    AugmentedAssignReturnValue = define_return_scope 

    # parser rule augmented_assign
    # 
    # (in samples/Python.g)
    # 224:1: augmented_assign : ( PLUS_EQUAL | MINUS_EQUAL | STAR_EQUAL | SLASH_EQUAL | PERCENT_EQUAL | AMPER_EQUAL | VBAR_EQUAL | CIRCUMFLEX_EQUAL | LEFT_SHIFT_EQUAL | RIGHT_SHIFT_EQUAL | DOUBLE_STAR_EQUAL | DOUBLE_SLASH_EQUAL );
    def augmented_assign
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 20)
      return_value = AugmentedAssignReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      set87 = nil

      tree_for_set87 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 
        set87 = @input.look
        if @input.peek(1).between?(PLUS_EQUAL, DOUBLE_SLASH_EQUAL)
          @input.consume
          if @state.backtracking == 0
            @adaptor.add_child(root_0, @adaptor.create_with_payload!(set87))
          end
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          mse = MismatchedSet(nil)
          raise mse
        end


        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 20)

      end
      
      return return_value
    end

    PrintStatementReturnValue = define_return_scope 

    # parser rule print_statement
    # 
    # (in samples/Python.g)
    # 238:1: print_statement : 'print' ( print_list | RIGHT_SHIFT print_list )? ;
    def print_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 21)
      return_value = PrintStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal88 = nil
      __RIGHT_SHIFT90__ = nil
      print_list89 = nil
      print_list91 = nil

      tree_for_string_literal88 = nil
      tree_for_RIGHT_SHIFT90 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 238:19: 'print' ( print_list | RIGHT_SHIFT print_list )?
        string_literal88 = match(T__72, TOKENS_FOLLOWING_T__72_IN_print_statement_1269)
        if @state.backtracking == 0

          tree_for_string_literal88 = @adaptor.create_with_payload!(string_literal88)
          @adaptor.add_child(root_0, tree_for_string_literal88)

        end
        # at line 238:27: ( print_list | RIGHT_SHIFT print_list )?
        alt_30 = 3
        look_30_0 = @input.peek(1)

        if (look_30_0 == LPAREN || look_30_0 == NAME || look_30_0 == NOT || look_30_0.between?(PLUS, MINUS) || look_30_0.between?(TILDE, LBRACK) || look_30_0 == LCURLY || look_30_0.between?(BACKQUOTE, STRING) || look_30_0 == T__96) 
          alt_30 = 1
        elsif (look_30_0 == RIGHT_SHIFT) 
          alt_30 = 2
        end
        case alt_30
        when 1
          # at line 238:28: print_list
          @state.following.push(TOKENS_FOLLOWING_print_list_IN_print_statement_1272)
          print_list89 = print_list
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, print_list89.tree)
          end

        when 2
          # at line 238:41: RIGHT_SHIFT print_list
          __RIGHT_SHIFT90__ = match(RIGHT_SHIFT, TOKENS_FOLLOWING_RIGHT_SHIFT_IN_print_statement_1276)
          if @state.backtracking == 0

            tree_for_RIGHT_SHIFT90 = @adaptor.create_with_payload!(__RIGHT_SHIFT90__)
            @adaptor.add_child(root_0, tree_for_RIGHT_SHIFT90)

          end
          @state.following.push(TOKENS_FOLLOWING_print_list_IN_print_statement_1278)
          print_list91 = print_list
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, print_list91.tree)
          end

        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 21)

      end
      
      return return_value
    end

    PrintListReturnValue = define_return_scope :newline

    # parser rule print_list
    # 
    # (in samples/Python.g)
    # 241:1: print_list returns [newline] : test ( options {k=2; } : COMMA test )* ( COMMA )? ;
    def print_list
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 22)
      return_value = PrintListReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __COMMA93__ = nil
      __COMMA95__ = nil
      test92 = nil
      test94 = nil

      tree_for_COMMA93 = nil
      tree_for_COMMA95 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 242:7: test ( options {k=2; } : COMMA test )* ( COMMA )?
        @state.following.push(TOKENS_FOLLOWING_test_IN_print_list_1308)
        test92 = test
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, test92.tree)
        end
        # at line 242:12: ( options {k=2; } : COMMA test )*
        loop do  #loop 31
          alt_31 = 2
          alt_31 = @dfa31.predict(@input)
          case alt_31
          when 1
            # at line 242:29: COMMA test
            __COMMA93__ = match(COMMA, TOKENS_FOLLOWING_COMMA_IN_print_list_1319)
            if @state.backtracking == 0

              tree_for_COMMA93 = @adaptor.create_with_payload!(__COMMA93__)
              @adaptor.add_child(root_0, tree_for_COMMA93)

            end
            @state.following.push(TOKENS_FOLLOWING_test_IN_print_list_1321)
            test94 = test
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, test94.tree)
            end

          else
            break #loop 31
          end
        end
        # at line 242:42: ( COMMA )?
        alt_32 = 2
        look_32_0 = @input.peek(1)

        if (look_32_0 == COMMA) 
          alt_32 = 1
        end
        case alt_32
        when 1
          # at line 242:43: COMMA
          __COMMA95__ = match(COMMA, TOKENS_FOLLOWING_COMMA_IN_print_list_1326)
          if @state.backtracking == 0

            tree_for_COMMA95 = @adaptor.create_with_payload!(__COMMA95__)
            @adaptor.add_child(root_0, tree_for_COMMA95)

          end

        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 22)

      end
      
      return return_value
    end

    DelStatementReturnValue = define_return_scope 

    # parser rule del_statement
    # 
    # (in samples/Python.g)
    # 246:1: del_statement : 'del' exprlist ;
    def del_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 23)
      return_value = DelStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal96 = nil
      exprlist97 = nil

      tree_for_string_literal96 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 246:17: 'del' exprlist
        string_literal96 = match(T__73, TOKENS_FOLLOWING_T__73_IN_del_statement_1342)
        if @state.backtracking == 0

          tree_for_string_literal96 = @adaptor.create_with_payload!(string_literal96)
          @adaptor.add_child(root_0, tree_for_string_literal96)

        end
        @state.following.push(TOKENS_FOLLOWING_exprlist_IN_del_statement_1344)
        exprlist97 = exprlist
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, exprlist97.tree)
        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 23)

      end
      
      return return_value
    end

    PassStatementReturnValue = define_return_scope 

    # parser rule pass_statement
    # 
    # (in samples/Python.g)
    # 249:1: pass_statement : 'pass' ;
    def pass_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 24)
      return_value = PassStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal98 = nil

      tree_for_string_literal98 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 249:18: 'pass'
        string_literal98 = match(T__74, TOKENS_FOLLOWING_T__74_IN_pass_statement_1362)
        if @state.backtracking == 0

          tree_for_string_literal98 = @adaptor.create_with_payload!(string_literal98)
          @adaptor.add_child(root_0, tree_for_string_literal98)

        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 24)

      end
      
      return return_value
    end

    FlowStatementReturnValue = define_return_scope 

    # parser rule flow_statement
    # 
    # (in samples/Python.g)
    # 252:1: flow_statement : ( break_statement | continue_statement | return_statement | raise_statement | yield_statement );
    def flow_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 25)
      return_value = FlowStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      break_statement99 = nil
      continue_statement100 = nil
      return_statement101 = nil
      raise_statement102 = nil
      yield_statement103 = nil


      begin
        # at line 252:16: ( break_statement | continue_statement | return_statement | raise_statement | yield_statement )
        alt_33 = 5
        case look_33 = @input.peek(1)
        when T__75 then alt_33 = 1
        when T__76 then alt_33 = 2
        when T__77 then alt_33 = 3
        when T__78 then alt_33 = 4
        when T__98 then alt_33 = 5
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          nvae = NoViableAlternative("", 33, 0)
          raise nvae
        end
        case alt_33
        when 1
          root_0 = @adaptor.create_flat_list!


          # at line 252:18: break_statement
          @state.following.push(TOKENS_FOLLOWING_break_statement_IN_flow_statement_1381)
          break_statement99 = break_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, break_statement99.tree)
          end

        when 2
          root_0 = @adaptor.create_flat_list!


          # at line 253:13: continue_statement
          @state.following.push(TOKENS_FOLLOWING_continue_statement_IN_flow_statement_1395)
          continue_statement100 = continue_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, continue_statement100.tree)
          end

        when 3
          root_0 = @adaptor.create_flat_list!


          # at line 254:13: return_statement
          @state.following.push(TOKENS_FOLLOWING_return_statement_IN_flow_statement_1409)
          return_statement101 = return_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, return_statement101.tree)
          end

        when 4
          root_0 = @adaptor.create_flat_list!


          # at line 255:13: raise_statement
          @state.following.push(TOKENS_FOLLOWING_raise_statement_IN_flow_statement_1423)
          raise_statement102 = raise_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, raise_statement102.tree)
          end

        when 5
          root_0 = @adaptor.create_flat_list!


          # at line 256:13: yield_statement
          @state.following.push(TOKENS_FOLLOWING_yield_statement_IN_flow_statement_1437)
          yield_statement103 = yield_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, yield_statement103.tree)
          end

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 25)

      end
      
      return return_value
    end

    BreakStatementReturnValue = define_return_scope 

    # parser rule break_statement
    # 
    # (in samples/Python.g)
    # 259:1: break_statement : 'break' ;
    def break_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 26)
      return_value = BreakStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal104 = nil

      tree_for_string_literal104 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 259:19: 'break'
        string_literal104 = match(T__75, TOKENS_FOLLOWING_T__75_IN_break_statement_1456)
        if @state.backtracking == 0

          tree_for_string_literal104 = @adaptor.create_with_payload!(string_literal104)
          @adaptor.add_child(root_0, tree_for_string_literal104)

        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 26)

      end
      
      return return_value
    end

    ContinueStatementReturnValue = define_return_scope 

    # parser rule continue_statement
    # 
    # (in samples/Python.g)
    # 262:1: continue_statement : 'continue' ;
    def continue_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 27)
      return_value = ContinueStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal105 = nil

      tree_for_string_literal105 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 262:22: 'continue'
        string_literal105 = match(T__76, TOKENS_FOLLOWING_T__76_IN_continue_statement_1476)
        if @state.backtracking == 0

          tree_for_string_literal105 = @adaptor.create_with_payload!(string_literal105)
          @adaptor.add_child(root_0, tree_for_string_literal105)

        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 27)

      end
      
      return return_value
    end

    ReturnStatementReturnValue = define_return_scope 

    # parser rule return_statement
    # 
    # (in samples/Python.g)
    # 265:1: return_statement : 'return' ( test_list )? ;
    def return_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 28)
      return_value = ReturnStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal106 = nil
      test_list107 = nil

      tree_for_string_literal106 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 265:20: 'return' ( test_list )?
        string_literal106 = match(T__77, TOKENS_FOLLOWING_T__77_IN_return_statement_1499)
        if @state.backtracking == 0

          tree_for_string_literal106 = @adaptor.create_with_payload!(string_literal106)
          @adaptor.add_child(root_0, tree_for_string_literal106)

        end
        # at line 265:29: ( test_list )?
        alt_34 = 2
        look_34_0 = @input.peek(1)

        if (look_34_0 == LPAREN || look_34_0 == NAME || look_34_0 == NOT || look_34_0.between?(PLUS, MINUS) || look_34_0.between?(TILDE, LBRACK) || look_34_0 == LCURLY || look_34_0.between?(BACKQUOTE, STRING) || look_34_0 == T__96) 
          alt_34 = 1
        end
        case alt_34
        when 1
          # at line 265:30: test_list
          @state.following.push(TOKENS_FOLLOWING_test_list_IN_return_statement_1502)
          test_list107 = test_list
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, test_list107.tree)
          end

        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 28)

      end
      
      return return_value
    end

    YieldStatementReturnValue = define_return_scope 

    # parser rule yield_statement
    # 
    # (in samples/Python.g)
    # 268:1: yield_statement : yield_expr ;
    def yield_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 29)
      return_value = YieldStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      yield_expr108 = nil


      begin
        root_0 = @adaptor.create_flat_list!


        # at line 268:19: yield_expr
        @state.following.push(TOKENS_FOLLOWING_yield_expr_IN_yield_statement_1525)
        yield_expr108 = yield_expr
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, yield_expr108.tree)
        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 29)

      end
      
      return return_value
    end

    RaiseStatementReturnValue = define_return_scope 

    # parser rule raise_statement
    # 
    # (in samples/Python.g)
    # 271:1: raise_statement : 'raise' ( test ( COMMA test ( COMMA test )? )? )? ;
    def raise_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 30)
      return_value = RaiseStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal109 = nil
      __COMMA111__ = nil
      __COMMA113__ = nil
      test110 = nil
      test112 = nil
      test114 = nil

      tree_for_string_literal109 = nil
      tree_for_COMMA111 = nil
      tree_for_COMMA113 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 271:18: 'raise' ( test ( COMMA test ( COMMA test )? )? )?
        string_literal109 = match(T__78, TOKENS_FOLLOWING_T__78_IN_raise_statement_1544)
        if @state.backtracking == 0

          tree_for_string_literal109 = @adaptor.create_with_payload!(string_literal109)
          @adaptor.add_child(root_0, tree_for_string_literal109)

        end
        # at line 271:26: ( test ( COMMA test ( COMMA test )? )? )?
        alt_37 = 2
        look_37_0 = @input.peek(1)

        if (look_37_0 == LPAREN || look_37_0 == NAME || look_37_0 == NOT || look_37_0.between?(PLUS, MINUS) || look_37_0.between?(TILDE, LBRACK) || look_37_0 == LCURLY || look_37_0.between?(BACKQUOTE, STRING) || look_37_0 == T__96) 
          alt_37 = 1
        end
        case alt_37
        when 1
          # at line 271:27: test ( COMMA test ( COMMA test )? )?
          @state.following.push(TOKENS_FOLLOWING_test_IN_raise_statement_1547)
          test110 = test
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, test110.tree)
          end
          # at line 271:32: ( COMMA test ( COMMA test )? )?
          alt_36 = 2
          look_36_0 = @input.peek(1)

          if (look_36_0 == COMMA) 
            alt_36 = 1
          end
          case alt_36
          when 1
            # at line 271:33: COMMA test ( COMMA test )?
            __COMMA111__ = match(COMMA, TOKENS_FOLLOWING_COMMA_IN_raise_statement_1550)
            if @state.backtracking == 0

              tree_for_COMMA111 = @adaptor.create_with_payload!(__COMMA111__)
              @adaptor.add_child(root_0, tree_for_COMMA111)

            end
            @state.following.push(TOKENS_FOLLOWING_test_IN_raise_statement_1552)
            test112 = test
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, test112.tree)
            end
            # at line 271:44: ( COMMA test )?
            alt_35 = 2
            look_35_0 = @input.peek(1)

            if (look_35_0 == COMMA) 
              alt_35 = 1
            end
            case alt_35
            when 1
              # at line 271:45: COMMA test
              __COMMA113__ = match(COMMA, TOKENS_FOLLOWING_COMMA_IN_raise_statement_1555)
              if @state.backtracking == 0

                tree_for_COMMA113 = @adaptor.create_with_payload!(__COMMA113__)
                @adaptor.add_child(root_0, tree_for_COMMA113)

              end
              @state.following.push(TOKENS_FOLLOWING_test_IN_raise_statement_1557)
              test114 = test
              @state.following.pop
              if @state.backtracking == 0
                @adaptor.add_child(root_0, test114.tree)
              end

            end

          end

        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 30)

      end
      
      return return_value
    end

    ImportStatementReturnValue = define_return_scope 

    # parser rule import_statement
    # 
    # (in samples/Python.g)
    # 274:1: import_statement : ( import_name | import_from );
    def import_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 31)
      return_value = ImportStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      import_name115 = nil
      import_from116 = nil


      begin
        # at line 274:18: ( import_name | import_from )
        alt_38 = 2
        look_38_0 = @input.peek(1)

        if (look_38_0 == T__79) 
          alt_38 = 1
        elsif (look_38_0 == T__80) 
          alt_38 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 38, 0)
          raise nvae
        end
        case alt_38
        when 1
          root_0 = @adaptor.create_flat_list!


          # at line 274:20: import_name
          @state.following.push(TOKENS_FOLLOWING_import_name_IN_import_statement_1582)
          import_name115 = import_name
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, import_name115.tree)
          end

        when 2
          root_0 = @adaptor.create_flat_list!


          # at line 275:15: import_from
          @state.following.push(TOKENS_FOLLOWING_import_from_IN_import_statement_1598)
          import_from116 = import_from
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, import_from116.tree)
          end

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 31)

      end
      
      return return_value
    end

    ImportNameReturnValue = define_return_scope 

    # parser rule import_name
    # 
    # (in samples/Python.g)
    # 278:1: import_name : 'import' dotted_as_names ;
    def import_name
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 32)
      return_value = ImportNameReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal117 = nil
      dotted_as_names118 = nil

      tree_for_string_literal117 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 278:15: 'import' dotted_as_names
        string_literal117 = match(T__79, TOKENS_FOLLOWING_T__79_IN_import_name_1619)
        if @state.backtracking == 0

          tree_for_string_literal117 = @adaptor.create_with_payload!(string_literal117)
          @adaptor.add_child(root_0, tree_for_string_literal117)

        end
        @state.following.push(TOKENS_FOLLOWING_dotted_as_names_IN_import_name_1621)
        dotted_as_names118 = dotted_as_names
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, dotted_as_names118.tree)
        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 32)

      end
      
      return return_value
    end

    ImportFromReturnValue = define_return_scope 

    # parser rule import_from
    # 
    # (in samples/Python.g)
    # 281:1: import_from : 'from' ( ( DOT )* dotted_name | ( DOT )+ ) 'import' ( STAR | import_as_names | LPAREN import_as_names RPAREN ) ;
    def import_from
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 33)
      return_value = ImportFromReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal119 = nil
      __DOT120__ = nil
      __DOT122__ = nil
      string_literal123 = nil
      __STAR124__ = nil
      __LPAREN126__ = nil
      __RPAREN128__ = nil
      dotted_name121 = nil
      import_as_names125 = nil
      import_as_names127 = nil

      tree_for_string_literal119 = nil
      tree_for_DOT120 = nil
      tree_for_DOT122 = nil
      tree_for_string_literal123 = nil
      tree_for_STAR124 = nil
      tree_for_LPAREN126 = nil
      tree_for_RPAREN128 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 281:14: 'from' ( ( DOT )* dotted_name | ( DOT )+ ) 'import' ( STAR | import_as_names | LPAREN import_as_names RPAREN )
        string_literal119 = match(T__80, TOKENS_FOLLOWING_T__80_IN_import_from_1641)
        if @state.backtracking == 0

          tree_for_string_literal119 = @adaptor.create_with_payload!(string_literal119)
          @adaptor.add_child(root_0, tree_for_string_literal119)

        end
        # at line 281:21: ( ( DOT )* dotted_name | ( DOT )+ )
        alt_41 = 2
        alt_41 = @dfa41.predict(@input)
        case alt_41
        when 1
          # at line 281:22: ( DOT )* dotted_name
          # at line 281:22: ( DOT )*
          loop do  #loop 39
            alt_39 = 2
            look_39_0 = @input.peek(1)

            if (look_39_0 == DOT) 
              alt_39 = 1

            end
            case alt_39
            when 1
              # at line 281:22: DOT
              __DOT120__ = match(DOT, TOKENS_FOLLOWING_DOT_IN_import_from_1644)
              if @state.backtracking == 0

                tree_for_DOT120 = @adaptor.create_with_payload!(__DOT120__)
                @adaptor.add_child(root_0, tree_for_DOT120)

              end

            else
              break #loop 39
            end
          end
          @state.following.push(TOKENS_FOLLOWING_dotted_name_IN_import_from_1647)
          dotted_name121 = dotted_name
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, dotted_name121.tree)
          end

        when 2
          # at line 281:41: ( DOT )+
          # at file 281:41: ( DOT )+
          match_count_40 = 0
          loop do
            alt_40 = 2
            look_40_0 = @input.peek(1)

            if (look_40_0 == DOT) 
              alt_40 = 1

            end
            case alt_40
            when 1
              # at line 281:41: DOT
              __DOT122__ = match(DOT, TOKENS_FOLLOWING_DOT_IN_import_from_1651)
              if @state.backtracking == 0

                tree_for_DOT122 = @adaptor.create_with_payload!(__DOT122__)
                @adaptor.add_child(root_0, tree_for_DOT122)

              end

            else
              match_count_40 > 0 and break
              @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

              eee = EarlyExit(40)


              raise eee
            end
            match_count_40 += 1
          end


        end
        string_literal123 = match(T__79, TOKENS_FOLLOWING_T__79_IN_import_from_1655)
        if @state.backtracking == 0

          tree_for_string_literal123 = @adaptor.create_with_payload!(string_literal123)
          @adaptor.add_child(root_0, tree_for_string_literal123)

        end
        # at line 282:15: ( STAR | import_as_names | LPAREN import_as_names RPAREN )
        alt_42 = 3
        case look_42 = @input.peek(1)
        when STAR then alt_42 = 1
        when NAME then alt_42 = 2
        when LPAREN then alt_42 = 3
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          nvae = NoViableAlternative("", 42, 0)
          raise nvae
        end
        case alt_42
        when 1
          # at line 282:16: STAR
          __STAR124__ = match(STAR, TOKENS_FOLLOWING_STAR_IN_import_from_1672)
          if @state.backtracking == 0

            tree_for_STAR124 = @adaptor.create_with_payload!(__STAR124__)
            @adaptor.add_child(root_0, tree_for_STAR124)

          end

        when 2
          # at line 283:17: import_as_names
          @state.following.push(TOKENS_FOLLOWING_import_as_names_IN_import_from_1690)
          import_as_names125 = import_as_names
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, import_as_names125.tree)
          end

        when 3
          # at line 284:17: LPAREN import_as_names RPAREN
          __LPAREN126__ = match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_import_from_1708)
          if @state.backtracking == 0

            tree_for_LPAREN126 = @adaptor.create_with_payload!(__LPAREN126__)
            @adaptor.add_child(root_0, tree_for_LPAREN126)

          end
          @state.following.push(TOKENS_FOLLOWING_import_as_names_IN_import_from_1710)
          import_as_names127 = import_as_names
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, import_as_names127.tree)
          end
          __RPAREN128__ = match(RPAREN, TOKENS_FOLLOWING_RPAREN_IN_import_from_1712)
          if @state.backtracking == 0

            tree_for_RPAREN128 = @adaptor.create_with_payload!(__RPAREN128__)
            @adaptor.add_child(root_0, tree_for_RPAREN128)

          end

        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 33)

      end
      
      return return_value
    end

    ImportAsNamesReturnValue = define_return_scope 

    # parser rule import_as_names
    # 
    # (in samples/Python.g)
    # 288:1: import_as_names : import_as_name ( COMMA import_as_name )* ( COMMA )? ;
    def import_as_names
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 34)
      return_value = ImportAsNamesReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __COMMA130__ = nil
      __COMMA132__ = nil
      import_as_name129 = nil
      import_as_name131 = nil

      tree_for_COMMA130 = nil
      tree_for_COMMA132 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 288:19: import_as_name ( COMMA import_as_name )* ( COMMA )?
        @state.following.push(TOKENS_FOLLOWING_import_as_name_IN_import_as_names_1748)
        import_as_name129 = import_as_name
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, import_as_name129.tree)
        end
        # at line 288:34: ( COMMA import_as_name )*
        loop do  #loop 43
          alt_43 = 2
          look_43_0 = @input.peek(1)

          if (look_43_0 == COMMA) 
            look_43_1 = @input.peek(2)

            if (look_43_1 == NAME) 
              alt_43 = 1

            end

          end
          case alt_43
          when 1
            # at line 288:35: COMMA import_as_name
            __COMMA130__ = match(COMMA, TOKENS_FOLLOWING_COMMA_IN_import_as_names_1751)
            if @state.backtracking == 0

              tree_for_COMMA130 = @adaptor.create_with_payload!(__COMMA130__)
              @adaptor.add_child(root_0, tree_for_COMMA130)

            end
            @state.following.push(TOKENS_FOLLOWING_import_as_name_IN_import_as_names_1753)
            import_as_name131 = import_as_name
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, import_as_name131.tree)
            end

          else
            break #loop 43
          end
        end
        # at line 288:58: ( COMMA )?
        alt_44 = 2
        look_44_0 = @input.peek(1)

        if (look_44_0 == COMMA) 
          alt_44 = 1
        end
        case alt_44
        when 1
          # at line 288:59: COMMA
          __COMMA132__ = match(COMMA, TOKENS_FOLLOWING_COMMA_IN_import_as_names_1758)
          if @state.backtracking == 0

            tree_for_COMMA132 = @adaptor.create_with_payload!(__COMMA132__)
            @adaptor.add_child(root_0, tree_for_COMMA132)

          end

        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 34)

      end
      
      return return_value
    end

    ImportAsNameReturnValue = define_return_scope 

    # parser rule import_as_name
    # 
    # (in samples/Python.g)
    # 291:1: import_as_name : NAME ( 'as' NAME )? ;
    def import_as_name
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 35)
      return_value = ImportAsNameReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __NAME133__ = nil
      string_literal134 = nil
      __NAME135__ = nil

      tree_for_NAME133 = nil
      tree_for_string_literal134 = nil
      tree_for_NAME135 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 291:18: NAME ( 'as' NAME )?
        __NAME133__ = match(NAME, TOKENS_FOLLOWING_NAME_IN_import_as_name_1785)
        if @state.backtracking == 0

          tree_for_NAME133 = @adaptor.create_with_payload!(__NAME133__)
          @adaptor.add_child(root_0, tree_for_NAME133)

        end
        # at line 291:23: ( 'as' NAME )?
        alt_45 = 2
        look_45_0 = @input.peek(1)

        if (look_45_0 == T__81) 
          alt_45 = 1
        end
        case alt_45
        when 1
          # at line 291:24: 'as' NAME
          string_literal134 = match(T__81, TOKENS_FOLLOWING_T__81_IN_import_as_name_1788)
          if @state.backtracking == 0

            tree_for_string_literal134 = @adaptor.create_with_payload!(string_literal134)
            @adaptor.add_child(root_0, tree_for_string_literal134)

          end
          __NAME135__ = match(NAME, TOKENS_FOLLOWING_NAME_IN_import_as_name_1790)
          if @state.backtracking == 0

            tree_for_NAME135 = @adaptor.create_with_payload!(__NAME135__)
            @adaptor.add_child(root_0, tree_for_NAME135)

          end

        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 35)

      end
      
      return return_value
    end

    DottedAsNameReturnValue = define_return_scope 

    # parser rule dotted_as_name
    # 
    # (in samples/Python.g)
    # 294:1: dotted_as_name : dotted_name ( 'as' NAME )? ;
    def dotted_as_name
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 36)
      return_value = DottedAsNameReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal137 = nil
      __NAME138__ = nil
      dotted_name136 = nil

      tree_for_string_literal137 = nil
      tree_for_NAME138 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 294:18: dotted_name ( 'as' NAME )?
        @state.following.push(TOKENS_FOLLOWING_dotted_name_IN_dotted_as_name_1816)
        dotted_name136 = dotted_name
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, dotted_name136.tree)
        end
        # at line 294:30: ( 'as' NAME )?
        alt_46 = 2
        look_46_0 = @input.peek(1)

        if (look_46_0 == T__81) 
          alt_46 = 1
        end
        case alt_46
        when 1
          # at line 294:31: 'as' NAME
          string_literal137 = match(T__81, TOKENS_FOLLOWING_T__81_IN_dotted_as_name_1819)
          if @state.backtracking == 0

            tree_for_string_literal137 = @adaptor.create_with_payload!(string_literal137)
            @adaptor.add_child(root_0, tree_for_string_literal137)

          end
          __NAME138__ = match(NAME, TOKENS_FOLLOWING_NAME_IN_dotted_as_name_1821)
          if @state.backtracking == 0

            tree_for_NAME138 = @adaptor.create_with_payload!(__NAME138__)
            @adaptor.add_child(root_0, tree_for_NAME138)

          end

        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 36)

      end
      
      return return_value
    end

    DottedAsNamesReturnValue = define_return_scope 

    # parser rule dotted_as_names
    # 
    # (in samples/Python.g)
    # 297:1: dotted_as_names : dotted_as_name ( COMMA dotted_as_name )* ;
    def dotted_as_names
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 37)
      return_value = DottedAsNamesReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __COMMA140__ = nil
      dotted_as_name139 = nil
      dotted_as_name141 = nil

      tree_for_COMMA140 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 297:19: dotted_as_name ( COMMA dotted_as_name )*
        @state.following.push(TOKENS_FOLLOWING_dotted_as_name_IN_dotted_as_names_1847)
        dotted_as_name139 = dotted_as_name
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, dotted_as_name139.tree)
        end
        # at line 297:34: ( COMMA dotted_as_name )*
        loop do  #loop 47
          alt_47 = 2
          look_47_0 = @input.peek(1)

          if (look_47_0 == COMMA) 
            alt_47 = 1

          end
          case alt_47
          when 1
            # at line 297:35: COMMA dotted_as_name
            __COMMA140__ = match(COMMA, TOKENS_FOLLOWING_COMMA_IN_dotted_as_names_1850)
            if @state.backtracking == 0

              tree_for_COMMA140 = @adaptor.create_with_payload!(__COMMA140__)
              @adaptor.add_child(root_0, tree_for_COMMA140)

            end
            @state.following.push(TOKENS_FOLLOWING_dotted_as_name_IN_dotted_as_names_1852)
            dotted_as_name141 = dotted_as_name
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, dotted_as_name141.tree)
            end

          else
            break #loop 47
          end
        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 37)

      end
      
      return return_value
    end

    DottedNameReturnValue = define_return_scope 

    # parser rule dotted_name
    # 
    # (in samples/Python.g)
    # 299:1: dotted_name : NAME ( DOT NAME )* ;
    def dotted_name
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 38)
      return_value = DottedNameReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __NAME142__ = nil
      __DOT143__ = nil
      __NAME144__ = nil

      tree_for_NAME142 = nil
      tree_for_DOT143 = nil
      tree_for_NAME144 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 299:15: NAME ( DOT NAME )*
        __NAME142__ = match(NAME, TOKENS_FOLLOWING_NAME_IN_dotted_name_1878)
        if @state.backtracking == 0

          tree_for_NAME142 = @adaptor.create_with_payload!(__NAME142__)
          @adaptor.add_child(root_0, tree_for_NAME142)

        end
        # at line 299:20: ( DOT NAME )*
        loop do  #loop 48
          alt_48 = 2
          look_48_0 = @input.peek(1)

          if (look_48_0 == DOT) 
            alt_48 = 1

          end
          case alt_48
          when 1
            # at line 299:21: DOT NAME
            __DOT143__ = match(DOT, TOKENS_FOLLOWING_DOT_IN_dotted_name_1881)
            if @state.backtracking == 0

              tree_for_DOT143 = @adaptor.create_with_payload!(__DOT143__)
              @adaptor.add_child(root_0, tree_for_DOT143)

            end
            __NAME144__ = match(NAME, TOKENS_FOLLOWING_NAME_IN_dotted_name_1883)
            if @state.backtracking == 0

              tree_for_NAME144 = @adaptor.create_with_payload!(__NAME144__)
              @adaptor.add_child(root_0, tree_for_NAME144)

            end

          else
            break #loop 48
          end
        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 38)

      end
      
      return return_value
    end

    GlobalStatementReturnValue = define_return_scope 

    # parser rule global_statement
    # 
    # (in samples/Python.g)
    # 302:1: global_statement : 'global' NAME ( COMMA NAME )* ;
    def global_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 39)
      return_value = GlobalStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal145 = nil
      __NAME146__ = nil
      __COMMA147__ = nil
      __NAME148__ = nil

      tree_for_string_literal145 = nil
      tree_for_NAME146 = nil
      tree_for_COMMA147 = nil
      tree_for_NAME148 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 302:20: 'global' NAME ( COMMA NAME )*
        string_literal145 = match(T__82, TOKENS_FOLLOWING_T__82_IN_global_statement_1906)
        if @state.backtracking == 0

          tree_for_string_literal145 = @adaptor.create_with_payload!(string_literal145)
          @adaptor.add_child(root_0, tree_for_string_literal145)

        end
        __NAME146__ = match(NAME, TOKENS_FOLLOWING_NAME_IN_global_statement_1908)
        if @state.backtracking == 0

          tree_for_NAME146 = @adaptor.create_with_payload!(__NAME146__)
          @adaptor.add_child(root_0, tree_for_NAME146)

        end
        # at line 302:34: ( COMMA NAME )*
        loop do  #loop 49
          alt_49 = 2
          look_49_0 = @input.peek(1)

          if (look_49_0 == COMMA) 
            alt_49 = 1

          end
          case alt_49
          when 1
            # at line 302:35: COMMA NAME
            __COMMA147__ = match(COMMA, TOKENS_FOLLOWING_COMMA_IN_global_statement_1911)
            if @state.backtracking == 0

              tree_for_COMMA147 = @adaptor.create_with_payload!(__COMMA147__)
              @adaptor.add_child(root_0, tree_for_COMMA147)

            end
            __NAME148__ = match(NAME, TOKENS_FOLLOWING_NAME_IN_global_statement_1913)
            if @state.backtracking == 0

              tree_for_NAME148 = @adaptor.create_with_payload!(__NAME148__)
              @adaptor.add_child(root_0, tree_for_NAME148)

            end

          else
            break #loop 49
          end
        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 39)

      end
      
      return return_value
    end

    ExecStatementReturnValue = define_return_scope 

    # parser rule exec_statement
    # 
    # (in samples/Python.g)
    # 305:1: exec_statement : 'exec' expr ( 'in' test ( COMMA test )? )? ;
    def exec_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 40)
      return_value = ExecStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal149 = nil
      string_literal151 = nil
      __COMMA153__ = nil
      expr150 = nil
      test152 = nil
      test154 = nil

      tree_for_string_literal149 = nil
      tree_for_string_literal151 = nil
      tree_for_COMMA153 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 305:18: 'exec' expr ( 'in' test ( COMMA test )? )?
        string_literal149 = match(T__83, TOKENS_FOLLOWING_T__83_IN_exec_statement_1936)
        if @state.backtracking == 0

          tree_for_string_literal149 = @adaptor.create_with_payload!(string_literal149)
          @adaptor.add_child(root_0, tree_for_string_literal149)

        end
        @state.following.push(TOKENS_FOLLOWING_expr_IN_exec_statement_1938)
        expr150 = expr
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, expr150.tree)
        end
        # at line 305:30: ( 'in' test ( COMMA test )? )?
        alt_51 = 2
        look_51_0 = @input.peek(1)

        if (look_51_0 == T__84) 
          alt_51 = 1
        end
        case alt_51
        when 1
          # at line 305:31: 'in' test ( COMMA test )?
          string_literal151 = match(T__84, TOKENS_FOLLOWING_T__84_IN_exec_statement_1941)
          if @state.backtracking == 0

            tree_for_string_literal151 = @adaptor.create_with_payload!(string_literal151)
            @adaptor.add_child(root_0, tree_for_string_literal151)

          end
          @state.following.push(TOKENS_FOLLOWING_test_IN_exec_statement_1943)
          test152 = test
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, test152.tree)
          end
          # at line 305:41: ( COMMA test )?
          alt_50 = 2
          look_50_0 = @input.peek(1)

          if (look_50_0 == COMMA) 
            alt_50 = 1
          end
          case alt_50
          when 1
            # at line 305:42: COMMA test
            __COMMA153__ = match(COMMA, TOKENS_FOLLOWING_COMMA_IN_exec_statement_1946)
            if @state.backtracking == 0

              tree_for_COMMA153 = @adaptor.create_with_payload!(__COMMA153__)
              @adaptor.add_child(root_0, tree_for_COMMA153)

            end
            @state.following.push(TOKENS_FOLLOWING_test_IN_exec_statement_1948)
            test154 = test
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, test154.tree)
            end

          end

        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 40)

      end
      
      return return_value
    end

    AssertStatementReturnValue = define_return_scope 

    # parser rule assert_statement
    # 
    # (in samples/Python.g)
    # 308:1: assert_statement : 'assert' test ( COMMA test )? ;
    def assert_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 41)
      return_value = AssertStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal155 = nil
      __COMMA157__ = nil
      test156 = nil
      test158 = nil

      tree_for_string_literal155 = nil
      tree_for_COMMA157 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 308:20: 'assert' test ( COMMA test )?
        string_literal155 = match(T__85, TOKENS_FOLLOWING_T__85_IN_assert_statement_1971)
        if @state.backtracking == 0

          tree_for_string_literal155 = @adaptor.create_with_payload!(string_literal155)
          @adaptor.add_child(root_0, tree_for_string_literal155)

        end
        @state.following.push(TOKENS_FOLLOWING_test_IN_assert_statement_1973)
        test156 = test
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, test156.tree)
        end
        # at line 308:34: ( COMMA test )?
        alt_52 = 2
        look_52_0 = @input.peek(1)

        if (look_52_0 == COMMA) 
          alt_52 = 1
        end
        case alt_52
        when 1
          # at line 308:35: COMMA test
          __COMMA157__ = match(COMMA, TOKENS_FOLLOWING_COMMA_IN_assert_statement_1976)
          if @state.backtracking == 0

            tree_for_COMMA157 = @adaptor.create_with_payload!(__COMMA157__)
            @adaptor.add_child(root_0, tree_for_COMMA157)

          end
          @state.following.push(TOKENS_FOLLOWING_test_IN_assert_statement_1978)
          test158 = test
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, test158.tree)
          end

        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 41)

      end
      
      return return_value
    end

    CompoundStatementReturnValue = define_return_scope 

    # parser rule compound_statement
    # 
    # (in samples/Python.g)
    # 311:1: compound_statement : ( if_statement | while_statement | for_statement | try_statement | with_statement | func_def | class_def );
    def compound_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 42)
      return_value = CompoundStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      if_statement159 = nil
      while_statement160 = nil
      for_statement161 = nil
      try_statement162 = nil
      with_statement163 = nil
      func_def164 = nil
      class_def165 = nil


      begin
        # at line 311:20: ( if_statement | while_statement | for_statement | try_statement | with_statement | func_def | class_def )
        alt_53 = 7
        case look_53 = @input.peek(1)
        when T__86 then alt_53 = 1
        when T__89 then alt_53 = 2
        when T__90 then alt_53 = 3
        when T__91 then alt_53 = 4
        when T__93 then alt_53 = 5
        when AT, T__71 then alt_53 = 6
        when T__97 then alt_53 = 7
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          nvae = NoViableAlternative("", 53, 0)
          raise nvae
        end
        case alt_53
        when 1
          root_0 = @adaptor.create_flat_list!


          # at line 311:22: if_statement
          @state.following.push(TOKENS_FOLLOWING_if_statement_IN_compound_statement_2001)
          if_statement159 = if_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, if_statement159.tree)
          end

        when 2
          root_0 = @adaptor.create_flat_list!


          # at line 312:17: while_statement
          @state.following.push(TOKENS_FOLLOWING_while_statement_IN_compound_statement_2019)
          while_statement160 = while_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, while_statement160.tree)
          end

        when 3
          root_0 = @adaptor.create_flat_list!


          # at line 313:17: for_statement
          @state.following.push(TOKENS_FOLLOWING_for_statement_IN_compound_statement_2037)
          for_statement161 = for_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, for_statement161.tree)
          end

        when 4
          root_0 = @adaptor.create_flat_list!


          # at line 314:17: try_statement
          @state.following.push(TOKENS_FOLLOWING_try_statement_IN_compound_statement_2055)
          try_statement162 = try_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, try_statement162.tree)
          end

        when 5
          root_0 = @adaptor.create_flat_list!


          # at line 315:17: with_statement
          @state.following.push(TOKENS_FOLLOWING_with_statement_IN_compound_statement_2073)
          with_statement163 = with_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, with_statement163.tree)
          end

        when 6
          root_0 = @adaptor.create_flat_list!


          # at line 316:17: func_def
          @state.following.push(TOKENS_FOLLOWING_func_def_IN_compound_statement_2091)
          func_def164 = func_def
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, func_def164.tree)
          end

        when 7
          root_0 = @adaptor.create_flat_list!


          # at line 317:17: class_def
          @state.following.push(TOKENS_FOLLOWING_class_def_IN_compound_statement_2109)
          class_def165 = class_def
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, class_def165.tree)
          end

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 42)

      end
      
      return return_value
    end

    IfStatementReturnValue = define_return_scope 

    # parser rule if_statement
    # 
    # (in samples/Python.g)
    # 320:1: if_statement : 'if' test COLON suite ( elif_clause )* ( 'else' COLON suite )? ;
    def if_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 43)
      return_value = IfStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal166 = nil
      __COLON168__ = nil
      string_literal171 = nil
      __COLON172__ = nil
      test167 = nil
      suite169 = nil
      elif_clause170 = nil
      suite173 = nil

      tree_for_string_literal166 = nil
      tree_for_COLON168 = nil
      tree_for_string_literal171 = nil
      tree_for_COLON172 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 320:15: 'if' test COLON suite ( elif_clause )* ( 'else' COLON suite )?
        string_literal166 = match(T__86, TOKENS_FOLLOWING_T__86_IN_if_statement_2131)
        if @state.backtracking == 0

          tree_for_string_literal166 = @adaptor.create_with_payload!(string_literal166)
          @adaptor.add_child(root_0, tree_for_string_literal166)

        end
        @state.following.push(TOKENS_FOLLOWING_test_IN_if_statement_2133)
        test167 = test
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, test167.tree)
        end
        __COLON168__ = match(COLON, TOKENS_FOLLOWING_COLON_IN_if_statement_2135)
        if @state.backtracking == 0

          tree_for_COLON168 = @adaptor.create_with_payload!(__COLON168__)
          @adaptor.add_child(root_0, tree_for_COLON168)

        end
        @state.following.push(TOKENS_FOLLOWING_suite_IN_if_statement_2137)
        suite169 = suite
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, suite169.tree)
        end
        # at line 320:37: ( elif_clause )*
        loop do  #loop 54
          alt_54 = 2
          look_54_0 = @input.peek(1)

          if (look_54_0 == T__88) 
            alt_54 = 1

          end
          case alt_54
          when 1
            # at line 320:37: elif_clause
            @state.following.push(TOKENS_FOLLOWING_elif_clause_IN_if_statement_2139)
            elif_clause170 = elif_clause
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, elif_clause170.tree)
            end

          else
            break #loop 54
          end
        end
        # at line 320:51: ( 'else' COLON suite )?
        alt_55 = 2
        look_55_0 = @input.peek(1)

        if (look_55_0 == T__87) 
          alt_55 = 1
        end
        case alt_55
        when 1
          # at line 320:52: 'else' COLON suite
          string_literal171 = match(T__87, TOKENS_FOLLOWING_T__87_IN_if_statement_2144)
          if @state.backtracking == 0

            tree_for_string_literal171 = @adaptor.create_with_payload!(string_literal171)
            @adaptor.add_child(root_0, tree_for_string_literal171)

          end
          __COLON172__ = match(COLON, TOKENS_FOLLOWING_COLON_IN_if_statement_2146)
          if @state.backtracking == 0

            tree_for_COLON172 = @adaptor.create_with_payload!(__COLON172__)
            @adaptor.add_child(root_0, tree_for_COLON172)

          end
          @state.following.push(TOKENS_FOLLOWING_suite_IN_if_statement_2148)
          suite173 = suite
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, suite173.tree)
          end

        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 43)

      end
      
      return return_value
    end

    ElifClauseReturnValue = define_return_scope 

    # parser rule elif_clause
    # 
    # (in samples/Python.g)
    # 323:1: elif_clause : 'elif' test COLON suite ;
    def elif_clause
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 44)
      return_value = ElifClauseReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal174 = nil
      __COLON176__ = nil
      test175 = nil
      suite177 = nil

      tree_for_string_literal174 = nil
      tree_for_COLON176 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 323:15: 'elif' test COLON suite
        string_literal174 = match(T__88, TOKENS_FOLLOWING_T__88_IN_elif_clause_2166)
        if @state.backtracking == 0

          tree_for_string_literal174 = @adaptor.create_with_payload!(string_literal174)
          @adaptor.add_child(root_0, tree_for_string_literal174)

        end
        @state.following.push(TOKENS_FOLLOWING_test_IN_elif_clause_2168)
        test175 = test
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, test175.tree)
        end
        __COLON176__ = match(COLON, TOKENS_FOLLOWING_COLON_IN_elif_clause_2170)
        if @state.backtracking == 0

          tree_for_COLON176 = @adaptor.create_with_payload!(__COLON176__)
          @adaptor.add_child(root_0, tree_for_COLON176)

        end
        @state.following.push(TOKENS_FOLLOWING_suite_IN_elif_clause_2172)
        suite177 = suite
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, suite177.tree)
        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 44)

      end
      
      return return_value
    end

    WhileStatementReturnValue = define_return_scope 

    # parser rule while_statement
    # 
    # (in samples/Python.g)
    # 326:1: while_statement : 'while' test COLON suite ( 'else' COLON suite )? ;
    def while_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 45)
      return_value = WhileStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal178 = nil
      __COLON180__ = nil
      string_literal182 = nil
      __COLON183__ = nil
      test179 = nil
      suite181 = nil
      suite184 = nil

      tree_for_string_literal178 = nil
      tree_for_COLON180 = nil
      tree_for_string_literal182 = nil
      tree_for_COLON183 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 326:19: 'while' test COLON suite ( 'else' COLON suite )?
        string_literal178 = match(T__89, TOKENS_FOLLOWING_T__89_IN_while_statement_2193)
        if @state.backtracking == 0

          tree_for_string_literal178 = @adaptor.create_with_payload!(string_literal178)
          @adaptor.add_child(root_0, tree_for_string_literal178)

        end
        @state.following.push(TOKENS_FOLLOWING_test_IN_while_statement_2195)
        test179 = test
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, test179.tree)
        end
        __COLON180__ = match(COLON, TOKENS_FOLLOWING_COLON_IN_while_statement_2197)
        if @state.backtracking == 0

          tree_for_COLON180 = @adaptor.create_with_payload!(__COLON180__)
          @adaptor.add_child(root_0, tree_for_COLON180)

        end
        @state.following.push(TOKENS_FOLLOWING_suite_IN_while_statement_2199)
        suite181 = suite
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, suite181.tree)
        end
        # at line 326:44: ( 'else' COLON suite )?
        alt_56 = 2
        look_56_0 = @input.peek(1)

        if (look_56_0 == T__87) 
          alt_56 = 1
        end
        case alt_56
        when 1
          # at line 326:45: 'else' COLON suite
          string_literal182 = match(T__87, TOKENS_FOLLOWING_T__87_IN_while_statement_2202)
          if @state.backtracking == 0

            tree_for_string_literal182 = @adaptor.create_with_payload!(string_literal182)
            @adaptor.add_child(root_0, tree_for_string_literal182)

          end
          __COLON183__ = match(COLON, TOKENS_FOLLOWING_COLON_IN_while_statement_2204)
          if @state.backtracking == 0

            tree_for_COLON183 = @adaptor.create_with_payload!(__COLON183__)
            @adaptor.add_child(root_0, tree_for_COLON183)

          end
          @state.following.push(TOKENS_FOLLOWING_suite_IN_while_statement_2206)
          suite184 = suite
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, suite184.tree)
          end

        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 45)

      end
      
      return return_value
    end

    ForStatementReturnValue = define_return_scope 

    # parser rule for_statement
    # 
    # (in samples/Python.g)
    # 329:1: for_statement : 'for' exprlist 'in' test_list COLON suite ( 'else' COLON suite )? ;
    def for_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 46)
      return_value = ForStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal185 = nil
      string_literal187 = nil
      __COLON189__ = nil
      string_literal191 = nil
      __COLON192__ = nil
      exprlist186 = nil
      test_list188 = nil
      suite190 = nil
      suite193 = nil

      tree_for_string_literal185 = nil
      tree_for_string_literal187 = nil
      tree_for_COLON189 = nil
      tree_for_string_literal191 = nil
      tree_for_COLON192 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 329:17: 'for' exprlist 'in' test_list COLON suite ( 'else' COLON suite )?
        string_literal185 = match(T__90, TOKENS_FOLLOWING_T__90_IN_for_statement_2228)
        if @state.backtracking == 0

          tree_for_string_literal185 = @adaptor.create_with_payload!(string_literal185)
          @adaptor.add_child(root_0, tree_for_string_literal185)

        end
        @state.following.push(TOKENS_FOLLOWING_exprlist_IN_for_statement_2230)
        exprlist186 = exprlist
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, exprlist186.tree)
        end
        string_literal187 = match(T__84, TOKENS_FOLLOWING_T__84_IN_for_statement_2232)
        if @state.backtracking == 0

          tree_for_string_literal187 = @adaptor.create_with_payload!(string_literal187)
          @adaptor.add_child(root_0, tree_for_string_literal187)

        end
        @state.following.push(TOKENS_FOLLOWING_test_list_IN_for_statement_2234)
        test_list188 = test_list
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, test_list188.tree)
        end
        __COLON189__ = match(COLON, TOKENS_FOLLOWING_COLON_IN_for_statement_2236)
        if @state.backtracking == 0

          tree_for_COLON189 = @adaptor.create_with_payload!(__COLON189__)
          @adaptor.add_child(root_0, tree_for_COLON189)

        end
        @state.following.push(TOKENS_FOLLOWING_suite_IN_for_statement_2238)
        suite190 = suite
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, suite190.tree)
        end
        # at line 329:59: ( 'else' COLON suite )?
        alt_57 = 2
        look_57_0 = @input.peek(1)

        if (look_57_0 == T__87) 
          alt_57 = 1
        end
        case alt_57
        when 1
          # at line 329:60: 'else' COLON suite
          string_literal191 = match(T__87, TOKENS_FOLLOWING_T__87_IN_for_statement_2241)
          if @state.backtracking == 0

            tree_for_string_literal191 = @adaptor.create_with_payload!(string_literal191)
            @adaptor.add_child(root_0, tree_for_string_literal191)

          end
          __COLON192__ = match(COLON, TOKENS_FOLLOWING_COLON_IN_for_statement_2243)
          if @state.backtracking == 0

            tree_for_COLON192 = @adaptor.create_with_payload!(__COLON192__)
            @adaptor.add_child(root_0, tree_for_COLON192)

          end
          @state.following.push(TOKENS_FOLLOWING_suite_IN_for_statement_2245)
          suite193 = suite
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, suite193.tree)
          end

        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 46)

      end
      
      return return_value
    end

    TryStatementReturnValue = define_return_scope 

    # parser rule try_statement
    # 
    # (in samples/Python.g)
    # 332:1: try_statement : 'try' COLON suite ( ( except_clause )+ ( 'else' COLON suite )? ( 'finally' COLON suite )? | 'finally' COLON suite ) ;
    def try_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 47)
      return_value = TryStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal194 = nil
      __COLON195__ = nil
      string_literal198 = nil
      __COLON199__ = nil
      string_literal201 = nil
      __COLON202__ = nil
      string_literal204 = nil
      __COLON205__ = nil
      suite196 = nil
      except_clause197 = nil
      suite200 = nil
      suite203 = nil
      suite206 = nil

      tree_for_string_literal194 = nil
      tree_for_COLON195 = nil
      tree_for_string_literal198 = nil
      tree_for_COLON199 = nil
      tree_for_string_literal201 = nil
      tree_for_COLON202 = nil
      tree_for_string_literal204 = nil
      tree_for_COLON205 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 332:17: 'try' COLON suite ( ( except_clause )+ ( 'else' COLON suite )? ( 'finally' COLON suite )? | 'finally' COLON suite )
        string_literal194 = match(T__91, TOKENS_FOLLOWING_T__91_IN_try_statement_2265)
        if @state.backtracking == 0

          tree_for_string_literal194 = @adaptor.create_with_payload!(string_literal194)
          @adaptor.add_child(root_0, tree_for_string_literal194)

        end
        __COLON195__ = match(COLON, TOKENS_FOLLOWING_COLON_IN_try_statement_2267)
        if @state.backtracking == 0

          tree_for_COLON195 = @adaptor.create_with_payload!(__COLON195__)
          @adaptor.add_child(root_0, tree_for_COLON195)

        end
        @state.following.push(TOKENS_FOLLOWING_suite_IN_try_statement_2269)
        suite196 = suite
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, suite196.tree)
        end
        # at line 333:12: ( ( except_clause )+ ( 'else' COLON suite )? ( 'finally' COLON suite )? | 'finally' COLON suite )
        alt_61 = 2
        look_61_0 = @input.peek(1)

        if (look_61_0 == T__94) 
          alt_61 = 1
        elsif (look_61_0 == T__92) 
          alt_61 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 61, 0)
          raise nvae
        end
        case alt_61
        when 1
          # at line 333:14: ( except_clause )+ ( 'else' COLON suite )? ( 'finally' COLON suite )?
          # at file 333:14: ( except_clause )+
          match_count_58 = 0
          loop do
            alt_58 = 2
            look_58_0 = @input.peek(1)

            if (look_58_0 == T__94) 
              alt_58 = 1

            end
            case alt_58
            when 1
              # at line 333:14: except_clause
              @state.following.push(TOKENS_FOLLOWING_except_clause_IN_try_statement_2284)
              except_clause197 = except_clause
              @state.following.pop
              if @state.backtracking == 0
                @adaptor.add_child(root_0, except_clause197.tree)
              end

            else
              match_count_58 > 0 and break
              @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

              eee = EarlyExit(58)


              raise eee
            end
            match_count_58 += 1
          end

          # at line 333:29: ( 'else' COLON suite )?
          alt_59 = 2
          look_59_0 = @input.peek(1)

          if (look_59_0 == T__87) 
            alt_59 = 1
          end
          case alt_59
          when 1
            # at line 333:30: 'else' COLON suite
            string_literal198 = match(T__87, TOKENS_FOLLOWING_T__87_IN_try_statement_2288)
            if @state.backtracking == 0

              tree_for_string_literal198 = @adaptor.create_with_payload!(string_literal198)
              @adaptor.add_child(root_0, tree_for_string_literal198)

            end
            __COLON199__ = match(COLON, TOKENS_FOLLOWING_COLON_IN_try_statement_2290)
            if @state.backtracking == 0

              tree_for_COLON199 = @adaptor.create_with_payload!(__COLON199__)
              @adaptor.add_child(root_0, tree_for_COLON199)

            end
            @state.following.push(TOKENS_FOLLOWING_suite_IN_try_statement_2292)
            suite200 = suite
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, suite200.tree)
            end

          end
          # at line 333:51: ( 'finally' COLON suite )?
          alt_60 = 2
          look_60_0 = @input.peek(1)

          if (look_60_0 == T__92) 
            alt_60 = 1
          end
          case alt_60
          when 1
            # at line 333:52: 'finally' COLON suite
            string_literal201 = match(T__92, TOKENS_FOLLOWING_T__92_IN_try_statement_2297)
            if @state.backtracking == 0

              tree_for_string_literal201 = @adaptor.create_with_payload!(string_literal201)
              @adaptor.add_child(root_0, tree_for_string_literal201)

            end
            __COLON202__ = match(COLON, TOKENS_FOLLOWING_COLON_IN_try_statement_2299)
            if @state.backtracking == 0

              tree_for_COLON202 = @adaptor.create_with_payload!(__COLON202__)
              @adaptor.add_child(root_0, tree_for_COLON202)

            end
            @state.following.push(TOKENS_FOLLOWING_suite_IN_try_statement_2301)
            suite203 = suite
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, suite203.tree)
            end

          end

        when 2
          # at line 334:14: 'finally' COLON suite
          string_literal204 = match(T__92, TOKENS_FOLLOWING_T__92_IN_try_statement_2318)
          if @state.backtracking == 0

            tree_for_string_literal204 = @adaptor.create_with_payload!(string_literal204)
            @adaptor.add_child(root_0, tree_for_string_literal204)

          end
          __COLON205__ = match(COLON, TOKENS_FOLLOWING_COLON_IN_try_statement_2320)
          if @state.backtracking == 0

            tree_for_COLON205 = @adaptor.create_with_payload!(__COLON205__)
            @adaptor.add_child(root_0, tree_for_COLON205)

          end
          @state.following.push(TOKENS_FOLLOWING_suite_IN_try_statement_2322)
          suite206 = suite
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, suite206.tree)
          end

        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 47)

      end
      
      return return_value
    end

    WithStatementReturnValue = define_return_scope 

    # parser rule with_statement
    # 
    # (in samples/Python.g)
    # 338:1: with_statement : 'with' test ( with_var )? COLON suite ;
    def with_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 48)
      return_value = WithStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal207 = nil
      __COLON210__ = nil
      test208 = nil
      with_var209 = nil
      suite211 = nil

      tree_for_string_literal207 = nil
      tree_for_COLON210 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 338:17: 'with' test ( with_var )? COLON suite
        string_literal207 = match(T__93, TOKENS_FOLLOWING_T__93_IN_with_statement_2352)
        if @state.backtracking == 0

          tree_for_string_literal207 = @adaptor.create_with_payload!(string_literal207)
          @adaptor.add_child(root_0, tree_for_string_literal207)

        end
        @state.following.push(TOKENS_FOLLOWING_test_IN_with_statement_2354)
        test208 = test
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, test208.tree)
        end
        # at line 338:29: ( with_var )?
        alt_62 = 2
        look_62_0 = @input.peek(1)

        if (look_62_0 == NAME || look_62_0 == T__81) 
          alt_62 = 1
        end
        case alt_62
        when 1
          # at line 338:30: with_var
          @state.following.push(TOKENS_FOLLOWING_with_var_IN_with_statement_2357)
          with_var209 = with_var
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, with_var209.tree)
          end

        end
        __COLON210__ = match(COLON, TOKENS_FOLLOWING_COLON_IN_with_statement_2361)
        if @state.backtracking == 0

          tree_for_COLON210 = @adaptor.create_with_payload!(__COLON210__)
          @adaptor.add_child(root_0, tree_for_COLON210)

        end
        @state.following.push(TOKENS_FOLLOWING_suite_IN_with_statement_2363)
        suite211 = suite
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, suite211.tree)
        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 48)

      end
      
      return return_value
    end

    WithVarReturnValue = define_return_scope 

    # parser rule with_var
    # 
    # (in samples/Python.g)
    # 341:1: with_var : ( 'as' | NAME ) expr ;
    def with_var
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 49)
      return_value = WithVarReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      set212 = nil
      expr213 = nil

      tree_for_set212 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 341:11: ( 'as' | NAME ) expr
        set212 = @input.look
        if @input.peek(1) == NAME || @input.peek(1) == T__81
          @input.consume
          if @state.backtracking == 0
            @adaptor.add_child(root_0, @adaptor.create_with_payload!(set212))
          end
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          mse = MismatchedSet(nil)
          raise mse
        end


        @state.following.push(TOKENS_FOLLOWING_expr_IN_with_var_2388)
        expr213 = expr
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, expr213.tree)
        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 49)

      end
      
      return return_value
    end

    ExceptClauseReturnValue = define_return_scope 

    # parser rule except_clause
    # 
    # (in samples/Python.g)
    # 344:1: except_clause : 'except' ( test ( COMMA test )? )? COLON suite ;
    def except_clause
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 50)
      return_value = ExceptClauseReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal214 = nil
      __COMMA216__ = nil
      __COLON218__ = nil
      test215 = nil
      test217 = nil
      suite219 = nil

      tree_for_string_literal214 = nil
      tree_for_COMMA216 = nil
      tree_for_COLON218 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 344:17: 'except' ( test ( COMMA test )? )? COLON suite
        string_literal214 = match(T__94, TOKENS_FOLLOWING_T__94_IN_except_clause_2405)
        if @state.backtracking == 0

          tree_for_string_literal214 = @adaptor.create_with_payload!(string_literal214)
          @adaptor.add_child(root_0, tree_for_string_literal214)

        end
        # at line 344:26: ( test ( COMMA test )? )?
        alt_64 = 2
        look_64_0 = @input.peek(1)

        if (look_64_0 == LPAREN || look_64_0 == NAME || look_64_0 == NOT || look_64_0.between?(PLUS, MINUS) || look_64_0.between?(TILDE, LBRACK) || look_64_0 == LCURLY || look_64_0.between?(BACKQUOTE, STRING) || look_64_0 == T__96) 
          alt_64 = 1
        end
        case alt_64
        when 1
          # at line 344:27: test ( COMMA test )?
          @state.following.push(TOKENS_FOLLOWING_test_IN_except_clause_2408)
          test215 = test
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, test215.tree)
          end
          # at line 344:32: ( COMMA test )?
          alt_63 = 2
          look_63_0 = @input.peek(1)

          if (look_63_0 == COMMA) 
            alt_63 = 1
          end
          case alt_63
          when 1
            # at line 344:33: COMMA test
            __COMMA216__ = match(COMMA, TOKENS_FOLLOWING_COMMA_IN_except_clause_2411)
            if @state.backtracking == 0

              tree_for_COMMA216 = @adaptor.create_with_payload!(__COMMA216__)
              @adaptor.add_child(root_0, tree_for_COMMA216)

            end
            @state.following.push(TOKENS_FOLLOWING_test_IN_except_clause_2413)
            test217 = test
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, test217.tree)
            end

          end

        end
        __COLON218__ = match(COLON, TOKENS_FOLLOWING_COLON_IN_except_clause_2419)
        if @state.backtracking == 0

          tree_for_COLON218 = @adaptor.create_with_payload!(__COLON218__)
          @adaptor.add_child(root_0, tree_for_COLON218)

        end
        @state.following.push(TOKENS_FOLLOWING_suite_IN_except_clause_2421)
        suite219 = suite
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, suite219.tree)
        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 50)

      end
      
      return return_value
    end

    SuiteReturnValue = define_return_scope 

    # parser rule suite
    # 
    # (in samples/Python.g)
    # 347:1: suite : ( simple_statement -> ^( BLOCK simple_statement ) | NEWLINE INDENT ( statement )+ DEDENT -> ^( BLOCK ( statement )+ ) );
    def suite
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 51)
      return_value = SuiteReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __NEWLINE221__ = nil
      __INDENT222__ = nil
      __DEDENT224__ = nil
      simple_statement220 = nil
      statement223 = nil

      tree_for_NEWLINE221 = nil
      tree_for_INDENT222 = nil
      tree_for_DEDENT224 = nil
      stream_DEDENT = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token DEDENT")
      stream_NEWLINE = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token NEWLINE")
      stream_INDENT = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token INDENT")
      stream_statement = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule statement")
      stream_simple_statement = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule simple_statement")
      begin
        # at line 347:7: ( simple_statement -> ^( BLOCK simple_statement ) | NEWLINE INDENT ( statement )+ DEDENT -> ^( BLOCK ( statement )+ ) )
        alt_66 = 2
        look_66_0 = @input.peek(1)

        if (look_66_0 == LPAREN || look_66_0 == NAME || look_66_0 == NOT || look_66_0.between?(PLUS, MINUS) || look_66_0.between?(TILDE, LBRACK) || look_66_0 == LCURLY || look_66_0.between?(BACKQUOTE, STRING) || look_66_0.between?(T__72, T__80) || look_66_0.between?(T__82, T__83) || look_66_0 == T__85 || look_66_0 == T__96 || look_66_0 == T__98) 
          alt_66 = 1
        elsif (look_66_0 == NEWLINE) 
          alt_66 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 66, 0)
          raise nvae
        end
        case alt_66
        when 1
          # at line 347:9: simple_statement
          @state.following.push(TOKENS_FOLLOWING_simple_statement_IN_suite_2444)
          simple_statement220 = simple_statement
          @state.following.pop
          if @state.backtracking == 0
            stream_simple_statement.add(simple_statement220.tree)
          end
          # AST Rewrite
          # elements: simple_statement
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule return_value", return_value.tree) :
                                                 ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "token return_value", nil)

            root_0 = @adaptor.create_flat_list!
            # 347:26: -> ^( BLOCK simple_statement )
            # at line 347:29: ^( BLOCK simple_statement )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(@adaptor.create_from_type!(BLOCK, "BLOCK"), root_1)

            @adaptor.add_child(root_1, stream_simple_statement.next_tree)

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 2
          # at line 348:9: NEWLINE INDENT ( statement )+ DEDENT
          __NEWLINE221__ = match(NEWLINE, TOKENS_FOLLOWING_NEWLINE_IN_suite_2462) 
          if @state.backtracking == 0
            stream_NEWLINE.add(__NEWLINE221__)
          end
          __INDENT222__ = match(INDENT, TOKENS_FOLLOWING_INDENT_IN_suite_2464) 
          if @state.backtracking == 0
            stream_INDENT.add(__INDENT222__)
          end
          # at file 348:24: ( statement )+
          match_count_65 = 0
          loop do
            alt_65 = 2
            look_65_0 = @input.peek(1)

            if (look_65_0.between?(AT, LPAREN) || look_65_0 == NAME || look_65_0 == NOT || look_65_0.between?(PLUS, MINUS) || look_65_0.between?(TILDE, LBRACK) || look_65_0 == LCURLY || look_65_0.between?(BACKQUOTE, STRING) || look_65_0.between?(T__71, T__80) || look_65_0.between?(T__82, T__83) || look_65_0.between?(T__85, T__86) || look_65_0.between?(T__89, T__91) || look_65_0 == T__93 || look_65_0.between?(T__96, T__98)) 
              alt_65 = 1

            end
            case alt_65
            when 1
              # at line 348:25: statement
              @state.following.push(TOKENS_FOLLOWING_statement_IN_suite_2467)
              statement223 = statement
              @state.following.pop
              if @state.backtracking == 0
                stream_statement.add(statement223.tree)
              end

            else
              match_count_65 > 0 and break
              @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

              eee = EarlyExit(65)


              raise eee
            end
            match_count_65 += 1
          end

          __DEDENT224__ = match(DEDENT, TOKENS_FOLLOWING_DEDENT_IN_suite_2471) 
          if @state.backtracking == 0
            stream_DEDENT.add(__DEDENT224__)
          end
          # AST Rewrite
          # elements: statement
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule return_value", return_value.tree) :
                                                 ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "token return_value", nil)

            root_0 = @adaptor.create_flat_list!
            # 348:44: -> ^( BLOCK ( statement )+ )
            # at line 348:47: ^( BLOCK ( statement )+ )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(@adaptor.create_from_type!(BLOCK, "BLOCK"), root_1)

            # at line 348:55: ( statement )+
            unless stream_statement.has_next?
              raise ANTLR3::RewriteEarlyExit
            end

            while stream_statement.has_next?
              @adaptor.add_child(root_1, stream_statement.next_tree)

            end

            stream_statement.reset

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 51)

      end
      
      return return_value
    end

    TestReturnValue = define_return_scope 

    # parser rule test
    # 
    # (in samples/Python.g)
    # 351:1: test : ( or_test ( ( 'if' or_test 'else' )=> 'if' or_test 'else' test )? | lamb_def );
    def test
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 52)
      return_value = TestReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal226 = nil
      string_literal228 = nil
      or_test225 = nil
      or_test227 = nil
      test229 = nil
      lamb_def230 = nil

      tree_for_string_literal226 = nil
      tree_for_string_literal228 = nil

      begin
        # at line 351:5: ( or_test ( ( 'if' or_test 'else' )=> 'if' or_test 'else' test )? | lamb_def )
        alt_68 = 2
        look_68_0 = @input.peek(1)

        if (look_68_0 == LPAREN || look_68_0 == NAME || look_68_0 == NOT || look_68_0.between?(PLUS, MINUS) || look_68_0.between?(TILDE, LBRACK) || look_68_0 == LCURLY || look_68_0.between?(BACKQUOTE, STRING)) 
          alt_68 = 1
        elsif (look_68_0 == T__96) 
          alt_68 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 68, 0)
          raise nvae
        end
        case alt_68
        when 1
          root_0 = @adaptor.create_flat_list!


          # at line 351:7: or_test ( ( 'if' or_test 'else' )=> 'if' or_test 'else' test )?
          @state.following.push(TOKENS_FOLLOWING_or_test_IN_test_2494)
          or_test225 = or_test
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, or_test225.tree)
          end
          # at line 352:5: ( ( 'if' or_test 'else' )=> 'if' or_test 'else' test )?
          alt_67 = 2
          alt_67 = @dfa67.predict(@input)
          case alt_67
          when 1
            # at line 352:7: ( 'if' or_test 'else' )=> 'if' or_test 'else' test
            string_literal226 = match(T__86, TOKENS_FOLLOWING_T__86_IN_test_2512)
            if @state.backtracking == 0

              tree_for_string_literal226 = @adaptor.create_with_payload!(string_literal226)
              @adaptor.add_child(root_0, tree_for_string_literal226)

            end
            @state.following.push(TOKENS_FOLLOWING_or_test_IN_test_2514)
            or_test227 = or_test
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, or_test227.tree)
            end
            string_literal228 = match(T__87, TOKENS_FOLLOWING_T__87_IN_test_2516)
            if @state.backtracking == 0

              tree_for_string_literal228 = @adaptor.create_with_payload!(string_literal228)
              @adaptor.add_child(root_0, tree_for_string_literal228)

            end
            @state.following.push(TOKENS_FOLLOWING_test_IN_test_2518)
            test229 = test
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, test229.tree)
            end

          end

        when 2
          root_0 = @adaptor.create_flat_list!


          # at line 353:7: lamb_def
          @state.following.push(TOKENS_FOLLOWING_lamb_def_IN_test_2528)
          lamb_def230 = lamb_def
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, lamb_def230.tree)
          end

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 52)

      end
      
      return return_value
    end

    OrTestReturnValue = define_return_scope 

    # parser rule or_test
    # 
    # (in samples/Python.g)
    # 356:1: or_test : and_test ( OR and_test )* ;
    def or_test
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 53)
      return_value = OrTestReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __OR232__ = nil
      and_test231 = nil
      and_test233 = nil

      tree_for_OR232 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 356:11: and_test ( OR and_test )*
        @state.following.push(TOKENS_FOLLOWING_and_test_IN_or_test_2541)
        and_test231 = and_test
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, and_test231.tree)
        end
        # at line 356:20: ( OR and_test )*
        loop do  #loop 69
          alt_69 = 2
          look_69_0 = @input.peek(1)

          if (look_69_0 == OR) 
            alt_69 = 1

          end
          case alt_69
          when 1
            # at line 356:21: OR and_test
            __OR232__ = match(OR, TOKENS_FOLLOWING_OR_IN_or_test_2544)
            if @state.backtracking == 0

              tree_for_OR232 = @adaptor.create_with_payload!(__OR232__)
              @adaptor.add_child(root_0, tree_for_OR232)

            end
            @state.following.push(TOKENS_FOLLOWING_and_test_IN_or_test_2546)
            and_test233 = and_test
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, and_test233.tree)
            end

          else
            break #loop 69
          end
        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 53)

      end
      
      return return_value
    end

    AndTestReturnValue = define_return_scope 

    # parser rule and_test
    # 
    # (in samples/Python.g)
    # 359:1: and_test : not_test ( AND not_test )* ;
    def and_test
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 54)
      return_value = AndTestReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __AND235__ = nil
      not_test234 = nil
      not_test236 = nil

      tree_for_AND235 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 359:12: not_test ( AND not_test )*
        @state.following.push(TOKENS_FOLLOWING_not_test_IN_and_test_2565)
        not_test234 = not_test
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, not_test234.tree)
        end
        # at line 359:21: ( AND not_test )*
        loop do  #loop 70
          alt_70 = 2
          look_70_0 = @input.peek(1)

          if (look_70_0 == AND) 
            alt_70 = 1

          end
          case alt_70
          when 1
            # at line 359:22: AND not_test
            __AND235__ = match(AND, TOKENS_FOLLOWING_AND_IN_and_test_2568)
            if @state.backtracking == 0

              tree_for_AND235 = @adaptor.create_with_payload!(__AND235__)
              @adaptor.add_child(root_0, tree_for_AND235)

            end
            @state.following.push(TOKENS_FOLLOWING_not_test_IN_and_test_2570)
            not_test236 = not_test
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, not_test236.tree)
            end

          else
            break #loop 70
          end
        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 54)

      end
      
      return return_value
    end

    NotTestReturnValue = define_return_scope 

    # parser rule not_test
    # 
    # (in samples/Python.g)
    # 362:1: not_test : ( NOT not_test | comparison );
    def not_test
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 55)
      return_value = NotTestReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __NOT237__ = nil
      not_test238 = nil
      comparison239 = nil

      tree_for_NOT237 = nil

      begin
        # at line 362:10: ( NOT not_test | comparison )
        alt_71 = 2
        look_71_0 = @input.peek(1)

        if (look_71_0 == NOT) 
          alt_71 = 1
        elsif (look_71_0 == LPAREN || look_71_0 == NAME || look_71_0.between?(PLUS, MINUS) || look_71_0.between?(TILDE, LBRACK) || look_71_0 == LCURLY || look_71_0.between?(BACKQUOTE, STRING)) 
          alt_71 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 71, 0)
          raise nvae
        end
        case alt_71
        when 1
          root_0 = @adaptor.create_flat_list!


          # at line 362:12: NOT not_test
          __NOT237__ = match(NOT, TOKENS_FOLLOWING_NOT_IN_not_test_2590)
          if @state.backtracking == 0

            tree_for_NOT237 = @adaptor.create_with_payload!(__NOT237__)
            @adaptor.add_child(root_0, tree_for_NOT237)

          end
          @state.following.push(TOKENS_FOLLOWING_not_test_IN_not_test_2592)
          not_test238 = not_test
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, not_test238.tree)
          end

        when 2
          root_0 = @adaptor.create_flat_list!


          # at line 363:12: comparison
          @state.following.push(TOKENS_FOLLOWING_comparison_IN_not_test_2605)
          comparison239 = comparison
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, comparison239.tree)
          end

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 55)

      end
      
      return return_value
    end

    ComparisonReturnValue = define_return_scope 

    # parser rule comparison
    # 
    # (in samples/Python.g)
    # 366:1: comparison : expr ( comp_op expr )* ;
    def comparison
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 56)
      return_value = ComparisonReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      expr240 = nil
      comp_op241 = nil
      expr242 = nil


      begin
        root_0 = @adaptor.create_flat_list!


        # at line 366:13: expr ( comp_op expr )*
        @state.following.push(TOKENS_FOLLOWING_expr_IN_comparison_2622)
        expr240 = expr
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, expr240.tree)
        end
        # at line 366:18: ( comp_op expr )*
        loop do  #loop 72
          alt_72 = 2
          look_72_0 = @input.peek(1)

          if (look_72_0.between?(NOT, NOT_EQUAL) || look_72_0 == T__84 || look_72_0 == T__95) 
            alt_72 = 1

          end
          case alt_72
          when 1
            # at line 366:19: comp_op expr
            @state.following.push(TOKENS_FOLLOWING_comp_op_IN_comparison_2625)
            comp_op241 = comp_op
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, comp_op241.tree)
            end
            @state.following.push(TOKENS_FOLLOWING_expr_IN_comparison_2627)
            expr242 = expr
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, expr242.tree)
            end

          else
            break #loop 72
          end
        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 56)

      end
      
      return return_value
    end

    CompOpReturnValue = define_return_scope 

    # parser rule comp_op
    # 
    # (in samples/Python.g)
    # 369:1: comp_op : ( LESS | GREATER | EQUAL | GREATER_EQUAL | LESS_EQUAL | ALT_NOT_EQUAL | NOT_EQUAL | 'in' | NOT 'in' | 'is' | 'is' NOT );
    def comp_op
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 57)
      return_value = CompOpReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __LESS243__ = nil
      __GREATER244__ = nil
      __EQUAL245__ = nil
      __GREATER_EQUAL246__ = nil
      __LESS_EQUAL247__ = nil
      __ALT_NOT_EQUAL248__ = nil
      __NOT_EQUAL249__ = nil
      string_literal250 = nil
      __NOT251__ = nil
      string_literal252 = nil
      string_literal253 = nil
      string_literal254 = nil
      __NOT255__ = nil

      tree_for_LESS243 = nil
      tree_for_GREATER244 = nil
      tree_for_EQUAL245 = nil
      tree_for_GREATER_EQUAL246 = nil
      tree_for_LESS_EQUAL247 = nil
      tree_for_ALT_NOT_EQUAL248 = nil
      tree_for_NOT_EQUAL249 = nil
      tree_for_string_literal250 = nil
      tree_for_NOT251 = nil
      tree_for_string_literal252 = nil
      tree_for_string_literal253 = nil
      tree_for_string_literal254 = nil
      tree_for_NOT255 = nil

      begin
        # at line 369:9: ( LESS | GREATER | EQUAL | GREATER_EQUAL | LESS_EQUAL | ALT_NOT_EQUAL | NOT_EQUAL | 'in' | NOT 'in' | 'is' | 'is' NOT )
        alt_73 = 11
        alt_73 = @dfa73.predict(@input)
        case alt_73
        when 1
          root_0 = @adaptor.create_flat_list!


          # at line 369:11: LESS
          __LESS243__ = match(LESS, TOKENS_FOLLOWING_LESS_IN_comp_op_2648)
          if @state.backtracking == 0

            tree_for_LESS243 = @adaptor.create_with_payload!(__LESS243__)
            @adaptor.add_child(root_0, tree_for_LESS243)

          end

        when 2
          root_0 = @adaptor.create_flat_list!


          # at line 370:11: GREATER
          __GREATER244__ = match(GREATER, TOKENS_FOLLOWING_GREATER_IN_comp_op_2660)
          if @state.backtracking == 0

            tree_for_GREATER244 = @adaptor.create_with_payload!(__GREATER244__)
            @adaptor.add_child(root_0, tree_for_GREATER244)

          end

        when 3
          root_0 = @adaptor.create_flat_list!


          # at line 371:11: EQUAL
          __EQUAL245__ = match(EQUAL, TOKENS_FOLLOWING_EQUAL_IN_comp_op_2672)
          if @state.backtracking == 0

            tree_for_EQUAL245 = @adaptor.create_with_payload!(__EQUAL245__)
            @adaptor.add_child(root_0, tree_for_EQUAL245)

          end

        when 4
          root_0 = @adaptor.create_flat_list!


          # at line 372:11: GREATER_EQUAL
          __GREATER_EQUAL246__ = match(GREATER_EQUAL, TOKENS_FOLLOWING_GREATER_EQUAL_IN_comp_op_2684)
          if @state.backtracking == 0

            tree_for_GREATER_EQUAL246 = @adaptor.create_with_payload!(__GREATER_EQUAL246__)
            @adaptor.add_child(root_0, tree_for_GREATER_EQUAL246)

          end

        when 5
          root_0 = @adaptor.create_flat_list!


          # at line 373:11: LESS_EQUAL
          __LESS_EQUAL247__ = match(LESS_EQUAL, TOKENS_FOLLOWING_LESS_EQUAL_IN_comp_op_2696)
          if @state.backtracking == 0

            tree_for_LESS_EQUAL247 = @adaptor.create_with_payload!(__LESS_EQUAL247__)
            @adaptor.add_child(root_0, tree_for_LESS_EQUAL247)

          end

        when 6
          root_0 = @adaptor.create_flat_list!


          # at line 374:11: ALT_NOT_EQUAL
          __ALT_NOT_EQUAL248__ = match(ALT_NOT_EQUAL, TOKENS_FOLLOWING_ALT_NOT_EQUAL_IN_comp_op_2708)
          if @state.backtracking == 0

            tree_for_ALT_NOT_EQUAL248 = @adaptor.create_with_payload!(__ALT_NOT_EQUAL248__)
            @adaptor.add_child(root_0, tree_for_ALT_NOT_EQUAL248)

          end

        when 7
          root_0 = @adaptor.create_flat_list!


          # at line 375:11: NOT_EQUAL
          __NOT_EQUAL249__ = match(NOT_EQUAL, TOKENS_FOLLOWING_NOT_EQUAL_IN_comp_op_2720)
          if @state.backtracking == 0

            tree_for_NOT_EQUAL249 = @adaptor.create_with_payload!(__NOT_EQUAL249__)
            @adaptor.add_child(root_0, tree_for_NOT_EQUAL249)

          end

        when 8
          root_0 = @adaptor.create_flat_list!


          # at line 376:11: 'in'
          string_literal250 = match(T__84, TOKENS_FOLLOWING_T__84_IN_comp_op_2732)
          if @state.backtracking == 0

            tree_for_string_literal250 = @adaptor.create_with_payload!(string_literal250)
            @adaptor.add_child(root_0, tree_for_string_literal250)

          end

        when 9
          root_0 = @adaptor.create_flat_list!


          # at line 377:11: NOT 'in'
          __NOT251__ = match(NOT, TOKENS_FOLLOWING_NOT_IN_comp_op_2744)
          if @state.backtracking == 0

            tree_for_NOT251 = @adaptor.create_with_payload!(__NOT251__)
            @adaptor.add_child(root_0, tree_for_NOT251)

          end
          string_literal252 = match(T__84, TOKENS_FOLLOWING_T__84_IN_comp_op_2746)
          if @state.backtracking == 0

            tree_for_string_literal252 = @adaptor.create_with_payload!(string_literal252)
            @adaptor.add_child(root_0, tree_for_string_literal252)

          end

        when 10
          root_0 = @adaptor.create_flat_list!


          # at line 378:11: 'is'
          string_literal253 = match(T__95, TOKENS_FOLLOWING_T__95_IN_comp_op_2758)
          if @state.backtracking == 0

            tree_for_string_literal253 = @adaptor.create_with_payload!(string_literal253)
            @adaptor.add_child(root_0, tree_for_string_literal253)

          end

        when 11
          root_0 = @adaptor.create_flat_list!


          # at line 379:11: 'is' NOT
          string_literal254 = match(T__95, TOKENS_FOLLOWING_T__95_IN_comp_op_2770)
          if @state.backtracking == 0

            tree_for_string_literal254 = @adaptor.create_with_payload!(string_literal254)
            @adaptor.add_child(root_0, tree_for_string_literal254)

          end
          __NOT255__ = match(NOT, TOKENS_FOLLOWING_NOT_IN_comp_op_2772)
          if @state.backtracking == 0

            tree_for_NOT255 = @adaptor.create_with_payload!(__NOT255__)
            @adaptor.add_child(root_0, tree_for_NOT255)

          end

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 57)

      end
      
      return return_value
    end

    ExprReturnValue = define_return_scope 

    # parser rule expr
    # 
    # (in samples/Python.g)
    # 382:1: expr : xor_expr ( VBAR xor_expr )* ;
    def expr
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 58)
      return_value = ExprReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __VBAR257__ = nil
      xor_expr256 = nil
      xor_expr258 = nil

      tree_for_VBAR257 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 382:8: xor_expr ( VBAR xor_expr )*
        @state.following.push(TOKENS_FOLLOWING_xor_expr_IN_expr_2789)
        xor_expr256 = xor_expr
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, xor_expr256.tree)
        end
        # at line 382:17: ( VBAR xor_expr )*
        loop do  #loop 74
          alt_74 = 2
          look_74_0 = @input.peek(1)

          if (look_74_0 == VBAR) 
            alt_74 = 1

          end
          case alt_74
          when 1
            # at line 382:18: VBAR xor_expr
            __VBAR257__ = match(VBAR, TOKENS_FOLLOWING_VBAR_IN_expr_2792)
            if @state.backtracking == 0

              tree_for_VBAR257 = @adaptor.create_with_payload!(__VBAR257__)
              @adaptor.add_child(root_0, tree_for_VBAR257)

            end
            @state.following.push(TOKENS_FOLLOWING_xor_expr_IN_expr_2794)
            xor_expr258 = xor_expr
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, xor_expr258.tree)
            end

          else
            break #loop 74
          end
        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 58)

      end
      
      return return_value
    end

    XorExprReturnValue = define_return_scope 

    # parser rule xor_expr
    # 
    # (in samples/Python.g)
    # 385:1: xor_expr : and_expr ( CIRCUMFLEX and_expr )* ;
    def xor_expr
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 59)
      return_value = XorExprReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __CIRCUMFLEX260__ = nil
      and_expr259 = nil
      and_expr261 = nil

      tree_for_CIRCUMFLEX260 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 385:12: and_expr ( CIRCUMFLEX and_expr )*
        @state.following.push(TOKENS_FOLLOWING_and_expr_IN_xor_expr_2810)
        and_expr259 = and_expr
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, and_expr259.tree)
        end
        # at line 385:21: ( CIRCUMFLEX and_expr )*
        loop do  #loop 75
          alt_75 = 2
          look_75_0 = @input.peek(1)

          if (look_75_0 == CIRCUMFLEX) 
            alt_75 = 1

          end
          case alt_75
          when 1
            # at line 385:22: CIRCUMFLEX and_expr
            __CIRCUMFLEX260__ = match(CIRCUMFLEX, TOKENS_FOLLOWING_CIRCUMFLEX_IN_xor_expr_2813)
            if @state.backtracking == 0

              tree_for_CIRCUMFLEX260 = @adaptor.create_with_payload!(__CIRCUMFLEX260__)
              @adaptor.add_child(root_0, tree_for_CIRCUMFLEX260)

            end
            @state.following.push(TOKENS_FOLLOWING_and_expr_IN_xor_expr_2815)
            and_expr261 = and_expr
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, and_expr261.tree)
            end

          else
            break #loop 75
          end
        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 59)

      end
      
      return return_value
    end

    AndExprReturnValue = define_return_scope 

    # parser rule and_expr
    # 
    # (in samples/Python.g)
    # 388:1: and_expr : shift_expr ( AMPER shift_expr )* ;
    def and_expr
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 60)
      return_value = AndExprReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __AMPER263__ = nil
      shift_expr262 = nil
      shift_expr264 = nil

      tree_for_AMPER263 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 388:12: shift_expr ( AMPER shift_expr )*
        @state.following.push(TOKENS_FOLLOWING_shift_expr_IN_and_expr_2835)
        shift_expr262 = shift_expr
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, shift_expr262.tree)
        end
        # at line 388:23: ( AMPER shift_expr )*
        loop do  #loop 76
          alt_76 = 2
          look_76_0 = @input.peek(1)

          if (look_76_0 == AMPER) 
            alt_76 = 1

          end
          case alt_76
          when 1
            # at line 388:24: AMPER shift_expr
            __AMPER263__ = match(AMPER, TOKENS_FOLLOWING_AMPER_IN_and_expr_2838)
            if @state.backtracking == 0

              tree_for_AMPER263 = @adaptor.create_with_payload!(__AMPER263__)
              @adaptor.add_child(root_0, tree_for_AMPER263)

            end
            @state.following.push(TOKENS_FOLLOWING_shift_expr_IN_and_expr_2840)
            shift_expr264 = shift_expr
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, shift_expr264.tree)
            end

          else
            break #loop 76
          end
        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 60)

      end
      
      return return_value
    end

    ShiftExprReturnValue = define_return_scope 

    # parser rule shift_expr
    # 
    # (in samples/Python.g)
    # 391:1: shift_expr : arith_expr ( ( LEFT_SHIFT | RIGHT_SHIFT ) arith_expr )* ;
    def shift_expr
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 61)
      return_value = ShiftExprReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      set266 = nil
      arith_expr265 = nil
      arith_expr267 = nil

      tree_for_set266 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 391:14: arith_expr ( ( LEFT_SHIFT | RIGHT_SHIFT ) arith_expr )*
        @state.following.push(TOKENS_FOLLOWING_arith_expr_IN_shift_expr_2860)
        arith_expr265 = arith_expr
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, arith_expr265.tree)
        end
        # at line 391:25: ( ( LEFT_SHIFT | RIGHT_SHIFT ) arith_expr )*
        loop do  #loop 77
          alt_77 = 2
          look_77_0 = @input.peek(1)

          if (look_77_0 == RIGHT_SHIFT || look_77_0 == LEFT_SHIFT) 
            alt_77 = 1

          end
          case alt_77
          when 1
            # at line 391:26: ( LEFT_SHIFT | RIGHT_SHIFT ) arith_expr
            set266 = @input.look
            if @input.peek(1) == RIGHT_SHIFT || @input.peek(1) == LEFT_SHIFT
              @input.consume
              if @state.backtracking == 0
                @adaptor.add_child(root_0, @adaptor.create_with_payload!(set266))
              end
              @state.error_recovery = false
            else
              @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

              mse = MismatchedSet(nil)
              raise mse
            end


            @state.following.push(TOKENS_FOLLOWING_arith_expr_IN_shift_expr_2869)
            arith_expr267 = arith_expr
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, arith_expr267.tree)
            end

          else
            break #loop 77
          end
        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 61)

      end
      
      return return_value
    end

    ArithExprReturnValue = define_return_scope 

    # parser rule arith_expr
    # 
    # (in samples/Python.g)
    # 394:1: arith_expr : term ( ( PLUS | MINUS ) term )* ;
    def arith_expr
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 62)
      return_value = ArithExprReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      set269 = nil
      term268 = nil
      term270 = nil

      tree_for_set269 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 394:13: term ( ( PLUS | MINUS ) term )*
        @state.following.push(TOKENS_FOLLOWING_term_IN_arith_expr_2890)
        term268 = term
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, term268.tree)
        end
        # at line 394:18: ( ( PLUS | MINUS ) term )*
        loop do  #loop 78
          alt_78 = 2
          look_78_0 = @input.peek(1)

          if (look_78_0.between?(PLUS, MINUS)) 
            alt_78 = 1

          end
          case alt_78
          when 1
            # at line 394:19: ( PLUS | MINUS ) term
            set269 = @input.look
            if @input.peek(1).between?(PLUS, MINUS)
              @input.consume
              if @state.backtracking == 0
                @adaptor.add_child(root_0, @adaptor.create_with_payload!(set269))
              end
              @state.error_recovery = false
            else
              @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

              mse = MismatchedSet(nil)
              raise mse
            end


            @state.following.push(TOKENS_FOLLOWING_term_IN_arith_expr_2899)
            term270 = term
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, term270.tree)
            end

          else
            break #loop 78
          end
        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 62)

      end
      
      return return_value
    end

    TermReturnValue = define_return_scope 

    # parser rule term
    # 
    # (in samples/Python.g)
    # 397:1: term : factor ( ( STAR | SLASH | PERCENT | DOUBLE_SLASH ) factor )* ;
    def term
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 63)
      return_value = TermReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      set272 = nil
      factor271 = nil
      factor273 = nil

      tree_for_set272 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 397:8: factor ( ( STAR | SLASH | PERCENT | DOUBLE_SLASH ) factor )*
        @state.following.push(TOKENS_FOLLOWING_factor_IN_term_2920)
        factor271 = factor
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, factor271.tree)
        end
        # at line 397:15: ( ( STAR | SLASH | PERCENT | DOUBLE_SLASH ) factor )*
        loop do  #loop 79
          alt_79 = 2
          look_79_0 = @input.peek(1)

          if (look_79_0 == STAR || look_79_0.between?(SLASH, DOUBLE_SLASH)) 
            alt_79 = 1

          end
          case alt_79
          when 1
            # at line 397:16: ( STAR | SLASH | PERCENT | DOUBLE_SLASH ) factor
            set272 = @input.look
            if @input.peek(1) == STAR || @input.peek(1).between?(SLASH, DOUBLE_SLASH)
              @input.consume
              if @state.backtracking == 0
                @adaptor.add_child(root_0, @adaptor.create_with_payload!(set272))
              end
              @state.error_recovery = false
            else
              @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

              mse = MismatchedSet(nil)
              raise mse
            end


            @state.following.push(TOKENS_FOLLOWING_factor_IN_term_2940)
            factor273 = factor
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, factor273.tree)
            end

          else
            break #loop 79
          end
        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 63)

      end
      
      return return_value
    end

    FactorReturnValue = define_return_scope 

    # parser rule factor
    # 
    # (in samples/Python.g)
    # 400:1: factor : ( PLUS factor | MINUS factor | TILDE factor | power );
    def factor
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 64)
      return_value = FactorReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __PLUS274__ = nil
      __MINUS276__ = nil
      __TILDE278__ = nil
      factor275 = nil
      factor277 = nil
      factor279 = nil
      power280 = nil

      tree_for_PLUS274 = nil
      tree_for_MINUS276 = nil
      tree_for_TILDE278 = nil

      begin
        # at line 400:8: ( PLUS factor | MINUS factor | TILDE factor | power )
        alt_80 = 4
        case look_80 = @input.peek(1)
        when PLUS then alt_80 = 1
        when MINUS then alt_80 = 2
        when TILDE then alt_80 = 3
        when LPAREN, NAME, LBRACK, LCURLY, BACKQUOTE, INT, LONGINT, FLOAT, COMPLEX, STRING then alt_80 = 4
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          nvae = NoViableAlternative("", 80, 0)
          raise nvae
        end
        case alt_80
        when 1
          root_0 = @adaptor.create_flat_list!


          # at line 400:10: PLUS factor
          __PLUS274__ = match(PLUS, TOKENS_FOLLOWING_PLUS_IN_factor_2956)
          if @state.backtracking == 0

            tree_for_PLUS274 = @adaptor.create_with_payload!(__PLUS274__)
            @adaptor.add_child(root_0, tree_for_PLUS274)

          end
          @state.following.push(TOKENS_FOLLOWING_factor_IN_factor_2958)
          factor275 = factor
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, factor275.tree)
          end

        when 2
          root_0 = @adaptor.create_flat_list!


          # at line 401:10: MINUS factor
          __MINUS276__ = match(MINUS, TOKENS_FOLLOWING_MINUS_IN_factor_2969)
          if @state.backtracking == 0

            tree_for_MINUS276 = @adaptor.create_with_payload!(__MINUS276__)
            @adaptor.add_child(root_0, tree_for_MINUS276)

          end
          @state.following.push(TOKENS_FOLLOWING_factor_IN_factor_2971)
          factor277 = factor
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, factor277.tree)
          end

        when 3
          root_0 = @adaptor.create_flat_list!


          # at line 402:10: TILDE factor
          __TILDE278__ = match(TILDE, TOKENS_FOLLOWING_TILDE_IN_factor_2982)
          if @state.backtracking == 0

            tree_for_TILDE278 = @adaptor.create_with_payload!(__TILDE278__)
            @adaptor.add_child(root_0, tree_for_TILDE278)

          end
          @state.following.push(TOKENS_FOLLOWING_factor_IN_factor_2984)
          factor279 = factor
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, factor279.tree)
          end

        when 4
          root_0 = @adaptor.create_flat_list!


          # at line 403:10: power
          @state.following.push(TOKENS_FOLLOWING_power_IN_factor_2995)
          power280 = power
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, power280.tree)
          end

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 64)

      end
      
      return return_value
    end

    PowerReturnValue = define_return_scope 

    # parser rule power
    # 
    # (in samples/Python.g)
    # 406:1: power : atom ( trailer )* ( options {greedy=true; } : DOUBLE_STAR factor )? ;
    def power
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 65)
      return_value = PowerReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __DOUBLE_STAR283__ = nil
      atom281 = nil
      trailer282 = nil
      factor284 = nil

      tree_for_DOUBLE_STAR283 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 406:9: atom ( trailer )* ( options {greedy=true; } : DOUBLE_STAR factor )?
        @state.following.push(TOKENS_FOLLOWING_atom_IN_power_3011)
        atom281 = atom
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, atom281.tree)
        end
        # at line 406:14: ( trailer )*
        loop do  #loop 81
          alt_81 = 2
          look_81_0 = @input.peek(1)

          if (look_81_0 == LPAREN || look_81_0 == DOT || look_81_0 == LBRACK) 
            alt_81 = 1

          end
          case alt_81
          when 1
            # at line 406:15: trailer
            @state.following.push(TOKENS_FOLLOWING_trailer_IN_power_3014)
            trailer282 = trailer
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, trailer282.tree)
            end

          else
            break #loop 81
          end
        end
        # at line 406:25: ( options {greedy=true; } : DOUBLE_STAR factor )?
        alt_82 = 2
        look_82_0 = @input.peek(1)

        if (look_82_0 == DOUBLE_STAR) 
          alt_82 = 1
        end
        case alt_82
        when 1
          # at line 406:49: DOUBLE_STAR factor
          __DOUBLE_STAR283__ = match(DOUBLE_STAR, TOKENS_FOLLOWING_DOUBLE_STAR_IN_power_3026)
          if @state.backtracking == 0

            tree_for_DOUBLE_STAR283 = @adaptor.create_with_payload!(__DOUBLE_STAR283__)
            @adaptor.add_child(root_0, tree_for_DOUBLE_STAR283)

          end
          @state.following.push(TOKENS_FOLLOWING_factor_IN_power_3028)
          factor284 = factor
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, factor284.tree)
          end

        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 65)

      end
      
      return return_value
    end

    AtomReturnValue = define_return_scope 

    # parser rule atom
    # 
    # (in samples/Python.g)
    # 409:1: atom : ( LPAREN ( yield_expr | testlist_gexp )? RPAREN | LBRACK ( list_maker )? RBRACK | LCURLY ( dict_maker )? RCURLY | BACKQUOTE test_list BACKQUOTE | NAME | INT | LONGINT | FLOAT | COMPLEX | ( STRING )+ );
    def atom
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 66)
      return_value = AtomReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __LPAREN285__ = nil
      __RPAREN288__ = nil
      __LBRACK289__ = nil
      __RBRACK291__ = nil
      __LCURLY292__ = nil
      __RCURLY294__ = nil
      __BACKQUOTE295__ = nil
      __BACKQUOTE297__ = nil
      __NAME298__ = nil
      __INT299__ = nil
      __LONGINT300__ = nil
      __FLOAT301__ = nil
      __COMPLEX302__ = nil
      __STRING303__ = nil
      yield_expr286 = nil
      testlist_gexp287 = nil
      list_maker290 = nil
      dict_maker293 = nil
      test_list296 = nil

      tree_for_LPAREN285 = nil
      tree_for_RPAREN288 = nil
      tree_for_LBRACK289 = nil
      tree_for_RBRACK291 = nil
      tree_for_LCURLY292 = nil
      tree_for_RCURLY294 = nil
      tree_for_BACKQUOTE295 = nil
      tree_for_BACKQUOTE297 = nil
      tree_for_NAME298 = nil
      tree_for_INT299 = nil
      tree_for_LONGINT300 = nil
      tree_for_FLOAT301 = nil
      tree_for_COMPLEX302 = nil
      tree_for_STRING303 = nil

      begin
        # at line 409:6: ( LPAREN ( yield_expr | testlist_gexp )? RPAREN | LBRACK ( list_maker )? RBRACK | LCURLY ( dict_maker )? RCURLY | BACKQUOTE test_list BACKQUOTE | NAME | INT | LONGINT | FLOAT | COMPLEX | ( STRING )+ )
        alt_87 = 10
        case look_87 = @input.peek(1)
        when LPAREN then alt_87 = 1
        when LBRACK then alt_87 = 2
        when LCURLY then alt_87 = 3
        when BACKQUOTE then alt_87 = 4
        when NAME then alt_87 = 5
        when INT then alt_87 = 6
        when LONGINT then alt_87 = 7
        when FLOAT then alt_87 = 8
        when COMPLEX then alt_87 = 9
        when STRING then alt_87 = 10
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          nvae = NoViableAlternative("", 87, 0)
          raise nvae
        end
        case alt_87
        when 1
          root_0 = @adaptor.create_flat_list!


          # at line 409:8: LPAREN ( yield_expr | testlist_gexp )? RPAREN
          __LPAREN285__ = match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_atom_3045)
          if @state.backtracking == 0

            tree_for_LPAREN285 = @adaptor.create_with_payload!(__LPAREN285__)
            @adaptor.add_child(root_0, tree_for_LPAREN285)

          end
          # at line 410:8: ( yield_expr | testlist_gexp )?
          alt_83 = 3
          look_83_0 = @input.peek(1)

          if (look_83_0 == T__98) 
            alt_83 = 1
          elsif (look_83_0 == LPAREN || look_83_0 == NAME || look_83_0 == NOT || look_83_0.between?(PLUS, MINUS) || look_83_0.between?(TILDE, LBRACK) || look_83_0 == LCURLY || look_83_0.between?(BACKQUOTE, STRING) || look_83_0 == T__96) 
            alt_83 = 2
          end
          case alt_83
          when 1
            # at line 410:10: yield_expr
            @state.following.push(TOKENS_FOLLOWING_yield_expr_IN_atom_3057)
            yield_expr286 = yield_expr
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, yield_expr286.tree)
            end

          when 2
            # at line 411:10: testlist_gexp
            @state.following.push(TOKENS_FOLLOWING_testlist_gexp_IN_atom_3068)
            testlist_gexp287 = testlist_gexp
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, testlist_gexp287.tree)
            end

          end
          __RPAREN288__ = match(RPAREN, TOKENS_FOLLOWING_RPAREN_IN_atom_3087)
          if @state.backtracking == 0

            tree_for_RPAREN288 = @adaptor.create_with_payload!(__RPAREN288__)
            @adaptor.add_child(root_0, tree_for_RPAREN288)

          end

        when 2
          root_0 = @adaptor.create_flat_list!


          # at line 414:8: LBRACK ( list_maker )? RBRACK
          __LBRACK289__ = match(LBRACK, TOKENS_FOLLOWING_LBRACK_IN_atom_3096)
          if @state.backtracking == 0

            tree_for_LBRACK289 = @adaptor.create_with_payload!(__LBRACK289__)
            @adaptor.add_child(root_0, tree_for_LBRACK289)

          end
          # at line 414:15: ( list_maker )?
          alt_84 = 2
          look_84_0 = @input.peek(1)

          if (look_84_0 == LPAREN || look_84_0 == NAME || look_84_0 == NOT || look_84_0.between?(PLUS, MINUS) || look_84_0.between?(TILDE, LBRACK) || look_84_0 == LCURLY || look_84_0.between?(BACKQUOTE, STRING) || look_84_0 == T__96) 
            alt_84 = 1
          end
          case alt_84
          when 1
            # at line 414:16: list_maker
            @state.following.push(TOKENS_FOLLOWING_list_maker_IN_atom_3099)
            list_maker290 = list_maker
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, list_maker290.tree)
            end

          end
          __RBRACK291__ = match(RBRACK, TOKENS_FOLLOWING_RBRACK_IN_atom_3103)
          if @state.backtracking == 0

            tree_for_RBRACK291 = @adaptor.create_with_payload!(__RBRACK291__)
            @adaptor.add_child(root_0, tree_for_RBRACK291)

          end

        when 3
          root_0 = @adaptor.create_flat_list!


          # at line 415:8: LCURLY ( dict_maker )? RCURLY
          __LCURLY292__ = match(LCURLY, TOKENS_FOLLOWING_LCURLY_IN_atom_3112)
          if @state.backtracking == 0

            tree_for_LCURLY292 = @adaptor.create_with_payload!(__LCURLY292__)
            @adaptor.add_child(root_0, tree_for_LCURLY292)

          end
          # at line 415:15: ( dict_maker )?
          alt_85 = 2
          look_85_0 = @input.peek(1)

          if (look_85_0 == LPAREN || look_85_0 == NAME || look_85_0 == NOT || look_85_0.between?(PLUS, MINUS) || look_85_0.between?(TILDE, LBRACK) || look_85_0 == LCURLY || look_85_0.between?(BACKQUOTE, STRING) || look_85_0 == T__96) 
            alt_85 = 1
          end
          case alt_85
          when 1
            # at line 415:16: dict_maker
            @state.following.push(TOKENS_FOLLOWING_dict_maker_IN_atom_3115)
            dict_maker293 = dict_maker
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, dict_maker293.tree)
            end

          end
          __RCURLY294__ = match(RCURLY, TOKENS_FOLLOWING_RCURLY_IN_atom_3119)
          if @state.backtracking == 0

            tree_for_RCURLY294 = @adaptor.create_with_payload!(__RCURLY294__)
            @adaptor.add_child(root_0, tree_for_RCURLY294)

          end

        when 4
          root_0 = @adaptor.create_flat_list!


          # at line 416:8: BACKQUOTE test_list BACKQUOTE
          __BACKQUOTE295__ = match(BACKQUOTE, TOKENS_FOLLOWING_BACKQUOTE_IN_atom_3128)
          if @state.backtracking == 0

            tree_for_BACKQUOTE295 = @adaptor.create_with_payload!(__BACKQUOTE295__)
            @adaptor.add_child(root_0, tree_for_BACKQUOTE295)

          end
          @state.following.push(TOKENS_FOLLOWING_test_list_IN_atom_3130)
          test_list296 = test_list
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, test_list296.tree)
          end
          __BACKQUOTE297__ = match(BACKQUOTE, TOKENS_FOLLOWING_BACKQUOTE_IN_atom_3132)
          if @state.backtracking == 0

            tree_for_BACKQUOTE297 = @adaptor.create_with_payload!(__BACKQUOTE297__)
            @adaptor.add_child(root_0, tree_for_BACKQUOTE297)

          end

        when 5
          root_0 = @adaptor.create_flat_list!


          # at line 417:8: NAME
          __NAME298__ = match(NAME, TOKENS_FOLLOWING_NAME_IN_atom_3141)
          if @state.backtracking == 0

            tree_for_NAME298 = @adaptor.create_with_payload!(__NAME298__)
            @adaptor.add_child(root_0, tree_for_NAME298)

          end

        when 6
          root_0 = @adaptor.create_flat_list!


          # at line 418:8: INT
          __INT299__ = match(INT, TOKENS_FOLLOWING_INT_IN_atom_3150)
          if @state.backtracking == 0

            tree_for_INT299 = @adaptor.create_with_payload!(__INT299__)
            @adaptor.add_child(root_0, tree_for_INT299)

          end

        when 7
          root_0 = @adaptor.create_flat_list!


          # at line 419:8: LONGINT
          __LONGINT300__ = match(LONGINT, TOKENS_FOLLOWING_LONGINT_IN_atom_3159)
          if @state.backtracking == 0

            tree_for_LONGINT300 = @adaptor.create_with_payload!(__LONGINT300__)
            @adaptor.add_child(root_0, tree_for_LONGINT300)

          end

        when 8
          root_0 = @adaptor.create_flat_list!


          # at line 420:8: FLOAT
          __FLOAT301__ = match(FLOAT, TOKENS_FOLLOWING_FLOAT_IN_atom_3168)
          if @state.backtracking == 0

            tree_for_FLOAT301 = @adaptor.create_with_payload!(__FLOAT301__)
            @adaptor.add_child(root_0, tree_for_FLOAT301)

          end

        when 9
          root_0 = @adaptor.create_flat_list!


          # at line 421:8: COMPLEX
          __COMPLEX302__ = match(COMPLEX, TOKENS_FOLLOWING_COMPLEX_IN_atom_3177)
          if @state.backtracking == 0

            tree_for_COMPLEX302 = @adaptor.create_with_payload!(__COMPLEX302__)
            @adaptor.add_child(root_0, tree_for_COMPLEX302)

          end

        when 10
          root_0 = @adaptor.create_flat_list!


          # at line 422:8: ( STRING )+
          # at file 422:8: ( STRING )+
          match_count_86 = 0
          loop do
            alt_86 = 2
            look_86_0 = @input.peek(1)

            if (look_86_0 == STRING) 
              alt_86 = 1

            end
            case alt_86
            when 1
              # at line 422:9: STRING
              __STRING303__ = match(STRING, TOKENS_FOLLOWING_STRING_IN_atom_3187)
              if @state.backtracking == 0

                tree_for_STRING303 = @adaptor.create_with_payload!(__STRING303__)
                @adaptor.add_child(root_0, tree_for_STRING303)

              end

            else
              match_count_86 > 0 and break
              @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

              eee = EarlyExit(86)


              raise eee
            end
            match_count_86 += 1
          end


        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 66)

      end
      
      return return_value
    end

    ListMakerReturnValue = define_return_scope 

    # parser rule list_maker
    # 
    # (in samples/Python.g)
    # 425:1: list_maker : test ( list_for | ( options {greedy=true; } : COMMA test )* ) ( COMMA )? ;
    def list_maker
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 67)
      return_value = ListMakerReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __COMMA306__ = nil
      __COMMA308__ = nil
      test304 = nil
      list_for305 = nil
      test307 = nil

      tree_for_COMMA306 = nil
      tree_for_COMMA308 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 425:14: test ( list_for | ( options {greedy=true; } : COMMA test )* ) ( COMMA )?
        @state.following.push(TOKENS_FOLLOWING_test_IN_list_maker_3203)
        test304 = test
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, test304.tree)
        end
        # at line 426:13: ( list_for | ( options {greedy=true; } : COMMA test )* )
        alt_89 = 2
        look_89_0 = @input.peek(1)

        if (look_89_0 == T__90) 
          alt_89 = 1
        elsif (look_89_0 == COMMA || look_89_0 == RBRACK) 
          alt_89 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 89, 0)
          raise nvae
        end
        case alt_89
        when 1
          # at line 426:15: list_for
          @state.following.push(TOKENS_FOLLOWING_list_for_IN_list_maker_3220)
          list_for305 = list_for
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, list_for305.tree)
          end

        when 2
          # at line 427:15: ( options {greedy=true; } : COMMA test )*
          # at line 427:15: ( options {greedy=true; } : COMMA test )*
          loop do  #loop 88
            alt_88 = 2
            look_88_0 = @input.peek(1)

            if (look_88_0 == COMMA) 
              look_88_1 = @input.peek(2)

              if (look_88_1 == LPAREN || look_88_1 == NAME || look_88_1 == NOT || look_88_1.between?(PLUS, MINUS) || look_88_1.between?(TILDE, LBRACK) || look_88_1 == LCURLY || look_88_1.between?(BACKQUOTE, STRING) || look_88_1 == T__96) 
                alt_88 = 1

              end

            end
            case alt_88
            when 1
              # at line 427:39: COMMA test
              __COMMA306__ = match(COMMA, TOKENS_FOLLOWING_COMMA_IN_list_maker_3244)
              if @state.backtracking == 0

                tree_for_COMMA306 = @adaptor.create_with_payload!(__COMMA306__)
                @adaptor.add_child(root_0, tree_for_COMMA306)

              end
              @state.following.push(TOKENS_FOLLOWING_test_IN_list_maker_3246)
              test307 = test
              @state.following.pop
              if @state.backtracking == 0
                @adaptor.add_child(root_0, test307.tree)
              end

            else
              break #loop 88
            end
          end

        end
        # at line 428:15: ( COMMA )?
        alt_90 = 2
        look_90_0 = @input.peek(1)

        if (look_90_0 == COMMA) 
          alt_90 = 1
        end
        case alt_90
        when 1
          # at line 428:16: COMMA
          __COMMA308__ = match(COMMA, TOKENS_FOLLOWING_COMMA_IN_list_maker_3265)
          if @state.backtracking == 0

            tree_for_COMMA308 = @adaptor.create_with_payload!(__COMMA308__)
            @adaptor.add_child(root_0, tree_for_COMMA308)

          end

        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 67)

      end
      
      return return_value
    end

    TestlistGexpReturnValue = define_return_scope 

    # parser rule testlist_gexp
    # 
    # (in samples/Python.g)
    # 431:1: testlist_gexp : test ( ( options {k=2; } : COMMA test )* ( COMMA )? | gen_for ) ;
    def testlist_gexp
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 68)
      return_value = TestlistGexpReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __COMMA310__ = nil
      __COMMA312__ = nil
      test309 = nil
      test311 = nil
      gen_for313 = nil

      tree_for_COMMA310 = nil
      tree_for_COMMA312 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 432:7: test ( ( options {k=2; } : COMMA test )* ( COMMA )? | gen_for )
        @state.following.push(TOKENS_FOLLOWING_test_IN_testlist_gexp_3290)
        test309 = test
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, test309.tree)
        end
        # at line 432:12: ( ( options {k=2; } : COMMA test )* ( COMMA )? | gen_for )
        alt_93 = 2
        look_93_0 = @input.peek(1)

        if (look_93_0 == RPAREN || look_93_0 == COMMA) 
          alt_93 = 1
        elsif (look_93_0 == T__90) 
          alt_93 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 93, 0)
          raise nvae
        end
        case alt_93
        when 1
          # at line 432:14: ( options {k=2; } : COMMA test )* ( COMMA )?
          # at line 432:14: ( options {k=2; } : COMMA test )*
          loop do  #loop 91
            alt_91 = 2
            alt_91 = @dfa91.predict(@input)
            case alt_91
            when 1
              # at line 432:31: COMMA test
              __COMMA310__ = match(COMMA, TOKENS_FOLLOWING_COMMA_IN_testlist_gexp_3303)
              if @state.backtracking == 0

                tree_for_COMMA310 = @adaptor.create_with_payload!(__COMMA310__)
                @adaptor.add_child(root_0, tree_for_COMMA310)

              end
              @state.following.push(TOKENS_FOLLOWING_test_IN_testlist_gexp_3305)
              test311 = test
              @state.following.pop
              if @state.backtracking == 0
                @adaptor.add_child(root_0, test311.tree)
              end

            else
              break #loop 91
            end
          end
          # at line 432:44: ( COMMA )?
          alt_92 = 2
          look_92_0 = @input.peek(1)

          if (look_92_0 == COMMA) 
            alt_92 = 1
          end
          case alt_92
          when 1
            # at line 432:45: COMMA
            __COMMA312__ = match(COMMA, TOKENS_FOLLOWING_COMMA_IN_testlist_gexp_3310)
            if @state.backtracking == 0

              tree_for_COMMA312 = @adaptor.create_with_payload!(__COMMA312__)
              @adaptor.add_child(root_0, tree_for_COMMA312)

            end

          end

        when 2
          # at line 433:14: gen_for
          @state.following.push(TOKENS_FOLLOWING_gen_for_IN_testlist_gexp_3327)
          gen_for313 = gen_for
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, gen_for313.tree)
          end

        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 68)

      end
      
      return return_value
    end

    LambDefReturnValue = define_return_scope 

    # parser rule lamb_def
    # 
    # (in samples/Python.g)
    # 438:1: lamb_def : 'lambda' ( var_args_list )? COLON test ;
    def lamb_def
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 69)
      return_value = LambDefReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal314 = nil
      __COLON316__ = nil
      var_args_list315 = nil
      test317 = nil

      tree_for_string_literal314 = nil
      tree_for_COLON316 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 438:11: 'lambda' ( var_args_list )? COLON test
        string_literal314 = match(T__96, TOKENS_FOLLOWING_T__96_IN_lamb_def_3364)
        if @state.backtracking == 0

          tree_for_string_literal314 = @adaptor.create_with_payload!(string_literal314)
          @adaptor.add_child(root_0, tree_for_string_literal314)

        end
        # at line 438:20: ( var_args_list )?
        alt_94 = 2
        look_94_0 = @input.peek(1)

        if (look_94_0 == LPAREN || look_94_0 == NAME || look_94_0.between?(STAR, DOUBLE_STAR)) 
          alt_94 = 1
        end
        case alt_94
        when 1
          # at line 438:21: var_args_list
          @state.following.push(TOKENS_FOLLOWING_var_args_list_IN_lamb_def_3367)
          var_args_list315 = var_args_list
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, var_args_list315.tree)
          end

        end
        __COLON316__ = match(COLON, TOKENS_FOLLOWING_COLON_IN_lamb_def_3371)
        if @state.backtracking == 0

          tree_for_COLON316 = @adaptor.create_with_payload!(__COLON316__)
          @adaptor.add_child(root_0, tree_for_COLON316)

        end
        @state.following.push(TOKENS_FOLLOWING_test_IN_lamb_def_3373)
        test317 = test
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, test317.tree)
        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 69)

      end
      
      return return_value
    end

    TrailerReturnValue = define_return_scope 

    # parser rule trailer
    # 
    # (in samples/Python.g)
    # 441:1: trailer : ( LPAREN ( arg_list )? RPAREN | LBRACK subscript_list RBRACK | DOT NAME );
    def trailer
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 70)
      return_value = TrailerReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __LPAREN318__ = nil
      __RPAREN320__ = nil
      __LBRACK321__ = nil
      __RBRACK323__ = nil
      __DOT324__ = nil
      __NAME325__ = nil
      arg_list319 = nil
      subscript_list322 = nil

      tree_for_LPAREN318 = nil
      tree_for_RPAREN320 = nil
      tree_for_LBRACK321 = nil
      tree_for_RBRACK323 = nil
      tree_for_DOT324 = nil
      tree_for_NAME325 = nil

      begin
        # at line 441:9: ( LPAREN ( arg_list )? RPAREN | LBRACK subscript_list RBRACK | DOT NAME )
        alt_96 = 3
        case look_96 = @input.peek(1)
        when LPAREN then alt_96 = 1
        when LBRACK then alt_96 = 2
        when DOT then alt_96 = 3
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          nvae = NoViableAlternative("", 96, 0)
          raise nvae
        end
        case alt_96
        when 1
          root_0 = @adaptor.create_flat_list!


          # at line 441:11: LPAREN ( arg_list )? RPAREN
          __LPAREN318__ = match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_trailer_3389)
          if @state.backtracking == 0

            tree_for_LPAREN318 = @adaptor.create_with_payload!(__LPAREN318__)
            @adaptor.add_child(root_0, tree_for_LPAREN318)

          end
          # at line 441:18: ( arg_list )?
          alt_95 = 2
          look_95_0 = @input.peek(1)

          if (look_95_0 == LPAREN || look_95_0 == NAME || look_95_0.between?(STAR, DOUBLE_STAR) || look_95_0 == NOT || look_95_0.between?(PLUS, MINUS) || look_95_0.between?(TILDE, LBRACK) || look_95_0 == LCURLY || look_95_0.between?(BACKQUOTE, STRING) || look_95_0 == T__96) 
            alt_95 = 1
          end
          case alt_95
          when 1
            # at line 441:19: arg_list
            @state.following.push(TOKENS_FOLLOWING_arg_list_IN_trailer_3392)
            arg_list319 = arg_list
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, arg_list319.tree)
            end

          end
          __RPAREN320__ = match(RPAREN, TOKENS_FOLLOWING_RPAREN_IN_trailer_3396)
          if @state.backtracking == 0

            tree_for_RPAREN320 = @adaptor.create_with_payload!(__RPAREN320__)
            @adaptor.add_child(root_0, tree_for_RPAREN320)

          end

        when 2
          root_0 = @adaptor.create_flat_list!


          # at line 442:11: LBRACK subscript_list RBRACK
          __LBRACK321__ = match(LBRACK, TOKENS_FOLLOWING_LBRACK_IN_trailer_3408)
          if @state.backtracking == 0

            tree_for_LBRACK321 = @adaptor.create_with_payload!(__LBRACK321__)
            @adaptor.add_child(root_0, tree_for_LBRACK321)

          end
          @state.following.push(TOKENS_FOLLOWING_subscript_list_IN_trailer_3410)
          subscript_list322 = subscript_list
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, subscript_list322.tree)
          end
          __RBRACK323__ = match(RBRACK, TOKENS_FOLLOWING_RBRACK_IN_trailer_3412)
          if @state.backtracking == 0

            tree_for_RBRACK323 = @adaptor.create_with_payload!(__RBRACK323__)
            @adaptor.add_child(root_0, tree_for_RBRACK323)

          end

        when 3
          root_0 = @adaptor.create_flat_list!


          # at line 443:11: DOT NAME
          __DOT324__ = match(DOT, TOKENS_FOLLOWING_DOT_IN_trailer_3424)
          if @state.backtracking == 0

            tree_for_DOT324 = @adaptor.create_with_payload!(__DOT324__)
            @adaptor.add_child(root_0, tree_for_DOT324)

          end
          __NAME325__ = match(NAME, TOKENS_FOLLOWING_NAME_IN_trailer_3426)
          if @state.backtracking == 0

            tree_for_NAME325 = @adaptor.create_with_payload!(__NAME325__)
            @adaptor.add_child(root_0, tree_for_NAME325)

          end

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 70)

      end
      
      return return_value
    end

    SubscriptListReturnValue = define_return_scope 

    # parser rule subscript_list
    # 
    # (in samples/Python.g)
    # 446:1: subscript_list : subscript ( options {greedy=true; } : COMMA subscript )* ( COMMA )? ;
    def subscript_list
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 71)
      return_value = SubscriptListReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __COMMA327__ = nil
      __COMMA329__ = nil
      subscript326 = nil
      subscript328 = nil

      tree_for_COMMA327 = nil
      tree_for_COMMA329 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 446:18: subscript ( options {greedy=true; } : COMMA subscript )* ( COMMA )?
        @state.following.push(TOKENS_FOLLOWING_subscript_IN_subscript_list_3443)
        subscript326 = subscript
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, subscript326.tree)
        end
        # at line 446:28: ( options {greedy=true; } : COMMA subscript )*
        loop do  #loop 97
          alt_97 = 2
          look_97_0 = @input.peek(1)

          if (look_97_0 == COMMA) 
            look_97_1 = @input.peek(2)

            if (look_97_1 == LPAREN || look_97_1.between?(NAME, COLON) || look_97_1 == NOT || look_97_1.between?(PLUS, MINUS) || look_97_1.between?(TILDE, LBRACK) || look_97_1 == LCURLY || look_97_1.between?(BACKQUOTE, STRING) || look_97_1 == T__96) 
              alt_97 = 1

            end

          end
          case alt_97
          when 1
            # at line 446:52: COMMA subscript
            __COMMA327__ = match(COMMA, TOKENS_FOLLOWING_COMMA_IN_subscript_list_3453)
            if @state.backtracking == 0

              tree_for_COMMA327 = @adaptor.create_with_payload!(__COMMA327__)
              @adaptor.add_child(root_0, tree_for_COMMA327)

            end
            @state.following.push(TOKENS_FOLLOWING_subscript_IN_subscript_list_3455)
            subscript328 = subscript
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, subscript328.tree)
            end

          else
            break #loop 97
          end
        end
        # at line 446:70: ( COMMA )?
        alt_98 = 2
        look_98_0 = @input.peek(1)

        if (look_98_0 == COMMA) 
          alt_98 = 1
        end
        case alt_98
        when 1
          # at line 446:71: COMMA
          __COMMA329__ = match(COMMA, TOKENS_FOLLOWING_COMMA_IN_subscript_list_3460)
          if @state.backtracking == 0

            tree_for_COMMA329 = @adaptor.create_with_payload!(__COMMA329__)
            @adaptor.add_child(root_0, tree_for_COMMA329)

          end

        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 71)

      end
      
      return return_value
    end

    SubscriptReturnValue = define_return_scope 

    # parser rule subscript
    # 
    # (in samples/Python.g)
    # 449:1: subscript : ( DOT DOT DOT | test ( COLON ( test )? ( sliceop )? )? | COLON ( test )? ( sliceop )? );
    def subscript
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 72)
      return_value = SubscriptReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __DOT330__ = nil
      __DOT331__ = nil
      __DOT332__ = nil
      __COLON334__ = nil
      __COLON337__ = nil
      test333 = nil
      test335 = nil
      sliceop336 = nil
      test338 = nil
      sliceop339 = nil

      tree_for_DOT330 = nil
      tree_for_DOT331 = nil
      tree_for_DOT332 = nil
      tree_for_COLON334 = nil
      tree_for_COLON337 = nil

      begin
        # at line 449:11: ( DOT DOT DOT | test ( COLON ( test )? ( sliceop )? )? | COLON ( test )? ( sliceop )? )
        alt_104 = 3
        case look_104 = @input.peek(1)
        when DOT then alt_104 = 1
        when LPAREN, NAME, NOT, PLUS, MINUS, TILDE, LBRACK, LCURLY, BACKQUOTE, INT, LONGINT, FLOAT, COMPLEX, STRING, T__96 then alt_104 = 2
        when COLON then alt_104 = 3
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          nvae = NoViableAlternative("", 104, 0)
          raise nvae
        end
        case alt_104
        when 1
          root_0 = @adaptor.create_flat_list!


          # at line 449:13: DOT DOT DOT
          __DOT330__ = match(DOT, TOKENS_FOLLOWING_DOT_IN_subscript_3485)
          if @state.backtracking == 0

            tree_for_DOT330 = @adaptor.create_with_payload!(__DOT330__)
            @adaptor.add_child(root_0, tree_for_DOT330)

          end
          __DOT331__ = match(DOT, TOKENS_FOLLOWING_DOT_IN_subscript_3487)
          if @state.backtracking == 0

            tree_for_DOT331 = @adaptor.create_with_payload!(__DOT331__)
            @adaptor.add_child(root_0, tree_for_DOT331)

          end
          __DOT332__ = match(DOT, TOKENS_FOLLOWING_DOT_IN_subscript_3489)
          if @state.backtracking == 0

            tree_for_DOT332 = @adaptor.create_with_payload!(__DOT332__)
            @adaptor.add_child(root_0, tree_for_DOT332)

          end

        when 2
          root_0 = @adaptor.create_flat_list!


          # at line 450:13: test ( COLON ( test )? ( sliceop )? )?
          @state.following.push(TOKENS_FOLLOWING_test_IN_subscript_3503)
          test333 = test
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, test333.tree)
          end
          # at line 450:18: ( COLON ( test )? ( sliceop )? )?
          alt_101 = 2
          look_101_0 = @input.peek(1)

          if (look_101_0 == COLON) 
            alt_101 = 1
          end
          case alt_101
          when 1
            # at line 450:19: COLON ( test )? ( sliceop )?
            __COLON334__ = match(COLON, TOKENS_FOLLOWING_COLON_IN_subscript_3506)
            if @state.backtracking == 0

              tree_for_COLON334 = @adaptor.create_with_payload!(__COLON334__)
              @adaptor.add_child(root_0, tree_for_COLON334)

            end
            # at line 450:25: ( test )?
            alt_99 = 2
            look_99_0 = @input.peek(1)

            if (look_99_0 == LPAREN || look_99_0 == NAME || look_99_0 == NOT || look_99_0.between?(PLUS, MINUS) || look_99_0.between?(TILDE, LBRACK) || look_99_0 == LCURLY || look_99_0.between?(BACKQUOTE, STRING) || look_99_0 == T__96) 
              alt_99 = 1
            end
            case alt_99
            when 1
              # at line 450:26: test
              @state.following.push(TOKENS_FOLLOWING_test_IN_subscript_3509)
              test335 = test
              @state.following.pop
              if @state.backtracking == 0
                @adaptor.add_child(root_0, test335.tree)
              end

            end
            # at line 450:33: ( sliceop )?
            alt_100 = 2
            look_100_0 = @input.peek(1)

            if (look_100_0 == COLON) 
              alt_100 = 1
            end
            case alt_100
            when 1
              # at line 450:34: sliceop
              @state.following.push(TOKENS_FOLLOWING_sliceop_IN_subscript_3514)
              sliceop336 = sliceop
              @state.following.pop
              if @state.backtracking == 0
                @adaptor.add_child(root_0, sliceop336.tree)
              end

            end

          end

        when 3
          root_0 = @adaptor.create_flat_list!


          # at line 451:13: COLON ( test )? ( sliceop )?
          __COLON337__ = match(COLON, TOKENS_FOLLOWING_COLON_IN_subscript_3532)
          if @state.backtracking == 0

            tree_for_COLON337 = @adaptor.create_with_payload!(__COLON337__)
            @adaptor.add_child(root_0, tree_for_COLON337)

          end
          # at line 451:19: ( test )?
          alt_102 = 2
          look_102_0 = @input.peek(1)

          if (look_102_0 == LPAREN || look_102_0 == NAME || look_102_0 == NOT || look_102_0.between?(PLUS, MINUS) || look_102_0.between?(TILDE, LBRACK) || look_102_0 == LCURLY || look_102_0.between?(BACKQUOTE, STRING) || look_102_0 == T__96) 
            alt_102 = 1
          end
          case alt_102
          when 1
            # at line 451:20: test
            @state.following.push(TOKENS_FOLLOWING_test_IN_subscript_3535)
            test338 = test
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, test338.tree)
            end

          end
          # at line 451:27: ( sliceop )?
          alt_103 = 2
          look_103_0 = @input.peek(1)

          if (look_103_0 == COLON) 
            alt_103 = 1
          end
          case alt_103
          when 1
            # at line 451:28: sliceop
            @state.following.push(TOKENS_FOLLOWING_sliceop_IN_subscript_3540)
            sliceop339 = sliceop
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, sliceop339.tree)
            end

          end

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 72)

      end
      
      return return_value
    end

    SliceopReturnValue = define_return_scope 

    # parser rule sliceop
    # 
    # (in samples/Python.g)
    # 454:1: sliceop : COLON ( test )? ;
    def sliceop
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 73)
      return_value = SliceopReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __COLON340__ = nil
      test341 = nil

      tree_for_COLON340 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 454:11: COLON ( test )?
        __COLON340__ = match(COLON, TOKENS_FOLLOWING_COLON_IN_sliceop_3561)
        if @state.backtracking == 0

          tree_for_COLON340 = @adaptor.create_with_payload!(__COLON340__)
          @adaptor.add_child(root_0, tree_for_COLON340)

        end
        # at line 454:17: ( test )?
        alt_105 = 2
        look_105_0 = @input.peek(1)

        if (look_105_0 == LPAREN || look_105_0 == NAME || look_105_0 == NOT || look_105_0.between?(PLUS, MINUS) || look_105_0.between?(TILDE, LBRACK) || look_105_0 == LCURLY || look_105_0.between?(BACKQUOTE, STRING) || look_105_0 == T__96) 
          alt_105 = 1
        end
        case alt_105
        when 1
          # at line 454:18: test
          @state.following.push(TOKENS_FOLLOWING_test_IN_sliceop_3564)
          test341 = test
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, test341.tree)
          end

        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 73)

      end
      
      return return_value
    end

    ExprlistReturnValue = define_return_scope 

    # parser rule exprlist
    # 
    # (in samples/Python.g)
    # 457:1: exprlist : expr ( options {k=2; } : COMMA expr )* ( COMMA )? ;
    def exprlist
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 74)
      return_value = ExprlistReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __COMMA343__ = nil
      __COMMA345__ = nil
      expr342 = nil
      expr344 = nil

      tree_for_COMMA343 = nil
      tree_for_COMMA345 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 457:12: expr ( options {k=2; } : COMMA expr )* ( COMMA )?
        @state.following.push(TOKENS_FOLLOWING_expr_IN_exprlist_3583)
        expr342 = expr
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, expr342.tree)
        end
        # at line 457:17: ( options {k=2; } : COMMA expr )*
        loop do  #loop 106
          alt_106 = 2
          alt_106 = @dfa106.predict(@input)
          case alt_106
          when 1
            # at line 457:34: COMMA expr
            __COMMA343__ = match(COMMA, TOKENS_FOLLOWING_COMMA_IN_exprlist_3594)
            if @state.backtracking == 0

              tree_for_COMMA343 = @adaptor.create_with_payload!(__COMMA343__)
              @adaptor.add_child(root_0, tree_for_COMMA343)

            end
            @state.following.push(TOKENS_FOLLOWING_expr_IN_exprlist_3596)
            expr344 = expr
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, expr344.tree)
            end

          else
            break #loop 106
          end
        end
        # at line 457:47: ( COMMA )?
        alt_107 = 2
        look_107_0 = @input.peek(1)

        if (look_107_0 == COMMA) 
          alt_107 = 1
        end
        case alt_107
        when 1
          # at line 457:48: COMMA
          __COMMA345__ = match(COMMA, TOKENS_FOLLOWING_COMMA_IN_exprlist_3601)
          if @state.backtracking == 0

            tree_for_COMMA345 = @adaptor.create_with_payload!(__COMMA345__)
            @adaptor.add_child(root_0, tree_for_COMMA345)

          end

        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 74)

      end
      
      return return_value
    end

    TestListReturnValue = define_return_scope 

    # parser rule test_list
    # 
    # (in samples/Python.g)
    # 460:1: test_list : test ( options {k=2; } : COMMA test )* ( COMMA )? ;
    def test_list
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 75)
      return_value = TestListReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __COMMA347__ = nil
      __COMMA349__ = nil
      test346 = nil
      test348 = nil

      tree_for_COMMA347 = nil
      tree_for_COMMA349 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 461:7: test ( options {k=2; } : COMMA test )* ( COMMA )?
        @state.following.push(TOKENS_FOLLOWING_test_IN_test_list_3625)
        test346 = test
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, test346.tree)
        end
        # at line 461:12: ( options {k=2; } : COMMA test )*
        loop do  #loop 108
          alt_108 = 2
          alt_108 = @dfa108.predict(@input)
          case alt_108
          when 1
            # at line 461:29: COMMA test
            __COMMA347__ = match(COMMA, TOKENS_FOLLOWING_COMMA_IN_test_list_3636)
            if @state.backtracking == 0

              tree_for_COMMA347 = @adaptor.create_with_payload!(__COMMA347__)
              @adaptor.add_child(root_0, tree_for_COMMA347)

            end
            @state.following.push(TOKENS_FOLLOWING_test_IN_test_list_3638)
            test348 = test
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, test348.tree)
            end

          else
            break #loop 108
          end
        end
        # at line 461:42: ( COMMA )?
        alt_109 = 2
        look_109_0 = @input.peek(1)

        if (look_109_0 == COMMA) 
          alt_109 = 1
        end
        case alt_109
        when 1
          # at line 461:43: COMMA
          __COMMA349__ = match(COMMA, TOKENS_FOLLOWING_COMMA_IN_test_list_3643)
          if @state.backtracking == 0

            tree_for_COMMA349 = @adaptor.create_with_payload!(__COMMA349__)
            @adaptor.add_child(root_0, tree_for_COMMA349)

          end

        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 75)

      end
      
      return return_value
    end

    DictMakerReturnValue = define_return_scope 

    # parser rule dict_maker
    # 
    # (in samples/Python.g)
    # 464:1: dict_maker : test COLON test ( options {k=2; } : COMMA test COLON test )* ( COMMA )? ;
    def dict_maker
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 76)
      return_value = DictMakerReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __COLON351__ = nil
      __COMMA353__ = nil
      __COLON355__ = nil
      __COMMA357__ = nil
      test350 = nil
      test352 = nil
      test354 = nil
      test356 = nil

      tree_for_COLON351 = nil
      tree_for_COMMA353 = nil
      tree_for_COLON355 = nil
      tree_for_COMMA357 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 464:14: test COLON test ( options {k=2; } : COMMA test COLON test )* ( COMMA )?
        @state.following.push(TOKENS_FOLLOWING_test_IN_dict_maker_3658)
        test350 = test
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, test350.tree)
        end
        __COLON351__ = match(COLON, TOKENS_FOLLOWING_COLON_IN_dict_maker_3660)
        if @state.backtracking == 0

          tree_for_COLON351 = @adaptor.create_with_payload!(__COLON351__)
          @adaptor.add_child(root_0, tree_for_COLON351)

        end
        @state.following.push(TOKENS_FOLLOWING_test_IN_dict_maker_3662)
        test352 = test
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, test352.tree)
        end
        # at line 464:30: ( options {k=2; } : COMMA test COLON test )*
        loop do  #loop 110
          alt_110 = 2
          alt_110 = @dfa110.predict(@input)
          case alt_110
          when 1
            # at line 464:46: COMMA test COLON test
            __COMMA353__ = match(COMMA, TOKENS_FOLLOWING_COMMA_IN_dict_maker_3672)
            if @state.backtracking == 0

              tree_for_COMMA353 = @adaptor.create_with_payload!(__COMMA353__)
              @adaptor.add_child(root_0, tree_for_COMMA353)

            end
            @state.following.push(TOKENS_FOLLOWING_test_IN_dict_maker_3674)
            test354 = test
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, test354.tree)
            end
            __COLON355__ = match(COLON, TOKENS_FOLLOWING_COLON_IN_dict_maker_3676)
            if @state.backtracking == 0

              tree_for_COLON355 = @adaptor.create_with_payload!(__COLON355__)
              @adaptor.add_child(root_0, tree_for_COLON355)

            end
            @state.following.push(TOKENS_FOLLOWING_test_IN_dict_maker_3678)
            test356 = test
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, test356.tree)
            end

          else
            break #loop 110
          end
        end
        # at line 464:70: ( COMMA )?
        alt_111 = 2
        look_111_0 = @input.peek(1)

        if (look_111_0 == COMMA) 
          alt_111 = 1
        end
        case alt_111
        when 1
          # at line 464:71: COMMA
          __COMMA357__ = match(COMMA, TOKENS_FOLLOWING_COMMA_IN_dict_maker_3683)
          if @state.backtracking == 0

            tree_for_COMMA357 = @adaptor.create_with_payload!(__COMMA357__)
            @adaptor.add_child(root_0, tree_for_COMMA357)

          end

        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 76)

      end
      
      return return_value
    end

    ClassDefReturnValue = define_return_scope 

    # parser rule class_def
    # 
    # (in samples/Python.g)
    # 467:1: class_def : 'class' NAME ( LPAREN ( test_list )? RPAREN )? COLON suite ;
    def class_def
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 77)
      return_value = ClassDefReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal358 = nil
      __NAME359__ = nil
      __LPAREN360__ = nil
      __RPAREN362__ = nil
      __COLON363__ = nil
      test_list361 = nil
      suite364 = nil

      tree_for_string_literal358 = nil
      tree_for_NAME359 = nil
      tree_for_LPAREN360 = nil
      tree_for_RPAREN362 = nil
      tree_for_COLON363 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 467:12: 'class' NAME ( LPAREN ( test_list )? RPAREN )? COLON suite
        string_literal358 = match(T__97, TOKENS_FOLLOWING_T__97_IN_class_def_3703)
        if @state.backtracking == 0

          tree_for_string_literal358 = @adaptor.create_with_payload!(string_literal358)
          @adaptor.add_child(root_0, tree_for_string_literal358)

        end
        __NAME359__ = match(NAME, TOKENS_FOLLOWING_NAME_IN_class_def_3705)
        if @state.backtracking == 0

          tree_for_NAME359 = @adaptor.create_with_payload!(__NAME359__)
          @adaptor.add_child(root_0, tree_for_NAME359)

        end
        # at line 467:25: ( LPAREN ( test_list )? RPAREN )?
        alt_113 = 2
        look_113_0 = @input.peek(1)

        if (look_113_0 == LPAREN) 
          alt_113 = 1
        end
        case alt_113
        when 1
          # at line 467:26: LPAREN ( test_list )? RPAREN
          __LPAREN360__ = match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_class_def_3708)
          if @state.backtracking == 0

            tree_for_LPAREN360 = @adaptor.create_with_payload!(__LPAREN360__)
            @adaptor.add_child(root_0, tree_for_LPAREN360)

          end
          # at line 467:33: ( test_list )?
          alt_112 = 2
          look_112_0 = @input.peek(1)

          if (look_112_0 == LPAREN || look_112_0 == NAME || look_112_0 == NOT || look_112_0.between?(PLUS, MINUS) || look_112_0.between?(TILDE, LBRACK) || look_112_0 == LCURLY || look_112_0.between?(BACKQUOTE, STRING) || look_112_0 == T__96) 
            alt_112 = 1
          end
          case alt_112
          when 1
            # at line 467:33: test_list
            @state.following.push(TOKENS_FOLLOWING_test_list_IN_class_def_3710)
            test_list361 = test_list
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, test_list361.tree)
            end

          end
          __RPAREN362__ = match(RPAREN, TOKENS_FOLLOWING_RPAREN_IN_class_def_3713)
          if @state.backtracking == 0

            tree_for_RPAREN362 = @adaptor.create_with_payload!(__RPAREN362__)
            @adaptor.add_child(root_0, tree_for_RPAREN362)

          end

        end
        __COLON363__ = match(COLON, TOKENS_FOLLOWING_COLON_IN_class_def_3717)
        if @state.backtracking == 0

          tree_for_COLON363 = @adaptor.create_with_payload!(__COLON363__)
          @adaptor.add_child(root_0, tree_for_COLON363)

        end
        @state.following.push(TOKENS_FOLLOWING_suite_IN_class_def_3719)
        suite364 = suite
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, suite364.tree)
        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 77)

      end
      
      return return_value
    end

    ArgListReturnValue = define_return_scope 

    # parser rule arg_list
    # 
    # (in samples/Python.g)
    # 470:1: arg_list : ( argument ( COMMA argument )* ( COMMA ( STAR test ( COMMA DOUBLE_STAR test )? | DOUBLE_STAR test )? )? | STAR test ( COMMA DOUBLE_STAR test )? | DOUBLE_STAR test );
    def arg_list
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 78)
      return_value = ArgListReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __COMMA366__ = nil
      __COMMA368__ = nil
      __STAR369__ = nil
      __COMMA371__ = nil
      __DOUBLE_STAR372__ = nil
      __DOUBLE_STAR374__ = nil
      __STAR376__ = nil
      __COMMA378__ = nil
      __DOUBLE_STAR379__ = nil
      __DOUBLE_STAR381__ = nil
      argument365 = nil
      argument367 = nil
      test370 = nil
      test373 = nil
      test375 = nil
      test377 = nil
      test380 = nil
      test382 = nil

      tree_for_COMMA366 = nil
      tree_for_COMMA368 = nil
      tree_for_STAR369 = nil
      tree_for_COMMA371 = nil
      tree_for_DOUBLE_STAR372 = nil
      tree_for_DOUBLE_STAR374 = nil
      tree_for_STAR376 = nil
      tree_for_COMMA378 = nil
      tree_for_DOUBLE_STAR379 = nil
      tree_for_DOUBLE_STAR381 = nil

      begin
        # at line 470:10: ( argument ( COMMA argument )* ( COMMA ( STAR test ( COMMA DOUBLE_STAR test )? | DOUBLE_STAR test )? )? | STAR test ( COMMA DOUBLE_STAR test )? | DOUBLE_STAR test )
        alt_119 = 3
        case look_119 = @input.peek(1)
        when LPAREN, NAME, NOT, PLUS, MINUS, TILDE, LBRACK, LCURLY, BACKQUOTE, INT, LONGINT, FLOAT, COMPLEX, STRING, T__96 then alt_119 = 1
        when STAR then alt_119 = 2
        when DOUBLE_STAR then alt_119 = 3
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          nvae = NoViableAlternative("", 119, 0)
          raise nvae
        end
        case alt_119
        when 1
          root_0 = @adaptor.create_flat_list!


          # at line 470:12: argument ( COMMA argument )* ( COMMA ( STAR test ( COMMA DOUBLE_STAR test )? | DOUBLE_STAR test )? )?
          @state.following.push(TOKENS_FOLLOWING_argument_IN_arg_list_3736)
          argument365 = argument
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, argument365.tree)
          end
          # at line 470:21: ( COMMA argument )*
          loop do  #loop 114
            alt_114 = 2
            look_114_0 = @input.peek(1)

            if (look_114_0 == COMMA) 
              look_114_1 = @input.peek(2)

              if (look_114_1 == LPAREN || look_114_1 == NAME || look_114_1 == NOT || look_114_1.between?(PLUS, MINUS) || look_114_1.between?(TILDE, LBRACK) || look_114_1 == LCURLY || look_114_1.between?(BACKQUOTE, STRING) || look_114_1 == T__96) 
                alt_114 = 1

              end

            end
            case alt_114
            when 1
              # at line 470:22: COMMA argument
              __COMMA366__ = match(COMMA, TOKENS_FOLLOWING_COMMA_IN_arg_list_3739)
              if @state.backtracking == 0

                tree_for_COMMA366 = @adaptor.create_with_payload!(__COMMA366__)
                @adaptor.add_child(root_0, tree_for_COMMA366)

              end
              @state.following.push(TOKENS_FOLLOWING_argument_IN_arg_list_3741)
              argument367 = argument
              @state.following.pop
              if @state.backtracking == 0
                @adaptor.add_child(root_0, argument367.tree)
              end

            else
              break #loop 114
            end
          end
          # at line 471:11: ( COMMA ( STAR test ( COMMA DOUBLE_STAR test )? | DOUBLE_STAR test )? )?
          alt_117 = 2
          look_117_0 = @input.peek(1)

          if (look_117_0 == COMMA) 
            alt_117 = 1
          end
          case alt_117
          when 1
            # at line 471:13: COMMA ( STAR test ( COMMA DOUBLE_STAR test )? | DOUBLE_STAR test )?
            __COMMA368__ = match(COMMA, TOKENS_FOLLOWING_COMMA_IN_arg_list_3757)
            if @state.backtracking == 0

              tree_for_COMMA368 = @adaptor.create_with_payload!(__COMMA368__)
              @adaptor.add_child(root_0, tree_for_COMMA368)

            end
            # at line 472:13: ( STAR test ( COMMA DOUBLE_STAR test )? | DOUBLE_STAR test )?
            alt_116 = 3
            look_116_0 = @input.peek(1)

            if (look_116_0 == STAR) 
              alt_116 = 1
            elsif (look_116_0 == DOUBLE_STAR) 
              alt_116 = 2
            end
            case alt_116
            when 1
              # at line 472:15: STAR test ( COMMA DOUBLE_STAR test )?
              __STAR369__ = match(STAR, TOKENS_FOLLOWING_STAR_IN_arg_list_3773)
              if @state.backtracking == 0

                tree_for_STAR369 = @adaptor.create_with_payload!(__STAR369__)
                @adaptor.add_child(root_0, tree_for_STAR369)

              end
              @state.following.push(TOKENS_FOLLOWING_test_IN_arg_list_3775)
              test370 = test
              @state.following.pop
              if @state.backtracking == 0
                @adaptor.add_child(root_0, test370.tree)
              end
              # at line 472:25: ( COMMA DOUBLE_STAR test )?
              alt_115 = 2
              look_115_0 = @input.peek(1)

              if (look_115_0 == COMMA) 
                alt_115 = 1
              end
              case alt_115
              when 1
                # at line 472:26: COMMA DOUBLE_STAR test
                __COMMA371__ = match(COMMA, TOKENS_FOLLOWING_COMMA_IN_arg_list_3778)
                if @state.backtracking == 0

                  tree_for_COMMA371 = @adaptor.create_with_payload!(__COMMA371__)
                  @adaptor.add_child(root_0, tree_for_COMMA371)

                end
                __DOUBLE_STAR372__ = match(DOUBLE_STAR, TOKENS_FOLLOWING_DOUBLE_STAR_IN_arg_list_3780)
                if @state.backtracking == 0

                  tree_for_DOUBLE_STAR372 = @adaptor.create_with_payload!(__DOUBLE_STAR372__)
                  @adaptor.add_child(root_0, tree_for_DOUBLE_STAR372)

                end
                @state.following.push(TOKENS_FOLLOWING_test_IN_arg_list_3782)
                test373 = test
                @state.following.pop
                if @state.backtracking == 0
                  @adaptor.add_child(root_0, test373.tree)
                end

              end

            when 2
              # at line 473:15: DOUBLE_STAR test
              __DOUBLE_STAR374__ = match(DOUBLE_STAR, TOKENS_FOLLOWING_DOUBLE_STAR_IN_arg_list_3800)
              if @state.backtracking == 0

                tree_for_DOUBLE_STAR374 = @adaptor.create_with_payload!(__DOUBLE_STAR374__)
                @adaptor.add_child(root_0, tree_for_DOUBLE_STAR374)

              end
              @state.following.push(TOKENS_FOLLOWING_test_IN_arg_list_3802)
              test375 = test
              @state.following.pop
              if @state.backtracking == 0
                @adaptor.add_child(root_0, test375.tree)
              end

            end

          end

        when 2
          root_0 = @adaptor.create_flat_list!


          # at line 476:13: STAR test ( COMMA DOUBLE_STAR test )?
          __STAR376__ = match(STAR, TOKENS_FOLLOWING_STAR_IN_arg_list_3844)
          if @state.backtracking == 0

            tree_for_STAR376 = @adaptor.create_with_payload!(__STAR376__)
            @adaptor.add_child(root_0, tree_for_STAR376)

          end
          @state.following.push(TOKENS_FOLLOWING_test_IN_arg_list_3846)
          test377 = test
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, test377.tree)
          end
          # at line 476:23: ( COMMA DOUBLE_STAR test )?
          alt_118 = 2
          look_118_0 = @input.peek(1)

          if (look_118_0 == COMMA) 
            alt_118 = 1
          end
          case alt_118
          when 1
            # at line 476:24: COMMA DOUBLE_STAR test
            __COMMA378__ = match(COMMA, TOKENS_FOLLOWING_COMMA_IN_arg_list_3849)
            if @state.backtracking == 0

              tree_for_COMMA378 = @adaptor.create_with_payload!(__COMMA378__)
              @adaptor.add_child(root_0, tree_for_COMMA378)

            end
            __DOUBLE_STAR379__ = match(DOUBLE_STAR, TOKENS_FOLLOWING_DOUBLE_STAR_IN_arg_list_3851)
            if @state.backtracking == 0

              tree_for_DOUBLE_STAR379 = @adaptor.create_with_payload!(__DOUBLE_STAR379__)
              @adaptor.add_child(root_0, tree_for_DOUBLE_STAR379)

            end
            @state.following.push(TOKENS_FOLLOWING_test_IN_arg_list_3853)
            test380 = test
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, test380.tree)
            end

          end

        when 3
          root_0 = @adaptor.create_flat_list!


          # at line 477:13: DOUBLE_STAR test
          __DOUBLE_STAR381__ = match(DOUBLE_STAR, TOKENS_FOLLOWING_DOUBLE_STAR_IN_arg_list_3869)
          if @state.backtracking == 0

            tree_for_DOUBLE_STAR381 = @adaptor.create_with_payload!(__DOUBLE_STAR381__)
            @adaptor.add_child(root_0, tree_for_DOUBLE_STAR381)

          end
          @state.following.push(TOKENS_FOLLOWING_test_IN_arg_list_3871)
          test382 = test
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, test382.tree)
          end

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 78)

      end
      
      return return_value
    end

    ArgumentReturnValue = define_return_scope 

    # parser rule argument
    # 
    # (in samples/Python.g)
    # 480:1: argument : test ( ASSIGN test | gen_for )? ;
    def argument
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 79)
      return_value = ArgumentReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __ASSIGN384__ = nil
      test383 = nil
      test385 = nil
      gen_for386 = nil

      tree_for_ASSIGN384 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 480:12: test ( ASSIGN test | gen_for )?
        @state.following.push(TOKENS_FOLLOWING_test_IN_argument_3888)
        test383 = test
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, test383.tree)
        end
        # at line 480:17: ( ASSIGN test | gen_for )?
        alt_120 = 3
        look_120_0 = @input.peek(1)

        if (look_120_0 == ASSIGN) 
          alt_120 = 1
        elsif (look_120_0 == T__90) 
          alt_120 = 2
        end
        case alt_120
        when 1
          # at line 480:19: ASSIGN test
          __ASSIGN384__ = match(ASSIGN, TOKENS_FOLLOWING_ASSIGN_IN_argument_3892)
          if @state.backtracking == 0

            tree_for_ASSIGN384 = @adaptor.create_with_payload!(__ASSIGN384__)
            @adaptor.add_child(root_0, tree_for_ASSIGN384)

          end
          @state.following.push(TOKENS_FOLLOWING_test_IN_argument_3894)
          test385 = test
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, test385.tree)
          end

        when 2
          # at line 480:33: gen_for
          @state.following.push(TOKENS_FOLLOWING_gen_for_IN_argument_3898)
          gen_for386 = gen_for
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, gen_for386.tree)
          end

        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 79)

      end
      
      return return_value
    end

    ListIterReturnValue = define_return_scope 

    # parser rule list_iter
    # 
    # (in samples/Python.g)
    # 483:1: list_iter : ( list_for | list_if );
    def list_iter
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 80)
      return_value = ListIterReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      list_for387 = nil
      list_if388 = nil


      begin
        # at line 483:11: ( list_for | list_if )
        alt_121 = 2
        look_121_0 = @input.peek(1)

        if (look_121_0 == T__90) 
          alt_121 = 1
        elsif (look_121_0 == T__86) 
          alt_121 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 121, 0)
          raise nvae
        end
        case alt_121
        when 1
          root_0 = @adaptor.create_flat_list!


          # at line 483:13: list_for
          @state.following.push(TOKENS_FOLLOWING_list_for_IN_list_iter_3918)
          list_for387 = list_for
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, list_for387.tree)
          end

        when 2
          root_0 = @adaptor.create_flat_list!


          # at line 484:13: list_if
          @state.following.push(TOKENS_FOLLOWING_list_if_IN_list_iter_3932)
          list_if388 = list_if
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, list_if388.tree)
          end

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 80)

      end
      
      return return_value
    end

    ListForReturnValue = define_return_scope 

    # parser rule list_for
    # 
    # (in samples/Python.g)
    # 487:1: list_for : 'for' exprlist 'in' test_list ( list_iter )? ;
    def list_for
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 81)
      return_value = ListForReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal389 = nil
      string_literal391 = nil
      exprlist390 = nil
      test_list392 = nil
      list_iter393 = nil

      tree_for_string_literal389 = nil
      tree_for_string_literal391 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 487:12: 'for' exprlist 'in' test_list ( list_iter )?
        string_literal389 = match(T__90, TOKENS_FOLLOWING_T__90_IN_list_for_3951)
        if @state.backtracking == 0

          tree_for_string_literal389 = @adaptor.create_with_payload!(string_literal389)
          @adaptor.add_child(root_0, tree_for_string_literal389)

        end
        @state.following.push(TOKENS_FOLLOWING_exprlist_IN_list_for_3953)
        exprlist390 = exprlist
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, exprlist390.tree)
        end
        string_literal391 = match(T__84, TOKENS_FOLLOWING_T__84_IN_list_for_3955)
        if @state.backtracking == 0

          tree_for_string_literal391 = @adaptor.create_with_payload!(string_literal391)
          @adaptor.add_child(root_0, tree_for_string_literal391)

        end
        @state.following.push(TOKENS_FOLLOWING_test_list_IN_list_for_3957)
        test_list392 = test_list
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, test_list392.tree)
        end
        # at line 487:42: ( list_iter )?
        alt_122 = 2
        look_122_0 = @input.peek(1)

        if (look_122_0 == T__86 || look_122_0 == T__90) 
          alt_122 = 1
        end
        case alt_122
        when 1
          # at line 487:42: list_iter
          @state.following.push(TOKENS_FOLLOWING_list_iter_IN_list_for_3959)
          list_iter393 = list_iter
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, list_iter393.tree)
          end

        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 81)

      end
      
      return return_value
    end

    ListIfReturnValue = define_return_scope 

    # parser rule list_if
    # 
    # (in samples/Python.g)
    # 490:1: list_if : 'if' test ( list_iter )? ;
    def list_if
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 82)
      return_value = ListIfReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal394 = nil
      test395 = nil
      list_iter396 = nil

      tree_for_string_literal394 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 490:11: 'if' test ( list_iter )?
        string_literal394 = match(T__86, TOKENS_FOLLOWING_T__86_IN_list_if_3978)
        if @state.backtracking == 0

          tree_for_string_literal394 = @adaptor.create_with_payload!(string_literal394)
          @adaptor.add_child(root_0, tree_for_string_literal394)

        end
        @state.following.push(TOKENS_FOLLOWING_test_IN_list_if_3980)
        test395 = test
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, test395.tree)
        end
        # at line 490:21: ( list_iter )?
        alt_123 = 2
        look_123_0 = @input.peek(1)

        if (look_123_0 == T__86 || look_123_0 == T__90) 
          alt_123 = 1
        end
        case alt_123
        when 1
          # at line 490:21: list_iter
          @state.following.push(TOKENS_FOLLOWING_list_iter_IN_list_if_3982)
          list_iter396 = list_iter
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, list_iter396.tree)
          end

        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 82)

      end
      
      return return_value
    end

    GenIterReturnValue = define_return_scope 

    # parser rule gen_iter
    # 
    # (in samples/Python.g)
    # 493:1: gen_iter : ( gen_for | gen_if );
    def gen_iter
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 83)
      return_value = GenIterReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      gen_for397 = nil
      gen_if398 = nil


      begin
        # at line 493:9: ( gen_for | gen_if )
        alt_124 = 2
        look_124_0 = @input.peek(1)

        if (look_124_0 == T__90) 
          alt_124 = 1
        elsif (look_124_0 == T__86) 
          alt_124 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 124, 0)
          raise nvae
        end
        case alt_124
        when 1
          root_0 = @adaptor.create_flat_list!


          # at line 493:11: gen_for
          @state.following.push(TOKENS_FOLLOWING_gen_for_IN_gen_iter_3999)
          gen_for397 = gen_for
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, gen_for397.tree)
          end

        when 2
          root_0 = @adaptor.create_flat_list!


          # at line 494:11: gen_if
          @state.following.push(TOKENS_FOLLOWING_gen_if_IN_gen_iter_4011)
          gen_if398 = gen_if
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, gen_if398.tree)
          end

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 83)

      end
      
      return return_value
    end

    GenForReturnValue = define_return_scope 

    # parser rule gen_for
    # 
    # (in samples/Python.g)
    # 497:1: gen_for : 'for' exprlist 'in' or_test ( gen_iter )? ;
    def gen_for
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 84)
      return_value = GenForReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal399 = nil
      string_literal401 = nil
      exprlist400 = nil
      or_test402 = nil
      gen_iter403 = nil

      tree_for_string_literal399 = nil
      tree_for_string_literal401 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 497:10: 'for' exprlist 'in' or_test ( gen_iter )?
        string_literal399 = match(T__90, TOKENS_FOLLOWING_T__90_IN_gen_for_4027)
        if @state.backtracking == 0

          tree_for_string_literal399 = @adaptor.create_with_payload!(string_literal399)
          @adaptor.add_child(root_0, tree_for_string_literal399)

        end
        @state.following.push(TOKENS_FOLLOWING_exprlist_IN_gen_for_4029)
        exprlist400 = exprlist
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, exprlist400.tree)
        end
        string_literal401 = match(T__84, TOKENS_FOLLOWING_T__84_IN_gen_for_4031)
        if @state.backtracking == 0

          tree_for_string_literal401 = @adaptor.create_with_payload!(string_literal401)
          @adaptor.add_child(root_0, tree_for_string_literal401)

        end
        @state.following.push(TOKENS_FOLLOWING_or_test_IN_gen_for_4033)
        or_test402 = or_test
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, or_test402.tree)
        end
        # at line 497:38: ( gen_iter )?
        alt_125 = 2
        look_125_0 = @input.peek(1)

        if (look_125_0 == T__86 || look_125_0 == T__90) 
          alt_125 = 1
        end
        case alt_125
        when 1
          # at line 497:38: gen_iter
          @state.following.push(TOKENS_FOLLOWING_gen_iter_IN_gen_for_4035)
          gen_iter403 = gen_iter
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, gen_iter403.tree)
          end

        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 84)

      end
      
      return return_value
    end

    GenIfReturnValue = define_return_scope 

    # parser rule gen_if
    # 
    # (in samples/Python.g)
    # 500:1: gen_if : 'if' test ( gen_iter )? ;
    def gen_if
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 85)
      return_value = GenIfReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal404 = nil
      test405 = nil
      gen_iter406 = nil

      tree_for_string_literal404 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 500:9: 'if' test ( gen_iter )?
        string_literal404 = match(T__86, TOKENS_FOLLOWING_T__86_IN_gen_if_4051)
        if @state.backtracking == 0

          tree_for_string_literal404 = @adaptor.create_with_payload!(string_literal404)
          @adaptor.add_child(root_0, tree_for_string_literal404)

        end
        @state.following.push(TOKENS_FOLLOWING_test_IN_gen_if_4053)
        test405 = test
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, test405.tree)
        end
        # at line 500:19: ( gen_iter )?
        alt_126 = 2
        look_126_0 = @input.peek(1)

        if (look_126_0 == T__86 || look_126_0 == T__90) 
          alt_126 = 1
        end
        case alt_126
        when 1
          # at line 500:19: gen_iter
          @state.following.push(TOKENS_FOLLOWING_gen_iter_IN_gen_if_4055)
          gen_iter406 = gen_iter
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, gen_iter406.tree)
          end

        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 85)

      end
      
      return return_value
    end

    YieldExprReturnValue = define_return_scope 

    # parser rule yield_expr
    # 
    # (in samples/Python.g)
    # 503:1: yield_expr : 'yield' ( test_list )? -> ^( 'yield' ( test_list )? ) ;
    def yield_expr
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 86)
      return_value = YieldExprReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal407 = nil
      test_list408 = nil

      tree_for_string_literal407 = nil
      stream_T__98 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__98")
      stream_test_list = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule test_list")
      begin
        # at line 503:14: 'yield' ( test_list )?
        string_literal407 = match(T__98, TOKENS_FOLLOWING_T__98_IN_yield_expr_4071) 
        if @state.backtracking == 0
          stream_T__98.add(string_literal407)
        end
        # at line 503:22: ( test_list )?
        alt_127 = 2
        look_127_0 = @input.peek(1)

        if (look_127_0 == LPAREN || look_127_0 == NAME || look_127_0 == NOT || look_127_0.between?(PLUS, MINUS) || look_127_0.between?(TILDE, LBRACK) || look_127_0 == LCURLY || look_127_0.between?(BACKQUOTE, STRING) || look_127_0 == T__96) 
          alt_127 = 1
        end
        case alt_127
        when 1
          # at line 503:22: test_list
          @state.following.push(TOKENS_FOLLOWING_test_list_IN_yield_expr_4073)
          test_list408 = test_list
          @state.following.pop
          if @state.backtracking == 0
            stream_test_list.add(test_list408.tree)
          end

        end
        # AST Rewrite
        # elements: test_list, T__98
        # token labels: 
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 
        if @state.backtracking == 0

          return_value.tree = root_0
          stream_return_value = return_value ? ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule return_value", return_value.tree) :
                                               ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "token return_value", nil)

          root_0 = @adaptor.create_flat_list!
          # 503:33: -> ^( 'yield' ( test_list )? )
          # at line 503:36: ^( 'yield' ( test_list )? )
          root_1 = @adaptor.create_flat_list!
          root_1 = @adaptor.become_root(stream_T__98.next_node, root_1)

          # at line 503:46: ( test_list )?
          if stream_test_list.has_next?
            @adaptor.add_child(root_1, stream_test_list.next_tree)

          end

          stream_test_list.reset();

          @adaptor.add_child(root_0, root_1)



          return_value.tree = root_0

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 86)

      end
      
      return return_value
    end

    # parser rule synpred_1_python! (synpred1_Python)
    # 
    # (in samples/Python.g)
    # 352:7: synpred1_Python : 'if' or_test 'else' ;
    def synpred_1_python!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 87)

      # at line 352:8: 'if' or_test 'else'
      match(T__86, TOKENS_FOLLOWING_T__86_IN_synpred1_Python_2503)
      @state.following.push(TOKENS_FOLLOWING_or_test_IN_synpred1_Python_2505)
      or_test
      @state.following.pop
      match(T__87, TOKENS_FOLLOWING_T__87_IN_synpred1_Python_2507)

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 87)

    end

    # - - - - - - - - - - DFA definitions - - - - - - - - - - -
    class DFA31 < ANTLR3::DFA
      EOT = unpack(21, -1)
      EOF = unpack(21, -1)
      MIN = unpack(2, 7, 19, -1)
      MAX = unpack(1, 18, 1, 96, 19, -1)
      ACCEPT = unpack(2, -1, 1, 2, 3, -1, 1, 1, 14, -1)
      SPECIAL = unpack(21, -1)
      TRANSITION = [
        unpack(1, 2, 6, -1, 1, 1, 3, -1, 1, 2),
        unpack(1, 2, 1, -1, 1, 6, 1, -1, 1, 6, 6, -1, 1, 2, 15, -1, 1, 6, 11, -1, 
                2, 6, 3, -1, 2, 6, 1, -1, 1, 6, 1, -1, 6, 6, 34, -1, 1, 6),
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
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack()
      ].freeze
      
      @decision = 31
      

      def description
        <<-'__dfa_description__'.strip!
          ()* loopback of 242:12: ( options {k=2; } : COMMA test )*
        __dfa_description__
      end
    end
    class DFA41 < ANTLR3::DFA
      EOT = unpack(4, -1)
      EOF = unpack(4, -1)
      MIN = unpack(2, 11, 2, -1)
      MAX = unpack(1, 12, 1, 79, 2, -1)
      ACCEPT = unpack(2, -1, 1, 1, 1, 2)
      SPECIAL = unpack(4, -1)
      TRANSITION = [
        unpack(1, 2, 1, 1),
        unpack(1, 2, 1, 1, 66, -1, 1, 3),
        unpack(),
        unpack()
      ].freeze
      
      @decision = 41
      

      def description
        <<-'__dfa_description__'.strip!
          281:21: ( ( DOT )* dotted_name | ( DOT )+ )
        __dfa_description__
      end
    end
    class DFA67 < ANTLR3::DFA
      EOT = unpack(16, -1)
      EOF = unpack(1, 2, 15, -1)
      MIN = unpack(1, 7, 1, 0, 14, -1)
      MAX = unpack(1, 90, 1, 0, 14, -1)
      ACCEPT = unpack(2, -1, 1, 2, 12, -1, 1, 1)
      SPECIAL = unpack(1, -1, 1, 0, 14, -1)
      TRANSITION = [
        unpack(1, 2, 2, -1, 2, 2, 1, -1, 2, 2, 2, -1, 14, 2, 22, -1, 1, 2, 1, -1, 
               2, 2, 24, -1, 1, 2, 4, -1, 1, 1, 3, -1, 1, 2),
        unpack(1, -1),
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
        unpack(),
        unpack(),
        unpack()
      ].freeze
      
      @decision = 67
      

      def description
        <<-'__dfa_description__'.strip!
          352:5: ( ( 'if' or_test 'else' )=> 'if' or_test 'else' test )?
        __dfa_description__
      end
    end
    class DFA73 < ANTLR3::DFA
      EOT = unpack(13, -1)
      EOF = unpack(13, -1)
      MIN = unpack(1, 34, 9, -1, 1, 9, 2, -1)
      MAX = unpack(1, 95, 9, -1, 1, 61, 2, -1)
      ACCEPT = unpack(1, -1, 1, 1, 1, 2, 1, 3, 1, 4, 1, 5, 1, 6, 1, 7, 1, 8, 1, 
                      9, 1, -1, 1, 11, 1, 10)
      SPECIAL = unpack(13, -1)
      TRANSITION = [
        unpack(1, 9, 1, 1, 1, 2, 1, 3, 1, 4, 1, 5, 1, 6, 1, 7, 42, -1, 1, 8, 10, 
               -1, 1, 10),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(1, 12, 1, -1, 1, 12, 22, -1, 1, 11, 11, -1, 2, 12, 3, -1, 2, 12, 
                1, -1, 1, 12, 1, -1, 6, 12),
        unpack(),
        unpack()
      ].freeze
      
      @decision = 73
      

      def description
        <<-'__dfa_description__'.strip!
          369:1: comp_op : ( LESS | GREATER | EQUAL | GREATER_EQUAL | LESS_EQUAL | ALT_NOT_EQUAL | NOT_EQUAL | 'in' | NOT 'in' | 'is' | 'is' NOT );
        __dfa_description__
      end
    end
    class DFA91 < ANTLR3::DFA
      EOT = unpack(19, -1)
      EOF = unpack(19, -1)
      MIN = unpack(1, 10, 1, 9, 17, -1)
      MAX = unpack(1, 14, 1, 96, 17, -1)
      ACCEPT = unpack(2, -1, 1, 2, 1, -1, 1, 1, 14, -1)
      SPECIAL = unpack(19, -1)
      TRANSITION = [
        unpack(1, 2, 3, -1, 1, 1),
        unpack(1, 4, 1, 2, 1, 4, 22, -1, 1, 4, 11, -1, 2, 4, 3, -1, 2, 4, 1, -1, 
                1, 4, 1, -1, 6, 4, 34, -1, 1, 4),
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
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack()
      ].freeze
      
      @decision = 91
      

      def description
        <<-'__dfa_description__'.strip!
          ()* loopback of 432:14: ( options {k=2; } : COMMA test )*
        __dfa_description__
      end
    end
    class DFA106 < ANTLR3::DFA
      EOT = unpack(21, -1)
      EOF = unpack(21, -1)
      MIN = unpack(2, 7, 19, -1)
      MAX = unpack(2, 84, 19, -1)
      ACCEPT = unpack(2, -1, 1, 2, 2, -1, 1, 1, 15, -1)
      SPECIAL = unpack(21, -1)
      TRANSITION = [
        unpack(1, 2, 6, -1, 1, 1, 3, -1, 1, 2, 65, -1, 1, 2),
        unpack(1, 2, 1, -1, 1, 5, 1, -1, 1, 5, 6, -1, 1, 2, 27, -1, 2, 5, 3, -1, 
                2, 5, 1, -1, 1, 5, 1, -1, 6, 5, 22, -1, 1, 2),
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
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack()
      ].freeze
      
      @decision = 106
      

      def description
        <<-'__dfa_description__'.strip!
          ()* loopback of 457:17: ( options {k=2; } : COMMA expr )*
        __dfa_description__
      end
    end
    class DFA108 < ANTLR3::DFA
      EOT = unpack(39, -1)
      EOF = unpack(2, 2, 37, -1)
      MIN = unpack(2, 7, 37, -1)
      MAX = unpack(1, 90, 1, 96, 37, -1)
      ACCEPT = unpack(2, -1, 1, 2, 10, -1, 1, 1, 6, -1, 1, 1, 18, -1)
      SPECIAL = unpack(39, -1)
      TRANSITION = [
        unpack(1, 2, 2, -1, 1, 2, 2, -1, 1, 2, 1, 1, 2, -1, 14, 2, 22, -1, 1, 2, 
               2, -1, 1, 2, 29, -1, 1, 2, 3, -1, 1, 2),
        unpack(1, 2, 1, -1, 1, 13, 1, 2, 1, 13, 1, -1, 2, 2, 2, -1, 14, 2, 3, -1, 
                1, 13, 11, -1, 2, 13, 3, -1, 2, 13, 1, 2, 1, 13, 1, -1, 1, 20, 5, 
                13, 24, -1, 1, 2, 3, -1, 1, 2, 5, -1, 1, 13),
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
        unpack(),
        unpack(),
        unpack(),
        unpack()
      ].freeze
      
      @decision = 108
      

      def description
        <<-'__dfa_description__'.strip!
          ()* loopback of 461:12: ( options {k=2; } : COMMA test )*
        __dfa_description__
      end
    end
    class DFA110 < ANTLR3::DFA
      EOT = unpack(19, -1)
      EOF = unpack(19, -1)
      MIN = unpack(1, 14, 1, 9, 17, -1)
      MAX = unpack(1, 55, 1, 96, 17, -1)
      ACCEPT = unpack(2, -1, 1, 2, 1, -1, 1, 1, 14, -1)
      SPECIAL = unpack(19, -1)
      TRANSITION = [
        unpack(1, 1, 40, -1, 1, 2),
        unpack(1, 4, 1, -1, 1, 4, 22, -1, 1, 4, 11, -1, 2, 4, 3, -1, 2, 4, 1, -1, 
                1, 4, 1, 2, 6, 4, 34, -1, 1, 4),
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
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack()
      ].freeze
      
      @decision = 110
      

      def description
        <<-'__dfa_description__'.strip!
          ()* loopback of 464:30: ( options {k=2; } : COMMA test COLON test )*
        __dfa_description__
      end
    end


    private

    def initialize_dfas
      super rescue nil
      @dfa31 = DFA31.new(self, 31)
      @dfa41 = DFA41.new(self, 41)
      @dfa67 = DFA67.new(self, 67) do |s|
        case s
        when 0
          look_67_1 = input.peek
          index_67_1 = input.index
          input.rewind
          s = -1
          if (syntactic_predicate?(:synpred_1_python!))
            s = 15
          elsif (true)
            s = 2
          end
           
          input.seek(index_67_1)

        end
        
        if s < 0
          @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
          nva = ANTLR3::Error::NoViableAlternative.new(@dfa67.description, 67, s, input)
          @dfa67.error(nva)
          raise nva
        end
        
        s
      end
      @dfa73 = DFA73.new(self, 73)
      @dfa91 = DFA91.new(self, 91)
      @dfa106 = DFA106.new(self, 106)
      @dfa108 = DFA108.new(self, 108)
      @dfa110 = DFA110.new(self, 110)

    end
    TOKENS_FOLLOWING_NEWLINE_IN_single_input_92 = Set[1]
    TOKENS_FOLLOWING_simple_statement_IN_single_input_109 = Set[1]
    TOKENS_FOLLOWING_compound_statement_IN_single_input_126 = Set[7]
    TOKENS_FOLLOWING_NEWLINE_IN_single_input_128 = Set[1]
    TOKENS_FOLLOWING_NEWLINE_IN_file_input_151 = Set[1, 7, 8, 9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 82, 83, 85, 86, 89, 90, 91, 93, 96, 97, 98]
    TOKENS_FOLLOWING_statement_IN_file_input_155 = Set[1, 7, 8, 9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 82, 83, 85, 86, 89, 90, 91, 93, 96, 97, 98]
    TOKENS_FOLLOWING_NEWLINE_IN_eval_input_187 = Set[7, 9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61, 96]
    TOKENS_FOLLOWING_test_list_IN_eval_input_191 = Set[1, 7]
    TOKENS_FOLLOWING_NEWLINE_IN_eval_input_194 = Set[1, 7]
    TOKENS_FOLLOWING_decorator_IN_decorators_215 = Set[1, 8]
    TOKENS_FOLLOWING_AT_IN_decorator_234 = Set[11]
    TOKENS_FOLLOWING_dotted_attr_IN_decorator_236 = Set[7, 9]
    TOKENS_FOLLOWING_LPAREN_IN_decorator_239 = Set[9, 10, 11, 15, 16, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61, 96]
    TOKENS_FOLLOWING_arg_list_IN_decorator_241 = Set[10]
    TOKENS_FOLLOWING_RPAREN_IN_decorator_244 = Set[7]
    TOKENS_FOLLOWING_NEWLINE_IN_decorator_248 = Set[1]
    TOKENS_FOLLOWING_NAME_IN_dotted_attr_290 = Set[12]
    TOKENS_FOLLOWING_DOT_IN_dotted_attr_293 = Set[11]
    TOKENS_FOLLOWING_NAME_IN_dotted_attr_295 = Set[1, 12]
    TOKENS_FOLLOWING_NAME_IN_dotted_attr_314 = Set[1]
    TOKENS_FOLLOWING_decorators_IN_func_def_327 = Set[71]
    TOKENS_FOLLOWING_T__71_IN_func_def_330 = Set[11]
    TOKENS_FOLLOWING_NAME_IN_func_def_332 = Set[9]
    TOKENS_FOLLOWING_parameters_IN_func_def_334 = Set[13]
    TOKENS_FOLLOWING_COLON_IN_func_def_336 = Set[7, 9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61, 72, 73, 74, 75, 76, 77, 78, 79, 80, 82, 83, 85, 96, 98]
    TOKENS_FOLLOWING_suite_IN_func_def_338 = Set[1]
    TOKENS_FOLLOWING_LPAREN_IN_parameters_378 = Set[9, 10, 11, 15, 16]
    TOKENS_FOLLOWING_var_args_list_IN_parameters_381 = Set[10]
    TOKENS_FOLLOWING_RPAREN_IN_parameters_385 = Set[1]
    TOKENS_FOLLOWING_def_parameter_IN_var_args_list_405 = Set[1, 14]
    TOKENS_FOLLOWING_COMMA_IN_var_args_list_430 = Set[9, 11]
    TOKENS_FOLLOWING_def_parameter_IN_var_args_list_432 = Set[1, 14]
    TOKENS_FOLLOWING_COMMA_IN_var_args_list_451 = Set[1, 15, 16]
    TOKENS_FOLLOWING_STAR_IN_var_args_list_473 = Set[11]
    TOKENS_FOLLOWING_NAME_IN_var_args_list_475 = Set[1, 14]
    TOKENS_FOLLOWING_COMMA_IN_var_args_list_478 = Set[16]
    TOKENS_FOLLOWING_DOUBLE_STAR_IN_var_args_list_480 = Set[11]
    TOKENS_FOLLOWING_NAME_IN_var_args_list_482 = Set[1]
    TOKENS_FOLLOWING_DOUBLE_STAR_IN_var_args_list_506 = Set[11]
    TOKENS_FOLLOWING_NAME_IN_var_args_list_508 = Set[1]
    TOKENS_FOLLOWING_STAR_IN_var_args_list_562 = Set[11]
    TOKENS_FOLLOWING_NAME_IN_var_args_list_564 = Set[1, 14]
    TOKENS_FOLLOWING_COMMA_IN_var_args_list_567 = Set[16]
    TOKENS_FOLLOWING_DOUBLE_STAR_IN_var_args_list_569 = Set[11]
    TOKENS_FOLLOWING_NAME_IN_var_args_list_571 = Set[1]
    TOKENS_FOLLOWING_DOUBLE_STAR_IN_var_args_list_589 = Set[11]
    TOKENS_FOLLOWING_NAME_IN_var_args_list_591 = Set[1]
    TOKENS_FOLLOWING_fp_def_IN_def_parameter_612 = Set[1, 17]
    TOKENS_FOLLOWING_ASSIGN_IN_def_parameter_615 = Set[9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61, 96]
    TOKENS_FOLLOWING_test_IN_def_parameter_617 = Set[1]
    TOKENS_FOLLOWING_NAME_IN_fp_def_641 = Set[1]
    TOKENS_FOLLOWING_LPAREN_IN_fp_def_651 = Set[9, 11]
    TOKENS_FOLLOWING_fp_list_IN_fp_def_653 = Set[10]
    TOKENS_FOLLOWING_RPAREN_IN_fp_def_655 = Set[1]
    TOKENS_FOLLOWING_fp_def_IN_fp_list_670 = Set[1, 14]
    TOKENS_FOLLOWING_COMMA_IN_fp_list_680 = Set[9, 11]
    TOKENS_FOLLOWING_fp_def_IN_fp_list_682 = Set[1, 14]
    TOKENS_FOLLOWING_COMMA_IN_fp_list_687 = Set[1]
    TOKENS_FOLLOWING_simple_statement_IN_statement_710 = Set[1]
    TOKENS_FOLLOWING_compound_statement_IN_statement_719 = Set[1]
    TOKENS_FOLLOWING_small_statement_IN_simple_statement_739 = Set[7, 18]
    TOKENS_FOLLOWING_SEMI_IN_simple_statement_757 = Set[9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61, 72, 73, 74, 75, 76, 77, 78, 79, 80, 82, 83, 85, 96, 98]
    TOKENS_FOLLOWING_small_statement_IN_simple_statement_759 = Set[7, 18]
    TOKENS_FOLLOWING_SEMI_IN_simple_statement_772 = Set[7]
    TOKENS_FOLLOWING_NEWLINE_IN_simple_statement_776 = Set[1]
    TOKENS_FOLLOWING_expr_statement_IN_small_statement_789 = Set[1]
    TOKENS_FOLLOWING_print_statement_IN_small_statement_804 = Set[1]
    TOKENS_FOLLOWING_del_statement_IN_small_statement_819 = Set[1]
    TOKENS_FOLLOWING_pass_statement_IN_small_statement_834 = Set[1]
    TOKENS_FOLLOWING_flow_statement_IN_small_statement_849 = Set[1]
    TOKENS_FOLLOWING_import_statement_IN_small_statement_864 = Set[1]
    TOKENS_FOLLOWING_global_statement_IN_small_statement_879 = Set[1]
    TOKENS_FOLLOWING_exec_statement_IN_small_statement_894 = Set[1]
    TOKENS_FOLLOWING_assert_statement_IN_small_statement_909 = Set[1]
    TOKENS_FOLLOWING_test_list_IN_expr_statement_929 = Set[1, 17, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30]
    TOKENS_FOLLOWING_augmented_assign_IN_expr_statement_945 = Set[75, 76, 77, 78, 98]
    TOKENS_FOLLOWING_yield_expr_IN_expr_statement_947 = Set[1]
    TOKENS_FOLLOWING_augmented_assign_IN_expr_statement_963 = Set[9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61, 96]
    TOKENS_FOLLOWING_test_list_IN_expr_statement_965 = Set[1]
    TOKENS_FOLLOWING_assigns_IN_expr_statement_981 = Set[1]
    TOKENS_FOLLOWING_assign_testlist_IN_assigns_1019 = Set[1, 17]
    TOKENS_FOLLOWING_assign_yield_IN_assigns_1028 = Set[1, 17]
    TOKENS_FOLLOWING_ASSIGN_IN_assign_testlist_1049 = Set[9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61, 96]
    TOKENS_FOLLOWING_test_list_IN_assign_testlist_1051 = Set[1]
    TOKENS_FOLLOWING_ASSIGN_IN_assign_yield_1071 = Set[75, 76, 77, 78, 98]
    TOKENS_FOLLOWING_yield_expr_IN_assign_yield_1073 = Set[1]
    TOKENS_FOLLOWING_set_IN_augmented_assign_0 = Set[1]
    TOKENS_FOLLOWING_T__72_IN_print_statement_1269 = Set[1, 9, 11, 31, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61, 96]
    TOKENS_FOLLOWING_print_list_IN_print_statement_1272 = Set[1]
    TOKENS_FOLLOWING_RIGHT_SHIFT_IN_print_statement_1276 = Set[9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61, 96]
    TOKENS_FOLLOWING_print_list_IN_print_statement_1278 = Set[1]
    TOKENS_FOLLOWING_test_IN_print_list_1308 = Set[1, 14]
    TOKENS_FOLLOWING_COMMA_IN_print_list_1319 = Set[9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61, 96]
    TOKENS_FOLLOWING_test_IN_print_list_1321 = Set[1, 14]
    TOKENS_FOLLOWING_COMMA_IN_print_list_1326 = Set[1]
    TOKENS_FOLLOWING_T__73_IN_del_statement_1342 = Set[9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61]
    TOKENS_FOLLOWING_exprlist_IN_del_statement_1344 = Set[1]
    TOKENS_FOLLOWING_T__74_IN_pass_statement_1362 = Set[1]
    TOKENS_FOLLOWING_break_statement_IN_flow_statement_1381 = Set[1]
    TOKENS_FOLLOWING_continue_statement_IN_flow_statement_1395 = Set[1]
    TOKENS_FOLLOWING_return_statement_IN_flow_statement_1409 = Set[1]
    TOKENS_FOLLOWING_raise_statement_IN_flow_statement_1423 = Set[1]
    TOKENS_FOLLOWING_yield_statement_IN_flow_statement_1437 = Set[1]
    TOKENS_FOLLOWING_T__75_IN_break_statement_1456 = Set[1]
    TOKENS_FOLLOWING_T__76_IN_continue_statement_1476 = Set[1]
    TOKENS_FOLLOWING_T__77_IN_return_statement_1499 = Set[1, 9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61, 96]
    TOKENS_FOLLOWING_test_list_IN_return_statement_1502 = Set[1]
    TOKENS_FOLLOWING_yield_expr_IN_yield_statement_1525 = Set[1]
    TOKENS_FOLLOWING_T__78_IN_raise_statement_1544 = Set[1, 9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61, 96]
    TOKENS_FOLLOWING_test_IN_raise_statement_1547 = Set[1, 14]
    TOKENS_FOLLOWING_COMMA_IN_raise_statement_1550 = Set[9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61, 96]
    TOKENS_FOLLOWING_test_IN_raise_statement_1552 = Set[1, 14]
    TOKENS_FOLLOWING_COMMA_IN_raise_statement_1555 = Set[9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61, 96]
    TOKENS_FOLLOWING_test_IN_raise_statement_1557 = Set[1]
    TOKENS_FOLLOWING_import_name_IN_import_statement_1582 = Set[1]
    TOKENS_FOLLOWING_import_from_IN_import_statement_1598 = Set[1]
    TOKENS_FOLLOWING_T__79_IN_import_name_1619 = Set[11]
    TOKENS_FOLLOWING_dotted_as_names_IN_import_name_1621 = Set[1]
    TOKENS_FOLLOWING_T__80_IN_import_from_1641 = Set[11, 12]
    TOKENS_FOLLOWING_DOT_IN_import_from_1644 = Set[11, 12]
    TOKENS_FOLLOWING_dotted_name_IN_import_from_1647 = Set[79]
    TOKENS_FOLLOWING_DOT_IN_import_from_1651 = Set[12, 79]
    TOKENS_FOLLOWING_T__79_IN_import_from_1655 = Set[9, 11, 15]
    TOKENS_FOLLOWING_STAR_IN_import_from_1672 = Set[1]
    TOKENS_FOLLOWING_import_as_names_IN_import_from_1690 = Set[1]
    TOKENS_FOLLOWING_LPAREN_IN_import_from_1708 = Set[11]
    TOKENS_FOLLOWING_import_as_names_IN_import_from_1710 = Set[10]
    TOKENS_FOLLOWING_RPAREN_IN_import_from_1712 = Set[1]
    TOKENS_FOLLOWING_import_as_name_IN_import_as_names_1748 = Set[1, 14]
    TOKENS_FOLLOWING_COMMA_IN_import_as_names_1751 = Set[11]
    TOKENS_FOLLOWING_import_as_name_IN_import_as_names_1753 = Set[1, 14]
    TOKENS_FOLLOWING_COMMA_IN_import_as_names_1758 = Set[1]
    TOKENS_FOLLOWING_NAME_IN_import_as_name_1785 = Set[1, 81]
    TOKENS_FOLLOWING_T__81_IN_import_as_name_1788 = Set[11]
    TOKENS_FOLLOWING_NAME_IN_import_as_name_1790 = Set[1]
    TOKENS_FOLLOWING_dotted_name_IN_dotted_as_name_1816 = Set[1, 81]
    TOKENS_FOLLOWING_T__81_IN_dotted_as_name_1819 = Set[11]
    TOKENS_FOLLOWING_NAME_IN_dotted_as_name_1821 = Set[1]
    TOKENS_FOLLOWING_dotted_as_name_IN_dotted_as_names_1847 = Set[1, 14]
    TOKENS_FOLLOWING_COMMA_IN_dotted_as_names_1850 = Set[11]
    TOKENS_FOLLOWING_dotted_as_name_IN_dotted_as_names_1852 = Set[1, 14]
    TOKENS_FOLLOWING_NAME_IN_dotted_name_1878 = Set[1, 12]
    TOKENS_FOLLOWING_DOT_IN_dotted_name_1881 = Set[11]
    TOKENS_FOLLOWING_NAME_IN_dotted_name_1883 = Set[1, 12]
    TOKENS_FOLLOWING_T__82_IN_global_statement_1906 = Set[11]
    TOKENS_FOLLOWING_NAME_IN_global_statement_1908 = Set[1, 14]
    TOKENS_FOLLOWING_COMMA_IN_global_statement_1911 = Set[11]
    TOKENS_FOLLOWING_NAME_IN_global_statement_1913 = Set[1, 14]
    TOKENS_FOLLOWING_T__83_IN_exec_statement_1936 = Set[9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61]
    TOKENS_FOLLOWING_expr_IN_exec_statement_1938 = Set[1, 84]
    TOKENS_FOLLOWING_T__84_IN_exec_statement_1941 = Set[9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61, 96]
    TOKENS_FOLLOWING_test_IN_exec_statement_1943 = Set[1, 14]
    TOKENS_FOLLOWING_COMMA_IN_exec_statement_1946 = Set[9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61, 96]
    TOKENS_FOLLOWING_test_IN_exec_statement_1948 = Set[1]
    TOKENS_FOLLOWING_T__85_IN_assert_statement_1971 = Set[9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61, 96]
    TOKENS_FOLLOWING_test_IN_assert_statement_1973 = Set[1, 14]
    TOKENS_FOLLOWING_COMMA_IN_assert_statement_1976 = Set[9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61, 96]
    TOKENS_FOLLOWING_test_IN_assert_statement_1978 = Set[1]
    TOKENS_FOLLOWING_if_statement_IN_compound_statement_2001 = Set[1]
    TOKENS_FOLLOWING_while_statement_IN_compound_statement_2019 = Set[1]
    TOKENS_FOLLOWING_for_statement_IN_compound_statement_2037 = Set[1]
    TOKENS_FOLLOWING_try_statement_IN_compound_statement_2055 = Set[1]
    TOKENS_FOLLOWING_with_statement_IN_compound_statement_2073 = Set[1]
    TOKENS_FOLLOWING_func_def_IN_compound_statement_2091 = Set[1]
    TOKENS_FOLLOWING_class_def_IN_compound_statement_2109 = Set[1]
    TOKENS_FOLLOWING_T__86_IN_if_statement_2131 = Set[9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61, 96]
    TOKENS_FOLLOWING_test_IN_if_statement_2133 = Set[13]
    TOKENS_FOLLOWING_COLON_IN_if_statement_2135 = Set[7, 9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61, 72, 73, 74, 75, 76, 77, 78, 79, 80, 82, 83, 85, 96, 98]
    TOKENS_FOLLOWING_suite_IN_if_statement_2137 = Set[1, 87, 88]
    TOKENS_FOLLOWING_elif_clause_IN_if_statement_2139 = Set[1, 87, 88]
    TOKENS_FOLLOWING_T__87_IN_if_statement_2144 = Set[13]
    TOKENS_FOLLOWING_COLON_IN_if_statement_2146 = Set[7, 9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61, 72, 73, 74, 75, 76, 77, 78, 79, 80, 82, 83, 85, 96, 98]
    TOKENS_FOLLOWING_suite_IN_if_statement_2148 = Set[1]
    TOKENS_FOLLOWING_T__88_IN_elif_clause_2166 = Set[9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61, 96]
    TOKENS_FOLLOWING_test_IN_elif_clause_2168 = Set[13]
    TOKENS_FOLLOWING_COLON_IN_elif_clause_2170 = Set[7, 9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61, 72, 73, 74, 75, 76, 77, 78, 79, 80, 82, 83, 85, 96, 98]
    TOKENS_FOLLOWING_suite_IN_elif_clause_2172 = Set[1]
    TOKENS_FOLLOWING_T__89_IN_while_statement_2193 = Set[9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61, 96]
    TOKENS_FOLLOWING_test_IN_while_statement_2195 = Set[13]
    TOKENS_FOLLOWING_COLON_IN_while_statement_2197 = Set[7, 9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61, 72, 73, 74, 75, 76, 77, 78, 79, 80, 82, 83, 85, 96, 98]
    TOKENS_FOLLOWING_suite_IN_while_statement_2199 = Set[1, 87]
    TOKENS_FOLLOWING_T__87_IN_while_statement_2202 = Set[13]
    TOKENS_FOLLOWING_COLON_IN_while_statement_2204 = Set[7, 9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61, 72, 73, 74, 75, 76, 77, 78, 79, 80, 82, 83, 85, 96, 98]
    TOKENS_FOLLOWING_suite_IN_while_statement_2206 = Set[1]
    TOKENS_FOLLOWING_T__90_IN_for_statement_2228 = Set[9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61]
    TOKENS_FOLLOWING_exprlist_IN_for_statement_2230 = Set[84]
    TOKENS_FOLLOWING_T__84_IN_for_statement_2232 = Set[9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61, 96]
    TOKENS_FOLLOWING_test_list_IN_for_statement_2234 = Set[13]
    TOKENS_FOLLOWING_COLON_IN_for_statement_2236 = Set[7, 9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61, 72, 73, 74, 75, 76, 77, 78, 79, 80, 82, 83, 85, 96, 98]
    TOKENS_FOLLOWING_suite_IN_for_statement_2238 = Set[1, 87]
    TOKENS_FOLLOWING_T__87_IN_for_statement_2241 = Set[13]
    TOKENS_FOLLOWING_COLON_IN_for_statement_2243 = Set[7, 9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61, 72, 73, 74, 75, 76, 77, 78, 79, 80, 82, 83, 85, 96, 98]
    TOKENS_FOLLOWING_suite_IN_for_statement_2245 = Set[1]
    TOKENS_FOLLOWING_T__91_IN_try_statement_2265 = Set[13]
    TOKENS_FOLLOWING_COLON_IN_try_statement_2267 = Set[7, 9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61, 72, 73, 74, 75, 76, 77, 78, 79, 80, 82, 83, 85, 96, 98]
    TOKENS_FOLLOWING_suite_IN_try_statement_2269 = Set[92, 94]
    TOKENS_FOLLOWING_except_clause_IN_try_statement_2284 = Set[1, 87, 92, 94]
    TOKENS_FOLLOWING_T__87_IN_try_statement_2288 = Set[13]
    TOKENS_FOLLOWING_COLON_IN_try_statement_2290 = Set[7, 9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61, 72, 73, 74, 75, 76, 77, 78, 79, 80, 82, 83, 85, 96, 98]
    TOKENS_FOLLOWING_suite_IN_try_statement_2292 = Set[1, 92]
    TOKENS_FOLLOWING_T__92_IN_try_statement_2297 = Set[13]
    TOKENS_FOLLOWING_COLON_IN_try_statement_2299 = Set[7, 9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61, 72, 73, 74, 75, 76, 77, 78, 79, 80, 82, 83, 85, 96, 98]
    TOKENS_FOLLOWING_suite_IN_try_statement_2301 = Set[1]
    TOKENS_FOLLOWING_T__92_IN_try_statement_2318 = Set[13]
    TOKENS_FOLLOWING_COLON_IN_try_statement_2320 = Set[7, 9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61, 72, 73, 74, 75, 76, 77, 78, 79, 80, 82, 83, 85, 96, 98]
    TOKENS_FOLLOWING_suite_IN_try_statement_2322 = Set[1]
    TOKENS_FOLLOWING_T__93_IN_with_statement_2352 = Set[9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61, 96]
    TOKENS_FOLLOWING_test_IN_with_statement_2354 = Set[11, 13, 81]
    TOKENS_FOLLOWING_with_var_IN_with_statement_2357 = Set[13]
    TOKENS_FOLLOWING_COLON_IN_with_statement_2361 = Set[7, 9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61, 72, 73, 74, 75, 76, 77, 78, 79, 80, 82, 83, 85, 96, 98]
    TOKENS_FOLLOWING_suite_IN_with_statement_2363 = Set[1]
    TOKENS_FOLLOWING_set_IN_with_var_2380 = Set[9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61]
    TOKENS_FOLLOWING_expr_IN_with_var_2388 = Set[1]
    TOKENS_FOLLOWING_T__94_IN_except_clause_2405 = Set[9, 11, 13, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61, 96]
    TOKENS_FOLLOWING_test_IN_except_clause_2408 = Set[13, 14]
    TOKENS_FOLLOWING_COMMA_IN_except_clause_2411 = Set[9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61, 96]
    TOKENS_FOLLOWING_test_IN_except_clause_2413 = Set[13]
    TOKENS_FOLLOWING_COLON_IN_except_clause_2419 = Set[7, 9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61, 72, 73, 74, 75, 76, 77, 78, 79, 80, 82, 83, 85, 96, 98]
    TOKENS_FOLLOWING_suite_IN_except_clause_2421 = Set[1]
    TOKENS_FOLLOWING_simple_statement_IN_suite_2444 = Set[1]
    TOKENS_FOLLOWING_NEWLINE_IN_suite_2462 = Set[4]
    TOKENS_FOLLOWING_INDENT_IN_suite_2464 = Set[5, 7, 8, 9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 82, 83, 85, 86, 89, 90, 91, 93, 96, 97, 98]
    TOKENS_FOLLOWING_statement_IN_suite_2467 = Set[5, 7, 8, 9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 82, 83, 85, 86, 89, 90, 91, 93, 96, 97, 98]
    TOKENS_FOLLOWING_DEDENT_IN_suite_2471 = Set[1]
    TOKENS_FOLLOWING_or_test_IN_test_2494 = Set[1, 86]
    TOKENS_FOLLOWING_T__86_IN_test_2512 = Set[9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61]
    TOKENS_FOLLOWING_or_test_IN_test_2514 = Set[87]
    TOKENS_FOLLOWING_T__87_IN_test_2516 = Set[9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61, 96]
    TOKENS_FOLLOWING_test_IN_test_2518 = Set[1]
    TOKENS_FOLLOWING_lamb_def_IN_test_2528 = Set[1]
    TOKENS_FOLLOWING_and_test_IN_or_test_2541 = Set[1, 32]
    TOKENS_FOLLOWING_OR_IN_or_test_2544 = Set[9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61]
    TOKENS_FOLLOWING_and_test_IN_or_test_2546 = Set[1, 32]
    TOKENS_FOLLOWING_not_test_IN_and_test_2565 = Set[1, 33]
    TOKENS_FOLLOWING_AND_IN_and_test_2568 = Set[9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61]
    TOKENS_FOLLOWING_not_test_IN_and_test_2570 = Set[1, 33]
    TOKENS_FOLLOWING_NOT_IN_not_test_2590 = Set[9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61]
    TOKENS_FOLLOWING_not_test_IN_not_test_2592 = Set[1]
    TOKENS_FOLLOWING_comparison_IN_not_test_2605 = Set[1]
    TOKENS_FOLLOWING_expr_IN_comparison_2622 = Set[1, 34, 35, 36, 37, 38, 39, 40, 41, 84, 95]
    TOKENS_FOLLOWING_comp_op_IN_comparison_2625 = Set[9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61]
    TOKENS_FOLLOWING_expr_IN_comparison_2627 = Set[1, 34, 35, 36, 37, 38, 39, 40, 41, 84, 95]
    TOKENS_FOLLOWING_LESS_IN_comp_op_2648 = Set[1]
    TOKENS_FOLLOWING_GREATER_IN_comp_op_2660 = Set[1]
    TOKENS_FOLLOWING_EQUAL_IN_comp_op_2672 = Set[1]
    TOKENS_FOLLOWING_GREATER_EQUAL_IN_comp_op_2684 = Set[1]
    TOKENS_FOLLOWING_LESS_EQUAL_IN_comp_op_2696 = Set[1]
    TOKENS_FOLLOWING_ALT_NOT_EQUAL_IN_comp_op_2708 = Set[1]
    TOKENS_FOLLOWING_NOT_EQUAL_IN_comp_op_2720 = Set[1]
    TOKENS_FOLLOWING_T__84_IN_comp_op_2732 = Set[1]
    TOKENS_FOLLOWING_NOT_IN_comp_op_2744 = Set[84]
    TOKENS_FOLLOWING_T__84_IN_comp_op_2746 = Set[1]
    TOKENS_FOLLOWING_T__95_IN_comp_op_2758 = Set[1]
    TOKENS_FOLLOWING_T__95_IN_comp_op_2770 = Set[34]
    TOKENS_FOLLOWING_NOT_IN_comp_op_2772 = Set[1]
    TOKENS_FOLLOWING_xor_expr_IN_expr_2789 = Set[1, 42]
    TOKENS_FOLLOWING_VBAR_IN_expr_2792 = Set[9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61]
    TOKENS_FOLLOWING_xor_expr_IN_expr_2794 = Set[1, 42]
    TOKENS_FOLLOWING_and_expr_IN_xor_expr_2810 = Set[1, 43]
    TOKENS_FOLLOWING_CIRCUMFLEX_IN_xor_expr_2813 = Set[9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61]
    TOKENS_FOLLOWING_and_expr_IN_xor_expr_2815 = Set[1, 43]
    TOKENS_FOLLOWING_shift_expr_IN_and_expr_2835 = Set[1, 44]
    TOKENS_FOLLOWING_AMPER_IN_and_expr_2838 = Set[9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61]
    TOKENS_FOLLOWING_shift_expr_IN_and_expr_2840 = Set[1, 44]
    TOKENS_FOLLOWING_arith_expr_IN_shift_expr_2860 = Set[1, 31, 45]
    TOKENS_FOLLOWING_set_IN_shift_expr_2863 = Set[9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61]
    TOKENS_FOLLOWING_arith_expr_IN_shift_expr_2869 = Set[1, 31, 45]
    TOKENS_FOLLOWING_term_IN_arith_expr_2890 = Set[1, 46, 47]
    TOKENS_FOLLOWING_set_IN_arith_expr_2893 = Set[9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61]
    TOKENS_FOLLOWING_term_IN_arith_expr_2899 = Set[1, 46, 47]
    TOKENS_FOLLOWING_factor_IN_term_2920 = Set[1, 15, 48, 49, 50]
    TOKENS_FOLLOWING_set_IN_term_2923 = Set[9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61]
    TOKENS_FOLLOWING_factor_IN_term_2940 = Set[1, 15, 48, 49, 50]
    TOKENS_FOLLOWING_PLUS_IN_factor_2956 = Set[9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61]
    TOKENS_FOLLOWING_factor_IN_factor_2958 = Set[1]
    TOKENS_FOLLOWING_MINUS_IN_factor_2969 = Set[9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61]
    TOKENS_FOLLOWING_factor_IN_factor_2971 = Set[1]
    TOKENS_FOLLOWING_TILDE_IN_factor_2982 = Set[9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61]
    TOKENS_FOLLOWING_factor_IN_factor_2984 = Set[1]
    TOKENS_FOLLOWING_power_IN_factor_2995 = Set[1]
    TOKENS_FOLLOWING_atom_IN_power_3011 = Set[1, 9, 12, 16, 52]
    TOKENS_FOLLOWING_trailer_IN_power_3014 = Set[1, 9, 12, 16, 52]
    TOKENS_FOLLOWING_DOUBLE_STAR_IN_power_3026 = Set[9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61]
    TOKENS_FOLLOWING_factor_IN_power_3028 = Set[1]
    TOKENS_FOLLOWING_LPAREN_IN_atom_3045 = Set[9, 10, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61, 75, 76, 77, 78, 96, 98]
    TOKENS_FOLLOWING_yield_expr_IN_atom_3057 = Set[10]
    TOKENS_FOLLOWING_testlist_gexp_IN_atom_3068 = Set[10]
    TOKENS_FOLLOWING_RPAREN_IN_atom_3087 = Set[1]
    TOKENS_FOLLOWING_LBRACK_IN_atom_3096 = Set[9, 11, 34, 46, 47, 51, 52, 53, 54, 56, 57, 58, 59, 60, 61, 96]
    TOKENS_FOLLOWING_list_maker_IN_atom_3099 = Set[53]
    TOKENS_FOLLOWING_RBRACK_IN_atom_3103 = Set[1]
    TOKENS_FOLLOWING_LCURLY_IN_atom_3112 = Set[9, 11, 34, 46, 47, 51, 52, 54, 55, 56, 57, 58, 59, 60, 61, 96]
    TOKENS_FOLLOWING_dict_maker_IN_atom_3115 = Set[55]
    TOKENS_FOLLOWING_RCURLY_IN_atom_3119 = Set[1]
    TOKENS_FOLLOWING_BACKQUOTE_IN_atom_3128 = Set[9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61, 96]
    TOKENS_FOLLOWING_test_list_IN_atom_3130 = Set[56]
    TOKENS_FOLLOWING_BACKQUOTE_IN_atom_3132 = Set[1]
    TOKENS_FOLLOWING_NAME_IN_atom_3141 = Set[1]
    TOKENS_FOLLOWING_INT_IN_atom_3150 = Set[1]
    TOKENS_FOLLOWING_LONGINT_IN_atom_3159 = Set[1]
    TOKENS_FOLLOWING_FLOAT_IN_atom_3168 = Set[1]
    TOKENS_FOLLOWING_COMPLEX_IN_atom_3177 = Set[1]
    TOKENS_FOLLOWING_STRING_IN_atom_3187 = Set[1, 61]
    TOKENS_FOLLOWING_test_IN_list_maker_3203 = Set[1, 14, 90]
    TOKENS_FOLLOWING_list_for_IN_list_maker_3220 = Set[1, 14]
    TOKENS_FOLLOWING_COMMA_IN_list_maker_3244 = Set[9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61, 96]
    TOKENS_FOLLOWING_test_IN_list_maker_3246 = Set[1, 14]
    TOKENS_FOLLOWING_COMMA_IN_list_maker_3265 = Set[1]
    TOKENS_FOLLOWING_test_IN_testlist_gexp_3290 = Set[1, 14, 90]
    TOKENS_FOLLOWING_COMMA_IN_testlist_gexp_3303 = Set[9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61, 96]
    TOKENS_FOLLOWING_test_IN_testlist_gexp_3305 = Set[1, 14]
    TOKENS_FOLLOWING_COMMA_IN_testlist_gexp_3310 = Set[1]
    TOKENS_FOLLOWING_gen_for_IN_testlist_gexp_3327 = Set[1]
    TOKENS_FOLLOWING_T__96_IN_lamb_def_3364 = Set[9, 11, 13, 15, 16]
    TOKENS_FOLLOWING_var_args_list_IN_lamb_def_3367 = Set[13]
    TOKENS_FOLLOWING_COLON_IN_lamb_def_3371 = Set[9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61, 96]
    TOKENS_FOLLOWING_test_IN_lamb_def_3373 = Set[1]
    TOKENS_FOLLOWING_LPAREN_IN_trailer_3389 = Set[9, 10, 11, 15, 16, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61, 96]
    TOKENS_FOLLOWING_arg_list_IN_trailer_3392 = Set[10]
    TOKENS_FOLLOWING_RPAREN_IN_trailer_3396 = Set[1]
    TOKENS_FOLLOWING_LBRACK_IN_trailer_3408 = Set[9, 11, 12, 13, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61, 96]
    TOKENS_FOLLOWING_subscript_list_IN_trailer_3410 = Set[53]
    TOKENS_FOLLOWING_RBRACK_IN_trailer_3412 = Set[1]
    TOKENS_FOLLOWING_DOT_IN_trailer_3424 = Set[11]
    TOKENS_FOLLOWING_NAME_IN_trailer_3426 = Set[1]
    TOKENS_FOLLOWING_subscript_IN_subscript_list_3443 = Set[1, 14]
    TOKENS_FOLLOWING_COMMA_IN_subscript_list_3453 = Set[9, 11, 12, 13, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61, 96]
    TOKENS_FOLLOWING_subscript_IN_subscript_list_3455 = Set[1, 14]
    TOKENS_FOLLOWING_COMMA_IN_subscript_list_3460 = Set[1]
    TOKENS_FOLLOWING_DOT_IN_subscript_3485 = Set[12]
    TOKENS_FOLLOWING_DOT_IN_subscript_3487 = Set[12]
    TOKENS_FOLLOWING_DOT_IN_subscript_3489 = Set[1]
    TOKENS_FOLLOWING_test_IN_subscript_3503 = Set[1, 13]
    TOKENS_FOLLOWING_COLON_IN_subscript_3506 = Set[1, 9, 11, 13, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61, 96]
    TOKENS_FOLLOWING_test_IN_subscript_3509 = Set[1, 13]
    TOKENS_FOLLOWING_sliceop_IN_subscript_3514 = Set[1]
    TOKENS_FOLLOWING_COLON_IN_subscript_3532 = Set[1, 9, 11, 13, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61, 96]
    TOKENS_FOLLOWING_test_IN_subscript_3535 = Set[1, 13]
    TOKENS_FOLLOWING_sliceop_IN_subscript_3540 = Set[1]
    TOKENS_FOLLOWING_COLON_IN_sliceop_3561 = Set[1, 9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61, 96]
    TOKENS_FOLLOWING_test_IN_sliceop_3564 = Set[1]
    TOKENS_FOLLOWING_expr_IN_exprlist_3583 = Set[1, 14]
    TOKENS_FOLLOWING_COMMA_IN_exprlist_3594 = Set[9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61]
    TOKENS_FOLLOWING_expr_IN_exprlist_3596 = Set[1, 14]
    TOKENS_FOLLOWING_COMMA_IN_exprlist_3601 = Set[1]
    TOKENS_FOLLOWING_test_IN_test_list_3625 = Set[1, 14]
    TOKENS_FOLLOWING_COMMA_IN_test_list_3636 = Set[9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61, 96]
    TOKENS_FOLLOWING_test_IN_test_list_3638 = Set[1, 14]
    TOKENS_FOLLOWING_COMMA_IN_test_list_3643 = Set[1]
    TOKENS_FOLLOWING_test_IN_dict_maker_3658 = Set[13]
    TOKENS_FOLLOWING_COLON_IN_dict_maker_3660 = Set[9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61, 96]
    TOKENS_FOLLOWING_test_IN_dict_maker_3662 = Set[1, 14]
    TOKENS_FOLLOWING_COMMA_IN_dict_maker_3672 = Set[9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61, 96]
    TOKENS_FOLLOWING_test_IN_dict_maker_3674 = Set[13]
    TOKENS_FOLLOWING_COLON_IN_dict_maker_3676 = Set[9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61, 96]
    TOKENS_FOLLOWING_test_IN_dict_maker_3678 = Set[1, 14]
    TOKENS_FOLLOWING_COMMA_IN_dict_maker_3683 = Set[1]
    TOKENS_FOLLOWING_T__97_IN_class_def_3703 = Set[11]
    TOKENS_FOLLOWING_NAME_IN_class_def_3705 = Set[9, 13]
    TOKENS_FOLLOWING_LPAREN_IN_class_def_3708 = Set[9, 10, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61, 96]
    TOKENS_FOLLOWING_test_list_IN_class_def_3710 = Set[10]
    TOKENS_FOLLOWING_RPAREN_IN_class_def_3713 = Set[13]
    TOKENS_FOLLOWING_COLON_IN_class_def_3717 = Set[7, 9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61, 72, 73, 74, 75, 76, 77, 78, 79, 80, 82, 83, 85, 96, 98]
    TOKENS_FOLLOWING_suite_IN_class_def_3719 = Set[1]
    TOKENS_FOLLOWING_argument_IN_arg_list_3736 = Set[1, 14]
    TOKENS_FOLLOWING_COMMA_IN_arg_list_3739 = Set[9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61, 96]
    TOKENS_FOLLOWING_argument_IN_arg_list_3741 = Set[1, 14]
    TOKENS_FOLLOWING_COMMA_IN_arg_list_3757 = Set[1, 15, 16]
    TOKENS_FOLLOWING_STAR_IN_arg_list_3773 = Set[9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61, 96]
    TOKENS_FOLLOWING_test_IN_arg_list_3775 = Set[1, 14]
    TOKENS_FOLLOWING_COMMA_IN_arg_list_3778 = Set[16]
    TOKENS_FOLLOWING_DOUBLE_STAR_IN_arg_list_3780 = Set[9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61, 96]
    TOKENS_FOLLOWING_test_IN_arg_list_3782 = Set[1]
    TOKENS_FOLLOWING_DOUBLE_STAR_IN_arg_list_3800 = Set[9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61, 96]
    TOKENS_FOLLOWING_test_IN_arg_list_3802 = Set[1]
    TOKENS_FOLLOWING_STAR_IN_arg_list_3844 = Set[9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61, 96]
    TOKENS_FOLLOWING_test_IN_arg_list_3846 = Set[1, 14]
    TOKENS_FOLLOWING_COMMA_IN_arg_list_3849 = Set[16]
    TOKENS_FOLLOWING_DOUBLE_STAR_IN_arg_list_3851 = Set[9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61, 96]
    TOKENS_FOLLOWING_test_IN_arg_list_3853 = Set[1]
    TOKENS_FOLLOWING_DOUBLE_STAR_IN_arg_list_3869 = Set[9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61, 96]
    TOKENS_FOLLOWING_test_IN_arg_list_3871 = Set[1]
    TOKENS_FOLLOWING_test_IN_argument_3888 = Set[14, 17, 90]
    TOKENS_FOLLOWING_ASSIGN_IN_argument_3892 = Set[9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61, 96]
    TOKENS_FOLLOWING_test_IN_argument_3894 = Set[1]
    TOKENS_FOLLOWING_gen_for_IN_argument_3898 = Set[1]
    TOKENS_FOLLOWING_list_for_IN_list_iter_3918 = Set[1]
    TOKENS_FOLLOWING_list_if_IN_list_iter_3932 = Set[1]
    TOKENS_FOLLOWING_T__90_IN_list_for_3951 = Set[9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61]
    TOKENS_FOLLOWING_exprlist_IN_list_for_3953 = Set[84]
    TOKENS_FOLLOWING_T__84_IN_list_for_3955 = Set[9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61, 96]
    TOKENS_FOLLOWING_test_list_IN_list_for_3957 = Set[1, 86, 90]
    TOKENS_FOLLOWING_list_iter_IN_list_for_3959 = Set[1]
    TOKENS_FOLLOWING_T__86_IN_list_if_3978 = Set[9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61, 96]
    TOKENS_FOLLOWING_test_IN_list_if_3980 = Set[1, 86, 90]
    TOKENS_FOLLOWING_list_iter_IN_list_if_3982 = Set[1]
    TOKENS_FOLLOWING_gen_for_IN_gen_iter_3999 = Set[1]
    TOKENS_FOLLOWING_gen_if_IN_gen_iter_4011 = Set[1]
    TOKENS_FOLLOWING_T__90_IN_gen_for_4027 = Set[9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61]
    TOKENS_FOLLOWING_exprlist_IN_gen_for_4029 = Set[84]
    TOKENS_FOLLOWING_T__84_IN_gen_for_4031 = Set[9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61]
    TOKENS_FOLLOWING_or_test_IN_gen_for_4033 = Set[1, 14, 86, 90]
    TOKENS_FOLLOWING_gen_iter_IN_gen_for_4035 = Set[1]
    TOKENS_FOLLOWING_T__86_IN_gen_if_4051 = Set[9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61, 96]
    TOKENS_FOLLOWING_test_IN_gen_if_4053 = Set[1, 14, 86, 90]
    TOKENS_FOLLOWING_gen_iter_IN_gen_if_4055 = Set[1]
    TOKENS_FOLLOWING_T__98_IN_yield_expr_4071 = Set[1, 9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61, 96]
    TOKENS_FOLLOWING_test_list_IN_yield_expr_4073 = Set[1]
    TOKENS_FOLLOWING_T__86_IN_synpred1_Python_2503 = Set[9, 11, 34, 46, 47, 51, 52, 54, 56, 57, 58, 59, 60, 61]
    TOKENS_FOLLOWING_or_test_IN_synpred1_Python_2505 = Set[87]
    TOKENS_FOLLOWING_T__87_IN_synpred1_Python_2507 = Set[1]

  end
end

if __FILE__ == $0 and ARGV.first != '--'
  # - - - - - - begin action @parser::main - - - - - -
  # samples/Python.g


    $:.unshift(File.dirname(__FILE__))
    require 'PythonLexer'
    require 'PythonTokenSource'
    
    main = ANTLR3::Main::ParserMain.new(Python::Parser, 
             :lexer_class_name => "Python::Lexer")
    
    class << main
      
      def recognize(in_stream)
        parser_options = {}
        @port and parser_options[:port] = @port
        @debug_socket and parser_options[:debug_socket] = @error
        
        lexer = Python::Lexer.new(in_stream)
        post_process = Python::TokenSource.new(lexer)
        token_stream = ANTLR3::CommonTokenStream.new(post_process)
        parser = Python::Parser.new(token_stream, parser_options)
        
        result = parser.send(@parser_rule)
        
        if result
          if result.respond_to?(:tree) and tree = result.tree
            puts(tree.inspect)
          else puts(result.inspect)
          end
        end
      end
      
    end
    
    main.execute(ARGV)

  # - - - - - - end action @parser::main - - - - - - -
end