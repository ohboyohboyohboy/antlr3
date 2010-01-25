#!/usr/bin/env ruby
#
# samples/Python.g
# 
# Generated using ANTLR version: 3.2.1-SNAPSHOT Dec 18, 2009 04:29:28
# Ruby runtime library version: 1.4.0
# Input grammar file: samples/Python.g
# Generated at: 2010-01-25 13:58:29
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


module Python
  # TokenData defines all of the token type integer values
  # as constants, which will be included in all 
  # ANTLR-generated recognizers.
  const_defined?(:TokenData) or TokenData = ANTLR3::TokenScheme.new

  module TokenData

    # define the token constants
    define_tokens( :TRIAPOS => 31, :COMPLEX => 10, :EOF => -1, :LEADING_WS => 35, 
                   :T__93 => 93, :T__94 => 94, :T__91 => 91, :TUPLE => 13, 
                   :RPAREN => 21, :NAME => 22, :T__92 => 92, :T__90 => 90, 
                   :EXP => 30, :COMMENT => 36, :T__99 => 99, :T__98 => 98, 
                   :T__97 => 97, :T__96 => 96, :T__95 => 95, :RBRACK => 24, 
                   :T__80 => 80, :T__81 => 81, :T__82 => 82, :T__83 => 83, 
                   :CONCAT => 11, :LCURLY => 25, :INT => 27, :T__85 => 85, 
                   :T__84 => 84, :LIST => 14, :T__87 => 87, :T__86 => 86, 
                   :T__89 => 89, :T__88 => 88, :WS => 37, :T__71 => 71, 
                   :T__72 => 72, :T__70 => 70, :LONGINT => 9, :CALL => 12, 
                   :T__76 => 76, :T__75 => 75, :PARAM_TUPLE => 8, :T__74 => 74, 
                   :T__73 => 73, :T__79 => 79, :T__78 => 78, :T__77 => 77, 
                   :T__68 => 68, :T__69 => 69, :T__66 => 66, :T__67 => 67, 
                   :CONTINUED_LINE => 34, :LBRACK => 23, :T__64 => 64, :T__65 => 65, 
                   :T__62 => 62, :T__63 => 63, :ESC => 33, :FLOAT => 28, 
                   :DEDENT => 5, :T__61 => 61, :T__60 => 60, :INDENT => 4, 
                   :LPAREN => 20, :T__55 => 55, :T__56 => 56, :T__57 => 57, 
                   :T__58 => 58, :T__51 => 51, :T__52 => 52, :T__53 => 53, 
                   :T__54 => 54, :T__107 => 107, :DOCUMENT => 18, :T__59 => 59, 
                   :T__103 => 103, :DICT => 15, :T__104 => 104, :T__105 => 105, 
                   :T__106 => 106, :T__50 => 50, :PARAMS => 7, :T__42 => 42, 
                   :T__43 => 43, :T__40 => 40, :T__41 => 41, :T__46 => 46, 
                   :T__47 => 47, :T__44 => 44, :T__45 => 45, :T__48 => 48, 
                   :T__49 => 49, :T__102 => 102, :T__101 => 101, :T__100 => 100, 
                   :MODULE => 17, :TRIQUOTE => 32, :NEWLINE => 19, :T__38 => 38, 
                   :T__39 => 39, :BLOCK => 6, :RCURLY => 26, :DECORATION => 16, 
                   :STRING => 29 )

    # register the proper human-readable name or literal value
    # for each token type
    #
    # this is necessary because anonymous tokens, which are
    # created from literal values in the grammar, do not
    # have descriptive names
    register_names( "INDENT", "DEDENT", "BLOCK", "PARAMS", "PARAM_TUPLE", 
                    "LONGINT", "COMPLEX", "CONCAT", "CALL", "TUPLE", "LIST", 
                    "DICT", "DECORATION", "MODULE", "DOCUMENT", "NEWLINE", 
                    "LPAREN", "RPAREN", "NAME", "LBRACK", "RBRACK", "LCURLY", 
                    "RCURLY", "INT", "FLOAT", "STRING", "EXP", "TRIAPOS", 
                    "TRIQUOTE", "ESC", "CONTINUED_LINE", "LEADING_WS", "COMMENT", 
                    "WS", "'@'", "'.'", "'def'", "':'", "','", "'*'", "'**'", 
                    "'='", "';'", "'+='", "'-='", "'*='", "'/='", "'%='", 
                    "'&='", "'|='", "'^='", "'<<='", "'>>='", "'**='", "'//='", 
                    "'print'", "'>>'", "'del'", "'pass'", "'break'", "'continue'", 
                    "'return'", "'raise'", "'import'", "'from'", "'as'", 
                    "'global'", "'exec'", "'in'", "'assert'", "'if'", "'else'", 
                    "'elif'", "'while'", "'for'", "'try'", "'finally'", 
                    "'with'", "'except'", "'or'", "'and'", "'not'", "'<'", 
                    "'>'", "'=='", "'>='", "'<='", "'<>'", "'!='", "'is'", 
                    "'|'", "'^'", "'&'", "'<<'", "'+'", "'-'", "'/'", "'%'", 
                    "'//'", "'~'", "'`'", "'lambda'", "'class'", "'yield'" )
    
  end


  class Parser < ANTLR3::Parser
    @grammar_home = Python
    include ANTLR3::ASTBuilder

    RULE_METHODS = [ :file_input, :single_input, :eval_input, :decorator, 
                     :dotted_attr, :decoration, :func_def, :parameters, 
                     :var_args_list, :def_parameter, :fp_def, :fp_list, 
                     :statement, :simple_statement, :small_statement, :expr_statement, 
                     :print_statement, :del_statement, :pass_statement, 
                     :flow_statement, :break_statement, :continue_statement, 
                     :return_statement, :yield_statement, :raise_statement, 
                     :import_statement, :import_name, :import_from, :import_as_names, 
                     :import_as_name, :dotted_as_name, :dotted_as_names, 
                     :dotted_name, :global_statement, :exec_statement, :assert_statement, 
                     :compound_statement, :if_statement, :elif_clause, :while_statement, 
                     :for_statement, :try_statement, :with_statement, :except_clause, 
                     :suite, :test, :or_test, :and_test, :not_test, :comparison, 
                     :expr, :xor_expr, :and_expr, :shift_expr, :arith_expr, 
                     :term, :factor, :power, :atom, :list_maker, :testlist_gexp, 
                     :lamb_def, :trailer, :subscript_list, :subscript, :sliceop, 
                     :exprlist, :test_list, :dict_maker, :class_def, :arg_list, 
                     :argument, :list_iter, :list_for, :list_if, :gen_iter, 
                     :gen_for, :gen_if, :yield_expr, :synpred1_Python ].freeze


    include TokenData

    generated_using( "samples/Python.g", "3.2.1-SNAPSHOT Dec 18, 2009 04:29:28", "1.4.0" )

    def initialize( input, options = {} )
      super( input, options )


    end
    # - - - - - - - - - - - - Rules - - - - - - - - - - - - -
    FileInputReturnValue = define_return_scope 

    # 
    # parser rule file_input
    # 
    # (in samples/Python.g)
    # 134:1: file_input : ( ( NEWLINE )* DOCUMENT )? ( NEWLINE | statement )* -> ^( MODULE ( DOCUMENT )? ( statement )* ) ;
    # 
    def file_input
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 1)
      return_value = FileInputReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __NEWLINE1__ = nil
      __DOCUMENT2__ = nil
      __NEWLINE3__ = nil
      statement4 = nil

      tree_for_NEWLINE1 = nil
      tree_for_DOCUMENT2 = nil
      tree_for_NEWLINE3 = nil
      stream_NEWLINE = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token NEWLINE")
      stream_DOCUMENT = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token DOCUMENT")
      stream_statement = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule statement")
      begin
        # at line 135:5: ( ( NEWLINE )* DOCUMENT )? ( NEWLINE | statement )*
        # at line 135:5: ( ( NEWLINE )* DOCUMENT )?
        alt_2 = 2
        alt_2 = @dfa2.predict(@input)
        case alt_2
        when 1
          # at line 135:7: ( NEWLINE )* DOCUMENT
          # at line 135:7: ( NEWLINE )*
          loop do # decision 1
            alt_1 = 2
            look_1_0 = @input.peek(1)

            if (look_1_0 == NEWLINE) 
              alt_1 = 1

            end
            case alt_1
            when 1
              # at line 135:7: NEWLINE
              __NEWLINE1__ = match(NEWLINE, TOKENS_FOLLOWING_NEWLINE_IN_file_input_155) 
              if @state.backtracking == 0
                stream_NEWLINE.add(__NEWLINE1__)
              end

            else
              break # out of loop for decision 1
            end
          end # loop for decision 1
          __DOCUMENT2__ = match(DOCUMENT, TOKENS_FOLLOWING_DOCUMENT_IN_file_input_158) 
          if @state.backtracking == 0
            stream_DOCUMENT.add(__DOCUMENT2__)
          end

        end
        # at line 136:5: ( NEWLINE | statement )*
        loop do # decision 3
          alt_3 = 3
          look_3_0 = @input.peek(1)

          if (look_3_0 == NEWLINE) 
            alt_3 = 1
          elsif (look_3_0.between?(LONGINT, COMPLEX) || look_3_0 == LPAREN || look_3_0.between?(NAME, LBRACK) || look_3_0 == LCURLY || look_3_0.between?(INT, STRING) || look_3_0 == T__38 || look_3_0 == T__40 || look_3_0 == T__59 || look_3_0.between?(T__61, T__68) || look_3_0.between?(T__70, T__71) || look_3_0.between?(T__73, T__74) || look_3_0.between?(T__77, T__79) || look_3_0 == T__81 || look_3_0 == T__85 || look_3_0.between?(T__98, T__99) || look_3_0.between?(T__103, T__107)) 
            alt_3 = 2

          end
          case alt_3
          when 1
            # at line 136:7: NEWLINE
            __NEWLINE3__ = match(NEWLINE, TOKENS_FOLLOWING_NEWLINE_IN_file_input_169) 
            if @state.backtracking == 0
              stream_NEWLINE.add(__NEWLINE3__)
            end

          when 2
            # at line 136:17: statement
            @state.following.push(TOKENS_FOLLOWING_statement_IN_file_input_173)
            statement4 = statement
            @state.following.pop
            if @state.backtracking == 0
              stream_statement.add(statement4.tree)
            end

          else
            break # out of loop for decision 3
          end
        end # loop for decision 3
        # AST Rewrite
        # elements: DOCUMENT, statement
        # token labels: 
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 
        if @state.backtracking == 0

          return_value.tree = root_0
          stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

          root_0 = @adaptor.create_flat_list!
          # 136:30: -> ^( MODULE ( DOCUMENT )? ( statement )* )
          # at line 136:33: ^( MODULE ( DOCUMENT )? ( statement )* )
          root_1 = @adaptor.create_flat_list!
          root_1 = @adaptor.become_root(@adaptor.create_from_type!(MODULE, "MODULE"), root_1)

          # at line 136:43: ( DOCUMENT )?
          if stream_DOCUMENT.has_next?
            @adaptor.add_child(root_1, stream_DOCUMENT.next_node)

          end

          stream_DOCUMENT.reset();
          # at line 136:53: ( statement )*
          while stream_statement.has_next?
            @adaptor.add_child(root_1, stream_statement.next_tree)

          end

          stream_statement.reset();

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
        # trace_out(__method__, 1)

      end
      
      return return_value
    end

    SingleInputReturnValue = define_return_scope 

    # 
    # parser rule single_input
    # 
    # (in samples/Python.g)
    # 139:1: single_input : ( NEWLINE | simple_statement | compound_statement NEWLINE );
    # 
    def single_input
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 2)
      return_value = SingleInputReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __NEWLINE5__ = nil
      __NEWLINE8__ = nil
      simple_statement6 = nil
      compound_statement7 = nil

      tree_for_NEWLINE5 = nil
      tree_for_NEWLINE8 = nil

      begin
        # at line 140:3: ( NEWLINE | simple_statement | compound_statement NEWLINE )
        alt_4 = 3
        case look_4 = @input.peek(1)
        when NEWLINE then alt_4 = 1
        when LONGINT, COMPLEX, LPAREN, NAME, LBRACK, LCURLY, INT, FLOAT, STRING, T__59, T__61, T__62, T__63, T__64, T__65, T__66, T__67, T__68, T__70, T__71, T__73, T__85, T__98, T__99, T__103, T__104, T__105, T__107 then alt_4 = 2
        when T__38, T__40, T__74, T__77, T__78, T__79, T__81, T__106 then alt_4 = 3
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          nvae = NoViableAlternative("", 4, 0)
          raise nvae
        end
        case alt_4
        when 1
          root_0 = @adaptor.create_flat_list!


          # at line 140:5: NEWLINE
          __NEWLINE5__ = match(NEWLINE, TOKENS_FOLLOWING_NEWLINE_IN_single_input_203)

        when 2
          root_0 = @adaptor.create_flat_list!


          # at line 141:5: simple_statement
          @state.following.push(TOKENS_FOLLOWING_simple_statement_IN_single_input_210)
          simple_statement6 = simple_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, simple_statement6.tree)
          end

        when 3
          root_0 = @adaptor.create_flat_list!


          # at line 142:5: compound_statement NEWLINE
          @state.following.push(TOKENS_FOLLOWING_compound_statement_IN_single_input_216)
          compound_statement7 = compound_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, compound_statement7.tree)
          end
          __NEWLINE8__ = match(NEWLINE, TOKENS_FOLLOWING_NEWLINE_IN_single_input_218)

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

    # 
    # parser rule eval_input
    # 
    # (in samples/Python.g)
    # 145:1: eval_input : ( NEWLINE )* test_list ( NEWLINE )* ;
    # 
    def eval_input
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 3)
      return_value = EvalInputReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __NEWLINE9__ = nil
      __NEWLINE11__ = nil
      test_list10 = nil

      tree_for_NEWLINE9 = nil
      tree_for_NEWLINE11 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 146:5: ( NEWLINE )* test_list ( NEWLINE )*
        # at line 146:12: ( NEWLINE )*
        loop do # decision 5
          alt_5 = 2
          look_5_0 = @input.peek(1)

          if (look_5_0 == NEWLINE) 
            alt_5 = 1

          end
          case alt_5
          when 1
            # at line 146:12: NEWLINE
            __NEWLINE9__ = match(NEWLINE, TOKENS_FOLLOWING_NEWLINE_IN_eval_input_232)

          else
            break # out of loop for decision 5
          end
        end # loop for decision 5
        @state.following.push(TOKENS_FOLLOWING_test_list_IN_eval_input_236)
        test_list10 = test_list
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, test_list10.tree)
        end
        # at line 146:32: ( NEWLINE )*
        loop do # decision 6
          alt_6 = 2
          look_6_0 = @input.peek(1)

          if (look_6_0 == NEWLINE) 
            alt_6 = 1

          end
          case alt_6
          when 1
            # at line 146:32: NEWLINE
            __NEWLINE11__ = match(NEWLINE, TOKENS_FOLLOWING_NEWLINE_IN_eval_input_238)

          else
            break # out of loop for decision 6
          end
        end # loop for decision 6
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

    # 
    # parser rule decorator
    # 
    # (in samples/Python.g)
    # 149:1: decorator : '@' dotted_attr ( LPAREN ( arg_list )? RPAREN )? NEWLINE -> ^( '@' dotted_attr ( arg_list )? ) ;
    # 
    def decorator
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 4)
      return_value = DecoratorReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal12 = nil
      __LPAREN14__ = nil
      __RPAREN16__ = nil
      __NEWLINE17__ = nil
      dotted_attr13 = nil
      arg_list15 = nil

      tree_for_char_literal12 = nil
      tree_for_LPAREN14 = nil
      tree_for_RPAREN16 = nil
      tree_for_NEWLINE17 = nil
      stream_RPAREN = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token RPAREN")
      stream_NEWLINE = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token NEWLINE")
      stream_T__38 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__38")
      stream_LPAREN = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token LPAREN")
      stream_arg_list = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule arg_list")
      stream_dotted_attr = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule dotted_attr")
      begin
        # at line 150:5: '@' dotted_attr ( LPAREN ( arg_list )? RPAREN )? NEWLINE
        char_literal12 = match(T__38, TOKENS_FOLLOWING_T__38_IN_decorator_253) 
        if @state.backtracking == 0
          stream_T__38.add(char_literal12)
        end
        @state.following.push(TOKENS_FOLLOWING_dotted_attr_IN_decorator_255)
        dotted_attr13 = dotted_attr
        @state.following.pop
        if @state.backtracking == 0
          stream_dotted_attr.add(dotted_attr13.tree)
        end
        # at line 150:21: ( LPAREN ( arg_list )? RPAREN )?
        alt_8 = 2
        look_8_0 = @input.peek(1)

        if (look_8_0 == LPAREN) 
          alt_8 = 1
        end
        case alt_8
        when 1
          # at line 150:23: LPAREN ( arg_list )? RPAREN
          __LPAREN14__ = match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_decorator_259) 
          if @state.backtracking == 0
            stream_LPAREN.add(__LPAREN14__)
          end
          # at line 150:30: ( arg_list )?
          alt_7 = 2
          look_7_0 = @input.peek(1)

          if (look_7_0.between?(LONGINT, COMPLEX) || look_7_0 == LPAREN || look_7_0.between?(NAME, LBRACK) || look_7_0 == LCURLY || look_7_0.between?(INT, STRING) || look_7_0.between?(T__43, T__44) || look_7_0 == T__85 || look_7_0.between?(T__98, T__99) || look_7_0.between?(T__103, T__105)) 
            alt_7 = 1
          end
          case alt_7
          when 1
            # at line 150:30: arg_list
            @state.following.push(TOKENS_FOLLOWING_arg_list_IN_decorator_261)
            arg_list15 = arg_list
            @state.following.pop
            if @state.backtracking == 0
              stream_arg_list.add(arg_list15.tree)
            end

          end
          __RPAREN16__ = match(RPAREN, TOKENS_FOLLOWING_RPAREN_IN_decorator_264) 
          if @state.backtracking == 0
            stream_RPAREN.add(__RPAREN16__)
          end

        end
        __NEWLINE17__ = match(NEWLINE, TOKENS_FOLLOWING_NEWLINE_IN_decorator_269) 
        if @state.backtracking == 0
          stream_NEWLINE.add(__NEWLINE17__)
        end
        # AST Rewrite
        # elements: T__38, arg_list, dotted_attr
        # token labels: 
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 
        if @state.backtracking == 0

          return_value.tree = root_0
          stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

          root_0 = @adaptor.create_flat_list!
          # 151:5: -> ^( '@' dotted_attr ( arg_list )? )
          # at line 151:8: ^( '@' dotted_attr ( arg_list )? )
          root_1 = @adaptor.create_flat_list!
          root_1 = @adaptor.become_root(stream_T__38.next_node, root_1)

          @adaptor.add_child(root_1, stream_dotted_attr.next_tree)
          # at line 151:26: ( arg_list )?
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

    # 
    # parser rule dotted_attr
    # 
    # (in samples/Python.g)
    # 154:1: dotted_attr : NAME ( '.' NAME )* ;
    # 
    def dotted_attr
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 5)
      return_value = DottedAttrReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __NAME18__ = nil
      char_literal19 = nil
      __NAME20__ = nil

      tree_for_NAME18 = nil
      tree_for_char_literal19 = nil
      tree_for_NAME20 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 155:5: NAME ( '.' NAME )*
        __NAME18__ = match(NAME, TOKENS_FOLLOWING_NAME_IN_dotted_attr_297)
        if @state.backtracking == 0

          tree_for_NAME18 = @adaptor.create_with_payload!(__NAME18__)
          @adaptor.add_child(root_0, tree_for_NAME18)

        end
        # at line 155:10: ( '.' NAME )*
        loop do # decision 9
          alt_9 = 2
          look_9_0 = @input.peek(1)

          if (look_9_0 == T__39) 
            alt_9 = 1

          end
          case alt_9
          when 1
            # at line 155:12: '.' NAME
            char_literal19 = match(T__39, TOKENS_FOLLOWING_T__39_IN_dotted_attr_301)
            if @state.backtracking == 0

              tree_for_char_literal19 = @adaptor.create_with_payload!(char_literal19)
              root_0 = @adaptor.become_root(tree_for_char_literal19, root_0)

            end
            __NAME20__ = match(NAME, TOKENS_FOLLOWING_NAME_IN_dotted_attr_304)
            if @state.backtracking == 0

              tree_for_NAME20 = @adaptor.create_with_payload!(__NAME20__)
              @adaptor.add_child(root_0, tree_for_NAME20)

            end

          else
            break # out of loop for decision 9
          end
        end # loop for decision 9
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

    DecorationReturnValue = define_return_scope 

    # 
    # parser rule decoration
    # 
    # (in samples/Python.g)
    # 158:1: decoration : ( ( decorator )+ -> ^( DECORATION ( decorator )+ ) | -> DECORATION );
    # 
    def decoration
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 6)
      return_value = DecorationReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      decorator21 = nil

      stream_decorator = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule decorator")
      begin
        # at line 159:3: ( ( decorator )+ -> ^( DECORATION ( decorator )+ ) | -> DECORATION )
        alt_11 = 2
        look_11_0 = @input.peek(1)

        if (look_11_0 == T__38) 
          alt_11 = 1
        elsif (look_11_0 == T__40) 
          alt_11 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 11, 0)
          raise nvae
        end
        case alt_11
        when 1
          # at line 159:5: ( decorator )+
          # at file 159:5: ( decorator )+
          match_count_10 = 0
          loop do
            alt_10 = 2
            look_10_0 = @input.peek(1)

            if (look_10_0 == T__38) 
              alt_10 = 1

            end
            case alt_10
            when 1
              # at line 159:5: decorator
              @state.following.push(TOKENS_FOLLOWING_decorator_IN_decoration_320)
              decorator21 = decorator
              @state.following.pop
              if @state.backtracking == 0
                stream_decorator.add(decorator21.tree)
              end

            else
              match_count_10 > 0 and break
              @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

              eee = EarlyExit(10)


              raise eee
            end
            match_count_10 += 1
          end

          # AST Rewrite
          # elements: decorator
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

            root_0 = @adaptor.create_flat_list!
            # 159:16: -> ^( DECORATION ( decorator )+ )
            # at line 159:19: ^( DECORATION ( decorator )+ )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(@adaptor.create_from_type!(DECORATION, "DECORATION"), root_1)

            # at line 159:33: ( decorator )+
            unless stream_decorator.has_next?
              raise ANTLR3::RewriteEarlyExit
            end

            while stream_decorator.has_next?
              @adaptor.add_child(root_1, stream_decorator.next_tree)

            end

            stream_decorator.reset

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 2
          # at line 160:16: 
          # AST Rewrite
          # elements: 
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

            root_0 = @adaptor.create_flat_list!
            # 160:16: -> DECORATION
            @adaptor.add_child(root_0, @adaptor.create_from_type!(DECORATION, "DECORATION"))



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
        # trace_out(__method__, 6)

      end
      
      return return_value
    end

    FuncDefReturnValue = define_return_scope 

    # 
    # parser rule func_def
    # 
    # (in samples/Python.g)
    # 163:1: func_def : decoration 'def' NAME LPAREN ( var_args_list )? RPAREN ':' suite -> ^( 'def' decoration NAME ( var_args_list )? suite ) ;
    # 
    def func_def
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 7)
      return_value = FuncDefReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal23 = nil
      __NAME24__ = nil
      __LPAREN25__ = nil
      __RPAREN27__ = nil
      char_literal28 = nil
      decoration22 = nil
      var_args_list26 = nil
      suite29 = nil

      tree_for_string_literal23 = nil
      tree_for_NAME24 = nil
      tree_for_LPAREN25 = nil
      tree_for_RPAREN27 = nil
      tree_for_char_literal28 = nil
      stream_T__40 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__40")
      stream_RPAREN = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token RPAREN")
      stream_T__41 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__41")
      stream_NAME = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token NAME")
      stream_LPAREN = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token LPAREN")
      stream_decoration = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule decoration")
      stream_var_args_list = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule var_args_list")
      stream_suite = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule suite")
      begin
        # at line 164:5: decoration 'def' NAME LPAREN ( var_args_list )? RPAREN ':' suite
        @state.following.push(TOKENS_FOLLOWING_decoration_IN_func_def_364)
        decoration22 = decoration
        @state.following.pop
        if @state.backtracking == 0
          stream_decoration.add(decoration22.tree)
        end
        string_literal23 = match(T__40, TOKENS_FOLLOWING_T__40_IN_func_def_366) 
        if @state.backtracking == 0
          stream_T__40.add(string_literal23)
        end
        __NAME24__ = match(NAME, TOKENS_FOLLOWING_NAME_IN_func_def_368) 
        if @state.backtracking == 0
          stream_NAME.add(__NAME24__)
        end
        __LPAREN25__ = match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_func_def_370) 
        if @state.backtracking == 0
          stream_LPAREN.add(__LPAREN25__)
        end
        # at line 164:34: ( var_args_list )?
        alt_12 = 2
        look_12_0 = @input.peek(1)

        if (look_12_0 == LPAREN || look_12_0 == NAME || look_12_0.between?(T__43, T__44)) 
          alt_12 = 1
        end
        case alt_12
        when 1
          # at line 164:34: var_args_list
          @state.following.push(TOKENS_FOLLOWING_var_args_list_IN_func_def_372)
          var_args_list26 = var_args_list
          @state.following.pop
          if @state.backtracking == 0
            stream_var_args_list.add(var_args_list26.tree)
          end

        end
        __RPAREN27__ = match(RPAREN, TOKENS_FOLLOWING_RPAREN_IN_func_def_375) 
        if @state.backtracking == 0
          stream_RPAREN.add(__RPAREN27__)
        end
        char_literal28 = match(T__41, TOKENS_FOLLOWING_T__41_IN_func_def_377) 
        if @state.backtracking == 0
          stream_T__41.add(char_literal28)
        end
        @state.following.push(TOKENS_FOLLOWING_suite_IN_func_def_379)
        suite29 = suite
        @state.following.pop
        if @state.backtracking == 0
          stream_suite.add(suite29.tree)
        end
        # AST Rewrite
        # elements: NAME, T__40, suite, var_args_list, decoration
        # token labels: 
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 
        if @state.backtracking == 0

          return_value.tree = root_0
          stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

          root_0 = @adaptor.create_flat_list!
          # 165:5: -> ^( 'def' decoration NAME ( var_args_list )? suite )
          # at line 165:8: ^( 'def' decoration NAME ( var_args_list )? suite )
          root_1 = @adaptor.create_flat_list!
          root_1 = @adaptor.become_root(stream_T__40.next_node, root_1)

          @adaptor.add_child(root_1, stream_decoration.next_tree)
          @adaptor.add_child(root_1, stream_NAME.next_node)
          # at line 165:33: ( var_args_list )?
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
        # trace_out(__method__, 7)

      end
      
      return return_value
    end

    ParametersReturnValue = define_return_scope 

    # 
    # parser rule parameters
    # 
    # (in samples/Python.g)
    # 168:1: parameters : LPAREN ( var_args_list )? RPAREN ;
    # 
    def parameters
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 8)
      return_value = ParametersReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __LPAREN30__ = nil
      __RPAREN32__ = nil
      var_args_list31 = nil

      tree_for_LPAREN30 = nil
      tree_for_RPAREN32 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 169:5: LPAREN ( var_args_list )? RPAREN
        __LPAREN30__ = match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_parameters_413)
        if @state.backtracking == 0

          tree_for_LPAREN30 = @adaptor.create_with_payload!(__LPAREN30__)
          @adaptor.add_child(root_0, tree_for_LPAREN30)

        end
        # at line 169:12: ( var_args_list )?
        alt_13 = 2
        look_13_0 = @input.peek(1)

        if (look_13_0 == LPAREN || look_13_0 == NAME || look_13_0.between?(T__43, T__44)) 
          alt_13 = 1
        end
        case alt_13
        when 1
          # at line 169:12: var_args_list
          @state.following.push(TOKENS_FOLLOWING_var_args_list_IN_parameters_415)
          var_args_list31 = var_args_list
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, var_args_list31.tree)
          end

        end
        __RPAREN32__ = match(RPAREN, TOKENS_FOLLOWING_RPAREN_IN_parameters_418)
        if @state.backtracking == 0

          tree_for_RPAREN32 = @adaptor.create_with_payload!(__RPAREN32__)
          @adaptor.add_child(root_0, tree_for_RPAREN32)

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

    # 
    # parser rule var_args_list
    # 
    # (in samples/Python.g)
    # 172:1: var_args_list : ( ( def_parameter ( ',' def_parameter )* -> ( ^( def_parameter ) )+ ) ( ',' ( '*' single= NAME ( ',' '**' double= NAME -> $var_args_list ^( '*' $single) ^( '**' $double) | -> $var_args_list ^( '*' $single) ) | '**' double= NAME -> $var_args_list ^( '**' $double) )? )? -> ^( PARAMS $var_args_list) | '*' single= NAME ( ',' '**' double= NAME -> ^( PARAMS ^( '*' $single) ^( '**' $double) ) | -> ^( PARAMS ^( '*' $single) ) ) | '**' NAME -> ^( PARAMS ^( '**' NAME ) ) );
    # 
    def var_args_list
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 9)
      return_value = VarArgsListReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      single = nil
      double = nil
      char_literal34 = nil
      char_literal36 = nil
      char_literal37 = nil
      char_literal38 = nil
      string_literal39 = nil
      string_literal40 = nil
      char_literal41 = nil
      char_literal42 = nil
      string_literal43 = nil
      string_literal44 = nil
      __NAME45__ = nil
      def_parameter33 = nil
      def_parameter35 = nil

      tree_for_single = nil
      tree_for_double = nil
      tree_for_char_literal34 = nil
      tree_for_char_literal36 = nil
      tree_for_char_literal37 = nil
      tree_for_char_literal38 = nil
      tree_for_string_literal39 = nil
      tree_for_string_literal40 = nil
      tree_for_char_literal41 = nil
      tree_for_char_literal42 = nil
      tree_for_string_literal43 = nil
      tree_for_string_literal44 = nil
      tree_for_NAME45 = nil
      stream_T__42 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__42")
      stream_T__43 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__43")
      stream_NAME = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token NAME")
      stream_T__44 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__44")
      stream_def_parameter = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule def_parameter")
      begin
        # at line 173:3: ( ( def_parameter ( ',' def_parameter )* -> ( ^( def_parameter ) )+ ) ( ',' ( '*' single= NAME ( ',' '**' double= NAME -> $var_args_list ^( '*' $single) ^( '**' $double) | -> $var_args_list ^( '*' $single) ) | '**' double= NAME -> $var_args_list ^( '**' $double) )? )? -> ^( PARAMS $var_args_list) | '*' single= NAME ( ',' '**' double= NAME -> ^( PARAMS ^( '*' $single) ^( '**' $double) ) | -> ^( PARAMS ^( '*' $single) ) ) | '**' NAME -> ^( PARAMS ^( '**' NAME ) ) )
        alt_19 = 3
        case look_19 = @input.peek(1)
        when LPAREN, NAME then alt_19 = 1
        when T__43 then alt_19 = 2
        when T__44 then alt_19 = 3
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          nvae = NoViableAlternative("", 19, 0)
          raise nvae
        end
        case alt_19
        when 1
          # at line 173:5: ( def_parameter ( ',' def_parameter )* -> ( ^( def_parameter ) )+ ) ( ',' ( '*' single= NAME ( ',' '**' double= NAME -> $var_args_list ^( '*' $single) ^( '**' $double) | -> $var_args_list ^( '*' $single) ) | '**' double= NAME -> $var_args_list ^( '**' $double) )? )?
          # at line 173:5: ( def_parameter ( ',' def_parameter )* -> ( ^( def_parameter ) )+ )
          # at line 173:7: def_parameter ( ',' def_parameter )*
          @state.following.push(TOKENS_FOLLOWING_def_parameter_IN_var_args_list_433)
          def_parameter33 = def_parameter
          @state.following.pop
          if @state.backtracking == 0
            stream_def_parameter.add(def_parameter33.tree)
          end
          # at line 173:21: ( ',' def_parameter )*
          loop do # decision 14
            alt_14 = 2
            look_14_0 = @input.peek(1)

            if (look_14_0 == T__42) 
              look_14_1 = @input.peek(2)

              if (look_14_1 == LPAREN || look_14_1 == NAME) 
                alt_14 = 1

              end

            end
            case alt_14
            when 1
              # at line 173:23: ',' def_parameter
              char_literal34 = match(T__42, TOKENS_FOLLOWING_T__42_IN_var_args_list_437) 
              if @state.backtracking == 0
                stream_T__42.add(char_literal34)
              end
              @state.following.push(TOKENS_FOLLOWING_def_parameter_IN_var_args_list_439)
              def_parameter35 = def_parameter
              @state.following.pop
              if @state.backtracking == 0
                stream_def_parameter.add(def_parameter35.tree)
              end

            else
              break # out of loop for decision 14
            end
          end # loop for decision 14
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
            # 173:44: -> ( ^( def_parameter ) )+
            # at line 173:47: ( ^( def_parameter ) )+
            unless stream_def_parameter.has_next?
              raise ANTLR3::RewriteEarlyExit
            end

            while stream_def_parameter.has_next?
              # at line 173:47: ^( def_parameter )
              root_1 = @adaptor.create_flat_list!
              root_1 = @adaptor.become_root(stream_def_parameter.next_node(), root_1)

              @adaptor.add_child(root_0, root_1)

            end

            stream_def_parameter.reset



            return_value.tree = root_0

          end
          # at line 174:5: ( ',' ( '*' single= NAME ( ',' '**' double= NAME -> $var_args_list ^( '*' $single) ^( '**' $double) | -> $var_args_list ^( '*' $single) ) | '**' double= NAME -> $var_args_list ^( '**' $double) )? )?
          alt_17 = 2
          look_17_0 = @input.peek(1)

          if (look_17_0 == T__42) 
            alt_17 = 1
          end
          case alt_17
          when 1
            # at line 174:7: ',' ( '*' single= NAME ( ',' '**' double= NAME -> $var_args_list ^( '*' $single) ^( '**' $double) | -> $var_args_list ^( '*' $single) ) | '**' double= NAME -> $var_args_list ^( '**' $double) )?
            char_literal36 = match(T__42, TOKENS_FOLLOWING_T__42_IN_var_args_list_461) 
            if @state.backtracking == 0
              stream_T__42.add(char_literal36)
            end
            # at line 175:7: ( '*' single= NAME ( ',' '**' double= NAME -> $var_args_list ^( '*' $single) ^( '**' $double) | -> $var_args_list ^( '*' $single) ) | '**' double= NAME -> $var_args_list ^( '**' $double) )?
            alt_16 = 3
            look_16_0 = @input.peek(1)

            if (look_16_0 == T__43) 
              alt_16 = 1
            elsif (look_16_0 == T__44) 
              alt_16 = 2
            end
            case alt_16
            when 1
              # at line 175:9: '*' single= NAME ( ',' '**' double= NAME -> $var_args_list ^( '*' $single) ^( '**' $double) | -> $var_args_list ^( '*' $single) )
              char_literal37 = match(T__43, TOKENS_FOLLOWING_T__43_IN_var_args_list_471) 
              if @state.backtracking == 0
                stream_T__43.add(char_literal37)
              end
              single = match(NAME, TOKENS_FOLLOWING_NAME_IN_var_args_list_475) 
              if @state.backtracking == 0
                stream_NAME.add(single)
              end
              # at line 176:9: ( ',' '**' double= NAME -> $var_args_list ^( '*' $single) ^( '**' $double) | -> $var_args_list ^( '*' $single) )
              alt_15 = 2
              look_15_0 = @input.peek(1)

              if (look_15_0 == T__42) 
                alt_15 = 1
              elsif (look_15_0 == RPAREN || look_15_0 == T__41) 
                alt_15 = 2
              else
                @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
              nvae = NoViableAlternative("", 15, 0)
                raise nvae
              end
              case alt_15
              when 1
                # at line 176:11: ',' '**' double= NAME
                char_literal38 = match(T__42, TOKENS_FOLLOWING_T__42_IN_var_args_list_487) 
                if @state.backtracking == 0
                  stream_T__42.add(char_literal38)
                end
                string_literal39 = match(T__44, TOKENS_FOLLOWING_T__44_IN_var_args_list_489) 
                if @state.backtracking == 0
                  stream_T__44.add(string_literal39)
                end
                double = match(NAME, TOKENS_FOLLOWING_NAME_IN_var_args_list_493) 
                if @state.backtracking == 0
                  stream_NAME.add(double)
                end
                # AST Rewrite
                # elements: var_args_list, T__44, T__43, double, single
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
                  # 176:32: -> $var_args_list ^( '*' $single) ^( '**' $double)
                  @adaptor.add_child(root_0, stream_return_value.next_tree)
                  # at line 176:50: ^( '*' $single)
                  root_1 = @adaptor.create_flat_list!
                  root_1 = @adaptor.become_root(stream_T__43.next_node, root_1)

                  @adaptor.add_child(root_1, stream_single.next_node)

                  @adaptor.add_child(root_0, root_1)
                  # at line 176:67: ^( '**' $double)
                  root_1 = @adaptor.create_flat_list!
                  root_1 = @adaptor.become_root(stream_T__44.next_node, root_1)

                  @adaptor.add_child(root_1, stream_double.next_node)

                  @adaptor.add_child(root_0, root_1)



                  return_value.tree = root_0

                end
              when 2
                # at line 177:32: 
                # AST Rewrite
                # elements: T__43, var_args_list, single
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
                  # 177:32: -> $var_args_list ^( '*' $single)
                  @adaptor.add_child(root_0, stream_return_value.next_tree)
                  # at line 177:50: ^( '*' $single)
                  root_1 = @adaptor.create_flat_list!
                  root_1 = @adaptor.become_root(stream_T__43.next_node, root_1)

                  @adaptor.add_child(root_1, stream_single.next_node)

                  @adaptor.add_child(root_0, root_1)



                  return_value.tree = root_0

                end
              end

            when 2
              # at line 179:9: '**' double= NAME
              string_literal40 = match(T__44, TOKENS_FOLLOWING_T__44_IN_var_args_list_581) 
              if @state.backtracking == 0
                stream_T__44.add(string_literal40)
              end
              double = match(NAME, TOKENS_FOLLOWING_NAME_IN_var_args_list_585) 
              if @state.backtracking == 0
                stream_NAME.add(double)
              end
              # AST Rewrite
              # elements: var_args_list, T__44, double
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
                # 179:32: -> $var_args_list ^( '**' $double)
                @adaptor.add_child(root_0, stream_return_value.next_tree)
                # at line 179:50: ^( '**' $double)
                root_1 = @adaptor.create_flat_list!
                root_1 = @adaptor.become_root(stream_T__44.next_node, root_1)

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
            # 181:8: -> ^( PARAMS $var_args_list)
            # at line 181:11: ^( PARAMS $var_args_list)
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(@adaptor.create_from_type!(PARAMS, "PARAMS"), root_1)

            @adaptor.add_child(root_1, stream_return_value.next_tree)

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 2
          # at line 182:5: '*' single= NAME ( ',' '**' double= NAME -> ^( PARAMS ^( '*' $single) ^( '**' $double) ) | -> ^( PARAMS ^( '*' $single) ) )
          char_literal41 = match(T__43, TOKENS_FOLLOWING_T__43_IN_var_args_list_638) 
          if @state.backtracking == 0
            stream_T__43.add(char_literal41)
          end
          single = match(NAME, TOKENS_FOLLOWING_NAME_IN_var_args_list_642) 
          if @state.backtracking == 0
            stream_NAME.add(single)
          end
          # at line 183:5: ( ',' '**' double= NAME -> ^( PARAMS ^( '*' $single) ^( '**' $double) ) | -> ^( PARAMS ^( '*' $single) ) )
          alt_18 = 2
          look_18_0 = @input.peek(1)

          if (look_18_0 == T__42) 
            alt_18 = 1
          elsif (look_18_0 == RPAREN || look_18_0 == T__41) 
            alt_18 = 2
          else
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
          nvae = NoViableAlternative("", 18, 0)
            raise nvae
          end
          case alt_18
          when 1
            # at line 183:7: ',' '**' double= NAME
            char_literal42 = match(T__42, TOKENS_FOLLOWING_T__42_IN_var_args_list_651) 
            if @state.backtracking == 0
              stream_T__42.add(char_literal42)
            end
            string_literal43 = match(T__44, TOKENS_FOLLOWING_T__44_IN_var_args_list_653) 
            if @state.backtracking == 0
              stream_T__44.add(string_literal43)
            end
            double = match(NAME, TOKENS_FOLLOWING_NAME_IN_var_args_list_657) 
            if @state.backtracking == 0
              stream_NAME.add(double)
            end
            # AST Rewrite
            # elements: double, T__44, single, T__43
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
              # 183:28: -> ^( PARAMS ^( '*' $single) ^( '**' $double) )
              # at line 183:31: ^( PARAMS ^( '*' $single) ^( '**' $double) )
              root_1 = @adaptor.create_flat_list!
              root_1 = @adaptor.become_root(@adaptor.create_from_type!(PARAMS, "PARAMS"), root_1)

              # at line 183:41: ^( '*' $single)
              root_2 = @adaptor.create_flat_list!
              root_2 = @adaptor.become_root(stream_T__43.next_node, root_2)

              @adaptor.add_child(root_2, stream_single.next_node)

              @adaptor.add_child(root_1, root_2)
              # at line 183:58: ^( '**' $double)
              root_2 = @adaptor.create_flat_list!
              root_2 = @adaptor.become_root(stream_T__44.next_node, root_2)

              @adaptor.add_child(root_2, stream_double.next_node)

              @adaptor.add_child(root_1, root_2)

              @adaptor.add_child(root_0, root_1)



              return_value.tree = root_0

            end
          when 2
            # at line 184:28: 
            # AST Rewrite
            # elements: T__43, single
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
              # 184:28: -> ^( PARAMS ^( '*' $single) )
              # at line 184:31: ^( PARAMS ^( '*' $single) )
              root_1 = @adaptor.create_flat_list!
              root_1 = @adaptor.become_root(@adaptor.create_from_type!(PARAMS, "PARAMS"), root_1)

              # at line 184:41: ^( '*' $single)
              root_2 = @adaptor.create_flat_list!
              root_2 = @adaptor.become_root(stream_T__43.next_node, root_2)

              @adaptor.add_child(root_2, stream_single.next_node)

              @adaptor.add_child(root_1, root_2)

              @adaptor.add_child(root_0, root_1)



              return_value.tree = root_0

            end
          end

        when 3
          # at line 186:5: '**' NAME
          string_literal44 = match(T__44, TOKENS_FOLLOWING_T__44_IN_var_args_list_739) 
          if @state.backtracking == 0
            stream_T__44.add(string_literal44)
          end
          __NAME45__ = match(NAME, TOKENS_FOLLOWING_NAME_IN_var_args_list_741) 
          if @state.backtracking == 0
            stream_NAME.add(__NAME45__)
          end
          # AST Rewrite
          # elements: NAME, T__44
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

            root_0 = @adaptor.create_flat_list!
            # 186:15: -> ^( PARAMS ^( '**' NAME ) )
            # at line 186:18: ^( PARAMS ^( '**' NAME ) )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(@adaptor.create_from_type!(PARAMS, "PARAMS"), root_1)

            # at line 186:28: ^( '**' NAME )
            root_2 = @adaptor.create_flat_list!
            root_2 = @adaptor.become_root(stream_T__44.next_node, root_2)

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
        # trace_out(__method__, 9)

      end
      
      return return_value
    end

    DefParameterReturnValue = define_return_scope 

    # 
    # parser rule def_parameter
    # 
    # (in samples/Python.g)
    # 189:1: def_parameter : fp_def ( '=' test )? ;
    # 
    def def_parameter
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 10)
      return_value = DefParameterReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal47 = nil
      fp_def46 = nil
      test48 = nil

      tree_for_char_literal47 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 190:5: fp_def ( '=' test )?
        @state.following.push(TOKENS_FOLLOWING_fp_def_IN_def_parameter_770)
        fp_def46 = fp_def
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, fp_def46.tree)
        end
        # at line 190:12: ( '=' test )?
        alt_20 = 2
        look_20_0 = @input.peek(1)

        if (look_20_0 == T__45) 
          alt_20 = 1
        end
        case alt_20
        when 1
          # at line 190:14: '=' test
          char_literal47 = match(T__45, TOKENS_FOLLOWING_T__45_IN_def_parameter_774)
          if @state.backtracking == 0

            tree_for_char_literal47 = @adaptor.create_with_payload!(char_literal47)
            root_0 = @adaptor.become_root(tree_for_char_literal47, root_0)

          end
          @state.following.push(TOKENS_FOLLOWING_test_IN_def_parameter_777)
          test48 = test
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, test48.tree)
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

    # 
    # parser rule fp_def
    # 
    # (in samples/Python.g)
    # 193:1: fp_def : ( NAME | LPAREN fp_list RPAREN );
    # 
    def fp_def
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 11)
      return_value = FpDefReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __NAME49__ = nil
      __LPAREN50__ = nil
      __RPAREN52__ = nil
      fp_list51 = nil

      tree_for_NAME49 = nil
      tree_for_LPAREN50 = nil
      tree_for_RPAREN52 = nil

      begin
        # at line 194:3: ( NAME | LPAREN fp_list RPAREN )
        alt_21 = 2
        look_21_0 = @input.peek(1)

        if (look_21_0 == NAME) 
          alt_21 = 1
        elsif (look_21_0 == LPAREN) 
          alt_21 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 21, 0)
          raise nvae
        end
        case alt_21
        when 1
          root_0 = @adaptor.create_flat_list!


          # at line 194:5: NAME
          __NAME49__ = match(NAME, TOKENS_FOLLOWING_NAME_IN_fp_def_793)
          if @state.backtracking == 0

            tree_for_NAME49 = @adaptor.create_with_payload!(__NAME49__)
            @adaptor.add_child(root_0, tree_for_NAME49)

          end

        when 2
          root_0 = @adaptor.create_flat_list!


          # at line 195:5: LPAREN fp_list RPAREN
          __LPAREN50__ = match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_fp_def_799)
          @state.following.push(TOKENS_FOLLOWING_fp_list_IN_fp_def_802)
          fp_list51 = fp_list
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, fp_list51.tree)
          end
          __RPAREN52__ = match(RPAREN, TOKENS_FOLLOWING_RPAREN_IN_fp_def_804)

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

    # 
    # parser rule fp_list
    # 
    # (in samples/Python.g)
    # 198:1: fp_list : fp_def ( ',' fp_def )* ( ',' )? -> ^( PARAM_TUPLE ( fp_def )+ ) ;
    # 
    def fp_list
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 12)
      return_value = FpListReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal54 = nil
      char_literal56 = nil
      fp_def53 = nil
      fp_def55 = nil

      tree_for_char_literal54 = nil
      tree_for_char_literal56 = nil
      stream_T__42 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__42")
      stream_fp_def = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule fp_def")
      begin
        # at line 199:5: fp_def ( ',' fp_def )* ( ',' )?
        @state.following.push(TOKENS_FOLLOWING_fp_def_IN_fp_list_818)
        fp_def53 = fp_def
        @state.following.pop
        if @state.backtracking == 0
          stream_fp_def.add(fp_def53.tree)
        end
        # at line 199:12: ( ',' fp_def )*
        loop do # decision 22
          alt_22 = 2
          look_22_0 = @input.peek(1)

          if (look_22_0 == T__42) 
            look_22_1 = @input.peek(2)

            if (look_22_1 == LPAREN || look_22_1 == NAME) 
              alt_22 = 1

            end

          end
          case alt_22
          when 1
            # at line 199:14: ',' fp_def
            char_literal54 = match(T__42, TOKENS_FOLLOWING_T__42_IN_fp_list_822) 
            if @state.backtracking == 0
              stream_T__42.add(char_literal54)
            end
            @state.following.push(TOKENS_FOLLOWING_fp_def_IN_fp_list_824)
            fp_def55 = fp_def
            @state.following.pop
            if @state.backtracking == 0
              stream_fp_def.add(fp_def55.tree)
            end

          else
            break # out of loop for decision 22
          end
        end # loop for decision 22
        # at line 199:28: ( ',' )?
        alt_23 = 2
        look_23_0 = @input.peek(1)

        if (look_23_0 == T__42) 
          alt_23 = 1
        end
        case alt_23
        when 1
          # at line 199:28: ','
          char_literal56 = match(T__42, TOKENS_FOLLOWING_T__42_IN_fp_list_829) 
          if @state.backtracking == 0
            stream_T__42.add(char_literal56)
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
          # 199:33: -> ^( PARAM_TUPLE ( fp_def )+ )
          # at line 199:36: ^( PARAM_TUPLE ( fp_def )+ )
          root_1 = @adaptor.create_flat_list!
          root_1 = @adaptor.become_root(@adaptor.create_from_type!(PARAM_TUPLE, "PARAM_TUPLE"), root_1)

          # at line 199:51: ( fp_def )+
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
        # trace_out(__method__, 12)

      end
      
      return return_value
    end

    StatementReturnValue = define_return_scope 

    # 
    # parser rule statement
    # 
    # (in samples/Python.g)
    # 202:1: statement : ( simple_statement | compound_statement );
    # 
    def statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 13)
      return_value = StatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      simple_statement57 = nil
      compound_statement58 = nil


      begin
        # at line 203:3: ( simple_statement | compound_statement )
        alt_24 = 2
        look_24_0 = @input.peek(1)

        if (look_24_0.between?(LONGINT, COMPLEX) || look_24_0 == LPAREN || look_24_0.between?(NAME, LBRACK) || look_24_0 == LCURLY || look_24_0.between?(INT, STRING) || look_24_0 == T__59 || look_24_0.between?(T__61, T__68) || look_24_0.between?(T__70, T__71) || look_24_0 == T__73 || look_24_0 == T__85 || look_24_0.between?(T__98, T__99) || look_24_0.between?(T__103, T__105) || look_24_0 == T__107) 
          alt_24 = 1
        elsif (look_24_0 == T__38 || look_24_0 == T__40 || look_24_0 == T__74 || look_24_0.between?(T__77, T__79) || look_24_0 == T__81 || look_24_0 == T__106) 
          alt_24 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 24, 0)
          raise nvae
        end
        case alt_24
        when 1
          root_0 = @adaptor.create_flat_list!


          # at line 203:5: simple_statement
          @state.following.push(TOKENS_FOLLOWING_simple_statement_IN_statement_854)
          simple_statement57 = simple_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, simple_statement57.tree)
          end

        when 2
          root_0 = @adaptor.create_flat_list!


          # at line 204:5: compound_statement
          @state.following.push(TOKENS_FOLLOWING_compound_statement_IN_statement_860)
          compound_statement58 = compound_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, compound_statement58.tree)
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

    # 
    # parser rule simple_statement
    # 
    # (in samples/Python.g)
    # 207:1: simple_statement : small_statement ( ';' small_statement )* ( ';' )? NEWLINE -> ( small_statement )+ ;
    # 
    def simple_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 14)
      return_value = SimpleStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal60 = nil
      char_literal62 = nil
      __NEWLINE63__ = nil
      small_statement59 = nil
      small_statement61 = nil

      tree_for_char_literal60 = nil
      tree_for_char_literal62 = nil
      tree_for_NEWLINE63 = nil
      stream_T__46 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__46")
      stream_NEWLINE = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token NEWLINE")
      stream_small_statement = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule small_statement")
      begin
        # at line 208:5: small_statement ( ';' small_statement )* ( ';' )? NEWLINE
        @state.following.push(TOKENS_FOLLOWING_small_statement_IN_simple_statement_873)
        small_statement59 = small_statement
        @state.following.pop
        if @state.backtracking == 0
          stream_small_statement.add(small_statement59.tree)
        end
        # at line 209:5: ( ';' small_statement )*
        loop do # decision 25
          alt_25 = 2
          look_25_0 = @input.peek(1)

          if (look_25_0 == T__46) 
            look_25_1 = @input.peek(2)

            if (look_25_1.between?(LONGINT, COMPLEX) || look_25_1 == LPAREN || look_25_1.between?(NAME, LBRACK) || look_25_1 == LCURLY || look_25_1.between?(INT, STRING) || look_25_1 == T__59 || look_25_1.between?(T__61, T__68) || look_25_1.between?(T__70, T__71) || look_25_1 == T__73 || look_25_1 == T__85 || look_25_1.between?(T__98, T__99) || look_25_1.between?(T__103, T__105) || look_25_1 == T__107) 
              alt_25 = 1

            end

          end
          case alt_25
          when 1
            # at line 209:7: ';' small_statement
            char_literal60 = match(T__46, TOKENS_FOLLOWING_T__46_IN_simple_statement_882) 
            if @state.backtracking == 0
              stream_T__46.add(char_literal60)
            end
            @state.following.push(TOKENS_FOLLOWING_small_statement_IN_simple_statement_884)
            small_statement61 = small_statement
            @state.following.pop
            if @state.backtracking == 0
              stream_small_statement.add(small_statement61.tree)
            end

          else
            break # out of loop for decision 25
          end
        end # loop for decision 25
        # at line 210:5: ( ';' )?
        alt_26 = 2
        look_26_0 = @input.peek(1)

        if (look_26_0 == T__46) 
          alt_26 = 1
        end
        case alt_26
        when 1
          # at line 210:5: ';'
          char_literal62 = match(T__46, TOKENS_FOLLOWING_T__46_IN_simple_statement_894) 
          if @state.backtracking == 0
            stream_T__46.add(char_literal62)
          end

        end
        __NEWLINE63__ = match(NEWLINE, TOKENS_FOLLOWING_NEWLINE_IN_simple_statement_897) 
        if @state.backtracking == 0
          stream_NEWLINE.add(__NEWLINE63__)
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
          # 211:5: -> ( small_statement )+
          # at line 211:8: ( small_statement )+
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
        # trace_out(__method__, 14)

      end
      
      return return_value
    end

    SmallStatementReturnValue = define_return_scope 

    # 
    # parser rule small_statement
    # 
    # (in samples/Python.g)
    # 214:1: small_statement : ( expr_statement | print_statement | del_statement | pass_statement | flow_statement | import_statement | global_statement | exec_statement | assert_statement );
    # 
    def small_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 15)
      return_value = SmallStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      expr_statement64 = nil
      print_statement65 = nil
      del_statement66 = nil
      pass_statement67 = nil
      flow_statement68 = nil
      import_statement69 = nil
      global_statement70 = nil
      exec_statement71 = nil
      assert_statement72 = nil


      begin
        # at line 215:3: ( expr_statement | print_statement | del_statement | pass_statement | flow_statement | import_statement | global_statement | exec_statement | assert_statement )
        alt_27 = 9
        case look_27 = @input.peek(1)
        when LONGINT, COMPLEX, LPAREN, NAME, LBRACK, LCURLY, INT, FLOAT, STRING, T__85, T__98, T__99, T__103, T__104, T__105 then alt_27 = 1
        when T__59 then alt_27 = 2
        when T__61 then alt_27 = 3
        when T__62 then alt_27 = 4
        when T__63, T__64, T__65, T__66, T__107 then alt_27 = 5
        when T__67, T__68 then alt_27 = 6
        when T__70 then alt_27 = 7
        when T__71 then alt_27 = 8
        when T__73 then alt_27 = 9
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          nvae = NoViableAlternative("", 27, 0)
          raise nvae
        end
        case alt_27
        when 1
          root_0 = @adaptor.create_flat_list!


          # at line 215:5: expr_statement
          @state.following.push(TOKENS_FOLLOWING_expr_statement_IN_small_statement_919)
          expr_statement64 = expr_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, expr_statement64.tree)
          end

        when 2
          root_0 = @adaptor.create_flat_list!


          # at line 216:5: print_statement
          @state.following.push(TOKENS_FOLLOWING_print_statement_IN_small_statement_925)
          print_statement65 = print_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, print_statement65.tree)
          end

        when 3
          root_0 = @adaptor.create_flat_list!


          # at line 217:5: del_statement
          @state.following.push(TOKENS_FOLLOWING_del_statement_IN_small_statement_931)
          del_statement66 = del_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, del_statement66.tree)
          end

        when 4
          root_0 = @adaptor.create_flat_list!


          # at line 218:5: pass_statement
          @state.following.push(TOKENS_FOLLOWING_pass_statement_IN_small_statement_937)
          pass_statement67 = pass_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, pass_statement67.tree)
          end

        when 5
          root_0 = @adaptor.create_flat_list!


          # at line 219:5: flow_statement
          @state.following.push(TOKENS_FOLLOWING_flow_statement_IN_small_statement_943)
          flow_statement68 = flow_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, flow_statement68.tree)
          end

        when 6
          root_0 = @adaptor.create_flat_list!


          # at line 220:5: import_statement
          @state.following.push(TOKENS_FOLLOWING_import_statement_IN_small_statement_949)
          import_statement69 = import_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, import_statement69.tree)
          end

        when 7
          root_0 = @adaptor.create_flat_list!


          # at line 221:5: global_statement
          @state.following.push(TOKENS_FOLLOWING_global_statement_IN_small_statement_955)
          global_statement70 = global_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, global_statement70.tree)
          end

        when 8
          root_0 = @adaptor.create_flat_list!


          # at line 222:5: exec_statement
          @state.following.push(TOKENS_FOLLOWING_exec_statement_IN_small_statement_961)
          exec_statement71 = exec_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, exec_statement71.tree)
          end

        when 9
          root_0 = @adaptor.create_flat_list!


          # at line 223:5: assert_statement
          @state.following.push(TOKENS_FOLLOWING_assert_statement_IN_small_statement_967)
          assert_statement72 = assert_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, assert_statement72.tree)
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

    # 
    # parser rule expr_statement
    # 
    # (in samples/Python.g)
    # 226:1: expr_statement : test_list ( ( '+=' | '-=' | '*=' | '/=' | '%=' | '&=' | '|=' | '^=' | '<<=' | '>>=' | '**=' | '//=' ) ( yield_expr | test_list ) | ( '=' ( test_list | yield_expr ) )+ )? ;
    # 
    def expr_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 16)
      return_value = ExprStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal74 = nil
      string_literal75 = nil
      string_literal76 = nil
      string_literal77 = nil
      string_literal78 = nil
      string_literal79 = nil
      string_literal80 = nil
      string_literal81 = nil
      string_literal82 = nil
      string_literal83 = nil
      string_literal84 = nil
      string_literal85 = nil
      char_literal88 = nil
      test_list73 = nil
      yield_expr86 = nil
      test_list87 = nil
      test_list89 = nil
      yield_expr90 = nil

      tree_for_string_literal74 = nil
      tree_for_string_literal75 = nil
      tree_for_string_literal76 = nil
      tree_for_string_literal77 = nil
      tree_for_string_literal78 = nil
      tree_for_string_literal79 = nil
      tree_for_string_literal80 = nil
      tree_for_string_literal81 = nil
      tree_for_string_literal82 = nil
      tree_for_string_literal83 = nil
      tree_for_string_literal84 = nil
      tree_for_string_literal85 = nil
      tree_for_char_literal88 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 227:5: test_list ( ( '+=' | '-=' | '*=' | '/=' | '%=' | '&=' | '|=' | '^=' | '<<=' | '>>=' | '**=' | '//=' ) ( yield_expr | test_list ) | ( '=' ( test_list | yield_expr ) )+ )?
        @state.following.push(TOKENS_FOLLOWING_test_list_IN_expr_statement_980)
        test_list73 = test_list
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, test_list73.tree)
        end
        # at line 228:5: ( ( '+=' | '-=' | '*=' | '/=' | '%=' | '&=' | '|=' | '^=' | '<<=' | '>>=' | '**=' | '//=' ) ( yield_expr | test_list ) | ( '=' ( test_list | yield_expr ) )+ )?
        alt_32 = 3
        look_32_0 = @input.peek(1)

        if (look_32_0.between?(T__47, T__58)) 
          alt_32 = 1
        elsif (look_32_0 == T__45) 
          alt_32 = 2
        end
        case alt_32
        when 1
          # at line 228:7: ( '+=' | '-=' | '*=' | '/=' | '%=' | '&=' | '|=' | '^=' | '<<=' | '>>=' | '**=' | '//=' ) ( yield_expr | test_list )
          # at line 228:7: ( '+=' | '-=' | '*=' | '/=' | '%=' | '&=' | '|=' | '^=' | '<<=' | '>>=' | '**=' | '//=' )
          alt_28 = 12
          case look_28 = @input.peek(1)
          when T__47 then alt_28 = 1
          when T__48 then alt_28 = 2
          when T__49 then alt_28 = 3
          when T__50 then alt_28 = 4
          when T__51 then alt_28 = 5
          when T__52 then alt_28 = 6
          when T__53 then alt_28 = 7
          when T__54 then alt_28 = 8
          when T__55 then alt_28 = 9
          when T__56 then alt_28 = 10
          when T__57 then alt_28 = 11
          when T__58 then alt_28 = 12
          else
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

            nvae = NoViableAlternative("", 28, 0)
            raise nvae
          end
          case alt_28
          when 1
            # at line 228:9: '+='
            string_literal74 = match(T__47, TOKENS_FOLLOWING_T__47_IN_expr_statement_990)
            if @state.backtracking == 0

              tree_for_string_literal74 = @adaptor.create_with_payload!(string_literal74)
              root_0 = @adaptor.become_root(tree_for_string_literal74, root_0)

            end

          when 2
            # at line 229:9: '-='
            string_literal75 = match(T__48, TOKENS_FOLLOWING_T__48_IN_expr_statement_1001)
            if @state.backtracking == 0

              tree_for_string_literal75 = @adaptor.create_with_payload!(string_literal75)
              root_0 = @adaptor.become_root(tree_for_string_literal75, root_0)

            end

          when 3
            # at line 230:9: '*='
            string_literal76 = match(T__49, TOKENS_FOLLOWING_T__49_IN_expr_statement_1012)
            if @state.backtracking == 0

              tree_for_string_literal76 = @adaptor.create_with_payload!(string_literal76)
              root_0 = @adaptor.become_root(tree_for_string_literal76, root_0)

            end

          when 4
            # at line 231:9: '/='
            string_literal77 = match(T__50, TOKENS_FOLLOWING_T__50_IN_expr_statement_1023)
            if @state.backtracking == 0

              tree_for_string_literal77 = @adaptor.create_with_payload!(string_literal77)
              root_0 = @adaptor.become_root(tree_for_string_literal77, root_0)

            end

          when 5
            # at line 232:9: '%='
            string_literal78 = match(T__51, TOKENS_FOLLOWING_T__51_IN_expr_statement_1034)
            if @state.backtracking == 0

              tree_for_string_literal78 = @adaptor.create_with_payload!(string_literal78)
              root_0 = @adaptor.become_root(tree_for_string_literal78, root_0)

            end

          when 6
            # at line 233:9: '&='
            string_literal79 = match(T__52, TOKENS_FOLLOWING_T__52_IN_expr_statement_1045)
            if @state.backtracking == 0

              tree_for_string_literal79 = @adaptor.create_with_payload!(string_literal79)
              root_0 = @adaptor.become_root(tree_for_string_literal79, root_0)

            end

          when 7
            # at line 234:9: '|='
            string_literal80 = match(T__53, TOKENS_FOLLOWING_T__53_IN_expr_statement_1056)
            if @state.backtracking == 0

              tree_for_string_literal80 = @adaptor.create_with_payload!(string_literal80)
              root_0 = @adaptor.become_root(tree_for_string_literal80, root_0)

            end

          when 8
            # at line 235:9: '^='
            string_literal81 = match(T__54, TOKENS_FOLLOWING_T__54_IN_expr_statement_1067)
            if @state.backtracking == 0

              tree_for_string_literal81 = @adaptor.create_with_payload!(string_literal81)
              root_0 = @adaptor.become_root(tree_for_string_literal81, root_0)

            end

          when 9
            # at line 236:9: '<<='
            string_literal82 = match(T__55, TOKENS_FOLLOWING_T__55_IN_expr_statement_1078)
            if @state.backtracking == 0

              tree_for_string_literal82 = @adaptor.create_with_payload!(string_literal82)
              root_0 = @adaptor.become_root(tree_for_string_literal82, root_0)

            end

          when 10
            # at line 237:9: '>>='
            string_literal83 = match(T__56, TOKENS_FOLLOWING_T__56_IN_expr_statement_1089)
            if @state.backtracking == 0

              tree_for_string_literal83 = @adaptor.create_with_payload!(string_literal83)
              root_0 = @adaptor.become_root(tree_for_string_literal83, root_0)

            end

          when 11
            # at line 238:9: '**='
            string_literal84 = match(T__57, TOKENS_FOLLOWING_T__57_IN_expr_statement_1100)
            if @state.backtracking == 0

              tree_for_string_literal84 = @adaptor.create_with_payload!(string_literal84)
              root_0 = @adaptor.become_root(tree_for_string_literal84, root_0)

            end

          when 12
            # at line 239:9: '//='
            string_literal85 = match(T__58, TOKENS_FOLLOWING_T__58_IN_expr_statement_1111)
            if @state.backtracking == 0

              tree_for_string_literal85 = @adaptor.create_with_payload!(string_literal85)
              root_0 = @adaptor.become_root(tree_for_string_literal85, root_0)

            end

          end
          # at line 241:7: ( yield_expr | test_list )
          alt_29 = 2
          look_29_0 = @input.peek(1)

          if (look_29_0 == T__107) 
            alt_29 = 1
          elsif (look_29_0.between?(LONGINT, COMPLEX) || look_29_0 == LPAREN || look_29_0.between?(NAME, LBRACK) || look_29_0 == LCURLY || look_29_0.between?(INT, STRING) || look_29_0 == T__85 || look_29_0.between?(T__98, T__99) || look_29_0.between?(T__103, T__105)) 
            alt_29 = 2
          else
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
          nvae = NoViableAlternative("", 29, 0)
            raise nvae
          end
          case alt_29
          when 1
            # at line 241:9: yield_expr
            @state.following.push(TOKENS_FOLLOWING_yield_expr_IN_expr_statement_1130)
            yield_expr86 = yield_expr
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, yield_expr86.tree)
            end

          when 2
            # at line 242:9: test_list
            @state.following.push(TOKENS_FOLLOWING_test_list_IN_expr_statement_1140)
            test_list87 = test_list
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, test_list87.tree)
            end

          end

        when 2
          # at line 244:7: ( '=' ( test_list | yield_expr ) )+
          # at file 244:7: ( '=' ( test_list | yield_expr ) )+
          match_count_31 = 0
          loop do
            alt_31 = 2
            look_31_0 = @input.peek(1)

            if (look_31_0 == T__45) 
              alt_31 = 1

            end
            case alt_31
            when 1
              # at line 244:9: '=' ( test_list | yield_expr )
              char_literal88 = match(T__45, TOKENS_FOLLOWING_T__45_IN_expr_statement_1158)
              if @state.backtracking == 0

                tree_for_char_literal88 = @adaptor.create_with_payload!(char_literal88)
                root_0 = @adaptor.become_root(tree_for_char_literal88, root_0)

              end
              # at line 244:14: ( test_list | yield_expr )
              alt_30 = 2
              look_30_0 = @input.peek(1)

              if (look_30_0.between?(LONGINT, COMPLEX) || look_30_0 == LPAREN || look_30_0.between?(NAME, LBRACK) || look_30_0 == LCURLY || look_30_0.between?(INT, STRING) || look_30_0 == T__85 || look_30_0.between?(T__98, T__99) || look_30_0.between?(T__103, T__105)) 
                alt_30 = 1
              elsif (look_30_0 == T__107) 
                alt_30 = 2
              else
                @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
              nvae = NoViableAlternative("", 30, 0)
                raise nvae
              end
              case alt_30
              when 1
                # at line 244:16: test_list
                @state.following.push(TOKENS_FOLLOWING_test_list_IN_expr_statement_1163)
                test_list89 = test_list
                @state.following.pop
                if @state.backtracking == 0
                  @adaptor.add_child(root_0, test_list89.tree)
                end

              when 2
                # at line 244:28: yield_expr
                @state.following.push(TOKENS_FOLLOWING_yield_expr_IN_expr_statement_1167)
                yield_expr90 = yield_expr
                @state.following.pop
                if @state.backtracking == 0
                  @adaptor.add_child(root_0, yield_expr90.tree)
                end

              end

            else
              match_count_31 > 0 and break
              @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

              eee = EarlyExit(31)


              raise eee
            end
            match_count_31 += 1
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

    PrintStatementReturnValue = define_return_scope 

    # 
    # parser rule print_statement
    # 
    # (in samples/Python.g)
    # 248:1: print_statement : 'print' ( test ( ',' test )* (no_nl= ',' )? -> ^( 'print' ( test )+ ( $no_nl)? ) | '>>' dev= test ( ',' obj= test )* (no_nl= ',' )? -> ^( 'print' ^( '>>' $dev) ( $obj)* ( $no_nl)? ) | -> ^( 'print' ) ) ;
    # 
    def print_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 17)
      return_value = PrintStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      no_nl = nil
      string_literal91 = nil
      char_literal93 = nil
      string_literal95 = nil
      char_literal96 = nil
      dev = nil
      obj = nil
      test92 = nil
      test94 = nil

      tree_for_no_nl = nil
      tree_for_string_literal91 = nil
      tree_for_char_literal93 = nil
      tree_for_string_literal95 = nil
      tree_for_char_literal96 = nil
      stream_T__42 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__42")
      stream_T__60 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__60")
      stream_T__59 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__59")
      stream_test = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule test")
      begin
        # at line 249:5: 'print' ( test ( ',' test )* (no_nl= ',' )? -> ^( 'print' ( test )+ ( $no_nl)? ) | '>>' dev= test ( ',' obj= test )* (no_nl= ',' )? -> ^( 'print' ^( '>>' $dev) ( $obj)* ( $no_nl)? ) | -> ^( 'print' ) )
        string_literal91 = match(T__59, TOKENS_FOLLOWING_T__59_IN_print_statement_1194) 
        if @state.backtracking == 0
          stream_T__59.add(string_literal91)
        end
        # at line 250:5: ( test ( ',' test )* (no_nl= ',' )? -> ^( 'print' ( test )+ ( $no_nl)? ) | '>>' dev= test ( ',' obj= test )* (no_nl= ',' )? -> ^( 'print' ^( '>>' $dev) ( $obj)* ( $no_nl)? ) | -> ^( 'print' ) )
        alt_37 = 3
        case look_37 = @input.peek(1)
        when LONGINT, COMPLEX, LPAREN, NAME, LBRACK, LCURLY, INT, FLOAT, STRING, T__85, T__98, T__99, T__103, T__104, T__105 then alt_37 = 1
        when T__60 then alt_37 = 2
        when NEWLINE, T__46 then alt_37 = 3
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          nvae = NoViableAlternative("", 37, 0)
          raise nvae
        end
        case alt_37
        when 1
          # at line 250:7: test ( ',' test )* (no_nl= ',' )?
          @state.following.push(TOKENS_FOLLOWING_test_IN_print_statement_1202)
          test92 = test
          @state.following.pop
          if @state.backtracking == 0
            stream_test.add(test92.tree)
          end
          # at line 250:12: ( ',' test )*
          loop do # decision 33
            alt_33 = 2
            look_33_0 = @input.peek(1)

            if (look_33_0 == T__42) 
              look_33_1 = @input.peek(2)

              if (look_33_1.between?(LONGINT, COMPLEX) || look_33_1 == LPAREN || look_33_1.between?(NAME, LBRACK) || look_33_1 == LCURLY || look_33_1.between?(INT, STRING) || look_33_1 == T__85 || look_33_1.between?(T__98, T__99) || look_33_1.between?(T__103, T__105)) 
                alt_33 = 1

              end

            end
            case alt_33
            when 1
              # at line 250:14: ',' test
              char_literal93 = match(T__42, TOKENS_FOLLOWING_T__42_IN_print_statement_1206) 
              if @state.backtracking == 0
                stream_T__42.add(char_literal93)
              end
              @state.following.push(TOKENS_FOLLOWING_test_IN_print_statement_1208)
              test94 = test
              @state.following.pop
              if @state.backtracking == 0
                stream_test.add(test94.tree)
              end

            else
              break # out of loop for decision 33
            end
          end # loop for decision 33
          # at line 250:32: (no_nl= ',' )?
          alt_34 = 2
          look_34_0 = @input.peek(1)

          if (look_34_0 == T__42) 
            alt_34 = 1
          end
          case alt_34
          when 1
            # at line 250:32: no_nl= ','
            no_nl = match(T__42, TOKENS_FOLLOWING_T__42_IN_print_statement_1216) 
            if @state.backtracking == 0
              stream_T__42.add(no_nl)
            end

          end
          # AST Rewrite
          # elements: T__59, test, no_nl
          # token labels: no_nl
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_no_nl = token_stream("token no_nl", no_nl)
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

            root_0 = @adaptor.create_flat_list!
            # 250:50: -> ^( 'print' ( test )+ ( $no_nl)? )
            # at line 250:53: ^( 'print' ( test )+ ( $no_nl)? )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(stream_T__59.next_node, root_1)

            # at line 250:64: ( test )+
            unless stream_test.has_next?
              raise ANTLR3::RewriteEarlyExit
            end

            while stream_test.has_next?
              @adaptor.add_child(root_1, stream_test.next_tree)

            end

            stream_test.reset
            # at line 250:70: ( $no_nl)?
            if stream_no_nl.has_next?
              @adaptor.add_child(root_1, stream_no_nl.next_node)

            end

            stream_no_nl.reset();

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 2
          # at line 251:7: '>>' dev= test ( ',' obj= test )* (no_nl= ',' )?
          string_literal95 = match(T__60, TOKENS_FOLLOWING_T__60_IN_print_statement_1252) 
          if @state.backtracking == 0
            stream_T__60.add(string_literal95)
          end
          @state.following.push(TOKENS_FOLLOWING_test_IN_print_statement_1256)
          dev = test
          @state.following.pop
          if @state.backtracking == 0
            stream_test.add(dev.tree)
          end
          # at line 251:21: ( ',' obj= test )*
          loop do # decision 35
            alt_35 = 2
            look_35_0 = @input.peek(1)

            if (look_35_0 == T__42) 
              look_35_1 = @input.peek(2)

              if (look_35_1.between?(LONGINT, COMPLEX) || look_35_1 == LPAREN || look_35_1.between?(NAME, LBRACK) || look_35_1 == LCURLY || look_35_1.between?(INT, STRING) || look_35_1 == T__85 || look_35_1.between?(T__98, T__99) || look_35_1.between?(T__103, T__105)) 
                alt_35 = 1

              end

            end
            case alt_35
            when 1
              # at line 251:23: ',' obj= test
              char_literal96 = match(T__42, TOKENS_FOLLOWING_T__42_IN_print_statement_1260) 
              if @state.backtracking == 0
                stream_T__42.add(char_literal96)
              end
              @state.following.push(TOKENS_FOLLOWING_test_IN_print_statement_1264)
              obj = test
              @state.following.pop
              if @state.backtracking == 0
                stream_test.add(obj.tree)
              end

            else
              break # out of loop for decision 35
            end
          end # loop for decision 35
          # at line 251:44: (no_nl= ',' )?
          alt_36 = 2
          look_36_0 = @input.peek(1)

          if (look_36_0 == T__42) 
            alt_36 = 1
          end
          case alt_36
          when 1
            # at line 251:44: no_nl= ','
            no_nl = match(T__42, TOKENS_FOLLOWING_T__42_IN_print_statement_1271) 
            if @state.backtracking == 0
              stream_T__42.add(no_nl)
            end

          end
          # AST Rewrite
          # elements: obj, T__60, T__59, dev, no_nl
          # token labels: no_nl
          # rule labels: return_value, dev, obj
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_no_nl = token_stream("token no_nl", no_nl)
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")
            stream_dev = dev ? subtree_stream("rule dev", dev.tree) : subtree_stream("token dev")
            stream_obj = obj ? subtree_stream("rule obj", obj.tree) : subtree_stream("token obj")

            root_0 = @adaptor.create_flat_list!
            # 251:50: -> ^( 'print' ^( '>>' $dev) ( $obj)* ( $no_nl)? )
            # at line 251:53: ^( 'print' ^( '>>' $dev) ( $obj)* ( $no_nl)? )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(stream_T__59.next_node, root_1)

            # at line 251:64: ^( '>>' $dev)
            root_2 = @adaptor.create_flat_list!
            root_2 = @adaptor.become_root(stream_T__60.next_node, root_2)

            @adaptor.add_child(root_2, stream_dev.next_tree)

            @adaptor.add_child(root_1, root_2)
            # at line 251:79: ( $obj)*
            while stream_obj.has_next?
              @adaptor.add_child(root_1, stream_obj.next_tree)

            end

            stream_obj.reset();
            # at line 251:85: ( $no_nl)?
            if stream_no_nl.has_next?
              @adaptor.add_child(root_1, stream_no_nl.next_node)

            end

            stream_no_nl.reset();

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 3
          # at line 252:50: 
          # AST Rewrite
          # elements: T__59
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

            root_0 = @adaptor.create_flat_list!
            # 252:50: -> ^( 'print' )
            # at line 252:53: ^( 'print' )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(stream_T__59.next_node, root_1)

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

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

    DelStatementReturnValue = define_return_scope 

    # 
    # parser rule del_statement
    # 
    # (in samples/Python.g)
    # 256:1: del_statement : 'del' exprlist ;
    # 
    def del_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 18)
      return_value = DelStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal97 = nil
      exprlist98 = nil

      tree_for_string_literal97 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 257:5: 'del' exprlist
        string_literal97 = match(T__61, TOKENS_FOLLOWING_T__61_IN_del_statement_1373)
        if @state.backtracking == 0

          tree_for_string_literal97 = @adaptor.create_with_payload!(string_literal97)
          root_0 = @adaptor.become_root(tree_for_string_literal97, root_0)

        end
        @state.following.push(TOKENS_FOLLOWING_exprlist_IN_del_statement_1376)
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
        # trace_out(__method__, 18)

      end
      
      return return_value
    end

    PassStatementReturnValue = define_return_scope 

    # 
    # parser rule pass_statement
    # 
    # (in samples/Python.g)
    # 260:1: pass_statement : 'pass' ;
    # 
    def pass_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 19)
      return_value = PassStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal99 = nil

      tree_for_string_literal99 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 261:5: 'pass'
        string_literal99 = match(T__62, TOKENS_FOLLOWING_T__62_IN_pass_statement_1389)
        if @state.backtracking == 0

          tree_for_string_literal99 = @adaptor.create_with_payload!(string_literal99)
          root_0 = @adaptor.become_root(tree_for_string_literal99, root_0)

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

    FlowStatementReturnValue = define_return_scope 

    # 
    # parser rule flow_statement
    # 
    # (in samples/Python.g)
    # 264:1: flow_statement : ( break_statement | continue_statement | return_statement | raise_statement | yield_statement );
    # 
    def flow_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 20)
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
        # at line 265:3: ( break_statement | continue_statement | return_statement | raise_statement | yield_statement )
        alt_38 = 5
        case look_38 = @input.peek(1)
        when T__63 then alt_38 = 1
        when T__64 then alt_38 = 2
        when T__65 then alt_38 = 3
        when T__66 then alt_38 = 4
        when T__107 then alt_38 = 5
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          nvae = NoViableAlternative("", 38, 0)
          raise nvae
        end
        case alt_38
        when 1
          root_0 = @adaptor.create_flat_list!


          # at line 265:5: break_statement
          @state.following.push(TOKENS_FOLLOWING_break_statement_IN_flow_statement_1403)
          break_statement100 = break_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, break_statement100.tree)
          end

        when 2
          root_0 = @adaptor.create_flat_list!


          # at line 266:5: continue_statement
          @state.following.push(TOKENS_FOLLOWING_continue_statement_IN_flow_statement_1409)
          continue_statement101 = continue_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, continue_statement101.tree)
          end

        when 3
          root_0 = @adaptor.create_flat_list!


          # at line 267:5: return_statement
          @state.following.push(TOKENS_FOLLOWING_return_statement_IN_flow_statement_1415)
          return_statement102 = return_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, return_statement102.tree)
          end

        when 4
          root_0 = @adaptor.create_flat_list!


          # at line 268:5: raise_statement
          @state.following.push(TOKENS_FOLLOWING_raise_statement_IN_flow_statement_1421)
          raise_statement103 = raise_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, raise_statement103.tree)
          end

        when 5
          root_0 = @adaptor.create_flat_list!


          # at line 269:5: yield_statement
          @state.following.push(TOKENS_FOLLOWING_yield_statement_IN_flow_statement_1427)
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
        # trace_out(__method__, 20)

      end
      
      return return_value
    end

    BreakStatementReturnValue = define_return_scope 

    # 
    # parser rule break_statement
    # 
    # (in samples/Python.g)
    # 272:1: break_statement : 'break' ;
    # 
    def break_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 21)
      return_value = BreakStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal105 = nil

      tree_for_string_literal105 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 273:5: 'break'
        string_literal105 = match(T__63, TOKENS_FOLLOWING_T__63_IN_break_statement_1440)
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
        # trace_out(__method__, 21)

      end
      
      return return_value
    end

    ContinueStatementReturnValue = define_return_scope 

    # 
    # parser rule continue_statement
    # 
    # (in samples/Python.g)
    # 276:1: continue_statement : 'continue' ;
    # 
    def continue_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 22)
      return_value = ContinueStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal106 = nil

      tree_for_string_literal106 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 277:5: 'continue'
        string_literal106 = match(T__64, TOKENS_FOLLOWING_T__64_IN_continue_statement_1454)
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
        # trace_out(__method__, 22)

      end
      
      return return_value
    end

    ReturnStatementReturnValue = define_return_scope 

    # 
    # parser rule return_statement
    # 
    # (in samples/Python.g)
    # 280:1: return_statement : 'return' ( test_list )? ;
    # 
    def return_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 23)
      return_value = ReturnStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal107 = nil
      test_list108 = nil

      tree_for_string_literal107 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 281:5: 'return' ( test_list )?
        string_literal107 = match(T__65, TOKENS_FOLLOWING_T__65_IN_return_statement_1468)
        if @state.backtracking == 0

          tree_for_string_literal107 = @adaptor.create_with_payload!(string_literal107)
          root_0 = @adaptor.become_root(tree_for_string_literal107, root_0)

        end
        # at line 281:15: ( test_list )?
        alt_39 = 2
        look_39_0 = @input.peek(1)

        if (look_39_0.between?(LONGINT, COMPLEX) || look_39_0 == LPAREN || look_39_0.between?(NAME, LBRACK) || look_39_0 == LCURLY || look_39_0.between?(INT, STRING) || look_39_0 == T__85 || look_39_0.between?(T__98, T__99) || look_39_0.between?(T__103, T__105)) 
          alt_39 = 1
        end
        case alt_39
        when 1
          # at line 281:15: test_list
          @state.following.push(TOKENS_FOLLOWING_test_list_IN_return_statement_1471)
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
        # trace_out(__method__, 23)

      end
      
      return return_value
    end

    YieldStatementReturnValue = define_return_scope 

    # 
    # parser rule yield_statement
    # 
    # (in samples/Python.g)
    # 284:1: yield_statement : yield_expr ;
    # 
    def yield_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 24)
      return_value = YieldStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      yield_expr109 = nil


      begin
        root_0 = @adaptor.create_flat_list!


        # at line 285:5: yield_expr
        @state.following.push(TOKENS_FOLLOWING_yield_expr_IN_yield_statement_1485)
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
        # trace_out(__method__, 24)

      end
      
      return return_value
    end

    RaiseStatementReturnValue = define_return_scope 

    # 
    # parser rule raise_statement
    # 
    # (in samples/Python.g)
    # 288:1: raise_statement : 'raise' ( test ( ',' test ( ',' test )? )? )? ;
    # 
    def raise_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 25)
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


        # at line 289:5: 'raise' ( test ( ',' test ( ',' test )? )? )?
        string_literal110 = match(T__66, TOKENS_FOLLOWING_T__66_IN_raise_statement_1498)
        if @state.backtracking == 0

          tree_for_string_literal110 = @adaptor.create_with_payload!(string_literal110)
          @adaptor.add_child(root_0, tree_for_string_literal110)

        end
        # at line 289:13: ( test ( ',' test ( ',' test )? )? )?
        alt_42 = 2
        look_42_0 = @input.peek(1)

        if (look_42_0.between?(LONGINT, COMPLEX) || look_42_0 == LPAREN || look_42_0.between?(NAME, LBRACK) || look_42_0 == LCURLY || look_42_0.between?(INT, STRING) || look_42_0 == T__85 || look_42_0.between?(T__98, T__99) || look_42_0.between?(T__103, T__105)) 
          alt_42 = 1
        end
        case alt_42
        when 1
          # at line 289:15: test ( ',' test ( ',' test )? )?
          @state.following.push(TOKENS_FOLLOWING_test_IN_raise_statement_1502)
          test111 = test
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, test111.tree)
          end
          # at line 289:20: ( ',' test ( ',' test )? )?
          alt_41 = 2
          look_41_0 = @input.peek(1)

          if (look_41_0 == T__42) 
            alt_41 = 1
          end
          case alt_41
          when 1
            # at line 289:22: ',' test ( ',' test )?
            char_literal112 = match(T__42, TOKENS_FOLLOWING_T__42_IN_raise_statement_1506)
            if @state.backtracking == 0

              tree_for_char_literal112 = @adaptor.create_with_payload!(char_literal112)
              @adaptor.add_child(root_0, tree_for_char_literal112)

            end
            @state.following.push(TOKENS_FOLLOWING_test_IN_raise_statement_1508)
            test113 = test
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, test113.tree)
            end
            # at line 289:31: ( ',' test )?
            alt_40 = 2
            look_40_0 = @input.peek(1)

            if (look_40_0 == T__42) 
              alt_40 = 1
            end
            case alt_40
            when 1
              # at line 289:33: ',' test
              char_literal114 = match(T__42, TOKENS_FOLLOWING_T__42_IN_raise_statement_1512)
              if @state.backtracking == 0

                tree_for_char_literal114 = @adaptor.create_with_payload!(char_literal114)
                @adaptor.add_child(root_0, tree_for_char_literal114)

              end
              @state.following.push(TOKENS_FOLLOWING_test_IN_raise_statement_1514)
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
        # trace_out(__method__, 25)

      end
      
      return return_value
    end

    ImportStatementReturnValue = define_return_scope 

    # 
    # parser rule import_statement
    # 
    # (in samples/Python.g)
    # 292:1: import_statement : ( import_name | import_from );
    # 
    def import_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 26)
      return_value = ImportStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      import_name116 = nil
      import_from117 = nil


      begin
        # at line 293:3: ( import_name | import_from )
        alt_43 = 2
        look_43_0 = @input.peek(1)

        if (look_43_0 == T__67) 
          alt_43 = 1
        elsif (look_43_0 == T__68) 
          alt_43 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 43, 0)
          raise nvae
        end
        case alt_43
        when 1
          root_0 = @adaptor.create_flat_list!


          # at line 293:5: import_name
          @state.following.push(TOKENS_FOLLOWING_import_name_IN_import_statement_1536)
          import_name116 = import_name
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, import_name116.tree)
          end

        when 2
          root_0 = @adaptor.create_flat_list!


          # at line 294:5: import_from
          @state.following.push(TOKENS_FOLLOWING_import_from_IN_import_statement_1542)
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
        # trace_out(__method__, 26)

      end
      
      return return_value
    end

    ImportNameReturnValue = define_return_scope 

    # 
    # parser rule import_name
    # 
    # (in samples/Python.g)
    # 297:1: import_name : 'import' dotted_as_names ;
    # 
    def import_name
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 27)
      return_value = ImportNameReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal118 = nil
      dotted_as_names119 = nil

      tree_for_string_literal118 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 298:5: 'import' dotted_as_names
        string_literal118 = match(T__67, TOKENS_FOLLOWING_T__67_IN_import_name_1555)
        if @state.backtracking == 0

          tree_for_string_literal118 = @adaptor.create_with_payload!(string_literal118)
          root_0 = @adaptor.become_root(tree_for_string_literal118, root_0)

        end
        @state.following.push(TOKENS_FOLLOWING_dotted_as_names_IN_import_name_1558)
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
        # trace_out(__method__, 27)

      end
      
      return return_value
    end

    ImportFromReturnValue = define_return_scope 

    # 
    # parser rule import_from
    # 
    # (in samples/Python.g)
    # 301:1: import_from : 'from' ( ( '.' )* dotted_name | ( '.' )+ ) 'import' ( '*' | import_as_names | LPAREN import_as_names RPAREN ) ;
    # 
    def import_from
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 28)
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


        # at line 302:5: 'from' ( ( '.' )* dotted_name | ( '.' )+ ) 'import' ( '*' | import_as_names | LPAREN import_as_names RPAREN )
        string_literal120 = match(T__68, TOKENS_FOLLOWING_T__68_IN_import_from_1571)
        if @state.backtracking == 0

          tree_for_string_literal120 = @adaptor.create_with_payload!(string_literal120)
          @adaptor.add_child(root_0, tree_for_string_literal120)

        end
        # at line 302:12: ( ( '.' )* dotted_name | ( '.' )+ )
        alt_46 = 2
        alt_46 = @dfa46.predict(@input)
        case alt_46
        when 1
          # at line 302:14: ( '.' )* dotted_name
          # at line 302:14: ( '.' )*
          loop do # decision 44
            alt_44 = 2
            look_44_0 = @input.peek(1)

            if (look_44_0 == T__39) 
              alt_44 = 1

            end
            case alt_44
            when 1
              # at line 302:14: '.'
              char_literal121 = match(T__39, TOKENS_FOLLOWING_T__39_IN_import_from_1575)
              if @state.backtracking == 0

                tree_for_char_literal121 = @adaptor.create_with_payload!(char_literal121)
                @adaptor.add_child(root_0, tree_for_char_literal121)

              end

            else
              break # out of loop for decision 44
            end
          end # loop for decision 44
          @state.following.push(TOKENS_FOLLOWING_dotted_name_IN_import_from_1578)
          dotted_name122 = dotted_name
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, dotted_name122.tree)
          end

        when 2
          # at line 302:33: ( '.' )+
          # at file 302:33: ( '.' )+
          match_count_45 = 0
          loop do
            alt_45 = 2
            look_45_0 = @input.peek(1)

            if (look_45_0 == T__39) 
              alt_45 = 1

            end
            case alt_45
            when 1
              # at line 302:33: '.'
              char_literal123 = match(T__39, TOKENS_FOLLOWING_T__39_IN_import_from_1582)
              if @state.backtracking == 0

                tree_for_char_literal123 = @adaptor.create_with_payload!(char_literal123)
                @adaptor.add_child(root_0, tree_for_char_literal123)

              end

            else
              match_count_45 > 0 and break
              @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

              eee = EarlyExit(45)


              raise eee
            end
            match_count_45 += 1
          end


        end
        string_literal124 = match(T__67, TOKENS_FOLLOWING_T__67_IN_import_from_1587)
        if @state.backtracking == 0

          tree_for_string_literal124 = @adaptor.create_with_payload!(string_literal124)
          @adaptor.add_child(root_0, tree_for_string_literal124)

        end
        # at line 303:5: ( '*' | import_as_names | LPAREN import_as_names RPAREN )
        alt_47 = 3
        case look_47 = @input.peek(1)
        when T__43 then alt_47 = 1
        when NAME then alt_47 = 2
        when LPAREN then alt_47 = 3
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          nvae = NoViableAlternative("", 47, 0)
          raise nvae
        end
        case alt_47
        when 1
          # at line 303:7: '*'
          char_literal125 = match(T__43, TOKENS_FOLLOWING_T__43_IN_import_from_1595)
          if @state.backtracking == 0

            tree_for_char_literal125 = @adaptor.create_with_payload!(char_literal125)
            @adaptor.add_child(root_0, tree_for_char_literal125)

          end

        when 2
          # at line 304:7: import_as_names
          @state.following.push(TOKENS_FOLLOWING_import_as_names_IN_import_from_1603)
          import_as_names126 = import_as_names
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, import_as_names126.tree)
          end

        when 3
          # at line 305:7: LPAREN import_as_names RPAREN
          __LPAREN127__ = match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_import_from_1611)
          @state.following.push(TOKENS_FOLLOWING_import_as_names_IN_import_from_1614)
          import_as_names128 = import_as_names
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, import_as_names128.tree)
          end
          __RPAREN129__ = match(RPAREN, TOKENS_FOLLOWING_RPAREN_IN_import_from_1616)

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

    ImportAsNamesReturnValue = define_return_scope 

    # 
    # parser rule import_as_names
    # 
    # (in samples/Python.g)
    # 309:1: import_as_names : import_as_name ( ',' import_as_name )* ( ',' )? ;
    # 
    def import_as_names
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 29)
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


        # at line 310:5: import_as_name ( ',' import_as_name )* ( ',' )?
        @state.following.push(TOKENS_FOLLOWING_import_as_name_IN_import_as_names_1636)
        import_as_name130 = import_as_name
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, import_as_name130.tree)
        end
        # at line 310:20: ( ',' import_as_name )*
        loop do # decision 48
          alt_48 = 2
          look_48_0 = @input.peek(1)

          if (look_48_0 == T__42) 
            look_48_1 = @input.peek(2)

            if (look_48_1 == NAME) 
              alt_48 = 1

            end

          end
          case alt_48
          when 1
            # at line 310:22: ',' import_as_name
            char_literal131 = match(T__42, TOKENS_FOLLOWING_T__42_IN_import_as_names_1640)
            @state.following.push(TOKENS_FOLLOWING_import_as_name_IN_import_as_names_1643)
            import_as_name132 = import_as_name
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, import_as_name132.tree)
            end

          else
            break # out of loop for decision 48
          end
        end # loop for decision 48
        # at line 310:48: ( ',' )?
        alt_49 = 2
        look_49_0 = @input.peek(1)

        if (look_49_0 == T__42) 
          alt_49 = 1
        end
        case alt_49
        when 1
          # at line 310:48: ','
          char_literal133 = match(T__42, TOKENS_FOLLOWING_T__42_IN_import_as_names_1648)

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

    ImportAsNameReturnValue = define_return_scope 

    # 
    # parser rule import_as_name
    # 
    # (in samples/Python.g)
    # 313:1: import_as_name : NAME ( 'as' NAME )? ;
    # 
    def import_as_name
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 30)
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


        # at line 314:5: NAME ( 'as' NAME )?
        __NAME134__ = match(NAME, TOKENS_FOLLOWING_NAME_IN_import_as_name_1663)
        if @state.backtracking == 0

          tree_for_NAME134 = @adaptor.create_with_payload!(__NAME134__)
          @adaptor.add_child(root_0, tree_for_NAME134)

        end
        # at line 314:10: ( 'as' NAME )?
        alt_50 = 2
        look_50_0 = @input.peek(1)

        if (look_50_0 == T__69) 
          alt_50 = 1
        end
        case alt_50
        when 1
          # at line 314:12: 'as' NAME
          string_literal135 = match(T__69, TOKENS_FOLLOWING_T__69_IN_import_as_name_1667)
          if @state.backtracking == 0

            tree_for_string_literal135 = @adaptor.create_with_payload!(string_literal135)
            root_0 = @adaptor.become_root(tree_for_string_literal135, root_0)

          end
          __NAME136__ = match(NAME, TOKENS_FOLLOWING_NAME_IN_import_as_name_1670)
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
        # trace_out(__method__, 30)

      end
      
      return return_value
    end

    DottedAsNameReturnValue = define_return_scope 

    # 
    # parser rule dotted_as_name
    # 
    # (in samples/Python.g)
    # 317:1: dotted_as_name : dotted_name ( 'as' NAME )? ;
    # 
    def dotted_as_name
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 31)
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


        # at line 318:5: dotted_name ( 'as' NAME )?
        @state.following.push(TOKENS_FOLLOWING_dotted_name_IN_dotted_as_name_1686)
        dotted_name137 = dotted_name
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, dotted_name137.tree)
        end
        # at line 318:17: ( 'as' NAME )?
        alt_51 = 2
        look_51_0 = @input.peek(1)

        if (look_51_0 == T__69) 
          alt_51 = 1
        end
        case alt_51
        when 1
          # at line 318:19: 'as' NAME
          string_literal138 = match(T__69, TOKENS_FOLLOWING_T__69_IN_dotted_as_name_1690)
          if @state.backtracking == 0

            tree_for_string_literal138 = @adaptor.create_with_payload!(string_literal138)
            root_0 = @adaptor.become_root(tree_for_string_literal138, root_0)

          end
          __NAME139__ = match(NAME, TOKENS_FOLLOWING_NAME_IN_dotted_as_name_1693)
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
        # trace_out(__method__, 31)

      end
      
      return return_value
    end

    DottedAsNamesReturnValue = define_return_scope 

    # 
    # parser rule dotted_as_names
    # 
    # (in samples/Python.g)
    # 321:1: dotted_as_names : dotted_as_name ( ',' dotted_as_name )* ;
    # 
    def dotted_as_names
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 32)
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


        # at line 322:5: dotted_as_name ( ',' dotted_as_name )*
        @state.following.push(TOKENS_FOLLOWING_dotted_as_name_IN_dotted_as_names_1709)
        dotted_as_name140 = dotted_as_name
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, dotted_as_name140.tree)
        end
        # at line 322:20: ( ',' dotted_as_name )*
        loop do # decision 52
          alt_52 = 2
          look_52_0 = @input.peek(1)

          if (look_52_0 == T__42) 
            alt_52 = 1

          end
          case alt_52
          when 1
            # at line 322:22: ',' dotted_as_name
            char_literal141 = match(T__42, TOKENS_FOLLOWING_T__42_IN_dotted_as_names_1713)
            @state.following.push(TOKENS_FOLLOWING_dotted_as_name_IN_dotted_as_names_1716)
            dotted_as_name142 = dotted_as_name
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, dotted_as_name142.tree)
            end

          else
            break # out of loop for decision 52
          end
        end # loop for decision 52
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

    DottedNameReturnValue = define_return_scope 

    # 
    # parser rule dotted_name
    # 
    # (in samples/Python.g)
    # 325:1: dotted_name : NAME ( '.' NAME )* ;
    # 
    def dotted_name
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 33)
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


        # at line 326:5: NAME ( '.' NAME )*
        __NAME143__ = match(NAME, TOKENS_FOLLOWING_NAME_IN_dotted_name_1734)
        if @state.backtracking == 0

          tree_for_NAME143 = @adaptor.create_with_payload!(__NAME143__)
          @adaptor.add_child(root_0, tree_for_NAME143)

        end
        # at line 326:10: ( '.' NAME )*
        loop do # decision 53
          alt_53 = 2
          look_53_0 = @input.peek(1)

          if (look_53_0 == T__39) 
            alt_53 = 1

          end
          case alt_53
          when 1
            # at line 326:12: '.' NAME
            char_literal144 = match(T__39, TOKENS_FOLLOWING_T__39_IN_dotted_name_1738)
            if @state.backtracking == 0

              tree_for_char_literal144 = @adaptor.create_with_payload!(char_literal144)
              root_0 = @adaptor.become_root(tree_for_char_literal144, root_0)

            end
            __NAME145__ = match(NAME, TOKENS_FOLLOWING_NAME_IN_dotted_name_1741)
            if @state.backtracking == 0

              tree_for_NAME145 = @adaptor.create_with_payload!(__NAME145__)
              @adaptor.add_child(root_0, tree_for_NAME145)

            end

          else
            break # out of loop for decision 53
          end
        end # loop for decision 53
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

    GlobalStatementReturnValue = define_return_scope 

    # 
    # parser rule global_statement
    # 
    # (in samples/Python.g)
    # 329:1: global_statement : 'global' NAME ( ',' NAME )* ;
    # 
    def global_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 34)
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


        # at line 330:5: 'global' NAME ( ',' NAME )*
        string_literal146 = match(T__70, TOKENS_FOLLOWING_T__70_IN_global_statement_1757)
        if @state.backtracking == 0

          tree_for_string_literal146 = @adaptor.create_with_payload!(string_literal146)
          root_0 = @adaptor.become_root(tree_for_string_literal146, root_0)

        end
        __NAME147__ = match(NAME, TOKENS_FOLLOWING_NAME_IN_global_statement_1760)
        if @state.backtracking == 0

          tree_for_NAME147 = @adaptor.create_with_payload!(__NAME147__)
          @adaptor.add_child(root_0, tree_for_NAME147)

        end
        # at line 330:20: ( ',' NAME )*
        loop do # decision 54
          alt_54 = 2
          look_54_0 = @input.peek(1)

          if (look_54_0 == T__42) 
            alt_54 = 1

          end
          case alt_54
          when 1
            # at line 330:22: ',' NAME
            char_literal148 = match(T__42, TOKENS_FOLLOWING_T__42_IN_global_statement_1764)
            __NAME149__ = match(NAME, TOKENS_FOLLOWING_NAME_IN_global_statement_1767)
            if @state.backtracking == 0

              tree_for_NAME149 = @adaptor.create_with_payload!(__NAME149__)
              @adaptor.add_child(root_0, tree_for_NAME149)

            end

          else
            break # out of loop for decision 54
          end
        end # loop for decision 54
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

    ExecStatementReturnValue = define_return_scope 

    # 
    # parser rule exec_statement
    # 
    # (in samples/Python.g)
    # 333:1: exec_statement : 'exec' expr ( 'in' test ( ',' test )? )? ;
    # 
    def exec_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 35)
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


        # at line 334:5: 'exec' expr ( 'in' test ( ',' test )? )?
        string_literal150 = match(T__71, TOKENS_FOLLOWING_T__71_IN_exec_statement_1783)
        if @state.backtracking == 0

          tree_for_string_literal150 = @adaptor.create_with_payload!(string_literal150)
          @adaptor.add_child(root_0, tree_for_string_literal150)

        end
        @state.following.push(TOKENS_FOLLOWING_expr_IN_exec_statement_1785)
        expr151 = expr
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, expr151.tree)
        end
        # at line 334:17: ( 'in' test ( ',' test )? )?
        alt_56 = 2
        look_56_0 = @input.peek(1)

        if (look_56_0 == T__72) 
          alt_56 = 1
        end
        case alt_56
        when 1
          # at line 334:19: 'in' test ( ',' test )?
          string_literal152 = match(T__72, TOKENS_FOLLOWING_T__72_IN_exec_statement_1789)
          if @state.backtracking == 0

            tree_for_string_literal152 = @adaptor.create_with_payload!(string_literal152)
            @adaptor.add_child(root_0, tree_for_string_literal152)

          end
          @state.following.push(TOKENS_FOLLOWING_test_IN_exec_statement_1791)
          test153 = test
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, test153.tree)
          end
          # at line 334:29: ( ',' test )?
          alt_55 = 2
          look_55_0 = @input.peek(1)

          if (look_55_0 == T__42) 
            alt_55 = 1
          end
          case alt_55
          when 1
            # at line 334:31: ',' test
            char_literal154 = match(T__42, TOKENS_FOLLOWING_T__42_IN_exec_statement_1795)
            if @state.backtracking == 0

              tree_for_char_literal154 = @adaptor.create_with_payload!(char_literal154)
              @adaptor.add_child(root_0, tree_for_char_literal154)

            end
            @state.following.push(TOKENS_FOLLOWING_test_IN_exec_statement_1797)
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
        # trace_out(__method__, 35)

      end
      
      return return_value
    end

    AssertStatementReturnValue = define_return_scope 

    # 
    # parser rule assert_statement
    # 
    # (in samples/Python.g)
    # 337:1: assert_statement : 'assert' assertion= test ( ',' error_value= test )? -> ^( 'assert' $assertion ( $error_value)? ) ;
    # 
    def assert_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 36)
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
      stream_T__42 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__42")
      stream_T__73 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__73")
      stream_test = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule test")
      begin
        # at line 338:5: 'assert' assertion= test ( ',' error_value= test )?
        string_literal156 = match(T__73, TOKENS_FOLLOWING_T__73_IN_assert_statement_1816) 
        if @state.backtracking == 0
          stream_T__73.add(string_literal156)
        end
        @state.following.push(TOKENS_FOLLOWING_test_IN_assert_statement_1820)
        assertion = test
        @state.following.pop
        if @state.backtracking == 0
          stream_test.add(assertion.tree)
        end
        # at line 338:29: ( ',' error_value= test )?
        alt_57 = 2
        look_57_0 = @input.peek(1)

        if (look_57_0 == T__42) 
          alt_57 = 1
        end
        case alt_57
        when 1
          # at line 338:31: ',' error_value= test
          char_literal157 = match(T__42, TOKENS_FOLLOWING_T__42_IN_assert_statement_1824) 
          if @state.backtracking == 0
            stream_T__42.add(char_literal157)
          end
          @state.following.push(TOKENS_FOLLOWING_test_IN_assert_statement_1828)
          error_value = test
          @state.following.pop
          if @state.backtracking == 0
            stream_test.add(error_value.tree)
          end

        end
        # AST Rewrite
        # elements: T__73, assertion, error_value
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
          # 339:5: -> ^( 'assert' $assertion ( $error_value)? )
          # at line 339:8: ^( 'assert' $assertion ( $error_value)? )
          root_1 = @adaptor.create_flat_list!
          root_1 = @adaptor.become_root(stream_T__73.next_node, root_1)

          @adaptor.add_child(root_1, stream_assertion.next_tree)
          # at line 339:31: ( $error_value)?
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
        # trace_out(__method__, 36)

      end
      
      return return_value
    end

    CompoundStatementReturnValue = define_return_scope 

    # 
    # parser rule compound_statement
    # 
    # (in samples/Python.g)
    # 342:1: compound_statement : ( if_statement | while_statement | for_statement | try_statement | with_statement | func_def | class_def );
    # 
    def compound_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 37)
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
        # at line 343:3: ( if_statement | while_statement | for_statement | try_statement | with_statement | func_def | class_def )
        alt_58 = 7
        case look_58 = @input.peek(1)
        when T__74 then alt_58 = 1
        when T__77 then alt_58 = 2
        when T__78 then alt_58 = 3
        when T__79 then alt_58 = 4
        when T__81 then alt_58 = 5
        when T__38, T__40 then alt_58 = 6
        when T__106 then alt_58 = 7
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          nvae = NoViableAlternative("", 58, 0)
          raise nvae
        end
        case alt_58
        when 1
          root_0 = @adaptor.create_flat_list!


          # at line 343:5: if_statement
          @state.following.push(TOKENS_FOLLOWING_if_statement_IN_compound_statement_1863)
          if_statement158 = if_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, if_statement158.tree)
          end

        when 2
          root_0 = @adaptor.create_flat_list!


          # at line 344:5: while_statement
          @state.following.push(TOKENS_FOLLOWING_while_statement_IN_compound_statement_1869)
          while_statement159 = while_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, while_statement159.tree)
          end

        when 3
          root_0 = @adaptor.create_flat_list!


          # at line 345:5: for_statement
          @state.following.push(TOKENS_FOLLOWING_for_statement_IN_compound_statement_1875)
          for_statement160 = for_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, for_statement160.tree)
          end

        when 4
          root_0 = @adaptor.create_flat_list!


          # at line 346:5: try_statement
          @state.following.push(TOKENS_FOLLOWING_try_statement_IN_compound_statement_1881)
          try_statement161 = try_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, try_statement161.tree)
          end

        when 5
          root_0 = @adaptor.create_flat_list!


          # at line 347:5: with_statement
          @state.following.push(TOKENS_FOLLOWING_with_statement_IN_compound_statement_1887)
          with_statement162 = with_statement
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, with_statement162.tree)
          end

        when 6
          root_0 = @adaptor.create_flat_list!


          # at line 348:5: func_def
          @state.following.push(TOKENS_FOLLOWING_func_def_IN_compound_statement_1893)
          func_def163 = func_def
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, func_def163.tree)
          end

        when 7
          root_0 = @adaptor.create_flat_list!


          # at line 349:5: class_def
          @state.following.push(TOKENS_FOLLOWING_class_def_IN_compound_statement_1899)
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
        # trace_out(__method__, 37)

      end
      
      return return_value
    end

    IfStatementReturnValue = define_return_scope 

    # 
    # parser rule if_statement
    # 
    # (in samples/Python.g)
    # 352:1: if_statement : 'if' test ':' suite ( elif_clause )* ( 'else' ':' suite )? ;
    # 
    def if_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 38)
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


        # at line 353:5: 'if' test ':' suite ( elif_clause )* ( 'else' ':' suite )?
        string_literal165 = match(T__74, TOKENS_FOLLOWING_T__74_IN_if_statement_1912)
        if @state.backtracking == 0

          tree_for_string_literal165 = @adaptor.create_with_payload!(string_literal165)
          root_0 = @adaptor.become_root(tree_for_string_literal165, root_0)

        end
        @state.following.push(TOKENS_FOLLOWING_test_IN_if_statement_1915)
        test166 = test
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, test166.tree)
        end
        char_literal167 = match(T__41, TOKENS_FOLLOWING_T__41_IN_if_statement_1917)
        @state.following.push(TOKENS_FOLLOWING_suite_IN_if_statement_1920)
        suite168 = suite
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, suite168.tree)
        end
        # at line 353:27: ( elif_clause )*
        loop do # decision 59
          alt_59 = 2
          look_59_0 = @input.peek(1)

          if (look_59_0 == T__76) 
            alt_59 = 1

          end
          case alt_59
          when 1
            # at line 353:27: elif_clause
            @state.following.push(TOKENS_FOLLOWING_elif_clause_IN_if_statement_1922)
            elif_clause169 = elif_clause
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, elif_clause169.tree)
            end

          else
            break # out of loop for decision 59
          end
        end # loop for decision 59
        # at line 354:5: ( 'else' ':' suite )?
        alt_60 = 2
        look_60_0 = @input.peek(1)

        if (look_60_0 == T__75) 
          alt_60 = 1
        end
        case alt_60
        when 1
          # at line 354:7: 'else' ':' suite
          string_literal170 = match(T__75, TOKENS_FOLLOWING_T__75_IN_if_statement_1931)
          char_literal171 = match(T__41, TOKENS_FOLLOWING_T__41_IN_if_statement_1934)
          @state.following.push(TOKENS_FOLLOWING_suite_IN_if_statement_1937)
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
        # trace_out(__method__, 38)

      end
      
      return return_value
    end

    ElifClauseReturnValue = define_return_scope 

    # 
    # parser rule elif_clause
    # 
    # (in samples/Python.g)
    # 357:1: elif_clause : 'elif' test ':' suite ;
    # 
    def elif_clause
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 39)
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


        # at line 358:5: 'elif' test ':' suite
        string_literal173 = match(T__76, TOKENS_FOLLOWING_T__76_IN_elif_clause_1953)
        if @state.backtracking == 0

          tree_for_string_literal173 = @adaptor.create_with_payload!(string_literal173)
          root_0 = @adaptor.become_root(tree_for_string_literal173, root_0)

        end
        @state.following.push(TOKENS_FOLLOWING_test_IN_elif_clause_1956)
        test174 = test
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, test174.tree)
        end
        char_literal175 = match(T__41, TOKENS_FOLLOWING_T__41_IN_elif_clause_1958)
        @state.following.push(TOKENS_FOLLOWING_suite_IN_elif_clause_1961)
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
        # trace_out(__method__, 39)

      end
      
      return return_value
    end

    WhileStatementReturnValue = define_return_scope 

    # 
    # parser rule while_statement
    # 
    # (in samples/Python.g)
    # 361:1: while_statement : 'while' test ':' suite ( 'else' ':' suite )? ;
    # 
    def while_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 40)
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


        # at line 362:5: 'while' test ':' suite ( 'else' ':' suite )?
        string_literal177 = match(T__77, TOKENS_FOLLOWING_T__77_IN_while_statement_1974)
        if @state.backtracking == 0

          tree_for_string_literal177 = @adaptor.create_with_payload!(string_literal177)
          root_0 = @adaptor.become_root(tree_for_string_literal177, root_0)

        end
        @state.following.push(TOKENS_FOLLOWING_test_IN_while_statement_1977)
        test178 = test
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, test178.tree)
        end
        char_literal179 = match(T__41, TOKENS_FOLLOWING_T__41_IN_while_statement_1979)
        @state.following.push(TOKENS_FOLLOWING_suite_IN_while_statement_1982)
        suite180 = suite
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, suite180.tree)
        end
        # at line 363:5: ( 'else' ':' suite )?
        alt_61 = 2
        look_61_0 = @input.peek(1)

        if (look_61_0 == T__75) 
          alt_61 = 1
        end
        case alt_61
        when 1
          # at line 363:7: 'else' ':' suite
          string_literal181 = match(T__75, TOKENS_FOLLOWING_T__75_IN_while_statement_1990)
          char_literal182 = match(T__41, TOKENS_FOLLOWING_T__41_IN_while_statement_1993)
          @state.following.push(TOKENS_FOLLOWING_suite_IN_while_statement_1996)
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
        # trace_out(__method__, 40)

      end
      
      return return_value
    end

    ForStatementReturnValue = define_return_scope 

    # 
    # parser rule for_statement
    # 
    # (in samples/Python.g)
    # 366:1: for_statement : 'for' exprlist 'in' test_list ':' suite ( 'else' ':' suite )? ;
    # 
    def for_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 41)
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


        # at line 367:5: 'for' exprlist 'in' test_list ':' suite ( 'else' ':' suite )?
        string_literal184 = match(T__78, TOKENS_FOLLOWING_T__78_IN_for_statement_2012)
        if @state.backtracking == 0

          tree_for_string_literal184 = @adaptor.create_with_payload!(string_literal184)
          root_0 = @adaptor.become_root(tree_for_string_literal184, root_0)

        end
        @state.following.push(TOKENS_FOLLOWING_exprlist_IN_for_statement_2015)
        exprlist185 = exprlist
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, exprlist185.tree)
        end
        string_literal186 = match(T__72, TOKENS_FOLLOWING_T__72_IN_for_statement_2017)
        @state.following.push(TOKENS_FOLLOWING_test_list_IN_for_statement_2020)
        test_list187 = test_list
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, test_list187.tree)
        end
        char_literal188 = match(T__41, TOKENS_FOLLOWING_T__41_IN_for_statement_2022)
        @state.following.push(TOKENS_FOLLOWING_suite_IN_for_statement_2025)
        suite189 = suite
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, suite189.tree)
        end
        # at line 367:48: ( 'else' ':' suite )?
        alt_62 = 2
        look_62_0 = @input.peek(1)

        if (look_62_0 == T__75) 
          alt_62 = 1
        end
        case alt_62
        when 1
          # at line 367:50: 'else' ':' suite
          string_literal190 = match(T__75, TOKENS_FOLLOWING_T__75_IN_for_statement_2029)
          char_literal191 = match(T__41, TOKENS_FOLLOWING_T__41_IN_for_statement_2032)
          @state.following.push(TOKENS_FOLLOWING_suite_IN_for_statement_2035)
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
        # trace_out(__method__, 41)

      end
      
      return return_value
    end

    TryStatementReturnValue = define_return_scope 

    # 
    # parser rule try_statement
    # 
    # (in samples/Python.g)
    # 370:1: try_statement : 'try' ':' suite ( ( except_clause )+ ( 'else' ':' suite )? ( 'finally' ':' suite )? | 'finally' ':' suite ) ;
    # 
    def try_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 42)
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


        # at line 371:5: 'try' ':' suite ( ( except_clause )+ ( 'else' ':' suite )? ( 'finally' ':' suite )? | 'finally' ':' suite )
        string_literal193 = match(T__79, TOKENS_FOLLOWING_T__79_IN_try_statement_2051)
        if @state.backtracking == 0

          tree_for_string_literal193 = @adaptor.create_with_payload!(string_literal193)
          root_0 = @adaptor.become_root(tree_for_string_literal193, root_0)

        end
        char_literal194 = match(T__41, TOKENS_FOLLOWING_T__41_IN_try_statement_2054)
        @state.following.push(TOKENS_FOLLOWING_suite_IN_try_statement_2057)
        suite195 = suite
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, suite195.tree)
        end
        # at line 372:5: ( ( except_clause )+ ( 'else' ':' suite )? ( 'finally' ':' suite )? | 'finally' ':' suite )
        alt_66 = 2
        look_66_0 = @input.peek(1)

        if (look_66_0 == T__82) 
          alt_66 = 1
        elsif (look_66_0 == T__80) 
          alt_66 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 66, 0)
          raise nvae
        end
        case alt_66
        when 1
          # at line 372:7: ( except_clause )+ ( 'else' ':' suite )? ( 'finally' ':' suite )?
          # at file 372:7: ( except_clause )+
          match_count_63 = 0
          loop do
            alt_63 = 2
            look_63_0 = @input.peek(1)

            if (look_63_0 == T__82) 
              alt_63 = 1

            end
            case alt_63
            when 1
              # at line 372:7: except_clause
              @state.following.push(TOKENS_FOLLOWING_except_clause_IN_try_statement_2065)
              except_clause196 = except_clause
              @state.following.pop
              if @state.backtracking == 0
                @adaptor.add_child(root_0, except_clause196.tree)
              end

            else
              match_count_63 > 0 and break
              @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

              eee = EarlyExit(63)


              raise eee
            end
            match_count_63 += 1
          end

          # at line 372:22: ( 'else' ':' suite )?
          alt_64 = 2
          look_64_0 = @input.peek(1)

          if (look_64_0 == T__75) 
            alt_64 = 1
          end
          case alt_64
          when 1
            # at line 372:24: 'else' ':' suite
            string_literal197 = match(T__75, TOKENS_FOLLOWING_T__75_IN_try_statement_2070)
            char_literal198 = match(T__41, TOKENS_FOLLOWING_T__41_IN_try_statement_2073)
            @state.following.push(TOKENS_FOLLOWING_suite_IN_try_statement_2076)
            suite199 = suite
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, suite199.tree)
            end

          end
          # at line 372:46: ( 'finally' ':' suite )?
          alt_65 = 2
          look_65_0 = @input.peek(1)

          if (look_65_0 == T__80) 
            alt_65 = 1
          end
          case alt_65
          when 1
            # at line 372:48: 'finally' ':' suite
            string_literal200 = match(T__80, TOKENS_FOLLOWING_T__80_IN_try_statement_2083)
            if @state.backtracking == 0

              tree_for_string_literal200 = @adaptor.create_with_payload!(string_literal200)
              root_0 = @adaptor.become_root(tree_for_string_literal200, root_0)

            end
            char_literal201 = match(T__41, TOKENS_FOLLOWING_T__41_IN_try_statement_2086)
            @state.following.push(TOKENS_FOLLOWING_suite_IN_try_statement_2089)
            suite202 = suite
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, suite202.tree)
            end

          end

        when 2
          # at line 373:7: 'finally' ':' suite
          string_literal203 = match(T__80, TOKENS_FOLLOWING_T__80_IN_try_statement_2099)
          if @state.backtracking == 0

            tree_for_string_literal203 = @adaptor.create_with_payload!(string_literal203)
            root_0 = @adaptor.become_root(tree_for_string_literal203, root_0)

          end
          char_literal204 = match(T__41, TOKENS_FOLLOWING_T__41_IN_try_statement_2102)
          @state.following.push(TOKENS_FOLLOWING_suite_IN_try_statement_2105)
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
        # trace_out(__method__, 42)

      end
      
      return return_value
    end

    WithStatementReturnValue = define_return_scope 

    # 
    # parser rule with_statement
    # 
    # (in samples/Python.g)
    # 377:1: with_statement : 'with' test ( 'as' NAME ':' suite -> ^( 'with' ^( 'as' test NAME ) suite ) | ':' suite -> ^( 'with' test suite ) ) ;
    # 
    def with_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 43)
      return_value = WithStatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal206 = nil
      string_literal208 = nil
      __NAME209__ = nil
      char_literal210 = nil
      char_literal212 = nil
      test207 = nil
      suite211 = nil
      suite213 = nil

      tree_for_string_literal206 = nil
      tree_for_string_literal208 = nil
      tree_for_NAME209 = nil
      tree_for_char_literal210 = nil
      tree_for_char_literal212 = nil
      stream_T__69 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__69")
      stream_T__41 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__41")
      stream_NAME = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token NAME")
      stream_T__81 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__81")
      stream_test = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule test")
      stream_suite = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule suite")
      begin
        # at line 378:5: 'with' test ( 'as' NAME ':' suite -> ^( 'with' ^( 'as' test NAME ) suite ) | ':' suite -> ^( 'with' test suite ) )
        string_literal206 = match(T__81, TOKENS_FOLLOWING_T__81_IN_with_statement_2124) 
        if @state.backtracking == 0
          stream_T__81.add(string_literal206)
        end
        @state.following.push(TOKENS_FOLLOWING_test_IN_with_statement_2126)
        test207 = test
        @state.following.pop
        if @state.backtracking == 0
          stream_test.add(test207.tree)
        end
        # at line 379:5: ( 'as' NAME ':' suite -> ^( 'with' ^( 'as' test NAME ) suite ) | ':' suite -> ^( 'with' test suite ) )
        alt_67 = 2
        look_67_0 = @input.peek(1)

        if (look_67_0 == T__69) 
          alt_67 = 1
        elsif (look_67_0 == T__41) 
          alt_67 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 67, 0)
          raise nvae
        end
        case alt_67
        when 1
          # at line 379:7: 'as' NAME ':' suite
          string_literal208 = match(T__69, TOKENS_FOLLOWING_T__69_IN_with_statement_2134) 
          if @state.backtracking == 0
            stream_T__69.add(string_literal208)
          end
          __NAME209__ = match(NAME, TOKENS_FOLLOWING_NAME_IN_with_statement_2136) 
          if @state.backtracking == 0
            stream_NAME.add(__NAME209__)
          end
          char_literal210 = match(T__41, TOKENS_FOLLOWING_T__41_IN_with_statement_2138) 
          if @state.backtracking == 0
            stream_T__41.add(char_literal210)
          end
          @state.following.push(TOKENS_FOLLOWING_suite_IN_with_statement_2140)
          suite211 = suite
          @state.following.pop
          if @state.backtracking == 0
            stream_suite.add(suite211.tree)
          end
          # AST Rewrite
          # elements: T__81, test, NAME, T__69, suite
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

            root_0 = @adaptor.create_flat_list!
            # 379:27: -> ^( 'with' ^( 'as' test NAME ) suite )
            # at line 379:30: ^( 'with' ^( 'as' test NAME ) suite )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(stream_T__81.next_node, root_1)

            # at line 379:40: ^( 'as' test NAME )
            root_2 = @adaptor.create_flat_list!
            root_2 = @adaptor.become_root(stream_T__69.next_node, root_2)

            @adaptor.add_child(root_2, stream_test.next_tree)
            @adaptor.add_child(root_2, stream_NAME.next_node)

            @adaptor.add_child(root_1, root_2)
            @adaptor.add_child(root_1, stream_suite.next_tree)

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 2
          # at line 380:7: ':' suite
          char_literal212 = match(T__41, TOKENS_FOLLOWING_T__41_IN_with_statement_2168) 
          if @state.backtracking == 0
            stream_T__41.add(char_literal212)
          end
          @state.following.push(TOKENS_FOLLOWING_suite_IN_with_statement_2170)
          suite213 = suite
          @state.following.pop
          if @state.backtracking == 0
            stream_suite.add(suite213.tree)
          end
          # AST Rewrite
          # elements: T__81, suite, test
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

            root_0 = @adaptor.create_flat_list!
            # 380:17: -> ^( 'with' test suite )
            # at line 380:20: ^( 'with' test suite )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(stream_T__81.next_node, root_1)

            @adaptor.add_child(root_1, stream_test.next_tree)
            @adaptor.add_child(root_1, stream_suite.next_tree)

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

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

    ExceptClauseReturnValue = define_return_scope 

    # 
    # parser rule except_clause
    # 
    # (in samples/Python.g)
    # 384:1: except_clause : 'except' ( test ( ',' test )? )? ':' suite ;
    # 
    def except_clause
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 44)
      return_value = ExceptClauseReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal214 = nil
      char_literal216 = nil
      char_literal218 = nil
      test215 = nil
      test217 = nil
      suite219 = nil

      tree_for_string_literal214 = nil
      tree_for_char_literal216 = nil
      tree_for_char_literal218 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 385:5: 'except' ( test ( ',' test )? )? ':' suite
        string_literal214 = match(T__82, TOKENS_FOLLOWING_T__82_IN_except_clause_2201)
        if @state.backtracking == 0

          tree_for_string_literal214 = @adaptor.create_with_payload!(string_literal214)
          @adaptor.add_child(root_0, tree_for_string_literal214)

        end
        # at line 385:14: ( test ( ',' test )? )?
        alt_69 = 2
        look_69_0 = @input.peek(1)

        if (look_69_0.between?(LONGINT, COMPLEX) || look_69_0 == LPAREN || look_69_0.between?(NAME, LBRACK) || look_69_0 == LCURLY || look_69_0.between?(INT, STRING) || look_69_0 == T__85 || look_69_0.between?(T__98, T__99) || look_69_0.between?(T__103, T__105)) 
          alt_69 = 1
        end
        case alt_69
        when 1
          # at line 385:16: test ( ',' test )?
          @state.following.push(TOKENS_FOLLOWING_test_IN_except_clause_2205)
          test215 = test
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, test215.tree)
          end
          # at line 385:21: ( ',' test )?
          alt_68 = 2
          look_68_0 = @input.peek(1)

          if (look_68_0 == T__42) 
            alt_68 = 1
          end
          case alt_68
          when 1
            # at line 385:23: ',' test
            char_literal216 = match(T__42, TOKENS_FOLLOWING_T__42_IN_except_clause_2209)
            if @state.backtracking == 0

              tree_for_char_literal216 = @adaptor.create_with_payload!(char_literal216)
              @adaptor.add_child(root_0, tree_for_char_literal216)

            end
            @state.following.push(TOKENS_FOLLOWING_test_IN_except_clause_2211)
            test217 = test
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, test217.tree)
            end

          end

        end
        char_literal218 = match(T__41, TOKENS_FOLLOWING_T__41_IN_except_clause_2219)
        if @state.backtracking == 0

          tree_for_char_literal218 = @adaptor.create_with_payload!(char_literal218)
          @adaptor.add_child(root_0, tree_for_char_literal218)

        end
        @state.following.push(TOKENS_FOLLOWING_suite_IN_except_clause_2221)
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
        # trace_out(__method__, 44)

      end
      
      return return_value
    end

    SuiteReturnValue = define_return_scope 

    # 
    # parser rule suite
    # 
    # (in samples/Python.g)
    # 388:1: suite : ( simple_statement -> ^( BLOCK simple_statement ) | NEWLINE INDENT ( statement )+ DEDENT -> ^( BLOCK ( statement )+ ) );
    # 
    def suite
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 45)
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
        # at line 389:3: ( simple_statement -> ^( BLOCK simple_statement ) | NEWLINE INDENT ( statement )+ DEDENT -> ^( BLOCK ( statement )+ ) )
        alt_71 = 2
        look_71_0 = @input.peek(1)

        if (look_71_0.between?(LONGINT, COMPLEX) || look_71_0 == LPAREN || look_71_0.between?(NAME, LBRACK) || look_71_0 == LCURLY || look_71_0.between?(INT, STRING) || look_71_0 == T__59 || look_71_0.between?(T__61, T__68) || look_71_0.between?(T__70, T__71) || look_71_0 == T__73 || look_71_0 == T__85 || look_71_0.between?(T__98, T__99) || look_71_0.between?(T__103, T__105) || look_71_0 == T__107) 
          alt_71 = 1
        elsif (look_71_0 == NEWLINE) 
          alt_71 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 71, 0)
          raise nvae
        end
        case alt_71
        when 1
          # at line 389:5: simple_statement
          @state.following.push(TOKENS_FOLLOWING_simple_statement_IN_suite_2234)
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
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

            root_0 = @adaptor.create_flat_list!
            # 389:22: -> ^( BLOCK simple_statement )
            # at line 389:25: ^( BLOCK simple_statement )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(@adaptor.create_from_type!(BLOCK, "BLOCK"), root_1)

            @adaptor.add_child(root_1, stream_simple_statement.next_tree)

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 2
          # at line 390:5: NEWLINE INDENT ( statement )+ DEDENT
          __NEWLINE221__ = match(NEWLINE, TOKENS_FOLLOWING_NEWLINE_IN_suite_2248) 
          if @state.backtracking == 0
            stream_NEWLINE.add(__NEWLINE221__)
          end
          __INDENT222__ = match(INDENT, TOKENS_FOLLOWING_INDENT_IN_suite_2250) 
          if @state.backtracking == 0
            stream_INDENT.add(__INDENT222__)
          end
          # at file 390:20: ( statement )+
          match_count_70 = 0
          loop do
            alt_70 = 2
            look_70_0 = @input.peek(1)

            if (look_70_0.between?(LONGINT, COMPLEX) || look_70_0 == LPAREN || look_70_0.between?(NAME, LBRACK) || look_70_0 == LCURLY || look_70_0.between?(INT, STRING) || look_70_0 == T__38 || look_70_0 == T__40 || look_70_0 == T__59 || look_70_0.between?(T__61, T__68) || look_70_0.between?(T__70, T__71) || look_70_0.between?(T__73, T__74) || look_70_0.between?(T__77, T__79) || look_70_0 == T__81 || look_70_0 == T__85 || look_70_0.between?(T__98, T__99) || look_70_0.between?(T__103, T__107)) 
              alt_70 = 1

            end
            case alt_70
            when 1
              # at line 390:21: statement
              @state.following.push(TOKENS_FOLLOWING_statement_IN_suite_2253)
              statement223 = statement
              @state.following.pop
              if @state.backtracking == 0
                stream_statement.add(statement223.tree)
              end

            else
              match_count_70 > 0 and break
              @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

              eee = EarlyExit(70)


              raise eee
            end
            match_count_70 += 1
          end

          __DEDENT224__ = match(DEDENT, TOKENS_FOLLOWING_DEDENT_IN_suite_2257) 
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
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

            root_0 = @adaptor.create_flat_list!
            # 390:40: -> ^( BLOCK ( statement )+ )
            # at line 390:43: ^( BLOCK ( statement )+ )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(@adaptor.create_from_type!(BLOCK, "BLOCK"), root_1)

            # at line 390:51: ( statement )+
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
        # trace_out(__method__, 45)

      end
      
      return return_value
    end

    TestReturnValue = define_return_scope 

    # 
    # parser rule test
    # 
    # (in samples/Python.g)
    # 393:1: test : ( or_test ( ( 'if' or_test 'else' )=> 'if' or_test 'else' test )? | lamb_def );
    # 
    def test
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 46)
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
        # at line 394:3: ( or_test ( ( 'if' or_test 'else' )=> 'if' or_test 'else' test )? | lamb_def )
        alt_73 = 2
        look_73_0 = @input.peek(1)

        if (look_73_0.between?(LONGINT, COMPLEX) || look_73_0 == LPAREN || look_73_0.between?(NAME, LBRACK) || look_73_0 == LCURLY || look_73_0.between?(INT, STRING) || look_73_0 == T__85 || look_73_0.between?(T__98, T__99) || look_73_0.between?(T__103, T__104)) 
          alt_73 = 1
        elsif (look_73_0 == T__105) 
          alt_73 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 73, 0)
          raise nvae
        end
        case alt_73
        when 1
          root_0 = @adaptor.create_flat_list!


          # at line 394:5: or_test ( ( 'if' or_test 'else' )=> 'if' or_test 'else' test )?
          @state.following.push(TOKENS_FOLLOWING_or_test_IN_test_2279)
          or_test225 = or_test
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, or_test225.tree)
          end
          # at line 395:5: ( ( 'if' or_test 'else' )=> 'if' or_test 'else' test )?
          alt_72 = 2
          alt_72 = @dfa72.predict(@input)
          case alt_72
          when 1
            # at line 395:7: ( 'if' or_test 'else' )=> 'if' or_test 'else' test
            string_literal226 = match(T__74, TOKENS_FOLLOWING_T__74_IN_test_2297)
            if @state.backtracking == 0

              tree_for_string_literal226 = @adaptor.create_with_payload!(string_literal226)
              @adaptor.add_child(root_0, tree_for_string_literal226)

            end
            @state.following.push(TOKENS_FOLLOWING_or_test_IN_test_2299)
            or_test227 = or_test
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, or_test227.tree)
            end
            string_literal228 = match(T__75, TOKENS_FOLLOWING_T__75_IN_test_2301)
            if @state.backtracking == 0

              tree_for_string_literal228 = @adaptor.create_with_payload!(string_literal228)
              @adaptor.add_child(root_0, tree_for_string_literal228)

            end
            @state.following.push(TOKENS_FOLLOWING_test_IN_test_2303)
            test229 = test
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, test229.tree)
            end

          end

        when 2
          root_0 = @adaptor.create_flat_list!


          # at line 396:5: lamb_def
          @state.following.push(TOKENS_FOLLOWING_lamb_def_IN_test_2312)
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
        # trace_out(__method__, 46)

      end
      
      return return_value
    end

    OrTestReturnValue = define_return_scope 

    # 
    # parser rule or_test
    # 
    # (in samples/Python.g)
    # 399:1: or_test : and_test ( 'or' and_test )* ;
    # 
    def or_test
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 47)
      return_value = OrTestReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal232 = nil
      and_test231 = nil
      and_test233 = nil

      tree_for_string_literal232 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 400:5: and_test ( 'or' and_test )*
        @state.following.push(TOKENS_FOLLOWING_and_test_IN_or_test_2325)
        and_test231 = and_test
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, and_test231.tree)
        end
        # at line 400:14: ( 'or' and_test )*
        loop do # decision 74
          alt_74 = 2
          look_74_0 = @input.peek(1)

          if (look_74_0 == T__83) 
            alt_74 = 1

          end
          case alt_74
          when 1
            # at line 400:16: 'or' and_test
            string_literal232 = match(T__83, TOKENS_FOLLOWING_T__83_IN_or_test_2329)
            if @state.backtracking == 0

              tree_for_string_literal232 = @adaptor.create_with_payload!(string_literal232)
              @adaptor.add_child(root_0, tree_for_string_literal232)

            end
            @state.following.push(TOKENS_FOLLOWING_and_test_IN_or_test_2331)
            and_test233 = and_test
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, and_test233.tree)
            end

          else
            break # out of loop for decision 74
          end
        end # loop for decision 74
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

    AndTestReturnValue = define_return_scope 

    # 
    # parser rule and_test
    # 
    # (in samples/Python.g)
    # 403:1: and_test : not_test ( 'and' not_test )* ;
    # 
    def and_test
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 48)
      return_value = AndTestReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal235 = nil
      not_test234 = nil
      not_test236 = nil

      tree_for_string_literal235 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 404:5: not_test ( 'and' not_test )*
        @state.following.push(TOKENS_FOLLOWING_not_test_IN_and_test_2347)
        not_test234 = not_test
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, not_test234.tree)
        end
        # at line 404:14: ( 'and' not_test )*
        loop do # decision 75
          alt_75 = 2
          look_75_0 = @input.peek(1)

          if (look_75_0 == T__84) 
            alt_75 = 1

          end
          case alt_75
          when 1
            # at line 404:16: 'and' not_test
            string_literal235 = match(T__84, TOKENS_FOLLOWING_T__84_IN_and_test_2351)
            if @state.backtracking == 0

              tree_for_string_literal235 = @adaptor.create_with_payload!(string_literal235)
              @adaptor.add_child(root_0, tree_for_string_literal235)

            end
            @state.following.push(TOKENS_FOLLOWING_not_test_IN_and_test_2353)
            not_test236 = not_test
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, not_test236.tree)
            end

          else
            break # out of loop for decision 75
          end
        end # loop for decision 75
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

    NotTestReturnValue = define_return_scope 

    # 
    # parser rule not_test
    # 
    # (in samples/Python.g)
    # 407:1: not_test : ( 'not' not_test | comparison );
    # 
    def not_test
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 49)
      return_value = NotTestReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal237 = nil
      not_test238 = nil
      comparison239 = nil

      tree_for_string_literal237 = nil

      begin
        # at line 408:3: ( 'not' not_test | comparison )
        alt_76 = 2
        look_76_0 = @input.peek(1)

        if (look_76_0 == T__85) 
          alt_76 = 1
        elsif (look_76_0.between?(LONGINT, COMPLEX) || look_76_0 == LPAREN || look_76_0.between?(NAME, LBRACK) || look_76_0 == LCURLY || look_76_0.between?(INT, STRING) || look_76_0.between?(T__98, T__99) || look_76_0.between?(T__103, T__104)) 
          alt_76 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 76, 0)
          raise nvae
        end
        case alt_76
        when 1
          root_0 = @adaptor.create_flat_list!


          # at line 408:5: 'not' not_test
          string_literal237 = match(T__85, TOKENS_FOLLOWING_T__85_IN_not_test_2369)
          if @state.backtracking == 0

            tree_for_string_literal237 = @adaptor.create_with_payload!(string_literal237)
            @adaptor.add_child(root_0, tree_for_string_literal237)

          end
          @state.following.push(TOKENS_FOLLOWING_not_test_IN_not_test_2371)
          not_test238 = not_test
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, not_test238.tree)
          end

        when 2
          root_0 = @adaptor.create_flat_list!


          # at line 409:5: comparison
          @state.following.push(TOKENS_FOLLOWING_comparison_IN_not_test_2377)
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
        # trace_out(__method__, 49)

      end
      
      return return_value
    end

    ComparisonReturnValue = define_return_scope 

    # 
    # parser rule comparison
    # 
    # (in samples/Python.g)
    # 412:1: comparison : expr ( ( '<' | '>' | '==' | '>=' | '<=' | '<>' | '!=' | 'in' | 'not' 'in' | 'is' | 'is' 'not' ) expr )* ;
    # 
    def comparison
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 50)
      return_value = ComparisonReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal241 = nil
      char_literal242 = nil
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
      string_literal253 = nil
      expr240 = nil
      expr254 = nil

      tree_for_char_literal241 = nil
      tree_for_char_literal242 = nil
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
      tree_for_string_literal253 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 413:5: expr ( ( '<' | '>' | '==' | '>=' | '<=' | '<>' | '!=' | 'in' | 'not' 'in' | 'is' | 'is' 'not' ) expr )*
        @state.following.push(TOKENS_FOLLOWING_expr_IN_comparison_2390)
        expr240 = expr
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, expr240.tree)
        end
        # at line 414:5: ( ( '<' | '>' | '==' | '>=' | '<=' | '<>' | '!=' | 'in' | 'not' 'in' | 'is' | 'is' 'not' ) expr )*
        loop do # decision 78
          alt_78 = 2
          look_78_0 = @input.peek(1)

          if (look_78_0 == T__72 || look_78_0.between?(T__85, T__93)) 
            alt_78 = 1

          end
          case alt_78
          when 1
            # at line 415:7: ( '<' | '>' | '==' | '>=' | '<=' | '<>' | '!=' | 'in' | 'not' 'in' | 'is' | 'is' 'not' ) expr
            # at line 415:7: ( '<' | '>' | '==' | '>=' | '<=' | '<>' | '!=' | 'in' | 'not' 'in' | 'is' | 'is' 'not' )
            alt_77 = 11
            alt_77 = @dfa77.predict(@input)
            case alt_77
            when 1
              # at line 415:9: '<'
              char_literal241 = match(T__86, TOKENS_FOLLOWING_T__86_IN_comparison_2406)
              if @state.backtracking == 0

                tree_for_char_literal241 = @adaptor.create_with_payload!(char_literal241)
                root_0 = @adaptor.become_root(tree_for_char_literal241, root_0)

              end

            when 2
              # at line 416:9: '>'
              char_literal242 = match(T__87, TOKENS_FOLLOWING_T__87_IN_comparison_2417)
              if @state.backtracking == 0

                tree_for_char_literal242 = @adaptor.create_with_payload!(char_literal242)
                root_0 = @adaptor.become_root(tree_for_char_literal242, root_0)

              end

            when 3
              # at line 417:9: '=='
              string_literal243 = match(T__88, TOKENS_FOLLOWING_T__88_IN_comparison_2428)
              if @state.backtracking == 0

                tree_for_string_literal243 = @adaptor.create_with_payload!(string_literal243)
                root_0 = @adaptor.become_root(tree_for_string_literal243, root_0)

              end

            when 4
              # at line 418:9: '>='
              string_literal244 = match(T__89, TOKENS_FOLLOWING_T__89_IN_comparison_2439)
              if @state.backtracking == 0

                tree_for_string_literal244 = @adaptor.create_with_payload!(string_literal244)
                root_0 = @adaptor.become_root(tree_for_string_literal244, root_0)

              end

            when 5
              # at line 419:9: '<='
              string_literal245 = match(T__90, TOKENS_FOLLOWING_T__90_IN_comparison_2450)
              if @state.backtracking == 0

                tree_for_string_literal245 = @adaptor.create_with_payload!(string_literal245)
                root_0 = @adaptor.become_root(tree_for_string_literal245, root_0)

              end

            when 6
              # at line 420:9: '<>'
              string_literal246 = match(T__91, TOKENS_FOLLOWING_T__91_IN_comparison_2461)
              if @state.backtracking == 0

                tree_for_string_literal246 = @adaptor.create_with_payload!(string_literal246)
                root_0 = @adaptor.become_root(tree_for_string_literal246, root_0)

              end

            when 7
              # at line 421:9: '!='
              string_literal247 = match(T__92, TOKENS_FOLLOWING_T__92_IN_comparison_2472)
              if @state.backtracking == 0

                tree_for_string_literal247 = @adaptor.create_with_payload!(string_literal247)
                root_0 = @adaptor.become_root(tree_for_string_literal247, root_0)

              end

            when 8
              # at line 422:9: 'in'
              string_literal248 = match(T__72, TOKENS_FOLLOWING_T__72_IN_comparison_2483)
              if @state.backtracking == 0

                tree_for_string_literal248 = @adaptor.create_with_payload!(string_literal248)
                root_0 = @adaptor.become_root(tree_for_string_literal248, root_0)

              end

            when 9
              # at line 423:9: 'not' 'in'
              string_literal249 = match(T__85, TOKENS_FOLLOWING_T__85_IN_comparison_2494)
              if @state.backtracking == 0

                tree_for_string_literal249 = @adaptor.create_with_payload!(string_literal249)
                root_0 = @adaptor.become_root(tree_for_string_literal249, root_0)

              end
              string_literal250 = match(T__72, TOKENS_FOLLOWING_T__72_IN_comparison_2497)
              if @state.backtracking == 0

                tree_for_string_literal250 = @adaptor.create_with_payload!(string_literal250)
                root_0 = @adaptor.become_root(tree_for_string_literal250, root_0)

              end

            when 10
              # at line 424:9: 'is'
              string_literal251 = match(T__93, TOKENS_FOLLOWING_T__93_IN_comparison_2508)
              if @state.backtracking == 0

                tree_for_string_literal251 = @adaptor.create_with_payload!(string_literal251)
                root_0 = @adaptor.become_root(tree_for_string_literal251, root_0)

              end

            when 11
              # at line 425:9: 'is' 'not'
              string_literal252 = match(T__93, TOKENS_FOLLOWING_T__93_IN_comparison_2519)
              if @state.backtracking == 0

                tree_for_string_literal252 = @adaptor.create_with_payload!(string_literal252)
                root_0 = @adaptor.become_root(tree_for_string_literal252, root_0)

              end
              string_literal253 = match(T__85, TOKENS_FOLLOWING_T__85_IN_comparison_2522)
              if @state.backtracking == 0

                tree_for_string_literal253 = @adaptor.create_with_payload!(string_literal253)
                root_0 = @adaptor.become_root(tree_for_string_literal253, root_0)

              end

            end
            @state.following.push(TOKENS_FOLLOWING_expr_IN_comparison_2539)
            expr254 = expr
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, expr254.tree)
            end

          else
            break # out of loop for decision 78
          end
        end # loop for decision 78
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

    ExprReturnValue = define_return_scope 

    # 
    # parser rule expr
    # 
    # (in samples/Python.g)
    # 431:1: expr : xor_expr ( '|' xor_expr )* ;
    # 
    def expr
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 51)
      return_value = ExprReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal256 = nil
      xor_expr255 = nil
      xor_expr257 = nil

      tree_for_char_literal256 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 432:5: xor_expr ( '|' xor_expr )*
        @state.following.push(TOKENS_FOLLOWING_xor_expr_IN_expr_2559)
        xor_expr255 = xor_expr
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, xor_expr255.tree)
        end
        # at line 432:14: ( '|' xor_expr )*
        loop do # decision 79
          alt_79 = 2
          look_79_0 = @input.peek(1)

          if (look_79_0 == T__94) 
            alt_79 = 1

          end
          case alt_79
          when 1
            # at line 432:16: '|' xor_expr
            char_literal256 = match(T__94, TOKENS_FOLLOWING_T__94_IN_expr_2563)
            if @state.backtracking == 0

              tree_for_char_literal256 = @adaptor.create_with_payload!(char_literal256)
              root_0 = @adaptor.become_root(tree_for_char_literal256, root_0)

            end
            @state.following.push(TOKENS_FOLLOWING_xor_expr_IN_expr_2566)
            xor_expr257 = xor_expr
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, xor_expr257.tree)
            end

          else
            break # out of loop for decision 79
          end
        end # loop for decision 79
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
        # trace_out(__method__, 51)

      end
      
      return return_value
    end

    XorExprReturnValue = define_return_scope 

    # 
    # parser rule xor_expr
    # 
    # (in samples/Python.g)
    # 435:1: xor_expr : and_expr ( '^' and_expr )* ;
    # 
    def xor_expr
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 52)
      return_value = XorExprReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal259 = nil
      and_expr258 = nil
      and_expr260 = nil

      tree_for_char_literal259 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 436:5: and_expr ( '^' and_expr )*
        @state.following.push(TOKENS_FOLLOWING_and_expr_IN_xor_expr_2582)
        and_expr258 = and_expr
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, and_expr258.tree)
        end
        # at line 436:14: ( '^' and_expr )*
        loop do # decision 80
          alt_80 = 2
          look_80_0 = @input.peek(1)

          if (look_80_0 == T__95) 
            alt_80 = 1

          end
          case alt_80
          when 1
            # at line 436:16: '^' and_expr
            char_literal259 = match(T__95, TOKENS_FOLLOWING_T__95_IN_xor_expr_2586)
            if @state.backtracking == 0

              tree_for_char_literal259 = @adaptor.create_with_payload!(char_literal259)
              root_0 = @adaptor.become_root(tree_for_char_literal259, root_0)

            end
            @state.following.push(TOKENS_FOLLOWING_and_expr_IN_xor_expr_2589)
            and_expr260 = and_expr
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, and_expr260.tree)
            end

          else
            break # out of loop for decision 80
          end
        end # loop for decision 80
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

    AndExprReturnValue = define_return_scope 

    # 
    # parser rule and_expr
    # 
    # (in samples/Python.g)
    # 439:1: and_expr : shift_expr ( '&' shift_expr )* ;
    # 
    def and_expr
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 53)
      return_value = AndExprReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal262 = nil
      shift_expr261 = nil
      shift_expr263 = nil

      tree_for_char_literal262 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 440:5: shift_expr ( '&' shift_expr )*
        @state.following.push(TOKENS_FOLLOWING_shift_expr_IN_and_expr_2605)
        shift_expr261 = shift_expr
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, shift_expr261.tree)
        end
        # at line 440:16: ( '&' shift_expr )*
        loop do # decision 81
          alt_81 = 2
          look_81_0 = @input.peek(1)

          if (look_81_0 == T__96) 
            alt_81 = 1

          end
          case alt_81
          when 1
            # at line 440:18: '&' shift_expr
            char_literal262 = match(T__96, TOKENS_FOLLOWING_T__96_IN_and_expr_2609)
            if @state.backtracking == 0

              tree_for_char_literal262 = @adaptor.create_with_payload!(char_literal262)
              root_0 = @adaptor.become_root(tree_for_char_literal262, root_0)

            end
            @state.following.push(TOKENS_FOLLOWING_shift_expr_IN_and_expr_2612)
            shift_expr263 = shift_expr
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, shift_expr263.tree)
            end

          else
            break # out of loop for decision 81
          end
        end # loop for decision 81
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

    ShiftExprReturnValue = define_return_scope 

    # 
    # parser rule shift_expr
    # 
    # (in samples/Python.g)
    # 443:1: shift_expr : arith_expr ( ( '<<' | '>>' ) arith_expr )* ;
    # 
    def shift_expr
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 54)
      return_value = ShiftExprReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal265 = nil
      string_literal266 = nil
      arith_expr264 = nil
      arith_expr267 = nil

      tree_for_string_literal265 = nil
      tree_for_string_literal266 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 444:5: arith_expr ( ( '<<' | '>>' ) arith_expr )*
        @state.following.push(TOKENS_FOLLOWING_arith_expr_IN_shift_expr_2628)
        arith_expr264 = arith_expr
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, arith_expr264.tree)
        end
        # at line 444:16: ( ( '<<' | '>>' ) arith_expr )*
        loop do # decision 83
          alt_83 = 2
          look_83_0 = @input.peek(1)

          if (look_83_0 == T__60 || look_83_0 == T__97) 
            alt_83 = 1

          end
          case alt_83
          when 1
            # at line 444:18: ( '<<' | '>>' ) arith_expr
            # at line 444:18: ( '<<' | '>>' )
            alt_82 = 2
            look_82_0 = @input.peek(1)

            if (look_82_0 == T__97) 
              alt_82 = 1
            elsif (look_82_0 == T__60) 
              alt_82 = 2
            else
              @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
            nvae = NoViableAlternative("", 82, 0)
              raise nvae
            end
            case alt_82
            when 1
              # at line 444:20: '<<'
              string_literal265 = match(T__97, TOKENS_FOLLOWING_T__97_IN_shift_expr_2634)
              if @state.backtracking == 0

                tree_for_string_literal265 = @adaptor.create_with_payload!(string_literal265)
                root_0 = @adaptor.become_root(tree_for_string_literal265, root_0)

              end

            when 2
              # at line 444:28: '>>'
              string_literal266 = match(T__60, TOKENS_FOLLOWING_T__60_IN_shift_expr_2639)
              if @state.backtracking == 0

                tree_for_string_literal266 = @adaptor.create_with_payload!(string_literal266)
                root_0 = @adaptor.become_root(tree_for_string_literal266, root_0)

              end

            end
            @state.following.push(TOKENS_FOLLOWING_arith_expr_IN_shift_expr_2644)
            arith_expr267 = arith_expr
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, arith_expr267.tree)
            end

          else
            break # out of loop for decision 83
          end
        end # loop for decision 83
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

    ArithExprReturnValue = define_return_scope 

    # 
    # parser rule arith_expr
    # 
    # (in samples/Python.g)
    # 447:1: arith_expr : term ( ( '+' | '-' ) term )* ;
    # 
    def arith_expr
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 55)
      return_value = ArithExprReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal269 = nil
      char_literal270 = nil
      term268 = nil
      term271 = nil

      tree_for_char_literal269 = nil
      tree_for_char_literal270 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 448:5: term ( ( '+' | '-' ) term )*
        @state.following.push(TOKENS_FOLLOWING_term_IN_arith_expr_2660)
        term268 = term
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, term268.tree)
        end
        # at line 448:10: ( ( '+' | '-' ) term )*
        loop do # decision 85
          alt_85 = 2
          look_85_0 = @input.peek(1)

          if (look_85_0.between?(T__98, T__99)) 
            alt_85 = 1

          end
          case alt_85
          when 1
            # at line 448:12: ( '+' | '-' ) term
            # at line 448:12: ( '+' | '-' )
            alt_84 = 2
            look_84_0 = @input.peek(1)

            if (look_84_0 == T__98) 
              alt_84 = 1
            elsif (look_84_0 == T__99) 
              alt_84 = 2
            else
              @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
            nvae = NoViableAlternative("", 84, 0)
              raise nvae
            end
            case alt_84
            when 1
              # at line 448:14: '+'
              char_literal269 = match(T__98, TOKENS_FOLLOWING_T__98_IN_arith_expr_2666)
              if @state.backtracking == 0

                tree_for_char_literal269 = @adaptor.create_with_payload!(char_literal269)
                root_0 = @adaptor.become_root(tree_for_char_literal269, root_0)

              end

            when 2
              # at line 448:21: '-'
              char_literal270 = match(T__99, TOKENS_FOLLOWING_T__99_IN_arith_expr_2671)
              if @state.backtracking == 0

                tree_for_char_literal270 = @adaptor.create_with_payload!(char_literal270)
                root_0 = @adaptor.become_root(tree_for_char_literal270, root_0)

              end

            end
            @state.following.push(TOKENS_FOLLOWING_term_IN_arith_expr_2676)
            term271 = term
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, term271.tree)
            end

          else
            break # out of loop for decision 85
          end
        end # loop for decision 85
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

    TermReturnValue = define_return_scope 

    # 
    # parser rule term
    # 
    # (in samples/Python.g)
    # 451:1: term : factor ( ( '*' | '/' | '%' | '//' ) factor )* ;
    # 
    def term
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 56)
      return_value = TermReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal273 = nil
      char_literal274 = nil
      char_literal275 = nil
      string_literal276 = nil
      factor272 = nil
      factor277 = nil

      tree_for_char_literal273 = nil
      tree_for_char_literal274 = nil
      tree_for_char_literal275 = nil
      tree_for_string_literal276 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 452:5: factor ( ( '*' | '/' | '%' | '//' ) factor )*
        @state.following.push(TOKENS_FOLLOWING_factor_IN_term_2692)
        factor272 = factor
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, factor272.tree)
        end
        # at line 452:12: ( ( '*' | '/' | '%' | '//' ) factor )*
        loop do # decision 87
          alt_87 = 2
          look_87_0 = @input.peek(1)

          if (look_87_0 == T__43 || look_87_0.between?(T__100, T__102)) 
            alt_87 = 1

          end
          case alt_87
          when 1
            # at line 452:14: ( '*' | '/' | '%' | '//' ) factor
            # at line 452:14: ( '*' | '/' | '%' | '//' )
            alt_86 = 4
            case look_86 = @input.peek(1)
            when T__43 then alt_86 = 1
            when T__100 then alt_86 = 2
            when T__101 then alt_86 = 3
            when T__102 then alt_86 = 4
            else
              @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

              nvae = NoViableAlternative("", 86, 0)
              raise nvae
            end
            case alt_86
            when 1
              # at line 452:16: '*'
              char_literal273 = match(T__43, TOKENS_FOLLOWING_T__43_IN_term_2698)
              if @state.backtracking == 0

                tree_for_char_literal273 = @adaptor.create_with_payload!(char_literal273)
                root_0 = @adaptor.become_root(tree_for_char_literal273, root_0)

              end

            when 2
              # at line 452:23: '/'
              char_literal274 = match(T__100, TOKENS_FOLLOWING_T__100_IN_term_2703)
              if @state.backtracking == 0

                tree_for_char_literal274 = @adaptor.create_with_payload!(char_literal274)
                root_0 = @adaptor.become_root(tree_for_char_literal274, root_0)

              end

            when 3
              # at line 452:30: '%'
              char_literal275 = match(T__101, TOKENS_FOLLOWING_T__101_IN_term_2708)
              if @state.backtracking == 0

                tree_for_char_literal275 = @adaptor.create_with_payload!(char_literal275)
                root_0 = @adaptor.become_root(tree_for_char_literal275, root_0)

              end

            when 4
              # at line 452:37: '//'
              string_literal276 = match(T__102, TOKENS_FOLLOWING_T__102_IN_term_2713)
              if @state.backtracking == 0

                tree_for_string_literal276 = @adaptor.create_with_payload!(string_literal276)
                root_0 = @adaptor.become_root(tree_for_string_literal276, root_0)

              end

            end
            @state.following.push(TOKENS_FOLLOWING_factor_IN_term_2718)
            factor277 = factor
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, factor277.tree)
            end

          else
            break # out of loop for decision 87
          end
        end # loop for decision 87
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

    FactorReturnValue = define_return_scope 

    # 
    # parser rule factor
    # 
    # (in samples/Python.g)
    # 455:1: factor : ( '+' factor | '-' factor | '~' factor | power );
    # 
    def factor
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 57)
      return_value = FactorReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal278 = nil
      char_literal280 = nil
      char_literal282 = nil
      factor279 = nil
      factor281 = nil
      factor283 = nil
      power284 = nil

      tree_for_char_literal278 = nil
      tree_for_char_literal280 = nil
      tree_for_char_literal282 = nil

      begin
        # at line 456:3: ( '+' factor | '-' factor | '~' factor | power )
        alt_88 = 4
        case look_88 = @input.peek(1)
        when T__98 then alt_88 = 1
        when T__99 then alt_88 = 2
        when T__103 then alt_88 = 3
        when LONGINT, COMPLEX, LPAREN, NAME, LBRACK, LCURLY, INT, FLOAT, STRING, T__104 then alt_88 = 4
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          nvae = NoViableAlternative("", 88, 0)
          raise nvae
        end
        case alt_88
        when 1
          root_0 = @adaptor.create_flat_list!


          # at line 456:5: '+' factor
          char_literal278 = match(T__98, TOKENS_FOLLOWING_T__98_IN_factor_2734)
          if @state.backtracking == 0

            tree_for_char_literal278 = @adaptor.create_with_payload!(char_literal278)
            root_0 = @adaptor.become_root(tree_for_char_literal278, root_0)

          end
          @state.following.push(TOKENS_FOLLOWING_factor_IN_factor_2737)
          factor279 = factor
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, factor279.tree)
          end

        when 2
          root_0 = @adaptor.create_flat_list!


          # at line 457:5: '-' factor
          char_literal280 = match(T__99, TOKENS_FOLLOWING_T__99_IN_factor_2743)
          if @state.backtracking == 0

            tree_for_char_literal280 = @adaptor.create_with_payload!(char_literal280)
            root_0 = @adaptor.become_root(tree_for_char_literal280, root_0)

          end
          @state.following.push(TOKENS_FOLLOWING_factor_IN_factor_2746)
          factor281 = factor
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, factor281.tree)
          end

        when 3
          root_0 = @adaptor.create_flat_list!


          # at line 458:5: '~' factor
          char_literal282 = match(T__103, TOKENS_FOLLOWING_T__103_IN_factor_2752)
          if @state.backtracking == 0

            tree_for_char_literal282 = @adaptor.create_with_payload!(char_literal282)
            root_0 = @adaptor.become_root(tree_for_char_literal282, root_0)

          end
          @state.following.push(TOKENS_FOLLOWING_factor_IN_factor_2755)
          factor283 = factor
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, factor283.tree)
          end

        when 4
          root_0 = @adaptor.create_flat_list!


          # at line 459:5: power
          @state.following.push(TOKENS_FOLLOWING_power_IN_factor_2761)
          power284 = power
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, power284.tree)
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

    PowerReturnValue = define_return_scope 

    # 
    # parser rule power
    # 
    # (in samples/Python.g)
    # 462:1: power : atom ( trailer )* ( '**' factor )? ;
    # 
    def power
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 58)
      return_value = PowerReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal287 = nil
      atom285 = nil
      trailer286 = nil
      factor288 = nil

      tree_for_string_literal287 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 463:5: atom ( trailer )* ( '**' factor )?
        @state.following.push(TOKENS_FOLLOWING_atom_IN_power_2774)
        atom285 = atom
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, atom285.tree)
        end
        # at line 463:10: ( trailer )*
        loop do # decision 89
          alt_89 = 2
          look_89_0 = @input.peek(1)

          if (look_89_0 == LPAREN || look_89_0 == LBRACK || look_89_0 == T__39) 
            alt_89 = 1

          end
          case alt_89
          when 1
            # at line 463:10: trailer
            @state.following.push(TOKENS_FOLLOWING_trailer_IN_power_2776)
            trailer286 = trailer
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, trailer286.tree)
            end

          else
            break # out of loop for decision 89
          end
        end # loop for decision 89
        # at line 463:19: ( '**' factor )?
        alt_90 = 2
        look_90_0 = @input.peek(1)

        if (look_90_0 == T__44) 
          alt_90 = 1
        end
        case alt_90
        when 1
          # at line 463:21: '**' factor
          string_literal287 = match(T__44, TOKENS_FOLLOWING_T__44_IN_power_2781)
          if @state.backtracking == 0

            tree_for_string_literal287 = @adaptor.create_with_payload!(string_literal287)
            root_0 = @adaptor.become_root(tree_for_string_literal287, root_0)

          end
          @state.following.push(TOKENS_FOLLOWING_factor_IN_power_2784)
          factor288 = factor
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, factor288.tree)
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

    AtomReturnValue = define_return_scope 

    # 
    # parser rule atom
    # 
    # (in samples/Python.g)
    # 466:1: atom : ( LPAREN ( yield_expr | testlist_gexp )? RPAREN | LBRACK ( list_maker )? RBRACK | LCURLY ( dict_maker )? RCURLY | '`' test_list '`' | NAME | INT | LONGINT | FLOAT | COMPLEX | ( STRING )+ );
    # 
    def atom
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 59)
      return_value = AtomReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __LPAREN289__ = nil
      __RPAREN292__ = nil
      __LBRACK293__ = nil
      __RBRACK295__ = nil
      __LCURLY296__ = nil
      __RCURLY298__ = nil
      char_literal299 = nil
      char_literal301 = nil
      __NAME302__ = nil
      __INT303__ = nil
      __LONGINT304__ = nil
      __FLOAT305__ = nil
      __COMPLEX306__ = nil
      __STRING307__ = nil
      yield_expr290 = nil
      testlist_gexp291 = nil
      list_maker294 = nil
      dict_maker297 = nil
      test_list300 = nil

      tree_for_LPAREN289 = nil
      tree_for_RPAREN292 = nil
      tree_for_LBRACK293 = nil
      tree_for_RBRACK295 = nil
      tree_for_LCURLY296 = nil
      tree_for_RCURLY298 = nil
      tree_for_char_literal299 = nil
      tree_for_char_literal301 = nil
      tree_for_NAME302 = nil
      tree_for_INT303 = nil
      tree_for_LONGINT304 = nil
      tree_for_FLOAT305 = nil
      tree_for_COMPLEX306 = nil
      tree_for_STRING307 = nil

      begin
        # at line 467:3: ( LPAREN ( yield_expr | testlist_gexp )? RPAREN | LBRACK ( list_maker )? RBRACK | LCURLY ( dict_maker )? RCURLY | '`' test_list '`' | NAME | INT | LONGINT | FLOAT | COMPLEX | ( STRING )+ )
        alt_95 = 10
        case look_95 = @input.peek(1)
        when LPAREN then alt_95 = 1
        when LBRACK then alt_95 = 2
        when LCURLY then alt_95 = 3
        when T__104 then alt_95 = 4
        when NAME then alt_95 = 5
        when INT then alt_95 = 6
        when LONGINT then alt_95 = 7
        when FLOAT then alt_95 = 8
        when COMPLEX then alt_95 = 9
        when STRING then alt_95 = 10
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          nvae = NoViableAlternative("", 95, 0)
          raise nvae
        end
        case alt_95
        when 1
          root_0 = @adaptor.create_flat_list!


          # at line 467:5: LPAREN ( yield_expr | testlist_gexp )? RPAREN
          __LPAREN289__ = match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_atom_2800)
          if @state.backtracking == 0

            tree_for_LPAREN289 = @adaptor.create_with_payload!(__LPAREN289__)
            @adaptor.add_child(root_0, tree_for_LPAREN289)

          end
          # at line 468:5: ( yield_expr | testlist_gexp )?
          alt_91 = 3
          look_91_0 = @input.peek(1)

          if (look_91_0 == T__107) 
            alt_91 = 1
          elsif (look_91_0.between?(LONGINT, COMPLEX) || look_91_0 == LPAREN || look_91_0.between?(NAME, LBRACK) || look_91_0 == LCURLY || look_91_0.between?(INT, STRING) || look_91_0 == T__85 || look_91_0.between?(T__98, T__99) || look_91_0.between?(T__103, T__105)) 
            alt_91 = 2
          end
          case alt_91
          when 1
            # at line 468:7: yield_expr
            @state.following.push(TOKENS_FOLLOWING_yield_expr_IN_atom_2809)
            yield_expr290 = yield_expr
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, yield_expr290.tree)
            end

          when 2
            # at line 469:7: testlist_gexp
            @state.following.push(TOKENS_FOLLOWING_testlist_gexp_IN_atom_2817)
            testlist_gexp291 = testlist_gexp
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, testlist_gexp291.tree)
            end

          end
          __RPAREN292__ = match(RPAREN, TOKENS_FOLLOWING_RPAREN_IN_atom_2830)
          if @state.backtracking == 0

            tree_for_RPAREN292 = @adaptor.create_with_payload!(__RPAREN292__)
            @adaptor.add_child(root_0, tree_for_RPAREN292)

          end

        when 2
          root_0 = @adaptor.create_flat_list!


          # at line 472:5: LBRACK ( list_maker )? RBRACK
          __LBRACK293__ = match(LBRACK, TOKENS_FOLLOWING_LBRACK_IN_atom_2836)
          if @state.backtracking == 0

            tree_for_LBRACK293 = @adaptor.create_with_payload!(__LBRACK293__)
            @adaptor.add_child(root_0, tree_for_LBRACK293)

          end
          # at line 472:12: ( list_maker )?
          alt_92 = 2
          look_92_0 = @input.peek(1)

          if (look_92_0.between?(LONGINT, COMPLEX) || look_92_0 == LPAREN || look_92_0.between?(NAME, LBRACK) || look_92_0 == LCURLY || look_92_0.between?(INT, STRING) || look_92_0 == T__85 || look_92_0.between?(T__98, T__99) || look_92_0.between?(T__103, T__105)) 
            alt_92 = 1
          end
          case alt_92
          when 1
            # at line 472:12: list_maker
            @state.following.push(TOKENS_FOLLOWING_list_maker_IN_atom_2838)
            list_maker294 = list_maker
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, list_maker294.tree)
            end

          end
          __RBRACK295__ = match(RBRACK, TOKENS_FOLLOWING_RBRACK_IN_atom_2841)
          if @state.backtracking == 0

            tree_for_RBRACK295 = @adaptor.create_with_payload!(__RBRACK295__)
            @adaptor.add_child(root_0, tree_for_RBRACK295)

          end

        when 3
          root_0 = @adaptor.create_flat_list!


          # at line 473:5: LCURLY ( dict_maker )? RCURLY
          __LCURLY296__ = match(LCURLY, TOKENS_FOLLOWING_LCURLY_IN_atom_2847)
          if @state.backtracking == 0

            tree_for_LCURLY296 = @adaptor.create_with_payload!(__LCURLY296__)
            @adaptor.add_child(root_0, tree_for_LCURLY296)

          end
          # at line 473:12: ( dict_maker )?
          alt_93 = 2
          look_93_0 = @input.peek(1)

          if (look_93_0.between?(LONGINT, COMPLEX) || look_93_0 == LPAREN || look_93_0.between?(NAME, LBRACK) || look_93_0 == LCURLY || look_93_0.between?(INT, STRING) || look_93_0 == T__85 || look_93_0.between?(T__98, T__99) || look_93_0.between?(T__103, T__105)) 
            alt_93 = 1
          end
          case alt_93
          when 1
            # at line 473:12: dict_maker
            @state.following.push(TOKENS_FOLLOWING_dict_maker_IN_atom_2849)
            dict_maker297 = dict_maker
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, dict_maker297.tree)
            end

          end
          __RCURLY298__ = match(RCURLY, TOKENS_FOLLOWING_RCURLY_IN_atom_2852)
          if @state.backtracking == 0

            tree_for_RCURLY298 = @adaptor.create_with_payload!(__RCURLY298__)
            @adaptor.add_child(root_0, tree_for_RCURLY298)

          end

        when 4
          root_0 = @adaptor.create_flat_list!


          # at line 474:5: '`' test_list '`'
          char_literal299 = match(T__104, TOKENS_FOLLOWING_T__104_IN_atom_2858)
          if @state.backtracking == 0

            tree_for_char_literal299 = @adaptor.create_with_payload!(char_literal299)
            @adaptor.add_child(root_0, tree_for_char_literal299)

          end
          @state.following.push(TOKENS_FOLLOWING_test_list_IN_atom_2860)
          test_list300 = test_list
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, test_list300.tree)
          end
          char_literal301 = match(T__104, TOKENS_FOLLOWING_T__104_IN_atom_2862)
          if @state.backtracking == 0

            tree_for_char_literal301 = @adaptor.create_with_payload!(char_literal301)
            @adaptor.add_child(root_0, tree_for_char_literal301)

          end

        when 5
          root_0 = @adaptor.create_flat_list!


          # at line 475:5: NAME
          __NAME302__ = match(NAME, TOKENS_FOLLOWING_NAME_IN_atom_2868)
          if @state.backtracking == 0

            tree_for_NAME302 = @adaptor.create_with_payload!(__NAME302__)
            @adaptor.add_child(root_0, tree_for_NAME302)

          end

        when 6
          root_0 = @adaptor.create_flat_list!


          # at line 476:5: INT
          __INT303__ = match(INT, TOKENS_FOLLOWING_INT_IN_atom_2874)
          if @state.backtracking == 0

            tree_for_INT303 = @adaptor.create_with_payload!(__INT303__)
            @adaptor.add_child(root_0, tree_for_INT303)

          end

        when 7
          root_0 = @adaptor.create_flat_list!


          # at line 477:5: LONGINT
          __LONGINT304__ = match(LONGINT, TOKENS_FOLLOWING_LONGINT_IN_atom_2880)
          if @state.backtracking == 0

            tree_for_LONGINT304 = @adaptor.create_with_payload!(__LONGINT304__)
            @adaptor.add_child(root_0, tree_for_LONGINT304)

          end

        when 8
          root_0 = @adaptor.create_flat_list!


          # at line 478:5: FLOAT
          __FLOAT305__ = match(FLOAT, TOKENS_FOLLOWING_FLOAT_IN_atom_2886)
          if @state.backtracking == 0

            tree_for_FLOAT305 = @adaptor.create_with_payload!(__FLOAT305__)
            @adaptor.add_child(root_0, tree_for_FLOAT305)

          end

        when 9
          root_0 = @adaptor.create_flat_list!


          # at line 479:5: COMPLEX
          __COMPLEX306__ = match(COMPLEX, TOKENS_FOLLOWING_COMPLEX_IN_atom_2892)
          if @state.backtracking == 0

            tree_for_COMPLEX306 = @adaptor.create_with_payload!(__COMPLEX306__)
            @adaptor.add_child(root_0, tree_for_COMPLEX306)

          end

        when 10
          root_0 = @adaptor.create_flat_list!


          # at line 480:5: ( STRING )+
          # at file 480:5: ( STRING )+
          match_count_94 = 0
          loop do
            alt_94 = 2
            look_94_0 = @input.peek(1)

            if (look_94_0 == STRING) 
              alt_94 = 1

            end
            case alt_94
            when 1
              # at line 480:5: STRING
              __STRING307__ = match(STRING, TOKENS_FOLLOWING_STRING_IN_atom_2898)
              if @state.backtracking == 0

                tree_for_STRING307 = @adaptor.create_with_payload!(__STRING307__)
                @adaptor.add_child(root_0, tree_for_STRING307)

              end

            else
              match_count_94 > 0 and break
              @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

              eee = EarlyExit(94)


              raise eee
            end
            match_count_94 += 1
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

    ListMakerReturnValue = define_return_scope 

    # 
    # parser rule list_maker
    # 
    # (in samples/Python.g)
    # 483:1: list_maker : test ( list_for | ( options {greedy=true; } : ',' test )* ) ( ',' )? ;
    # 
    def list_maker
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 60)
      return_value = ListMakerReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal310 = nil
      char_literal312 = nil
      test308 = nil
      list_for309 = nil
      test311 = nil

      tree_for_char_literal310 = nil
      tree_for_char_literal312 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 484:5: test ( list_for | ( options {greedy=true; } : ',' test )* ) ( ',' )?
        @state.following.push(TOKENS_FOLLOWING_test_IN_list_maker_2912)
        test308 = test
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, test308.tree)
        end
        # at line 485:5: ( list_for | ( options {greedy=true; } : ',' test )* )
        alt_97 = 2
        look_97_0 = @input.peek(1)

        if (look_97_0 == T__78) 
          alt_97 = 1
        elsif (look_97_0 == RBRACK || look_97_0 == T__42) 
          alt_97 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 97, 0)
          raise nvae
        end
        case alt_97
        when 1
          # at line 485:7: list_for
          @state.following.push(TOKENS_FOLLOWING_list_for_IN_list_maker_2921)
          list_for309 = list_for
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, list_for309.tree)
          end

        when 2
          # at line 486:7: ( options {greedy=true; } : ',' test )*
          # at line 486:7: ( options {greedy=true; } : ',' test )*
          loop do # decision 96
            alt_96 = 2
            look_96_0 = @input.peek(1)

            if (look_96_0 == T__42) 
              look_96_1 = @input.peek(2)

              if (look_96_1.between?(LONGINT, COMPLEX) || look_96_1 == LPAREN || look_96_1.between?(NAME, LBRACK) || look_96_1 == LCURLY || look_96_1.between?(INT, STRING) || look_96_1 == T__85 || look_96_1.between?(T__98, T__99) || look_96_1.between?(T__103, T__105)) 
                alt_96 = 1

              end

            end
            case alt_96
            when 1
              # at line 486:31: ',' test
              char_literal310 = match(T__42, TOKENS_FOLLOWING_T__42_IN_list_maker_2937)
              if @state.backtracking == 0

                tree_for_char_literal310 = @adaptor.create_with_payload!(char_literal310)
                @adaptor.add_child(root_0, tree_for_char_literal310)

              end
              @state.following.push(TOKENS_FOLLOWING_test_IN_list_maker_2939)
              test311 = test
              @state.following.pop
              if @state.backtracking == 0
                @adaptor.add_child(root_0, test311.tree)
              end

            else
              break # out of loop for decision 96
            end
          end # loop for decision 96

        end
        # at line 487:7: ( ',' )?
        alt_98 = 2
        look_98_0 = @input.peek(1)

        if (look_98_0 == T__42) 
          alt_98 = 1
        end
        case alt_98
        when 1
          # at line 487:7: ','
          char_literal312 = match(T__42, TOKENS_FOLLOWING_T__42_IN_list_maker_2949)
          if @state.backtracking == 0

            tree_for_char_literal312 = @adaptor.create_with_payload!(char_literal312)
            @adaptor.add_child(root_0, tree_for_char_literal312)

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

    TestlistGexpReturnValue = define_return_scope 

    # 
    # parser rule testlist_gexp
    # 
    # (in samples/Python.g)
    # 490:1: testlist_gexp : test ( ( options {k=2; } : ',' test )* ( ',' )? | gen_for ) ;
    # 
    def testlist_gexp
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 61)
      return_value = TestlistGexpReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal314 = nil
      char_literal316 = nil
      test313 = nil
      test315 = nil
      gen_for317 = nil

      tree_for_char_literal314 = nil
      tree_for_char_literal316 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 491:5: test ( ( options {k=2; } : ',' test )* ( ',' )? | gen_for )
        @state.following.push(TOKENS_FOLLOWING_test_IN_testlist_gexp_2963)
        test313 = test
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, test313.tree)
        end
        # at line 492:5: ( ( options {k=2; } : ',' test )* ( ',' )? | gen_for )
        alt_101 = 2
        look_101_0 = @input.peek(1)

        if (look_101_0 == RPAREN || look_101_0 == T__42) 
          alt_101 = 1
        elsif (look_101_0 == T__78) 
          alt_101 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 101, 0)
          raise nvae
        end
        case alt_101
        when 1
          # at line 492:7: ( options {k=2; } : ',' test )* ( ',' )?
          # at line 492:7: ( options {k=2; } : ',' test )*
          loop do # decision 99
            alt_99 = 2
            alt_99 = @dfa99.predict(@input)
            case alt_99
            when 1
              # at line 492:24: ',' test
              char_literal314 = match(T__42, TOKENS_FOLLOWING_T__42_IN_testlist_gexp_2980)
              if @state.backtracking == 0

                tree_for_char_literal314 = @adaptor.create_with_payload!(char_literal314)
                @adaptor.add_child(root_0, tree_for_char_literal314)

              end
              @state.following.push(TOKENS_FOLLOWING_test_IN_testlist_gexp_2982)
              test315 = test
              @state.following.pop
              if @state.backtracking == 0
                @adaptor.add_child(root_0, test315.tree)
              end

            else
              break # out of loop for decision 99
            end
          end # loop for decision 99
          # at line 492:35: ( ',' )?
          alt_100 = 2
          look_100_0 = @input.peek(1)

          if (look_100_0 == T__42) 
            alt_100 = 1
          end
          case alt_100
          when 1
            # at line 492:35: ','
            char_literal316 = match(T__42, TOKENS_FOLLOWING_T__42_IN_testlist_gexp_2986)
            if @state.backtracking == 0

              tree_for_char_literal316 = @adaptor.create_with_payload!(char_literal316)
              @adaptor.add_child(root_0, tree_for_char_literal316)

            end

          end

        when 2
          # at line 493:7: gen_for
          @state.following.push(TOKENS_FOLLOWING_gen_for_IN_testlist_gexp_2995)
          gen_for317 = gen_for
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, gen_for317.tree)
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

    LambDefReturnValue = define_return_scope 

    # 
    # parser rule lamb_def
    # 
    # (in samples/Python.g)
    # 497:1: lamb_def : 'lambda' ( var_args_list )? ':' test ;
    # 
    def lamb_def
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 62)
      return_value = LambDefReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal318 = nil
      char_literal320 = nil
      var_args_list319 = nil
      test321 = nil

      tree_for_string_literal318 = nil
      tree_for_char_literal320 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 498:5: 'lambda' ( var_args_list )? ':' test
        string_literal318 = match(T__105, TOKENS_FOLLOWING_T__105_IN_lamb_def_3014)
        if @state.backtracking == 0

          tree_for_string_literal318 = @adaptor.create_with_payload!(string_literal318)
          @adaptor.add_child(root_0, tree_for_string_literal318)

        end
        # at line 498:14: ( var_args_list )?
        alt_102 = 2
        look_102_0 = @input.peek(1)

        if (look_102_0 == LPAREN || look_102_0 == NAME || look_102_0.between?(T__43, T__44)) 
          alt_102 = 1
        end
        case alt_102
        when 1
          # at line 498:14: var_args_list
          @state.following.push(TOKENS_FOLLOWING_var_args_list_IN_lamb_def_3016)
          var_args_list319 = var_args_list
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, var_args_list319.tree)
          end

        end
        char_literal320 = match(T__41, TOKENS_FOLLOWING_T__41_IN_lamb_def_3019)
        if @state.backtracking == 0

          tree_for_char_literal320 = @adaptor.create_with_payload!(char_literal320)
          @adaptor.add_child(root_0, tree_for_char_literal320)

        end
        @state.following.push(TOKENS_FOLLOWING_test_IN_lamb_def_3021)
        test321 = test
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, test321.tree)
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

    TrailerReturnValue = define_return_scope 

    # 
    # parser rule trailer
    # 
    # (in samples/Python.g)
    # 501:1: trailer : ( LPAREN ( arg_list )? RPAREN | LBRACK subscript_list RBRACK | '.' NAME );
    # 
    def trailer
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 63)
      return_value = TrailerReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __LPAREN322__ = nil
      __RPAREN324__ = nil
      __LBRACK325__ = nil
      __RBRACK327__ = nil
      char_literal328 = nil
      __NAME329__ = nil
      arg_list323 = nil
      subscript_list326 = nil

      tree_for_LPAREN322 = nil
      tree_for_RPAREN324 = nil
      tree_for_LBRACK325 = nil
      tree_for_RBRACK327 = nil
      tree_for_char_literal328 = nil
      tree_for_NAME329 = nil

      begin
        # at line 502:3: ( LPAREN ( arg_list )? RPAREN | LBRACK subscript_list RBRACK | '.' NAME )
        alt_104 = 3
        case look_104 = @input.peek(1)
        when LPAREN then alt_104 = 1
        when LBRACK then alt_104 = 2
        when T__39 then alt_104 = 3
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          nvae = NoViableAlternative("", 104, 0)
          raise nvae
        end
        case alt_104
        when 1
          root_0 = @adaptor.create_flat_list!


          # at line 502:5: LPAREN ( arg_list )? RPAREN
          __LPAREN322__ = match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_trailer_3034)
          if @state.backtracking == 0

            tree_for_LPAREN322 = @adaptor.create_with_payload!(__LPAREN322__)
            @adaptor.add_child(root_0, tree_for_LPAREN322)

          end
          # at line 502:12: ( arg_list )?
          alt_103 = 2
          look_103_0 = @input.peek(1)

          if (look_103_0.between?(LONGINT, COMPLEX) || look_103_0 == LPAREN || look_103_0.between?(NAME, LBRACK) || look_103_0 == LCURLY || look_103_0.between?(INT, STRING) || look_103_0.between?(T__43, T__44) || look_103_0 == T__85 || look_103_0.between?(T__98, T__99) || look_103_0.between?(T__103, T__105)) 
            alt_103 = 1
          end
          case alt_103
          when 1
            # at line 502:12: arg_list
            @state.following.push(TOKENS_FOLLOWING_arg_list_IN_trailer_3036)
            arg_list323 = arg_list
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, arg_list323.tree)
            end

          end
          __RPAREN324__ = match(RPAREN, TOKENS_FOLLOWING_RPAREN_IN_trailer_3039)
          if @state.backtracking == 0

            tree_for_RPAREN324 = @adaptor.create_with_payload!(__RPAREN324__)
            @adaptor.add_child(root_0, tree_for_RPAREN324)

          end

        when 2
          root_0 = @adaptor.create_flat_list!


          # at line 503:5: LBRACK subscript_list RBRACK
          __LBRACK325__ = match(LBRACK, TOKENS_FOLLOWING_LBRACK_IN_trailer_3045)
          if @state.backtracking == 0

            tree_for_LBRACK325 = @adaptor.create_with_payload!(__LBRACK325__)
            @adaptor.add_child(root_0, tree_for_LBRACK325)

          end
          @state.following.push(TOKENS_FOLLOWING_subscript_list_IN_trailer_3047)
          subscript_list326 = subscript_list
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, subscript_list326.tree)
          end
          __RBRACK327__ = match(RBRACK, TOKENS_FOLLOWING_RBRACK_IN_trailer_3049)
          if @state.backtracking == 0

            tree_for_RBRACK327 = @adaptor.create_with_payload!(__RBRACK327__)
            @adaptor.add_child(root_0, tree_for_RBRACK327)

          end

        when 3
          root_0 = @adaptor.create_flat_list!


          # at line 504:5: '.' NAME
          char_literal328 = match(T__39, TOKENS_FOLLOWING_T__39_IN_trailer_3055)
          if @state.backtracking == 0

            tree_for_char_literal328 = @adaptor.create_with_payload!(char_literal328)
            @adaptor.add_child(root_0, tree_for_char_literal328)

          end
          __NAME329__ = match(NAME, TOKENS_FOLLOWING_NAME_IN_trailer_3057)
          if @state.backtracking == 0

            tree_for_NAME329 = @adaptor.create_with_payload!(__NAME329__)
            @adaptor.add_child(root_0, tree_for_NAME329)

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
        # trace_out(__method__, 63)

      end
      
      return return_value
    end

    SubscriptListReturnValue = define_return_scope 

    # 
    # parser rule subscript_list
    # 
    # (in samples/Python.g)
    # 507:1: subscript_list : subscript ( options {greedy=true; } : ',' subscript )* ( ',' )? ;
    # 
    def subscript_list
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 64)
      return_value = SubscriptListReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal331 = nil
      char_literal333 = nil
      subscript330 = nil
      subscript332 = nil

      tree_for_char_literal331 = nil
      tree_for_char_literal333 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 507:18: subscript ( options {greedy=true; } : ',' subscript )* ( ',' )?
        @state.following.push(TOKENS_FOLLOWING_subscript_IN_subscript_list_3068)
        subscript330 = subscript
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, subscript330.tree)
        end
        # at line 507:28: ( options {greedy=true; } : ',' subscript )*
        loop do # decision 105
          alt_105 = 2
          look_105_0 = @input.peek(1)

          if (look_105_0 == T__42) 
            look_105_1 = @input.peek(2)

            if (look_105_1.between?(LONGINT, COMPLEX) || look_105_1 == LPAREN || look_105_1.between?(NAME, LBRACK) || look_105_1 == LCURLY || look_105_1.between?(INT, STRING) || look_105_1 == T__39 || look_105_1 == T__41 || look_105_1 == T__85 || look_105_1.between?(T__98, T__99) || look_105_1.between?(T__103, T__105)) 
              alt_105 = 1

            end

          end
          case alt_105
          when 1
            # at line 507:52: ',' subscript
            char_literal331 = match(T__42, TOKENS_FOLLOWING_T__42_IN_subscript_list_3078)
            if @state.backtracking == 0

              tree_for_char_literal331 = @adaptor.create_with_payload!(char_literal331)
              @adaptor.add_child(root_0, tree_for_char_literal331)

            end
            @state.following.push(TOKENS_FOLLOWING_subscript_IN_subscript_list_3080)
            subscript332 = subscript
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, subscript332.tree)
            end

          else
            break # out of loop for decision 105
          end
        end # loop for decision 105
        # at line 507:68: ( ',' )?
        alt_106 = 2
        look_106_0 = @input.peek(1)

        if (look_106_0 == T__42) 
          alt_106 = 1
        end
        case alt_106
        when 1
          # at line 507:69: ','
          char_literal333 = match(T__42, TOKENS_FOLLOWING_T__42_IN_subscript_list_3085)
          if @state.backtracking == 0

            tree_for_char_literal333 = @adaptor.create_with_payload!(char_literal333)
            @adaptor.add_child(root_0, tree_for_char_literal333)

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
        # trace_out(__method__, 64)

      end
      
      return return_value
    end

    SubscriptReturnValue = define_return_scope 

    # 
    # parser rule subscript
    # 
    # (in samples/Python.g)
    # 510:1: subscript : ( '.' '.' '.' | test ( ':' ( test )? ( sliceop )? )? | ':' ( test )? ( sliceop )? );
    # 
    def subscript
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 65)
      return_value = SubscriptReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal334 = nil
      char_literal335 = nil
      char_literal336 = nil
      char_literal338 = nil
      char_literal341 = nil
      test337 = nil
      test339 = nil
      sliceop340 = nil
      test342 = nil
      sliceop343 = nil

      tree_for_char_literal334 = nil
      tree_for_char_literal335 = nil
      tree_for_char_literal336 = nil
      tree_for_char_literal338 = nil
      tree_for_char_literal341 = nil

      begin
        # at line 510:11: ( '.' '.' '.' | test ( ':' ( test )? ( sliceop )? )? | ':' ( test )? ( sliceop )? )
        alt_112 = 3
        case look_112 = @input.peek(1)
        when T__39 then alt_112 = 1
        when LONGINT, COMPLEX, LPAREN, NAME, LBRACK, LCURLY, INT, FLOAT, STRING, T__85, T__98, T__99, T__103, T__104, T__105 then alt_112 = 2
        when T__41 then alt_112 = 3
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          nvae = NoViableAlternative("", 112, 0)
          raise nvae
        end
        case alt_112
        when 1
          root_0 = @adaptor.create_flat_list!


          # at line 510:13: '.' '.' '.'
          char_literal334 = match(T__39, TOKENS_FOLLOWING_T__39_IN_subscript_3110)
          if @state.backtracking == 0

            tree_for_char_literal334 = @adaptor.create_with_payload!(char_literal334)
            @adaptor.add_child(root_0, tree_for_char_literal334)

          end
          char_literal335 = match(T__39, TOKENS_FOLLOWING_T__39_IN_subscript_3112)
          if @state.backtracking == 0

            tree_for_char_literal335 = @adaptor.create_with_payload!(char_literal335)
            @adaptor.add_child(root_0, tree_for_char_literal335)

          end
          char_literal336 = match(T__39, TOKENS_FOLLOWING_T__39_IN_subscript_3114)
          if @state.backtracking == 0

            tree_for_char_literal336 = @adaptor.create_with_payload!(char_literal336)
            @adaptor.add_child(root_0, tree_for_char_literal336)

          end

        when 2
          root_0 = @adaptor.create_flat_list!


          # at line 511:13: test ( ':' ( test )? ( sliceop )? )?
          @state.following.push(TOKENS_FOLLOWING_test_IN_subscript_3128)
          test337 = test
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, test337.tree)
          end
          # at line 511:18: ( ':' ( test )? ( sliceop )? )?
          alt_109 = 2
          look_109_0 = @input.peek(1)

          if (look_109_0 == T__41) 
            alt_109 = 1
          end
          case alt_109
          when 1
            # at line 511:19: ':' ( test )? ( sliceop )?
            char_literal338 = match(T__41, TOKENS_FOLLOWING_T__41_IN_subscript_3131)
            if @state.backtracking == 0

              tree_for_char_literal338 = @adaptor.create_with_payload!(char_literal338)
              @adaptor.add_child(root_0, tree_for_char_literal338)

            end
            # at line 511:23: ( test )?
            alt_107 = 2
            look_107_0 = @input.peek(1)

            if (look_107_0.between?(LONGINT, COMPLEX) || look_107_0 == LPAREN || look_107_0.between?(NAME, LBRACK) || look_107_0 == LCURLY || look_107_0.between?(INT, STRING) || look_107_0 == T__85 || look_107_0.between?(T__98, T__99) || look_107_0.between?(T__103, T__105)) 
              alt_107 = 1
            end
            case alt_107
            when 1
              # at line 511:24: test
              @state.following.push(TOKENS_FOLLOWING_test_IN_subscript_3134)
              test339 = test
              @state.following.pop
              if @state.backtracking == 0
                @adaptor.add_child(root_0, test339.tree)
              end

            end
            # at line 511:31: ( sliceop )?
            alt_108 = 2
            look_108_0 = @input.peek(1)

            if (look_108_0 == T__41) 
              alt_108 = 1
            end
            case alt_108
            when 1
              # at line 511:32: sliceop
              @state.following.push(TOKENS_FOLLOWING_sliceop_IN_subscript_3139)
              sliceop340 = sliceop
              @state.following.pop
              if @state.backtracking == 0
                @adaptor.add_child(root_0, sliceop340.tree)
              end

            end

          end

        when 3
          root_0 = @adaptor.create_flat_list!


          # at line 512:13: ':' ( test )? ( sliceop )?
          char_literal341 = match(T__41, TOKENS_FOLLOWING_T__41_IN_subscript_3157)
          if @state.backtracking == 0

            tree_for_char_literal341 = @adaptor.create_with_payload!(char_literal341)
            @adaptor.add_child(root_0, tree_for_char_literal341)

          end
          # at line 512:17: ( test )?
          alt_110 = 2
          look_110_0 = @input.peek(1)

          if (look_110_0.between?(LONGINT, COMPLEX) || look_110_0 == LPAREN || look_110_0.between?(NAME, LBRACK) || look_110_0 == LCURLY || look_110_0.between?(INT, STRING) || look_110_0 == T__85 || look_110_0.between?(T__98, T__99) || look_110_0.between?(T__103, T__105)) 
            alt_110 = 1
          end
          case alt_110
          when 1
            # at line 512:18: test
            @state.following.push(TOKENS_FOLLOWING_test_IN_subscript_3160)
            test342 = test
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, test342.tree)
            end

          end
          # at line 512:25: ( sliceop )?
          alt_111 = 2
          look_111_0 = @input.peek(1)

          if (look_111_0 == T__41) 
            alt_111 = 1
          end
          case alt_111
          when 1
            # at line 512:26: sliceop
            @state.following.push(TOKENS_FOLLOWING_sliceop_IN_subscript_3165)
            sliceop343 = sliceop
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, sliceop343.tree)
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
        # trace_out(__method__, 65)

      end
      
      return return_value
    end

    SliceopReturnValue = define_return_scope 

    # 
    # parser rule sliceop
    # 
    # (in samples/Python.g)
    # 515:1: sliceop : ':' ( test )? ;
    # 
    def sliceop
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 66)
      return_value = SliceopReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal344 = nil
      test345 = nil

      tree_for_char_literal344 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 515:11: ':' ( test )?
        char_literal344 = match(T__41, TOKENS_FOLLOWING_T__41_IN_sliceop_3186)
        if @state.backtracking == 0

          tree_for_char_literal344 = @adaptor.create_with_payload!(char_literal344)
          @adaptor.add_child(root_0, tree_for_char_literal344)

        end
        # at line 515:15: ( test )?
        alt_113 = 2
        look_113_0 = @input.peek(1)

        if (look_113_0.between?(LONGINT, COMPLEX) || look_113_0 == LPAREN || look_113_0.between?(NAME, LBRACK) || look_113_0 == LCURLY || look_113_0.between?(INT, STRING) || look_113_0 == T__85 || look_113_0.between?(T__98, T__99) || look_113_0.between?(T__103, T__105)) 
          alt_113 = 1
        end
        case alt_113
        when 1
          # at line 515:16: test
          @state.following.push(TOKENS_FOLLOWING_test_IN_sliceop_3189)
          test345 = test
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, test345.tree)
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

    ExprlistReturnValue = define_return_scope 

    # 
    # parser rule exprlist
    # 
    # (in samples/Python.g)
    # 518:1: exprlist : expr ( options {k=2; } : ',' expr )* ( ',' )? ;
    # 
    def exprlist
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 67)
      return_value = ExprlistReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal347 = nil
      char_literal349 = nil
      expr346 = nil
      expr348 = nil

      tree_for_char_literal347 = nil
      tree_for_char_literal349 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 518:12: expr ( options {k=2; } : ',' expr )* ( ',' )?
        @state.following.push(TOKENS_FOLLOWING_expr_IN_exprlist_3208)
        expr346 = expr
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, expr346.tree)
        end
        # at line 518:17: ( options {k=2; } : ',' expr )*
        loop do # decision 114
          alt_114 = 2
          alt_114 = @dfa114.predict(@input)
          case alt_114
          when 1
            # at line 518:34: ',' expr
            char_literal347 = match(T__42, TOKENS_FOLLOWING_T__42_IN_exprlist_3219)
            if @state.backtracking == 0

              tree_for_char_literal347 = @adaptor.create_with_payload!(char_literal347)
              @adaptor.add_child(root_0, tree_for_char_literal347)

            end
            @state.following.push(TOKENS_FOLLOWING_expr_IN_exprlist_3221)
            expr348 = expr
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, expr348.tree)
            end

          else
            break # out of loop for decision 114
          end
        end # loop for decision 114
        # at line 518:45: ( ',' )?
        alt_115 = 2
        look_115_0 = @input.peek(1)

        if (look_115_0 == T__42) 
          alt_115 = 1
        end
        case alt_115
        when 1
          # at line 518:46: ','
          char_literal349 = match(T__42, TOKENS_FOLLOWING_T__42_IN_exprlist_3226)
          if @state.backtracking == 0

            tree_for_char_literal349 = @adaptor.create_with_payload!(char_literal349)
            @adaptor.add_child(root_0, tree_for_char_literal349)

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

    TestListReturnValue = define_return_scope 

    # 
    # parser rule test_list
    # 
    # (in samples/Python.g)
    # 521:1: test_list : test ( options {k=2; } : ',' test )* ( ',' )? ;
    # 
    def test_list
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 68)
      return_value = TestListReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal351 = nil
      char_literal353 = nil
      test350 = nil
      test352 = nil

      tree_for_char_literal351 = nil
      tree_for_char_literal353 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 522:7: test ( options {k=2; } : ',' test )* ( ',' )?
        @state.following.push(TOKENS_FOLLOWING_test_IN_test_list_3250)
        test350 = test
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, test350.tree)
        end
        # at line 522:12: ( options {k=2; } : ',' test )*
        loop do # decision 116
          alt_116 = 2
          alt_116 = @dfa116.predict(@input)
          case alt_116
          when 1
            # at line 522:29: ',' test
            char_literal351 = match(T__42, TOKENS_FOLLOWING_T__42_IN_test_list_3261)
            if @state.backtracking == 0

              tree_for_char_literal351 = @adaptor.create_with_payload!(char_literal351)
              @adaptor.add_child(root_0, tree_for_char_literal351)

            end
            @state.following.push(TOKENS_FOLLOWING_test_IN_test_list_3263)
            test352 = test
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, test352.tree)
            end

          else
            break # out of loop for decision 116
          end
        end # loop for decision 116
        # at line 522:40: ( ',' )?
        alt_117 = 2
        look_117_0 = @input.peek(1)

        if (look_117_0 == T__42) 
          alt_117 = 1
        end
        case alt_117
        when 1
          # at line 522:41: ','
          char_literal353 = match(T__42, TOKENS_FOLLOWING_T__42_IN_test_list_3268)
          if @state.backtracking == 0

            tree_for_char_literal353 = @adaptor.create_with_payload!(char_literal353)
            @adaptor.add_child(root_0, tree_for_char_literal353)

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

    DictMakerReturnValue = define_return_scope 

    # 
    # parser rule dict_maker
    # 
    # (in samples/Python.g)
    # 525:1: dict_maker : test ':' test ( options {k=2; } : ',' test ':' test )* ( ',' )? ;
    # 
    def dict_maker
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 69)
      return_value = DictMakerReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal355 = nil
      char_literal357 = nil
      char_literal359 = nil
      char_literal361 = nil
      test354 = nil
      test356 = nil
      test358 = nil
      test360 = nil

      tree_for_char_literal355 = nil
      tree_for_char_literal357 = nil
      tree_for_char_literal359 = nil
      tree_for_char_literal361 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 526:5: test ':' test ( options {k=2; } : ',' test ':' test )* ( ',' )?
        @state.following.push(TOKENS_FOLLOWING_test_IN_dict_maker_3285)
        test354 = test
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, test354.tree)
        end
        char_literal355 = match(T__41, TOKENS_FOLLOWING_T__41_IN_dict_maker_3287)
        if @state.backtracking == 0

          tree_for_char_literal355 = @adaptor.create_with_payload!(char_literal355)
          @adaptor.add_child(root_0, tree_for_char_literal355)

        end
        @state.following.push(TOKENS_FOLLOWING_test_IN_dict_maker_3289)
        test356 = test
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, test356.tree)
        end
        # at line 526:19: ( options {k=2; } : ',' test ':' test )*
        loop do # decision 118
          alt_118 = 2
          alt_118 = @dfa118.predict(@input)
          case alt_118
          when 1
            # at line 526:35: ',' test ':' test
            char_literal357 = match(T__42, TOKENS_FOLLOWING_T__42_IN_dict_maker_3299)
            if @state.backtracking == 0

              tree_for_char_literal357 = @adaptor.create_with_payload!(char_literal357)
              @adaptor.add_child(root_0, tree_for_char_literal357)

            end
            @state.following.push(TOKENS_FOLLOWING_test_IN_dict_maker_3301)
            test358 = test
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, test358.tree)
            end
            char_literal359 = match(T__41, TOKENS_FOLLOWING_T__41_IN_dict_maker_3303)
            if @state.backtracking == 0

              tree_for_char_literal359 = @adaptor.create_with_payload!(char_literal359)
              @adaptor.add_child(root_0, tree_for_char_literal359)

            end
            @state.following.push(TOKENS_FOLLOWING_test_IN_dict_maker_3305)
            test360 = test
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, test360.tree)
            end

          else
            break # out of loop for decision 118
          end
        end # loop for decision 118
        # at line 526:56: ( ',' )?
        alt_119 = 2
        look_119_0 = @input.peek(1)

        if (look_119_0 == T__42) 
          alt_119 = 1
        end
        case alt_119
        when 1
          # at line 526:56: ','
          char_literal361 = match(T__42, TOKENS_FOLLOWING_T__42_IN_dict_maker_3310)
          if @state.backtracking == 0

            tree_for_char_literal361 = @adaptor.create_with_payload!(char_literal361)
            @adaptor.add_child(root_0, tree_for_char_literal361)

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

    ClassDefReturnValue = define_return_scope 

    # 
    # parser rule class_def
    # 
    # (in samples/Python.g)
    # 529:1: class_def : 'class' NAME ( LPAREN ( test_list )? RPAREN )? ':' suite ;
    # 
    def class_def
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 70)
      return_value = ClassDefReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal362 = nil
      __NAME363__ = nil
      __LPAREN364__ = nil
      __RPAREN366__ = nil
      char_literal367 = nil
      test_list365 = nil
      suite368 = nil

      tree_for_string_literal362 = nil
      tree_for_NAME363 = nil
      tree_for_LPAREN364 = nil
      tree_for_RPAREN366 = nil
      tree_for_char_literal367 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 530:5: 'class' NAME ( LPAREN ( test_list )? RPAREN )? ':' suite
        string_literal362 = match(T__106, TOKENS_FOLLOWING_T__106_IN_class_def_3324)
        if @state.backtracking == 0

          tree_for_string_literal362 = @adaptor.create_with_payload!(string_literal362)
          @adaptor.add_child(root_0, tree_for_string_literal362)

        end
        __NAME363__ = match(NAME, TOKENS_FOLLOWING_NAME_IN_class_def_3326)
        if @state.backtracking == 0

          tree_for_NAME363 = @adaptor.create_with_payload!(__NAME363__)
          @adaptor.add_child(root_0, tree_for_NAME363)

        end
        # at line 530:18: ( LPAREN ( test_list )? RPAREN )?
        alt_121 = 2
        look_121_0 = @input.peek(1)

        if (look_121_0 == LPAREN) 
          alt_121 = 1
        end
        case alt_121
        when 1
          # at line 530:19: LPAREN ( test_list )? RPAREN
          __LPAREN364__ = match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_class_def_3329)
          if @state.backtracking == 0

            tree_for_LPAREN364 = @adaptor.create_with_payload!(__LPAREN364__)
            @adaptor.add_child(root_0, tree_for_LPAREN364)

          end
          # at line 530:26: ( test_list )?
          alt_120 = 2
          look_120_0 = @input.peek(1)

          if (look_120_0.between?(LONGINT, COMPLEX) || look_120_0 == LPAREN || look_120_0.between?(NAME, LBRACK) || look_120_0 == LCURLY || look_120_0.between?(INT, STRING) || look_120_0 == T__85 || look_120_0.between?(T__98, T__99) || look_120_0.between?(T__103, T__105)) 
            alt_120 = 1
          end
          case alt_120
          when 1
            # at line 530:26: test_list
            @state.following.push(TOKENS_FOLLOWING_test_list_IN_class_def_3331)
            test_list365 = test_list
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, test_list365.tree)
            end

          end
          __RPAREN366__ = match(RPAREN, TOKENS_FOLLOWING_RPAREN_IN_class_def_3334)
          if @state.backtracking == 0

            tree_for_RPAREN366 = @adaptor.create_with_payload!(__RPAREN366__)
            @adaptor.add_child(root_0, tree_for_RPAREN366)

          end

        end
        char_literal367 = match(T__41, TOKENS_FOLLOWING_T__41_IN_class_def_3338)
        if @state.backtracking == 0

          tree_for_char_literal367 = @adaptor.create_with_payload!(char_literal367)
          @adaptor.add_child(root_0, tree_for_char_literal367)

        end
        @state.following.push(TOKENS_FOLLOWING_suite_IN_class_def_3340)
        suite368 = suite
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, suite368.tree)
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

    ArgListReturnValue = define_return_scope 

    # 
    # parser rule arg_list
    # 
    # (in samples/Python.g)
    # 533:1: arg_list : ( argument ( ',' argument )* ( ',' ( '*' test ( ',' '**' test )? | '**' test )? )? | '*' test ( ',' '**' test )? | '**' test );
    # 
    def arg_list
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 71)
      return_value = ArgListReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal370 = nil
      char_literal372 = nil
      char_literal373 = nil
      char_literal375 = nil
      string_literal376 = nil
      string_literal378 = nil
      char_literal380 = nil
      char_literal382 = nil
      string_literal383 = nil
      string_literal385 = nil
      argument369 = nil
      argument371 = nil
      test374 = nil
      test377 = nil
      test379 = nil
      test381 = nil
      test384 = nil
      test386 = nil

      tree_for_char_literal370 = nil
      tree_for_char_literal372 = nil
      tree_for_char_literal373 = nil
      tree_for_char_literal375 = nil
      tree_for_string_literal376 = nil
      tree_for_string_literal378 = nil
      tree_for_char_literal380 = nil
      tree_for_char_literal382 = nil
      tree_for_string_literal383 = nil
      tree_for_string_literal385 = nil

      begin
        # at line 534:3: ( argument ( ',' argument )* ( ',' ( '*' test ( ',' '**' test )? | '**' test )? )? | '*' test ( ',' '**' test )? | '**' test )
        alt_127 = 3
        case look_127 = @input.peek(1)
        when LONGINT, COMPLEX, LPAREN, NAME, LBRACK, LCURLY, INT, FLOAT, STRING, T__85, T__98, T__99, T__103, T__104, T__105 then alt_127 = 1
        when T__43 then alt_127 = 2
        when T__44 then alt_127 = 3
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          nvae = NoViableAlternative("", 127, 0)
          raise nvae
        end
        case alt_127
        when 1
          root_0 = @adaptor.create_flat_list!


          # at line 534:5: argument ( ',' argument )* ( ',' ( '*' test ( ',' '**' test )? | '**' test )? )?
          @state.following.push(TOKENS_FOLLOWING_argument_IN_arg_list_3353)
          argument369 = argument
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, argument369.tree)
          end
          # at line 534:14: ( ',' argument )*
          loop do # decision 122
            alt_122 = 2
            look_122_0 = @input.peek(1)

            if (look_122_0 == T__42) 
              look_122_1 = @input.peek(2)

              if (look_122_1.between?(LONGINT, COMPLEX) || look_122_1 == LPAREN || look_122_1.between?(NAME, LBRACK) || look_122_1 == LCURLY || look_122_1.between?(INT, STRING) || look_122_1 == T__85 || look_122_1.between?(T__98, T__99) || look_122_1.between?(T__103, T__105)) 
                alt_122 = 1

              end

            end
            case alt_122
            when 1
              # at line 534:15: ',' argument
              char_literal370 = match(T__42, TOKENS_FOLLOWING_T__42_IN_arg_list_3356)
              if @state.backtracking == 0

                tree_for_char_literal370 = @adaptor.create_with_payload!(char_literal370)
                @adaptor.add_child(root_0, tree_for_char_literal370)

              end
              @state.following.push(TOKENS_FOLLOWING_argument_IN_arg_list_3358)
              argument371 = argument
              @state.following.pop
              if @state.backtracking == 0
                @adaptor.add_child(root_0, argument371.tree)
              end

            else
              break # out of loop for decision 122
            end
          end # loop for decision 122
          # at line 535:5: ( ',' ( '*' test ( ',' '**' test )? | '**' test )? )?
          alt_125 = 2
          look_125_0 = @input.peek(1)

          if (look_125_0 == T__42) 
            alt_125 = 1
          end
          case alt_125
          when 1
            # at line 535:7: ',' ( '*' test ( ',' '**' test )? | '**' test )?
            char_literal372 = match(T__42, TOKENS_FOLLOWING_T__42_IN_arg_list_3368)
            if @state.backtracking == 0

              tree_for_char_literal372 = @adaptor.create_with_payload!(char_literal372)
              @adaptor.add_child(root_0, tree_for_char_literal372)

            end
            # at line 536:7: ( '*' test ( ',' '**' test )? | '**' test )?
            alt_124 = 3
            look_124_0 = @input.peek(1)

            if (look_124_0 == T__43) 
              alt_124 = 1
            elsif (look_124_0 == T__44) 
              alt_124 = 2
            end
            case alt_124
            when 1
              # at line 536:9: '*' test ( ',' '**' test )?
              char_literal373 = match(T__43, TOKENS_FOLLOWING_T__43_IN_arg_list_3378)
              if @state.backtracking == 0

                tree_for_char_literal373 = @adaptor.create_with_payload!(char_literal373)
                @adaptor.add_child(root_0, tree_for_char_literal373)

              end
              @state.following.push(TOKENS_FOLLOWING_test_IN_arg_list_3380)
              test374 = test
              @state.following.pop
              if @state.backtracking == 0
                @adaptor.add_child(root_0, test374.tree)
              end
              # at line 536:18: ( ',' '**' test )?
              alt_123 = 2
              look_123_0 = @input.peek(1)

              if (look_123_0 == T__42) 
                alt_123 = 1
              end
              case alt_123
              when 1
                # at line 536:19: ',' '**' test
                char_literal375 = match(T__42, TOKENS_FOLLOWING_T__42_IN_arg_list_3383)
                if @state.backtracking == 0

                  tree_for_char_literal375 = @adaptor.create_with_payload!(char_literal375)
                  @adaptor.add_child(root_0, tree_for_char_literal375)

                end
                string_literal376 = match(T__44, TOKENS_FOLLOWING_T__44_IN_arg_list_3385)
                if @state.backtracking == 0

                  tree_for_string_literal376 = @adaptor.create_with_payload!(string_literal376)
                  @adaptor.add_child(root_0, tree_for_string_literal376)

                end
                @state.following.push(TOKENS_FOLLOWING_test_IN_arg_list_3387)
                test377 = test
                @state.following.pop
                if @state.backtracking == 0
                  @adaptor.add_child(root_0, test377.tree)
                end

              end

            when 2
              # at line 537:9: '**' test
              string_literal378 = match(T__44, TOKENS_FOLLOWING_T__44_IN_arg_list_3399)
              if @state.backtracking == 0

                tree_for_string_literal378 = @adaptor.create_with_payload!(string_literal378)
                @adaptor.add_child(root_0, tree_for_string_literal378)

              end
              @state.following.push(TOKENS_FOLLOWING_test_IN_arg_list_3401)
              test379 = test
              @state.following.pop
              if @state.backtracking == 0
                @adaptor.add_child(root_0, test379.tree)
              end

            end

          end

        when 2
          root_0 = @adaptor.create_flat_list!


          # at line 540:5: '*' test ( ',' '**' test )?
          char_literal380 = match(T__43, TOKENS_FOLLOWING_T__43_IN_arg_list_3423)
          if @state.backtracking == 0

            tree_for_char_literal380 = @adaptor.create_with_payload!(char_literal380)
            @adaptor.add_child(root_0, tree_for_char_literal380)

          end
          @state.following.push(TOKENS_FOLLOWING_test_IN_arg_list_3425)
          test381 = test
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, test381.tree)
          end
          # at line 540:14: ( ',' '**' test )?
          alt_126 = 2
          look_126_0 = @input.peek(1)

          if (look_126_0 == T__42) 
            alt_126 = 1
          end
          case alt_126
          when 1
            # at line 540:16: ',' '**' test
            char_literal382 = match(T__42, TOKENS_FOLLOWING_T__42_IN_arg_list_3429)
            if @state.backtracking == 0

              tree_for_char_literal382 = @adaptor.create_with_payload!(char_literal382)
              @adaptor.add_child(root_0, tree_for_char_literal382)

            end
            string_literal383 = match(T__44, TOKENS_FOLLOWING_T__44_IN_arg_list_3431)
            if @state.backtracking == 0

              tree_for_string_literal383 = @adaptor.create_with_payload!(string_literal383)
              @adaptor.add_child(root_0, tree_for_string_literal383)

            end
            @state.following.push(TOKENS_FOLLOWING_test_IN_arg_list_3433)
            test384 = test
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, test384.tree)
            end

          end

        when 3
          root_0 = @adaptor.create_flat_list!


          # at line 541:5: '**' test
          string_literal385 = match(T__44, TOKENS_FOLLOWING_T__44_IN_arg_list_3442)
          if @state.backtracking == 0

            tree_for_string_literal385 = @adaptor.create_with_payload!(string_literal385)
            @adaptor.add_child(root_0, tree_for_string_literal385)

          end
          @state.following.push(TOKENS_FOLLOWING_test_IN_arg_list_3444)
          test386 = test
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, test386.tree)
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
        # trace_out(__method__, 71)

      end
      
      return return_value
    end

    ArgumentReturnValue = define_return_scope 

    # 
    # parser rule argument
    # 
    # (in samples/Python.g)
    # 544:1: argument : test ( '=' test | gen_for )? ;
    # 
    def argument
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 72)
      return_value = ArgumentReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal388 = nil
      test387 = nil
      test389 = nil
      gen_for390 = nil

      tree_for_char_literal388 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 545:5: test ( '=' test | gen_for )?
        @state.following.push(TOKENS_FOLLOWING_test_IN_argument_3457)
        test387 = test
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, test387.tree)
        end
        # at line 545:10: ( '=' test | gen_for )?
        alt_128 = 3
        look_128_0 = @input.peek(1)

        if (look_128_0 == T__45) 
          alt_128 = 1
        elsif (look_128_0 == T__78) 
          alt_128 = 2
        end
        case alt_128
        when 1
          # at line 545:12: '=' test
          char_literal388 = match(T__45, TOKENS_FOLLOWING_T__45_IN_argument_3461)
          if @state.backtracking == 0

            tree_for_char_literal388 = @adaptor.create_with_payload!(char_literal388)
            @adaptor.add_child(root_0, tree_for_char_literal388)

          end
          @state.following.push(TOKENS_FOLLOWING_test_IN_argument_3463)
          test389 = test
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, test389.tree)
          end

        when 2
          # at line 545:23: gen_for
          @state.following.push(TOKENS_FOLLOWING_gen_for_IN_argument_3467)
          gen_for390 = gen_for
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, gen_for390.tree)
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
        # trace_out(__method__, 72)

      end
      
      return return_value
    end

    ListIterReturnValue = define_return_scope 

    # 
    # parser rule list_iter
    # 
    # (in samples/Python.g)
    # 548:1: list_iter : ( list_for | list_if );
    # 
    def list_iter
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 73)
      return_value = ListIterReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      list_for391 = nil
      list_if392 = nil


      begin
        # at line 549:3: ( list_for | list_if )
        alt_129 = 2
        look_129_0 = @input.peek(1)

        if (look_129_0 == T__78) 
          alt_129 = 1
        elsif (look_129_0 == T__74) 
          alt_129 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 129, 0)
          raise nvae
        end
        case alt_129
        when 1
          root_0 = @adaptor.create_flat_list!


          # at line 549:5: list_for
          @state.following.push(TOKENS_FOLLOWING_list_for_IN_list_iter_3483)
          list_for391 = list_for
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, list_for391.tree)
          end

        when 2
          root_0 = @adaptor.create_flat_list!


          # at line 550:5: list_if
          @state.following.push(TOKENS_FOLLOWING_list_if_IN_list_iter_3489)
          list_if392 = list_if
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, list_if392.tree)
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

    ListForReturnValue = define_return_scope 

    # 
    # parser rule list_for
    # 
    # (in samples/Python.g)
    # 553:1: list_for : 'for' exprlist 'in' test_list ( list_iter )? ;
    # 
    def list_for
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 74)
      return_value = ListForReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal393 = nil
      string_literal395 = nil
      exprlist394 = nil
      test_list396 = nil
      list_iter397 = nil

      tree_for_string_literal393 = nil
      tree_for_string_literal395 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 554:5: 'for' exprlist 'in' test_list ( list_iter )?
        string_literal393 = match(T__78, TOKENS_FOLLOWING_T__78_IN_list_for_3502)
        if @state.backtracking == 0

          tree_for_string_literal393 = @adaptor.create_with_payload!(string_literal393)
          @adaptor.add_child(root_0, tree_for_string_literal393)

        end
        @state.following.push(TOKENS_FOLLOWING_exprlist_IN_list_for_3504)
        exprlist394 = exprlist
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, exprlist394.tree)
        end
        string_literal395 = match(T__72, TOKENS_FOLLOWING_T__72_IN_list_for_3506)
        if @state.backtracking == 0

          tree_for_string_literal395 = @adaptor.create_with_payload!(string_literal395)
          @adaptor.add_child(root_0, tree_for_string_literal395)

        end
        @state.following.push(TOKENS_FOLLOWING_test_list_IN_list_for_3508)
        test_list396 = test_list
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, test_list396.tree)
        end
        # at line 554:35: ( list_iter )?
        alt_130 = 2
        look_130_0 = @input.peek(1)

        if (look_130_0 == T__74 || look_130_0 == T__78) 
          alt_130 = 1
        end
        case alt_130
        when 1
          # at line 554:35: list_iter
          @state.following.push(TOKENS_FOLLOWING_list_iter_IN_list_for_3510)
          list_iter397 = list_iter
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, list_iter397.tree)
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

    ListIfReturnValue = define_return_scope 

    # 
    # parser rule list_if
    # 
    # (in samples/Python.g)
    # 557:1: list_if : 'if' test ( list_iter )? ;
    # 
    def list_if
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 75)
      return_value = ListIfReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal398 = nil
      test399 = nil
      list_iter400 = nil

      tree_for_string_literal398 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 558:5: 'if' test ( list_iter )?
        string_literal398 = match(T__74, TOKENS_FOLLOWING_T__74_IN_list_if_3524)
        if @state.backtracking == 0

          tree_for_string_literal398 = @adaptor.create_with_payload!(string_literal398)
          @adaptor.add_child(root_0, tree_for_string_literal398)

        end
        @state.following.push(TOKENS_FOLLOWING_test_IN_list_if_3526)
        test399 = test
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, test399.tree)
        end
        # at line 558:15: ( list_iter )?
        alt_131 = 2
        look_131_0 = @input.peek(1)

        if (look_131_0 == T__74 || look_131_0 == T__78) 
          alt_131 = 1
        end
        case alt_131
        when 1
          # at line 558:15: list_iter
          @state.following.push(TOKENS_FOLLOWING_list_iter_IN_list_if_3528)
          list_iter400 = list_iter
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, list_iter400.tree)
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

    GenIterReturnValue = define_return_scope 

    # 
    # parser rule gen_iter
    # 
    # (in samples/Python.g)
    # 561:1: gen_iter : ( gen_for | gen_if );
    # 
    def gen_iter
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 76)
      return_value = GenIterReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      gen_for401 = nil
      gen_if402 = nil


      begin
        # at line 562:3: ( gen_for | gen_if )
        alt_132 = 2
        look_132_0 = @input.peek(1)

        if (look_132_0 == T__78) 
          alt_132 = 1
        elsif (look_132_0 == T__74) 
          alt_132 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 132, 0)
          raise nvae
        end
        case alt_132
        when 1
          root_0 = @adaptor.create_flat_list!


          # at line 562:5: gen_for
          @state.following.push(TOKENS_FOLLOWING_gen_for_IN_gen_iter_3542)
          gen_for401 = gen_for
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, gen_for401.tree)
          end

        when 2
          root_0 = @adaptor.create_flat_list!


          # at line 563:5: gen_if
          @state.following.push(TOKENS_FOLLOWING_gen_if_IN_gen_iter_3548)
          gen_if402 = gen_if
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, gen_if402.tree)
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
        # trace_out(__method__, 76)

      end
      
      return return_value
    end

    GenForReturnValue = define_return_scope 

    # 
    # parser rule gen_for
    # 
    # (in samples/Python.g)
    # 566:1: gen_for : 'for' exprlist 'in' or_test ( gen_iter )? ;
    # 
    def gen_for
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 77)
      return_value = GenForReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal403 = nil
      string_literal405 = nil
      exprlist404 = nil
      or_test406 = nil
      gen_iter407 = nil

      tree_for_string_literal403 = nil
      tree_for_string_literal405 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 567:5: 'for' exprlist 'in' or_test ( gen_iter )?
        string_literal403 = match(T__78, TOKENS_FOLLOWING_T__78_IN_gen_for_3561)
        if @state.backtracking == 0

          tree_for_string_literal403 = @adaptor.create_with_payload!(string_literal403)
          @adaptor.add_child(root_0, tree_for_string_literal403)

        end
        @state.following.push(TOKENS_FOLLOWING_exprlist_IN_gen_for_3563)
        exprlist404 = exprlist
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, exprlist404.tree)
        end
        string_literal405 = match(T__72, TOKENS_FOLLOWING_T__72_IN_gen_for_3565)
        if @state.backtracking == 0

          tree_for_string_literal405 = @adaptor.create_with_payload!(string_literal405)
          @adaptor.add_child(root_0, tree_for_string_literal405)

        end
        @state.following.push(TOKENS_FOLLOWING_or_test_IN_gen_for_3567)
        or_test406 = or_test
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, or_test406.tree)
        end
        # at line 567:33: ( gen_iter )?
        alt_133 = 2
        look_133_0 = @input.peek(1)

        if (look_133_0 == T__74 || look_133_0 == T__78) 
          alt_133 = 1
        end
        case alt_133
        when 1
          # at line 567:33: gen_iter
          @state.following.push(TOKENS_FOLLOWING_gen_iter_IN_gen_for_3569)
          gen_iter407 = gen_iter
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, gen_iter407.tree)
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

    GenIfReturnValue = define_return_scope 

    # 
    # parser rule gen_if
    # 
    # (in samples/Python.g)
    # 570:1: gen_if : 'if' test ( gen_iter )? ;
    # 
    def gen_if
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 78)
      return_value = GenIfReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal408 = nil
      test409 = nil
      gen_iter410 = nil

      tree_for_string_literal408 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 571:5: 'if' test ( gen_iter )?
        string_literal408 = match(T__74, TOKENS_FOLLOWING_T__74_IN_gen_if_3583)
        if @state.backtracking == 0

          tree_for_string_literal408 = @adaptor.create_with_payload!(string_literal408)
          @adaptor.add_child(root_0, tree_for_string_literal408)

        end
        @state.following.push(TOKENS_FOLLOWING_test_IN_gen_if_3585)
        test409 = test
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, test409.tree)
        end
        # at line 571:15: ( gen_iter )?
        alt_134 = 2
        look_134_0 = @input.peek(1)

        if (look_134_0 == T__74 || look_134_0 == T__78) 
          alt_134 = 1
        end
        case alt_134
        when 1
          # at line 571:15: gen_iter
          @state.following.push(TOKENS_FOLLOWING_gen_iter_IN_gen_if_3587)
          gen_iter410 = gen_iter
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, gen_iter410.tree)
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
        # trace_out(__method__, 78)

      end
      
      return return_value
    end

    YieldExprReturnValue = define_return_scope 

    # 
    # parser rule yield_expr
    # 
    # (in samples/Python.g)
    # 574:1: yield_expr : 'yield' ( test_list )? -> ^( 'yield' ( test_list )? ) ;
    # 
    def yield_expr
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 79)
      return_value = YieldExprReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal411 = nil
      test_list412 = nil

      tree_for_string_literal411 = nil
      stream_T__107 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__107")
      stream_test_list = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule test_list")
      begin
        # at line 575:5: 'yield' ( test_list )?
        string_literal411 = match(T__107, TOKENS_FOLLOWING_T__107_IN_yield_expr_3601) 
        if @state.backtracking == 0
          stream_T__107.add(string_literal411)
        end
        # at line 575:13: ( test_list )?
        alt_135 = 2
        look_135_0 = @input.peek(1)

        if (look_135_0.between?(LONGINT, COMPLEX) || look_135_0 == LPAREN || look_135_0.between?(NAME, LBRACK) || look_135_0 == LCURLY || look_135_0.between?(INT, STRING) || look_135_0 == T__85 || look_135_0.between?(T__98, T__99) || look_135_0.between?(T__103, T__105)) 
          alt_135 = 1
        end
        case alt_135
        when 1
          # at line 575:13: test_list
          @state.following.push(TOKENS_FOLLOWING_test_list_IN_yield_expr_3603)
          test_list412 = test_list
          @state.following.pop
          if @state.backtracking == 0
            stream_test_list.add(test_list412.tree)
          end

        end
        # AST Rewrite
        # elements: T__107, test_list
        # token labels: 
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 
        if @state.backtracking == 0

          return_value.tree = root_0
          stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

          root_0 = @adaptor.create_flat_list!
          # 575:24: -> ^( 'yield' ( test_list )? )
          # at line 575:27: ^( 'yield' ( test_list )? )
          root_1 = @adaptor.create_flat_list!
          root_1 = @adaptor.become_root(stream_T__107.next_node, root_1)

          # at line 575:38: ( test_list )?
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
        # trace_out(__method__, 79)

      end
      
      return return_value
    end

    # 
    # syntactic predicate synpred_1_python!
    # 
    # (in samples/Python.g)
    # 395:7: synpred1_Python : 'if' or_test 'else' ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred_1_python!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 80)

      # at line 395:8: 'if' or_test 'else'
      match(T__74, TOKENS_FOLLOWING_T__74_IN_synpred1_Python_2288)
      @state.following.push(TOKENS_FOLLOWING_or_test_IN_synpred1_Python_2290)
      or_test
      @state.following.pop
      match(T__75, TOKENS_FOLLOWING_T__75_IN_synpred1_Python_2292)

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 80)

    end


    # - - - - - - - - - - DFA definitions - - - - - - - - - - -
    class DFA2 < ANTLR3::DFA
      EOT = unpack(4, -1)
      EOF = unpack(2, 3, 2, -1)
      MIN = unpack(2, 9, 2, -1)
      MAX = unpack(2, 107, 2, -1)
      ACCEPT = unpack(2, -1, 1, 1, 1, 2)
      SPECIAL = unpack(4, -1)
      TRANSITION = [
        unpack(2, 3, 7, -1, 1, 2, 1, 1, 1, 3, 1, -1, 2, 3, 1, -1, 1, 3, 
               1, -1, 3, 3, 8, -1, 1, 3, 1, -1, 1, 3, 18, -1, 1, 3, 1, -1, 
               8, 3, 1, -1, 2, 3, 1, -1, 2, 3, 2, -1, 3, 3, 1, -1, 1, 3, 
               3, -1, 1, 3, 12, -1, 2, 3, 3, -1, 5, 3),
        unpack(2, 3, 7, -1, 1, 2, 1, 1, 1, 3, 1, -1, 2, 3, 1, -1, 1, 3, 
                1, -1, 3, 3, 8, -1, 1, 3, 1, -1, 1, 3, 18, -1, 1, 3, 1, 
                -1, 8, 3, 1, -1, 2, 3, 1, -1, 2, 3, 2, -1, 3, 3, 1, -1, 
                1, 3, 3, -1, 1, 3, 12, -1, 2, 3, 3, -1, 5, 3),
        unpack(),
        unpack()
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 2
      

      def description
        <<-'__dfa_description__'.strip!
          135:5: ( ( NEWLINE )* DOCUMENT )?
        __dfa_description__
      end
    end
    class DFA46 < ANTLR3::DFA
      EOT = unpack(4, -1)
      EOF = unpack(4, -1)
      MIN = unpack(2, 22, 2, -1)
      MAX = unpack(1, 39, 1, 67, 2, -1)
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
      
      @decision = 46
      

      def description
        <<-'__dfa_description__'.strip!
          302:12: ( ( '.' )* dotted_name | ( '.' )+ )
        __dfa_description__
      end
    end
    class DFA72 < ANTLR3::DFA
      EOT = unpack(27, -1)
      EOF = unpack(1, 2, 26, -1)
      MIN = unpack(1, 19, 1, 0, 25, -1)
      MAX = unpack(1, 104, 1, 0, 25, -1)
      ACCEPT = unpack(2, -1, 1, 2, 23, -1, 1, 1)
      SPECIAL = unpack(1, -1, 1, 0, 25, -1)
      TRANSITION = [
        unpack(1, 2, 1, -1, 1, 2, 2, -1, 1, 2, 1, -1, 1, 2, 14, -1, 2, 2, 
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
      
      @decision = 72
      

      def description
        <<-'__dfa_description__'.strip!
          395:5: ( ( 'if' or_test 'else' )=> 'if' or_test 'else' test )?
        __dfa_description__
      end
    end
    class DFA77 < ANTLR3::DFA
      EOT = unpack(13, -1)
      EOF = unpack(13, -1)
      MIN = unpack(1, 72, 9, -1, 1, 9, 2, -1)
      MAX = unpack(1, 93, 9, -1, 1, 104, 2, -1)
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
        unpack(2, 12, 9, -1, 1, 12, 1, -1, 2, 12, 1, -1, 1, 12, 1, -1, 
                3, 12, 55, -1, 1, 11, 12, -1, 2, 12, 3, -1, 2, 12),
        unpack(),
        unpack()
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 77
      

      def description
        <<-'__dfa_description__'.strip!
          415:7: ( '<' | '>' | '==' | '>=' | '<=' | '<>' | '!=' | 'in' | 'not' 'in' | 'is' | 'is' 'not' )
        __dfa_description__
      end
    end
    class DFA99 < ANTLR3::DFA
      EOT = unpack(19, -1)
      EOF = unpack(19, -1)
      MIN = unpack(1, 21, 1, 9, 17, -1)
      MAX = unpack(1, 42, 1, 105, 17, -1)
      ACCEPT = unpack(2, -1, 1, 2, 1, -1, 1, 1, 14, -1)
      SPECIAL = unpack(19, -1)
      TRANSITION = [
        unpack(1, 2, 20, -1, 1, 1),
        unpack(2, 4, 9, -1, 1, 4, 1, 2, 2, 4, 1, -1, 1, 4, 1, -1, 3, 4, 
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
      
      @decision = 99
      

      def description
        <<-'__dfa_description__'.strip!
          ()* loopback of 492:7: ( options {k=2; } : ',' test )*
        __dfa_description__
      end
    end
    class DFA114 < ANTLR3::DFA
      EOT = unpack(21, -1)
      EOF = unpack(21, -1)
      MIN = unpack(1, 19, 1, 9, 19, -1)
      MAX = unpack(1, 72, 1, 104, 19, -1)
      ACCEPT = unpack(2, -1, 1, 2, 5, -1, 1, 1, 12, -1)
      SPECIAL = unpack(21, -1)
      TRANSITION = [
        unpack(1, 2, 22, -1, 1, 1, 3, -1, 1, 2, 25, -1, 1, 2),
        unpack(2, 8, 8, -1, 1, 2, 1, 8, 1, -1, 2, 8, 1, -1, 1, 8, 1, -1, 
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
      
      @decision = 114
      

      def description
        <<-'__dfa_description__'.strip!
          ()* loopback of 518:17: ( options {k=2; } : ',' expr )*
        __dfa_description__
      end
    end
    class DFA116 < ANTLR3::DFA
      EOT = unpack(61, -1)
      EOF = unpack(2, 2, 59, -1)
      MIN = unpack(1, 19, 1, 9, 59, -1)
      MAX = unpack(1, 104, 1, 105, 59, -1)
      ACCEPT = unpack(2, -1, 1, 2, 38, -1, 1, 1, 5, -1, 1, 1, 13, -1)
      SPECIAL = unpack(61, -1)
      TRANSITION = [
        unpack(1, 2, 1, -1, 1, 2, 2, -1, 1, 2, 16, -1, 1, 2, 1, 1, 2, -1, 
               14, 2, 15, -1, 1, 2, 3, -1, 1, 2, 25, -1, 1, 2),
        unpack(2, 47, 8, -1, 1, 2, 1, 47, 1, 2, 2, 47, 1, 2, 1, 47, 1, 
                -1, 3, 47, 11, -1, 2, 2, 2, -1, 14, 2, 15, -1, 1, 2, 3, 
                -1, 1, 2, 6, -1, 1, 47, 12, -1, 2, 47, 3, -1, 1, 47, 1, 
                41, 1, 47),
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
      
      @decision = 116
      

      def description
        <<-'__dfa_description__'.strip!
          ()* loopback of 522:12: ( options {k=2; } : ',' test )*
        __dfa_description__
      end
    end
    class DFA118 < ANTLR3::DFA
      EOT = unpack(19, -1)
      EOF = unpack(19, -1)
      MIN = unpack(1, 26, 1, 9, 17, -1)
      MAX = unpack(1, 42, 1, 105, 17, -1)
      ACCEPT = unpack(2, -1, 1, 2, 1, 1, 15, -1)
      SPECIAL = unpack(19, -1)
      TRANSITION = [
        unpack(1, 2, 15, -1, 1, 1),
        unpack(2, 3, 9, -1, 1, 3, 1, -1, 2, 3, 1, -1, 1, 3, 1, 2, 3, 3, 
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
      
      @decision = 118
      

      def description
        <<-'__dfa_description__'.strip!
          ()* loopback of 526:19: ( options {k=2; } : ',' test ':' test )*
        __dfa_description__
      end
    end


    private

    def initialize_dfas
      super rescue nil
      @dfa2 = DFA2.new(self, 2)
      @dfa46 = DFA46.new(self, 46)
      @dfa72 = DFA72.new(self, 72) do |s|
        case s
        when 0
          look_72_1 = @input.peek
          index_72_1 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_1_python!))
            s = 26
          elsif (true)
            s = 2
          end
           
          @input.seek(index_72_1)

        end
        
        if s < 0
          @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
          nva = ANTLR3::Error::NoViableAlternative.new(@dfa72.description, 72, s, input)
          @dfa72.error(nva)
          raise nva
        end
        
        s
      end
      @dfa77 = DFA77.new(self, 77)
      @dfa99 = DFA99.new(self, 99)
      @dfa114 = DFA114.new(self, 114)
      @dfa116 = DFA116.new(self, 116)
      @dfa118 = DFA118.new(self, 118)

    end
    TOKENS_FOLLOWING_NEWLINE_IN_file_input_155 = Set[18, 19]
    TOKENS_FOLLOWING_DOCUMENT_IN_file_input_158 = Set[1, 9, 10, 19, 20, 22, 23, 25, 27, 28, 29, 38, 40, 59, 61, 62, 63, 64, 65, 66, 67, 68, 70, 71, 73, 74, 77, 78, 79, 81, 85, 98, 99, 103, 104, 105, 106, 107]
    TOKENS_FOLLOWING_NEWLINE_IN_file_input_169 = Set[1, 9, 10, 19, 20, 22, 23, 25, 27, 28, 29, 38, 40, 59, 61, 62, 63, 64, 65, 66, 67, 68, 70, 71, 73, 74, 77, 78, 79, 81, 85, 98, 99, 103, 104, 105, 106, 107]
    TOKENS_FOLLOWING_statement_IN_file_input_173 = Set[1, 9, 10, 19, 20, 22, 23, 25, 27, 28, 29, 38, 40, 59, 61, 62, 63, 64, 65, 66, 67, 68, 70, 71, 73, 74, 77, 78, 79, 81, 85, 98, 99, 103, 104, 105, 106, 107]
    TOKENS_FOLLOWING_NEWLINE_IN_single_input_203 = Set[1]
    TOKENS_FOLLOWING_simple_statement_IN_single_input_210 = Set[1]
    TOKENS_FOLLOWING_compound_statement_IN_single_input_216 = Set[19]
    TOKENS_FOLLOWING_NEWLINE_IN_single_input_218 = Set[1]
    TOKENS_FOLLOWING_NEWLINE_IN_eval_input_232 = Set[9, 10, 19, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104, 105]
    TOKENS_FOLLOWING_test_list_IN_eval_input_236 = Set[1, 19]
    TOKENS_FOLLOWING_NEWLINE_IN_eval_input_238 = Set[1, 19]
    TOKENS_FOLLOWING_T__38_IN_decorator_253 = Set[22]
    TOKENS_FOLLOWING_dotted_attr_IN_decorator_255 = Set[19, 20]
    TOKENS_FOLLOWING_LPAREN_IN_decorator_259 = Set[9, 10, 20, 21, 22, 23, 25, 27, 28, 29, 43, 44, 85, 98, 99, 103, 104, 105]
    TOKENS_FOLLOWING_arg_list_IN_decorator_261 = Set[21]
    TOKENS_FOLLOWING_RPAREN_IN_decorator_264 = Set[19]
    TOKENS_FOLLOWING_NEWLINE_IN_decorator_269 = Set[1]
    TOKENS_FOLLOWING_NAME_IN_dotted_attr_297 = Set[1, 39]
    TOKENS_FOLLOWING_T__39_IN_dotted_attr_301 = Set[22]
    TOKENS_FOLLOWING_NAME_IN_dotted_attr_304 = Set[1, 39]
    TOKENS_FOLLOWING_decorator_IN_decoration_320 = Set[1, 38]
    TOKENS_FOLLOWING_decoration_IN_func_def_364 = Set[40]
    TOKENS_FOLLOWING_T__40_IN_func_def_366 = Set[22]
    TOKENS_FOLLOWING_NAME_IN_func_def_368 = Set[20]
    TOKENS_FOLLOWING_LPAREN_IN_func_def_370 = Set[20, 21, 22, 43, 44]
    TOKENS_FOLLOWING_var_args_list_IN_func_def_372 = Set[21]
    TOKENS_FOLLOWING_RPAREN_IN_func_def_375 = Set[41]
    TOKENS_FOLLOWING_T__41_IN_func_def_377 = Set[9, 10, 19, 20, 22, 23, 25, 27, 28, 29, 59, 61, 62, 63, 64, 65, 66, 67, 68, 70, 71, 73, 85, 98, 99, 103, 104, 105, 107]
    TOKENS_FOLLOWING_suite_IN_func_def_379 = Set[1]
    TOKENS_FOLLOWING_LPAREN_IN_parameters_413 = Set[20, 21, 22, 43, 44]
    TOKENS_FOLLOWING_var_args_list_IN_parameters_415 = Set[21]
    TOKENS_FOLLOWING_RPAREN_IN_parameters_418 = Set[1]
    TOKENS_FOLLOWING_def_parameter_IN_var_args_list_433 = Set[1, 42]
    TOKENS_FOLLOWING_T__42_IN_var_args_list_437 = Set[20, 22]
    TOKENS_FOLLOWING_def_parameter_IN_var_args_list_439 = Set[1, 42]
    TOKENS_FOLLOWING_T__42_IN_var_args_list_461 = Set[1, 43, 44]
    TOKENS_FOLLOWING_T__43_IN_var_args_list_471 = Set[22]
    TOKENS_FOLLOWING_NAME_IN_var_args_list_475 = Set[1, 42]
    TOKENS_FOLLOWING_T__42_IN_var_args_list_487 = Set[44]
    TOKENS_FOLLOWING_T__44_IN_var_args_list_489 = Set[22]
    TOKENS_FOLLOWING_NAME_IN_var_args_list_493 = Set[1]
    TOKENS_FOLLOWING_T__44_IN_var_args_list_581 = Set[22]
    TOKENS_FOLLOWING_NAME_IN_var_args_list_585 = Set[1]
    TOKENS_FOLLOWING_T__43_IN_var_args_list_638 = Set[22]
    TOKENS_FOLLOWING_NAME_IN_var_args_list_642 = Set[1, 42]
    TOKENS_FOLLOWING_T__42_IN_var_args_list_651 = Set[44]
    TOKENS_FOLLOWING_T__44_IN_var_args_list_653 = Set[22]
    TOKENS_FOLLOWING_NAME_IN_var_args_list_657 = Set[1]
    TOKENS_FOLLOWING_T__44_IN_var_args_list_739 = Set[22]
    TOKENS_FOLLOWING_NAME_IN_var_args_list_741 = Set[1]
    TOKENS_FOLLOWING_fp_def_IN_def_parameter_770 = Set[1, 45]
    TOKENS_FOLLOWING_T__45_IN_def_parameter_774 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104, 105]
    TOKENS_FOLLOWING_test_IN_def_parameter_777 = Set[1]
    TOKENS_FOLLOWING_NAME_IN_fp_def_793 = Set[1]
    TOKENS_FOLLOWING_LPAREN_IN_fp_def_799 = Set[20, 22]
    TOKENS_FOLLOWING_fp_list_IN_fp_def_802 = Set[21]
    TOKENS_FOLLOWING_RPAREN_IN_fp_def_804 = Set[1]
    TOKENS_FOLLOWING_fp_def_IN_fp_list_818 = Set[1, 42]
    TOKENS_FOLLOWING_T__42_IN_fp_list_822 = Set[20, 22]
    TOKENS_FOLLOWING_fp_def_IN_fp_list_824 = Set[1, 42]
    TOKENS_FOLLOWING_T__42_IN_fp_list_829 = Set[1]
    TOKENS_FOLLOWING_simple_statement_IN_statement_854 = Set[1]
    TOKENS_FOLLOWING_compound_statement_IN_statement_860 = Set[1]
    TOKENS_FOLLOWING_small_statement_IN_simple_statement_873 = Set[19, 46]
    TOKENS_FOLLOWING_T__46_IN_simple_statement_882 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 59, 61, 62, 63, 64, 65, 66, 67, 68, 70, 71, 73, 85, 98, 99, 103, 104, 105, 107]
    TOKENS_FOLLOWING_small_statement_IN_simple_statement_884 = Set[19, 46]
    TOKENS_FOLLOWING_T__46_IN_simple_statement_894 = Set[19]
    TOKENS_FOLLOWING_NEWLINE_IN_simple_statement_897 = Set[1]
    TOKENS_FOLLOWING_expr_statement_IN_small_statement_919 = Set[1]
    TOKENS_FOLLOWING_print_statement_IN_small_statement_925 = Set[1]
    TOKENS_FOLLOWING_del_statement_IN_small_statement_931 = Set[1]
    TOKENS_FOLLOWING_pass_statement_IN_small_statement_937 = Set[1]
    TOKENS_FOLLOWING_flow_statement_IN_small_statement_943 = Set[1]
    TOKENS_FOLLOWING_import_statement_IN_small_statement_949 = Set[1]
    TOKENS_FOLLOWING_global_statement_IN_small_statement_955 = Set[1]
    TOKENS_FOLLOWING_exec_statement_IN_small_statement_961 = Set[1]
    TOKENS_FOLLOWING_assert_statement_IN_small_statement_967 = Set[1]
    TOKENS_FOLLOWING_test_list_IN_expr_statement_980 = Set[1, 45, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58]
    TOKENS_FOLLOWING_T__47_IN_expr_statement_990 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 63, 64, 65, 66, 85, 98, 99, 103, 104, 105, 107]
    TOKENS_FOLLOWING_T__48_IN_expr_statement_1001 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 63, 64, 65, 66, 85, 98, 99, 103, 104, 105, 107]
    TOKENS_FOLLOWING_T__49_IN_expr_statement_1012 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 63, 64, 65, 66, 85, 98, 99, 103, 104, 105, 107]
    TOKENS_FOLLOWING_T__50_IN_expr_statement_1023 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 63, 64, 65, 66, 85, 98, 99, 103, 104, 105, 107]
    TOKENS_FOLLOWING_T__51_IN_expr_statement_1034 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 63, 64, 65, 66, 85, 98, 99, 103, 104, 105, 107]
    TOKENS_FOLLOWING_T__52_IN_expr_statement_1045 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 63, 64, 65, 66, 85, 98, 99, 103, 104, 105, 107]
    TOKENS_FOLLOWING_T__53_IN_expr_statement_1056 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 63, 64, 65, 66, 85, 98, 99, 103, 104, 105, 107]
    TOKENS_FOLLOWING_T__54_IN_expr_statement_1067 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 63, 64, 65, 66, 85, 98, 99, 103, 104, 105, 107]
    TOKENS_FOLLOWING_T__55_IN_expr_statement_1078 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 63, 64, 65, 66, 85, 98, 99, 103, 104, 105, 107]
    TOKENS_FOLLOWING_T__56_IN_expr_statement_1089 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 63, 64, 65, 66, 85, 98, 99, 103, 104, 105, 107]
    TOKENS_FOLLOWING_T__57_IN_expr_statement_1100 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 63, 64, 65, 66, 85, 98, 99, 103, 104, 105, 107]
    TOKENS_FOLLOWING_T__58_IN_expr_statement_1111 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 63, 64, 65, 66, 85, 98, 99, 103, 104, 105, 107]
    TOKENS_FOLLOWING_yield_expr_IN_expr_statement_1130 = Set[1]
    TOKENS_FOLLOWING_test_list_IN_expr_statement_1140 = Set[1]
    TOKENS_FOLLOWING_T__45_IN_expr_statement_1158 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 63, 64, 65, 66, 85, 98, 99, 103, 104, 105, 107]
    TOKENS_FOLLOWING_test_list_IN_expr_statement_1163 = Set[1, 45]
    TOKENS_FOLLOWING_yield_expr_IN_expr_statement_1167 = Set[1, 45]
    TOKENS_FOLLOWING_T__59_IN_print_statement_1194 = Set[1, 9, 10, 20, 22, 23, 25, 27, 28, 29, 60, 85, 98, 99, 103, 104, 105]
    TOKENS_FOLLOWING_test_IN_print_statement_1202 = Set[1, 42]
    TOKENS_FOLLOWING_T__42_IN_print_statement_1206 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104, 105]
    TOKENS_FOLLOWING_test_IN_print_statement_1208 = Set[1, 42]
    TOKENS_FOLLOWING_T__42_IN_print_statement_1216 = Set[1]
    TOKENS_FOLLOWING_T__60_IN_print_statement_1252 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104, 105]
    TOKENS_FOLLOWING_test_IN_print_statement_1256 = Set[1, 42]
    TOKENS_FOLLOWING_T__42_IN_print_statement_1260 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104, 105]
    TOKENS_FOLLOWING_test_IN_print_statement_1264 = Set[1, 42]
    TOKENS_FOLLOWING_T__42_IN_print_statement_1271 = Set[1]
    TOKENS_FOLLOWING_T__61_IN_del_statement_1373 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104]
    TOKENS_FOLLOWING_exprlist_IN_del_statement_1376 = Set[1]
    TOKENS_FOLLOWING_T__62_IN_pass_statement_1389 = Set[1]
    TOKENS_FOLLOWING_break_statement_IN_flow_statement_1403 = Set[1]
    TOKENS_FOLLOWING_continue_statement_IN_flow_statement_1409 = Set[1]
    TOKENS_FOLLOWING_return_statement_IN_flow_statement_1415 = Set[1]
    TOKENS_FOLLOWING_raise_statement_IN_flow_statement_1421 = Set[1]
    TOKENS_FOLLOWING_yield_statement_IN_flow_statement_1427 = Set[1]
    TOKENS_FOLLOWING_T__63_IN_break_statement_1440 = Set[1]
    TOKENS_FOLLOWING_T__64_IN_continue_statement_1454 = Set[1]
    TOKENS_FOLLOWING_T__65_IN_return_statement_1468 = Set[1, 9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104, 105]
    TOKENS_FOLLOWING_test_list_IN_return_statement_1471 = Set[1]
    TOKENS_FOLLOWING_yield_expr_IN_yield_statement_1485 = Set[1]
    TOKENS_FOLLOWING_T__66_IN_raise_statement_1498 = Set[1, 9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104, 105]
    TOKENS_FOLLOWING_test_IN_raise_statement_1502 = Set[1, 42]
    TOKENS_FOLLOWING_T__42_IN_raise_statement_1506 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104, 105]
    TOKENS_FOLLOWING_test_IN_raise_statement_1508 = Set[1, 42]
    TOKENS_FOLLOWING_T__42_IN_raise_statement_1512 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104, 105]
    TOKENS_FOLLOWING_test_IN_raise_statement_1514 = Set[1]
    TOKENS_FOLLOWING_import_name_IN_import_statement_1536 = Set[1]
    TOKENS_FOLLOWING_import_from_IN_import_statement_1542 = Set[1]
    TOKENS_FOLLOWING_T__67_IN_import_name_1555 = Set[22]
    TOKENS_FOLLOWING_dotted_as_names_IN_import_name_1558 = Set[1]
    TOKENS_FOLLOWING_T__68_IN_import_from_1571 = Set[22, 39]
    TOKENS_FOLLOWING_T__39_IN_import_from_1575 = Set[22, 39]
    TOKENS_FOLLOWING_dotted_name_IN_import_from_1578 = Set[67]
    TOKENS_FOLLOWING_T__39_IN_import_from_1582 = Set[39, 67]
    TOKENS_FOLLOWING_T__67_IN_import_from_1587 = Set[20, 22, 43]
    TOKENS_FOLLOWING_T__43_IN_import_from_1595 = Set[1]
    TOKENS_FOLLOWING_import_as_names_IN_import_from_1603 = Set[1]
    TOKENS_FOLLOWING_LPAREN_IN_import_from_1611 = Set[22]
    TOKENS_FOLLOWING_import_as_names_IN_import_from_1614 = Set[21]
    TOKENS_FOLLOWING_RPAREN_IN_import_from_1616 = Set[1]
    TOKENS_FOLLOWING_import_as_name_IN_import_as_names_1636 = Set[1, 42]
    TOKENS_FOLLOWING_T__42_IN_import_as_names_1640 = Set[22]
    TOKENS_FOLLOWING_import_as_name_IN_import_as_names_1643 = Set[1, 42]
    TOKENS_FOLLOWING_T__42_IN_import_as_names_1648 = Set[1]
    TOKENS_FOLLOWING_NAME_IN_import_as_name_1663 = Set[1, 69]
    TOKENS_FOLLOWING_T__69_IN_import_as_name_1667 = Set[22]
    TOKENS_FOLLOWING_NAME_IN_import_as_name_1670 = Set[1]
    TOKENS_FOLLOWING_dotted_name_IN_dotted_as_name_1686 = Set[1, 69]
    TOKENS_FOLLOWING_T__69_IN_dotted_as_name_1690 = Set[22]
    TOKENS_FOLLOWING_NAME_IN_dotted_as_name_1693 = Set[1]
    TOKENS_FOLLOWING_dotted_as_name_IN_dotted_as_names_1709 = Set[1, 42]
    TOKENS_FOLLOWING_T__42_IN_dotted_as_names_1713 = Set[22]
    TOKENS_FOLLOWING_dotted_as_name_IN_dotted_as_names_1716 = Set[1, 42]
    TOKENS_FOLLOWING_NAME_IN_dotted_name_1734 = Set[1, 39]
    TOKENS_FOLLOWING_T__39_IN_dotted_name_1738 = Set[22]
    TOKENS_FOLLOWING_NAME_IN_dotted_name_1741 = Set[1, 39]
    TOKENS_FOLLOWING_T__70_IN_global_statement_1757 = Set[22]
    TOKENS_FOLLOWING_NAME_IN_global_statement_1760 = Set[1, 42]
    TOKENS_FOLLOWING_T__42_IN_global_statement_1764 = Set[22]
    TOKENS_FOLLOWING_NAME_IN_global_statement_1767 = Set[1, 42]
    TOKENS_FOLLOWING_T__71_IN_exec_statement_1783 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104]
    TOKENS_FOLLOWING_expr_IN_exec_statement_1785 = Set[1, 72]
    TOKENS_FOLLOWING_T__72_IN_exec_statement_1789 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104, 105]
    TOKENS_FOLLOWING_test_IN_exec_statement_1791 = Set[1, 42]
    TOKENS_FOLLOWING_T__42_IN_exec_statement_1795 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104, 105]
    TOKENS_FOLLOWING_test_IN_exec_statement_1797 = Set[1]
    TOKENS_FOLLOWING_T__73_IN_assert_statement_1816 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104, 105]
    TOKENS_FOLLOWING_test_IN_assert_statement_1820 = Set[1, 42]
    TOKENS_FOLLOWING_T__42_IN_assert_statement_1824 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104, 105]
    TOKENS_FOLLOWING_test_IN_assert_statement_1828 = Set[1]
    TOKENS_FOLLOWING_if_statement_IN_compound_statement_1863 = Set[1]
    TOKENS_FOLLOWING_while_statement_IN_compound_statement_1869 = Set[1]
    TOKENS_FOLLOWING_for_statement_IN_compound_statement_1875 = Set[1]
    TOKENS_FOLLOWING_try_statement_IN_compound_statement_1881 = Set[1]
    TOKENS_FOLLOWING_with_statement_IN_compound_statement_1887 = Set[1]
    TOKENS_FOLLOWING_func_def_IN_compound_statement_1893 = Set[1]
    TOKENS_FOLLOWING_class_def_IN_compound_statement_1899 = Set[1]
    TOKENS_FOLLOWING_T__74_IN_if_statement_1912 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104, 105]
    TOKENS_FOLLOWING_test_IN_if_statement_1915 = Set[41]
    TOKENS_FOLLOWING_T__41_IN_if_statement_1917 = Set[9, 10, 19, 20, 22, 23, 25, 27, 28, 29, 59, 61, 62, 63, 64, 65, 66, 67, 68, 70, 71, 73, 85, 98, 99, 103, 104, 105, 107]
    TOKENS_FOLLOWING_suite_IN_if_statement_1920 = Set[1, 75, 76]
    TOKENS_FOLLOWING_elif_clause_IN_if_statement_1922 = Set[1, 75, 76]
    TOKENS_FOLLOWING_T__75_IN_if_statement_1931 = Set[41]
    TOKENS_FOLLOWING_T__41_IN_if_statement_1934 = Set[9, 10, 19, 20, 22, 23, 25, 27, 28, 29, 59, 61, 62, 63, 64, 65, 66, 67, 68, 70, 71, 73, 85, 98, 99, 103, 104, 105, 107]
    TOKENS_FOLLOWING_suite_IN_if_statement_1937 = Set[1]
    TOKENS_FOLLOWING_T__76_IN_elif_clause_1953 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104, 105]
    TOKENS_FOLLOWING_test_IN_elif_clause_1956 = Set[41]
    TOKENS_FOLLOWING_T__41_IN_elif_clause_1958 = Set[9, 10, 19, 20, 22, 23, 25, 27, 28, 29, 59, 61, 62, 63, 64, 65, 66, 67, 68, 70, 71, 73, 85, 98, 99, 103, 104, 105, 107]
    TOKENS_FOLLOWING_suite_IN_elif_clause_1961 = Set[1]
    TOKENS_FOLLOWING_T__77_IN_while_statement_1974 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104, 105]
    TOKENS_FOLLOWING_test_IN_while_statement_1977 = Set[41]
    TOKENS_FOLLOWING_T__41_IN_while_statement_1979 = Set[9, 10, 19, 20, 22, 23, 25, 27, 28, 29, 59, 61, 62, 63, 64, 65, 66, 67, 68, 70, 71, 73, 85, 98, 99, 103, 104, 105, 107]
    TOKENS_FOLLOWING_suite_IN_while_statement_1982 = Set[1, 75]
    TOKENS_FOLLOWING_T__75_IN_while_statement_1990 = Set[41]
    TOKENS_FOLLOWING_T__41_IN_while_statement_1993 = Set[9, 10, 19, 20, 22, 23, 25, 27, 28, 29, 59, 61, 62, 63, 64, 65, 66, 67, 68, 70, 71, 73, 85, 98, 99, 103, 104, 105, 107]
    TOKENS_FOLLOWING_suite_IN_while_statement_1996 = Set[1]
    TOKENS_FOLLOWING_T__78_IN_for_statement_2012 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104]
    TOKENS_FOLLOWING_exprlist_IN_for_statement_2015 = Set[72]
    TOKENS_FOLLOWING_T__72_IN_for_statement_2017 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104, 105]
    TOKENS_FOLLOWING_test_list_IN_for_statement_2020 = Set[41]
    TOKENS_FOLLOWING_T__41_IN_for_statement_2022 = Set[9, 10, 19, 20, 22, 23, 25, 27, 28, 29, 59, 61, 62, 63, 64, 65, 66, 67, 68, 70, 71, 73, 85, 98, 99, 103, 104, 105, 107]
    TOKENS_FOLLOWING_suite_IN_for_statement_2025 = Set[1, 75]
    TOKENS_FOLLOWING_T__75_IN_for_statement_2029 = Set[41]
    TOKENS_FOLLOWING_T__41_IN_for_statement_2032 = Set[9, 10, 19, 20, 22, 23, 25, 27, 28, 29, 59, 61, 62, 63, 64, 65, 66, 67, 68, 70, 71, 73, 85, 98, 99, 103, 104, 105, 107]
    TOKENS_FOLLOWING_suite_IN_for_statement_2035 = Set[1]
    TOKENS_FOLLOWING_T__79_IN_try_statement_2051 = Set[41]
    TOKENS_FOLLOWING_T__41_IN_try_statement_2054 = Set[9, 10, 19, 20, 22, 23, 25, 27, 28, 29, 59, 61, 62, 63, 64, 65, 66, 67, 68, 70, 71, 73, 85, 98, 99, 103, 104, 105, 107]
    TOKENS_FOLLOWING_suite_IN_try_statement_2057 = Set[80, 82]
    TOKENS_FOLLOWING_except_clause_IN_try_statement_2065 = Set[1, 75, 80, 82]
    TOKENS_FOLLOWING_T__75_IN_try_statement_2070 = Set[41]
    TOKENS_FOLLOWING_T__41_IN_try_statement_2073 = Set[9, 10, 19, 20, 22, 23, 25, 27, 28, 29, 59, 61, 62, 63, 64, 65, 66, 67, 68, 70, 71, 73, 85, 98, 99, 103, 104, 105, 107]
    TOKENS_FOLLOWING_suite_IN_try_statement_2076 = Set[1, 80]
    TOKENS_FOLLOWING_T__80_IN_try_statement_2083 = Set[41]
    TOKENS_FOLLOWING_T__41_IN_try_statement_2086 = Set[9, 10, 19, 20, 22, 23, 25, 27, 28, 29, 59, 61, 62, 63, 64, 65, 66, 67, 68, 70, 71, 73, 85, 98, 99, 103, 104, 105, 107]
    TOKENS_FOLLOWING_suite_IN_try_statement_2089 = Set[1]
    TOKENS_FOLLOWING_T__80_IN_try_statement_2099 = Set[41]
    TOKENS_FOLLOWING_T__41_IN_try_statement_2102 = Set[9, 10, 19, 20, 22, 23, 25, 27, 28, 29, 59, 61, 62, 63, 64, 65, 66, 67, 68, 70, 71, 73, 85, 98, 99, 103, 104, 105, 107]
    TOKENS_FOLLOWING_suite_IN_try_statement_2105 = Set[1]
    TOKENS_FOLLOWING_T__81_IN_with_statement_2124 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104, 105]
    TOKENS_FOLLOWING_test_IN_with_statement_2126 = Set[41, 69]
    TOKENS_FOLLOWING_T__69_IN_with_statement_2134 = Set[22]
    TOKENS_FOLLOWING_NAME_IN_with_statement_2136 = Set[41]
    TOKENS_FOLLOWING_T__41_IN_with_statement_2138 = Set[9, 10, 19, 20, 22, 23, 25, 27, 28, 29, 59, 61, 62, 63, 64, 65, 66, 67, 68, 70, 71, 73, 85, 98, 99, 103, 104, 105, 107]
    TOKENS_FOLLOWING_suite_IN_with_statement_2140 = Set[1]
    TOKENS_FOLLOWING_T__41_IN_with_statement_2168 = Set[9, 10, 19, 20, 22, 23, 25, 27, 28, 29, 59, 61, 62, 63, 64, 65, 66, 67, 68, 70, 71, 73, 85, 98, 99, 103, 104, 105, 107]
    TOKENS_FOLLOWING_suite_IN_with_statement_2170 = Set[1]
    TOKENS_FOLLOWING_T__82_IN_except_clause_2201 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 41, 85, 98, 99, 103, 104, 105]
    TOKENS_FOLLOWING_test_IN_except_clause_2205 = Set[41, 42]
    TOKENS_FOLLOWING_T__42_IN_except_clause_2209 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104, 105]
    TOKENS_FOLLOWING_test_IN_except_clause_2211 = Set[41]
    TOKENS_FOLLOWING_T__41_IN_except_clause_2219 = Set[9, 10, 19, 20, 22, 23, 25, 27, 28, 29, 59, 61, 62, 63, 64, 65, 66, 67, 68, 70, 71, 73, 85, 98, 99, 103, 104, 105, 107]
    TOKENS_FOLLOWING_suite_IN_except_clause_2221 = Set[1]
    TOKENS_FOLLOWING_simple_statement_IN_suite_2234 = Set[1]
    TOKENS_FOLLOWING_NEWLINE_IN_suite_2248 = Set[4]
    TOKENS_FOLLOWING_INDENT_IN_suite_2250 = Set[9, 10, 19, 20, 22, 23, 25, 27, 28, 29, 38, 40, 59, 61, 62, 63, 64, 65, 66, 67, 68, 70, 71, 73, 74, 77, 78, 79, 81, 85, 98, 99, 103, 104, 105, 106, 107]
    TOKENS_FOLLOWING_statement_IN_suite_2253 = Set[5, 9, 10, 19, 20, 22, 23, 25, 27, 28, 29, 38, 40, 59, 61, 62, 63, 64, 65, 66, 67, 68, 70, 71, 73, 74, 77, 78, 79, 81, 85, 98, 99, 103, 104, 105, 106, 107]
    TOKENS_FOLLOWING_DEDENT_IN_suite_2257 = Set[1]
    TOKENS_FOLLOWING_or_test_IN_test_2279 = Set[1, 74]
    TOKENS_FOLLOWING_T__74_IN_test_2297 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104]
    TOKENS_FOLLOWING_or_test_IN_test_2299 = Set[75]
    TOKENS_FOLLOWING_T__75_IN_test_2301 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104, 105]
    TOKENS_FOLLOWING_test_IN_test_2303 = Set[1]
    TOKENS_FOLLOWING_lamb_def_IN_test_2312 = Set[1]
    TOKENS_FOLLOWING_and_test_IN_or_test_2325 = Set[1, 83]
    TOKENS_FOLLOWING_T__83_IN_or_test_2329 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104]
    TOKENS_FOLLOWING_and_test_IN_or_test_2331 = Set[1, 83]
    TOKENS_FOLLOWING_not_test_IN_and_test_2347 = Set[1, 84]
    TOKENS_FOLLOWING_T__84_IN_and_test_2351 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104]
    TOKENS_FOLLOWING_not_test_IN_and_test_2353 = Set[1, 84]
    TOKENS_FOLLOWING_T__85_IN_not_test_2369 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104]
    TOKENS_FOLLOWING_not_test_IN_not_test_2371 = Set[1]
    TOKENS_FOLLOWING_comparison_IN_not_test_2377 = Set[1]
    TOKENS_FOLLOWING_expr_IN_comparison_2390 = Set[1, 72, 85, 86, 87, 88, 89, 90, 91, 92, 93]
    TOKENS_FOLLOWING_T__86_IN_comparison_2406 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104]
    TOKENS_FOLLOWING_T__87_IN_comparison_2417 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104]
    TOKENS_FOLLOWING_T__88_IN_comparison_2428 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104]
    TOKENS_FOLLOWING_T__89_IN_comparison_2439 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104]
    TOKENS_FOLLOWING_T__90_IN_comparison_2450 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104]
    TOKENS_FOLLOWING_T__91_IN_comparison_2461 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104]
    TOKENS_FOLLOWING_T__92_IN_comparison_2472 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104]
    TOKENS_FOLLOWING_T__72_IN_comparison_2483 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104]
    TOKENS_FOLLOWING_T__85_IN_comparison_2494 = Set[72]
    TOKENS_FOLLOWING_T__72_IN_comparison_2497 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104]
    TOKENS_FOLLOWING_T__93_IN_comparison_2508 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104]
    TOKENS_FOLLOWING_T__93_IN_comparison_2519 = Set[85]
    TOKENS_FOLLOWING_T__85_IN_comparison_2522 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104]
    TOKENS_FOLLOWING_expr_IN_comparison_2539 = Set[1, 72, 85, 86, 87, 88, 89, 90, 91, 92, 93]
    TOKENS_FOLLOWING_xor_expr_IN_expr_2559 = Set[1, 94]
    TOKENS_FOLLOWING_T__94_IN_expr_2563 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104]
    TOKENS_FOLLOWING_xor_expr_IN_expr_2566 = Set[1, 94]
    TOKENS_FOLLOWING_and_expr_IN_xor_expr_2582 = Set[1, 95]
    TOKENS_FOLLOWING_T__95_IN_xor_expr_2586 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104]
    TOKENS_FOLLOWING_and_expr_IN_xor_expr_2589 = Set[1, 95]
    TOKENS_FOLLOWING_shift_expr_IN_and_expr_2605 = Set[1, 96]
    TOKENS_FOLLOWING_T__96_IN_and_expr_2609 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104]
    TOKENS_FOLLOWING_shift_expr_IN_and_expr_2612 = Set[1, 96]
    TOKENS_FOLLOWING_arith_expr_IN_shift_expr_2628 = Set[1, 60, 97]
    TOKENS_FOLLOWING_T__97_IN_shift_expr_2634 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104]
    TOKENS_FOLLOWING_T__60_IN_shift_expr_2639 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104]
    TOKENS_FOLLOWING_arith_expr_IN_shift_expr_2644 = Set[1, 60, 97]
    TOKENS_FOLLOWING_term_IN_arith_expr_2660 = Set[1, 98, 99]
    TOKENS_FOLLOWING_T__98_IN_arith_expr_2666 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104]
    TOKENS_FOLLOWING_T__99_IN_arith_expr_2671 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104]
    TOKENS_FOLLOWING_term_IN_arith_expr_2676 = Set[1, 98, 99]
    TOKENS_FOLLOWING_factor_IN_term_2692 = Set[1, 43, 100, 101, 102]
    TOKENS_FOLLOWING_T__43_IN_term_2698 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104]
    TOKENS_FOLLOWING_T__100_IN_term_2703 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104]
    TOKENS_FOLLOWING_T__101_IN_term_2708 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104]
    TOKENS_FOLLOWING_T__102_IN_term_2713 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104]
    TOKENS_FOLLOWING_factor_IN_term_2718 = Set[1, 43, 100, 101, 102]
    TOKENS_FOLLOWING_T__98_IN_factor_2734 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104]
    TOKENS_FOLLOWING_factor_IN_factor_2737 = Set[1]
    TOKENS_FOLLOWING_T__99_IN_factor_2743 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104]
    TOKENS_FOLLOWING_factor_IN_factor_2746 = Set[1]
    TOKENS_FOLLOWING_T__103_IN_factor_2752 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104]
    TOKENS_FOLLOWING_factor_IN_factor_2755 = Set[1]
    TOKENS_FOLLOWING_power_IN_factor_2761 = Set[1]
    TOKENS_FOLLOWING_atom_IN_power_2774 = Set[1, 20, 23, 39, 44]
    TOKENS_FOLLOWING_trailer_IN_power_2776 = Set[1, 20, 23, 39, 44]
    TOKENS_FOLLOWING_T__44_IN_power_2781 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104]
    TOKENS_FOLLOWING_factor_IN_power_2784 = Set[1]
    TOKENS_FOLLOWING_LPAREN_IN_atom_2800 = Set[9, 10, 20, 21, 22, 23, 25, 27, 28, 29, 63, 64, 65, 66, 85, 98, 99, 103, 104, 105, 107]
    TOKENS_FOLLOWING_yield_expr_IN_atom_2809 = Set[21]
    TOKENS_FOLLOWING_testlist_gexp_IN_atom_2817 = Set[21]
    TOKENS_FOLLOWING_RPAREN_IN_atom_2830 = Set[1]
    TOKENS_FOLLOWING_LBRACK_IN_atom_2836 = Set[9, 10, 20, 22, 23, 24, 25, 27, 28, 29, 85, 98, 99, 103, 104, 105]
    TOKENS_FOLLOWING_list_maker_IN_atom_2838 = Set[24]
    TOKENS_FOLLOWING_RBRACK_IN_atom_2841 = Set[1]
    TOKENS_FOLLOWING_LCURLY_IN_atom_2847 = Set[9, 10, 20, 22, 23, 25, 26, 27, 28, 29, 85, 98, 99, 103, 104, 105]
    TOKENS_FOLLOWING_dict_maker_IN_atom_2849 = Set[26]
    TOKENS_FOLLOWING_RCURLY_IN_atom_2852 = Set[1]
    TOKENS_FOLLOWING_T__104_IN_atom_2858 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104, 105]
    TOKENS_FOLLOWING_test_list_IN_atom_2860 = Set[104]
    TOKENS_FOLLOWING_T__104_IN_atom_2862 = Set[1]
    TOKENS_FOLLOWING_NAME_IN_atom_2868 = Set[1]
    TOKENS_FOLLOWING_INT_IN_atom_2874 = Set[1]
    TOKENS_FOLLOWING_LONGINT_IN_atom_2880 = Set[1]
    TOKENS_FOLLOWING_FLOAT_IN_atom_2886 = Set[1]
    TOKENS_FOLLOWING_COMPLEX_IN_atom_2892 = Set[1]
    TOKENS_FOLLOWING_STRING_IN_atom_2898 = Set[1, 29]
    TOKENS_FOLLOWING_test_IN_list_maker_2912 = Set[1, 42, 78]
    TOKENS_FOLLOWING_list_for_IN_list_maker_2921 = Set[1, 42]
    TOKENS_FOLLOWING_T__42_IN_list_maker_2937 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104, 105]
    TOKENS_FOLLOWING_test_IN_list_maker_2939 = Set[1, 42]
    TOKENS_FOLLOWING_T__42_IN_list_maker_2949 = Set[1]
    TOKENS_FOLLOWING_test_IN_testlist_gexp_2963 = Set[1, 42, 78]
    TOKENS_FOLLOWING_T__42_IN_testlist_gexp_2980 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104, 105]
    TOKENS_FOLLOWING_test_IN_testlist_gexp_2982 = Set[1, 42]
    TOKENS_FOLLOWING_T__42_IN_testlist_gexp_2986 = Set[1]
    TOKENS_FOLLOWING_gen_for_IN_testlist_gexp_2995 = Set[1]
    TOKENS_FOLLOWING_T__105_IN_lamb_def_3014 = Set[20, 22, 41, 43, 44]
    TOKENS_FOLLOWING_var_args_list_IN_lamb_def_3016 = Set[41]
    TOKENS_FOLLOWING_T__41_IN_lamb_def_3019 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104, 105]
    TOKENS_FOLLOWING_test_IN_lamb_def_3021 = Set[1]
    TOKENS_FOLLOWING_LPAREN_IN_trailer_3034 = Set[9, 10, 20, 21, 22, 23, 25, 27, 28, 29, 43, 44, 85, 98, 99, 103, 104, 105]
    TOKENS_FOLLOWING_arg_list_IN_trailer_3036 = Set[21]
    TOKENS_FOLLOWING_RPAREN_IN_trailer_3039 = Set[1]
    TOKENS_FOLLOWING_LBRACK_IN_trailer_3045 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 39, 41, 85, 98, 99, 103, 104, 105]
    TOKENS_FOLLOWING_subscript_list_IN_trailer_3047 = Set[24]
    TOKENS_FOLLOWING_RBRACK_IN_trailer_3049 = Set[1]
    TOKENS_FOLLOWING_T__39_IN_trailer_3055 = Set[22]
    TOKENS_FOLLOWING_NAME_IN_trailer_3057 = Set[1]
    TOKENS_FOLLOWING_subscript_IN_subscript_list_3068 = Set[1, 42]
    TOKENS_FOLLOWING_T__42_IN_subscript_list_3078 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 39, 41, 85, 98, 99, 103, 104, 105]
    TOKENS_FOLLOWING_subscript_IN_subscript_list_3080 = Set[1, 42]
    TOKENS_FOLLOWING_T__42_IN_subscript_list_3085 = Set[1]
    TOKENS_FOLLOWING_T__39_IN_subscript_3110 = Set[39]
    TOKENS_FOLLOWING_T__39_IN_subscript_3112 = Set[39]
    TOKENS_FOLLOWING_T__39_IN_subscript_3114 = Set[1]
    TOKENS_FOLLOWING_test_IN_subscript_3128 = Set[1, 41]
    TOKENS_FOLLOWING_T__41_IN_subscript_3131 = Set[1, 9, 10, 20, 22, 23, 25, 27, 28, 29, 41, 85, 98, 99, 103, 104, 105]
    TOKENS_FOLLOWING_test_IN_subscript_3134 = Set[1, 41]
    TOKENS_FOLLOWING_sliceop_IN_subscript_3139 = Set[1]
    TOKENS_FOLLOWING_T__41_IN_subscript_3157 = Set[1, 9, 10, 20, 22, 23, 25, 27, 28, 29, 41, 85, 98, 99, 103, 104, 105]
    TOKENS_FOLLOWING_test_IN_subscript_3160 = Set[1, 41]
    TOKENS_FOLLOWING_sliceop_IN_subscript_3165 = Set[1]
    TOKENS_FOLLOWING_T__41_IN_sliceop_3186 = Set[1, 9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104, 105]
    TOKENS_FOLLOWING_test_IN_sliceop_3189 = Set[1]
    TOKENS_FOLLOWING_expr_IN_exprlist_3208 = Set[1, 42]
    TOKENS_FOLLOWING_T__42_IN_exprlist_3219 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104]
    TOKENS_FOLLOWING_expr_IN_exprlist_3221 = Set[1, 42]
    TOKENS_FOLLOWING_T__42_IN_exprlist_3226 = Set[1]
    TOKENS_FOLLOWING_test_IN_test_list_3250 = Set[1, 42]
    TOKENS_FOLLOWING_T__42_IN_test_list_3261 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104, 105]
    TOKENS_FOLLOWING_test_IN_test_list_3263 = Set[1, 42]
    TOKENS_FOLLOWING_T__42_IN_test_list_3268 = Set[1]
    TOKENS_FOLLOWING_test_IN_dict_maker_3285 = Set[41]
    TOKENS_FOLLOWING_T__41_IN_dict_maker_3287 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104, 105]
    TOKENS_FOLLOWING_test_IN_dict_maker_3289 = Set[1, 42]
    TOKENS_FOLLOWING_T__42_IN_dict_maker_3299 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104, 105]
    TOKENS_FOLLOWING_test_IN_dict_maker_3301 = Set[41]
    TOKENS_FOLLOWING_T__41_IN_dict_maker_3303 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104, 105]
    TOKENS_FOLLOWING_test_IN_dict_maker_3305 = Set[1, 42]
    TOKENS_FOLLOWING_T__42_IN_dict_maker_3310 = Set[1]
    TOKENS_FOLLOWING_T__106_IN_class_def_3324 = Set[22]
    TOKENS_FOLLOWING_NAME_IN_class_def_3326 = Set[20, 41]
    TOKENS_FOLLOWING_LPAREN_IN_class_def_3329 = Set[9, 10, 20, 21, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104, 105]
    TOKENS_FOLLOWING_test_list_IN_class_def_3331 = Set[21]
    TOKENS_FOLLOWING_RPAREN_IN_class_def_3334 = Set[41]
    TOKENS_FOLLOWING_T__41_IN_class_def_3338 = Set[9, 10, 19, 20, 22, 23, 25, 27, 28, 29, 59, 61, 62, 63, 64, 65, 66, 67, 68, 70, 71, 73, 85, 98, 99, 103, 104, 105, 107]
    TOKENS_FOLLOWING_suite_IN_class_def_3340 = Set[1]
    TOKENS_FOLLOWING_argument_IN_arg_list_3353 = Set[1, 42]
    TOKENS_FOLLOWING_T__42_IN_arg_list_3356 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104, 105]
    TOKENS_FOLLOWING_argument_IN_arg_list_3358 = Set[1, 42]
    TOKENS_FOLLOWING_T__42_IN_arg_list_3368 = Set[1, 43, 44]
    TOKENS_FOLLOWING_T__43_IN_arg_list_3378 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104, 105]
    TOKENS_FOLLOWING_test_IN_arg_list_3380 = Set[1, 42]
    TOKENS_FOLLOWING_T__42_IN_arg_list_3383 = Set[44]
    TOKENS_FOLLOWING_T__44_IN_arg_list_3385 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104, 105]
    TOKENS_FOLLOWING_test_IN_arg_list_3387 = Set[1]
    TOKENS_FOLLOWING_T__44_IN_arg_list_3399 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104, 105]
    TOKENS_FOLLOWING_test_IN_arg_list_3401 = Set[1]
    TOKENS_FOLLOWING_T__43_IN_arg_list_3423 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104, 105]
    TOKENS_FOLLOWING_test_IN_arg_list_3425 = Set[1, 42]
    TOKENS_FOLLOWING_T__42_IN_arg_list_3429 = Set[44]
    TOKENS_FOLLOWING_T__44_IN_arg_list_3431 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104, 105]
    TOKENS_FOLLOWING_test_IN_arg_list_3433 = Set[1]
    TOKENS_FOLLOWING_T__44_IN_arg_list_3442 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104, 105]
    TOKENS_FOLLOWING_test_IN_arg_list_3444 = Set[1]
    TOKENS_FOLLOWING_test_IN_argument_3457 = Set[42, 45, 78]
    TOKENS_FOLLOWING_T__45_IN_argument_3461 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104, 105]
    TOKENS_FOLLOWING_test_IN_argument_3463 = Set[1]
    TOKENS_FOLLOWING_gen_for_IN_argument_3467 = Set[1]
    TOKENS_FOLLOWING_list_for_IN_list_iter_3483 = Set[1]
    TOKENS_FOLLOWING_list_if_IN_list_iter_3489 = Set[1]
    TOKENS_FOLLOWING_T__78_IN_list_for_3502 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104]
    TOKENS_FOLLOWING_exprlist_IN_list_for_3504 = Set[72]
    TOKENS_FOLLOWING_T__72_IN_list_for_3506 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104, 105]
    TOKENS_FOLLOWING_test_list_IN_list_for_3508 = Set[1, 74, 78]
    TOKENS_FOLLOWING_list_iter_IN_list_for_3510 = Set[1]
    TOKENS_FOLLOWING_T__74_IN_list_if_3524 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104, 105]
    TOKENS_FOLLOWING_test_IN_list_if_3526 = Set[1, 74, 78]
    TOKENS_FOLLOWING_list_iter_IN_list_if_3528 = Set[1]
    TOKENS_FOLLOWING_gen_for_IN_gen_iter_3542 = Set[1]
    TOKENS_FOLLOWING_gen_if_IN_gen_iter_3548 = Set[1]
    TOKENS_FOLLOWING_T__78_IN_gen_for_3561 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104]
    TOKENS_FOLLOWING_exprlist_IN_gen_for_3563 = Set[72]
    TOKENS_FOLLOWING_T__72_IN_gen_for_3565 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104]
    TOKENS_FOLLOWING_or_test_IN_gen_for_3567 = Set[1, 42, 74, 78]
    TOKENS_FOLLOWING_gen_iter_IN_gen_for_3569 = Set[1]
    TOKENS_FOLLOWING_T__74_IN_gen_if_3583 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104, 105]
    TOKENS_FOLLOWING_test_IN_gen_if_3585 = Set[1, 42, 74, 78]
    TOKENS_FOLLOWING_gen_iter_IN_gen_if_3587 = Set[1]
    TOKENS_FOLLOWING_T__107_IN_yield_expr_3601 = Set[1, 9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104, 105]
    TOKENS_FOLLOWING_test_list_IN_yield_expr_3603 = Set[1]
    TOKENS_FOLLOWING_T__74_IN_synpred1_Python_2288 = Set[9, 10, 20, 22, 23, 25, 27, 28, 29, 85, 98, 99, 103, 104]
    TOKENS_FOLLOWING_or_test_IN_synpred1_Python_2290 = Set[75]
    TOKENS_FOLLOWING_T__75_IN_synpred1_Python_2292 = Set[1]

  end # class Parser < ANTLR3::Parser

end

if __FILE__ == $0 and ARGV.first != '--'
  # - - - - - - begin action @parser::main - - - - - -
  # samples/Python.g



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