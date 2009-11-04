#!/usr/bin/env ruby
# 
# generated using ANTLR Version: 3.1.3 Sep 23, 2009 20:15:10
# input grammar file: ./Cpp.g
# generated at: 2009-09-24 09:30:09

this_directory = File.expand_path( File.dirname( __FILE__ ) )
$:.unshift( this_directory ) unless $:.include?( this_directory )

require 'antlr3'

require 'antlr3/tree'


module Cpp
  # TokenData defines all of the token type integer values
  # as constants, which will be included in all 
  # ANTLR-generated recognizers.
  const_defined?(:TokenData) or TokenData = ANTLR3::TokenScheme.new

  module TokenData

    # define the token constants
    TokenData.define_tokens(:STAR => 84, :LSQUARE => 93, :FloatTypeSuffix => 119, 
                            :LETTER => 109, :MOD => 86, :TYPECAST => 19, :POINTER => 25, 
                            :BITWISEXOR => 72, :MINUSMINUS => 88, :ASSIGNEQUAL => 56, 
                            :NOT => 91, :EOF => -1, :UNARY_PLUS => 17, :NOTEQUAL => 74, 
                            :COPERATOR => 106, :MINUSEQUAL => 61, :RPAREN => 51, 
                            :MAC_FUNCTION => 43, :STRING_LITERAL => 55, :FLOATING_POINT_LITERAL => 100, 
                            :DOTMBR => 113, :INCLUDE => 38, :ENDIF => 9, :ARGS => 28, 
                            :COMMENT => 122, :REFERANCE => 18, :DIVIDE => 85, :TEXT_END => 31, 
                            :GREATERTHAN => 77, :LINE_COMMENT => 123, :MAC_FUNCTION_OBJECT => 44, 
                            :IntegerTypeSuffix => 117, :POINTERTOMBR => 112, :DEFINED => 90, 
                            :ELSE => 8, :CHARACTER_LITERAL => 99, :ELLIPSIS => 53, 
                            :LCURLY => 110, :EXPR_DEF => 14, :UNARY_MINUS => 16, 
                            :SEMICOLON => 103, :BITWISEXOREQUAL => 65, :ERROR => 11, 
                            :METHOD_CALL => 27, :ELIF => 7, :WS => 50, :CKEYWORD => 105, 
                            :SHARPSHARP => 104, :SHIFTLEFTEQUAL => 62, :OR => 69, 
                            :SIZEOF => 89, :INDEX_OP => 21, :EXPR_GROUP => 26, :DIVIDEEQUAL => 58, 
                            :LESSTHANOREQUALTO => 78, :INCLUDE_FILE => 107, :WARNING => 10, 
                            :EscapeSequence => 115, :DECIMAL_LITERAL => 54, :EXP_ARGS => 33, 
                            :STRING_OP => 102, :End => 47, :ESCAPED_NEWLINE => 124, 
                            :MAC_OBJECT => 42, :PLUSPLUS => 87, :PRAGMA => 12, :INCLUDE_EXPAND => 39, 
                            :SHIFTLEFT => 80, :Exponent => 118, :STRINGIFICATION => 101, 
                            :AND => 70, :DEFINE => 40, :EXPAND => 32, :POINTER_AT => 24, 
                            :POST_DEC => 23, :DIRECTIVE => 46, :HexDigit => 116, 
                            :LPAREN => 49, :IF => 6, :PLUSEQUAL => 60, :GREATERTHANOREQUALTO => 79, 
                            :EXPR => 13, :MODEQUAL => 59, :SCOPE => 114, :COMMA => 52, 
                            :IDENTIFIER => 48, :EQUAL => 75, :SHIFTRIGHT => 81, 
                            :QUESTIONMARK => 67, :TILDE => 92, :PLUS => 82, :HEX_LITERAL => 97, 
                            :EXP_ARG => 34, :SHIFTRIGHTEQUAL => 63, :UNDEF => 41, 
                            :DOT => 95, :MACRO_DEFINE => 45, :LESSTHAN => 76, :EXEC_MACRO => 35, 
                            :IFNDEF => 5, :TEXT_GROUP => 30, :TIMESEQUAL => 57, 
                            :OCTAL_LITERAL => 98, :AMPERSAND => 73, :IFDEF => 4, 
                            :BITWISEANDEQUAL => 64, :RSQUARE => 94, :MINUS => 83, 
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
    TokenData.register_names("IFDEF", "IFNDEF", "IF", "ELIF", "ELSE", "ENDIF", "WARNING", 
                             "ERROR", "PRAGMA", "EXPR", "EXPR_DEF", "EXPR_NDEF", 
                             "UNARY_MINUS", "UNARY_PLUS", "REFERANCE", "TYPECAST", 
                             "SIZEOF_TYPE", "INDEX_OP", "POST_INC", "POST_DEC", 
                             "POINTER_AT", "POINTER", "EXPR_GROUP", "METHOD_CALL", 
                             "ARGS", "TEXT_LINE", "TEXT_GROUP", "TEXT_END", "EXPAND", 
                             "EXP_ARGS", "EXP_ARG", "EXEC_MACRO", "CONCATENATE", 
                             "LINE", "INCLUDE", "INCLUDE_EXPAND", "DEFINE", "UNDEF", 
                             "MAC_OBJECT", "MAC_FUNCTION", "MAC_FUNCTION_OBJECT", 
                             "MACRO_DEFINE", "DIRECTIVE", "End", "IDENTIFIER", "LPAREN", 
                             "WS", "RPAREN", "COMMA", "ELLIPSIS", "DECIMAL_LITERAL", 
                             "STRING_LITERAL", "ASSIGNEQUAL", "TIMESEQUAL", "DIVIDEEQUAL", 
                             "MODEQUAL", "PLUSEQUAL", "MINUSEQUAL", "SHIFTLEFTEQUAL", 
                             "SHIFTRIGHTEQUAL", "BITWISEANDEQUAL", "BITWISEXOREQUAL", 
                             "BITWISEOREQUAL", "QUESTIONMARK", "COLON", "OR", "AND", 
                             "BITWISEOR", "BITWISEXOR", "AMPERSAND", "NOTEQUAL", 
                             "EQUAL", "LESSTHAN", "GREATERTHAN", "LESSTHANOREQUALTO", 
                             "GREATERTHANOREQUALTO", "SHIFTLEFT", "SHIFTRIGHT", 
                             "PLUS", "MINUS", "STAR", "DIVIDE", "MOD", "PLUSPLUS", 
                             "MINUSMINUS", "SIZEOF", "DEFINED", "NOT", "TILDE", 
                             "LSQUARE", "RSQUARE", "DOT", "POINTERTO", "HEX_LITERAL", 
                             "OCTAL_LITERAL", "CHARACTER_LITERAL", "FLOATING_POINT_LITERAL", 
                             "STRINGIFICATION", "STRING_OP", "SEMICOLON", "SHARPSHARP", 
                             "CKEYWORD", "COPERATOR", "INCLUDE_FILE", "MACRO_TEXT", 
                             "LETTER", "LCURLY", "RCURLY", "POINTERTOMBR", "DOTMBR", 
                             "SCOPE", "EscapeSequence", "HexDigit", "IntegerTypeSuffix", 
                             "Exponent", "FloatTypeSuffix", "OctalEscape", "UnicodeEscape", 
                             "COMMENT", "LINE_COMMENT", "ESCAPED_NEWLINE")
  end

  class Parser < ANTLR3::Parser

    include TokenData

    generated_using("./Cpp.g", "3.1.3 Sep 23, 2009 20:15:10")

    def initialize(input, options = {})
      super(input, options)
    @state.rule_memory = {}


      # - - - - @init action - - - -



      @adaptor = ANTLR3::AST::CommonTreeAdaptor.new(token_class)

    end
    def self.return_scope_members
      super.push(:tree)
    end

    attr_accessor :adaptor

    # - - - - @members action - - - -


    PreprocessReturnValue = define_return_scope 

    # parser rule preprocess
    # 
    # (in ./Cpp.g)
    # 88:1: preprocess : ( proc_line )+ ;
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


        # at line 89:19: ( proc_line )+
        # at file 89:19: ( proc_line )+
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
            @state.following.push(TOKENS_FOLLOWING_proc_line_IN_preprocess_384)
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
    # (in ./Cpp.g)
    # 92:1: proc_line : ( DIRECTIVE | text_line | diagnostics | file_inclusion | macro_define | macro_undef | conditional_compilation | line_control | macro_execution )? End ;
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


        # at line 94:17: ( DIRECTIVE | text_line | diagnostics | file_inclusion | macro_define | macro_undef | conditional_compilation | line_control | macro_execution )? End
        # at line 94:17: ( DIRECTIVE | text_line | diagnostics | file_inclusion | macro_define | macro_undef | conditional_compilation | line_control | macro_execution )?
        alt_2 = 10
        alt_2 = @dfa2.predict(@input)
        case alt_2
        when 1
          # at line 94:25: DIRECTIVE
          __DIRECTIVE2__ = match(DIRECTIVE, TOKENS_FOLLOWING_DIRECTIVE_IN_proc_line_450)
          if @state.backtracking == 0

            tree_for_DIRECTIVE2 = @adaptor.create_with_payload!(__DIRECTIVE2__)
            @adaptor.add_child(root_0, tree_for_DIRECTIVE2)

          end

        when 2
          # at line 95:25: text_line
          @state.following.push(TOKENS_FOLLOWING_text_line_IN_proc_line_476)
          text_line3 = text_line
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, text_line3.tree)
          end

        when 3
          # at line 96:25: diagnostics
          @state.following.push(TOKENS_FOLLOWING_diagnostics_IN_proc_line_502)
          diagnostics4 = diagnostics
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, diagnostics4.tree)
          end

        when 4
          # at line 97:25: file_inclusion
          @state.following.push(TOKENS_FOLLOWING_file_inclusion_IN_proc_line_528)
          file_inclusion5 = file_inclusion
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, file_inclusion5.tree)
          end

        when 5
          # at line 98:25: macro_define
          @state.following.push(TOKENS_FOLLOWING_macro_define_IN_proc_line_554)
          macro_define6 = macro_define
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, macro_define6.tree)
          end

        when 6
          # at line 99:25: macro_undef
          @state.following.push(TOKENS_FOLLOWING_macro_undef_IN_proc_line_580)
          macro_undef7 = macro_undef
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, macro_undef7.tree)
          end

        when 7
          # at line 100:25: conditional_compilation
          @state.following.push(TOKENS_FOLLOWING_conditional_compilation_IN_proc_line_606)
          conditional_compilation8 = conditional_compilation
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, conditional_compilation8.tree)
          end

        when 8
          # at line 101:25: line_control
          @state.following.push(TOKENS_FOLLOWING_line_control_IN_proc_line_632)
          line_control9 = line_control
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, line_control9.tree)
          end

        when 9
          # at line 102:25: macro_execution
          @state.following.push(TOKENS_FOLLOWING_macro_execution_IN_proc_line_658)
          macro_execution10 = macro_execution
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, macro_execution10.tree)
          end

        end
        __End11__ = match(End, TOKENS_FOLLOWING_End_IN_proc_line_684)
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
    # (in ./Cpp.g)
    # 106:1: file_inclusion : ( INCLUDE -> ^( INCLUDE ) | INCLUDE_EXPAND -> ^( INCLUDE_EXPAND ) );
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
        # at line 107:17: ( INCLUDE -> ^( INCLUDE ) | INCLUDE_EXPAND -> ^( INCLUDE_EXPAND ) )
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
          # at line 107:25: INCLUDE
          __INCLUDE12__ = match(INCLUDE, TOKENS_FOLLOWING_INCLUDE_IN_file_inclusion_731) 
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

            stream_return_value = return_value ? ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule return_value", return_value.tree) : ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "token return_value", nil)


            root_0 = @adaptor.create_flat_list!
            # 107:41: -> ^( INCLUDE )
            # at line 107:44: ^( INCLUDE )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(stream_INCLUDE.next_node, root_1)

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 2
          # at line 108:25: INCLUDE_EXPAND
          __INCLUDE_EXPAND13__ = match(INCLUDE_EXPAND, TOKENS_FOLLOWING_INCLUDE_EXPAND_IN_file_inclusion_771) 
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

            stream_return_value = return_value ? ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule return_value", return_value.tree) : ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "token return_value", nil)


            root_0 = @adaptor.create_flat_list!
            # 108:41: -> ^( INCLUDE_EXPAND )
            # at line 108:44: ^( INCLUDE_EXPAND )
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
    # (in ./Cpp.g)
    # 111:1: macro_define : ( DEFINE IDENTIFIER LPAREN ( WS )? RPAREN ( macro_text )? -> ^( MAC_FUNCTION_OBJECT IDENTIFIER ( macro_text )? ) | DEFINE mac= IDENTIFIER LPAREN ( WS )? (arg+= macro_param ( WS )? ( COMMA ( WS )* arg+= macro_param ( WS )* )* )? RPAREN ( macro_text )? -> ^( MAC_FUNCTION $mac ( $arg)+ ( macro_text )? ) | DEFINE IDENTIFIER ( macro_text )? -> ^( MAC_OBJECT IDENTIFIER ( macro_text )? ) );
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
        # at line 112:17: ( DEFINE IDENTIFIER LPAREN ( WS )? RPAREN ( macro_text )? -> ^( MAC_FUNCTION_OBJECT IDENTIFIER ( macro_text )? ) | DEFINE mac= IDENTIFIER LPAREN ( WS )? (arg+= macro_param ( WS )? ( COMMA ( WS )* arg+= macro_param ( WS )* )* )? RPAREN ( macro_text )? -> ^( MAC_FUNCTION $mac ( $arg)+ ( macro_text )? ) | DEFINE IDENTIFIER ( macro_text )? -> ^( MAC_OBJECT IDENTIFIER ( macro_text )? ) )
        alt_14 = 3
        alt_14 = @dfa14.predict(@input)
        case alt_14
        when 1
          # at line 112:20: DEFINE IDENTIFIER LPAREN ( WS )? RPAREN ( macro_text )?
          __DEFINE14__ = match(DEFINE, TOKENS_FOLLOWING_DEFINE_IN_macro_define_820) 
          if @state.backtracking == 0
            stream_DEFINE.add(__DEFINE14__)
          end
          __IDENTIFIER15__ = match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_macro_define_826) 
          if @state.backtracking == 0
            stream_IDENTIFIER.add(__IDENTIFIER15__)
          end
          __LPAREN16__ = match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_macro_define_829) 
          if @state.backtracking == 0
            stream_LPAREN.add(__LPAREN16__)
          end
          # at line 112:55: ( WS )?
          alt_4 = 2
          look_4_0 = @input.peek(1)

          if (look_4_0 == WS) 
            alt_4 = 1
          end
          case alt_4
          when 1
            # at line 0:0: WS
            __WS17__ = match(WS, TOKENS_FOLLOWING_WS_IN_macro_define_836) 
            if @state.backtracking == 0
              stream_WS.add(__WS17__)
            end

          end
          __RPAREN18__ = match(RPAREN, TOKENS_FOLLOWING_RPAREN_IN_macro_define_843) 
          if @state.backtracking == 0
            stream_RPAREN.add(__RPAREN18__)
          end
          # at line 112:71: ( macro_text )?
          alt_5 = 2
          look_5_0 = @input.peek(1)

          if (look_5_0 == TEXT_END || look_5_0.between?(IDENTIFIER, COMMA) || look_5_0.between?(DECIMAL_LITERAL, STRING_LITERAL) || look_5_0 == SIZEOF || look_5_0.between?(HEX_LITERAL, COPERATOR)) 
            alt_5 = 1
          end
          case alt_5
          when 1
            # at line 0:0: macro_text
            @state.following.push(TOKENS_FOLLOWING_macro_text_IN_macro_define_846)
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

            stream_return_value = return_value ? ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule return_value", return_value.tree) : ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "token return_value", nil)


            root_0 = @adaptor.create_flat_list!
            # 112:83: -> ^( MAC_FUNCTION_OBJECT IDENTIFIER ( macro_text )? )
            # at line 112:86: ^( MAC_FUNCTION_OBJECT IDENTIFIER ( macro_text )? )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(@adaptor.create_from_type!(MAC_FUNCTION_OBJECT, "MAC_FUNCTION_OBJECT"), root_1)

            @adaptor.add_child(root_1, stream_IDENTIFIER.next_node)
            # at line 112:119: ( macro_text )?
            if stream_macro_text.has_next?
              @adaptor.add_child(root_1, stream_macro_text.next_tree)

            end

            stream_macro_text.reset();

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 2
          # at line 113:20: DEFINE mac= IDENTIFIER LPAREN ( WS )? (arg+= macro_param ( WS )? ( COMMA ( WS )* arg+= macro_param ( WS )* )* )? RPAREN ( macro_text )?
          __DEFINE20__ = match(DEFINE, TOKENS_FOLLOWING_DEFINE_IN_macro_define_879) 
          if @state.backtracking == 0
            stream_DEFINE.add(__DEFINE20__)
          end
          mac = match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_macro_define_883) 
          if @state.backtracking == 0
            stream_IDENTIFIER.add(mac)
          end
          __LPAREN21__ = match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_macro_define_886) 
          if @state.backtracking == 0
            stream_LPAREN.add(__LPAREN21__)
          end
          # at line 113:50: ( WS )?
          alt_6 = 2
          look_6_0 = @input.peek(1)

          if (look_6_0 == WS) 
            alt_6 = 1
          end
          case alt_6
          when 1
            # at line 0:0: WS
            __WS22__ = match(WS, TOKENS_FOLLOWING_WS_IN_macro_define_888) 
            if @state.backtracking == 0
              stream_WS.add(__WS22__)
            end

          end
          # at line 113:54: (arg+= macro_param ( WS )? ( COMMA ( WS )* arg+= macro_param ( WS )* )* )?
          alt_11 = 2
          look_11_0 = @input.peek(1)

          if (look_11_0 == IDENTIFIER || look_11_0 == ELLIPSIS) 
            alt_11 = 1
          end
          case alt_11
          when 1
            # at line 113:55: arg+= macro_param ( WS )? ( COMMA ( WS )* arg+= macro_param ( WS )* )*
            @state.following.push(TOKENS_FOLLOWING_macro_param_IN_macro_define_894)
            arg = macro_param
            @state.following.pop
            if @state.backtracking == 0
              stream_macro_param.add(arg.tree)
            end
            list_of_arg << arg.tree

            # at line 113:72: ( WS )?
            alt_7 = 2
            look_7_0 = @input.peek(1)

            if (look_7_0 == WS) 
              alt_7 = 1
            end
            case alt_7
            when 1
              # at line 0:0: WS
              __WS23__ = match(WS, TOKENS_FOLLOWING_WS_IN_macro_define_896) 
              if @state.backtracking == 0
                stream_WS.add(__WS23__)
              end

            end
            # at line 113:76: ( COMMA ( WS )* arg+= macro_param ( WS )* )*
            loop do  #loop 10
              alt_10 = 2
              look_10_0 = @input.peek(1)

              if (look_10_0 == COMMA) 
                alt_10 = 1

              end
              case alt_10
              when 1
                # at line 113:77: COMMA ( WS )* arg+= macro_param ( WS )*
                __COMMA24__ = match(COMMA, TOKENS_FOLLOWING_COMMA_IN_macro_define_900) 
                if @state.backtracking == 0
                  stream_COMMA.add(__COMMA24__)
                end
                # at line 113:83: ( WS )*
                loop do  #loop 8
                  alt_8 = 2
                  look_8_0 = @input.peek(1)

                  if (look_8_0 == WS) 
                    alt_8 = 1

                  end
                  case alt_8
                  when 1
                    # at line 0:0: WS
                    __WS25__ = match(WS, TOKENS_FOLLOWING_WS_IN_macro_define_902) 
                    if @state.backtracking == 0
                      stream_WS.add(__WS25__)
                    end

                  else
                    break #loop 8
                  end
                end
                @state.following.push(TOKENS_FOLLOWING_macro_param_IN_macro_define_907)
                arg = macro_param
                @state.following.pop
                if @state.backtracking == 0
                  stream_macro_param.add(arg.tree)
                end
                list_of_arg << arg.tree

                # at line 113:104: ( WS )*
                loop do  #loop 9
                  alt_9 = 2
                  look_9_0 = @input.peek(1)

                  if (look_9_0 == WS) 
                    alt_9 = 1

                  end
                  case alt_9
                  when 1
                    # at line 0:0: WS
                    __WS26__ = match(WS, TOKENS_FOLLOWING_WS_IN_macro_define_909) 
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
          __RPAREN27__ = match(RPAREN, TOKENS_FOLLOWING_RPAREN_IN_macro_define_916) 
          if @state.backtracking == 0
            stream_RPAREN.add(__RPAREN27__)
          end
          # at line 113:120: ( macro_text )?
          alt_12 = 2
          look_12_0 = @input.peek(1)

          if (look_12_0 == TEXT_END || look_12_0.between?(IDENTIFIER, COMMA) || look_12_0.between?(DECIMAL_LITERAL, STRING_LITERAL) || look_12_0 == SIZEOF || look_12_0.between?(HEX_LITERAL, COPERATOR)) 
            alt_12 = 1
          end
          case alt_12
          when 1
            # at line 0:0: macro_text
            @state.following.push(TOKENS_FOLLOWING_macro_text_IN_macro_define_919)
            macro_text28 = macro_text
            @state.following.pop
            if @state.backtracking == 0
              stream_macro_text.add(macro_text28.tree)
            end

          end
          # AST Rewrite
          # elements: macro_text, mac, arg
          # token labels: mac
          # rule labels: return_value
          # token list labels: 
          # rule list labels: arg
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_mac = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token mac", mac)

            stream_return_value = return_value ? ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule return_value", return_value.tree) : ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "token return_value", nil)

            stream_arg = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "token arg", list_of_arg)
            root_0 = @adaptor.create_flat_list!
            # 113:132: -> ^( MAC_FUNCTION $mac ( $arg)+ ( macro_text )? )
            # at line 113:135: ^( MAC_FUNCTION $mac ( $arg)+ ( macro_text )? )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(@adaptor.create_from_type!(MAC_FUNCTION, "MAC_FUNCTION"), root_1)

            @adaptor.add_child(root_1, stream_mac.next_node)
            # at line 113:156: ( $arg)+
            unless stream_arg.has_next?
              raise ANTLR3::RewriteEarlyExit
            end

            while stream_arg.has_next?
              @adaptor.add_child(root_1, stream_arg.next_tree)

            end

            stream_arg.reset
            # at line 113:162: ( macro_text )?
            if stream_macro_text.has_next?
              @adaptor.add_child(root_1, stream_macro_text.next_tree)

            end

            stream_macro_text.reset();

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 3
          # at line 114:20: DEFINE IDENTIFIER ( macro_text )?
          __DEFINE29__ = match(DEFINE, TOKENS_FOLLOWING_DEFINE_IN_macro_define_959) 
          if @state.backtracking == 0
            stream_DEFINE.add(__DEFINE29__)
          end
          __IDENTIFIER30__ = match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_macro_define_965) 
          if @state.backtracking == 0
            stream_IDENTIFIER.add(__IDENTIFIER30__)
          end
          # at line 114:43: ( macro_text )?
          alt_13 = 2
          look_13_0 = @input.peek(1)

          if (look_13_0 == TEXT_END || look_13_0.between?(IDENTIFIER, COMMA) || look_13_0.between?(DECIMAL_LITERAL, STRING_LITERAL) || look_13_0 == SIZEOF || look_13_0.between?(HEX_LITERAL, COPERATOR)) 
            alt_13 = 1
          end
          case alt_13
          when 1
            # at line 0:0: macro_text
            @state.following.push(TOKENS_FOLLOWING_macro_text_IN_macro_define_968)
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

            stream_return_value = return_value ? ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule return_value", return_value.tree) : ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "token return_value", nil)


            root_0 = @adaptor.create_flat_list!
            # 114:56: -> ^( MAC_OBJECT IDENTIFIER ( macro_text )? )
            # at line 114:59: ^( MAC_OBJECT IDENTIFIER ( macro_text )? )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(@adaptor.create_from_type!(MAC_OBJECT, "MAC_OBJECT"), root_1)

            @adaptor.add_child(root_1, stream_IDENTIFIER.next_node)
            # at line 114:83: ( macro_text )?
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
    # (in ./Cpp.g)
    # 117:1: macro_param : ( IDENTIFIER ELLIPSIS -> ^( ELLIPSIS IDENTIFIER ) | ELLIPSIS | IDENTIFIER );
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
        # at line 118:17: ( IDENTIFIER ELLIPSIS -> ^( ELLIPSIS IDENTIFIER ) | ELLIPSIS | IDENTIFIER )
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
          # at line 118:25: IDENTIFIER ELLIPSIS
          __IDENTIFIER32__ = match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_macro_param_1028) 
          if @state.backtracking == 0
            stream_IDENTIFIER.add(__IDENTIFIER32__)
          end
          __ELLIPSIS33__ = match(ELLIPSIS, TOKENS_FOLLOWING_ELLIPSIS_IN_macro_param_1030) 
          if @state.backtracking == 0
            stream_ELLIPSIS.add(__ELLIPSIS33__)
          end
          # AST Rewrite
          # elements: ELLIPSIS, IDENTIFIER
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0

            stream_return_value = return_value ? ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule return_value", return_value.tree) : ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "token return_value", nil)


            root_0 = @adaptor.create_flat_list!
            # 118:45: -> ^( ELLIPSIS IDENTIFIER )
            # at line 118:47: ^( ELLIPSIS IDENTIFIER )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(stream_ELLIPSIS.next_node, root_1)

            @adaptor.add_child(root_1, stream_IDENTIFIER.next_node)

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 2
          root_0 = @adaptor.create_flat_list!


          # at line 119:25: ELLIPSIS
          __ELLIPSIS34__ = match(ELLIPSIS, TOKENS_FOLLOWING_ELLIPSIS_IN_macro_param_1063)
          if @state.backtracking == 0

            tree_for_ELLIPSIS34 = @adaptor.create_with_payload!(__ELLIPSIS34__)
            @adaptor.add_child(root_0, tree_for_ELLIPSIS34)

          end

        when 3
          root_0 = @adaptor.create_flat_list!


          # at line 120:25: IDENTIFIER
          __IDENTIFIER35__ = match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_macro_param_1089)
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
    # (in ./Cpp.g)
    # 123:1: macro_execution : EXEC_MACRO ifexpression -> ^( EXEC_MACRO ifexpression ) ;
    def macro_execution
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 6)
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
        # at line 124:25: EXEC_MACRO ifexpression
        __EXEC_MACRO36__ = match(EXEC_MACRO, TOKENS_FOLLOWING_EXEC_MACRO_IN_macro_execution_1136) 
        if @state.backtracking == 0
          stream_EXEC_MACRO.add(__EXEC_MACRO36__)
        end
        @state.following.push(TOKENS_FOLLOWING_ifexpression_IN_macro_execution_1138)
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

          stream_return_value = return_value ? ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule return_value", return_value.tree) : ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "token return_value", nil)


          root_0 = @adaptor.create_flat_list!
          # 124:49: -> ^( EXEC_MACRO ifexpression )
          # at line 124:52: ^( EXEC_MACRO ifexpression )
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

      end
      
      return return_value
    end

    MacroUndefReturnValue = define_return_scope 

    # parser rule macro_undef
    # 
    # (in ./Cpp.g)
    # 127:1: macro_undef : UNDEF mac= IDENTIFIER -> ^( UNDEF IDENTIFIER ) ;
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
        # at line 128:25: UNDEF mac= IDENTIFIER
        __UNDEF38__ = match(UNDEF, TOKENS_FOLLOWING_UNDEF_IN_macro_undef_1193) 
        if @state.backtracking == 0
          stream_UNDEF.add(__UNDEF38__)
        end
        mac = match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_macro_undef_1199) 
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

          stream_return_value = return_value ? ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule return_value", return_value.tree) : ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "token return_value", nil)


          root_0 = @adaptor.create_flat_list!
          # 128:49: -> ^( UNDEF IDENTIFIER )
          # at line 128:52: ^( UNDEF IDENTIFIER )
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
    # (in ./Cpp.g)
    # 131:1: conditional_compilation : IF ifexp+= ifexpression ifstmt+= statement ( ELIF ifexp+= ifexpression ifstmt+= statement )* ( ELSE elsestmt= statement )? ENDIF -> ^( IF ( $ifexp $ifstmt)+ ( ELSE $elsestmt)? ) ;
    def conditional_compilation
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 8)
      return_value = ConditionalCompilationReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      conditional_compilation_start_index = @input.index

      root_0 = nil
      __IF39__ = nil
      __ELIF40__ = nil
      __ELSE41__ = nil
      __ENDIF42__ = nil
      list_of_ifexp = []
      list_of_ifstmt = []
      elsestmt = nil
      ifexp = nil
      ifstmt = nil
      ifexp = nil
      ifstmt = nil

      tree_for_IF39 = nil
      tree_for_ELIF40 = nil
      tree_for_ELSE41 = nil
      tree_for_ENDIF42 = nil
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
        # at line 132:25: IF ifexp+= ifexpression ifstmt+= statement ( ELIF ifexp+= ifexpression ifstmt+= statement )* ( ELSE elsestmt= statement )? ENDIF
        __IF39__ = match(IF, TOKENS_FOLLOWING_IF_IN_conditional_compilation_1255) 
        if @state.backtracking == 0
          stream_IF.add(__IF39__)
        end
        @state.following.push(TOKENS_FOLLOWING_ifexpression_IN_conditional_compilation_1263)
        ifexp = ifexpression
        @state.following.pop
        if @state.backtracking == 0
          stream_ifexpression.add(ifexp.tree)
        end
        list_of_ifexp << ifexp.tree

        @state.following.push(TOKENS_FOLLOWING_statement_IN_conditional_compilation_1268)
        ifstmt = statement
        @state.following.pop
        if @state.backtracking == 0
          stream_statement.add(ifstmt.tree)
        end
        list_of_ifstmt << ifstmt.tree

        # at line 133:24: ( ELIF ifexp+= ifexpression ifstmt+= statement )*
        loop do  #loop 16
          alt_16 = 2
          look_16_0 = @input.peek(1)

          if (look_16_0 == ELIF) 
            alt_16 = 1

          end
          case alt_16
          when 1
            # at line 133:25: ELIF ifexp+= ifexpression ifstmt+= statement
            __ELIF40__ = match(ELIF, TOKENS_FOLLOWING_ELIF_IN_conditional_compilation_1294) 
            if @state.backtracking == 0
              stream_ELIF.add(__ELIF40__)
            end
            @state.following.push(TOKENS_FOLLOWING_ifexpression_IN_conditional_compilation_1300)
            ifexp = ifexpression
            @state.following.pop
            if @state.backtracking == 0
              stream_ifexpression.add(ifexp.tree)
            end
            list_of_ifexp << ifexp.tree

            @state.following.push(TOKENS_FOLLOWING_statement_IN_conditional_compilation_1305)
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
        # at line 134:24: ( ELSE elsestmt= statement )?
        alt_17 = 2
        look_17_0 = @input.peek(1)

        if (look_17_0 == ELSE) 
          alt_17 = 1
        end
        case alt_17
        when 1
          # at line 134:25: ELSE elsestmt= statement
          __ELSE41__ = match(ELSE, TOKENS_FOLLOWING_ELSE_IN_conditional_compilation_1335) 
          if @state.backtracking == 0
            stream_ELSE.add(__ELSE41__)
          end
          @state.following.push(TOKENS_FOLLOWING_statement_IN_conditional_compilation_1340)
          elsestmt = statement
          @state.following.pop
          if @state.backtracking == 0
            stream_statement.add(elsestmt.tree)
          end

        end
        __ENDIF42__ = match(ENDIF, TOKENS_FOLLOWING_ENDIF_IN_conditional_compilation_1367) 
        if @state.backtracking == 0
          stream_ENDIF.add(__ENDIF42__)
        end
        # AST Rewrite
        # elements: ELSE, IF, ifexp, elsestmt, ifstmt
        # token labels: 
        # rule labels: elsestmt, return_value
        # token list labels: 
        # rule list labels: ifstmt, ifexp
        # wildcard labels: 
        if @state.backtracking == 0

          return_value.tree = root_0

          stream_elsestmt = elsestmt ? ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule elsestmt", elsestmt.tree) : ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "token elsestmt", nil)


          stream_return_value = return_value ? ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule return_value", return_value.tree) : ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "token return_value", nil)

          stream_ifstmt = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "token ifstmt", list_of_ifstmt)
          stream_ifexp = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "token ifexp", list_of_ifexp)
          root_0 = @adaptor.create_flat_list!
          # 136:24: -> ^( IF ( $ifexp $ifstmt)+ ( ELSE $elsestmt)? )
          # at line 136:28: ^( IF ( $ifexp $ifstmt)+ ( ELSE $elsestmt)? )
          root_1 = @adaptor.create_flat_list!
          root_1 = @adaptor.become_root(stream_IF.next_node, root_1)

          # at line 136:33: ( $ifexp $ifstmt)+
          unless stream_ifexp.has_next? || stream_ifstmt.has_next?
            raise ANTLR3::RewriteEarlyExit
          end

          while stream_ifexp.has_next? || stream_ifstmt.has_next?
            @adaptor.add_child(root_1, stream_ifexp.next_tree)
            @adaptor.add_child(root_1, stream_ifstmt.next_tree)

          end

          stream_ifexp.reset
          stream_ifstmt.reset
          # at line 136:51: ( ELSE $elsestmt)?
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

      end
      
      return return_value
    end

    LineControlReturnValue = define_return_scope 

    # parser rule line_control
    # 
    # (in ./Cpp.g)
    # 139:1: line_control : LINE n= DECIMAL_LITERAL (theFile= STRING_LITERAL )? -> ^( LINE $n ( $theFile)? ) ;
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
      __LINE43__ = nil

      tree_for_n = nil
      tree_for_theFile = nil
      tree_for_LINE43 = nil
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
        # at line 140:25: LINE n= DECIMAL_LITERAL (theFile= STRING_LITERAL )?
        __LINE43__ = match(LINE, TOKENS_FOLLOWING_LINE_IN_line_control_1462) 
        if @state.backtracking == 0
          stream_LINE.add(__LINE43__)
        end
        n = match(DECIMAL_LITERAL, TOKENS_FOLLOWING_DECIMAL_LITERAL_IN_line_control_1469) 
        if @state.backtracking == 0
          stream_DECIMAL_LITERAL.add(n)
        end
        # at line 140:57: (theFile= STRING_LITERAL )?
        alt_18 = 2
        look_18_0 = @input.peek(1)

        if (look_18_0 == STRING_LITERAL) 
          alt_18 = 1
        end
        case alt_18
        when 1
          # at line 140:58: theFile= STRING_LITERAL
          theFile = match(STRING_LITERAL, TOKENS_FOLLOWING_STRING_LITERAL_IN_line_control_1480) 
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
          stream_theFile = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token theFile", theFile)
          stream_n = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token n", n)

          stream_return_value = return_value ? ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule return_value", return_value.tree) : ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "token return_value", nil)


          root_0 = @adaptor.create_flat_list!
          # 140:84: -> ^( LINE $n ( $theFile)? )
          # at line 140:86: ^( LINE $n ( $theFile)? )
          root_1 = @adaptor.create_flat_list!
          root_1 = @adaptor.become_root(stream_LINE.next_node, root_1)

          @adaptor.add_child(root_1, stream_n.next_node)
          # at line 140:96: ( $theFile)?
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
    # (in ./Cpp.g)
    # 143:1: diagnostics : ( WARNING -> ^( WARNING ) | ERROR -> ^( ERROR ) | PRAGMA -> ^( PRAGMA ) );
    def diagnostics
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 10)
      return_value = DiagnosticsReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      diagnostics_start_index = @input.index

      root_0 = nil
      __WARNING44__ = nil
      __ERROR45__ = nil
      __PRAGMA46__ = nil

      tree_for_WARNING44 = nil
      tree_for_ERROR45 = nil
      tree_for_PRAGMA46 = nil
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
        # at line 144:17: ( WARNING -> ^( WARNING ) | ERROR -> ^( ERROR ) | PRAGMA -> ^( PRAGMA ) )
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
          # at line 144:25: WARNING
          __WARNING44__ = match(WARNING, TOKENS_FOLLOWING_WARNING_IN_diagnostics_1545) 
          if @state.backtracking == 0
            stream_WARNING.add(__WARNING44__)
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

            stream_return_value = return_value ? ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule return_value", return_value.tree) : ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "token return_value", nil)


            root_0 = @adaptor.create_flat_list!
            # 144:33: -> ^( WARNING )
            # at line 144:36: ^( WARNING )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(stream_WARNING.next_node, root_1)

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 2
          # at line 145:25: ERROR
          __ERROR45__ = match(ERROR, TOKENS_FOLLOWING_ERROR_IN_diagnostics_1577) 
          if @state.backtracking == 0
            stream_ERROR.add(__ERROR45__)
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

            stream_return_value = return_value ? ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule return_value", return_value.tree) : ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "token return_value", nil)


            root_0 = @adaptor.create_flat_list!
            # 145:33: -> ^( ERROR )
            # at line 145:36: ^( ERROR )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(stream_ERROR.next_node, root_1)

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 3
          # at line 146:25: PRAGMA
          __PRAGMA46__ = match(PRAGMA, TOKENS_FOLLOWING_PRAGMA_IN_diagnostics_1611) 
          if @state.backtracking == 0
            stream_PRAGMA.add(__PRAGMA46__)
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

            stream_return_value = return_value ? ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule return_value", return_value.tree) : ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "token return_value", nil)


            root_0 = @adaptor.create_flat_list!
            # 146:33: -> ^( PRAGMA )
            # at line 146:36: ^( PRAGMA )
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
    # (in ./Cpp.g)
    # 149:1: text_line : ( source_text )+ -> ^( TEXT_LINE ( source_text )+ ) ;
    def text_line
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 11)
      return_value = TextLineReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      text_line_start_index = @input.index

      root_0 = nil
      source_text47 = nil

      stream_source_text = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule source_text")
      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return return_value
        end
        # at line 150:19: ( source_text )+
        # at file 150:19: ( source_text )+
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
            @state.following.push(TOKENS_FOLLOWING_source_text_IN_text_line_1659)
            source_text47 = source_text
            @state.following.pop
            if @state.backtracking == 0
              stream_source_text.add(source_text47.tree)
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

          stream_return_value = return_value ? ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule return_value", return_value.tree) : ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "token return_value", nil)


          root_0 = @adaptor.create_flat_list!
          # 150:36: -> ^( TEXT_LINE ( source_text )+ )
          # at line 150:39: ^( TEXT_LINE ( source_text )+ )
          root_1 = @adaptor.create_flat_list!
          root_1 = @adaptor.become_root(@adaptor.create_from_type!(TEXT_LINE, "TEXT_LINE"), root_1)

          # at line 150:51: ( source_text )+
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
    # (in ./Cpp.g)
    # 154:1: statement : ( proc_line )+ ;
    def statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 12)
      return_value = StatementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      statement_start_index = @input.index

      root_0 = nil
      proc_line48 = nil


      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return return_value
        end
        root_0 = @adaptor.create_flat_list!


        # at line 155:19: ( proc_line )+
        # at file 155:19: ( proc_line )+
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
            @state.following.push(TOKENS_FOLLOWING_proc_line_IN_statement_1715)
            proc_line48 = proc_line
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, proc_line48.tree)
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
    # (in ./Cpp.g)
    # 158:1: type_name : IDENTIFIER ;
    def type_name
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 13)
      return_value = TypeNameReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      type_name_start_index = @input.index

      root_0 = nil
      __IDENTIFIER49__ = nil

      tree_for_IDENTIFIER49 = nil

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return return_value
        end
        root_0 = @adaptor.create_flat_list!


        # at line 159:19: IDENTIFIER
        __IDENTIFIER49__ = match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_type_name_1757)
        if @state.backtracking == 0

          tree_for_IDENTIFIER49 = @adaptor.create_with_payload!(__IDENTIFIER49__)
          @adaptor.add_child(root_0, tree_for_IDENTIFIER49)

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
    # (in ./Cpp.g)
    # 162:1: ifexpression : ( IDENTIFIER {...}? -> ^( EXPR_NDEF IDENTIFIER ) | IDENTIFIER {...}? -> ^( EXPR_DEF IDENTIFIER ) | assignment_expression -> ^( EXPR assignment_expression ) );
    def ifexpression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 14)
      return_value = IfexpressionReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      ifexpression_start_index = @input.index

      root_0 = nil
      __IDENTIFIER50__ = nil
      __IDENTIFIER51__ = nil
      assignment_expression52 = nil

      tree_for_IDENTIFIER50 = nil
      tree_for_IDENTIFIER51 = nil
      stream_IDENTIFIER = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token IDENTIFIER")
      stream_assignment_expression = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule assignment_expression")
      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return return_value
        end
        # at line 163:17: ( IDENTIFIER {...}? -> ^( EXPR_NDEF IDENTIFIER ) | IDENTIFIER {...}? -> ^( EXPR_DEF IDENTIFIER ) | assignment_expression -> ^( EXPR assignment_expression ) )
        alt_22 = 3
        look_22_0 = @input.peek(1)

        if (look_22_0 == IDENTIFIER) 
          look_22_1 = @input.peek(2)

          if (syntactic_predicate?(:synpred_33_cpp!)) 
            alt_22 = 1
          elsif (syntactic_predicate?(:synpred_34_cpp!)) 
            alt_22 = 2
          elsif (true) 
            alt_22 = 3
          else
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
          nvae = NoViableAlternative("", 22, 1)
            raise nvae
          end
        elsif (look_22_0 == LPAREN || look_22_0.between?(DECIMAL_LITERAL, STRING_LITERAL) || look_22_0 == AMPERSAND || look_22_0.between?(PLUS, STAR) || look_22_0.between?(PLUSPLUS, TILDE) || look_22_0.between?(HEX_LITERAL, FLOATING_POINT_LITERAL)) 
          alt_22 = 3
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 22, 0)
          raise nvae
        end
        case alt_22
        when 1
          # at line 163:19: IDENTIFIER {...}?
          __IDENTIFIER50__ = match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_ifexpression_1798) 
          if @state.backtracking == 0
            stream_IDENTIFIER.add(__IDENTIFIER50__)
          end
          unless (( @input.look(-2).text == "ifndef" ))
            raise FailedPredicate("ifexpression", " @input.look(-2).text == \"ifndef\" ")
          end
          # AST Rewrite
          # elements: IDENTIFIER
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0

            stream_return_value = return_value ? ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule return_value", return_value.tree) : ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "token return_value", nil)


            root_0 = @adaptor.create_flat_list!
            # 163:68: -> ^( EXPR_NDEF IDENTIFIER )
            # at line 163:71: ^( EXPR_NDEF IDENTIFIER )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(@adaptor.create_from_type!(EXPR_NDEF, "EXPR_NDEF"), root_1)

            @adaptor.add_child(root_1, stream_IDENTIFIER.next_node)

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 2
          # at line 164:19: IDENTIFIER {...}?
          __IDENTIFIER51__ = match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_ifexpression_1829) 
          if @state.backtracking == 0
            stream_IDENTIFIER.add(__IDENTIFIER51__)
          end
          unless (( @input.look(-2).text == "ifdef"  ))
            raise FailedPredicate("ifexpression", " @input.look(-2).text == \"ifdef\"  ")
          end
          # AST Rewrite
          # elements: IDENTIFIER
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0

            stream_return_value = return_value ? ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule return_value", return_value.tree) : ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "token return_value", nil)


            root_0 = @adaptor.create_flat_list!
            # 164:68: -> ^( EXPR_DEF IDENTIFIER )
            # at line 164:71: ^( EXPR_DEF IDENTIFIER )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(@adaptor.create_from_type!(EXPR_DEF, "EXPR_DEF"), root_1)

            @adaptor.add_child(root_1, stream_IDENTIFIER.next_node)

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 3
          # at line 165:19: assignment_expression
          @state.following.push(TOKENS_FOLLOWING_assignment_expression_IN_ifexpression_1861)
          assignment_expression52 = assignment_expression
          @state.following.pop
          if @state.backtracking == 0
            stream_assignment_expression.add(assignment_expression52.tree)
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

            stream_return_value = return_value ? ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule return_value", return_value.tree) : ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "token return_value", nil)


            root_0 = @adaptor.create_flat_list!
            # 165:41: -> ^( EXPR assignment_expression )
            # at line 165:44: ^( EXPR assignment_expression )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(@adaptor.create_from_type!(EXPR, "EXPR"), root_1)

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
        # trace_out(__method__, 14)
        memoize(__method__, ifexpression_start_index, success) if @state.backtracking > 0

      end
      
      return return_value
    end

    AssignmentExpressionReturnValue = define_return_scope 

    # parser rule assignment_expression
    # 
    # (in ./Cpp.g)
    # 168:1: assignment_expression : conditional_expression ( ( ASSIGNEQUAL | TIMESEQUAL | DIVIDEEQUAL | MODEQUAL | PLUSEQUAL | MINUSEQUAL | SHIFTLEFTEQUAL | SHIFTRIGHTEQUAL | BITWISEANDEQUAL | BITWISEXOREQUAL | BITWISEOREQUAL ) assignment_expression )? ;
    def assignment_expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 15)
      return_value = AssignmentExpressionReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      assignment_expression_start_index = @input.index

      root_0 = nil
      __ASSIGNEQUAL54__ = nil
      __TIMESEQUAL55__ = nil
      __DIVIDEEQUAL56__ = nil
      __MODEQUAL57__ = nil
      __PLUSEQUAL58__ = nil
      __MINUSEQUAL59__ = nil
      __SHIFTLEFTEQUAL60__ = nil
      __SHIFTRIGHTEQUAL61__ = nil
      __BITWISEANDEQUAL62__ = nil
      __BITWISEXOREQUAL63__ = nil
      __BITWISEOREQUAL64__ = nil
      conditional_expression53 = nil
      assignment_expression65 = nil

      tree_for_ASSIGNEQUAL54 = nil
      tree_for_TIMESEQUAL55 = nil
      tree_for_DIVIDEEQUAL56 = nil
      tree_for_MODEQUAL57 = nil
      tree_for_PLUSEQUAL58 = nil
      tree_for_MINUSEQUAL59 = nil
      tree_for_SHIFTLEFTEQUAL60 = nil
      tree_for_SHIFTRIGHTEQUAL61 = nil
      tree_for_BITWISEANDEQUAL62 = nil
      tree_for_BITWISEXOREQUAL63 = nil
      tree_for_BITWISEOREQUAL64 = nil

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return return_value
        end
        root_0 = @adaptor.create_flat_list!


        # at line 169:25: conditional_expression ( ( ASSIGNEQUAL | TIMESEQUAL | DIVIDEEQUAL | MODEQUAL | PLUSEQUAL | MINUSEQUAL | SHIFTLEFTEQUAL | SHIFTRIGHTEQUAL | BITWISEANDEQUAL | BITWISEXOREQUAL | BITWISEOREQUAL ) assignment_expression )?
        @state.following.push(TOKENS_FOLLOWING_conditional_expression_IN_assignment_expression_1916)
        conditional_expression53 = conditional_expression
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, conditional_expression53.tree)
        end
        # at line 170:25: ( ( ASSIGNEQUAL | TIMESEQUAL | DIVIDEEQUAL | MODEQUAL | PLUSEQUAL | MINUSEQUAL | SHIFTLEFTEQUAL | SHIFTRIGHTEQUAL | BITWISEANDEQUAL | BITWISEXOREQUAL | BITWISEOREQUAL ) assignment_expression )?
        alt_24 = 2
        look_24_0 = @input.peek(1)

        if (look_24_0.between?(ASSIGNEQUAL, BITWISEOREQUAL)) 
          alt_24 = 1
        end
        case alt_24
        when 1
          # at line 170:27: ( ASSIGNEQUAL | TIMESEQUAL | DIVIDEEQUAL | MODEQUAL | PLUSEQUAL | MINUSEQUAL | SHIFTLEFTEQUAL | SHIFTRIGHTEQUAL | BITWISEANDEQUAL | BITWISEXOREQUAL | BITWISEOREQUAL ) assignment_expression
          # at line 170:27: ( ASSIGNEQUAL | TIMESEQUAL | DIVIDEEQUAL | MODEQUAL | PLUSEQUAL | MINUSEQUAL | SHIFTLEFTEQUAL | SHIFTRIGHTEQUAL | BITWISEANDEQUAL | BITWISEXOREQUAL | BITWISEOREQUAL )
          alt_23 = 11
          case look_23 = @input.peek(1)
          when ASSIGNEQUAL then alt_23 = 1
          when TIMESEQUAL then alt_23 = 2
          when DIVIDEEQUAL then alt_23 = 3
          when MODEQUAL then alt_23 = 4
          when PLUSEQUAL then alt_23 = 5
          when MINUSEQUAL then alt_23 = 6
          when SHIFTLEFTEQUAL then alt_23 = 7
          when SHIFTRIGHTEQUAL then alt_23 = 8
          when BITWISEANDEQUAL then alt_23 = 9
          when BITWISEXOREQUAL then alt_23 = 10
          when BITWISEOREQUAL then alt_23 = 11
          else
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

            nvae = NoViableAlternative("", 23, 0)
            raise nvae
          end
          case alt_23
          when 1
            # at line 170:28: ASSIGNEQUAL
            __ASSIGNEQUAL54__ = match(ASSIGNEQUAL, TOKENS_FOLLOWING_ASSIGNEQUAL_IN_assignment_expression_1945)
            if @state.backtracking == 0

              tree_for_ASSIGNEQUAL54 = @adaptor.create_with_payload!(__ASSIGNEQUAL54__)
              root_0 = @adaptor.become_root(tree_for_ASSIGNEQUAL54, root_0)

            end

          when 2
            # at line 170:45: TIMESEQUAL
            __TIMESEQUAL55__ = match(TIMESEQUAL, TOKENS_FOLLOWING_TIMESEQUAL_IN_assignment_expression_1952)
            if @state.backtracking == 0

              tree_for_TIMESEQUAL55 = @adaptor.create_with_payload!(__TIMESEQUAL55__)
              root_0 = @adaptor.become_root(tree_for_TIMESEQUAL55, root_0)

            end

          when 3
            # at line 170:61: DIVIDEEQUAL
            __DIVIDEEQUAL56__ = match(DIVIDEEQUAL, TOKENS_FOLLOWING_DIVIDEEQUAL_IN_assignment_expression_1959)
            if @state.backtracking == 0

              tree_for_DIVIDEEQUAL56 = @adaptor.create_with_payload!(__DIVIDEEQUAL56__)
              root_0 = @adaptor.become_root(tree_for_DIVIDEEQUAL56, root_0)

            end

          when 4
            # at line 170:78: MODEQUAL
            __MODEQUAL57__ = match(MODEQUAL, TOKENS_FOLLOWING_MODEQUAL_IN_assignment_expression_1966)
            if @state.backtracking == 0

              tree_for_MODEQUAL57 = @adaptor.create_with_payload!(__MODEQUAL57__)
              root_0 = @adaptor.become_root(tree_for_MODEQUAL57, root_0)

            end

          when 5
            # at line 170:92: PLUSEQUAL
            __PLUSEQUAL58__ = match(PLUSEQUAL, TOKENS_FOLLOWING_PLUSEQUAL_IN_assignment_expression_1973)
            if @state.backtracking == 0

              tree_for_PLUSEQUAL58 = @adaptor.create_with_payload!(__PLUSEQUAL58__)
              root_0 = @adaptor.become_root(tree_for_PLUSEQUAL58, root_0)

            end

          when 6
            # at line 170:107: MINUSEQUAL
            __MINUSEQUAL59__ = match(MINUSEQUAL, TOKENS_FOLLOWING_MINUSEQUAL_IN_assignment_expression_1980)
            if @state.backtracking == 0

              tree_for_MINUSEQUAL59 = @adaptor.create_with_payload!(__MINUSEQUAL59__)
              root_0 = @adaptor.become_root(tree_for_MINUSEQUAL59, root_0)

            end

          when 7
            # at line 170:123: SHIFTLEFTEQUAL
            __SHIFTLEFTEQUAL60__ = match(SHIFTLEFTEQUAL, TOKENS_FOLLOWING_SHIFTLEFTEQUAL_IN_assignment_expression_1987)
            if @state.backtracking == 0

              tree_for_SHIFTLEFTEQUAL60 = @adaptor.create_with_payload!(__SHIFTLEFTEQUAL60__)
              root_0 = @adaptor.become_root(tree_for_SHIFTLEFTEQUAL60, root_0)

            end

          when 8
            # at line 170:143: SHIFTRIGHTEQUAL
            __SHIFTRIGHTEQUAL61__ = match(SHIFTRIGHTEQUAL, TOKENS_FOLLOWING_SHIFTRIGHTEQUAL_IN_assignment_expression_1994)
            if @state.backtracking == 0

              tree_for_SHIFTRIGHTEQUAL61 = @adaptor.create_with_payload!(__SHIFTRIGHTEQUAL61__)
              root_0 = @adaptor.become_root(tree_for_SHIFTRIGHTEQUAL61, root_0)

            end

          when 9
            # at line 170:164: BITWISEANDEQUAL
            __BITWISEANDEQUAL62__ = match(BITWISEANDEQUAL, TOKENS_FOLLOWING_BITWISEANDEQUAL_IN_assignment_expression_2001)
            if @state.backtracking == 0

              tree_for_BITWISEANDEQUAL62 = @adaptor.create_with_payload!(__BITWISEANDEQUAL62__)
              root_0 = @adaptor.become_root(tree_for_BITWISEANDEQUAL62, root_0)

            end

          when 10
            # at line 170:185: BITWISEXOREQUAL
            __BITWISEXOREQUAL63__ = match(BITWISEXOREQUAL, TOKENS_FOLLOWING_BITWISEXOREQUAL_IN_assignment_expression_2008)
            if @state.backtracking == 0

              tree_for_BITWISEXOREQUAL63 = @adaptor.create_with_payload!(__BITWISEXOREQUAL63__)
              root_0 = @adaptor.become_root(tree_for_BITWISEXOREQUAL63, root_0)

            end

          when 11
            # at line 170:206: BITWISEOREQUAL
            __BITWISEOREQUAL64__ = match(BITWISEOREQUAL, TOKENS_FOLLOWING_BITWISEOREQUAL_IN_assignment_expression_2015)
            if @state.backtracking == 0

              tree_for_BITWISEOREQUAL64 = @adaptor.create_with_payload!(__BITWISEOREQUAL64__)
              root_0 = @adaptor.become_root(tree_for_BITWISEOREQUAL64, root_0)

            end

          end
          @state.following.push(TOKENS_FOLLOWING_assignment_expression_IN_assignment_expression_2019)
          assignment_expression65 = assignment_expression
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, assignment_expression65.tree)
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
    # (in ./Cpp.g)
    # 173:1: conditional_expression : logical_or_expression ( QUESTIONMARK assignment_expression COLON conditional_expression )? ;
    def conditional_expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 16)
      return_value = ConditionalExpressionReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      conditional_expression_start_index = @input.index

      root_0 = nil
      __QUESTIONMARK67__ = nil
      __COLON69__ = nil
      logical_or_expression66 = nil
      assignment_expression68 = nil
      conditional_expression70 = nil

      tree_for_QUESTIONMARK67 = nil
      tree_for_COLON69 = nil

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return return_value
        end
        root_0 = @adaptor.create_flat_list!


        # at line 174:25: logical_or_expression ( QUESTIONMARK assignment_expression COLON conditional_expression )?
        @state.following.push(TOKENS_FOLLOWING_logical_or_expression_IN_conditional_expression_2069)
        logical_or_expression66 = logical_or_expression
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, logical_or_expression66.tree)
        end
        # at line 175:25: ( QUESTIONMARK assignment_expression COLON conditional_expression )?
        alt_25 = 2
        look_25_0 = @input.peek(1)

        if (look_25_0 == QUESTIONMARK) 
          alt_25 = 1
        end
        case alt_25
        when 1
          # at line 175:27: QUESTIONMARK assignment_expression COLON conditional_expression
          __QUESTIONMARK67__ = match(QUESTIONMARK, TOKENS_FOLLOWING_QUESTIONMARK_IN_conditional_expression_2097)
          if @state.backtracking == 0

            tree_for_QUESTIONMARK67 = @adaptor.create_with_payload!(__QUESTIONMARK67__)
            root_0 = @adaptor.become_root(tree_for_QUESTIONMARK67, root_0)

          end
          @state.following.push(TOKENS_FOLLOWING_assignment_expression_IN_conditional_expression_2100)
          assignment_expression68 = assignment_expression
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, assignment_expression68.tree)
          end
          __COLON69__ = match(COLON, TOKENS_FOLLOWING_COLON_IN_conditional_expression_2102)
          if @state.backtracking == 0

            tree_for_COLON69 = @adaptor.create_with_payload!(__COLON69__)
            @adaptor.add_child(root_0, tree_for_COLON69)

          end
          @state.following.push(TOKENS_FOLLOWING_conditional_expression_IN_conditional_expression_2104)
          conditional_expression70 = conditional_expression
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, conditional_expression70.tree)
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
    # (in ./Cpp.g)
    # 178:1: logical_or_expression : logical_and_expression ( OR logical_and_expression )* ;
    def logical_or_expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 17)
      return_value = LogicalOrExpressionReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      logical_or_expression_start_index = @input.index

      root_0 = nil
      __OR72__ = nil
      logical_and_expression71 = nil
      logical_and_expression73 = nil

      tree_for_OR72 = nil

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return return_value
        end
        root_0 = @adaptor.create_flat_list!


        # at line 179:25: logical_and_expression ( OR logical_and_expression )*
        @state.following.push(TOKENS_FOLLOWING_logical_and_expression_IN_logical_or_expression_2154)
        logical_and_expression71 = logical_and_expression
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, logical_and_expression71.tree)
        end
        # at line 179:48: ( OR logical_and_expression )*
        loop do  #loop 26
          alt_26 = 2
          look_26_0 = @input.peek(1)

          if (look_26_0 == OR) 
            alt_26 = 1

          end
          case alt_26
          when 1
            # at line 179:49: OR logical_and_expression
            __OR72__ = match(OR, TOKENS_FOLLOWING_OR_IN_logical_or_expression_2157)
            if @state.backtracking == 0

              tree_for_OR72 = @adaptor.create_with_payload!(__OR72__)
              root_0 = @adaptor.become_root(tree_for_OR72, root_0)

            end
            @state.following.push(TOKENS_FOLLOWING_logical_and_expression_IN_logical_or_expression_2160)
            logical_and_expression73 = logical_and_expression
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, logical_and_expression73.tree)
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
        # trace_out(__method__, 17)
        memoize(__method__, logical_or_expression_start_index, success) if @state.backtracking > 0

      end
      
      return return_value
    end

    LogicalAndExpressionReturnValue = define_return_scope 

    # parser rule logical_and_expression
    # 
    # (in ./Cpp.g)
    # 182:1: logical_and_expression : inclusive_or_expression ( AND inclusive_or_expression )* ;
    def logical_and_expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 18)
      return_value = LogicalAndExpressionReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      logical_and_expression_start_index = @input.index

      root_0 = nil
      __AND75__ = nil
      inclusive_or_expression74 = nil
      inclusive_or_expression76 = nil

      tree_for_AND75 = nil

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return return_value
        end
        root_0 = @adaptor.create_flat_list!


        # at line 183:25: inclusive_or_expression ( AND inclusive_or_expression )*
        @state.following.push(TOKENS_FOLLOWING_inclusive_or_expression_IN_logical_and_expression_2209)
        inclusive_or_expression74 = inclusive_or_expression
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, inclusive_or_expression74.tree)
        end
        # at line 183:49: ( AND inclusive_or_expression )*
        loop do  #loop 27
          alt_27 = 2
          look_27_0 = @input.peek(1)

          if (look_27_0 == AND) 
            alt_27 = 1

          end
          case alt_27
          when 1
            # at line 183:50: AND inclusive_or_expression
            __AND75__ = match(AND, TOKENS_FOLLOWING_AND_IN_logical_and_expression_2212)
            if @state.backtracking == 0

              tree_for_AND75 = @adaptor.create_with_payload!(__AND75__)
              root_0 = @adaptor.become_root(tree_for_AND75, root_0)

            end
            @state.following.push(TOKENS_FOLLOWING_inclusive_or_expression_IN_logical_and_expression_2215)
            inclusive_or_expression76 = inclusive_or_expression
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, inclusive_or_expression76.tree)
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
        # trace_out(__method__, 18)
        memoize(__method__, logical_and_expression_start_index, success) if @state.backtracking > 0

      end
      
      return return_value
    end

    InclusiveOrExpressionReturnValue = define_return_scope 

    # parser rule inclusive_or_expression
    # 
    # (in ./Cpp.g)
    # 186:1: inclusive_or_expression : exclusive_or_expression ( BITWISEOR exclusive_or_expression )* ;
    def inclusive_or_expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 19)
      return_value = InclusiveOrExpressionReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      inclusive_or_expression_start_index = @input.index

      root_0 = nil
      __BITWISEOR78__ = nil
      exclusive_or_expression77 = nil
      exclusive_or_expression79 = nil

      tree_for_BITWISEOR78 = nil

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return return_value
        end
        root_0 = @adaptor.create_flat_list!


        # at line 187:25: exclusive_or_expression ( BITWISEOR exclusive_or_expression )*
        @state.following.push(TOKENS_FOLLOWING_exclusive_or_expression_IN_inclusive_or_expression_2264)
        exclusive_or_expression77 = exclusive_or_expression
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, exclusive_or_expression77.tree)
        end
        # at line 187:49: ( BITWISEOR exclusive_or_expression )*
        loop do  #loop 28
          alt_28 = 2
          look_28_0 = @input.peek(1)

          if (look_28_0 == BITWISEOR) 
            alt_28 = 1

          end
          case alt_28
          when 1
            # at line 187:50: BITWISEOR exclusive_or_expression
            __BITWISEOR78__ = match(BITWISEOR, TOKENS_FOLLOWING_BITWISEOR_IN_inclusive_or_expression_2267)
            if @state.backtracking == 0

              tree_for_BITWISEOR78 = @adaptor.create_with_payload!(__BITWISEOR78__)
              root_0 = @adaptor.become_root(tree_for_BITWISEOR78, root_0)

            end
            @state.following.push(TOKENS_FOLLOWING_exclusive_or_expression_IN_inclusive_or_expression_2270)
            exclusive_or_expression79 = exclusive_or_expression
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, exclusive_or_expression79.tree)
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
        # trace_out(__method__, 19)
        memoize(__method__, inclusive_or_expression_start_index, success) if @state.backtracking > 0

      end
      
      return return_value
    end

    ExclusiveOrExpressionReturnValue = define_return_scope 

    # parser rule exclusive_or_expression
    # 
    # (in ./Cpp.g)
    # 190:1: exclusive_or_expression : and_expression ( BITWISEXOR and_expression )* ;
    def exclusive_or_expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 20)
      return_value = ExclusiveOrExpressionReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      exclusive_or_expression_start_index = @input.index

      root_0 = nil
      __BITWISEXOR81__ = nil
      and_expression80 = nil
      and_expression82 = nil

      tree_for_BITWISEXOR81 = nil

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return return_value
        end
        root_0 = @adaptor.create_flat_list!


        # at line 191:25: and_expression ( BITWISEXOR and_expression )*
        @state.following.push(TOKENS_FOLLOWING_and_expression_IN_exclusive_or_expression_2319)
        and_expression80 = and_expression
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, and_expression80.tree)
        end
        # at line 191:40: ( BITWISEXOR and_expression )*
        loop do  #loop 29
          alt_29 = 2
          look_29_0 = @input.peek(1)

          if (look_29_0 == BITWISEXOR) 
            alt_29 = 1

          end
          case alt_29
          when 1
            # at line 191:41: BITWISEXOR and_expression
            __BITWISEXOR81__ = match(BITWISEXOR, TOKENS_FOLLOWING_BITWISEXOR_IN_exclusive_or_expression_2322)
            if @state.backtracking == 0

              tree_for_BITWISEXOR81 = @adaptor.create_with_payload!(__BITWISEXOR81__)
              root_0 = @adaptor.become_root(tree_for_BITWISEXOR81, root_0)

            end
            @state.following.push(TOKENS_FOLLOWING_and_expression_IN_exclusive_or_expression_2325)
            and_expression82 = and_expression
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, and_expression82.tree)
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
        # trace_out(__method__, 20)
        memoize(__method__, exclusive_or_expression_start_index, success) if @state.backtracking > 0

      end
      
      return return_value
    end

    AndExpressionReturnValue = define_return_scope 

    # parser rule and_expression
    # 
    # (in ./Cpp.g)
    # 194:1: and_expression : equality_expression ( AMPERSAND equality_expression )* ;
    def and_expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 21)
      return_value = AndExpressionReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      and_expression_start_index = @input.index

      root_0 = nil
      __AMPERSAND84__ = nil
      equality_expression83 = nil
      equality_expression85 = nil

      tree_for_AMPERSAND84 = nil

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return return_value
        end
        root_0 = @adaptor.create_flat_list!


        # at line 195:25: equality_expression ( AMPERSAND equality_expression )*
        @state.following.push(TOKENS_FOLLOWING_equality_expression_IN_and_expression_2374)
        equality_expression83 = equality_expression
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, equality_expression83.tree)
        end
        # at line 195:45: ( AMPERSAND equality_expression )*
        loop do  #loop 30
          alt_30 = 2
          look_30_0 = @input.peek(1)

          if (look_30_0 == AMPERSAND) 
            alt_30 = 1

          end
          case alt_30
          when 1
            # at line 195:46: AMPERSAND equality_expression
            __AMPERSAND84__ = match(AMPERSAND, TOKENS_FOLLOWING_AMPERSAND_IN_and_expression_2377)
            if @state.backtracking == 0

              tree_for_AMPERSAND84 = @adaptor.create_with_payload!(__AMPERSAND84__)
              root_0 = @adaptor.become_root(tree_for_AMPERSAND84, root_0)

            end
            @state.following.push(TOKENS_FOLLOWING_equality_expression_IN_and_expression_2380)
            equality_expression85 = equality_expression
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, equality_expression85.tree)
            end

          else
            break #loop 30
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
    # (in ./Cpp.g)
    # 198:1: equality_expression : relational_expression ( ( NOTEQUAL | EQUAL ) relational_expression )* ;
    def equality_expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 22)
      return_value = EqualityExpressionReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      equality_expression_start_index = @input.index

      root_0 = nil
      __NOTEQUAL87__ = nil
      __EQUAL88__ = nil
      relational_expression86 = nil
      relational_expression89 = nil

      tree_for_NOTEQUAL87 = nil
      tree_for_EQUAL88 = nil

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return return_value
        end
        root_0 = @adaptor.create_flat_list!


        # at line 199:25: relational_expression ( ( NOTEQUAL | EQUAL ) relational_expression )*
        @state.following.push(TOKENS_FOLLOWING_relational_expression_IN_equality_expression_2429)
        relational_expression86 = relational_expression
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, relational_expression86.tree)
        end
        # at line 199:47: ( ( NOTEQUAL | EQUAL ) relational_expression )*
        loop do  #loop 32
          alt_32 = 2
          look_32_0 = @input.peek(1)

          if (look_32_0.between?(NOTEQUAL, EQUAL)) 
            alt_32 = 1

          end
          case alt_32
          when 1
            # at line 199:48: ( NOTEQUAL | EQUAL ) relational_expression
            # at line 199:48: ( NOTEQUAL | EQUAL )
            alt_31 = 2
            look_31_0 = @input.peek(1)

            if (look_31_0 == NOTEQUAL) 
              alt_31 = 1
            elsif (look_31_0 == EQUAL) 
              alt_31 = 2
            else
              @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
            nvae = NoViableAlternative("", 31, 0)
              raise nvae
            end
            case alt_31
            when 1
              # at line 199:49: NOTEQUAL
              __NOTEQUAL87__ = match(NOTEQUAL, TOKENS_FOLLOWING_NOTEQUAL_IN_equality_expression_2433)
              if @state.backtracking == 0

                tree_for_NOTEQUAL87 = @adaptor.create_with_payload!(__NOTEQUAL87__)
                root_0 = @adaptor.become_root(tree_for_NOTEQUAL87, root_0)

              end

            when 2
              # at line 199:61: EQUAL
              __EQUAL88__ = match(EQUAL, TOKENS_FOLLOWING_EQUAL_IN_equality_expression_2438)
              if @state.backtracking == 0

                tree_for_EQUAL88 = @adaptor.create_with_payload!(__EQUAL88__)
                root_0 = @adaptor.become_root(tree_for_EQUAL88, root_0)

              end

            end
            @state.following.push(TOKENS_FOLLOWING_relational_expression_IN_equality_expression_2442)
            relational_expression89 = relational_expression
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, relational_expression89.tree)
            end

          else
            break #loop 32
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
    # (in ./Cpp.g)
    # 202:1: relational_expression : shift_expression ( ( ( LESSTHAN | GREATERTHAN | LESSTHANOREQUALTO | GREATERTHANOREQUALTO ) shift_expression )* ) ;
    def relational_expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 23)
      return_value = RelationalExpressionReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      relational_expression_start_index = @input.index

      root_0 = nil
      __LESSTHAN91__ = nil
      __GREATERTHAN92__ = nil
      __LESSTHANOREQUALTO93__ = nil
      __GREATERTHANOREQUALTO94__ = nil
      shift_expression90 = nil
      shift_expression95 = nil

      tree_for_LESSTHAN91 = nil
      tree_for_GREATERTHAN92 = nil
      tree_for_LESSTHANOREQUALTO93 = nil
      tree_for_GREATERTHANOREQUALTO94 = nil

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return return_value
        end
        root_0 = @adaptor.create_flat_list!


        # at line 203:25: shift_expression ( ( ( LESSTHAN | GREATERTHAN | LESSTHANOREQUALTO | GREATERTHANOREQUALTO ) shift_expression )* )
        @state.following.push(TOKENS_FOLLOWING_shift_expression_IN_relational_expression_2491)
        shift_expression90 = shift_expression
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, shift_expression90.tree)
        end
        # at line 204:25: ( ( ( LESSTHAN | GREATERTHAN | LESSTHANOREQUALTO | GREATERTHANOREQUALTO ) shift_expression )* )
        # at line 204:33: ( ( LESSTHAN | GREATERTHAN | LESSTHANOREQUALTO | GREATERTHANOREQUALTO ) shift_expression )*
        # at line 204:33: ( ( LESSTHAN | GREATERTHAN | LESSTHANOREQUALTO | GREATERTHANOREQUALTO ) shift_expression )*
        loop do  #loop 34
          alt_34 = 2
          look_34_0 = @input.peek(1)

          if (look_34_0.between?(LESSTHAN, GREATERTHANOREQUALTO)) 
            alt_34 = 1

          end
          case alt_34
          when 1
            # at line 204:41: ( LESSTHAN | GREATERTHAN | LESSTHANOREQUALTO | GREATERTHANOREQUALTO ) shift_expression
            # at line 204:41: ( LESSTHAN | GREATERTHAN | LESSTHANOREQUALTO | GREATERTHANOREQUALTO )
            alt_33 = 4
            case look_33 = @input.peek(1)
            when LESSTHAN then alt_33 = 1
            when GREATERTHAN then alt_33 = 2
            when LESSTHANOREQUALTO then alt_33 = 3
            when GREATERTHANOREQUALTO then alt_33 = 4
            else
              @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

              nvae = NoViableAlternative("", 33, 0)
              raise nvae
            end
            case alt_33
            when 1
              # at line 204:49: LESSTHAN
              __LESSTHAN91__ = match(LESSTHAN, TOKENS_FOLLOWING_LESSTHAN_IN_relational_expression_2541)
              if @state.backtracking == 0

                tree_for_LESSTHAN91 = @adaptor.create_with_payload!(__LESSTHAN91__)
                root_0 = @adaptor.become_root(tree_for_LESSTHAN91, root_0)

              end

            when 2
              # at line 205:49: GREATERTHAN
              __GREATERTHAN92__ = match(GREATERTHAN, TOKENS_FOLLOWING_GREATERTHAN_IN_relational_expression_2592)
              if @state.backtracking == 0

                tree_for_GREATERTHAN92 = @adaptor.create_with_payload!(__GREATERTHAN92__)
                root_0 = @adaptor.become_root(tree_for_GREATERTHAN92, root_0)

              end

            when 3
              # at line 206:49: LESSTHANOREQUALTO
              __LESSTHANOREQUALTO93__ = match(LESSTHANOREQUALTO, TOKENS_FOLLOWING_LESSTHANOREQUALTO_IN_relational_expression_2643)
              if @state.backtracking == 0

                tree_for_LESSTHANOREQUALTO93 = @adaptor.create_with_payload!(__LESSTHANOREQUALTO93__)
                root_0 = @adaptor.become_root(tree_for_LESSTHANOREQUALTO93, root_0)

              end

            when 4
              # at line 207:49: GREATERTHANOREQUALTO
              __GREATERTHANOREQUALTO94__ = match(GREATERTHANOREQUALTO, TOKENS_FOLLOWING_GREATERTHANOREQUALTO_IN_relational_expression_2694)
              if @state.backtracking == 0

                tree_for_GREATERTHANOREQUALTO94 = @adaptor.create_with_payload!(__GREATERTHANOREQUALTO94__)
                root_0 = @adaptor.become_root(tree_for_GREATERTHANOREQUALTO94, root_0)

              end

            end
            @state.following.push(TOKENS_FOLLOWING_shift_expression_IN_relational_expression_2771)
            shift_expression95 = shift_expression
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, shift_expression95.tree)
            end

          else
            break #loop 34
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
    # (in ./Cpp.g)
    # 213:1: shift_expression : additive_expression ( ( SHIFTLEFT | SHIFTRIGHT ) additive_expression )* ;
    def shift_expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 24)
      return_value = ShiftExpressionReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      shift_expression_start_index = @input.index

      root_0 = nil
      __SHIFTLEFT97__ = nil
      __SHIFTRIGHT98__ = nil
      additive_expression96 = nil
      additive_expression99 = nil

      tree_for_SHIFTLEFT97 = nil
      tree_for_SHIFTRIGHT98 = nil

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return return_value
        end
        root_0 = @adaptor.create_flat_list!


        # at line 214:25: additive_expression ( ( SHIFTLEFT | SHIFTRIGHT ) additive_expression )*
        @state.following.push(TOKENS_FOLLOWING_additive_expression_IN_shift_expression_2878)
        additive_expression96 = additive_expression
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, additive_expression96.tree)
        end
        # at line 214:45: ( ( SHIFTLEFT | SHIFTRIGHT ) additive_expression )*
        loop do  #loop 36
          alt_36 = 2
          look_36_0 = @input.peek(1)

          if (look_36_0.between?(SHIFTLEFT, SHIFTRIGHT)) 
            alt_36 = 1

          end
          case alt_36
          when 1
            # at line 214:46: ( SHIFTLEFT | SHIFTRIGHT ) additive_expression
            # at line 214:46: ( SHIFTLEFT | SHIFTRIGHT )
            alt_35 = 2
            look_35_0 = @input.peek(1)

            if (look_35_0 == SHIFTLEFT) 
              alt_35 = 1
            elsif (look_35_0 == SHIFTRIGHT) 
              alt_35 = 2
            else
              @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
            nvae = NoViableAlternative("", 35, 0)
              raise nvae
            end
            case alt_35
            when 1
              # at line 214:47: SHIFTLEFT
              __SHIFTLEFT97__ = match(SHIFTLEFT, TOKENS_FOLLOWING_SHIFTLEFT_IN_shift_expression_2882)
              if @state.backtracking == 0

                tree_for_SHIFTLEFT97 = @adaptor.create_with_payload!(__SHIFTLEFT97__)
                root_0 = @adaptor.become_root(tree_for_SHIFTLEFT97, root_0)

              end

            when 2
              # at line 214:60: SHIFTRIGHT
              __SHIFTRIGHT98__ = match(SHIFTRIGHT, TOKENS_FOLLOWING_SHIFTRIGHT_IN_shift_expression_2887)
              if @state.backtracking == 0

                tree_for_SHIFTRIGHT98 = @adaptor.create_with_payload!(__SHIFTRIGHT98__)
                root_0 = @adaptor.become_root(tree_for_SHIFTRIGHT98, root_0)

              end

            end
            @state.following.push(TOKENS_FOLLOWING_additive_expression_IN_shift_expression_2891)
            additive_expression99 = additive_expression
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, additive_expression99.tree)
            end

          else
            break #loop 36
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
    # (in ./Cpp.g)
    # 217:1: additive_expression : multiplicative_expression ( ( PLUS | MINUS ) multiplicative_expression )* ;
    def additive_expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 25)
      return_value = AdditiveExpressionReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      additive_expression_start_index = @input.index

      root_0 = nil
      __PLUS101__ = nil
      __MINUS102__ = nil
      multiplicative_expression100 = nil
      multiplicative_expression103 = nil

      tree_for_PLUS101 = nil
      tree_for_MINUS102 = nil

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return return_value
        end
        root_0 = @adaptor.create_flat_list!


        # at line 218:25: multiplicative_expression ( ( PLUS | MINUS ) multiplicative_expression )*
        @state.following.push(TOKENS_FOLLOWING_multiplicative_expression_IN_additive_expression_2940)
        multiplicative_expression100 = multiplicative_expression
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, multiplicative_expression100.tree)
        end
        # at line 218:51: ( ( PLUS | MINUS ) multiplicative_expression )*
        loop do  #loop 38
          alt_38 = 2
          look_38_0 = @input.peek(1)

          if (look_38_0.between?(PLUS, MINUS)) 
            alt_38 = 1

          end
          case alt_38
          when 1
            # at line 218:52: ( PLUS | MINUS ) multiplicative_expression
            # at line 218:52: ( PLUS | MINUS )
            alt_37 = 2
            look_37_0 = @input.peek(1)

            if (look_37_0 == PLUS) 
              alt_37 = 1
            elsif (look_37_0 == MINUS) 
              alt_37 = 2
            else
              @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
            nvae = NoViableAlternative("", 37, 0)
              raise nvae
            end
            case alt_37
            when 1
              # at line 218:53: PLUS
              __PLUS101__ = match(PLUS, TOKENS_FOLLOWING_PLUS_IN_additive_expression_2944)
              if @state.backtracking == 0

                tree_for_PLUS101 = @adaptor.create_with_payload!(__PLUS101__)
                root_0 = @adaptor.become_root(tree_for_PLUS101, root_0)

              end

            when 2
              # at line 218:61: MINUS
              __MINUS102__ = match(MINUS, TOKENS_FOLLOWING_MINUS_IN_additive_expression_2949)
              if @state.backtracking == 0

                tree_for_MINUS102 = @adaptor.create_with_payload!(__MINUS102__)
                root_0 = @adaptor.become_root(tree_for_MINUS102, root_0)

              end

            end
            @state.following.push(TOKENS_FOLLOWING_multiplicative_expression_IN_additive_expression_2953)
            multiplicative_expression103 = multiplicative_expression
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, multiplicative_expression103.tree)
            end

          else
            break #loop 38
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
    # (in ./Cpp.g)
    # 221:1: multiplicative_expression : unary_expression ( ( STAR | DIVIDE | MOD ) unary_expression )* ;
    def multiplicative_expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 26)
      return_value = MultiplicativeExpressionReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      multiplicative_expression_start_index = @input.index

      root_0 = nil
      __STAR105__ = nil
      __DIVIDE106__ = nil
      __MOD107__ = nil
      unary_expression104 = nil
      unary_expression108 = nil

      tree_for_STAR105 = nil
      tree_for_DIVIDE106 = nil
      tree_for_MOD107 = nil

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return return_value
        end
        root_0 = @adaptor.create_flat_list!


        # at line 222:25: unary_expression ( ( STAR | DIVIDE | MOD ) unary_expression )*
        @state.following.push(TOKENS_FOLLOWING_unary_expression_IN_multiplicative_expression_3002)
        unary_expression104 = unary_expression
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, unary_expression104.tree)
        end
        # at line 222:42: ( ( STAR | DIVIDE | MOD ) unary_expression )*
        loop do  #loop 40
          alt_40 = 2
          look_40_0 = @input.peek(1)

          if (look_40_0.between?(STAR, MOD)) 
            alt_40 = 1

          end
          case alt_40
          when 1
            # at line 222:43: ( STAR | DIVIDE | MOD ) unary_expression
            # at line 222:43: ( STAR | DIVIDE | MOD )
            alt_39 = 3
            case look_39 = @input.peek(1)
            when STAR then alt_39 = 1
            when DIVIDE then alt_39 = 2
            when MOD then alt_39 = 3
            else
              @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

              nvae = NoViableAlternative("", 39, 0)
              raise nvae
            end
            case alt_39
            when 1
              # at line 222:44: STAR
              __STAR105__ = match(STAR, TOKENS_FOLLOWING_STAR_IN_multiplicative_expression_3006)
              if @state.backtracking == 0

                tree_for_STAR105 = @adaptor.create_with_payload!(__STAR105__)
                root_0 = @adaptor.become_root(tree_for_STAR105, root_0)

              end

            when 2
              # at line 222:52: DIVIDE
              __DIVIDE106__ = match(DIVIDE, TOKENS_FOLLOWING_DIVIDE_IN_multiplicative_expression_3011)
              if @state.backtracking == 0

                tree_for_DIVIDE106 = @adaptor.create_with_payload!(__DIVIDE106__)
                root_0 = @adaptor.become_root(tree_for_DIVIDE106, root_0)

              end

            when 3
              # at line 222:62: MOD
              __MOD107__ = match(MOD, TOKENS_FOLLOWING_MOD_IN_multiplicative_expression_3016)
              if @state.backtracking == 0

                tree_for_MOD107 = @adaptor.create_with_payload!(__MOD107__)
                root_0 = @adaptor.become_root(tree_for_MOD107, root_0)

              end

            end
            @state.following.push(TOKENS_FOLLOWING_unary_expression_IN_multiplicative_expression_3021)
            unary_expression108 = unary_expression
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, unary_expression108.tree)
            end

          else
            break #loop 40
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
    # (in ./Cpp.g)
    # 225:1: unary_expression : ( PLUSPLUS unary_expression -> ^( PLUSPLUS unary_expression ) | MINUSMINUS unary_expression -> ^( MINUSMINUS unary_expression ) | SIZEOF unary_expression -> ^( SIZEOF unary_expression ) | SIZEOF LPAREN type_name RPAREN -> ^( SIZEOF_TYPE type_name ) | DEFINED type_name -> ^( DEFINED type_name ) | DEFINED LPAREN type_name RPAREN -> ^( DEFINED type_name ) | unary_expression_not_plus_minus );
    def unary_expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 27)
      return_value = UnaryExpressionReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      unary_expression_start_index = @input.index

      root_0 = nil
      __PLUSPLUS109__ = nil
      __MINUSMINUS111__ = nil
      __SIZEOF113__ = nil
      __SIZEOF115__ = nil
      __LPAREN116__ = nil
      __RPAREN118__ = nil
      __DEFINED119__ = nil
      __DEFINED121__ = nil
      __LPAREN122__ = nil
      __RPAREN124__ = nil
      unary_expression110 = nil
      unary_expression112 = nil
      unary_expression114 = nil
      type_name117 = nil
      type_name120 = nil
      type_name123 = nil
      unary_expression_not_plus_minus125 = nil

      tree_for_PLUSPLUS109 = nil
      tree_for_MINUSMINUS111 = nil
      tree_for_SIZEOF113 = nil
      tree_for_SIZEOF115 = nil
      tree_for_LPAREN116 = nil
      tree_for_RPAREN118 = nil
      tree_for_DEFINED119 = nil
      tree_for_DEFINED121 = nil
      tree_for_LPAREN122 = nil
      tree_for_RPAREN124 = nil
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
        # at line 226:17: ( PLUSPLUS unary_expression -> ^( PLUSPLUS unary_expression ) | MINUSMINUS unary_expression -> ^( MINUSMINUS unary_expression ) | SIZEOF unary_expression -> ^( SIZEOF unary_expression ) | SIZEOF LPAREN type_name RPAREN -> ^( SIZEOF_TYPE type_name ) | DEFINED type_name -> ^( DEFINED type_name ) | DEFINED LPAREN type_name RPAREN -> ^( DEFINED type_name ) | unary_expression_not_plus_minus )
        alt_41 = 7
        alt_41 = @dfa41.predict(@input)
        case alt_41
        when 1
          # at line 226:25: PLUSPLUS unary_expression
          __PLUSPLUS109__ = match(PLUSPLUS, TOKENS_FOLLOWING_PLUSPLUS_IN_unary_expression_3070) 
          if @state.backtracking == 0
            stream_PLUSPLUS.add(__PLUSPLUS109__)
          end
          @state.following.push(TOKENS_FOLLOWING_unary_expression_IN_unary_expression_3079)
          unary_expression110 = unary_expression
          @state.following.pop
          if @state.backtracking == 0
            stream_unary_expression.add(unary_expression110.tree)
          end
          # AST Rewrite
          # elements: unary_expression, PLUSPLUS
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0

            stream_return_value = return_value ? ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule return_value", return_value.tree) : ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "token return_value", nil)


            root_0 = @adaptor.create_flat_list!
            # 226:58: -> ^( PLUSPLUS unary_expression )
            # at line 226:61: ^( PLUSPLUS unary_expression )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(stream_PLUSPLUS.next_node, root_1)

            @adaptor.add_child(root_1, stream_unary_expression.next_tree)

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 2
          # at line 227:25: MINUSMINUS unary_expression
          __MINUSMINUS111__ = match(MINUSMINUS, TOKENS_FOLLOWING_MINUSMINUS_IN_unary_expression_3113) 
          if @state.backtracking == 0
            stream_MINUSMINUS.add(__MINUSMINUS111__)
          end
          @state.following.push(TOKENS_FOLLOWING_unary_expression_IN_unary_expression_3120)
          unary_expression112 = unary_expression
          @state.following.pop
          if @state.backtracking == 0
            stream_unary_expression.add(unary_expression112.tree)
          end
          # AST Rewrite
          # elements: MINUSMINUS, unary_expression
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0

            stream_return_value = return_value ? ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule return_value", return_value.tree) : ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "token return_value", nil)


            root_0 = @adaptor.create_flat_list!
            # 227:58: -> ^( MINUSMINUS unary_expression )
            # at line 227:61: ^( MINUSMINUS unary_expression )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(stream_MINUSMINUS.next_node, root_1)

            @adaptor.add_child(root_1, stream_unary_expression.next_tree)

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 3
          # at line 228:25: SIZEOF unary_expression
          __SIZEOF113__ = match(SIZEOF, TOKENS_FOLLOWING_SIZEOF_IN_unary_expression_3154) 
          if @state.backtracking == 0
            stream_SIZEOF.add(__SIZEOF113__)
          end
          @state.following.push(TOKENS_FOLLOWING_unary_expression_IN_unary_expression_3157)
          unary_expression114 = unary_expression
          @state.following.pop
          if @state.backtracking == 0
            stream_unary_expression.add(unary_expression114.tree)
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

            stream_return_value = return_value ? ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule return_value", return_value.tree) : ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "token return_value", nil)


            root_0 = @adaptor.create_flat_list!
            # 228:50: -> ^( SIZEOF unary_expression )
            # at line 228:53: ^( SIZEOF unary_expression )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(stream_SIZEOF.next_node, root_1)

            @adaptor.add_child(root_1, stream_unary_expression.next_tree)

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 4
          # at line 229:25: SIZEOF LPAREN type_name RPAREN
          __SIZEOF115__ = match(SIZEOF, TOKENS_FOLLOWING_SIZEOF_IN_unary_expression_3191) 
          if @state.backtracking == 0
            stream_SIZEOF.add(__SIZEOF115__)
          end
          __LPAREN116__ = match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_unary_expression_3194) 
          if @state.backtracking == 0
            stream_LPAREN.add(__LPAREN116__)
          end
          @state.following.push(TOKENS_FOLLOWING_type_name_IN_unary_expression_3196)
          type_name117 = type_name
          @state.following.pop
          if @state.backtracking == 0
            stream_type_name.add(type_name117.tree)
          end
          __RPAREN118__ = match(RPAREN, TOKENS_FOLLOWING_RPAREN_IN_unary_expression_3198) 
          if @state.backtracking == 0
            stream_RPAREN.add(__RPAREN118__)
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

            stream_return_value = return_value ? ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule return_value", return_value.tree) : ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "token return_value", nil)


            root_0 = @adaptor.create_flat_list!
            # 229:57: -> ^( SIZEOF_TYPE type_name )
            # at line 229:65: ^( SIZEOF_TYPE type_name )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(@adaptor.create_from_type!(SIZEOF_TYPE, "SIZEOF_TYPE"), root_1)

            @adaptor.add_child(root_1, stream_type_name.next_tree)

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 5
          # at line 230:25: DEFINED type_name
          __DEFINED119__ = match(DEFINED, TOKENS_FOLLOWING_DEFINED_IN_unary_expression_3237) 
          if @state.backtracking == 0
            stream_DEFINED.add(__DEFINED119__)
          end
          @state.following.push(TOKENS_FOLLOWING_type_name_IN_unary_expression_3239)
          type_name120 = type_name
          @state.following.pop
          if @state.backtracking == 0
            stream_type_name.add(type_name120.tree)
          end
          # AST Rewrite
          # elements: type_name, DEFINED
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0

            stream_return_value = return_value ? ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule return_value", return_value.tree) : ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "token return_value", nil)


            root_0 = @adaptor.create_flat_list!
            # 230:65: -> ^( DEFINED type_name )
            # at line 230:68: ^( DEFINED type_name )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(stream_DEFINED.next_node, root_1)

            @adaptor.add_child(root_1, stream_type_name.next_tree)

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 6
          # at line 231:25: DEFINED LPAREN type_name RPAREN
          __DEFINED121__ = match(DEFINED, TOKENS_FOLLOWING_DEFINED_IN_unary_expression_3295) 
          if @state.backtracking == 0
            stream_DEFINED.add(__DEFINED121__)
          end
          __LPAREN122__ = match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_unary_expression_3297) 
          if @state.backtracking == 0
            stream_LPAREN.add(__LPAREN122__)
          end
          @state.following.push(TOKENS_FOLLOWING_type_name_IN_unary_expression_3299)
          type_name123 = type_name
          @state.following.pop
          if @state.backtracking == 0
            stream_type_name.add(type_name123.tree)
          end
          __RPAREN124__ = match(RPAREN, TOKENS_FOLLOWING_RPAREN_IN_unary_expression_3302) 
          if @state.backtracking == 0
            stream_RPAREN.add(__RPAREN124__)
          end
          # AST Rewrite
          # elements: type_name, DEFINED
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0

            stream_return_value = return_value ? ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule return_value", return_value.tree) : ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "token return_value", nil)


            root_0 = @adaptor.create_flat_list!
            # 231:65: -> ^( DEFINED type_name )
            # at line 231:67: ^( DEFINED type_name )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(stream_DEFINED.next_node, root_1)

            @adaptor.add_child(root_1, stream_type_name.next_tree)

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 7
          root_0 = @adaptor.create_flat_list!


          # at line 232:25: unary_expression_not_plus_minus
          @state.following.push(TOKENS_FOLLOWING_unary_expression_not_plus_minus_IN_unary_expression_3342)
          unary_expression_not_plus_minus125 = unary_expression_not_plus_minus
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, unary_expression_not_plus_minus125.tree)
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
    # (in ./Cpp.g)
    # 235:1: unary_expression_not_plus_minus : ( NOT unary_expression -> ^( NOT unary_expression ) | TILDE unary_expression -> ^( TILDE unary_expression ) | AMPERSAND unary_expression -> ^( REFERANCE unary_expression ) | STAR unary_expression -> ^( POINTER_AT unary_expression ) | MINUS unary_expression -> ^( UNARY_MINUS unary_expression ) | PLUS unary_expression -> ^( UNARY_PLUS unary_expression ) | LPAREN type_name RPAREN unary_expression -> ^( TYPECAST type_name unary_expression ) | postfix_expression );
    def unary_expression_not_plus_minus
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 28)
      return_value = UnaryExpressionNotPlusMinusReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      unary_expression_not_plus_minus_start_index = @input.index

      root_0 = nil
      __NOT126__ = nil
      __TILDE128__ = nil
      __AMPERSAND130__ = nil
      __STAR132__ = nil
      __MINUS134__ = nil
      __PLUS136__ = nil
      __LPAREN138__ = nil
      __RPAREN140__ = nil
      unary_expression127 = nil
      unary_expression129 = nil
      unary_expression131 = nil
      unary_expression133 = nil
      unary_expression135 = nil
      unary_expression137 = nil
      type_name139 = nil
      unary_expression141 = nil
      postfix_expression142 = nil

      tree_for_NOT126 = nil
      tree_for_TILDE128 = nil
      tree_for_AMPERSAND130 = nil
      tree_for_STAR132 = nil
      tree_for_MINUS134 = nil
      tree_for_PLUS136 = nil
      tree_for_LPAREN138 = nil
      tree_for_RPAREN140 = nil
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
        # at line 236:17: ( NOT unary_expression -> ^( NOT unary_expression ) | TILDE unary_expression -> ^( TILDE unary_expression ) | AMPERSAND unary_expression -> ^( REFERANCE unary_expression ) | STAR unary_expression -> ^( POINTER_AT unary_expression ) | MINUS unary_expression -> ^( UNARY_MINUS unary_expression ) | PLUS unary_expression -> ^( UNARY_PLUS unary_expression ) | LPAREN type_name RPAREN unary_expression -> ^( TYPECAST type_name unary_expression ) | postfix_expression )
        alt_42 = 8
        alt_42 = @dfa42.predict(@input)
        case alt_42
        when 1
          # at line 236:25: NOT unary_expression
          __NOT126__ = match(NOT, TOKENS_FOLLOWING_NOT_IN_unary_expression_not_plus_minus_3389) 
          if @state.backtracking == 0
            stream_NOT.add(__NOT126__)
          end
          @state.following.push(TOKENS_FOLLOWING_unary_expression_IN_unary_expression_not_plus_minus_3403)
          unary_expression127 = unary_expression
          @state.following.pop
          if @state.backtracking == 0
            stream_unary_expression.add(unary_expression127.tree)
          end
          # AST Rewrite
          # elements: NOT, unary_expression
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0

            stream_return_value = return_value ? ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule return_value", return_value.tree) : ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "token return_value", nil)


            root_0 = @adaptor.create_flat_list!
            # 236:58: -> ^( NOT unary_expression )
            # at line 236:66: ^( NOT unary_expression )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(stream_NOT.next_node, root_1)

            @adaptor.add_child(root_1, stream_unary_expression.next_tree)

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 2
          # at line 237:25: TILDE unary_expression
          __TILDE128__ = match(TILDE, TOKENS_FOLLOWING_TILDE_IN_unary_expression_not_plus_minus_3444) 
          if @state.backtracking == 0
            stream_TILDE.add(__TILDE128__)
          end
          @state.following.push(TOKENS_FOLLOWING_unary_expression_IN_unary_expression_not_plus_minus_3456)
          unary_expression129 = unary_expression
          @state.following.pop
          if @state.backtracking == 0
            stream_unary_expression.add(unary_expression129.tree)
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

            stream_return_value = return_value ? ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule return_value", return_value.tree) : ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "token return_value", nil)


            root_0 = @adaptor.create_flat_list!
            # 237:58: -> ^( TILDE unary_expression )
            # at line 237:66: ^( TILDE unary_expression )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(stream_TILDE.next_node, root_1)

            @adaptor.add_child(root_1, stream_unary_expression.next_tree)

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 3
          # at line 238:25: AMPERSAND unary_expression
          __AMPERSAND130__ = match(AMPERSAND, TOKENS_FOLLOWING_AMPERSAND_IN_unary_expression_not_plus_minus_3503) 
          if @state.backtracking == 0
            stream_AMPERSAND.add(__AMPERSAND130__)
          end
          @state.following.push(TOKENS_FOLLOWING_unary_expression_IN_unary_expression_not_plus_minus_3511)
          unary_expression131 = unary_expression
          @state.following.pop
          if @state.backtracking == 0
            stream_unary_expression.add(unary_expression131.tree)
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

            stream_return_value = return_value ? ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule return_value", return_value.tree) : ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "token return_value", nil)


            root_0 = @adaptor.create_flat_list!
            # 238:58: -> ^( REFERANCE unary_expression )
            # at line 238:66: ^( REFERANCE unary_expression )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(@adaptor.create_from_type!(REFERANCE, "REFERANCE"), root_1)

            @adaptor.add_child(root_1, stream_unary_expression.next_tree)

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 4
          # at line 239:25: STAR unary_expression
          __STAR132__ = match(STAR, TOKENS_FOLLOWING_STAR_IN_unary_expression_not_plus_minus_3554) 
          if @state.backtracking == 0
            stream_STAR.add(__STAR132__)
          end
          @state.following.push(TOKENS_FOLLOWING_unary_expression_IN_unary_expression_not_plus_minus_3567)
          unary_expression133 = unary_expression
          @state.following.pop
          if @state.backtracking == 0
            stream_unary_expression.add(unary_expression133.tree)
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

            stream_return_value = return_value ? ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule return_value", return_value.tree) : ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "token return_value", nil)


            root_0 = @adaptor.create_flat_list!
            # 239:58: -> ^( POINTER_AT unary_expression )
            # at line 239:66: ^( POINTER_AT unary_expression )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(@adaptor.create_from_type!(POINTER_AT, "POINTER_AT"), root_1)

            @adaptor.add_child(root_1, stream_unary_expression.next_tree)

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 5
          # at line 240:25: MINUS unary_expression
          __MINUS134__ = match(MINUS, TOKENS_FOLLOWING_MINUS_IN_unary_expression_not_plus_minus_3609) 
          if @state.backtracking == 0
            stream_MINUS.add(__MINUS134__)
          end
          @state.following.push(TOKENS_FOLLOWING_unary_expression_IN_unary_expression_not_plus_minus_3612)
          unary_expression135 = unary_expression
          @state.following.pop
          if @state.backtracking == 0
            stream_unary_expression.add(unary_expression135.tree)
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

            stream_return_value = return_value ? ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule return_value", return_value.tree) : ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "token return_value", nil)


            root_0 = @adaptor.create_flat_list!
            # 240:50: -> ^( UNARY_MINUS unary_expression )
            # at line 240:53: ^( UNARY_MINUS unary_expression )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(@adaptor.create_from_type!(UNARY_MINUS, "UNARY_MINUS"), root_1)

            @adaptor.add_child(root_1, stream_unary_expression.next_tree)

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 6
          # at line 241:25: PLUS unary_expression
          __PLUS136__ = match(PLUS, TOKENS_FOLLOWING_PLUS_IN_unary_expression_not_plus_minus_3647) 
          if @state.backtracking == 0
            stream_PLUS.add(__PLUS136__)
          end
          @state.following.push(TOKENS_FOLLOWING_unary_expression_IN_unary_expression_not_plus_minus_3651)
          unary_expression137 = unary_expression
          @state.following.pop
          if @state.backtracking == 0
            stream_unary_expression.add(unary_expression137.tree)
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

            stream_return_value = return_value ? ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule return_value", return_value.tree) : ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "token return_value", nil)


            root_0 = @adaptor.create_flat_list!
            # 241:50: -> ^( UNARY_PLUS unary_expression )
            # at line 241:53: ^( UNARY_PLUS unary_expression )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(@adaptor.create_from_type!(UNARY_PLUS, "UNARY_PLUS"), root_1)

            @adaptor.add_child(root_1, stream_unary_expression.next_tree)

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 7
          # at line 242:25: LPAREN type_name RPAREN unary_expression
          __LPAREN138__ = match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_unary_expression_not_plus_minus_3686) 
          if @state.backtracking == 0
            stream_LPAREN.add(__LPAREN138__)
          end
          @state.following.push(TOKENS_FOLLOWING_type_name_IN_unary_expression_not_plus_minus_3688)
          type_name139 = type_name
          @state.following.pop
          if @state.backtracking == 0
            stream_type_name.add(type_name139.tree)
          end
          __RPAREN140__ = match(RPAREN, TOKENS_FOLLOWING_RPAREN_IN_unary_expression_not_plus_minus_3690) 
          if @state.backtracking == 0
            stream_RPAREN.add(__RPAREN140__)
          end
          @state.following.push(TOKENS_FOLLOWING_unary_expression_IN_unary_expression_not_plus_minus_3693)
          unary_expression141 = unary_expression
          @state.following.pop
          if @state.backtracking == 0
            stream_unary_expression.add(unary_expression141.tree)
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

            stream_return_value = return_value ? ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule return_value", return_value.tree) : ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "token return_value", nil)


            root_0 = @adaptor.create_flat_list!
            # 242:67: -> ^( TYPECAST type_name unary_expression )
            # at line 242:70: ^( TYPECAST type_name unary_expression )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(@adaptor.create_from_type!(TYPECAST, "TYPECAST"), root_1)

            @adaptor.add_child(root_1, stream_type_name.next_tree)
            @adaptor.add_child(root_1, stream_unary_expression.next_tree)

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 8
          root_0 = @adaptor.create_flat_list!


          # at line 243:25: postfix_expression
          @state.following.push(TOKENS_FOLLOWING_postfix_expression_IN_unary_expression_not_plus_minus_3729)
          postfix_expression142 = postfix_expression
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, postfix_expression142.tree)
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
    # (in ./Cpp.g)
    # 246:1: postfix_expression : primary_expression (l= LSQUARE assignment_expression RSQUARE | DOT IDENTIFIER | s= STAR IDENTIFIER | POINTERTO IDENTIFIER | p= PLUSPLUS | m= MINUSMINUS )* ;
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
      __RSQUARE145__ = nil
      __DOT146__ = nil
      __IDENTIFIER147__ = nil
      __IDENTIFIER148__ = nil
      __POINTERTO149__ = nil
      __IDENTIFIER150__ = nil
      primary_expression143 = nil
      assignment_expression144 = nil

      tree_for_l = nil
      tree_for_s = nil
      tree_for_p = nil
      tree_for_m = nil
      tree_for_RSQUARE145 = nil
      tree_for_DOT146 = nil
      tree_for_IDENTIFIER147 = nil
      tree_for_IDENTIFIER148 = nil
      tree_for_POINTERTO149 = nil
      tree_for_IDENTIFIER150 = nil

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return return_value
        end
        root_0 = @adaptor.create_flat_list!


        # at line 247:21: primary_expression (l= LSQUARE assignment_expression RSQUARE | DOT IDENTIFIER | s= STAR IDENTIFIER | POINTERTO IDENTIFIER | p= PLUSPLUS | m= MINUSMINUS )*
        @state.following.push(TOKENS_FOLLOWING_primary_expression_IN_postfix_expression_3772)
        primary_expression143 = primary_expression
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, primary_expression143.tree)
        end
        # at line 248:17: (l= LSQUARE assignment_expression RSQUARE | DOT IDENTIFIER | s= STAR IDENTIFIER | POINTERTO IDENTIFIER | p= PLUSPLUS | m= MINUSMINUS )*
        loop do  #loop 43
          alt_43 = 7
          alt_43 = @dfa43.predict(@input)
          case alt_43
          when 1
            # at line 248:21: l= LSQUARE assignment_expression RSQUARE
            l = match(LSQUARE, TOKENS_FOLLOWING_LSQUARE_IN_postfix_expression_3796)
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
            @state.following.push(TOKENS_FOLLOWING_assignment_expression_IN_postfix_expression_3801)
            assignment_expression144 = assignment_expression
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, assignment_expression144.tree)
            end
            __RSQUARE145__ = match(RSQUARE, TOKENS_FOLLOWING_RSQUARE_IN_postfix_expression_3803)

          when 2
            # at line 249:21: DOT IDENTIFIER
            __DOT146__ = match(DOT, TOKENS_FOLLOWING_DOT_IN_postfix_expression_3826)
            if @state.backtracking == 0

              tree_for_DOT146 = @adaptor.create_with_payload!(__DOT146__)
              root_0 = @adaptor.become_root(tree_for_DOT146, root_0)

            end
            __IDENTIFIER147__ = match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_postfix_expression_3835)
            if @state.backtracking == 0

              tree_for_IDENTIFIER147 = @adaptor.create_with_payload!(__IDENTIFIER147__)
              @adaptor.add_child(root_0, tree_for_IDENTIFIER147)

            end

          when 3
            # at line 250:21: s= STAR IDENTIFIER
            s = match(STAR, TOKENS_FOLLOWING_STAR_IN_postfix_expression_3859)
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
            __IDENTIFIER148__ = match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_postfix_expression_3868)
            if @state.backtracking == 0

              tree_for_IDENTIFIER148 = @adaptor.create_with_payload!(__IDENTIFIER148__)
              @adaptor.add_child(root_0, tree_for_IDENTIFIER148)

            end

          when 4
            # at line 251:21: POINTERTO IDENTIFIER
            __POINTERTO149__ = match(POINTERTO, TOKENS_FOLLOWING_POINTERTO_IN_postfix_expression_3890)
            if @state.backtracking == 0

              tree_for_POINTERTO149 = @adaptor.create_with_payload!(__POINTERTO149__)
              root_0 = @adaptor.become_root(tree_for_POINTERTO149, root_0)

            end
            __IDENTIFIER150__ = match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_postfix_expression_3893)
            if @state.backtracking == 0

              tree_for_IDENTIFIER150 = @adaptor.create_with_payload!(__IDENTIFIER150__)
              @adaptor.add_child(root_0, tree_for_IDENTIFIER150)

            end

          when 5
            # at line 252:21: p= PLUSPLUS
            p = match(PLUSPLUS, TOKENS_FOLLOWING_PLUSPLUS_IN_postfix_expression_3917)
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
            # at line 253:21: m= MINUSMINUS
            m = match(MINUSMINUS, TOKENS_FOLLOWING_MINUSMINUS_IN_postfix_expression_3946)
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
            break #loop 43
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
    # (in ./Cpp.g)
    # 257:1: primary_expression : ( ( IDENTIFIER LPAREN )=> function_call | IDENTIFIER | constant | LPAREN assignment_expression RPAREN -> ^( EXPR_GROUP assignment_expression ) );
    def primary_expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 30)
      return_value = PrimaryExpressionReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      primary_expression_start_index = @input.index

      root_0 = nil
      __IDENTIFIER152__ = nil
      __LPAREN154__ = nil
      __RPAREN156__ = nil
      function_call151 = nil
      constant153 = nil
      assignment_expression155 = nil

      tree_for_IDENTIFIER152 = nil
      tree_for_LPAREN154 = nil
      tree_for_RPAREN156 = nil
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
        # at line 258:17: ( ( IDENTIFIER LPAREN )=> function_call | IDENTIFIER | constant | LPAREN assignment_expression RPAREN -> ^( EXPR_GROUP assignment_expression ) )
        alt_44 = 4
        case look_44 = @input.peek(1)
        when IDENTIFIER then look_44_1 = @input.peek(2)

        if (syntactic_predicate?(:synpred_84_cpp!)) 
          alt_44 = 1
        elsif (syntactic_predicate?(:synpred_85_cpp!)) 
          alt_44 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 44, 1)
          raise nvae
        end
        when DECIMAL_LITERAL, STRING_LITERAL, HEX_LITERAL, OCTAL_LITERAL, CHARACTER_LITERAL, FLOATING_POINT_LITERAL then alt_44 = 3
        when LPAREN then alt_44 = 4
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          nvae = NoViableAlternative("", 44, 0)
          raise nvae
        end
        case alt_44
        when 1
          root_0 = @adaptor.create_flat_list!


          # at line 258:21: ( IDENTIFIER LPAREN )=> function_call
          @state.following.push(TOKENS_FOLLOWING_function_call_IN_primary_expression_4019)
          function_call151 = function_call
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, function_call151.tree)
          end

        when 2
          root_0 = @adaptor.create_flat_list!


          # at line 259:21: IDENTIFIER
          __IDENTIFIER152__ = match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_primary_expression_4041)
          if @state.backtracking == 0

            tree_for_IDENTIFIER152 = @adaptor.create_with_payload!(__IDENTIFIER152__)
            @adaptor.add_child(root_0, tree_for_IDENTIFIER152)

          end

        when 3
          root_0 = @adaptor.create_flat_list!


          # at line 260:21: constant
          @state.following.push(TOKENS_FOLLOWING_constant_IN_primary_expression_4063)
          constant153 = constant
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, constant153.tree)
          end

        when 4
          # at line 261:21: LPAREN assignment_expression RPAREN
          __LPAREN154__ = match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_primary_expression_4085) 
          if @state.backtracking == 0
            stream_LPAREN.add(__LPAREN154__)
          end
          @state.following.push(TOKENS_FOLLOWING_assignment_expression_IN_primary_expression_4088)
          assignment_expression155 = assignment_expression
          @state.following.pop
          if @state.backtracking == 0
            stream_assignment_expression.add(assignment_expression155.tree)
          end
          __RPAREN156__ = match(RPAREN, TOKENS_FOLLOWING_RPAREN_IN_primary_expression_4090) 
          if @state.backtracking == 0
            stream_RPAREN.add(__RPAREN156__)
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

            stream_return_value = return_value ? ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule return_value", return_value.tree) : ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "token return_value", nil)


            root_0 = @adaptor.create_flat_list!
            # 261:59: -> ^( EXPR_GROUP assignment_expression )
            # at line 261:62: ^( EXPR_GROUP assignment_expression )
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
    # (in ./Cpp.g)
    # 264:1: function_call : id= IDENTIFIER LPAREN ( arg_list )? RPAREN -> ^( METHOD_CALL $id ( arg_list )? ) ;
    def function_call
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 31)
      return_value = FunctionCallReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      function_call_start_index = @input.index

      root_0 = nil
      id = nil
      __LPAREN157__ = nil
      __RPAREN159__ = nil
      arg_list158 = nil

      tree_for_id = nil
      tree_for_LPAREN157 = nil
      tree_for_RPAREN159 = nil
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
        # at line 265:20: id= IDENTIFIER LPAREN ( arg_list )? RPAREN
        id = match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_function_call_4143) 
        if @state.backtracking == 0
          stream_IDENTIFIER.add(id)
        end
        __LPAREN157__ = match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_function_call_4145) 
        if @state.backtracking == 0
          stream_LPAREN.add(__LPAREN157__)
        end
        # at line 265:41: ( arg_list )?
        alt_45 = 2
        look_45_0 = @input.peek(1)

        if (look_45_0.between?(IDENTIFIER, LPAREN) || look_45_0.between?(DECIMAL_LITERAL, STRING_LITERAL) || look_45_0 == AMPERSAND || look_45_0.between?(PLUS, STAR) || look_45_0.between?(PLUSPLUS, TILDE) || look_45_0.between?(HEX_LITERAL, FLOATING_POINT_LITERAL)) 
          alt_45 = 1
        end
        case alt_45
        when 1
          # at line 0:0: arg_list
          @state.following.push(TOKENS_FOLLOWING_arg_list_IN_function_call_4147)
          arg_list158 = arg_list
          @state.following.pop
          if @state.backtracking == 0
            stream_arg_list.add(arg_list158.tree)
          end

        end
        __RPAREN159__ = match(RPAREN, TOKENS_FOLLOWING_RPAREN_IN_function_call_4150) 
        if @state.backtracking == 0
          stream_RPAREN.add(__RPAREN159__)
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
          stream_id = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token id", id)

          stream_return_value = return_value ? ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule return_value", return_value.tree) : ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "token return_value", nil)


          root_0 = @adaptor.create_flat_list!
          # 265:59: -> ^( METHOD_CALL $id ( arg_list )? )
          # at line 265:62: ^( METHOD_CALL $id ( arg_list )? )
          root_1 = @adaptor.create_flat_list!
          root_1 = @adaptor.become_root(@adaptor.create_from_type!(METHOD_CALL, "METHOD_CALL"), root_1)

          @adaptor.add_child(root_1, stream_id.next_node)
          # at line 265:80: ( arg_list )?
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
    # (in ./Cpp.g)
    # 268:1: arg_list : assignment_expression ( COMMA assignment_expression )* -> ^( ARGS ( assignment_expression )+ ) ;
    def arg_list
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 32)
      return_value = ArgListReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      arg_list_start_index = @input.index

      root_0 = nil
      __COMMA161__ = nil
      assignment_expression160 = nil
      assignment_expression162 = nil

      tree_for_COMMA161 = nil
      stream_COMMA = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token COMMA")
      stream_assignment_expression = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule assignment_expression")
      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return return_value
        end
        # at line 269:20: assignment_expression ( COMMA assignment_expression )*
        @state.following.push(TOKENS_FOLLOWING_assignment_expression_IN_arg_list_4205)
        assignment_expression160 = assignment_expression
        @state.following.pop
        if @state.backtracking == 0
          stream_assignment_expression.add(assignment_expression160.tree)
        end
        # at line 269:42: ( COMMA assignment_expression )*
        loop do  #loop 46
          alt_46 = 2
          look_46_0 = @input.peek(1)

          if (look_46_0 == COMMA) 
            alt_46 = 1

          end
          case alt_46
          when 1
            # at line 269:43: COMMA assignment_expression
            __COMMA161__ = match(COMMA, TOKENS_FOLLOWING_COMMA_IN_arg_list_4208) 
            if @state.backtracking == 0
              stream_COMMA.add(__COMMA161__)
            end
            @state.following.push(TOKENS_FOLLOWING_assignment_expression_IN_arg_list_4210)
            assignment_expression162 = assignment_expression
            @state.following.pop
            if @state.backtracking == 0
              stream_assignment_expression.add(assignment_expression162.tree)
            end

          else
            break #loop 46
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

          stream_return_value = return_value ? ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule return_value", return_value.tree) : ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "token return_value", nil)


          root_0 = @adaptor.create_flat_list!
          # 269:73: -> ^( ARGS ( assignment_expression )+ )
          # at line 269:76: ^( ARGS ( assignment_expression )+ )
          root_1 = @adaptor.create_flat_list!
          root_1 = @adaptor.become_root(@adaptor.create_from_type!(ARGS, "ARGS"), root_1)

          # at line 269:83: ( assignment_expression )+
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
    # (in ./Cpp.g)
    # 272:1: constant : ( HEX_LITERAL | OCTAL_LITERAL | DECIMAL_LITERAL | CHARACTER_LITERAL | STRING_LITERAL | FLOATING_POINT_LITERAL );
    def constant
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 33)
      return_value = ConstantReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      constant_start_index = @input.index

      root_0 = nil
      set163 = nil

      tree_for_set163 = nil

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return return_value
        end
        root_0 = @adaptor.create_flat_list!


        # at line 
        set163 = @input.look
        if @input.peek(1).between?(DECIMAL_LITERAL, STRING_LITERAL) || @input.peek(1).between?(HEX_LITERAL, FLOATING_POINT_LITERAL)
          @input.consume
          if @state.backtracking == 0
            @adaptor.add_child(root_0, @adaptor.create_with_payload!(set163))
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
    # (in ./Cpp.g)
    # 283:1: source_text : ( source_expression | COMMA | LPAREN | RPAREN | WS );
    def source_text
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 34)
      return_value = SourceTextReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      source_text_start_index = @input.index

      root_0 = nil
      __COMMA165__ = nil
      __LPAREN166__ = nil
      __RPAREN167__ = nil
      __WS168__ = nil
      source_expression164 = nil

      tree_for_COMMA165 = nil
      tree_for_LPAREN166 = nil
      tree_for_RPAREN167 = nil
      tree_for_WS168 = nil

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return return_value
        end
        # at line 284:17: ( source_expression | COMMA | LPAREN | RPAREN | WS )
        alt_47 = 5
        alt_47 = @dfa47.predict(@input)
        case alt_47
        when 1
          root_0 = @adaptor.create_flat_list!


          # at line 284:21: source_expression
          @state.following.push(TOKENS_FOLLOWING_source_expression_IN_source_text_4407)
          source_expression164 = source_expression
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, source_expression164.tree)
          end

        when 2
          root_0 = @adaptor.create_flat_list!


          # at line 285:21: COMMA
          __COMMA165__ = match(COMMA, TOKENS_FOLLOWING_COMMA_IN_source_text_4429)
          if @state.backtracking == 0

            tree_for_COMMA165 = @adaptor.create_with_payload!(__COMMA165__)
            @adaptor.add_child(root_0, tree_for_COMMA165)

          end

        when 3
          root_0 = @adaptor.create_flat_list!


          # at line 286:21: LPAREN
          __LPAREN166__ = match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_source_text_4451)
          if @state.backtracking == 0

            tree_for_LPAREN166 = @adaptor.create_with_payload!(__LPAREN166__)
            @adaptor.add_child(root_0, tree_for_LPAREN166)

          end

        when 4
          root_0 = @adaptor.create_flat_list!


          # at line 287:21: RPAREN
          __RPAREN167__ = match(RPAREN, TOKENS_FOLLOWING_RPAREN_IN_source_text_4473)
          if @state.backtracking == 0

            tree_for_RPAREN167 = @adaptor.create_with_payload!(__RPAREN167__)
            @adaptor.add_child(root_0, tree_for_RPAREN167)

          end

        when 5
          root_0 = @adaptor.create_flat_list!


          # at line 288:21: WS
          __WS168__ = match(WS, TOKENS_FOLLOWING_WS_IN_source_text_4495)
          if @state.backtracking == 0

            tree_for_WS168 = @adaptor.create_with_payload!(__WS168__)
            @adaptor.add_child(root_0, tree_for_WS168)

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
    # (in ./Cpp.g)
    # 291:1: macro_expansion : (id= IDENTIFIER ( WS )? LPAREN ( WS )? RPAREN -> ^( EXPAND $id) | id= IDENTIFIER ( WS )? LPAREN ( WS )? mac_args ( WS )? RPAREN -> ^( EXPAND $id ( mac_args )? ) );
    def macro_expansion
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 35)
      return_value = MacroExpansionReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      macro_expansion_start_index = @input.index

      root_0 = nil
      id = nil
      __WS169__ = nil
      __LPAREN170__ = nil
      __WS171__ = nil
      __RPAREN172__ = nil
      __WS173__ = nil
      __LPAREN174__ = nil
      __WS175__ = nil
      __WS177__ = nil
      __RPAREN178__ = nil
      mac_args176 = nil

      tree_for_id = nil
      tree_for_WS169 = nil
      tree_for_LPAREN170 = nil
      tree_for_WS171 = nil
      tree_for_RPAREN172 = nil
      tree_for_WS173 = nil
      tree_for_LPAREN174 = nil
      tree_for_WS175 = nil
      tree_for_WS177 = nil
      tree_for_RPAREN178 = nil
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
        # at line 292:17: (id= IDENTIFIER ( WS )? LPAREN ( WS )? RPAREN -> ^( EXPAND $id) | id= IDENTIFIER ( WS )? LPAREN ( WS )? mac_args ( WS )? RPAREN -> ^( EXPAND $id ( mac_args )? ) )
        alt_53 = 2
        look_53_0 = @input.peek(1)

        if (look_53_0 == IDENTIFIER) 
          look_53_1 = @input.peek(2)

          if (look_53_1 == WS) 
            look_53_2 = @input.peek(3)

            if (look_53_2 == LPAREN) 
              case look_53 = @input.peek(4)
              when WS then look_53_4 = @input.peek(5)

              if (look_53_4 == TEXT_END || look_53_4.between?(IDENTIFIER, WS) || look_53_4 == COMMA || look_53_4.between?(DECIMAL_LITERAL, STRING_LITERAL) || look_53_4 == SIZEOF || look_53_4.between?(HEX_LITERAL, COPERATOR)) 
                alt_53 = 2
              elsif (look_53_4 == RPAREN) 
                look_53_5 = @input.peek(6)

                if (syntactic_predicate?(:synpred_100_cpp!)) 
                  alt_53 = 1
                elsif (true) 
                  alt_53 = 2
                else
                  @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
                nvae = NoViableAlternative("", 53, 5)
                  raise nvae
                end
              else
                @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
              nvae = NoViableAlternative("", 53, 4)
                raise nvae
              end
              when RPAREN then look_53_5 = @input.peek(5)

              if (syntactic_predicate?(:synpred_100_cpp!)) 
                alt_53 = 1
              elsif (true) 
                alt_53 = 2
              else
                @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
              nvae = NoViableAlternative("", 53, 5)
                raise nvae
              end
              when TEXT_END, IDENTIFIER, LPAREN, COMMA, DECIMAL_LITERAL, STRING_LITERAL, SIZEOF, HEX_LITERAL, OCTAL_LITERAL, CHARACTER_LITERAL, FLOATING_POINT_LITERAL, STRINGIFICATION, STRING_OP, SEMICOLON, SHARPSHARP, CKEYWORD, COPERATOR then alt_53 = 2
              else
                @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

                nvae = NoViableAlternative("", 53, 3)
                raise nvae
              end
            else
              @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
            nvae = NoViableAlternative("", 53, 2)
              raise nvae
            end
          elsif (look_53_1 == LPAREN) 
            case look_53 = @input.peek(3)
            when WS then look_53_4 = @input.peek(4)

            if (look_53_4 == TEXT_END || look_53_4.between?(IDENTIFIER, WS) || look_53_4 == COMMA || look_53_4.between?(DECIMAL_LITERAL, STRING_LITERAL) || look_53_4 == SIZEOF || look_53_4.between?(HEX_LITERAL, COPERATOR)) 
              alt_53 = 2
            elsif (look_53_4 == RPAREN) 
              look_53_5 = @input.peek(5)

              if (syntactic_predicate?(:synpred_100_cpp!)) 
                alt_53 = 1
              elsif (true) 
                alt_53 = 2
              else
                @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
              nvae = NoViableAlternative("", 53, 5)
                raise nvae
              end
            else
              @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
            nvae = NoViableAlternative("", 53, 4)
              raise nvae
            end
            when RPAREN then look_53_5 = @input.peek(4)

            if (syntactic_predicate?(:synpred_100_cpp!)) 
              alt_53 = 1
            elsif (true) 
              alt_53 = 2
            else
              @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
            nvae = NoViableAlternative("", 53, 5)
              raise nvae
            end
            when TEXT_END, IDENTIFIER, LPAREN, COMMA, DECIMAL_LITERAL, STRING_LITERAL, SIZEOF, HEX_LITERAL, OCTAL_LITERAL, CHARACTER_LITERAL, FLOATING_POINT_LITERAL, STRINGIFICATION, STRING_OP, SEMICOLON, SHARPSHARP, CKEYWORD, COPERATOR then alt_53 = 2
            else
              @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

              nvae = NoViableAlternative("", 53, 3)
              raise nvae
            end
          else
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
          nvae = NoViableAlternative("", 53, 1)
            raise nvae
          end
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 53, 0)
          raise nvae
        end
        case alt_53
        when 1
          # at line 292:19: id= IDENTIFIER ( WS )? LPAREN ( WS )? RPAREN
          id = match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_macro_expansion_4538) 
          if @state.backtracking == 0
            stream_IDENTIFIER.add(id)
          end
          # at line 292:33: ( WS )?
          alt_48 = 2
          look_48_0 = @input.peek(1)

          if (look_48_0 == WS) 
            alt_48 = 1
          end
          case alt_48
          when 1
            # at line 0:0: WS
            __WS169__ = match(WS, TOKENS_FOLLOWING_WS_IN_macro_expansion_4540) 
            if @state.backtracking == 0
              stream_WS.add(__WS169__)
            end

          end
          __LPAREN170__ = match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_macro_expansion_4543) 
          if @state.backtracking == 0
            stream_LPAREN.add(__LPAREN170__)
          end
          # at line 292:44: ( WS )?
          alt_49 = 2
          look_49_0 = @input.peek(1)

          if (look_49_0 == WS) 
            alt_49 = 1
          end
          case alt_49
          when 1
            # at line 0:0: WS
            __WS171__ = match(WS, TOKENS_FOLLOWING_WS_IN_macro_expansion_4545) 
            if @state.backtracking == 0
              stream_WS.add(__WS171__)
            end

          end
          __RPAREN172__ = match(RPAREN, TOKENS_FOLLOWING_RPAREN_IN_macro_expansion_4548) 
          if @state.backtracking == 0
            stream_RPAREN.add(__RPAREN172__)
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
            stream_id = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token id", id)

            stream_return_value = return_value ? ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule return_value", return_value.tree) : ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "token return_value", nil)


            root_0 = @adaptor.create_flat_list!
            # 292:55: -> ^( EXPAND $id)
            # at line 292:58: ^( EXPAND $id)
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(@adaptor.create_from_type!(EXPAND, "EXPAND"), root_1)

            @adaptor.add_child(root_1, stream_id.next_node)

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 2
          # at line 293:19: id= IDENTIFIER ( WS )? LPAREN ( WS )? mac_args ( WS )? RPAREN
          id = match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_macro_expansion_4579) 
          if @state.backtracking == 0
            stream_IDENTIFIER.add(id)
          end
          # at line 293:33: ( WS )?
          alt_50 = 2
          look_50_0 = @input.peek(1)

          if (look_50_0 == WS) 
            alt_50 = 1
          end
          case alt_50
          when 1
            # at line 0:0: WS
            __WS173__ = match(WS, TOKENS_FOLLOWING_WS_IN_macro_expansion_4581) 
            if @state.backtracking == 0
              stream_WS.add(__WS173__)
            end

          end
          __LPAREN174__ = match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_macro_expansion_4584) 
          if @state.backtracking == 0
            stream_LPAREN.add(__LPAREN174__)
          end
          # at line 293:44: ( WS )?
          alt_51 = 2
          look_51_0 = @input.peek(1)

          if (look_51_0 == WS) 
            look_51_1 = @input.peek(2)

            if (syntactic_predicate?(:synpred_102_cpp!)) 
              alt_51 = 1
            end
          end
          case alt_51
          when 1
            # at line 0:0: WS
            __WS175__ = match(WS, TOKENS_FOLLOWING_WS_IN_macro_expansion_4586) 
            if @state.backtracking == 0
              stream_WS.add(__WS175__)
            end

          end
          @state.following.push(TOKENS_FOLLOWING_mac_args_IN_macro_expansion_4589)
          mac_args176 = mac_args
          @state.following.pop
          if @state.backtracking == 0
            stream_mac_args.add(mac_args176.tree)
          end
          # at line 293:57: ( WS )?
          alt_52 = 2
          look_52_0 = @input.peek(1)

          if (look_52_0 == WS) 
            alt_52 = 1
          end
          case alt_52
          when 1
            # at line 0:0: WS
            __WS177__ = match(WS, TOKENS_FOLLOWING_WS_IN_macro_expansion_4591) 
            if @state.backtracking == 0
              stream_WS.add(__WS177__)
            end

          end
          __RPAREN178__ = match(RPAREN, TOKENS_FOLLOWING_RPAREN_IN_macro_expansion_4594) 
          if @state.backtracking == 0
            stream_RPAREN.add(__RPAREN178__)
          end
          # AST Rewrite
          # elements: id, mac_args
          # token labels: id
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_id = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token id", id)

            stream_return_value = return_value ? ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule return_value", return_value.tree) : ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "token return_value", nil)


            root_0 = @adaptor.create_flat_list!
            # 293:68: -> ^( EXPAND $id ( mac_args )? )
            # at line 293:71: ^( EXPAND $id ( mac_args )? )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(@adaptor.create_from_type!(EXPAND, "EXPAND"), root_1)

            @adaptor.add_child(root_1, stream_id.next_node)
            # at line 293:84: ( mac_args )?
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
    # (in ./Cpp.g)
    # 296:1: mac_args : marg+= m_arg ( ( WS )? COMMA ( WS )? marg+= m_arg )* -> ^( EXP_ARGS ( $marg)+ ) ;
    def mac_args
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 36)
      return_value = MacArgsReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      mac_args_start_index = @input.index

      root_0 = nil
      __WS179__ = nil
      __COMMA180__ = nil
      __WS181__ = nil
      list_of_marg = []
      marg = nil
      marg = nil

      tree_for_WS179 = nil
      tree_for_COMMA180 = nil
      tree_for_WS181 = nil
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
        # at line 296:18: marg+= m_arg ( ( WS )? COMMA ( WS )? marg+= m_arg )*
        @state.following.push(TOKENS_FOLLOWING_m_arg_IN_mac_args_4639)
        marg = m_arg
        @state.following.pop
        if @state.backtracking == 0
          stream_m_arg.add(marg.tree)
        end
        list_of_marg << marg.tree

        # at line 296:30: ( ( WS )? COMMA ( WS )? marg+= m_arg )*
        loop do  #loop 56
          alt_56 = 2
          look_56_0 = @input.peek(1)

          if (look_56_0 == WS) 
            look_56_1 = @input.peek(2)

            if (look_56_1 == COMMA) 
              alt_56 = 1

            end
          elsif (look_56_0 == COMMA) 
            alt_56 = 1

          end
          case alt_56
          when 1
            # at line 296:32: ( WS )? COMMA ( WS )? marg+= m_arg
            # at line 296:32: ( WS )?
            alt_54 = 2
            look_54_0 = @input.peek(1)

            if (look_54_0 == WS) 
              alt_54 = 1
            end
            case alt_54
            when 1
              # at line 0:0: WS
              __WS179__ = match(WS, TOKENS_FOLLOWING_WS_IN_mac_args_4643) 
              if @state.backtracking == 0
                stream_WS.add(__WS179__)
              end

            end
            __COMMA180__ = match(COMMA, TOKENS_FOLLOWING_COMMA_IN_mac_args_4646) 
            if @state.backtracking == 0
              stream_COMMA.add(__COMMA180__)
            end
            # at line 296:42: ( WS )?
            alt_55 = 2
            look_55_0 = @input.peek(1)

            if (look_55_0 == WS) 
              look_55_1 = @input.peek(2)

              if (syntactic_predicate?(:synpred_105_cpp!)) 
                alt_55 = 1
              end
            end
            case alt_55
            when 1
              # at line 0:0: WS
              __WS181__ = match(WS, TOKENS_FOLLOWING_WS_IN_mac_args_4648) 
              if @state.backtracking == 0
                stream_WS.add(__WS181__)
              end

            end
            @state.following.push(TOKENS_FOLLOWING_m_arg_IN_mac_args_4653)
            marg = m_arg
            @state.following.pop
            if @state.backtracking == 0
              stream_m_arg.add(marg.tree)
            end
            list_of_marg << marg.tree


          else
            break #loop 56
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

          stream_return_value = return_value ? ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule return_value", return_value.tree) : ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "token return_value", nil)

          stream_marg = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "token marg", list_of_marg)
          root_0 = @adaptor.create_flat_list!
          # 296:61: -> ^( EXP_ARGS ( $marg)+ )
          # at line 296:64: ^( EXP_ARGS ( $marg)+ )
          root_1 = @adaptor.create_flat_list!
          root_1 = @adaptor.become_root(@adaptor.create_from_type!(EXP_ARGS, "EXP_ARGS"), root_1)

          # at line 296:75: ( $marg)+
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
    # (in ./Cpp.g)
    # 299:1: m_arg : ( ( source_expression )+ -> ^( EXP_ARG ( source_expression )+ ) | -> ^( EXP_ARG ) );
    def m_arg
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 37)
      return_value = MArgReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      m_arg_start_index = @input.index

      root_0 = nil
      source_expression182 = nil

      stream_source_expression = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule source_expression")
      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return return_value
        end
        # at line 299:10: ( ( source_expression )+ -> ^( EXP_ARG ( source_expression )+ ) | -> ^( EXP_ARG ) )
        alt_58 = 2
        case look_58 = @input.peek(1)
        when TEXT_END, IDENTIFIER, LPAREN, DECIMAL_LITERAL, STRING_LITERAL, SIZEOF, HEX_LITERAL, OCTAL_LITERAL, CHARACTER_LITERAL, FLOATING_POINT_LITERAL, STRINGIFICATION, STRING_OP, SEMICOLON, SHARPSHARP, CKEYWORD, COPERATOR then alt_58 = 1
        when WS then look_58_2 = @input.peek(2)

        if (syntactic_predicate?(:synpred_108_cpp!)) 
          alt_58 = 1
        elsif (true) 
          alt_58 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 58, 2)
          raise nvae
        end
        when EOF, RPAREN, COMMA then alt_58 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          nvae = NoViableAlternative("", 58, 0)
          raise nvae
        end
        case alt_58
        when 1
          # at line 299:18: ( source_expression )+
          # at file 299:18: ( source_expression )+
          match_count_57 = 0
          loop do
            alt_57 = 2
            look_57_0 = @input.peek(1)

            if (look_57_0 == WS) 
              look_57_1 = @input.peek(2)

              if (syntactic_predicate?(:synpred_107_cpp!)) 
                alt_57 = 1

              end
            elsif (look_57_0 == TEXT_END || look_57_0.between?(IDENTIFIER, LPAREN) || look_57_0.between?(DECIMAL_LITERAL, STRING_LITERAL) || look_57_0 == SIZEOF || look_57_0.between?(HEX_LITERAL, COPERATOR)) 
              alt_57 = 1

            end
            case alt_57
            when 1
              # at line 0:0: source_expression
              @state.following.push(TOKENS_FOLLOWING_source_expression_IN_m_arg_4700)
              source_expression182 = source_expression
              @state.following.pop
              if @state.backtracking == 0
                stream_source_expression.add(source_expression182.tree)
              end

            else
              match_count_57 > 0 and break
              @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

              eee = EarlyExit(57)


              raise eee
            end
            match_count_57 += 1
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

            stream_return_value = return_value ? ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule return_value", return_value.tree) : ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "token return_value", nil)


            root_0 = @adaptor.create_flat_list!
            # 299:43: -> ^( EXP_ARG ( source_expression )+ )
            # at line 299:46: ^( EXP_ARG ( source_expression )+ )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(@adaptor.create_from_type!(EXP_ARG, "EXP_ARG"), root_1)

            # at line 299:56: ( source_expression )+
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
          # at line 300:25: 
          # AST Rewrite
          # elements: 
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0

            stream_return_value = return_value ? ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule return_value", return_value.tree) : ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "token return_value", nil)


            root_0 = @adaptor.create_flat_list!
            # 300:25: -> ^( EXP_ARG )
            # at line 300:28: ^( EXP_ARG )
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
    # (in ./Cpp.g)
    # 303:1: source_expression : ( ( IDENTIFIER ( WS )? LPAREN )=> macro_expansion | ( primary_source ( WS )? SHARPSHARP )=> concatenate | STRINGIFICATION IDENTIFIER -> ^( STRINGIFICATION IDENTIFIER ) | primary_source | STRING_OP | SIZEOF | LPAREN ( mac_args )? RPAREN -> ^( TEXT_GROUP ( mac_args )? ) | SEMICOLON | TEXT_END | WS );
    def source_expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 38)
      return_value = SourceExpressionReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      source_expression_start_index = @input.index

      root_0 = nil
      __STRINGIFICATION185__ = nil
      __IDENTIFIER186__ = nil
      __STRING_OP188__ = nil
      __SIZEOF189__ = nil
      __LPAREN190__ = nil
      __RPAREN192__ = nil
      __SEMICOLON193__ = nil
      __TEXT_END194__ = nil
      __WS195__ = nil
      macro_expansion183 = nil
      concatenate184 = nil
      primary_source187 = nil
      mac_args191 = nil

      tree_for_STRINGIFICATION185 = nil
      tree_for_IDENTIFIER186 = nil
      tree_for_STRING_OP188 = nil
      tree_for_SIZEOF189 = nil
      tree_for_LPAREN190 = nil
      tree_for_RPAREN192 = nil
      tree_for_SEMICOLON193 = nil
      tree_for_TEXT_END194 = nil
      tree_for_WS195 = nil
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
        # at line 304:17: ( ( IDENTIFIER ( WS )? LPAREN )=> macro_expansion | ( primary_source ( WS )? SHARPSHARP )=> concatenate | STRINGIFICATION IDENTIFIER -> ^( STRINGIFICATION IDENTIFIER ) | primary_source | STRING_OP | SIZEOF | LPAREN ( mac_args )? RPAREN -> ^( TEXT_GROUP ( mac_args )? ) | SEMICOLON | TEXT_END | WS )
        alt_60 = 10
        alt_60 = @dfa60.predict(@input)
        case alt_60
        when 1
          root_0 = @adaptor.create_flat_list!


          # at line 304:25: ( IDENTIFIER ( WS )? LPAREN )=> macro_expansion
          @state.following.push(TOKENS_FOLLOWING_macro_expansion_IN_source_expression_4804)
          macro_expansion183 = macro_expansion
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, macro_expansion183.tree)
          end

        when 2
          root_0 = @adaptor.create_flat_list!


          # at line 305:25: ( primary_source ( WS )? SHARPSHARP )=> concatenate
          @state.following.push(TOKENS_FOLLOWING_concatenate_IN_source_expression_4844)
          concatenate184 = concatenate
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, concatenate184.tree)
          end

        when 3
          # at line 306:25: STRINGIFICATION IDENTIFIER
          __STRINGIFICATION185__ = match(STRINGIFICATION, TOKENS_FOLLOWING_STRINGIFICATION_IN_source_expression_4870) 
          if @state.backtracking == 0
            stream_STRINGIFICATION.add(__STRINGIFICATION185__)
          end
          __IDENTIFIER186__ = match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_source_expression_4872) 
          if @state.backtracking == 0
            stream_IDENTIFIER.add(__IDENTIFIER186__)
          end
          # AST Rewrite
          # elements: IDENTIFIER, STRINGIFICATION
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0

            stream_return_value = return_value ? ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule return_value", return_value.tree) : ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "token return_value", nil)


            root_0 = @adaptor.create_flat_list!
            # 306:52: -> ^( STRINGIFICATION IDENTIFIER )
            # at line 306:60: ^( STRINGIFICATION IDENTIFIER )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(stream_STRINGIFICATION.next_node, root_1)

            @adaptor.add_child(root_1, stream_IDENTIFIER.next_node)

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 4
          root_0 = @adaptor.create_flat_list!


          # at line 307:25: primary_source
          @state.following.push(TOKENS_FOLLOWING_primary_source_IN_source_expression_4911)
          primary_source187 = primary_source
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, primary_source187.tree)
          end

        when 5
          root_0 = @adaptor.create_flat_list!


          # at line 308:25: STRING_OP
          __STRING_OP188__ = match(STRING_OP, TOKENS_FOLLOWING_STRING_OP_IN_source_expression_4937)
          if @state.backtracking == 0

            tree_for_STRING_OP188 = @adaptor.create_with_payload!(__STRING_OP188__)
            @adaptor.add_child(root_0, tree_for_STRING_OP188)

          end

        when 6
          root_0 = @adaptor.create_flat_list!


          # at line 309:25: SIZEOF
          __SIZEOF189__ = match(SIZEOF, TOKENS_FOLLOWING_SIZEOF_IN_source_expression_4963)
          if @state.backtracking == 0

            tree_for_SIZEOF189 = @adaptor.create_with_payload!(__SIZEOF189__)
            @adaptor.add_child(root_0, tree_for_SIZEOF189)

          end

        when 7
          # at line 310:25: LPAREN ( mac_args )? RPAREN
          __LPAREN190__ = match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_source_expression_4989) 
          if @state.backtracking == 0
            stream_LPAREN.add(__LPAREN190__)
          end
          # at line 310:32: ( mac_args )?
          alt_59 = 2
          look_59_0 = @input.peek(1)

          if (look_59_0 == TEXT_END || look_59_0.between?(IDENTIFIER, WS) || look_59_0 == COMMA || look_59_0.between?(DECIMAL_LITERAL, STRING_LITERAL) || look_59_0 == SIZEOF || look_59_0.between?(HEX_LITERAL, COPERATOR)) 
            alt_59 = 1
          elsif (look_59_0 == RPAREN) 
            look_59_2 = @input.peek(2)

            if (syntactic_predicate?(:synpred_117_cpp!)) 
              alt_59 = 1
            end
          end
          case alt_59
          when 1
            # at line 0:0: mac_args
            @state.following.push(TOKENS_FOLLOWING_mac_args_IN_source_expression_4991)
            mac_args191 = mac_args
            @state.following.pop
            if @state.backtracking == 0
              stream_mac_args.add(mac_args191.tree)
            end

          end
          __RPAREN192__ = match(RPAREN, TOKENS_FOLLOWING_RPAREN_IN_source_expression_4994) 
          if @state.backtracking == 0
            stream_RPAREN.add(__RPAREN192__)
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

            stream_return_value = return_value ? ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule return_value", return_value.tree) : ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "token return_value", nil)


            root_0 = @adaptor.create_flat_list!
            # 310:49: -> ^( TEXT_GROUP ( mac_args )? )
            # at line 310:52: ^( TEXT_GROUP ( mac_args )? )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(@adaptor.create_from_type!(TEXT_GROUP, "TEXT_GROUP"), root_1)

            # at line 310:65: ( mac_args )?
            if stream_mac_args.has_next?
              @adaptor.add_child(root_1, stream_mac_args.next_tree)

            end

            stream_mac_args.reset();

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 8
          root_0 = @adaptor.create_flat_list!


          # at line 311:25: SEMICOLON
          __SEMICOLON193__ = match(SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_source_expression_5029)
          if @state.backtracking == 0

            tree_for_SEMICOLON193 = @adaptor.create_with_payload!(__SEMICOLON193__)
            @adaptor.add_child(root_0, tree_for_SEMICOLON193)

          end

        when 9
          root_0 = @adaptor.create_flat_list!


          # at line 312:25: TEXT_END
          __TEXT_END194__ = match(TEXT_END, TOKENS_FOLLOWING_TEXT_END_IN_source_expression_5055)
          if @state.backtracking == 0

            tree_for_TEXT_END194 = @adaptor.create_with_payload!(__TEXT_END194__)
            @adaptor.add_child(root_0, tree_for_TEXT_END194)

          end

        when 10
          root_0 = @adaptor.create_flat_list!


          # at line 313:25: WS
          __WS195__ = match(WS, TOKENS_FOLLOWING_WS_IN_source_expression_5081)
          if @state.backtracking == 0

            tree_for_WS195 = @adaptor.create_with_payload!(__WS195__)
            @adaptor.add_child(root_0, tree_for_WS195)

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
    # (in ./Cpp.g)
    # 316:1: concatenate : prim+= primary_source ( ( WS )? SHARPSHARP ( WS )? prim+= primary_source )+ -> ^( CONCATENATE ( $prim)+ ) ;
    def concatenate
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 39)
      return_value = ConcatenateReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      concatenate_start_index = @input.index

      root_0 = nil
      __WS196__ = nil
      __SHARPSHARP197__ = nil
      __WS198__ = nil
      list_of_prim = []
      prim = nil
      prim = nil

      tree_for_WS196 = nil
      tree_for_SHARPSHARP197 = nil
      tree_for_WS198 = nil
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
        # at line 317:25: prim+= primary_source ( ( WS )? SHARPSHARP ( WS )? prim+= primary_source )+
        @state.following.push(TOKENS_FOLLOWING_primary_source_IN_concatenate_5130)
        prim = primary_source
        @state.following.pop
        if @state.backtracking == 0
          stream_primary_source.add(prim.tree)
        end
        list_of_prim << prim.tree

        # at file 317:46: ( ( WS )? SHARPSHARP ( WS )? prim+= primary_source )+
        match_count_63 = 0
        loop do
          alt_63 = 2
          look_63_0 = @input.peek(1)

          if (look_63_0 == SHARPSHARP) 
            case look_63 = @input.peek(2)
            when WS then look_63_4 = @input.peek(3)

            if (look_63_4 == IDENTIFIER) 
              look_63_5 = @input.peek(4)

              if (syntactic_predicate?(:synpred_123_cpp!)) 
                alt_63 = 1

              end
            elsif (look_63_4.between?(DECIMAL_LITERAL, STRING_LITERAL) || look_63_4.between?(HEX_LITERAL, FLOATING_POINT_LITERAL) || look_63_4.between?(SHARPSHARP, COPERATOR)) 
              alt_63 = 1

            end
            when IDENTIFIER then look_63_5 = @input.peek(3)

            if (syntactic_predicate?(:synpred_123_cpp!)) 
              alt_63 = 1

            end
            when DECIMAL_LITERAL, STRING_LITERAL, HEX_LITERAL, OCTAL_LITERAL, CHARACTER_LITERAL, FLOATING_POINT_LITERAL, SHARPSHARP, CKEYWORD, COPERATOR then alt_63 = 1
            end
          elsif (look_63_0 == WS) 
            look_63_3 = @input.peek(2)

            if (look_63_3 == SHARPSHARP) 
              case look_63 = @input.peek(3)
              when WS then look_63_4 = @input.peek(4)

              if (look_63_4 == IDENTIFIER) 
                look_63_5 = @input.peek(5)

                if (syntactic_predicate?(:synpred_123_cpp!)) 
                  alt_63 = 1

                end
              elsif (look_63_4.between?(DECIMAL_LITERAL, STRING_LITERAL) || look_63_4.between?(HEX_LITERAL, FLOATING_POINT_LITERAL) || look_63_4.between?(SHARPSHARP, COPERATOR)) 
                alt_63 = 1

              end
              when IDENTIFIER then look_63_5 = @input.peek(4)

              if (syntactic_predicate?(:synpred_123_cpp!)) 
                alt_63 = 1

              end
              when DECIMAL_LITERAL, STRING_LITERAL, HEX_LITERAL, OCTAL_LITERAL, CHARACTER_LITERAL, FLOATING_POINT_LITERAL, SHARPSHARP, CKEYWORD, COPERATOR then alt_63 = 1
              end

            end

          end
          case alt_63
          when 1
            # at line 317:47: ( WS )? SHARPSHARP ( WS )? prim+= primary_source
            # at line 317:47: ( WS )?
            alt_61 = 2
            look_61_0 = @input.peek(1)

            if (look_61_0 == WS) 
              alt_61 = 1
            end
            case alt_61
            when 1
              # at line 0:0: WS
              __WS196__ = match(WS, TOKENS_FOLLOWING_WS_IN_concatenate_5133) 
              if @state.backtracking == 0
                stream_WS.add(__WS196__)
              end

            end
            __SHARPSHARP197__ = match(SHARPSHARP, TOKENS_FOLLOWING_SHARPSHARP_IN_concatenate_5136) 
            if @state.backtracking == 0
              stream_SHARPSHARP.add(__SHARPSHARP197__)
            end
            # at line 317:63: ( WS )?
            alt_62 = 2
            look_62_0 = @input.peek(1)

            if (look_62_0 == WS) 
              alt_62 = 1
            end
            case alt_62
            when 1
              # at line 0:0: WS
              __WS198__ = match(WS, TOKENS_FOLLOWING_WS_IN_concatenate_5139) 
              if @state.backtracking == 0
                stream_WS.add(__WS198__)
              end

            end
            @state.following.push(TOKENS_FOLLOWING_primary_source_IN_concatenate_5144)
            prim = primary_source
            @state.following.pop
            if @state.backtracking == 0
              stream_primary_source.add(prim.tree)
            end
            list_of_prim << prim.tree


          else
            match_count_63 > 0 and break
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

            eee = EarlyExit(63)


            raise eee
          end
          match_count_63 += 1
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

          stream_return_value = return_value ? ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule return_value", return_value.tree) : ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "token return_value", nil)

          stream_prim = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "token prim", list_of_prim)
          root_0 = @adaptor.create_flat_list!
          # 317:91: -> ^( CONCATENATE ( $prim)+ )
          # at line 317:94: ^( CONCATENATE ( $prim)+ )
          root_1 = @adaptor.create_flat_list!
          root_1 = @adaptor.become_root(@adaptor.create_from_type!(CONCATENATE, "CONCATENATE"), root_1)

          # at line 317:108: ( $prim)+
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
    # (in ./Cpp.g)
    # 320:1: primary_source : ( SHARPSHARP ( WS )? IDENTIFIER -> ^( SHARPSHARP IDENTIFIER ) | IDENTIFIER | constant | CKEYWORD | COPERATOR );
    def primary_source
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 40)
      return_value = PrimarySourceReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      primary_source_start_index = @input.index

      root_0 = nil
      __SHARPSHARP199__ = nil
      __WS200__ = nil
      __IDENTIFIER201__ = nil
      __IDENTIFIER202__ = nil
      __CKEYWORD204__ = nil
      __COPERATOR205__ = nil
      constant203 = nil

      tree_for_SHARPSHARP199 = nil
      tree_for_WS200 = nil
      tree_for_IDENTIFIER201 = nil
      tree_for_IDENTIFIER202 = nil
      tree_for_CKEYWORD204 = nil
      tree_for_COPERATOR205 = nil
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
        # at line 321:17: ( SHARPSHARP ( WS )? IDENTIFIER -> ^( SHARPSHARP IDENTIFIER ) | IDENTIFIER | constant | CKEYWORD | COPERATOR )
        alt_65 = 5
        case look_65 = @input.peek(1)
        when SHARPSHARP then alt_65 = 1
        when IDENTIFIER then alt_65 = 2
        when DECIMAL_LITERAL, STRING_LITERAL, HEX_LITERAL, OCTAL_LITERAL, CHARACTER_LITERAL, FLOATING_POINT_LITERAL then alt_65 = 3
        when CKEYWORD then alt_65 = 4
        when COPERATOR then alt_65 = 5
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          nvae = NoViableAlternative("", 65, 0)
          raise nvae
        end
        case alt_65
        when 1
          # at line 321:25: SHARPSHARP ( WS )? IDENTIFIER
          __SHARPSHARP199__ = match(SHARPSHARP, TOKENS_FOLLOWING_SHARPSHARP_IN_primary_source_5204) 
          if @state.backtracking == 0
            stream_SHARPSHARP.add(__SHARPSHARP199__)
          end
          # at line 321:36: ( WS )?
          alt_64 = 2
          look_64_0 = @input.peek(1)

          if (look_64_0 == WS) 
            alt_64 = 1
          end
          case alt_64
          when 1
            # at line 0:0: WS
            __WS200__ = match(WS, TOKENS_FOLLOWING_WS_IN_primary_source_5206) 
            if @state.backtracking == 0
              stream_WS.add(__WS200__)
            end

          end
          __IDENTIFIER201__ = match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_primary_source_5210) 
          if @state.backtracking == 0
            stream_IDENTIFIER.add(__IDENTIFIER201__)
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

            stream_return_value = return_value ? ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule return_value", return_value.tree) : ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "token return_value", nil)


            root_0 = @adaptor.create_flat_list!
            # 321:52: -> ^( SHARPSHARP IDENTIFIER )
            # at line 321:55: ^( SHARPSHARP IDENTIFIER )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(stream_SHARPSHARP.next_node, root_1)

            @adaptor.add_child(root_1, stream_IDENTIFIER.next_node)

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 2
          root_0 = @adaptor.create_flat_list!


          # at line 322:25: IDENTIFIER
          __IDENTIFIER202__ = match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_primary_source_5244)
          if @state.backtracking == 0

            tree_for_IDENTIFIER202 = @adaptor.create_with_payload!(__IDENTIFIER202__)
            @adaptor.add_child(root_0, tree_for_IDENTIFIER202)

          end

        when 3
          root_0 = @adaptor.create_flat_list!


          # at line 323:25: constant
          @state.following.push(TOKENS_FOLLOWING_constant_IN_primary_source_5270)
          constant203 = constant
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, constant203.tree)
          end

        when 4
          root_0 = @adaptor.create_flat_list!


          # at line 324:25: CKEYWORD
          __CKEYWORD204__ = match(CKEYWORD, TOKENS_FOLLOWING_CKEYWORD_IN_primary_source_5296)
          if @state.backtracking == 0

            tree_for_CKEYWORD204 = @adaptor.create_with_payload!(__CKEYWORD204__)
            @adaptor.add_child(root_0, tree_for_CKEYWORD204)

          end

        when 5
          root_0 = @adaptor.create_flat_list!


          # at line 325:25: COPERATOR
          __COPERATOR205__ = match(COPERATOR, TOKENS_FOLLOWING_COPERATOR_IN_primary_source_5322)
          if @state.backtracking == 0

            tree_for_COPERATOR205 = @adaptor.create_with_payload!(__COPERATOR205__)
            @adaptor.add_child(root_0, tree_for_COPERATOR205)

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
    # (in ./Cpp.g)
    # 675:1: macro_text : ( source_text )+ -> ^( MACRO_DEFINE ( source_text )+ ) ;
    def macro_text
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 41)
      return_value = MacroTextReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      macro_text_start_index = @input.index

      root_0 = nil
      source_text206 = nil

      stream_source_text = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule source_text")
      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return return_value
        end
        # at line 676:25: ( source_text )+
        # at file 676:25: ( source_text )+
        match_count_66 = 0
        loop do
          alt_66 = 2
          look_66_0 = @input.peek(1)

          if (look_66_0 == TEXT_END || look_66_0.between?(IDENTIFIER, COMMA) || look_66_0.between?(DECIMAL_LITERAL, STRING_LITERAL) || look_66_0 == SIZEOF || look_66_0.between?(HEX_LITERAL, COPERATOR)) 
            alt_66 = 1

          end
          case alt_66
          when 1
            # at line 0:0: source_text
            @state.following.push(TOKENS_FOLLOWING_source_text_IN_macro_text_9250)
            source_text206 = source_text
            @state.following.pop
            if @state.backtracking == 0
              stream_source_text.add(source_text206.tree)
            end

          else
            match_count_66 > 0 and break
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

            eee = EarlyExit(66)


            raise eee
          end
          match_count_66 += 1
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

          stream_return_value = return_value ? ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule return_value", return_value.tree) : ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "token return_value", nil)


          root_0 = @adaptor.create_flat_list!
          # 676:38: -> ^( MACRO_DEFINE ( source_text )+ )
          # at line 676:41: ^( MACRO_DEFINE ( source_text )+ )
          root_1 = @adaptor.create_flat_list!
          root_1 = @adaptor.become_root(@adaptor.create_from_type!(MACRO_DEFINE, "MACRO_DEFINE"), root_1)

          # at line 676:56: ( source_text )+
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

    # parser rule synpred_14_cpp! (synpred14_Cpp)
    # 
    # (in ./Cpp.g)
    # 112:20: synpred14_Cpp : DEFINE IDENTIFIER LPAREN ( WS )? RPAREN ( macro_text )? ;
    def synpred_14_cpp!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 55)

      # at line 112:20: DEFINE IDENTIFIER LPAREN ( WS )? RPAREN ( macro_text )?
      match(DEFINE, TOKENS_FOLLOWING_DEFINE_IN_synpred14_Cpp_820)
      match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_synpred14_Cpp_826)
      match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_synpred14_Cpp_829)
      # at line 112:55: ( WS )?
      alt_67 = 2
      look_67_0 = @input.peek(1)

      if (look_67_0 == WS) 
        alt_67 = 1
      end
      case alt_67
      when 1
        # at line 0:0: WS
        match(WS, TOKENS_FOLLOWING_WS_IN_synpred14_Cpp_836)

      end
      match(RPAREN, TOKENS_FOLLOWING_RPAREN_IN_synpred14_Cpp_843)
      # at line 112:71: ( macro_text )?
      alt_68 = 2
      look_68_0 = @input.peek(1)

      if (look_68_0 == TEXT_END || look_68_0.between?(IDENTIFIER, COMMA) || look_68_0.between?(DECIMAL_LITERAL, STRING_LITERAL) || look_68_0 == SIZEOF || look_68_0.between?(HEX_LITERAL, COPERATOR)) 
        alt_68 = 1
      end
      case alt_68
      when 1
        # at line 0:0: macro_text
        @state.following.push(TOKENS_FOLLOWING_macro_text_IN_synpred14_Cpp_846)
        macro_text
        @state.following.pop

      end

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 55)

    end
    # parser rule synpred_22_cpp! (synpred22_Cpp)
    # 
    # (in ./Cpp.g)
    # 113:20: synpred22_Cpp : DEFINE mac= IDENTIFIER LPAREN ( WS )? (arg+= macro_param ( WS )? ( COMMA ( WS )* arg+= macro_param ( WS )* )* )? RPAREN ( macro_text )? ;
    def synpred_22_cpp!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 63)
      mac = nil
      list_of_arg = []
      arg = nil
      arg = nil

      # at line 113:20: DEFINE mac= IDENTIFIER LPAREN ( WS )? (arg+= macro_param ( WS )? ( COMMA ( WS )* arg+= macro_param ( WS )* )* )? RPAREN ( macro_text )?
      match(DEFINE, TOKENS_FOLLOWING_DEFINE_IN_synpred22_Cpp_879)
      mac = match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_synpred22_Cpp_883)
      match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_synpred22_Cpp_886)
      # at line 113:50: ( WS )?
      alt_75 = 2
      look_75_0 = @input.peek(1)

      if (look_75_0 == WS) 
        alt_75 = 1
      end
      case alt_75
      when 1
        # at line 0:0: WS
        match(WS, TOKENS_FOLLOWING_WS_IN_synpred22_Cpp_888)

      end
      # at line 113:54: (arg+= macro_param ( WS )? ( COMMA ( WS )* arg+= macro_param ( WS )* )* )?
      alt_80 = 2
      look_80_0 = @input.peek(1)

      if (look_80_0 == IDENTIFIER || look_80_0 == ELLIPSIS) 
        alt_80 = 1
      end
      case alt_80
      when 1
        # at line 113:55: arg+= macro_param ( WS )? ( COMMA ( WS )* arg+= macro_param ( WS )* )*
        @state.following.push(TOKENS_FOLLOWING_macro_param_IN_synpred22_Cpp_894)
        arg = macro_param
        @state.following.pop
        list_of_arg << arg

        # at line 113:72: ( WS )?
        alt_76 = 2
        look_76_0 = @input.peek(1)

        if (look_76_0 == WS) 
          alt_76 = 1
        end
        case alt_76
        when 1
          # at line 0:0: WS
          match(WS, TOKENS_FOLLOWING_WS_IN_synpred22_Cpp_896)

        end
        # at line 113:76: ( COMMA ( WS )* arg+= macro_param ( WS )* )*
        loop do  #loop 79
          alt_79 = 2
          look_79_0 = @input.peek(1)

          if (look_79_0 == COMMA) 
            alt_79 = 1

          end
          case alt_79
          when 1
            # at line 113:77: COMMA ( WS )* arg+= macro_param ( WS )*
            match(COMMA, TOKENS_FOLLOWING_COMMA_IN_synpred22_Cpp_900)
            # at line 113:83: ( WS )*
            loop do  #loop 77
              alt_77 = 2
              look_77_0 = @input.peek(1)

              if (look_77_0 == WS) 
                alt_77 = 1

              end
              case alt_77
              when 1
                # at line 0:0: WS
                match(WS, TOKENS_FOLLOWING_WS_IN_synpred22_Cpp_902)

              else
                break #loop 77
              end
            end
            @state.following.push(TOKENS_FOLLOWING_macro_param_IN_synpred22_Cpp_907)
            arg = macro_param
            @state.following.pop
            list_of_arg << arg

            # at line 113:104: ( WS )*
            loop do  #loop 78
              alt_78 = 2
              look_78_0 = @input.peek(1)

              if (look_78_0 == WS) 
                alt_78 = 1

              end
              case alt_78
              when 1
                # at line 0:0: WS
                match(WS, TOKENS_FOLLOWING_WS_IN_synpred22_Cpp_909)

              else
                break #loop 78
              end
            end

          else
            break #loop 79
          end
        end

      end
      match(RPAREN, TOKENS_FOLLOWING_RPAREN_IN_synpred22_Cpp_916)
      # at line 113:120: ( macro_text )?
      alt_81 = 2
      look_81_0 = @input.peek(1)

      if (look_81_0 == TEXT_END || look_81_0.between?(IDENTIFIER, COMMA) || look_81_0.between?(DECIMAL_LITERAL, STRING_LITERAL) || look_81_0 == SIZEOF || look_81_0.between?(HEX_LITERAL, COPERATOR)) 
        alt_81 = 1
      end
      case alt_81
      when 1
        # at line 0:0: macro_text
        @state.following.push(TOKENS_FOLLOWING_macro_text_IN_synpred22_Cpp_919)
        macro_text
        @state.following.pop

      end

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 63)

    end
    # parser rule synpred_33_cpp! (synpred33_Cpp)
    # 
    # (in ./Cpp.g)
    # 163:19: synpred33_Cpp : IDENTIFIER {...}?;
    def synpred_33_cpp!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 74)

      # at line 163:19: IDENTIFIER {...}?
      match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_synpred33_Cpp_1798)
      unless (( @input.look(-2).text == "ifndef" ))
        raise FailedPredicate("synpred33_Cpp", " @input.look(-2).text == \"ifndef\" ")
      end

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 74)

    end
    # parser rule synpred_34_cpp! (synpred34_Cpp)
    # 
    # (in ./Cpp.g)
    # 164:19: synpred34_Cpp : IDENTIFIER {...}?;
    def synpred_34_cpp!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 75)

      # at line 164:19: IDENTIFIER {...}?
      match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_synpred34_Cpp_1829)
      unless (( @input.look(-2).text == "ifdef"  ))
        raise FailedPredicate("synpred34_Cpp", " @input.look(-2).text == \"ifdef\"  ")
      end

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 75)

    end
    # parser rule synpred_67_cpp! (synpred67_Cpp)
    # 
    # (in ./Cpp.g)
    # 228:25: synpred67_Cpp : SIZEOF unary_expression ;
    def synpred_67_cpp!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 108)

      # at line 228:25: SIZEOF unary_expression
      match(SIZEOF, TOKENS_FOLLOWING_SIZEOF_IN_synpred67_Cpp_3154)
      @state.following.push(TOKENS_FOLLOWING_unary_expression_IN_synpred67_Cpp_3157)
      unary_expression
      @state.following.pop

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 108)

    end
    # parser rule synpred_68_cpp! (synpred68_Cpp)
    # 
    # (in ./Cpp.g)
    # 229:25: synpred68_Cpp : SIZEOF LPAREN type_name RPAREN ;
    def synpred_68_cpp!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 109)

      # at line 229:25: SIZEOF LPAREN type_name RPAREN
      match(SIZEOF, TOKENS_FOLLOWING_SIZEOF_IN_synpred68_Cpp_3191)
      match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_synpred68_Cpp_3194)
      @state.following.push(TOKENS_FOLLOWING_type_name_IN_synpred68_Cpp_3196)
      type_name
      @state.following.pop
      match(RPAREN, TOKENS_FOLLOWING_RPAREN_IN_synpred68_Cpp_3198)

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 109)

    end
    # parser rule synpred_77_cpp! (synpred77_Cpp)
    # 
    # (in ./Cpp.g)
    # 242:25: synpred77_Cpp : LPAREN type_name RPAREN unary_expression ;
    def synpred_77_cpp!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 118)

      # at line 242:25: LPAREN type_name RPAREN unary_expression
      match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_synpred77_Cpp_3686)
      @state.following.push(TOKENS_FOLLOWING_type_name_IN_synpred77_Cpp_3688)
      type_name
      @state.following.pop
      match(RPAREN, TOKENS_FOLLOWING_RPAREN_IN_synpred77_Cpp_3690)
      @state.following.push(TOKENS_FOLLOWING_unary_expression_IN_synpred77_Cpp_3693)
      unary_expression
      @state.following.pop

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 118)

    end
    # parser rule synpred_80_cpp! (synpred80_Cpp)
    # 
    # (in ./Cpp.g)
    # 250:21: synpred80_Cpp : s= STAR IDENTIFIER ;
    def synpred_80_cpp!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 121)
      s = nil

      # at line 250:21: s= STAR IDENTIFIER
      s = match(STAR, TOKENS_FOLLOWING_STAR_IN_synpred80_Cpp_3859)
      match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_synpred80_Cpp_3868)

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 121)

    end
    # parser rule synpred_84_cpp! (synpred84_Cpp)
    # 
    # (in ./Cpp.g)
    # 258:21: synpred84_Cpp : IDENTIFIER LPAREN ;
    def synpred_84_cpp!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 125)

      # at line 258:22: IDENTIFIER LPAREN
      match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_synpred84_Cpp_4012)
      match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_synpred84_Cpp_4014)

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 125)

    end
    # parser rule synpred_85_cpp! (synpred85_Cpp)
    # 
    # (in ./Cpp.g)
    # 259:21: synpred85_Cpp : IDENTIFIER ;
    def synpred_85_cpp!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 126)

      # at line 259:21: IDENTIFIER
      match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_synpred85_Cpp_4041)

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 126)

    end
    # parser rule synpred_94_cpp! (synpred94_Cpp)
    # 
    # (in ./Cpp.g)
    # 284:21: synpred94_Cpp : source_expression ;
    def synpred_94_cpp!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 135)

      # at line 284:21: source_expression
      @state.following.push(TOKENS_FOLLOWING_source_expression_IN_synpred94_Cpp_4407)
      source_expression
      @state.following.pop

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 135)

    end
    # parser rule synpred_96_cpp! (synpred96_Cpp)
    # 
    # (in ./Cpp.g)
    # 286:21: synpred96_Cpp : LPAREN ;
    def synpred_96_cpp!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 137)

      # at line 286:21: LPAREN
      match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_synpred96_Cpp_4451)

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 137)

    end
    # parser rule synpred_100_cpp! (synpred100_Cpp)
    # 
    # (in ./Cpp.g)
    # 292:19: synpred100_Cpp : id= IDENTIFIER ( WS )? LPAREN ( WS )? RPAREN ;
    def synpred_100_cpp!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 141)
      id = nil

      # at line 292:19: id= IDENTIFIER ( WS )? LPAREN ( WS )? RPAREN
      id = match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_synpred100_Cpp_4538)
      # at line 292:33: ( WS )?
      alt_82 = 2
      look_82_0 = @input.peek(1)

      if (look_82_0 == WS) 
        alt_82 = 1
      end
      case alt_82
      when 1
        # at line 0:0: WS
        match(WS, TOKENS_FOLLOWING_WS_IN_synpred100_Cpp_4540)

      end
      match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_synpred100_Cpp_4543)
      # at line 292:44: ( WS )?
      alt_83 = 2
      look_83_0 = @input.peek(1)

      if (look_83_0 == WS) 
        alt_83 = 1
      end
      case alt_83
      when 1
        # at line 0:0: WS
        match(WS, TOKENS_FOLLOWING_WS_IN_synpred100_Cpp_4545)

      end
      match(RPAREN, TOKENS_FOLLOWING_RPAREN_IN_synpred100_Cpp_4548)

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 141)

    end
    # parser rule synpred_102_cpp! (synpred102_Cpp)
    # 
    # (in ./Cpp.g)
    # 293:44: synpred102_Cpp : WS ;
    def synpred_102_cpp!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 143)

      # at line 293:44: WS
      match(WS, TOKENS_FOLLOWING_WS_IN_synpred102_Cpp_4586)

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 143)

    end
    # parser rule synpred_105_cpp! (synpred105_Cpp)
    # 
    # (in ./Cpp.g)
    # 296:42: synpred105_Cpp : WS ;
    def synpred_105_cpp!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 146)

      # at line 296:42: WS
      match(WS, TOKENS_FOLLOWING_WS_IN_synpred105_Cpp_4648)

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 146)

    end
    # parser rule synpred_107_cpp! (synpred107_Cpp)
    # 
    # (in ./Cpp.g)
    # 299:18: synpred107_Cpp : source_expression ;
    def synpred_107_cpp!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 148)

      # at line 299:18: source_expression
      @state.following.push(TOKENS_FOLLOWING_source_expression_IN_synpred107_Cpp_4700)
      source_expression
      @state.following.pop

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 148)

    end
    # parser rule synpred_108_cpp! (synpred108_Cpp)
    # 
    # (in ./Cpp.g)
    # 299:18: synpred108_Cpp : ( source_expression )+ ;
    def synpred_108_cpp!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 149)

      # at line 299:18: ( source_expression )+
      # at file 299:18: ( source_expression )+
      match_count_86 = 0
      loop do
        alt_86 = 2
        look_86_0 = @input.peek(1)

        if (look_86_0 == TEXT_END || look_86_0.between?(IDENTIFIER, WS) || look_86_0.between?(DECIMAL_LITERAL, STRING_LITERAL) || look_86_0 == SIZEOF || look_86_0.between?(HEX_LITERAL, COPERATOR)) 
          alt_86 = 1

        end
        case alt_86
        when 1
          # at line 0:0: source_expression
          @state.following.push(TOKENS_FOLLOWING_source_expression_IN_synpred108_Cpp_4700)
          source_expression
          @state.following.pop

        else
          match_count_86 > 0 and break
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          eee = EarlyExit(86)


          raise eee
        end
        match_count_86 += 1
      end


    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 149)

    end
    # parser rule synpred_110_cpp! (synpred110_Cpp)
    # 
    # (in ./Cpp.g)
    # 304:25: synpred110_Cpp : IDENTIFIER ( WS )? LPAREN ;
    def synpred_110_cpp!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 151)

      # at line 304:26: IDENTIFIER ( WS )? LPAREN
      match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_synpred110_Cpp_4794)
      # at line 304:37: ( WS )?
      alt_87 = 2
      look_87_0 = @input.peek(1)

      if (look_87_0 == WS) 
        alt_87 = 1
      end
      case alt_87
      when 1
        # at line 0:0: WS
        match(WS, TOKENS_FOLLOWING_WS_IN_synpred110_Cpp_4796)

      end
      match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_synpred110_Cpp_4799)

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 151)

    end
    # parser rule synpred_112_cpp! (synpred112_Cpp)
    # 
    # (in ./Cpp.g)
    # 305:25: synpred112_Cpp : primary_source ( WS )? SHARPSHARP ;
    def synpred_112_cpp!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 153)

      # at line 305:26: primary_source ( WS )? SHARPSHARP
      @state.following.push(TOKENS_FOLLOWING_primary_source_IN_synpred112_Cpp_4831)
      primary_source
      @state.following.pop
      # at line 305:42: ( WS )?
      alt_88 = 2
      look_88_0 = @input.peek(1)

      if (look_88_0 == WS) 
        alt_88 = 1
      end
      case alt_88
      when 1
        # at line 0:0: WS
        match(WS, TOKENS_FOLLOWING_WS_IN_synpred112_Cpp_4834)

      end
      match(SHARPSHARP, TOKENS_FOLLOWING_SHARPSHARP_IN_synpred112_Cpp_4837)

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 153)

    end
    # parser rule synpred_114_cpp! (synpred114_Cpp)
    # 
    # (in ./Cpp.g)
    # 307:25: synpred114_Cpp : primary_source ;
    def synpred_114_cpp!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 155)

      # at line 307:25: primary_source
      @state.following.push(TOKENS_FOLLOWING_primary_source_IN_synpred114_Cpp_4911)
      primary_source
      @state.following.pop

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 155)

    end
    # parser rule synpred_117_cpp! (synpred117_Cpp)
    # 
    # (in ./Cpp.g)
    # 310:32: synpred117_Cpp : mac_args ;
    def synpred_117_cpp!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 158)

      # at line 310:32: mac_args
      @state.following.push(TOKENS_FOLLOWING_mac_args_IN_synpred117_Cpp_4991)
      mac_args
      @state.following.pop

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 158)

    end
    # parser rule synpred_123_cpp! (synpred123_Cpp)
    # 
    # (in ./Cpp.g)
    # 317:47: synpred123_Cpp : ( WS )? SHARPSHARP ( WS )? prim+= primary_source ;
    def synpred_123_cpp!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 164)
      list_of_prim = []
      prim = nil
      prim = nil

      # at line 317:47: ( WS )? SHARPSHARP ( WS )? prim+= primary_source
      # at line 317:47: ( WS )?
      alt_90 = 2
      look_90_0 = @input.peek(1)

      if (look_90_0 == WS) 
        alt_90 = 1
      end
      case alt_90
      when 1
        # at line 0:0: WS
        match(WS, TOKENS_FOLLOWING_WS_IN_synpred123_Cpp_5133)

      end
      match(SHARPSHARP, TOKENS_FOLLOWING_SHARPSHARP_IN_synpred123_Cpp_5136)
      # at line 317:63: ( WS )?
      alt_91 = 2
      look_91_0 = @input.peek(1)

      if (look_91_0 == WS) 
        alt_91 = 1
      end
      case alt_91
      when 1
        # at line 0:0: WS
        match(WS, TOKENS_FOLLOWING_WS_IN_synpred123_Cpp_5139)

      end
      @state.following.push(TOKENS_FOLLOWING_primary_source_IN_synpred123_Cpp_5144)
      prim = primary_source
      @state.following.pop
      list_of_prim << prim


    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 164)

    end

      # - - - - - - - - - - DFA definitions - - - - - - - - - - -
      class DFA2 < ANTLR3::DFA
        EOT = unpack(11, -1)
        EOF = unpack(11, -1)
        MIN = unpack(1, 6, 10, -1)
        MAX = unpack(1, 106, 10, -1)
        ACCEPT = unpack(1, -1, 1, 1, 1, 2, 1, 3, 1, 4, 1, 5, 1, 6, 1, 7, 1, 8, 1, 
                        9, 1, 10)
        SPECIAL = unpack(11, -1)
        TRANSITION = [
          unpack(1, 7, 3, -1, 3, 3, 18, -1, 1, 2, 3, -1, 1, 9, 1, -1, 1, 8, 2, 4, 
                 1, 5, 1, 6, 4, -1, 1, 1, 1, 10, 5, 2, 1, -1, 2, 2, 33, -1, 1, 2, 
                 7, -1, 10, 2),
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
        
        @decision = 2
        

        def description
          <<-'__dfa_description__'.strip!
            94:17: ( DIRECTIVE | text_line | diagnostics | file_inclusion | macro_define | macro_undef | conditional_compilation | line_control | macro_execution )?
          __dfa_description__
        end
      end
      class DFA14 < ANTLR3::DFA
        EOT = unpack(18, -1)
        EOF = unpack(2, -1, 2, 4, 1, -1, 2, 4, 2, -1, 2, 4, 2, -1, 5, 4)
        MIN = unpack(1, 40, 1, 48, 2, 31, 1, -1, 2, 31, 1, -1, 1, 0, 2, 31, 1, 0, 
                     1, -1, 5, 31)
        MAX = unpack(1, 40, 1, 48, 2, 106, 1, -1, 2, 106, 1, -1, 1, 0, 2, 106, 1, 
                     0, 1, -1, 5, 106)
        ACCEPT = unpack(4, -1, 1, 3, 2, -1, 1, 2, 4, -1, 1, 1, 5, -1)
        SPECIAL = unpack(8, -1, 1, 1, 2, -1, 1, 0, 6, -1)
        TRANSITION = [
          unpack(1, 1),
          unpack(1, 2),
          unpack(1, 4, 15, -1, 2, 4, 1, 3, 3, 4, 1, -1, 2, 4, 33, -1, 1, 4, 7, 
                  -1, 10, 4),
          unpack(1, 4, 15, -1, 1, 4, 1, 6, 1, 4, 1, 5, 1, 8, 1, 4, 1, 7, 2, 4, 
                  33, -1, 1, 4, 7, -1, 10, 4),
          unpack(),
          unpack(1, 4, 15, -1, 1, 4, 1, 6, 2, 4, 1, 8, 1, 4, 1, 7, 2, 4, 33, -1, 
                  1, 4, 7, -1, 10, 4),
          unpack(1, 4, 15, -1, 3, 4, 1, 9, 1, 11, 1, 10, 1, 7, 2, 4, 33, -1, 1, 
                  4, 7, -1, 10, 4),
          unpack(),
          unpack(1, -1),
          unpack(1, 4, 15, -1, 4, 4, 1, 11, 1, 10, 1, -1, 2, 4, 33, -1, 1, 4, 7, 
                  -1, 10, 4),
          unpack(1, 4, 15, -1, 1, 4, 1, 14, 1, 4, 1, 13, 2, 4, 1, 7, 2, 4, 33, 
                  -1, 1, 4, 7, -1, 10, 4),
          unpack(1, -1),
          unpack(),
          unpack(1, 4, 15, -1, 1, 4, 1, 14, 1, 4, 1, 15, 2, 4, 1, 7, 2, 4, 33, 
                  -1, 1, 4, 7, -1, 10, 4),
          unpack(1, 4, 15, -1, 3, 4, 1, 16, 1, 11, 1, 10, 1, 7, 2, 4, 33, -1, 1, 
                  4, 7, -1, 10, 4),
          unpack(1, 4, 15, -1, 1, 4, 1, 14, 1, 4, 1, 15, 2, 4, 1, 7, 2, 4, 33, 
                  -1, 1, 4, 7, -1, 10, 4),
          unpack(1, 4, 15, -1, 3, 4, 1, 17, 1, 11, 1, 10, 1, -1, 2, 4, 33, -1, 
                  1, 4, 7, -1, 10, 4),
          unpack(1, 4, 15, -1, 3, 4, 1, 17, 1, 11, 1, 10, 1, -1, 2, 4, 33, -1, 
                  1, 4, 7, -1, 10, 4)
        ].freeze
        
        @decision = 14
        
        
        def special_state_transition(s, input)
          @recognizer.special_state_transition_for_dfa14(s, input)
        end

        def description
          <<-'__dfa_description__'.strip!
            111:1: macro_define : ( DEFINE IDENTIFIER LPAREN ( WS )? RPAREN ( macro_text )? -> ^( MAC_FUNCTION_OBJECT IDENTIFIER ( macro_text )? ) | DEFINE mac= IDENTIFIER LPAREN ( WS )? (arg+= macro_param ( WS )? ( COMMA ( WS )* arg+= macro_param ( WS )* )* )? RPAREN ( macro_text )? -> ^( MAC_FUNCTION $mac ( $arg)+ ( macro_text )? ) | DEFINE IDENTIFIER ( macro_text )? -> ^( MAC_OBJECT IDENTIFIER ( macro_text )? ) );
          __dfa_description__
        end
      end
      def special_state_transition_for_dfa14(s, input)
        case s
        when 0
          look_14_11 = input.peek
          index_14_11 = input.index
          input.rewind
          s = -1
          if (syntactic_predicate?(:synpred_22_cpp!))
            s = 7
          elsif (true)
            s = 4
          end
           
          input.seek(index_14_11)

        when 1
          look_14_8 = input.peek
          index_14_8 = input.index
          input.rewind
          s = -1
          if (syntactic_predicate?(:synpred_14_cpp!))
            s = 12
          elsif (syntactic_predicate?(:synpred_22_cpp!))
            s = 7
          elsif (true)
            s = 4
          end
           
          input.seek(index_14_8)

        end
        @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
        nva = ANTLR3::Error::NoViableAlternative.new(@dfa14.description, 14, s, input)
        @dfa14.error(nva)
        raise nva
      end
      class DFA41 < ANTLR3::DFA
        EOT = unpack(13, -1)
        EOF = unpack(13, -1)
        MIN = unpack(1, 48, 2, -1, 2, 48, 1, -1, 1, 48, 3, -1, 1, 49, 1, 0, 1, -1)
        MAX = unpack(1, 100, 2, -1, 1, 100, 1, 49, 1, -1, 1, 100, 3, -1, 1, 96, 
                     1, 0, 1, -1)
        ACCEPT = unpack(1, -1, 1, 1, 1, 2, 2, -1, 1, 7, 1, -1, 1, 3, 1, 6, 1, 5, 
                        2, -1, 1, 4)
        SPECIAL = unpack(11, -1, 1, 0, 1, -1)
        TRANSITION = [
          unpack(2, 5, 4, -1, 2, 5, 17, -1, 1, 5, 8, -1, 3, 5, 2, -1, 1, 1, 1, 2, 
                 1, 3, 1, 4, 2, 5, 4, -1, 4, 5),
          unpack(),
          unpack(),
          unpack(1, 7, 1, 6, 4, -1, 2, 7, 17, -1, 1, 7, 8, -1, 3, 7, 2, -1, 6, 
                  7, 4, -1, 4, 7),
          unpack(1, 9, 1, 8),
          unpack(),
          unpack(1, 10, 1, 7, 4, -1, 2, 7, 17, -1, 1, 7, 8, -1, 3, 7, 2, -1, 6, 
                  7, 4, -1, 4, 7),
          unpack(),
          unpack(),
          unpack(),
          unpack(1, 7, 1, -1, 1, 11, 4, -1, 12, 7, 1, -1, 20, 7, 4, -1, 1, 7, 1, 
                  -1, 2, 7),
          unpack(1, -1),
          unpack()
        ].freeze
        
        @decision = 41
        
        
        def special_state_transition(s, input)
          @recognizer.special_state_transition_for_dfa41(s, input)
        end

        def description
          <<-'__dfa_description__'.strip!
            225:1: unary_expression : ( PLUSPLUS unary_expression -> ^( PLUSPLUS unary_expression ) | MINUSMINUS unary_expression -> ^( MINUSMINUS unary_expression ) | SIZEOF unary_expression -> ^( SIZEOF unary_expression ) | SIZEOF LPAREN type_name RPAREN -> ^( SIZEOF_TYPE type_name ) | DEFINED type_name -> ^( DEFINED type_name ) | DEFINED LPAREN type_name RPAREN -> ^( DEFINED type_name ) | unary_expression_not_plus_minus );
          __dfa_description__
        end
      end
      def special_state_transition_for_dfa41(s, input)
        case s
        when 0
          look_41_11 = input.peek
          index_41_11 = input.index
          input.rewind
          s = -1
          if (syntactic_predicate?(:synpred_67_cpp!))
            s = 7
          elsif (syntactic_predicate?(:synpred_68_cpp!))
            s = 12
          end
           
          input.seek(index_41_11)

        end
        @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
        nva = ANTLR3::Error::NoViableAlternative.new(@dfa41.description, 41, s, input)
        @dfa41.error(nva)
        raise nva
      end
      class DFA42 < ANTLR3::DFA
        EOT = unpack(11, -1)
        EOF = unpack(11, -1)
        MIN = unpack(1, 48, 6, -1, 1, 0, 3, -1)
        MAX = unpack(1, 100, 6, -1, 1, 0, 3, -1)
        ACCEPT = unpack(1, -1, 1, 1, 1, 2, 1, 3, 1, 4, 1, 5, 1, 6, 1, -1, 1, 8, 
                        1, -1, 1, 7)
        SPECIAL = unpack(7, -1, 1, 0, 3, -1)
        TRANSITION = [
          unpack(1, 8, 1, 7, 4, -1, 2, 8, 17, -1, 1, 3, 8, -1, 1, 6, 1, 5, 1, 4, 
                 6, -1, 1, 1, 1, 2, 4, -1, 4, 8),
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
        
        @decision = 42
        
        
        def special_state_transition(s, input)
          @recognizer.special_state_transition_for_dfa42(s, input)
        end

        def description
          <<-'__dfa_description__'.strip!
            235:1: unary_expression_not_plus_minus : ( NOT unary_expression -> ^( NOT unary_expression ) | TILDE unary_expression -> ^( TILDE unary_expression ) | AMPERSAND unary_expression -> ^( REFERANCE unary_expression ) | STAR unary_expression -> ^( POINTER_AT unary_expression ) | MINUS unary_expression -> ^( UNARY_MINUS unary_expression ) | PLUS unary_expression -> ^( UNARY_PLUS unary_expression ) | LPAREN type_name RPAREN unary_expression -> ^( TYPECAST type_name unary_expression ) | postfix_expression );
          __dfa_description__
        end
      end
      def special_state_transition_for_dfa42(s, input)
        case s
        when 0
          look_42_7 = input.peek
          index_42_7 = input.index
          input.rewind
          s = -1
          if (syntactic_predicate?(:synpred_77_cpp!))
            s = 10
          elsif (true)
            s = 8
          end
           
          input.seek(index_42_7)

        end
        @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
        nva = ANTLR3::Error::NoViableAlternative.new(@dfa42.description, 42, s, input)
        @dfa42.error(nva)
        raise nva
      end
      class DFA43 < ANTLR3::DFA
        EOT = unpack(10, -1)
        EOF = unpack(1, 2, 9, -1)
        MIN = unpack(1, 6, 1, 48, 6, -1, 1, 0, 1, -1)
        MAX = unpack(1, 106, 1, 100, 6, -1, 1, 0, 1, -1)
        ACCEPT = unpack(2, -1, 1, 7, 1, 1, 1, 2, 1, 4, 1, 5, 1, 6, 1, -1, 1, 3)
        SPECIAL = unpack(8, -1, 1, 0, 1, -1)
        TRANSITION = [
          unpack(1, 2, 3, -1, 3, 2, 18, -1, 1, 2, 3, -1, 1, 2, 1, -1, 5, 2, 4, -1, 
                 7, 2, 1, -1, 30, 2, 1, 1, 2, 2, 1, 6, 1, 7, 1, 2, 3, -1, 1, 3, 
                 1, 2, 1, 4, 1, 5, 10, 2),
          unpack(1, 8, 1, 2, 4, -1, 2, 2, 17, -1, 1, 2, 8, -1, 3, 2, 2, -1, 6, 
                  2, 4, -1, 4, 2),
          unpack(),
          unpack(),
          unpack(),
          unpack(),
          unpack(),
          unpack(),
          unpack(1, -1),
          unpack()
        ].freeze
        
        @decision = 43
        
        
        def special_state_transition(s, input)
          @recognizer.special_state_transition_for_dfa43(s, input)
        end

        def description
          <<-'__dfa_description__'.strip!
            ()* loopback of 248:17: (l= LSQUARE assignment_expression RSQUARE | DOT IDENTIFIER | s= STAR IDENTIFIER | POINTERTO IDENTIFIER | p= PLUSPLUS | m= MINUSMINUS )*
          __dfa_description__
        end
      end
      def special_state_transition_for_dfa43(s, input)
        case s
        when 0
          look_43_8 = input.peek
          index_43_8 = input.index
          input.rewind
          s = -1
          if (syntactic_predicate?(:synpred_80_cpp!))
            s = 9
          elsif (true)
            s = 2
          end
           
          input.seek(index_43_8)

        end
        @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
        nva = ANTLR3::Error::NoViableAlternative.new(@dfa43.description, 43, s, input)
        @dfa43.error(nva)
        raise nva
      end
      class DFA47 < ANTLR3::DFA
        EOT = unpack(17, -1)
        EOF = unpack(17, -1)
        MIN = unpack(1, 31, 8, -1, 1, 0, 2, -1, 1, 0, 4, -1)
        MAX = unpack(1, 106, 8, -1, 1, 0, 2, -1, 1, 0, 4, -1)
        ACCEPT = unpack(1, -1, 1, 1, 11, -1, 1, 2, 1, 4, 1, 3, 1, 5)
        SPECIAL = unpack(9, -1, 1, 0, 2, -1, 1, 1, 4, -1)
        TRANSITION = [
          unpack(1, 1, 16, -1, 1, 1, 1, 9, 1, 12, 1, 14, 1, 13, 1, -1, 2, 1, 33, 
                 -1, 1, 1, 7, -1, 10, 1),
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
        
        @decision = 47
        
        
        def special_state_transition(s, input)
          @recognizer.special_state_transition_for_dfa47(s, input)
        end

        def description
          <<-'__dfa_description__'.strip!
            283:1: source_text : ( source_expression | COMMA | LPAREN | RPAREN | WS );
          __dfa_description__
        end
      end
      def special_state_transition_for_dfa47(s, input)
        case s
        when 0
          look_47_9 = input.peek
          index_47_9 = input.index
          input.rewind
          s = -1
          if (syntactic_predicate?(:synpred_94_cpp!))
            s = 1
          elsif (syntactic_predicate?(:synpred_96_cpp!))
            s = 15
          end
           
          input.seek(index_47_9)

        when 1
          look_47_12 = input.peek
          index_47_12 = input.index
          input.rewind
          s = -1
          if (syntactic_predicate?(:synpred_94_cpp!))
            s = 1
          elsif (true)
            s = 16
          end
           
          input.seek(index_47_12)

        end
        @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
        nva = ANTLR3::Error::NoViableAlternative.new(@dfa47.description, 47, s, input)
        @dfa47.error(nva)
        raise nva
      end
      class DFA60 < ANTLR3::DFA
        EOT = unpack(16, -1)
        EOF = unpack(16, -1)
        MIN = unpack(1, 31, 5, 0, 10, -1)
        MAX = unpack(1, 106, 5, 0, 10, -1)
        ACCEPT = unpack(6, -1, 1, 3, 1, 5, 1, 6, 1, 7, 1, 8, 1, 9, 1, 10, 1, 1, 
                        1, 2, 1, 4)
        SPECIAL = unpack(1, -1, 1, 0, 1, 1, 1, 2, 1, 3, 1, 4, 10, -1)
        TRANSITION = [
          unpack(1, 11, 16, -1, 1, 1, 1, 9, 1, 12, 3, -1, 2, 3, 33, -1, 1, 8, 7, 
                 -1, 4, 3, 1, 6, 1, 7, 1, 10, 1, 2, 1, 4, 1, 5),
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
        
        @decision = 60
        
        
        def special_state_transition(s, input)
          @recognizer.special_state_transition_for_dfa60(s, input)
        end

        def description
          <<-'__dfa_description__'.strip!
            303:1: source_expression : ( ( IDENTIFIER ( WS )? LPAREN )=> macro_expansion | ( primary_source ( WS )? SHARPSHARP )=> concatenate | STRINGIFICATION IDENTIFIER -> ^( STRINGIFICATION IDENTIFIER ) | primary_source | STRING_OP | SIZEOF | LPAREN ( mac_args )? RPAREN -> ^( TEXT_GROUP ( mac_args )? ) | SEMICOLON | TEXT_END | WS );
          __dfa_description__
        end
      end
      def special_state_transition_for_dfa60(s, input)
        case s
        when 0
          look_60_1 = input.peek
          index_60_1 = input.index
          input.rewind
          s = -1
          if (syntactic_predicate?(:synpred_110_cpp!))
            s = 13
          elsif (syntactic_predicate?(:synpred_112_cpp!))
            s = 14
          elsif (syntactic_predicate?(:synpred_114_cpp!))
            s = 15
          end
           
          input.seek(index_60_1)

        when 1
          look_60_2 = input.peek
          index_60_2 = input.index
          input.rewind
          s = -1
          if (syntactic_predicate?(:synpred_112_cpp!))
            s = 14
          elsif (syntactic_predicate?(:synpred_114_cpp!))
            s = 15
          end
           
          input.seek(index_60_2)

        when 2
          look_60_3 = input.peek
          index_60_3 = input.index
          input.rewind
          s = -1
          if (syntactic_predicate?(:synpred_112_cpp!))
            s = 14
          elsif (syntactic_predicate?(:synpred_114_cpp!))
            s = 15
          end
           
          input.seek(index_60_3)

        when 3
          look_60_4 = input.peek
          index_60_4 = input.index
          input.rewind
          s = -1
          if (syntactic_predicate?(:synpred_112_cpp!))
            s = 14
          elsif (syntactic_predicate?(:synpred_114_cpp!))
            s = 15
          end
           
          input.seek(index_60_4)

        when 4
          look_60_5 = input.peek
          index_60_5 = input.index
          input.rewind
          s = -1
          if (syntactic_predicate?(:synpred_112_cpp!))
            s = 14
          elsif (syntactic_predicate?(:synpred_114_cpp!))
            s = 15
          end
           
          input.seek(index_60_5)

        end
        @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
        nva = ANTLR3::Error::NoViableAlternative.new(@dfa60.description, 60, s, input)
        @dfa60.error(nva)
        raise nva
      end

      
      private
      
      def initialize_dfas
        super rescue nil
        @dfa2 = DFA2.new(self, 2)
        @dfa14 = DFA14.new(self, 14) do |s|
          case s
          when 0
            look_14_11 = input.peek
            index_14_11 = input.index
            input.rewind
            s = -1
            if (syntactic_predicate?(:synpred_22_cpp!))
              s = 7
            elsif (true)
              s = 4
            end
             
            input.seek(index_14_11)

          when 1
            look_14_8 = input.peek
            index_14_8 = input.index
            input.rewind
            s = -1
            if (syntactic_predicate?(:synpred_14_cpp!))
              s = 12
            elsif (syntactic_predicate?(:synpred_22_cpp!))
              s = 7
            elsif (true)
              s = 4
            end
             
            input.seek(index_14_8)

          end
          
          if s < 0
            @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
            nva = ANTLR3::Error::NoViableAlternative.new(@dfa14.description, 14, s, input)
            @dfa14.error(nva)
            raise nva
          end
          
          s
        end
        @dfa41 = DFA41.new(self, 41) do |s|
          case s
          when 0
            look_41_11 = input.peek
            index_41_11 = input.index
            input.rewind
            s = -1
            if (syntactic_predicate?(:synpred_67_cpp!))
              s = 7
            elsif (syntactic_predicate?(:synpred_68_cpp!))
              s = 12
            end
             
            input.seek(index_41_11)

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
            look_42_7 = input.peek
            index_42_7 = input.index
            input.rewind
            s = -1
            if (syntactic_predicate?(:synpred_77_cpp!))
              s = 10
            elsif (true)
              s = 8
            end
             
            input.seek(index_42_7)

          end
          
          if s < 0
            @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
            nva = ANTLR3::Error::NoViableAlternative.new(@dfa42.description, 42, s, input)
            @dfa42.error(nva)
            raise nva
          end
          
          s
        end
        @dfa43 = DFA43.new(self, 43) do |s|
          case s
          when 0
            look_43_8 = input.peek
            index_43_8 = input.index
            input.rewind
            s = -1
            if (syntactic_predicate?(:synpred_80_cpp!))
              s = 9
            elsif (true)
              s = 2
            end
             
            input.seek(index_43_8)

          end
          
          if s < 0
            @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
            nva = ANTLR3::Error::NoViableAlternative.new(@dfa43.description, 43, s, input)
            @dfa43.error(nva)
            raise nva
          end
          
          s
        end
        @dfa47 = DFA47.new(self, 47) do |s|
          case s
          when 0
            look_47_9 = input.peek
            index_47_9 = input.index
            input.rewind
            s = -1
            if (syntactic_predicate?(:synpred_94_cpp!))
              s = 1
            elsif (syntactic_predicate?(:synpred_96_cpp!))
              s = 15
            end
             
            input.seek(index_47_9)

          when 1
            look_47_12 = input.peek
            index_47_12 = input.index
            input.rewind
            s = -1
            if (syntactic_predicate?(:synpred_94_cpp!))
              s = 1
            elsif (true)
              s = 16
            end
             
            input.seek(index_47_12)

          end
          
          if s < 0
            @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
            nva = ANTLR3::Error::NoViableAlternative.new(@dfa47.description, 47, s, input)
            @dfa47.error(nva)
            raise nva
          end
          
          s
        end
        @dfa60 = DFA60.new(self, 60) do |s|
          case s
          when 0
            look_60_1 = input.peek
            index_60_1 = input.index
            input.rewind
            s = -1
            if (syntactic_predicate?(:synpred_110_cpp!))
              s = 13
            elsif (syntactic_predicate?(:synpred_112_cpp!))
              s = 14
            elsif (syntactic_predicate?(:synpred_114_cpp!))
              s = 15
            end
             
            input.seek(index_60_1)

          when 1
            look_60_2 = input.peek
            index_60_2 = input.index
            input.rewind
            s = -1
            if (syntactic_predicate?(:synpred_112_cpp!))
              s = 14
            elsif (syntactic_predicate?(:synpred_114_cpp!))
              s = 15
            end
             
            input.seek(index_60_2)

          when 2
            look_60_3 = input.peek
            index_60_3 = input.index
            input.rewind
            s = -1
            if (syntactic_predicate?(:synpred_112_cpp!))
              s = 14
            elsif (syntactic_predicate?(:synpred_114_cpp!))
              s = 15
            end
             
            input.seek(index_60_3)

          when 3
            look_60_4 = input.peek
            index_60_4 = input.index
            input.rewind
            s = -1
            if (syntactic_predicate?(:synpred_112_cpp!))
              s = 14
            elsif (syntactic_predicate?(:synpred_114_cpp!))
              s = 15
            end
             
            input.seek(index_60_4)

          when 4
            look_60_5 = input.peek
            index_60_5 = input.index
            input.rewind
            s = -1
            if (syntactic_predicate?(:synpred_112_cpp!))
              s = 14
            elsif (syntactic_predicate?(:synpred_114_cpp!))
              s = 15
            end
             
            input.seek(index_60_5)

          end
          
          if s < 0
            @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
            nva = ANTLR3::Error::NoViableAlternative.new(@dfa60.description, 60, s, input)
            @dfa60.error(nva)
            raise nva
          end
          
          s
        end

      end
    TOKENS_FOLLOWING_proc_line_IN_preprocess_384 = Set[1, 6, 10, 11, 12, 31, 35, 37, 38, 39, 40, 41, 46, 47, 48, 49, 50, 51, 52, 54, 55, 89, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106]
    TOKENS_FOLLOWING_DIRECTIVE_IN_proc_line_450 = Set[47]
    TOKENS_FOLLOWING_text_line_IN_proc_line_476 = Set[47]
    TOKENS_FOLLOWING_diagnostics_IN_proc_line_502 = Set[47]
    TOKENS_FOLLOWING_file_inclusion_IN_proc_line_528 = Set[47]
    TOKENS_FOLLOWING_macro_define_IN_proc_line_554 = Set[47]
    TOKENS_FOLLOWING_macro_undef_IN_proc_line_580 = Set[47]
    TOKENS_FOLLOWING_conditional_compilation_IN_proc_line_606 = Set[47]
    TOKENS_FOLLOWING_line_control_IN_proc_line_632 = Set[47]
    TOKENS_FOLLOWING_macro_execution_IN_proc_line_658 = Set[47]
    TOKENS_FOLLOWING_End_IN_proc_line_684 = Set[1]
    TOKENS_FOLLOWING_INCLUDE_IN_file_inclusion_731 = Set[1]
    TOKENS_FOLLOWING_INCLUDE_EXPAND_IN_file_inclusion_771 = Set[1]
    TOKENS_FOLLOWING_DEFINE_IN_macro_define_820 = Set[48]
    TOKENS_FOLLOWING_IDENTIFIER_IN_macro_define_826 = Set[49]
    TOKENS_FOLLOWING_LPAREN_IN_macro_define_829 = Set[50, 51]
    TOKENS_FOLLOWING_WS_IN_macro_define_836 = Set[51]
    TOKENS_FOLLOWING_RPAREN_IN_macro_define_843 = Set[1, 31, 48, 49, 50, 51, 52, 54, 55, 89, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106]
    TOKENS_FOLLOWING_macro_text_IN_macro_define_846 = Set[1]
    TOKENS_FOLLOWING_DEFINE_IN_macro_define_879 = Set[48]
    TOKENS_FOLLOWING_IDENTIFIER_IN_macro_define_883 = Set[49]
    TOKENS_FOLLOWING_LPAREN_IN_macro_define_886 = Set[48, 50, 51, 53]
    TOKENS_FOLLOWING_WS_IN_macro_define_888 = Set[48, 51, 53]
    TOKENS_FOLLOWING_macro_param_IN_macro_define_894 = Set[50, 51, 52]
    TOKENS_FOLLOWING_WS_IN_macro_define_896 = Set[51, 52]
    TOKENS_FOLLOWING_COMMA_IN_macro_define_900 = Set[48, 50, 53]
    TOKENS_FOLLOWING_WS_IN_macro_define_902 = Set[48, 50, 53]
    TOKENS_FOLLOWING_macro_param_IN_macro_define_907 = Set[50, 51, 52]
    TOKENS_FOLLOWING_WS_IN_macro_define_909 = Set[50, 51, 52]
    TOKENS_FOLLOWING_RPAREN_IN_macro_define_916 = Set[1, 31, 48, 49, 50, 51, 52, 54, 55, 89, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106]
    TOKENS_FOLLOWING_macro_text_IN_macro_define_919 = Set[1]
    TOKENS_FOLLOWING_DEFINE_IN_macro_define_959 = Set[48]
    TOKENS_FOLLOWING_IDENTIFIER_IN_macro_define_965 = Set[1, 31, 48, 49, 50, 51, 52, 54, 55, 89, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106]
    TOKENS_FOLLOWING_macro_text_IN_macro_define_968 = Set[1]
    TOKENS_FOLLOWING_IDENTIFIER_IN_macro_param_1028 = Set[53]
    TOKENS_FOLLOWING_ELLIPSIS_IN_macro_param_1030 = Set[1]
    TOKENS_FOLLOWING_ELLIPSIS_IN_macro_param_1063 = Set[1]
    TOKENS_FOLLOWING_IDENTIFIER_IN_macro_param_1089 = Set[1]
    TOKENS_FOLLOWING_EXEC_MACRO_IN_macro_execution_1136 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_ifexpression_IN_macro_execution_1138 = Set[1]
    TOKENS_FOLLOWING_UNDEF_IN_macro_undef_1193 = Set[48]
    TOKENS_FOLLOWING_IDENTIFIER_IN_macro_undef_1199 = Set[1]
    TOKENS_FOLLOWING_IF_IN_conditional_compilation_1255 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_ifexpression_IN_conditional_compilation_1263 = Set[6, 10, 11, 12, 31, 35, 37, 38, 39, 40, 41, 46, 47, 48, 49, 50, 51, 52, 54, 55, 89, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106]
    TOKENS_FOLLOWING_statement_IN_conditional_compilation_1268 = Set[7, 8, 9]
    TOKENS_FOLLOWING_ELIF_IN_conditional_compilation_1294 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_ifexpression_IN_conditional_compilation_1300 = Set[6, 10, 11, 12, 31, 35, 37, 38, 39, 40, 41, 46, 47, 48, 49, 50, 51, 52, 54, 55, 89, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106]
    TOKENS_FOLLOWING_statement_IN_conditional_compilation_1305 = Set[7, 8, 9]
    TOKENS_FOLLOWING_ELSE_IN_conditional_compilation_1335 = Set[6, 10, 11, 12, 31, 35, 37, 38, 39, 40, 41, 46, 47, 48, 49, 50, 51, 52, 54, 55, 89, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106]
    TOKENS_FOLLOWING_statement_IN_conditional_compilation_1340 = Set[9]
    TOKENS_FOLLOWING_ENDIF_IN_conditional_compilation_1367 = Set[1]
    TOKENS_FOLLOWING_LINE_IN_line_control_1462 = Set[54]
    TOKENS_FOLLOWING_DECIMAL_LITERAL_IN_line_control_1469 = Set[1, 55]
    TOKENS_FOLLOWING_STRING_LITERAL_IN_line_control_1480 = Set[1]
    TOKENS_FOLLOWING_WARNING_IN_diagnostics_1545 = Set[1]
    TOKENS_FOLLOWING_ERROR_IN_diagnostics_1577 = Set[1]
    TOKENS_FOLLOWING_PRAGMA_IN_diagnostics_1611 = Set[1]
    TOKENS_FOLLOWING_source_text_IN_text_line_1659 = Set[1, 31, 48, 49, 50, 51, 52, 54, 55, 89, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106]
    TOKENS_FOLLOWING_proc_line_IN_statement_1715 = Set[1, 6, 10, 11, 12, 31, 35, 37, 38, 39, 40, 41, 46, 47, 48, 49, 50, 51, 52, 54, 55, 89, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106]
    TOKENS_FOLLOWING_IDENTIFIER_IN_type_name_1757 = Set[1]
    TOKENS_FOLLOWING_IDENTIFIER_IN_ifexpression_1798 = Set[1]
    TOKENS_FOLLOWING_IDENTIFIER_IN_ifexpression_1829 = Set[1]
    TOKENS_FOLLOWING_assignment_expression_IN_ifexpression_1861 = Set[1]
    TOKENS_FOLLOWING_conditional_expression_IN_assignment_expression_1916 = Set[1, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66]
    TOKENS_FOLLOWING_ASSIGNEQUAL_IN_assignment_expression_1945 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_TIMESEQUAL_IN_assignment_expression_1952 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_DIVIDEEQUAL_IN_assignment_expression_1959 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_MODEQUAL_IN_assignment_expression_1966 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_PLUSEQUAL_IN_assignment_expression_1973 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_MINUSEQUAL_IN_assignment_expression_1980 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_SHIFTLEFTEQUAL_IN_assignment_expression_1987 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_SHIFTRIGHTEQUAL_IN_assignment_expression_1994 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_BITWISEANDEQUAL_IN_assignment_expression_2001 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_BITWISEXOREQUAL_IN_assignment_expression_2008 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_BITWISEOREQUAL_IN_assignment_expression_2015 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_assignment_expression_IN_assignment_expression_2019 = Set[1]
    TOKENS_FOLLOWING_logical_or_expression_IN_conditional_expression_2069 = Set[1, 67]
    TOKENS_FOLLOWING_QUESTIONMARK_IN_conditional_expression_2097 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_assignment_expression_IN_conditional_expression_2100 = Set[68]
    TOKENS_FOLLOWING_COLON_IN_conditional_expression_2102 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_conditional_expression_IN_conditional_expression_2104 = Set[1]
    TOKENS_FOLLOWING_logical_and_expression_IN_logical_or_expression_2154 = Set[1, 69]
    TOKENS_FOLLOWING_OR_IN_logical_or_expression_2157 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_logical_and_expression_IN_logical_or_expression_2160 = Set[1, 69]
    TOKENS_FOLLOWING_inclusive_or_expression_IN_logical_and_expression_2209 = Set[1, 70]
    TOKENS_FOLLOWING_AND_IN_logical_and_expression_2212 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_inclusive_or_expression_IN_logical_and_expression_2215 = Set[1, 70]
    TOKENS_FOLLOWING_exclusive_or_expression_IN_inclusive_or_expression_2264 = Set[1, 71]
    TOKENS_FOLLOWING_BITWISEOR_IN_inclusive_or_expression_2267 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_exclusive_or_expression_IN_inclusive_or_expression_2270 = Set[1, 71]
    TOKENS_FOLLOWING_and_expression_IN_exclusive_or_expression_2319 = Set[1, 72]
    TOKENS_FOLLOWING_BITWISEXOR_IN_exclusive_or_expression_2322 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_and_expression_IN_exclusive_or_expression_2325 = Set[1, 72]
    TOKENS_FOLLOWING_equality_expression_IN_and_expression_2374 = Set[1, 73]
    TOKENS_FOLLOWING_AMPERSAND_IN_and_expression_2377 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_equality_expression_IN_and_expression_2380 = Set[1, 73]
    TOKENS_FOLLOWING_relational_expression_IN_equality_expression_2429 = Set[1, 74, 75]
    TOKENS_FOLLOWING_NOTEQUAL_IN_equality_expression_2433 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_EQUAL_IN_equality_expression_2438 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_relational_expression_IN_equality_expression_2442 = Set[1, 74, 75]
    TOKENS_FOLLOWING_shift_expression_IN_relational_expression_2491 = Set[1, 76, 77, 78, 79]
    TOKENS_FOLLOWING_LESSTHAN_IN_relational_expression_2541 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_GREATERTHAN_IN_relational_expression_2592 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_LESSTHANOREQUALTO_IN_relational_expression_2643 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_GREATERTHANOREQUALTO_IN_relational_expression_2694 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_shift_expression_IN_relational_expression_2771 = Set[1, 76, 77, 78, 79]
    TOKENS_FOLLOWING_additive_expression_IN_shift_expression_2878 = Set[1, 80, 81]
    TOKENS_FOLLOWING_SHIFTLEFT_IN_shift_expression_2882 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_SHIFTRIGHT_IN_shift_expression_2887 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_additive_expression_IN_shift_expression_2891 = Set[1, 80, 81]
    TOKENS_FOLLOWING_multiplicative_expression_IN_additive_expression_2940 = Set[1, 82, 83]
    TOKENS_FOLLOWING_PLUS_IN_additive_expression_2944 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_MINUS_IN_additive_expression_2949 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_multiplicative_expression_IN_additive_expression_2953 = Set[1, 82, 83]
    TOKENS_FOLLOWING_unary_expression_IN_multiplicative_expression_3002 = Set[1, 84, 85, 86]
    TOKENS_FOLLOWING_STAR_IN_multiplicative_expression_3006 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_DIVIDE_IN_multiplicative_expression_3011 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_MOD_IN_multiplicative_expression_3016 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_unary_expression_IN_multiplicative_expression_3021 = Set[1, 84, 85, 86]
    TOKENS_FOLLOWING_PLUSPLUS_IN_unary_expression_3070 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_unary_expression_IN_unary_expression_3079 = Set[1]
    TOKENS_FOLLOWING_MINUSMINUS_IN_unary_expression_3113 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_unary_expression_IN_unary_expression_3120 = Set[1]
    TOKENS_FOLLOWING_SIZEOF_IN_unary_expression_3154 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_unary_expression_IN_unary_expression_3157 = Set[1]
    TOKENS_FOLLOWING_SIZEOF_IN_unary_expression_3191 = Set[49]
    TOKENS_FOLLOWING_LPAREN_IN_unary_expression_3194 = Set[48]
    TOKENS_FOLLOWING_type_name_IN_unary_expression_3196 = Set[51]
    TOKENS_FOLLOWING_RPAREN_IN_unary_expression_3198 = Set[1]
    TOKENS_FOLLOWING_DEFINED_IN_unary_expression_3237 = Set[48]
    TOKENS_FOLLOWING_type_name_IN_unary_expression_3239 = Set[1]
    TOKENS_FOLLOWING_DEFINED_IN_unary_expression_3295 = Set[49]
    TOKENS_FOLLOWING_LPAREN_IN_unary_expression_3297 = Set[48]
    TOKENS_FOLLOWING_type_name_IN_unary_expression_3299 = Set[51]
    TOKENS_FOLLOWING_RPAREN_IN_unary_expression_3302 = Set[1]
    TOKENS_FOLLOWING_unary_expression_not_plus_minus_IN_unary_expression_3342 = Set[1]
    TOKENS_FOLLOWING_NOT_IN_unary_expression_not_plus_minus_3389 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_unary_expression_IN_unary_expression_not_plus_minus_3403 = Set[1]
    TOKENS_FOLLOWING_TILDE_IN_unary_expression_not_plus_minus_3444 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_unary_expression_IN_unary_expression_not_plus_minus_3456 = Set[1]
    TOKENS_FOLLOWING_AMPERSAND_IN_unary_expression_not_plus_minus_3503 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_unary_expression_IN_unary_expression_not_plus_minus_3511 = Set[1]
    TOKENS_FOLLOWING_STAR_IN_unary_expression_not_plus_minus_3554 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_unary_expression_IN_unary_expression_not_plus_minus_3567 = Set[1]
    TOKENS_FOLLOWING_MINUS_IN_unary_expression_not_plus_minus_3609 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_unary_expression_IN_unary_expression_not_plus_minus_3612 = Set[1]
    TOKENS_FOLLOWING_PLUS_IN_unary_expression_not_plus_minus_3647 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_unary_expression_IN_unary_expression_not_plus_minus_3651 = Set[1]
    TOKENS_FOLLOWING_LPAREN_IN_unary_expression_not_plus_minus_3686 = Set[48]
    TOKENS_FOLLOWING_type_name_IN_unary_expression_not_plus_minus_3688 = Set[51]
    TOKENS_FOLLOWING_RPAREN_IN_unary_expression_not_plus_minus_3690 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_unary_expression_IN_unary_expression_not_plus_minus_3693 = Set[1]
    TOKENS_FOLLOWING_postfix_expression_IN_unary_expression_not_plus_minus_3729 = Set[1]
    TOKENS_FOLLOWING_primary_expression_IN_postfix_expression_3772 = Set[1, 84, 87, 88, 93, 95, 96]
    TOKENS_FOLLOWING_LSQUARE_IN_postfix_expression_3796 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_assignment_expression_IN_postfix_expression_3801 = Set[94]
    TOKENS_FOLLOWING_RSQUARE_IN_postfix_expression_3803 = Set[1, 84, 87, 88, 93, 95, 96]
    TOKENS_FOLLOWING_DOT_IN_postfix_expression_3826 = Set[48]
    TOKENS_FOLLOWING_IDENTIFIER_IN_postfix_expression_3835 = Set[1, 84, 87, 88, 93, 95, 96]
    TOKENS_FOLLOWING_STAR_IN_postfix_expression_3859 = Set[48]
    TOKENS_FOLLOWING_IDENTIFIER_IN_postfix_expression_3868 = Set[1, 84, 87, 88, 93, 95, 96]
    TOKENS_FOLLOWING_POINTERTO_IN_postfix_expression_3890 = Set[48]
    TOKENS_FOLLOWING_IDENTIFIER_IN_postfix_expression_3893 = Set[1, 84, 87, 88, 93, 95, 96]
    TOKENS_FOLLOWING_PLUSPLUS_IN_postfix_expression_3917 = Set[1, 84, 87, 88, 93, 95, 96]
    TOKENS_FOLLOWING_MINUSMINUS_IN_postfix_expression_3946 = Set[1, 84, 87, 88, 93, 95, 96]
    TOKENS_FOLLOWING_function_call_IN_primary_expression_4019 = Set[1]
    TOKENS_FOLLOWING_IDENTIFIER_IN_primary_expression_4041 = Set[1]
    TOKENS_FOLLOWING_constant_IN_primary_expression_4063 = Set[1]
    TOKENS_FOLLOWING_LPAREN_IN_primary_expression_4085 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_assignment_expression_IN_primary_expression_4088 = Set[51]
    TOKENS_FOLLOWING_RPAREN_IN_primary_expression_4090 = Set[1]
    TOKENS_FOLLOWING_IDENTIFIER_IN_function_call_4143 = Set[49]
    TOKENS_FOLLOWING_LPAREN_IN_function_call_4145 = Set[48, 49, 51, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_arg_list_IN_function_call_4147 = Set[51]
    TOKENS_FOLLOWING_RPAREN_IN_function_call_4150 = Set[1]
    TOKENS_FOLLOWING_assignment_expression_IN_arg_list_4205 = Set[1, 52]
    TOKENS_FOLLOWING_COMMA_IN_arg_list_4208 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_assignment_expression_IN_arg_list_4210 = Set[1, 52]
    TOKENS_FOLLOWING_set_IN_constant_0 = Set[1]
    TOKENS_FOLLOWING_source_expression_IN_source_text_4407 = Set[1]
    TOKENS_FOLLOWING_COMMA_IN_source_text_4429 = Set[1]
    TOKENS_FOLLOWING_LPAREN_IN_source_text_4451 = Set[1]
    TOKENS_FOLLOWING_RPAREN_IN_source_text_4473 = Set[1]
    TOKENS_FOLLOWING_WS_IN_source_text_4495 = Set[1]
    TOKENS_FOLLOWING_IDENTIFIER_IN_macro_expansion_4538 = Set[49, 50]
    TOKENS_FOLLOWING_WS_IN_macro_expansion_4540 = Set[49]
    TOKENS_FOLLOWING_LPAREN_IN_macro_expansion_4543 = Set[50, 51]
    TOKENS_FOLLOWING_WS_IN_macro_expansion_4545 = Set[51]
    TOKENS_FOLLOWING_RPAREN_IN_macro_expansion_4548 = Set[1]
    TOKENS_FOLLOWING_IDENTIFIER_IN_macro_expansion_4579 = Set[49, 50]
    TOKENS_FOLLOWING_WS_IN_macro_expansion_4581 = Set[49]
    TOKENS_FOLLOWING_LPAREN_IN_macro_expansion_4584 = Set[31, 48, 49, 50, 52, 54, 55, 89, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106]
    TOKENS_FOLLOWING_WS_IN_macro_expansion_4586 = Set[31, 48, 49, 50, 52, 54, 55, 89, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106]
    TOKENS_FOLLOWING_mac_args_IN_macro_expansion_4589 = Set[50, 51]
    TOKENS_FOLLOWING_WS_IN_macro_expansion_4591 = Set[51]
    TOKENS_FOLLOWING_RPAREN_IN_macro_expansion_4594 = Set[1]
    TOKENS_FOLLOWING_m_arg_IN_mac_args_4639 = Set[1, 50, 52]
    TOKENS_FOLLOWING_WS_IN_mac_args_4643 = Set[52]
    TOKENS_FOLLOWING_COMMA_IN_mac_args_4646 = Set[31, 48, 49, 50, 52, 54, 55, 89, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106]
    TOKENS_FOLLOWING_WS_IN_mac_args_4648 = Set[31, 48, 49, 50, 52, 54, 55, 89, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106]
    TOKENS_FOLLOWING_m_arg_IN_mac_args_4653 = Set[1, 50, 52]
    TOKENS_FOLLOWING_source_expression_IN_m_arg_4700 = Set[1, 31, 48, 49, 50, 54, 55, 89, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106]
    TOKENS_FOLLOWING_macro_expansion_IN_source_expression_4804 = Set[1]
    TOKENS_FOLLOWING_concatenate_IN_source_expression_4844 = Set[1]
    TOKENS_FOLLOWING_STRINGIFICATION_IN_source_expression_4870 = Set[48]
    TOKENS_FOLLOWING_IDENTIFIER_IN_source_expression_4872 = Set[1]
    TOKENS_FOLLOWING_primary_source_IN_source_expression_4911 = Set[1]
    TOKENS_FOLLOWING_STRING_OP_IN_source_expression_4937 = Set[1]
    TOKENS_FOLLOWING_SIZEOF_IN_source_expression_4963 = Set[1]
    TOKENS_FOLLOWING_LPAREN_IN_source_expression_4989 = Set[31, 48, 49, 50, 51, 52, 54, 55, 89, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106]
    TOKENS_FOLLOWING_mac_args_IN_source_expression_4991 = Set[51]
    TOKENS_FOLLOWING_RPAREN_IN_source_expression_4994 = Set[1]
    TOKENS_FOLLOWING_SEMICOLON_IN_source_expression_5029 = Set[1]
    TOKENS_FOLLOWING_TEXT_END_IN_source_expression_5055 = Set[1]
    TOKENS_FOLLOWING_WS_IN_source_expression_5081 = Set[1]
    TOKENS_FOLLOWING_primary_source_IN_concatenate_5130 = Set[50, 104]
    TOKENS_FOLLOWING_WS_IN_concatenate_5133 = Set[104]
    TOKENS_FOLLOWING_SHARPSHARP_IN_concatenate_5136 = Set[48, 50, 54, 55, 97, 98, 99, 100, 104, 105, 106]
    TOKENS_FOLLOWING_WS_IN_concatenate_5139 = Set[48, 54, 55, 97, 98, 99, 100, 104, 105, 106]
    TOKENS_FOLLOWING_primary_source_IN_concatenate_5144 = Set[1, 50, 104]
    TOKENS_FOLLOWING_SHARPSHARP_IN_primary_source_5204 = Set[48, 50]
    TOKENS_FOLLOWING_WS_IN_primary_source_5206 = Set[48]
    TOKENS_FOLLOWING_IDENTIFIER_IN_primary_source_5210 = Set[1]
    TOKENS_FOLLOWING_IDENTIFIER_IN_primary_source_5244 = Set[1]
    TOKENS_FOLLOWING_constant_IN_primary_source_5270 = Set[1]
    TOKENS_FOLLOWING_CKEYWORD_IN_primary_source_5296 = Set[1]
    TOKENS_FOLLOWING_COPERATOR_IN_primary_source_5322 = Set[1]
    TOKENS_FOLLOWING_source_text_IN_macro_text_9250 = Set[1, 31, 48, 49, 50, 51, 52, 54, 55, 89, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106]
    TOKENS_FOLLOWING_DEFINE_IN_synpred14_Cpp_820 = Set[48]
    TOKENS_FOLLOWING_IDENTIFIER_IN_synpred14_Cpp_826 = Set[49]
    TOKENS_FOLLOWING_LPAREN_IN_synpred14_Cpp_829 = Set[50, 51]
    TOKENS_FOLLOWING_WS_IN_synpred14_Cpp_836 = Set[51]
    TOKENS_FOLLOWING_RPAREN_IN_synpred14_Cpp_843 = Set[1, 31, 48, 49, 50, 51, 52, 54, 55, 89, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106]
    TOKENS_FOLLOWING_macro_text_IN_synpred14_Cpp_846 = Set[1]
    TOKENS_FOLLOWING_DEFINE_IN_synpred22_Cpp_879 = Set[48]
    TOKENS_FOLLOWING_IDENTIFIER_IN_synpred22_Cpp_883 = Set[49]
    TOKENS_FOLLOWING_LPAREN_IN_synpred22_Cpp_886 = Set[48, 50, 51, 53]
    TOKENS_FOLLOWING_WS_IN_synpred22_Cpp_888 = Set[48, 51, 53]
    TOKENS_FOLLOWING_macro_param_IN_synpred22_Cpp_894 = Set[50, 51, 52]
    TOKENS_FOLLOWING_WS_IN_synpred22_Cpp_896 = Set[51, 52]
    TOKENS_FOLLOWING_COMMA_IN_synpred22_Cpp_900 = Set[48, 50, 53]
    TOKENS_FOLLOWING_WS_IN_synpred22_Cpp_902 = Set[48, 50, 53]
    TOKENS_FOLLOWING_macro_param_IN_synpred22_Cpp_907 = Set[50, 51, 52]
    TOKENS_FOLLOWING_WS_IN_synpred22_Cpp_909 = Set[50, 51, 52]
    TOKENS_FOLLOWING_RPAREN_IN_synpred22_Cpp_916 = Set[1, 31, 48, 49, 50, 51, 52, 54, 55, 89, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106]
    TOKENS_FOLLOWING_macro_text_IN_synpred22_Cpp_919 = Set[1]
    TOKENS_FOLLOWING_IDENTIFIER_IN_synpred33_Cpp_1798 = Set[1]
    TOKENS_FOLLOWING_IDENTIFIER_IN_synpred34_Cpp_1829 = Set[1]
    TOKENS_FOLLOWING_SIZEOF_IN_synpred67_Cpp_3154 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_unary_expression_IN_synpred67_Cpp_3157 = Set[1]
    TOKENS_FOLLOWING_SIZEOF_IN_synpred68_Cpp_3191 = Set[49]
    TOKENS_FOLLOWING_LPAREN_IN_synpred68_Cpp_3194 = Set[48]
    TOKENS_FOLLOWING_type_name_IN_synpred68_Cpp_3196 = Set[51]
    TOKENS_FOLLOWING_RPAREN_IN_synpred68_Cpp_3198 = Set[1]
    TOKENS_FOLLOWING_LPAREN_IN_synpred77_Cpp_3686 = Set[48]
    TOKENS_FOLLOWING_type_name_IN_synpred77_Cpp_3688 = Set[51]
    TOKENS_FOLLOWING_RPAREN_IN_synpred77_Cpp_3690 = Set[48, 49, 54, 55, 73, 82, 83, 84, 87, 88, 89, 90, 91, 92, 97, 98, 99, 100]
    TOKENS_FOLLOWING_unary_expression_IN_synpred77_Cpp_3693 = Set[1]
    TOKENS_FOLLOWING_STAR_IN_synpred80_Cpp_3859 = Set[48]
    TOKENS_FOLLOWING_IDENTIFIER_IN_synpred80_Cpp_3868 = Set[1]
    TOKENS_FOLLOWING_IDENTIFIER_IN_synpred84_Cpp_4012 = Set[49]
    TOKENS_FOLLOWING_LPAREN_IN_synpred84_Cpp_4014 = Set[1]
    TOKENS_FOLLOWING_IDENTIFIER_IN_synpred85_Cpp_4041 = Set[1]
    TOKENS_FOLLOWING_source_expression_IN_synpred94_Cpp_4407 = Set[1]
    TOKENS_FOLLOWING_LPAREN_IN_synpred96_Cpp_4451 = Set[1]
    TOKENS_FOLLOWING_IDENTIFIER_IN_synpred100_Cpp_4538 = Set[49, 50]
    TOKENS_FOLLOWING_WS_IN_synpred100_Cpp_4540 = Set[49]
    TOKENS_FOLLOWING_LPAREN_IN_synpred100_Cpp_4543 = Set[50, 51]
    TOKENS_FOLLOWING_WS_IN_synpred100_Cpp_4545 = Set[51]
    TOKENS_FOLLOWING_RPAREN_IN_synpred100_Cpp_4548 = Set[1]
    TOKENS_FOLLOWING_WS_IN_synpred102_Cpp_4586 = Set[1]
    TOKENS_FOLLOWING_WS_IN_synpred105_Cpp_4648 = Set[1]
    TOKENS_FOLLOWING_source_expression_IN_synpred107_Cpp_4700 = Set[1]
    TOKENS_FOLLOWING_source_expression_IN_synpred108_Cpp_4700 = Set[1, 31, 48, 49, 50, 54, 55, 89, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106]
    TOKENS_FOLLOWING_IDENTIFIER_IN_synpred110_Cpp_4794 = Set[49, 50]
    TOKENS_FOLLOWING_WS_IN_synpred110_Cpp_4796 = Set[49]
    TOKENS_FOLLOWING_LPAREN_IN_synpred110_Cpp_4799 = Set[1]
    TOKENS_FOLLOWING_primary_source_IN_synpred112_Cpp_4831 = Set[50, 104]
    TOKENS_FOLLOWING_WS_IN_synpred112_Cpp_4834 = Set[104]
    TOKENS_FOLLOWING_SHARPSHARP_IN_synpred112_Cpp_4837 = Set[1]
    TOKENS_FOLLOWING_primary_source_IN_synpred114_Cpp_4911 = Set[1]
    TOKENS_FOLLOWING_mac_args_IN_synpred117_Cpp_4991 = Set[1]
    TOKENS_FOLLOWING_WS_IN_synpred123_Cpp_5133 = Set[104]
    TOKENS_FOLLOWING_SHARPSHARP_IN_synpred123_Cpp_5136 = Set[48, 50, 54, 55, 97, 98, 99, 100, 104, 105, 106]
    TOKENS_FOLLOWING_WS_IN_synpred123_Cpp_5139 = Set[48, 54, 55, 97, 98, 99, 100, 104, 105, 106]
    TOKENS_FOLLOWING_primary_source_IN_synpred123_Cpp_5144 = Set[1]

  end
end

if __FILE__ == $0 and ARGV.first != '--'
  main = ANTLR3::Main::ParserMain.new(Cpp::Parser, :lexer_class_name => "Cpp::Lexer")
  main.execute(ARGV)
end