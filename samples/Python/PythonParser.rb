#!/usr/bin/env ruby
#
# Python.g
# 
# Generated using ANTLR version: 3.2.1-SNAPSHOT Dec 18, 2009 04:29:28
# Ruby runtime library version: 1.3.0
# Input grammar file: Python.g
# Generated at: 2010-01-05 04:48:05
# 

# ~~~> start load path setup
this_directory = File.expand_path( File.dirname( __FILE__ ) )
$:.unshift( this_directory ) unless $:.include?( this_directory )

antlr_load_failed = proc do
  load_path = $LOAD_PATH.map { |dir| '  - ' << dir }.join( $/ )
  raise LoadError, <<-END.strip!
  
Failed to load the ANTLR3 runtime library (version 1.3.0):

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
    Gem.activate( 'antlr3', '= 1.3.0' )
  rescue Gem::LoadError
    antlr_load_failed.call
  end
  
  require 'antlr3'
  
end
# <~~~ end load path setup


module Python
  # TokenData defines all of the token type integer values
  # as constants, which will be included in all 
  # ANTLR-generated recognizers.
  const_defined?(:TokenData) or TokenData = ANTLR3::TokenScheme.new

  module TokenData

    # define the token constants
    define_tokens(:TRIAPOS => 28, :COMPLEX => 10, :EOF => -1, :LEADING_WS => 32, 
                  :T__93 => 93, :T__94 => 94, :T__91 => 91, :TUPLE => 13, 
                  :RPAREN => 18, :T__92 => 92, :NAME => 19, :T__90 => 90, 
                  :EXP => 27, :COMMENT => 33, :T__99 => 99, :T__98 => 98, 
                  :T__97 => 97, :T__96 => 96, :T__95 => 95, :RBRACK => 21, 
                  :T__80 => 80, :T__81 => 81, :T__82 => 82, :T__83 => 83, 
                  :CONCAT => 11, :LCURLY => 22, :INT => 24, :T__85 => 85, 
                  :T__84 => 84, :LIST => 14, :T__87 => 87, :T__86 => 86, 
                  :T__89 => 89, :T__88 => 88, :WS => 34, :T__71 => 71, :T__72 => 72, 
                  :T__70 => 70, :LONGINT => 9, :CALL => 12, :T__76 => 76, 
                  :T__75 => 75, :PARAM_TUPLE => 8, :T__74 => 74, :T__73 => 73, 
                  :T__79 => 79, :T__78 => 78, :T__77 => 77, :T__68 => 68, 
                  :T__69 => 69, :T__66 => 66, :T__67 => 67, :CONTINUED_LINE => 31, 
                  :T__64 => 64, :LBRACK => 20, :T__65 => 65, :T__62 => 62, 
                  :T__63 => 63, :ESC => 30, :FLOAT => 25, :DEDENT => 5, 
                  :T__61 => 61, :T__60 => 60, :INDENT => 4, :LPAREN => 17, 
                  :T__55 => 55, :T__56 => 56, :T__57 => 57, :T__58 => 58, 
                  :T__51 => 51, :T__52 => 52, :T__53 => 53, :T__54 => 54, 
                  :T__59 => 59, :T__103 => 103, :DICT => 15, :T__104 => 104, 
                  :T__50 => 50, :PARAMS => 7, :T__42 => 42, :T__43 => 43, 
                  :T__40 => 40, :T__41 => 41, :T__46 => 46, :T__47 => 47, 
                  :T__44 => 44, :T__45 => 45, :T__48 => 48, :T__49 => 49, 
                  :T__102 => 102, :T__101 => 101, :T__100 => 100, :TRIQUOTE => 29, 
                  :T__35 => 35, :NEWLINE => 16, :T__36 => 36, :T__37 => 37, 
                  :T__38 => 38, :T__39 => 39, :BLOCK => 6, :RCURLY => 23, 
                  :STRING => 26)

    # register the proper human-readable name or literal value
    # for each token type
    #
    # this is necessary because anonymous tokens, which are
    # created from literal values in the grammar, do not
    # have descriptive names
    register_names("INDENT", "DEDENT", "BLOCK", "PARAMS", "PARAM_TUPLE", 
                   "LONGINT", "COMPLEX", "CONCAT", "CALL", "TUPLE", "LIST", 
                   "DICT", "NEWLINE", "LPAREN", "RPAREN", "NAME", "LBRACK", 
                   "RBRACK", "LCURLY", "RCURLY", "INT", "FLOAT", "STRING", 
                   "EXP", "TRIAPOS", "TRIQUOTE", "ESC", "CONTINUED_LINE", 
                   "LEADING_WS", "COMMENT", "WS", "'@'", "'.'", "'def'", 
                   "':'", "','", "'*'", "'**'", "'='", "';'", "'+='", "'-='", 
                   "'*='", "'/='", "'%='", "'&='", "'|='", "'^='", "'<<='", 
                   "'>>='", "'**='", "'//='", "'print'", "'>>'", "'del'", 
                   "'pass'", "'break'", "'continue'", "'return'", "'raise'", 
                   "'import'", "'from'", "'as'", "'global'", "'exec'", "'in'", 
                   "'assert'", "'if'", "'else'", "'elif'", "'while'", "'for'", 
                   "'try'", "'finally'", "'with'", "'except'", "'or'", "'and'", 
                   "'not'", "'<'", "'>'", "'=='", "'>='", "'<='", "'<>'", 
                   "'!='", "'is'", "'|'", "'^'", "'&'", "'<<'", "'+'", "'-'", 
                   "'/'", "'%'", "'//'", "'~'", "'`'", "'lambda'", "'class'", 
                   "'yield'")
    
  end


  class Parser < ANTLR3::Parser
    @grammar_home = Python
    include ANTLR3::ASTBuilder

    RULE_METHODS = [:file_input, :single_input, :eval_input, :decorator, 
                    :dotted_attr, :func_def, :parameters, :var_args_list, 
                    :def_parameter, :fp_def, :fp_list, :statement, :simple_statement, 
                    :small_statement, :expr_statement, :augmented_assign, 
                    :print_statement, :print_list, :del_statement, :pass_statement, 
                    :flow_statement, :break_statement, :continue_statement, 
                    :return_statement, :yield_statement, :raise_statement, 
                    :import_statement, :import_name, :import_from, :import_as_names, 
                    :import_as_name, :dotted_as_name, :dotted_as_names, 
                    :dotted_name, :global_statement, :exec_statement, :assert_statement, 
                    :compound_statement, :if_statement, :elif_clause, :while_statement, 
                    :for_statement, :try_statement, :with_statement, :with_var, 
                    :except_clause, :suite, :test, :or_test, :and_test, 
                    :not_test, :comparison, :expr, :xor_expr, :and_expr, 
                    :shift_expr, :arith_expr, :term, :factor, :power, :atom, 
                    :list_maker, :testlist_gexp, :lamb_def, :trailer, :subscript_list, 
                    :subscript, :sliceop, :exprlist, :test_list, :dict_maker, 
                    :class_def, :arg_list, :argument, :list_iter, :list_for, 
                    :list_if, :gen_iter, :gen_for, :gen_if, :yield_expr, 
                    :synpred1_Python].freeze


    include TokenData

    generated_using( "Python.g", "3.2.1-SNAPSHOT Dec 18, 2009 04:29:28", "1.3.0" )

    def initialize(input, options = {})
      super(input, options)


    end
    # - - - - - - - - - - - - Rules - - - - - - - - - - - - -
    FileInputReturnValue = define_return_scope 

    # parser rule file_input
    # 
    # (in Python.g)
    # 133:1: file_input : ( NEWLINE | statement )* -> ( ^( statement ) )* ;
    def file_input
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 1)
      return_value = FileInputReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __NEWLINE1__ = nil
      statement2 = nil

      tree_for_NEWLINE1 = nil
      stream_NEWLINE = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token NEWLINE")
      stream_statement = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule statement")
      begin
        # at line 134:5: ( NEWLINE | statement )*
        # at line 134:5: ( NEWLINE | statement )*
        loop do  #loop 1
          alt_1 = 3
          look_1_0 = @input.peek(1)

          if (look_1_0 == NEWLINE) 
            alt_1 = 1
          elsif (look_1_0.between?(LONGINT, COMPLEX) || look_1_0 == LPAREN || look_1_0.between?(NAME, LBRACK) || look_1_0 == LCURLY || look_1_0.between?(INT, STRING) || look_1_0 == T__35 || look_1_0 == T__37 || look_1_0 == T__56 || look_1_0.between?(T__58, T__65) || look_1_0.between?(T__67, T__68) || look_1_0.between?(T__70, T__71) || look_1_0.between?(T__74, T__76) || look_1_0 == T__78 || look_1_0 == T__82 || look_1_0.between?(T__95, T__96) || look_1_0.between?(T__100, T__104)) 
            alt_1 = 2

          end
          case alt_1
          when 1
            # at line 134:7: NEWLINE
            __NEWLINE1__ = match(NEWLINE, TOKENS_FOLLOWING_NEWLINE_IN_file_input_144) 
            if @state.backtracking == 0
              stream_NEWLINE.add(__NEWLINE1__)
            end

          when 2
            # at line 134:17: statement
            @state.following.push(TOKENS_FOLLOWING_statement_IN_file_input_148)
            statement2 = statement
            @state.following.pop
            if @state.backtracking == 0
              stream_statement.add(statement2.tree)
            end

          else
            break #loop 1
          end
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
          stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

          root_0 = @adaptor.create_flat_list!
          # 134:30: -> ( ^( statement ) )*
          # at line 134:33: ( ^( statement ) )*
          while stream_statement.has_next?
            # at line 134:33: ^( statement )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(stream_statement.next_node(), root_1)

            @adaptor.add_child(root_0, root_1)

          end

          stream_statement.reset();



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
        # trace_out(__method__, 1)

      end
      
      return return_value
    end

    SingleInputReturnValue = define_return_scope 

    # parser rule single_input
    # 
    # (in Python.g)
    # 137:1: single_input : ( NEWLINE | simple_statement | compound_statement NEWLINE );
    def single_input
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 2)
      return_value = SingleInputReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __NEWLINE3__ = nil
      __NEWLINE6__ = nil
      simple_statement4 = nil
      compound_statement5 = nil

      tree_for_NEWLINE3 = nil
      tree_for_NEWLINE6 = nil

      begin
        # at line 138:3: ( NEWLINE | simple_statement | compound_statement NEWLINE )
        alt_2 = 3
        case look_2 = @input.peek(1)
        when NEWLINE then alt_2 = 1
        when LONGINT, COMPLEX, LPAREN, NAME, LBRACK, LCURLY, INT, FLOAT, STRING, T__56, T__58, T__59, T__60, T__61, T__62, T__63, T__64, T__65, T__67, T__68, T__70, T__82, T__95, T__96, T__100, T__101, T__102, T__104 then alt_2 = 2
        when T__35, T__37, T__71, T__74, T__75, T__76, T__78, T__103 then alt_2 = 3
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          nvae = NoViableAlternative("", 2, 0)
          raise nvae
        end
        case alt_2
        when 1
          root_0 = @adaptor.create_flat_list!


          # at line 138:5: NEWLINE
          __NEWLINE3__ = match(NEWLINE, TOKENS_FOLLOWING_NEWLINE_IN_single_input_173)

        when 2
          root_0 = @adaptor.create_flat_list!


          # at line 139:5: simple_statement
          @state.following.push(TOKENS_FOLLOWING_simple_statement_IN_single_input_180)
          simple_statement4 = simple_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, simple_statement4.tree)
          end

        when 3
          root_0 = @adaptor.create_flat_list!


          # at line 140:5: compound_statement NEWLINE
          @state.following.push(TOKENS_FOLLOWING_compound_statement_IN_single_input_186)
          compound_statement5 = compound_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, compound_statement5.tree)
          end
          __NEWLINE6__ = match(NEWLINE, TOKENS_FOLLOWING_NEWLINE_IN_single_input_188)

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
    # (in Python.g)
    # 143:1: eval_input : ( NEWLINE )* test_list ( NEWLINE )* ;
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


        # at line 144:5: ( NEWLINE )* test_list ( NEWLINE )*
        # at line 144:12: ( NEWLINE )*
        loop do  #loop 3
          alt_3 = 2
          look_3_0 = @input.peek(1)

          if (look_3_0 == NEWLINE) 
            alt_3 = 1

          end
          case alt_3
          when 1
            # at line 144:12: NEWLINE
            __NEWLINE7__ = match(NEWLINE, TOKENS_FOLLOWING_NEWLINE_IN_eval_input_202)

          else
            break #loop 3
          end
        end
        @state.following.push(TOKENS_FOLLOWING_test_list_IN_eval_input_206)
        test_list8 = test_list
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, test_list8.tree)
        end
        # at line 144:32: ( NEWLINE )*
        loop do  #loop 4
          alt_4 = 2
          look_4_0 = @input.peek(1)

          if (look_4_0 == NEWLINE) 
            alt_4 = 1

          end
          case alt_4
          when 1
            # at line 144:32: NEWLINE
            __NEWLINE9__ = match(NEWLINE, TOKENS_FOLLOWING_NEWLINE_IN_eval_input_208)

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

    DecoratorReturnValue = define_return_scope 

    # parser rule decorator
    # 
    # (in Python.g)
    # 147:1: decorator : '@' dotted_attr ( LPAREN ( arg_list )? RPAREN )? NEWLINE -> ^( '@' dotted_attr ( arg_list )? ) ;
    def decorator
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 4)
      return_value = DecoratorReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal10 = nil
      __LPAREN12__ = nil
      __RPAREN14__ = nil
      __NEWLINE15__ = nil
      dotted_attr11 = nil
      arg_list13 = nil

      tree_for_char_literal10 = nil
      tree_for_LPAREN12 = nil
      tree_for_RPAREN14 = nil
      tree_for_NEWLINE15 = nil
      stream_RPAREN = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token RPAREN")
      stream_T__35 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__35")
      stream_NEWLINE = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token NEWLINE")
      stream_LPAREN = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token LPAREN")
      stream_arg_list = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule arg_list")
      stream_dotted_attr = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule dotted_attr")
      begin
        # at line 148:5: '@' dotted_attr ( LPAREN ( arg_list )? RPAREN )? NEWLINE
        char_literal10 = match(T__35, TOKENS_FOLLOWING_T__35_IN_decorator_223) 
        if @state.backtracking == 0
          stream_T__35.add(char_literal10)
        end
        @state.following.push(TOKENS_FOLLOWING_dotted_attr_IN_decorator_225)
        dotted_attr11 = dotted_attr
        @state.following.pop
        if @state.backtracking == 0
          stream_dotted_attr.add(dotted_attr11.tree)
        end
        # at line 148:21: ( LPAREN ( arg_list )? RPAREN )?
        alt_6 = 2
        look_6_0 = @input.peek(1)

        if (look_6_0 == LPAREN) 
          alt_6 = 1
        end
        case alt_6
        when 1
          # at line 148:23: LPAREN ( arg_list )? RPAREN
          __LPAREN12__ = match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_decorator_229) 
          if @state.backtracking == 0
            stream_LPAREN.add(__LPAREN12__)
          end
          # at line 148:30: ( arg_list )?
          alt_5 = 2
          look_5_0 = @input.peek(1)

          if (look_5_0.between?(LONGINT, COMPLEX) || look_5_0 == LPAREN || look_5_0.between?(NAME, LBRACK) || look_5_0 == LCURLY || look_5_0.between?(INT, STRING) || look_5_0.between?(T__40, T__41) || look_5_0 == T__82 || look_5_0.between?(T__95, T__96) || look_5_0.between?(T__100, T__102)) 
            alt_5 = 1
          end
          case alt_5
          when 1
            # at line 148:30: arg_list
            @state.following.push(TOKENS_FOLLOWING_arg_list_IN_decorator_231)
            arg_list13 = arg_list
            @state.following.pop
            if @state.backtracking == 0
              stream_arg_list.add(arg_list13.tree)
            end

          end
          __RPAREN14__ = match(RPAREN, TOKENS_FOLLOWING_RPAREN_IN_decorator_234) 
          if @state.backtracking == 0
            stream_RPAREN.add(__RPAREN14__)
          end

        end
        __NEWLINE15__ = match(NEWLINE, TOKENS_FOLLOWING_NEWLINE_IN_decorator_239) 
        if @state.backtracking == 0
          stream_NEWLINE.add(__NEWLINE15__)
        end
        # AST Rewrite
        # elements: dotted_attr, T__35, arg_list
        # token labels: 
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 
        if @state.backtracking == 0

          return_value.tree = root_0
          stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

          root_0 = @adaptor.create_flat_list!
          # 149:5: -> ^( '@' dotted_attr ( arg_list )? )
          # at line 149:8: ^( '@' dotted_attr ( arg_list )? )
          root_1 = @adaptor.create_flat_list!
          root_1 = @adaptor.become_root(stream_T__35.next_node, root_1)

          @adaptor.add_child(root_1, stream_dotted_attr.next_tree)
          # at line 149:26: ( arg_list )?
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
        # trace_out(__method__, 4)

      end
      
      return return_value
    end

    DottedAttrReturnValue = define_return_scope 

    # parser rule dotted_attr
    # 
    # (in Python.g)
    # 152:1: dotted_attr : NAME ( '.' NAME )* ;
    def dotted_attr
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 5)
      return_value = DottedAttrReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __NAME16__ = nil
      char_literal17 = nil
      __NAME18__ = nil

      tree_for_NAME16 = nil
      tree_for_char_literal17 = nil
      tree_for_NAME18 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 153:5: NAME ( '.' NAME )*
        __NAME16__ = match(NAME, TOKENS_FOLLOWING_NAME_IN_dotted_attr_267)
        if @state.backtracking == 0

          tree_for_NAME16 = @adaptor.create_with_payload!(__NAME16__)
          @adaptor.add_child(root_0, tree_for_NAME16)

        end
        # at line 153:10: ( '.' NAME )*
        loop do  #loop 7
          alt_7 = 2
          look_7_0 = @input.peek(1)

          if (look_7_0 == T__36) 
            alt_7 = 1

          end
          case alt_7
          when 1
            # at line 153:12: '.' NAME
            char_literal17 = match(T__36, TOKENS_FOLLOWING_T__36_IN_dotted_attr_271)
            if @state.backtracking == 0

              tree_for_char_literal17 = @adaptor.create_with_payload!(char_literal17)
              root_0 = @adaptor.become_root(tree_for_char_literal17, root_0)

            end
            __NAME18__ = match(NAME, TOKENS_FOLLOWING_NAME_IN_dotted_attr_274)
            if @state.backtracking == 0

              tree_for_NAME18 = @adaptor.create_with_payload!(__NAME18__)
              @adaptor.add_child(root_0, tree_for_NAME18)

            end

          else
            break #loop 7
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
        # trace_out(__method__, 5)

      end
      
      return return_value
    end

    FuncDefReturnValue = define_return_scope 

    # parser rule func_def
    # 
    # (in Python.g)
    # 156:1: func_def : ( decorator )* 'def' NAME LPAREN ( var_args_list )? RPAREN ':' suite -> ^( 'def' ( ^( decorator ) )* NAME ( var_args_list )? suite ) ;
    def func_def
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 6)
      return_value = FuncDefReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal20 = nil
      __NAME21__ = nil
      __LPAREN22__ = nil
      __RPAREN24__ = nil
      char_literal25 = nil
      decorator19 = nil
      var_args_list23 = nil
      suite26 = nil

      tree_for_string_literal20 = nil
      tree_for_NAME21 = nil
      tree_for_LPAREN22 = nil
      tree_for_RPAREN24 = nil
      tree_for_char_literal25 = nil
      stream_RPAREN = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token RPAREN")
      stream_NAME = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token NAME")
      stream_T__37 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__37")
      stream_T__38 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__38")
      stream_LPAREN = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token LPAREN")
      stream_decorator = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule decorator")
      stream_var_args_list = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule var_args_list")
      stream_suite = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule suite")
      begin
        # at line 157:5: ( decorator )* 'def' NAME LPAREN ( var_args_list )? RPAREN ':' suite
        # at line 157:5: ( decorator )*
        loop do  #loop 8
          alt_8 = 2
          look_8_0 = @input.peek(1)

          if (look_8_0 == T__35) 
            alt_8 = 1

          end
          case alt_8
          when 1
            # at line 157:5: decorator
            @state.following.push(TOKENS_FOLLOWING_decorator_IN_func_def_290)
            decorator19 = decorator
            @state.following.pop
            if @state.backtracking == 0
              stream_decorator.add(decorator19.tree)
            end

          else
            break #loop 8
          end
        end
        string_literal20 = match(T__37, TOKENS_FOLLOWING_T__37_IN_func_def_293) 
        if @state.backtracking == 0
          stream_T__37.add(string_literal20)
        end
        __NAME21__ = match(NAME, TOKENS_FOLLOWING_NAME_IN_func_def_295) 
        if @state.backtracking == 0
          stream_NAME.add(__NAME21__)
        end
        __LPAREN22__ = match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_func_def_297) 
        if @state.backtracking == 0
          stream_LPAREN.add(__LPAREN22__)
        end
        # at line 157:34: ( var_args_list )?
        alt_9 = 2
        look_9_0 = @input.peek(1)

        if (look_9_0 == LPAREN || look_9_0 == NAME || look_9_0.between?(T__40, T__41)) 
          alt_9 = 1
        end
        case alt_9
        when 1
          # at line 157:34: var_args_list
          @state.following.push(TOKENS_FOLLOWING_var_args_list_IN_func_def_299)
          var_args_list23 = var_args_list
          @state.following.pop
          if @state.backtracking == 0
            stream_var_args_list.add(var_args_list23.tree)
          end

        end
        __RPAREN24__ = match(RPAREN, TOKENS_FOLLOWING_RPAREN_IN_func_def_302) 
        if @state.backtracking == 0
          stream_RPAREN.add(__RPAREN24__)
        end
        char_literal25 = match(T__38, TOKENS_FOLLOWING_T__38_IN_func_def_304) 
        if @state.backtracking == 0
          stream_T__38.add(char_literal25)
        end
        @state.following.push(TOKENS_FOLLOWING_suite_IN_func_def_306)
        suite26 = suite
        @state.following.pop
        if @state.backtracking == 0
          stream_suite.add(suite26.tree)
        end
        # AST Rewrite
        # elements: suite, T__37, decorator, var_args_list, NAME
        # token labels: 
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 
        if @state.backtracking == 0

          return_value.tree = root_0
          stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

          root_0 = @adaptor.create_flat_list!
          # 158:5: -> ^( 'def' ( ^( decorator ) )* NAME ( var_args_list )? suite )
          # at line 158:8: ^( 'def' ( ^( decorator ) )* NAME ( var_args_list )? suite )
          root_1 = @adaptor.create_flat_list!
          root_1 = @adaptor.become_root(stream_T__37.next_node, root_1)

          # at line 158:17: ( ^( decorator ) )*
          while stream_decorator.has_next?
            # at line 158:17: ^( decorator )
            root_2 = @adaptor.create_flat_list!
            root_2 = @adaptor.become_root(stream_decorator.next_node(), root_2)

            @adaptor.add_child(root_1, root_2)

          end

          stream_decorator.reset();
          @adaptor.add_child(root_1, stream_NAME.next_node)
          # at line 158:36: ( var_args_list )?
          if stream_var_args_list.has_next?
            @adaptor.add_child(root_1, stream_var_args_list.next_tree)

          end

          stream_var_args_list.reset();
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
        # trace_out(__method__, 6)

      end
      
      return return_value
    end

    ParametersReturnValue = define_return_scope 

    # parser rule parameters
    # 
    # (in Python.g)
    # 161:1: parameters : LPAREN ( var_args_list )? RPAREN ;
    def parameters
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 7)
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


        # at line 162:5: LPAREN ( var_args_list )? RPAREN
        __LPAREN27__ = match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_parameters_343)
        if @state.backtracking == 0

          tree_for_LPAREN27 = @adaptor.create_with_payload!(__LPAREN27__)
          @adaptor.add_child(root_0, tree_for_LPAREN27)

        end
        # at line 162:12: ( var_args_list )?
        alt_10 = 2
        look_10_0 = @input.peek(1)

        if (look_10_0 == LPAREN || look_10_0 == NAME || look_10_0.between?(T__40, T__41)) 
          alt_10 = 1
        end
        case alt_10
        when 1
          # at line 162:12: var_args_list
          @state.following.push(TOKENS_FOLLOWING_var_args_list_IN_parameters_345)
          var_args_list28 = var_args_list
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, var_args_list28.tree)
          end

        end
        __RPAREN29__ = match(RPAREN, TOKENS_FOLLOWING_RPAREN_IN_parameters_348)
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
        # trace_out(__method__, 7)

      end
      
      return return_value
    end

    VarArgsListReturnValue = define_return_scope 

    # parser rule var_args_list
    # 
    # (in Python.g)
    # 165:1: var_args_list : ( ( def_parameter ( ',' def_parameter )* -> ( ^( def_parameter ) )+ ) ( ',' ( '*' single= NAME ( ',' '**' double= NAME -> $var_args_list ^( '*' $single) ^( '**' $double) | -> $var_args_list ^( '*' $single) ) | '**' double= NAME -> $var_args_list ^( '**' $double) )? )? -> ^( PARAMS $var_args_list) | '*' single= NAME ( ',' '**' double= NAME -> ^( PARAMS ^( '*' $single) ^( '**' $double) ) | -> ^( PARAMS ^( '*' $single) ) ) | '**' NAME -> ^( PARAMS ^( '**' NAME ) ) );
    def var_args_list
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 8)
      return_value = VarArgsListReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      single = nil
      double = nil
      char_literal31 = nil
      char_literal33 = nil
      char_literal34 = nil
      char_literal35 = nil
      string_literal36 = nil
      string_literal37 = nil
      char_literal38 = nil
      char_literal39 = nil
      string_literal40 = nil
      string_literal41 = nil
      __NAME42__ = nil
      def_parameter30 = nil
      def_parameter32 = nil

      tree_for_single = nil
      tree_for_double = nil
      tree_for_char_literal31 = nil
      tree_for_char_literal33 = nil
      tree_for_char_literal34 = nil
      tree_for_char_literal35 = nil
      tree_for_string_literal36 = nil
      tree_for_string_literal37 = nil
      tree_for_char_literal38 = nil
      tree_for_char_literal39 = nil
      tree_for_string_literal40 = nil
      tree_for_string_literal41 = nil
      tree_for_NAME42 = nil
      stream_T__40 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__40")
      stream_T__41 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__41")
      stream_NAME = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token NAME")
      stream_T__39 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__39")
      stream_def_parameter = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule def_parameter")
      begin
        # at line 166:3: ( ( def_parameter ( ',' def_parameter )* -> ( ^( def_parameter ) )+ ) ( ',' ( '*' single= NAME ( ',' '**' double= NAME -> $var_args_list ^( '*' $single) ^( '**' $double) | -> $var_args_list ^( '*' $single) ) | '**' double= NAME -> $var_args_list ^( '**' $double) )? )? -> ^( PARAMS $var_args_list) | '*' single= NAME ( ',' '**' double= NAME -> ^( PARAMS ^( '*' $single) ^( '**' $double) ) | -> ^( PARAMS ^( '*' $single) ) ) | '**' NAME -> ^( PARAMS ^( '**' NAME ) ) )
        alt_16 = 3
        case look_16 = @input.peek(1)
        when LPAREN, NAME then alt_16 = 1
        when T__40 then alt_16 = 2
        when T__41 then alt_16 = 3
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          nvae = NoViableAlternative("", 16, 0)
          raise nvae
        end
        case alt_16
        when 1
          # at line 166:5: ( def_parameter ( ',' def_parameter )* -> ( ^( def_parameter ) )+ ) ( ',' ( '*' single= NAME ( ',' '**' double= NAME -> $var_args_list ^( '*' $single) ^( '**' $double) | -> $var_args_list ^( '*' $single) ) | '**' double= NAME -> $var_args_list ^( '**' $double) )? )?
          # at line 166:5: ( def_parameter ( ',' def_parameter )* -> ( ^( def_parameter ) )+ )
          # at line 166:7: def_parameter ( ',' def_parameter )*
          @state.following.push(TOKENS_FOLLOWING_def_parameter_IN_var_args_list_363)
          def_parameter30 = def_parameter
          @state.following.pop
          if @state.backtracking == 0
            stream_def_parameter.add(def_parameter30.tree)
          end
          # at line 166:21: ( ',' def_parameter )*
          loop do  #loop 11
            alt_11 = 2
            look_11_0 = @input.peek(1)

            if (look_11_0 == T__39) 
              look_11_1 = @input.peek(2)

              if (look_11_1 == LPAREN || look_11_1 == NAME) 
                alt_11 = 1

              end

            end
            case alt_11
            when 1
              # at line 166:23: ',' def_parameter
              char_literal31 = match(T__39, TOKENS_FOLLOWING_T__39_IN_var_args_list_367) 
              if @state.backtracking == 0
                stream_T__39.add(char_literal31)
              end
              @state.following.push(TOKENS_FOLLOWING_def_parameter_IN_var_args_list_369)
              def_parameter32 = def_parameter
              @state.following.pop
              if @state.backtracking == 0
                stream_def_parameter.add(def_parameter32.tree)
              end

            else
              break #loop 11
            end
          end
          # AST Rewrite
          # elements: def_parameter
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

            root_0 = @adaptor.create_flat_list!
            # 166:44: -> ( ^( def_parameter ) )+
            # at line 166:47: ( ^( def_parameter ) )+
            unless stream_def_parameter.has_next?
              raise ANTLR3::RewriteEarlyExit
            end

            while stream_def_parameter.has_next?
              # at line 166:47: ^( def_parameter )
              root_1 = @adaptor.create_flat_list!
              root_1 = @adaptor.become_root(stream_def_parameter.next_node(), root_1)

              @adaptor.add_child(root_0, root_1)

            end

            stream_def_parameter.reset



            return_value.tree = root_0

          end
          # at line 167:5: ( ',' ( '*' single= NAME ( ',' '**' double= NAME -> $var_args_list ^( '*' $single) ^( '**' $double) | -> $var_args_list ^( '*' $single) ) | '**' double= NAME -> $var_args_list ^( '**' $double) )? )?
          alt_14 = 2
          look_14_0 = @input.peek(1)

          if (look_14_0 == T__39) 
            alt_14 = 1
          end
          case alt_14
          when 1
            # at line 167:7: ',' ( '*' single= NAME ( ',' '**' double= NAME -> $var_args_list ^( '*' $single) ^( '**' $double) | -> $var_args_list ^( '*' $single) ) | '**' double= NAME -> $var_args_list ^( '**' $double) )?
            char_literal33 = match(T__39, TOKENS_FOLLOWING_T__39_IN_var_args_list_391) 
            if @state.backtracking == 0
              stream_T__39.add(char_literal33)
            end
            # at line 168:7: ( '*' single= NAME ( ',' '**' double= NAME -> $var_args_list ^( '*' $single) ^( '**' $double) | -> $var_args_list ^( '*' $single) ) | '**' double= NAME -> $var_args_list ^( '**' $double) )?
            alt_13 = 3
            look_13_0 = @input.peek(1)

            if (look_13_0 == T__40) 
              alt_13 = 1
            elsif (look_13_0 == T__41) 
              alt_13 = 2
            end
            case alt_13
            when 1
              # at line 168:9: '*' single= NAME ( ',' '**' double= NAME -> $var_args_list ^( '*' $single) ^( '**' $double) | -> $var_args_list ^( '*' $single) )
              char_literal34 = match(T__40, TOKENS_FOLLOWING_T__40_IN_var_args_list_401) 
              if @state.backtracking == 0
                stream_T__40.add(char_literal34)
              end
              single = match(NAME, TOKENS_FOLLOWING_NAME_IN_var_args_list_405) 
              if @state.backtracking == 0
                stream_NAME.add(single)
              end
              # at line 169:9: ( ',' '**' double= NAME -> $var_args_list ^( '*' $single) ^( '**' $double) | -> $var_args_list ^( '*' $single) )
              alt_12 = 2
              look_12_0 = @input.peek(1)

              if (look_12_0 == T__39) 
                alt_12 = 1
              elsif (look_12_0 == RPAREN || look_12_0 == T__38) 
                alt_12 = 2
              else
                @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
              nvae = NoViableAlternative("", 12, 0)
                raise nvae
              end
              case alt_12
              when 1
                # at line 169:11: ',' '**' double= NAME
                char_literal35 = match(T__39, TOKENS_FOLLOWING_T__39_IN_var_args_list_417) 
                if @state.backtracking == 0
                  stream_T__39.add(char_literal35)
                end
                string_literal36 = match(T__41, TOKENS_FOLLOWING_T__41_IN_var_args_list_419) 
                if @state.backtracking == 0
                  stream_T__41.add(string_literal36)
                end
                double = match(NAME, TOKENS_FOLLOWING_NAME_IN_var_args_list_423) 
                if @state.backtracking == 0
                  stream_NAME.add(double)
                end
                # AST Rewrite
                # elements: T__40, single, double, T__41, var_args_list
                # token labels: single, double
                # rule labels: return_value
                # token list labels: 
                # rule list labels: 
                # wildcard labels: 
                if @state.backtracking == 0

                  return_value.tree = root_0
                  stream_single = token_stream("token single", single)
                  stream_double = token_stream("token double", double)
                  stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

                  root_0 = @adaptor.create_flat_list!
                  # 169:32: -> $var_args_list ^( '*' $single) ^( '**' $double)
                  @adaptor.add_child(root_0, stream_return_value.next_tree)
                  # at line 169:50: ^( '*' $single)
                  root_1 = @adaptor.create_flat_list!
                  root_1 = @adaptor.become_root(stream_T__40.next_node, root_1)

                  @adaptor.add_child(root_1, stream_single.next_node)

                  @adaptor.add_child(root_0, root_1)
                  # at line 169:67: ^( '**' $double)
                  root_1 = @adaptor.create_flat_list!
                  root_1 = @adaptor.become_root(stream_T__41.next_node, root_1)

                  @adaptor.add_child(root_1, stream_double.next_node)

                  @adaptor.add_child(root_0, root_1)



                  return_value.tree = root_0

                end
              when 2
                # at line 170:32: 
                # AST Rewrite
                # elements: var_args_list, T__40, single
                # token labels: single
                # rule labels: return_value
                # token list labels: 
                # rule list labels: 
                # wildcard labels: 
                if @state.backtracking == 0

                  return_value.tree = root_0
                  stream_single = token_stream("token single", single)
                  stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

                  root_0 = @adaptor.create_flat_list!
                  # 170:32: -> $var_args_list ^( '*' $single)
                  @adaptor.add_child(root_0, stream_return_value.next_tree)
                  # at line 170:50: ^( '*' $single)
                  root_1 = @adaptor.create_flat_list!
                  root_1 = @adaptor.become_root(stream_T__40.next_node, root_1)

                  @adaptor.add_child(root_1, stream_single.next_node)

                  @adaptor.add_child(root_0, root_1)



                  return_value.tree = root_0

                end
              end

            when 2
              # at line 172:9: '**' double= NAME
              string_literal37 = match(T__41, TOKENS_FOLLOWING_T__41_IN_var_args_list_511) 
              if @state.backtracking == 0
                stream_T__41.add(string_literal37)
              end
              double = match(NAME, TOKENS_FOLLOWING_NAME_IN_var_args_list_515) 
              if @state.backtracking == 0
                stream_NAME.add(double)
              end
              # AST Rewrite
              # elements: double, T__41, var_args_list
              # token labels: double
              # rule labels: return_value
              # token list labels: 
              # rule list labels: 
              # wildcard labels: 
              if @state.backtracking == 0

                return_value.tree = root_0
                stream_double = token_stream("token double", double)
                stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

                root_0 = @adaptor.create_flat_list!
                # 172:32: -> $var_args_list ^( '**' $double)
                @adaptor.add_child(root_0, stream_return_value.next_tree)
                # at line 172:50: ^( '**' $double)
                root_1 = @adaptor.create_flat_list!
                root_1 = @adaptor.become_root(stream_T__41.next_node, root_1)

                @adaptor.add_child(root_1, stream_double.next_node)

                @adaptor.add_child(root_0, root_1)



                return_value.tree = root_0

              end
            end

          end
          # AST Rewrite
          # elements: var_args_list
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

            root_0 = @adaptor.create_flat_list!
            # 174:8: -> ^( PARAMS $var_args_list)
            # at line 174:11: ^( PARAMS $var_args_list)
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(@adaptor.create_from_type!(PARAMS, "PARAMS"), root_1)

            @adaptor.add_child(root_1, stream_return_value.next_tree)

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 2
          # at line 175:5: '*' single= NAME ( ',' '**' double= NAME -> ^( PARAMS ^( '*' $single) ^( '**' $double) ) | -> ^( PARAMS ^( '*' $single) ) )
          char_literal38 = match(T__40, TOKENS_FOLLOWING_T__40_IN_var_args_list_568) 
          if @state.backtracking == 0
            stream_T__40.add(char_literal38)
          end
          single = match(NAME, TOKENS_FOLLOWING_NAME_IN_var_args_list_572) 
          if @state.backtracking == 0
            stream_NAME.add(single)
          end
          # at line 176:5: ( ',' '**' double= NAME -> ^( PARAMS ^( '*' $single) ^( '**' $double) ) | -> ^( PARAMS ^( '*' $single) ) )
          alt_15 = 2
          look_15_0 = @input.peek(1)

          if (look_15_0 == T__39) 
            alt_15 = 1
          elsif (look_15_0 == RPAREN || look_15_0 == T__38) 
            alt_15 = 2
          else
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
          nvae = NoViableAlternative("", 15, 0)
            raise nvae
          end
          case alt_15
          when 1
            # at line 176:7: ',' '**' double= NAME
            char_literal39 = match(T__39, TOKENS_FOLLOWING_T__39_IN_var_args_list_581) 
            if @state.backtracking == 0
              stream_T__39.add(char_literal39)
            end
            string_literal40 = match(T__41, TOKENS_FOLLOWING_T__41_IN_var_args_list_583) 
            if @state.backtracking == 0
              stream_T__41.add(string_literal40)
            end
            double = match(NAME, TOKENS_FOLLOWING_NAME_IN_var_args_list_587) 
            if @state.backtracking == 0
              stream_NAME.add(double)
            end
            # AST Rewrite
            # elements: double, T__41, T__40, single
            # token labels: single, double
            # rule labels: return_value
            # token list labels: 
            # rule list labels: 
            # wildcard labels: 
            if @state.backtracking == 0

              return_value.tree = root_0
              stream_single = token_stream("token single", single)
              stream_double = token_stream("token double", double)
              stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

              root_0 = @adaptor.create_flat_list!
              # 176:28: -> ^( PARAMS ^( '*' $single) ^( '**' $double) )
              # at line 176:31: ^( PARAMS ^( '*' $single) ^( '**' $double) )
              root_1 = @adaptor.create_flat_list!
              root_1 = @adaptor.become_root(@adaptor.create_from_type!(PARAMS, "PARAMS"), root_1)

              # at line 176:41: ^( '*' $single)
              root_2 = @adaptor.create_flat_list!
              root_2 = @adaptor.become_root(stream_T__40.next_node, root_2)

              @adaptor.add_child(root_2, stream_single.next_node)

              @adaptor.add_child(root_1, root_2)
              # at line 176:58: ^( '**' $double)
              root_2 = @adaptor.create_flat_list!
              root_2 = @adaptor.become_root(stream_T__41.next_node, root_2)

              @adaptor.add_child(root_2, stream_double.next_node)

              @adaptor.add_child(root_1, root_2)

              @adaptor.add_child(root_0, root_1)



              return_value.tree = root_0

            end
          when 2
            # at line 177:28: 
            # AST Rewrite
            # elements: T__40, single
            # token labels: single
            # rule labels: return_value
            # token list labels: 
            # rule list labels: 
            # wildcard labels: 
            if @state.backtracking == 0

              return_value.tree = root_0
              stream_single = token_stream("token single", single)
              stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

              root_0 = @adaptor.create_flat_list!
              # 177:28: -> ^( PARAMS ^( '*' $single) )
              # at line 177:31: ^( PARAMS ^( '*' $single) )
              root_1 = @adaptor.create_flat_list!
              root_1 = @adaptor.become_root(@adaptor.create_from_type!(PARAMS, "PARAMS"), root_1)

              # at line 177:41: ^( '*' $single)
              root_2 = @adaptor.create_flat_list!
              root_2 = @adaptor.become_root(stream_T__40.next_node, root_2)

              @adaptor.add_child(root_2, stream_single.next_node)

              @adaptor.add_child(root_1, root_2)

              @adaptor.add_child(root_0, root_1)



              return_value.tree = root_0

            end
          end

        when 3
          # at line 179:5: '**' NAME
          string_literal41 = match(T__41, TOKENS_FOLLOWING_T__41_IN_var_args_list_669) 
          if @state.backtracking == 0
            stream_T__41.add(string_literal41)
          end
          __NAME42__ = match(NAME, TOKENS_FOLLOWING_NAME_IN_var_args_list_671) 
          if @state.backtracking == 0
            stream_NAME.add(__NAME42__)
          end
          # AST Rewrite
          # elements: NAME, T__41
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

            root_0 = @adaptor.create_flat_list!
            # 179:15: -> ^( PARAMS ^( '**' NAME ) )
            # at line 179:18: ^( PARAMS ^( '**' NAME ) )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(@adaptor.create_from_type!(PARAMS, "PARAMS"), root_1)

            # at line 179:28: ^( '**' NAME )
            root_2 = @adaptor.create_flat_list!
            root_2 = @adaptor.become_root(stream_T__41.next_node, root_2)

            @adaptor.add_child(root_2, stream_NAME.next_node)

            @adaptor.add_child(root_1, root_2)

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
        # trace_out(__method__, 8)

      end
      
      return return_value
    end

    DefParameterReturnValue = define_return_scope 

    # parser rule def_parameter
    # 
    # (in Python.g)
    # 182:1: def_parameter : fp_def ( '=' test )? ;
    def def_parameter
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 9)
      return_value = DefParameterReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal44 = nil
      fp_def43 = nil
      test45 = nil

      tree_for_char_literal44 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 183:5: fp_def ( '=' test )?
        @state.following.push(TOKENS_FOLLOWING_fp_def_IN_def_parameter_700)
        fp_def43 = fp_def
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, fp_def43.tree)
        end
        # at line 183:12: ( '=' test )?
        alt_17 = 2
        look_17_0 = @input.peek(1)

        if (look_17_0 == T__42) 
          alt_17 = 1
        end
        case alt_17
        when 1
          # at line 183:14: '=' test
          char_literal44 = match(T__42, TOKENS_FOLLOWING_T__42_IN_def_parameter_704)
          if @state.backtracking == 0

            tree_for_char_literal44 = @adaptor.create_with_payload!(char_literal44)
            root_0 = @adaptor.become_root(tree_for_char_literal44, root_0)

          end
          @state.following.push(TOKENS_FOLLOWING_test_IN_def_parameter_707)
          test45 = test
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, test45.tree)
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
        # trace_out(__method__, 9)

      end
      
      return return_value
    end

    FpDefReturnValue = define_return_scope 

    # parser rule fp_def
    # 
    # (in Python.g)
    # 186:1: fp_def : ( NAME | LPAREN fp_list RPAREN );
    def fp_def
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 10)
      return_value = FpDefReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __NAME46__ = nil
      __LPAREN47__ = nil
      __RPAREN49__ = nil
      fp_list48 = nil

      tree_for_NAME46 = nil
      tree_for_LPAREN47 = nil
      tree_for_RPAREN49 = nil

      begin
        # at line 187:3: ( NAME | LPAREN fp_list RPAREN )
        alt_18 = 2
        look_18_0 = @input.peek(1)

        if (look_18_0 == NAME) 
          alt_18 = 1
        elsif (look_18_0 == LPAREN) 
          alt_18 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 18, 0)
          raise nvae
        end
        case alt_18
        when 1
          root_0 = @adaptor.create_flat_list!


          # at line 187:5: NAME
          __NAME46__ = match(NAME, TOKENS_FOLLOWING_NAME_IN_fp_def_723)
          if @state.backtracking == 0

            tree_for_NAME46 = @adaptor.create_with_payload!(__NAME46__)
            @adaptor.add_child(root_0, tree_for_NAME46)

          end

        when 2
          root_0 = @adaptor.create_flat_list!


          # at line 188:5: LPAREN fp_list RPAREN
          __LPAREN47__ = match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_fp_def_729)
          @state.following.push(TOKENS_FOLLOWING_fp_list_IN_fp_def_732)
          fp_list48 = fp_list
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, fp_list48.tree)
          end
          __RPAREN49__ = match(RPAREN, TOKENS_FOLLOWING_RPAREN_IN_fp_def_734)

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
        # trace_out(__method__, 10)

      end
      
      return return_value
    end

    FpListReturnValue = define_return_scope 

    # parser rule fp_list
    # 
    # (in Python.g)
    # 191:1: fp_list : fp_def ( ',' fp_def )* ( ',' )? -> ^( PARAM_TUPLE ( fp_def )+ ) ;
    def fp_list
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 11)
      return_value = FpListReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal51 = nil
      char_literal53 = nil
      fp_def50 = nil
      fp_def52 = nil

      tree_for_char_literal51 = nil
      tree_for_char_literal53 = nil
      stream_T__39 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__39")
      stream_fp_def = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule fp_def")
      begin
        # at line 192:5: fp_def ( ',' fp_def )* ( ',' )?
        @state.following.push(TOKENS_FOLLOWING_fp_def_IN_fp_list_748)
        fp_def50 = fp_def
        @state.following.pop
        if @state.backtracking == 0
          stream_fp_def.add(fp_def50.tree)
        end
        # at line 192:12: ( ',' fp_def )*
        loop do  #loop 19
          alt_19 = 2
          look_19_0 = @input.peek(1)

          if (look_19_0 == T__39) 
            look_19_1 = @input.peek(2)

            if (look_19_1 == LPAREN || look_19_1 == NAME) 
              alt_19 = 1

            end

          end
          case alt_19
          when 1
            # at line 192:14: ',' fp_def
            char_literal51 = match(T__39, TOKENS_FOLLOWING_T__39_IN_fp_list_752) 
            if @state.backtracking == 0
              stream_T__39.add(char_literal51)
            end
            @state.following.push(TOKENS_FOLLOWING_fp_def_IN_fp_list_754)
            fp_def52 = fp_def
            @state.following.pop
            if @state.backtracking == 0
              stream_fp_def.add(fp_def52.tree)
            end

          else
            break #loop 19
          end
        end
        # at line 192:28: ( ',' )?
        alt_20 = 2
        look_20_0 = @input.peek(1)

        if (look_20_0 == T__39) 
          alt_20 = 1
        end
        case alt_20
        when 1
          # at line 192:28: ','
          char_literal53 = match(T__39, TOKENS_FOLLOWING_T__39_IN_fp_list_759) 
          if @state.backtracking == 0
            stream_T__39.add(char_literal53)
          end

        end
        # AST Rewrite
        # elements: fp_def
        # token labels: 
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 
        if @state.backtracking == 0

          return_value.tree = root_0
          stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

          root_0 = @adaptor.create_flat_list!
          # 192:33: -> ^( PARAM_TUPLE ( fp_def )+ )
          # at line 192:36: ^( PARAM_TUPLE ( fp_def )+ )
          root_1 = @adaptor.create_flat_list!
          root_1 = @adaptor.become_root(@adaptor.create_from_type!(PARAM_TUPLE, "PARAM_TUPLE"), root_1)

          # at line 192:51: ( fp_def )+
          unless stream_fp_def.has_next?
            raise ANTLR3::RewriteEarlyExit
          end

          while stream_fp_def.has_next?
            @adaptor.add_child(root_1, stream_fp_def.next_tree)

          end

          stream_fp_def.reset

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
        # trace_out(__method__, 11)

      end
      
      return return_value
    end

    StatementReturnValue = define_return_scope 

    # parser rule statement
    # 
    # (in Python.g)
    # 195:1: statement : ( simple_statement | compound_statement );
    def statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 12)
      return_value = StatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      simple_statement54 = nil
      compound_statement55 = nil


      begin
        # at line 196:3: ( simple_statement | compound_statement )
        alt_21 = 2
        look_21_0 = @input.peek(1)

        if (look_21_0.between?(LONGINT, COMPLEX) || look_21_0 == LPAREN || look_21_0.between?(NAME, LBRACK) || look_21_0 == LCURLY || look_21_0.between?(INT, STRING) || look_21_0 == T__56 || look_21_0.between?(T__58, T__65) || look_21_0.between?(T__67, T__68) || look_21_0 == T__70 || look_21_0 == T__82 || look_21_0.between?(T__95, T__96) || look_21_0.between?(T__100, T__102) || look_21_0 == T__104) 
          alt_21 = 1
        elsif (look_21_0 == T__35 || look_21_0 == T__37 || look_21_0 == T__71 || look_21_0.between?(T__74, T__76) || look_21_0 == T__78 || look_21_0 == T__103) 
          alt_21 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 21, 0)
          raise nvae
        end
        case alt_21
        when 1
          root_0 = @adaptor.create_flat_list!


          # at line 196:5: simple_statement
          @state.following.push(TOKENS_FOLLOWING_simple_statement_IN_statement_784)
          simple_statement54 = simple_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, simple_statement54.tree)
          end

        when 2
          root_0 = @adaptor.create_flat_list!


          # at line 197:5: compound_statement
          @state.following.push(TOKENS_FOLLOWING_compound_statement_IN_statement_790)
          compound_statement55 = compound_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, compound_statement55.tree)
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
        # trace_out(__method__, 12)

      end
      
      return return_value
    end

    SimpleStatementReturnValue = define_return_scope 

    # parser rule simple_statement
    # 
    # (in Python.g)
    # 200:1: simple_statement : small_statement ( ';' small_statement )* ( ';' )? NEWLINE -> ( small_statement )+ ;
    def simple_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 13)
      return_value = SimpleStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal57 = nil
      char_literal59 = nil
      __NEWLINE60__ = nil
      small_statement56 = nil
      small_statement58 = nil

      tree_for_char_literal57 = nil
      tree_for_char_literal59 = nil
      tree_for_NEWLINE60 = nil
      stream_T__43 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__43")
      stream_NEWLINE = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token NEWLINE")
      stream_small_statement = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule small_statement")
      begin
        # at line 201:5: small_statement ( ';' small_statement )* ( ';' )? NEWLINE
        @state.following.push(TOKENS_FOLLOWING_small_statement_IN_simple_statement_803)
        small_statement56 = small_statement
        @state.following.pop
        if @state.backtracking == 0
          stream_small_statement.add(small_statement56.tree)
        end
        # at line 202:5: ( ';' small_statement )*
        loop do  #loop 22
          alt_22 = 2
          look_22_0 = @input.peek(1)

          if (look_22_0 == T__43) 
            look_22_1 = @input.peek(2)

            if (look_22_1.between?(LONGINT, COMPLEX) || look_22_1 == LPAREN || look_22_1.between?(NAME, LBRACK) || look_22_1 == LCURLY || look_22_1.between?(INT, STRING) || look_22_1 == T__56 || look_22_1.between?(T__58, T__65) || look_22_1.between?(T__67, T__68) || look_22_1 == T__70 || look_22_1 == T__82 || look_22_1.between?(T__95, T__96) || look_22_1.between?(T__100, T__102) || look_22_1 == T__104) 
              alt_22 = 1

            end

          end
          case alt_22
          when 1
            # at line 202:7: ';' small_statement
            char_literal57 = match(T__43, TOKENS_FOLLOWING_T__43_IN_simple_statement_812) 
            if @state.backtracking == 0
              stream_T__43.add(char_literal57)
            end
            @state.following.push(TOKENS_FOLLOWING_small_statement_IN_simple_statement_814)
            small_statement58 = small_statement
            @state.following.pop
            if @state.backtracking == 0
              stream_small_statement.add(small_statement58.tree)
            end

          else
            break #loop 22
          end
        end
        # at line 203:5: ( ';' )?
        alt_23 = 2
        look_23_0 = @input.peek(1)

        if (look_23_0 == T__43) 
          alt_23 = 1
        end
        case alt_23
        when 1
          # at line 203:5: ';'
          char_literal59 = match(T__43, TOKENS_FOLLOWING_T__43_IN_simple_statement_824) 
          if @state.backtracking == 0
            stream_T__43.add(char_literal59)
          end

        end
        __NEWLINE60__ = match(NEWLINE, TOKENS_FOLLOWING_NEWLINE_IN_simple_statement_827) 
        if @state.backtracking == 0
          stream_NEWLINE.add(__NEWLINE60__)
        end
        # AST Rewrite
        # elements: small_statement
        # token labels: 
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 
        if @state.backtracking == 0

          return_value.tree = root_0
          stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

          root_0 = @adaptor.create_flat_list!
          # 204:5: -> ( small_statement )+
          # at line 204:8: ( small_statement )+
          unless stream_small_statement.has_next?
            raise ANTLR3::RewriteEarlyExit
          end

          while stream_small_statement.has_next?
            @adaptor.add_child(root_0, stream_small_statement.next_tree)

          end

          stream_small_statement.reset



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
        # trace_out(__method__, 13)

      end
      
      return return_value
    end

    SmallStatementReturnValue = define_return_scope 

    # parser rule small_statement
    # 
    # (in Python.g)
    # 207:1: small_statement : ( expr_statement | print_statement | del_statement | pass_statement | flow_statement | import_statement | global_statement | exec_statement | assert_statement );
    def small_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 14)
      return_value = SmallStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      expr_statement61 = nil
      print_statement62 = nil
      del_statement63 = nil
      pass_statement64 = nil
      flow_statement65 = nil
      import_statement66 = nil
      global_statement67 = nil
      exec_statement68 = nil
      assert_statement69 = nil


      begin
        # at line 208:3: ( expr_statement | print_statement | del_statement | pass_statement | flow_statement | import_statement | global_statement | exec_statement | assert_statement )
        alt_24 = 9
        case look_24 = @input.peek(1)
        when LONGINT, COMPLEX, LPAREN, NAME, LBRACK, LCURLY, INT, FLOAT, STRING, T__82, T__95, T__96, T__100, T__101, T__102 then alt_24 = 1
        when T__56 then alt_24 = 2
        when T__58 then alt_24 = 3
        when T__59 then alt_24 = 4
        when T__60, T__61, T__62, T__63, T__104 then alt_24 = 5
        when T__64, T__65 then alt_24 = 6
        when T__67 then alt_24 = 7
        when T__68 then alt_24 = 8
        when T__70 then alt_24 = 9
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          nvae = NoViableAlternative("", 24, 0)
          raise nvae
        end
        case alt_24
        when 1
          root_0 = @adaptor.create_flat_list!


          # at line 208:5: expr_statement
          @state.following.push(TOKENS_FOLLOWING_expr_statement_IN_small_statement_849)
          expr_statement61 = expr_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, expr_statement61.tree)
          end

        when 2
          root_0 = @adaptor.create_flat_list!


          # at line 209:5: print_statement
          @state.following.push(TOKENS_FOLLOWING_print_statement_IN_small_statement_855)
          print_statement62 = print_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, print_statement62.tree)
          end

        when 3
          root_0 = @adaptor.create_flat_list!


          # at line 210:5: del_statement
          @state.following.push(TOKENS_FOLLOWING_del_statement_IN_small_statement_861)
          del_statement63 = del_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, del_statement63.tree)
          end

        when 4
          root_0 = @adaptor.create_flat_list!


          # at line 211:5: pass_statement
          @state.following.push(TOKENS_FOLLOWING_pass_statement_IN_small_statement_867)
          pass_statement64 = pass_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, pass_statement64.tree)
          end

        when 5
          root_0 = @adaptor.create_flat_list!


          # at line 212:5: flow_statement
          @state.following.push(TOKENS_FOLLOWING_flow_statement_IN_small_statement_873)
          flow_statement65 = flow_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, flow_statement65.tree)
          end

        when 6
          root_0 = @adaptor.create_flat_list!


          # at line 213:5: import_statement
          @state.following.push(TOKENS_FOLLOWING_import_statement_IN_small_statement_879)
          import_statement66 = import_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, import_statement66.tree)
          end

        when 7
          root_0 = @adaptor.create_flat_list!


          # at line 214:5: global_statement
          @state.following.push(TOKENS_FOLLOWING_global_statement_IN_small_statement_885)
          global_statement67 = global_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, global_statement67.tree)
          end

        when 8
          root_0 = @adaptor.create_flat_list!


          # at line 215:5: exec_statement
          @state.following.push(TOKENS_FOLLOWING_exec_statement_IN_small_statement_891)
          exec_statement68 = exec_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, exec_statement68.tree)
          end

        when 9
          root_0 = @adaptor.create_flat_list!


          # at line 216:5: assert_statement
          @state.following.push(TOKENS_FOLLOWING_assert_statement_IN_small_statement_897)
          assert_statement69 = assert_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, assert_statement69.tree)
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
        # trace_out(__method__, 14)

      end
      
      return return_value
    end

    ExprStatementReturnValue = define_return_scope 

    # parser rule expr_statement
    # 
    # (in Python.g)
    # 219:1: expr_statement : test_list ( ( '+=' | '-=' | '*=' | '/=' | '%=' | '&=' | '|=' | '^=' | '<<=' | '>>=' | '**=' | '//=' ) ( yield_expr | test_list ) | ( '=' ( test_list | yield_expr ) )+ )? ;
    def expr_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 15)
      return_value = ExprStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal71 = nil
      string_literal72 = nil
      string_literal73 = nil
      string_literal74 = nil
      string_literal75 = nil
      string_literal76 = nil
      string_literal77 = nil
      string_literal78 = nil
      string_literal79 = nil
      string_literal80 = nil
      string_literal81 = nil
      string_literal82 = nil
      char_literal85 = nil
      test_list70 = nil
      yield_expr83 = nil
      test_list84 = nil
      test_list86 = nil
      yield_expr87 = nil

      tree_for_string_literal71 = nil
      tree_for_string_literal72 = nil
      tree_for_string_literal73 = nil
      tree_for_string_literal74 = nil
      tree_for_string_literal75 = nil
      tree_for_string_literal76 = nil
      tree_for_string_literal77 = nil
      tree_for_string_literal78 = nil
      tree_for_string_literal79 = nil
      tree_for_string_literal80 = nil
      tree_for_string_literal81 = nil
      tree_for_string_literal82 = nil
      tree_for_char_literal85 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 220:5: test_list ( ( '+=' | '-=' | '*=' | '/=' | '%=' | '&=' | '|=' | '^=' | '<<=' | '>>=' | '**=' | '//=' ) ( yield_expr | test_list ) | ( '=' ( test_list | yield_expr ) )+ )?
        @state.following.push(TOKENS_FOLLOWING_test_list_IN_expr_statement_910)
        test_list70 = test_list
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, test_list70.tree)
        end
        # at line 221:5: ( ( '+=' | '-=' | '*=' | '/=' | '%=' | '&=' | '|=' | '^=' | '<<=' | '>>=' | '**=' | '//=' ) ( yield_expr | test_list ) | ( '=' ( test_list | yield_expr ) )+ )?
        alt_29 = 3
        look_29_0 = @input.peek(1)

        if (look_29_0.between?(T__44, T__55)) 
          alt_29 = 1
        elsif (look_29_0 == T__42) 
          alt_29 = 2
        end
        case alt_29
        when 1
          # at line 221:7: ( '+=' | '-=' | '*=' | '/=' | '%=' | '&=' | '|=' | '^=' | '<<=' | '>>=' | '**=' | '//=' ) ( yield_expr | test_list )
          # at line 221:7: ( '+=' | '-=' | '*=' | '/=' | '%=' | '&=' | '|=' | '^=' | '<<=' | '>>=' | '**=' | '//=' )
          alt_25 = 12
          case look_25 = @input.peek(1)
          when T__44 then alt_25 = 1
          when T__45 then alt_25 = 2
          when T__46 then alt_25 = 3
          when T__47 then alt_25 = 4
          when T__48 then alt_25 = 5
          when T__49 then alt_25 = 6
          when T__50 then alt_25 = 7
          when T__51 then alt_25 = 8
          when T__52 then alt_25 = 9
          when T__53 then alt_25 = 10
          when T__54 then alt_25 = 11
          when T__55 then alt_25 = 12
          else
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

            nvae = NoViableAlternative("", 25, 0)
            raise nvae
          end
          case alt_25
          when 1
            # at line 221:9: '+='
            string_literal71 = match(T__44, TOKENS_FOLLOWING_T__44_IN_expr_statement_920)
            if @state.backtracking == 0

              tree_for_string_literal71 = @adaptor.create_with_payload!(string_literal71)
              root_0 = @adaptor.become_root(tree_for_string_literal71, root_0)

            end

          when 2
            # at line 222:9: '-='
            string_literal72 = match(T__45, TOKENS_FOLLOWING_T__45_IN_expr_statement_931)
            if @state.backtracking == 0

              tree_for_string_literal72 = @adaptor.create_with_payload!(string_literal72)
              root_0 = @adaptor.become_root(tree_for_string_literal72, root_0)

            end

          when 3
            # at line 223:9: '*='
            string_literal73 = match(T__46, TOKENS_FOLLOWING_T__46_IN_expr_statement_942)
            if @state.backtracking == 0

              tree_for_string_literal73 = @adaptor.create_with_payload!(string_literal73)
              root_0 = @adaptor.become_root(tree_for_string_literal73, root_0)

            end

          when 4
            # at line 224:9: '/='
            string_literal74 = match(T__47, TOKENS_FOLLOWING_T__47_IN_expr_statement_953)
            if @state.backtracking == 0

              tree_for_string_literal74 = @adaptor.create_with_payload!(string_literal74)
              root_0 = @adaptor.become_root(tree_for_string_literal74, root_0)

            end

          when 5
            # at line 225:9: '%='
            string_literal75 = match(T__48, TOKENS_FOLLOWING_T__48_IN_expr_statement_964)
            if @state.backtracking == 0

              tree_for_string_literal75 = @adaptor.create_with_payload!(string_literal75)
              root_0 = @adaptor.become_root(tree_for_string_literal75, root_0)

            end

          when 6
            # at line 226:9: '&='
            string_literal76 = match(T__49, TOKENS_FOLLOWING_T__49_IN_expr_statement_975)
            if @state.backtracking == 0

              tree_for_string_literal76 = @adaptor.create_with_payload!(string_literal76)
              root_0 = @adaptor.become_root(tree_for_string_literal76, root_0)

            end

          when 7
            # at line 227:9: '|='
            string_literal77 = match(T__50, TOKENS_FOLLOWING_T__50_IN_expr_statement_986)
            if @state.backtracking == 0

              tree_for_string_literal77 = @adaptor.create_with_payload!(string_literal77)
              root_0 = @adaptor.become_root(tree_for_string_literal77, root_0)

            end

          when 8
            # at line 228:9: '^='
            string_literal78 = match(T__51, TOKENS_FOLLOWING_T__51_IN_expr_statement_997)
            if @state.backtracking == 0

              tree_for_string_literal78 = @adaptor.create_with_payload!(string_literal78)
              root_0 = @adaptor.become_root(tree_for_string_literal78, root_0)

            end

          when 9
            # at line 229:9: '<<='
            string_literal79 = match(T__52, TOKENS_FOLLOWING_T__52_IN_expr_statement_1008)
            if @state.backtracking == 0

              tree_for_string_literal79 = @adaptor.create_with_payload!(string_literal79)
              root_0 = @adaptor.become_root(tree_for_string_literal79, root_0)

            end

          when 10
            # at line 230:9: '>>='
            string_literal80 = match(T__53, TOKENS_FOLLOWING_T__53_IN_expr_statement_1019)
            if @state.backtracking == 0

              tree_for_string_literal80 = @adaptor.create_with_payload!(string_literal80)
              root_0 = @adaptor.become_root(tree_for_string_literal80, root_0)

            end

          when 11
            # at line 231:9: '**='
            string_literal81 = match(T__54, TOKENS_FOLLOWING_T__54_IN_expr_statement_1030)
            if @state.backtracking == 0

              tree_for_string_literal81 = @adaptor.create_with_payload!(string_literal81)
              root_0 = @adaptor.become_root(tree_for_string_literal81, root_0)

            end

          when 12
            # at line 232:9: '//='
            string_literal82 = match(T__55, TOKENS_FOLLOWING_T__55_IN_expr_statement_1041)
            if @state.backtracking == 0

              tree_for_string_literal82 = @adaptor.create_with_payload!(string_literal82)
              root_0 = @adaptor.become_root(tree_for_string_literal82, root_0)

            end

          end
          # at line 234:7: ( yield_expr | test_list )
          alt_26 = 2
          look_26_0 = @input.peek(1)

          if (look_26_0 == T__104) 
            alt_26 = 1
          elsif (look_26_0.between?(LONGINT, COMPLEX) || look_26_0 == LPAREN || look_26_0.between?(NAME, LBRACK) || look_26_0 == LCURLY || look_26_0.between?(INT, STRING) || look_26_0 == T__82 || look_26_0.between?(T__95, T__96) || look_26_0.between?(T__100, T__102)) 
            alt_26 = 2
          else
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
          nvae = NoViableAlternative("", 26, 0)
            raise nvae
          end
          case alt_26
          when 1
            # at line 234:9: yield_expr
            @state.following.push(TOKENS_FOLLOWING_yield_expr_IN_expr_statement_1060)
            yield_expr83 = yield_expr
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, yield_expr83.tree)
            end

          when 2
            # at line 235:9: test_list
            @state.following.push(TOKENS_FOLLOWING_test_list_IN_expr_statement_1070)
            test_list84 = test_list
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, test_list84.tree)
            end

          end

        when 2
          # at line 237:7: ( '=' ( test_list | yield_expr ) )+
          # at file 237:7: ( '=' ( test_list | yield_expr ) )+
          match_count_28 = 0
          loop do
            alt_28 = 2
            look_28_0 = @input.peek(1)

            if (look_28_0 == T__42) 
              alt_28 = 1

            end
            case alt_28
            when 1
              # at line 237:9: '=' ( test_list | yield_expr )
              char_literal85 = match(T__42, TOKENS_FOLLOWING_T__42_IN_expr_statement_1088)
              if @state.backtracking == 0

                tree_for_char_literal85 = @adaptor.create_with_payload!(char_literal85)
                root_0 = @adaptor.become_root(tree_for_char_literal85, root_0)

              end
              # at line 237:14: ( test_list | yield_expr )
              alt_27 = 2
              look_27_0 = @input.peek(1)

              if (look_27_0.between?(LONGINT, COMPLEX) || look_27_0 == LPAREN || look_27_0.between?(NAME, LBRACK) || look_27_0 == LCURLY || look_27_0.between?(INT, STRING) || look_27_0 == T__82 || look_27_0.between?(T__95, T__96) || look_27_0.between?(T__100, T__102)) 
                alt_27 = 1
              elsif (look_27_0 == T__104) 
                alt_27 = 2
              else
                @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
              nvae = NoViableAlternative("", 27, 0)
                raise nvae
              end
              case alt_27
              when 1
                # at line 237:16: test_list
                @state.following.push(TOKENS_FOLLOWING_test_list_IN_expr_statement_1093)
                test_list86 = test_list
                @state.following.pop
                if @state.backtracking == 0
                  @adaptor.add_child(root_0, test_list86.tree)
                end

              when 2
                # at line 237:28: yield_expr
                @state.following.push(TOKENS_FOLLOWING_yield_expr_IN_expr_statement_1097)
                yield_expr87 = yield_expr
                @state.following.pop
                if @state.backtracking == 0
                  @adaptor.add_child(root_0, yield_expr87.tree)
                end

              end

            else
              match_count_28 > 0 and break
              @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

              eee = EarlyExit(28)


              raise eee
            end
            match_count_28 += 1
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
        # trace_out(__method__, 15)

      end
      
      return return_value
    end

    AugmentedAssignReturnValue = define_return_scope 

    # parser rule augmented_assign
    # 
    # (in Python.g)
    # 241:1: augmented_assign : ( '+=' | '-=' | '*=' | '/=' | '%=' | '&=' | '|=' | '^=' | '<<=' | '>>=' | '**=' | '//=' );
    def augmented_assign
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 16)
      return_value = AugmentedAssignReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      set88 = nil

      tree_for_set88 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 
        set88 = @input.look
        if @input.peek(1).between?(T__44, T__55)
          @input.consume
          if @state.backtracking == 0
            @adaptor.add_child(root_0, @adaptor.create_with_payload!(set88))
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
        # trace_out(__method__, 16)

      end
      
      return return_value
    end

    PrintStatementReturnValue = define_return_scope 

    # parser rule print_statement
    # 
    # (in Python.g)
    # 256:1: print_statement : 'print' ( print_list | '>>' print_list )? ;
    def print_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 17)
      return_value = PrintStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal89 = nil
      string_literal91 = nil
      print_list90 = nil
      print_list92 = nil

      tree_for_string_literal89 = nil
      tree_for_string_literal91 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 257:5: 'print' ( print_list | '>>' print_list )?
        string_literal89 = match(T__56, TOKENS_FOLLOWING_T__56_IN_print_statement_1205)
        if @state.backtracking == 0

          tree_for_string_literal89 = @adaptor.create_with_payload!(string_literal89)
          @adaptor.add_child(root_0, tree_for_string_literal89)

        end
        # at line 257:13: ( print_list | '>>' print_list )?
        alt_30 = 3
        look_30_0 = @input.peek(1)

        if (look_30_0.between?(LONGINT, COMPLEX) || look_30_0 == LPAREN || look_30_0.between?(NAME, LBRACK) || look_30_0 == LCURLY || look_30_0.between?(INT, STRING) || look_30_0 == T__82 || look_30_0.between?(T__95, T__96) || look_30_0.between?(T__100, T__102)) 
          alt_30 = 1
        elsif (look_30_0 == T__57) 
          alt_30 = 2
        end
        case alt_30
        when 1
          # at line 257:15: print_list
          @state.following.push(TOKENS_FOLLOWING_print_list_IN_print_statement_1209)
          print_list90 = print_list
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, print_list90.tree)
          end

        when 2
          # at line 257:28: '>>' print_list
          string_literal91 = match(T__57, TOKENS_FOLLOWING_T__57_IN_print_statement_1213)
          if @state.backtracking == 0

            tree_for_string_literal91 = @adaptor.create_with_payload!(string_literal91)
            @adaptor.add_child(root_0, tree_for_string_literal91)

          end
          @state.following.push(TOKENS_FOLLOWING_print_list_IN_print_statement_1215)
          print_list92 = print_list
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, print_list92.tree)
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
        # trace_out(__method__, 17)

      end
      
      return return_value
    end

    PrintListReturnValue = define_return_scope :newline

    # parser rule print_list
    # 
    # (in Python.g)
    # 260:1: print_list returns [newline] : test ( options {k=2; } : ',' test )* ( ',' )? ;
    def print_list
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 18)
      return_value = PrintListReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal94 = nil
      char_literal96 = nil
      test93 = nil
      test95 = nil

      tree_for_char_literal94 = nil
      tree_for_char_literal96 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 261:5: test ( options {k=2; } : ',' test )* ( ',' )?
        @state.following.push(TOKENS_FOLLOWING_test_IN_print_list_1235)
        test93 = test
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, test93.tree)
        end
        # at line 261:10: ( options {k=2; } : ',' test )*
        loop do  #loop 31
          alt_31 = 2
          alt_31 = @dfa31.predict(@input)
          case alt_31
          when 1
            # at line 261:27: ',' test
            char_literal94 = match(T__39, TOKENS_FOLLOWING_T__39_IN_print_list_1246)
            if @state.backtracking == 0

              tree_for_char_literal94 = @adaptor.create_with_payload!(char_literal94)
              @adaptor.add_child(root_0, tree_for_char_literal94)

            end
            @state.following.push(TOKENS_FOLLOWING_test_IN_print_list_1248)
            test95 = test
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, test95.tree)
            end

          else
            break #loop 31
          end
        end
        # at line 261:39: ( ',' )?
        alt_32 = 2
        look_32_0 = @input.peek(1)

        if (look_32_0 == T__39) 
          alt_32 = 1
        end
        case alt_32
        when 1
          # at line 261:39: ','
          char_literal96 = match(T__39, TOKENS_FOLLOWING_T__39_IN_print_list_1253)
          if @state.backtracking == 0

            tree_for_char_literal96 = @adaptor.create_with_payload!(char_literal96)
            @adaptor.add_child(root_0, tree_for_char_literal96)

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
        # trace_out(__method__, 18)

      end
      
      return return_value
    end

    DelStatementReturnValue = define_return_scope 

    # parser rule del_statement
    # 
    # (in Python.g)
    # 265:1: del_statement : 'del' exprlist ;
    def del_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 19)
      return_value = DelStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal97 = nil
      exprlist98 = nil

      tree_for_string_literal97 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 266:5: 'del' exprlist
        string_literal97 = match(T__58, TOKENS_FOLLOWING_T__58_IN_del_statement_1268)
        if @state.backtracking == 0

          tree_for_string_literal97 = @adaptor.create_with_payload!(string_literal97)
          @adaptor.add_child(root_0, tree_for_string_literal97)

        end
        @state.following.push(TOKENS_FOLLOWING_exprlist_IN_del_statement_1270)
        exprlist98 = exprlist
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, exprlist98.tree)
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

    PassStatementReturnValue = define_return_scope 

    # parser rule pass_statement
    # 
    # (in Python.g)
    # 269:1: pass_statement : 'pass' ;
    def pass_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 20)
      return_value = PassStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal99 = nil

      tree_for_string_literal99 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 270:5: 'pass'
        string_literal99 = match(T__59, TOKENS_FOLLOWING_T__59_IN_pass_statement_1283)
        if @state.backtracking == 0

          tree_for_string_literal99 = @adaptor.create_with_payload!(string_literal99)
          @adaptor.add_child(root_0, tree_for_string_literal99)

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

    FlowStatementReturnValue = define_return_scope 

    # parser rule flow_statement
    # 
    # (in Python.g)
    # 273:1: flow_statement : ( break_statement | continue_statement | return_statement | raise_statement | yield_statement );
    def flow_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 21)
      return_value = FlowStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      break_statement100 = nil
      continue_statement101 = nil
      return_statement102 = nil
      raise_statement103 = nil
      yield_statement104 = nil


      begin
        # at line 274:3: ( break_statement | continue_statement | return_statement | raise_statement | yield_statement )
        alt_33 = 5
        case look_33 = @input.peek(1)
        when T__60 then alt_33 = 1
        when T__61 then alt_33 = 2
        when T__62 then alt_33 = 3
        when T__63 then alt_33 = 4
        when T__104 then alt_33 = 5
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          nvae = NoViableAlternative("", 33, 0)
          raise nvae
        end
        case alt_33
        when 1
          root_0 = @adaptor.create_flat_list!


          # at line 274:5: break_statement
          @state.following.push(TOKENS_FOLLOWING_break_statement_IN_flow_statement_1296)
          break_statement100 = break_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, break_statement100.tree)
          end

        when 2
          root_0 = @adaptor.create_flat_list!


          # at line 275:5: continue_statement
          @state.following.push(TOKENS_FOLLOWING_continue_statement_IN_flow_statement_1302)
          continue_statement101 = continue_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, continue_statement101.tree)
          end

        when 3
          root_0 = @adaptor.create_flat_list!


          # at line 276:5: return_statement
          @state.following.push(TOKENS_FOLLOWING_return_statement_IN_flow_statement_1308)
          return_statement102 = return_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, return_statement102.tree)
          end

        when 4
          root_0 = @adaptor.create_flat_list!


          # at line 277:5: raise_statement
          @state.following.push(TOKENS_FOLLOWING_raise_statement_IN_flow_statement_1314)
          raise_statement103 = raise_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, raise_statement103.tree)
          end

        when 5
          root_0 = @adaptor.create_flat_list!


          # at line 278:5: yield_statement
          @state.following.push(TOKENS_FOLLOWING_yield_statement_IN_flow_statement_1320)
          yield_statement104 = yield_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, yield_statement104.tree)
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
        # trace_out(__method__, 21)

      end
      
      return return_value
    end

    BreakStatementReturnValue = define_return_scope 

    # parser rule break_statement
    # 
    # (in Python.g)
    # 281:1: break_statement : 'break' ;
    def break_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 22)
      return_value = BreakStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal105 = nil

      tree_for_string_literal105 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 282:5: 'break'
        string_literal105 = match(T__60, TOKENS_FOLLOWING_T__60_IN_break_statement_1333)
        if @state.backtracking == 0

          tree_for_string_literal105 = @adaptor.create_with_payload!(string_literal105)
          root_0 = @adaptor.become_root(tree_for_string_literal105, root_0)

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

    ContinueStatementReturnValue = define_return_scope 

    # parser rule continue_statement
    # 
    # (in Python.g)
    # 285:1: continue_statement : 'continue' ;
    def continue_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 23)
      return_value = ContinueStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal106 = nil

      tree_for_string_literal106 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 286:5: 'continue'
        string_literal106 = match(T__61, TOKENS_FOLLOWING_T__61_IN_continue_statement_1347)
        if @state.backtracking == 0

          tree_for_string_literal106 = @adaptor.create_with_payload!(string_literal106)
          root_0 = @adaptor.become_root(tree_for_string_literal106, root_0)

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

    ReturnStatementReturnValue = define_return_scope 

    # parser rule return_statement
    # 
    # (in Python.g)
    # 289:1: return_statement : 'return' ( test_list )? ;
    def return_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 24)
      return_value = ReturnStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal107 = nil
      test_list108 = nil

      tree_for_string_literal107 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 290:5: 'return' ( test_list )?
        string_literal107 = match(T__62, TOKENS_FOLLOWING_T__62_IN_return_statement_1361)
        if @state.backtracking == 0

          tree_for_string_literal107 = @adaptor.create_with_payload!(string_literal107)
          root_0 = @adaptor.become_root(tree_for_string_literal107, root_0)

        end
        # at line 290:15: ( test_list )?
        alt_34 = 2
        look_34_0 = @input.peek(1)

        if (look_34_0.between?(LONGINT, COMPLEX) || look_34_0 == LPAREN || look_34_0.between?(NAME, LBRACK) || look_34_0 == LCURLY || look_34_0.between?(INT, STRING) || look_34_0 == T__82 || look_34_0.between?(T__95, T__96) || look_34_0.between?(T__100, T__102)) 
          alt_34 = 1
        end
        case alt_34
        when 1
          # at line 290:15: test_list
          @state.following.push(TOKENS_FOLLOWING_test_list_IN_return_statement_1364)
          test_list108 = test_list
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, test_list108.tree)
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
        # trace_out(__method__, 24)

      end
      
      return return_value
    end

    YieldStatementReturnValue = define_return_scope 

    # parser rule yield_statement
    # 
    # (in Python.g)
    # 293:1: yield_statement : yield_expr ;
    def yield_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 25)
      return_value = YieldStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      yield_expr109 = nil


      begin
        root_0 = @adaptor.create_flat_list!


        # at line 294:5: yield_expr
        @state.following.push(TOKENS_FOLLOWING_yield_expr_IN_yield_statement_1378)
        yield_expr109 = yield_expr
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, yield_expr109.tree)
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
        # trace_out(__method__, 25)

      end
      
      return return_value
    end

    RaiseStatementReturnValue = define_return_scope 

    # parser rule raise_statement
    # 
    # (in Python.g)
    # 297:1: raise_statement : 'raise' ( test ( ',' test ( ',' test )? )? )? ;
    def raise_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 26)
      return_value = RaiseStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal110 = nil
      char_literal112 = nil
      char_literal114 = nil
      test111 = nil
      test113 = nil
      test115 = nil

      tree_for_string_literal110 = nil
      tree_for_char_literal112 = nil
      tree_for_char_literal114 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 298:5: 'raise' ( test ( ',' test ( ',' test )? )? )?
        string_literal110 = match(T__63, TOKENS_FOLLOWING_T__63_IN_raise_statement_1391)
        if @state.backtracking == 0

          tree_for_string_literal110 = @adaptor.create_with_payload!(string_literal110)
          @adaptor.add_child(root_0, tree_for_string_literal110)

        end
        # at line 298:13: ( test ( ',' test ( ',' test )? )? )?
        alt_37 = 2
        look_37_0 = @input.peek(1)

        if (look_37_0.between?(LONGINT, COMPLEX) || look_37_0 == LPAREN || look_37_0.between?(NAME, LBRACK) || look_37_0 == LCURLY || look_37_0.between?(INT, STRING) || look_37_0 == T__82 || look_37_0.between?(T__95, T__96) || look_37_0.between?(T__100, T__102)) 
          alt_37 = 1
        end
        case alt_37
        when 1
          # at line 298:15: test ( ',' test ( ',' test )? )?
          @state.following.push(TOKENS_FOLLOWING_test_IN_raise_statement_1395)
          test111 = test
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, test111.tree)
          end
          # at line 298:20: ( ',' test ( ',' test )? )?
          alt_36 = 2
          look_36_0 = @input.peek(1)

          if (look_36_0 == T__39) 
            alt_36 = 1
          end
          case alt_36
          when 1
            # at line 298:22: ',' test ( ',' test )?
            char_literal112 = match(T__39, TOKENS_FOLLOWING_T__39_IN_raise_statement_1399)
            if @state.backtracking == 0

              tree_for_char_literal112 = @adaptor.create_with_payload!(char_literal112)
              @adaptor.add_child(root_0, tree_for_char_literal112)

            end
            @state.following.push(TOKENS_FOLLOWING_test_IN_raise_statement_1401)
            test113 = test
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, test113.tree)
            end
            # at line 298:31: ( ',' test )?
            alt_35 = 2
            look_35_0 = @input.peek(1)

            if (look_35_0 == T__39) 
              alt_35 = 1
            end
            case alt_35
            when 1
              # at line 298:33: ',' test
              char_literal114 = match(T__39, TOKENS_FOLLOWING_T__39_IN_raise_statement_1405)
              if @state.backtracking == 0

                tree_for_char_literal114 = @adaptor.create_with_payload!(char_literal114)
                @adaptor.add_child(root_0, tree_for_char_literal114)

              end
              @state.following.push(TOKENS_FOLLOWING_test_IN_raise_statement_1407)
              test115 = test
              @state.following.pop
              if @state.backtracking == 0
                @adaptor.add_child(root_0, test115.tree)
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
        # trace_out(__method__, 26)

      end
      
      return return_value
    end

    ImportStatementReturnValue = define_return_scope 

    # parser rule import_statement
    # 
    # (in Python.g)
    # 301:1: import_statement : ( import_name | import_from );
    def import_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 27)
      return_value = ImportStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      import_name116 = nil
      import_from117 = nil


      begin
        # at line 302:3: ( import_name | import_from )
        alt_38 = 2
        look_38_0 = @input.peek(1)

        if (look_38_0 == T__64) 
          alt_38 = 1
        elsif (look_38_0 == T__65) 
          alt_38 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 38, 0)
          raise nvae
        end
        case alt_38
        when 1
          root_0 = @adaptor.create_flat_list!


          # at line 302:5: import_name
          @state.following.push(TOKENS_FOLLOWING_import_name_IN_import_statement_1429)
          import_name116 = import_name
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, import_name116.tree)
          end

        when 2
          root_0 = @adaptor.create_flat_list!


          # at line 303:5: import_from
          @state.following.push(TOKENS_FOLLOWING_import_from_IN_import_statement_1435)
          import_from117 = import_from
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, import_from117.tree)
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
        # trace_out(__method__, 27)

      end
      
      return return_value
    end

    ImportNameReturnValue = define_return_scope 

    # parser rule import_name
    # 
    # (in Python.g)
    # 306:1: import_name : 'import' dotted_as_names ;
    def import_name
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 28)
      return_value = ImportNameReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal118 = nil
      dotted_as_names119 = nil

      tree_for_string_literal118 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 307:5: 'import' dotted_as_names
        string_literal118 = match(T__64, TOKENS_FOLLOWING_T__64_IN_import_name_1448)
        if @state.backtracking == 0

          tree_for_string_literal118 = @adaptor.create_with_payload!(string_literal118)
          root_0 = @adaptor.become_root(tree_for_string_literal118, root_0)

        end
        @state.following.push(TOKENS_FOLLOWING_dotted_as_names_IN_import_name_1451)
        dotted_as_names119 = dotted_as_names
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, dotted_as_names119.tree)
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

    ImportFromReturnValue = define_return_scope 

    # parser rule import_from
    # 
    # (in Python.g)
    # 310:1: import_from : 'from' ( ( '.' )* dotted_name | ( '.' )+ ) 'import' ( '*' | import_as_names | LPAREN import_as_names RPAREN ) ;
    def import_from
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 29)
      return_value = ImportFromReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal120 = nil
      char_literal121 = nil
      char_literal123 = nil
      string_literal124 = nil
      char_literal125 = nil
      __LPAREN127__ = nil
      __RPAREN129__ = nil
      dotted_name122 = nil
      import_as_names126 = nil
      import_as_names128 = nil

      tree_for_string_literal120 = nil
      tree_for_char_literal121 = nil
      tree_for_char_literal123 = nil
      tree_for_string_literal124 = nil
      tree_for_char_literal125 = nil
      tree_for_LPAREN127 = nil
      tree_for_RPAREN129 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 311:5: 'from' ( ( '.' )* dotted_name | ( '.' )+ ) 'import' ( '*' | import_as_names | LPAREN import_as_names RPAREN )
        string_literal120 = match(T__65, TOKENS_FOLLOWING_T__65_IN_import_from_1464)
        if @state.backtracking == 0

          tree_for_string_literal120 = @adaptor.create_with_payload!(string_literal120)
          @adaptor.add_child(root_0, tree_for_string_literal120)

        end
        # at line 311:12: ( ( '.' )* dotted_name | ( '.' )+ )
        alt_41 = 2
        alt_41 = @dfa41.predict(@input)
        case alt_41
        when 1
          # at line 311:14: ( '.' )* dotted_name
          # at line 311:14: ( '.' )*
          loop do  #loop 39
            alt_39 = 2
            look_39_0 = @input.peek(1)

            if (look_39_0 == T__36) 
              alt_39 = 1

            end
            case alt_39
            when 1
              # at line 311:14: '.'
              char_literal121 = match(T__36, TOKENS_FOLLOWING_T__36_IN_import_from_1468)
              if @state.backtracking == 0

                tree_for_char_literal121 = @adaptor.create_with_payload!(char_literal121)
                @adaptor.add_child(root_0, tree_for_char_literal121)

              end

            else
              break #loop 39
            end
          end
          @state.following.push(TOKENS_FOLLOWING_dotted_name_IN_import_from_1471)
          dotted_name122 = dotted_name
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, dotted_name122.tree)
          end

        when 2
          # at line 311:33: ( '.' )+
          # at file 311:33: ( '.' )+
          match_count_40 = 0
          loop do
            alt_40 = 2
            look_40_0 = @input.peek(1)

            if (look_40_0 == T__36) 
              alt_40 = 1

            end
            case alt_40
            when 1
              # at line 311:33: '.'
              char_literal123 = match(T__36, TOKENS_FOLLOWING_T__36_IN_import_from_1475)
              if @state.backtracking == 0

                tree_for_char_literal123 = @adaptor.create_with_payload!(char_literal123)
                @adaptor.add_child(root_0, tree_for_char_literal123)

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
        string_literal124 = match(T__64, TOKENS_FOLLOWING_T__64_IN_import_from_1480)
        if @state.backtracking == 0

          tree_for_string_literal124 = @adaptor.create_with_payload!(string_literal124)
          @adaptor.add_child(root_0, tree_for_string_literal124)

        end
        # at line 312:5: ( '*' | import_as_names | LPAREN import_as_names RPAREN )
        alt_42 = 3
        case look_42 = @input.peek(1)
        when T__40 then alt_42 = 1
        when NAME then alt_42 = 2
        when LPAREN then alt_42 = 3
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          nvae = NoViableAlternative("", 42, 0)
          raise nvae
        end
        case alt_42
        when 1
          # at line 312:7: '*'
          char_literal125 = match(T__40, TOKENS_FOLLOWING_T__40_IN_import_from_1488)
          if @state.backtracking == 0

            tree_for_char_literal125 = @adaptor.create_with_payload!(char_literal125)
            @adaptor.add_child(root_0, tree_for_char_literal125)

          end

        when 2
          # at line 313:7: import_as_names
          @state.following.push(TOKENS_FOLLOWING_import_as_names_IN_import_from_1496)
          import_as_names126 = import_as_names
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, import_as_names126.tree)
          end

        when 3
          # at line 314:7: LPAREN import_as_names RPAREN
          __LPAREN127__ = match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_import_from_1504)
          @state.following.push(TOKENS_FOLLOWING_import_as_names_IN_import_from_1507)
          import_as_names128 = import_as_names
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, import_as_names128.tree)
          end
          __RPAREN129__ = match(RPAREN, TOKENS_FOLLOWING_RPAREN_IN_import_from_1509)

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

    ImportAsNamesReturnValue = define_return_scope 

    # parser rule import_as_names
    # 
    # (in Python.g)
    # 318:1: import_as_names : import_as_name ( ',' import_as_name )* ( ',' )? ;
    def import_as_names
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 30)
      return_value = ImportAsNamesReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal131 = nil
      char_literal133 = nil
      import_as_name130 = nil
      import_as_name132 = nil

      tree_for_char_literal131 = nil
      tree_for_char_literal133 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 319:5: import_as_name ( ',' import_as_name )* ( ',' )?
        @state.following.push(TOKENS_FOLLOWING_import_as_name_IN_import_as_names_1529)
        import_as_name130 = import_as_name
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, import_as_name130.tree)
        end
        # at line 319:20: ( ',' import_as_name )*
        loop do  #loop 43
          alt_43 = 2
          look_43_0 = @input.peek(1)

          if (look_43_0 == T__39) 
            look_43_1 = @input.peek(2)

            if (look_43_1 == NAME) 
              alt_43 = 1

            end

          end
          case alt_43
          when 1
            # at line 319:22: ',' import_as_name
            char_literal131 = match(T__39, TOKENS_FOLLOWING_T__39_IN_import_as_names_1533)
            if @state.backtracking == 0

              tree_for_char_literal131 = @adaptor.create_with_payload!(char_literal131)
              @adaptor.add_child(root_0, tree_for_char_literal131)

            end
            @state.following.push(TOKENS_FOLLOWING_import_as_name_IN_import_as_names_1535)
            import_as_name132 = import_as_name
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, import_as_name132.tree)
            end

          else
            break #loop 43
          end
        end
        # at line 319:44: ( ',' )?
        alt_44 = 2
        look_44_0 = @input.peek(1)

        if (look_44_0 == T__39) 
          alt_44 = 1
        end
        case alt_44
        when 1
          # at line 319:44: ','
          char_literal133 = match(T__39, TOKENS_FOLLOWING_T__39_IN_import_as_names_1540)
          if @state.backtracking == 0

            tree_for_char_literal133 = @adaptor.create_with_payload!(char_literal133)
            @adaptor.add_child(root_0, tree_for_char_literal133)

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

    ImportAsNameReturnValue = define_return_scope 

    # parser rule import_as_name
    # 
    # (in Python.g)
    # 322:1: import_as_name : NAME ( 'as' NAME )? ;
    def import_as_name
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 31)
      return_value = ImportAsNameReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __NAME134__ = nil
      string_literal135 = nil
      __NAME136__ = nil

      tree_for_NAME134 = nil
      tree_for_string_literal135 = nil
      tree_for_NAME136 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 323:5: NAME ( 'as' NAME )?
        __NAME134__ = match(NAME, TOKENS_FOLLOWING_NAME_IN_import_as_name_1554)
        if @state.backtracking == 0

          tree_for_NAME134 = @adaptor.create_with_payload!(__NAME134__)
          @adaptor.add_child(root_0, tree_for_NAME134)

        end
        # at line 323:10: ( 'as' NAME )?
        alt_45 = 2
        look_45_0 = @input.peek(1)

        if (look_45_0 == T__66) 
          alt_45 = 1
        end
        case alt_45
        when 1
          # at line 323:12: 'as' NAME
          string_literal135 = match(T__66, TOKENS_FOLLOWING_T__66_IN_import_as_name_1558)
          if @state.backtracking == 0

            tree_for_string_literal135 = @adaptor.create_with_payload!(string_literal135)
            root_0 = @adaptor.become_root(tree_for_string_literal135, root_0)

          end
          __NAME136__ = match(NAME, TOKENS_FOLLOWING_NAME_IN_import_as_name_1561)
          if @state.backtracking == 0

            tree_for_NAME136 = @adaptor.create_with_payload!(__NAME136__)
            @adaptor.add_child(root_0, tree_for_NAME136)

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
        # trace_out(__method__, 31)

      end
      
      return return_value
    end

    DottedAsNameReturnValue = define_return_scope 

    # parser rule dotted_as_name
    # 
    # (in Python.g)
    # 326:1: dotted_as_name : dotted_name ( 'as' NAME )? ;
    def dotted_as_name
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 32)
      return_value = DottedAsNameReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal138 = nil
      __NAME139__ = nil
      dotted_name137 = nil

      tree_for_string_literal138 = nil
      tree_for_NAME139 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 327:5: dotted_name ( 'as' NAME )?
        @state.following.push(TOKENS_FOLLOWING_dotted_name_IN_dotted_as_name_1577)
        dotted_name137 = dotted_name
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, dotted_name137.tree)
        end
        # at line 327:17: ( 'as' NAME )?
        alt_46 = 2
        look_46_0 = @input.peek(1)

        if (look_46_0 == T__66) 
          alt_46 = 1
        end
        case alt_46
        when 1
          # at line 327:19: 'as' NAME
          string_literal138 = match(T__66, TOKENS_FOLLOWING_T__66_IN_dotted_as_name_1581)
          if @state.backtracking == 0

            tree_for_string_literal138 = @adaptor.create_with_payload!(string_literal138)
            root_0 = @adaptor.become_root(tree_for_string_literal138, root_0)

          end
          __NAME139__ = match(NAME, TOKENS_FOLLOWING_NAME_IN_dotted_as_name_1584)
          if @state.backtracking == 0

            tree_for_NAME139 = @adaptor.create_with_payload!(__NAME139__)
            @adaptor.add_child(root_0, tree_for_NAME139)

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
        # trace_out(__method__, 32)

      end
      
      return return_value
    end

    DottedAsNamesReturnValue = define_return_scope 

    # parser rule dotted_as_names
    # 
    # (in Python.g)
    # 330:1: dotted_as_names : dotted_as_name ( ',' dotted_as_name )* ;
    def dotted_as_names
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 33)
      return_value = DottedAsNamesReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal141 = nil
      dotted_as_name140 = nil
      dotted_as_name142 = nil

      tree_for_char_literal141 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 331:5: dotted_as_name ( ',' dotted_as_name )*
        @state.following.push(TOKENS_FOLLOWING_dotted_as_name_IN_dotted_as_names_1600)
        dotted_as_name140 = dotted_as_name
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, dotted_as_name140.tree)
        end
        # at line 331:20: ( ',' dotted_as_name )*
        loop do  #loop 47
          alt_47 = 2
          look_47_0 = @input.peek(1)

          if (look_47_0 == T__39) 
            alt_47 = 1

          end
          case alt_47
          when 1
            # at line 331:22: ',' dotted_as_name
            char_literal141 = match(T__39, TOKENS_FOLLOWING_T__39_IN_dotted_as_names_1604)
            @state.following.push(TOKENS_FOLLOWING_dotted_as_name_IN_dotted_as_names_1607)
            dotted_as_name142 = dotted_as_name
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, dotted_as_name142.tree)
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
        # trace_out(__method__, 33)

      end
      
      return return_value
    end

    DottedNameReturnValue = define_return_scope 

    # parser rule dotted_name
    # 
    # (in Python.g)
    # 334:1: dotted_name : NAME ( '.' NAME )* ;
    def dotted_name
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 34)
      return_value = DottedNameReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __NAME143__ = nil
      char_literal144 = nil
      __NAME145__ = nil

      tree_for_NAME143 = nil
      tree_for_char_literal144 = nil
      tree_for_NAME145 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 335:5: NAME ( '.' NAME )*
        __NAME143__ = match(NAME, TOKENS_FOLLOWING_NAME_IN_dotted_name_1625)
        if @state.backtracking == 0

          tree_for_NAME143 = @adaptor.create_with_payload!(__NAME143__)
          @adaptor.add_child(root_0, tree_for_NAME143)

        end
        # at line 335:10: ( '.' NAME )*
        loop do  #loop 48
          alt_48 = 2
          look_48_0 = @input.peek(1)

          if (look_48_0 == T__36) 
            alt_48 = 1

          end
          case alt_48
          when 1
            # at line 335:12: '.' NAME
            char_literal144 = match(T__36, TOKENS_FOLLOWING_T__36_IN_dotted_name_1629)
            if @state.backtracking == 0

              tree_for_char_literal144 = @adaptor.create_with_payload!(char_literal144)
              root_0 = @adaptor.become_root(tree_for_char_literal144, root_0)

            end
            __NAME145__ = match(NAME, TOKENS_FOLLOWING_NAME_IN_dotted_name_1632)
            if @state.backtracking == 0

              tree_for_NAME145 = @adaptor.create_with_payload!(__NAME145__)
              @adaptor.add_child(root_0, tree_for_NAME145)

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
        # trace_out(__method__, 34)

      end
      
      return return_value
    end

    GlobalStatementReturnValue = define_return_scope 

    # parser rule global_statement
    # 
    # (in Python.g)
    # 338:1: global_statement : 'global' NAME ( ',' NAME )* ;
    def global_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 35)
      return_value = GlobalStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal146 = nil
      __NAME147__ = nil
      char_literal148 = nil
      __NAME149__ = nil

      tree_for_string_literal146 = nil
      tree_for_NAME147 = nil
      tree_for_char_literal148 = nil
      tree_for_NAME149 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 339:5: 'global' NAME ( ',' NAME )*
        string_literal146 = match(T__67, TOKENS_FOLLOWING_T__67_IN_global_statement_1648)
        if @state.backtracking == 0

          tree_for_string_literal146 = @adaptor.create_with_payload!(string_literal146)
          root_0 = @adaptor.become_root(tree_for_string_literal146, root_0)

        end
        __NAME147__ = match(NAME, TOKENS_FOLLOWING_NAME_IN_global_statement_1651)
        if @state.backtracking == 0

          tree_for_NAME147 = @adaptor.create_with_payload!(__NAME147__)
          @adaptor.add_child(root_0, tree_for_NAME147)

        end
        # at line 339:20: ( ',' NAME )*
        loop do  #loop 49
          alt_49 = 2
          look_49_0 = @input.peek(1)

          if (look_49_0 == T__39) 
            alt_49 = 1

          end
          case alt_49
          when 1
            # at line 339:22: ',' NAME
            char_literal148 = match(T__39, TOKENS_FOLLOWING_T__39_IN_global_statement_1655)
            __NAME149__ = match(NAME, TOKENS_FOLLOWING_NAME_IN_global_statement_1658)
            if @state.backtracking == 0

              tree_for_NAME149 = @adaptor.create_with_payload!(__NAME149__)
              @adaptor.add_child(root_0, tree_for_NAME149)

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
        # trace_out(__method__, 35)

      end
      
      return return_value
    end

    ExecStatementReturnValue = define_return_scope 

    # parser rule exec_statement
    # 
    # (in Python.g)
    # 342:1: exec_statement : 'exec' expr ( 'in' test ( ',' test )? )? ;
    def exec_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 36)
      return_value = ExecStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal150 = nil
      string_literal152 = nil
      char_literal154 = nil
      expr151 = nil
      test153 = nil
      test155 = nil

      tree_for_string_literal150 = nil
      tree_for_string_literal152 = nil
      tree_for_char_literal154 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 343:5: 'exec' expr ( 'in' test ( ',' test )? )?
        string_literal150 = match(T__68, TOKENS_FOLLOWING_T__68_IN_exec_statement_1674)
        if @state.backtracking == 0

          tree_for_string_literal150 = @adaptor.create_with_payload!(string_literal150)
          @adaptor.add_child(root_0, tree_for_string_literal150)

        end
        @state.following.push(TOKENS_FOLLOWING_expr_IN_exec_statement_1676)
        expr151 = expr
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, expr151.tree)
        end
        # at line 343:17: ( 'in' test ( ',' test )? )?
        alt_51 = 2
        look_51_0 = @input.peek(1)

        if (look_51_0 == T__69) 
          alt_51 = 1
        end
        case alt_51
        when 1
          # at line 343:19: 'in' test ( ',' test )?
          string_literal152 = match(T__69, TOKENS_FOLLOWING_T__69_IN_exec_statement_1680)
          if @state.backtracking == 0

            tree_for_string_literal152 = @adaptor.create_with_payload!(string_literal152)
            @adaptor.add_child(root_0, tree_for_string_literal152)

          end
          @state.following.push(TOKENS_FOLLOWING_test_IN_exec_statement_1682)
          test153 = test
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, test153.tree)
          end
          # at line 343:29: ( ',' test )?
          alt_50 = 2
          look_50_0 = @input.peek(1)

          if (look_50_0 == T__39) 
            alt_50 = 1
          end
          case alt_50
          when 1
            # at line 343:31: ',' test
            char_literal154 = match(T__39, TOKENS_FOLLOWING_T__39_IN_exec_statement_1686)
            if @state.backtracking == 0

              tree_for_char_literal154 = @adaptor.create_with_payload!(char_literal154)
              @adaptor.add_child(root_0, tree_for_char_literal154)

            end
            @state.following.push(TOKENS_FOLLOWING_test_IN_exec_statement_1688)
            test155 = test
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, test155.tree)
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
        # trace_out(__method__, 36)

      end
      
      return return_value
    end

    AssertStatementReturnValue = define_return_scope 

    # parser rule assert_statement
    # 
    # (in Python.g)
    # 346:1: assert_statement : 'assert' assertion= test ( ',' error_value= test )? -> ^( 'assert' $assertion ( $error_value)? ) ;
    def assert_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 37)
      return_value = AssertStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal156 = nil
      char_literal157 = nil
      assertion = nil
      error_value = nil

      tree_for_string_literal156 = nil
      tree_for_char_literal157 = nil
      stream_T__70 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__70")
      stream_T__39 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__39")
      stream_test = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule test")
      begin
        # at line 347:5: 'assert' assertion= test ( ',' error_value= test )?
        string_literal156 = match(T__70, TOKENS_FOLLOWING_T__70_IN_assert_statement_1707) 
        if @state.backtracking == 0
          stream_T__70.add(string_literal156)
        end
        @state.following.push(TOKENS_FOLLOWING_test_IN_assert_statement_1711)
        assertion = test
        @state.following.pop
        if @state.backtracking == 0
          stream_test.add(assertion.tree)
        end
        # at line 347:29: ( ',' error_value= test )?
        alt_52 = 2
        look_52_0 = @input.peek(1)

        if (look_52_0 == T__39) 
          alt_52 = 1
        end
        case alt_52
        when 1
          # at line 347:31: ',' error_value= test
          char_literal157 = match(T__39, TOKENS_FOLLOWING_T__39_IN_assert_statement_1715) 
          if @state.backtracking == 0
            stream_T__39.add(char_literal157)
          end
          @state.following.push(TOKENS_FOLLOWING_test_IN_assert_statement_1719)
          error_value = test
          @state.following.pop
          if @state.backtracking == 0
            stream_test.add(error_value.tree)
          end

        end
        # AST Rewrite
        # elements: error_value, T__70, assertion
        # token labels: 
        # rule labels: return_value, assertion, error_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 
        if @state.backtracking == 0

          return_value.tree = root_0
          stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")
          stream_assertion = assertion ? subtree_stream("rule assertion", assertion.tree) : subtree_stream("token assertion")
          stream_error_value = error_value ? subtree_stream("rule error_value", error_value.tree) : subtree_stream("token error_value")

          root_0 = @adaptor.create_flat_list!
          # 348:5: -> ^( 'assert' $assertion ( $error_value)? )
          # at line 348:8: ^( 'assert' $assertion ( $error_value)? )
          root_1 = @adaptor.create_flat_list!
          root_1 = @adaptor.become_root(stream_T__70.next_node, root_1)

          @adaptor.add_child(root_1, stream_assertion.next_tree)
          # at line 348:31: ( $error_value)?
          if stream_error_value.has_next?
            @adaptor.add_child(root_1, stream_error_value.next_tree)

          end

          stream_error_value.reset();

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
        # trace_out(__method__, 37)

      end
      
      return return_value
    end

    CompoundStatementReturnValue = define_return_scope 

    # parser rule compound_statement
    # 
    # (in Python.g)
    # 351:1: compound_statement : ( if_statement | while_statement | for_statement | try_statement | with_statement | func_def | class_def );
    def compound_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 38)
      return_value = CompoundStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      if_statement158 = nil
      while_statement159 = nil
      for_statement160 = nil
      try_statement161 = nil
      with_statement162 = nil
      func_def163 = nil
      class_def164 = nil


      begin
        # at line 352:3: ( if_statement | while_statement | for_statement | try_statement | with_statement | func_def | class_def )
        alt_53 = 7
        case look_53 = @input.peek(1)
        when T__71 then alt_53 = 1
        when T__74 then alt_53 = 2
        when T__75 then alt_53 = 3
        when T__76 then alt_53 = 4
        when T__78 then alt_53 = 5
        when T__35, T__37 then alt_53 = 6
        when T__103 then alt_53 = 7
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          nvae = NoViableAlternative("", 53, 0)
          raise nvae
        end
        case alt_53
        when 1
          root_0 = @adaptor.create_flat_list!


          # at line 352:5: if_statement
          @state.following.push(TOKENS_FOLLOWING_if_statement_IN_compound_statement_1754)
          if_statement158 = if_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, if_statement158.tree)
          end

        when 2
          root_0 = @adaptor.create_flat_list!


          # at line 353:5: while_statement
          @state.following.push(TOKENS_FOLLOWING_while_statement_IN_compound_statement_1760)
          while_statement159 = while_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, while_statement159.tree)
          end

        when 3
          root_0 = @adaptor.create_flat_list!


          # at line 354:5: for_statement
          @state.following.push(TOKENS_FOLLOWING_for_statement_IN_compound_statement_1766)
          for_statement160 = for_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, for_statement160.tree)
          end

        when 4
          root_0 = @adaptor.create_flat_list!


          # at line 355:5: try_statement
          @state.following.push(TOKENS_FOLLOWING_try_statement_IN_compound_statement_1772)
          try_statement161 = try_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, try_statement161.tree)
          end

        when 5
          root_0 = @adaptor.create_flat_list!


          # at line 356:5: with_statement
          @state.following.push(TOKENS_FOLLOWING_with_statement_IN_compound_statement_1778)
          with_statement162 = with_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, with_statement162.tree)
          end

        when 6
          root_0 = @adaptor.create_flat_list!


          # at line 357:5: func_def
          @state.following.push(TOKENS_FOLLOWING_func_def_IN_compound_statement_1784)
          func_def163 = func_def
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, func_def163.tree)
          end

        when 7
          root_0 = @adaptor.create_flat_list!


          # at line 358:5: class_def
          @state.following.push(TOKENS_FOLLOWING_class_def_IN_compound_statement_1790)
          class_def164 = class_def
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, class_def164.tree)
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
        # trace_out(__method__, 38)

      end
      
      return return_value
    end

    IfStatementReturnValue = define_return_scope 

    # parser rule if_statement
    # 
    # (in Python.g)
    # 361:1: if_statement : 'if' test ':' suite ( elif_clause )* ( 'else' ':' suite )? ;
    def if_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 39)
      return_value = IfStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal165 = nil
      char_literal167 = nil
      string_literal170 = nil
      char_literal171 = nil
      test166 = nil
      suite168 = nil
      elif_clause169 = nil
      suite172 = nil

      tree_for_string_literal165 = nil
      tree_for_char_literal167 = nil
      tree_for_string_literal170 = nil
      tree_for_char_literal171 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 362:5: 'if' test ':' suite ( elif_clause )* ( 'else' ':' suite )?
        string_literal165 = match(T__71, TOKENS_FOLLOWING_T__71_IN_if_statement_1803)
        if @state.backtracking == 0

          tree_for_string_literal165 = @adaptor.create_with_payload!(string_literal165)
          @adaptor.add_child(root_0, tree_for_string_literal165)

        end
        @state.following.push(TOKENS_FOLLOWING_test_IN_if_statement_1805)
        test166 = test
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, test166.tree)
        end
        char_literal167 = match(T__38, TOKENS_FOLLOWING_T__38_IN_if_statement_1807)
        if @state.backtracking == 0

          tree_for_char_literal167 = @adaptor.create_with_payload!(char_literal167)
          @adaptor.add_child(root_0, tree_for_char_literal167)

        end
        @state.following.push(TOKENS_FOLLOWING_suite_IN_if_statement_1809)
        suite168 = suite
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, suite168.tree)
        end
        # at line 362:25: ( elif_clause )*
        loop do  #loop 54
          alt_54 = 2
          look_54_0 = @input.peek(1)

          if (look_54_0 == T__73) 
            alt_54 = 1

          end
          case alt_54
          when 1
            # at line 362:25: elif_clause
            @state.following.push(TOKENS_FOLLOWING_elif_clause_IN_if_statement_1811)
            elif_clause169 = elif_clause
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, elif_clause169.tree)
            end

          else
            break #loop 54
          end
        end
        # at line 363:5: ( 'else' ':' suite )?
        alt_55 = 2
        look_55_0 = @input.peek(1)

        if (look_55_0 == T__72) 
          alt_55 = 1
        end
        case alt_55
        when 1
          # at line 363:7: 'else' ':' suite
          string_literal170 = match(T__72, TOKENS_FOLLOWING_T__72_IN_if_statement_1820)
          if @state.backtracking == 0

            tree_for_string_literal170 = @adaptor.create_with_payload!(string_literal170)
            @adaptor.add_child(root_0, tree_for_string_literal170)

          end
          char_literal171 = match(T__38, TOKENS_FOLLOWING_T__38_IN_if_statement_1822)
          if @state.backtracking == 0

            tree_for_char_literal171 = @adaptor.create_with_payload!(char_literal171)
            @adaptor.add_child(root_0, tree_for_char_literal171)

          end
          @state.following.push(TOKENS_FOLLOWING_suite_IN_if_statement_1824)
          suite172 = suite
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, suite172.tree)
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

    ElifClauseReturnValue = define_return_scope 

    # parser rule elif_clause
    # 
    # (in Python.g)
    # 366:1: elif_clause : 'elif' test ':' suite ;
    def elif_clause
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 40)
      return_value = ElifClauseReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal173 = nil
      char_literal175 = nil
      test174 = nil
      suite176 = nil

      tree_for_string_literal173 = nil
      tree_for_char_literal175 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 367:5: 'elif' test ':' suite
        string_literal173 = match(T__73, TOKENS_FOLLOWING_T__73_IN_elif_clause_1840)
        if @state.backtracking == 0

          tree_for_string_literal173 = @adaptor.create_with_payload!(string_literal173)
          @adaptor.add_child(root_0, tree_for_string_literal173)

        end
        @state.following.push(TOKENS_FOLLOWING_test_IN_elif_clause_1842)
        test174 = test
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, test174.tree)
        end
        char_literal175 = match(T__38, TOKENS_FOLLOWING_T__38_IN_elif_clause_1844)
        if @state.backtracking == 0

          tree_for_char_literal175 = @adaptor.create_with_payload!(char_literal175)
          @adaptor.add_child(root_0, tree_for_char_literal175)

        end
        @state.following.push(TOKENS_FOLLOWING_suite_IN_elif_clause_1846)
        suite176 = suite
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, suite176.tree)
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

    WhileStatementReturnValue = define_return_scope 

    # parser rule while_statement
    # 
    # (in Python.g)
    # 370:1: while_statement : 'while' test ':' suite ( 'else' ':' suite )? ;
    def while_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 41)
      return_value = WhileStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal177 = nil
      char_literal179 = nil
      string_literal181 = nil
      char_literal182 = nil
      test178 = nil
      suite180 = nil
      suite183 = nil

      tree_for_string_literal177 = nil
      tree_for_char_literal179 = nil
      tree_for_string_literal181 = nil
      tree_for_char_literal182 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 371:5: 'while' test ':' suite ( 'else' ':' suite )?
        string_literal177 = match(T__74, TOKENS_FOLLOWING_T__74_IN_while_statement_1859)
        if @state.backtracking == 0

          tree_for_string_literal177 = @adaptor.create_with_payload!(string_literal177)
          @adaptor.add_child(root_0, tree_for_string_literal177)

        end
        @state.following.push(TOKENS_FOLLOWING_test_IN_while_statement_1861)
        test178 = test
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, test178.tree)
        end
        char_literal179 = match(T__38, TOKENS_FOLLOWING_T__38_IN_while_statement_1863)
        if @state.backtracking == 0

          tree_for_char_literal179 = @adaptor.create_with_payload!(char_literal179)
          @adaptor.add_child(root_0, tree_for_char_literal179)

        end
        @state.following.push(TOKENS_FOLLOWING_suite_IN_while_statement_1865)
        suite180 = suite
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, suite180.tree)
        end
        # at line 372:5: ( 'else' ':' suite )?
        alt_56 = 2
        look_56_0 = @input.peek(1)

        if (look_56_0 == T__72) 
          alt_56 = 1
        end
        case alt_56
        when 1
          # at line 372:7: 'else' ':' suite
          string_literal181 = match(T__72, TOKENS_FOLLOWING_T__72_IN_while_statement_1873)
          if @state.backtracking == 0

            tree_for_string_literal181 = @adaptor.create_with_payload!(string_literal181)
            @adaptor.add_child(root_0, tree_for_string_literal181)

          end
          char_literal182 = match(T__38, TOKENS_FOLLOWING_T__38_IN_while_statement_1875)
          if @state.backtracking == 0

            tree_for_char_literal182 = @adaptor.create_with_payload!(char_literal182)
            @adaptor.add_child(root_0, tree_for_char_literal182)

          end
          @state.following.push(TOKENS_FOLLOWING_suite_IN_while_statement_1877)
          suite183 = suite
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, suite183.tree)
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

    ForStatementReturnValue = define_return_scope 

    # parser rule for_statement
    # 
    # (in Python.g)
    # 375:1: for_statement : 'for' exprlist 'in' test_list ':' suite ( 'else' ':' suite )? ;
    def for_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 42)
      return_value = ForStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal184 = nil
      string_literal186 = nil
      char_literal188 = nil
      string_literal190 = nil
      char_literal191 = nil
      exprlist185 = nil
      test_list187 = nil
      suite189 = nil
      suite192 = nil

      tree_for_string_literal184 = nil
      tree_for_string_literal186 = nil
      tree_for_char_literal188 = nil
      tree_for_string_literal190 = nil
      tree_for_char_literal191 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 376:5: 'for' exprlist 'in' test_list ':' suite ( 'else' ':' suite )?
        string_literal184 = match(T__75, TOKENS_FOLLOWING_T__75_IN_for_statement_1893)
        if @state.backtracking == 0

          tree_for_string_literal184 = @adaptor.create_with_payload!(string_literal184)
          @adaptor.add_child(root_0, tree_for_string_literal184)

        end
        @state.following.push(TOKENS_FOLLOWING_exprlist_IN_for_statement_1895)
        exprlist185 = exprlist
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, exprlist185.tree)
        end
        string_literal186 = match(T__69, TOKENS_FOLLOWING_T__69_IN_for_statement_1897)
        if @state.backtracking == 0

          tree_for_string_literal186 = @adaptor.create_with_payload!(string_literal186)
          @adaptor.add_child(root_0, tree_for_string_literal186)

        end
        @state.following.push(TOKENS_FOLLOWING_test_list_IN_for_statement_1899)
        test_list187 = test_list
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, test_list187.tree)
        end
        char_literal188 = match(T__38, TOKENS_FOLLOWING_T__38_IN_for_statement_1901)
        if @state.backtracking == 0

          tree_for_char_literal188 = @adaptor.create_with_payload!(char_literal188)
          @adaptor.add_child(root_0, tree_for_char_literal188)

        end
        @state.following.push(TOKENS_FOLLOWING_suite_IN_for_statement_1903)
        suite189 = suite
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, suite189.tree)
        end
        # at line 376:45: ( 'else' ':' suite )?
        alt_57 = 2
        look_57_0 = @input.peek(1)

        if (look_57_0 == T__72) 
          alt_57 = 1
        end
        case alt_57
        when 1
          # at line 376:46: 'else' ':' suite
          string_literal190 = match(T__72, TOKENS_FOLLOWING_T__72_IN_for_statement_1906)
          if @state.backtracking == 0

            tree_for_string_literal190 = @adaptor.create_with_payload!(string_literal190)
            @adaptor.add_child(root_0, tree_for_string_literal190)

          end
          char_literal191 = match(T__38, TOKENS_FOLLOWING_T__38_IN_for_statement_1908)
          if @state.backtracking == 0

            tree_for_char_literal191 = @adaptor.create_with_payload!(char_literal191)
            @adaptor.add_child(root_0, tree_for_char_literal191)

          end
          @state.following.push(TOKENS_FOLLOWING_suite_IN_for_statement_1910)
          suite192 = suite
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, suite192.tree)
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
        # trace_out(__method__, 42)

      end
      
      return return_value
    end

    TryStatementReturnValue = define_return_scope 

    # parser rule try_statement
    # 
    # (in Python.g)
    # 379:1: try_statement : 'try' ':' suite ( ( except_clause )+ ( 'else' ':' suite )? ( 'finally' ':' suite )? | 'finally' ':' suite ) ;
    def try_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 43)
      return_value = TryStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal193 = nil
      char_literal194 = nil
      string_literal197 = nil
      char_literal198 = nil
      string_literal200 = nil
      char_literal201 = nil
      string_literal203 = nil
      char_literal204 = nil
      suite195 = nil
      except_clause196 = nil
      suite199 = nil
      suite202 = nil
      suite205 = nil

      tree_for_string_literal193 = nil
      tree_for_char_literal194 = nil
      tree_for_string_literal197 = nil
      tree_for_char_literal198 = nil
      tree_for_string_literal200 = nil
      tree_for_char_literal201 = nil
      tree_for_string_literal203 = nil
      tree_for_char_literal204 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 380:5: 'try' ':' suite ( ( except_clause )+ ( 'else' ':' suite )? ( 'finally' ':' suite )? | 'finally' ':' suite )
        string_literal193 = match(T__76, TOKENS_FOLLOWING_T__76_IN_try_statement_1925)
        if @state.backtracking == 0

          tree_for_string_literal193 = @adaptor.create_with_payload!(string_literal193)
          @adaptor.add_child(root_0, tree_for_string_literal193)

        end
        char_literal194 = match(T__38, TOKENS_FOLLOWING_T__38_IN_try_statement_1927)
        if @state.backtracking == 0

          tree_for_char_literal194 = @adaptor.create_with_payload!(char_literal194)
          @adaptor.add_child(root_0, tree_for_char_literal194)

        end
        @state.following.push(TOKENS_FOLLOWING_suite_IN_try_statement_1929)
        suite195 = suite
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, suite195.tree)
        end
        # at line 381:5: ( ( except_clause )+ ( 'else' ':' suite )? ( 'finally' ':' suite )? | 'finally' ':' suite )
        alt_61 = 2
        look_61_0 = @input.peek(1)

        if (look_61_0 == T__79) 
          alt_61 = 1
        elsif (look_61_0 == T__77) 
          alt_61 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 61, 0)
          raise nvae
        end
        case alt_61
        when 1
          # at line 381:7: ( except_clause )+ ( 'else' ':' suite )? ( 'finally' ':' suite )?
          # at file 381:7: ( except_clause )+
          match_count_58 = 0
          loop do
            alt_58 = 2
            look_58_0 = @input.peek(1)

            if (look_58_0 == T__79) 
              alt_58 = 1

            end
            case alt_58
            when 1
              # at line 381:7: except_clause
              @state.following.push(TOKENS_FOLLOWING_except_clause_IN_try_statement_1937)
              except_clause196 = except_clause
              @state.following.pop
              if @state.backtracking == 0
                @adaptor.add_child(root_0, except_clause196.tree)
              end

            else
              match_count_58 > 0 and break
              @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

              eee = EarlyExit(58)


              raise eee
            end
            match_count_58 += 1
          end

          # at line 381:22: ( 'else' ':' suite )?
          alt_59 = 2
          look_59_0 = @input.peek(1)

          if (look_59_0 == T__72) 
            alt_59 = 1
          end
          case alt_59
          when 1
            # at line 381:23: 'else' ':' suite
            string_literal197 = match(T__72, TOKENS_FOLLOWING_T__72_IN_try_statement_1941)
            if @state.backtracking == 0

              tree_for_string_literal197 = @adaptor.create_with_payload!(string_literal197)
              @adaptor.add_child(root_0, tree_for_string_literal197)

            end
            char_literal198 = match(T__38, TOKENS_FOLLOWING_T__38_IN_try_statement_1943)
            if @state.backtracking == 0

              tree_for_char_literal198 = @adaptor.create_with_payload!(char_literal198)
              @adaptor.add_child(root_0, tree_for_char_literal198)

            end
            @state.following.push(TOKENS_FOLLOWING_suite_IN_try_statement_1945)
            suite199 = suite
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, suite199.tree)
            end

          end
          # at line 381:42: ( 'finally' ':' suite )?
          alt_60 = 2
          look_60_0 = @input.peek(1)

          if (look_60_0 == T__77) 
            alt_60 = 1
          end
          case alt_60
          when 1
            # at line 381:43: 'finally' ':' suite
            string_literal200 = match(T__77, TOKENS_FOLLOWING_T__77_IN_try_statement_1950)
            if @state.backtracking == 0

              tree_for_string_literal200 = @adaptor.create_with_payload!(string_literal200)
              @adaptor.add_child(root_0, tree_for_string_literal200)

            end
            char_literal201 = match(T__38, TOKENS_FOLLOWING_T__38_IN_try_statement_1952)
            if @state.backtracking == 0

              tree_for_char_literal201 = @adaptor.create_with_payload!(char_literal201)
              @adaptor.add_child(root_0, tree_for_char_literal201)

            end
            @state.following.push(TOKENS_FOLLOWING_suite_IN_try_statement_1954)
            suite202 = suite
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, suite202.tree)
            end

          end

        when 2
          # at line 382:7: 'finally' ':' suite
          string_literal203 = match(T__77, TOKENS_FOLLOWING_T__77_IN_try_statement_1964)
          if @state.backtracking == 0

            tree_for_string_literal203 = @adaptor.create_with_payload!(string_literal203)
            @adaptor.add_child(root_0, tree_for_string_literal203)

          end
          char_literal204 = match(T__38, TOKENS_FOLLOWING_T__38_IN_try_statement_1966)
          if @state.backtracking == 0

            tree_for_char_literal204 = @adaptor.create_with_payload!(char_literal204)
            @adaptor.add_child(root_0, tree_for_char_literal204)

          end
          @state.following.push(TOKENS_FOLLOWING_suite_IN_try_statement_1968)
          suite205 = suite
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, suite205.tree)
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

    WithStatementReturnValue = define_return_scope 

    # parser rule with_statement
    # 
    # (in Python.g)
    # 386:1: with_statement : 'with' test ( with_var )? ':' suite ;
    def with_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 44)
      return_value = WithStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal206 = nil
      char_literal209 = nil
      test207 = nil
      with_var208 = nil
      suite210 = nil

      tree_for_string_literal206 = nil
      tree_for_char_literal209 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 387:5: 'with' test ( with_var )? ':' suite
        string_literal206 = match(T__78, TOKENS_FOLLOWING_T__78_IN_with_statement_1987)
        if @state.backtracking == 0

          tree_for_string_literal206 = @adaptor.create_with_payload!(string_literal206)
          @adaptor.add_child(root_0, tree_for_string_literal206)

        end
        @state.following.push(TOKENS_FOLLOWING_test_IN_with_statement_1989)
        test207 = test
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, test207.tree)
        end
        # at line 387:17: ( with_var )?
        alt_62 = 2
        look_62_0 = @input.peek(1)

        if (look_62_0 == NAME || look_62_0 == T__66) 
          alt_62 = 1
        end
        case alt_62
        when 1
          # at line 387:17: with_var
          @state.following.push(TOKENS_FOLLOWING_with_var_IN_with_statement_1991)
          with_var208 = with_var
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, with_var208.tree)
          end

        end
        char_literal209 = match(T__38, TOKENS_FOLLOWING_T__38_IN_with_statement_1994)
        if @state.backtracking == 0

          tree_for_char_literal209 = @adaptor.create_with_payload!(char_literal209)
          @adaptor.add_child(root_0, tree_for_char_literal209)

        end
        @state.following.push(TOKENS_FOLLOWING_suite_IN_with_statement_1996)
        suite210 = suite
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, suite210.tree)
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

    WithVarReturnValue = define_return_scope 

    # parser rule with_var
    # 
    # (in Python.g)
    # 390:1: with_var : ( 'as' | NAME ) expr ;
    def with_var
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 45)
      return_value = WithVarReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      set211 = nil
      expr212 = nil

      tree_for_set211 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 391:5: ( 'as' | NAME ) expr
        set211 = @input.look
        if @input.peek(1) == NAME || @input.peek(1) == T__66
          @input.consume
          if @state.backtracking == 0
            @adaptor.add_child(root_0, @adaptor.create_with_payload!(set211))
          end
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          mse = MismatchedSet(nil)
          raise mse
        end


        @state.following.push(TOKENS_FOLLOWING_expr_IN_with_var_2019)
        expr212 = expr
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, expr212.tree)
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

    ExceptClauseReturnValue = define_return_scope 

    # parser rule except_clause
    # 
    # (in Python.g)
    # 394:1: except_clause : 'except' ( test ( ',' test )? )? ':' suite ;
    def except_clause
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 46)
      return_value = ExceptClauseReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal213 = nil
      char_literal215 = nil
      char_literal217 = nil
      test214 = nil
      test216 = nil
      suite218 = nil

      tree_for_string_literal213 = nil
      tree_for_char_literal215 = nil
      tree_for_char_literal217 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 395:5: 'except' ( test ( ',' test )? )? ':' suite
        string_literal213 = match(T__79, TOKENS_FOLLOWING_T__79_IN_except_clause_2032)
        if @state.backtracking == 0

          tree_for_string_literal213 = @adaptor.create_with_payload!(string_literal213)
          @adaptor.add_child(root_0, tree_for_string_literal213)

        end
        # at line 395:14: ( test ( ',' test )? )?
        alt_64 = 2
        look_64_0 = @input.peek(1)

        if (look_64_0.between?(LONGINT, COMPLEX) || look_64_0 == LPAREN || look_64_0.between?(NAME, LBRACK) || look_64_0 == LCURLY || look_64_0.between?(INT, STRING) || look_64_0 == T__82 || look_64_0.between?(T__95, T__96) || look_64_0.between?(T__100, T__102)) 
          alt_64 = 1
        end
        case alt_64
        when 1
          # at line 395:16: test ( ',' test )?
          @state.following.push(TOKENS_FOLLOWING_test_IN_except_clause_2036)
          test214 = test
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, test214.tree)
          end
          # at line 395:21: ( ',' test )?
          alt_63 = 2
          look_63_0 = @input.peek(1)

          if (look_63_0 == T__39) 
            alt_63 = 1
          end
          case alt_63
          when 1
            # at line 395:23: ',' test
            char_literal215 = match(T__39, TOKENS_FOLLOWING_T__39_IN_except_clause_2040)
            if @state.backtracking == 0

              tree_for_char_literal215 = @adaptor.create_with_payload!(char_literal215)
              @adaptor.add_child(root_0, tree_for_char_literal215)

            end
            @state.following.push(TOKENS_FOLLOWING_test_IN_except_clause_2042)
            test216 = test
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, test216.tree)
            end

          end

        end
        char_literal217 = match(T__38, TOKENS_FOLLOWING_T__38_IN_except_clause_2050)
        if @state.backtracking == 0

          tree_for_char_literal217 = @adaptor.create_with_payload!(char_literal217)
          @adaptor.add_child(root_0, tree_for_char_literal217)

        end
        @state.following.push(TOKENS_FOLLOWING_suite_IN_except_clause_2052)
        suite218 = suite
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, suite218.tree)
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

    SuiteReturnValue = define_return_scope 

    # parser rule suite
    # 
    # (in Python.g)
    # 398:1: suite : ( simple_statement -> ^( BLOCK simple_statement ) | NEWLINE INDENT ( statement )+ DEDENT -> ^( BLOCK ( statement )+ ) );
    def suite
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 47)
      return_value = SuiteReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __NEWLINE220__ = nil
      __INDENT221__ = nil
      __DEDENT223__ = nil
      simple_statement219 = nil
      statement222 = nil

      tree_for_NEWLINE220 = nil
      tree_for_INDENT221 = nil
      tree_for_DEDENT223 = nil
      stream_DEDENT = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token DEDENT")
      stream_NEWLINE = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token NEWLINE")
      stream_INDENT = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token INDENT")
      stream_statement = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule statement")
      stream_simple_statement = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule simple_statement")
      begin
        # at line 399:3: ( simple_statement -> ^( BLOCK simple_statement ) | NEWLINE INDENT ( statement )+ DEDENT -> ^( BLOCK ( statement )+ ) )
        alt_66 = 2
        look_66_0 = @input.peek(1)

        if (look_66_0.between?(LONGINT, COMPLEX) || look_66_0 == LPAREN || look_66_0.between?(NAME, LBRACK) || look_66_0 == LCURLY || look_66_0.between?(INT, STRING) || look_66_0 == T__56 || look_66_0.between?(T__58, T__65) || look_66_0.between?(T__67, T__68) || look_66_0 == T__70 || look_66_0 == T__82 || look_66_0.between?(T__95, T__96) || look_66_0.between?(T__100, T__102) || look_66_0 == T__104) 
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
          # at line 399:5: simple_statement
          @state.following.push(TOKENS_FOLLOWING_simple_statement_IN_suite_2065)
          simple_statement219 = simple_statement
          @state.following.pop
          if @state.backtracking == 0
            stream_simple_statement.add(simple_statement219.tree)
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
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

            root_0 = @adaptor.create_flat_list!
            # 399:22: -> ^( BLOCK simple_statement )
            # at line 399:25: ^( BLOCK simple_statement )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(@adaptor.create_from_type!(BLOCK, "BLOCK"), root_1)

            @adaptor.add_child(root_1, stream_simple_statement.next_tree)

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 2
          # at line 400:5: NEWLINE INDENT ( statement )+ DEDENT
          __NEWLINE220__ = match(NEWLINE, TOKENS_FOLLOWING_NEWLINE_IN_suite_2079) 
          if @state.backtracking == 0
            stream_NEWLINE.add(__NEWLINE220__)
          end
          __INDENT221__ = match(INDENT, TOKENS_FOLLOWING_INDENT_IN_suite_2081) 
          if @state.backtracking == 0
            stream_INDENT.add(__INDENT221__)
          end
          # at file 400:20: ( statement )+
          match_count_65 = 0
          loop do
            alt_65 = 2
            look_65_0 = @input.peek(1)

            if (look_65_0.between?(LONGINT, COMPLEX) || look_65_0 == LPAREN || look_65_0.between?(NAME, LBRACK) || look_65_0 == LCURLY || look_65_0.between?(INT, STRING) || look_65_0 == T__35 || look_65_0 == T__37 || look_65_0 == T__56 || look_65_0.between?(T__58, T__65) || look_65_0.between?(T__67, T__68) || look_65_0.between?(T__70, T__71) || look_65_0.between?(T__74, T__76) || look_65_0 == T__78 || look_65_0 == T__82 || look_65_0.between?(T__95, T__96) || look_65_0.between?(T__100, T__104)) 
              alt_65 = 1

            end
            case alt_65
            when 1
              # at line 400:21: statement
              @state.following.push(TOKENS_FOLLOWING_statement_IN_suite_2084)
              statement222 = statement
              @state.following.pop
              if @state.backtracking == 0
                stream_statement.add(statement222.tree)
              end

            else
              match_count_65 > 0 and break
              @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

              eee = EarlyExit(65)


              raise eee
            end
            match_count_65 += 1
          end

          __DEDENT223__ = match(DEDENT, TOKENS_FOLLOWING_DEDENT_IN_suite_2088) 
          if @state.backtracking == 0
            stream_DEDENT.add(__DEDENT223__)
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
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

            root_0 = @adaptor.create_flat_list!
            # 400:40: -> ^( BLOCK ( statement )+ )
            # at line 400:43: ^( BLOCK ( statement )+ )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(@adaptor.create_from_type!(BLOCK, "BLOCK"), root_1)

            # at line 400:51: ( statement )+
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
        # trace_out(__method__, 47)

      end
      
      return return_value
    end

    TestReturnValue = define_return_scope 

    # parser rule test
    # 
    # (in Python.g)
    # 403:1: test : ( or_test ( ( 'if' or_test 'else' )=> 'if' or_test 'else' test )? | lamb_def );
    def test
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 48)
      return_value = TestReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal225 = nil
      string_literal227 = nil
      or_test224 = nil
      or_test226 = nil
      test228 = nil
      lamb_def229 = nil

      tree_for_string_literal225 = nil
      tree_for_string_literal227 = nil

      begin
        # at line 404:3: ( or_test ( ( 'if' or_test 'else' )=> 'if' or_test 'else' test )? | lamb_def )
        alt_68 = 2
        look_68_0 = @input.peek(1)

        if (look_68_0.between?(LONGINT, COMPLEX) || look_68_0 == LPAREN || look_68_0.between?(NAME, LBRACK) || look_68_0 == LCURLY || look_68_0.between?(INT, STRING) || look_68_0 == T__82 || look_68_0.between?(T__95, T__96) || look_68_0.between?(T__100, T__101)) 
          alt_68 = 1
        elsif (look_68_0 == T__102) 
          alt_68 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 68, 0)
          raise nvae
        end
        case alt_68
        when 1
          root_0 = @adaptor.create_flat_list!


          # at line 404:5: or_test ( ( 'if' or_test 'else' )=> 'if' or_test 'else' test )?
          @state.following.push(TOKENS_FOLLOWING_or_test_IN_test_2110)
          or_test224 = or_test
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, or_test224.tree)
          end
          # at line 405:5: ( ( 'if' or_test 'else' )=> 'if' or_test 'else' test )?
          alt_67 = 2
          alt_67 = @dfa67.predict(@input)
          case alt_67
          when 1
            # at line 405:7: ( 'if' or_test 'else' )=> 'if' or_test 'else' test
            string_literal225 = match(T__71, TOKENS_FOLLOWING_T__71_IN_test_2128)
            if @state.backtracking == 0

              tree_for_string_literal225 = @adaptor.create_with_payload!(string_literal225)
              @adaptor.add_child(root_0, tree_for_string_literal225)

            end
            @state.following.push(TOKENS_FOLLOWING_or_test_IN_test_2130)
            or_test226 = or_test
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, or_test226.tree)
            end
            string_literal227 = match(T__72, TOKENS_FOLLOWING_T__72_IN_test_2132)
            if @state.backtracking == 0

              tree_for_string_literal227 = @adaptor.create_with_payload!(string_literal227)
              @adaptor.add_child(root_0, tree_for_string_literal227)

            end
            @state.following.push(TOKENS_FOLLOWING_test_IN_test_2134)
            test228 = test
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, test228.tree)
            end

          end

        when 2
          root_0 = @adaptor.create_flat_list!


          # at line 406:5: lamb_def
          @state.following.push(TOKENS_FOLLOWING_lamb_def_IN_test_2143)
          lamb_def229 = lamb_def
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, lamb_def229.tree)
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
        # trace_out(__method__, 48)

      end
      
      return return_value
    end

    OrTestReturnValue = define_return_scope 

    # parser rule or_test
    # 
    # (in Python.g)
    # 409:1: or_test : and_test ( 'or' and_test )* ;
    def or_test
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 49)
      return_value = OrTestReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal231 = nil
      and_test230 = nil
      and_test232 = nil

      tree_for_string_literal231 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 410:5: and_test ( 'or' and_test )*
        @state.following.push(TOKENS_FOLLOWING_and_test_IN_or_test_2156)
        and_test230 = and_test
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, and_test230.tree)
        end
        # at line 410:14: ( 'or' and_test )*
        loop do  #loop 69
          alt_69 = 2
          look_69_0 = @input.peek(1)

          if (look_69_0 == T__80) 
            alt_69 = 1

          end
          case alt_69
          when 1
            # at line 410:16: 'or' and_test
            string_literal231 = match(T__80, TOKENS_FOLLOWING_T__80_IN_or_test_2160)
            if @state.backtracking == 0

              tree_for_string_literal231 = @adaptor.create_with_payload!(string_literal231)
              @adaptor.add_child(root_0, tree_for_string_literal231)

            end
            @state.following.push(TOKENS_FOLLOWING_and_test_IN_or_test_2162)
            and_test232 = and_test
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, and_test232.tree)
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
        # trace_out(__method__, 49)

      end
      
      return return_value
    end

    AndTestReturnValue = define_return_scope 

    # parser rule and_test
    # 
    # (in Python.g)
    # 413:1: and_test : not_test ( 'and' not_test )* ;
    def and_test
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 50)
      return_value = AndTestReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal234 = nil
      not_test233 = nil
      not_test235 = nil

      tree_for_string_literal234 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 414:5: not_test ( 'and' not_test )*
        @state.following.push(TOKENS_FOLLOWING_not_test_IN_and_test_2178)
        not_test233 = not_test
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, not_test233.tree)
        end
        # at line 414:14: ( 'and' not_test )*
        loop do  #loop 70
          alt_70 = 2
          look_70_0 = @input.peek(1)

          if (look_70_0 == T__81) 
            alt_70 = 1

          end
          case alt_70
          when 1
            # at line 414:16: 'and' not_test
            string_literal234 = match(T__81, TOKENS_FOLLOWING_T__81_IN_and_test_2182)
            if @state.backtracking == 0

              tree_for_string_literal234 = @adaptor.create_with_payload!(string_literal234)
              @adaptor.add_child(root_0, tree_for_string_literal234)

            end
            @state.following.push(TOKENS_FOLLOWING_not_test_IN_and_test_2184)
            not_test235 = not_test
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, not_test235.tree)
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
        # trace_out(__method__, 50)

      end
      
      return return_value
    end

    NotTestReturnValue = define_return_scope 

    # parser rule not_test
    # 
    # (in Python.g)
    # 417:1: not_test : ( 'not' not_test | comparison );
    def not_test
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 51)
      return_value = NotTestReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal236 = nil
      not_test237 = nil
      comparison238 = nil

      tree_for_string_literal236 = nil

      begin
        # at line 418:3: ( 'not' not_test | comparison )
        alt_71 = 2
        look_71_0 = @input.peek(1)

        if (look_71_0 == T__82) 
          alt_71 = 1
        elsif (look_71_0.between?(LONGINT, COMPLEX) || look_71_0 == LPAREN || look_71_0.between?(NAME, LBRACK) || look_71_0 == LCURLY || look_71_0.between?(INT, STRING) || look_71_0.between?(T__95, T__96) || look_71_0.between?(T__100, T__101)) 
          alt_71 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 71, 0)
          raise nvae
        end
        case alt_71
        when 1
          root_0 = @adaptor.create_flat_list!


          # at line 418:5: 'not' not_test
          string_literal236 = match(T__82, TOKENS_FOLLOWING_T__82_IN_not_test_2200)
          if @state.backtracking == 0

            tree_for_string_literal236 = @adaptor.create_with_payload!(string_literal236)
            @adaptor.add_child(root_0, tree_for_string_literal236)

          end
          @state.following.push(TOKENS_FOLLOWING_not_test_IN_not_test_2202)
          not_test237 = not_test
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, not_test237.tree)
          end

        when 2
          root_0 = @adaptor.create_flat_list!


          # at line 419:5: comparison
          @state.following.push(TOKENS_FOLLOWING_comparison_IN_not_test_2208)
          comparison238 = comparison
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, comparison238.tree)
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

    ComparisonReturnValue = define_return_scope 

    # parser rule comparison
    # 
    # (in Python.g)
    # 422:1: comparison : expr ( ( '<' | '>' | '==' | '>=' | '<=' | '<>' | '!=' | 'in' | 'not' 'in' | 'is' | 'is' 'not' ) expr )* ;
    def comparison
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 52)
      return_value = ComparisonReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal240 = nil
      char_literal241 = nil
      string_literal242 = nil
      string_literal243 = nil
      string_literal244 = nil
      string_literal245 = nil
      string_literal246 = nil
      string_literal247 = nil
      string_literal248 = nil
      string_literal249 = nil
      string_literal250 = nil
      string_literal251 = nil
      string_literal252 = nil
      expr239 = nil
      expr253 = nil

      tree_for_char_literal240 = nil
      tree_for_char_literal241 = nil
      tree_for_string_literal242 = nil
      tree_for_string_literal243 = nil
      tree_for_string_literal244 = nil
      tree_for_string_literal245 = nil
      tree_for_string_literal246 = nil
      tree_for_string_literal247 = nil
      tree_for_string_literal248 = nil
      tree_for_string_literal249 = nil
      tree_for_string_literal250 = nil
      tree_for_string_literal251 = nil
      tree_for_string_literal252 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 423:5: expr ( ( '<' | '>' | '==' | '>=' | '<=' | '<>' | '!=' | 'in' | 'not' 'in' | 'is' | 'is' 'not' ) expr )*
        @state.following.push(TOKENS_FOLLOWING_expr_IN_comparison_2221)
        expr239 = expr
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, expr239.tree)
        end
        # at line 424:5: ( ( '<' | '>' | '==' | '>=' | '<=' | '<>' | '!=' | 'in' | 'not' 'in' | 'is' | 'is' 'not' ) expr )*
        loop do  #loop 73
          alt_73 = 2
          look_73_0 = @input.peek(1)

          if (look_73_0 == T__69 || look_73_0.between?(T__82, T__90)) 
            alt_73 = 1

          end
          case alt_73
          when 1
            # at line 425:7: ( '<' | '>' | '==' | '>=' | '<=' | '<>' | '!=' | 'in' | 'not' 'in' | 'is' | 'is' 'not' ) expr
            # at line 425:7: ( '<' | '>' | '==' | '>=' | '<=' | '<>' | '!=' | 'in' | 'not' 'in' | 'is' | 'is' 'not' )
            alt_72 = 11
            alt_72 = @dfa72.predict(@input)
            case alt_72
            when 1
              # at line 425:9: '<'
              char_literal240 = match(T__83, TOKENS_FOLLOWING_T__83_IN_comparison_2237)
              if @state.backtracking == 0

                tree_for_char_literal240 = @adaptor.create_with_payload!(char_literal240)
                root_0 = @adaptor.become_root(tree_for_char_literal240, root_0)

              end

            when 2
              # at line 426:9: '>'
              char_literal241 = match(T__84, TOKENS_FOLLOWING_T__84_IN_comparison_2248)
              if @state.backtracking == 0

                tree_for_char_literal241 = @adaptor.create_with_payload!(char_literal241)
                root_0 = @adaptor.become_root(tree_for_char_literal241, root_0)

              end

            when 3
              # at line 427:9: '=='
              string_literal242 = match(T__85, TOKENS_FOLLOWING_T__85_IN_comparison_2259)
              if @state.backtracking == 0

                tree_for_string_literal242 = @adaptor.create_with_payload!(string_literal242)
                root_0 = @adaptor.become_root(tree_for_string_literal242, root_0)

              end

            when 4
              # at line 428:9: '>='
              string_literal243 = match(T__86, TOKENS_FOLLOWING_T__86_IN_comparison_2270)
              if @state.backtracking == 0

                tree_for_string_literal243 = @adaptor.create_with_payload!(string_literal243)
                root_0 = @adaptor.become_root(tree_for_string_literal243, root_0)

              end

            when 5
              # at line 429:9: '<='
              string_literal244 = match(T__87, TOKENS_FOLLOWING_T__87_IN_comparison_2281)
              if @state.backtracking == 0

                tree_for_string_literal244 = @adaptor.create_with_payload!(string_literal244)
                root_0 = @adaptor.become_root(tree_for_string_literal244, root_0)

              end

            when 6
              # at line 430:9: '<>'
              string_literal245 = match(T__88, TOKENS_FOLLOWING_T__88_IN_comparison_2292)
              if @state.backtracking == 0

                tree_for_string_literal245 = @adaptor.create_with_payload!(string_literal245)
                root_0 = @adaptor.become_root(tree_for_string_literal245, root_0)

              end

            when 7
              # at line 431:9: '!='
              string_literal246 = match(T__89, TOKENS_FOLLOWING_T__89_IN_comparison_2303)
              if @state.backtracking == 0

                tree_for_string_literal246 = @adaptor.create_with_payload!(string_literal246)
                root_0 = @adaptor.become_root(tree_for_string_literal246, root_0)

              end

            when 8
              # at line 432:9: 'in'
              string_literal247 = match(T__69, TOKENS_FOLLOWING_T__69_IN_comparison_2314)
              if @state.backtracking == 0

                tree_for_string_literal247 = @adaptor.create_with_payload!(string_literal247)
                root_0 = @adaptor.become_root(tree_for_string_literal247, root_0)

              end

            when 9
              # at line 433:9: 'not' 'in'
              string_literal248 = match(T__82, TOKENS_FOLLOWING_T__82_IN_comparison_2325)
              if @state.backtracking == 0

                tree_for_string_literal248 = @adaptor.create_with_payload!(string_literal248)
                root_0 = @adaptor.become_root(tree_for_string_literal248, root_0)

              end
              string_literal249 = match(T__69, TOKENS_FOLLOWING_T__69_IN_comparison_2328)
              if @state.backtracking == 0

                tree_for_string_literal249 = @adaptor.create_with_payload!(string_literal249)
                root_0 = @adaptor.become_root(tree_for_string_literal249, root_0)

              end

            when 10
              # at line 434:9: 'is'
              string_literal250 = match(T__90, TOKENS_FOLLOWING_T__90_IN_comparison_2339)
              if @state.backtracking == 0

                tree_for_string_literal250 = @adaptor.create_with_payload!(string_literal250)
                root_0 = @adaptor.become_root(tree_for_string_literal250, root_0)

              end

            when 11
              # at line 435:9: 'is' 'not'
              string_literal251 = match(T__90, TOKENS_FOLLOWING_T__90_IN_comparison_2350)
              if @state.backtracking == 0

                tree_for_string_literal251 = @adaptor.create_with_payload!(string_literal251)
                root_0 = @adaptor.become_root(tree_for_string_literal251, root_0)

              end
              string_literal252 = match(T__82, TOKENS_FOLLOWING_T__82_IN_comparison_2353)
              if @state.backtracking == 0

                tree_for_string_literal252 = @adaptor.create_with_payload!(string_literal252)
                root_0 = @adaptor.become_root(tree_for_string_literal252, root_0)

              end

            end
            @state.following.push(TOKENS_FOLLOWING_expr_IN_comparison_2370)
            expr253 = expr
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, expr253.tree)
            end

          else
            break #loop 73
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
        # trace_out(__method__, 52)

      end
      
      return return_value
    end

    ExprReturnValue = define_return_scope 

    # parser rule expr
    # 
    # (in Python.g)
    # 441:1: expr : xor_expr ( '|' xor_expr )* ;
    def expr
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 53)
      return_value = ExprReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal255 = nil
      xor_expr254 = nil
      xor_expr256 = nil

      tree_for_char_literal255 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 442:5: xor_expr ( '|' xor_expr )*
        @state.following.push(TOKENS_FOLLOWING_xor_expr_IN_expr_2390)
        xor_expr254 = xor_expr
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, xor_expr254.tree)
        end
        # at line 442:14: ( '|' xor_expr )*
        loop do  #loop 74
          alt_74 = 2
          look_74_0 = @input.peek(1)

          if (look_74_0 == T__91) 
            alt_74 = 1

          end
          case alt_74
          when 1
            # at line 442:16: '|' xor_expr
            char_literal255 = match(T__91, TOKENS_FOLLOWING_T__91_IN_expr_2394)
            if @state.backtracking == 0

              tree_for_char_literal255 = @adaptor.create_with_payload!(char_literal255)
              root_0 = @adaptor.become_root(tree_for_char_literal255, root_0)

            end
            @state.following.push(TOKENS_FOLLOWING_xor_expr_IN_expr_2397)
            xor_expr256 = xor_expr
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, xor_expr256.tree)
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
        # trace_out(__method__, 53)

      end
      
      return return_value
    end

    XorExprReturnValue = define_return_scope 

    # parser rule xor_expr
    # 
    # (in Python.g)
    # 445:1: xor_expr : and_expr ( '^' and_expr )* ;
    def xor_expr
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 54)
      return_value = XorExprReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal258 = nil
      and_expr257 = nil
      and_expr259 = nil

      tree_for_char_literal258 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 446:5: and_expr ( '^' and_expr )*
        @state.following.push(TOKENS_FOLLOWING_and_expr_IN_xor_expr_2413)
        and_expr257 = and_expr
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, and_expr257.tree)
        end
        # at line 446:14: ( '^' and_expr )*
        loop do  #loop 75
          alt_75 = 2
          look_75_0 = @input.peek(1)

          if (look_75_0 == T__92) 
            alt_75 = 1

          end
          case alt_75
          when 1
            # at line 446:16: '^' and_expr
            char_literal258 = match(T__92, TOKENS_FOLLOWING_T__92_IN_xor_expr_2417)
            if @state.backtracking == 0

              tree_for_char_literal258 = @adaptor.create_with_payload!(char_literal258)
              root_0 = @adaptor.become_root(tree_for_char_literal258, root_0)

            end
            @state.following.push(TOKENS_FOLLOWING_and_expr_IN_xor_expr_2420)
            and_expr259 = and_expr
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, and_expr259.tree)
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
        # trace_out(__method__, 54)

      end
      
      return return_value
    end

    AndExprReturnValue = define_return_scope 

    # parser rule and_expr
    # 
    # (in Python.g)
    # 449:1: and_expr : shift_expr ( '&' shift_expr )* ;
    def and_expr
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 55)
      return_value = AndExprReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal261 = nil
      shift_expr260 = nil
      shift_expr262 = nil

      tree_for_char_literal261 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 450:5: shift_expr ( '&' shift_expr )*
        @state.following.push(TOKENS_FOLLOWING_shift_expr_IN_and_expr_2436)
        shift_expr260 = shift_expr
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, shift_expr260.tree)
        end
        # at line 450:16: ( '&' shift_expr )*
        loop do  #loop 76
          alt_76 = 2
          look_76_0 = @input.peek(1)

          if (look_76_0 == T__93) 
            alt_76 = 1

          end
          case alt_76
          when 1
            # at line 450:18: '&' shift_expr
            char_literal261 = match(T__93, TOKENS_FOLLOWING_T__93_IN_and_expr_2440)
            if @state.backtracking == 0

              tree_for_char_literal261 = @adaptor.create_with_payload!(char_literal261)
              root_0 = @adaptor.become_root(tree_for_char_literal261, root_0)

            end
            @state.following.push(TOKENS_FOLLOWING_shift_expr_IN_and_expr_2443)
            shift_expr262 = shift_expr
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, shift_expr262.tree)
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
        # trace_out(__method__, 55)

      end
      
      return return_value
    end

    ShiftExprReturnValue = define_return_scope 

    # parser rule shift_expr
    # 
    # (in Python.g)
    # 453:1: shift_expr : arith_expr ( ( '<<' | '>>' ) arith_expr )* ;
    def shift_expr
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 56)
      return_value = ShiftExprReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal264 = nil
      string_literal265 = nil
      arith_expr263 = nil
      arith_expr266 = nil

      tree_for_string_literal264 = nil
      tree_for_string_literal265 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 454:5: arith_expr ( ( '<<' | '>>' ) arith_expr )*
        @state.following.push(TOKENS_FOLLOWING_arith_expr_IN_shift_expr_2459)
        arith_expr263 = arith_expr
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, arith_expr263.tree)
        end
        # at line 454:16: ( ( '<<' | '>>' ) arith_expr )*
        loop do  #loop 78
          alt_78 = 2
          look_78_0 = @input.peek(1)

          if (look_78_0 == T__57 || look_78_0 == T__94) 
            alt_78 = 1

          end
          case alt_78
          when 1
            # at line 454:18: ( '<<' | '>>' ) arith_expr
            # at line 454:18: ( '<<' | '>>' )
            alt_77 = 2
            look_77_0 = @input.peek(1)

            if (look_77_0 == T__94) 
              alt_77 = 1
            elsif (look_77_0 == T__57) 
              alt_77 = 2
            else
              @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
            nvae = NoViableAlternative("", 77, 0)
              raise nvae
            end
            case alt_77
            when 1
              # at line 454:20: '<<'
              string_literal264 = match(T__94, TOKENS_FOLLOWING_T__94_IN_shift_expr_2465)
              if @state.backtracking == 0

                tree_for_string_literal264 = @adaptor.create_with_payload!(string_literal264)
                root_0 = @adaptor.become_root(tree_for_string_literal264, root_0)

              end

            when 2
              # at line 454:28: '>>'
              string_literal265 = match(T__57, TOKENS_FOLLOWING_T__57_IN_shift_expr_2470)
              if @state.backtracking == 0

                tree_for_string_literal265 = @adaptor.create_with_payload!(string_literal265)
                root_0 = @adaptor.become_root(tree_for_string_literal265, root_0)

              end

            end
            @state.following.push(TOKENS_FOLLOWING_arith_expr_IN_shift_expr_2475)
            arith_expr266 = arith_expr
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, arith_expr266.tree)
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
        # trace_out(__method__, 56)

      end
      
      return return_value
    end

    ArithExprReturnValue = define_return_scope 

    # parser rule arith_expr
    # 
    # (in Python.g)
    # 457:1: arith_expr : term ( ( '+' | '-' ) term )* ;
    def arith_expr
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 57)
      return_value = ArithExprReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal268 = nil
      char_literal269 = nil
      term267 = nil
      term270 = nil

      tree_for_char_literal268 = nil
      tree_for_char_literal269 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 458:5: term ( ( '+' | '-' ) term )*
        @state.following.push(TOKENS_FOLLOWING_term_IN_arith_expr_2491)
        term267 = term
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, term267.tree)
        end
        # at line 458:10: ( ( '+' | '-' ) term )*
        loop do  #loop 80
          alt_80 = 2
          look_80_0 = @input.peek(1)

          if (look_80_0.between?(T__95, T__96)) 
            alt_80 = 1

          end
          case alt_80
          when 1
            # at line 458:12: ( '+' | '-' ) term
            # at line 458:12: ( '+' | '-' )
            alt_79 = 2
            look_79_0 = @input.peek(1)

            if (look_79_0 == T__95) 
              alt_79 = 1
            elsif (look_79_0 == T__96) 
              alt_79 = 2
            else
              @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
            nvae = NoViableAlternative("", 79, 0)
              raise nvae
            end
            case alt_79
            when 1
              # at line 458:14: '+'
              char_literal268 = match(T__95, TOKENS_FOLLOWING_T__95_IN_arith_expr_2497)
              if @state.backtracking == 0

                tree_for_char_literal268 = @adaptor.create_with_payload!(char_literal268)
                root_0 = @adaptor.become_root(tree_for_char_literal268, root_0)

              end

            when 2
              # at line 458:21: '-'
              char_literal269 = match(T__96, TOKENS_FOLLOWING_T__96_IN_arith_expr_2502)
              if @state.backtracking == 0

                tree_for_char_literal269 = @adaptor.create_with_payload!(char_literal269)
                root_0 = @adaptor.become_root(tree_for_char_literal269, root_0)

              end

            end
            @state.following.push(TOKENS_FOLLOWING_term_IN_arith_expr_2507)
            term270 = term
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, term270.tree)
            end

          else
            break #loop 80
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
        # trace_out(__method__, 57)

      end
      
      return return_value
    end

    TermReturnValue = define_return_scope 

    # parser rule term
    # 
    # (in Python.g)
    # 461:1: term : factor ( ( '*' | '/' | '%' | '//' ) factor )* ;
    def term
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 58)
      return_value = TermReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal272 = nil
      char_literal273 = nil
      char_literal274 = nil
      string_literal275 = nil
      factor271 = nil
      factor276 = nil

      tree_for_char_literal272 = nil
      tree_for_char_literal273 = nil
      tree_for_char_literal274 = nil
      tree_for_string_literal275 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 462:5: factor ( ( '*' | '/' | '%' | '//' ) factor )*
        @state.following.push(TOKENS_FOLLOWING_factor_IN_term_2523)
        factor271 = factor
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, factor271.tree)
        end
        # at line 462:12: ( ( '*' | '/' | '%' | '//' ) factor )*
        loop do  #loop 82
          alt_82 = 2
          look_82_0 = @input.peek(1)

          if (look_82_0 == T__40 || look_82_0.between?(T__97, T__99)) 
            alt_82 = 1

          end
          case alt_82
          when 1
            # at line 462:14: ( '*' | '/' | '%' | '//' ) factor
            # at line 462:14: ( '*' | '/' | '%' | '//' )
            alt_81 = 4
            case look_81 = @input.peek(1)
            when T__40 then alt_81 = 1
            when T__97 then alt_81 = 2
            when T__98 then alt_81 = 3
            when T__99 then alt_81 = 4
            else
              @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

              nvae = NoViableAlternative("", 81, 0)
              raise nvae
            end
            case alt_81
            when 1
              # at line 462:16: '*'
              char_literal272 = match(T__40, TOKENS_FOLLOWING_T__40_IN_term_2529)
              if @state.backtracking == 0

                tree_for_char_literal272 = @adaptor.create_with_payload!(char_literal272)
                root_0 = @adaptor.become_root(tree_for_char_literal272, root_0)

              end

            when 2
              # at line 462:23: '/'
              char_literal273 = match(T__97, TOKENS_FOLLOWING_T__97_IN_term_2534)
              if @state.backtracking == 0

                tree_for_char_literal273 = @adaptor.create_with_payload!(char_literal273)
                root_0 = @adaptor.become_root(tree_for_char_literal273, root_0)

              end

            when 3
              # at line 462:30: '%'
              char_literal274 = match(T__98, TOKENS_FOLLOWING_T__98_IN_term_2539)
              if @state.backtracking == 0

                tree_for_char_literal274 = @adaptor.create_with_payload!(char_literal274)
                root_0 = @adaptor.become_root(tree_for_char_literal274, root_0)

              end

            when 4
              # at line 462:37: '//'
              string_literal275 = match(T__99, TOKENS_FOLLOWING_T__99_IN_term_2544)
              if @state.backtracking == 0

                tree_for_string_literal275 = @adaptor.create_with_payload!(string_literal275)
                root_0 = @adaptor.become_root(tree_for_string_literal275, root_0)

              end

            end
            @state.following.push(TOKENS_FOLLOWING_factor_IN_term_2549)
            factor276 = factor
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, factor276.tree)
            end

          else
            break #loop 82
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

    FactorReturnValue = define_return_scope 

    # parser rule factor
    # 
    # (in Python.g)
    # 465:1: factor : ( '+' factor | '-' factor | '~' factor | power );
    def factor
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 59)
      return_value = FactorReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal277 = nil
      char_literal279 = nil
      char_literal281 = nil
      factor278 = nil
      factor280 = nil
      factor282 = nil
      power283 = nil

      tree_for_char_literal277 = nil
      tree_for_char_literal279 = nil
      tree_for_char_literal281 = nil

      begin
        # at line 466:3: ( '+' factor | '-' factor | '~' factor | power )
        alt_83 = 4
        case look_83 = @input.peek(1)
        when T__95 then alt_83 = 1
        when T__96 then alt_83 = 2
        when T__100 then alt_83 = 3
        when LONGINT, COMPLEX, LPAREN, NAME, LBRACK, LCURLY, INT, FLOAT, STRING, T__101 then alt_83 = 4
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          nvae = NoViableAlternative("", 83, 0)
          raise nvae
        end
        case alt_83
        when 1
          root_0 = @adaptor.create_flat_list!


          # at line 466:5: '+' factor
          char_literal277 = match(T__95, TOKENS_FOLLOWING_T__95_IN_factor_2565)
          if @state.backtracking == 0

            tree_for_char_literal277 = @adaptor.create_with_payload!(char_literal277)
            root_0 = @adaptor.become_root(tree_for_char_literal277, root_0)

          end
          @state.following.push(TOKENS_FOLLOWING_factor_IN_factor_2568)
          factor278 = factor
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, factor278.tree)
          end

        when 2
          root_0 = @adaptor.create_flat_list!


          # at line 467:5: '-' factor
          char_literal279 = match(T__96, TOKENS_FOLLOWING_T__96_IN_factor_2574)
          if @state.backtracking == 0

            tree_for_char_literal279 = @adaptor.create_with_payload!(char_literal279)
            root_0 = @adaptor.become_root(tree_for_char_literal279, root_0)

          end
          @state.following.push(TOKENS_FOLLOWING_factor_IN_factor_2577)
          factor280 = factor
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, factor280.tree)
          end

        when 3
          root_0 = @adaptor.create_flat_list!


          # at line 468:5: '~' factor
          char_literal281 = match(T__100, TOKENS_FOLLOWING_T__100_IN_factor_2583)
          if @state.backtracking == 0

            tree_for_char_literal281 = @adaptor.create_with_payload!(char_literal281)
            root_0 = @adaptor.become_root(tree_for_char_literal281, root_0)

          end
          @state.following.push(TOKENS_FOLLOWING_factor_IN_factor_2586)
          factor282 = factor
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, factor282.tree)
          end

        when 4
          root_0 = @adaptor.create_flat_list!


          # at line 469:5: power
          @state.following.push(TOKENS_FOLLOWING_power_IN_factor_2592)
          power283 = power
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, power283.tree)
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
        # trace_out(__method__, 59)

      end
      
      return return_value
    end

    PowerReturnValue = define_return_scope 

    # parser rule power
    # 
    # (in Python.g)
    # 472:1: power : atom ( trailer )* ( '**' factor )? ;
    def power
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 60)
      return_value = PowerReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal286 = nil
      atom284 = nil
      trailer285 = nil
      factor287 = nil

      tree_for_string_literal286 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 473:5: atom ( trailer )* ( '**' factor )?
        @state.following.push(TOKENS_FOLLOWING_atom_IN_power_2605)
        atom284 = atom
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, atom284.tree)
        end
        # at line 473:10: ( trailer )*
        loop do  #loop 84
          alt_84 = 2
          look_84_0 = @input.peek(1)

          if (look_84_0 == LPAREN || look_84_0 == LBRACK || look_84_0 == T__36) 
            alt_84 = 1

          end
          case alt_84
          when 1
            # at line 473:10: trailer
            @state.following.push(TOKENS_FOLLOWING_trailer_IN_power_2607)
            trailer285 = trailer
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, trailer285.tree)
            end

          else
            break #loop 84
          end
        end
        # at line 473:19: ( '**' factor )?
        alt_85 = 2
        look_85_0 = @input.peek(1)

        if (look_85_0 == T__41) 
          alt_85 = 1
        end
        case alt_85
        when 1
          # at line 473:21: '**' factor
          string_literal286 = match(T__41, TOKENS_FOLLOWING_T__41_IN_power_2612)
          if @state.backtracking == 0

            tree_for_string_literal286 = @adaptor.create_with_payload!(string_literal286)
            root_0 = @adaptor.become_root(tree_for_string_literal286, root_0)

          end
          @state.following.push(TOKENS_FOLLOWING_factor_IN_power_2615)
          factor287 = factor
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, factor287.tree)
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

    AtomReturnValue = define_return_scope 

    # parser rule atom
    # 
    # (in Python.g)
    # 476:1: atom : ( LPAREN ( yield_expr | testlist_gexp )? RPAREN | LBRACK ( list_maker )? RBRACK | LCURLY ( dict_maker )? RCURLY | '`' test_list '`' | NAME | INT | LONGINT | FLOAT | COMPLEX | ( STRING )+ );
    def atom
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 61)
      return_value = AtomReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __LPAREN288__ = nil
      __RPAREN291__ = nil
      __LBRACK292__ = nil
      __RBRACK294__ = nil
      __LCURLY295__ = nil
      __RCURLY297__ = nil
      char_literal298 = nil
      char_literal300 = nil
      __NAME301__ = nil
      __INT302__ = nil
      __LONGINT303__ = nil
      __FLOAT304__ = nil
      __COMPLEX305__ = nil
      __STRING306__ = nil
      yield_expr289 = nil
      testlist_gexp290 = nil
      list_maker293 = nil
      dict_maker296 = nil
      test_list299 = nil

      tree_for_LPAREN288 = nil
      tree_for_RPAREN291 = nil
      tree_for_LBRACK292 = nil
      tree_for_RBRACK294 = nil
      tree_for_LCURLY295 = nil
      tree_for_RCURLY297 = nil
      tree_for_char_literal298 = nil
      tree_for_char_literal300 = nil
      tree_for_NAME301 = nil
      tree_for_INT302 = nil
      tree_for_LONGINT303 = nil
      tree_for_FLOAT304 = nil
      tree_for_COMPLEX305 = nil
      tree_for_STRING306 = nil

      begin
        # at line 477:3: ( LPAREN ( yield_expr | testlist_gexp )? RPAREN | LBRACK ( list_maker )? RBRACK | LCURLY ( dict_maker )? RCURLY | '`' test_list '`' | NAME | INT | LONGINT | FLOAT | COMPLEX | ( STRING )+ )
        alt_90 = 10
        case look_90 = @input.peek(1)
        when LPAREN then alt_90 = 1
        when LBRACK then alt_90 = 2
        when LCURLY then alt_90 = 3
        when T__101 then alt_90 = 4
        when NAME then alt_90 = 5
        when INT then alt_90 = 6
        when LONGINT then alt_90 = 7
        when FLOAT then alt_90 = 8
        when COMPLEX then alt_90 = 9
        when STRING then alt_90 = 10
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          nvae = NoViableAlternative("", 90, 0)
          raise nvae
        end
        case alt_90
        when 1
          root_0 = @adaptor.create_flat_list!


          # at line 477:5: LPAREN ( yield_expr | testlist_gexp )? RPAREN
          __LPAREN288__ = match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_atom_2631)
          if @state.backtracking == 0

            tree_for_LPAREN288 = @adaptor.create_with_payload!(__LPAREN288__)
            @adaptor.add_child(root_0, tree_for_LPAREN288)

          end
          # at line 478:5: ( yield_expr | testlist_gexp )?
          alt_86 = 3
          look_86_0 = @input.peek(1)

          if (look_86_0 == T__104) 
            alt_86 = 1
          elsif (look_86_0.between?(LONGINT, COMPLEX) || look_86_0 == LPAREN || look_86_0.between?(NAME, LBRACK) || look_86_0 == LCURLY || look_86_0.between?(INT, STRING) || look_86_0 == T__82 || look_86_0.between?(T__95, T__96) || look_86_0.between?(T__100, T__102)) 
            alt_86 = 2
          end
          case alt_86
          when 1
            # at line 478:7: yield_expr
            @state.following.push(TOKENS_FOLLOWING_yield_expr_IN_atom_2640)
            yield_expr289 = yield_expr
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, yield_expr289.tree)
            end

          when 2
            # at line 479:7: testlist_gexp
            @state.following.push(TOKENS_FOLLOWING_testlist_gexp_IN_atom_2648)
            testlist_gexp290 = testlist_gexp
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, testlist_gexp290.tree)
            end

          end
          __RPAREN291__ = match(RPAREN, TOKENS_FOLLOWING_RPAREN_IN_atom_2661)
          if @state.backtracking == 0

            tree_for_RPAREN291 = @adaptor.create_with_payload!(__RPAREN291__)
            @adaptor.add_child(root_0, tree_for_RPAREN291)

          end

        when 2
          root_0 = @adaptor.create_flat_list!


          # at line 482:5: LBRACK ( list_maker )? RBRACK
          __LBRACK292__ = match(LBRACK, TOKENS_FOLLOWING_LBRACK_IN_atom_2667)
          if @state.backtracking == 0

            tree_for_LBRACK292 = @adaptor.create_with_payload!(__LBRACK292__)
            @adaptor.add_child(root_0, tree_for_LBRACK292)

          end
          # at line 482:12: ( list_maker )?
          alt_87 = 2
          look_87_0 = @input.peek(1)

          if (look_87_0.between?(LONGINT, COMPLEX) || look_87_0 == LPAREN || look_87_0.between?(NAME, LBRACK) || look_87_0 == LCURLY || look_87_0.between?(INT, STRING) || look_87_0 == T__82 || look_87_0.between?(T__95, T__96) || look_87_0.between?(T__100, T__102)) 
            alt_87 = 1
          end
          case alt_87
          when 1
            # at line 482:12: list_maker
            @state.following.push(TOKENS_FOLLOWING_list_maker_IN_atom_2669)
            list_maker293 = list_maker
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, list_maker293.tree)
            end

          end
          __RBRACK294__ = match(RBRACK, TOKENS_FOLLOWING_RBRACK_IN_atom_2672)
          if @state.backtracking == 0

            tree_for_RBRACK294 = @adaptor.create_with_payload!(__RBRACK294__)
            @adaptor.add_child(root_0, tree_for_RBRACK294)

          end

        when 3
          root_0 = @adaptor.create_flat_list!


          # at line 483:5: LCURLY ( dict_maker )? RCURLY
          __LCURLY295__ = match(LCURLY, TOKENS_FOLLOWING_LCURLY_IN_atom_2678)
          if @state.backtracking == 0

            tree_for_LCURLY295 = @adaptor.create_with_payload!(__LCURLY295__)
            @adaptor.add_child(root_0, tree_for_LCURLY295)

          end
          # at line 483:12: ( dict_maker )?
          alt_88 = 2
          look_88_0 = @input.peek(1)

          if (look_88_0.between?(LONGINT, COMPLEX) || look_88_0 == LPAREN || look_88_0.between?(NAME, LBRACK) || look_88_0 == LCURLY || look_88_0.between?(INT, STRING) || look_88_0 == T__82 || look_88_0.between?(T__95, T__96) || look_88_0.between?(T__100, T__102)) 
            alt_88 = 1
          end
          case alt_88
          when 1
            # at line 483:12: dict_maker
            @state.following.push(TOKENS_FOLLOWING_dict_maker_IN_atom_2680)
            dict_maker296 = dict_maker
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, dict_maker296.tree)
            end

          end
          __RCURLY297__ = match(RCURLY, TOKENS_FOLLOWING_RCURLY_IN_atom_2683)
          if @state.backtracking == 0

            tree_for_RCURLY297 = @adaptor.create_with_payload!(__RCURLY297__)
            @adaptor.add_child(root_0, tree_for_RCURLY297)

          end

        when 4
          root_0 = @adaptor.create_flat_list!


          # at line 484:5: '`' test_list '`'
          char_literal298 = match(T__101, TOKENS_FOLLOWING_T__101_IN_atom_2689)
          if @state.backtracking == 0

            tree_for_char_literal298 = @adaptor.create_with_payload!(char_literal298)
            @adaptor.add_child(root_0, tree_for_char_literal298)

          end
          @state.following.push(TOKENS_FOLLOWING_test_list_IN_atom_2691)
          test_list299 = test_list
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, test_list299.tree)
          end
          char_literal300 = match(T__101, TOKENS_FOLLOWING_T__101_IN_atom_2693)
          if @state.backtracking == 0

            tree_for_char_literal300 = @adaptor.create_with_payload!(char_literal300)
            @adaptor.add_child(root_0, tree_for_char_literal300)

          end

        when 5
          root_0 = @adaptor.create_flat_list!


          # at line 485:5: NAME
          __NAME301__ = match(NAME, TOKENS_FOLLOWING_NAME_IN_atom_2699)
          if @state.backtracking == 0

            tree_for_NAME301 = @adaptor.create_with_payload!(__NAME301__)
            @adaptor.add_child(root_0, tree_for_NAME301)

          end

        when 6
          root_0 = @adaptor.create_flat_list!


          # at line 486:5: INT
          __INT302__ = match(INT, TOKENS_FOLLOWING_INT_IN_atom_2705)
          if @state.backtracking == 0

            tree_for_INT302 = @adaptor.create_with_payload!(__INT302__)
            @adaptor.add_child(root_0, tree_for_INT302)

          end

        when 7
          root_0 = @adaptor.create_flat_list!


          # at line 487:5: LONGINT
          __LONGINT303__ = match(LONGINT, TOKENS_FOLLOWING_LONGINT_IN_atom_2711)
          if @state.backtracking == 0

            tree_for_LONGINT303 = @adaptor.create_with_payload!(__LONGINT303__)
            @adaptor.add_child(root_0, tree_for_LONGINT303)

          end

        when 8
          root_0 = @adaptor.create_flat_list!


          # at line 488:5: FLOAT
          __FLOAT304__ = match(FLOAT, TOKENS_FOLLOWING_FLOAT_IN_atom_2717)
          if @state.backtracking == 0

            tree_for_FLOAT304 = @adaptor.create_with_payload!(__FLOAT304__)
            @adaptor.add_child(root_0, tree_for_FLOAT304)

          end

        when 9
          root_0 = @adaptor.create_flat_list!


          # at line 489:5: COMPLEX
          __COMPLEX305__ = match(COMPLEX, TOKENS_FOLLOWING_COMPLEX_IN_atom_2723)
          if @state.backtracking == 0

            tree_for_COMPLEX305 = @adaptor.create_with_payload!(__COMPLEX305__)
            @adaptor.add_child(root_0, tree_for_COMPLEX305)

          end

        when 10
          root_0 = @adaptor.create_flat_list!


          # at line 490:5: ( STRING )+
          # at file 490:5: ( STRING )+
          match_count_89 = 0
          loop do
            alt_89 = 2
            look_89_0 = @input.peek(1)

            if (look_89_0 == STRING) 
              alt_89 = 1

            end
            case alt_89
            when 1
              # at line 490:5: STRING
              __STRING306__ = match(STRING, TOKENS_FOLLOWING_STRING_IN_atom_2729)
              if @state.backtracking == 0

                tree_for_STRING306 = @adaptor.create_with_payload!(__STRING306__)
                @adaptor.add_child(root_0, tree_for_STRING306)

              end

            else
              match_count_89 > 0 and break
              @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

              eee = EarlyExit(89)


              raise eee
            end
            match_count_89 += 1
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
        # trace_out(__method__, 61)

      end
      
      return return_value
    end

    ListMakerReturnValue = define_return_scope 

    # parser rule list_maker
    # 
    # (in Python.g)
    # 493:1: list_maker : test ( list_for | ( options {greedy=true; } : ',' test )* ) ( ',' )? ;
    def list_maker
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 62)
      return_value = ListMakerReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal309 = nil
      char_literal311 = nil
      test307 = nil
      list_for308 = nil
      test310 = nil

      tree_for_char_literal309 = nil
      tree_for_char_literal311 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 494:5: test ( list_for | ( options {greedy=true; } : ',' test )* ) ( ',' )?
        @state.following.push(TOKENS_FOLLOWING_test_IN_list_maker_2743)
        test307 = test
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, test307.tree)
        end
        # at line 495:5: ( list_for | ( options {greedy=true; } : ',' test )* )
        alt_92 = 2
        look_92_0 = @input.peek(1)

        if (look_92_0 == T__75) 
          alt_92 = 1
        elsif (look_92_0 == RBRACK || look_92_0 == T__39) 
          alt_92 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 92, 0)
          raise nvae
        end
        case alt_92
        when 1
          # at line 495:7: list_for
          @state.following.push(TOKENS_FOLLOWING_list_for_IN_list_maker_2752)
          list_for308 = list_for
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, list_for308.tree)
          end

        when 2
          # at line 496:7: ( options {greedy=true; } : ',' test )*
          # at line 496:7: ( options {greedy=true; } : ',' test )*
          loop do  #loop 91
            alt_91 = 2
            look_91_0 = @input.peek(1)

            if (look_91_0 == T__39) 
              look_91_1 = @input.peek(2)

              if (look_91_1.between?(LONGINT, COMPLEX) || look_91_1 == LPAREN || look_91_1.between?(NAME, LBRACK) || look_91_1 == LCURLY || look_91_1.between?(INT, STRING) || look_91_1 == T__82 || look_91_1.between?(T__95, T__96) || look_91_1.between?(T__100, T__102)) 
                alt_91 = 1

              end

            end
            case alt_91
            when 1
              # at line 496:31: ',' test
              char_literal309 = match(T__39, TOKENS_FOLLOWING_T__39_IN_list_maker_2768)
              if @state.backtracking == 0

                tree_for_char_literal309 = @adaptor.create_with_payload!(char_literal309)
                @adaptor.add_child(root_0, tree_for_char_literal309)

              end
              @state.following.push(TOKENS_FOLLOWING_test_IN_list_maker_2770)
              test310 = test
              @state.following.pop
              if @state.backtracking == 0
                @adaptor.add_child(root_0, test310.tree)
              end

            else
              break #loop 91
            end
          end

        end
        # at line 497:7: ( ',' )?
        alt_93 = 2
        look_93_0 = @input.peek(1)

        if (look_93_0 == T__39) 
          alt_93 = 1
        end
        case alt_93
        when 1
          # at line 497:7: ','
          char_literal311 = match(T__39, TOKENS_FOLLOWING_T__39_IN_list_maker_2780)
          if @state.backtracking == 0

            tree_for_char_literal311 = @adaptor.create_with_payload!(char_literal311)
            @adaptor.add_child(root_0, tree_for_char_literal311)

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

    TestlistGexpReturnValue = define_return_scope 

    # parser rule testlist_gexp
    # 
    # (in Python.g)
    # 500:1: testlist_gexp : test ( ( options {k=2; } : ',' test )* ( ',' )? | gen_for ) ;
    def testlist_gexp
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 63)
      return_value = TestlistGexpReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal313 = nil
      char_literal315 = nil
      test312 = nil
      test314 = nil
      gen_for316 = nil

      tree_for_char_literal313 = nil
      tree_for_char_literal315 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 501:5: test ( ( options {k=2; } : ',' test )* ( ',' )? | gen_for )
        @state.following.push(TOKENS_FOLLOWING_test_IN_testlist_gexp_2794)
        test312 = test
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, test312.tree)
        end
        # at line 502:5: ( ( options {k=2; } : ',' test )* ( ',' )? | gen_for )
        alt_96 = 2
        look_96_0 = @input.peek(1)

        if (look_96_0 == RPAREN || look_96_0 == T__39) 
          alt_96 = 1
        elsif (look_96_0 == T__75) 
          alt_96 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 96, 0)
          raise nvae
        end
        case alt_96
        when 1
          # at line 502:7: ( options {k=2; } : ',' test )* ( ',' )?
          # at line 502:7: ( options {k=2; } : ',' test )*
          loop do  #loop 94
            alt_94 = 2
            alt_94 = @dfa94.predict(@input)
            case alt_94
            when 1
              # at line 502:24: ',' test
              char_literal313 = match(T__39, TOKENS_FOLLOWING_T__39_IN_testlist_gexp_2811)
              if @state.backtracking == 0

                tree_for_char_literal313 = @adaptor.create_with_payload!(char_literal313)
                @adaptor.add_child(root_0, tree_for_char_literal313)

              end
              @state.following.push(TOKENS_FOLLOWING_test_IN_testlist_gexp_2813)
              test314 = test
              @state.following.pop
              if @state.backtracking == 0
                @adaptor.add_child(root_0, test314.tree)
              end

            else
              break #loop 94
            end
          end
          # at line 502:35: ( ',' )?
          alt_95 = 2
          look_95_0 = @input.peek(1)

          if (look_95_0 == T__39) 
            alt_95 = 1
          end
          case alt_95
          when 1
            # at line 502:35: ','
            char_literal315 = match(T__39, TOKENS_FOLLOWING_T__39_IN_testlist_gexp_2817)
            if @state.backtracking == 0

              tree_for_char_literal315 = @adaptor.create_with_payload!(char_literal315)
              @adaptor.add_child(root_0, tree_for_char_literal315)

            end

          end

        when 2
          # at line 503:7: gen_for
          @state.following.push(TOKENS_FOLLOWING_gen_for_IN_testlist_gexp_2826)
          gen_for316 = gen_for
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, gen_for316.tree)
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

    LambDefReturnValue = define_return_scope 

    # parser rule lamb_def
    # 
    # (in Python.g)
    # 507:1: lamb_def : 'lambda' ( var_args_list )? ':' test ;
    def lamb_def
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 64)
      return_value = LambDefReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal317 = nil
      char_literal319 = nil
      var_args_list318 = nil
      test320 = nil

      tree_for_string_literal317 = nil
      tree_for_char_literal319 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 508:5: 'lambda' ( var_args_list )? ':' test
        string_literal317 = match(T__102, TOKENS_FOLLOWING_T__102_IN_lamb_def_2845)
        if @state.backtracking == 0

          tree_for_string_literal317 = @adaptor.create_with_payload!(string_literal317)
          @adaptor.add_child(root_0, tree_for_string_literal317)

        end
        # at line 508:14: ( var_args_list )?
        alt_97 = 2
        look_97_0 = @input.peek(1)

        if (look_97_0 == LPAREN || look_97_0 == NAME || look_97_0.between?(T__40, T__41)) 
          alt_97 = 1
        end
        case alt_97
        when 1
          # at line 508:14: var_args_list
          @state.following.push(TOKENS_FOLLOWING_var_args_list_IN_lamb_def_2847)
          var_args_list318 = var_args_list
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, var_args_list318.tree)
          end

        end
        char_literal319 = match(T__38, TOKENS_FOLLOWING_T__38_IN_lamb_def_2850)
        if @state.backtracking == 0

          tree_for_char_literal319 = @adaptor.create_with_payload!(char_literal319)
          @adaptor.add_child(root_0, tree_for_char_literal319)

        end
        @state.following.push(TOKENS_FOLLOWING_test_IN_lamb_def_2852)
        test320 = test
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, test320.tree)
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
        # trace_out(__method__, 64)

      end
      
      return return_value
    end

    TrailerReturnValue = define_return_scope 

    # parser rule trailer
    # 
    # (in Python.g)
    # 511:1: trailer : ( LPAREN ( arg_list )? RPAREN | LBRACK subscript_list RBRACK | '.' NAME );
    def trailer
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 65)
      return_value = TrailerReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __LPAREN321__ = nil
      __RPAREN323__ = nil
      __LBRACK324__ = nil
      __RBRACK326__ = nil
      char_literal327 = nil
      __NAME328__ = nil
      arg_list322 = nil
      subscript_list325 = nil

      tree_for_LPAREN321 = nil
      tree_for_RPAREN323 = nil
      tree_for_LBRACK324 = nil
      tree_for_RBRACK326 = nil
      tree_for_char_literal327 = nil
      tree_for_NAME328 = nil

      begin
        # at line 512:3: ( LPAREN ( arg_list )? RPAREN | LBRACK subscript_list RBRACK | '.' NAME )
        alt_99 = 3
        case look_99 = @input.peek(1)
        when LPAREN then alt_99 = 1
        when LBRACK then alt_99 = 2
        when T__36 then alt_99 = 3
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          nvae = NoViableAlternative("", 99, 0)
          raise nvae
        end
        case alt_99
        when 1
          root_0 = @adaptor.create_flat_list!


          # at line 512:5: LPAREN ( arg_list )? RPAREN
          __LPAREN321__ = match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_trailer_2865)
          if @state.backtracking == 0

            tree_for_LPAREN321 = @adaptor.create_with_payload!(__LPAREN321__)
            @adaptor.add_child(root_0, tree_for_LPAREN321)

          end
          # at line 512:12: ( arg_list )?
          alt_98 = 2
          look_98_0 = @input.peek(1)

          if (look_98_0.between?(LONGINT, COMPLEX) || look_98_0 == LPAREN || look_98_0.between?(NAME, LBRACK) || look_98_0 == LCURLY || look_98_0.between?(INT, STRING) || look_98_0.between?(T__40, T__41) || look_98_0 == T__82 || look_98_0.between?(T__95, T__96) || look_98_0.between?(T__100, T__102)) 
            alt_98 = 1
          end
          case alt_98
          when 1
            # at line 512:12: arg_list
            @state.following.push(TOKENS_FOLLOWING_arg_list_IN_trailer_2867)
            arg_list322 = arg_list
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, arg_list322.tree)
            end

          end
          __RPAREN323__ = match(RPAREN, TOKENS_FOLLOWING_RPAREN_IN_trailer_2870)
          if @state.backtracking == 0

            tree_for_RPAREN323 = @adaptor.create_with_payload!(__RPAREN323__)
            @adaptor.add_child(root_0, tree_for_RPAREN323)

          end

        when 2
          root_0 = @adaptor.create_flat_list!


          # at line 513:5: LBRACK subscript_list RBRACK
          __LBRACK324__ = match(LBRACK, TOKENS_FOLLOWING_LBRACK_IN_trailer_2876)
          if @state.backtracking == 0

            tree_for_LBRACK324 = @adaptor.create_with_payload!(__LBRACK324__)
            @adaptor.add_child(root_0, tree_for_LBRACK324)

          end
          @state.following.push(TOKENS_FOLLOWING_subscript_list_IN_trailer_2878)
          subscript_list325 = subscript_list
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, subscript_list325.tree)
          end
          __RBRACK326__ = match(RBRACK, TOKENS_FOLLOWING_RBRACK_IN_trailer_2880)
          if @state.backtracking == 0

            tree_for_RBRACK326 = @adaptor.create_with_payload!(__RBRACK326__)
            @adaptor.add_child(root_0, tree_for_RBRACK326)

          end

        when 3
          root_0 = @adaptor.create_flat_list!


          # at line 514:5: '.' NAME
          char_literal327 = match(T__36, TOKENS_FOLLOWING_T__36_IN_trailer_2886)
          if @state.backtracking == 0

            tree_for_char_literal327 = @adaptor.create_with_payload!(char_literal327)
            @adaptor.add_child(root_0, tree_for_char_literal327)

          end
          __NAME328__ = match(NAME, TOKENS_FOLLOWING_NAME_IN_trailer_2888)
          if @state.backtracking == 0

            tree_for_NAME328 = @adaptor.create_with_payload!(__NAME328__)
            @adaptor.add_child(root_0, tree_for_NAME328)

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
        # trace_out(__method__, 65)

      end
      
      return return_value
    end

    SubscriptListReturnValue = define_return_scope 

    # parser rule subscript_list
    # 
    # (in Python.g)
    # 517:1: subscript_list : subscript ( options {greedy=true; } : ',' subscript )* ( ',' )? ;
    def subscript_list
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 66)
      return_value = SubscriptListReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal330 = nil
      char_literal332 = nil
      subscript329 = nil
      subscript331 = nil

      tree_for_char_literal330 = nil
      tree_for_char_literal332 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 517:18: subscript ( options {greedy=true; } : ',' subscript )* ( ',' )?
        @state.following.push(TOKENS_FOLLOWING_subscript_IN_subscript_list_2899)
        subscript329 = subscript
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, subscript329.tree)
        end
        # at line 517:28: ( options {greedy=true; } : ',' subscript )*
        loop do  #loop 100
          alt_100 = 2
          look_100_0 = @input.peek(1)

          if (look_100_0 == T__39) 
            look_100_1 = @input.peek(2)

            if (look_100_1.between?(LONGINT, COMPLEX) || look_100_1 == LPAREN || look_100_1.between?(NAME, LBRACK) || look_100_1 == LCURLY || look_100_1.between?(INT, STRING) || look_100_1 == T__36 || look_100_1 == T__38 || look_100_1 == T__82 || look_100_1.between?(T__95, T__96) || look_100_1.between?(T__100, T__102)) 
              alt_100 = 1

            end

          end
          case alt_100
          when 1
            # at line 517:52: ',' subscript
            char_literal330 = match(T__39, TOKENS_FOLLOWING_T__39_IN_subscript_list_2909)
            if @state.backtracking == 0

              tree_for_char_literal330 = @adaptor.create_with_payload!(char_literal330)
              @adaptor.add_child(root_0, tree_for_char_literal330)

            end
            @state.following.push(TOKENS_FOLLOWING_subscript_IN_subscript_list_2911)
            subscript331 = subscript
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, subscript331.tree)
            end

          else
            break #loop 100
          end
        end
        # at line 517:68: ( ',' )?
        alt_101 = 2
        look_101_0 = @input.peek(1)

        if (look_101_0 == T__39) 
          alt_101 = 1
        end
        case alt_101
        when 1
          # at line 517:69: ','
          char_literal332 = match(T__39, TOKENS_FOLLOWING_T__39_IN_subscript_list_2916)
          if @state.backtracking == 0

            tree_for_char_literal332 = @adaptor.create_with_payload!(char_literal332)
            @adaptor.add_child(root_0, tree_for_char_literal332)

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
        # trace_out(__method__, 66)

      end
      
      return return_value
    end

    SubscriptReturnValue = define_return_scope 

    # parser rule subscript
    # 
    # (in Python.g)
    # 520:1: subscript : ( '.' '.' '.' | test ( ':' ( test )? ( sliceop )? )? | ':' ( test )? ( sliceop )? );
    def subscript
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 67)
      return_value = SubscriptReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal333 = nil
      char_literal334 = nil
      char_literal335 = nil
      char_literal337 = nil
      char_literal340 = nil
      test336 = nil
      test338 = nil
      sliceop339 = nil
      test341 = nil
      sliceop342 = nil

      tree_for_char_literal333 = nil
      tree_for_char_literal334 = nil
      tree_for_char_literal335 = nil
      tree_for_char_literal337 = nil
      tree_for_char_literal340 = nil

      begin
        # at line 520:11: ( '.' '.' '.' | test ( ':' ( test )? ( sliceop )? )? | ':' ( test )? ( sliceop )? )
        alt_107 = 3
        case look_107 = @input.peek(1)
        when T__36 then alt_107 = 1
        when LONGINT, COMPLEX, LPAREN, NAME, LBRACK, LCURLY, INT, FLOAT, STRING, T__82, T__95, T__96, T__100, T__101, T__102 then alt_107 = 2
        when T__38 then alt_107 = 3
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          nvae = NoViableAlternative("", 107, 0)
          raise nvae
        end
        case alt_107
        when 1
          root_0 = @adaptor.create_flat_list!


          # at line 520:13: '.' '.' '.'
          char_literal333 = match(T__36, TOKENS_FOLLOWING_T__36_IN_subscript_2941)
          if @state.backtracking == 0

            tree_for_char_literal333 = @adaptor.create_with_payload!(char_literal333)
            @adaptor.add_child(root_0, tree_for_char_literal333)

          end
          char_literal334 = match(T__36, TOKENS_FOLLOWING_T__36_IN_subscript_2943)
          if @state.backtracking == 0

            tree_for_char_literal334 = @adaptor.create_with_payload!(char_literal334)
            @adaptor.add_child(root_0, tree_for_char_literal334)

          end
          char_literal335 = match(T__36, TOKENS_FOLLOWING_T__36_IN_subscript_2945)
          if @state.backtracking == 0

            tree_for_char_literal335 = @adaptor.create_with_payload!(char_literal335)
            @adaptor.add_child(root_0, tree_for_char_literal335)

          end

        when 2
          root_0 = @adaptor.create_flat_list!


          # at line 521:13: test ( ':' ( test )? ( sliceop )? )?
          @state.following.push(TOKENS_FOLLOWING_test_IN_subscript_2959)
          test336 = test
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, test336.tree)
          end
          # at line 521:18: ( ':' ( test )? ( sliceop )? )?
          alt_104 = 2
          look_104_0 = @input.peek(1)

          if (look_104_0 == T__38) 
            alt_104 = 1
          end
          case alt_104
          when 1
            # at line 521:19: ':' ( test )? ( sliceop )?
            char_literal337 = match(T__38, TOKENS_FOLLOWING_T__38_IN_subscript_2962)
            if @state.backtracking == 0

              tree_for_char_literal337 = @adaptor.create_with_payload!(char_literal337)
              @adaptor.add_child(root_0, tree_for_char_literal337)

            end
            # at line 521:23: ( test )?
            alt_102 = 2
            look_102_0 = @input.peek(1)

            if (look_102_0.between?(LONGINT, COMPLEX) || look_102_0 == LPAREN || look_102_0.between?(NAME, LBRACK) || look_102_0 == LCURLY || look_102_0.between?(INT, STRING) || look_102_0 == T__82 || look_102_0.between?(T__95, T__96) || look_102_0.between?(T__100, T__102)) 
              alt_102 = 1
            end
            case alt_102
            when 1
              # at line 521:24: test
              @state.following.push(TOKENS_FOLLOWING_test_IN_subscript_2965)
              test338 = test
              @state.following.pop
              if @state.backtracking == 0
                @adaptor.add_child(root_0, test338.tree)
              end

            end
            # at line 521:31: ( sliceop )?
            alt_103 = 2
            look_103_0 = @input.peek(1)

            if (look_103_0 == T__38) 
              alt_103 = 1
            end
            case alt_103
            when 1
              # at line 521:32: sliceop
              @state.following.push(TOKENS_FOLLOWING_sliceop_IN_subscript_2970)
              sliceop339 = sliceop
              @state.following.pop
              if @state.backtracking == 0
                @adaptor.add_child(root_0, sliceop339.tree)
              end

            end

          end

        when 3
          root_0 = @adaptor.create_flat_list!


          # at line 522:13: ':' ( test )? ( sliceop )?
          char_literal340 = match(T__38, TOKENS_FOLLOWING_T__38_IN_subscript_2988)
          if @state.backtracking == 0

            tree_for_char_literal340 = @adaptor.create_with_payload!(char_literal340)
            @adaptor.add_child(root_0, tree_for_char_literal340)

          end
          # at line 522:17: ( test )?
          alt_105 = 2
          look_105_0 = @input.peek(1)

          if (look_105_0.between?(LONGINT, COMPLEX) || look_105_0 == LPAREN || look_105_0.between?(NAME, LBRACK) || look_105_0 == LCURLY || look_105_0.between?(INT, STRING) || look_105_0 == T__82 || look_105_0.between?(T__95, T__96) || look_105_0.between?(T__100, T__102)) 
            alt_105 = 1
          end
          case alt_105
          when 1
            # at line 522:18: test
            @state.following.push(TOKENS_FOLLOWING_test_IN_subscript_2991)
            test341 = test
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, test341.tree)
            end

          end
          # at line 522:25: ( sliceop )?
          alt_106 = 2
          look_106_0 = @input.peek(1)

          if (look_106_0 == T__38) 
            alt_106 = 1
          end
          case alt_106
          when 1
            # at line 522:26: sliceop
            @state.following.push(TOKENS_FOLLOWING_sliceop_IN_subscript_2996)
            sliceop342 = sliceop
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, sliceop342.tree)
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
        # trace_out(__method__, 67)

      end
      
      return return_value
    end

    SliceopReturnValue = define_return_scope 

    # parser rule sliceop
    # 
    # (in Python.g)
    # 525:1: sliceop : ':' ( test )? ;
    def sliceop
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 68)
      return_value = SliceopReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal343 = nil
      test344 = nil

      tree_for_char_literal343 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 525:11: ':' ( test )?
        char_literal343 = match(T__38, TOKENS_FOLLOWING_T__38_IN_sliceop_3017)
        if @state.backtracking == 0

          tree_for_char_literal343 = @adaptor.create_with_payload!(char_literal343)
          @adaptor.add_child(root_0, tree_for_char_literal343)

        end
        # at line 525:15: ( test )?
        alt_108 = 2
        look_108_0 = @input.peek(1)

        if (look_108_0.between?(LONGINT, COMPLEX) || look_108_0 == LPAREN || look_108_0.between?(NAME, LBRACK) || look_108_0 == LCURLY || look_108_0.between?(INT, STRING) || look_108_0 == T__82 || look_108_0.between?(T__95, T__96) || look_108_0.between?(T__100, T__102)) 
          alt_108 = 1
        end
        case alt_108
        when 1
          # at line 525:16: test
          @state.following.push(TOKENS_FOLLOWING_test_IN_sliceop_3020)
          test344 = test
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, test344.tree)
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

    ExprlistReturnValue = define_return_scope 

    # parser rule exprlist
    # 
    # (in Python.g)
    # 528:1: exprlist : expr ( options {k=2; } : ',' expr )* ( ',' )? ;
    def exprlist
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 69)
      return_value = ExprlistReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal346 = nil
      char_literal348 = nil
      expr345 = nil
      expr347 = nil

      tree_for_char_literal346 = nil
      tree_for_char_literal348 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 528:12: expr ( options {k=2; } : ',' expr )* ( ',' )?
        @state.following.push(TOKENS_FOLLOWING_expr_IN_exprlist_3039)
        expr345 = expr
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, expr345.tree)
        end
        # at line 528:17: ( options {k=2; } : ',' expr )*
        loop do  #loop 109
          alt_109 = 2
          alt_109 = @dfa109.predict(@input)
          case alt_109
          when 1
            # at line 528:34: ',' expr
            char_literal346 = match(T__39, TOKENS_FOLLOWING_T__39_IN_exprlist_3050)
            if @state.backtracking == 0

              tree_for_char_literal346 = @adaptor.create_with_payload!(char_literal346)
              @adaptor.add_child(root_0, tree_for_char_literal346)

            end
            @state.following.push(TOKENS_FOLLOWING_expr_IN_exprlist_3052)
            expr347 = expr
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, expr347.tree)
            end

          else
            break #loop 109
          end
        end
        # at line 528:45: ( ',' )?
        alt_110 = 2
        look_110_0 = @input.peek(1)

        if (look_110_0 == T__39) 
          alt_110 = 1
        end
        case alt_110
        when 1
          # at line 528:46: ','
          char_literal348 = match(T__39, TOKENS_FOLLOWING_T__39_IN_exprlist_3057)
          if @state.backtracking == 0

            tree_for_char_literal348 = @adaptor.create_with_payload!(char_literal348)
            @adaptor.add_child(root_0, tree_for_char_literal348)

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
        # trace_out(__method__, 69)

      end
      
      return return_value
    end

    TestListReturnValue = define_return_scope 

    # parser rule test_list
    # 
    # (in Python.g)
    # 531:1: test_list : test ( options {k=2; } : ',' test )* ( ',' )? ;
    def test_list
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 70)
      return_value = TestListReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal350 = nil
      char_literal352 = nil
      test349 = nil
      test351 = nil

      tree_for_char_literal350 = nil
      tree_for_char_literal352 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 532:7: test ( options {k=2; } : ',' test )* ( ',' )?
        @state.following.push(TOKENS_FOLLOWING_test_IN_test_list_3081)
        test349 = test
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, test349.tree)
        end
        # at line 532:12: ( options {k=2; } : ',' test )*
        loop do  #loop 111
          alt_111 = 2
          alt_111 = @dfa111.predict(@input)
          case alt_111
          when 1
            # at line 532:29: ',' test
            char_literal350 = match(T__39, TOKENS_FOLLOWING_T__39_IN_test_list_3092)
            if @state.backtracking == 0

              tree_for_char_literal350 = @adaptor.create_with_payload!(char_literal350)
              @adaptor.add_child(root_0, tree_for_char_literal350)

            end
            @state.following.push(TOKENS_FOLLOWING_test_IN_test_list_3094)
            test351 = test
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, test351.tree)
            end

          else
            break #loop 111
          end
        end
        # at line 532:40: ( ',' )?
        alt_112 = 2
        look_112_0 = @input.peek(1)

        if (look_112_0 == T__39) 
          alt_112 = 1
        end
        case alt_112
        when 1
          # at line 532:41: ','
          char_literal352 = match(T__39, TOKENS_FOLLOWING_T__39_IN_test_list_3099)
          if @state.backtracking == 0

            tree_for_char_literal352 = @adaptor.create_with_payload!(char_literal352)
            @adaptor.add_child(root_0, tree_for_char_literal352)

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
        # trace_out(__method__, 70)

      end
      
      return return_value
    end

    DictMakerReturnValue = define_return_scope 

    # parser rule dict_maker
    # 
    # (in Python.g)
    # 535:1: dict_maker : test ':' test ( options {k=2; } : ',' test ':' test )* ( ',' )? ;
    def dict_maker
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 71)
      return_value = DictMakerReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal354 = nil
      char_literal356 = nil
      char_literal358 = nil
      char_literal360 = nil
      test353 = nil
      test355 = nil
      test357 = nil
      test359 = nil

      tree_for_char_literal354 = nil
      tree_for_char_literal356 = nil
      tree_for_char_literal358 = nil
      tree_for_char_literal360 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 535:14: test ':' test ( options {k=2; } : ',' test ':' test )* ( ',' )?
        @state.following.push(TOKENS_FOLLOWING_test_IN_dict_maker_3114)
        test353 = test
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, test353.tree)
        end
        char_literal354 = match(T__38, TOKENS_FOLLOWING_T__38_IN_dict_maker_3116)
        if @state.backtracking == 0

          tree_for_char_literal354 = @adaptor.create_with_payload!(char_literal354)
          @adaptor.add_child(root_0, tree_for_char_literal354)

        end
        @state.following.push(TOKENS_FOLLOWING_test_IN_dict_maker_3118)
        test355 = test
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, test355.tree)
        end
        # at line 535:28: ( options {k=2; } : ',' test ':' test )*
        loop do  #loop 113
          alt_113 = 2
          alt_113 = @dfa113.predict(@input)
          case alt_113
          when 1
            # at line 535:44: ',' test ':' test
            char_literal356 = match(T__39, TOKENS_FOLLOWING_T__39_IN_dict_maker_3128)
            if @state.backtracking == 0

              tree_for_char_literal356 = @adaptor.create_with_payload!(char_literal356)
              @adaptor.add_child(root_0, tree_for_char_literal356)

            end
            @state.following.push(TOKENS_FOLLOWING_test_IN_dict_maker_3130)
            test357 = test
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, test357.tree)
            end
            char_literal358 = match(T__38, TOKENS_FOLLOWING_T__38_IN_dict_maker_3132)
            if @state.backtracking == 0

              tree_for_char_literal358 = @adaptor.create_with_payload!(char_literal358)
              @adaptor.add_child(root_0, tree_for_char_literal358)

            end
            @state.following.push(TOKENS_FOLLOWING_test_IN_dict_maker_3134)
            test359 = test
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, test359.tree)
            end

          else
            break #loop 113
          end
        end
        # at line 535:64: ( ',' )?
        alt_114 = 2
        look_114_0 = @input.peek(1)

        if (look_114_0 == T__39) 
          alt_114 = 1
        end
        case alt_114
        when 1
          # at line 535:65: ','
          char_literal360 = match(T__39, TOKENS_FOLLOWING_T__39_IN_dict_maker_3139)
          if @state.backtracking == 0

            tree_for_char_literal360 = @adaptor.create_with_payload!(char_literal360)
            @adaptor.add_child(root_0, tree_for_char_literal360)

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

    ClassDefReturnValue = define_return_scope 

    # parser rule class_def
    # 
    # (in Python.g)
    # 538:1: class_def : 'class' NAME ( LPAREN ( test_list )? RPAREN )? ':' suite ;
    def class_def
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 72)
      return_value = ClassDefReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal361 = nil
      __NAME362__ = nil
      __LPAREN363__ = nil
      __RPAREN365__ = nil
      char_literal366 = nil
      test_list364 = nil
      suite367 = nil

      tree_for_string_literal361 = nil
      tree_for_NAME362 = nil
      tree_for_LPAREN363 = nil
      tree_for_RPAREN365 = nil
      tree_for_char_literal366 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 538:12: 'class' NAME ( LPAREN ( test_list )? RPAREN )? ':' suite
        string_literal361 = match(T__103, TOKENS_FOLLOWING_T__103_IN_class_def_3159)
        if @state.backtracking == 0

          tree_for_string_literal361 = @adaptor.create_with_payload!(string_literal361)
          @adaptor.add_child(root_0, tree_for_string_literal361)

        end
        __NAME362__ = match(NAME, TOKENS_FOLLOWING_NAME_IN_class_def_3161)
        if @state.backtracking == 0

          tree_for_NAME362 = @adaptor.create_with_payload!(__NAME362__)
          @adaptor.add_child(root_0, tree_for_NAME362)

        end
        # at line 538:25: ( LPAREN ( test_list )? RPAREN )?
        alt_116 = 2
        look_116_0 = @input.peek(1)

        if (look_116_0 == LPAREN) 
          alt_116 = 1
        end
        case alt_116
        when 1
          # at line 538:26: LPAREN ( test_list )? RPAREN
          __LPAREN363__ = match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_class_def_3164)
          if @state.backtracking == 0

            tree_for_LPAREN363 = @adaptor.create_with_payload!(__LPAREN363__)
            @adaptor.add_child(root_0, tree_for_LPAREN363)

          end
          # at line 538:33: ( test_list )?
          alt_115 = 2
          look_115_0 = @input.peek(1)

          if (look_115_0.between?(LONGINT, COMPLEX) || look_115_0 == LPAREN || look_115_0.between?(NAME, LBRACK) || look_115_0 == LCURLY || look_115_0.between?(INT, STRING) || look_115_0 == T__82 || look_115_0.between?(T__95, T__96) || look_115_0.between?(T__100, T__102)) 
            alt_115 = 1
          end
          case alt_115
          when 1
            # at line 538:33: test_list
            @state.following.push(TOKENS_FOLLOWING_test_list_IN_class_def_3166)
            test_list364 = test_list
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, test_list364.tree)
            end

          end
          __RPAREN365__ = match(RPAREN, TOKENS_FOLLOWING_RPAREN_IN_class_def_3169)
          if @state.backtracking == 0

            tree_for_RPAREN365 = @adaptor.create_with_payload!(__RPAREN365__)
            @adaptor.add_child(root_0, tree_for_RPAREN365)

          end

        end
        char_literal366 = match(T__38, TOKENS_FOLLOWING_T__38_IN_class_def_3173)
        if @state.backtracking == 0

          tree_for_char_literal366 = @adaptor.create_with_payload!(char_literal366)
          @adaptor.add_child(root_0, tree_for_char_literal366)

        end
        @state.following.push(TOKENS_FOLLOWING_suite_IN_class_def_3175)
        suite367 = suite
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, suite367.tree)
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
        # trace_out(__method__, 72)

      end
      
      return return_value
    end

    ArgListReturnValue = define_return_scope 

    # parser rule arg_list
    # 
    # (in Python.g)
    # 541:1: arg_list : ( argument ( ',' argument )* ( ',' ( '*' test ( ',' '**' test )? | '**' test )? )? | '*' test ( ',' '**' test )? | '**' test );
    def arg_list
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 73)
      return_value = ArgListReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal369 = nil
      char_literal371 = nil
      char_literal372 = nil
      char_literal374 = nil
      string_literal375 = nil
      string_literal377 = nil
      char_literal379 = nil
      char_literal381 = nil
      string_literal382 = nil
      string_literal384 = nil
      argument368 = nil
      argument370 = nil
      test373 = nil
      test376 = nil
      test378 = nil
      test380 = nil
      test383 = nil
      test385 = nil

      tree_for_char_literal369 = nil
      tree_for_char_literal371 = nil
      tree_for_char_literal372 = nil
      tree_for_char_literal374 = nil
      tree_for_string_literal375 = nil
      tree_for_string_literal377 = nil
      tree_for_char_literal379 = nil
      tree_for_char_literal381 = nil
      tree_for_string_literal382 = nil
      tree_for_string_literal384 = nil

      begin
        # at line 541:10: ( argument ( ',' argument )* ( ',' ( '*' test ( ',' '**' test )? | '**' test )? )? | '*' test ( ',' '**' test )? | '**' test )
        alt_122 = 3
        case look_122 = @input.peek(1)
        when LONGINT, COMPLEX, LPAREN, NAME, LBRACK, LCURLY, INT, FLOAT, STRING, T__82, T__95, T__96, T__100, T__101, T__102 then alt_122 = 1
        when T__40 then alt_122 = 2
        when T__41 then alt_122 = 3
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          nvae = NoViableAlternative("", 122, 0)
          raise nvae
        end
        case alt_122
        when 1
          root_0 = @adaptor.create_flat_list!


          # at line 541:12: argument ( ',' argument )* ( ',' ( '*' test ( ',' '**' test )? | '**' test )? )?
          @state.following.push(TOKENS_FOLLOWING_argument_IN_arg_list_3192)
          argument368 = argument
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, argument368.tree)
          end
          # at line 541:21: ( ',' argument )*
          loop do  #loop 117
            alt_117 = 2
            look_117_0 = @input.peek(1)

            if (look_117_0 == T__39) 
              look_117_1 = @input.peek(2)

              if (look_117_1.between?(LONGINT, COMPLEX) || look_117_1 == LPAREN || look_117_1.between?(NAME, LBRACK) || look_117_1 == LCURLY || look_117_1.between?(INT, STRING) || look_117_1 == T__82 || look_117_1.between?(T__95, T__96) || look_117_1.between?(T__100, T__102)) 
                alt_117 = 1

              end

            end
            case alt_117
            when 1
              # at line 541:22: ',' argument
              char_literal369 = match(T__39, TOKENS_FOLLOWING_T__39_IN_arg_list_3195)
              if @state.backtracking == 0

                tree_for_char_literal369 = @adaptor.create_with_payload!(char_literal369)
                @adaptor.add_child(root_0, tree_for_char_literal369)

              end
              @state.following.push(TOKENS_FOLLOWING_argument_IN_arg_list_3197)
              argument370 = argument
              @state.following.pop
              if @state.backtracking == 0
                @adaptor.add_child(root_0, argument370.tree)
              end

            else
              break #loop 117
            end
          end
          # at line 542:11: ( ',' ( '*' test ( ',' '**' test )? | '**' test )? )?
          alt_120 = 2
          look_120_0 = @input.peek(1)

          if (look_120_0 == T__39) 
            alt_120 = 1
          end
          case alt_120
          when 1
            # at line 542:13: ',' ( '*' test ( ',' '**' test )? | '**' test )?
            char_literal371 = match(T__39, TOKENS_FOLLOWING_T__39_IN_arg_list_3213)
            if @state.backtracking == 0

              tree_for_char_literal371 = @adaptor.create_with_payload!(char_literal371)
              @adaptor.add_child(root_0, tree_for_char_literal371)

            end
            # at line 543:13: ( '*' test ( ',' '**' test )? | '**' test )?
            alt_119 = 3
            look_119_0 = @input.peek(1)

            if (look_119_0 == T__40) 
              alt_119 = 1
            elsif (look_119_0 == T__41) 
              alt_119 = 2
            end
            case alt_119
            when 1
              # at line 543:15: '*' test ( ',' '**' test )?
              char_literal372 = match(T__40, TOKENS_FOLLOWING_T__40_IN_arg_list_3229)
              if @state.backtracking == 0

                tree_for_char_literal372 = @adaptor.create_with_payload!(char_literal372)
                @adaptor.add_child(root_0, tree_for_char_literal372)

              end
              @state.following.push(TOKENS_FOLLOWING_test_IN_arg_list_3231)
              test373 = test
              @state.following.pop
              if @state.backtracking == 0
                @adaptor.add_child(root_0, test373.tree)
              end
              # at line 543:24: ( ',' '**' test )?
              alt_118 = 2
              look_118_0 = @input.peek(1)

              if (look_118_0 == T__39) 
                alt_118 = 1
              end
              case alt_118
              when 1
                # at line 543:25: ',' '**' test
                char_literal374 = match(T__39, TOKENS_FOLLOWING_T__39_IN_arg_list_3234)
                if @state.backtracking == 0

                  tree_for_char_literal374 = @adaptor.create_with_payload!(char_literal374)
                  @adaptor.add_child(root_0, tree_for_char_literal374)

                end
                string_literal375 = match(T__41, TOKENS_FOLLOWING_T__41_IN_arg_list_3236)
                if @state.backtracking == 0

                  tree_for_string_literal375 = @adaptor.create_with_payload!(string_literal375)
                  @adaptor.add_child(root_0, tree_for_string_literal375)

                end
                @state.following.push(TOKENS_FOLLOWING_test_IN_arg_list_3238)
                test376 = test
                @state.following.pop
                if @state.backtracking == 0
                  @adaptor.add_child(root_0, test376.tree)
                end

              end

            when 2
              # at line 544:15: '**' test
              string_literal377 = match(T__41, TOKENS_FOLLOWING_T__41_IN_arg_list_3256)
              if @state.backtracking == 0

                tree_for_string_literal377 = @adaptor.create_with_payload!(string_literal377)
                @adaptor.add_child(root_0, tree_for_string_literal377)

              end
              @state.following.push(TOKENS_FOLLOWING_test_IN_arg_list_3258)
              test378 = test
              @state.following.pop
              if @state.backtracking == 0
                @adaptor.add_child(root_0, test378.tree)
              end

            end

          end

        when 2
          root_0 = @adaptor.create_flat_list!


          # at line 547:13: '*' test ( ',' '**' test )?
          char_literal379 = match(T__40, TOKENS_FOLLOWING_T__40_IN_arg_list_3300)
          if @state.backtracking == 0

            tree_for_char_literal379 = @adaptor.create_with_payload!(char_literal379)
            @adaptor.add_child(root_0, tree_for_char_literal379)

          end
          @state.following.push(TOKENS_FOLLOWING_test_IN_arg_list_3302)
          test380 = test
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, test380.tree)
          end
          # at line 547:22: ( ',' '**' test )?
          alt_121 = 2
          look_121_0 = @input.peek(1)

          if (look_121_0 == T__39) 
            alt_121 = 1
          end
          case alt_121
          when 1
            # at line 547:23: ',' '**' test
            char_literal381 = match(T__39, TOKENS_FOLLOWING_T__39_IN_arg_list_3305)
            if @state.backtracking == 0

              tree_for_char_literal381 = @adaptor.create_with_payload!(char_literal381)
              @adaptor.add_child(root_0, tree_for_char_literal381)

            end
            string_literal382 = match(T__41, TOKENS_FOLLOWING_T__41_IN_arg_list_3307)
            if @state.backtracking == 0

              tree_for_string_literal382 = @adaptor.create_with_payload!(string_literal382)
              @adaptor.add_child(root_0, tree_for_string_literal382)

            end
            @state.following.push(TOKENS_FOLLOWING_test_IN_arg_list_3309)
            test383 = test
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, test383.tree)
            end

          end

        when 3
          root_0 = @adaptor.create_flat_list!


          # at line 548:13: '**' test
          string_literal384 = match(T__41, TOKENS_FOLLOWING_T__41_IN_arg_list_3325)
          if @state.backtracking == 0

            tree_for_string_literal384 = @adaptor.create_with_payload!(string_literal384)
            @adaptor.add_child(root_0, tree_for_string_literal384)

          end
          @state.following.push(TOKENS_FOLLOWING_test_IN_arg_list_3327)
          test385 = test
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, test385.tree)
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
        # trace_out(__method__, 73)

      end
      
      return return_value
    end

    ArgumentReturnValue = define_return_scope 

    # parser rule argument
    # 
    # (in Python.g)
    # 551:1: argument : test ( '=' test | gen_for )? ;
    def argument
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 74)
      return_value = ArgumentReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal387 = nil
      test386 = nil
      test388 = nil
      gen_for389 = nil

      tree_for_char_literal387 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 551:12: test ( '=' test | gen_for )?
        @state.following.push(TOKENS_FOLLOWING_test_IN_argument_3344)
        test386 = test
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, test386.tree)
        end
        # at line 551:17: ( '=' test | gen_for )?
        alt_123 = 3
        look_123_0 = @input.peek(1)

        if (look_123_0 == T__42) 
          alt_123 = 1
        elsif (look_123_0 == T__75) 
          alt_123 = 2
        end
        case alt_123
        when 1
          # at line 551:19: '=' test
          char_literal387 = match(T__42, TOKENS_FOLLOWING_T__42_IN_argument_3348)
          if @state.backtracking == 0

            tree_for_char_literal387 = @adaptor.create_with_payload!(char_literal387)
            @adaptor.add_child(root_0, tree_for_char_literal387)

          end
          @state.following.push(TOKENS_FOLLOWING_test_IN_argument_3350)
          test388 = test
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, test388.tree)
          end

        when 2
          # at line 551:30: gen_for
          @state.following.push(TOKENS_FOLLOWING_gen_for_IN_argument_3354)
          gen_for389 = gen_for
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, gen_for389.tree)
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

    ListIterReturnValue = define_return_scope 

    # parser rule list_iter
    # 
    # (in Python.g)
    # 554:1: list_iter : ( list_for | list_if );
    def list_iter
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 75)
      return_value = ListIterReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      list_for390 = nil
      list_if391 = nil


      begin
        # at line 554:11: ( list_for | list_if )
        alt_124 = 2
        look_124_0 = @input.peek(1)

        if (look_124_0 == T__75) 
          alt_124 = 1
        elsif (look_124_0 == T__71) 
          alt_124 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 124, 0)
          raise nvae
        end
        case alt_124
        when 1
          root_0 = @adaptor.create_flat_list!


          # at line 554:13: list_for
          @state.following.push(TOKENS_FOLLOWING_list_for_IN_list_iter_3375)
          list_for390 = list_for
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, list_for390.tree)
          end

        when 2
          root_0 = @adaptor.create_flat_list!


          # at line 555:13: list_if
          @state.following.push(TOKENS_FOLLOWING_list_if_IN_list_iter_3389)
          list_if391 = list_if
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, list_if391.tree)
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
        # trace_out(__method__, 75)

      end
      
      return return_value
    end

    ListForReturnValue = define_return_scope 

    # parser rule list_for
    # 
    # (in Python.g)
    # 558:1: list_for : 'for' exprlist 'in' test_list ( list_iter )? ;
    def list_for
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 76)
      return_value = ListForReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal392 = nil
      string_literal394 = nil
      exprlist393 = nil
      test_list395 = nil
      list_iter396 = nil

      tree_for_string_literal392 = nil
      tree_for_string_literal394 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 558:12: 'for' exprlist 'in' test_list ( list_iter )?
        string_literal392 = match(T__75, TOKENS_FOLLOWING_T__75_IN_list_for_3408)
        if @state.backtracking == 0

          tree_for_string_literal392 = @adaptor.create_with_payload!(string_literal392)
          @adaptor.add_child(root_0, tree_for_string_literal392)

        end
        @state.following.push(TOKENS_FOLLOWING_exprlist_IN_list_for_3410)
        exprlist393 = exprlist
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, exprlist393.tree)
        end
        string_literal394 = match(T__69, TOKENS_FOLLOWING_T__69_IN_list_for_3412)
        if @state.backtracking == 0

          tree_for_string_literal394 = @adaptor.create_with_payload!(string_literal394)
          @adaptor.add_child(root_0, tree_for_string_literal394)

        end
        @state.following.push(TOKENS_FOLLOWING_test_list_IN_list_for_3414)
        test_list395 = test_list
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, test_list395.tree)
        end
        # at line 558:42: ( list_iter )?
        alt_125 = 2
        look_125_0 = @input.peek(1)

        if (look_125_0 == T__71 || look_125_0 == T__75) 
          alt_125 = 1
        end
        case alt_125
        when 1
          # at line 558:42: list_iter
          @state.following.push(TOKENS_FOLLOWING_list_iter_IN_list_for_3416)
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
        # trace_out(__method__, 76)

      end
      
      return return_value
    end

    ListIfReturnValue = define_return_scope 

    # parser rule list_if
    # 
    # (in Python.g)
    # 561:1: list_if : 'if' test ( list_iter )? ;
    def list_if
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 77)
      return_value = ListIfReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal397 = nil
      test398 = nil
      list_iter399 = nil

      tree_for_string_literal397 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 561:11: 'if' test ( list_iter )?
        string_literal397 = match(T__71, TOKENS_FOLLOWING_T__71_IN_list_if_3435)
        if @state.backtracking == 0

          tree_for_string_literal397 = @adaptor.create_with_payload!(string_literal397)
          @adaptor.add_child(root_0, tree_for_string_literal397)

        end
        @state.following.push(TOKENS_FOLLOWING_test_IN_list_if_3437)
        test398 = test
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, test398.tree)
        end
        # at line 561:21: ( list_iter )?
        alt_126 = 2
        look_126_0 = @input.peek(1)

        if (look_126_0 == T__71 || look_126_0 == T__75) 
          alt_126 = 1
        end
        case alt_126
        when 1
          # at line 561:21: list_iter
          @state.following.push(TOKENS_FOLLOWING_list_iter_IN_list_if_3439)
          list_iter399 = list_iter
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, list_iter399.tree)
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
        # trace_out(__method__, 77)

      end
      
      return return_value
    end

    GenIterReturnValue = define_return_scope 

    # parser rule gen_iter
    # 
    # (in Python.g)
    # 564:1: gen_iter : ( gen_for | gen_if );
    def gen_iter
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 78)
      return_value = GenIterReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      gen_for400 = nil
      gen_if401 = nil


      begin
        # at line 564:9: ( gen_for | gen_if )
        alt_127 = 2
        look_127_0 = @input.peek(1)

        if (look_127_0 == T__75) 
          alt_127 = 1
        elsif (look_127_0 == T__71) 
          alt_127 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 127, 0)
          raise nvae
        end
        case alt_127
        when 1
          root_0 = @adaptor.create_flat_list!


          # at line 564:11: gen_for
          @state.following.push(TOKENS_FOLLOWING_gen_for_IN_gen_iter_3456)
          gen_for400 = gen_for
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, gen_for400.tree)
          end

        when 2
          root_0 = @adaptor.create_flat_list!


          # at line 565:11: gen_if
          @state.following.push(TOKENS_FOLLOWING_gen_if_IN_gen_iter_3468)
          gen_if401 = gen_if
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, gen_if401.tree)
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

    GenForReturnValue = define_return_scope 

    # parser rule gen_for
    # 
    # (in Python.g)
    # 568:1: gen_for : 'for' exprlist 'in' or_test ( gen_iter )? ;
    def gen_for
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 79)
      return_value = GenForReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal402 = nil
      string_literal404 = nil
      exprlist403 = nil
      or_test405 = nil
      gen_iter406 = nil

      tree_for_string_literal402 = nil
      tree_for_string_literal404 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 568:10: 'for' exprlist 'in' or_test ( gen_iter )?
        string_literal402 = match(T__75, TOKENS_FOLLOWING_T__75_IN_gen_for_3484)
        if @state.backtracking == 0

          tree_for_string_literal402 = @adaptor.create_with_payload!(string_literal402)
          @adaptor.add_child(root_0, tree_for_string_literal402)

        end
        @state.following.push(TOKENS_FOLLOWING_exprlist_IN_gen_for_3486)
        exprlist403 = exprlist
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, exprlist403.tree)
        end
        string_literal404 = match(T__69, TOKENS_FOLLOWING_T__69_IN_gen_for_3488)
        if @state.backtracking == 0

          tree_for_string_literal404 = @adaptor.create_with_payload!(string_literal404)
          @adaptor.add_child(root_0, tree_for_string_literal404)

        end
        @state.following.push(TOKENS_FOLLOWING_or_test_IN_gen_for_3490)
        or_test405 = or_test
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, or_test405.tree)
        end
        # at line 568:38: ( gen_iter )?
        alt_128 = 2
        look_128_0 = @input.peek(1)

        if (look_128_0 == T__71 || look_128_0 == T__75) 
          alt_128 = 1
        end
        case alt_128
        when 1
          # at line 568:38: gen_iter
          @state.following.push(TOKENS_FOLLOWING_gen_iter_IN_gen_for_3492)
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
        # trace_out(__method__, 79)

      end
      
      return return_value
    end

    GenIfReturnValue = define_return_scope 

    # parser rule gen_if
    # 
    # (in Python.g)
    # 571:1: gen_if : 'if' test ( gen_iter )? ;
    def gen_if
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 80)
      return_value = GenIfReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal407 = nil
      test408 = nil
      gen_iter409 = nil

      tree_for_string_literal407 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 571:9: 'if' test ( gen_iter )?
        string_literal407 = match(T__71, TOKENS_FOLLOWING_T__71_IN_gen_if_3508)
        if @state.backtracking == 0

          tree_for_string_literal407 = @adaptor.create_with_payload!(string_literal407)
          @adaptor.add_child(root_0, tree_for_string_literal407)

        end
        @state.following.push(TOKENS_FOLLOWING_test_IN_gen_if_3510)
        test408 = test
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, test408.tree)
        end
        # at line 571:19: ( gen_iter )?
        alt_129 = 2
        look_129_0 = @input.peek(1)

        if (look_129_0 == T__71 || look_129_0 == T__75) 
          alt_129 = 1
        end
        case alt_129
        when 1
          # at line 571:19: gen_iter
          @state.following.push(TOKENS_FOLLOWING_gen_iter_IN_gen_if_3512)
          gen_iter409 = gen_iter
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, gen_iter409.tree)
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
        # trace_out(__method__, 80)

      end
      
      return return_value
    end

    YieldExprReturnValue = define_return_scope 

    # parser rule yield_expr
    # 
    # (in Python.g)
    # 574:1: yield_expr : 'yield' ( test_list )? -> ^( 'yield' ( test_list )? ) ;
    def yield_expr
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 81)
      return_value = YieldExprReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal410 = nil
      test_list411 = nil

      tree_for_string_literal410 = nil
      stream_T__104 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__104")
      stream_test_list = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule test_list")
      begin
        # at line 574:14: 'yield' ( test_list )?
        string_literal410 = match(T__104, TOKENS_FOLLOWING_T__104_IN_yield_expr_3528) 
        if @state.backtracking == 0
          stream_T__104.add(string_literal410)
        end
        # at line 574:22: ( test_list )?
        alt_130 = 2
        look_130_0 = @input.peek(1)

        if (look_130_0.between?(LONGINT, COMPLEX) || look_130_0 == LPAREN || look_130_0.between?(NAME, LBRACK) || look_130_0 == LCURLY || look_130_0.between?(INT, STRING) || look_130_0 == T__82 || look_130_0.between?(T__95, T__96) || look_130_0.between?(T__100, T__102)) 
          alt_130 = 1
        end
        case alt_130
        when 1
          # at line 574:22: test_list
          @state.following.push(TOKENS_FOLLOWING_test_list_IN_yield_expr_3530)
          test_list411 = test_list
          @state.following.pop
          if @state.backtracking == 0
            stream_test_list.add(test_list411.tree)
          end

        end
        # AST Rewrite
        # elements: test_list, T__104
        # token labels: 
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 
        if @state.backtracking == 0

          return_value.tree = root_0
          stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

          root_0 = @adaptor.create_flat_list!
          # 574:33: -> ^( 'yield' ( test_list )? )
          # at line 574:36: ^( 'yield' ( test_list )? )
          root_1 = @adaptor.create_flat_list!
          root_1 = @adaptor.become_root(stream_T__104.next_node, root_1)

          # at line 574:46: ( test_list )?
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
        # trace_out(__method__, 81)

      end
      
      return return_value
    end

    # parser rule synpred_1_python! (synpred1_Python)
    # 
    # (in Python.g)
    # 405:7: synpred1_Python : 'if' or_test 'else' ;
    def synpred_1_python!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 82)

      # at line 405:8: 'if' or_test 'else'
      match(T__71, TOKENS_FOLLOWING_T__71_IN_synpred1_Python_2119)
      @state.following.push(TOKENS_FOLLOWING_or_test_IN_synpred1_Python_2121)
      or_test
      @state.following.pop
      match(T__72, TOKENS_FOLLOWING_T__72_IN_synpred1_Python_2123)

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 82)

    end


    # - - - - - - - - - - DFA definitions - - - - - - - - - - -
    class DFA31 < ANTLR3::DFA
      EOT = unpack(21, -1)
      EOF = unpack(21, -1)
      MIN = unpack(1, 16, 1, 9, 19, -1)
      MAX = unpack(1, 43, 1, 102, 19, -1)
      ACCEPT = unpack(2, -1, 1, 2, 1, -1, 1, 1, 16, -1)
      SPECIAL = unpack(21, -1)
      TRANSITION = [
        unpack(1, 2, 22, -1, 1, 1, 3, -1, 1, 2),
        unpack(2, 4, 5, -1, 1, 2, 1, 4, 1, -1, 2, 4, 1, -1, 1, 4, 1, -1, 
                3, 4, 16, -1, 1, 2, 38, -1, 1, 4, 12, -1, 2, 4, 3, -1, 3, 
                4),
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
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 31
      

      def description
        <<-'__dfa_description__'.strip!
          ()* loopback of 261:10: ( options {k=2; } : ',' test )*
        __dfa_description__
      end
    end
    class DFA41 < ANTLR3::DFA
      EOT = unpack(4, -1)
      EOF = unpack(4, -1)
      MIN = unpack(2, 19, 2, -1)
      MAX = unpack(1, 36, 1, 64, 2, -1)
      ACCEPT = unpack(2, -1, 1, 1, 1, 2)
      SPECIAL = unpack(4, -1)
      TRANSITION = [
        unpack(1, 2, 16, -1, 1, 1),
        unpack(1, 2, 16, -1, 1, 1, 27, -1, 1, 3),
        unpack(),
        unpack()
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 41
      

      def description
        <<-'__dfa_description__'.strip!
          311:12: ( ( '.' )* dotted_name | ( '.' )+ )
        __dfa_description__
      end
    end
    class DFA67 < ANTLR3::DFA
      EOT = unpack(27, -1)
      EOF = unpack(1, 2, 26, -1)
      MIN = unpack(1, 16, 1, 0, 25, -1)
      MAX = unpack(1, 101, 1, 0, 25, -1)
      ACCEPT = unpack(2, -1, 1, 2, 23, -1, 1, 1)
      SPECIAL = unpack(1, -1, 1, 0, 25, -1)
      TRANSITION = [
        unpack(1, 2, 1, -1, 2, 2, 1, -1, 1, 2, 1, -1, 1, 2, 14, -1, 2, 2, 
               2, -1, 14, 2, 10, -1, 1, 2, 4, -1, 1, 1, 3, -1, 1, 2, 25, 
               -1, 1, 2),
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
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 67
      

      def description
        <<-'__dfa_description__'.strip!
          405:5: ( ( 'if' or_test 'else' )=> 'if' or_test 'else' test )?
        __dfa_description__
      end
    end
    class DFA72 < ANTLR3::DFA
      EOT = unpack(13, -1)
      EOF = unpack(13, -1)
      MIN = unpack(1, 69, 9, -1, 1, 9, 2, -1)
      MAX = unpack(1, 90, 9, -1, 1, 101, 2, -1)
      ACCEPT = unpack(1, -1, 1, 1, 1, 2, 1, 3, 1, 4, 1, 5, 1, 6, 1, 7, 1, 
                      8, 1, 9, 1, -1, 1, 11, 1, 10)
      SPECIAL = unpack(13, -1)
      TRANSITION = [
        unpack(1, 8, 12, -1, 1, 9, 1, 1, 1, 2, 1, 3, 1, 4, 1, 5, 1, 6, 1, 
               7, 1, 10),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(2, 12, 6, -1, 1, 12, 1, -1, 2, 12, 1, -1, 1, 12, 1, -1, 
                3, 12, 55, -1, 1, 11, 12, -1, 2, 12, 3, -1, 2, 12),
        unpack(),
        unpack()
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 72
      

      def description
        <<-'__dfa_description__'.strip!
          425:7: ( '<' | '>' | '==' | '>=' | '<=' | '<>' | '!=' | 'in' | 'not' 'in' | 'is' | 'is' 'not' )
        __dfa_description__
      end
    end
    class DFA94 < ANTLR3::DFA
      EOT = unpack(19, -1)
      EOF = unpack(19, -1)
      MIN = unpack(1, 18, 1, 9, 17, -1)
      MAX = unpack(1, 39, 1, 102, 17, -1)
      ACCEPT = unpack(2, -1, 1, 2, 1, 1, 15, -1)
      SPECIAL = unpack(19, -1)
      TRANSITION = [
        unpack(1, 2, 20, -1, 1, 1),
        unpack(2, 3, 6, -1, 1, 3, 1, 2, 2, 3, 1, -1, 1, 3, 1, -1, 3, 3, 
                55, -1, 1, 3, 12, -1, 2, 3, 3, -1, 3, 3),
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
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 94
      

      def description
        <<-'__dfa_description__'.strip!
          ()* loopback of 502:7: ( options {k=2; } : ',' test )*
        __dfa_description__
      end
    end
    class DFA109 < ANTLR3::DFA
      EOT = unpack(21, -1)
      EOF = unpack(21, -1)
      MIN = unpack(1, 16, 1, 9, 19, -1)
      MAX = unpack(1, 69, 1, 101, 19, -1)
      ACCEPT = unpack(2, -1, 1, 2, 5, -1, 1, 1, 12, -1)
      SPECIAL = unpack(21, -1)
      TRANSITION = [
        unpack(1, 2, 22, -1, 1, 1, 3, -1, 1, 2, 25, -1, 1, 2),
        unpack(2, 8, 5, -1, 1, 2, 1, 8, 1, -1, 2, 8, 1, -1, 1, 8, 1, -1, 
                3, 8, 16, -1, 1, 2, 25, -1, 1, 2, 25, -1, 2, 8, 3, -1, 2, 
                8),
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
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 109
      

      def description
        <<-'__dfa_description__'.strip!
          ()* loopback of 528:17: ( options {k=2; } : ',' expr )*
        __dfa_description__
      end
    end
    class DFA111 < ANTLR3::DFA
      EOT = unpack(61, -1)
      EOF = unpack(2, 2, 59, -1)
      MIN = unpack(1, 16, 1, 9, 59, -1)
      MAX = unpack(1, 101, 1, 102, 59, -1)
      ACCEPT = unpack(2, -1, 1, 2, 21, -1, 1, 1, 6, -1, 1, 1, 29, -1)
      SPECIAL = unpack(61, -1)
      TRANSITION = [
        unpack(1, 2, 1, -1, 1, 2, 2, -1, 1, 2, 16, -1, 1, 2, 1, 1, 2, -1, 
               14, 2, 15, -1, 1, 2, 3, -1, 1, 2, 25, -1, 1, 2),
        unpack(2, 24, 5, -1, 1, 2, 1, 24, 1, 2, 2, 24, 1, 2, 1, 24, 1, 
                -1, 3, 24, 11, -1, 2, 2, 2, -1, 14, 2, 15, -1, 1, 2, 3, 
                -1, 1, 2, 6, -1, 1, 24, 12, -1, 2, 24, 3, -1, 1, 24, 1, 
                31, 1, 24),
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
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 111
      

      def description
        <<-'__dfa_description__'.strip!
          ()* loopback of 532:12: ( options {k=2; } : ',' test )*
        __dfa_description__
      end
    end
    class DFA113 < ANTLR3::DFA
      EOT = unpack(19, -1)
      EOF = unpack(19, -1)
      MIN = unpack(1, 23, 1, 9, 17, -1)
      MAX = unpack(1, 39, 1, 102, 17, -1)
      ACCEPT = unpack(2, -1, 1, 2, 1, -1, 1, 1, 14, -1)
      SPECIAL = unpack(19, -1)
      TRANSITION = [
        unpack(1, 2, 15, -1, 1, 1),
        unpack(2, 4, 6, -1, 1, 4, 1, -1, 2, 4, 1, -1, 1, 4, 1, 2, 3, 4, 
                55, -1, 1, 4, 12, -1, 2, 4, 3, -1, 3, 4),
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
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 113
      

      def description
        <<-'__dfa_description__'.strip!
          ()* loopback of 535:28: ( options {k=2; } : ',' test ':' test )*
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
          look_67_1 = @input.peek
          index_67_1 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_1_python!))
            s = 26
          elsif (true)
            s = 2
          end
           
          @input.seek(index_67_1)

        end
        
        if s < 0
          @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
          nva = ANTLR3::Error::NoViableAlternative.new(@dfa67.description, 67, s, input)
          @dfa67.error(nva)
          raise nva
        end
        
        s
      end
      @dfa72 = DFA72.new(self, 72)
      @dfa94 = DFA94.new(self, 94)
      @dfa109 = DFA109.new(self, 109)
      @dfa111 = DFA111.new(self, 111)
      @dfa113 = DFA113.new(self, 113)

    end
    TOKENS_FOLLOWING_NEWLINE_IN_file_input_144 = Set[1, 9, 10, 16, 17, 19, 20, 22, 24, 25, 26, 35, 37, 56, 58, 59, 60, 61, 62, 63, 64, 65, 67, 68, 70, 71, 74, 75, 76, 78, 82, 95, 96, 100, 101, 102, 103, 104]
    TOKENS_FOLLOWING_statement_IN_file_input_148 = Set[1, 9, 10, 16, 17, 19, 20, 22, 24, 25, 26, 35, 37, 56, 58, 59, 60, 61, 62, 63, 64, 65, 67, 68, 70, 71, 74, 75, 76, 78, 82, 95, 96, 100, 101, 102, 103, 104]
    TOKENS_FOLLOWING_NEWLINE_IN_single_input_173 = Set[1]
    TOKENS_FOLLOWING_simple_statement_IN_single_input_180 = Set[1]
    TOKENS_FOLLOWING_compound_statement_IN_single_input_186 = Set[16]
    TOKENS_FOLLOWING_NEWLINE_IN_single_input_188 = Set[1]
    TOKENS_FOLLOWING_NEWLINE_IN_eval_input_202 = Set[9, 10, 16, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101, 102]
    TOKENS_FOLLOWING_test_list_IN_eval_input_206 = Set[1, 16]
    TOKENS_FOLLOWING_NEWLINE_IN_eval_input_208 = Set[1, 16]
    TOKENS_FOLLOWING_T__35_IN_decorator_223 = Set[19]
    TOKENS_FOLLOWING_dotted_attr_IN_decorator_225 = Set[16, 17]
    TOKENS_FOLLOWING_LPAREN_IN_decorator_229 = Set[9, 10, 17, 18, 19, 20, 22, 24, 25, 26, 40, 41, 82, 95, 96, 100, 101, 102]
    TOKENS_FOLLOWING_arg_list_IN_decorator_231 = Set[18]
    TOKENS_FOLLOWING_RPAREN_IN_decorator_234 = Set[16]
    TOKENS_FOLLOWING_NEWLINE_IN_decorator_239 = Set[1]
    TOKENS_FOLLOWING_NAME_IN_dotted_attr_267 = Set[1, 36]
    TOKENS_FOLLOWING_T__36_IN_dotted_attr_271 = Set[19]
    TOKENS_FOLLOWING_NAME_IN_dotted_attr_274 = Set[1, 36]
    TOKENS_FOLLOWING_decorator_IN_func_def_290 = Set[35, 37]
    TOKENS_FOLLOWING_T__37_IN_func_def_293 = Set[19]
    TOKENS_FOLLOWING_NAME_IN_func_def_295 = Set[17]
    TOKENS_FOLLOWING_LPAREN_IN_func_def_297 = Set[17, 18, 19, 40, 41]
    TOKENS_FOLLOWING_var_args_list_IN_func_def_299 = Set[18]
    TOKENS_FOLLOWING_RPAREN_IN_func_def_302 = Set[38]
    TOKENS_FOLLOWING_T__38_IN_func_def_304 = Set[9, 10, 16, 17, 19, 20, 22, 24, 25, 26, 56, 58, 59, 60, 61, 62, 63, 64, 65, 67, 68, 70, 82, 95, 96, 100, 101, 102, 104]
    TOKENS_FOLLOWING_suite_IN_func_def_306 = Set[1]
    TOKENS_FOLLOWING_LPAREN_IN_parameters_343 = Set[17, 18, 19, 40, 41]
    TOKENS_FOLLOWING_var_args_list_IN_parameters_345 = Set[18]
    TOKENS_FOLLOWING_RPAREN_IN_parameters_348 = Set[1]
    TOKENS_FOLLOWING_def_parameter_IN_var_args_list_363 = Set[1, 39]
    TOKENS_FOLLOWING_T__39_IN_var_args_list_367 = Set[17, 19]
    TOKENS_FOLLOWING_def_parameter_IN_var_args_list_369 = Set[1, 39]
    TOKENS_FOLLOWING_T__39_IN_var_args_list_391 = Set[1, 40, 41]
    TOKENS_FOLLOWING_T__40_IN_var_args_list_401 = Set[19]
    TOKENS_FOLLOWING_NAME_IN_var_args_list_405 = Set[1, 39]
    TOKENS_FOLLOWING_T__39_IN_var_args_list_417 = Set[41]
    TOKENS_FOLLOWING_T__41_IN_var_args_list_419 = Set[19]
    TOKENS_FOLLOWING_NAME_IN_var_args_list_423 = Set[1]
    TOKENS_FOLLOWING_T__41_IN_var_args_list_511 = Set[19]
    TOKENS_FOLLOWING_NAME_IN_var_args_list_515 = Set[1]
    TOKENS_FOLLOWING_T__40_IN_var_args_list_568 = Set[19]
    TOKENS_FOLLOWING_NAME_IN_var_args_list_572 = Set[1, 39]
    TOKENS_FOLLOWING_T__39_IN_var_args_list_581 = Set[41]
    TOKENS_FOLLOWING_T__41_IN_var_args_list_583 = Set[19]
    TOKENS_FOLLOWING_NAME_IN_var_args_list_587 = Set[1]
    TOKENS_FOLLOWING_T__41_IN_var_args_list_669 = Set[19]
    TOKENS_FOLLOWING_NAME_IN_var_args_list_671 = Set[1]
    TOKENS_FOLLOWING_fp_def_IN_def_parameter_700 = Set[1, 42]
    TOKENS_FOLLOWING_T__42_IN_def_parameter_704 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101, 102]
    TOKENS_FOLLOWING_test_IN_def_parameter_707 = Set[1]
    TOKENS_FOLLOWING_NAME_IN_fp_def_723 = Set[1]
    TOKENS_FOLLOWING_LPAREN_IN_fp_def_729 = Set[17, 19]
    TOKENS_FOLLOWING_fp_list_IN_fp_def_732 = Set[18]
    TOKENS_FOLLOWING_RPAREN_IN_fp_def_734 = Set[1]
    TOKENS_FOLLOWING_fp_def_IN_fp_list_748 = Set[1, 39]
    TOKENS_FOLLOWING_T__39_IN_fp_list_752 = Set[17, 19]
    TOKENS_FOLLOWING_fp_def_IN_fp_list_754 = Set[1, 39]
    TOKENS_FOLLOWING_T__39_IN_fp_list_759 = Set[1]
    TOKENS_FOLLOWING_simple_statement_IN_statement_784 = Set[1]
    TOKENS_FOLLOWING_compound_statement_IN_statement_790 = Set[1]
    TOKENS_FOLLOWING_small_statement_IN_simple_statement_803 = Set[16, 43]
    TOKENS_FOLLOWING_T__43_IN_simple_statement_812 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 56, 58, 59, 60, 61, 62, 63, 64, 65, 67, 68, 70, 82, 95, 96, 100, 101, 102, 104]
    TOKENS_FOLLOWING_small_statement_IN_simple_statement_814 = Set[16, 43]
    TOKENS_FOLLOWING_T__43_IN_simple_statement_824 = Set[16]
    TOKENS_FOLLOWING_NEWLINE_IN_simple_statement_827 = Set[1]
    TOKENS_FOLLOWING_expr_statement_IN_small_statement_849 = Set[1]
    TOKENS_FOLLOWING_print_statement_IN_small_statement_855 = Set[1]
    TOKENS_FOLLOWING_del_statement_IN_small_statement_861 = Set[1]
    TOKENS_FOLLOWING_pass_statement_IN_small_statement_867 = Set[1]
    TOKENS_FOLLOWING_flow_statement_IN_small_statement_873 = Set[1]
    TOKENS_FOLLOWING_import_statement_IN_small_statement_879 = Set[1]
    TOKENS_FOLLOWING_global_statement_IN_small_statement_885 = Set[1]
    TOKENS_FOLLOWING_exec_statement_IN_small_statement_891 = Set[1]
    TOKENS_FOLLOWING_assert_statement_IN_small_statement_897 = Set[1]
    TOKENS_FOLLOWING_test_list_IN_expr_statement_910 = Set[1, 42, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55]
    TOKENS_FOLLOWING_T__44_IN_expr_statement_920 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 60, 61, 62, 63, 82, 95, 96, 100, 101, 102, 104]
    TOKENS_FOLLOWING_T__45_IN_expr_statement_931 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 60, 61, 62, 63, 82, 95, 96, 100, 101, 102, 104]
    TOKENS_FOLLOWING_T__46_IN_expr_statement_942 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 60, 61, 62, 63, 82, 95, 96, 100, 101, 102, 104]
    TOKENS_FOLLOWING_T__47_IN_expr_statement_953 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 60, 61, 62, 63, 82, 95, 96, 100, 101, 102, 104]
    TOKENS_FOLLOWING_T__48_IN_expr_statement_964 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 60, 61, 62, 63, 82, 95, 96, 100, 101, 102, 104]
    TOKENS_FOLLOWING_T__49_IN_expr_statement_975 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 60, 61, 62, 63, 82, 95, 96, 100, 101, 102, 104]
    TOKENS_FOLLOWING_T__50_IN_expr_statement_986 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 60, 61, 62, 63, 82, 95, 96, 100, 101, 102, 104]
    TOKENS_FOLLOWING_T__51_IN_expr_statement_997 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 60, 61, 62, 63, 82, 95, 96, 100, 101, 102, 104]
    TOKENS_FOLLOWING_T__52_IN_expr_statement_1008 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 60, 61, 62, 63, 82, 95, 96, 100, 101, 102, 104]
    TOKENS_FOLLOWING_T__53_IN_expr_statement_1019 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 60, 61, 62, 63, 82, 95, 96, 100, 101, 102, 104]
    TOKENS_FOLLOWING_T__54_IN_expr_statement_1030 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 60, 61, 62, 63, 82, 95, 96, 100, 101, 102, 104]
    TOKENS_FOLLOWING_T__55_IN_expr_statement_1041 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 60, 61, 62, 63, 82, 95, 96, 100, 101, 102, 104]
    TOKENS_FOLLOWING_yield_expr_IN_expr_statement_1060 = Set[1]
    TOKENS_FOLLOWING_test_list_IN_expr_statement_1070 = Set[1]
    TOKENS_FOLLOWING_T__42_IN_expr_statement_1088 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 60, 61, 62, 63, 82, 95, 96, 100, 101, 102, 104]
    TOKENS_FOLLOWING_test_list_IN_expr_statement_1093 = Set[1, 42]
    TOKENS_FOLLOWING_yield_expr_IN_expr_statement_1097 = Set[1, 42]
    TOKENS_FOLLOWING_set_IN_augmented_assign_0 = Set[1]
    TOKENS_FOLLOWING_T__56_IN_print_statement_1205 = Set[1, 9, 10, 17, 19, 20, 22, 24, 25, 26, 57, 82, 95, 96, 100, 101, 102]
    TOKENS_FOLLOWING_print_list_IN_print_statement_1209 = Set[1]
    TOKENS_FOLLOWING_T__57_IN_print_statement_1213 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101, 102]
    TOKENS_FOLLOWING_print_list_IN_print_statement_1215 = Set[1]
    TOKENS_FOLLOWING_test_IN_print_list_1235 = Set[1, 39]
    TOKENS_FOLLOWING_T__39_IN_print_list_1246 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101, 102]
    TOKENS_FOLLOWING_test_IN_print_list_1248 = Set[1, 39]
    TOKENS_FOLLOWING_T__39_IN_print_list_1253 = Set[1]
    TOKENS_FOLLOWING_T__58_IN_del_statement_1268 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101]
    TOKENS_FOLLOWING_exprlist_IN_del_statement_1270 = Set[1]
    TOKENS_FOLLOWING_T__59_IN_pass_statement_1283 = Set[1]
    TOKENS_FOLLOWING_break_statement_IN_flow_statement_1296 = Set[1]
    TOKENS_FOLLOWING_continue_statement_IN_flow_statement_1302 = Set[1]
    TOKENS_FOLLOWING_return_statement_IN_flow_statement_1308 = Set[1]
    TOKENS_FOLLOWING_raise_statement_IN_flow_statement_1314 = Set[1]
    TOKENS_FOLLOWING_yield_statement_IN_flow_statement_1320 = Set[1]
    TOKENS_FOLLOWING_T__60_IN_break_statement_1333 = Set[1]
    TOKENS_FOLLOWING_T__61_IN_continue_statement_1347 = Set[1]
    TOKENS_FOLLOWING_T__62_IN_return_statement_1361 = Set[1, 9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101, 102]
    TOKENS_FOLLOWING_test_list_IN_return_statement_1364 = Set[1]
    TOKENS_FOLLOWING_yield_expr_IN_yield_statement_1378 = Set[1]
    TOKENS_FOLLOWING_T__63_IN_raise_statement_1391 = Set[1, 9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101, 102]
    TOKENS_FOLLOWING_test_IN_raise_statement_1395 = Set[1, 39]
    TOKENS_FOLLOWING_T__39_IN_raise_statement_1399 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101, 102]
    TOKENS_FOLLOWING_test_IN_raise_statement_1401 = Set[1, 39]
    TOKENS_FOLLOWING_T__39_IN_raise_statement_1405 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101, 102]
    TOKENS_FOLLOWING_test_IN_raise_statement_1407 = Set[1]
    TOKENS_FOLLOWING_import_name_IN_import_statement_1429 = Set[1]
    TOKENS_FOLLOWING_import_from_IN_import_statement_1435 = Set[1]
    TOKENS_FOLLOWING_T__64_IN_import_name_1448 = Set[19]
    TOKENS_FOLLOWING_dotted_as_names_IN_import_name_1451 = Set[1]
    TOKENS_FOLLOWING_T__65_IN_import_from_1464 = Set[19, 36]
    TOKENS_FOLLOWING_T__36_IN_import_from_1468 = Set[19, 36]
    TOKENS_FOLLOWING_dotted_name_IN_import_from_1471 = Set[64]
    TOKENS_FOLLOWING_T__36_IN_import_from_1475 = Set[36, 64]
    TOKENS_FOLLOWING_T__64_IN_import_from_1480 = Set[17, 19, 40]
    TOKENS_FOLLOWING_T__40_IN_import_from_1488 = Set[1]
    TOKENS_FOLLOWING_import_as_names_IN_import_from_1496 = Set[1]
    TOKENS_FOLLOWING_LPAREN_IN_import_from_1504 = Set[19]
    TOKENS_FOLLOWING_import_as_names_IN_import_from_1507 = Set[18]
    TOKENS_FOLLOWING_RPAREN_IN_import_from_1509 = Set[1]
    TOKENS_FOLLOWING_import_as_name_IN_import_as_names_1529 = Set[1, 39]
    TOKENS_FOLLOWING_T__39_IN_import_as_names_1533 = Set[19]
    TOKENS_FOLLOWING_import_as_name_IN_import_as_names_1535 = Set[1, 39]
    TOKENS_FOLLOWING_T__39_IN_import_as_names_1540 = Set[1]
    TOKENS_FOLLOWING_NAME_IN_import_as_name_1554 = Set[1, 66]
    TOKENS_FOLLOWING_T__66_IN_import_as_name_1558 = Set[19]
    TOKENS_FOLLOWING_NAME_IN_import_as_name_1561 = Set[1]
    TOKENS_FOLLOWING_dotted_name_IN_dotted_as_name_1577 = Set[1, 66]
    TOKENS_FOLLOWING_T__66_IN_dotted_as_name_1581 = Set[19]
    TOKENS_FOLLOWING_NAME_IN_dotted_as_name_1584 = Set[1]
    TOKENS_FOLLOWING_dotted_as_name_IN_dotted_as_names_1600 = Set[1, 39]
    TOKENS_FOLLOWING_T__39_IN_dotted_as_names_1604 = Set[19]
    TOKENS_FOLLOWING_dotted_as_name_IN_dotted_as_names_1607 = Set[1, 39]
    TOKENS_FOLLOWING_NAME_IN_dotted_name_1625 = Set[1, 36]
    TOKENS_FOLLOWING_T__36_IN_dotted_name_1629 = Set[19]
    TOKENS_FOLLOWING_NAME_IN_dotted_name_1632 = Set[1, 36]
    TOKENS_FOLLOWING_T__67_IN_global_statement_1648 = Set[19]
    TOKENS_FOLLOWING_NAME_IN_global_statement_1651 = Set[1, 39]
    TOKENS_FOLLOWING_T__39_IN_global_statement_1655 = Set[19]
    TOKENS_FOLLOWING_NAME_IN_global_statement_1658 = Set[1, 39]
    TOKENS_FOLLOWING_T__68_IN_exec_statement_1674 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101]
    TOKENS_FOLLOWING_expr_IN_exec_statement_1676 = Set[1, 69]
    TOKENS_FOLLOWING_T__69_IN_exec_statement_1680 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101, 102]
    TOKENS_FOLLOWING_test_IN_exec_statement_1682 = Set[1, 39]
    TOKENS_FOLLOWING_T__39_IN_exec_statement_1686 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101, 102]
    TOKENS_FOLLOWING_test_IN_exec_statement_1688 = Set[1]
    TOKENS_FOLLOWING_T__70_IN_assert_statement_1707 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101, 102]
    TOKENS_FOLLOWING_test_IN_assert_statement_1711 = Set[1, 39]
    TOKENS_FOLLOWING_T__39_IN_assert_statement_1715 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101, 102]
    TOKENS_FOLLOWING_test_IN_assert_statement_1719 = Set[1]
    TOKENS_FOLLOWING_if_statement_IN_compound_statement_1754 = Set[1]
    TOKENS_FOLLOWING_while_statement_IN_compound_statement_1760 = Set[1]
    TOKENS_FOLLOWING_for_statement_IN_compound_statement_1766 = Set[1]
    TOKENS_FOLLOWING_try_statement_IN_compound_statement_1772 = Set[1]
    TOKENS_FOLLOWING_with_statement_IN_compound_statement_1778 = Set[1]
    TOKENS_FOLLOWING_func_def_IN_compound_statement_1784 = Set[1]
    TOKENS_FOLLOWING_class_def_IN_compound_statement_1790 = Set[1]
    TOKENS_FOLLOWING_T__71_IN_if_statement_1803 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101, 102]
    TOKENS_FOLLOWING_test_IN_if_statement_1805 = Set[38]
    TOKENS_FOLLOWING_T__38_IN_if_statement_1807 = Set[9, 10, 16, 17, 19, 20, 22, 24, 25, 26, 56, 58, 59, 60, 61, 62, 63, 64, 65, 67, 68, 70, 82, 95, 96, 100, 101, 102, 104]
    TOKENS_FOLLOWING_suite_IN_if_statement_1809 = Set[1, 72, 73]
    TOKENS_FOLLOWING_elif_clause_IN_if_statement_1811 = Set[1, 72, 73]
    TOKENS_FOLLOWING_T__72_IN_if_statement_1820 = Set[38]
    TOKENS_FOLLOWING_T__38_IN_if_statement_1822 = Set[9, 10, 16, 17, 19, 20, 22, 24, 25, 26, 56, 58, 59, 60, 61, 62, 63, 64, 65, 67, 68, 70, 82, 95, 96, 100, 101, 102, 104]
    TOKENS_FOLLOWING_suite_IN_if_statement_1824 = Set[1]
    TOKENS_FOLLOWING_T__73_IN_elif_clause_1840 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101, 102]
    TOKENS_FOLLOWING_test_IN_elif_clause_1842 = Set[38]
    TOKENS_FOLLOWING_T__38_IN_elif_clause_1844 = Set[9, 10, 16, 17, 19, 20, 22, 24, 25, 26, 56, 58, 59, 60, 61, 62, 63, 64, 65, 67, 68, 70, 82, 95, 96, 100, 101, 102, 104]
    TOKENS_FOLLOWING_suite_IN_elif_clause_1846 = Set[1]
    TOKENS_FOLLOWING_T__74_IN_while_statement_1859 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101, 102]
    TOKENS_FOLLOWING_test_IN_while_statement_1861 = Set[38]
    TOKENS_FOLLOWING_T__38_IN_while_statement_1863 = Set[9, 10, 16, 17, 19, 20, 22, 24, 25, 26, 56, 58, 59, 60, 61, 62, 63, 64, 65, 67, 68, 70, 82, 95, 96, 100, 101, 102, 104]
    TOKENS_FOLLOWING_suite_IN_while_statement_1865 = Set[1, 72]
    TOKENS_FOLLOWING_T__72_IN_while_statement_1873 = Set[38]
    TOKENS_FOLLOWING_T__38_IN_while_statement_1875 = Set[9, 10, 16, 17, 19, 20, 22, 24, 25, 26, 56, 58, 59, 60, 61, 62, 63, 64, 65, 67, 68, 70, 82, 95, 96, 100, 101, 102, 104]
    TOKENS_FOLLOWING_suite_IN_while_statement_1877 = Set[1]
    TOKENS_FOLLOWING_T__75_IN_for_statement_1893 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101]
    TOKENS_FOLLOWING_exprlist_IN_for_statement_1895 = Set[69]
    TOKENS_FOLLOWING_T__69_IN_for_statement_1897 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101, 102]
    TOKENS_FOLLOWING_test_list_IN_for_statement_1899 = Set[38]
    TOKENS_FOLLOWING_T__38_IN_for_statement_1901 = Set[9, 10, 16, 17, 19, 20, 22, 24, 25, 26, 56, 58, 59, 60, 61, 62, 63, 64, 65, 67, 68, 70, 82, 95, 96, 100, 101, 102, 104]
    TOKENS_FOLLOWING_suite_IN_for_statement_1903 = Set[1, 72]
    TOKENS_FOLLOWING_T__72_IN_for_statement_1906 = Set[38]
    TOKENS_FOLLOWING_T__38_IN_for_statement_1908 = Set[9, 10, 16, 17, 19, 20, 22, 24, 25, 26, 56, 58, 59, 60, 61, 62, 63, 64, 65, 67, 68, 70, 82, 95, 96, 100, 101, 102, 104]
    TOKENS_FOLLOWING_suite_IN_for_statement_1910 = Set[1]
    TOKENS_FOLLOWING_T__76_IN_try_statement_1925 = Set[38]
    TOKENS_FOLLOWING_T__38_IN_try_statement_1927 = Set[9, 10, 16, 17, 19, 20, 22, 24, 25, 26, 56, 58, 59, 60, 61, 62, 63, 64, 65, 67, 68, 70, 82, 95, 96, 100, 101, 102, 104]
    TOKENS_FOLLOWING_suite_IN_try_statement_1929 = Set[77, 79]
    TOKENS_FOLLOWING_except_clause_IN_try_statement_1937 = Set[1, 72, 77, 79]
    TOKENS_FOLLOWING_T__72_IN_try_statement_1941 = Set[38]
    TOKENS_FOLLOWING_T__38_IN_try_statement_1943 = Set[9, 10, 16, 17, 19, 20, 22, 24, 25, 26, 56, 58, 59, 60, 61, 62, 63, 64, 65, 67, 68, 70, 82, 95, 96, 100, 101, 102, 104]
    TOKENS_FOLLOWING_suite_IN_try_statement_1945 = Set[1, 77]
    TOKENS_FOLLOWING_T__77_IN_try_statement_1950 = Set[38]
    TOKENS_FOLLOWING_T__38_IN_try_statement_1952 = Set[9, 10, 16, 17, 19, 20, 22, 24, 25, 26, 56, 58, 59, 60, 61, 62, 63, 64, 65, 67, 68, 70, 82, 95, 96, 100, 101, 102, 104]
    TOKENS_FOLLOWING_suite_IN_try_statement_1954 = Set[1]
    TOKENS_FOLLOWING_T__77_IN_try_statement_1964 = Set[38]
    TOKENS_FOLLOWING_T__38_IN_try_statement_1966 = Set[9, 10, 16, 17, 19, 20, 22, 24, 25, 26, 56, 58, 59, 60, 61, 62, 63, 64, 65, 67, 68, 70, 82, 95, 96, 100, 101, 102, 104]
    TOKENS_FOLLOWING_suite_IN_try_statement_1968 = Set[1]
    TOKENS_FOLLOWING_T__78_IN_with_statement_1987 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101, 102]
    TOKENS_FOLLOWING_test_IN_with_statement_1989 = Set[19, 38, 66]
    TOKENS_FOLLOWING_with_var_IN_with_statement_1991 = Set[38]
    TOKENS_FOLLOWING_T__38_IN_with_statement_1994 = Set[9, 10, 16, 17, 19, 20, 22, 24, 25, 26, 56, 58, 59, 60, 61, 62, 63, 64, 65, 67, 68, 70, 82, 95, 96, 100, 101, 102, 104]
    TOKENS_FOLLOWING_suite_IN_with_statement_1996 = Set[1]
    TOKENS_FOLLOWING_set_IN_with_var_2009 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101]
    TOKENS_FOLLOWING_expr_IN_with_var_2019 = Set[1]
    TOKENS_FOLLOWING_T__79_IN_except_clause_2032 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 38, 82, 95, 96, 100, 101, 102]
    TOKENS_FOLLOWING_test_IN_except_clause_2036 = Set[38, 39]
    TOKENS_FOLLOWING_T__39_IN_except_clause_2040 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101, 102]
    TOKENS_FOLLOWING_test_IN_except_clause_2042 = Set[38]
    TOKENS_FOLLOWING_T__38_IN_except_clause_2050 = Set[9, 10, 16, 17, 19, 20, 22, 24, 25, 26, 56, 58, 59, 60, 61, 62, 63, 64, 65, 67, 68, 70, 82, 95, 96, 100, 101, 102, 104]
    TOKENS_FOLLOWING_suite_IN_except_clause_2052 = Set[1]
    TOKENS_FOLLOWING_simple_statement_IN_suite_2065 = Set[1]
    TOKENS_FOLLOWING_NEWLINE_IN_suite_2079 = Set[4]
    TOKENS_FOLLOWING_INDENT_IN_suite_2081 = Set[5, 9, 10, 16, 17, 19, 20, 22, 24, 25, 26, 35, 37, 56, 58, 59, 60, 61, 62, 63, 64, 65, 67, 68, 70, 71, 74, 75, 76, 78, 82, 95, 96, 100, 101, 102, 103, 104]
    TOKENS_FOLLOWING_statement_IN_suite_2084 = Set[5, 9, 10, 16, 17, 19, 20, 22, 24, 25, 26, 35, 37, 56, 58, 59, 60, 61, 62, 63, 64, 65, 67, 68, 70, 71, 74, 75, 76, 78, 82, 95, 96, 100, 101, 102, 103, 104]
    TOKENS_FOLLOWING_DEDENT_IN_suite_2088 = Set[1]
    TOKENS_FOLLOWING_or_test_IN_test_2110 = Set[1, 71]
    TOKENS_FOLLOWING_T__71_IN_test_2128 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101]
    TOKENS_FOLLOWING_or_test_IN_test_2130 = Set[72]
    TOKENS_FOLLOWING_T__72_IN_test_2132 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101, 102]
    TOKENS_FOLLOWING_test_IN_test_2134 = Set[1]
    TOKENS_FOLLOWING_lamb_def_IN_test_2143 = Set[1]
    TOKENS_FOLLOWING_and_test_IN_or_test_2156 = Set[1, 80]
    TOKENS_FOLLOWING_T__80_IN_or_test_2160 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101]
    TOKENS_FOLLOWING_and_test_IN_or_test_2162 = Set[1, 80]
    TOKENS_FOLLOWING_not_test_IN_and_test_2178 = Set[1, 81]
    TOKENS_FOLLOWING_T__81_IN_and_test_2182 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101]
    TOKENS_FOLLOWING_not_test_IN_and_test_2184 = Set[1, 81]
    TOKENS_FOLLOWING_T__82_IN_not_test_2200 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101]
    TOKENS_FOLLOWING_not_test_IN_not_test_2202 = Set[1]
    TOKENS_FOLLOWING_comparison_IN_not_test_2208 = Set[1]
    TOKENS_FOLLOWING_expr_IN_comparison_2221 = Set[1, 69, 82, 83, 84, 85, 86, 87, 88, 89, 90]
    TOKENS_FOLLOWING_T__83_IN_comparison_2237 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101]
    TOKENS_FOLLOWING_T__84_IN_comparison_2248 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101]
    TOKENS_FOLLOWING_T__85_IN_comparison_2259 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101]
    TOKENS_FOLLOWING_T__86_IN_comparison_2270 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101]
    TOKENS_FOLLOWING_T__87_IN_comparison_2281 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101]
    TOKENS_FOLLOWING_T__88_IN_comparison_2292 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101]
    TOKENS_FOLLOWING_T__89_IN_comparison_2303 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101]
    TOKENS_FOLLOWING_T__69_IN_comparison_2314 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101]
    TOKENS_FOLLOWING_T__82_IN_comparison_2325 = Set[69]
    TOKENS_FOLLOWING_T__69_IN_comparison_2328 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101]
    TOKENS_FOLLOWING_T__90_IN_comparison_2339 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101]
    TOKENS_FOLLOWING_T__90_IN_comparison_2350 = Set[82]
    TOKENS_FOLLOWING_T__82_IN_comparison_2353 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101]
    TOKENS_FOLLOWING_expr_IN_comparison_2370 = Set[1, 69, 82, 83, 84, 85, 86, 87, 88, 89, 90]
    TOKENS_FOLLOWING_xor_expr_IN_expr_2390 = Set[1, 91]
    TOKENS_FOLLOWING_T__91_IN_expr_2394 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101]
    TOKENS_FOLLOWING_xor_expr_IN_expr_2397 = Set[1, 91]
    TOKENS_FOLLOWING_and_expr_IN_xor_expr_2413 = Set[1, 92]
    TOKENS_FOLLOWING_T__92_IN_xor_expr_2417 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101]
    TOKENS_FOLLOWING_and_expr_IN_xor_expr_2420 = Set[1, 92]
    TOKENS_FOLLOWING_shift_expr_IN_and_expr_2436 = Set[1, 93]
    TOKENS_FOLLOWING_T__93_IN_and_expr_2440 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101]
    TOKENS_FOLLOWING_shift_expr_IN_and_expr_2443 = Set[1, 93]
    TOKENS_FOLLOWING_arith_expr_IN_shift_expr_2459 = Set[1, 57, 94]
    TOKENS_FOLLOWING_T__94_IN_shift_expr_2465 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101]
    TOKENS_FOLLOWING_T__57_IN_shift_expr_2470 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101]
    TOKENS_FOLLOWING_arith_expr_IN_shift_expr_2475 = Set[1, 57, 94]
    TOKENS_FOLLOWING_term_IN_arith_expr_2491 = Set[1, 95, 96]
    TOKENS_FOLLOWING_T__95_IN_arith_expr_2497 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101]
    TOKENS_FOLLOWING_T__96_IN_arith_expr_2502 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101]
    TOKENS_FOLLOWING_term_IN_arith_expr_2507 = Set[1, 95, 96]
    TOKENS_FOLLOWING_factor_IN_term_2523 = Set[1, 40, 97, 98, 99]
    TOKENS_FOLLOWING_T__40_IN_term_2529 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101]
    TOKENS_FOLLOWING_T__97_IN_term_2534 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101]
    TOKENS_FOLLOWING_T__98_IN_term_2539 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101]
    TOKENS_FOLLOWING_T__99_IN_term_2544 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101]
    TOKENS_FOLLOWING_factor_IN_term_2549 = Set[1, 40, 97, 98, 99]
    TOKENS_FOLLOWING_T__95_IN_factor_2565 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101]
    TOKENS_FOLLOWING_factor_IN_factor_2568 = Set[1]
    TOKENS_FOLLOWING_T__96_IN_factor_2574 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101]
    TOKENS_FOLLOWING_factor_IN_factor_2577 = Set[1]
    TOKENS_FOLLOWING_T__100_IN_factor_2583 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101]
    TOKENS_FOLLOWING_factor_IN_factor_2586 = Set[1]
    TOKENS_FOLLOWING_power_IN_factor_2592 = Set[1]
    TOKENS_FOLLOWING_atom_IN_power_2605 = Set[1, 17, 20, 36, 41]
    TOKENS_FOLLOWING_trailer_IN_power_2607 = Set[1, 17, 20, 36, 41]
    TOKENS_FOLLOWING_T__41_IN_power_2612 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101]
    TOKENS_FOLLOWING_factor_IN_power_2615 = Set[1]
    TOKENS_FOLLOWING_LPAREN_IN_atom_2631 = Set[9, 10, 17, 18, 19, 20, 22, 24, 25, 26, 60, 61, 62, 63, 82, 95, 96, 100, 101, 102, 104]
    TOKENS_FOLLOWING_yield_expr_IN_atom_2640 = Set[18]
    TOKENS_FOLLOWING_testlist_gexp_IN_atom_2648 = Set[18]
    TOKENS_FOLLOWING_RPAREN_IN_atom_2661 = Set[1]
    TOKENS_FOLLOWING_LBRACK_IN_atom_2667 = Set[9, 10, 17, 19, 20, 21, 22, 24, 25, 26, 82, 95, 96, 100, 101, 102]
    TOKENS_FOLLOWING_list_maker_IN_atom_2669 = Set[21]
    TOKENS_FOLLOWING_RBRACK_IN_atom_2672 = Set[1]
    TOKENS_FOLLOWING_LCURLY_IN_atom_2678 = Set[9, 10, 17, 19, 20, 22, 23, 24, 25, 26, 82, 95, 96, 100, 101, 102]
    TOKENS_FOLLOWING_dict_maker_IN_atom_2680 = Set[23]
    TOKENS_FOLLOWING_RCURLY_IN_atom_2683 = Set[1]
    TOKENS_FOLLOWING_T__101_IN_atom_2689 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101, 102]
    TOKENS_FOLLOWING_test_list_IN_atom_2691 = Set[101]
    TOKENS_FOLLOWING_T__101_IN_atom_2693 = Set[1]
    TOKENS_FOLLOWING_NAME_IN_atom_2699 = Set[1]
    TOKENS_FOLLOWING_INT_IN_atom_2705 = Set[1]
    TOKENS_FOLLOWING_LONGINT_IN_atom_2711 = Set[1]
    TOKENS_FOLLOWING_FLOAT_IN_atom_2717 = Set[1]
    TOKENS_FOLLOWING_COMPLEX_IN_atom_2723 = Set[1]
    TOKENS_FOLLOWING_STRING_IN_atom_2729 = Set[1, 26]
    TOKENS_FOLLOWING_test_IN_list_maker_2743 = Set[1, 39, 75]
    TOKENS_FOLLOWING_list_for_IN_list_maker_2752 = Set[1, 39]
    TOKENS_FOLLOWING_T__39_IN_list_maker_2768 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101, 102]
    TOKENS_FOLLOWING_test_IN_list_maker_2770 = Set[1, 39]
    TOKENS_FOLLOWING_T__39_IN_list_maker_2780 = Set[1]
    TOKENS_FOLLOWING_test_IN_testlist_gexp_2794 = Set[1, 39, 75]
    TOKENS_FOLLOWING_T__39_IN_testlist_gexp_2811 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101, 102]
    TOKENS_FOLLOWING_test_IN_testlist_gexp_2813 = Set[1, 39]
    TOKENS_FOLLOWING_T__39_IN_testlist_gexp_2817 = Set[1]
    TOKENS_FOLLOWING_gen_for_IN_testlist_gexp_2826 = Set[1]
    TOKENS_FOLLOWING_T__102_IN_lamb_def_2845 = Set[17, 19, 38, 40, 41]
    TOKENS_FOLLOWING_var_args_list_IN_lamb_def_2847 = Set[38]
    TOKENS_FOLLOWING_T__38_IN_lamb_def_2850 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101, 102]
    TOKENS_FOLLOWING_test_IN_lamb_def_2852 = Set[1]
    TOKENS_FOLLOWING_LPAREN_IN_trailer_2865 = Set[9, 10, 17, 18, 19, 20, 22, 24, 25, 26, 40, 41, 82, 95, 96, 100, 101, 102]
    TOKENS_FOLLOWING_arg_list_IN_trailer_2867 = Set[18]
    TOKENS_FOLLOWING_RPAREN_IN_trailer_2870 = Set[1]
    TOKENS_FOLLOWING_LBRACK_IN_trailer_2876 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 36, 38, 82, 95, 96, 100, 101, 102]
    TOKENS_FOLLOWING_subscript_list_IN_trailer_2878 = Set[21]
    TOKENS_FOLLOWING_RBRACK_IN_trailer_2880 = Set[1]
    TOKENS_FOLLOWING_T__36_IN_trailer_2886 = Set[19]
    TOKENS_FOLLOWING_NAME_IN_trailer_2888 = Set[1]
    TOKENS_FOLLOWING_subscript_IN_subscript_list_2899 = Set[1, 39]
    TOKENS_FOLLOWING_T__39_IN_subscript_list_2909 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 36, 38, 82, 95, 96, 100, 101, 102]
    TOKENS_FOLLOWING_subscript_IN_subscript_list_2911 = Set[1, 39]
    TOKENS_FOLLOWING_T__39_IN_subscript_list_2916 = Set[1]
    TOKENS_FOLLOWING_T__36_IN_subscript_2941 = Set[36]
    TOKENS_FOLLOWING_T__36_IN_subscript_2943 = Set[36]
    TOKENS_FOLLOWING_T__36_IN_subscript_2945 = Set[1]
    TOKENS_FOLLOWING_test_IN_subscript_2959 = Set[1, 38]
    TOKENS_FOLLOWING_T__38_IN_subscript_2962 = Set[1, 9, 10, 17, 19, 20, 22, 24, 25, 26, 38, 82, 95, 96, 100, 101, 102]
    TOKENS_FOLLOWING_test_IN_subscript_2965 = Set[1, 38]
    TOKENS_FOLLOWING_sliceop_IN_subscript_2970 = Set[1]
    TOKENS_FOLLOWING_T__38_IN_subscript_2988 = Set[1, 9, 10, 17, 19, 20, 22, 24, 25, 26, 38, 82, 95, 96, 100, 101, 102]
    TOKENS_FOLLOWING_test_IN_subscript_2991 = Set[1, 38]
    TOKENS_FOLLOWING_sliceop_IN_subscript_2996 = Set[1]
    TOKENS_FOLLOWING_T__38_IN_sliceop_3017 = Set[1, 9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101, 102]
    TOKENS_FOLLOWING_test_IN_sliceop_3020 = Set[1]
    TOKENS_FOLLOWING_expr_IN_exprlist_3039 = Set[1, 39]
    TOKENS_FOLLOWING_T__39_IN_exprlist_3050 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101]
    TOKENS_FOLLOWING_expr_IN_exprlist_3052 = Set[1, 39]
    TOKENS_FOLLOWING_T__39_IN_exprlist_3057 = Set[1]
    TOKENS_FOLLOWING_test_IN_test_list_3081 = Set[1, 39]
    TOKENS_FOLLOWING_T__39_IN_test_list_3092 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101, 102]
    TOKENS_FOLLOWING_test_IN_test_list_3094 = Set[1, 39]
    TOKENS_FOLLOWING_T__39_IN_test_list_3099 = Set[1]
    TOKENS_FOLLOWING_test_IN_dict_maker_3114 = Set[38]
    TOKENS_FOLLOWING_T__38_IN_dict_maker_3116 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101, 102]
    TOKENS_FOLLOWING_test_IN_dict_maker_3118 = Set[1, 39]
    TOKENS_FOLLOWING_T__39_IN_dict_maker_3128 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101, 102]
    TOKENS_FOLLOWING_test_IN_dict_maker_3130 = Set[38]
    TOKENS_FOLLOWING_T__38_IN_dict_maker_3132 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101, 102]
    TOKENS_FOLLOWING_test_IN_dict_maker_3134 = Set[1, 39]
    TOKENS_FOLLOWING_T__39_IN_dict_maker_3139 = Set[1]
    TOKENS_FOLLOWING_T__103_IN_class_def_3159 = Set[19]
    TOKENS_FOLLOWING_NAME_IN_class_def_3161 = Set[17, 38]
    TOKENS_FOLLOWING_LPAREN_IN_class_def_3164 = Set[9, 10, 17, 18, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101, 102]
    TOKENS_FOLLOWING_test_list_IN_class_def_3166 = Set[18]
    TOKENS_FOLLOWING_RPAREN_IN_class_def_3169 = Set[38]
    TOKENS_FOLLOWING_T__38_IN_class_def_3173 = Set[9, 10, 16, 17, 19, 20, 22, 24, 25, 26, 56, 58, 59, 60, 61, 62, 63, 64, 65, 67, 68, 70, 82, 95, 96, 100, 101, 102, 104]
    TOKENS_FOLLOWING_suite_IN_class_def_3175 = Set[1]
    TOKENS_FOLLOWING_argument_IN_arg_list_3192 = Set[1, 39]
    TOKENS_FOLLOWING_T__39_IN_arg_list_3195 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101, 102]
    TOKENS_FOLLOWING_argument_IN_arg_list_3197 = Set[1, 39]
    TOKENS_FOLLOWING_T__39_IN_arg_list_3213 = Set[1, 40, 41]
    TOKENS_FOLLOWING_T__40_IN_arg_list_3229 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101, 102]
    TOKENS_FOLLOWING_test_IN_arg_list_3231 = Set[1, 39]
    TOKENS_FOLLOWING_T__39_IN_arg_list_3234 = Set[41]
    TOKENS_FOLLOWING_T__41_IN_arg_list_3236 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101, 102]
    TOKENS_FOLLOWING_test_IN_arg_list_3238 = Set[1]
    TOKENS_FOLLOWING_T__41_IN_arg_list_3256 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101, 102]
    TOKENS_FOLLOWING_test_IN_arg_list_3258 = Set[1]
    TOKENS_FOLLOWING_T__40_IN_arg_list_3300 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101, 102]
    TOKENS_FOLLOWING_test_IN_arg_list_3302 = Set[1, 39]
    TOKENS_FOLLOWING_T__39_IN_arg_list_3305 = Set[41]
    TOKENS_FOLLOWING_T__41_IN_arg_list_3307 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101, 102]
    TOKENS_FOLLOWING_test_IN_arg_list_3309 = Set[1]
    TOKENS_FOLLOWING_T__41_IN_arg_list_3325 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101, 102]
    TOKENS_FOLLOWING_test_IN_arg_list_3327 = Set[1]
    TOKENS_FOLLOWING_test_IN_argument_3344 = Set[39, 42, 75]
    TOKENS_FOLLOWING_T__42_IN_argument_3348 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101, 102]
    TOKENS_FOLLOWING_test_IN_argument_3350 = Set[1]
    TOKENS_FOLLOWING_gen_for_IN_argument_3354 = Set[1]
    TOKENS_FOLLOWING_list_for_IN_list_iter_3375 = Set[1]
    TOKENS_FOLLOWING_list_if_IN_list_iter_3389 = Set[1]
    TOKENS_FOLLOWING_T__75_IN_list_for_3408 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101]
    TOKENS_FOLLOWING_exprlist_IN_list_for_3410 = Set[69]
    TOKENS_FOLLOWING_T__69_IN_list_for_3412 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101, 102]
    TOKENS_FOLLOWING_test_list_IN_list_for_3414 = Set[1, 71, 75]
    TOKENS_FOLLOWING_list_iter_IN_list_for_3416 = Set[1]
    TOKENS_FOLLOWING_T__71_IN_list_if_3435 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101, 102]
    TOKENS_FOLLOWING_test_IN_list_if_3437 = Set[1, 71, 75]
    TOKENS_FOLLOWING_list_iter_IN_list_if_3439 = Set[1]
    TOKENS_FOLLOWING_gen_for_IN_gen_iter_3456 = Set[1]
    TOKENS_FOLLOWING_gen_if_IN_gen_iter_3468 = Set[1]
    TOKENS_FOLLOWING_T__75_IN_gen_for_3484 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101]
    TOKENS_FOLLOWING_exprlist_IN_gen_for_3486 = Set[69]
    TOKENS_FOLLOWING_T__69_IN_gen_for_3488 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101]
    TOKENS_FOLLOWING_or_test_IN_gen_for_3490 = Set[1, 39, 71, 75]
    TOKENS_FOLLOWING_gen_iter_IN_gen_for_3492 = Set[1]
    TOKENS_FOLLOWING_T__71_IN_gen_if_3508 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101, 102]
    TOKENS_FOLLOWING_test_IN_gen_if_3510 = Set[1, 39, 71, 75]
    TOKENS_FOLLOWING_gen_iter_IN_gen_if_3512 = Set[1]
    TOKENS_FOLLOWING_T__104_IN_yield_expr_3528 = Set[1, 9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101, 102]
    TOKENS_FOLLOWING_test_list_IN_yield_expr_3530 = Set[1]
    TOKENS_FOLLOWING_T__71_IN_synpred1_Python_2119 = Set[9, 10, 17, 19, 20, 22, 24, 25, 26, 82, 95, 96, 100, 101]
    TOKENS_FOLLOWING_or_test_IN_synpred1_Python_2121 = Set[72]
    TOKENS_FOLLOWING_T__72_IN_synpred1_Python_2123 = Set[1]

  end # class Parser < ANTLR3::Parser

end

if __FILE__ == $0 and ARGV.first != '--'
  # - - - - - - begin action @parser::main - - - - - -
  # Python.g



  require 'PythonLexer'
  require 'PythonTokenSource'

  main = ANTLR3::Main::ParserMain.new(
    Python::Parser, :lexer_class => Python::Lexer
  )

  class << main
    
    def recognize( in_stream )
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