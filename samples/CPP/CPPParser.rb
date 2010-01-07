#!/usr/bin/env ruby
#
# samples/CPP.g
# 
# Generated using ANTLR version: 3.2.1-SNAPSHOT Dec 18, 2009 04:29:28
# Ruby runtime library version: 1.3.0
# Input grammar file: samples/CPP.g
# Generated at: 2010-01-07 10:20:06
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


module CPP
  # TokenData defines all of the token type integer values
  # as constants, which will be included in all 
  # ANTLR-generated recognizers.
  const_defined?(:TokenData) or TokenData = ANTLR3::TokenScheme.new

  module TokenData

    # define the token constants
    define_tokens(:STAR => 84, :LSQUARE => 93, :FloatTypeSuffix => 119, 
                  :LETTER => 109, :MOD => 86, :TYPECAST => 19, :POINTER => 25, 
                  :BITWISEXOR => 72, :MINUSMINUS => 88, :ASSIGNEQUAL => 56, 
                  :NOT => 91, :EOF => -1, :UNARY_PLUS => 17, :NOTEQUAL => 74, 
                  :COPERATOR => 106, :MINUSEQUAL => 61, :RPAREN => 51, :MAC_FUNCTION => 43, 
                  :STRING_LITERAL => 55, :FLOATING_POINT_LITERAL => 100, 
                  :DOTMBR => 113, :INCLUDE => 38, :ENDIF => 9, :ARGS => 28, 
                  :COMMENT => 122, :REFERANCE => 18, :DIVIDE => 85, :TEXT_END => 31, 
                  :GREATERTHAN => 77, :LINE_COMMENT => 123, :MAC_FUNCTION_OBJECT => 44, 
                  :IntegerTypeSuffix => 117, :POINTERTOMBR => 112, :DEFINED => 90, 
                  :ELSE => 8, :CHARACTER_LITERAL => 99, :ELLIPSIS => 53, 
                  :LCURLY => 110, :EXPR_DEF => 14, :UNARY_MINUS => 16, :SEMICOLON => 103, 
                  :BITWISEXOREQUAL => 65, :ERROR => 11, :METHOD_CALL => 27, 
                  :ELIF => 7, :WS => 50, :CKEYWORD => 105, :SHARPSHARP => 104, 
                  :SHIFTLEFTEQUAL => 62, :OR => 69, :SIZEOF => 89, :INDEX_OP => 21, 
                  :EXPR_GROUP => 26, :DIVIDEEQUAL => 58, :LESSTHANOREQUALTO => 78, 
                  :INCLUDE_FILE => 107, :WARNING => 10, :EscapeSequence => 115, 
                  :DECIMAL_LITERAL => 54, :EXP_ARGS => 33, :STRING_OP => 102, 
                  :End => 47, :ESCAPED_NEWLINE => 124, :MAC_OBJECT => 42, 
                  :PLUSPLUS => 87, :PRAGMA => 12, :INCLUDE_EXPAND => 39, 
                  :SHIFTLEFT => 80, :Exponent => 118, :STRINGIFICATION => 101, 
                  :AND => 70, :DEFINE => 40, :EXPAND => 32, :POINTER_AT => 24, 
                  :POST_DEC => 23, :DIRECTIVE => 46, :HexDigit => 116, :LPAREN => 49, 
                  :IF => 6, :PLUSEQUAL => 60, :GREATERTHANOREQUALTO => 79, 
                  :EXPR => 13, :MODEQUAL => 59, :SCOPE => 114, :COMMA => 52, 
                  :IDENTIFIER => 48, :EQUAL => 75, :SHIFTRIGHT => 81, :QUESTIONMARK => 67, 
                  :TILDE => 92, :PLUS => 82, :HEX_LITERAL => 97, :EXP_ARG => 34, 
                  :SHIFTRIGHTEQUAL => 63, :UNDEF => 41, :DOT => 95, :MACRO_DEFINE => 45, 
                  :LESSTHAN => 76, :EXEC_MACRO => 35, :IFNDEF => 5, :TEXT_GROUP => 30, 
                  :TIMESEQUAL => 57, :OCTAL_LITERAL => 98, :AMPERSAND => 73, 
                  :IFDEF => 4, :BITWISEANDEQUAL => 64, :RSQUARE => 94, :MINUS => 83, 
                  :LINE => 37, :TEXT_LINE => 29, :BITWISEOR => 71, :CONCATENATE => 36, 
                  :MACRO_TEXT => 108, :COLON => 68, :UnicodeEscape => 121, 
                  :RCURLY => 111, :EXPR_NDEF => 15, :POST_INC => 22, :POINTERTO => 96, 
                  :OctalEscape => 120, :SIZEOF_TYPE => 20, :BITWISEOREQUAL => 66)

    # register the proper human-readable name or literal value
    # for each token type
    #
    # this is necessary because anonymous tokens, which are
    # created from literal values in the grammar, do not
    # have descriptive names
    register_names("IFDEF", "IFNDEF", "IF", "ELIF", "ELSE", "ENDIF", "WARNING", 
                   "ERROR", "PRAGMA", "EXPR", "EXPR_DEF", "EXPR_NDEF", "UNARY_MINUS", 
                   "UNARY_PLUS", "REFERANCE", "TYPECAST", "SIZEOF_TYPE", 
                   "INDEX_OP", "POST_INC", "POST_DEC", "POINTER_AT", "POINTER", 
                   "EXPR_GROUP", "METHOD_CALL", "ARGS", "TEXT_LINE", "TEXT_GROUP", 
                   "TEXT_END", "EXPAND", "EXP_ARGS", "EXP_ARG", "EXEC_MACRO", 
                   "CONCATENATE", "LINE", "INCLUDE", "INCLUDE_EXPAND", "DEFINE", 
                   "UNDEF", "MAC_OBJECT", "MAC_FUNCTION", "MAC_FUNCTION_OBJECT", 
                   "MACRO_DEFINE", "DIRECTIVE", "End", "IDENTIFIER", "LPAREN", 
                   "WS", "RPAREN", "COMMA", "ELLIPSIS", "DECIMAL_LITERAL", 
                   "STRING_LITERAL", "ASSIGNEQUAL", "TIMESEQUAL", "DIVIDEEQUAL", 
                   "MODEQUAL", "PLUSEQUAL", "MINUSEQUAL", "SHIFTLEFTEQUAL", 
                   "SHIFTRIGHTEQUAL", "BITWISEANDEQUAL", "BITWISEXOREQUAL", 
                   "BITWISEOREQUAL", "QUESTIONMARK", "COLON", "OR", "AND", 
                   "BITWISEOR", "BITWISEXOR", "AMPERSAND", "NOTEQUAL", "EQUAL", 
                   "LESSTHAN", "GREATERTHAN", "LESSTHANOREQUALTO", "GREATERTHANOREQUALTO", 
                   "SHIFTLEFT", "SHIFTRIGHT", "PLUS", "MINUS", "STAR", "DIVIDE", 
                   "MOD", "PLUSPLUS", "MINUSMINUS", "SIZEOF", "DEFINED", 
                   "NOT", "TILDE", "LSQUARE", "RSQUARE", "DOT", "POINTERTO", 
                   "HEX_LITERAL", "OCTAL_LITERAL", "CHARACTER_LITERAL", 
                   "FLOATING_POINT_LITERAL", "STRINGIFICATION", "STRING_OP", 
                   "SEMICOLON", "SHARPSHARP", "CKEYWORD", "COPERATOR", "INCLUDE_FILE", 
                   "MACRO_TEXT", "LETTER", "LCURLY", "RCURLY", "POINTERTOMBR", 
                   "DOTMBR", "SCOPE", "EscapeSequence", "HexDigit", "IntegerTypeSuffix", 
                   "Exponent", "FloatTypeSuffix", "OctalEscape", "UnicodeEscape", 
                   "COMMENT", "LINE_COMMENT", "ESCAPED_NEWLINE")
    
  end


  class Parser < ANTLR3::Parser
    @grammar_home = CPP
    include ANTLR3::ASTBuilder

    RULE_METHODS = [:preprocess, :proc_line, :file_inclusion, :macro_define, 
                    :macro_param, :macro_execution, :macro_undef, :conditional_compilation, 
                    :line_control, :diagnostics, :text_line, :statement, 
                    :type_name, :ifexpression, :assignment_expression, :conditional_expression, 
                    :logical_or_expression, :logical_and_expression, :inclusive_or_expression, 
                    :exclusive_or_expression, :and_expression, :equality_expression, 
                    :relational_expression, :shift_expression, :additive_expression, 
                    :multiplicative_expression, :unary_expression, :unary_expression_not_plus_minus, 
                    :postfix_expression, :primary_expression, :function_call, 
                    :arg_list, :constant, :source_text, :macro_expansion, 
                    :mac_args, :m_arg, :source_expression, :concatenate, 
                    :primary_source, :macro_text, :synpred14_CPP, :synpred22_CPP, 
                    :synpred65_CPP, :synpred66_CPP, :synpred75_CPP, :synpred78_CPP, 
                    :synpred82_CPP, :synpred83_CPP, :synpred92_CPP, :synpred94_CPP, 
                    :synpred98_CPP, :synpred100_CPP, :synpred103_CPP, :synpred105_CPP, 
                    :synpred106_CPP, :synpred108_CPP, :synpred110_CPP, :synpred112_CPP, 
                    :synpred115_CPP, :synpred121_CPP].freeze

    ScopeExpression = Struct.new(:flavor)


    include TokenData

    generated_using( "samples/CPP.g", "3.2.1-SNAPSHOT Dec 18, 2009 04:29:28", "1.3.0" )

    def initialize(input, options = {})
      super(input, options)
      @state.rule_memory = {}
      @Expression_stack = []


    end
    # - - - - - - - - - - - - Rules - - - - - - - - - - - - -
    PreprocessReturnValue = define_return_scope 

    # parser rule preprocess
    # 
    # (in samples/CPP.g)
    # 85:1: preprocess : ( proc_line )+ ;
    def preprocess
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 1)
      return_value = PreprocessReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      preprocess_start_index = @input.index

      root_0 = nil
      proc_line1 = nil


      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return return_value
        end
        root_0 = @adaptor.create_flat_list!


        # at line 86:7: ( proc_line )+
        # at file 86:7: ( proc_line )+
        match_count_1 = 0
        loop do
          alt_1 = 2
          look_1_0 = @input.peek(1)

          if (look_1_0 == IF || look_1_0.between?(WARNING, PRAGMA) || look_1_0 == TEXT_END || look_1_0 == EXEC_MACRO || look_1_0.between?(LINE, UNDEF) || look_1_0.between?(DIRECTIVE, COMMA) || look_1_0.between?(DECIMAL_LITERAL, STRING_LITERAL) || look_1_0 == SIZEOF || look_1_0.between?(HEX_LITERAL, COPERATOR)) 
            alt_1 = 1

          end
          case alt_1
          when 1
            # at line 0:0: proc_line
            @state.following.push(TOKENS_FOLLOWING_proc_line_IN_preprocess_379)
            proc_line1 = proc_line
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, proc_line1.tree)
            end

          else
            match_count_1 > 0 and break
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

            eee = EarlyExit(1)


            raise eee
          end
          match_count_1 += 1
        end

        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 1)
        memoize(__method__, preprocess_start_index, success) if @state.backtracking > 0

      end
      
      return return_value
    end

    ProcLineReturnValue = define_return_scope 

    # parser rule proc_line
    # 
    # (in samples/CPP.g)
    # 89:1: proc_line : ( DIRECTIVE | text_line | diagnostics | file_inclusion | macro_define | macro_undef | conditional_compilation | line_control | macro_execution )? End ;
    def proc_line
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 2)
      return_value = ProcLineReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      proc_line_start_index = @input.index

      root_0 = nil
      __DIRECTIVE2__ = nil
      __End11__ = nil
      text_line3 = nil
      diagnostics4 = nil
      file_inclusion5 = nil
      macro_define6 = nil
      macro_undef7 = nil
      conditional_compilation8 = nil
      line_control9 = nil
      macro_execution10 = nil

      tree_for_DIRECTIVE2 = nil
      tree_for_End11 = nil

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return return_value
        end
        root_0 = @adaptor.create_flat_list!


        # at line 91:5: ( DIRECTIVE | text_line | diagnostics | file_inclusion | macro_define | macro_undef | conditional_compilation | line_control | macro_execution )? End
        # at line 91:5: ( DIRECTIVE | text_line | diagnostics | file_inclusion | macro_define | macro_undef | conditional_compilation | line_control | macro_execution )?
        alt_2 = 10
        alt_2 = @dfa2.predict(@input)
        case alt_2
        when 1
          # at line 91:13: DIRECTIVE
          __DIRECTIVE2__ = match(DIRECTIVE, TOKENS_FOLLOWING_DIRECTIVE_IN_proc_line_409)
          if @state.backtracking == 0

            tree_for_DIRECTIVE2 = @adaptor.create_with_payload!(__DIRECTIVE2__)
            @adaptor.add_child(root_0, tree_for_DIRECTIVE2)

          end

        when 2
          # at line 92:13: text_line
          @state.following.push(TOKENS_FOLLOWING_text_line_IN_proc_line_423)
          text_line3 = text_line
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, text_line3.tree)
          end

        when 3
          # at line 93:13: diagnostics
          @state.following.push(TOKENS_FOLLOWING_diagnostics_IN_proc_line_437)
          diagnostics4 = diagnostics
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, diagnostics4.tree)
          end

        when 4
          # at line 94:13: file_inclusion
          @state.following.push(TOKENS_FOLLOWING_file_inclusion_IN_proc_line_451)
          file_inclusion5 = file_inclusion
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, file_inclusion5.tree)
          end

        when 5
          # at line 95:13: macro_define
          @state.following.push(TOKENS_FOLLOWING_macro_define_IN_proc_line_465)
          macro_define6 = macro_define
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, macro_define6.tree)
          end

        when 6
          # at line 96:13: macro_undef
          @state.following.push(TOKENS_FOLLOWING_macro_undef_IN_proc_line_479)
          macro_undef7 = macro_undef
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, macro_undef7.tree)
          end

        when 7
          # at line 97:13: conditional_compilation
          @state.following.push(TOKENS_FOLLOWING_conditional_compilation_IN_proc_line_493)
          conditional_compilation8 = conditional_compilation
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, conditional_compilation8.tree)
          end

        when 8
          # at line 98:13: line_control
          @state.following.push(TOKENS_FOLLOWING_line_control_IN_proc_line_507)
          line_control9 = line_control
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, line_control9.tree)
          end

        when 9
          # at line 99:13: macro_execution
          @state.following.push(TOKENS_FOLLOWING_macro_execution_IN_proc_line_521)
          macro_execution10 = macro_execution
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, macro_execution10.tree)
          end

        end
        __End11__ = match(End, TOKENS_FOLLOWING_End_IN_proc_line_535)
        if @state.backtracking == 0

          tree_for_End11 = @adaptor.create_with_payload!(__End11__)
          @adaptor.add_child(root_0, tree_for_End11)

        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 2)
        memoize(__method__, proc_line_start_index, success) if @state.backtracking > 0

      end
      
      return return_value
    end

    FileInclusionReturnValue = define_return_scope 

    # parser rule file_inclusion
    # 
    # (in samples/CPP.g)
    # 103:1: file_inclusion : ( INCLUDE -> ^( INCLUDE ) | INCLUDE_EXPAND -> ^( INCLUDE_EXPAND ) );
    def file_inclusion
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 3)
      return_value = FileInclusionReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      file_inclusion_start_index = @input.index

      root_0 = nil
      __INCLUDE12__ = nil
      __INCLUDE_EXPAND13__ = nil

      tree_for_INCLUDE12 = nil
      tree_for_INCLUDE_EXPAND13 = nil
      stream_INCLUDE_EXPAND = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token INCLUDE_EXPAND")
      stream_INCLUDE = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token INCLUDE")

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return return_value
        end
        # at line 104:5: ( INCLUDE -> ^( INCLUDE ) | INCLUDE_EXPAND -> ^( INCLUDE_EXPAND ) )
        alt_3 = 2
        look_3_0 = @input.peek(1)

        if (look_3_0 == INCLUDE) 
          alt_3 = 1
        elsif (look_3_0 == INCLUDE_EXPAND) 
          alt_3 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 3, 0)
          raise nvae
        end
        case alt_3
        when 1
          # at line 104:13: INCLUDE
          __INCLUDE12__ = match(INCLUDE, TOKENS_FOLLOWING_INCLUDE_IN_file_inclusion_558) 
          if @state.backtracking == 0
            stream_INCLUDE.add(__INCLUDE12__)
          end
          # AST Rewrite
          # elements: INCLUDE
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

            root_0 = @adaptor.create_flat_list!
            # 104:29: -> ^( INCLUDE )
            # at line 104:32: ^( INCLUDE )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(stream_INCLUDE.next_node, root_1)

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 2
          # at line 105:13: INCLUDE_EXPAND
          __INCLUDE_EXPAND13__ = match(INCLUDE_EXPAND, TOKENS_FOLLOWING_INCLUDE_EXPAND_IN_file_inclusion_586) 
          if @state.backtracking == 0
            stream_INCLUDE_EXPAND.add(__INCLUDE_EXPAND13__)
          end
          # AST Rewrite
          # elements: INCLUDE_EXPAND
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

            root_0 = @adaptor.create_flat_list!
            # 105:29: -> ^( INCLUDE_EXPAND )
            # at line 105:32: ^( INCLUDE_EXPAND )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(stream_INCLUDE_EXPAND.next_node, root_1)

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 3)
        memoize(__method__, file_inclusion_start_index, success) if @state.backtracking > 0

      end
      
      return return_value
    end

    MacroDefineReturnValue = define_return_scope 

    # parser rule macro_define
    # 
    # (in samples/CPP.g)
    # 108:1: macro_define : ( DEFINE IDENTIFIER LPAREN ( WS )? RPAREN ( macro_text )? -> ^( MAC_FUNCTION_OBJECT IDENTIFIER ( macro_text )? ) | DEFINE mac= IDENTIFIER LPAREN ( WS )? (arg+= macro_param ( WS )? ( COMMA ( WS )* arg+= macro_param ( WS )* )* )? RPAREN ( macro_text )? -> ^( MAC_FUNCTION $mac ( $arg)+ ( macro_text )? ) | DEFINE IDENTIFIER ( macro_text )? -> ^( MAC_OBJECT IDENTIFIER ( macro_text )? ) );
    def macro_define
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 4)
      return_value = MacroDefineReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      macro_define_start_index = @input.index

      root_0 = nil
      mac = nil
      __DEFINE14__ = nil
      __IDENTIFIER15__ = nil
      __LPAREN16__ = nil
      __WS17__ = nil
      __RPAREN18__ = nil
      __DEFINE20__ = nil
      __LPAREN21__ = nil
      __WS22__ = nil
      __WS23__ = nil
      __COMMA24__ = nil
      __WS25__ = nil
      __WS26__ = nil
      __RPAREN27__ = nil
      __DEFINE29__ = nil
      __IDENTIFIER30__ = nil
      list_of_arg = []
      macro_text19 = nil
      macro_text28 = nil
      macro_text31 = nil
      arg = nil
      arg = nil

      tree_for_mac = nil
      tree_for_DEFINE14 = nil
      tree_for_IDENTIFIER15 = nil
      tree_for_LPAREN16 = nil
      tree_for_WS17 = nil
      tree_for_RPAREN18 = nil
      tree_for_DEFINE20 = nil
      tree_for_LPAREN21 = nil
      tree_for_WS22 = nil
      tree_for_WS23 = nil
      tree_for_COMMA24 = nil
      tree_for_WS25 = nil
      tree_for_WS26 = nil
      tree_for_RPAREN27 = nil
      tree_for_DEFINE29 = nil
      tree_for_IDENTIFIER30 = nil
      stream_RPAREN = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token RPAREN")
      stream_WS = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token WS")
      stream_COMMA = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token COMMA")
      stream_DEFINE = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token DEFINE")
      stream_IDENTIFIER = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token IDENTIFIER")
      stream_LPAREN = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token LPAREN")
      stream_macro_param = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule macro_param")
      stream_macro_text = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule macro_text")
      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return return_value
        end
        # at line 109:5: ( DEFINE IDENTIFIER LPAREN ( WS )? RPAREN ( macro_text )? -> ^( MAC_FUNCTION_OBJECT IDENTIFIER ( macro_text )? ) | DEFINE mac= IDENTIFIER LPAREN ( WS )? (arg+= macro_param ( WS )? ( COMMA ( WS )* arg+= macro_param ( WS )* )* )? RPAREN ( macro_text )? -> ^( MAC_FUNCTION $mac ( $arg)+ ( macro_text )? ) | DEFINE IDENTIFIER ( macro_text )? -> ^( MAC_OBJECT IDENTIFIER ( macro_text )? ) )
        alt_14 = 3
        alt_14 = @dfa14.predict(@input)
        case alt_14
        when 1
          # at line 109:8: DEFINE IDENTIFIER LPAREN ( WS )? RPAREN ( macro_text )?
          __DEFINE14__ = match(DEFINE, TOKENS_FOLLOWING_DEFINE_IN_macro_define_611) 
          if @state.backtracking == 0
            stream_DEFINE.add(__DEFINE14__)
          end
          __IDENTIFIER15__ = match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_macro_define_617) 
          if @state.backtracking == 0
            stream_IDENTIFIER.add(__IDENTIFIER15__)
          end
          __LPAREN16__ = match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_macro_define_620) 
          if @state.backtracking == 0
            stream_LPAREN.add(__LPAREN16__)
          end
          # at line 109:43: ( WS )?
          alt_4 = 2
          look_4_0 = @input.peek(1)

          if (look_4_0 == WS) 
            alt_4 = 1
          end
          case alt_4
          when 1
            # at line 0:0: WS
            __WS17__ = match(WS, TOKENS_FOLLOWING_WS_IN_macro_define_627) 
            if @state.backtracking == 0
              stream_WS.add(__WS17__)
            end

          end
          __RPAREN18__ = match(RPAREN, TOKENS_FOLLOWING_RPAREN_IN_macro_define_634) 
          if @state.backtracking == 0
            stream_RPAREN.add(__RPAREN18__)
          end
          # at line 109:59: ( macro_text )?
          alt_5 = 2
          look_5_0 = @input.peek(1)

          if (look_5_0 == TEXT_END || look_5_0.between?(IDENTIFIER, COMMA) || look_5_0.between?(DECIMAL_LITERAL, STRING_LITERAL) || look_5_0 == SIZEOF || look_5_0.between?(HEX_LITERAL, COPERATOR)) 
            alt_5 = 1
          end
          case alt_5
          when 1
            # at line 0:0: macro_text
            @state.following.push(TOKENS_FOLLOWING_macro_text_IN_macro_define_637)
            macro_text19 = macro_text
            @state.following.pop
            if @state.backtracking == 0
              stream_macro_text.add(macro_text19.tree)
            end

          end
          # AST Rewrite
          # elements: macro_text, IDENTIFIER
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

            root_0 = @adaptor.create_flat_list!
            # 109:71: -> ^( MAC_FUNCTION_OBJECT IDENTIFIER ( macro_text )? )
            # at line 109:74: ^( MAC_FUNCTION_OBJECT IDENTIFIER ( macro_text )? )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(@adaptor.create_from_type!(MAC_FUNCTION_OBJECT, "MAC_FUNCTION_OBJECT"), root_1)

            @adaptor.add_child(root_1, stream_IDENTIFIER.next_node)
            # at line 109:107: ( macro_text )?
            if stream_macro_text.has_next?
              @adaptor.add_child(root_1, stream_macro_text.next_tree)

            end

            stream_macro_text.reset();

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 2
          # at line 110:8: DEFINE mac= IDENTIFIER LPAREN ( WS )? (arg+= macro_param ( WS )? ( COMMA ( WS )* arg+= macro_param ( WS )* )* )? RPAREN ( macro_text )?
          __DEFINE20__ = match(DEFINE, TOKENS_FOLLOWING_DEFINE_IN_macro_define_658) 
          if @state.backtracking == 0
            stream_DEFINE.add(__DEFINE20__)
          end
          mac = match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_macro_define_662) 
          if @state.backtracking == 0
            stream_IDENTIFIER.add(mac)
          end
          __LPAREN21__ = match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_macro_define_665) 
          if @state.backtracking == 0
            stream_LPAREN.add(__LPAREN21__)
          end
          # at line 110:38: ( WS )?
          alt_6 = 2
          look_6_0 = @input.peek(1)

          if (look_6_0 == WS) 
            alt_6 = 1
          end
          case alt_6
          when 1
            # at line 0:0: WS
            __WS22__ = match(WS, TOKENS_FOLLOWING_WS_IN_macro_define_667) 
            if @state.backtracking == 0
              stream_WS.add(__WS22__)
            end

          end
          # at line 110:42: (arg+= macro_param ( WS )? ( COMMA ( WS )* arg+= macro_param ( WS )* )* )?
          alt_11 = 2
          look_11_0 = @input.peek(1)

          if (look_11_0 == IDENTIFIER || look_11_0 == ELLIPSIS) 
            alt_11 = 1
          end
          case alt_11
          when 1
            # at line 110:43: arg+= macro_param ( WS )? ( COMMA ( WS )* arg+= macro_param ( WS )* )*
            @state.following.push(TOKENS_FOLLOWING_macro_param_IN_macro_define_673)
            arg = macro_param
            @state.following.pop
            if @state.backtracking == 0
              stream_macro_param.add(arg.tree)
            end
            list_of_arg << arg.tree

            # at line 110:60: ( WS )?
            alt_7 = 2
            look_7_0 = @input.peek(1)

            if (look_7_0 == WS) 
              alt_7 = 1
            end
            case alt_7
            when 1
              # at line 0:0: WS
              __WS23__ = match(WS, TOKENS_FOLLOWING_WS_IN_macro_define_675) 
              if @state.backtracking == 0
                stream_WS.add(__WS23__)
              end

            end
            # at line 110:64: ( COMMA ( WS )* arg+= macro_param ( WS )* )*
            loop do  #loop 10
              alt_10 = 2
              look_10_0 = @input.peek(1)

              if (look_10_0 == COMMA) 
                alt_10 = 1

              end
              case alt_10
              when 1
                # at line 110:65: COMMA ( WS )* arg+= macro_param ( WS )*
                __COMMA24__ = match(COMMA, TOKENS_FOLLOWING_COMMA_IN_macro_define_679) 
                if @state.backtracking == 0
                  stream_COMMA.add(__COMMA24__)
                end
                # at line 110:71: ( WS )*
                loop do  #loop 8
                  alt_8 = 2
                  look_8_0 = @input.peek(1)

                  if (look_8_0 == WS) 
                    alt_8 = 1

                  end
                  case alt_8
                  when 1
                    # at line 0:0: WS
                    __WS25__ = match(WS, TOKENS_FOLLOWING_WS_IN_macro_define_681) 
                    if @state.backtracking == 0
                      stream_WS.add(__WS25__)
                    end

                  else
                    break #loop 8
                  end
                end
                @state.following.push(TOKENS_FOLLOWING_macro_param_IN_macro_define_686)
                arg = macro_param
                @state.following.pop
                if @state.backtracking == 0
                  stream_macro_param.add(arg.tree)
                end
                list_of_arg << arg.tree

                # at line 110:92: ( WS )*
                loop do  #loop 9
                  alt_9 = 2
                  look_9_0 = @input.peek(1)

                  if (look_9_0 == WS) 
                    alt_9 = 1

                  end
                  case alt_9
                  when 1
                    # at line 0:0: WS
                    __WS26__ = match(WS, TOKENS_FOLLOWING_WS_IN_macro_define_688) 
                    if @state.backtracking == 0
                      stream_WS.add(__WS26__)
                    end

                  else
                    break #loop 9
                  end
                end

              else
                break #loop 10
              end
            end

          end
          __RPAREN27__ = match(RPAREN, TOKENS_FOLLOWING_RPAREN_IN_macro_define_695) 
          if @state.backtracking == 0
            stream_RPAREN.add(__RPAREN27__)
          end
          # at line 110:108: ( macro_text )?
          alt_12 = 2
          look_12_0 = @input.peek(1)

          if (look_12_0 == TEXT_END || look_12_0.between?(IDENTIFIER, COMMA) || look_12_0.between?(DECIMAL_LITERAL, STRING_LITERAL) || look_12_0 == SIZEOF || look_12_0.between?(HEX_LITERAL, COPERATOR)) 
            alt_12 = 1
          end
          case alt_12
          when 1
            # at line 0:0: macro_text
            @state.following.push(TOKENS_FOLLOWING_macro_text_IN_macro_define_698)
            macro_text28 = macro_text
            @state.following.pop
            if @state.backtracking == 0
              stream_macro_text.add(macro_text28.tree)
            end

          end
          # AST Rewrite
          # elements: arg, macro_text, mac
          # token labels: mac
          # rule labels: return_value
          # token list labels: 
          # rule list labels: arg
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_mac = token_stream("token mac", mac)
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")
            stream_arg = subtree_stream("token arg", list_of_arg)
            root_0 = @adaptor.create_flat_list!
            # 110:120: -> ^( MAC_FUNCTION $mac ( $arg)+ ( macro_text )? )
            # at line 110:123: ^( MAC_FUNCTION $mac ( $arg)+ ( macro_text )? )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(@adaptor.create_from_type!(MAC_FUNCTION, "MAC_FUNCTION"), root_1)

            @adaptor.add_child(root_1, stream_mac.next_node)
            # at line 110:144: ( $arg)+
            unless stream_arg.has_next?
              raise ANTLR3::RewriteEarlyExit
            end

            while stream_arg.has_next?
              @adaptor.add_child(root_1, stream_arg.next_tree)

            end

            stream_arg.reset
            # at line 110:150: ( macro_text )?
            if stream_macro_text.has_next?
              @adaptor.add_child(root_1, stream_macro_text.next_tree)

            end

            stream_macro_text.reset();

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 3
          # at line 111:8: DEFINE IDENTIFIER ( macro_text )?
          __DEFINE29__ = match(DEFINE, TOKENS_FOLLOWING_DEFINE_IN_macro_define_726) 
          if @state.backtracking == 0
            stream_DEFINE.add(__DEFINE29__)
          end
          __IDENTIFIER30__ = match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_macro_define_732) 
          if @state.backtracking == 0
            stream_IDENTIFIER.add(__IDENTIFIER30__)
          end
          # at line 111:31: ( macro_text )?
          alt_13 = 2
          look_13_0 = @input.peek(1)

          if (look_13_0 == TEXT_END || look_13_0.between?(IDENTIFIER, COMMA) || look_13_0.between?(DECIMAL_LITERAL, STRING_LITERAL) || look_13_0 == SIZEOF || look_13_0.between?(HEX_LITERAL, COPERATOR)) 
            alt_13 = 1
          end
          case alt_13
          when 1
            # at line 0:0: macro_text
            @state.following.push(TOKENS_FOLLOWING_macro_text_IN_macro_define_735)
            macro_text31 = macro_text
            @state.following.pop
            if @state.backtracking == 0
              stream_macro_text.add(macro_text31.tree)
            end

          end
          # AST Rewrite
          # elements: macro_text, IDENTIFIER
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

            root_0 = @adaptor.create_flat_list!
            # 111:44: -> ^( MAC_OBJECT IDENTIFIER ( macro_text )? )
            # at line 111:47: ^( MAC_OBJECT IDENTIFIER ( macro_text )? )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(@adaptor.create_from_type!(MAC_OBJECT, "MAC_OBJECT"), root_1)

            @adaptor.add_child(root_1, stream_IDENTIFIER.next_node)
            # at line 111:71: ( macro_text )?
            if stream_macro_text.has_next?
              @adaptor.add_child(root_1, stream_macro_text.next_tree)

            end

            stream_macro_text.reset();

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 4)
        memoize(__method__, macro_define_start_index, success) if @state.backtracking > 0

      end
      
      return return_value
    end

    MacroParamReturnValue = define_return_scope 

    # parser rule macro_param
    # 
    # (in samples/CPP.g)
    # 114:1: macro_param : ( IDENTIFIER ELLIPSIS -> ^( ELLIPSIS IDENTIFIER ) | ELLIPSIS | IDENTIFIER );
    def macro_param
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 5)
      return_value = MacroParamReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      macro_param_start_index = @input.index

      root_0 = nil
      __IDENTIFIER32__ = nil
      __ELLIPSIS33__ = nil
      __ELLIPSIS34__ = nil
      __IDENTIFIER35__ = nil

      tree_for_IDENTIFIER32 = nil
      tree_for_ELLIPSIS33 = nil
      tree_for_ELLIPSIS34 = nil
      tree_for_IDENTIFIER35 = nil
      stream_ELLIPSIS = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token ELLIPSIS")
      stream_IDENTIFIER = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token IDENTIFIER")

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return return_value
        end
        # at line 115:5: ( IDENTIFIER ELLIPSIS -> ^( ELLIPSIS IDENTIFIER ) | ELLIPSIS | IDENTIFIER )
        alt_15 = 3
        look_15_0 = @input.peek(1)

        if (look_15_0 == IDENTIFIER) 
          look_15_1 = @input.peek(2)

          if (look_15_1 == ELLIPSIS) 
            alt_15 = 1
          elsif (look_15_1 == EOF || look_15_1.between?(WS, COMMA)) 
            alt_15 = 3
          else
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
          nvae = NoViableAlternative("", 15, 1)
            raise nvae
          end
        elsif (look_15_0 == ELLIPSIS) 
          alt_15 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 15, 0)
          raise nvae
        end
        case alt_15
        when 1
          # at line 115:13: IDENTIFIER ELLIPSIS
          __IDENTIFIER32__ = match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_macro_param_771) 
          if @state.backtracking == 0
            stream_IDENTIFIER.add(__IDENTIFIER32__)
          end
          __ELLIPSIS33__ = match(ELLIPSIS, TOKENS_FOLLOWING_ELLIPSIS_IN_macro_param_773) 
          if @state.backtracking == 0
            stream_ELLIPSIS.add(__ELLIPSIS33__)
          end
          # AST Rewrite
          # elements: IDENTIFIER, ELLIPSIS
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

            root_0 = @adaptor.create_flat_list!
            # 115:33: -> ^( ELLIPSIS IDENTIFIER )
            # at line 115:35: ^( ELLIPSIS IDENTIFIER )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(stream_ELLIPSIS.next_node, root_1)

            @adaptor.add_child(root_1, stream_IDENTIFIER.next_node)

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 2
          root_0 = @adaptor.create_flat_list!


          # at line 116:13: ELLIPSIS
          __ELLIPSIS34__ = match(ELLIPSIS, TOKENS_FOLLOWING_ELLIPSIS_IN_macro_param_794)
          if @state.backtracking == 0

            tree_for_ELLIPSIS34 = @adaptor.create_with_payload!(__ELLIPSIS34__)
            @adaptor.add_child(root_0, tree_for_ELLIPSIS34)

          end

        when 3
          root_0 = @adaptor.create_flat_list!


          # at line 117:13: IDENTIFIER
          __IDENTIFIER35__ = match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_macro_param_808)
          if @state.backtracking == 0

            tree_for_IDENTIFIER35 = @adaptor.create_with_payload!(__IDENTIFIER35__)
            @adaptor.add_child(root_0, tree_for_IDENTIFIER35)

          end

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 5)
        memoize(__method__, macro_param_start_index, success) if @state.backtracking > 0

      end
      
      return return_value
    end

    MacroExecutionReturnValue = define_return_scope 

    # parser rule macro_execution
    # 
    # (in samples/CPP.g)
    # 120:1: macro_execution : EXEC_MACRO ifexpression -> ^( EXEC_MACRO ifexpression ) ;
    def macro_execution
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 6)
      @Expression_stack.push(ScopeExpression.new)
      return_value = MacroExecutionReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      macro_execution_start_index = @input.index

      root_0 = nil
      __EXEC_MACRO36__ = nil
      ifexpression37 = nil

      tree_for_EXEC_MACRO36 = nil
      stream_EXEC_MACRO = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token EXEC_MACRO")
      stream_ifexpression = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule ifexpression")
      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return return_value
        end
        # at line 122:7: EXEC_MACRO ifexpression
        __EXEC_MACRO36__ = match(EXEC_MACRO, TOKENS_FOLLOWING_EXEC_MACRO_IN_macro_execution_830) 
        if @state.backtracking == 0
          stream_EXEC_MACRO.add(__EXEC_MACRO36__)
        end
        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action
           @Expression_stack[-1].flavor = :exec
          # <-- action
        end
        @state.following.push(TOKENS_FOLLOWING_ifexpression_IN_macro_execution_841)
        ifexpression37 = ifexpression
        @state.following.pop
        if @state.backtracking == 0
          stream_ifexpression.add(ifexpression37.tree)
        end
        # AST Rewrite
        # elements: ifexpression, EXEC_MACRO
        # token labels: 
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 
        if @state.backtracking == 0

          return_value.tree = root_0
          stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

          root_0 = @adaptor.create_flat_list!
          # 123:20: -> ^( EXEC_MACRO ifexpression )
          # at line 123:23: ^( EXEC_MACRO ifexpression )
          root_1 = @adaptor.create_flat_list!
          root_1 = @adaptor.become_root(stream_EXEC_MACRO.next_node, root_1)

          @adaptor.add_child(root_1, stream_ifexpression.next_tree)

          @adaptor.add_child(root_0, root_1)



          return_value.tree = root_0

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 6)
        memoize(__method__, macro_execution_start_index, success) if @state.backtracking > 0
        @Expression_stack.pop

      end
      
      return return_value
    end

    MacroUndefReturnValue = define_return_scope 

    # parser rule macro_undef
    # 
    # (in samples/CPP.g)
    # 126:1: macro_undef : UNDEF mac= IDENTIFIER -> ^( UNDEF IDENTIFIER ) ;
    def macro_undef
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 7)
      return_value = MacroUndefReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      macro_undef_start_index = @input.index

      root_0 = nil
      mac = nil
      __UNDEF38__ = nil

      tree_for_mac = nil
      tree_for_UNDEF38 = nil
      stream_UNDEF = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token UNDEF")
      stream_IDENTIFIER = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token IDENTIFIER")

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return return_value
        end
        # at line 127:7: UNDEF mac= IDENTIFIER
        __UNDEF38__ = match(UNDEF, TOKENS_FOLLOWING_UNDEF_IN_macro_undef_866) 
        if @state.backtracking == 0
          stream_UNDEF.add(__UNDEF38__)
        end
        mac = match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_macro_undef_872) 
        if @state.backtracking == 0
          stream_IDENTIFIER.add(mac)
        end
        # AST Rewrite
        # elements: IDENTIFIER, UNDEF
        # token labels: 
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 
        if @state.backtracking == 0

          return_value.tree = root_0
          stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

          root_0 = @adaptor.create_flat_list!
          # 127:31: -> ^( UNDEF IDENTIFIER )
          # at line 127:34: ^( UNDEF IDENTIFIER )
          root_1 = @adaptor.create_flat_list!
          root_1 = @adaptor.become_root(stream_UNDEF.next_node, root_1)

          @adaptor.add_child(root_1, stream_IDENTIFIER.next_node)

          @adaptor.add_child(root_0, root_1)



          return_value.tree = root_0

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 7)
        memoize(__method__, macro_undef_start_index, success) if @state.backtracking > 0

      end
      
      return return_value
    end

    ConditionalCompilationReturnValue = define_return_scope 

    # parser rule conditional_compilation
    # 
    # (in samples/CPP.g)
    # 130:1: conditional_compilation : t= IF ifexp+= ifexpression ifstmt+= statement ( ELIF ifexp+= ifexpression ifstmt+= statement )* ( ELSE elsestmt= statement )? ENDIF -> ^( IF ( $ifexp $ifstmt)+ ( ELSE $elsestmt)? ) ;
    def conditional_compilation
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 8)
      @Expression_stack.push(ScopeExpression.new)
      return_value = ConditionalCompilationReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      conditional_compilation_start_index = @input.index

      root_0 = nil
      t = nil
      __ELIF39__ = nil
      __ELSE40__ = nil
      __ENDIF41__ = nil
      list_of_ifexp = []
      list_of_ifstmt = []
      elsestmt = nil
      ifexp = nil
      ifstmt = nil
      ifexp = nil
      ifstmt = nil

      tree_for_t = nil
      tree_for_ELIF39 = nil
      tree_for_ELSE40 = nil
      tree_for_ENDIF41 = nil
      stream_ENDIF = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token ENDIF")
      stream_ELIF = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token ELIF")
      stream_IF = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token IF")
      stream_ELSE = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token ELSE")
      stream_statement = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule statement")
      stream_ifexpression = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule ifexpression")
      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return return_value
        end
        # at line 132:7: t= IF ifexp+= ifexpression ifstmt+= statement ( ELIF ifexp+= ifexpression ifstmt+= statement )* ( ELSE elsestmt= statement )? ENDIF
        t = match(IF, TOKENS_FOLLOWING_IF_IN_conditional_compilation_905) 
        if @state.backtracking == 0
          stream_IF.add(t)
        end
        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action
           @Expression_stack[-1].flavor = t.text.to_sym 
          # <-- action
        end
        @state.following.push(TOKENS_FOLLOWING_ifexpression_IN_conditional_compilation_917)
        ifexp = ifexpression
        @state.following.pop
        if @state.backtracking == 0
          stream_ifexpression.add(ifexp.tree)
        end
        list_of_ifexp << ifexp.tree

        @state.following.push(TOKENS_FOLLOWING_statement_IN_conditional_compilation_922)
        ifstmt = statement
        @state.following.pop
        if @state.backtracking == 0
          stream_statement.add(ifstmt.tree)
        end
        list_of_ifstmt << ifstmt.tree

        # at line 134:7: ( ELIF ifexp+= ifexpression ifstmt+= statement )*
        loop do  #loop 16
          alt_16 = 2
          look_16_0 = @input.peek(1)

          if (look_16_0 == ELIF) 
            alt_16 = 1

          end
          case alt_16
          when 1
            # at line 134:8: ELIF ifexp+= ifexpression ifstmt+= statement
            __ELIF39__ = match(ELIF, TOKENS_FOLLOWING_ELIF_IN_conditional_compilation_931) 
            if @state.backtracking == 0
              stream_ELIF.add(__ELIF39__)
            end
            @state.following.push(TOKENS_FOLLOWING_ifexpression_IN_conditional_compilation_938)
            ifexp = ifexpression
            @state.following.pop
            if @state.backtracking == 0
              stream_ifexpression.add(ifexp.tree)
            end
            list_of_ifexp << ifexp.tree

            @state.following.push(TOKENS_FOLLOWING_statement_IN_conditional_compilation_943)
            ifstmt = statement
            @state.following.pop
            if @state.backtracking == 0
              stream_statement.add(ifstmt.tree)
            end
            list_of_ifstmt << ifstmt.tree


          else
            break #loop 16
          end
        end
        # at line 135:7: ( ELSE elsestmt= statement )?
        alt_17 = 2
        look_17_0 = @input.peek(1)

        if (look_17_0 == ELSE) 
          alt_17 = 1
        end
        case alt_17
        when 1
          # at line 135:8: ELSE elsestmt= statement
          __ELSE40__ = match(ELSE, TOKENS_FOLLOWING_ELSE_IN_conditional_compilation_956) 
          if @state.backtracking == 0
            stream_ELSE.add(__ELSE40__)
          end
          @state.following.push(TOKENS_FOLLOWING_statement_IN_conditional_compilation_961)
          elsestmt = statement
          @state.following.pop
          if @state.backtracking == 0
            stream_statement.add(elsestmt.tree)
          end

        end
        __ENDIF41__ = match(ENDIF, TOKENS_FOLLOWING_ENDIF_IN_conditional_compilation_971) 
        if @state.backtracking == 0
          stream_ENDIF.add(__ENDIF41__)
        end
        # AST Rewrite
        # elements: IF, ifstmt, ELSE, ifexp, elsestmt
        # token labels: 
        # rule labels: elsestmt, return_value
        # token list labels: 
        # rule list labels: ifexp, ifstmt
        # wildcard labels: 
        if @state.backtracking == 0

          return_value.tree = root_0
          stream_elsestmt = elsestmt ? subtree_stream("rule elsestmt", elsestmt.tree) : subtree_stream("token elsestmt")
          stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")
          stream_ifexp = subtree_stream("token ifexp", list_of_ifexp)
          stream_ifstmt = subtree_stream("token ifstmt", list_of_ifstmt)
          root_0 = @adaptor.create_flat_list!
          # 137:7: -> ^( IF ( $ifexp $ifstmt)+ ( ELSE $elsestmt)? )
          # at line 137:11: ^( IF ( $ifexp $ifstmt)+ ( ELSE $elsestmt)? )
          root_1 = @adaptor.create_flat_list!
          root_1 = @adaptor.become_root(stream_IF.next_node, root_1)

          # at line 137:16: ( $ifexp $ifstmt)+
          unless stream_ifstmt.has_next? || stream_ifexp.has_next?
            raise ANTLR3::RewriteEarlyExit
          end

          while stream_ifstmt.has_next? || stream_ifexp.has_next?
            @adaptor.add_child(root_1, stream_ifexp.next_tree)
            @adaptor.add_child(root_1, stream_ifstmt.next_tree)

          end

          stream_ifstmt.reset
          stream_ifexp.reset
          # at line 137:34: ( ELSE $elsestmt)?
          if stream_ELSE.has_next? || stream_elsestmt.has_next?
            @adaptor.add_child(root_1, stream_ELSE.next_node)
            @adaptor.add_child(root_1, stream_elsestmt.next_tree)

          end

          stream_ELSE.reset();
          stream_elsestmt.reset();

          @adaptor.add_child(root_0, root_1)



          return_value.tree = root_0

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 8)
        memoize(__method__, conditional_compilation_start_index, success) if @state.backtracking > 0
        @Expression_stack.pop

      end
      
      return return_value
    end

    LineControlReturnValue = define_return_scope 

    # parser rule line_control
    # 
    # (in samples/CPP.g)
    # 140:1: line_control : LINE n= DECIMAL_LITERAL (theFile= STRING_LITERAL )? -> ^( LINE $n ( $theFile)? ) ;
    def line_control
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 9)
      return_value = LineControlReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      line_control_start_index = @input.index

      root_0 = nil
      n = nil
      theFile = nil
      __LINE42__ = nil

      tree_for_n = nil
      tree_for_theFile = nil
      tree_for_LINE42 = nil
      stream_STRING_LITERAL = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token STRING_LITERAL")
      stream_LINE = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token LINE")
      stream_DECIMAL_LITERAL = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token DECIMAL_LITERAL")

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return return_value
        end
        # at line 141:13: LINE n= DECIMAL_LITERAL (theFile= STRING_LITERAL )?
        __LINE42__ = match(LINE, TOKENS_FOLLOWING_LINE_IN_line_control_1025) 
        if @state.backtracking == 0
          stream_LINE.add(__LINE42__)
        end
        n = match(DECIMAL_LITERAL, TOKENS_FOLLOWING_DECIMAL_LITERAL_IN_line_control_1032) 
        if @state.backtracking == 0
          stream_DECIMAL_LITERAL.add(n)
        end
        # at line 141:45: (theFile= STRING_LITERAL )?
        alt_18 = 2
        look_18_0 = @input.peek(1)

        if (look_18_0 == STRING_LITERAL) 
          alt_18 = 1
        end
        case alt_18
        when 1
          # at line 141:46: theFile= STRING_LITERAL
          theFile = match(STRING_LITERAL, TOKENS_FOLLOWING_STRING_LITERAL_IN_line_control_1043) 
          if @state.backtracking == 0
            stream_STRING_LITERAL.add(theFile)
          end

        end
        # AST Rewrite
        # elements: theFile, LINE, n
        # token labels: theFile, n
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 
        if @state.backtracking == 0

          return_value.tree = root_0
          stream_theFile = token_stream("token theFile", theFile)
          stream_n = token_stream("token n", n)
          stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

          root_0 = @adaptor.create_flat_list!
          # 141:72: -> ^( LINE $n ( $theFile)? )
          # at line 141:74: ^( LINE $n ( $theFile)? )
          root_1 = @adaptor.create_flat_list!
          root_1 = @adaptor.become_root(stream_LINE.next_node, root_1)

          @adaptor.add_child(root_1, stream_n.next_node)
          # at line 141:84: ( $theFile)?
          if stream_theFile.has_next?
            @adaptor.add_child(root_1, stream_theFile.next_node)

          end

          stream_theFile.reset();

          @adaptor.add_child(root_0, root_1)



          return_value.tree = root_0

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 9)
        memoize(__method__, line_control_start_index, success) if @state.backtracking > 0

      end
      
      return return_value
    end

    DiagnosticsReturnValue = define_return_scope 

    # parser rule diagnostics
    # 
    # (in samples/CPP.g)
    # 144:1: diagnostics : ( WARNING -> ^( WARNING ) | ERROR -> ^( ERROR ) | PRAGMA -> ^( PRAGMA ) );
    def diagnostics
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 10)
      return_value = DiagnosticsReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      diagnostics_start_index = @input.index

      root_0 = nil
      __WARNING43__ = nil
      __ERROR44__ = nil
      __PRAGMA45__ = nil

      tree_for_WARNING43 = nil
      tree_for_ERROR44 = nil
      tree_for_PRAGMA45 = nil
      stream_ERROR = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token ERROR")
      stream_WARNING = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token WARNING")
      stream_PRAGMA = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token PRAGMA")

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return return_value
        end
        # at line 145:5: ( WARNING -> ^( WARNING ) | ERROR -> ^( ERROR ) | PRAGMA -> ^( PRAGMA ) )
        alt_19 = 3
        case look_19 = @input.peek(1)
        when WARNING then alt_19 = 1
        when ERROR then alt_19 = 2
        when PRAGMA then alt_19 = 3
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          nvae = NoViableAlternative("", 19, 0)
          raise nvae
        end
        case alt_19
        when 1
          # at line 145:13: WARNING
          __WARNING43__ = match(WARNING, TOKENS_FOLLOWING_WARNING_IN_diagnostics_1084) 
          if @state.backtracking == 0
            stream_WARNING.add(__WARNING43__)
          end
          # AST Rewrite
          # elements: WARNING
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

            root_0 = @adaptor.create_flat_list!
            # 145:21: -> ^( WARNING )
            # at line 145:24: ^( WARNING )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(stream_WARNING.next_node, root_1)

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 2
          # at line 146:13: ERROR
          __ERROR44__ = match(ERROR, TOKENS_FOLLOWING_ERROR_IN_diagnostics_1104) 
          if @state.backtracking == 0
            stream_ERROR.add(__ERROR44__)
          end
          # AST Rewrite
          # elements: ERROR
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

            root_0 = @adaptor.create_flat_list!
            # 146:21: -> ^( ERROR )
            # at line 146:24: ^( ERROR )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(stream_ERROR.next_node, root_1)

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 3
          # at line 147:13: PRAGMA
          __PRAGMA45__ = match(PRAGMA, TOKENS_FOLLOWING_PRAGMA_IN_diagnostics_1126) 
          if @state.backtracking == 0
            stream_PRAGMA.add(__PRAGMA45__)
          end
          # AST Rewrite
          # elements: PRAGMA
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

            root_0 = @adaptor.create_flat_list!
            # 147:21: -> ^( PRAGMA )
            # at line 147:24: ^( PRAGMA )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(stream_PRAGMA.next_node, root_1)

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 10)
        memoize(__method__, diagnostics_start_index, success) if @state.backtracking > 0

      end
      
      return return_value
    end

    TextLineReturnValue = define_return_scope 

    # parser rule text_line
    # 
    # (in samples/CPP.g)
    # 150:1: text_line : ( source_text )+ -> ^( TEXT_LINE ( source_text )+ ) ;
    def text_line
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 11)
      return_value = TextLineReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      text_line_start_index = @input.index

      root_0 = nil
      source_text46 = nil

      stream_source_text = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule source_text")
      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return return_value
        end
        # at line 151:7: ( source_text )+
        # at file 151:7: ( source_text )+
        match_count_20 = 0
        loop do
          alt_20 = 2
          look_20_0 = @input.peek(1)

          if (look_20_0 == TEXT_END || look_20_0.between?(IDENTIFIER, COMMA) || look_20_0.between?(DECIMAL_LITERAL, STRING_LITERAL) || look_20_0 == SIZEOF || look_20_0.between?(HEX_LITERAL, COPERATOR)) 
            alt_20 = 1

          end
          case alt_20
          when 1
            # at line 0:0: source_text
            @state.following.push(TOKENS_FOLLOWING_source_text_IN_text_line_1150)
            source_text46 = source_text
            @state.following.pop
            if @state.backtracking == 0
              stream_source_text.add(source_text46.tree)
            end

          else
            match_count_20 > 0 and break
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

            eee = EarlyExit(20)


            raise eee
          end
          match_count_20 += 1
        end

        # AST Rewrite
        # elements: source_text
        # token labels: 
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 
        if @state.backtracking == 0

          return_value.tree = root_0
          stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

          root_0 = @adaptor.create_flat_list!
          # 151:24: -> ^( TEXT_LINE ( source_text )+ )
          # at line 151:27: ^( TEXT_LINE ( source_text )+ )
          root_1 = @adaptor.create_flat_list!
          root_1 = @adaptor.become_root(@adaptor.create_from_type!(TEXT_LINE, "TEXT_LINE"), root_1)

          # at line 151:39: ( source_text )+
          unless stream_source_text.has_next?
            raise ANTLR3::RewriteEarlyExit
          end

          while stream_source_text.has_next?
            @adaptor.add_child(root_1, stream_source_text.next_tree)

          end

          stream_source_text.reset

          @adaptor.add_child(root_0, root_1)



          return_value.tree = root_0

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 11)
        memoize(__method__, text_line_start_index, success) if @state.backtracking > 0

      end
      
      return return_value
    end

    StatementReturnValue = define_return_scope 

    # parser rule statement
    # 
    # (in samples/CPP.g)
    # 155:1: statement : ( proc_line )+ ;
    def statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 12)
      return_value = StatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      statement_start_index = @input.index

      root_0 = nil
      proc_line47 = nil


      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return return_value
        end
        root_0 = @adaptor.create_flat_list!


        # at line 156:7: ( proc_line )+
        # at file 156:7: ( proc_line )+
        match_count_21 = 0
        loop do
          alt_21 = 2
          look_21_0 = @input.peek(1)

          if (look_21_0 == IF || look_21_0.between?(WARNING, PRAGMA) || look_21_0 == TEXT_END || look_21_0 == EXEC_MACRO || look_21_0.between?(LINE, UNDEF) || look_21_0.between?(DIRECTIVE, COMMA) || look_21_0.between?(DECIMAL_LITERAL, STRING_LITERAL) || look_21_0 == SIZEOF || look_21_0.between?(HEX_LITERAL, COPERATOR)) 
            alt_21 = 1

          end
          case alt_21
          when 1
            # at line 0:0: proc_line
            @state.following.push(TOKENS_FOLLOWING_proc_line_IN_statement_1182)
            proc_line47 = proc_line
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, proc_line47.tree)
            end

          else
            match_count_21 > 0 and break
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

            eee = EarlyExit(21)


            raise eee
          end
          match_count_21 += 1
        end

        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 12)
        memoize(__method__, statement_start_index, success) if @state.backtracking > 0

      end
      
      return return_value
    end

    TypeNameReturnValue = define_return_scope 

    # parser rule type_name
    # 
    # (in samples/CPP.g)
    # 159:1: type_name : IDENTIFIER ;
    def type_name
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 13)
      return_value = TypeNameReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      type_name_start_index = @input.index

      root_0 = nil
      __IDENTIFIER48__ = nil

      tree_for_IDENTIFIER48 = nil

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return return_value
        end
        root_0 = @adaptor.create_flat_list!


        # at line 160:7: IDENTIFIER
        __IDENTIFIER48__ = match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_type_name_1200)
        if @state.backtracking == 0

          tree_for_IDENTIFIER48 = @adaptor.create_with_payload!(__IDENTIFIER48__)
          @adaptor.add_child(root_0, tree_for_IDENTIFIER48)

        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 13)
        memoize(__method__, type_name_start_index, success) if @state.backtracking > 0

      end
      
      return return_value
    end

    IfexpressionReturnValue = define_return_scope 

    # parser rule ifexpression
    # 
    # (in samples/CPP.g)
    # 163:1: ifexpression : assignment_expression -> ^( assignment_expression ) ;
    def ifexpression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 14)
      return_value = IfexpressionReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      ifexpression_start_index = @input.index

      root_0 = nil
      assignment_expression49 = nil

      stream_assignment_expression = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule assignment_expression")# - - - - @init action - - - -

        ntype =
          case (@Expression_stack[-1].flavor rescue nil)
          when :ifndef then EXPR_NDEF
          when :ifdef  then EXPR_DEF
          else EXPR
          end


      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return return_value
        end
        # at line 172:7: assignment_expression
        @state.following.push(TOKENS_FOLLOWING_assignment_expression_IN_ifexpression_1222)
        assignment_expression49 = assignment_expression
        @state.following.pop
        if @state.backtracking == 0
          stream_assignment_expression.add(assignment_expression49.tree)
        end
        # AST Rewrite
        # elements: assignment_expression
        # token labels: 
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 
        if @state.backtracking == 0

          return_value.tree = root_0
          stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

          root_0 = @adaptor.create_flat_list!
          # 172:29: -> ^( assignment_expression )
          # at line 172:32: ^( assignment_expression )
          root_1 = @adaptor.create_flat_list!
          root_1 = @adaptor.become_root(create_token(ntype), root_1)

          @adaptor.add_child(root_1, stream_assignment_expression.next_tree)

          @adaptor.add_child(root_0, root_1)



          return_value.tree = root_0

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 14)
        memoize(__method__, ifexpression_start_index, success) if @state.backtracking > 0

      end
      
      return return_value
    end

    AssignmentExpressionReturnValue = define_return_scope 

    # parser rule assignment_expression
    # 
    # (in samples/CPP.g)
    # 175:1: assignment_expression : conditional_expression ( ( ASSIGNEQUAL | TIMESEQUAL | DIVIDEEQUAL | MODEQUAL | PLUSEQUAL | MINUSEQUAL | SHIFTLEFTEQUAL | SHIFTRIGHTEQUAL | BITWISEANDEQUAL | BITWISEXOREQUAL | BITWISEOREQUAL ) assignment_expression )? ;
    def assignment_expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 15)
      return_value = AssignmentExpressionReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      assignment_expression_start_index = @input.index

      root_0 = nil
      __ASSIGNEQUAL51__ = nil
      __TIMESEQUAL52__ = nil
      __DIVIDEEQUAL53__ = nil
      __MODEQUAL54__ = nil
      __PLUSEQUAL55__ = nil
      __MINUSEQUAL56__ = nil
      __SHIFTLEFTEQUAL57__ = nil
      __SHIFTRIGHTEQUAL58__ = nil
      __BITWISEANDEQUAL59__ = nil
      __BITWISEXOREQUAL60__ = nil
      __BITWISEOREQUAL61__ = nil
      conditional_expression50 = nil
      assignment_expression62 = nil

      tree_for_ASSIGNEQUAL51 = nil
      tree_for_TIMESEQUAL52 = nil
      tree_for_DIVIDEEQUAL53 = nil
      tree_for_MODEQUAL54 = nil
      tree_for_PLUSEQUAL55 = nil
      tree_for_MINUSEQUAL56 = nil
      tree_for_SHIFTLEFTEQUAL57 = nil
      tree_for_SHIFTRIGHTEQUAL58 = nil
      tree_for_BITWISEANDEQUAL59 = nil
      tree_for_BITWISEXOREQUAL60 = nil
      tree_for_BITWISEOREQUAL61 = nil

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return return_value
        end
        root_0 = @adaptor.create_flat_list!


        # at line 176:7: conditional_expression ( ( ASSIGNEQUAL | TIMESEQUAL | DIVIDEEQUAL | MODEQUAL | PLUSEQUAL | MINUSEQUAL | SHIFTLEFTEQUAL | SHIFTRIGHTEQUAL | BITWISEANDEQUAL | BITWISEXOREQUAL | BITWISEOREQUAL ) assignment_expression )?
        @state.following.push(TOKENS_FOLLOWING_conditional_expression_IN_assignment_expression_1247)
        conditional_expression50 = conditional_expression
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, conditional_expression50.tree)
        end
        # at line 177:7: ( ( ASSIGNEQUAL | TIMESEQUAL | DIVIDEEQUAL | MODEQUAL | PLUSEQUAL | MINUSEQUAL | SHIFTLEFTEQUAL | SHIFTRIGHTEQUAL | BITWISEANDEQUAL | BITWISEXOREQUAL | BITWISEOREQUAL ) assignment_expression )?
        alt_23 = 2
        look_23_0 = @input.peek(1)

        if (look_23_0.between?(ASSIGNEQUAL, BITWISEOREQUAL)) 
          alt_23 = 1
        end
        case alt_23
        when 1
          # at line 177:9: ( ASSIGNEQUAL | TIMESEQUAL | DIVIDEEQUAL | MODEQUAL | PLUSEQUAL | MINUSEQUAL | SHIFTLEFTEQUAL | SHIFTRIGHTEQUAL | BITWISEANDEQUAL | BITWISEXOREQUAL | BITWISEOREQUAL ) assignment_expression
          # at line 177:9: ( ASSIGNEQUAL | TIMESEQUAL | DIVIDEEQUAL | MODEQUAL | PLUSEQUAL | MINUSEQUAL | SHIFTLEFTEQUAL | SHIFTRIGHTEQUAL | BITWISEANDEQUAL | BITWISEXOREQUAL | BITWISEOREQUAL )
          alt_22 = 11
          case look_22 = @input.peek(1)
          when ASSIGNEQUAL then alt_22 = 1
          when TIMESEQUAL then alt_22 = 2
          when DIVIDEEQUAL then alt_22 = 3
          when MODEQUAL then alt_22 = 4
          when PLUSEQUAL then alt_22 = 5
          when MINUSEQUAL then alt_22 = 6
          when SHIFTLEFTEQUAL then alt_22 = 7
          when SHIFTRIGHTEQUAL then alt_22 = 8
          when BITWISEANDEQUAL then alt_22 = 9
          when BITWISEXOREQUAL then alt_22 = 10
          when BITWISEOREQUAL then alt_22 = 11
          else
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

            nvae = NoViableAlternative("", 22, 0)
            raise nvae
          end
          case alt_22
          when 1
            # at line 177:11: ASSIGNEQUAL
            __ASSIGNEQUAL51__ = match(ASSIGNEQUAL, TOKENS_FOLLOWING_ASSIGNEQUAL_IN_assignment_expression_1259)
            if @state.backtracking == 0

              tree_for_ASSIGNEQUAL51 = @adaptor.create_with_payload!(__ASSIGNEQUAL51__)
              root_0 = @adaptor.become_root(tree_for_ASSIGNEQUAL51, root_0)

            end

          when 2
            # at line 177:30: TIMESEQUAL
            __TIMESEQUAL52__ = match(TIMESEQUAL, TOKENS_FOLLOWING_TIMESEQUAL_IN_assignment_expression_1268)
            if @state.backtracking == 0

              tree_for_TIMESEQUAL52 = @adaptor.create_with_payload!(__TIMESEQUAL52__)
              root_0 = @adaptor.become_root(tree_for_TIMESEQUAL52, root_0)

            end

          when 3
            # at line 177:51: DIVIDEEQUAL
            __DIVIDEEQUAL53__ = match(DIVIDEEQUAL, TOKENS_FOLLOWING_DIVIDEEQUAL_IN_assignment_expression_1280)
            if @state.backtracking == 0

              tree_for_DIVIDEEQUAL53 = @adaptor.create_with_payload!(__DIVIDEEQUAL53__)
              root_0 = @adaptor.become_root(tree_for_DIVIDEEQUAL53, root_0)

            end

          when 4
            # at line 178:11: MODEQUAL
            __MODEQUAL54__ = match(MODEQUAL, TOKENS_FOLLOWING_MODEQUAL_IN_assignment_expression_1299)
            if @state.backtracking == 0

              tree_for_MODEQUAL54 = @adaptor.create_with_payload!(__MODEQUAL54__)
              root_0 = @adaptor.become_root(tree_for_MODEQUAL54, root_0)

            end

          when 5
            # at line 178:30: PLUSEQUAL
            __PLUSEQUAL55__ = match(PLUSEQUAL, TOKENS_FOLLOWING_PLUSEQUAL_IN_assignment_expression_1311)
            if @state.backtracking == 0

              tree_for_PLUSEQUAL55 = @adaptor.create_with_payload!(__PLUSEQUAL55__)
              root_0 = @adaptor.become_root(tree_for_PLUSEQUAL55, root_0)

            end

          when 6
            # at line 178:51: MINUSEQUAL
            __MINUSEQUAL56__ = match(MINUSEQUAL, TOKENS_FOLLOWING_MINUSEQUAL_IN_assignment_expression_1324)
            if @state.backtracking == 0

              tree_for_MINUSEQUAL56 = @adaptor.create_with_payload!(__MINUSEQUAL56__)
              root_0 = @adaptor.become_root(tree_for_MINUSEQUAL56, root_0)

            end

          when 7
            # at line 179:11: SHIFTLEFTEQUAL
            __SHIFTLEFTEQUAL57__ = match(SHIFTLEFTEQUAL, TOKENS_FOLLOWING_SHIFTLEFTEQUAL_IN_assignment_expression_1344)
            if @state.backtracking == 0

              tree_for_SHIFTLEFTEQUAL57 = @adaptor.create_with_payload!(__SHIFTLEFTEQUAL57__)
              root_0 = @adaptor.become_root(tree_for_SHIFTLEFTEQUAL57, root_0)

            end

          when 8
            # at line 179:30: SHIFTRIGHTEQUAL
            __SHIFTRIGHTEQUAL58__ = match(SHIFTRIGHTEQUAL, TOKENS_FOLLOWING_SHIFTRIGHTEQUAL_IN_assignment_expression_1350)
            if @state.backtracking == 0

              tree_for_SHIFTRIGHTEQUAL58 = @adaptor.create_with_payload!(__SHIFTRIGHTEQUAL58__)
              root_0 = @adaptor.become_root(tree_for_SHIFTRIGHTEQUAL58, root_0)

            end

          when 9
            # at line 179:51: BITWISEANDEQUAL
            __BITWISEANDEQUAL59__ = match(BITWISEANDEQUAL, TOKENS_FOLLOWING_BITWISEANDEQUAL_IN_assignment_expression_1357)
            if @state.backtracking == 0

              tree_for_BITWISEANDEQUAL59 = @adaptor.create_with_payload!(__BITWISEANDEQUAL59__)
              root_0 = @adaptor.become_root(tree_for_BITWISEANDEQUAL59, root_0)

            end

          when 10
            # at line 180:11: BITWISEXOREQUAL
            __BITWISEXOREQUAL60__ = match(BITWISEXOREQUAL, TOKENS_FOLLOWING_BITWISEXOREQUAL_IN_assignment_expression_1372)
            if @state.backtracking == 0

              tree_for_BITWISEXOREQUAL60 = @adaptor.create_with_payload!(__BITWISEXOREQUAL60__)
              root_0 = @adaptor.become_root(tree_for_BITWISEXOREQUAL60, root_0)

            end

          when 11
            # at line 180:30: BITWISEOREQUAL
            __BITWISEOREQUAL61__ = match(BITWISEOREQUAL, TOKENS_FOLLOWING_BITWISEOREQUAL_IN_assignment_expression_1377)
            if @state.backtracking == 0

              tree_for_BITWISEOREQUAL61 = @adaptor.create_with_payload!(__BITWISEOREQUAL61__)
              root_0 = @adaptor.become_root(tree_for_BITWISEOREQUAL61, root_0)

            end

          end
          @state.following.push(TOKENS_FOLLOWING_assignment_expression_IN_assignment_expression_1390)
          assignment_expression62 = assignment_expression
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, assignment_expression62.tree)
          end

        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 15)
        memoize(__method__, assignment_expression_start_index, success) if @state.backtracking > 0

      end
      
      return return_value
    end

    ConditionalExpressionReturnValue = define_return_scope 

    # parser rule conditional_expression
    # 
    # (in samples/CPP.g)
    # 185:1: conditional_expression : logical_or_expression ( QUESTIONMARK assignment_expression COLON conditional_expression )? ;
    def conditional_expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 16)
      return_value = ConditionalExpressionReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      conditional_expression_start_index = @input.index

      root_0 = nil
      __QUESTIONMARK64__ = nil
      __COLON66__ = nil
      logical_or_expression63 = nil
      assignment_expression65 = nil
      conditional_expression67 = nil

      tree_for_QUESTIONMARK64 = nil
      tree_for_COLON66 = nil

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return return_value
        end
        root_0 = @adaptor.create_flat_list!


        # at line 186:13: logical_or_expression ( QUESTIONMARK assignment_expression COLON conditional_expression )?
        @state.following.push(TOKENS_FOLLOWING_logical_or_expression_IN_conditional_expression_1422)
        logical_or_expression63 = logical_or_expression
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, logical_or_expression63.tree)
        end
        # at line 187:13: ( QUESTIONMARK assignment_expression COLON conditional_expression )?
        alt_24 = 2
        look_24_0 = @input.peek(1)

        if (look_24_0 == QUESTIONMARK) 
          alt_24 = 1
        end
        case alt_24
        when 1
          # at line 187:15: QUESTIONMARK assignment_expression COLON conditional_expression
          __QUESTIONMARK64__ = match(QUESTIONMARK, TOKENS_FOLLOWING_QUESTIONMARK_IN_conditional_expression_1438)
          if @state.backtracking == 0

            tree_for_QUESTIONMARK64 = @adaptor.create_with_payload!(__QUESTIONMARK64__)
            root_0 = @adaptor.become_root(tree_for_QUESTIONMARK64, root_0)

          end
          @state.following.push(TOKENS_FOLLOWING_assignment_expression_IN_conditional_expression_1441)
          assignment_expression65 = assignment_expression
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, assignment_expression65.tree)
          end
          __COLON66__ = match(COLON, TOKENS_FOLLOWING_COLON_IN_conditional_expression_1443)
          if @state.backtracking == 0

            tree_for_COLON66 = @adaptor.create_with_payload!(__COLON66__)
            @adaptor.add_child(root_0, tree_for_COLON66)

          end
          @state.following.push(TOKENS_FOLLOWING_conditional_expression_IN_conditional_expression_1445)
          conditional_expression67 = conditional_expression
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, conditional_expression67.tree)
          end

        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 16)
        memoize(__method__, conditional_expression_start_index, success) if @state.backtracking > 0

      end
      
      return return_value
    end

    LogicalOrExpressionReturnValue = define_return_scope 

    # parser rule logical_or_expression
    # 
    # (in samples/CPP.g)
    # 190:1: logical_or_expression : logical_and_expression ( OR logical_and_expression )* ;
    def logical_or_expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 17)
      return_value = LogicalOrExpressionReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      logical_or_expression_start_index = @input.index

      root_0 = nil
      __OR69__ = nil
      logical_and_expression68 = nil
      logical_and_expression70 = nil

      tree_for_OR69 = nil

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return return_value
        end
        root_0 = @adaptor.create_flat_list!


        # at line 191:13: logical_and_expression ( OR logical_and_expression )*
        @state.following.push(TOKENS_FOLLOWING_logical_and_expression_IN_logical_or_expression_1471)
        logical_and_expression68 = logical_and_expression
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, logical_and_expression68.tree)
        end
        # at line 191:36: ( OR logical_and_expression )*
        loop do  #loop 25
          alt_25 = 2
          look_25_0 = @input.peek(1)

          if (look_25_0 == OR) 
            alt_25 = 1

          end
          case alt_25
          when 1
            # at line 191:37: OR logical_and_expression
            __OR69__ = match(OR, TOKENS_FOLLOWING_OR_IN_logical_or_expression_1474)
            if @state.backtracking == 0

              tree_for_OR69 = @adaptor.create_with_payload!(__OR69__)
              root_0 = @adaptor.become_root(tree_for_OR69, root_0)

            end
            @state.following.push(TOKENS_FOLLOWING_logical_and_expression_IN_logical_or_expression_1477)
            logical_and_expression70 = logical_and_expression
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, logical_and_expression70.tree)
            end

          else
            break #loop 25
          end
        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 17)
        memoize(__method__, logical_or_expression_start_index, success) if @state.backtracking > 0

      end
      
      return return_value
    end

    LogicalAndExpressionReturnValue = define_return_scope 

    # parser rule logical_and_expression
    # 
    # (in samples/CPP.g)
    # 194:1: logical_and_expression : inclusive_or_expression ( AND inclusive_or_expression )* ;
    def logical_and_expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 18)
      return_value = LogicalAndExpressionReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      logical_and_expression_start_index = @input.index

      root_0 = nil
      __AND72__ = nil
      inclusive_or_expression71 = nil
      inclusive_or_expression73 = nil

      tree_for_AND72 = nil

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return return_value
        end
        root_0 = @adaptor.create_flat_list!


        # at line 195:13: inclusive_or_expression ( AND inclusive_or_expression )*
        @state.following.push(TOKENS_FOLLOWING_inclusive_or_expression_IN_logical_and_expression_1502)
        inclusive_or_expression71 = inclusive_or_expression
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, inclusive_or_expression71.tree)
        end
        # at line 195:37: ( AND inclusive_or_expression )*
        loop do  #loop 26
          alt_26 = 2
          look_26_0 = @input.peek(1)

          if (look_26_0 == AND) 
            alt_26 = 1

          end
          case alt_26
          when 1
            # at line 195:38: AND inclusive_or_expression
            __AND72__ = match(AND, TOKENS_FOLLOWING_AND_IN_logical_and_expression_1505)
            if @state.backtracking == 0

              tree_for_AND72 = @adaptor.create_with_payload!(__AND72__)
              root_0 = @adaptor.become_root(tree_for_AND72, root_0)

            end
            @state.following.push(TOKENS_FOLLOWING_inclusive_or_expression_IN_logical_and_expression_1508)
            inclusive_or_expression73 = inclusive_or_expression
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, inclusive_or_expression73.tree)
            end

          else
            break #loop 26
          end
        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 18)
        memoize(__method__, logical_and_expression_start_index, success) if @state.backtracking > 0

      end
      
      return return_value
    end

    InclusiveOrExpressionReturnValue = define_return_scope 

    # parser rule inclusive_or_expression
    # 
    # (in samples/CPP.g)
    # 198:1: inclusive_or_expression : exclusive_or_expression ( BITWISEOR exclusive_or_expression )* ;
    def inclusive_or_expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 19)
      return_value = InclusiveOrExpressionReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      inclusive_or_expression_start_index = @input.index

      root_0 = nil
      __BITWISEOR75__ = nil
      exclusive_or_expression74 = nil
      exclusive_or_expression76 = nil

      tree_for_BITWISEOR75 = nil

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return return_value
        end
        root_0 = @adaptor.create_flat_list!


        # at line 199:13: exclusive_or_expression ( BITWISEOR exclusive_or_expression )*
        @state.following.push(TOKENS_FOLLOWING_exclusive_or_expression_IN_inclusive_or_expression_1533)
        exclusive_or_expression74 = exclusive_or_expression
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, exclusive_or_expression74.tree)
        end
        # at line 199:37: ( BITWISEOR exclusive_or_expression )*
        loop do  #loop 27
          alt_27 = 2
          look_27_0 = @input.peek(1)

          if (look_27_0 == BITWISEOR) 
            alt_27 = 1

          end
          case alt_27
          when 1
            # at line 199:38: BITWISEOR exclusive_or_expression
            __BITWISEOR75__ = match(BITWISEOR, TOKENS_FOLLOWING_BITWISEOR_IN_inclusive_or_expression_1536)
            if @state.backtracking == 0

              tree_for_BITWISEOR75 = @adaptor.create_with_payload!(__BITWISEOR75__)
              root_0 = @adaptor.become_root(tree_for_BITWISEOR75, root_0)

            end
            @state.following.push(TOKENS_FOLLOWING_exclusive_or_expression_IN_inclusive_or_expression_1539)
            exclusive_or_expression76 = exclusive_or_expression
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, exclusive_or_expression76.tree)
            end

          else
            break #loop 27
          end
        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 19)
        memoize(__method__, inclusive_or_expression_start_index, success) if @state.backtracking > 0

      end
      
      return return_value
    end

    ExclusiveOrExpressionReturnValue = define_return_scope 

    # parser rule exclusive_or_expression
    # 
    # (in samples/CPP.g)
    # 202:1: exclusive_or_expression : and_expression ( BITWISEXOR and_expression )* ;
    def exclusive_or_expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 20)
      return_value = ExclusiveOrExpressionReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      exclusive_or_expression_start_index = @input.index

      root_0 = nil
      __BITWISEXOR78__ = nil
      and_expression77 = nil
      and_expression79 = nil

      tree_for_BITWISEXOR78 = nil

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return return_value
        end
        root_0 = @adaptor.create_flat_list!


        # at line 203:13: and_expression ( BITWISEXOR and_expression )*
        @state.following.push(TOKENS_FOLLOWING_and_expression_IN_exclusive_or_expression_1564)
        and_expression77 = and_expression
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, and_expression77.tree)
        end
        # at line 203:28: ( BITWISEXOR and_expression )*
        loop do  #loop 28
          alt_28 = 2
          look_28_0 = @input.peek(1)

          if (look_28_0 == BITWISEXOR) 
            alt_28 = 1

          end
          case alt_28
          when 1
            # at line 203:29: BITWISEXOR and_expression
            __BITWISEXOR78__ = match(BITWISEXOR, TOKENS_FOLLOWING_BITWISEXOR_IN_exclusive_or_expression_1567)
            if @state.backtracking == 0

              tree_for_BITWISEXOR78 = @adaptor.create_with_payload!(__BITWISEXOR78__)
              root_0 = @adaptor.become_root(tree_for_BITWISEXOR78, root_0)

            end
            @state.following.push(TOKENS_FOLLOWING_and_expression_IN_exclusive_or_expression_1570)
            and_expression79 = and_expression
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, and_expression79.tree)
            end

          else
            break #loop 28
          end
        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 20)
        memoize(__method__, exclusive_or_expression_start_index, success) if @state.backtracking > 0

      end
      
      return return_value
    end

    AndExpressionReturnValue = define_return_scope 

    # parser rule and_expression
    # 
    # (in samples/CPP.g)
    # 206:1: and_expression : equality_expression ( AMPERSAND equality_expression )* ;
    def and_expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 21)
      return_value = AndExpressionReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      and_expression_start_index = @input.index

      root_0 = nil
      __AMPERSAND81__ = nil
      equality_expression80 = nil
      equality_expression82 = nil

      tree_for_AMPERSAND81 = nil

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return return_value
        end
        root_0 = @adaptor.create_flat_list!


        # at line 207:13: equality_expression ( AMPERSAND equality_expression )*
        @state.following.push(TOKENS_FOLLOWING_equality_expression_IN_and_expression_1595)
        equality_expression80 = equality_expression
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, equality_expression80.tree)
        end
        # at line 207:33: ( AMPERSAND equality_expression )*
        loop do  #loop 29
          alt_29 = 2
          look_29_0 = @input.peek(1)

          if (look_29_0 == AMPERSAND) 
            alt_29 = 1

          end
          case alt_29
          when 1
            # at line 207:34: AMPERSAND equality_expression
            __AMPERSAND81__ = match(AMPERSAND, TOKENS_FOLLOWING_AMPERSAND_IN_and_expression_1598)
            if @state.backtracking == 0

              tree_for_AMPERSAND81 = @adaptor.create_with_payload!(__AMPERSAND81__)
              root_0 = @adaptor.become_root(tree_for_AMPERSAND81, root_0)

            end
            @state.following.push(TOKENS_FOLLOWING_equality_expression_IN_and_expression_1601)
            equality_expression82 = equality_expression
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, equality_expression82.tree)
            end

          else
            break #loop 29
          end
        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 21)
        memoize(__method__, and_expression_start_index, success) if @state.backtracking > 0

      end
      
      return return_value
    end

    EqualityExpressionReturnValue = define_return_scope 

    # parser rule equality_expression
    # 
    # (in samples/CPP.g)
    # 210:1: equality_expression : relational_expression ( ( NOTEQUAL | EQUAL ) relational_expression )* ;
    def equality_expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 22)
      return_value = EqualityExpressionReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      equality_expression_start_index = @input.index

      root_0 = nil
      __NOTEQUAL84__ = nil
      __EQUAL85__ = nil
      relational_expression83 = nil
      relational_expression86 = nil

      tree_for_NOTEQUAL84 = nil
      tree_for_EQUAL85 = nil

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return return_value
        end
        root_0 = @adaptor.create_flat_list!


        # at line 211:13: relational_expression ( ( NOTEQUAL | EQUAL ) relational_expression )*
        @state.following.push(TOKENS_FOLLOWING_relational_expression_IN_equality_expression_1626)
        relational_expression83 = relational_expression
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, relational_expression83.tree)
        end
        # at line 211:35: ( ( NOTEQUAL | EQUAL ) relational_expression )*
        loop do  #loop 31
          alt_31 = 2
          look_31_0 = @input.peek(1)

          if (look_31_0.between?(NOTEQUAL, EQUAL)) 
            alt_31 = 1

          end
          case alt_31
          when 1
            # at line 211:36: ( NOTEQUAL | EQUAL ) relational_expression
            # at line 211:36: ( NOTEQUAL | EQUAL )
            alt_30 = 2
            look_30_0 = @input.peek(1)

            if (look_30_0 == NOTEQUAL) 
              alt_30 = 1
            elsif (look_30_0 == EQUAL) 
              alt_30 = 2
            else
              @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
            nvae = NoViableAlternative("", 30, 0)
              raise nvae
            end
            case alt_30
            when 1
              # at line 211:37: NOTEQUAL
              __NOTEQUAL84__ = match(NOTEQUAL, TOKENS_FOLLOWING_NOTEQUAL_IN_equality_expression_1630)
              if @state.backtracking == 0

                tree_for_NOTEQUAL84 = @adaptor.create_with_payload!(__NOTEQUAL84__)
                root_0 = @adaptor.become_root(tree_for_NOTEQUAL84, root_0)

              end

            when 2
              # at line 211:49: EQUAL
              __EQUAL85__ = match(EQUAL, TOKENS_FOLLOWING_EQUAL_IN_equality_expression_1635)
              if @state.backtracking == 0

                tree_for_EQUAL85 = @adaptor.create_with_payload!(__EQUAL85__)
                root_0 = @adaptor.become_root(tree_for_EQUAL85, root_0)

              end

            end
            @state.following.push(TOKENS_FOLLOWING_relational_expression_IN_equality_expression_1639)
            relational_expression86 = relational_expression
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, relational_expression86.tree)
            end

          else
            break #loop 31
          end
        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 22)
        memoize(__method__, equality_expression_start_index, success) if @state.backtracking > 0

      end
      
      return return_value
    end

    RelationalExpressionReturnValue = define_return_scope 

    # parser rule relational_expression
    # 
    # (in samples/CPP.g)
    # 214:1: relational_expression : shift_expression ( ( ( LESSTHAN | GREATERTHAN | LESSTHANOREQUALTO | GREATERTHANOREQUALTO ) shift_expression )* ) ;
    def relational_expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 23)
      return_value = RelationalExpressionReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      relational_expression_start_index = @input.index

      root_0 = nil
      __LESSTHAN88__ = nil
      __GREATERTHAN89__ = nil
      __LESSTHANOREQUALTO90__ = nil
      __GREATERTHANOREQUALTO91__ = nil
      shift_expression87 = nil
      shift_expression92 = nil

      tree_for_LESSTHAN88 = nil
      tree_for_GREATERTHAN89 = nil
      tree_for_LESSTHANOREQUALTO90 = nil
      tree_for_GREATERTHANOREQUALTO91 = nil

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return return_value
        end
        root_0 = @adaptor.create_flat_list!


        # at line 215:13: shift_expression ( ( ( LESSTHAN | GREATERTHAN | LESSTHANOREQUALTO | GREATERTHANOREQUALTO ) shift_expression )* )
        @state.following.push(TOKENS_FOLLOWING_shift_expression_IN_relational_expression_1664)
        shift_expression87 = shift_expression
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, shift_expression87.tree)
        end
        # at line 216:13: ( ( ( LESSTHAN | GREATERTHAN | LESSTHANOREQUALTO | GREATERTHANOREQUALTO ) shift_expression )* )
        # at line 216:21: ( ( LESSTHAN | GREATERTHAN | LESSTHANOREQUALTO | GREATERTHANOREQUALTO ) shift_expression )*
        # at line 216:21: ( ( LESSTHAN | GREATERTHAN | LESSTHANOREQUALTO | GREATERTHANOREQUALTO ) shift_expression )*
        loop do  #loop 33
          alt_33 = 2
          look_33_0 = @input.peek(1)

          if (look_33_0.between?(LESSTHAN, GREATERTHANOREQUALTO)) 
            alt_33 = 1

          end
          case alt_33
          when 1
            # at line 216:29: ( LESSTHAN | GREATERTHAN | LESSTHANOREQUALTO | GREATERTHANOREQUALTO ) shift_expression
            # at line 216:29: ( LESSTHAN | GREATERTHAN | LESSTHANOREQUALTO | GREATERTHANOREQUALTO )
            alt_32 = 4
            case look_32 = @input.peek(1)
            when LESSTHAN then alt_32 = 1
            when GREATERTHAN then alt_32 = 2
            when LESSTHANOREQUALTO then alt_32 = 3
            when GREATERTHANOREQUALTO then alt_32 = 4
            else
              @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

              nvae = NoViableAlternative("", 32, 0)
              raise nvae
            end
            case alt_32
            when 1
              # at line 216:37: LESSTHAN
              __LESSTHAN88__ = match(LESSTHAN, TOKENS_FOLLOWING_LESSTHAN_IN_relational_expression_1702)
              if @state.backtracking == 0

                tree_for_LESSTHAN88 = @adaptor.create_with_payload!(__LESSTHAN88__)
                root_0 = @adaptor.become_root(tree_for_LESSTHAN88, root_0)

              end

            when 2
              # at line 217:25: GREATERTHAN
              __GREATERTHAN89__ = match(GREATERTHAN, TOKENS_FOLLOWING_GREATERTHAN_IN_relational_expression_1729)
              if @state.backtracking == 0

                tree_for_GREATERTHAN89 = @adaptor.create_with_payload!(__GREATERTHAN89__)
                root_0 = @adaptor.become_root(tree_for_GREATERTHAN89, root_0)

              end

            when 3
              # at line 218:25: LESSTHANOREQUALTO
              __LESSTHANOREQUALTO90__ = match(LESSTHANOREQUALTO, TOKENS_FOLLOWING_LESSTHANOREQUALTO_IN_relational_expression_1756)
              if @state.backtracking == 0

                tree_for_LESSTHANOREQUALTO90 = @adaptor.create_with_payload!(__LESSTHANOREQUALTO90__)
                root_0 = @adaptor.become_root(tree_for_LESSTHANOREQUALTO90, root_0)

              end

            when 4
              # at line 219:25: GREATERTHANOREQUALTO
              __GREATERTHANOREQUALTO91__ = match(GREATERTHANOREQUALTO, TOKENS_FOLLOWING_GREATERTHANOREQUALTO_IN_relational_expression_1783)
              if @state.backtracking == 0

                tree_for_GREATERTHANOREQUALTO91 = @adaptor.create_with_payload!(__GREATERTHANOREQUALTO91__)
                root_0 = @adaptor.become_root(tree_for_GREATERTHANOREQUALTO91, root_0)

              end

            end
            @state.following.push(TOKENS_FOLLOWING_shift_expression_IN_relational_expression_1812)
            shift_expression92 = shift_expression
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, shift_expression92.tree)
            end

          else
            break #loop 33
          end
        end

        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 23)
        memoize(__method__, relational_expression_start_index, success) if @state.backtracking > 0

      end
      
      return return_value
    end

    ShiftExpressionReturnValue = define_return_scope 

    # parser rule shift_expression
    # 
    # (in samples/CPP.g)
    # 225:1: shift_expression : additive_expression ( ( SHIFTLEFT | SHIFTRIGHT ) additive_expression )* ;
    def shift_expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 24)
      return_value = ShiftExpressionReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      shift_expression_start_index = @input.index

      root_0 = nil
      __SHIFTLEFT94__ = nil
      __SHIFTRIGHT95__ = nil
      additive_expression93 = nil
      additive_expression96 = nil

      tree_for_SHIFTLEFT94 = nil
      tree_for_SHIFTRIGHT95 = nil

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return return_value
        end
        root_0 = @adaptor.create_flat_list!


        # at line 226:13: additive_expression ( ( SHIFTLEFT | SHIFTRIGHT ) additive_expression )*
        @state.following.push(TOKENS_FOLLOWING_additive_expression_IN_shift_expression_1859)
        additive_expression93 = additive_expression
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, additive_expression93.tree)
        end
        # at line 226:33: ( ( SHIFTLEFT | SHIFTRIGHT ) additive_expression )*
        loop do  #loop 35
          alt_35 = 2
          look_35_0 = @input.peek(1)

          if (look_35_0.between?(SHIFTLEFT, SHIFTRIGHT)) 
            alt_35 = 1

          end
          case alt_35
          when 1
            # at line 226:34: ( SHIFTLEFT | SHIFTRIGHT ) additive_expression
            # at line 226:34: ( SHIFTLEFT | SHIFTRIGHT )
            alt_34 = 2
            look_34_0 = @input.peek(1)

            if (look_34_0 == SHIFTLEFT) 
              alt_34 = 1
            elsif (look_34_0 == SHIFTRIGHT) 
              alt_34 = 2
            else
              @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
            nvae = NoViableAlternative("", 34, 0)
              raise nvae
            end
            case alt_34
            when 1
              # at line 226:35: SHIFTLEFT
              __SHIFTLEFT94__ = match(SHIFTLEFT, TOKENS_FOLLOWING_SHIFTLEFT_IN_shift_expression_1863)
              if @state.backtracking == 0

                tree_for_SHIFTLEFT94 = @adaptor.create_with_payload!(__SHIFTLEFT94__)
                root_0 = @adaptor.become_root(tree_for_SHIFTLEFT94, root_0)

              end

            when 2
              # at line 226:48: SHIFTRIGHT
              __SHIFTRIGHT95__ = match(SHIFTRIGHT, TOKENS_FOLLOWING_SHIFTRIGHT_IN_shift_expression_1868)
              if @state.backtracking == 0

                tree_for_SHIFTRIGHT95 = @adaptor.create_with_payload!(__SHIFTRIGHT95__)
                root_0 = @adaptor.become_root(tree_for_SHIFTRIGHT95, root_0)

              end

            end
            @state.following.push(TOKENS_FOLLOWING_additive_expression_IN_shift_expression_1872)
            additive_expression96 = additive_expression
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, additive_expression96.tree)
            end

          else
            break #loop 35
          end
        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 24)
        memoize(__method__, shift_expression_start_index, success) if @state.backtracking > 0

      end
      
      return return_value
    end

    AdditiveExpressionReturnValue = define_return_scope 

    # parser rule additive_expression
    # 
    # (in samples/CPP.g)
    # 229:1: additive_expression : multiplicative_expression ( ( PLUS | MINUS ) multiplicative_expression )* ;
    def additive_expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 25)
      return_value = AdditiveExpressionReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      additive_expression_start_index = @input.index

      root_0 = nil
      __PLUS98__ = nil
      __MINUS99__ = nil
      multiplicative_expression97 = nil
      multiplicative_expression100 = nil

      tree_for_PLUS98 = nil
      tree_for_MINUS99 = nil

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return return_value
        end
        root_0 = @adaptor.create_flat_list!


        # at line 230:13: multiplicative_expression ( ( PLUS | MINUS ) multiplicative_expression )*
        @state.following.push(TOKENS_FOLLOWING_multiplicative_expression_IN_additive_expression_1897)
        multiplicative_expression97 = multiplicative_expression
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, multiplicative_expression97.tree)
        end
        # at line 230:39: ( ( PLUS | MINUS ) multiplicative_expression )*
        loop do  #loop 37
          alt_37 = 2
          look_37_0 = @input.peek(1)

          if (look_37_0.between?(PLUS, MINUS)) 
            alt_37 = 1

          end
          case alt_37
          when 1
            # at line 230:40: ( PLUS | MINUS ) multiplicative_expression
            # at line 230:40: ( PLUS | MINUS )
            alt_36 = 2
            look_36_0 = @input.peek(1)

            if (look_36_0 == PLUS) 
              alt_36 = 1
            elsif (look_36_0 == MINUS) 
              alt_36 = 2
            else
              @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
            nvae = NoViableAlternative("", 36, 0)
              raise nvae
            end
            case alt_36
            when 1
              # at line 230:41: PLUS
              __PLUS98__ = match(PLUS, TOKENS_FOLLOWING_PLUS_IN_additive_expression_1901)
              if @state.backtracking == 0

                tree_for_PLUS98 = @adaptor.create_with_payload!(__PLUS98__)
                root_0 = @adaptor.become_root(tree_for_PLUS98, root_0)

              end

            when 2
              # at line 230:49: MINUS
              __MINUS99__ = match(MINUS, TOKENS_FOLLOWING_MINUS_IN_additive_expression_1906)
              if @state.backtracking == 0

                tree_for_MINUS99 = @adaptor.create_with_payload!(__MINUS99__)
                root_0 = @adaptor.become_root(tree_for_MINUS99, root_0)

              end

            end
            @state.following.push(TOKENS_FOLLOWING_multiplicative_expression_IN_additive_expression_1910)
            multiplicative_expression100 = multiplicative_expression
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, multiplicative_expression100.tree)
            end

          else
            break #loop 37
          end
        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 25)
        memoize(__method__, additive_expression_start_index, success) if @state.backtracking > 0

      end
      
      return return_value
    end

    MultiplicativeExpressionReturnValue = define_return_scope 

    # parser rule multiplicative_expression
    # 
    # (in samples/CPP.g)
    # 233:1: multiplicative_expression : unary_expression ( ( STAR | DIVIDE | MOD ) unary_expression )* ;
    def multiplicative_expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 26)
      return_value = MultiplicativeExpressionReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      multiplicative_expression_start_index = @input.index

      root_0 = nil
      __STAR102__ = nil
      __DIVIDE103__ = nil
      __MOD104__ = nil
      unary_expression101 = nil
      unary_expression105 = nil

      tree_for_STAR102 = nil
      tree_for_DIVIDE103 = nil
      tree_for_MOD104 = nil

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return return_value
        end
        root_0 = @adaptor.create_flat_list!


        # at line 234:13: unary_expression ( ( STAR | DIVIDE | MOD ) unary_expression )*
        @state.following.push(TOKENS_FOLLOWING_unary_expression_IN_multiplicative_expression_1935)
        unary_expression101 = unary_expression
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, unary_expression101.tree)
        end
        # at line 234:30: ( ( STAR | DIVIDE | MOD ) unary_expression )*
        loop do  #loop 39
          alt_39 = 2
          look_39_0 = @input.peek(1)

          if (look_39_0.between?(STAR, MOD)) 
            alt_39 = 1

          end
          case alt_39
          when 1
            # at line 234:31: ( STAR | DIVIDE | MOD ) unary_expression
            # at line 234:31: ( STAR | DIVIDE | MOD )
            alt_38 = 3
            case look_38 = @input.peek(1)
            when STAR then alt_38 = 1
            when DIVIDE then alt_38 = 2
            when MOD then alt_38 = 3
            else
              @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

              nvae = NoViableAlternative("", 38, 0)
              raise nvae
            end
            case alt_38
            when 1
              # at line 234:32: STAR
              __STAR102__ = match(STAR, TOKENS_FOLLOWING_STAR_IN_multiplicative_expression_1939)
              if @state.backtracking == 0

                tree_for_STAR102 = @adaptor.create_with_payload!(__STAR102__)
                root_0 = @adaptor.become_root(tree_for_STAR102, root_0)

              end

            when 2
              # at line 234:40: DIVIDE
              __DIVIDE103__ = match(DIVIDE, TOKENS_FOLLOWING_DIVIDE_IN_multiplicative_expression_1944)
              if @state.backtracking == 0

                tree_for_DIVIDE103 = @adaptor.create_with_payload!(__DIVIDE103__)
                root_0 = @adaptor.become_root(tree_for_DIVIDE103, root_0)

              end

            when 3
              # at line 234:50: MOD
              __MOD104__ = match(MOD, TOKENS_FOLLOWING_MOD_IN_multiplicative_expression_1949)
              if @state.backtracking == 0

                tree_for_MOD104 = @adaptor.create_with_payload!(__MOD104__)
                root_0 = @adaptor.become_root(tree_for_MOD104, root_0)

              end

            end
            @state.following.push(TOKENS_FOLLOWING_unary_expression_IN_multiplicative_expression_1954)
            unary_expression105 = unary_expression
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, unary_expression105.tree)
            end

          else
            break #loop 39
          end
        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 26)
        memoize(__method__, multiplicative_expression_start_index, success) if @state.backtracking > 0

      end
      
      return return_value
    end

    UnaryExpressionReturnValue = define_return_scope 

    # parser rule unary_expression
    # 
    # (in samples/CPP.g)
    # 237:1: unary_expression : ( PLUSPLUS unary_expression -> ^( PLUSPLUS unary_expression ) | MINUSMINUS unary_expression -> ^( MINUSMINUS unary_expression ) | SIZEOF unary_expression -> ^( SIZEOF unary_expression ) | SIZEOF LPAREN type_name RPAREN -> ^( SIZEOF_TYPE type_name ) | DEFINED type_name -> ^( DEFINED type_name ) | DEFINED LPAREN type_name RPAREN -> ^( DEFINED type_name ) | unary_expression_not_plus_minus );
    def unary_expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 27)
      return_value = UnaryExpressionReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      unary_expression_start_index = @input.index

      root_0 = nil
      __PLUSPLUS106__ = nil
      __MINUSMINUS108__ = nil
      __SIZEOF110__ = nil
      __SIZEOF112__ = nil
      __LPAREN113__ = nil
      __RPAREN115__ = nil
      __DEFINED116__ = nil
      __DEFINED118__ = nil
      __LPAREN119__ = nil
      __RPAREN121__ = nil
      unary_expression107 = nil
      unary_expression109 = nil
      unary_expression111 = nil
      type_name114 = nil
      type_name117 = nil
      type_name120 = nil
      unary_expression_not_plus_minus122 = nil

      tree_for_PLUSPLUS106 = nil
      tree_for_MINUSMINUS108 = nil
      tree_for_SIZEOF110 = nil
      tree_for_SIZEOF112 = nil
      tree_for_LPAREN113 = nil
      tree_for_RPAREN115 = nil
      tree_for_DEFINED116 = nil
      tree_for_DEFINED118 = nil
      tree_for_LPAREN119 = nil
      tree_for_RPAREN121 = nil
      stream_SIZEOF = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token SIZEOF")
      stream_RPAREN = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token RPAREN")
      stream_MINUSMINUS = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token MINUSMINUS")
      stream_PLUSPLUS = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token PLUSPLUS")
      stream_DEFINED = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token DEFINED")
      stream_LPAREN = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token LPAREN")
      stream_unary_expression = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule unary_expression")
      stream_type_name = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule type_name")
      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return return_value
        end
        # at line 238:5: ( PLUSPLUS unary_expression -> ^( PLUSPLUS unary_expression ) | MINUSMINUS unary_expression -> ^( MINUSMINUS unary_expression ) | SIZEOF unary_expression -> ^( SIZEOF unary_expression ) | SIZEOF LPAREN type_name RPAREN -> ^( SIZEOF_TYPE type_name ) | DEFINED type_name -> ^( DEFINED type_name ) | DEFINED LPAREN type_name RPAREN -> ^( DEFINED type_name ) | unary_expression_not_plus_minus )
        alt_40 = 7
        alt_40 = @dfa40.predict(@input)
        case alt_40
        when 1
          # at line 238:13: PLUSPLUS unary_expression
          __PLUSPLUS106__ = match(PLUSPLUS, TOKENS_FOLLOWING_PLUSPLUS_IN_unary_expression_1979) 
          if @state.backtracking == 0
            stream_PLUSPLUS.add(__PLUSPLUS106__)
          end
          @state.following.push(TOKENS_FOLLOWING_unary_expression_IN_unary_expression_1988)
          unary_expression107 = unary_expression
          @state.following.pop
          if @state.backtracking == 0
            stream_unary_expression.add(unary_expression107.tree)
          end
          # AST Rewrite
          # elements: PLUSPLUS, unary_expression
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

            root_0 = @adaptor.create_flat_list!
            # 238:46: -> ^( PLUSPLUS unary_expression )
            # at line 238:49: ^( PLUSPLUS unary_expression )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(stream_PLUSPLUS.next_node, root_1)

            @adaptor.add_child(root_1, stream_unary_expression.next_tree)

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 2
          # at line 239:13: MINUSMINUS unary_expression
          __MINUSMINUS108__ = match(MINUSMINUS, TOKENS_FOLLOWING_MINUSMINUS_IN_unary_expression_2010) 
          if @state.backtracking == 0
            stream_MINUSMINUS.add(__MINUSMINUS108__)
          end
          @state.following.push(TOKENS_FOLLOWING_unary_expression_IN_unary_expression_2017)
          unary_expression109 = unary_expression
          @state.following.pop
          if @state.backtracking == 0
            stream_unary_expression.add(unary_expression109.tree)
          end
          # AST Rewrite
          # elements: unary_expression, MINUSMINUS
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

            root_0 = @adaptor.create_flat_list!
            # 239:46: -> ^( MINUSMINUS unary_expression )
            # at line 239:49: ^( MINUSMINUS unary_expression )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(stream_MINUSMINUS.next_node, root_1)

            @adaptor.add_child(root_1, stream_unary_expression.next_tree)

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 3
          # at line 240:13: SIZEOF unary_expression
          __SIZEOF110__ = match(SIZEOF, TOKENS_FOLLOWING_SIZEOF_IN_unary_expression_2039) 
          if @state.backtracking == 0
            stream_SIZEOF.add(__SIZEOF110__)
          end
          @state.following.push(TOKENS_FOLLOWING_unary_expression_IN_unary_expression_2042)
          unary_expression111 = unary_expression
          @state.following.pop
          if @state.backtracking == 0
            stream_unary_expression.add(unary_expression111.tree)
          end
          # AST Rewrite
          # elements: unary_expression, SIZEOF
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

            root_0 = @adaptor.create_flat_list!
            # 240:38: -> ^( SIZEOF unary_expression )
            # at line 240:41: ^( SIZEOF unary_expression )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(stream_SIZEOF.next_node, root_1)

            @adaptor.add_child(root_1, stream_unary_expression.next_tree)

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 4
          # at line 241:13: SIZEOF LPAREN type_name RPAREN
          __SIZEOF112__ = match(SIZEOF, TOKENS_FOLLOWING_SIZEOF_IN_unary_expression_2064) 
          if @state.backtracking == 0
            stream_SIZEOF.add(__SIZEOF112__)
          end
          __LPAREN113__ = match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_unary_expression_2067) 
          if @state.backtracking == 0
            stream_LPAREN.add(__LPAREN113__)
          end
          @state.following.push(TOKENS_FOLLOWING_type_name_IN_unary_expression_2069)
          type_name114 = type_name
          @state.following.pop
          if @state.backtracking == 0
            stream_type_name.add(type_name114.tree)
          end
          __RPAREN115__ = match(RPAREN, TOKENS_FOLLOWING_RPAREN_IN_unary_expression_2071) 
          if @state.backtracking == 0
            stream_RPAREN.add(__RPAREN115__)
          end
          # AST Rewrite
          # elements: type_name
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

            root_0 = @adaptor.create_flat_list!
            # 241:45: -> ^( SIZEOF_TYPE type_name )
            # at line 241:53: ^( SIZEOF_TYPE type_name )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(@adaptor.create_from_type!(SIZEOF_TYPE, "SIZEOF_TYPE"), root_1)

            @adaptor.add_child(root_1, stream_type_name.next_tree)

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 5
          # at line 242:13: DEFINED type_name
          __DEFINED116__ = match(DEFINED, TOKENS_FOLLOWING_DEFINED_IN_unary_expression_2098) 
          if @state.backtracking == 0
            stream_DEFINED.add(__DEFINED116__)
          end
          @state.following.push(TOKENS_FOLLOWING_type_name_IN_unary_expression_2100)
          type_name117 = type_name
          @state.following.pop
          if @state.backtracking == 0
            stream_type_name.add(type_name117.tree)
          end
          # AST Rewrite
          # elements: DEFINED, type_name
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

            root_0 = @adaptor.create_flat_list!
            # 242:53: -> ^( DEFINED type_name )
            # at line 242:56: ^( DEFINED type_name )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(stream_DEFINED.next_node, root_1)

            @adaptor.add_child(root_1, stream_type_name.next_tree)

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 6
          # at line 243:13: DEFINED LPAREN type_name RPAREN
          __DEFINED118__ = match(DEFINED, TOKENS_FOLLOWING_DEFINED_IN_unary_expression_2144) 
          if @state.backtracking == 0
            stream_DEFINED.add(__DEFINED118__)
          end
          __LPAREN119__ = match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_unary_expression_2146) 
          if @state.backtracking == 0
            stream_LPAREN.add(__LPAREN119__)
          end
          @state.following.push(TOKENS_FOLLOWING_type_name_IN_unary_expression_2148)
          type_name120 = type_name
          @state.following.pop
          if @state.backtracking == 0
            stream_type_name.add(type_name120.tree)
          end
          __RPAREN121__ = match(RPAREN, TOKENS_FOLLOWING_RPAREN_IN_unary_expression_2151) 
          if @state.backtracking == 0
            stream_RPAREN.add(__RPAREN121__)
          end
          # AST Rewrite
          # elements: DEFINED, type_name
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

            root_0 = @adaptor.create_flat_list!
            # 243:53: -> ^( DEFINED type_name )
            # at line 243:55: ^( DEFINED type_name )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(stream_DEFINED.next_node, root_1)

            @adaptor.add_child(root_1, stream_type_name.next_tree)

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 7
          root_0 = @adaptor.create_flat_list!


          # at line 244:13: unary_expression_not_plus_minus
          @state.following.push(TOKENS_FOLLOWING_unary_expression_not_plus_minus_IN_unary_expression_2179)
          unary_expression_not_plus_minus122 = unary_expression_not_plus_minus
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, unary_expression_not_plus_minus122.tree)
          end

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 27)
        memoize(__method__, unary_expression_start_index, success) if @state.backtracking > 0

      end
      
      return return_value
    end

    UnaryExpressionNotPlusMinusReturnValue = define_return_scope 

    # parser rule unary_expression_not_plus_minus
    # 
    # (in samples/CPP.g)
    # 247:1: unary_expression_not_plus_minus : ( NOT unary_expression -> ^( NOT unary_expression ) | TILDE unary_expression -> ^( TILDE unary_expression ) | AMPERSAND unary_expression -> ^( REFERANCE unary_expression ) | STAR unary_expression -> ^( POINTER_AT unary_expression ) | MINUS unary_expression -> ^( UNARY_MINUS unary_expression ) | PLUS unary_expression -> ^( UNARY_PLUS unary_expression ) | LPAREN type_name RPAREN unary_expression -> ^( TYPECAST type_name unary_expression ) | postfix_expression );
    def unary_expression_not_plus_minus
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 28)
      return_value = UnaryExpressionNotPlusMinusReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      unary_expression_not_plus_minus_start_index = @input.index

      root_0 = nil
      __NOT123__ = nil
      __TILDE125__ = nil
      __AMPERSAND127__ = nil
      __STAR129__ = nil
      __MINUS131__ = nil
      __PLUS133__ = nil
      __LPAREN135__ = nil
      __RPAREN137__ = nil
      unary_expression124 = nil
      unary_expression126 = nil
      unary_expression128 = nil
      unary_expression130 = nil
      unary_expression132 = nil
      unary_expression134 = nil
      type_name136 = nil
      unary_expression138 = nil
      postfix_expression139 = nil

      tree_for_NOT123 = nil
      tree_for_TILDE125 = nil
      tree_for_AMPERSAND127 = nil
      tree_for_STAR129 = nil
      tree_for_MINUS131 = nil
      tree_for_PLUS133 = nil
      tree_for_LPAREN135 = nil
      tree_for_RPAREN137 = nil
      stream_AMPERSAND = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token AMPERSAND")
      stream_RPAREN = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token RPAREN")
      stream_PLUS = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token PLUS")
      stream_STAR = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token STAR")
      stream_NOT = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token NOT")
      stream_MINUS = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token MINUS")
      stream_LPAREN = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token LPAREN")
      stream_TILDE = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token TILDE")
      stream_unary_expression = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule unary_expression")
      stream_type_name = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule type_name")
      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return return_value
        end
        # at line 248:5: ( NOT unary_expression -> ^( NOT unary_expression ) | TILDE unary_expression -> ^( TILDE unary_expression ) | AMPERSAND unary_expression -> ^( REFERANCE unary_expression ) | STAR unary_expression -> ^( POINTER_AT unary_expression ) | MINUS unary_expression -> ^( UNARY_MINUS unary_expression ) | PLUS unary_expression -> ^( UNARY_PLUS unary_expression ) | LPAREN type_name RPAREN unary_expression -> ^( TYPECAST type_name unary_expression ) | postfix_expression )
        alt_41 = 8
        alt_41 = @dfa41.predict(@input)
        case alt_41
        when 1
          # at line 248:13: NOT unary_expression
          __NOT123__ = match(NOT, TOKENS_FOLLOWING_NOT_IN_unary_expression_not_plus_minus_2202) 
          if @state.backtracking == 0
            stream_NOT.add(__NOT123__)
          end
          @state.following.push(TOKENS_FOLLOWING_unary_expression_IN_unary_expression_not_plus_minus_2216)
          unary_expression124 = unary_expression
          @state.following.pop
          if @state.backtracking == 0
            stream_unary_expression.add(unary_expression124.tree)
          end
          # AST Rewrite
          # elements: unary_expression, NOT
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

            root_0 = @adaptor.create_flat_list!
            # 248:46: -> ^( NOT unary_expression )
            # at line 248:54: ^( NOT unary_expression )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(stream_NOT.next_node, root_1)

            @adaptor.add_child(root_1, stream_unary_expression.next_tree)

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 2
          # at line 249:13: TILDE unary_expression
          __TILDE125__ = match(TILDE, TOKENS_FOLLOWING_TILDE_IN_unary_expression_not_plus_minus_2245) 
          if @state.backtracking == 0
            stream_TILDE.add(__TILDE125__)
          end
          @state.following.push(TOKENS_FOLLOWING_unary_expression_IN_unary_expression_not_plus_minus_2257)
          unary_expression126 = unary_expression
          @state.following.pop
          if @state.backtracking == 0
            stream_unary_expression.add(unary_expression126.tree)
          end
          # AST Rewrite
          # elements: TILDE, unary_expression
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

            root_0 = @adaptor.create_flat_list!
            # 249:46: -> ^( TILDE unary_expression )
            # at line 249:54: ^( TILDE unary_expression )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(stream_TILDE.next_node, root_1)

            @adaptor.add_child(root_1, stream_unary_expression.next_tree)

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 3
          # at line 250:13: AMPERSAND unary_expression
          __AMPERSAND127__ = match(AMPERSAND, TOKENS_FOLLOWING_AMPERSAND_IN_unary_expression_not_plus_minus_2292) 
          if @state.backtracking == 0
            stream_AMPERSAND.add(__AMPERSAND127__)
          end
          @state.following.push(TOKENS_FOLLOWING_unary_expression_IN_unary_expression_not_plus_minus_2300)
          unary_expression128 = unary_expression
          @state.following.pop
          if @state.backtracking == 0
            stream_unary_expression.add(unary_expression128.tree)
          end
          # AST Rewrite
          # elements: unary_expression
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

            root_0 = @adaptor.create_flat_list!
            # 250:46: -> ^( REFERANCE unary_expression )
            # at line 250:54: ^( REFERANCE unary_expression )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(@adaptor.create_from_type!(REFERANCE, "REFERANCE"), root_1)

            @adaptor.add_child(root_1, stream_unary_expression.next_tree)

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 4
          # at line 251:13: STAR unary_expression
          __STAR129__ = match(STAR, TOKENS_FOLLOWING_STAR_IN_unary_expression_not_plus_minus_2331) 
          if @state.backtracking == 0
            stream_STAR.add(__STAR129__)
          end
          @state.following.push(TOKENS_FOLLOWING_unary_expression_IN_unary_expression_not_plus_minus_2344)
          unary_expression130 = unary_expression
          @state.following.pop
          if @state.backtracking == 0
            stream_unary_expression.add(unary_expression130.tree)
          end
          # AST Rewrite
          # elements: unary_expression
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

            root_0 = @adaptor.create_flat_list!
            # 251:46: -> ^( POINTER_AT unary_expression )
            # at line 251:54: ^( POINTER_AT unary_expression )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(@adaptor.create_from_type!(POINTER_AT, "POINTER_AT"), root_1)

            @adaptor.add_child(root_1, stream_unary_expression.next_tree)

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 5
          # at line 252:13: MINUS unary_expression
          __MINUS131__ = match(MINUS, TOKENS_FOLLOWING_MINUS_IN_unary_expression_not_plus_minus_2374) 
          if @state.backtracking == 0
            stream_MINUS.add(__MINUS131__)
          end
          @state.following.push(TOKENS_FOLLOWING_unary_expression_IN_unary_expression_not_plus_minus_2377)
          unary_expression132 = unary_expression
          @state.following.pop
          if @state.backtracking == 0
            stream_unary_expression.add(unary_expression132.tree)
          end
          # AST Rewrite
          # elements: unary_expression
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

            root_0 = @adaptor.create_flat_list!
            # 252:38: -> ^( UNARY_MINUS unary_expression )
            # at line 252:41: ^( UNARY_MINUS unary_expression )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(@adaptor.create_from_type!(UNARY_MINUS, "UNARY_MINUS"), root_1)

            @adaptor.add_child(root_1, stream_unary_expression.next_tree)

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 6
          # at line 253:13: PLUS unary_expression
          __PLUS133__ = match(PLUS, TOKENS_FOLLOWING_PLUS_IN_unary_expression_not_plus_minus_2400) 
          if @state.backtracking == 0
            stream_PLUS.add(__PLUS133__)
          end
          @state.following.push(TOKENS_FOLLOWING_unary_expression_IN_unary_expression_not_plus_minus_2404)
          unary_expression134 = unary_expression
          @state.following.pop
          if @state.backtracking == 0
            stream_unary_expression.add(unary_expression134.tree)
          end
          # AST Rewrite
          # elements: unary_expression
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

            root_0 = @adaptor.create_flat_list!
            # 253:38: -> ^( UNARY_PLUS unary_expression )
            # at line 253:41: ^( UNARY_PLUS unary_expression )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(@adaptor.create_from_type!(UNARY_PLUS, "UNARY_PLUS"), root_1)

            @adaptor.add_child(root_1, stream_unary_expression.next_tree)

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 7
          # at line 254:13: LPAREN type_name RPAREN unary_expression
          __LPAREN135__ = match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_unary_expression_not_plus_minus_2427) 
          if @state.backtracking == 0
            stream_LPAREN.add(__LPAREN135__)
          end
          @state.following.push(TOKENS_FOLLOWING_type_name_IN_unary_expression_not_plus_minus_2429)
          type_name136 = type_name
          @state.following.pop
          if @state.backtracking == 0
            stream_type_name.add(type_name136.tree)
          end
          __RPAREN137__ = match(RPAREN, TOKENS_FOLLOWING_RPAREN_IN_unary_expression_not_plus_minus_2431) 
          if @state.backtracking == 0
            stream_RPAREN.add(__RPAREN137__)
          end
          @state.following.push(TOKENS_FOLLOWING_unary_expression_IN_unary_expression_not_plus_minus_2434)
          unary_expression138 = unary_expression
          @state.following.pop
          if @state.backtracking == 0
            stream_unary_expression.add(unary_expression138.tree)
          end
          # AST Rewrite
          # elements: unary_expression, type_name
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

            root_0 = @adaptor.create_flat_list!
            # 254:55: -> ^( TYPECAST type_name unary_expression )
            # at line 254:58: ^( TYPECAST type_name unary_expression )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(@adaptor.create_from_type!(TYPECAST, "TYPECAST"), root_1)

            @adaptor.add_child(root_1, stream_type_name.next_tree)
            @adaptor.add_child(root_1, stream_unary_expression.next_tree)

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 8
          root_0 = @adaptor.create_flat_list!


          # at line 255:13: postfix_expression
          @state.following.push(TOKENS_FOLLOWING_postfix_expression_IN_unary_expression_not_plus_minus_2458)
          postfix_expression139 = postfix_expression
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, postfix_expression139.tree)
          end

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 28)
        memoize(__method__, unary_expression_not_plus_minus_start_index, success) if @state.backtracking > 0

      end
      
      return return_value
    end

    PostfixExpressionReturnValue = define_return_scope 

    # parser rule postfix_expression
    # 
    # (in samples/CPP.g)
    # 258:1: postfix_expression : primary_expression (l= LSQUARE assignment_expression RSQUARE | DOT IDENTIFIER | s= STAR IDENTIFIER | POINTERTO IDENTIFIER | p= PLUSPLUS | m= MINUSMINUS )* ;
    def postfix_expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 29)
      return_value = PostfixExpressionReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      postfix_expression_start_index = @input.index

      root_0 = nil
      l = nil
      s = nil
      p = nil
      m = nil
      __RSQUARE142__ = nil
      __DOT143__ = nil
      __IDENTIFIER144__ = nil
      __IDENTIFIER145__ = nil
      __POINTERTO146__ = nil
      __IDENTIFIER147__ = nil
      primary_expression140 = nil
      assignment_expression141 = nil

      tree_for_l = nil
      tree_for_s = nil
      tree_for_p = nil
      tree_for_m = nil
      tree_for_RSQUARE142 = nil
      tree_for_DOT143 = nil
      tree_for_IDENTIFIER144 = nil
      tree_for_IDENTIFIER145 = nil
      tree_for_POINTERTO146 = nil
      tree_for_IDENTIFIER147 = nil

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return return_value
        end
        root_0 = @adaptor.create_flat_list!


        # at line 259:9: primary_expression (l= LSQUARE assignment_expression RSQUARE | DOT IDENTIFIER | s= STAR IDENTIFIER | POINTERTO IDENTIFIER | p= PLUSPLUS | m= MINUSMINUS )*
        @state.following.push(TOKENS_FOLLOWING_primary_expression_IN_postfix_expression_2477)
        primary_expression140 = primary_expression
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, primary_expression140.tree)
        end
        # at line 260:5: (l= LSQUARE assignment_expression RSQUARE | DOT IDENTIFIER | s= STAR IDENTIFIER | POINTERTO IDENTIFIER | p= PLUSPLUS | m= MINUSMINUS )*
        loop do  #loop 42
          alt_42 = 7
          alt_42 = @dfa42.predict(@input)
          case alt_42
          when 1
            # at line 260:9: l= LSQUARE assignment_expression RSQUARE
            l = match(LSQUARE, TOKENS_FOLLOWING_LSQUARE_IN_postfix_expression_2489)
            if @state.backtracking == 0

              tree_for_l = @adaptor.create_with_payload!(l)
              root_0 = @adaptor.become_root(tree_for_l, root_0)

            end
            # syntactic predicate action gate test
            if @state.backtracking == 0
              # --> action
              l.type = INDEX_OP
              # <-- action
            end
            @state.following.push(TOKENS_FOLLOWING_assignment_expression_IN_postfix_expression_2494)
            assignment_expression141 = assignment_expression
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, assignment_expression141.tree)
            end
            __RSQUARE142__ = match(RSQUARE, TOKENS_FOLLOWING_RSQUARE_IN_postfix_expression_2496)

          when 2
            # at line 261:9: DOT IDENTIFIER
            __DOT143__ = match(DOT, TOKENS_FOLLOWING_DOT_IN_postfix_expression_2507)
            if @state.backtracking == 0

              tree_for_DOT143 = @adaptor.create_with_payload!(__DOT143__)
              root_0 = @adaptor.become_root(tree_for_DOT143, root_0)

            end
            __IDENTIFIER144__ = match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_postfix_expression_2516)
            if @state.backtracking == 0

              tree_for_IDENTIFIER144 = @adaptor.create_with_payload!(__IDENTIFIER144__)
              @adaptor.add_child(root_0, tree_for_IDENTIFIER144)

            end

          when 3
            # at line 262:9: s= STAR IDENTIFIER
            s = match(STAR, TOKENS_FOLLOWING_STAR_IN_postfix_expression_2528)
            if @state.backtracking == 0

              tree_for_s = @adaptor.create_with_payload!(s)
              root_0 = @adaptor.become_root(tree_for_s, root_0)

            end
            # syntactic predicate action gate test
            if @state.backtracking == 0
              # --> action
              s.type = POINTER
              # <-- action
            end
            __IDENTIFIER145__ = match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_postfix_expression_2537)
            if @state.backtracking == 0

              tree_for_IDENTIFIER145 = @adaptor.create_with_payload!(__IDENTIFIER145__)
              @adaptor.add_child(root_0, tree_for_IDENTIFIER145)

            end

          when 4
            # at line 263:9: POINTERTO IDENTIFIER
            __POINTERTO146__ = match(POINTERTO, TOKENS_FOLLOWING_POINTERTO_IN_postfix_expression_2547)
            if @state.backtracking == 0

              tree_for_POINTERTO146 = @adaptor.create_with_payload!(__POINTERTO146__)
              root_0 = @adaptor.become_root(tree_for_POINTERTO146, root_0)

            end
            __IDENTIFIER147__ = match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_postfix_expression_2550)
            if @state.backtracking == 0

              tree_for_IDENTIFIER147 = @adaptor.create_with_payload!(__IDENTIFIER147__)
              @adaptor.add_child(root_0, tree_for_IDENTIFIER147)

            end

          when 5
            # at line 264:9: p= PLUSPLUS
            p = match(PLUSPLUS, TOKENS_FOLLOWING_PLUSPLUS_IN_postfix_expression_2562)
            if @state.backtracking == 0

              tree_for_p = @adaptor.create_with_payload!(p)
              root_0 = @adaptor.become_root(tree_for_p, root_0)

            end
            # syntactic predicate action gate test
            if @state.backtracking == 0
              # --> action
              p.type = POST_INC
              # <-- action
            end

          when 6
            # at line 265:9: m= MINUSMINUS
            m = match(MINUSMINUS, TOKENS_FOLLOWING_MINUSMINUS_IN_postfix_expression_2579)
            if @state.backtracking == 0

              tree_for_m = @adaptor.create_with_payload!(m)
              root_0 = @adaptor.become_root(tree_for_m, root_0)

            end
            # syntactic predicate action gate test
            if @state.backtracking == 0
              # --> action
              m.type = POST_DEC
              # <-- action
            end

          else
            break #loop 42
          end
        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 29)
        memoize(__method__, postfix_expression_start_index, success) if @state.backtracking > 0

      end
      
      return return_value
    end

    PrimaryExpressionReturnValue = define_return_scope 

    # parser rule primary_expression
    # 
    # (in samples/CPP.g)
    # 269:1: primary_expression : ( ( IDENTIFIER LPAREN )=> function_call | IDENTIFIER | constant | LPAREN assignment_expression RPAREN -> ^( EXPR_GROUP assignment_expression ) );
    def primary_expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 30)
      return_value = PrimaryExpressionReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      primary_expression_start_index = @input.index

      root_0 = nil
      __IDENTIFIER149__ = nil
      __LPAREN151__ = nil
      __RPAREN153__ = nil
      function_call148 = nil
      constant150 = nil
      assignment_expression152 = nil

      tree_for_IDENTIFIER149 = nil
      tree_for_LPAREN151 = nil
      tree_for_RPAREN153 = nil
      stream_RPAREN = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token RPAREN")
      stream_LPAREN = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token LPAREN")
      stream_assignment_expression = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule assignment_expression")
      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return return_value
        end
        # at line 270:5: ( ( IDENTIFIER LPAREN )=> function_call | IDENTIFIER | constant | LPAREN assignment_expression RPAREN -> ^( EXPR_GROUP assignment_expression ) )
        alt_43 = 4
        case look_43 = @input.peek(1)
        when IDENTIFIER then look_43_1 = @input.peek(2)

        if (syntactic_predicate?(:synpred_82_cpp!)) 
          alt_43 = 1
        elsif (syntactic_predicate?(:synpred_83_cpp!)) 
          alt_43 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 43, 1)
          raise nvae
        end
        when DECIMAL_LITERAL, STRING_LITERAL, HEX_LITERAL, OCTAL_LITERAL, CHARACTER_LITERAL, FLOATING_POINT_LITERAL then alt_43 = 3
        when LPAREN then alt_43 = 4
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          nvae = NoViableAlternative("", 43, 0)
          raise nvae
        end
        case alt_43
        when 1
          root_0 = @adaptor.create_flat_list!


          # at line 270:9: ( IDENTIFIER LPAREN )=> function_call
          @state.following.push(TOKENS_FOLLOWING_function_call_IN_primary_expression_2616)
          function_call148 = function_call
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, function_call148.tree)
          end

        when 2
          root_0 = @adaptor.create_flat_list!


          # at line 271:9: IDENTIFIER
          __IDENTIFIER149__ = match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_primary_expression_2626)
          if @state.backtracking == 0

            tree_for_IDENTIFIER149 = @adaptor.create_with_payload!(__IDENTIFIER149__)
            @adaptor.add_child(root_0, tree_for_IDENTIFIER149)

          end

        when 3
          root_0 = @adaptor.create_flat_list!


          # at line 272:9: constant
          @state.following.push(TOKENS_FOLLOWING_constant_IN_primary_expression_2636)
          constant150 = constant
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, constant150.tree)
          end

        when 4
          # at line 273:9: LPAREN assignment_expression RPAREN
          __LPAREN151__ = match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_primary_expression_2646) 
          if @state.backtracking == 0
            stream_LPAREN.add(__LPAREN151__)
          end
          @state.following.push(TOKENS_FOLLOWING_assignment_expression_IN_primary_expression_2649)
          assignment_expression152 = assignment_expression
          @state.following.pop
          if @state.backtracking == 0
            stream_assignment_expression.add(assignment_expression152.tree)
          end
          __RPAREN153__ = match(RPAREN, TOKENS_FOLLOWING_RPAREN_IN_primary_expression_2651) 
          if @state.backtracking == 0
            stream_RPAREN.add(__RPAREN153__)
          end
          # AST Rewrite
          # elements: assignment_expression
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

            root_0 = @adaptor.create_flat_list!
            # 273:47: -> ^( EXPR_GROUP assignment_expression )
            # at line 273:50: ^( EXPR_GROUP assignment_expression )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(@adaptor.create_from_type!(EXPR_GROUP, "EXPR_GROUP"), root_1)

            @adaptor.add_child(root_1, stream_assignment_expression.next_tree)

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 30)
        memoize(__method__, primary_expression_start_index, success) if @state.backtracking > 0

      end
      
      return return_value
    end

    FunctionCallReturnValue = define_return_scope 

    # parser rule function_call
    # 
    # (in samples/CPP.g)
    # 276:1: function_call : id= IDENTIFIER LPAREN ( arg_list )? RPAREN -> ^( METHOD_CALL $id ( arg_list )? ) ;
    def function_call
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 31)
      return_value = FunctionCallReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      function_call_start_index = @input.index

      root_0 = nil
      id = nil
      __LPAREN154__ = nil
      __RPAREN156__ = nil
      arg_list155 = nil

      tree_for_id = nil
      tree_for_LPAREN154 = nil
      tree_for_RPAREN156 = nil
      stream_RPAREN = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token RPAREN")
      stream_IDENTIFIER = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token IDENTIFIER")
      stream_LPAREN = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token LPAREN")
      stream_arg_list = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule arg_list")
      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return return_value
        end
        # at line 277:8: id= IDENTIFIER LPAREN ( arg_list )? RPAREN
        id = match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_function_call_2680) 
        if @state.backtracking == 0
          stream_IDENTIFIER.add(id)
        end
        __LPAREN154__ = match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_function_call_2682) 
        if @state.backtracking == 0
          stream_LPAREN.add(__LPAREN154__)
        end
        # at line 277:29: ( arg_list )?
        alt_44 = 2
        look_44_0 = @input.peek(1)

        if (look_44_0.between?(IDENTIFIER, LPAREN) || look_44_0.between?(DECIMAL_LITERAL, STRING_LITERAL) || look_44_0 == AMPERSAND || look_44_0.between?(PLUS, STAR) || look_44_0.between?(PLUSPLUS, TILDE) || look_44_0.between?(HEX_LITERAL, FLOATING_POINT_LITERAL)) 
          alt_44 = 1
        end
        case alt_44
        when 1
          # at line 0:0: arg_list
          @state.following.push(TOKENS_FOLLOWING_arg_list_IN_function_call_2684)
          arg_list155 = arg_list
          @state.following.pop
          if @state.backtracking == 0
            stream_arg_list.add(arg_list155.tree)
          end

        end
        __RPAREN156__ = match(RPAREN, TOKENS_FOLLOWING_RPAREN_IN_function_call_2687) 
        if @state.backtracking == 0
          stream_RPAREN.add(__RPAREN156__)
        end
        # AST Rewrite
        # elements: arg_list, id
        # token labels: id
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 
        if @state.backtracking == 0

          return_value.tree = root_0
          stream_id = token_stream("token id", id)
          stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

          root_0 = @adaptor.create_flat_list!
          # 277:47: -> ^( METHOD_CALL $id ( arg_list )? )
          # at line 277:50: ^( METHOD_CALL $id ( arg_list )? )
          root_1 = @adaptor.create_flat_list!
          root_1 = @adaptor.become_root(@adaptor.create_from_type!(METHOD_CALL, "METHOD_CALL"), root_1)

          @adaptor.add_child(root_1, stream_id.next_node)
          # at line 277:68: ( arg_list )?
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
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 31)
        memoize(__method__, function_call_start_index, success) if @state.backtracking > 0

      end
      
      return return_value
    end

    ArgListReturnValue = define_return_scope 

    # parser rule arg_list
    # 
    # (in samples/CPP.g)
    # 280:1: arg_list : assignment_expression ( COMMA assignment_expression )* -> ^( ARGS ( assignment_expression )+ ) ;
    def arg_list
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 32)
      return_value = ArgListReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      arg_list_start_index = @input.index

      root_0 = nil
      __COMMA158__ = nil
      assignment_expression157 = nil
      assignment_expression159 = nil

      tree_for_COMMA158 = nil
      stream_COMMA = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token COMMA")
      stream_assignment_expression = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule assignment_expression")
      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return return_value
        end
        # at line 281:8: assignment_expression ( COMMA assignment_expression )*
        @state.following.push(TOKENS_FOLLOWING_assignment_expression_IN_arg_list_2718)
        assignment_expression157 = assignment_expression
        @state.following.pop
        if @state.backtracking == 0
          stream_assignment_expression.add(assignment_expression157.tree)
        end
        # at line 281:30: ( COMMA assignment_expression )*
        loop do  #loop 45
          alt_45 = 2
          look_45_0 = @input.peek(1)

          if (look_45_0 == COMMA) 
            alt_45 = 1

          end
          case alt_45
          when 1
            # at line 281:31: COMMA assignment_expression
            __COMMA158__ = match(COMMA, TOKENS_FOLLOWING_COMMA_IN_arg_list_2721) 
            if @state.backtracking == 0
              stream_COMMA.add(__COMMA158__)
            end
            @state.following.push(TOKENS_FOLLOWING_assignment_expression_IN_arg_list_2723)
            assignment_expression159 = assignment_expression
            @state.following.pop
            if @state.backtracking == 0
              stream_assignment_expression.add(assignment_expression159.tree)
            end

          else
            break #loop 45
          end
        end
        # AST Rewrite
        # elements: assignment_expression
        # token labels: 
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 
        if @state.backtracking == 0

          return_value.tree = root_0
          stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

          root_0 = @adaptor.create_flat_list!
          # 281:61: -> ^( ARGS ( assignment_expression )+ )
          # at line 281:64: ^( ARGS ( assignment_expression )+ )
          root_1 = @adaptor.create_flat_list!
          root_1 = @adaptor.become_root(@adaptor.create_from_type!(ARGS, "ARGS"), root_1)

          # at line 281:71: ( assignment_expression )+
          unless stream_assignment_expression.has_next?
            raise ANTLR3::RewriteEarlyExit
          end

          while stream_assignment_expression.has_next?
            @adaptor.add_child(root_1, stream_assignment_expression.next_tree)

          end

          stream_assignment_expression.reset

          @adaptor.add_child(root_0, root_1)



          return_value.tree = root_0

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 32)
        memoize(__method__, arg_list_start_index, success) if @state.backtracking > 0

      end
      
      return return_value
    end

    ConstantReturnValue = define_return_scope 

    # parser rule constant
    # 
    # (in samples/CPP.g)
    # 284:1: constant : ( HEX_LITERAL | OCTAL_LITERAL | DECIMAL_LITERAL | CHARACTER_LITERAL | STRING_LITERAL | FLOATING_POINT_LITERAL );
    def constant
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 33)
      return_value = ConstantReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      constant_start_index = @input.index

      root_0 = nil
      set160 = nil

      tree_for_set160 = nil

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return return_value
        end
        root_0 = @adaptor.create_flat_list!


        # at line 
        set160 = @input.look
        if @input.peek(1).between?(DECIMAL_LITERAL, STRING_LITERAL) || @input.peek(1).between?(HEX_LITERAL, FLOATING_POINT_LITERAL)
          @input.consume
          if @state.backtracking == 0
            @adaptor.add_child(root_0, @adaptor.create_with_payload!(set160))
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
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 33)
        memoize(__method__, constant_start_index, success) if @state.backtracking > 0

      end
      
      return return_value
    end

    SourceTextReturnValue = define_return_scope 

    # parser rule source_text
    # 
    # (in samples/CPP.g)
    # 295:1: source_text : ( source_expression | COMMA | LPAREN | RPAREN | WS );
    def source_text
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 34)
      return_value = SourceTextReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      source_text_start_index = @input.index

      root_0 = nil
      __COMMA162__ = nil
      __LPAREN163__ = nil
      __RPAREN164__ = nil
      __WS165__ = nil
      source_expression161 = nil

      tree_for_COMMA162 = nil
      tree_for_LPAREN163 = nil
      tree_for_RPAREN164 = nil
      tree_for_WS165 = nil

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return return_value
        end
        # at line 296:5: ( source_expression | COMMA | LPAREN | RPAREN | WS )
        alt_46 = 5
        alt_46 = @dfa46.predict(@input)
        case alt_46
        when 1
          root_0 = @adaptor.create_flat_list!


          # at line 296:9: source_expression
          @state.following.push(TOKENS_FOLLOWING_source_expression_IN_source_text_2812)
          source_expression161 = source_expression
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, source_expression161.tree)
          end

        when 2
          root_0 = @adaptor.create_flat_list!


          # at line 297:9: COMMA
          __COMMA162__ = match(COMMA, TOKENS_FOLLOWING_COMMA_IN_source_text_2822)
          if @state.backtracking == 0

            tree_for_COMMA162 = @adaptor.create_with_payload!(__COMMA162__)
            @adaptor.add_child(root_0, tree_for_COMMA162)

          end

        when 3
          root_0 = @adaptor.create_flat_list!


          # at line 298:9: LPAREN
          __LPAREN163__ = match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_source_text_2832)
          if @state.backtracking == 0

            tree_for_LPAREN163 = @adaptor.create_with_payload!(__LPAREN163__)
            @adaptor.add_child(root_0, tree_for_LPAREN163)

          end

        when 4
          root_0 = @adaptor.create_flat_list!


          # at line 299:9: RPAREN
          __RPAREN164__ = match(RPAREN, TOKENS_FOLLOWING_RPAREN_IN_source_text_2842)
          if @state.backtracking == 0

            tree_for_RPAREN164 = @adaptor.create_with_payload!(__RPAREN164__)
            @adaptor.add_child(root_0, tree_for_RPAREN164)

          end

        when 5
          root_0 = @adaptor.create_flat_list!


          # at line 300:9: WS
          __WS165__ = match(WS, TOKENS_FOLLOWING_WS_IN_source_text_2852)
          if @state.backtracking == 0

            tree_for_WS165 = @adaptor.create_with_payload!(__WS165__)
            @adaptor.add_child(root_0, tree_for_WS165)

          end

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 34)
        memoize(__method__, source_text_start_index, success) if @state.backtracking > 0

      end
      
      return return_value
    end

    MacroExpansionReturnValue = define_return_scope 

    # parser rule macro_expansion
    # 
    # (in samples/CPP.g)
    # 303:1: macro_expansion : (id= IDENTIFIER ( WS )? LPAREN ( WS )? RPAREN -> ^( EXPAND $id) | id= IDENTIFIER ( WS )? LPAREN ( WS )? mac_args ( WS )? RPAREN -> ^( EXPAND $id ( mac_args )? ) );
    def macro_expansion
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 35)
      return_value = MacroExpansionReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      macro_expansion_start_index = @input.index

      root_0 = nil
      id = nil
      __WS166__ = nil
      __LPAREN167__ = nil
      __WS168__ = nil
      __RPAREN169__ = nil
      __WS170__ = nil
      __LPAREN171__ = nil
      __WS172__ = nil
      __WS174__ = nil
      __RPAREN175__ = nil
      mac_args173 = nil

      tree_for_id = nil
      tree_for_WS166 = nil
      tree_for_LPAREN167 = nil
      tree_for_WS168 = nil
      tree_for_RPAREN169 = nil
      tree_for_WS170 = nil
      tree_for_LPAREN171 = nil
      tree_for_WS172 = nil
      tree_for_WS174 = nil
      tree_for_RPAREN175 = nil
      stream_RPAREN = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token RPAREN")
      stream_WS = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token WS")
      stream_IDENTIFIER = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token IDENTIFIER")
      stream_LPAREN = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token LPAREN")
      stream_mac_args = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule mac_args")
      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return return_value
        end
        # at line 304:5: (id= IDENTIFIER ( WS )? LPAREN ( WS )? RPAREN -> ^( EXPAND $id) | id= IDENTIFIER ( WS )? LPAREN ( WS )? mac_args ( WS )? RPAREN -> ^( EXPAND $id ( mac_args )? ) )
        alt_52 = 2
        look_52_0 = @input.peek(1)

        if (look_52_0 == IDENTIFIER) 
          look_52_1 = @input.peek(2)

          if (look_52_1 == WS) 
            look_52_2 = @input.peek(3)

            if (look_52_2 == LPAREN) 
              case look_52 = @input.peek(4)
              when WS then look_52_4 = @input.peek(5)

              if (look_52_4 == TEXT_END || look_52_4.between?(IDENTIFIER, WS) || look_52_4 == COMMA || look_52_4.between?(DECIMAL_LITERAL, STRING_LITERAL) || look_52_4 == SIZEOF || look_52_4.between?(HEX_LITERAL, COPERATOR)) 
                alt_52 = 2
              elsif (look_52_4 == RPAREN) 
                look_52_5 = @input.peek(6)

                if (syntactic_predicate?(:synpred_98_cpp!)) 
                  alt_52 = 1
                elsif (true) 
                  alt_52 = 2
                else
                  @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
                nvae = NoViableAlternative("", 52, 5)
                  raise nvae
                end
              else
                @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
              nvae = NoViableAlternative("", 52, 4)
                raise nvae
              end
              when RPAREN then look_52_5 = @input.peek(5)

              if (syntactic_predicate?(:synpred_98_cpp!)) 
                alt_52 = 1
              elsif (true) 
                alt_52 = 2
              else
                @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
              nvae = NoViableAlternative("", 52, 5)
                raise nvae
              end
              when TEXT_END, IDENTIFIER, LPAREN, COMMA, DECIMAL_LITERAL, STRING_LITERAL, SIZEOF, HEX_LITERAL, OCTAL_LITERAL, CHARACTER_LITERAL, FLOATING_POINT_LITERAL, STRINGIFICATION, STRING_OP, SEMICOLON, SHARPSHARP, CKEYWORD, COPERATOR then alt_52 = 2
              else
                @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

                nvae = NoViableAlternative("", 52, 3)
                raise nvae
              end
            else
              @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
            nvae = NoViableAlternative("", 52, 2)
              raise nvae
            end
          elsif (look_52_1 == LPAREN) 
            case look_52 = @input.peek(3)
            when WS then look_52_4 = @input.peek(4)

            if (look_52_4 == TEXT_END || look_52_4.between?(IDENTIFIER, WS) || look_52_4 == COMMA || look_52_4.between?(DECIMAL_LITERAL, STRING_LITERAL) || look_52_4 == SIZEOF || look_52_4.between?(HEX_LITERAL, COPERATOR)) 
              alt_52 = 2
            elsif (look_52_4 == RPAREN) 
              look_52_5 = @input.peek(5)

              if (syntactic_predicate?(:synpred_98_cpp!)) 
                alt_52 = 1
              elsif (true) 
                alt_52 = 2
              else
                @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
              nvae = NoViableAlternative("", 52, 5)
                raise nvae
              end
            else
              @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
            nvae = NoViableAlternative("", 52, 4)
              raise nvae
            end
            when RPAREN then look_52_5 = @input.peek(4)

            if (syntactic_predicate?(:synpred_98_cpp!)) 
              alt_52 = 1
            elsif (true) 
              alt_52 = 2
            else
              @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
            nvae = NoViableAlternative("", 52, 5)
              raise nvae
            end
            when TEXT_END, IDENTIFIER, LPAREN, COMMA, DECIMAL_LITERAL, STRING_LITERAL, SIZEOF, HEX_LITERAL, OCTAL_LITERAL, CHARACTER_LITERAL, FLOATING_POINT_LITERAL, STRINGIFICATION, STRING_OP, SEMICOLON, SHARPSHARP, CKEYWORD, COPERATOR then alt_52 = 2
            else
              @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

              nvae = NoViableAlternative("", 52, 3)
              raise nvae
            end
          else
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
          nvae = NoViableAlternative("", 52, 1)
            raise nvae
          end
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 52, 0)
          raise nvae
        end
        case alt_52
        when 1
          # at line 304:7: id= IDENTIFIER ( WS )? LPAREN ( WS )? RPAREN
          id = match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_macro_expansion_2871) 
          if @state.backtracking == 0
            stream_IDENTIFIER.add(id)
          end
          # at line 304:21: ( WS )?
          alt_47 = 2
          look_47_0 = @input.peek(1)

          if (look_47_0 == WS) 
            alt_47 = 1
          end
          case alt_47
          when 1
            # at line 0:0: WS
            __WS166__ = match(WS, TOKENS_FOLLOWING_WS_IN_macro_expansion_2873) 
            if @state.backtracking == 0
              stream_WS.add(__WS166__)
            end

          end
          __LPAREN167__ = match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_macro_expansion_2876) 
          if @state.backtracking == 0
            stream_LPAREN.add(__LPAREN167__)
          end
          # at line 304:32: ( WS )?
          alt_48 = 2
          look_48_0 = @input.peek(1)

          if (look_48_0 == WS) 
            alt_48 = 1
          end
          case alt_48
          when 1
            # at line 0:0: WS
            __WS168__ = match(WS, TOKENS_FOLLOWING_WS_IN_macro_expansion_2878) 
            if @state.backtracking == 0
              stream_WS.add(__WS168__)
            end

          end
          __RPAREN169__ = match(RPAREN, TOKENS_FOLLOWING_RPAREN_IN_macro_expansion_2881) 
          if @state.backtracking == 0
            stream_RPAREN.add(__RPAREN169__)
          end
          # AST Rewrite
          # elements: id
          # token labels: id
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_id = token_stream("token id", id)
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

            root_0 = @adaptor.create_flat_list!
            # 304:43: -> ^( EXPAND $id)
            # at line 304:46: ^( EXPAND $id)
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(@adaptor.create_from_type!(EXPAND, "EXPAND"), root_1)

            @adaptor.add_child(root_1, stream_id.next_node)

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 2
          # at line 305:7: id= IDENTIFIER ( WS )? LPAREN ( WS )? mac_args ( WS )? RPAREN
          id = match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_macro_expansion_2900) 
          if @state.backtracking == 0
            stream_IDENTIFIER.add(id)
          end
          # at line 305:21: ( WS )?
          alt_49 = 2
          look_49_0 = @input.peek(1)

          if (look_49_0 == WS) 
            alt_49 = 1
          end
          case alt_49
          when 1
            # at line 0:0: WS
            __WS170__ = match(WS, TOKENS_FOLLOWING_WS_IN_macro_expansion_2902) 
            if @state.backtracking == 0
              stream_WS.add(__WS170__)
            end

          end
          __LPAREN171__ = match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_macro_expansion_2905) 
          if @state.backtracking == 0
            stream_LPAREN.add(__LPAREN171__)
          end
          # at line 305:32: ( WS )?
          alt_50 = 2
          look_50_0 = @input.peek(1)

          if (look_50_0 == WS) 
            look_50_1 = @input.peek(2)

            if (syntactic_predicate?(:synpred_100_cpp!)) 
              alt_50 = 1
            end
          end
          case alt_50
          when 1
            # at line 0:0: WS
            __WS172__ = match(WS, TOKENS_FOLLOWING_WS_IN_macro_expansion_2907) 
            if @state.backtracking == 0
              stream_WS.add(__WS172__)
            end

          end
          @state.following.push(TOKENS_FOLLOWING_mac_args_IN_macro_expansion_2910)
          mac_args173 = mac_args
          @state.following.pop
          if @state.backtracking == 0
            stream_mac_args.add(mac_args173.tree)
          end
          # at line 305:45: ( WS )?
          alt_51 = 2
          look_51_0 = @input.peek(1)

          if (look_51_0 == WS) 
            alt_51 = 1
          end
          case alt_51
          when 1
            # at line 0:0: WS
            __WS174__ = match(WS, TOKENS_FOLLOWING_WS_IN_macro_expansion_2912) 
            if @state.backtracking == 0
              stream_WS.add(__WS174__)
            end

          end
          __RPAREN175__ = match(RPAREN, TOKENS_FOLLOWING_RPAREN_IN_macro_expansion_2915) 
          if @state.backtracking == 0
            stream_RPAREN.add(__RPAREN175__)
          end
          # AST Rewrite
          # elements: mac_args, id
          # token labels: id
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_id = token_stream("token id", id)
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

            root_0 = @adaptor.create_flat_list!
            # 305:56: -> ^( EXPAND $id ( mac_args )? )
            # at line 305:59: ^( EXPAND $id ( mac_args )? )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(@adaptor.create_from_type!(EXPAND, "EXPAND"), root_1)

            @adaptor.add_child(root_1, stream_id.next_node)
            # at line 305:72: ( mac_args )?
            if stream_mac_args.has_next?
              @adaptor.add_child(root_1, stream_mac_args.next_tree)

            end

            stream_mac_args.reset();

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 35)
        memoize(__method__, macro_expansion_start_index, success) if @state.backtracking > 0

      end
      
      return return_value
    end

    MacArgsReturnValue = define_return_scope 

    # parser rule mac_args
    # 
    # (in samples/CPP.g)
    # 308:1: mac_args : marg+= m_arg ( ( WS )? COMMA ( WS )? marg+= m_arg )* -> ^( EXP_ARGS ( $marg)+ ) ;
    def mac_args
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 36)
      return_value = MacArgsReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      mac_args_start_index = @input.index

      root_0 = nil
      __WS176__ = nil
      __COMMA177__ = nil
      __WS178__ = nil
      list_of_marg = []
      marg = nil
      marg = nil

      tree_for_WS176 = nil
      tree_for_COMMA177 = nil
      tree_for_WS178 = nil
      stream_WS = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token WS")
      stream_COMMA = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token COMMA")
      stream_m_arg = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule m_arg")
      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return return_value
        end
        # at line 308:18: marg+= m_arg ( ( WS )? COMMA ( WS )? marg+= m_arg )*
        @state.following.push(TOKENS_FOLLOWING_m_arg_IN_mac_args_2948)
        marg = m_arg
        @state.following.pop
        if @state.backtracking == 0
          stream_m_arg.add(marg.tree)
        end
        list_of_marg << marg.tree

        # at line 308:30: ( ( WS )? COMMA ( WS )? marg+= m_arg )*
        loop do  #loop 55
          alt_55 = 2
          look_55_0 = @input.peek(1)

          if (look_55_0 == WS) 
            look_55_1 = @input.peek(2)

            if (look_55_1 == COMMA) 
              alt_55 = 1

            end
          elsif (look_55_0 == COMMA) 
            alt_55 = 1

          end
          case alt_55
          when 1
            # at line 308:32: ( WS )? COMMA ( WS )? marg+= m_arg
            # at line 308:32: ( WS )?
            alt_53 = 2
            look_53_0 = @input.peek(1)

            if (look_53_0 == WS) 
              alt_53 = 1
            end
            case alt_53
            when 1
              # at line 0:0: WS
              __WS176__ = match(WS, TOKENS_FOLLOWING_WS_IN_mac_args_2952) 
              if @state.backtracking == 0
                stream_WS.add(__WS176__)
              end

            end
            __COMMA177__ = match(COMMA, TOKENS_FOLLOWING_COMMA_IN_mac_args_2955) 
            if @state.backtracking == 0
              stream_COMMA.add(__COMMA177__)
            end
            # at line 308:42: ( WS )?
            alt_54 = 2
            look_54_0 = @input.peek(1)

            if (look_54_0 == WS) 
              look_54_1 = @input.peek(2)

              if (syntactic_predicate?(:synpred_103_cpp!)) 
                alt_54 = 1
              end
            end
            case alt_54
            when 1
              # at line 0:0: WS
              __WS178__ = match(WS, TOKENS_FOLLOWING_WS_IN_mac_args_2957) 
              if @state.backtracking == 0
                stream_WS.add(__WS178__)
              end

            end
            @state.following.push(TOKENS_FOLLOWING_m_arg_IN_mac_args_2962)
            marg = m_arg
            @state.following.pop
            if @state.backtracking == 0
              stream_m_arg.add(marg.tree)
            end
            list_of_marg << marg.tree


          else
            break #loop 55
          end
        end
        # AST Rewrite
        # elements: marg
        # token labels: 
        # rule labels: return_value
        # token list labels: 
        # rule list labels: marg
        # wildcard labels: 
        if @state.backtracking == 0

          return_value.tree = root_0
          stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")
          stream_marg = subtree_stream("token marg", list_of_marg)
          root_0 = @adaptor.create_flat_list!
          # 308:61: -> ^( EXP_ARGS ( $marg)+ )
          # at line 308:64: ^( EXP_ARGS ( $marg)+ )
          root_1 = @adaptor.create_flat_list!
          root_1 = @adaptor.become_root(@adaptor.create_from_type!(EXP_ARGS, "EXP_ARGS"), root_1)

          # at line 308:75: ( $marg)+
          unless stream_marg.has_next?
            raise ANTLR3::RewriteEarlyExit
          end

          while stream_marg.has_next?
            @adaptor.add_child(root_1, stream_marg.next_tree)

          end

          stream_marg.reset

          @adaptor.add_child(root_0, root_1)



          return_value.tree = root_0

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 36)
        memoize(__method__, mac_args_start_index, success) if @state.backtracking > 0

      end
      
      return return_value
    end

    MArgReturnValue = define_return_scope 

    # parser rule m_arg
    # 
    # (in samples/CPP.g)
    # 311:1: m_arg : ( ( source_expression )+ -> ^( EXP_ARG ( source_expression )+ ) | -> ^( EXP_ARG ) );
    def m_arg
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 37)
      return_value = MArgReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      m_arg_start_index = @input.index

      root_0 = nil
      source_expression179 = nil

      stream_source_expression = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule source_expression")
      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return return_value
        end
        # at line 311:10: ( ( source_expression )+ -> ^( EXP_ARG ( source_expression )+ ) | -> ^( EXP_ARG ) )
        alt_57 = 2
        case look_57 = @input.peek(1)
        when TEXT_END, IDENTIFIER, LPAREN, DECIMAL_LITERAL, STRING_LITERAL, SIZEOF, HEX_LITERAL, OCTAL_LITERAL, CHARACTER_LITERAL, FLOATING_POINT_LITERAL, STRINGIFICATION, STRING_OP, SEMICOLON, SHARPSHARP, CKEYWORD, COPERATOR then alt_57 = 1
        when WS then look_57_2 = @input.peek(2)

        if (syntactic_predicate?(:synpred_106_cpp!)) 
          alt_57 = 1
        elsif (true) 
          alt_57 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 57, 2)
          raise nvae
        end
        when EOF, RPAREN, COMMA then alt_57 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          nvae = NoViableAlternative("", 57, 0)
          raise nvae
        end
        case alt_57
        when 1
          # at line 311:18: ( source_expression )+
          # at file 311:18: ( source_expression )+
          match_count_56 = 0
          loop do
            alt_56 = 2
            look_56_0 = @input.peek(1)

            if (look_56_0 == WS) 
              look_56_1 = @input.peek(2)

              if (syntactic_predicate?(:synpred_105_cpp!)) 
                alt_56 = 1

              end
            elsif (look_56_0 == TEXT_END || look_56_0.between?(IDENTIFIER, LPAREN) || look_56_0.between?(DECIMAL_LITERAL, STRING_LITERAL) || look_56_0 == SIZEOF || look_56_0.between?(HEX_LITERAL, COPERATOR)) 
              alt_56 = 1

            end
            case alt_56
            when 1
              # at line 0:0: source_expression
              @state.following.push(TOKENS_FOLLOWING_source_expression_IN_m_arg_2997)
              source_expression179 = source_expression
              @state.following.pop
              if @state.backtracking == 0
                stream_source_expression.add(source_expression179.tree)
              end

            else
              match_count_56 > 0 and break
              @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

              eee = EarlyExit(56)


              raise eee
            end
            match_count_56 += 1
          end

          # AST Rewrite
          # elements: source_expression
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

            root_0 = @adaptor.create_flat_list!
            # 311:43: -> ^( EXP_ARG ( source_expression )+ )
            # at line 311:46: ^( EXP_ARG ( source_expression )+ )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(@adaptor.create_from_type!(EXP_ARG, "EXP_ARG"), root_1)

            # at line 311:56: ( source_expression )+
            unless stream_source_expression.has_next?
              raise ANTLR3::RewriteEarlyExit
            end

            while stream_source_expression.has_next?
              @adaptor.add_child(root_1, stream_source_expression.next_tree)

            end

            stream_source_expression.reset

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 2
          # at line 312:13: 
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
            # 312:13: -> ^( EXP_ARG )
            # at line 312:16: ^( EXP_ARG )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(@adaptor.create_from_type!(EXP_ARG, "EXP_ARG"), root_1)

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 37)
        memoize(__method__, m_arg_start_index, success) if @state.backtracking > 0

      end
      
      return return_value
    end

    SourceExpressionReturnValue = define_return_scope 

    # parser rule source_expression
    # 
    # (in samples/CPP.g)
    # 315:1: source_expression : ( ( IDENTIFIER ( WS )? LPAREN )=> macro_expansion | ( primary_source ( WS )? SHARPSHARP )=> concatenate | STRINGIFICATION IDENTIFIER -> ^( STRINGIFICATION IDENTIFIER ) | primary_source | STRING_OP | SIZEOF | LPAREN ( mac_args )? RPAREN -> ^( TEXT_GROUP ( mac_args )? ) | SEMICOLON | TEXT_END | WS );
    def source_expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 38)
      return_value = SourceExpressionReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      source_expression_start_index = @input.index

      root_0 = nil
      __STRINGIFICATION182__ = nil
      __IDENTIFIER183__ = nil
      __STRING_OP185__ = nil
      __SIZEOF186__ = nil
      __LPAREN187__ = nil
      __RPAREN189__ = nil
      __SEMICOLON190__ = nil
      __TEXT_END191__ = nil
      __WS192__ = nil
      macro_expansion180 = nil
      concatenate181 = nil
      primary_source184 = nil
      mac_args188 = nil

      tree_for_STRINGIFICATION182 = nil
      tree_for_IDENTIFIER183 = nil
      tree_for_STRING_OP185 = nil
      tree_for_SIZEOF186 = nil
      tree_for_LPAREN187 = nil
      tree_for_RPAREN189 = nil
      tree_for_SEMICOLON190 = nil
      tree_for_TEXT_END191 = nil
      tree_for_WS192 = nil
      stream_RPAREN = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token RPAREN")
      stream_STRINGIFICATION = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token STRINGIFICATION")
      stream_IDENTIFIER = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token IDENTIFIER")
      stream_LPAREN = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token LPAREN")
      stream_mac_args = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule mac_args")
      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return return_value
        end
        # at line 316:5: ( ( IDENTIFIER ( WS )? LPAREN )=> macro_expansion | ( primary_source ( WS )? SHARPSHARP )=> concatenate | STRINGIFICATION IDENTIFIER -> ^( STRINGIFICATION IDENTIFIER ) | primary_source | STRING_OP | SIZEOF | LPAREN ( mac_args )? RPAREN -> ^( TEXT_GROUP ( mac_args )? ) | SEMICOLON | TEXT_END | WS )
        alt_59 = 10
        alt_59 = @dfa59.predict(@input)
        case alt_59
        when 1
          root_0 = @adaptor.create_flat_list!


          # at line 316:13: ( IDENTIFIER ( WS )? LPAREN )=> macro_expansion
          @state.following.push(TOKENS_FOLLOWING_macro_expansion_IN_source_expression_3065)
          macro_expansion180 = macro_expansion
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, macro_expansion180.tree)
          end

        when 2
          root_0 = @adaptor.create_flat_list!


          # at line 317:13: ( primary_source ( WS )? SHARPSHARP )=> concatenate
          @state.following.push(TOKENS_FOLLOWING_concatenate_IN_source_expression_3093)
          concatenate181 = concatenate
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, concatenate181.tree)
          end

        when 3
          # at line 318:13: STRINGIFICATION IDENTIFIER
          __STRINGIFICATION182__ = match(STRINGIFICATION, TOKENS_FOLLOWING_STRINGIFICATION_IN_source_expression_3107) 
          if @state.backtracking == 0
            stream_STRINGIFICATION.add(__STRINGIFICATION182__)
          end
          __IDENTIFIER183__ = match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_source_expression_3109) 
          if @state.backtracking == 0
            stream_IDENTIFIER.add(__IDENTIFIER183__)
          end
          # AST Rewrite
          # elements: STRINGIFICATION, IDENTIFIER
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

            root_0 = @adaptor.create_flat_list!
            # 318:40: -> ^( STRINGIFICATION IDENTIFIER )
            # at line 318:48: ^( STRINGIFICATION IDENTIFIER )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(stream_STRINGIFICATION.next_node, root_1)

            @adaptor.add_child(root_1, stream_IDENTIFIER.next_node)

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 4
          root_0 = @adaptor.create_flat_list!


          # at line 319:13: primary_source
          @state.following.push(TOKENS_FOLLOWING_primary_source_IN_source_expression_3136)
          primary_source184 = primary_source
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, primary_source184.tree)
          end

        when 5
          root_0 = @adaptor.create_flat_list!


          # at line 320:13: STRING_OP
          __STRING_OP185__ = match(STRING_OP, TOKENS_FOLLOWING_STRING_OP_IN_source_expression_3150)
          if @state.backtracking == 0

            tree_for_STRING_OP185 = @adaptor.create_with_payload!(__STRING_OP185__)
            @adaptor.add_child(root_0, tree_for_STRING_OP185)

          end

        when 6
          root_0 = @adaptor.create_flat_list!


          # at line 321:13: SIZEOF
          __SIZEOF186__ = match(SIZEOF, TOKENS_FOLLOWING_SIZEOF_IN_source_expression_3164)
          if @state.backtracking == 0

            tree_for_SIZEOF186 = @adaptor.create_with_payload!(__SIZEOF186__)
            @adaptor.add_child(root_0, tree_for_SIZEOF186)

          end

        when 7
          # at line 322:13: LPAREN ( mac_args )? RPAREN
          __LPAREN187__ = match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_source_expression_3178) 
          if @state.backtracking == 0
            stream_LPAREN.add(__LPAREN187__)
          end
          # at line 322:20: ( mac_args )?
          alt_58 = 2
          look_58_0 = @input.peek(1)

          if (look_58_0 == TEXT_END || look_58_0.between?(IDENTIFIER, WS) || look_58_0 == COMMA || look_58_0.between?(DECIMAL_LITERAL, STRING_LITERAL) || look_58_0 == SIZEOF || look_58_0.between?(HEX_LITERAL, COPERATOR)) 
            alt_58 = 1
          elsif (look_58_0 == RPAREN) 
            look_58_2 = @input.peek(2)

            if (syntactic_predicate?(:synpred_115_cpp!)) 
              alt_58 = 1
            end
          end
          case alt_58
          when 1
            # at line 0:0: mac_args
            @state.following.push(TOKENS_FOLLOWING_mac_args_IN_source_expression_3180)
            mac_args188 = mac_args
            @state.following.pop
            if @state.backtracking == 0
              stream_mac_args.add(mac_args188.tree)
            end

          end
          __RPAREN189__ = match(RPAREN, TOKENS_FOLLOWING_RPAREN_IN_source_expression_3183) 
          if @state.backtracking == 0
            stream_RPAREN.add(__RPAREN189__)
          end
          # AST Rewrite
          # elements: mac_args
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

            root_0 = @adaptor.create_flat_list!
            # 322:37: -> ^( TEXT_GROUP ( mac_args )? )
            # at line 322:40: ^( TEXT_GROUP ( mac_args )? )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(@adaptor.create_from_type!(TEXT_GROUP, "TEXT_GROUP"), root_1)

            # at line 322:53: ( mac_args )?
            if stream_mac_args.has_next?
              @adaptor.add_child(root_1, stream_mac_args.next_tree)

            end

            stream_mac_args.reset();

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 8
          root_0 = @adaptor.create_flat_list!


          # at line 323:13: SEMICOLON
          __SEMICOLON190__ = match(SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_source_expression_3206)
          if @state.backtracking == 0

            tree_for_SEMICOLON190 = @adaptor.create_with_payload!(__SEMICOLON190__)
            @adaptor.add_child(root_0, tree_for_SEMICOLON190)

          end

        when 9
          root_0 = @adaptor.create_flat_list!


          # at line 324:13: TEXT_END
          __TEXT_END191__ = match(TEXT_END, TOKENS_FOLLOWING_TEXT_END_IN_source_expression_3220)
          if @state.backtracking == 0

            tree_for_TEXT_END191 = @adaptor.create_with_payload!(__TEXT_END191__)
            @adaptor.add_child(root_0, tree_for_TEXT_END191)

          end

        when 10
          root_0 = @adaptor.create_flat_list!


          # at line 325:13: WS
          __WS192__ = match(WS, TOKENS_FOLLOWING_WS_IN_source_expression_3234)
          if @state.backtracking == 0

            tree_for_WS192 = @adaptor.create_with_payload!(__WS192__)
            @adaptor.add_child(root_0, tree_for_WS192)

          end

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 38)
        memoize(__method__, source_expression_start_index, success) if @state.backtracking > 0

      end
      
      return return_value
    end

    ConcatenateReturnValue = define_return_scope 

    # parser rule concatenate
    # 
    # (in samples/CPP.g)
    # 328:1: concatenate : prim+= primary_source ( ( WS )? SHARPSHARP ( WS )? prim+= primary_source )+ -> ^( CONCATENATE ( $prim)+ ) ;
    def concatenate
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 39)
      return_value = ConcatenateReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      concatenate_start_index = @input.index

      root_0 = nil
      __WS193__ = nil
      __SHARPSHARP194__ = nil
      __WS195__ = nil
      list_of_prim = []
      prim = nil
      prim = nil

      tree_for_WS193 = nil
      tree_for_SHARPSHARP194 = nil
      tree_for_WS195 = nil
      stream_WS = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token WS")
      stream_SHARPSHARP = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token SHARPSHARP")
      stream_primary_source = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule primary_source")
      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return return_value
        end
        # at line 329:13: prim+= primary_source ( ( WS )? SHARPSHARP ( WS )? prim+= primary_source )+
        @state.following.push(TOKENS_FOLLOWING_primary_source_IN_concatenate_3259)
        prim = primary_source
        @state.following.pop
        if @state.backtracking == 0
          stream_primary_source.add(prim.tree)
        end
        list_of_prim << prim.tree

        # at file 329:34: ( ( WS )? SHARPSHARP ( WS )? prim+= primary_source )+
        match_count_62 = 0
        loop do
          alt_62 = 2
          look_62_0 = @input.peek(1)

          if (look_62_0 == SHARPSHARP) 
            case look_62 = @input.peek(2)
            when WS then look_62_4 = @input.peek(3)

            if (look_62_4 == IDENTIFIER) 
              look_62_5 = @input.peek(4)

              if (syntactic_predicate?(:synpred_121_cpp!)) 
                alt_62 = 1

              end
            elsif (look_62_4.between?(DECIMAL_LITERAL, STRING_LITERAL) || look_62_4.between?(HEX_LITERAL, FLOATING_POINT_LITERAL) || look_62_4.between?(SHARPSHARP, COPERATOR)) 
              alt_62 = 1

            end
            when IDENTIFIER then look_62_5 = @input.peek(3)

            if (syntactic_predicate?(:synpred_121_cpp!)) 
              alt_62 = 1

            end
            when DECIMAL_LITERAL, STRING_LITERAL, HEX_LITERAL, OCTAL_LITERAL, CHARACTER_LITERAL, FLOATING_POINT_LITERAL, SHARPSHARP, CKEYWORD, COPERATOR then alt_62 = 1
            end
          elsif (look_62_0 == WS) 
            look_62_3 = @input.peek(2)

            if (look_62_3 == SHARPSHARP) 
              case look_62 = @input.peek(3)
              when WS then look_62_4 = @input.peek(4)

              if (look_62_4 == IDENTIFIER) 
                look_62_5 = @input.peek(5)

                if (syntactic_predicate?(:synpred_121_cpp!)) 
                  alt_62 = 1

                end
              elsif (look_62_4.between?(DECIMAL_LITERAL, STRING_LITERAL) || look_62_4.between?(HEX_LITERAL, FLOATING_POINT_LITERAL) || look_62_4.between?(SHARPSHARP, COPERATOR)) 
                alt_62 = 1

              end
              when IDENTIFIER then look_62_5 = @input.peek(4)

              if (syntactic_predicate?(:synpred_121_cpp!)) 
                alt_62 = 1

              end
              when DECIMAL_LITERAL, STRING_LITERAL, HEX_LITERAL, OCTAL_LITERAL, CHARACTER_LITERAL, FLOATING_POINT_LITERAL, SHARPSHARP, CKEYWORD, COPERATOR then alt_62 = 1
              end

            end

          end
          case alt_62
          when 1
            # at line 329:35: ( WS )? SHARPSHARP ( WS )? prim+= primary_source
            # at line 329:35: ( WS )?
            alt_60 = 2
            look_60_0 = @input.peek(1)

            if (look_60_0 == WS) 
              alt_60 = 1
            end
            case alt_60
            when 1
              # at line 0:0: WS
              __WS193__ = match(WS, TOKENS_FOLLOWING_WS_IN_concatenate_3262) 
              if @state.backtracking == 0
                stream_WS.add(__WS193__)
              end

            end
            __SHARPSHARP194__ = match(SHARPSHARP, TOKENS_FOLLOWING_SHARPSHARP_IN_concatenate_3265) 
            if @state.backtracking == 0
              stream_SHARPSHARP.add(__SHARPSHARP194__)
            end
            # at line 329:51: ( WS )?
            alt_61 = 2
            look_61_0 = @input.peek(1)

            if (look_61_0 == WS) 
              alt_61 = 1
            end
            case alt_61
            when 1
              # at line 0:0: WS
              __WS195__ = match(WS, TOKENS_FOLLOWING_WS_IN_concatenate_3268) 
              if @state.backtracking == 0
                stream_WS.add(__WS195__)
              end

            end
            @state.following.push(TOKENS_FOLLOWING_primary_source_IN_concatenate_3273)
            prim = primary_source
            @state.following.pop
            if @state.backtracking == 0
              stream_primary_source.add(prim.tree)
            end
            list_of_prim << prim.tree


          else
            match_count_62 > 0 and break
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

            eee = EarlyExit(62)


            raise eee
          end
          match_count_62 += 1
        end

        # AST Rewrite
        # elements: prim
        # token labels: 
        # rule labels: return_value
        # token list labels: 
        # rule list labels: prim
        # wildcard labels: 
        if @state.backtracking == 0

          return_value.tree = root_0
          stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")
          stream_prim = subtree_stream("token prim", list_of_prim)
          root_0 = @adaptor.create_flat_list!
          # 329:79: -> ^( CONCATENATE ( $prim)+ )
          # at line 329:82: ^( CONCATENATE ( $prim)+ )
          root_1 = @adaptor.create_flat_list!
          root_1 = @adaptor.become_root(@adaptor.create_from_type!(CONCATENATE, "CONCATENATE"), root_1)

          # at line 329:96: ( $prim)+
          unless stream_prim.has_next?
            raise ANTLR3::RewriteEarlyExit
          end

          while stream_prim.has_next?
            @adaptor.add_child(root_1, stream_prim.next_tree)

          end

          stream_prim.reset

          @adaptor.add_child(root_0, root_1)



          return_value.tree = root_0

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 39)
        memoize(__method__, concatenate_start_index, success) if @state.backtracking > 0

      end
      
      return return_value
    end

    PrimarySourceReturnValue = define_return_scope 

    # parser rule primary_source
    # 
    # (in samples/CPP.g)
    # 332:1: primary_source : ( SHARPSHARP ( WS )? IDENTIFIER -> ^( SHARPSHARP IDENTIFIER ) | IDENTIFIER | constant | CKEYWORD | COPERATOR );
    def primary_source
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 40)
      return_value = PrimarySourceReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      primary_source_start_index = @input.index

      root_0 = nil
      __SHARPSHARP196__ = nil
      __WS197__ = nil
      __IDENTIFIER198__ = nil
      __IDENTIFIER199__ = nil
      __CKEYWORD201__ = nil
      __COPERATOR202__ = nil
      constant200 = nil

      tree_for_SHARPSHARP196 = nil
      tree_for_WS197 = nil
      tree_for_IDENTIFIER198 = nil
      tree_for_IDENTIFIER199 = nil
      tree_for_CKEYWORD201 = nil
      tree_for_COPERATOR202 = nil
      stream_WS = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token WS")
      stream_SHARPSHARP = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token SHARPSHARP")
      stream_IDENTIFIER = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token IDENTIFIER")

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return return_value
        end
        # at line 333:5: ( SHARPSHARP ( WS )? IDENTIFIER -> ^( SHARPSHARP IDENTIFIER ) | IDENTIFIER | constant | CKEYWORD | COPERATOR )
        alt_64 = 5
        case look_64 = @input.peek(1)
        when SHARPSHARP then alt_64 = 1
        when IDENTIFIER then alt_64 = 2
        when DECIMAL_LITERAL, STRING_LITERAL, HEX_LITERAL, OCTAL_LITERAL, CHARACTER_LITERAL, FLOATING_POINT_LITERAL then alt_64 = 3
        when CKEYWORD then alt_64 = 4
        when COPERATOR then alt_64 = 5
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          nvae = NoViableAlternative("", 64, 0)
          raise nvae
        end
        case alt_64
        when 1
          # at line 333:13: SHARPSHARP ( WS )? IDENTIFIER
          __SHARPSHARP196__ = match(SHARPSHARP, TOKENS_FOLLOWING_SHARPSHARP_IN_primary_source_3309) 
          if @state.backtracking == 0
            stream_SHARPSHARP.add(__SHARPSHARP196__)
          end
          # at line 333:24: ( WS )?
          alt_63 = 2
          look_63_0 = @input.peek(1)

          if (look_63_0 == WS) 
            alt_63 = 1
          end
          case alt_63
          when 1
            # at line 0:0: WS
            __WS197__ = match(WS, TOKENS_FOLLOWING_WS_IN_primary_source_3311) 
            if @state.backtracking == 0
              stream_WS.add(__WS197__)
            end

          end
          __IDENTIFIER198__ = match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_primary_source_3315) 
          if @state.backtracking == 0
            stream_IDENTIFIER.add(__IDENTIFIER198__)
          end
          # AST Rewrite
          # elements: IDENTIFIER, SHARPSHARP
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

            root_0 = @adaptor.create_flat_list!
            # 333:40: -> ^( SHARPSHARP IDENTIFIER )
            # at line 333:43: ^( SHARPSHARP IDENTIFIER )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(stream_SHARPSHARP.next_node, root_1)

            @adaptor.add_child(root_1, stream_IDENTIFIER.next_node)

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 2
          root_0 = @adaptor.create_flat_list!


          # at line 334:13: IDENTIFIER
          __IDENTIFIER199__ = match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_primary_source_3337)
          if @state.backtracking == 0

            tree_for_IDENTIFIER199 = @adaptor.create_with_payload!(__IDENTIFIER199__)
            @adaptor.add_child(root_0, tree_for_IDENTIFIER199)

          end

        when 3
          root_0 = @adaptor.create_flat_list!


          # at line 335:13: constant
          @state.following.push(TOKENS_FOLLOWING_constant_IN_primary_source_3351)
          constant200 = constant
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, constant200.tree)
          end

        when 4
          root_0 = @adaptor.create_flat_list!


          # at line 336:13: CKEYWORD
          __CKEYWORD201__ = match(CKEYWORD, TOKENS_FOLLOWING_CKEYWORD_IN_primary_source_3365)
          if @state.backtracking == 0

            tree_for_CKEYWORD201 = @adaptor.create_with_payload!(__CKEYWORD201__)
            @adaptor.add_child(root_0, tree_for_CKEYWORD201)

          end

        when 5
          root_0 = @adaptor.create_flat_list!


          # at line 337:13: COPERATOR
          __COPERATOR202__ = match(COPERATOR, TOKENS_FOLLOWING_COPERATOR_IN_primary_source_3379)
          if @state.backtracking == 0

            tree_for_COPERATOR202 = @adaptor.create_with_payload!(__COPERATOR202__)
            @adaptor.add_child(root_0, tree_for_COPERATOR202)

          end

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 40)
        memoize(__method__, primary_source_start_index, success) if @state.backtracking > 0

      end
      
      return return_value
    end

    MacroTextReturnValue = define_return_scope 

    # parser rule macro_text
    # 
    # (in samples/CPP.g)
    # 690:1: macro_text : ( source_text )+ -> ^( MACRO_DEFINE ( source_text )+ ) ;
    def macro_text
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 41)
      return_value = MacroTextReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      macro_text_start_index = @input.index

      root_0 = nil
      source_text203 = nil

      stream_source_text = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule source_text")
      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return return_value
        end
        # at line 691:7: ( source_text )+
        # at file 691:7: ( source_text )+
        match_count_65 = 0
        loop do
          alt_65 = 2
          look_65_0 = @input.peek(1)

          if (look_65_0 == TEXT_END || look_65_0.between?(IDENTIFIER, COMMA) || look_65_0.between?(DECIMAL_LITERAL, STRING_LITERAL) || look_65_0 == SIZEOF || look_65_0.between?(HEX_LITERAL, COPERATOR)) 
            alt_65 = 1

          end
          case alt_65
          when 1
            # at line 0:0: source_text
            @state.following.push(TOKENS_FOLLOWING_source_text_IN_macro_text_6146)
            source_text203 = source_text
            @state.following.pop
            if @state.backtracking == 0
              stream_source_text.add(source_text203.tree)
            end

          else
            match_count_65 > 0 and break
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

            eee = EarlyExit(65)


            raise eee
          end
          match_count_65 += 1
        end

        # AST Rewrite
        # elements: source_text
        # token labels: 
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 
        if @state.backtracking == 0

          return_value.tree = root_0
          stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

          root_0 = @adaptor.create_flat_list!
          # 691:20: -> ^( MACRO_DEFINE ( source_text )+ )
          # at line 691:23: ^( MACRO_DEFINE ( source_text )+ )
          root_1 = @adaptor.create_flat_list!
          root_1 = @adaptor.become_root(@adaptor.create_from_type!(MACRO_DEFINE, "MACRO_DEFINE"), root_1)

          # at line 691:38: ( source_text )+
          unless stream_source_text.has_next?
            raise ANTLR3::RewriteEarlyExit
          end

          while stream_source_text.has_next?
            @adaptor.add_child(root_1, stream_source_text.next_tree)

          end

          stream_source_text.reset

          @adaptor.add_child(root_0, root_1)



          return_value.tree = root_0

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 41)
        memoize(__method__, macro_text_start_index, success) if @state.backtracking > 0

      end
      
      return return_value
    end

    # parser rule synpred_14_cpp! (synpred14_CPP)
    # 
    # (in samples/CPP.g)
    # 109:8: synpred14_CPP : DEFINE IDENTIFIER LPAREN ( WS )? RPAREN ( macro_text )? ;
    def synpred_14_cpp!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 55)

      # at line 109:8: DEFINE IDENTIFIER LPAREN ( WS )? RPAREN ( macro_text )?
      match(DEFINE, TOKENS_FOLLOWING_DEFINE_IN_synpred14_CPP_611)
      match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_synpred14_CPP_617)
      match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_synpred14_CPP_620)
      # at line 109:43: ( WS )?
      alt_66 = 2
      look_66_0 = @input.peek(1)

      if (look_66_0 == WS) 
        alt_66 = 1
      end
      case alt_66
      when 1
        # at line 0:0: WS
        match(WS, TOKENS_FOLLOWING_WS_IN_synpred14_CPP_627)

      end
      match(RPAREN, TOKENS_FOLLOWING_RPAREN_IN_synpred14_CPP_634)
      # at line 109:59: ( macro_text )?
      alt_67 = 2
      look_67_0 = @input.peek(1)

      if (look_67_0 == TEXT_END || look_67_0.between?(IDENTIFIER, COMMA) || look_67_0.between?(DECIMAL_LITERAL, STRING_LITERAL) || look_67_0 == SIZEOF || look_67_0.between?(HEX_LITERAL, COPERATOR)) 
        alt_67 = 1
      end
      case alt_67
      when 1
        # at line 0:0: macro_text
        @state.following.push(TOKENS_FOLLOWING_macro_text_IN_synpred14_CPP_637)
        macro_text
        @state.following.pop

      end

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 55)

    end
    # parser rule synpred_22_cpp! (synpred22_CPP)
    # 
    # (in samples/CPP.g)
    # 110:8: synpred22_CPP : DEFINE mac= IDENTIFIER LPAREN ( WS )? (arg+= macro_param ( WS )? ( COMMA ( WS )* arg+= macro_param ( WS )* )* )? RPAREN ( macro_text )? ;
    def synpred_22_cpp!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 63)
      mac = nil
      list_of_arg = []
      arg = nil
      arg = nil

      # at line 110:8: DEFINE mac= IDENTIFIER LPAREN ( WS )? (arg+= macro_param ( WS )? ( COMMA ( WS )* arg+= macro_param ( WS )* )* )? RPAREN ( macro_text )?
      match(DEFINE, TOKENS_FOLLOWING_DEFINE_IN_synpred22_CPP_658)
      mac = match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_synpred22_CPP_662)
      match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_synpred22_CPP_665)
      # at line 110:38: ( WS )?
      alt_74 = 2
      look_74_0 = @input.peek(1)

      if (look_74_0 == WS) 
        alt_74 = 1
      end
      case alt_74
      when 1
        # at line 0:0: WS
        match(WS, TOKENS_FOLLOWING_WS_IN_synpred22_CPP_667)

      end
      # at line 110:42: (arg+= macro_param ( WS )? ( COMMA ( WS )* arg+= macro_param ( WS )* )* )?
      alt_79 = 2
      look_79_0 = @input.peek(1)

      if (look_79_0 == IDENTIFIER || look_79_0 == ELLIPSIS) 
        alt_79 = 1
      end
      case alt_79
      when 1
        # at line 110:43: arg+= macro_param ( WS )? ( COMMA ( WS )* arg+= macro_param ( WS )* )*
        @state.following.push(TOKENS_FOLLOWING_macro_param_IN_synpred22_CPP_673)
        arg = macro_param
        @state.following.pop
        list_of_arg << arg

        # at line 110:60: ( WS )?
        alt_75 = 2
        look_75_0 = @input.peek(1)

        if (look_75_0 == WS) 
          alt_75 = 1
        end
        case alt_75
        when 1
          # at line 0:0: WS
          match(WS, TOKENS_FOLLOWING_WS_IN_synpred22_CPP_675)

        end
        # at line 110:64: ( COMMA ( WS )* arg+= macro_param ( WS )* )*
        loop do  #loop 78
          alt_78 = 2
          look_78_0 = @input.peek(1)

          if (look_78_0 == COMMA) 
            alt_78 = 1

          end
          case alt_78
          when 1
            # at line 110:65: COMMA ( WS )* arg+= macro_param ( WS )*
            match(COMMA, TOKENS_FOLLOWING_COMMA_IN_synpred22_CPP_679)
            # at line 110:71: ( WS )*
            loop do  #loop 76
              alt_76 = 2
              look_76_0 = @input.peek(1)

              if (look_76_0 == WS) 
                alt_76 = 1

              end
              case alt_76
              when 1
                # at line 0:0: WS
                match(WS, TOKENS_FOLLOWING_WS_IN_synpred22_CPP_681)

              else
                break #loop 76
              end
            end
            @state.following.push(TOKENS_FOLLOWING_macro_param_IN_synpred22_CPP_686)
            arg = macro_param
            @state.following.pop
            list_of_arg << arg

            # at line 110:92: ( WS )*
            loop do  #loop 77
              alt_77 = 2
              look_77_0 = @input.peek(1)

              if (look_77_0 == WS) 
                alt_77 = 1

              end
              case alt_77
              when 1
                # at line 0:0: WS
                match(WS, TOKENS_FOLLOWING_WS_IN_synpred22_CPP_688)

              else
                break #loop 77
              end
            end

          else
            break #loop 78
          end
        end

      end
      match(RPAREN, TOKENS_FOLLOWING_RPAREN_IN_synpred22_CPP_695)
      # at line 110:108: ( macro_text )?
      alt_80 = 2
      look_80_0 = @input.peek(1)

      if (look_80_0 == TEXT_END || look_80_0.between?(IDENTIFIER, COMMA) || look_80_0.between?(DECIMAL_LITERAL, STRING_LITERAL) || look_80_0 == SIZEOF || look_80_0.between?(HEX_LITERAL, COPERATOR)) 
        alt_80 = 1
      end
      case alt_80
      when 1
        # at line 0:0: macro_text
        @state.following.push(TOKENS_FOLLOWING_macro_text_IN_synpred22_CPP_698)
        macro_text
        @state.following.pop

      end

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 63)

    end
    # parser rule synpred_65_cpp! (synpred65_CPP)
    # 
    # (in samples/CPP.g)
    # 240:13: synpred65_CPP : SIZEOF unary_expression ;
    def synpred_65_cpp!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 106)

      # at line 240:13: SIZEOF unary_expression
      match(SIZEOF, TOKENS_FOLLOWING_SIZEOF_IN_synpred65_CPP_2039)
      @state.following.push(TOKENS_FOLLOWING_unary_expression_IN_synpred65_CPP_2042)
      unary_expression
      @state.following.pop

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 106)

    end
    # parser rule synpred_66_cpp! (synpred66_CPP)
    # 
    # (in samples/CPP.g)
    # 241:13: synpred66_CPP : SIZEOF LPAREN type_name RPAREN ;
    def synpred_66_cpp!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 107)

      # at line 241:13: SIZEOF LPAREN type_name RPAREN
      match(SIZEOF, TOKENS_FOLLOWING_SIZEOF_IN_synpred66_CPP_2064)
      match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_synpred66_CPP_2067)
      @state.following.push(TOKENS_FOLLOWING_type_name_IN_synpred66_CPP_2069)
      type_name
      @state.following.pop
      match(RPAREN, TOKENS_FOLLOWING_RPAREN_IN_synpred66_CPP_2071)

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 107)

    end
    # parser rule synpred_75_cpp! (synpred75_CPP)
    # 
    # (in samples/CPP.g)
    # 254:13: synpred75_CPP : LPAREN type_name RPAREN unary_expression ;
    def synpred_75_cpp!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 116)

      # at line 254:13: LPAREN type_name RPAREN unary_expression
      match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_synpred75_CPP_2427)
      @state.following.push(TOKENS_FOLLOWING_type_name_IN_synpred75_CPP_2429)
      type_name
      @state.following.pop
      match(RPAREN, TOKENS_FOLLOWING_RPAREN_IN_synpred75_CPP_2431)
      @state.following.push(TOKENS_FOLLOWING_unary_expression_IN_synpred75_CPP_2434)
      unary_expression
      @state.following.pop

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 116)

    end
    # parser rule synpred_78_cpp! (synpred78_CPP)
    # 
    # (in samples/CPP.g)
    # 262:9: synpred78_CPP : s= STAR IDENTIFIER ;
    def synpred_78_cpp!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 119)
      s = nil

      # at line 262:9: s= STAR IDENTIFIER
      s = match(STAR, TOKENS_FOLLOWING_STAR_IN_synpred78_CPP_2528)
      match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_synpred78_CPP_2537)

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 119)

    end
    # parser rule synpred_82_cpp! (synpred82_CPP)
    # 
    # (in samples/CPP.g)
    # 270:9: synpred82_CPP : IDENTIFIER LPAREN ;
    def synpred_82_cpp!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 123)

      # at line 270:10: IDENTIFIER LPAREN
      match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_synpred82_CPP_2609)
      match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_synpred82_CPP_2611)

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 123)

    end
    # parser rule synpred_83_cpp! (synpred83_CPP)
    # 
    # (in samples/CPP.g)
    # 271:9: synpred83_CPP : IDENTIFIER ;
    def synpred_83_cpp!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 124)

      # at line 271:9: IDENTIFIER
      match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_synpred83_CPP_2626)

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 124)

    end
    # parser rule synpred_92_cpp! (synpred92_CPP)
    # 
    # (in samples/CPP.g)
    # 296:9: synpred92_CPP : source_expression ;
    def synpred_92_cpp!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 133)

      # at line 296:9: source_expression
      @state.following.push(TOKENS_FOLLOWING_source_expression_IN_synpred92_CPP_2812)
      source_expression
      @state.following.pop

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 133)

    end
    # parser rule synpred_94_cpp! (synpred94_CPP)
    # 
    # (in samples/CPP.g)
    # 298:9: synpred94_CPP : LPAREN ;
    def synpred_94_cpp!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 135)

      # at line 298:9: LPAREN
      match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_synpred94_CPP_2832)

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 135)

    end
    # parser rule synpred_98_cpp! (synpred98_CPP)
    # 
    # (in samples/CPP.g)
    # 304:7: synpred98_CPP : id= IDENTIFIER ( WS )? LPAREN ( WS )? RPAREN ;
    def synpred_98_cpp!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 139)
      id = nil

      # at line 304:7: id= IDENTIFIER ( WS )? LPAREN ( WS )? RPAREN
      id = match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_synpred98_CPP_2871)
      # at line 304:21: ( WS )?
      alt_81 = 2
      look_81_0 = @input.peek(1)

      if (look_81_0 == WS) 
        alt_81 = 1
      end
      case alt_81
      when 1
        # at line 0:0: WS
        match(WS, TOKENS_FOLLOWING_WS_IN_synpred98_CPP_2873)

      end
      match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_synpred98_CPP_2876)
      # at line 304:32: ( WS )?
      alt_82 = 2
      look_82_0 = @input.peek(1)

      if (look_82_0 == WS) 
        alt_82 = 1
      end
      case alt_82
      when 1
        # at line 0:0: WS
        match(WS, TOKENS_FOLLOWING_WS_IN_synpred98_CPP_2878)

      end
      match(RPAREN, TOKENS_FOLLOWING_RPAREN_IN_synpred98_CPP_2881)

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 139)

    end
    # parser rule synpred_100_cpp! (synpred100_CPP)
    # 
    # (in samples/CPP.g)
    # 305:32: synpred100_CPP : WS ;
    def synpred_100_cpp!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 141)

      # at line 305:32: WS
      match(WS, TOKENS_FOLLOWING_WS_IN_synpred100_CPP_2907)

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 141)

    end
    # parser rule synpred_103_cpp! (synpred103_CPP)
    # 
    # (in samples/CPP.g)
    # 308:42: synpred103_CPP : WS ;
    def synpred_103_cpp!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 144)

      # at line 308:42: WS
      match(WS, TOKENS_FOLLOWING_WS_IN_synpred103_CPP_2957)

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 144)

    end
    # parser rule synpred_105_cpp! (synpred105_CPP)
    # 
    # (in samples/CPP.g)
    # 311:18: synpred105_CPP : source_expression ;
    def synpred_105_cpp!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 146)

      # at line 311:18: source_expression
      @state.following.push(TOKENS_FOLLOWING_source_expression_IN_synpred105_CPP_2997)
      source_expression
      @state.following.pop

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 146)

    end
    # parser rule synpred_106_cpp! (synpred106_CPP)
    # 
    # (in samples/CPP.g)
    # 311:18: synpred106_CPP : ( source_expression )+ ;
    def synpred_106_cpp!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 147)

      # at line 311:18: ( source_expression )+
      # at file 311:18: ( source_expression )+
      match_count_85 = 0
      loop do
        alt_85 = 2
        look_85_0 = @input.peek(1)

        if (look_85_0 == TEXT_END || look_85_0.between?(IDENTIFIER, WS) || look_85_0.between?(DECIMAL_LITERAL, STRING_LITERAL) || look_85_0 == SIZEOF || look_85_0.between?(HEX_LITERAL, COPERATOR)) 
          alt_85 = 1

        end
        case alt_85
        when 1
          # at line 0:0: source_expression
          @state.following.push(TOKENS_FOLLOWING_source_expression_IN_synpred106_CPP_2997)
          source_expression
          @state.following.pop

        else
          match_count_85 > 0 and break
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          eee = EarlyExit(85)


          raise eee
        end
        match_count_85 += 1
      end


    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 147)

    end
    # parser rule synpred_108_cpp! (synpred108_CPP)
    # 
    # (in samples/CPP.g)
    # 316:13: synpred108_CPP : IDENTIFIER ( WS )? LPAREN ;
    def synpred_108_cpp!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 149)

      # at line 316:14: IDENTIFIER ( WS )? LPAREN
      match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_synpred108_CPP_3055)
      # at line 316:25: ( WS )?
      alt_86 = 2
      look_86_0 = @input.peek(1)

      if (look_86_0 == WS) 
        alt_86 = 1
      end
      case alt_86
      when 1
        # at line 0:0: WS
        match(WS, TOKENS_FOLLOWING_WS_IN_synpred108_CPP_3057)

      end
      match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_synpred108_CPP_3060)

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 149)

    end
    # parser rule synpred_110_cpp! (synpred110_CPP)
    # 
    # (in samples/CPP.g)
    # 317:13: synpred110_CPP : primary_source ( WS )? SHARPSHARP ;
    def synpred_110_cpp!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 151)

      # at line 317:14: primary_source ( WS )? SHARPSHARP
      @state.following.push(TOKENS_FOLLOWING_primary_source_IN_synpred110_CPP_3080)
      primary_source
      @state.following.pop
      # at line 317:30: ( WS )?
      alt_87 = 2
      look_87_0 = @input.peek(1)

      if (look_87_0 == WS) 
        alt_87 = 1
      end
      case alt_87
      when 1
        # at line 0:0: WS
        match(WS, TOKENS_FOLLOWING_WS_IN_synpred110_CPP_3083)

      end
      match(SHARPSHARP, TOKENS_FOLLOWING_SHARPSHARP_IN_synpred110_CPP_3086)

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 151)

    end
    # parser rule synpred_112_cpp! (synpred112_CPP)
    # 
    # (in samples/CPP.g)
    # 319:13: synpred112_CPP : primary_source ;
    def synpred_112_cpp!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 153)

      # at line 319:13: primary_source
      @state.following.push(TOKENS_FOLLOWING_primary_source_IN_synpred112_CPP_3136)
      primary_source
      @state.following.pop

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 153)

    end
    # parser rule synpred_115_cpp! (synpred115_CPP)
    # 
    # (in samples/CPP.g)
    # 322:20: synpred115_CPP : mac_args ;
    def synpred_115_cpp!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 156)

      # at line 322:20: mac_args
      @state.following.push(TOKENS_FOLLOWING_mac_args_IN_synpred115_CPP_3180)
      mac_args
      @state.following.pop

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 156)

    end
    # parser rule synpred_121_cpp! (synpred121_CPP)
    # 
    # (in samples/CPP.g)
    # 329:35: synpred121_CPP : ( WS )? SHARPSHARP ( WS )? prim+= primary_source ;
    def synpred_121_cpp!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 162)
      list_of_prim = []
      prim = nil
      prim = nil

      # at line 329:35: ( WS )? SHARPSHARP ( WS )? prim+= primary_source
      # at line 329:35: ( WS )?
      alt_89 = 2
      look_89_0 = @input.peek(1)

      if (look_89_0 == WS) 
        alt_89 = 1
      end
      case alt_89
      when 1
        # at line 0:0: WS
        match(WS, TOKENS_FOLLOWING_WS_IN_synpred121_CPP_3262)

      end
      match(SHARPSHARP, TOKENS_FOLLOWING_SHARPSHARP_IN_synpred121_CPP_3265)
      # at line 329:51: ( WS )?
      alt_90 = 2
      look_90_0 = @input.peek(1)

      if (look_90_0 == WS) 
        alt_90 = 1
      end
      case alt_90
      when 1
        # at line 0:0: WS
        match(WS, TOKENS_FOLLOWING_WS_IN_synpred121_CPP_3268)

      end
      @state.following.push(TOKENS_FOLLOWING_primary_source_IN_synpred121_CPP_3273)
      prim = primary_source
      @state.following.pop
      list_of_prim << prim


    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 162)

    end


    # - - - - - - - - - - DFA definitions - - - - - - - - - - -
    class DFA2 < ANTLR3::DFA
      EOT = unpack(11, -1)
      EOF = unpack(11, -1)
      MIN = unpack(1, 6, 10, -1)
      MAX = unpack(1, 106, 10, -1)
      ACCEPT = unpack(1, -1, 1, 1, 1, 2, 1, 3, 1, 4, 1, 5, 1, 6, 1, 7, 1, 
                      8, 1, 9, 1, 10)
      SPECIAL = unpack(11, -1)
      TRANSITION = [
        unpack(1, 7, 3, -1, 3, 3, 18, -1, 1, 2, 3, -1, 1, 9, 1, -1, 1, 8, 
               2, 4, 1, 5, 1, 6, 4, -1, 1, 1, 1, 10, 5, 2, 1, -1, 2, 2, 
               33, -1, 1, 2, 7, -1, 10, 2),
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
      
      @decision = 2
      

      def description
        <<-'__dfa_description__'.strip!
          91:5: ( DIRECTIVE | text_line | diagnostics | file_inclusion | macro_define | macro_undef | conditional_compilation | line_control | macro_execution )?
        __dfa_description__
      end
    end
    class DFA14 < ANTLR3::DFA
      EOT = unpack(18, -1)
      EOF = unpack(2, -1, 2, 4, 1, -1, 1, 4, 1, -1, 1, 4, 2, -1, 2, 4, 1, 
                   -1, 5, 4)
      MIN = unpack(1, 40, 1, 48, 2, 31, 1, -1, 1, 31, 1, 0, 1, 31, 2, -1, 
                   2, 31, 1, 0, 5, 31)
      MAX = unpack(1, 40, 1, 48, 2, 106, 1, -1, 1, 106, 1, 0, 1, 106, 2, 
                   -1, 2, 106, 1, 0, 5, 106)
      ACCEPT = unpack(4, -1, 1, 3, 3, -1, 1, 2, 1, 1, 8, -1)
      SPECIAL = unpack(6, -1, 1, 0, 5, -1, 1, 1, 5, -1)
      TRANSITION = [
        unpack(1, 1),
        unpack(1, 2),
        unpack(1, 4, 15, -1, 2, 4, 1, 3, 3, 4, 1, -1, 2, 4, 33, -1, 1, 
                4, 7, -1, 10, 4),
        unpack(1, 4, 15, -1, 1, 4, 1, 7, 1, 4, 1, 5, 1, 6, 1, 4, 1, 8, 
                2, 4, 33, -1, 1, 4, 7, -1, 10, 4),
        unpack(),
        unpack(1, 4, 15, -1, 1, 4, 1, 7, 2, 4, 1, 6, 1, 4, 1, 8, 2, 4, 
                33, -1, 1, 4, 7, -1, 10, 4),
        unpack(1, -1),
        unpack(1, 4, 15, -1, 3, 4, 1, 10, 1, 12, 1, 11, 1, 8, 2, 4, 33, 
                -1, 1, 4, 7, -1, 10, 4),
        unpack(),
        unpack(),
        unpack(1, 4, 15, -1, 4, 4, 1, 12, 1, 11, 1, -1, 2, 4, 33, -1, 1, 
                4, 7, -1, 10, 4),
        unpack(1, 4, 15, -1, 1, 4, 1, 14, 1, 4, 1, 13, 2, 4, 1, 8, 2, 4, 
                33, -1, 1, 4, 7, -1, 10, 4),
        unpack(1, -1),
        unpack(1, 4, 15, -1, 1, 4, 1, 14, 1, 4, 1, 15, 2, 4, 1, 8, 2, 4, 
                33, -1, 1, 4, 7, -1, 10, 4),
        unpack(1, 4, 15, -1, 3, 4, 1, 16, 1, 12, 1, 11, 1, 8, 2, 4, 33, 
                -1, 1, 4, 7, -1, 10, 4),
        unpack(1, 4, 15, -1, 1, 4, 1, 14, 1, 4, 1, 15, 2, 4, 1, 8, 2, 4, 
                33, -1, 1, 4, 7, -1, 10, 4),
        unpack(1, 4, 15, -1, 3, 4, 1, 17, 1, 12, 1, 11, 1, -1, 2, 4, 33, 
                -1, 1, 4, 7, -1, 10, 4),
        unpack(1, 4, 15, -1, 3, 4, 1, 17, 1, 12, 1, 11, 1, -1, 2, 4, 33, 
                -1, 1, 4, 7, -1, 10, 4)
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 14
      

      def description
        <<-'__dfa_description__'.strip!
          108:1: macro_define : ( DEFINE IDENTIFIER LPAREN ( WS )? RPAREN ( macro_text )? -> ^( MAC_FUNCTION_OBJECT IDENTIFIER ( macro_text )? ) | DEFINE mac= IDENTIFIER LPAREN ( WS )? (arg+= macro_param ( WS )? ( COMMA ( WS )* arg+= macro_param ( WS )* )* )? RPAREN ( macro_text )? -> ^( MAC_FUNCTION $mac ( $arg)+ ( macro_text )? ) | DEFINE IDENTIFIER ( macro_text )? -> ^( MAC_OBJECT IDENTIFIER ( macro_text )? ) );
        __dfa_description__
      end
    end
    class DFA40 < ANTLR3::DFA
      EOT = unpack(13, -1)
      EOF = unpack(13, -1)
      MIN = unpack(1, 48, 2, -1, 2, 48, 1, -1, 1, 48, 3, -1, 1, 49, 1, 0, 
                   1, -1)
      MAX = unpack(1, 100, 2, -1, 1, 100, 1, 49, 1, -1, 1, 100, 3, -1, 1, 
                   96, 1, 0, 1, -1)
      ACCEPT = unpack(1, -1, 1, 1, 1, 2, 2, -1, 1, 7, 1, -1, 1, 3, 1, 6, 
                      1, 5, 2, -1, 1, 4)
      SPECIAL = unpack(11, -1, 1, 0, 1, -1)
      TRANSITION = [
        unpack(2, 5, 4, -1, 2, 5, 17, -1, 1, 5, 8, -1, 3, 5, 2, -1, 1, 1, 
               1, 2, 1, 3, 1, 4, 2, 5, 4, -1, 4, 5),
        unpack(),
        unpack(),
        unpack(1, 7, 1, 6, 4, -1, 2, 7, 17, -1, 1, 7, 8, -1, 3, 7, 2, -1, 
                6, 7, 4, -1, 4, 7),
        unpack(1, 9, 1, 8),
        unpack(),
        unpack(1, 10, 1, 7, 4, -1, 2, 7, 17, -1, 1, 7, 8, -1, 3, 7, 2, 
                -1, 6, 7, 4, -1, 4, 7),
        unpack(),
        unpack(),
        unpack(),
        unpack(1, 7, 1, -1, 1, 11, 4, -1, 12, 7, 1, -1, 20, 7, 4, -1, 1, 
                7, 1, -1, 2, 7),
        unpack(1, -1),
        unpack()
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 40
      

      def description
        <<-'__dfa_description__'.strip!
          237:1: unary_expression : ( PLUSPLUS unary_expression -> ^( PLUSPLUS unary_expression ) | MINUSMINUS unary_expression -> ^( MINUSMINUS unary_expression ) | SIZEOF unary_expression -> ^( SIZEOF unary_expression ) | SIZEOF LPAREN type_name RPAREN -> ^( SIZEOF_TYPE type_name ) | DEFINED type_name -> ^( DEFINED type_name ) | DEFINED LPAREN type_name RPAREN -> ^( DEFINED type_name ) | unary_expression_not_plus_minus );
        __dfa_description__
      end
    end
    class DFA41 < ANTLR3::DFA
      EOT = unpack(11, -1)
      EOF = unpack(11, -1)
      MIN = unpack(1, 48, 6, -1, 1, 0, 3, -1)
      MAX = unpack(1, 100, 6, -1, 1, 0, 3, -1)
      ACCEPT = unpack(1, -1, 1, 1, 1, 2, 1, 3, 1, 4, 1, 5, 1, 6, 1, -1, 
                      1, 8, 1, -1, 1, 7)
      SPECIAL = unpack(7, -1, 1, 0, 3, -1)
      TRANSITION = [
        unpack(1, 8, 1, 7, 4, -1, 2, 8, 17, -1, 1, 3, 8, -1, 1, 6, 1, 5, 
               1, 4, 6, -1, 1, 1, 1, 2, 4, -1, 4, 8),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(1, -1),
        unpack(),
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
          247:1: unary_expression_not_plus_minus : ( NOT unary_expression -> ^( NOT unary_expression ) | TILDE unary_expression -> ^( TILDE unary_expression ) | AMPERSAND unary_expression -> ^( REFERANCE unary_expression ) | STAR unary_expression -> ^( POINTER_AT unary_expression ) | MINUS unary_expression -> ^( UNARY_MINUS unary_expression ) | PLUS unary_expression -> ^( UNARY_PLUS unary_expression ) | LPAREN type_name RPAREN unary_expression -> ^( TYPECAST type_name unary_expression ) | postfix_expression );
        __dfa_description__
      end
    end
    class DFA42 < ANTLR3::DFA
      EOT = unpack(10, -1)
      EOF = unpack(1, 2, 9, -1)
      MIN = unpack(1, 6, 1, 48, 6, -1, 1, 0, 1, -1)
      MAX = unpack(1, 106, 1, 100, 6, -1, 1, 0, 1, -1)
      ACCEPT = unpack(2, -1, 1, 7, 1, 1, 1, 2, 1, 4, 1, 5, 1, 6, 1, -1, 
                      1, 3)
      SPECIAL = unpack(8, -1, 1, 0, 1, -1)
      TRANSITION = [
        unpack(1, 2, 3, -1, 3, 2, 18, -1, 1, 2, 3, -1, 1, 2, 1, -1, 5, 2, 
               4, -1, 7, 2, 1, -1, 30, 2, 1, 1, 2, 2, 1, 6, 1, 7, 1, 2, 
               3, -1, 1, 3, 1, 2, 1, 4, 1, 5, 10, 2),
        unpack(1, 8, 1, 2, 4, -1, 2, 2, 17, -1, 1, 2, 8, -1, 3, 2, 2, -1, 
                6, 2, 4, -1, 4, 2),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(1, -1),
        unpack()
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 42
      

      def description
        <<-'__dfa_description__'.strip!
          ()* loopback of 260:5: (l= LSQUARE assignment_expression RSQUARE | DOT IDENTIFIER | s= STAR IDENTIFIER | POINTERTO IDENTIFIER | p= PLUSPLUS | m= MINUSMINUS )*
        __dfa_description__
      end
    end
    class DFA46 < ANTLR3::DFA
      EOT = unpack(17, -1)
      EOF = unpack(17, -1)
      MIN = unpack(1, 31, 8, -1, 1, 0, 2, -1, 1, 0, 4, -1)
      MAX = unpack(1, 106, 8, -1, 1, 0, 2, -1, 1, 0, 4, -1)
      ACCEPT = unpack(1, -1, 1, 1, 11, -1, 1, 2, 1, 4, 1, 3, 1, 5)
      SPECIAL = unpack(9, -1, 1, 0, 2, -1, 1, 1, 4, -1)
      TRANSITION = [
        unpack(1, 1, 16, -1, 1, 1, 1, 9, 1, 12, 1, 14, 1, 13, 1, -1, 2, 
               1, 33, -1, 1, 1, 7, -1, 10, 1),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(1, -1),
        unpack(),
        unpack(),
        unpack(1, -1),
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
      
      @decision = 46
      

      def description
        <<-'__dfa_description__'.strip!
          295:1: source_text : ( source_expression | COMMA | LPAREN | RPAREN | WS );
        __dfa_description__
      end
    end
    class DFA59 < ANTLR3::DFA
      EOT = unpack(16, -1)
      EOF = unpack(16, -1)
      MIN = unpack(1, 31, 5, 0, 10, -1)
      MAX = unpack(1, 106, 5, 0, 10, -1)
      ACCEPT = unpack(6, -1, 1, 3, 1, 5, 1, 6, 1, 7, 1, 8, 1, 9, 1, 10, 
                      1, 1, 1, 2, 1, 4)
      SPECIAL = unpack(1, -1, 1, 0, 1, 1, 1, 2, 1, 3, 1, 4, 10, -1)
      TRANSITION = [
        unpack(1, 11, 16, -1, 1, 1, 1, 9, 1, 12, 3, -1, 2, 3, 33, -1, 1, 
               8, 7, -1, 4, 3, 1, 6, 1, 7, 1, 10, 1, 2, 1, 4, 1, 5),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
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
        unpack()
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 59
      

      def description
        <<-'__dfa_description__'.strip!
          315:1: source_expression : ( ( IDENTIFIER ( WS )? LPAREN )=> macro_expansion | ( primary_source ( WS )? SHARPSHARP )=> concatenate | STRINGIFICATION IDENTIFIER -> ^( STRINGIFICATION IDENTIFIER ) | primary_source | STRING_OP | SIZEOF | LPAREN ( mac_args )? RPAREN -> ^( TEXT_GROUP ( mac_args )? ) | SEMICOLON | TEXT_END | WS );
        __dfa_description__
      end
    end


    private

    def initialize_dfas
      super rescue nil
      @dfa2 = DFA2.new(self, 2)
      @dfa14 = DFA14.new(self, 14) do |s|
        case s
        when 0
          look_14_6 = @input.peek
          index_14_6 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_14_cpp!))
            s = 9
          elsif (syntactic_predicate?(:synpred_22_cpp!))
            s = 8
          elsif (true)
            s = 4
          end
           
          @input.seek(index_14_6)

        when 1
          look_14_12 = @input.peek
          index_14_12 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_22_cpp!))
            s = 8
          elsif (true)
            s = 4
          end
           
          @input.seek(index_14_12)

        end
        
        if s < 0
          @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
          nva = ANTLR3::Error::NoViableAlternative.new(@dfa14.description, 14, s, input)
          @dfa14.error(nva)
          raise nva
        end
        
        s
      end
      @dfa40 = DFA40.new(self, 40) do |s|
        case s
        when 0
          look_40_11 = @input.peek
          index_40_11 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_65_cpp!))
            s = 7
          elsif (syntactic_predicate?(:synpred_66_cpp!))
            s = 12
          end
           
          @input.seek(index_40_11)

        end
        
        if s < 0
          @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
          nva = ANTLR3::Error::NoViableAlternative.new(@dfa40.description, 40, s, input)
          @dfa40.error(nva)
          raise nva
        end
        
        s
      end
      @dfa41 = DFA41.new(self, 41) do |s|
        case s
        when 0
          look_41_7 = @input.peek
          index_41_7 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_75_cpp!))
            s = 10
          elsif (true)
            s = 8
          end
           
          @input.seek(index_41_7)

        end
        
        if s < 0
          @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
          nva = ANTLR3::Error::NoViableAlternative.new(@dfa41.description, 41, s, input)
          @dfa41.error(nva)
          raise nva
        end
        
        s
      end
      @dfa42 = DFA42.new(self, 42) do |s|
        case s
        when 0
          look_42_8 = @input.peek
          index_42_8 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_78_cpp!))
            s = 9
          elsif (true)
            s = 2
          end
           
          @input.seek(index_42_8)

        end
        
        if s < 0
          @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
          nva = ANTLR3::Error::NoViableAlternative.new(@dfa42.description, 42, s, input)
          @dfa42.error(nva)
          raise nva
        end
        
        s
      end
      @dfa46 = DFA46.new(self, 46) do |s|
        case s
        when 0
          look_46_9 = @input.peek
          index_46_9 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_92_cpp!))
            s = 1
          elsif (syntactic_predicate?(:synpred_94_cpp!))
            s = 15
          end
           
          @input.seek(index_46_9)

        when 1
          look_46_12 = @input.peek
          index_46_12 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_92_cpp!))
            s = 1
          elsif (true)
            s = 16
          end
           
          @input.seek(index_46_12)

        end
        
        if s < 0
          @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
          nva = ANTLR3::Error::NoViableAlternative.new(@dfa46.description, 46, s, input)
          @dfa46.error(nva)
          raise nva
        end
        
        s
      end
      @dfa59 = DFA59.new(self, 59) do |s|
        case s
        when 0
          look_59_1 = @input.peek
          index_59_1 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_108_cpp!))
            s = 13
          elsif (syntactic_predicate?(:synpred_110_cpp!))
            s = 14
          elsif (syntactic_predicate?(:synpred_112_cpp!))
            s = 15
          end
           
          @input.seek(index_59_1)

        when 1
          look_59_2 = @input.peek
          index_59_2 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_110_cpp!))
            s = 14
          elsif (syntactic_predicate?(:synpred_112_cpp!))
            s = 15
          end
           
          @input.seek(index_59_2)

        when 2
          look_59_3 = @input.peek
          index_59_3 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_110_cpp!))
            s = 14
          elsif (syntactic_predicate?(:synpred_112_cpp!))
            s = 15
          end
           
          @input.seek(index_59_3)

        when 3
          look_59_4 = @input.peek
          index_59_4 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_110_cpp!))
            s = 14
          elsif (syntactic_predicate?(:synpred_112_cpp!))
            s = 15
          end
           
          @input.seek(index_59_4)

        when 4
          look_59_5 = @input.peek
          index_59_5 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_110_cpp!))
            s = 14
          elsif (syntactic_predicate?(:synpred_112_cpp!))
            s = 15
          end
           
          @input.seek(index_59_5)

        end
        
        if s < 0
          @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
          nva = ANTLR3::Error::NoViableAlternative.new(@dfa59.description, 59, s, input)
          @dfa59.error(nva)
          raise nva
        end
        
        s
      end

    end
    TOKENS_FOLLOWING_proc_line_IN_preprocess_379 = Set[1, 6, 10, 11, 12, 31, 35, 37, 38, 39, 40, 41, 46, 47, 48, 49, 50, 51, 52, 54, 55, 89, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106]
    TOKENS_FOLLOWING_DIRECTIVE_IN_proc_line_409 = Set[47]
    TOKENS_FOLLOWING_text_line_IN_proc_line_423 = Set[47]
    TOKENS_FOLLOWING_diagnostics_IN_proc_line_437 = Set[47]
    TOKENS_FOLLOWING_file_inclusion_IN_proc_line_451 = Set[47]
    TOKENS_FOLLOWING_macro_define_IN_proc_line_465 = Set[47]
    TOKENS_FOLLOWING_macro_undef_IN_proc_line_479 = Set[47]
    TOKENS_FOLLOWING_conditional_compilation_IN_proc_line_493 = Set[47]
    TOKENS_FOLLOWING_line_control_IN_proc_line_507 = Set[47]
    TOKENS_FOLLOWING_macro_execution_IN_proc_line_521 = Set[47]
    TOKENS_FOLLOWING_End_IN_proc_line_535 = Set[1]
    TOKENS_FOLLOWING_INCLUDE_IN_file_inclusion_558 = Set[1]
    TOKENS_FOLLOWING_INCLUDE_EXPAND_IN_file_inclusion_586 = Set[1]
    TOKENS_FOLLOWING_DEFINE_IN_macro_define_611 = Set[48]
    TOKENS_FOLLOWING_IDENTIFIER_IN_macro_define_617 = Set[49]
    TOKENS_FOLLOWING_LPAREN_IN_macro_define_620 = Set[50, 51]
    TOKENS_FOLLOWING_WS_IN_macro_define_627 = Set[51]
    TOKENS_FOLLOWING_RPAREN_IN_macro_define_634 = Set[1, 31, 48, 49, 50, 51, 52, 54, 55, 89, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106]
    TOKENS_FOLLOWING_macro_text_IN_macro_define_637 = Set[1]
    TOKENS_FOLLOWING_DEFINE_IN_macro_define_658 = Set[48]
    TOKENS_FOLLOWING_IDENTIFIER_IN_macro_define_662 = Set[49]
    TOKENS_FOLLOWING_LPAREN_IN_macro_define_665 = Set[48, 50, 51, 53]
    TOKENS_FOLLOWING_WS_IN_macro_define_667 = Set[48, 51, 53]
    TOKENS_FOLLOWING_macro_param_IN_macro_define_673 = Set[50, 51, 52]
    TOKENS_FOLLOWING_WS_IN_macro_define_675 = Set[51, 52]
    TOKENS_FOLLOWING_COMMA_IN_macro_define_679 = Set[48, 50, 53]
    TOKENS_FOLLOWING_WS_IN_macro_define_681 = Set[48, 50, 53]
    TOKENS_FOLLOWING_macro_param_IN_macro_define_686 = Set[50, 51, 52]
    TOKENS_FOLLOWING_WS_IN_macro_define_688 = Set[50, 51, 52]
    TOKENS_FOLLOWING_RPAREN_IN_macro_define_695 = Set[1, 31, 48, 49, 50, 51, 52, 54, 55, 89, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106]
    TOKENS_FOLLOWING_macro_text_IN_macro_define_698 = Set[1]
    TOKENS_FOLLOWING_DEFINE_IN_macro_define_726 = Set[48]
    TOKENS_FOLLOWING_IDENTIFIER_IN_macro_define_732 = Set[1, 31, 48, 49, 50, 51, 52, 54, 55, 89, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106]
    TOKENS_FOLLOWING_macro_text_IN_macro_define_735 = Set[1]
    TOKENS_FOLLOWING_IDENTIFIER_IN_macro_param_771 = Set[53]
    TOKENS_FOLLOWING_ELLIPSIS_IN_macro_param_773 = Set[1]
    TOKENS_FOLLOWING_ELLIPSIS_IN_macro_param_794 = Set[1]
    TOKENS_FOLLOWING_IDENTIFIER_IN_macro_param_808 = Set[1]
    TOKENS_FOLLOWING_EXEC_MACRO_IN_macro_execution_830 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_ifexpression_IN_macro_execution_841 = Set[1]
    TOKENS_FOLLOWING_UNDEF_IN_macro_undef_866 = Set[48]
    TOKENS_FOLLOWING_IDENTIFIER_IN_macro_undef_872 = Set[1]
    TOKENS_FOLLOWING_IF_IN_conditional_compilation_905 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_ifexpression_IN_conditional_compilation_917 = Set[6, 10, 11, 12, 31, 35, 37, 38, 39, 40, 41, 46, 47, 48, 49, 50, 51, 52, 54, 55, 89, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106]
    TOKENS_FOLLOWING_statement_IN_conditional_compilation_922 = Set[7, 8, 9]
    TOKENS_FOLLOWING_ELIF_IN_conditional_compilation_931 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_ifexpression_IN_conditional_compilation_938 = Set[6, 10, 11, 12, 31, 35, 37, 38, 39, 40, 41, 46, 47, 48, 49, 50, 51, 52, 54, 55, 89, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106]
    TOKENS_FOLLOWING_statement_IN_conditional_compilation_943 = Set[7, 8, 9]
    TOKENS_FOLLOWING_ELSE_IN_conditional_compilation_956 = Set[6, 10, 11, 12, 31, 35, 37, 38, 39, 40, 41, 46, 47, 48, 49, 50, 51, 52, 54, 55, 89, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106]
    TOKENS_FOLLOWING_statement_IN_conditional_compilation_961 = Set[9]
    TOKENS_FOLLOWING_ENDIF_IN_conditional_compilation_971 = Set[1]
    TOKENS_FOLLOWING_LINE_IN_line_control_1025 = Set[54]
    TOKENS_FOLLOWING_DECIMAL_LITERAL_IN_line_control_1032 = Set[1, 55]
    TOKENS_FOLLOWING_STRING_LITERAL_IN_line_control_1043 = Set[1]
    TOKENS_FOLLOWING_WARNING_IN_diagnostics_1084 = Set[1]
    TOKENS_FOLLOWING_ERROR_IN_diagnostics_1104 = Set[1]
    TOKENS_FOLLOWING_PRAGMA_IN_diagnostics_1126 = Set[1]
    TOKENS_FOLLOWING_source_text_IN_text_line_1150 = Set[1, 31, 48, 49, 50, 51, 52, 54, 55, 89, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106]
    TOKENS_FOLLOWING_proc_line_IN_statement_1182 = Set[1, 6, 10, 11, 12, 31, 35, 37, 38, 39, 40, 41, 46, 47, 48, 49, 50, 51, 52, 54, 55, 89, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106]
    TOKENS_FOLLOWING_IDENTIFIER_IN_type_name_1200 = Set[1]
    TOKENS_FOLLOWING_assignment_expression_IN_ifexpression_1222 = Set[1]
    TOKENS_FOLLOWING_conditional_expression_IN_assignment_expression_1247 = Set[1, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66]
    TOKENS_FOLLOWING_ASSIGNEQUAL_IN_assignment_expression_1259 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_TIMESEQUAL_IN_assignment_expression_1268 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_DIVIDEEQUAL_IN_assignment_expression_1280 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_MODEQUAL_IN_assignment_expression_1299 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_PLUSEQUAL_IN_assignment_expression_1311 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_MINUSEQUAL_IN_assignment_expression_1324 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_SHIFTLEFTEQUAL_IN_assignment_expression_1344 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_SHIFTRIGHTEQUAL_IN_assignment_expression_1350 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_BITWISEANDEQUAL_IN_assignment_expression_1357 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_BITWISEXOREQUAL_IN_assignment_expression_1372 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_BITWISEOREQUAL_IN_assignment_expression_1377 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_assignment_expression_IN_assignment_expression_1390 = Set[1]
    TOKENS_FOLLOWING_logical_or_expression_IN_conditional_expression_1422 = Set[1, 67]
    TOKENS_FOLLOWING_QUESTIONMARK_IN_conditional_expression_1438 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_assignment_expression_IN_conditional_expression_1441 = Set[68]
    TOKENS_FOLLOWING_COLON_IN_conditional_expression_1443 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_conditional_expression_IN_conditional_expression_1445 = Set[1]
    TOKENS_FOLLOWING_logical_and_expression_IN_logical_or_expression_1471 = Set[1, 69]
    TOKENS_FOLLOWING_OR_IN_logical_or_expression_1474 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_logical_and_expression_IN_logical_or_expression_1477 = Set[1, 69]
    TOKENS_FOLLOWING_inclusive_or_expression_IN_logical_and_expression_1502 = Set[1, 70]
    TOKENS_FOLLOWING_AND_IN_logical_and_expression_1505 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_inclusive_or_expression_IN_logical_and_expression_1508 = Set[1, 70]
    TOKENS_FOLLOWING_exclusive_or_expression_IN_inclusive_or_expression_1533 = Set[1, 71]
    TOKENS_FOLLOWING_BITWISEOR_IN_inclusive_or_expression_1536 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_exclusive_or_expression_IN_inclusive_or_expression_1539 = Set[1, 71]
    TOKENS_FOLLOWING_and_expression_IN_exclusive_or_expression_1564 = Set[1, 72]
    TOKENS_FOLLOWING_BITWISEXOR_IN_exclusive_or_expression_1567 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_and_expression_IN_exclusive_or_expression_1570 = Set[1, 72]
    TOKENS_FOLLOWING_equality_expression_IN_and_expression_1595 = Set[1, 73]
    TOKENS_FOLLOWING_AMPERSAND_IN_and_expression_1598 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_equality_expression_IN_and_expression_1601 = Set[1, 73]
    TOKENS_FOLLOWING_relational_expression_IN_equality_expression_1626 = Set[1, 74, 75]
    TOKENS_FOLLOWING_NOTEQUAL_IN_equality_expression_1630 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_EQUAL_IN_equality_expression_1635 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_relational_expression_IN_equality_expression_1639 = Set[1, 74, 75]
    TOKENS_FOLLOWING_shift_expression_IN_relational_expression_1664 = Set[1, 76, 77, 78, 79]
    TOKENS_FOLLOWING_LESSTHAN_IN_relational_expression_1702 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_GREATERTHAN_IN_relational_expression_1729 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_LESSTHANOREQUALTO_IN_relational_expression_1756 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_GREATERTHANOREQUALTO_IN_relational_expression_1783 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_shift_expression_IN_relational_expression_1812 = Set[1, 76, 77, 78, 79]
    TOKENS_FOLLOWING_additive_expression_IN_shift_expression_1859 = Set[1, 80, 81]
    TOKENS_FOLLOWING_SHIFTLEFT_IN_shift_expression_1863 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_SHIFTRIGHT_IN_shift_expression_1868 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_additive_expression_IN_shift_expression_1872 = Set[1, 80, 81]
    TOKENS_FOLLOWING_multiplicative_expression_IN_additive_expression_1897 = Set[1, 82, 83]
    TOKENS_FOLLOWING_PLUS_IN_additive_expression_1901 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_MINUS_IN_additive_expression_1906 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_multiplicative_expression_IN_additive_expression_1910 = Set[1, 82, 83]
    TOKENS_FOLLOWING_unary_expression_IN_multiplicative_expression_1935 = Set[1, 84, 85, 86]
    TOKENS_FOLLOWING_STAR_IN_multiplicative_expression_1939 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_DIVIDE_IN_multiplicative_expression_1944 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_MOD_IN_multiplicative_expression_1949 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_unary_expression_IN_multiplicative_expression_1954 = Set[1, 84, 85, 86]
    TOKENS_FOLLOWING_PLUSPLUS_IN_unary_expression_1979 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_unary_expression_IN_unary_expression_1988 = Set[1]
    TOKENS_FOLLOWING_MINUSMINUS_IN_unary_expression_2010 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_unary_expression_IN_unary_expression_2017 = Set[1]
    TOKENS_FOLLOWING_SIZEOF_IN_unary_expression_2039 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_unary_expression_IN_unary_expression_2042 = Set[1]
    TOKENS_FOLLOWING_SIZEOF_IN_unary_expression_2064 = Set[49]
    TOKENS_FOLLOWING_LPAREN_IN_unary_expression_2067 = Set[48]
    TOKENS_FOLLOWING_type_name_IN_unary_expression_2069 = Set[51]
    TOKENS_FOLLOWING_RPAREN_IN_unary_expression_2071 = Set[1]
    TOKENS_FOLLOWING_DEFINED_IN_unary_expression_2098 = Set[48]
    TOKENS_FOLLOWING_type_name_IN_unary_expression_2100 = Set[1]
    TOKENS_FOLLOWING_DEFINED_IN_unary_expression_2144 = Set[49]
    TOKENS_FOLLOWING_LPAREN_IN_unary_expression_2146 = Set[48]
    TOKENS_FOLLOWING_type_name_IN_unary_expression_2148 = Set[51]
    TOKENS_FOLLOWING_RPAREN_IN_unary_expression_2151 = Set[1]
    TOKENS_FOLLOWING_unary_expression_not_plus_minus_IN_unary_expression_2179 = Set[1]
    TOKENS_FOLLOWING_NOT_IN_unary_expression_not_plus_minus_2202 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_unary_expression_IN_unary_expression_not_plus_minus_2216 = Set[1]
    TOKENS_FOLLOWING_TILDE_IN_unary_expression_not_plus_minus_2245 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_unary_expression_IN_unary_expression_not_plus_minus_2257 = Set[1]
    TOKENS_FOLLOWING_AMPERSAND_IN_unary_expression_not_plus_minus_2292 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_unary_expression_IN_unary_expression_not_plus_minus_2300 = Set[1]
    TOKENS_FOLLOWING_STAR_IN_unary_expression_not_plus_minus_2331 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_unary_expression_IN_unary_expression_not_plus_minus_2344 = Set[1]
    TOKENS_FOLLOWING_MINUS_IN_unary_expression_not_plus_minus_2374 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_unary_expression_IN_unary_expression_not_plus_minus_2377 = Set[1]
    TOKENS_FOLLOWING_PLUS_IN_unary_expression_not_plus_minus_2400 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_unary_expression_IN_unary_expression_not_plus_minus_2404 = Set[1]
    TOKENS_FOLLOWING_LPAREN_IN_unary_expression_not_plus_minus_2427 = Set[48]
    TOKENS_FOLLOWING_type_name_IN_unary_expression_not_plus_minus_2429 = Set[51]
    TOKENS_FOLLOWING_RPAREN_IN_unary_expression_not_plus_minus_2431 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_unary_expression_IN_unary_expression_not_plus_minus_2434 = Set[1]
    TOKENS_FOLLOWING_postfix_expression_IN_unary_expression_not_plus_minus_2458 = Set[1]
    TOKENS_FOLLOWING_primary_expression_IN_postfix_expression_2477 = Set[1, 84, 87, 88, 93, 95, 96]
    TOKENS_FOLLOWING_LSQUARE_IN_postfix_expression_2489 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_assignment_expression_IN_postfix_expression_2494 = Set[94]
    TOKENS_FOLLOWING_RSQUARE_IN_postfix_expression_2496 = Set[1, 84, 87, 88, 93, 95, 96]
    TOKENS_FOLLOWING_DOT_IN_postfix_expression_2507 = Set[48]
    TOKENS_FOLLOWING_IDENTIFIER_IN_postfix_expression_2516 = Set[1, 84, 87, 88, 93, 95, 96]
    TOKENS_FOLLOWING_STAR_IN_postfix_expression_2528 = Set[48]
    TOKENS_FOLLOWING_IDENTIFIER_IN_postfix_expression_2537 = Set[1, 84, 87, 88, 93, 95, 96]
    TOKENS_FOLLOWING_POINTERTO_IN_postfix_expression_2547 = Set[48]
    TOKENS_FOLLOWING_IDENTIFIER_IN_postfix_expression_2550 = Set[1, 84, 87, 88, 93, 95, 96]
    TOKENS_FOLLOWING_PLUSPLUS_IN_postfix_expression_2562 = Set[1, 84, 87, 88, 93, 95, 96]
    TOKENS_FOLLOWING_MINUSMINUS_IN_postfix_expression_2579 = Set[1, 84, 87, 88, 93, 95, 96]
    TOKENS_FOLLOWING_function_call_IN_primary_expression_2616 = Set[1]
    TOKENS_FOLLOWING_IDENTIFIER_IN_primary_expression_2626 = Set[1]
    TOKENS_FOLLOWING_constant_IN_primary_expression_2636 = Set[1]
    TOKENS_FOLLOWING_LPAREN_IN_primary_expression_2646 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_assignment_expression_IN_primary_expression_2649 = Set[51]
    TOKENS_FOLLOWING_RPAREN_IN_primary_expression_2651 = Set[1]
    TOKENS_FOLLOWING_IDENTIFIER_IN_function_call_2680 = Set[49]
    TOKENS_FOLLOWING_LPAREN_IN_function_call_2682 = Set[48, 49, 51, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_arg_list_IN_function_call_2684 = Set[51]
    TOKENS_FOLLOWING_RPAREN_IN_function_call_2687 = Set[1]
    TOKENS_FOLLOWING_assignment_expression_IN_arg_list_2718 = Set[1, 52]
    TOKENS_FOLLOWING_COMMA_IN_arg_list_2721 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_assignment_expression_IN_arg_list_2723 = Set[1, 52]
    TOKENS_FOLLOWING_set_IN_constant_0 = Set[1]
    TOKENS_FOLLOWING_source_expression_IN_source_text_2812 = Set[1]
    TOKENS_FOLLOWING_COMMA_IN_source_text_2822 = Set[1]
    TOKENS_FOLLOWING_LPAREN_IN_source_text_2832 = Set[1]
    TOKENS_FOLLOWING_RPAREN_IN_source_text_2842 = Set[1]
    TOKENS_FOLLOWING_WS_IN_source_text_2852 = Set[1]
    TOKENS_FOLLOWING_IDENTIFIER_IN_macro_expansion_2871 = Set[49, 50]
    TOKENS_FOLLOWING_WS_IN_macro_expansion_2873 = Set[49]
    TOKENS_FOLLOWING_LPAREN_IN_macro_expansion_2876 = Set[50, 51]
    TOKENS_FOLLOWING_WS_IN_macro_expansion_2878 = Set[51]
    TOKENS_FOLLOWING_RPAREN_IN_macro_expansion_2881 = Set[1]
    TOKENS_FOLLOWING_IDENTIFIER_IN_macro_expansion_2900 = Set[49, 50]
    TOKENS_FOLLOWING_WS_IN_macro_expansion_2902 = Set[49]
    TOKENS_FOLLOWING_LPAREN_IN_macro_expansion_2905 = Set[31, 48, 49, 50, 52, 54, 55, 89, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106]
    TOKENS_FOLLOWING_WS_IN_macro_expansion_2907 = Set[31, 48, 49, 50, 52, 54, 55, 89, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106]
    TOKENS_FOLLOWING_mac_args_IN_macro_expansion_2910 = Set[50, 51]
    TOKENS_FOLLOWING_WS_IN_macro_expansion_2912 = Set[51]
    TOKENS_FOLLOWING_RPAREN_IN_macro_expansion_2915 = Set[1]
    TOKENS_FOLLOWING_m_arg_IN_mac_args_2948 = Set[1, 50, 52]
    TOKENS_FOLLOWING_WS_IN_mac_args_2952 = Set[52]
    TOKENS_FOLLOWING_COMMA_IN_mac_args_2955 = Set[31, 48, 49, 50, 52, 54, 55, 89, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106]
    TOKENS_FOLLOWING_WS_IN_mac_args_2957 = Set[31, 48, 49, 50, 52, 54, 55, 89, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106]
    TOKENS_FOLLOWING_m_arg_IN_mac_args_2962 = Set[1, 50, 52]
    TOKENS_FOLLOWING_source_expression_IN_m_arg_2997 = Set[1, 31, 48, 49, 50, 54, 55, 89, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106]
    TOKENS_FOLLOWING_macro_expansion_IN_source_expression_3065 = Set[1]
    TOKENS_FOLLOWING_concatenate_IN_source_expression_3093 = Set[1]
    TOKENS_FOLLOWING_STRINGIFICATION_IN_source_expression_3107 = Set[48]
    TOKENS_FOLLOWING_IDENTIFIER_IN_source_expression_3109 = Set[1]
    TOKENS_FOLLOWING_primary_source_IN_source_expression_3136 = Set[1]
    TOKENS_FOLLOWING_STRING_OP_IN_source_expression_3150 = Set[1]
    TOKENS_FOLLOWING_SIZEOF_IN_source_expression_3164 = Set[1]
    TOKENS_FOLLOWING_LPAREN_IN_source_expression_3178 = Set[31, 48, 49, 50, 51, 52, 54, 55, 89, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106]
    TOKENS_FOLLOWING_mac_args_IN_source_expression_3180 = Set[51]
    TOKENS_FOLLOWING_RPAREN_IN_source_expression_3183 = Set[1]
    TOKENS_FOLLOWING_SEMICOLON_IN_source_expression_3206 = Set[1]
    TOKENS_FOLLOWING_TEXT_END_IN_source_expression_3220 = Set[1]
    TOKENS_FOLLOWING_WS_IN_source_expression_3234 = Set[1]
    TOKENS_FOLLOWING_primary_source_IN_concatenate_3259 = Set[50, 104]
    TOKENS_FOLLOWING_WS_IN_concatenate_3262 = Set[104]
    TOKENS_FOLLOWING_SHARPSHARP_IN_concatenate_3265 = Set[48, 50, 54, 55, 97, 98, 99, 100, 104, 105, 106]
    TOKENS_FOLLOWING_WS_IN_concatenate_3268 = Set[48, 54, 55, 97, 98, 99, 100, 104, 105, 106]
    TOKENS_FOLLOWING_primary_source_IN_concatenate_3273 = Set[1, 50, 104]
    TOKENS_FOLLOWING_SHARPSHARP_IN_primary_source_3309 = Set[48, 50]
    TOKENS_FOLLOWING_WS_IN_primary_source_3311 = Set[48]
    TOKENS_FOLLOWING_IDENTIFIER_IN_primary_source_3315 = Set[1]
    TOKENS_FOLLOWING_IDENTIFIER_IN_primary_source_3337 = Set[1]
    TOKENS_FOLLOWING_constant_IN_primary_source_3351 = Set[1]
    TOKENS_FOLLOWING_CKEYWORD_IN_primary_source_3365 = Set[1]
    TOKENS_FOLLOWING_COPERATOR_IN_primary_source_3379 = Set[1]
    TOKENS_FOLLOWING_source_text_IN_macro_text_6146 = Set[1, 31, 48, 49, 50, 51, 52, 54, 55, 89, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106]
    TOKENS_FOLLOWING_DEFINE_IN_synpred14_CPP_611 = Set[48]
    TOKENS_FOLLOWING_IDENTIFIER_IN_synpred14_CPP_617 = Set[49]
    TOKENS_FOLLOWING_LPAREN_IN_synpred14_CPP_620 = Set[50, 51]
    TOKENS_FOLLOWING_WS_IN_synpred14_CPP_627 = Set[51]
    TOKENS_FOLLOWING_RPAREN_IN_synpred14_CPP_634 = Set[1, 31, 48, 49, 50, 51, 52, 54, 55, 89, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106]
    TOKENS_FOLLOWING_macro_text_IN_synpred14_CPP_637 = Set[1]
    TOKENS_FOLLOWING_DEFINE_IN_synpred22_CPP_658 = Set[48]
    TOKENS_FOLLOWING_IDENTIFIER_IN_synpred22_CPP_662 = Set[49]
    TOKENS_FOLLOWING_LPAREN_IN_synpred22_CPP_665 = Set[48, 50, 51, 53]
    TOKENS_FOLLOWING_WS_IN_synpred22_CPP_667 = Set[48, 51, 53]
    TOKENS_FOLLOWING_macro_param_IN_synpred22_CPP_673 = Set[50, 51, 52]
    TOKENS_FOLLOWING_WS_IN_synpred22_CPP_675 = Set[51, 52]
    TOKENS_FOLLOWING_COMMA_IN_synpred22_CPP_679 = Set[48, 50, 53]
    TOKENS_FOLLOWING_WS_IN_synpred22_CPP_681 = Set[48, 50, 53]
    TOKENS_FOLLOWING_macro_param_IN_synpred22_CPP_686 = Set[50, 51, 52]
    TOKENS_FOLLOWING_WS_IN_synpred22_CPP_688 = Set[50, 51, 52]
    TOKENS_FOLLOWING_RPAREN_IN_synpred22_CPP_695 = Set[1, 31, 48, 49, 50, 51, 52, 54, 55, 89, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106]
    TOKENS_FOLLOWING_macro_text_IN_synpred22_CPP_698 = Set[1]
    TOKENS_FOLLOWING_SIZEOF_IN_synpred65_CPP_2039 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_unary_expression_IN_synpred65_CPP_2042 = Set[1]
    TOKENS_FOLLOWING_SIZEOF_IN_synpred66_CPP_2064 = Set[49]
    TOKENS_FOLLOWING_LPAREN_IN_synpred66_CPP_2067 = Set[48]
    TOKENS_FOLLOWING_type_name_IN_synpred66_CPP_2069 = Set[51]
    TOKENS_FOLLOWING_RPAREN_IN_synpred66_CPP_2071 = Set[1]
    TOKENS_FOLLOWING_LPAREN_IN_synpred75_CPP_2427 = Set[48]
    TOKENS_FOLLOWING_type_name_IN_synpred75_CPP_2429 = Set[51]
    TOKENS_FOLLOWING_RPAREN_IN_synpred75_CPP_2431 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_unary_expression_IN_synpred75_CPP_2434 = Set[1]
    TOKENS_FOLLOWING_STAR_IN_synpred78_CPP_2528 = Set[48]
    TOKENS_FOLLOWING_IDENTIFIER_IN_synpred78_CPP_2537 = Set[1]
    TOKENS_FOLLOWING_IDENTIFIER_IN_synpred82_CPP_2609 = Set[49]
    TOKENS_FOLLOWING_LPAREN_IN_synpred82_CPP_2611 = Set[1]
    TOKENS_FOLLOWING_IDENTIFIER_IN_synpred83_CPP_2626 = Set[1]
    TOKENS_FOLLOWING_source_expression_IN_synpred92_CPP_2812 = Set[1]
    TOKENS_FOLLOWING_LPAREN_IN_synpred94_CPP_2832 = Set[1]
    TOKENS_FOLLOWING_IDENTIFIER_IN_synpred98_CPP_2871 = Set[49, 50]
    TOKENS_FOLLOWING_WS_IN_synpred98_CPP_2873 = Set[49]
    TOKENS_FOLLOWING_LPAREN_IN_synpred98_CPP_2876 = Set[50, 51]
    TOKENS_FOLLOWING_WS_IN_synpred98_CPP_2878 = Set[51]
    TOKENS_FOLLOWING_RPAREN_IN_synpred98_CPP_2881 = Set[1]
    TOKENS_FOLLOWING_WS_IN_synpred100_CPP_2907 = Set[1]
    TOKENS_FOLLOWING_WS_IN_synpred103_CPP_2957 = Set[1]
    TOKENS_FOLLOWING_source_expression_IN_synpred105_CPP_2997 = Set[1]
    TOKENS_FOLLOWING_source_expression_IN_synpred106_CPP_2997 = Set[1, 31, 48, 49, 50, 54, 55, 89, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106]
    TOKENS_FOLLOWING_IDENTIFIER_IN_synpred108_CPP_3055 = Set[49, 50]
    TOKENS_FOLLOWING_WS_IN_synpred108_CPP_3057 = Set[49]
    TOKENS_FOLLOWING_LPAREN_IN_synpred108_CPP_3060 = Set[1]
    TOKENS_FOLLOWING_primary_source_IN_synpred110_CPP_3080 = Set[50, 104]
    TOKENS_FOLLOWING_WS_IN_synpred110_CPP_3083 = Set[104]
    TOKENS_FOLLOWING_SHARPSHARP_IN_synpred110_CPP_3086 = Set[1]
    TOKENS_FOLLOWING_primary_source_IN_synpred112_CPP_3136 = Set[1]
    TOKENS_FOLLOWING_mac_args_IN_synpred115_CPP_3180 = Set[1]
    TOKENS_FOLLOWING_WS_IN_synpred121_CPP_3262 = Set[104]
    TOKENS_FOLLOWING_SHARPSHARP_IN_synpred121_CPP_3265 = Set[48, 50, 54, 55, 97, 98, 99, 100, 104, 105, 106]
    TOKENS_FOLLOWING_WS_IN_synpred121_CPP_3268 = Set[48, 54, 55, 97, 98, 99, 100, 104, 105, 106]
    TOKENS_FOLLOWING_primary_source_IN_synpred121_CPP_3273 = Set[1]

  end # class Parser < ANTLR3::Parser

  at_exit { Parser.main(ARGV) } if __FILE__ == $0
end

