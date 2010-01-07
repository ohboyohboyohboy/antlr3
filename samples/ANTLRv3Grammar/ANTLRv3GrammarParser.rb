#!/usr/bin/env ruby
#
# samples/ANTLRv3Grammar.g
# 
# Generated using ANTLR version: 3.2.1-SNAPSHOT Dec 18, 2009 04:29:28
# Ruby runtime library version: 1.3.0
# Input grammar file: samples/ANTLRv3Grammar.g
# Generated at: 2010-01-07 07:34:06
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


module ANTLRv3Grammar
  # TokenData defines all of the token type integer values
  # as constants, which will be included in all 
  # ANTLR-generated recognizers.
  const_defined?(:TokenData) or TokenData = ANTLR3::TokenScheme.new

  module TokenData

    # define the token constants
    define_tokens(:BACKTRACK_SEMPRED => 34, :DOUBLE_ANGLE_STRING_LITERAL => 53, 
                  :LEXER_GRAMMAR => 24, :EOA => 19, :ARGLIST => 22, :EOF => -1, 
                  :SEMPRED => 31, :ACTION => 47, :EOB => 18, :TOKEN_REF => 44, 
                  :T__93 => 93, :T__91 => 91, :RET => 23, :T__92 => 92, 
                  :STRING_LITERAL => 45, :T__90 => 90, :ARG => 21, :EOR => 17, 
                  :ARG_ACTION => 50, :DOUBLE_QUOTE_STRING_LITERAL => 52, 
                  :NESTED_ARG_ACTION => 60, :ACTION_CHAR_LITERAL => 62, 
                  :T__80 => 80, :T__81 => 81, :RULE => 7, :T__82 => 82, 
                  :T__83 => 83, :ACTION_ESC => 64, :PARSER_GRAMMAR => 25, 
                  :SRC => 54, :CHAR_RANGE => 14, :INT => 49, :EPSILON => 15, 
                  :T__85 => 85, :T__84 => 84, :T__87 => 87, :T__86 => 86, 
                  :T__89 => 89, :REWRITE => 39, :T__88 => 88, :WS => 66, 
                  :T__71 => 71, :T__72 => 72, :COMBINED_GRAMMAR => 27, :T__70 => 70, 
                  :LEXER => 6, :SL_COMMENT => 55, :TREE_GRAMMAR => 26, :T__76 => 76, 
                  :CLOSURE => 10, :T__75 => 75, :PARSER => 5, :T__74 => 74, 
                  :T__73 => 73, :T__79 => 79, :T__78 => 78, :T__77 => 77, 
                  :T__68 => 68, :T__69 => 69, :T__67 => 67, :NESTED_ACTION => 63, 
                  :ESC => 58, :FRAGMENT => 35, :ID => 20, :TREE_BEGIN => 36, 
                  :AT => 40, :ML_COMMENT => 56, :ALT => 16, :SCOPE => 30, 
                  :LABEL_ASSIGN => 41, :DOC_COMMENT => 4, :WS_LOOP => 65, 
                  :RANGE => 13, :TOKENS => 43, :GATED_SEMPRED => 32, :LITERAL_CHAR => 57, 
                  :BANG => 38, :LIST_LABEL_ASSIGN => 42, :ACTION_STRING_LITERAL => 61, 
                  :ROOT => 37, :RULE_REF => 51, :SYNPRED => 12, :OPTIONAL => 9, 
                  :CHAR_LITERAL => 46, :LABEL => 28, :TEMPLATE => 29, :SYN_SEMPRED => 33, 
                  :XDIGIT => 59, :BLOCK => 8, :POSITIVE_CLOSURE => 11, :OPTIONS => 48)

    # register the proper human-readable name or literal value
    # for each token type
    #
    # this is necessary because anonymous tokens, which are
    # created from literal values in the grammar, do not
    # have descriptive names
    register_names("DOC_COMMENT", "PARSER", "LEXER", "RULE", "BLOCK", "OPTIONAL", 
                   "CLOSURE", "POSITIVE_CLOSURE", "SYNPRED", "RANGE", "CHAR_RANGE", 
                   "EPSILON", "ALT", "EOR", "EOB", "EOA", "ID", "ARG", "ARGLIST", 
                   "RET", "LEXER_GRAMMAR", "PARSER_GRAMMAR", "TREE_GRAMMAR", 
                   "COMBINED_GRAMMAR", "LABEL", "TEMPLATE", "SCOPE", "SEMPRED", 
                   "GATED_SEMPRED", "SYN_SEMPRED", "BACKTRACK_SEMPRED", 
                   "FRAGMENT", "TREE_BEGIN", "ROOT", "BANG", "REWRITE", 
                   "AT", "LABEL_ASSIGN", "LIST_LABEL_ASSIGN", "TOKENS", 
                   "TOKEN_REF", "STRING_LITERAL", "CHAR_LITERAL", "ACTION", 
                   "OPTIONS", "INT", "ARG_ACTION", "RULE_REF", "DOUBLE_QUOTE_STRING_LITERAL", 
                   "DOUBLE_ANGLE_STRING_LITERAL", "SRC", "SL_COMMENT", "ML_COMMENT", 
                   "LITERAL_CHAR", "ESC", "XDIGIT", "NESTED_ARG_ACTION", 
                   "ACTION_STRING_LITERAL", "ACTION_CHAR_LITERAL", "NESTED_ACTION", 
                   "ACTION_ESC", "WS_LOOP", "WS", "'lexer'", "'parser'", 
                   "'tree'", "'grammar'", "';'", "'}'", "'::'", "'*'", "'protected'", 
                   "'public'", "'private'", "':'", "'throws'", "','", "'('", 
                   "'|'", "')'", "'catch'", "'finally'", "'=>'", "'~'", 
                   "'<'", "'>'", "'.'", "'?'", "'+'", "'$'")
    
  end


  class Parser < ANTLR3::Parser
    @grammar_home = ANTLRv3Grammar
    include ANTLR3::ASTBuilder

    RULE_METHODS = [:grammar_def, :tokens_spec, :token_spec, :attr_scope, 
                    :action, :action_scope_name, :options_spec, :option, 
                    :option_value, :rule, :rule_action, :throws_spec, :rule_scope_spec, 
                    :block, :altpair, :alt_list, :alternative, :exception_group, 
                    :exception_handler, :finally_clause, :element, :atom, 
                    :not_set, :not_terminal, :element_options, :element_option, 
                    :tree_spec, :range, :terminal, :ebnf, :ebnf_suffix, 
                    :rewrite, :rewrite_alternative, :rewrite_tree_block, 
                    :rewrite_tree_alternative, :rewrite_tree_element, :rewrite_tree_atom, 
                    :rewrite_tree_ebnf, :rewrite_tree, :rewrite_template, 
                    :rewrite_template_ref, :rewrite_indirect_template_head, 
                    :rewrite_template_args, :rewrite_template_arg, :qid, 
                    :id, :synpred1_ANTLRv3Grammar, :synpred2_ANTLRv3Grammar].freeze

    Scoperule = Struct.new(:name)


    include TokenData

    generated_using( "samples/ANTLRv3Grammar.g", "3.2.1-SNAPSHOT Dec 18, 2009 04:29:28", "1.3.0" )

    def initialize(input, options = {})
      super(input, options)
      @rule_stack = []


    end

    	attr_reader :grammar_type

    # - - - - - - - - - - - - Rules - - - - - - - - - - - - -
    GrammarDefReturnValue = define_return_scope 

    # parser rule grammar_def
    # 
    # (in samples/ANTLRv3Grammar.g)
    # 94:1: grammar_def : ( DOC_COMMENT )? ( 'lexer' | 'parser' | 'tree' | ) g= 'grammar' id ';' ( options_spec )? ( tokens_spec )? ( attr_scope )* ( action )* ( rule )+ EOF -> ^( id ( DOC_COMMENT )? ( options_spec )? ( tokens_spec )? ( attr_scope )* ( action )* ( rule )+ ) ;
    def grammar_def
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 1)
      return_value = GrammarDefReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      g = nil
      __DOC_COMMENT1__ = nil
      string_literal2 = nil
      string_literal3 = nil
      string_literal4 = nil
      char_literal6 = nil
      __EOF12__ = nil
      id5 = nil
      options_spec7 = nil
      tokens_spec8 = nil
      attr_scope9 = nil
      action10 = nil
      rule11 = nil

      tree_for_g = nil
      tree_for_DOC_COMMENT1 = nil
      tree_for_string_literal2 = nil
      tree_for_string_literal3 = nil
      tree_for_string_literal4 = nil
      tree_for_char_literal6 = nil
      tree_for_EOF12 = nil
      stream_T__68 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__68")
      stream_DOC_COMMENT = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token DOC_COMMENT")
      stream_T__69 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__69")
      stream_T__67 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__67")
      stream_T__71 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__71")
      stream_T__70 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__70")
      stream_EOF = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token EOF")
      stream_id = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule id")
      stream_tokens_spec = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule tokens_spec")
      stream_rule = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule rule")
      stream_options_spec = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule options_spec")
      stream_action = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule action")
      stream_attr_scope = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule attr_scope")
      begin
        # at line 95:9: ( DOC_COMMENT )? ( 'lexer' | 'parser' | 'tree' | ) g= 'grammar' id ';' ( options_spec )? ( tokens_spec )? ( attr_scope )* ( action )* ( rule )+ EOF
        # at line 95:9: ( DOC_COMMENT )?
        alt_1 = 2
        look_1_0 = @input.peek(1)

        if (look_1_0 == DOC_COMMENT) 
          alt_1 = 1
        end
        case alt_1
        when 1
          # at line 95:9: DOC_COMMENT
          __DOC_COMMENT1__ = match(DOC_COMMENT, TOKENS_FOLLOWING_DOC_COMMENT_IN_grammar_def_295) 
          if @state.backtracking == 0
            stream_DOC_COMMENT.add(__DOC_COMMENT1__)
          end

        end
        # at line 96:6: ( 'lexer' | 'parser' | 'tree' | )
        alt_2 = 4
        case look_2 = @input.peek(1)
        when T__67 then alt_2 = 1
        when T__68 then alt_2 = 2
        when T__69 then alt_2 = 3
        when T__70 then alt_2 = 4
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          nvae = NoViableAlternative("", 2, 0)
          raise nvae
        end
        case alt_2
        when 1
          # at line 96:8: 'lexer'
          string_literal2 = match(T__67, TOKENS_FOLLOWING_T__67_IN_grammar_def_305) 
          if @state.backtracking == 0
            stream_T__67.add(string_literal2)
          end
          # syntactic predicate action gate test
          if @state.backtracking == 0
            # --> action
             @grammar_type = LEXER_GRAMMAR 
            # <-- action
          end

        when 2
          # at line 97:8: 'parser'
          string_literal3 = match(T__68, TOKENS_FOLLOWING_T__68_IN_grammar_def_321) 
          if @state.backtracking == 0
            stream_T__68.add(string_literal3)
          end
          # syntactic predicate action gate test
          if @state.backtracking == 0
            # --> action
             @grammar_type = PARSER_GRAMMAR 
            # <-- action
          end

        when 3
          # at line 98:8: 'tree'
          string_literal4 = match(T__69, TOKENS_FOLLOWING_T__69_IN_grammar_def_333) 
          if @state.backtracking == 0
            stream_T__69.add(string_literal4)
          end
          # syntactic predicate action gate test
          if @state.backtracking == 0
            # --> action
             @grammar_type = TREE_GRAMMAR 
            # <-- action
          end

        when 4
          # at line 99:16: 
          # syntactic predicate action gate test
          if @state.backtracking == 0
            # --> action
             @grammar_type = COMBINED_GRAMMAR 
            # <-- action
          end

        end
        g = match(T__70, TOKENS_FOLLOWING_T__70_IN_grammar_def_375) 
        if @state.backtracking == 0
          stream_T__70.add(g)
        end
        @state.following.push(TOKENS_FOLLOWING_id_IN_grammar_def_377)
        id5 = id
        @state.following.pop
        if @state.backtracking == 0
          stream_id.add(id5.tree)
        end
        char_literal6 = match(T__71, TOKENS_FOLLOWING_T__71_IN_grammar_def_379) 
        if @state.backtracking == 0
          stream_T__71.add(char_literal6)
        end
        # at line 101:25: ( options_spec )?
        alt_3 = 2
        look_3_0 = @input.peek(1)

        if (look_3_0 == OPTIONS) 
          alt_3 = 1
        end
        case alt_3
        when 1
          # at line 101:25: options_spec
          @state.following.push(TOKENS_FOLLOWING_options_spec_IN_grammar_def_381)
          options_spec7 = options_spec
          @state.following.pop
          if @state.backtracking == 0
            stream_options_spec.add(options_spec7.tree)
          end

        end
        # at line 101:39: ( tokens_spec )?
        alt_4 = 2
        look_4_0 = @input.peek(1)

        if (look_4_0 == TOKENS) 
          alt_4 = 1
        end
        case alt_4
        when 1
          # at line 101:39: tokens_spec
          @state.following.push(TOKENS_FOLLOWING_tokens_spec_IN_grammar_def_384)
          tokens_spec8 = tokens_spec
          @state.following.pop
          if @state.backtracking == 0
            stream_tokens_spec.add(tokens_spec8.tree)
          end

        end
        # at line 101:52: ( attr_scope )*
        loop do  #loop 5
          alt_5 = 2
          look_5_0 = @input.peek(1)

          if (look_5_0 == SCOPE) 
            alt_5 = 1

          end
          case alt_5
          when 1
            # at line 101:52: attr_scope
            @state.following.push(TOKENS_FOLLOWING_attr_scope_IN_grammar_def_387)
            attr_scope9 = attr_scope
            @state.following.pop
            if @state.backtracking == 0
              stream_attr_scope.add(attr_scope9.tree)
            end

          else
            break #loop 5
          end
        end
        # at line 101:64: ( action )*
        loop do  #loop 6
          alt_6 = 2
          look_6_0 = @input.peek(1)

          if (look_6_0 == AT) 
            alt_6 = 1

          end
          case alt_6
          when 1
            # at line 101:64: action
            @state.following.push(TOKENS_FOLLOWING_action_IN_grammar_def_390)
            action10 = action
            @state.following.pop
            if @state.backtracking == 0
              stream_action.add(action10.tree)
            end

          else
            break #loop 6
          end
        end
        # at file 102:6: ( rule )+
        match_count_7 = 0
        loop do
          alt_7 = 2
          look_7_0 = @input.peek(1)

          if (look_7_0 == DOC_COMMENT || look_7_0 == FRAGMENT || look_7_0 == TOKEN_REF || look_7_0 == RULE_REF || look_7_0.between?(T__75, T__77)) 
            alt_7 = 1

          end
          case alt_7
          when 1
            # at line 102:6: rule
            @state.following.push(TOKENS_FOLLOWING_rule_IN_grammar_def_398)
            rule11 = rule
            @state.following.pop
            if @state.backtracking == 0
              stream_rule.add(rule11.tree)
            end

          else
            match_count_7 > 0 and break
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

            eee = EarlyExit(7)


            raise eee
          end
          match_count_7 += 1
        end

        __EOF12__ = match(EOF, TOKENS_FOLLOWING_EOF_IN_grammar_def_406) 
        if @state.backtracking == 0
          stream_EOF.add(__EOF12__)
        end
        # AST Rewrite
        # elements: attr_scope, id, tokens_spec, action, options_spec, rule, DOC_COMMENT
        # token labels: 
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 
        if @state.backtracking == 0

          return_value.tree = root_0
          stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

          root_0 = @adaptor.create_flat_list!
          # 104:6: -> ^( id ( DOC_COMMENT )? ( options_spec )? ( tokens_spec )? ( attr_scope )* ( action )* ( rule )+ )
          # at line 104:9: ^( id ( DOC_COMMENT )? ( options_spec )? ( tokens_spec )? ( attr_scope )* ( action )* ( rule )+ )
          root_1 = @adaptor.create_flat_list!
          root_1 = @adaptor.become_root(@adaptor.create!(@grammar_type, g) , root_1)

          @adaptor.add_child(root_1, stream_id.next_tree)
          # at line 105:12: ( DOC_COMMENT )?
          if stream_DOC_COMMENT.has_next?
            @adaptor.add_child(root_1, stream_DOC_COMMENT.next_node)

          end

          stream_DOC_COMMENT.reset();
          # at line 105:25: ( options_spec )?
          if stream_options_spec.has_next?
            @adaptor.add_child(root_1, stream_options_spec.next_tree)

          end

          stream_options_spec.reset();
          # at line 105:39: ( tokens_spec )?
          if stream_tokens_spec.has_next?
            @adaptor.add_child(root_1, stream_tokens_spec.next_tree)

          end

          stream_tokens_spec.reset();
          # at line 105:52: ( attr_scope )*
          while stream_attr_scope.has_next?
            @adaptor.add_child(root_1, stream_attr_scope.next_tree)

          end

          stream_attr_scope.reset();
          # at line 105:64: ( action )*
          while stream_action.has_next?
            @adaptor.add_child(root_1, stream_action.next_tree)

          end

          stream_action.reset();
          # at line 105:72: ( rule )+
          unless stream_rule.has_next?
            raise ANTLR3::RewriteEarlyExit
          end

          while stream_rule.has_next?
            @adaptor.add_child(root_1, stream_rule.next_tree)

          end

          stream_rule.reset

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

    TokensSpecReturnValue = define_return_scope 

    # parser rule tokens_spec
    # 
    # (in samples/ANTLRv3Grammar.g)
    # 109:1: tokens_spec : TOKENS ( token_spec )+ '}' -> ^( TOKENS ( token_spec )+ ) ;
    def tokens_spec
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 2)
      return_value = TokensSpecReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __TOKENS13__ = nil
      char_literal15 = nil
      token_spec14 = nil

      tree_for_TOKENS13 = nil
      tree_for_char_literal15 = nil
      stream_TOKENS = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token TOKENS")
      stream_T__72 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__72")
      stream_token_spec = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule token_spec")
      begin
        # at line 110:4: TOKENS ( token_spec )+ '}'
        __TOKENS13__ = match(TOKENS, TOKENS_FOLLOWING_TOKENS_IN_tokens_spec_467) 
        if @state.backtracking == 0
          stream_TOKENS.add(__TOKENS13__)
        end
        # at file 110:11: ( token_spec )+
        match_count_8 = 0
        loop do
          alt_8 = 2
          look_8_0 = @input.peek(1)

          if (look_8_0 == TOKEN_REF) 
            alt_8 = 1

          end
          case alt_8
          when 1
            # at line 110:11: token_spec
            @state.following.push(TOKENS_FOLLOWING_token_spec_IN_tokens_spec_469)
            token_spec14 = token_spec
            @state.following.pop
            if @state.backtracking == 0
              stream_token_spec.add(token_spec14.tree)
            end

          else
            match_count_8 > 0 and break
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

            eee = EarlyExit(8)


            raise eee
          end
          match_count_8 += 1
        end

        char_literal15 = match(T__72, TOKENS_FOLLOWING_T__72_IN_tokens_spec_472) 
        if @state.backtracking == 0
          stream_T__72.add(char_literal15)
        end
        # AST Rewrite
        # elements: token_spec, TOKENS
        # token labels: 
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 
        if @state.backtracking == 0

          return_value.tree = root_0
          stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

          root_0 = @adaptor.create_flat_list!
          # 110:27: -> ^( TOKENS ( token_spec )+ )
          # at line 110:30: ^( TOKENS ( token_spec )+ )
          root_1 = @adaptor.create_flat_list!
          root_1 = @adaptor.become_root(stream_TOKENS.next_node, root_1)

          # at line 110:39: ( token_spec )+
          unless stream_token_spec.has_next?
            raise ANTLR3::RewriteEarlyExit
          end

          while stream_token_spec.has_next?
            @adaptor.add_child(root_1, stream_token_spec.next_tree)

          end

          stream_token_spec.reset

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

    TokenSpecReturnValue = define_return_scope 

    # parser rule token_spec
    # 
    # (in samples/ANTLRv3Grammar.g)
    # 113:1: token_spec : TOKEN_REF ( '=' (lit= STRING_LITERAL | lit= CHAR_LITERAL ) -> ^( '=' TOKEN_REF $lit) | -> TOKEN_REF ) ';' ;
    def token_spec
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 3)
      return_value = TokenSpecReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      lit = nil
      __TOKEN_REF16__ = nil
      char_literal17 = nil
      char_literal18 = nil

      tree_for_lit = nil
      tree_for_TOKEN_REF16 = nil
      tree_for_char_literal17 = nil
      tree_for_char_literal18 = nil
      stream_STRING_LITERAL = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token STRING_LITERAL")
      stream_T__71 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__71")
      stream_CHAR_LITERAL = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token CHAR_LITERAL")
      stream_LABEL_ASSIGN = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token LABEL_ASSIGN")
      stream_TOKEN_REF = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token TOKEN_REF")

      begin
        # at line 114:4: TOKEN_REF ( '=' (lit= STRING_LITERAL | lit= CHAR_LITERAL ) -> ^( '=' TOKEN_REF $lit) | -> TOKEN_REF ) ';'
        __TOKEN_REF16__ = match(TOKEN_REF, TOKENS_FOLLOWING_TOKEN_REF_IN_token_spec_492) 
        if @state.backtracking == 0
          stream_TOKEN_REF.add(__TOKEN_REF16__)
        end
        # at line 115:3: ( '=' (lit= STRING_LITERAL | lit= CHAR_LITERAL ) -> ^( '=' TOKEN_REF $lit) | -> TOKEN_REF )
        alt_10 = 2
        look_10_0 = @input.peek(1)

        if (look_10_0 == LABEL_ASSIGN) 
          alt_10 = 1
        elsif (look_10_0 == T__71) 
          alt_10 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 10, 0)
          raise nvae
        end
        case alt_10
        when 1
          # at line 115:5: '=' (lit= STRING_LITERAL | lit= CHAR_LITERAL )
          char_literal17 = match(LABEL_ASSIGN, TOKENS_FOLLOWING_LABEL_ASSIGN_IN_token_spec_498) 
          if @state.backtracking == 0
            stream_LABEL_ASSIGN.add(char_literal17)
          end
          # at line 115:9: (lit= STRING_LITERAL | lit= CHAR_LITERAL )
          alt_9 = 2
          look_9_0 = @input.peek(1)

          if (look_9_0 == STRING_LITERAL) 
            alt_9 = 1
          elsif (look_9_0 == CHAR_LITERAL) 
            alt_9 = 2
          else
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
          nvae = NoViableAlternative("", 9, 0)
            raise nvae
          end
          case alt_9
          when 1
            # at line 115:10: lit= STRING_LITERAL
            lit = match(STRING_LITERAL, TOKENS_FOLLOWING_STRING_LITERAL_IN_token_spec_503) 
            if @state.backtracking == 0
              stream_STRING_LITERAL.add(lit)
            end

          when 2
            # at line 115:29: lit= CHAR_LITERAL
            lit = match(CHAR_LITERAL, TOKENS_FOLLOWING_CHAR_LITERAL_IN_token_spec_507) 
            if @state.backtracking == 0
              stream_CHAR_LITERAL.add(lit)
            end

          end
          # AST Rewrite
          # elements: lit, LABEL_ASSIGN, TOKEN_REF
          # token labels: lit
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_lit = token_stream("token lit", lit)
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

            root_0 = @adaptor.create_flat_list!
            # 115:47: -> ^( '=' TOKEN_REF $lit)
            # at line 115:50: ^( '=' TOKEN_REF $lit)
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(stream_LABEL_ASSIGN.next_node, root_1)

            @adaptor.add_child(root_1, stream_TOKEN_REF.next_node)
            @adaptor.add_child(root_1, stream_lit.next_node)

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 2
          # at line 116:16: 
          # AST Rewrite
          # elements: TOKEN_REF
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

            root_0 = @adaptor.create_flat_list!
            # 116:16: -> TOKEN_REF
            @adaptor.add_child(root_0, stream_TOKEN_REF.next_node)



            return_value.tree = root_0

          end
        end
        char_literal18 = match(T__71, TOKENS_FOLLOWING_T__71_IN_token_spec_546) 
        if @state.backtracking == 0
          stream_T__71.add(char_literal18)
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

    AttrScopeReturnValue = define_return_scope 

    # parser rule attr_scope
    # 
    # (in samples/ANTLRv3Grammar.g)
    # 121:1: attr_scope : 'scope' id ACTION -> ^( 'scope' id ACTION ) ;
    def attr_scope
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 4)
      return_value = AttrScopeReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal19 = nil
      __ACTION21__ = nil
      id20 = nil

      tree_for_string_literal19 = nil
      tree_for_ACTION21 = nil
      stream_SCOPE = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token SCOPE")
      stream_ACTION = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token ACTION")
      stream_id = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule id")
      begin
        # at line 122:4: 'scope' id ACTION
        string_literal19 = match(SCOPE, TOKENS_FOLLOWING_SCOPE_IN_attr_scope_557) 
        if @state.backtracking == 0
          stream_SCOPE.add(string_literal19)
        end
        @state.following.push(TOKENS_FOLLOWING_id_IN_attr_scope_559)
        id20 = id
        @state.following.pop
        if @state.backtracking == 0
          stream_id.add(id20.tree)
        end
        __ACTION21__ = match(ACTION, TOKENS_FOLLOWING_ACTION_IN_attr_scope_561) 
        if @state.backtracking == 0
          stream_ACTION.add(__ACTION21__)
        end
        # AST Rewrite
        # elements: ACTION, id, SCOPE
        # token labels: 
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 
        if @state.backtracking == 0

          return_value.tree = root_0
          stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

          root_0 = @adaptor.create_flat_list!
          # 122:22: -> ^( 'scope' id ACTION )
          # at line 122:25: ^( 'scope' id ACTION )
          root_1 = @adaptor.create_flat_list!
          root_1 = @adaptor.become_root(stream_SCOPE.next_node, root_1)

          @adaptor.add_child(root_1, stream_id.next_tree)
          @adaptor.add_child(root_1, stream_ACTION.next_node)

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

    ActionReturnValue = define_return_scope 

    # parser rule action
    # 
    # (in samples/ANTLRv3Grammar.g)
    # 125:1: action : '@' ( action_scope_name '::' )? id ACTION -> ^( '@' ( action_scope_name )? id ACTION ) ;
    def action
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 5)
      return_value = ActionReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal22 = nil
      string_literal24 = nil
      __ACTION26__ = nil
      action_scope_name23 = nil
      id25 = nil

      tree_for_char_literal22 = nil
      tree_for_string_literal24 = nil
      tree_for_ACTION26 = nil
      stream_AT = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token AT")
      stream_T__73 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__73")
      stream_ACTION = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token ACTION")
      stream_action_scope_name = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule action_scope_name")
      stream_id = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule id")
      begin
        # at line 127:4: '@' ( action_scope_name '::' )? id ACTION
        char_literal22 = match(AT, TOKENS_FOLLOWING_AT_IN_action_584) 
        if @state.backtracking == 0
          stream_AT.add(char_literal22)
        end
        # at line 127:8: ( action_scope_name '::' )?
        alt_11 = 2
        case look_11 = @input.peek(1)
        when TOKEN_REF then look_11_1 = @input.peek(2)

        if (look_11_1 == T__73) 
          alt_11 = 1
        end
        when RULE_REF then look_11_2 = @input.peek(2)

        if (look_11_2 == T__73) 
          alt_11 = 1
        end
        when T__67, T__68 then alt_11 = 1
        end
        case alt_11
        when 1
          # at line 127:9: action_scope_name '::'
          @state.following.push(TOKENS_FOLLOWING_action_scope_name_IN_action_587)
          action_scope_name23 = action_scope_name
          @state.following.pop
          if @state.backtracking == 0
            stream_action_scope_name.add(action_scope_name23.tree)
          end
          string_literal24 = match(T__73, TOKENS_FOLLOWING_T__73_IN_action_589) 
          if @state.backtracking == 0
            stream_T__73.add(string_literal24)
          end

        end
        @state.following.push(TOKENS_FOLLOWING_id_IN_action_593)
        id25 = id
        @state.following.pop
        if @state.backtracking == 0
          stream_id.add(id25.tree)
        end
        __ACTION26__ = match(ACTION, TOKENS_FOLLOWING_ACTION_IN_action_595) 
        if @state.backtracking == 0
          stream_ACTION.add(__ACTION26__)
        end
        # AST Rewrite
        # elements: ACTION, id, action_scope_name, AT
        # token labels: 
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 
        if @state.backtracking == 0

          return_value.tree = root_0
          stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

          root_0 = @adaptor.create_flat_list!
          # 127:44: -> ^( '@' ( action_scope_name )? id ACTION )
          # at line 127:47: ^( '@' ( action_scope_name )? id ACTION )
          root_1 = @adaptor.create_flat_list!
          root_1 = @adaptor.become_root(stream_AT.next_node, root_1)

          # at line 127:53: ( action_scope_name )?
          if stream_action_scope_name.has_next?
            @adaptor.add_child(root_1, stream_action_scope_name.next_tree)

          end

          stream_action_scope_name.reset();
          @adaptor.add_child(root_1, stream_id.next_tree)
          @adaptor.add_child(root_1, stream_ACTION.next_node)

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

    ActionScopeNameReturnValue = define_return_scope 

    # parser rule action_scope_name
    # 
    # (in samples/ANTLRv3Grammar.g)
    # 130:1: action_scope_name : ( id | l= 'lexer' -> ID[$l] | p= 'parser' -> ID[$p] );
    def action_scope_name
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 6)
      return_value = ActionScopeNameReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      l = nil
      p = nil
      id27 = nil

      tree_for_l = nil
      tree_for_p = nil
      stream_T__68 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__68")
      stream_T__67 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__67")

      begin
        # at line 134:2: ( id | l= 'lexer' -> ID[$l] | p= 'parser' -> ID[$p] )
        alt_12 = 3
        case look_12 = @input.peek(1)
        when TOKEN_REF, RULE_REF then alt_12 = 1
        when T__67 then alt_12 = 2
        when T__68 then alt_12 = 3
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          nvae = NoViableAlternative("", 12, 0)
          raise nvae
        end
        case alt_12
        when 1
          root_0 = @adaptor.create_flat_list!


          # at line 134:4: id
          @state.following.push(TOKENS_FOLLOWING_id_IN_action_scope_name_621)
          id27 = id
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, id27.tree)
          end

        when 2
          # at line 135:4: l= 'lexer'
          l = match(T__67, TOKENS_FOLLOWING_T__67_IN_action_scope_name_628) 
          if @state.backtracking == 0
            stream_T__67.add(l)
          end
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
            # 135:16: -> ID[$l]
            @adaptor.add_child(root_0, @adaptor.create!(ID, l))



            return_value.tree = root_0

          end
        when 3
          # at line 136:5: p= 'parser'
          p = match(T__68, TOKENS_FOLLOWING_T__68_IN_action_scope_name_643) 
          if @state.backtracking == 0
            stream_T__68.add(p)
          end
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
            # 136:16: -> ID[$p]
            @adaptor.add_child(root_0, @adaptor.create!(ID, p))



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

    OptionsSpecReturnValue = define_return_scope 

    # parser rule options_spec
    # 
    # (in samples/ANTLRv3Grammar.g)
    # 139:1: options_spec : OPTIONS ( option ';' )+ '}' -> ^( OPTIONS ( option )+ ) ;
    def options_spec
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 7)
      return_value = OptionsSpecReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __OPTIONS28__ = nil
      char_literal30 = nil
      char_literal31 = nil
      option29 = nil

      tree_for_OPTIONS28 = nil
      tree_for_char_literal30 = nil
      tree_for_char_literal31 = nil
      stream_T__71 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__71")
      stream_T__72 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__72")
      stream_OPTIONS = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token OPTIONS")
      stream_option = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule option")
      begin
        # at line 140:4: OPTIONS ( option ';' )+ '}'
        __OPTIONS28__ = match(OPTIONS, TOKENS_FOLLOWING_OPTIONS_IN_options_spec_659) 
        if @state.backtracking == 0
          stream_OPTIONS.add(__OPTIONS28__)
        end
        # at file 140:12: ( option ';' )+
        match_count_13 = 0
        loop do
          alt_13 = 2
          look_13_0 = @input.peek(1)

          if (look_13_0 == TOKEN_REF || look_13_0 == RULE_REF) 
            alt_13 = 1

          end
          case alt_13
          when 1
            # at line 140:13: option ';'
            @state.following.push(TOKENS_FOLLOWING_option_IN_options_spec_662)
            option29 = option
            @state.following.pop
            if @state.backtracking == 0
              stream_option.add(option29.tree)
            end
            char_literal30 = match(T__71, TOKENS_FOLLOWING_T__71_IN_options_spec_664) 
            if @state.backtracking == 0
              stream_T__71.add(char_literal30)
            end

          else
            match_count_13 > 0 and break
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

            eee = EarlyExit(13)


            raise eee
          end
          match_count_13 += 1
        end

        char_literal31 = match(T__72, TOKENS_FOLLOWING_T__72_IN_options_spec_668) 
        if @state.backtracking == 0
          stream_T__72.add(char_literal31)
        end
        # AST Rewrite
        # elements: OPTIONS, option
        # token labels: 
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 
        if @state.backtracking == 0

          return_value.tree = root_0
          stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

          root_0 = @adaptor.create_flat_list!
          # 140:30: -> ^( OPTIONS ( option )+ )
          # at line 140:33: ^( OPTIONS ( option )+ )
          root_1 = @adaptor.create_flat_list!
          root_1 = @adaptor.become_root(stream_OPTIONS.next_node, root_1)

          # at line 140:43: ( option )+
          unless stream_option.has_next?
            raise ANTLR3::RewriteEarlyExit
          end

          while stream_option.has_next?
            @adaptor.add_child(root_1, stream_option.next_tree)

          end

          stream_option.reset

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

    OptionReturnValue = define_return_scope 

    # parser rule option
    # 
    # (in samples/ANTLRv3Grammar.g)
    # 143:1: option : id '=' option_value -> ^( '=' id option_value ) ;
    def option
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 8)
      return_value = OptionReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal33 = nil
      id32 = nil
      option_value34 = nil

      tree_for_char_literal33 = nil
      stream_LABEL_ASSIGN = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token LABEL_ASSIGN")
      stream_id = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule id")
      stream_option_value = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule option_value")
      begin
        # at line 144:9: id '=' option_value
        @state.following.push(TOKENS_FOLLOWING_id_IN_option_693)
        id32 = id
        @state.following.pop
        if @state.backtracking == 0
          stream_id.add(id32.tree)
        end
        char_literal33 = match(LABEL_ASSIGN, TOKENS_FOLLOWING_LABEL_ASSIGN_IN_option_695) 
        if @state.backtracking == 0
          stream_LABEL_ASSIGN.add(char_literal33)
        end
        @state.following.push(TOKENS_FOLLOWING_option_value_IN_option_697)
        option_value34 = option_value
        @state.following.pop
        if @state.backtracking == 0
          stream_option_value.add(option_value34.tree)
        end
        # AST Rewrite
        # elements: LABEL_ASSIGN, id, option_value
        # token labels: 
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 
        if @state.backtracking == 0

          return_value.tree = root_0
          stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

          root_0 = @adaptor.create_flat_list!
          # 144:29: -> ^( '=' id option_value )
          # at line 144:32: ^( '=' id option_value )
          root_1 = @adaptor.create_flat_list!
          root_1 = @adaptor.become_root(stream_LABEL_ASSIGN.next_node, root_1)

          @adaptor.add_child(root_1, stream_id.next_tree)
          @adaptor.add_child(root_1, stream_option_value.next_tree)

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
        # trace_out(__method__, 8)

      end
      
      return return_value
    end

    OptionValueReturnValue = define_return_scope 

    # parser rule option_value
    # 
    # (in samples/ANTLRv3Grammar.g)
    # 147:1: option_value : ( qid | STRING_LITERAL | CHAR_LITERAL | INT | s= '*' -> STRING_LITERAL[$s] );
    def option_value
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 9)
      return_value = OptionValueReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      s = nil
      __STRING_LITERAL36__ = nil
      __CHAR_LITERAL37__ = nil
      __INT38__ = nil
      qid35 = nil

      tree_for_s = nil
      tree_for_STRING_LITERAL36 = nil
      tree_for_CHAR_LITERAL37 = nil
      tree_for_INT38 = nil
      stream_T__74 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__74")

      begin
        # at line 148:5: ( qid | STRING_LITERAL | CHAR_LITERAL | INT | s= '*' -> STRING_LITERAL[$s] )
        alt_14 = 5
        case look_14 = @input.peek(1)
        when TOKEN_REF, RULE_REF then alt_14 = 1
        when STRING_LITERAL then alt_14 = 2
        when CHAR_LITERAL then alt_14 = 3
        when INT then alt_14 = 4
        when T__74 then alt_14 = 5
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          nvae = NoViableAlternative("", 14, 0)
          raise nvae
        end
        case alt_14
        when 1
          root_0 = @adaptor.create_flat_list!


          # at line 148:9: qid
          @state.following.push(TOKENS_FOLLOWING_qid_IN_option_value_726)
          qid35 = qid
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, qid35.tree)
          end

        when 2
          root_0 = @adaptor.create_flat_list!


          # at line 149:9: STRING_LITERAL
          __STRING_LITERAL36__ = match(STRING_LITERAL, TOKENS_FOLLOWING_STRING_LITERAL_IN_option_value_736)
          if @state.backtracking == 0

            tree_for_STRING_LITERAL36 = @adaptor.create_with_payload!(__STRING_LITERAL36__)
            @adaptor.add_child(root_0, tree_for_STRING_LITERAL36)

          end

        when 3
          root_0 = @adaptor.create_flat_list!


          # at line 150:9: CHAR_LITERAL
          __CHAR_LITERAL37__ = match(CHAR_LITERAL, TOKENS_FOLLOWING_CHAR_LITERAL_IN_option_value_746)
          if @state.backtracking == 0

            tree_for_CHAR_LITERAL37 = @adaptor.create_with_payload!(__CHAR_LITERAL37__)
            @adaptor.add_child(root_0, tree_for_CHAR_LITERAL37)

          end

        when 4
          root_0 = @adaptor.create_flat_list!


          # at line 151:9: INT
          __INT38__ = match(INT, TOKENS_FOLLOWING_INT_IN_option_value_756)
          if @state.backtracking == 0

            tree_for_INT38 = @adaptor.create_with_payload!(__INT38__)
            @adaptor.add_child(root_0, tree_for_INT38)

          end

        when 5
          # at line 152:7: s= '*'
          s = match(T__74, TOKENS_FOLLOWING_T__74_IN_option_value_766) 
          if @state.backtracking == 0
            stream_T__74.add(s)
          end
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
            # 152:13: -> STRING_LITERAL[$s]
            @adaptor.add_child(root_0, @adaptor.create!(STRING_LITERAL, s))



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

    RuleReturnValue = define_return_scope 

    # parser rule rule
    # 
    # (in samples/ANTLRv3Grammar.g)
    # 155:1: rule : ( DOC_COMMENT )? (modifier= ( 'protected' | 'public' | 'private' | 'fragment' ) )? id ( '!' )? (arg= ARG_ACTION )? ( 'returns' rt= ARG_ACTION )? ( throws_spec )? ( options_spec )? ( rule_scope_spec )? ( rule_action )* ':' alt_list ';' ( exception_group )? -> ^( RULE id ( ^( ARG[$arg] $arg) )? ( ^( 'returns' $rt) )? ( throws_spec )? ( options_spec )? ( rule_scope_spec )? ( rule_action )* alt_list ( exception_group )? EOR[\"EOR\"] ) ;
    def rule
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 10)
      @rule_stack.push(Scoperule.new)
      return_value = RuleReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      modifier = nil
      arg = nil
      rt = nil
      __DOC_COMMENT39__ = nil
      string_literal40 = nil
      string_literal41 = nil
      string_literal42 = nil
      string_literal43 = nil
      char_literal45 = nil
      string_literal46 = nil
      char_literal51 = nil
      char_literal53 = nil
      id44 = nil
      throws_spec47 = nil
      options_spec48 = nil
      rule_scope_spec49 = nil
      rule_action50 = nil
      alt_list52 = nil
      exception_group54 = nil

      tree_for_modifier = nil
      tree_for_arg = nil
      tree_for_rt = nil
      tree_for_DOC_COMMENT39 = nil
      tree_for_string_literal40 = nil
      tree_for_string_literal41 = nil
      tree_for_string_literal42 = nil
      tree_for_string_literal43 = nil
      tree_for_char_literal45 = nil
      tree_for_string_literal46 = nil
      tree_for_char_literal51 = nil
      tree_for_char_literal53 = nil
      stream_DOC_COMMENT = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token DOC_COMMENT")
      stream_RET = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token RET")
      stream_T__71 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__71")
      stream_BANG = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token BANG")
      stream_T__76 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__76")
      stream_T__75 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__75")
      stream_FRAGMENT = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token FRAGMENT")
      stream_T__78 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__78")
      stream_ARG_ACTION = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token ARG_ACTION")
      stream_T__77 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__77")
      stream_id = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule id")
      stream_throws_spec = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule throws_spec")
      stream_rule_action = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule rule_action")
      stream_exception_group = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule exception_group")
      stream_options_spec = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule options_spec")
      stream_rule_scope_spec = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule rule_scope_spec")
      stream_alt_list = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule alt_list")
      begin
        # at line 159:4: ( DOC_COMMENT )? (modifier= ( 'protected' | 'public' | 'private' | 'fragment' ) )? id ( '!' )? (arg= ARG_ACTION )? ( 'returns' rt= ARG_ACTION )? ( throws_spec )? ( options_spec )? ( rule_scope_spec )? ( rule_action )* ':' alt_list ';' ( exception_group )?
        # at line 159:4: ( DOC_COMMENT )?
        alt_15 = 2
        look_15_0 = @input.peek(1)

        if (look_15_0 == DOC_COMMENT) 
          alt_15 = 1
        end
        case alt_15
        when 1
          # at line 159:4: DOC_COMMENT
          __DOC_COMMENT39__ = match(DOC_COMMENT, TOKENS_FOLLOWING_DOC_COMMENT_IN_rule_791) 
          if @state.backtracking == 0
            stream_DOC_COMMENT.add(__DOC_COMMENT39__)
          end

        end
        # at line 160:3: (modifier= ( 'protected' | 'public' | 'private' | 'fragment' ) )?
        alt_17 = 2
        look_17_0 = @input.peek(1)

        if (look_17_0 == FRAGMENT || look_17_0.between?(T__75, T__77)) 
          alt_17 = 1
        end
        case alt_17
        when 1
          # at line 160:5: modifier= ( 'protected' | 'public' | 'private' | 'fragment' )
          # at line 160:14: ( 'protected' | 'public' | 'private' | 'fragment' )
          alt_16 = 4
          case look_16 = @input.peek(1)
          when T__75 then alt_16 = 1
          when T__76 then alt_16 = 2
          when T__77 then alt_16 = 3
          when FRAGMENT then alt_16 = 4
          else
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

            nvae = NoViableAlternative("", 16, 0)
            raise nvae
          end
          case alt_16
          when 1
            # at line 160:15: 'protected'
            string_literal40 = match(T__75, TOKENS_FOLLOWING_T__75_IN_rule_801) 
            if @state.backtracking == 0
              stream_T__75.add(string_literal40)
            end

          when 2
            # at line 160:27: 'public'
            string_literal41 = match(T__76, TOKENS_FOLLOWING_T__76_IN_rule_803) 
            if @state.backtracking == 0
              stream_T__76.add(string_literal41)
            end

          when 3
            # at line 160:36: 'private'
            string_literal42 = match(T__77, TOKENS_FOLLOWING_T__77_IN_rule_805) 
            if @state.backtracking == 0
              stream_T__77.add(string_literal42)
            end

          when 4
            # at line 160:46: 'fragment'
            string_literal43 = match(FRAGMENT, TOKENS_FOLLOWING_FRAGMENT_IN_rule_807) 
            if @state.backtracking == 0
              stream_FRAGMENT.add(string_literal43)
            end

          end

        end
        @state.following.push(TOKENS_FOLLOWING_id_IN_rule_815)
        id44 = id
        @state.following.pop
        if @state.backtracking == 0
          stream_id.add(id44.tree)
        end
        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action
           @rule_stack[-1].name = (id44.nil? ? nil : @input.to_s(id44.start,id44.stop)) 
          # <-- action
        end
        # at line 162:3: ( '!' )?
        alt_18 = 2
        look_18_0 = @input.peek(1)

        if (look_18_0 == BANG) 
          alt_18 = 1
        end
        case alt_18
        when 1
          # at line 162:3: '!'
          char_literal45 = match(BANG, TOKENS_FOLLOWING_BANG_IN_rule_821) 
          if @state.backtracking == 0
            stream_BANG.add(char_literal45)
          end

        end
        # at line 163:3: (arg= ARG_ACTION )?
        alt_19 = 2
        look_19_0 = @input.peek(1)

        if (look_19_0 == ARG_ACTION) 
          alt_19 = 1
        end
        case alt_19
        when 1
          # at line 163:5: arg= ARG_ACTION
          arg = match(ARG_ACTION, TOKENS_FOLLOWING_ARG_ACTION_IN_rule_830) 
          if @state.backtracking == 0
            stream_ARG_ACTION.add(arg)
          end

        end
        # at line 164:3: ( 'returns' rt= ARG_ACTION )?
        alt_20 = 2
        look_20_0 = @input.peek(1)

        if (look_20_0 == RET) 
          alt_20 = 1
        end
        case alt_20
        when 1
          # at line 164:5: 'returns' rt= ARG_ACTION
          string_literal46 = match(RET, TOKENS_FOLLOWING_RET_IN_rule_839) 
          if @state.backtracking == 0
            stream_RET.add(string_literal46)
          end
          rt = match(ARG_ACTION, TOKENS_FOLLOWING_ARG_ACTION_IN_rule_843) 
          if @state.backtracking == 0
            stream_ARG_ACTION.add(rt)
          end

        end
        # at line 165:3: ( throws_spec )?
        alt_21 = 2
        look_21_0 = @input.peek(1)

        if (look_21_0 == T__79) 
          alt_21 = 1
        end
        case alt_21
        when 1
          # at line 165:3: throws_spec
          @state.following.push(TOKENS_FOLLOWING_throws_spec_IN_rule_851)
          throws_spec47 = throws_spec
          @state.following.pop
          if @state.backtracking == 0
            stream_throws_spec.add(throws_spec47.tree)
          end

        end
        # at line 165:16: ( options_spec )?
        alt_22 = 2
        look_22_0 = @input.peek(1)

        if (look_22_0 == OPTIONS) 
          alt_22 = 1
        end
        case alt_22
        when 1
          # at line 165:16: options_spec
          @state.following.push(TOKENS_FOLLOWING_options_spec_IN_rule_854)
          options_spec48 = options_spec
          @state.following.pop
          if @state.backtracking == 0
            stream_options_spec.add(options_spec48.tree)
          end

        end
        # at line 165:30: ( rule_scope_spec )?
        alt_23 = 2
        look_23_0 = @input.peek(1)

        if (look_23_0 == SCOPE) 
          alt_23 = 1
        end
        case alt_23
        when 1
          # at line 165:30: rule_scope_spec
          @state.following.push(TOKENS_FOLLOWING_rule_scope_spec_IN_rule_857)
          rule_scope_spec49 = rule_scope_spec
          @state.following.pop
          if @state.backtracking == 0
            stream_rule_scope_spec.add(rule_scope_spec49.tree)
          end

        end
        # at line 165:47: ( rule_action )*
        loop do  #loop 24
          alt_24 = 2
          look_24_0 = @input.peek(1)

          if (look_24_0 == AT) 
            alt_24 = 1

          end
          case alt_24
          when 1
            # at line 165:47: rule_action
            @state.following.push(TOKENS_FOLLOWING_rule_action_IN_rule_860)
            rule_action50 = rule_action
            @state.following.pop
            if @state.backtracking == 0
              stream_rule_action.add(rule_action50.tree)
            end

          else
            break #loop 24
          end
        end
        char_literal51 = match(T__78, TOKENS_FOLLOWING_T__78_IN_rule_865) 
        if @state.backtracking == 0
          stream_T__78.add(char_literal51)
        end
        @state.following.push(TOKENS_FOLLOWING_alt_list_IN_rule_867)
        alt_list52 = alt_list
        @state.following.pop
        if @state.backtracking == 0
          stream_alt_list.add(alt_list52.tree)
        end
        char_literal53 = match(T__71, TOKENS_FOLLOWING_T__71_IN_rule_869) 
        if @state.backtracking == 0
          stream_T__71.add(char_literal53)
        end
        # at line 167:3: ( exception_group )?
        alt_25 = 2
        look_25_0 = @input.peek(1)

        if (look_25_0.between?(T__84, T__85)) 
          alt_25 = 1
        end
        case alt_25
        when 1
          # at line 167:3: exception_group
          @state.following.push(TOKENS_FOLLOWING_exception_group_IN_rule_873)
          exception_group54 = exception_group
          @state.following.pop
          if @state.backtracking == 0
            stream_exception_group.add(exception_group54.tree)
          end

        end
        # AST Rewrite
        # elements: options_spec, exception_group, RET, throws_spec, rule_action, rt, arg, id, alt_list, rule_scope_spec
        # token labels: arg, rt
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 
        if @state.backtracking == 0

          return_value.tree = root_0
          stream_arg = token_stream("token arg", arg)
          stream_rt = token_stream("token rt", rt)
          stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

          root_0 = @adaptor.create_flat_list!
          # 168:6: -> ^( RULE id ( ^( ARG[$arg] $arg) )? ( ^( 'returns' $rt) )? ( throws_spec )? ( options_spec )? ( rule_scope_spec )? ( rule_action )* alt_list ( exception_group )? EOR[\"EOR\"] )
          # at line 168:9: ^( RULE id ( ^( ARG[$arg] $arg) )? ( ^( 'returns' $rt) )? ( throws_spec )? ( options_spec )? ( rule_scope_spec )? ( rule_action )* alt_list ( exception_group )? EOR[\"EOR\"] )
          root_1 = @adaptor.create_flat_list!
          root_1 = @adaptor.become_root(@adaptor.create_from_type!(RULE, "RULE"), root_1)

          @adaptor.add_child(root_1, stream_id.next_tree)
          @adaptor.add_child(root_1, modifier ? @adaptor.create!(modifier) : nil)
          # at line 168:68: ( ^( ARG[$arg] $arg) )?
          if stream_arg.has_next?
            # at line 168:68: ^( ARG[$arg] $arg)
            root_2 = @adaptor.create_flat_list!
            root_2 = @adaptor.become_root(@adaptor.create!(ARG, arg), root_2)

            @adaptor.add_child(root_2, stream_arg.next_node)

            @adaptor.add_child(root_1, root_2)

          end

          stream_arg.reset();
          # at line 168:87: ( ^( 'returns' $rt) )?
          if stream_RET.has_next? || stream_rt.has_next?
            # at line 168:87: ^( 'returns' $rt)
            root_2 = @adaptor.create_flat_list!
            root_2 = @adaptor.become_root(stream_RET.next_node, root_2)

            @adaptor.add_child(root_2, stream_rt.next_node)

            @adaptor.add_child(root_1, root_2)

          end

          stream_RET.reset();
          stream_rt.reset();
          # at line 169:9: ( throws_spec )?
          if stream_throws_spec.has_next?
            @adaptor.add_child(root_1, stream_throws_spec.next_tree)

          end

          stream_throws_spec.reset();
          # at line 169:22: ( options_spec )?
          if stream_options_spec.has_next?
            @adaptor.add_child(root_1, stream_options_spec.next_tree)

          end

          stream_options_spec.reset();
          # at line 169:36: ( rule_scope_spec )?
          if stream_rule_scope_spec.has_next?
            @adaptor.add_child(root_1, stream_rule_scope_spec.next_tree)

          end

          stream_rule_scope_spec.reset();
          # at line 169:53: ( rule_action )*
          while stream_rule_action.has_next?
            @adaptor.add_child(root_1, stream_rule_action.next_tree)

          end

          stream_rule_action.reset();
          @adaptor.add_child(root_1, stream_alt_list.next_tree)
          # at line 171:9: ( exception_group )?
          if stream_exception_group.has_next?
            @adaptor.add_child(root_1, stream_exception_group.next_tree)

          end

          stream_exception_group.reset();
          @adaptor.add_child(root_1, @adaptor.create!(EOR, "EOR"))

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
        # trace_out(__method__, 10)
        @rule_stack.pop

      end
      
      return return_value
    end

    RuleActionReturnValue = define_return_scope 

    # parser rule rule_action
    # 
    # (in samples/ANTLRv3Grammar.g)
    # 176:1: rule_action : '@' id ACTION -> ^( '@' id ACTION ) ;
    def rule_action
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 11)
      return_value = RuleActionReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal55 = nil
      __ACTION57__ = nil
      id56 = nil

      tree_for_char_literal55 = nil
      tree_for_ACTION57 = nil
      stream_AT = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token AT")
      stream_ACTION = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token ACTION")
      stream_id = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule id")
      begin
        # at line 178:4: '@' id ACTION
        char_literal55 = match(AT, TOKENS_FOLLOWING_AT_IN_rule_action_979) 
        if @state.backtracking == 0
          stream_AT.add(char_literal55)
        end
        @state.following.push(TOKENS_FOLLOWING_id_IN_rule_action_981)
        id56 = id
        @state.following.pop
        if @state.backtracking == 0
          stream_id.add(id56.tree)
        end
        __ACTION57__ = match(ACTION, TOKENS_FOLLOWING_ACTION_IN_rule_action_983) 
        if @state.backtracking == 0
          stream_ACTION.add(__ACTION57__)
        end
        # AST Rewrite
        # elements: AT, id, ACTION
        # token labels: 
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 
        if @state.backtracking == 0

          return_value.tree = root_0
          stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

          root_0 = @adaptor.create_flat_list!
          # 178:18: -> ^( '@' id ACTION )
          # at line 178:21: ^( '@' id ACTION )
          root_1 = @adaptor.create_flat_list!
          root_1 = @adaptor.become_root(stream_AT.next_node, root_1)

          @adaptor.add_child(root_1, stream_id.next_tree)
          @adaptor.add_child(root_1, stream_ACTION.next_node)

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

    ThrowsSpecReturnValue = define_return_scope 

    # parser rule throws_spec
    # 
    # (in samples/ANTLRv3Grammar.g)
    # 181:1: throws_spec : 'throws' id ( ',' id )* -> ^( 'throws' ( id )+ ) ;
    def throws_spec
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 12)
      return_value = ThrowsSpecReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal58 = nil
      char_literal60 = nil
      id59 = nil
      id61 = nil

      tree_for_string_literal58 = nil
      tree_for_char_literal60 = nil
      stream_T__80 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__80")
      stream_T__79 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__79")
      stream_id = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule id")
      begin
        # at line 182:4: 'throws' id ( ',' id )*
        string_literal58 = match(T__79, TOKENS_FOLLOWING_T__79_IN_throws_spec_1004) 
        if @state.backtracking == 0
          stream_T__79.add(string_literal58)
        end
        @state.following.push(TOKENS_FOLLOWING_id_IN_throws_spec_1006)
        id59 = id
        @state.following.pop
        if @state.backtracking == 0
          stream_id.add(id59.tree)
        end
        # at line 182:16: ( ',' id )*
        loop do  #loop 26
          alt_26 = 2
          look_26_0 = @input.peek(1)

          if (look_26_0 == T__80) 
            alt_26 = 1

          end
          case alt_26
          when 1
            # at line 182:18: ',' id
            char_literal60 = match(T__80, TOKENS_FOLLOWING_T__80_IN_throws_spec_1010) 
            if @state.backtracking == 0
              stream_T__80.add(char_literal60)
            end
            @state.following.push(TOKENS_FOLLOWING_id_IN_throws_spec_1012)
            id61 = id
            @state.following.pop
            if @state.backtracking == 0
              stream_id.add(id61.tree)
            end

          else
            break #loop 26
          end
        end
        # AST Rewrite
        # elements: T__79, id
        # token labels: 
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 
        if @state.backtracking == 0

          return_value.tree = root_0
          stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

          root_0 = @adaptor.create_flat_list!
          # 182:28: -> ^( 'throws' ( id )+ )
          # at line 182:31: ^( 'throws' ( id )+ )
          root_1 = @adaptor.create_flat_list!
          root_1 = @adaptor.become_root(stream_T__79.next_node, root_1)

          # at line 182:42: ( id )+
          unless stream_id.has_next?
            raise ANTLR3::RewriteEarlyExit
          end

          while stream_id.has_next?
            @adaptor.add_child(root_1, stream_id.next_tree)

          end

          stream_id.reset

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

    RuleScopeSpecReturnValue = define_return_scope 

    # parser rule rule_scope_spec
    # 
    # (in samples/ANTLRv3Grammar.g)
    # 185:1: rule_scope_spec : ( 'scope' ACTION -> ^( 'scope' ACTION ) | 'scope' id ( ',' id )* ';' -> ^( 'scope' ( id )+ ) | 'scope' ACTION 'scope' id ( ',' id )* ';' -> ^( 'scope' ACTION ( id )+ ) );
    def rule_scope_spec
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 13)
      return_value = RuleScopeSpecReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal62 = nil
      __ACTION63__ = nil
      string_literal64 = nil
      char_literal66 = nil
      char_literal68 = nil
      string_literal69 = nil
      __ACTION70__ = nil
      string_literal71 = nil
      char_literal73 = nil
      char_literal75 = nil
      id65 = nil
      id67 = nil
      id72 = nil
      id74 = nil

      tree_for_string_literal62 = nil
      tree_for_ACTION63 = nil
      tree_for_string_literal64 = nil
      tree_for_char_literal66 = nil
      tree_for_char_literal68 = nil
      tree_for_string_literal69 = nil
      tree_for_ACTION70 = nil
      tree_for_string_literal71 = nil
      tree_for_char_literal73 = nil
      tree_for_char_literal75 = nil
      stream_T__80 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__80")
      stream_T__71 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__71")
      stream_SCOPE = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token SCOPE")
      stream_ACTION = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token ACTION")
      stream_id = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule id")
      begin
        # at line 186:2: ( 'scope' ACTION -> ^( 'scope' ACTION ) | 'scope' id ( ',' id )* ';' -> ^( 'scope' ( id )+ ) | 'scope' ACTION 'scope' id ( ',' id )* ';' -> ^( 'scope' ACTION ( id )+ ) )
        alt_29 = 3
        look_29_0 = @input.peek(1)

        if (look_29_0 == SCOPE) 
          look_29_1 = @input.peek(2)

          if (look_29_1 == ACTION) 
            look_29_2 = @input.peek(3)

            if (look_29_2 == SCOPE) 
              alt_29 = 3
            elsif (look_29_2 == AT || look_29_2 == T__78) 
              alt_29 = 1
            else
              @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
            nvae = NoViableAlternative("", 29, 2)
              raise nvae
            end
          elsif (look_29_1 == TOKEN_REF || look_29_1 == RULE_REF) 
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
          # at line 186:4: 'scope' ACTION
          string_literal62 = match(SCOPE, TOKENS_FOLLOWING_SCOPE_IN_rule_scope_spec_1035) 
          if @state.backtracking == 0
            stream_SCOPE.add(string_literal62)
          end
          __ACTION63__ = match(ACTION, TOKENS_FOLLOWING_ACTION_IN_rule_scope_spec_1037) 
          if @state.backtracking == 0
            stream_ACTION.add(__ACTION63__)
          end
          # AST Rewrite
          # elements: SCOPE, ACTION
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

            root_0 = @adaptor.create_flat_list!
            # 186:19: -> ^( 'scope' ACTION )
            # at line 186:22: ^( 'scope' ACTION )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(stream_SCOPE.next_node, root_1)

            @adaptor.add_child(root_1, stream_ACTION.next_node)

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 2
          # at line 187:4: 'scope' id ( ',' id )* ';'
          string_literal64 = match(SCOPE, TOKENS_FOLLOWING_SCOPE_IN_rule_scope_spec_1050) 
          if @state.backtracking == 0
            stream_SCOPE.add(string_literal64)
          end
          @state.following.push(TOKENS_FOLLOWING_id_IN_rule_scope_spec_1052)
          id65 = id
          @state.following.pop
          if @state.backtracking == 0
            stream_id.add(id65.tree)
          end
          # at line 187:15: ( ',' id )*
          loop do  #loop 27
            alt_27 = 2
            look_27_0 = @input.peek(1)

            if (look_27_0 == T__80) 
              alt_27 = 1

            end
            case alt_27
            when 1
              # at line 187:16: ',' id
              char_literal66 = match(T__80, TOKENS_FOLLOWING_T__80_IN_rule_scope_spec_1055) 
              if @state.backtracking == 0
                stream_T__80.add(char_literal66)
              end
              @state.following.push(TOKENS_FOLLOWING_id_IN_rule_scope_spec_1057)
              id67 = id
              @state.following.pop
              if @state.backtracking == 0
                stream_id.add(id67.tree)
              end

            else
              break #loop 27
            end
          end
          char_literal68 = match(T__71, TOKENS_FOLLOWING_T__71_IN_rule_scope_spec_1061) 
          if @state.backtracking == 0
            stream_T__71.add(char_literal68)
          end
          # AST Rewrite
          # elements: id, SCOPE
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

            root_0 = @adaptor.create_flat_list!
            # 187:29: -> ^( 'scope' ( id )+ )
            # at line 187:32: ^( 'scope' ( id )+ )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(stream_SCOPE.next_node, root_1)

            # at line 187:42: ( id )+
            unless stream_id.has_next?
              raise ANTLR3::RewriteEarlyExit
            end

            while stream_id.has_next?
              @adaptor.add_child(root_1, stream_id.next_tree)

            end

            stream_id.reset

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 3
          # at line 188:4: 'scope' ACTION 'scope' id ( ',' id )* ';'
          string_literal69 = match(SCOPE, TOKENS_FOLLOWING_SCOPE_IN_rule_scope_spec_1075) 
          if @state.backtracking == 0
            stream_SCOPE.add(string_literal69)
          end
          __ACTION70__ = match(ACTION, TOKENS_FOLLOWING_ACTION_IN_rule_scope_spec_1077) 
          if @state.backtracking == 0
            stream_ACTION.add(__ACTION70__)
          end
          string_literal71 = match(SCOPE, TOKENS_FOLLOWING_SCOPE_IN_rule_scope_spec_1081) 
          if @state.backtracking == 0
            stream_SCOPE.add(string_literal71)
          end
          @state.following.push(TOKENS_FOLLOWING_id_IN_rule_scope_spec_1083)
          id72 = id
          @state.following.pop
          if @state.backtracking == 0
            stream_id.add(id72.tree)
          end
          # at line 189:14: ( ',' id )*
          loop do  #loop 28
            alt_28 = 2
            look_28_0 = @input.peek(1)

            if (look_28_0 == T__80) 
              alt_28 = 1

            end
            case alt_28
            when 1
              # at line 189:15: ',' id
              char_literal73 = match(T__80, TOKENS_FOLLOWING_T__80_IN_rule_scope_spec_1086) 
              if @state.backtracking == 0
                stream_T__80.add(char_literal73)
              end
              @state.following.push(TOKENS_FOLLOWING_id_IN_rule_scope_spec_1088)
              id74 = id
              @state.following.pop
              if @state.backtracking == 0
                stream_id.add(id74.tree)
              end

            else
              break #loop 28
            end
          end
          char_literal75 = match(T__71, TOKENS_FOLLOWING_T__71_IN_rule_scope_spec_1092) 
          if @state.backtracking == 0
            stream_T__71.add(char_literal75)
          end
          # AST Rewrite
          # elements: ACTION, SCOPE, id
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

            root_0 = @adaptor.create_flat_list!
            # 190:3: -> ^( 'scope' ACTION ( id )+ )
            # at line 190:6: ^( 'scope' ACTION ( id )+ )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(stream_SCOPE.next_node, root_1)

            @adaptor.add_child(root_1, stream_ACTION.next_node)
            # at line 190:23: ( id )+
            unless stream_id.has_next?
              raise ANTLR3::RewriteEarlyExit
            end

            while stream_id.has_next?
              @adaptor.add_child(root_1, stream_id.next_tree)

            end

            stream_id.reset

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
        # trace_out(__method__, 13)

      end
      
      return return_value
    end

    BlockReturnValue = define_return_scope 

    # parser rule block
    # 
    # (in samples/ANTLRv3Grammar.g)
    # 193:1: block : lp= '(' ( (opts= options_spec )? ':' )? altpair ( '|' altpair )* rp= ')' -> ^( BLOCK[$lp,\"BLOCK\"] ( options_spec )? ( altpair )+ EOB[$rp,\"EOB\"] ) ;
    def block
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 14)
      return_value = BlockReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      lp = nil
      rp = nil
      char_literal76 = nil
      char_literal78 = nil
      opts = nil
      altpair77 = nil
      altpair79 = nil

      tree_for_lp = nil
      tree_for_rp = nil
      tree_for_char_literal76 = nil
      tree_for_char_literal78 = nil
      stream_T__81 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__81")
      stream_T__82 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__82")
      stream_T__83 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__83")
      stream_T__78 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__78")
      stream_altpair = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule altpair")
      stream_options_spec = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule options_spec")
      begin
        # at line 194:9: lp= '(' ( (opts= options_spec )? ':' )? altpair ( '|' altpair )* rp= ')'
        lp = match(T__81, TOKENS_FOLLOWING_T__81_IN_block_1124) 
        if @state.backtracking == 0
          stream_T__81.add(lp)
        end
        # at line 195:3: ( (opts= options_spec )? ':' )?
        alt_31 = 2
        look_31_0 = @input.peek(1)

        if (look_31_0 == OPTIONS || look_31_0 == T__78) 
          alt_31 = 1
        end
        case alt_31
        when 1
          # at line 195:5: (opts= options_spec )? ':'
          # at line 195:5: (opts= options_spec )?
          alt_30 = 2
          look_30_0 = @input.peek(1)

          if (look_30_0 == OPTIONS) 
            alt_30 = 1
          end
          case alt_30
          when 1
            # at line 195:6: opts= options_spec
            @state.following.push(TOKENS_FOLLOWING_options_spec_IN_block_1133)
            opts = options_spec
            @state.following.pop
            if @state.backtracking == 0
              stream_options_spec.add(opts.tree)
            end

          end
          char_literal76 = match(T__78, TOKENS_FOLLOWING_T__78_IN_block_1137) 
          if @state.backtracking == 0
            stream_T__78.add(char_literal76)
          end

        end
        @state.following.push(TOKENS_FOLLOWING_altpair_IN_block_1144)
        altpair77 = altpair
        @state.following.pop
        if @state.backtracking == 0
          stream_altpair.add(altpair77.tree)
        end
        # at line 196:11: ( '|' altpair )*
        loop do  #loop 32
          alt_32 = 2
          look_32_0 = @input.peek(1)

          if (look_32_0 == T__82) 
            alt_32 = 1

          end
          case alt_32
          when 1
            # at line 196:13: '|' altpair
            char_literal78 = match(T__82, TOKENS_FOLLOWING_T__82_IN_block_1148) 
            if @state.backtracking == 0
              stream_T__82.add(char_literal78)
            end
            @state.following.push(TOKENS_FOLLOWING_altpair_IN_block_1150)
            altpair79 = altpair
            @state.following.pop
            if @state.backtracking == 0
              stream_altpair.add(altpair79.tree)
            end

          else
            break #loop 32
          end
        end
        rp = match(T__83, TOKENS_FOLLOWING_T__83_IN_block_1165) 
        if @state.backtracking == 0
          stream_T__83.add(rp)
        end
        # AST Rewrite
        # elements: options_spec, altpair
        # token labels: 
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 
        if @state.backtracking == 0

          return_value.tree = root_0
          stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

          root_0 = @adaptor.create_flat_list!
          # 198:9: -> ^( BLOCK[$lp,\"BLOCK\"] ( options_spec )? ( altpair )+ EOB[$rp,\"EOB\"] )
          # at line 198:12: ^( BLOCK[$lp,\"BLOCK\"] ( options_spec )? ( altpair )+ EOB[$rp,\"EOB\"] )
          root_1 = @adaptor.create_flat_list!
          root_1 = @adaptor.become_root(@adaptor.create!(BLOCK, lp, "BLOCK"), root_1)

          # at line 198:34: ( options_spec )?
          if stream_options_spec.has_next?
            @adaptor.add_child(root_1, stream_options_spec.next_tree)

          end

          stream_options_spec.reset();
          # at line 198:48: ( altpair )+
          unless stream_altpair.has_next?
            raise ANTLR3::RewriteEarlyExit
          end

          while stream_altpair.has_next?
            @adaptor.add_child(root_1, stream_altpair.next_tree)

          end

          stream_altpair.reset
          @adaptor.add_child(root_1, @adaptor.create!(EOB, rp, "EOB"))

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
        # trace_out(__method__, 14)

      end
      
      return return_value
    end

    AltpairReturnValue = define_return_scope 

    # parser rule altpair
    # 
    # (in samples/ANTLRv3Grammar.g)
    # 201:1: altpair : alternative rewrite ;
    def altpair
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 15)
      return_value = AltpairReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      alternative80 = nil
      rewrite81 = nil


      begin
        root_0 = @adaptor.create_flat_list!


        # at line 201:11: alternative rewrite
        @state.following.push(TOKENS_FOLLOWING_alternative_IN_altpair_1204)
        alternative80 = alternative
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, alternative80.tree)
        end
        @state.following.push(TOKENS_FOLLOWING_rewrite_IN_altpair_1206)
        rewrite81 = rewrite
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, rewrite81.tree)
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

    AltListReturnValue = define_return_scope 

    # parser rule alt_list
    # 
    # (in samples/ANTLRv3Grammar.g)
    # 203:1: alt_list : altpair ( '|' altpair )* -> ^( ( altpair )+ EOB[\"eob\"] ) ;
    def alt_list
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 16)
      return_value = AltListReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal83 = nil
      altpair82 = nil
      altpair84 = nil

      tree_for_char_literal83 = nil
      stream_T__82 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__82")
      stream_altpair = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule altpair")# - - - - @init action - - - -

        block_root = @adaptor.create!(BLOCK, @input.look(-1), "BLOCK");


      begin
        # at line 207:9: altpair ( '|' altpair )*
        @state.following.push(TOKENS_FOLLOWING_altpair_IN_alt_list_1226)
        altpair82 = altpair
        @state.following.pop
        if @state.backtracking == 0
          stream_altpair.add(altpair82.tree)
        end
        # at line 207:17: ( '|' altpair )*
        loop do  #loop 33
          alt_33 = 2
          look_33_0 = @input.peek(1)

          if (look_33_0 == T__82) 
            alt_33 = 1

          end
          case alt_33
          when 1
            # at line 207:19: '|' altpair
            char_literal83 = match(T__82, TOKENS_FOLLOWING_T__82_IN_alt_list_1230) 
            if @state.backtracking == 0
              stream_T__82.add(char_literal83)
            end
            @state.following.push(TOKENS_FOLLOWING_altpair_IN_alt_list_1232)
            altpair84 = altpair
            @state.following.pop
            if @state.backtracking == 0
              stream_altpair.add(altpair84.tree)
            end

          else
            break #loop 33
          end
        end
        # AST Rewrite
        # elements: altpair
        # token labels: 
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 
        if @state.backtracking == 0

          return_value.tree = root_0
          stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

          root_0 = @adaptor.create_flat_list!
          # 207:34: -> ^( ( altpair )+ EOB[\"eob\"] )
          # at line 207:37: ^( ( altpair )+ EOB[\"eob\"] )
          root_1 = @adaptor.create_flat_list!
          root_1 = @adaptor.become_root(block_root, root_1)

          # at line 207:53: ( altpair )+
          unless stream_altpair.has_next?
            raise ANTLR3::RewriteEarlyExit
          end

          while stream_altpair.has_next?
            @adaptor.add_child(root_1, stream_altpair.next_tree)

          end

          stream_altpair.reset
          @adaptor.add_child(root_1, @adaptor.create!(EOB, "eob"))

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
        # trace_out(__method__, 16)

      end
      
      return return_value
    end

    AlternativeReturnValue = define_return_scope 

    # parser rule alternative
    # 
    # (in samples/ANTLRv3Grammar.g)
    # 210:1: alternative : ( ( element )+ -> ^( ALT[first_token,\"ALT\"] ( element )+ EOA[\"EOA\"] ) | -> ^( ALT[prev_token,\"ALT\"] EPSILON[prev_token,\"EPSILON\"] EOA[\"EOA\"] ) );
    def alternative
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 17)
      return_value = AlternativeReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      element85 = nil

      stream_element = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule element")# - - - - @init action - - - -

      	first_token = @input.look(1)
      	prev_token = @input.look(-1)


      begin
        # at line 215:5: ( ( element )+ -> ^( ALT[first_token,\"ALT\"] ( element )+ EOA[\"EOA\"] ) | -> ^( ALT[prev_token,\"ALT\"] EPSILON[prev_token,\"EPSILON\"] EOA[\"EOA\"] ) )
        alt_35 = 2
        look_35_0 = @input.peek(1)

        if (look_35_0 == SEMPRED || look_35_0 == TREE_BEGIN || look_35_0.between?(TOKEN_REF, ACTION) || look_35_0 == RULE_REF || look_35_0 == T__81 || look_35_0 == T__87 || look_35_0 == T__90) 
          alt_35 = 1
        elsif (look_35_0 == REWRITE || look_35_0 == T__71 || look_35_0.between?(T__82, T__83)) 
          alt_35 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 35, 0)
          raise nvae
        end
        case alt_35
        when 1
          # at line 215:9: ( element )+
          # at file 215:9: ( element )+
          match_count_34 = 0
          loop do
            alt_34 = 2
            look_34_0 = @input.peek(1)

            if (look_34_0 == SEMPRED || look_34_0 == TREE_BEGIN || look_34_0.between?(TOKEN_REF, ACTION) || look_34_0 == RULE_REF || look_34_0 == T__81 || look_34_0 == T__87 || look_34_0 == T__90) 
              alt_34 = 1

            end
            case alt_34
            when 1
              # at line 215:9: element
              @state.following.push(TOKENS_FOLLOWING_element_IN_alternative_1273)
              element85 = element
              @state.following.pop
              if @state.backtracking == 0
                stream_element.add(element85.tree)
              end

            else
              match_count_34 > 0 and break
              @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

              eee = EarlyExit(34)


              raise eee
            end
            match_count_34 += 1
          end

          # AST Rewrite
          # elements: element
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

            root_0 = @adaptor.create_flat_list!
            # 215:18: -> ^( ALT[first_token,\"ALT\"] ( element )+ EOA[\"EOA\"] )
            # at line 215:21: ^( ALT[first_token,\"ALT\"] ( element )+ EOA[\"EOA\"] )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(@adaptor.create!(ALT, first_token, "ALT"), root_1)

            # at line 215:46: ( element )+
            unless stream_element.has_next?
              raise ANTLR3::RewriteEarlyExit
            end

            while stream_element.has_next?
              @adaptor.add_child(root_1, stream_element.next_tree)

            end

            stream_element.reset
            @adaptor.add_child(root_1, @adaptor.create!(EOA, "EOA"))

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 2
          # at line 216:7: 
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
            # 216:7: -> ^( ALT[prev_token,\"ALT\"] EPSILON[prev_token,\"EPSILON\"] EOA[\"EOA\"] )
            # at line 216:10: ^( ALT[prev_token,\"ALT\"] EPSILON[prev_token,\"EPSILON\"] EOA[\"EOA\"] )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(@adaptor.create!(ALT, prev_token, "ALT"), root_1)

            @adaptor.add_child(root_1, @adaptor.create!(EPSILON, prev_token, "EPSILON"))
            @adaptor.add_child(root_1, @adaptor.create!(EOA, "EOA"))

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
        # trace_out(__method__, 17)

      end
      
      return return_value
    end

    ExceptionGroupReturnValue = define_return_scope 

    # parser rule exception_group
    # 
    # (in samples/ANTLRv3Grammar.g)
    # 219:1: exception_group : ( ( exception_handler )+ ( finally_clause )? | finally_clause );
    def exception_group
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 18)
      return_value = ExceptionGroupReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      exception_handler86 = nil
      finally_clause87 = nil
      finally_clause88 = nil


      begin
        # at line 220:2: ( ( exception_handler )+ ( finally_clause )? | finally_clause )
        alt_38 = 2
        look_38_0 = @input.peek(1)

        if (look_38_0 == T__84) 
          alt_38 = 1
        elsif (look_38_0 == T__85) 
          alt_38 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 38, 0)
          raise nvae
        end
        case alt_38
        when 1
          root_0 = @adaptor.create_flat_list!


          # at line 220:4: ( exception_handler )+ ( finally_clause )?
          # at file 220:4: ( exception_handler )+
          match_count_36 = 0
          loop do
            alt_36 = 2
            look_36_0 = @input.peek(1)

            if (look_36_0 == T__84) 
              alt_36 = 1

            end
            case alt_36
            when 1
              # at line 220:6: exception_handler
              @state.following.push(TOKENS_FOLLOWING_exception_handler_IN_exception_group_1322)
              exception_handler86 = exception_handler
              @state.following.pop
              if @state.backtracking == 0
                @adaptor.add_child(root_0, exception_handler86.tree)
              end

            else
              match_count_36 > 0 and break
              @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

              eee = EarlyExit(36)


              raise eee
            end
            match_count_36 += 1
          end

          # at line 220:27: ( finally_clause )?
          alt_37 = 2
          look_37_0 = @input.peek(1)

          if (look_37_0 == T__85) 
            alt_37 = 1
          end
          case alt_37
          when 1
            # at line 220:29: finally_clause
            @state.following.push(TOKENS_FOLLOWING_finally_clause_IN_exception_group_1329)
            finally_clause87 = finally_clause
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, finally_clause87.tree)
            end

          end

        when 2
          root_0 = @adaptor.create_flat_list!


          # at line 221:4: finally_clause
          @state.following.push(TOKENS_FOLLOWING_finally_clause_IN_exception_group_1337)
          finally_clause88 = finally_clause
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, finally_clause88.tree)
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
        # trace_out(__method__, 18)

      end
      
      return return_value
    end

    ExceptionHandlerReturnValue = define_return_scope 

    # parser rule exception_handler
    # 
    # (in samples/ANTLRv3Grammar.g)
    # 224:1: exception_handler : 'catch' ARG_ACTION ACTION -> ^( 'catch' ARG_ACTION ACTION ) ;
    def exception_handler
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 19)
      return_value = ExceptionHandlerReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal89 = nil
      __ARG_ACTION90__ = nil
      __ACTION91__ = nil

      tree_for_string_literal89 = nil
      tree_for_ARG_ACTION90 = nil
      tree_for_ACTION91 = nil
      stream_T__84 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__84")
      stream_ACTION = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token ACTION")
      stream_ARG_ACTION = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token ARG_ACTION")

      begin
        # at line 225:5: 'catch' ARG_ACTION ACTION
        string_literal89 = match(T__84, TOKENS_FOLLOWING_T__84_IN_exception_handler_1350) 
        if @state.backtracking == 0
          stream_T__84.add(string_literal89)
        end
        __ARG_ACTION90__ = match(ARG_ACTION, TOKENS_FOLLOWING_ARG_ACTION_IN_exception_handler_1352) 
        if @state.backtracking == 0
          stream_ARG_ACTION.add(__ARG_ACTION90__)
        end
        __ACTION91__ = match(ACTION, TOKENS_FOLLOWING_ACTION_IN_exception_handler_1354) 
        if @state.backtracking == 0
          stream_ACTION.add(__ACTION91__)
        end
        # AST Rewrite
        # elements: ARG_ACTION, ACTION, T__84
        # token labels: 
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 
        if @state.backtracking == 0

          return_value.tree = root_0
          stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

          root_0 = @adaptor.create_flat_list!
          # 225:31: -> ^( 'catch' ARG_ACTION ACTION )
          # at line 225:34: ^( 'catch' ARG_ACTION ACTION )
          root_1 = @adaptor.create_flat_list!
          root_1 = @adaptor.become_root(stream_T__84.next_node, root_1)

          @adaptor.add_child(root_1, stream_ARG_ACTION.next_node)
          @adaptor.add_child(root_1, stream_ACTION.next_node)

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
        # trace_out(__method__, 19)

      end
      
      return return_value
    end

    FinallyClauseReturnValue = define_return_scope 

    # parser rule finally_clause
    # 
    # (in samples/ANTLRv3Grammar.g)
    # 228:1: finally_clause : 'finally' ACTION -> ^( 'finally' ACTION ) ;
    def finally_clause
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 20)
      return_value = FinallyClauseReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal92 = nil
      __ACTION93__ = nil

      tree_for_string_literal92 = nil
      tree_for_ACTION93 = nil
      stream_T__85 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__85")
      stream_ACTION = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token ACTION")

      begin
        # at line 229:5: 'finally' ACTION
        string_literal92 = match(T__85, TOKENS_FOLLOWING_T__85_IN_finally_clause_1377) 
        if @state.backtracking == 0
          stream_T__85.add(string_literal92)
        end
        __ACTION93__ = match(ACTION, TOKENS_FOLLOWING_ACTION_IN_finally_clause_1379) 
        if @state.backtracking == 0
          stream_ACTION.add(__ACTION93__)
        end
        # AST Rewrite
        # elements: ACTION, T__85
        # token labels: 
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 
        if @state.backtracking == 0

          return_value.tree = root_0
          stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

          root_0 = @adaptor.create_flat_list!
          # 229:22: -> ^( 'finally' ACTION )
          # at line 229:25: ^( 'finally' ACTION )
          root_1 = @adaptor.create_flat_list!
          root_1 = @adaptor.become_root(stream_T__85.next_node, root_1)

          @adaptor.add_child(root_1, stream_ACTION.next_node)

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
        # trace_out(__method__, 20)

      end
      
      return return_value
    end

    ElementReturnValue = define_return_scope 

    # parser rule element
    # 
    # (in samples/ANTLRv3Grammar.g)
    # 232:1: element : ( id (labelOp= '=' | labelOp= '+=' ) atom ( ebnf_suffix -> ^( ebnf_suffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] ^( $labelOp id atom ) EOA[\"EOA\"] ) EOB[\"EOB\"] ) ) | -> ^( $labelOp id atom ) ) | id (labelOp= '=' | labelOp= '+=' ) block ( ebnf_suffix -> ^( ebnf_suffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] ^( $labelOp id block ) EOA[\"EOA\"] ) EOB[\"EOB\"] ) ) | -> ^( $labelOp id block ) ) | atom ( ebnf_suffix -> ^( ebnf_suffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] atom EOA[\"EOA\"] ) EOB[\"EOB\"] ) ) | -> atom ) | ebnf | ACTION | SEMPRED (g= '=>' -> GATED_SEMPRED[$g] | -> SEMPRED ) | tree_spec ( ebnf_suffix -> ^( ebnf_suffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] tree_spec EOA[\"EOA\"] ) EOB[\"EOB\"] ) ) | -> tree_spec ) );
    def element
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 21)
      return_value = ElementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      labelOp = nil
      g = nil
      __ACTION103__ = nil
      __SEMPRED104__ = nil
      id94 = nil
      atom95 = nil
      ebnf_suffix96 = nil
      id97 = nil
      block98 = nil
      ebnf_suffix99 = nil
      atom100 = nil
      ebnf_suffix101 = nil
      ebnf102 = nil
      tree_spec105 = nil
      ebnf_suffix106 = nil

      tree_for_labelOp = nil
      tree_for_g = nil
      tree_for_ACTION103 = nil
      tree_for_SEMPRED104 = nil
      stream_LIST_LABEL_ASSIGN = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token LIST_LABEL_ASSIGN")
      stream_LABEL_ASSIGN = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token LABEL_ASSIGN")
      stream_SEMPRED = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token SEMPRED")
      stream_T__86 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__86")
      stream_tree_spec = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule tree_spec")
      stream_id = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule id")
      stream_atom = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule atom")
      stream_block = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule block")
      stream_ebnf_suffix = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule ebnf_suffix")
      begin
        # at line 233:2: ( id (labelOp= '=' | labelOp= '+=' ) atom ( ebnf_suffix -> ^( ebnf_suffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] ^( $labelOp id atom ) EOA[\"EOA\"] ) EOB[\"EOB\"] ) ) | -> ^( $labelOp id atom ) ) | id (labelOp= '=' | labelOp= '+=' ) block ( ebnf_suffix -> ^( ebnf_suffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] ^( $labelOp id block ) EOA[\"EOA\"] ) EOB[\"EOB\"] ) ) | -> ^( $labelOp id block ) ) | atom ( ebnf_suffix -> ^( ebnf_suffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] atom EOA[\"EOA\"] ) EOB[\"EOB\"] ) ) | -> atom ) | ebnf | ACTION | SEMPRED (g= '=>' -> GATED_SEMPRED[$g] | -> SEMPRED ) | tree_spec ( ebnf_suffix -> ^( ebnf_suffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] tree_spec EOA[\"EOA\"] ) EOB[\"EOB\"] ) ) | -> tree_spec ) )
        alt_46 = 7
        alt_46 = @dfa46.predict(@input)
        case alt_46
        when 1
          # at line 233:4: id (labelOp= '=' | labelOp= '+=' ) atom ( ebnf_suffix -> ^( ebnf_suffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] ^( $labelOp id atom ) EOA[\"EOA\"] ) EOB[\"EOB\"] ) ) | -> ^( $labelOp id atom ) )
          @state.following.push(TOKENS_FOLLOWING_id_IN_element_1399)
          id94 = id
          @state.following.pop
          if @state.backtracking == 0
            stream_id.add(id94.tree)
          end
          # at line 233:7: (labelOp= '=' | labelOp= '+=' )
          alt_39 = 2
          look_39_0 = @input.peek(1)

          if (look_39_0 == LABEL_ASSIGN) 
            alt_39 = 1
          elsif (look_39_0 == LIST_LABEL_ASSIGN) 
            alt_39 = 2
          else
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
          nvae = NoViableAlternative("", 39, 0)
            raise nvae
          end
          case alt_39
          when 1
            # at line 233:8: labelOp= '='
            labelOp = match(LABEL_ASSIGN, TOKENS_FOLLOWING_LABEL_ASSIGN_IN_element_1404) 
            if @state.backtracking == 0
              stream_LABEL_ASSIGN.add(labelOp)
            end

          when 2
            # at line 233:20: labelOp= '+='
            labelOp = match(LIST_LABEL_ASSIGN, TOKENS_FOLLOWING_LIST_LABEL_ASSIGN_IN_element_1408) 
            if @state.backtracking == 0
              stream_LIST_LABEL_ASSIGN.add(labelOp)
            end

          end
          @state.following.push(TOKENS_FOLLOWING_atom_IN_element_1411)
          atom95 = atom
          @state.following.pop
          if @state.backtracking == 0
            stream_atom.add(atom95.tree)
          end
          # at line 234:3: ( ebnf_suffix -> ^( ebnf_suffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] ^( $labelOp id atom ) EOA[\"EOA\"] ) EOB[\"EOB\"] ) ) | -> ^( $labelOp id atom ) )
          alt_40 = 2
          look_40_0 = @input.peek(1)

          if (look_40_0 == T__74 || look_40_0.between?(T__91, T__92)) 
            alt_40 = 1
          elsif (look_40_0 == SEMPRED || look_40_0 == TREE_BEGIN || look_40_0 == REWRITE || look_40_0.between?(TOKEN_REF, ACTION) || look_40_0 == RULE_REF || look_40_0 == T__71 || look_40_0.between?(T__81, T__83) || look_40_0 == T__87 || look_40_0 == T__90) 
            alt_40 = 2
          else
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
          nvae = NoViableAlternative("", 40, 0)
            raise nvae
          end
          case alt_40
          when 1
            # at line 234:5: ebnf_suffix
            @state.following.push(TOKENS_FOLLOWING_ebnf_suffix_IN_element_1417)
            ebnf_suffix96 = ebnf_suffix
            @state.following.pop
            if @state.backtracking == 0
              stream_ebnf_suffix.add(ebnf_suffix96.tree)
            end
            # AST Rewrite
            # elements: atom, ebnf_suffix, id, labelOp
            # token labels: labelOp
            # rule labels: return_value
            # token list labels: 
            # rule list labels: 
            # wildcard labels: 
            if @state.backtracking == 0

              return_value.tree = root_0
              stream_labelOp = token_stream("token labelOp", labelOp)
              stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

              root_0 = @adaptor.create_flat_list!
              # 234:17: -> ^( ebnf_suffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] ^( $labelOp id atom ) EOA[\"EOA\"] ) EOB[\"EOB\"] ) )
              # at line 234:20: ^( ebnf_suffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] ^( $labelOp id atom ) EOA[\"EOA\"] ) EOB[\"EOB\"] ) )
              root_1 = @adaptor.create_flat_list!
              root_1 = @adaptor.become_root(stream_ebnf_suffix.next_node(), root_1)

              # at line 234:35: ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] ^( $labelOp id atom ) EOA[\"EOA\"] ) EOB[\"EOB\"] )
              root_2 = @adaptor.create_flat_list!
              root_2 = @adaptor.become_root(@adaptor.create!(BLOCK, "BLOCK"), root_2)

              # at line 234:52: ^( ALT[\"ALT\"] ^( $labelOp id atom ) EOA[\"EOA\"] )
              root_3 = @adaptor.create_flat_list!
              root_3 = @adaptor.become_root(@adaptor.create!(ALT, "ALT"), root_3)

              # at line 234:65: ^( $labelOp id atom )
              root_4 = @adaptor.create_flat_list!
              root_4 = @adaptor.become_root(stream_labelOp.next_node, root_4)

              @adaptor.add_child(root_4, stream_id.next_tree)
              @adaptor.add_child(root_4, stream_atom.next_tree)

              @adaptor.add_child(root_3, root_4)
              @adaptor.add_child(root_3, @adaptor.create!(EOA, "EOA"))

              @adaptor.add_child(root_2, root_3)
              @adaptor.add_child(root_2, @adaptor.create!(EOB, "EOB"))

              @adaptor.add_child(root_1, root_2)

              @adaptor.add_child(root_0, root_1)



              return_value.tree = root_0

            end
          when 2
            # at line 235:8: 
            # AST Rewrite
            # elements: labelOp, atom, id
            # token labels: labelOp
            # rule labels: return_value
            # token list labels: 
            # rule list labels: 
            # wildcard labels: 
            if @state.backtracking == 0

              return_value.tree = root_0
              stream_labelOp = token_stream("token labelOp", labelOp)
              stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

              root_0 = @adaptor.create_flat_list!
              # 235:8: -> ^( $labelOp id atom )
              # at line 235:11: ^( $labelOp id atom )
              root_1 = @adaptor.create_flat_list!
              root_1 = @adaptor.become_root(stream_labelOp.next_node, root_1)

              @adaptor.add_child(root_1, stream_id.next_tree)
              @adaptor.add_child(root_1, stream_atom.next_tree)

              @adaptor.add_child(root_0, root_1)



              return_value.tree = root_0

            end
          end

        when 2
          # at line 237:4: id (labelOp= '=' | labelOp= '+=' ) block ( ebnf_suffix -> ^( ebnf_suffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] ^( $labelOp id block ) EOA[\"EOA\"] ) EOB[\"EOB\"] ) ) | -> ^( $labelOp id block ) )
          @state.following.push(TOKENS_FOLLOWING_id_IN_element_1476)
          id97 = id
          @state.following.pop
          if @state.backtracking == 0
            stream_id.add(id97.tree)
          end
          # at line 237:7: (labelOp= '=' | labelOp= '+=' )
          alt_41 = 2
          look_41_0 = @input.peek(1)

          if (look_41_0 == LABEL_ASSIGN) 
            alt_41 = 1
          elsif (look_41_0 == LIST_LABEL_ASSIGN) 
            alt_41 = 2
          else
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
          nvae = NoViableAlternative("", 41, 0)
            raise nvae
          end
          case alt_41
          when 1
            # at line 237:8: labelOp= '='
            labelOp = match(LABEL_ASSIGN, TOKENS_FOLLOWING_LABEL_ASSIGN_IN_element_1481) 
            if @state.backtracking == 0
              stream_LABEL_ASSIGN.add(labelOp)
            end

          when 2
            # at line 237:20: labelOp= '+='
            labelOp = match(LIST_LABEL_ASSIGN, TOKENS_FOLLOWING_LIST_LABEL_ASSIGN_IN_element_1485) 
            if @state.backtracking == 0
              stream_LIST_LABEL_ASSIGN.add(labelOp)
            end

          end
          @state.following.push(TOKENS_FOLLOWING_block_IN_element_1488)
          block98 = block
          @state.following.pop
          if @state.backtracking == 0
            stream_block.add(block98.tree)
          end
          # at line 238:3: ( ebnf_suffix -> ^( ebnf_suffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] ^( $labelOp id block ) EOA[\"EOA\"] ) EOB[\"EOB\"] ) ) | -> ^( $labelOp id block ) )
          alt_42 = 2
          look_42_0 = @input.peek(1)

          if (look_42_0 == T__74 || look_42_0.between?(T__91, T__92)) 
            alt_42 = 1
          elsif (look_42_0 == SEMPRED || look_42_0 == TREE_BEGIN || look_42_0 == REWRITE || look_42_0.between?(TOKEN_REF, ACTION) || look_42_0 == RULE_REF || look_42_0 == T__71 || look_42_0.between?(T__81, T__83) || look_42_0 == T__87 || look_42_0 == T__90) 
            alt_42 = 2
          else
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
          nvae = NoViableAlternative("", 42, 0)
            raise nvae
          end
          case alt_42
          when 1
            # at line 238:5: ebnf_suffix
            @state.following.push(TOKENS_FOLLOWING_ebnf_suffix_IN_element_1494)
            ebnf_suffix99 = ebnf_suffix
            @state.following.pop
            if @state.backtracking == 0
              stream_ebnf_suffix.add(ebnf_suffix99.tree)
            end
            # AST Rewrite
            # elements: labelOp, id, ebnf_suffix, block
            # token labels: labelOp
            # rule labels: return_value
            # token list labels: 
            # rule list labels: 
            # wildcard labels: 
            if @state.backtracking == 0

              return_value.tree = root_0
              stream_labelOp = token_stream("token labelOp", labelOp)
              stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

              root_0 = @adaptor.create_flat_list!
              # 238:17: -> ^( ebnf_suffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] ^( $labelOp id block ) EOA[\"EOA\"] ) EOB[\"EOB\"] ) )
              # at line 238:20: ^( ebnf_suffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] ^( $labelOp id block ) EOA[\"EOA\"] ) EOB[\"EOB\"] ) )
              root_1 = @adaptor.create_flat_list!
              root_1 = @adaptor.become_root(stream_ebnf_suffix.next_node(), root_1)

              # at line 238:35: ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] ^( $labelOp id block ) EOA[\"EOA\"] ) EOB[\"EOB\"] )
              root_2 = @adaptor.create_flat_list!
              root_2 = @adaptor.become_root(@adaptor.create!(BLOCK, "BLOCK"), root_2)

              # at line 238:52: ^( ALT[\"ALT\"] ^( $labelOp id block ) EOA[\"EOA\"] )
              root_3 = @adaptor.create_flat_list!
              root_3 = @adaptor.become_root(@adaptor.create!(ALT, "ALT"), root_3)

              # at line 238:65: ^( $labelOp id block )
              root_4 = @adaptor.create_flat_list!
              root_4 = @adaptor.become_root(stream_labelOp.next_node, root_4)

              @adaptor.add_child(root_4, stream_id.next_tree)
              @adaptor.add_child(root_4, stream_block.next_tree)

              @adaptor.add_child(root_3, root_4)
              @adaptor.add_child(root_3, @adaptor.create!(EOA, "EOA"))

              @adaptor.add_child(root_2, root_3)
              @adaptor.add_child(root_2, @adaptor.create!(EOB, "EOB"))

              @adaptor.add_child(root_1, root_2)

              @adaptor.add_child(root_0, root_1)



              return_value.tree = root_0

            end
          when 2
            # at line 239:8: 
            # AST Rewrite
            # elements: block, labelOp, id
            # token labels: labelOp
            # rule labels: return_value
            # token list labels: 
            # rule list labels: 
            # wildcard labels: 
            if @state.backtracking == 0

              return_value.tree = root_0
              stream_labelOp = token_stream("token labelOp", labelOp)
              stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

              root_0 = @adaptor.create_flat_list!
              # 239:8: -> ^( $labelOp id block )
              # at line 239:11: ^( $labelOp id block )
              root_1 = @adaptor.create_flat_list!
              root_1 = @adaptor.become_root(stream_labelOp.next_node, root_1)

              @adaptor.add_child(root_1, stream_id.next_tree)
              @adaptor.add_child(root_1, stream_block.next_tree)

              @adaptor.add_child(root_0, root_1)



              return_value.tree = root_0

            end
          end

        when 3
          # at line 241:4: atom ( ebnf_suffix -> ^( ebnf_suffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] atom EOA[\"EOA\"] ) EOB[\"EOB\"] ) ) | -> atom )
          @state.following.push(TOKENS_FOLLOWING_atom_IN_element_1553)
          atom100 = atom
          @state.following.pop
          if @state.backtracking == 0
            stream_atom.add(atom100.tree)
          end
          # at line 242:3: ( ebnf_suffix -> ^( ebnf_suffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] atom EOA[\"EOA\"] ) EOB[\"EOB\"] ) ) | -> atom )
          alt_43 = 2
          look_43_0 = @input.peek(1)

          if (look_43_0 == T__74 || look_43_0.between?(T__91, T__92)) 
            alt_43 = 1
          elsif (look_43_0 == SEMPRED || look_43_0 == TREE_BEGIN || look_43_0 == REWRITE || look_43_0.between?(TOKEN_REF, ACTION) || look_43_0 == RULE_REF || look_43_0 == T__71 || look_43_0.between?(T__81, T__83) || look_43_0 == T__87 || look_43_0 == T__90) 
            alt_43 = 2
          else
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
          nvae = NoViableAlternative("", 43, 0)
            raise nvae
          end
          case alt_43
          when 1
            # at line 242:5: ebnf_suffix
            @state.following.push(TOKENS_FOLLOWING_ebnf_suffix_IN_element_1559)
            ebnf_suffix101 = ebnf_suffix
            @state.following.pop
            if @state.backtracking == 0
              stream_ebnf_suffix.add(ebnf_suffix101.tree)
            end
            # AST Rewrite
            # elements: ebnf_suffix, atom
            # token labels: 
            # rule labels: return_value
            # token list labels: 
            # rule list labels: 
            # wildcard labels: 
            if @state.backtracking == 0

              return_value.tree = root_0
              stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

              root_0 = @adaptor.create_flat_list!
              # 242:17: -> ^( ebnf_suffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] atom EOA[\"EOA\"] ) EOB[\"EOB\"] ) )
              # at line 242:20: ^( ebnf_suffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] atom EOA[\"EOA\"] ) EOB[\"EOB\"] ) )
              root_1 = @adaptor.create_flat_list!
              root_1 = @adaptor.become_root(stream_ebnf_suffix.next_node(), root_1)

              # at line 242:35: ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] atom EOA[\"EOA\"] ) EOB[\"EOB\"] )
              root_2 = @adaptor.create_flat_list!
              root_2 = @adaptor.become_root(@adaptor.create!(BLOCK, "BLOCK"), root_2)

              # at line 242:52: ^( ALT[\"ALT\"] atom EOA[\"EOA\"] )
              root_3 = @adaptor.create_flat_list!
              root_3 = @adaptor.become_root(@adaptor.create!(ALT, "ALT"), root_3)

              @adaptor.add_child(root_3, stream_atom.next_tree)
              @adaptor.add_child(root_3, @adaptor.create!(EOA, "EOA"))

              @adaptor.add_child(root_2, root_3)
              @adaptor.add_child(root_2, @adaptor.create!(EOB, "EOB"))

              @adaptor.add_child(root_1, root_2)

              @adaptor.add_child(root_0, root_1)



              return_value.tree = root_0

            end
          when 2
            # at line 243:8: 
            # AST Rewrite
            # elements: atom
            # token labels: 
            # rule labels: return_value
            # token list labels: 
            # rule list labels: 
            # wildcard labels: 
            if @state.backtracking == 0

              return_value.tree = root_0
              stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

              root_0 = @adaptor.create_flat_list!
              # 243:8: -> atom
              @adaptor.add_child(root_0, stream_atom.next_tree)



              return_value.tree = root_0

            end
          end

        when 4
          root_0 = @adaptor.create_flat_list!


          # at line 245:4: ebnf
          @state.following.push(TOKENS_FOLLOWING_ebnf_IN_element_1605)
          ebnf102 = ebnf
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, ebnf102.tree)
          end

        when 5
          root_0 = @adaptor.create_flat_list!


          # at line 246:6: ACTION
          __ACTION103__ = match(ACTION, TOKENS_FOLLOWING_ACTION_IN_element_1612)
          if @state.backtracking == 0

            tree_for_ACTION103 = @adaptor.create_with_payload!(__ACTION103__)
            @adaptor.add_child(root_0, tree_for_ACTION103)

          end

        when 6
          # at line 247:6: SEMPRED (g= '=>' -> GATED_SEMPRED[$g] | -> SEMPRED )
          __SEMPRED104__ = match(SEMPRED, TOKENS_FOLLOWING_SEMPRED_IN_element_1619) 
          if @state.backtracking == 0
            stream_SEMPRED.add(__SEMPRED104__)
          end
          # at line 247:14: (g= '=>' -> GATED_SEMPRED[$g] | -> SEMPRED )
          alt_44 = 2
          look_44_0 = @input.peek(1)

          if (look_44_0 == T__86) 
            alt_44 = 1
          elsif (look_44_0 == SEMPRED || look_44_0 == TREE_BEGIN || look_44_0 == REWRITE || look_44_0.between?(TOKEN_REF, ACTION) || look_44_0 == RULE_REF || look_44_0 == T__71 || look_44_0.between?(T__81, T__83) || look_44_0 == T__87 || look_44_0 == T__90) 
            alt_44 = 2
          else
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
          nvae = NoViableAlternative("", 44, 0)
            raise nvae
          end
          case alt_44
          when 1
            # at line 247:16: g= '=>'
            g = match(T__86, TOKENS_FOLLOWING_T__86_IN_element_1625) 
            if @state.backtracking == 0
              stream_T__86.add(g)
            end
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
              # 247:23: -> GATED_SEMPRED[$g]
              @adaptor.add_child(root_0, @adaptor.create!(GATED_SEMPRED, g))



              return_value.tree = root_0

            end
          when 2
            # at line 247:46: 
            # AST Rewrite
            # elements: SEMPRED
            # token labels: 
            # rule labels: return_value
            # token list labels: 
            # rule list labels: 
            # wildcard labels: 
            if @state.backtracking == 0

              return_value.tree = root_0
              stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

              root_0 = @adaptor.create_flat_list!
              # 247:46: -> SEMPRED
              @adaptor.add_child(root_0, stream_SEMPRED.next_node)



              return_value.tree = root_0

            end
          end

        when 7
          # at line 248:6: tree_spec ( ebnf_suffix -> ^( ebnf_suffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] tree_spec EOA[\"EOA\"] ) EOB[\"EOB\"] ) ) | -> tree_spec )
          @state.following.push(TOKENS_FOLLOWING_tree_spec_IN_element_1645)
          tree_spec105 = tree_spec
          @state.following.pop
          if @state.backtracking == 0
            stream_tree_spec.add(tree_spec105.tree)
          end
          # at line 249:3: ( ebnf_suffix -> ^( ebnf_suffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] tree_spec EOA[\"EOA\"] ) EOB[\"EOB\"] ) ) | -> tree_spec )
          alt_45 = 2
          look_45_0 = @input.peek(1)

          if (look_45_0 == T__74 || look_45_0.between?(T__91, T__92)) 
            alt_45 = 1
          elsif (look_45_0 == SEMPRED || look_45_0 == TREE_BEGIN || look_45_0 == REWRITE || look_45_0.between?(TOKEN_REF, ACTION) || look_45_0 == RULE_REF || look_45_0 == T__71 || look_45_0.between?(T__81, T__83) || look_45_0 == T__87 || look_45_0 == T__90) 
            alt_45 = 2
          else
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
          nvae = NoViableAlternative("", 45, 0)
            raise nvae
          end
          case alt_45
          when 1
            # at line 249:5: ebnf_suffix
            @state.following.push(TOKENS_FOLLOWING_ebnf_suffix_IN_element_1651)
            ebnf_suffix106 = ebnf_suffix
            @state.following.pop
            if @state.backtracking == 0
              stream_ebnf_suffix.add(ebnf_suffix106.tree)
            end
            # AST Rewrite
            # elements: ebnf_suffix, tree_spec
            # token labels: 
            # rule labels: return_value
            # token list labels: 
            # rule list labels: 
            # wildcard labels: 
            if @state.backtracking == 0

              return_value.tree = root_0
              stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

              root_0 = @adaptor.create_flat_list!
              # 249:17: -> ^( ebnf_suffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] tree_spec EOA[\"EOA\"] ) EOB[\"EOB\"] ) )
              # at line 249:20: ^( ebnf_suffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] tree_spec EOA[\"EOA\"] ) EOB[\"EOB\"] ) )
              root_1 = @adaptor.create_flat_list!
              root_1 = @adaptor.become_root(stream_ebnf_suffix.next_node(), root_1)

              # at line 249:35: ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] tree_spec EOA[\"EOA\"] ) EOB[\"EOB\"] )
              root_2 = @adaptor.create_flat_list!
              root_2 = @adaptor.become_root(@adaptor.create!(BLOCK, "BLOCK"), root_2)

              # at line 249:52: ^( ALT[\"ALT\"] tree_spec EOA[\"EOA\"] )
              root_3 = @adaptor.create_flat_list!
              root_3 = @adaptor.become_root(@adaptor.create!(ALT, "ALT"), root_3)

              @adaptor.add_child(root_3, stream_tree_spec.next_tree)
              @adaptor.add_child(root_3, @adaptor.create!(EOA, "EOA"))

              @adaptor.add_child(root_2, root_3)
              @adaptor.add_child(root_2, @adaptor.create!(EOB, "EOB"))

              @adaptor.add_child(root_1, root_2)

              @adaptor.add_child(root_0, root_1)



              return_value.tree = root_0

            end
          when 2
            # at line 250:8: 
            # AST Rewrite
            # elements: tree_spec
            # token labels: 
            # rule labels: return_value
            # token list labels: 
            # rule list labels: 
            # wildcard labels: 
            if @state.backtracking == 0

              return_value.tree = root_0
              stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

              root_0 = @adaptor.create_flat_list!
              # 250:8: -> tree_spec
              @adaptor.add_child(root_0, stream_tree_spec.next_tree)



              return_value.tree = root_0

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
        # trace_out(__method__, 21)

      end
      
      return return_value
    end

    AtomReturnValue = define_return_scope 

    # parser rule atom
    # 
    # (in samples/ANTLRv3Grammar.g)
    # 254:1: atom : ( terminal | range ( (op= '^' | op= '!' ) -> ^( $op range ) | -> range ) | not_set ( (op= '^' | op= '!' ) -> ^( $op not_set ) | -> not_set ) | RULE_REF ( ARG_ACTION )? ( (op= '^' | op= '!' ) -> ^( $op RULE_REF ( ARG_ACTION )? ) | -> ^( RULE_REF ( ARG_ACTION )? ) ) );
    def atom
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 22)
      return_value = AtomReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      op = nil
      __RULE_REF110__ = nil
      __ARG_ACTION111__ = nil
      terminal107 = nil
      range108 = nil
      not_set109 = nil

      tree_for_op = nil
      tree_for_RULE_REF110 = nil
      tree_for_ARG_ACTION111 = nil
      stream_BANG = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token BANG")
      stream_ROOT = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token ROOT")
      stream_RULE_REF = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token RULE_REF")
      stream_ARG_ACTION = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token ARG_ACTION")
      stream_range = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule range")
      stream_not_set = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule not_set")
      begin
        # at line 254:5: ( terminal | range ( (op= '^' | op= '!' ) -> ^( $op range ) | -> range ) | not_set ( (op= '^' | op= '!' ) -> ^( $op not_set ) | -> not_set ) | RULE_REF ( ARG_ACTION )? ( (op= '^' | op= '!' ) -> ^( $op RULE_REF ( ARG_ACTION )? ) | -> ^( RULE_REF ( ARG_ACTION )? ) ) )
        alt_54 = 4
        case look_54 = @input.peek(1)
        when CHAR_LITERAL then look_54_1 = @input.peek(2)

        if (look_54_1 == RANGE) 
          alt_54 = 2
        elsif (look_54_1 == SEMPRED || look_54_1.between?(TREE_BEGIN, REWRITE) || look_54_1.between?(TOKEN_REF, ACTION) || look_54_1 == RULE_REF || look_54_1 == T__71 || look_54_1 == T__74 || look_54_1.between?(T__81, T__83) || look_54_1.between?(T__87, T__88) || look_54_1.between?(T__90, T__92)) 
          alt_54 = 1
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 54, 1)
          raise nvae
        end
        when TOKEN_REF, STRING_LITERAL, T__90 then alt_54 = 1
        when T__87 then alt_54 = 3
        when RULE_REF then alt_54 = 4
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          nvae = NoViableAlternative("", 54, 0)
          raise nvae
        end
        case alt_54
        when 1
          root_0 = @adaptor.create_flat_list!


          # at line 254:9: terminal
          @state.following.push(TOKENS_FOLLOWING_terminal_IN_atom_1703)
          terminal107 = terminal
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, terminal107.tree)
          end

        when 2
          # at line 255:4: range ( (op= '^' | op= '!' ) -> ^( $op range ) | -> range )
          @state.following.push(TOKENS_FOLLOWING_range_IN_atom_1708)
          range108 = range
          @state.following.pop
          if @state.backtracking == 0
            stream_range.add(range108.tree)
          end
          # at line 256:3: ( (op= '^' | op= '!' ) -> ^( $op range ) | -> range )
          alt_48 = 2
          look_48_0 = @input.peek(1)

          if (look_48_0.between?(ROOT, BANG)) 
            alt_48 = 1
          elsif (look_48_0 == SEMPRED || look_48_0 == TREE_BEGIN || look_48_0 == REWRITE || look_48_0.between?(TOKEN_REF, ACTION) || look_48_0 == RULE_REF || look_48_0 == T__71 || look_48_0 == T__74 || look_48_0.between?(T__81, T__83) || look_48_0 == T__87 || look_48_0.between?(T__90, T__92)) 
            alt_48 = 2
          else
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
          nvae = NoViableAlternative("", 48, 0)
            raise nvae
          end
          case alt_48
          when 1
            # at line 256:5: (op= '^' | op= '!' )
            # at line 256:5: (op= '^' | op= '!' )
            alt_47 = 2
            look_47_0 = @input.peek(1)

            if (look_47_0 == ROOT) 
              alt_47 = 1
            elsif (look_47_0 == BANG) 
              alt_47 = 2
            else
              @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
            nvae = NoViableAlternative("", 47, 0)
              raise nvae
            end
            case alt_47
            when 1
              # at line 256:6: op= '^'
              op = match(ROOT, TOKENS_FOLLOWING_ROOT_IN_atom_1718) 
              if @state.backtracking == 0
                stream_ROOT.add(op)
              end

            when 2
              # at line 256:13: op= '!'
              op = match(BANG, TOKENS_FOLLOWING_BANG_IN_atom_1722) 
              if @state.backtracking == 0
                stream_BANG.add(op)
              end

            end
            # AST Rewrite
            # elements: op, range
            # token labels: op
            # rule labels: return_value
            # token list labels: 
            # rule list labels: 
            # wildcard labels: 
            if @state.backtracking == 0

              return_value.tree = root_0
              stream_op = token_stream("token op", op)
              stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

              root_0 = @adaptor.create_flat_list!
              # 256:21: -> ^( $op range )
              # at line 256:24: ^( $op range )
              root_1 = @adaptor.create_flat_list!
              root_1 = @adaptor.become_root(stream_op.next_node, root_1)

              @adaptor.add_child(root_1, stream_range.next_tree)

              @adaptor.add_child(root_0, root_1)



              return_value.tree = root_0

            end
          when 2
            # at line 257:9: 
            # AST Rewrite
            # elements: range
            # token labels: 
            # rule labels: return_value
            # token list labels: 
            # rule list labels: 
            # wildcard labels: 
            if @state.backtracking == 0

              return_value.tree = root_0
              stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

              root_0 = @adaptor.create_flat_list!
              # 257:9: -> range
              @adaptor.add_child(root_0, stream_range.next_tree)



              return_value.tree = root_0

            end
          end

        when 3
          # at line 259:7: not_set ( (op= '^' | op= '!' ) -> ^( $op not_set ) | -> not_set )
          @state.following.push(TOKENS_FOLLOWING_not_set_IN_atom_1756)
          not_set109 = not_set
          @state.following.pop
          if @state.backtracking == 0
            stream_not_set.add(not_set109.tree)
          end
          # at line 260:3: ( (op= '^' | op= '!' ) -> ^( $op not_set ) | -> not_set )
          alt_50 = 2
          look_50_0 = @input.peek(1)

          if (look_50_0.between?(ROOT, BANG)) 
            alt_50 = 1
          elsif (look_50_0 == SEMPRED || look_50_0 == TREE_BEGIN || look_50_0 == REWRITE || look_50_0.between?(TOKEN_REF, ACTION) || look_50_0 == RULE_REF || look_50_0 == T__71 || look_50_0 == T__74 || look_50_0.between?(T__81, T__83) || look_50_0 == T__87 || look_50_0.between?(T__90, T__92)) 
            alt_50 = 2
          else
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
          nvae = NoViableAlternative("", 50, 0)
            raise nvae
          end
          case alt_50
          when 1
            # at line 260:5: (op= '^' | op= '!' )
            # at line 260:5: (op= '^' | op= '!' )
            alt_49 = 2
            look_49_0 = @input.peek(1)

            if (look_49_0 == ROOT) 
              alt_49 = 1
            elsif (look_49_0 == BANG) 
              alt_49 = 2
            else
              @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
            nvae = NoViableAlternative("", 49, 0)
              raise nvae
            end
            case alt_49
            when 1
              # at line 260:6: op= '^'
              op = match(ROOT, TOKENS_FOLLOWING_ROOT_IN_atom_1765) 
              if @state.backtracking == 0
                stream_ROOT.add(op)
              end

            when 2
              # at line 260:13: op= '!'
              op = match(BANG, TOKENS_FOLLOWING_BANG_IN_atom_1769) 
              if @state.backtracking == 0
                stream_BANG.add(op)
              end

            end
            # AST Rewrite
            # elements: not_set, op
            # token labels: op
            # rule labels: return_value
            # token list labels: 
            # rule list labels: 
            # wildcard labels: 
            if @state.backtracking == 0

              return_value.tree = root_0
              stream_op = token_stream("token op", op)
              stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

              root_0 = @adaptor.create_flat_list!
              # 260:21: -> ^( $op not_set )
              # at line 260:24: ^( $op not_set )
              root_1 = @adaptor.create_flat_list!
              root_1 = @adaptor.become_root(stream_op.next_node, root_1)

              @adaptor.add_child(root_1, stream_not_set.next_tree)

              @adaptor.add_child(root_0, root_1)



              return_value.tree = root_0

            end
          when 2
            # at line 261:9: 
            # AST Rewrite
            # elements: not_set
            # token labels: 
            # rule labels: return_value
            # token list labels: 
            # rule list labels: 
            # wildcard labels: 
            if @state.backtracking == 0

              return_value.tree = root_0
              stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

              root_0 = @adaptor.create_flat_list!
              # 261:9: -> not_set
              @adaptor.add_child(root_0, stream_not_set.next_tree)



              return_value.tree = root_0

            end
          end

        when 4
          # at line 263:9: RULE_REF ( ARG_ACTION )? ( (op= '^' | op= '!' ) -> ^( $op RULE_REF ( ARG_ACTION )? ) | -> ^( RULE_REF ( ARG_ACTION )? ) )
          __RULE_REF110__ = match(RULE_REF, TOKENS_FOLLOWING_RULE_REF_IN_atom_1805) 
          if @state.backtracking == 0
            stream_RULE_REF.add(__RULE_REF110__)
          end
          # at line 263:18: ( ARG_ACTION )?
          alt_51 = 2
          look_51_0 = @input.peek(1)

          if (look_51_0 == ARG_ACTION) 
            alt_51 = 1
          end
          case alt_51
          when 1
            # at line 263:18: ARG_ACTION
            __ARG_ACTION111__ = match(ARG_ACTION, TOKENS_FOLLOWING_ARG_ACTION_IN_atom_1807) 
            if @state.backtracking == 0
              stream_ARG_ACTION.add(__ARG_ACTION111__)
            end

          end
          # at line 264:3: ( (op= '^' | op= '!' ) -> ^( $op RULE_REF ( ARG_ACTION )? ) | -> ^( RULE_REF ( ARG_ACTION )? ) )
          alt_53 = 2
          look_53_0 = @input.peek(1)

          if (look_53_0.between?(ROOT, BANG)) 
            alt_53 = 1
          elsif (look_53_0 == SEMPRED || look_53_0 == TREE_BEGIN || look_53_0 == REWRITE || look_53_0.between?(TOKEN_REF, ACTION) || look_53_0 == RULE_REF || look_53_0 == T__71 || look_53_0 == T__74 || look_53_0.between?(T__81, T__83) || look_53_0 == T__87 || look_53_0.between?(T__90, T__92)) 
            alt_53 = 2
          else
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
          nvae = NoViableAlternative("", 53, 0)
            raise nvae
          end
          case alt_53
          when 1
            # at line 264:5: (op= '^' | op= '!' )
            # at line 264:5: (op= '^' | op= '!' )
            alt_52 = 2
            look_52_0 = @input.peek(1)

            if (look_52_0 == ROOT) 
              alt_52 = 1
            elsif (look_52_0 == BANG) 
              alt_52 = 2
            else
              @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
            nvae = NoViableAlternative("", 52, 0)
              raise nvae
            end
            case alt_52
            when 1
              # at line 264:6: op= '^'
              op = match(ROOT, TOKENS_FOLLOWING_ROOT_IN_atom_1817) 
              if @state.backtracking == 0
                stream_ROOT.add(op)
              end

            when 2
              # at line 264:13: op= '!'
              op = match(BANG, TOKENS_FOLLOWING_BANG_IN_atom_1821) 
              if @state.backtracking == 0
                stream_BANG.add(op)
              end

            end
            # AST Rewrite
            # elements: op, ARG_ACTION, RULE_REF
            # token labels: op
            # rule labels: return_value
            # token list labels: 
            # rule list labels: 
            # wildcard labels: 
            if @state.backtracking == 0

              return_value.tree = root_0
              stream_op = token_stream("token op", op)
              stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

              root_0 = @adaptor.create_flat_list!
              # 264:21: -> ^( $op RULE_REF ( ARG_ACTION )? )
              # at line 264:24: ^( $op RULE_REF ( ARG_ACTION )? )
              root_1 = @adaptor.create_flat_list!
              root_1 = @adaptor.become_root(stream_op.next_node, root_1)

              @adaptor.add_child(root_1, stream_RULE_REF.next_node)
              # at line 264:39: ( ARG_ACTION )?
              if stream_ARG_ACTION.has_next?
                @adaptor.add_child(root_1, stream_ARG_ACTION.next_node)

              end

              stream_ARG_ACTION.reset();

              @adaptor.add_child(root_0, root_1)



              return_value.tree = root_0

            end
          when 2
            # at line 265:9: 
            # AST Rewrite
            # elements: ARG_ACTION, RULE_REF
            # token labels: 
            # rule labels: return_value
            # token list labels: 
            # rule list labels: 
            # wildcard labels: 
            if @state.backtracking == 0

              return_value.tree = root_0
              stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

              root_0 = @adaptor.create_flat_list!
              # 265:9: -> ^( RULE_REF ( ARG_ACTION )? )
              # at line 265:12: ^( RULE_REF ( ARG_ACTION )? )
              root_1 = @adaptor.create_flat_list!
              root_1 = @adaptor.become_root(stream_RULE_REF.next_node, root_1)

              # at line 265:23: ( ARG_ACTION )?
              if stream_ARG_ACTION.has_next?
                @adaptor.add_child(root_1, stream_ARG_ACTION.next_node)

              end

              stream_ARG_ACTION.reset();

              @adaptor.add_child(root_0, root_1)



              return_value.tree = root_0

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
        # trace_out(__method__, 22)

      end
      
      return return_value
    end

    NotSetReturnValue = define_return_scope 

    # parser rule not_set
    # 
    # (in samples/ANTLRv3Grammar.g)
    # 269:1: not_set : '~' ( not_terminal ( element_options )? -> ^( '~' not_terminal ( element_options )? ) | block ( element_options )? -> ^( '~' block ( element_options )? ) ) ;
    def not_set
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 23)
      return_value = NotSetReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal112 = nil
      not_terminal113 = nil
      element_options114 = nil
      block115 = nil
      element_options116 = nil

      tree_for_char_literal112 = nil
      stream_T__87 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__87")
      stream_not_terminal = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule not_terminal")
      stream_block = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule block")
      stream_element_options = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule element_options")
      begin
        # at line 270:4: '~' ( not_terminal ( element_options )? -> ^( '~' not_terminal ( element_options )? ) | block ( element_options )? -> ^( '~' block ( element_options )? ) )
        char_literal112 = match(T__87, TOKENS_FOLLOWING_T__87_IN_not_set_1869) 
        if @state.backtracking == 0
          stream_T__87.add(char_literal112)
        end
        # at line 271:3: ( not_terminal ( element_options )? -> ^( '~' not_terminal ( element_options )? ) | block ( element_options )? -> ^( '~' block ( element_options )? ) )
        alt_57 = 2
        look_57_0 = @input.peek(1)

        if (look_57_0.between?(TOKEN_REF, CHAR_LITERAL)) 
          alt_57 = 1
        elsif (look_57_0 == T__81) 
          alt_57 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 57, 0)
          raise nvae
        end
        case alt_57
        when 1
          # at line 271:5: not_terminal ( element_options )?
          @state.following.push(TOKENS_FOLLOWING_not_terminal_IN_not_set_1875)
          not_terminal113 = not_terminal
          @state.following.pop
          if @state.backtracking == 0
            stream_not_terminal.add(not_terminal113.tree)
          end
          # at line 271:18: ( element_options )?
          alt_55 = 2
          look_55_0 = @input.peek(1)

          if (look_55_0 == T__88) 
            alt_55 = 1
          end
          case alt_55
          when 1
            # at line 271:18: element_options
            @state.following.push(TOKENS_FOLLOWING_element_options_IN_not_set_1877)
            element_options114 = element_options
            @state.following.pop
            if @state.backtracking == 0
              stream_element_options.add(element_options114.tree)
            end

          end
          # AST Rewrite
          # elements: not_terminal, T__87, element_options
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

            root_0 = @adaptor.create_flat_list!
            # 271:35: -> ^( '~' not_terminal ( element_options )? )
            # at line 271:38: ^( '~' not_terminal ( element_options )? )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(stream_T__87.next_node, root_1)

            @adaptor.add_child(root_1, stream_not_terminal.next_tree)
            # at line 271:57: ( element_options )?
            if stream_element_options.has_next?
              @adaptor.add_child(root_1, stream_element_options.next_tree)

            end

            stream_element_options.reset();

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 2
          # at line 272:5: block ( element_options )?
          @state.following.push(TOKENS_FOLLOWING_block_IN_not_set_1895)
          block115 = block
          @state.following.pop
          if @state.backtracking == 0
            stream_block.add(block115.tree)
          end
          # at line 272:11: ( element_options )?
          alt_56 = 2
          look_56_0 = @input.peek(1)

          if (look_56_0 == T__88) 
            alt_56 = 1
          end
          case alt_56
          when 1
            # at line 272:11: element_options
            @state.following.push(TOKENS_FOLLOWING_element_options_IN_not_set_1897)
            element_options116 = element_options
            @state.following.pop
            if @state.backtracking == 0
              stream_element_options.add(element_options116.tree)
            end

          end
          # AST Rewrite
          # elements: block, element_options, T__87
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

            root_0 = @adaptor.create_flat_list!
            # 272:29: -> ^( '~' block ( element_options )? )
            # at line 272:32: ^( '~' block ( element_options )? )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(stream_T__87.next_node, root_1)

            @adaptor.add_child(root_1, stream_block.next_tree)
            # at line 272:44: ( element_options )?
            if stream_element_options.has_next?
              @adaptor.add_child(root_1, stream_element_options.next_tree)

            end

            stream_element_options.reset();

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
        # trace_out(__method__, 23)

      end
      
      return return_value
    end

    NotTerminalReturnValue = define_return_scope 

    # parser rule not_terminal
    # 
    # (in samples/ANTLRv3Grammar.g)
    # 276:1: not_terminal : ( CHAR_LITERAL | TOKEN_REF | STRING_LITERAL );
    def not_terminal
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 24)
      return_value = NotTerminalReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      set117 = nil

      tree_for_set117 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 
        set117 = @input.look
        if @input.peek(1).between?(TOKEN_REF, CHAR_LITERAL)
          @input.consume
          if @state.backtracking == 0
            @adaptor.add_child(root_0, @adaptor.create_with_payload!(set117))
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
        # trace_out(__method__, 24)

      end
      
      return return_value
    end

    ElementOptionsReturnValue = define_return_scope 

    # parser rule element_options
    # 
    # (in samples/ANTLRv3Grammar.g)
    # 282:1: element_options : ( '<' qid '>' -> ^( OPTIONS qid ) | '<' option ( ';' option )* '>' -> ^( OPTIONS ( option )+ ) );
    def element_options
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 25)
      return_value = ElementOptionsReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal118 = nil
      char_literal120 = nil
      char_literal121 = nil
      char_literal123 = nil
      char_literal125 = nil
      qid119 = nil
      option122 = nil
      option124 = nil

      tree_for_char_literal118 = nil
      tree_for_char_literal120 = nil
      tree_for_char_literal121 = nil
      tree_for_char_literal123 = nil
      tree_for_char_literal125 = nil
      stream_T__71 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__71")
      stream_T__89 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__89")
      stream_T__88 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__88")
      stream_qid = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule qid")
      stream_option = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule option")
      begin
        # at line 283:2: ( '<' qid '>' -> ^( OPTIONS qid ) | '<' option ( ';' option )* '>' -> ^( OPTIONS ( option )+ ) )
        alt_59 = 2
        look_59_0 = @input.peek(1)

        if (look_59_0 == T__88) 
          look_59_1 = @input.peek(2)

          if (look_59_1 == TOKEN_REF) 
            look_59_2 = @input.peek(3)

            if (look_59_2.between?(T__89, T__90)) 
              alt_59 = 1
            elsif (look_59_2 == LABEL_ASSIGN) 
              alt_59 = 2
            else
              @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
            nvae = NoViableAlternative("", 59, 2)
              raise nvae
            end
          elsif (look_59_1 == RULE_REF) 
            look_59_3 = @input.peek(3)

            if (look_59_3.between?(T__89, T__90)) 
              alt_59 = 1
            elsif (look_59_3 == LABEL_ASSIGN) 
              alt_59 = 2
            else
              @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
            nvae = NoViableAlternative("", 59, 3)
              raise nvae
            end
          else
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
          nvae = NoViableAlternative("", 59, 1)
            raise nvae
          end
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 59, 0)
          raise nvae
        end
        case alt_59
        when 1
          # at line 283:4: '<' qid '>'
          char_literal118 = match(T__88, TOKENS_FOLLOWING_T__88_IN_element_options_1949) 
          if @state.backtracking == 0
            stream_T__88.add(char_literal118)
          end
          @state.following.push(TOKENS_FOLLOWING_qid_IN_element_options_1951)
          qid119 = qid
          @state.following.pop
          if @state.backtracking == 0
            stream_qid.add(qid119.tree)
          end
          char_literal120 = match(T__89, TOKENS_FOLLOWING_T__89_IN_element_options_1953) 
          if @state.backtracking == 0
            stream_T__89.add(char_literal120)
          end
          # AST Rewrite
          # elements: qid
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

            root_0 = @adaptor.create_flat_list!
            # 283:21: -> ^( OPTIONS qid )
            # at line 283:24: ^( OPTIONS qid )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(@adaptor.create_from_type!(OPTIONS, "OPTIONS"), root_1)

            @adaptor.add_child(root_1, stream_qid.next_tree)

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 2
          # at line 284:4: '<' option ( ';' option )* '>'
          char_literal121 = match(T__88, TOKENS_FOLLOWING_T__88_IN_element_options_1971) 
          if @state.backtracking == 0
            stream_T__88.add(char_literal121)
          end
          @state.following.push(TOKENS_FOLLOWING_option_IN_element_options_1973)
          option122 = option
          @state.following.pop
          if @state.backtracking == 0
            stream_option.add(option122.tree)
          end
          # at line 284:15: ( ';' option )*
          loop do  #loop 58
            alt_58 = 2
            look_58_0 = @input.peek(1)

            if (look_58_0 == T__71) 
              alt_58 = 1

            end
            case alt_58
            when 1
              # at line 284:16: ';' option
              char_literal123 = match(T__71, TOKENS_FOLLOWING_T__71_IN_element_options_1976) 
              if @state.backtracking == 0
                stream_T__71.add(char_literal123)
              end
              @state.following.push(TOKENS_FOLLOWING_option_IN_element_options_1978)
              option124 = option
              @state.following.pop
              if @state.backtracking == 0
                stream_option.add(option124.tree)
              end

            else
              break #loop 58
            end
          end
          char_literal125 = match(T__89, TOKENS_FOLLOWING_T__89_IN_element_options_1982) 
          if @state.backtracking == 0
            stream_T__89.add(char_literal125)
          end
          # AST Rewrite
          # elements: option
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

            root_0 = @adaptor.create_flat_list!
            # 284:33: -> ^( OPTIONS ( option )+ )
            # at line 284:36: ^( OPTIONS ( option )+ )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(@adaptor.create_from_type!(OPTIONS, "OPTIONS"), root_1)

            # at line 284:46: ( option )+
            unless stream_option.has_next?
              raise ANTLR3::RewriteEarlyExit
            end

            while stream_option.has_next?
              @adaptor.add_child(root_1, stream_option.next_tree)

            end

            stream_option.reset

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
        # trace_out(__method__, 25)

      end
      
      return return_value
    end

    ElementOptionReturnValue = define_return_scope 

    # parser rule element_option
    # 
    # (in samples/ANTLRv3Grammar.g)
    # 287:1: element_option : id '=' option_value -> ^( '=' id option_value ) ;
    def element_option
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 26)
      return_value = ElementOptionReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal127 = nil
      id126 = nil
      option_value128 = nil

      tree_for_char_literal127 = nil
      stream_LABEL_ASSIGN = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token LABEL_ASSIGN")
      stream_id = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule id")
      stream_option_value = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule option_value")
      begin
        # at line 288:4: id '=' option_value
        @state.following.push(TOKENS_FOLLOWING_id_IN_element_option_2002)
        id126 = id
        @state.following.pop
        if @state.backtracking == 0
          stream_id.add(id126.tree)
        end
        char_literal127 = match(LABEL_ASSIGN, TOKENS_FOLLOWING_LABEL_ASSIGN_IN_element_option_2004) 
        if @state.backtracking == 0
          stream_LABEL_ASSIGN.add(char_literal127)
        end
        @state.following.push(TOKENS_FOLLOWING_option_value_IN_element_option_2006)
        option_value128 = option_value
        @state.following.pop
        if @state.backtracking == 0
          stream_option_value.add(option_value128.tree)
        end
        # AST Rewrite
        # elements: LABEL_ASSIGN, id, option_value
        # token labels: 
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 
        if @state.backtracking == 0

          return_value.tree = root_0
          stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

          root_0 = @adaptor.create_flat_list!
          # 288:24: -> ^( '=' id option_value )
          # at line 288:27: ^( '=' id option_value )
          root_1 = @adaptor.create_flat_list!
          root_1 = @adaptor.become_root(stream_LABEL_ASSIGN.next_node, root_1)

          @adaptor.add_child(root_1, stream_id.next_tree)
          @adaptor.add_child(root_1, stream_option_value.next_tree)

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
        # trace_out(__method__, 26)

      end
      
      return return_value
    end

    TreeSpecReturnValue = define_return_scope 

    # parser rule tree_spec
    # 
    # (in samples/ANTLRv3Grammar.g)
    # 291:1: tree_spec : '^(' element ( element )+ ')' -> ^( TREE_BEGIN ( element )+ ) ;
    def tree_spec
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 27)
      return_value = TreeSpecReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal129 = nil
      char_literal132 = nil
      element130 = nil
      element131 = nil

      tree_for_string_literal129 = nil
      tree_for_char_literal132 = nil
      stream_T__83 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__83")
      stream_TREE_BEGIN = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token TREE_BEGIN")
      stream_element = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule element")
      begin
        # at line 292:4: '^(' element ( element )+ ')'
        string_literal129 = match(TREE_BEGIN, TOKENS_FOLLOWING_TREE_BEGIN_IN_tree_spec_2028) 
        if @state.backtracking == 0
          stream_TREE_BEGIN.add(string_literal129)
        end
        @state.following.push(TOKENS_FOLLOWING_element_IN_tree_spec_2030)
        element130 = element
        @state.following.pop
        if @state.backtracking == 0
          stream_element.add(element130.tree)
        end
        # at file 292:17: ( element )+
        match_count_60 = 0
        loop do
          alt_60 = 2
          look_60_0 = @input.peek(1)

          if (look_60_0 == SEMPRED || look_60_0 == TREE_BEGIN || look_60_0.between?(TOKEN_REF, ACTION) || look_60_0 == RULE_REF || look_60_0 == T__81 || look_60_0 == T__87 || look_60_0 == T__90) 
            alt_60 = 1

          end
          case alt_60
          when 1
            # at line 292:19: element
            @state.following.push(TOKENS_FOLLOWING_element_IN_tree_spec_2034)
            element131 = element
            @state.following.pop
            if @state.backtracking == 0
              stream_element.add(element131.tree)
            end

          else
            match_count_60 > 0 and break
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

            eee = EarlyExit(60)


            raise eee
          end
          match_count_60 += 1
        end

        char_literal132 = match(T__83, TOKENS_FOLLOWING_T__83_IN_tree_spec_2039) 
        if @state.backtracking == 0
          stream_T__83.add(char_literal132)
        end
        # AST Rewrite
        # elements: element
        # token labels: 
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 
        if @state.backtracking == 0

          return_value.tree = root_0
          stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

          root_0 = @adaptor.create_flat_list!
          # 292:34: -> ^( TREE_BEGIN ( element )+ )
          # at line 292:37: ^( TREE_BEGIN ( element )+ )
          root_1 = @adaptor.create_flat_list!
          root_1 = @adaptor.become_root(@adaptor.create_from_type!(TREE_BEGIN, "TREE_BEGIN"), root_1)

          # at line 292:50: ( element )+
          unless stream_element.has_next?
            raise ANTLR3::RewriteEarlyExit
          end

          while stream_element.has_next?
            @adaptor.add_child(root_1, stream_element.next_tree)

          end

          stream_element.reset

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
        # trace_out(__method__, 27)

      end
      
      return return_value
    end

    RangeReturnValue = define_return_scope 

    # parser rule range
    # 
    # (in samples/ANTLRv3Grammar.g)
    # 295:1: range : c1= CHAR_LITERAL RANGE c2= CHAR_LITERAL ( element_options )? -> ^( CHAR_RANGE[$c1,\"..\"] $c1 $c2 ( element_options )? ) ;
    def range
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 28)
      return_value = RangeReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      c1 = nil
      c2 = nil
      __RANGE133__ = nil
      element_options134 = nil

      tree_for_c1 = nil
      tree_for_c2 = nil
      tree_for_RANGE133 = nil
      stream_RANGE = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token RANGE")
      stream_CHAR_LITERAL = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token CHAR_LITERAL")
      stream_element_options = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule element_options")
      begin
        # at line 296:4: c1= CHAR_LITERAL RANGE c2= CHAR_LITERAL ( element_options )?
        c1 = match(CHAR_LITERAL, TOKENS_FOLLOWING_CHAR_LITERAL_IN_range_2062) 
        if @state.backtracking == 0
          stream_CHAR_LITERAL.add(c1)
        end
        __RANGE133__ = match(RANGE, TOKENS_FOLLOWING_RANGE_IN_range_2064) 
        if @state.backtracking == 0
          stream_RANGE.add(__RANGE133__)
        end
        c2 = match(CHAR_LITERAL, TOKENS_FOLLOWING_CHAR_LITERAL_IN_range_2068) 
        if @state.backtracking == 0
          stream_CHAR_LITERAL.add(c2)
        end
        # at line 296:42: ( element_options )?
        alt_61 = 2
        look_61_0 = @input.peek(1)

        if (look_61_0 == T__88) 
          alt_61 = 1
        end
        case alt_61
        when 1
          # at line 296:42: element_options
          @state.following.push(TOKENS_FOLLOWING_element_options_IN_range_2070)
          element_options134 = element_options
          @state.following.pop
          if @state.backtracking == 0
            stream_element_options.add(element_options134.tree)
          end

        end
        # AST Rewrite
        # elements: c2, element_options, c1
        # token labels: c1, c2
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 
        if @state.backtracking == 0

          return_value.tree = root_0
          stream_c1 = token_stream("token c1", c1)
          stream_c2 = token_stream("token c2", c2)
          stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

          root_0 = @adaptor.create_flat_list!
          # 297:3: -> ^( CHAR_RANGE[$c1,\"..\"] $c1 $c2 ( element_options )? )
          # at line 297:6: ^( CHAR_RANGE[$c1,\"..\"] $c1 $c2 ( element_options )? )
          root_1 = @adaptor.create_flat_list!
          root_1 = @adaptor.become_root(@adaptor.create!(CHAR_RANGE, c1, ".."), root_1)

          @adaptor.add_child(root_1, stream_c1.next_node)
          @adaptor.add_child(root_1, stream_c2.next_node)
          # at line 297:37: ( element_options )?
          if stream_element_options.has_next?
            @adaptor.add_child(root_1, stream_element_options.next_tree)

          end

          stream_element_options.reset();

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
        # trace_out(__method__, 28)

      end
      
      return return_value
    end

    TerminalReturnValue = define_return_scope 

    # parser rule terminal
    # 
    # (in samples/ANTLRv3Grammar.g)
    # 300:1: terminal : ( CHAR_LITERAL ( element_options )? -> ^( CHAR_LITERAL ( element_options )? ) | TOKEN_REF ( ARG_ACTION )? ( element_options )? -> ^( TOKEN_REF ( ARG_ACTION )? ( element_options )? ) | STRING_LITERAL ( element_options )? -> ^( STRING_LITERAL ( element_options )? ) | '.' ( element_options )? -> ^( '.' ( element_options )? ) ) ( '^' -> ^( '^' $terminal) | '!' -> ^( '!' $terminal) )? ;
    def terminal
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 29)
      return_value = TerminalReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __CHAR_LITERAL135__ = nil
      __TOKEN_REF137__ = nil
      __ARG_ACTION138__ = nil
      __STRING_LITERAL140__ = nil
      char_literal142 = nil
      char_literal144 = nil
      char_literal145 = nil
      element_options136 = nil
      element_options139 = nil
      element_options141 = nil
      element_options143 = nil

      tree_for_CHAR_LITERAL135 = nil
      tree_for_TOKEN_REF137 = nil
      tree_for_ARG_ACTION138 = nil
      tree_for_STRING_LITERAL140 = nil
      tree_for_char_literal142 = nil
      tree_for_char_literal144 = nil
      tree_for_char_literal145 = nil
      stream_STRING_LITERAL = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token STRING_LITERAL")
      stream_BANG = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token BANG")
      stream_T__90 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__90")
      stream_CHAR_LITERAL = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token CHAR_LITERAL")
      stream_ROOT = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token ROOT")
      stream_TOKEN_REF = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token TOKEN_REF")
      stream_ARG_ACTION = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token ARG_ACTION")
      stream_element_options = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule element_options")
      begin
        # at line 301:9: ( CHAR_LITERAL ( element_options )? -> ^( CHAR_LITERAL ( element_options )? ) | TOKEN_REF ( ARG_ACTION )? ( element_options )? -> ^( TOKEN_REF ( ARG_ACTION )? ( element_options )? ) | STRING_LITERAL ( element_options )? -> ^( STRING_LITERAL ( element_options )? ) | '.' ( element_options )? -> ^( '.' ( element_options )? ) ) ( '^' -> ^( '^' $terminal) | '!' -> ^( '!' $terminal) )?
        # at line 301:9: ( CHAR_LITERAL ( element_options )? -> ^( CHAR_LITERAL ( element_options )? ) | TOKEN_REF ( ARG_ACTION )? ( element_options )? -> ^( TOKEN_REF ( ARG_ACTION )? ( element_options )? ) | STRING_LITERAL ( element_options )? -> ^( STRING_LITERAL ( element_options )? ) | '.' ( element_options )? -> ^( '.' ( element_options )? ) )
        alt_67 = 4
        case look_67 = @input.peek(1)
        when CHAR_LITERAL then alt_67 = 1
        when TOKEN_REF then alt_67 = 2
        when STRING_LITERAL then alt_67 = 3
        when T__90 then alt_67 = 4
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          nvae = NoViableAlternative("", 67, 0)
          raise nvae
        end
        case alt_67
        when 1
          # at line 301:11: CHAR_LITERAL ( element_options )?
          __CHAR_LITERAL135__ = match(CHAR_LITERAL, TOKENS_FOLLOWING_CHAR_LITERAL_IN_terminal_2107) 
          if @state.backtracking == 0
            stream_CHAR_LITERAL.add(__CHAR_LITERAL135__)
          end
          # at line 301:24: ( element_options )?
          alt_62 = 2
          look_62_0 = @input.peek(1)

          if (look_62_0 == T__88) 
            alt_62 = 1
          end
          case alt_62
          when 1
            # at line 301:24: element_options
            @state.following.push(TOKENS_FOLLOWING_element_options_IN_terminal_2109)
            element_options136 = element_options
            @state.following.pop
            if @state.backtracking == 0
              stream_element_options.add(element_options136.tree)
            end

          end
          # AST Rewrite
          # elements: CHAR_LITERAL, element_options
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

            root_0 = @adaptor.create_flat_list!
            # 301:47: -> ^( CHAR_LITERAL ( element_options )? )
            # at line 301:50: ^( CHAR_LITERAL ( element_options )? )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(stream_CHAR_LITERAL.next_node, root_1)

            # at line 301:65: ( element_options )?
            if stream_element_options.has_next?
              @adaptor.add_child(root_1, stream_element_options.next_tree)

            end

            stream_element_options.reset();

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 2
          # at line 303:7: TOKEN_REF ( ARG_ACTION )? ( element_options )?
          __TOKEN_REF137__ = match(TOKEN_REF, TOKENS_FOLLOWING_TOKEN_REF_IN_terminal_2140) 
          if @state.backtracking == 0
            stream_TOKEN_REF.add(__TOKEN_REF137__)
          end
          # at line 303:17: ( ARG_ACTION )?
          alt_63 = 2
          look_63_0 = @input.peek(1)

          if (look_63_0 == ARG_ACTION) 
            alt_63 = 1
          end
          case alt_63
          when 1
            # at line 303:17: ARG_ACTION
            __ARG_ACTION138__ = match(ARG_ACTION, TOKENS_FOLLOWING_ARG_ACTION_IN_terminal_2142) 
            if @state.backtracking == 0
              stream_ARG_ACTION.add(__ARG_ACTION138__)
            end

          end
          # at line 303:29: ( element_options )?
          alt_64 = 2
          look_64_0 = @input.peek(1)

          if (look_64_0 == T__88) 
            alt_64 = 1
          end
          case alt_64
          when 1
            # at line 303:29: element_options
            @state.following.push(TOKENS_FOLLOWING_element_options_IN_terminal_2145)
            element_options139 = element_options
            @state.following.pop
            if @state.backtracking == 0
              stream_element_options.add(element_options139.tree)
            end

          end
          # AST Rewrite
          # elements: element_options, ARG_ACTION, TOKEN_REF
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

            root_0 = @adaptor.create_flat_list!
            # 303:46: -> ^( TOKEN_REF ( ARG_ACTION )? ( element_options )? )
            # at line 303:49: ^( TOKEN_REF ( ARG_ACTION )? ( element_options )? )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(stream_TOKEN_REF.next_node, root_1)

            # at line 303:61: ( ARG_ACTION )?
            if stream_ARG_ACTION.has_next?
              @adaptor.add_child(root_1, stream_ARG_ACTION.next_node)

            end

            stream_ARG_ACTION.reset();
            # at line 303:73: ( element_options )?
            if stream_element_options.has_next?
              @adaptor.add_child(root_1, stream_element_options.next_tree)

            end

            stream_element_options.reset();

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 3
          # at line 304:7: STRING_LITERAL ( element_options )?
          __STRING_LITERAL140__ = match(STRING_LITERAL, TOKENS_FOLLOWING_STRING_LITERAL_IN_terminal_2166) 
          if @state.backtracking == 0
            stream_STRING_LITERAL.add(__STRING_LITERAL140__)
          end
          # at line 304:22: ( element_options )?
          alt_65 = 2
          look_65_0 = @input.peek(1)

          if (look_65_0 == T__88) 
            alt_65 = 1
          end
          case alt_65
          when 1
            # at line 304:22: element_options
            @state.following.push(TOKENS_FOLLOWING_element_options_IN_terminal_2168)
            element_options141 = element_options
            @state.following.pop
            if @state.backtracking == 0
              stream_element_options.add(element_options141.tree)
            end

          end
          # AST Rewrite
          # elements: element_options, STRING_LITERAL
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

            root_0 = @adaptor.create_flat_list!
            # 304:42: -> ^( STRING_LITERAL ( element_options )? )
            # at line 304:45: ^( STRING_LITERAL ( element_options )? )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(stream_STRING_LITERAL.next_node, root_1)

            # at line 304:62: ( element_options )?
            if stream_element_options.has_next?
              @adaptor.add_child(root_1, stream_element_options.next_tree)

            end

            stream_element_options.reset();

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 4
          # at line 305:7: '.' ( element_options )?
          char_literal142 = match(T__90, TOKENS_FOLLOWING_T__90_IN_terminal_2189) 
          if @state.backtracking == 0
            stream_T__90.add(char_literal142)
          end
          # at line 305:11: ( element_options )?
          alt_66 = 2
          look_66_0 = @input.peek(1)

          if (look_66_0 == T__88) 
            alt_66 = 1
          end
          case alt_66
          when 1
            # at line 305:11: element_options
            @state.following.push(TOKENS_FOLLOWING_element_options_IN_terminal_2191)
            element_options143 = element_options
            @state.following.pop
            if @state.backtracking == 0
              stream_element_options.add(element_options143.tree)
            end

          end
          # AST Rewrite
          # elements: T__90, element_options
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

            root_0 = @adaptor.create_flat_list!
            # 305:35: -> ^( '.' ( element_options )? )
            # at line 305:38: ^( '.' ( element_options )? )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(stream_T__90.next_node, root_1)

            # at line 305:44: ( element_options )?
            if stream_element_options.has_next?
              @adaptor.add_child(root_1, stream_element_options.next_tree)

            end

            stream_element_options.reset();

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        end
        # at line 307:3: ( '^' -> ^( '^' $terminal) | '!' -> ^( '!' $terminal) )?
        alt_68 = 3
        look_68_0 = @input.peek(1)

        if (look_68_0 == ROOT) 
          alt_68 = 1
        elsif (look_68_0 == BANG) 
          alt_68 = 2
        end
        case alt_68
        when 1
          # at line 307:5: '^'
          char_literal144 = match(ROOT, TOKENS_FOLLOWING_ROOT_IN_terminal_2218) 
          if @state.backtracking == 0
            stream_ROOT.add(char_literal144)
          end
          # AST Rewrite
          # elements: ROOT, terminal
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

            root_0 = @adaptor.create_flat_list!
            # 307:15: -> ^( '^' $terminal)
            # at line 307:18: ^( '^' $terminal)
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(stream_ROOT.next_node, root_1)

            @adaptor.add_child(root_1, stream_return_value.next_tree)

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 2
          # at line 308:5: '!'
          char_literal145 = match(BANG, TOKENS_FOLLOWING_BANG_IN_terminal_2239) 
          if @state.backtracking == 0
            stream_BANG.add(char_literal145)
          end
          # AST Rewrite
          # elements: terminal, BANG
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

            root_0 = @adaptor.create_flat_list!
            # 308:15: -> ^( '!' $terminal)
            # at line 308:18: ^( '!' $terminal)
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(stream_BANG.next_node, root_1)

            @adaptor.add_child(root_1, stream_return_value.next_tree)

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
        # trace_out(__method__, 29)

      end
      
      return return_value
    end

    EbnfReturnValue = define_return_scope 

    # parser rule ebnf
    # 
    # (in samples/ANTLRv3Grammar.g)
    # 312:1: ebnf : block (op= '?' -> ^( OPTIONAL[$op] block ) | op= '*' -> ^( CLOSURE[$op] block ) | op= '+' -> ^( POSITIVE_CLOSURE[$op] block ) | '=>' -> { \n @grammar_type == COMBINED_GRAMMAR && $rule::name[0].between?(?A, ?Z)\n }? ^( SYNPRED[\"=>\"] block ) -> SYN_SEMPRED | -> block ) ;
    def ebnf
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 30)
      return_value = EbnfReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      op = nil
      string_literal147 = nil
      block146 = nil

      tree_for_op = nil
      tree_for_string_literal147 = nil
      stream_T__91 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__91")
      stream_T__92 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__92")
      stream_T__74 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__74")
      stream_T__86 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__86")
      stream_block = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule block")# - - - - @init action - - - -
       first_token = @input.look(1) 

      begin
        # at line 319:4: block (op= '?' -> ^( OPTIONAL[$op] block ) | op= '*' -> ^( CLOSURE[$op] block ) | op= '+' -> ^( POSITIVE_CLOSURE[$op] block ) | '=>' -> { \n @grammar_type == COMBINED_GRAMMAR && $rule::name[0].between?(?A, ?Z)\n }? ^( SYNPRED[\"=>\"] block ) -> SYN_SEMPRED | -> block )
        @state.following.push(TOKENS_FOLLOWING_block_IN_ebnf_2282)
        block146 = block
        @state.following.pop
        if @state.backtracking == 0
          stream_block.add(block146.tree)
        end
        # at line 320:3: (op= '?' -> ^( OPTIONAL[$op] block ) | op= '*' -> ^( CLOSURE[$op] block ) | op= '+' -> ^( POSITIVE_CLOSURE[$op] block ) | '=>' -> { \n @grammar_type == COMBINED_GRAMMAR && $rule::name[0].between?(?A, ?Z)\n }? ^( SYNPRED[\"=>\"] block ) -> SYN_SEMPRED | -> block )
        alt_69 = 5
        case look_69 = @input.peek(1)
        when T__91 then alt_69 = 1
        when T__74 then alt_69 = 2
        when T__92 then alt_69 = 3
        when T__86 then alt_69 = 4
        when SEMPRED, TREE_BEGIN, REWRITE, TOKEN_REF, STRING_LITERAL, CHAR_LITERAL, ACTION, RULE_REF, T__71, T__81, T__82, T__83, T__87, T__90 then alt_69 = 5
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          nvae = NoViableAlternative("", 69, 0)
          raise nvae
        end
        case alt_69
        when 1
          # at line 320:5: op= '?'
          op = match(T__91, TOKENS_FOLLOWING_T__91_IN_ebnf_2290) 
          if @state.backtracking == 0
            stream_T__91.add(op)
          end
          # AST Rewrite
          # elements: block
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

            root_0 = @adaptor.create_flat_list!
            # 320:12: -> ^( OPTIONAL[$op] block )
            # at line 320:15: ^( OPTIONAL[$op] block )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(@adaptor.create!(OPTIONAL, op), root_1)

            @adaptor.add_child(root_1, stream_block.next_tree)

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 2
          # at line 321:5: op= '*'
          op = match(T__74, TOKENS_FOLLOWING_T__74_IN_ebnf_2307) 
          if @state.backtracking == 0
            stream_T__74.add(op)
          end
          # AST Rewrite
          # elements: block
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

            root_0 = @adaptor.create_flat_list!
            # 321:12: -> ^( CLOSURE[$op] block )
            # at line 321:15: ^( CLOSURE[$op] block )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(@adaptor.create!(CLOSURE, op), root_1)

            @adaptor.add_child(root_1, stream_block.next_tree)

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 3
          # at line 322:5: op= '+'
          op = match(T__92, TOKENS_FOLLOWING_T__92_IN_ebnf_2324) 
          if @state.backtracking == 0
            stream_T__92.add(op)
          end
          # AST Rewrite
          # elements: block
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

            root_0 = @adaptor.create_flat_list!
            # 322:12: -> ^( POSITIVE_CLOSURE[$op] block )
            # at line 322:15: ^( POSITIVE_CLOSURE[$op] block )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(@adaptor.create!(POSITIVE_CLOSURE, op), root_1)

            @adaptor.add_child(root_1, stream_block.next_tree)

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 4
          # at line 323:7: '=>'
          string_literal147 = match(T__86, TOKENS_FOLLOWING_T__86_IN_ebnf_2341) 
          if @state.backtracking == 0
            stream_T__86.add(string_literal147)
          end
          # AST Rewrite
          # elements: block
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

            root_0 = @adaptor.create_flat_list!
            if  
              @grammar_type == COMBINED_GRAMMAR && @rule_stack[-1].name[0].between?(?A, ?Z)
                      
              # 324:6: -> { \n @grammar_type == COMBINED_GRAMMAR && $rule::name[0].between?(?A, ?Z)\n }? ^( SYNPRED[\"=>\"] block )
              # at line 328:9: ^( SYNPRED[\"=>\"] block )
              root_1 = @adaptor.create_flat_list!
              root_1 = @adaptor.become_root(@adaptor.create!(SYNPRED, "=>"), root_1)

              @adaptor.add_child(root_1, stream_block.next_tree)

              @adaptor.add_child(root_0, root_1)


            else 
              # 330:6: -> SYN_SEMPRED
              @adaptor.add_child(root_0, @adaptor.create_from_type!(SYN_SEMPRED, "SYN_SEMPRED"))

            end

            return_value.tree = root_0

          end
        when 5
          # at line 331:13: 
          # AST Rewrite
          # elements: block
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

            root_0 = @adaptor.create_flat_list!
            # 331:13: -> block
            @adaptor.add_child(root_0, stream_block.next_tree)



            return_value.tree = root_0

          end
        end
        # - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end# syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action

          	return_value.tree.token.line = first_token.line
          	return_value.tree.token.column = first_token.column

          # <-- action
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

    EbnfSuffixReturnValue = define_return_scope 

    # parser rule ebnf_suffix
    # 
    # (in samples/ANTLRv3Grammar.g)
    # 335:1: ebnf_suffix : ( '?' -> OPTIONAL[op] | '*' -> CLOSURE[op] | '+' -> POSITIVE_CLOSURE[op] );
    def ebnf_suffix
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 31)
      return_value = EbnfSuffixReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal148 = nil
      char_literal149 = nil
      char_literal150 = nil

      tree_for_char_literal148 = nil
      tree_for_char_literal149 = nil
      tree_for_char_literal150 = nil
      stream_T__91 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__91")
      stream_T__92 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__92")
      stream_T__74 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__74")
      # - - - - @init action - - - -

      	op = @input.look(1)


      begin
        # at line 339:2: ( '?' -> OPTIONAL[op] | '*' -> CLOSURE[op] | '+' -> POSITIVE_CLOSURE[op] )
        alt_70 = 3
        case look_70 = @input.peek(1)
        when T__91 then alt_70 = 1
        when T__74 then alt_70 = 2
        when T__92 then alt_70 = 3
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          nvae = NoViableAlternative("", 70, 0)
          raise nvae
        end
        case alt_70
        when 1
          # at line 339:4: '?'
          char_literal148 = match(T__91, TOKENS_FOLLOWING_T__91_IN_ebnf_suffix_2426) 
          if @state.backtracking == 0
            stream_T__91.add(char_literal148)
          end
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
            # 339:8: -> OPTIONAL[op]
            @adaptor.add_child(root_0, @adaptor.create!(OPTIONAL, op))



            return_value.tree = root_0

          end
        when 2
          # at line 340:6: '*'
          char_literal149 = match(T__74, TOKENS_FOLLOWING_T__74_IN_ebnf_suffix_2438) 
          if @state.backtracking == 0
            stream_T__74.add(char_literal149)
          end
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
            # 340:10: -> CLOSURE[op]
            @adaptor.add_child(root_0, @adaptor.create!(CLOSURE, op))



            return_value.tree = root_0

          end
        when 3
          # at line 341:7: '+'
          char_literal150 = match(T__92, TOKENS_FOLLOWING_T__92_IN_ebnf_suffix_2451) 
          if @state.backtracking == 0
            stream_T__92.add(char_literal150)
          end
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
            # 341:11: -> POSITIVE_CLOSURE[op]
            @adaptor.add_child(root_0, @adaptor.create!(POSITIVE_CLOSURE, op))



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
        # trace_out(__method__, 31)

      end
      
      return return_value
    end

    RewriteReturnValue = define_return_scope 

    # parser rule rewrite
    # 
    # (in samples/ANTLRv3Grammar.g)
    # 348:1: rewrite : ( (rew+= '->' preds+= SEMPRED predicated+= rewrite_alternative )* rew2= '->' last= rewrite_alternative -> ( ^( $rew $preds $predicated) )* ^( $rew2 $last) | );
    def rewrite
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 32)
      return_value = RewriteReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      rew2 = nil
      rew = nil
      preds = nil
      list_of_rew = []
      list_of_preds = []
      list_of_predicated = []
      last = nil
      predicated = nil
      predicated = nil

      tree_for_rew2 = nil
      tree_for_rew = nil
      tree_for_preds = nil
      stream_SEMPRED = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token SEMPRED")
      stream_REWRITE = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token REWRITE")
      stream_rewrite_alternative = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule rewrite_alternative")# - - - - @init action - - - -

      	first_token = @input.look(1)


      begin
        # at line 352:2: ( (rew+= '->' preds+= SEMPRED predicated+= rewrite_alternative )* rew2= '->' last= rewrite_alternative -> ( ^( $rew $preds $predicated) )* ^( $rew2 $last) | )
        alt_72 = 2
        look_72_0 = @input.peek(1)

        if (look_72_0 == REWRITE) 
          alt_72 = 1
        elsif (look_72_0 == T__71 || look_72_0.between?(T__82, T__83)) 
          alt_72 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 72, 0)
          raise nvae
        end
        case alt_72
        when 1
          # at line 352:4: (rew+= '->' preds+= SEMPRED predicated+= rewrite_alternative )* rew2= '->' last= rewrite_alternative
          # at line 352:4: (rew+= '->' preds+= SEMPRED predicated+= rewrite_alternative )*
          loop do  #loop 71
            alt_71 = 2
            look_71_0 = @input.peek(1)

            if (look_71_0 == REWRITE) 
              look_71_1 = @input.peek(2)

              if (look_71_1 == SEMPRED) 
                alt_71 = 1

              end

            end
            case alt_71
            when 1
              # at line 352:5: rew+= '->' preds+= SEMPRED predicated+= rewrite_alternative
              rew = match(REWRITE, TOKENS_FOLLOWING_REWRITE_IN_rewrite_2480) 
              if @state.backtracking == 0
                stream_REWRITE.add(rew)
              end
              list_of_rew << rew

              preds = match(SEMPRED, TOKENS_FOLLOWING_SEMPRED_IN_rewrite_2484) 
              if @state.backtracking == 0
                stream_SEMPRED.add(preds)
              end
              list_of_preds << preds

              @state.following.push(TOKENS_FOLLOWING_rewrite_alternative_IN_rewrite_2488)
              predicated = rewrite_alternative
              @state.following.pop
              if @state.backtracking == 0
                stream_rewrite_alternative.add(predicated.tree)
              end
              list_of_predicated << predicated.tree


            else
              break #loop 71
            end
          end
          rew2 = match(REWRITE, TOKENS_FOLLOWING_REWRITE_IN_rewrite_2496) 
          if @state.backtracking == 0
            stream_REWRITE.add(rew2)
          end
          @state.following.push(TOKENS_FOLLOWING_rewrite_alternative_IN_rewrite_2500)
          last = rewrite_alternative
          @state.following.pop
          if @state.backtracking == 0
            stream_rewrite_alternative.add(last.tree)
          end
          # AST Rewrite
          # elements: predicated, rew, last, preds, rew2
          # token labels: rew2
          # rule labels: return_value, last
          # token list labels: rew, preds
          # rule list labels: predicated
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_rew2 = token_stream("token rew2", rew2)
            stream_rew = token_stream("token rew", list_of_rew)
            stream_preds = token_stream("token preds", list_of_preds)
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")
            stream_last = last ? subtree_stream("rule last", last.tree) : subtree_stream("token last")
            stream_predicated = subtree_stream("token predicated", list_of_predicated)
            root_0 = @adaptor.create_flat_list!
            # 354:9: -> ( ^( $rew $preds $predicated) )* ^( $rew2 $last)
            # at line 354:12: ( ^( $rew $preds $predicated) )*
            while stream_predicated.has_next? || stream_rew.has_next? || stream_preds.has_next?
              # at line 354:12: ^( $rew $preds $predicated)
              root_1 = @adaptor.create_flat_list!
              root_1 = @adaptor.become_root(stream_rew.next_node, root_1)

              @adaptor.add_child(root_1, stream_preds.next_node)
              @adaptor.add_child(root_1, stream_predicated.next_tree)

              @adaptor.add_child(root_0, root_1)

            end

            stream_predicated.reset();
            stream_rew.reset();
            stream_preds.reset();
            # at line 354:40: ^( $rew2 $last)
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(stream_rew2.next_node, root_1)

            @adaptor.add_child(root_1, stream_last.next_tree)

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 2
          root_0 = @adaptor.create_flat_list!


          # at line 356:2: 

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
        # trace_out(__method__, 32)

      end
      
      return return_value
    end

    RewriteAlternativeReturnValue = define_return_scope 

    # parser rule rewrite_alternative
    # 
    # (in samples/ANTLRv3Grammar.g)
    # 358:1: rewrite_alternative options {backtrack=true; } : ( rewrite_template | rewrite_tree_alternative | -> ^( ALT[\"ALT\"] EPSILON[\"EPSILON\"] EOA[\"EOA\"] ) );
    def rewrite_alternative
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 33)
      return_value = RewriteAlternativeReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      rewrite_template151 = nil
      rewrite_tree_alternative152 = nil


      begin
        # at line 360:2: ( rewrite_template | rewrite_tree_alternative | -> ^( ALT[\"ALT\"] EPSILON[\"EPSILON\"] EOA[\"EOA\"] ) )
        alt_73 = 3
        alt_73 = @dfa73.predict(@input)
        case alt_73
        when 1
          root_0 = @adaptor.create_flat_list!


          # at line 360:4: rewrite_template
          @state.following.push(TOKENS_FOLLOWING_rewrite_template_IN_rewrite_alternative_2551)
          rewrite_template151 = rewrite_template
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, rewrite_template151.tree)
          end

        when 2
          root_0 = @adaptor.create_flat_list!


          # at line 361:4: rewrite_tree_alternative
          @state.following.push(TOKENS_FOLLOWING_rewrite_tree_alternative_IN_rewrite_alternative_2556)
          rewrite_tree_alternative152 = rewrite_tree_alternative
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, rewrite_tree_alternative152.tree)
          end

        when 3
          # at line 362:27: 
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
            # 362:27: -> ^( ALT[\"ALT\"] EPSILON[\"EPSILON\"] EOA[\"EOA\"] )
            # at line 362:30: ^( ALT[\"ALT\"] EPSILON[\"EPSILON\"] EOA[\"EOA\"] )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(@adaptor.create!(ALT, "ALT"), root_1)

            @adaptor.add_child(root_1, @adaptor.create!(EPSILON, "EPSILON"))
            @adaptor.add_child(root_1, @adaptor.create!(EOA, "EOA"))

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
        # trace_out(__method__, 33)

      end
      
      return return_value
    end

    RewriteTreeBlockReturnValue = define_return_scope 

    # parser rule rewrite_tree_block
    # 
    # (in samples/ANTLRv3Grammar.g)
    # 365:1: rewrite_tree_block : lp= '(' rewrite_tree_alternative ')' -> ^( BLOCK[$lp,\"BLOCK\"] rewrite_tree_alternative EOB[$lp,\"EOB\"] ) ;
    def rewrite_tree_block
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 34)
      return_value = RewriteTreeBlockReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      lp = nil
      char_literal154 = nil
      rewrite_tree_alternative153 = nil

      tree_for_lp = nil
      tree_for_char_literal154 = nil
      stream_T__81 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__81")
      stream_T__83 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__83")
      stream_rewrite_tree_alternative = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule rewrite_tree_alternative")
      begin
        # at line 366:9: lp= '(' rewrite_tree_alternative ')'
        lp = match(T__81, TOKENS_FOLLOWING_T__81_IN_rewrite_tree_block_2596) 
        if @state.backtracking == 0
          stream_T__81.add(lp)
        end
        @state.following.push(TOKENS_FOLLOWING_rewrite_tree_alternative_IN_rewrite_tree_block_2598)
        rewrite_tree_alternative153 = rewrite_tree_alternative
        @state.following.pop
        if @state.backtracking == 0
          stream_rewrite_tree_alternative.add(rewrite_tree_alternative153.tree)
        end
        char_literal154 = match(T__83, TOKENS_FOLLOWING_T__83_IN_rewrite_tree_block_2600) 
        if @state.backtracking == 0
          stream_T__83.add(char_literal154)
        end
        # AST Rewrite
        # elements: rewrite_tree_alternative
        # token labels: 
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 
        if @state.backtracking == 0

          return_value.tree = root_0
          stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

          root_0 = @adaptor.create_flat_list!
          # 367:6: -> ^( BLOCK[$lp,\"BLOCK\"] rewrite_tree_alternative EOB[$lp,\"EOB\"] )
          # at line 367:9: ^( BLOCK[$lp,\"BLOCK\"] rewrite_tree_alternative EOB[$lp,\"EOB\"] )
          root_1 = @adaptor.create_flat_list!
          root_1 = @adaptor.become_root(@adaptor.create!(BLOCK, lp, "BLOCK"), root_1)

          @adaptor.add_child(root_1, stream_rewrite_tree_alternative.next_tree)
          @adaptor.add_child(root_1, @adaptor.create!(EOB, lp, "EOB"))

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
        # trace_out(__method__, 34)

      end
      
      return return_value
    end

    RewriteTreeAlternativeReturnValue = define_return_scope 

    # parser rule rewrite_tree_alternative
    # 
    # (in samples/ANTLRv3Grammar.g)
    # 370:1: rewrite_tree_alternative : ( rewrite_tree_element )+ -> ^( ALT[\"ALT\"] ( rewrite_tree_element )+ EOA[\"EOA\"] ) ;
    def rewrite_tree_alternative
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 35)
      return_value = RewriteTreeAlternativeReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      rewrite_tree_element155 = nil

      stream_rewrite_tree_element = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule rewrite_tree_element")
      begin
        # at line 371:7: ( rewrite_tree_element )+
        # at file 371:7: ( rewrite_tree_element )+
        match_count_74 = 0
        loop do
          alt_74 = 2
          look_74_0 = @input.peek(1)

          if (look_74_0 == TREE_BEGIN || look_74_0.between?(TOKEN_REF, ACTION) || look_74_0 == RULE_REF || look_74_0 == T__81 || look_74_0 == T__93) 
            alt_74 = 1

          end
          case alt_74
          when 1
            # at line 371:7: rewrite_tree_element
            @state.following.push(TOKENS_FOLLOWING_rewrite_tree_element_IN_rewrite_tree_alternative_2634)
            rewrite_tree_element155 = rewrite_tree_element
            @state.following.pop
            if @state.backtracking == 0
              stream_rewrite_tree_element.add(rewrite_tree_element155.tree)
            end

          else
            match_count_74 > 0 and break
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

            eee = EarlyExit(74)


            raise eee
          end
          match_count_74 += 1
        end

        # AST Rewrite
        # elements: rewrite_tree_element
        # token labels: 
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 
        if @state.backtracking == 0

          return_value.tree = root_0
          stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

          root_0 = @adaptor.create_flat_list!
          # 371:29: -> ^( ALT[\"ALT\"] ( rewrite_tree_element )+ EOA[\"EOA\"] )
          # at line 371:32: ^( ALT[\"ALT\"] ( rewrite_tree_element )+ EOA[\"EOA\"] )
          root_1 = @adaptor.create_flat_list!
          root_1 = @adaptor.become_root(@adaptor.create!(ALT, "ALT"), root_1)

          # at line 371:45: ( rewrite_tree_element )+
          unless stream_rewrite_tree_element.has_next?
            raise ANTLR3::RewriteEarlyExit
          end

          while stream_rewrite_tree_element.has_next?
            @adaptor.add_child(root_1, stream_rewrite_tree_element.next_tree)

          end

          stream_rewrite_tree_element.reset
          @adaptor.add_child(root_1, @adaptor.create!(EOA, "EOA"))

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
        # trace_out(__method__, 35)

      end
      
      return return_value
    end

    RewriteTreeElementReturnValue = define_return_scope 

    # parser rule rewrite_tree_element
    # 
    # (in samples/ANTLRv3Grammar.g)
    # 374:1: rewrite_tree_element : ( rewrite_tree_atom | rewrite_tree_atom ebnf_suffix -> ^( ebnf_suffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] rewrite_tree_atom EOA[\"EOA\"] ) EOB[\"EOB\"] ) ) | rewrite_tree ( ebnf_suffix -> ^( ebnf_suffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] rewrite_tree EOA[\"EOA\"] ) EOB[\"EOB\"] ) ) | -> rewrite_tree ) | rewrite_tree_ebnf );
    def rewrite_tree_element
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 36)
      return_value = RewriteTreeElementReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      rewrite_tree_atom156 = nil
      rewrite_tree_atom157 = nil
      ebnf_suffix158 = nil
      rewrite_tree159 = nil
      ebnf_suffix160 = nil
      rewrite_tree_ebnf161 = nil

      stream_rewrite_tree = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule rewrite_tree")
      stream_rewrite_tree_atom = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule rewrite_tree_atom")
      stream_ebnf_suffix = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule ebnf_suffix")
      begin
        # at line 375:2: ( rewrite_tree_atom | rewrite_tree_atom ebnf_suffix -> ^( ebnf_suffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] rewrite_tree_atom EOA[\"EOA\"] ) EOB[\"EOB\"] ) ) | rewrite_tree ( ebnf_suffix -> ^( ebnf_suffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] rewrite_tree EOA[\"EOA\"] ) EOB[\"EOB\"] ) ) | -> rewrite_tree ) | rewrite_tree_ebnf )
        alt_76 = 4
        alt_76 = @dfa76.predict(@input)
        case alt_76
        when 1
          root_0 = @adaptor.create_flat_list!


          # at line 375:4: rewrite_tree_atom
          @state.following.push(TOKENS_FOLLOWING_rewrite_tree_atom_IN_rewrite_tree_element_2662)
          rewrite_tree_atom156 = rewrite_tree_atom
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, rewrite_tree_atom156.tree)
          end

        when 2
          # at line 376:4: rewrite_tree_atom ebnf_suffix
          @state.following.push(TOKENS_FOLLOWING_rewrite_tree_atom_IN_rewrite_tree_element_2667)
          rewrite_tree_atom157 = rewrite_tree_atom
          @state.following.pop
          if @state.backtracking == 0
            stream_rewrite_tree_atom.add(rewrite_tree_atom157.tree)
          end
          @state.following.push(TOKENS_FOLLOWING_ebnf_suffix_IN_rewrite_tree_element_2669)
          ebnf_suffix158 = ebnf_suffix
          @state.following.pop
          if @state.backtracking == 0
            stream_ebnf_suffix.add(ebnf_suffix158.tree)
          end
          # AST Rewrite
          # elements: ebnf_suffix, rewrite_tree_atom
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

            root_0 = @adaptor.create_flat_list!
            # 377:3: -> ^( ebnf_suffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] rewrite_tree_atom EOA[\"EOA\"] ) EOB[\"EOB\"] ) )
            # at line 377:6: ^( ebnf_suffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] rewrite_tree_atom EOA[\"EOA\"] ) EOB[\"EOB\"] ) )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(stream_ebnf_suffix.next_node(), root_1)

            # at line 377:21: ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] rewrite_tree_atom EOA[\"EOA\"] ) EOB[\"EOB\"] )
            root_2 = @adaptor.create_flat_list!
            root_2 = @adaptor.become_root(@adaptor.create!(BLOCK, "BLOCK"), root_2)

            # at line 377:38: ^( ALT[\"ALT\"] rewrite_tree_atom EOA[\"EOA\"] )
            root_3 = @adaptor.create_flat_list!
            root_3 = @adaptor.become_root(@adaptor.create!(ALT, "ALT"), root_3)

            @adaptor.add_child(root_3, stream_rewrite_tree_atom.next_tree)
            @adaptor.add_child(root_3, @adaptor.create!(EOA, "EOA"))

            @adaptor.add_child(root_2, root_3)
            @adaptor.add_child(root_2, @adaptor.create!(EOB, "EOB"))

            @adaptor.add_child(root_1, root_2)

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 3
          # at line 378:6: rewrite_tree ( ebnf_suffix -> ^( ebnf_suffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] rewrite_tree EOA[\"EOA\"] ) EOB[\"EOB\"] ) ) | -> rewrite_tree )
          @state.following.push(TOKENS_FOLLOWING_rewrite_tree_IN_rewrite_tree_element_2703)
          rewrite_tree159 = rewrite_tree
          @state.following.pop
          if @state.backtracking == 0
            stream_rewrite_tree.add(rewrite_tree159.tree)
          end
          # at line 379:3: ( ebnf_suffix -> ^( ebnf_suffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] rewrite_tree EOA[\"EOA\"] ) EOB[\"EOB\"] ) ) | -> rewrite_tree )
          alt_75 = 2
          look_75_0 = @input.peek(1)

          if (look_75_0 == T__74 || look_75_0.between?(T__91, T__92)) 
            alt_75 = 1
          elsif (look_75_0 == EOF || look_75_0 == TREE_BEGIN || look_75_0 == REWRITE || look_75_0.between?(TOKEN_REF, ACTION) || look_75_0 == RULE_REF || look_75_0 == T__71 || look_75_0.between?(T__81, T__83) || look_75_0 == T__93) 
            alt_75 = 2
          else
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
          nvae = NoViableAlternative("", 75, 0)
            raise nvae
          end
          case alt_75
          when 1
            # at line 379:5: ebnf_suffix
            @state.following.push(TOKENS_FOLLOWING_ebnf_suffix_IN_rewrite_tree_element_2709)
            ebnf_suffix160 = ebnf_suffix
            @state.following.pop
            if @state.backtracking == 0
              stream_ebnf_suffix.add(ebnf_suffix160.tree)
            end
            # AST Rewrite
            # elements: rewrite_tree, ebnf_suffix
            # token labels: 
            # rule labels: return_value
            # token list labels: 
            # rule list labels: 
            # wildcard labels: 
            if @state.backtracking == 0

              return_value.tree = root_0
              stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

              root_0 = @adaptor.create_flat_list!
              # 380:4: -> ^( ebnf_suffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] rewrite_tree EOA[\"EOA\"] ) EOB[\"EOB\"] ) )
              # at line 380:7: ^( ebnf_suffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] rewrite_tree EOA[\"EOA\"] ) EOB[\"EOB\"] ) )
              root_1 = @adaptor.create_flat_list!
              root_1 = @adaptor.become_root(stream_ebnf_suffix.next_node(), root_1)

              # at line 380:21: ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] rewrite_tree EOA[\"EOA\"] ) EOB[\"EOB\"] )
              root_2 = @adaptor.create_flat_list!
              root_2 = @adaptor.become_root(@adaptor.create!(BLOCK, "BLOCK"), root_2)

              # at line 380:38: ^( ALT[\"ALT\"] rewrite_tree EOA[\"EOA\"] )
              root_3 = @adaptor.create_flat_list!
              root_3 = @adaptor.become_root(@adaptor.create!(ALT, "ALT"), root_3)

              @adaptor.add_child(root_3, stream_rewrite_tree.next_tree)
              @adaptor.add_child(root_3, @adaptor.create!(EOA, "EOA"))

              @adaptor.add_child(root_2, root_3)
              @adaptor.add_child(root_2, @adaptor.create!(EOB, "EOB"))

              @adaptor.add_child(root_1, root_2)

              @adaptor.add_child(root_0, root_1)



              return_value.tree = root_0

            end
          when 2
            # at line 381:5: 
            # AST Rewrite
            # elements: rewrite_tree
            # token labels: 
            # rule labels: return_value
            # token list labels: 
            # rule list labels: 
            # wildcard labels: 
            if @state.backtracking == 0

              return_value.tree = root_0
              stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

              root_0 = @adaptor.create_flat_list!
              # 381:5: -> rewrite_tree
              @adaptor.add_child(root_0, stream_rewrite_tree.next_tree)



              return_value.tree = root_0

            end
          end

        when 4
          root_0 = @adaptor.create_flat_list!


          # at line 383:6: rewrite_tree_ebnf
          @state.following.push(TOKENS_FOLLOWING_rewrite_tree_ebnf_IN_rewrite_tree_element_2755)
          rewrite_tree_ebnf161 = rewrite_tree_ebnf
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, rewrite_tree_ebnf161.tree)
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
        # trace_out(__method__, 36)

      end
      
      return return_value
    end

    RewriteTreeAtomReturnValue = define_return_scope 

    # parser rule rewrite_tree_atom
    # 
    # (in samples/ANTLRv3Grammar.g)
    # 386:1: rewrite_tree_atom : ( CHAR_LITERAL | TOKEN_REF ( ARG_ACTION )? -> ^( TOKEN_REF ( ARG_ACTION )? ) | RULE_REF | STRING_LITERAL | d= '$' id -> LABEL[$d,$id.text] | ACTION );
    def rewrite_tree_atom
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 37)
      return_value = RewriteTreeAtomReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      d = nil
      __CHAR_LITERAL162__ = nil
      __TOKEN_REF163__ = nil
      __ARG_ACTION164__ = nil
      __RULE_REF165__ = nil
      __STRING_LITERAL166__ = nil
      __ACTION168__ = nil
      id167 = nil

      tree_for_d = nil
      tree_for_CHAR_LITERAL162 = nil
      tree_for_TOKEN_REF163 = nil
      tree_for_ARG_ACTION164 = nil
      tree_for_RULE_REF165 = nil
      tree_for_STRING_LITERAL166 = nil
      tree_for_ACTION168 = nil
      stream_T__93 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__93")
      stream_TOKEN_REF = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token TOKEN_REF")
      stream_ARG_ACTION = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token ARG_ACTION")
      stream_id = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule id")
      begin
        # at line 387:5: ( CHAR_LITERAL | TOKEN_REF ( ARG_ACTION )? -> ^( TOKEN_REF ( ARG_ACTION )? ) | RULE_REF | STRING_LITERAL | d= '$' id -> LABEL[$d,$id.text] | ACTION )
        alt_78 = 6
        case look_78 = @input.peek(1)
        when CHAR_LITERAL then alt_78 = 1
        when TOKEN_REF then alt_78 = 2
        when RULE_REF then alt_78 = 3
        when STRING_LITERAL then alt_78 = 4
        when T__93 then alt_78 = 5
        when ACTION then alt_78 = 6
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          nvae = NoViableAlternative("", 78, 0)
          raise nvae
        end
        case alt_78
        when 1
          root_0 = @adaptor.create_flat_list!


          # at line 387:9: CHAR_LITERAL
          __CHAR_LITERAL162__ = match(CHAR_LITERAL, TOKENS_FOLLOWING_CHAR_LITERAL_IN_rewrite_tree_atom_2771)
          if @state.backtracking == 0

            tree_for_CHAR_LITERAL162 = @adaptor.create_with_payload!(__CHAR_LITERAL162__)
            @adaptor.add_child(root_0, tree_for_CHAR_LITERAL162)

          end

        when 2
          # at line 388:6: TOKEN_REF ( ARG_ACTION )?
          __TOKEN_REF163__ = match(TOKEN_REF, TOKENS_FOLLOWING_TOKEN_REF_IN_rewrite_tree_atom_2778) 
          if @state.backtracking == 0
            stream_TOKEN_REF.add(__TOKEN_REF163__)
          end
          # at line 388:16: ( ARG_ACTION )?
          alt_77 = 2
          look_77_0 = @input.peek(1)

          if (look_77_0 == ARG_ACTION) 
            alt_77 = 1
          end
          case alt_77
          when 1
            # at line 388:16: ARG_ACTION
            __ARG_ACTION164__ = match(ARG_ACTION, TOKENS_FOLLOWING_ARG_ACTION_IN_rewrite_tree_atom_2780) 
            if @state.backtracking == 0
              stream_ARG_ACTION.add(__ARG_ACTION164__)
            end

          end
          # AST Rewrite
          # elements: TOKEN_REF, ARG_ACTION
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

            root_0 = @adaptor.create_flat_list!
            # 388:28: -> ^( TOKEN_REF ( ARG_ACTION )? )
            # at line 388:31: ^( TOKEN_REF ( ARG_ACTION )? )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(stream_TOKEN_REF.next_node, root_1)

            # at line 388:43: ( ARG_ACTION )?
            if stream_ARG_ACTION.has_next?
              @adaptor.add_child(root_1, stream_ARG_ACTION.next_node)

            end

            stream_ARG_ACTION.reset();

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 3
          root_0 = @adaptor.create_flat_list!


          # at line 389:7: RULE_REF
          __RULE_REF165__ = match(RULE_REF, TOKENS_FOLLOWING_RULE_REF_IN_rewrite_tree_atom_2799)
          if @state.backtracking == 0

            tree_for_RULE_REF165 = @adaptor.create_with_payload!(__RULE_REF165__)
            @adaptor.add_child(root_0, tree_for_RULE_REF165)

          end

        when 4
          root_0 = @adaptor.create_flat_list!


          # at line 390:6: STRING_LITERAL
          __STRING_LITERAL166__ = match(STRING_LITERAL, TOKENS_FOLLOWING_STRING_LITERAL_IN_rewrite_tree_atom_2806)
          if @state.backtracking == 0

            tree_for_STRING_LITERAL166 = @adaptor.create_with_payload!(__STRING_LITERAL166__)
            @adaptor.add_child(root_0, tree_for_STRING_LITERAL166)

          end

        when 5
          # at line 391:6: d= '$' id
          d = match(T__93, TOKENS_FOLLOWING_T__93_IN_rewrite_tree_atom_2815) 
          if @state.backtracking == 0
            stream_T__93.add(d)
          end
          @state.following.push(TOKENS_FOLLOWING_id_IN_rewrite_tree_atom_2817)
          id167 = id
          @state.following.pop
          if @state.backtracking == 0
            stream_id.add(id167.tree)
          end
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
            # 391:15: -> LABEL[$d,$id.text]
            @adaptor.add_child(root_0, @adaptor.create!(LABEL, d, (id167.nil? ? nil : @input.to_s(id167.start,id167.stop))))



            return_value.tree = root_0

          end
        when 6
          root_0 = @adaptor.create_flat_list!


          # at line 392:4: ACTION
          __ACTION168__ = match(ACTION, TOKENS_FOLLOWING_ACTION_IN_rewrite_tree_atom_2828)
          if @state.backtracking == 0

            tree_for_ACTION168 = @adaptor.create_with_payload!(__ACTION168__)
            @adaptor.add_child(root_0, tree_for_ACTION168)

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

    RewriteTreeEbnfReturnValue = define_return_scope 

    # parser rule rewrite_tree_ebnf
    # 
    # (in samples/ANTLRv3Grammar.g)
    # 395:1: rewrite_tree_ebnf : rewrite_tree_block ebnf_suffix -> ^( ebnf_suffix rewrite_tree_block ) ;
    def rewrite_tree_ebnf
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 38)
      return_value = RewriteTreeEbnfReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      rewrite_tree_block169 = nil
      ebnf_suffix170 = nil

      stream_rewrite_tree_block = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule rewrite_tree_block")
      stream_ebnf_suffix = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule ebnf_suffix")# - - - - @init action - - - -

        first_token = @input.look(1)


      begin
        # at line 403:4: rewrite_tree_block ebnf_suffix
        @state.following.push(TOKENS_FOLLOWING_rewrite_tree_block_IN_rewrite_tree_ebnf_2849)
        rewrite_tree_block169 = rewrite_tree_block
        @state.following.pop
        if @state.backtracking == 0
          stream_rewrite_tree_block.add(rewrite_tree_block169.tree)
        end
        @state.following.push(TOKENS_FOLLOWING_ebnf_suffix_IN_rewrite_tree_ebnf_2851)
        ebnf_suffix170 = ebnf_suffix
        @state.following.pop
        if @state.backtracking == 0
          stream_ebnf_suffix.add(ebnf_suffix170.tree)
        end
        # AST Rewrite
        # elements: ebnf_suffix, rewrite_tree_block
        # token labels: 
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 
        if @state.backtracking == 0

          return_value.tree = root_0
          stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

          root_0 = @adaptor.create_flat_list!
          # 403:35: -> ^( ebnf_suffix rewrite_tree_block )
          # at line 403:38: ^( ebnf_suffix rewrite_tree_block )
          root_1 = @adaptor.create_flat_list!
          root_1 = @adaptor.become_root(stream_ebnf_suffix.next_node(), root_1)

          @adaptor.add_child(root_1, stream_rewrite_tree_block.next_tree)

          @adaptor.add_child(root_0, root_1)



          return_value.tree = root_0

        end# - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)

        if @state.backtracking == 0

          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)

        end# syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action

          	return_value.tree.token.line = first_token.line
          	return_value.tree.token.column = first_token.column

          # <-- action
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

    RewriteTreeReturnValue = define_return_scope 

    # parser rule rewrite_tree
    # 
    # (in samples/ANTLRv3Grammar.g)
    # 406:1: rewrite_tree : '^(' rewrite_tree_atom ( rewrite_tree_element )* ')' -> ^( TREE_BEGIN rewrite_tree_atom ( rewrite_tree_element )* ) ;
    def rewrite_tree
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 39)
      return_value = RewriteTreeReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      string_literal171 = nil
      char_literal174 = nil
      rewrite_tree_atom172 = nil
      rewrite_tree_element173 = nil

      tree_for_string_literal171 = nil
      tree_for_char_literal174 = nil
      stream_T__83 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__83")
      stream_TREE_BEGIN = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token TREE_BEGIN")
      stream_rewrite_tree_element = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule rewrite_tree_element")
      stream_rewrite_tree_atom = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule rewrite_tree_atom")
      begin
        # at line 407:4: '^(' rewrite_tree_atom ( rewrite_tree_element )* ')'
        string_literal171 = match(TREE_BEGIN, TOKENS_FOLLOWING_TREE_BEGIN_IN_rewrite_tree_2871) 
        if @state.backtracking == 0
          stream_TREE_BEGIN.add(string_literal171)
        end
        @state.following.push(TOKENS_FOLLOWING_rewrite_tree_atom_IN_rewrite_tree_2873)
        rewrite_tree_atom172 = rewrite_tree_atom
        @state.following.pop
        if @state.backtracking == 0
          stream_rewrite_tree_atom.add(rewrite_tree_atom172.tree)
        end
        # at line 407:27: ( rewrite_tree_element )*
        loop do  #loop 79
          alt_79 = 2
          look_79_0 = @input.peek(1)

          if (look_79_0 == TREE_BEGIN || look_79_0.between?(TOKEN_REF, ACTION) || look_79_0 == RULE_REF || look_79_0 == T__81 || look_79_0 == T__93) 
            alt_79 = 1

          end
          case alt_79
          when 1
            # at line 407:27: rewrite_tree_element
            @state.following.push(TOKENS_FOLLOWING_rewrite_tree_element_IN_rewrite_tree_2875)
            rewrite_tree_element173 = rewrite_tree_element
            @state.following.pop
            if @state.backtracking == 0
              stream_rewrite_tree_element.add(rewrite_tree_element173.tree)
            end

          else
            break #loop 79
          end
        end
        char_literal174 = match(T__83, TOKENS_FOLLOWING_T__83_IN_rewrite_tree_2878) 
        if @state.backtracking == 0
          stream_T__83.add(char_literal174)
        end
        # AST Rewrite
        # elements: rewrite_tree_element, rewrite_tree_atom
        # token labels: 
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 
        if @state.backtracking == 0

          return_value.tree = root_0
          stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

          root_0 = @adaptor.create_flat_list!
          # 408:3: -> ^( TREE_BEGIN rewrite_tree_atom ( rewrite_tree_element )* )
          # at line 408:6: ^( TREE_BEGIN rewrite_tree_atom ( rewrite_tree_element )* )
          root_1 = @adaptor.create_flat_list!
          root_1 = @adaptor.become_root(@adaptor.create_from_type!(TREE_BEGIN, "TREE_BEGIN"), root_1)

          @adaptor.add_child(root_1, stream_rewrite_tree_atom.next_tree)
          # at line 408:37: ( rewrite_tree_element )*
          while stream_rewrite_tree_element.has_next?
            @adaptor.add_child(root_1, stream_rewrite_tree_element.next_tree)

          end

          stream_rewrite_tree_element.reset();

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
        # trace_out(__method__, 39)

      end
      
      return return_value
    end

    RewriteTemplateReturnValue = define_return_scope 

    # parser rule rewrite_template
    # 
    # (in samples/ANTLRv3Grammar.g)
    # 411:1: rewrite_template : ( id lp= '(' rewrite_template_args ')' (str= DOUBLE_QUOTE_STRING_LITERAL | str= DOUBLE_ANGLE_STRING_LITERAL ) -> ^( TEMPLATE[$lp,\"TEMPLATE\"] id rewrite_template_args $str) | rewrite_template_ref | rewrite_indirect_template_head | ACTION );
    def rewrite_template
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 40)
      return_value = RewriteTemplateReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      lp = nil
      str = nil
      char_literal177 = nil
      __ACTION180__ = nil
      id175 = nil
      rewrite_template_args176 = nil
      rewrite_template_ref178 = nil
      rewrite_indirect_template_head179 = nil

      tree_for_lp = nil
      tree_for_str = nil
      tree_for_char_literal177 = nil
      tree_for_ACTION180 = nil
      stream_T__81 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__81")
      stream_T__83 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__83")
      stream_DOUBLE_QUOTE_STRING_LITERAL = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token DOUBLE_QUOTE_STRING_LITERAL")
      stream_DOUBLE_ANGLE_STRING_LITERAL = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token DOUBLE_ANGLE_STRING_LITERAL")
      stream_id = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule id")
      stream_rewrite_template_args = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule rewrite_template_args")
      begin
        # at line 423:2: ( id lp= '(' rewrite_template_args ')' (str= DOUBLE_QUOTE_STRING_LITERAL | str= DOUBLE_ANGLE_STRING_LITERAL ) -> ^( TEMPLATE[$lp,\"TEMPLATE\"] id rewrite_template_args $str) | rewrite_template_ref | rewrite_indirect_template_head | ACTION )
        alt_81 = 4
        alt_81 = @dfa81.predict(@input)
        case alt_81
        when 1
          # at line 424:3: id lp= '(' rewrite_template_args ')' (str= DOUBLE_QUOTE_STRING_LITERAL | str= DOUBLE_ANGLE_STRING_LITERAL )
          @state.following.push(TOKENS_FOLLOWING_id_IN_rewrite_template_2910)
          id175 = id
          @state.following.pop
          if @state.backtracking == 0
            stream_id.add(id175.tree)
          end
          lp = match(T__81, TOKENS_FOLLOWING_T__81_IN_rewrite_template_2914) 
          if @state.backtracking == 0
            stream_T__81.add(lp)
          end
          @state.following.push(TOKENS_FOLLOWING_rewrite_template_args_IN_rewrite_template_2916)
          rewrite_template_args176 = rewrite_template_args
          @state.following.pop
          if @state.backtracking == 0
            stream_rewrite_template_args.add(rewrite_template_args176.tree)
          end
          char_literal177 = match(T__83, TOKENS_FOLLOWING_T__83_IN_rewrite_template_2918) 
          if @state.backtracking == 0
            stream_T__83.add(char_literal177)
          end
          # at line 425:3: (str= DOUBLE_QUOTE_STRING_LITERAL | str= DOUBLE_ANGLE_STRING_LITERAL )
          alt_80 = 2
          look_80_0 = @input.peek(1)

          if (look_80_0 == DOUBLE_QUOTE_STRING_LITERAL) 
            alt_80 = 1
          elsif (look_80_0 == DOUBLE_ANGLE_STRING_LITERAL) 
            alt_80 = 2
          else
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
          nvae = NoViableAlternative("", 80, 0)
            raise nvae
          end
          case alt_80
          when 1
            # at line 425:5: str= DOUBLE_QUOTE_STRING_LITERAL
            str = match(DOUBLE_QUOTE_STRING_LITERAL, TOKENS_FOLLOWING_DOUBLE_QUOTE_STRING_LITERAL_IN_rewrite_template_2926) 
            if @state.backtracking == 0
              stream_DOUBLE_QUOTE_STRING_LITERAL.add(str)
            end

          when 2
            # at line 425:39: str= DOUBLE_ANGLE_STRING_LITERAL
            str = match(DOUBLE_ANGLE_STRING_LITERAL, TOKENS_FOLLOWING_DOUBLE_ANGLE_STRING_LITERAL_IN_rewrite_template_2932) 
            if @state.backtracking == 0
              stream_DOUBLE_ANGLE_STRING_LITERAL.add(str)
            end

          end
          # AST Rewrite
          # elements: str, rewrite_template_args, id
          # token labels: str
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_str = token_stream("token str", str)
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

            root_0 = @adaptor.create_flat_list!
            # 426:3: -> ^( TEMPLATE[$lp,\"TEMPLATE\"] id rewrite_template_args $str)
            # at line 426:6: ^( TEMPLATE[$lp,\"TEMPLATE\"] id rewrite_template_args $str)
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(@adaptor.create!(TEMPLATE, lp, "TEMPLATE"), root_1)

            @adaptor.add_child(root_1, stream_id.next_tree)
            @adaptor.add_child(root_1, stream_rewrite_template_args.next_tree)
            @adaptor.add_child(root_1, stream_str.next_node)

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 2
          root_0 = @adaptor.create_flat_list!


          # at line 429:3: rewrite_template_ref
          @state.following.push(TOKENS_FOLLOWING_rewrite_template_ref_IN_rewrite_template_2959)
          rewrite_template_ref178 = rewrite_template_ref
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, rewrite_template_ref178.tree)
          end

        when 3
          root_0 = @adaptor.create_flat_list!


          # at line 432:3: rewrite_indirect_template_head
          @state.following.push(TOKENS_FOLLOWING_rewrite_indirect_template_head_IN_rewrite_template_2968)
          rewrite_indirect_template_head179 = rewrite_indirect_template_head
          @state.following.pop
          if @state.backtracking == 0
            @adaptor.add_child(root_0, rewrite_indirect_template_head179.tree)
          end

        when 4
          root_0 = @adaptor.create_flat_list!


          # at line 435:3: ACTION
          __ACTION180__ = match(ACTION, TOKENS_FOLLOWING_ACTION_IN_rewrite_template_2977)
          if @state.backtracking == 0

            tree_for_ACTION180 = @adaptor.create_with_payload!(__ACTION180__)
            @adaptor.add_child(root_0, tree_for_ACTION180)

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
        # trace_out(__method__, 40)

      end
      
      return return_value
    end

    RewriteTemplateRefReturnValue = define_return_scope 

    # parser rule rewrite_template_ref
    # 
    # (in samples/ANTLRv3Grammar.g)
    # 438:1: rewrite_template_ref : id lp= '(' rewrite_template_args ')' -> ^( TEMPLATE[$lp,\"TEMPLATE\"] id rewrite_template_args ) ;
    def rewrite_template_ref
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 41)
      return_value = RewriteTemplateRefReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      lp = nil
      char_literal183 = nil
      id181 = nil
      rewrite_template_args182 = nil

      tree_for_lp = nil
      tree_for_char_literal183 = nil
      stream_T__81 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__81")
      stream_T__83 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__83")
      stream_id = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule id")
      stream_rewrite_template_args = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule rewrite_template_args")
      begin
        # at line 440:4: id lp= '(' rewrite_template_args ')'
        @state.following.push(TOKENS_FOLLOWING_id_IN_rewrite_template_ref_2990)
        id181 = id
        @state.following.pop
        if @state.backtracking == 0
          stream_id.add(id181.tree)
        end
        lp = match(T__81, TOKENS_FOLLOWING_T__81_IN_rewrite_template_ref_2994) 
        if @state.backtracking == 0
          stream_T__81.add(lp)
        end
        @state.following.push(TOKENS_FOLLOWING_rewrite_template_args_IN_rewrite_template_ref_2996)
        rewrite_template_args182 = rewrite_template_args
        @state.following.pop
        if @state.backtracking == 0
          stream_rewrite_template_args.add(rewrite_template_args182.tree)
        end
        char_literal183 = match(T__83, TOKENS_FOLLOWING_T__83_IN_rewrite_template_ref_2998) 
        if @state.backtracking == 0
          stream_T__83.add(char_literal183)
        end
        # AST Rewrite
        # elements: id, rewrite_template_args
        # token labels: 
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 
        if @state.backtracking == 0

          return_value.tree = root_0
          stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

          root_0 = @adaptor.create_flat_list!
          # 441:3: -> ^( TEMPLATE[$lp,\"TEMPLATE\"] id rewrite_template_args )
          # at line 441:6: ^( TEMPLATE[$lp,\"TEMPLATE\"] id rewrite_template_args )
          root_1 = @adaptor.create_flat_list!
          root_1 = @adaptor.become_root(@adaptor.create!(TEMPLATE, lp, "TEMPLATE"), root_1)

          @adaptor.add_child(root_1, stream_id.next_tree)
          @adaptor.add_child(root_1, stream_rewrite_template_args.next_tree)

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
        # trace_out(__method__, 41)

      end
      
      return return_value
    end

    RewriteIndirectTemplateHeadReturnValue = define_return_scope 

    # parser rule rewrite_indirect_template_head
    # 
    # (in samples/ANTLRv3Grammar.g)
    # 444:1: rewrite_indirect_template_head : lp= '(' ACTION ')' '(' rewrite_template_args ')' -> ^( TEMPLATE[$lp,\"TEMPLATE\"] ACTION rewrite_template_args ) ;
    def rewrite_indirect_template_head
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 42)
      return_value = RewriteIndirectTemplateHeadReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      lp = nil
      __ACTION184__ = nil
      char_literal185 = nil
      char_literal186 = nil
      char_literal188 = nil
      rewrite_template_args187 = nil

      tree_for_lp = nil
      tree_for_ACTION184 = nil
      tree_for_char_literal185 = nil
      tree_for_char_literal186 = nil
      tree_for_char_literal188 = nil
      stream_T__81 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__81")
      stream_T__83 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__83")
      stream_ACTION = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token ACTION")
      stream_rewrite_template_args = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule rewrite_template_args")
      begin
        # at line 446:4: lp= '(' ACTION ')' '(' rewrite_template_args ')'
        lp = match(T__81, TOKENS_FOLLOWING_T__81_IN_rewrite_indirect_template_head_3026) 
        if @state.backtracking == 0
          stream_T__81.add(lp)
        end
        __ACTION184__ = match(ACTION, TOKENS_FOLLOWING_ACTION_IN_rewrite_indirect_template_head_3028) 
        if @state.backtracking == 0
          stream_ACTION.add(__ACTION184__)
        end
        char_literal185 = match(T__83, TOKENS_FOLLOWING_T__83_IN_rewrite_indirect_template_head_3030) 
        if @state.backtracking == 0
          stream_T__83.add(char_literal185)
        end
        char_literal186 = match(T__81, TOKENS_FOLLOWING_T__81_IN_rewrite_indirect_template_head_3032) 
        if @state.backtracking == 0
          stream_T__81.add(char_literal186)
        end
        @state.following.push(TOKENS_FOLLOWING_rewrite_template_args_IN_rewrite_indirect_template_head_3034)
        rewrite_template_args187 = rewrite_template_args
        @state.following.pop
        if @state.backtracking == 0
          stream_rewrite_template_args.add(rewrite_template_args187.tree)
        end
        char_literal188 = match(T__83, TOKENS_FOLLOWING_T__83_IN_rewrite_indirect_template_head_3036) 
        if @state.backtracking == 0
          stream_T__83.add(char_literal188)
        end
        # AST Rewrite
        # elements: ACTION, rewrite_template_args
        # token labels: 
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 
        if @state.backtracking == 0

          return_value.tree = root_0
          stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

          root_0 = @adaptor.create_flat_list!
          # 447:3: -> ^( TEMPLATE[$lp,\"TEMPLATE\"] ACTION rewrite_template_args )
          # at line 447:6: ^( TEMPLATE[$lp,\"TEMPLATE\"] ACTION rewrite_template_args )
          root_1 = @adaptor.create_flat_list!
          root_1 = @adaptor.become_root(@adaptor.create!(TEMPLATE, lp, "TEMPLATE"), root_1)

          @adaptor.add_child(root_1, stream_ACTION.next_node)
          @adaptor.add_child(root_1, stream_rewrite_template_args.next_tree)

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
        # trace_out(__method__, 42)

      end
      
      return return_value
    end

    RewriteTemplateArgsReturnValue = define_return_scope 

    # parser rule rewrite_template_args
    # 
    # (in samples/ANTLRv3Grammar.g)
    # 450:1: rewrite_template_args : ( rewrite_template_arg ( ',' rewrite_template_arg )* -> ^( ARGLIST ( rewrite_template_arg )+ ) | -> ARGLIST );
    def rewrite_template_args
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 43)
      return_value = RewriteTemplateArgsReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal190 = nil
      rewrite_template_arg189 = nil
      rewrite_template_arg191 = nil

      tree_for_char_literal190 = nil
      stream_T__80 = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token T__80")
      stream_rewrite_template_arg = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule rewrite_template_arg")
      begin
        # at line 451:2: ( rewrite_template_arg ( ',' rewrite_template_arg )* -> ^( ARGLIST ( rewrite_template_arg )+ ) | -> ARGLIST )
        alt_83 = 2
        look_83_0 = @input.peek(1)

        if (look_83_0 == TOKEN_REF || look_83_0 == RULE_REF) 
          alt_83 = 1
        elsif (look_83_0 == T__83) 
          alt_83 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 83, 0)
          raise nvae
        end
        case alt_83
        when 1
          # at line 451:4: rewrite_template_arg ( ',' rewrite_template_arg )*
          @state.following.push(TOKENS_FOLLOWING_rewrite_template_arg_IN_rewrite_template_args_3060)
          rewrite_template_arg189 = rewrite_template_arg
          @state.following.pop
          if @state.backtracking == 0
            stream_rewrite_template_arg.add(rewrite_template_arg189.tree)
          end
          # at line 451:25: ( ',' rewrite_template_arg )*
          loop do  #loop 82
            alt_82 = 2
            look_82_0 = @input.peek(1)

            if (look_82_0 == T__80) 
              alt_82 = 1

            end
            case alt_82
            when 1
              # at line 451:26: ',' rewrite_template_arg
              char_literal190 = match(T__80, TOKENS_FOLLOWING_T__80_IN_rewrite_template_args_3063) 
              if @state.backtracking == 0
                stream_T__80.add(char_literal190)
              end
              @state.following.push(TOKENS_FOLLOWING_rewrite_template_arg_IN_rewrite_template_args_3065)
              rewrite_template_arg191 = rewrite_template_arg
              @state.following.pop
              if @state.backtracking == 0
                stream_rewrite_template_arg.add(rewrite_template_arg191.tree)
              end

            else
              break #loop 82
            end
          end
          # AST Rewrite
          # elements: rewrite_template_arg
          # token labels: 
          # rule labels: return_value
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          if @state.backtracking == 0

            return_value.tree = root_0
            stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

            root_0 = @adaptor.create_flat_list!
            # 452:3: -> ^( ARGLIST ( rewrite_template_arg )+ )
            # at line 452:6: ^( ARGLIST ( rewrite_template_arg )+ )
            root_1 = @adaptor.create_flat_list!
            root_1 = @adaptor.become_root(@adaptor.create_from_type!(ARGLIST, "ARGLIST"), root_1)

            # at line 452:16: ( rewrite_template_arg )+
            unless stream_rewrite_template_arg.has_next?
              raise ANTLR3::RewriteEarlyExit
            end

            while stream_rewrite_template_arg.has_next?
              @adaptor.add_child(root_1, stream_rewrite_template_arg.next_tree)

            end

            stream_rewrite_template_arg.reset

            @adaptor.add_child(root_0, root_1)



            return_value.tree = root_0

          end
        when 2
          # at line 453:4: 
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
            # 453:4: -> ARGLIST
            @adaptor.add_child(root_0, @adaptor.create_from_type!(ARGLIST, "ARGLIST"))



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
        # trace_out(__method__, 43)

      end
      
      return return_value
    end

    RewriteTemplateArgReturnValue = define_return_scope 

    # parser rule rewrite_template_arg
    # 
    # (in samples/ANTLRv3Grammar.g)
    # 456:1: rewrite_template_arg : id '=' ACTION -> ^( ARG[$id.start] id ACTION ) ;
    def rewrite_template_arg
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 44)
      return_value = RewriteTemplateArgReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal193 = nil
      __ACTION194__ = nil
      id192 = nil

      tree_for_char_literal193 = nil
      tree_for_ACTION194 = nil
      stream_LABEL_ASSIGN = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token LABEL_ASSIGN")
      stream_ACTION = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token ACTION")
      stream_id = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule id")
      begin
        # at line 457:6: id '=' ACTION
        @state.following.push(TOKENS_FOLLOWING_id_IN_rewrite_template_arg_3098)
        id192 = id
        @state.following.pop
        if @state.backtracking == 0
          stream_id.add(id192.tree)
        end
        char_literal193 = match(LABEL_ASSIGN, TOKENS_FOLLOWING_LABEL_ASSIGN_IN_rewrite_template_arg_3100) 
        if @state.backtracking == 0
          stream_LABEL_ASSIGN.add(char_literal193)
        end
        __ACTION194__ = match(ACTION, TOKENS_FOLLOWING_ACTION_IN_rewrite_template_arg_3102) 
        if @state.backtracking == 0
          stream_ACTION.add(__ACTION194__)
        end
        # AST Rewrite
        # elements: id, ACTION
        # token labels: 
        # rule labels: return_value
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 
        if @state.backtracking == 0

          return_value.tree = root_0
          stream_return_value = return_value ? subtree_stream("rule return_value", return_value.tree) : subtree_stream("token return_value")

          root_0 = @adaptor.create_flat_list!
          # 457:20: -> ^( ARG[$id.start] id ACTION )
          # at line 457:23: ^( ARG[$id.start] id ACTION )
          root_1 = @adaptor.create_flat_list!
          root_1 = @adaptor.become_root(@adaptor.create!(ARG, id192.start), root_1)

          @adaptor.add_child(root_1, stream_id.next_tree)
          @adaptor.add_child(root_1, stream_ACTION.next_node)

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
        # trace_out(__method__, 44)

      end
      
      return return_value
    end

    QidReturnValue = define_return_scope 

    # parser rule qid
    # 
    # (in samples/ANTLRv3Grammar.g)
    # 460:1: qid : id ( '.' id )* ;
    def qid
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 45)
      return_value = QidReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      char_literal196 = nil
      id195 = nil
      id197 = nil

      tree_for_char_literal196 = nil

      begin
        root_0 = @adaptor.create_flat_list!


        # at line 460:7: id ( '.' id )*
        @state.following.push(TOKENS_FOLLOWING_id_IN_qid_3123)
        id195 = id
        @state.following.pop
        if @state.backtracking == 0
          @adaptor.add_child(root_0, id195.tree)
        end
        # at line 460:10: ( '.' id )*
        loop do  #loop 84
          alt_84 = 2
          look_84_0 = @input.peek(1)

          if (look_84_0 == T__90) 
            alt_84 = 1

          end
          case alt_84
          when 1
            # at line 460:11: '.' id
            char_literal196 = match(T__90, TOKENS_FOLLOWING_T__90_IN_qid_3126)
            if @state.backtracking == 0

              tree_for_char_literal196 = @adaptor.create_with_payload!(char_literal196)
              @adaptor.add_child(root_0, tree_for_char_literal196)

            end
            @state.following.push(TOKENS_FOLLOWING_id_IN_qid_3128)
            id197 = id
            @state.following.pop
            if @state.backtracking == 0
              @adaptor.add_child(root_0, id197.tree)
            end

          else
            break #loop 84
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

    IdReturnValue = define_return_scope 

    # parser rule id
    # 
    # (in samples/ANTLRv3Grammar.g)
    # 462:1: id : ( TOKEN_REF -> ID[$TOKEN_REF] | RULE_REF -> ID[$RULE_REF] );
    def id
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 46)
      return_value = IdReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look

      root_0 = nil
      __TOKEN_REF198__ = nil
      __RULE_REF199__ = nil

      tree_for_TOKEN_REF198 = nil
      tree_for_RULE_REF199 = nil
      stream_RULE_REF = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token RULE_REF")
      stream_TOKEN_REF = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token TOKEN_REF")

      begin
        # at line 462:4: ( TOKEN_REF -> ID[$TOKEN_REF] | RULE_REF -> ID[$RULE_REF] )
        alt_85 = 2
        look_85_0 = @input.peek(1)

        if (look_85_0 == TOKEN_REF) 
          alt_85 = 1
        elsif (look_85_0 == RULE_REF) 
          alt_85 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 85, 0)
          raise nvae
        end
        case alt_85
        when 1
          # at line 463:4: TOKEN_REF
          __TOKEN_REF198__ = match(TOKEN_REF, TOKENS_FOLLOWING_TOKEN_REF_IN_id_3144) 
          if @state.backtracking == 0
            stream_TOKEN_REF.add(__TOKEN_REF198__)
          end
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
            # 463:14: -> ID[$TOKEN_REF]
            @adaptor.add_child(root_0, @adaptor.create!(ID, __TOKEN_REF198__))



            return_value.tree = root_0

          end
        when 2
          # at line 464:4: RULE_REF
          __RULE_REF199__ = match(RULE_REF, TOKENS_FOLLOWING_RULE_REF_IN_id_3154) 
          if @state.backtracking == 0
            stream_RULE_REF.add(__RULE_REF199__)
          end
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
            # 464:14: -> ID[$RULE_REF]
            @adaptor.add_child(root_0, @adaptor.create!(ID, __RULE_REF199__))



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
        # trace_out(__method__, 46)

      end
      
      return return_value
    end

    # parser rule synpred_1_antl_rv_3_grammar! (synpred1_ANTLRv3Grammar)
    # 
    # (in samples/ANTLRv3Grammar.g)
    # 360:4: synpred1_ANTLRv3Grammar : rewrite_template ;
    def synpred_1_antl_rv_3_grammar!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 47)

      # at line 360:4: rewrite_template
      @state.following.push(TOKENS_FOLLOWING_rewrite_template_IN_synpred1_ANTLRv3Grammar_2551)
      rewrite_template
      @state.following.pop

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 47)

    end
    # parser rule synpred_2_antl_rv_3_grammar! (synpred2_ANTLRv3Grammar)
    # 
    # (in samples/ANTLRv3Grammar.g)
    # 361:4: synpred2_ANTLRv3Grammar : rewrite_tree_alternative ;
    def synpred_2_antl_rv_3_grammar!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 48)

      # at line 361:4: rewrite_tree_alternative
      @state.following.push(TOKENS_FOLLOWING_rewrite_tree_alternative_IN_synpred2_ANTLRv3Grammar_2556)
      rewrite_tree_alternative
      @state.following.pop

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 48)

    end


    # - - - - - - - - - - DFA definitions - - - - - - - - - - -
    class DFA46 < ANTLR3::DFA
      EOT = unpack(12, -1)
      EOF = unpack(12, -1)
      MIN = unpack(3, 31, 5, -1, 2, 44, 2, -1)
      MAX = unpack(1, 90, 2, 92, 5, -1, 2, 90, 2, -1)
      ACCEPT = unpack(3, -1, 1, 3, 1, 4, 1, 5, 1, 6, 1, 7, 2, -1, 1, 2, 
                      1, 1)
      SPECIAL = unpack(12, -1)
      TRANSITION = [
        unpack(1, 6, 4, -1, 1, 7, 7, -1, 1, 1, 2, 3, 1, 5, 3, -1, 1, 2, 
               29, -1, 1, 4, 5, -1, 1, 3, 2, -1, 1, 3),
        unpack(1, 3, 4, -1, 4, 3, 1, -1, 1, 8, 1, 9, 1, -1, 4, 3, 2, -1, 
                2, 3, 19, -1, 1, 3, 2, -1, 1, 3, 6, -1, 3, 3, 3, -1, 2, 
                3, 1, -1, 3, 3),
        unpack(1, 3, 4, -1, 4, 3, 1, -1, 1, 8, 1, 9, 1, -1, 4, 3, 2, -1, 
                2, 3, 19, -1, 1, 3, 2, -1, 1, 3, 6, -1, 3, 3, 3, -1, 1, 
                3, 2, -1, 3, 3),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(3, 11, 4, -1, 1, 11, 29, -1, 1, 10, 5, -1, 1, 11, 2, -1, 
                1, 11),
        unpack(3, 11, 4, -1, 1, 11, 29, -1, 1, 10, 5, -1, 1, 11, 2, -1, 
                1, 11),
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
          232:1: element : ( id (labelOp= '=' | labelOp= '+=' ) atom ( ebnf_suffix -> ^( ebnf_suffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] ^( $labelOp id atom ) EOA[\"EOA\"] ) EOB[\"EOB\"] ) ) | -> ^( $labelOp id atom ) ) | id (labelOp= '=' | labelOp= '+=' ) block ( ebnf_suffix -> ^( ebnf_suffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] ^( $labelOp id block ) EOA[\"EOA\"] ) EOB[\"EOB\"] ) ) | -> ^( $labelOp id block ) ) | atom ( ebnf_suffix -> ^( ebnf_suffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] atom EOA[\"EOA\"] ) EOB[\"EOB\"] ) ) | -> atom ) | ebnf | ACTION | SEMPRED (g= '=>' -> GATED_SEMPRED[$g] | -> SEMPRED ) | tree_spec ( ebnf_suffix -> ^( ebnf_suffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] tree_spec EOA[\"EOA\"] ) EOB[\"EOB\"] ) ) | -> tree_spec ) );
        __dfa_description__
      end
    end
    class DFA73 < ANTLR3::DFA
      EOT = unpack(13, -1)
      EOF = unpack(13, -1)
      MIN = unpack(4, 36, 1, 0, 2, -1, 2, 36, 1, -1, 2, 36, 1, 74)
      MAX = unpack(4, 93, 1, 0, 2, -1, 2, 93, 1, -1, 2, 93, 1, 92)
      ACCEPT = unpack(5, -1, 1, 2, 1, 3, 2, -1, 1, 1, 3, -1)
      SPECIAL = unpack(4, -1, 1, 0, 8, -1)
      TRANSITION = [
        unpack(1, 5, 2, -1, 1, 6, 4, -1, 1, 1, 2, 5, 1, 4, 3, -1, 1, 2, 
               19, -1, 1, 6, 9, -1, 1, 3, 2, 6, 9, -1, 1, 5),
        unpack(1, 5, 2, -1, 1, 5, 4, -1, 4, 5, 2, -1, 2, 5, 19, -1, 1, 
                5, 2, -1, 1, 5, 6, -1, 1, 7, 2, 5, 7, -1, 3, 5),
        unpack(1, 5, 2, -1, 1, 5, 4, -1, 4, 5, 3, -1, 1, 5, 19, -1, 1, 
                5, 2, -1, 1, 5, 6, -1, 1, 7, 2, 5, 7, -1, 3, 5),
        unpack(1, 5, 7, -1, 3, 5, 1, 8, 3, -1, 1, 5, 29, -1, 1, 5, 11, 
                -1, 1, 5),
        unpack(1, -1),
        unpack(),
        unpack(),
        unpack(1, 5, 7, -1, 1, 10, 3, 5, 3, -1, 1, 11, 29, -1, 1, 5, 1, 
                -1, 1, 9, 9, -1, 1, 5),
        unpack(1, 5, 7, -1, 4, 5, 3, -1, 1, 5, 22, -1, 1, 5, 6, -1, 1, 
                5, 1, -1, 1, 12, 7, -1, 3, 5),
        unpack(),
        unpack(1, 5, 4, -1, 1, 9, 2, -1, 4, 5, 2, -1, 2, 5, 22, -1, 1, 
                5, 6, -1, 1, 5, 1, -1, 1, 5, 7, -1, 3, 5),
        unpack(1, 5, 4, -1, 1, 9, 2, -1, 4, 5, 3, -1, 1, 5, 22, -1, 1, 
                5, 6, -1, 1, 5, 1, -1, 1, 5, 7, -1, 3, 5),
        unpack(1, 5, 6, -1, 1, 9, 9, -1, 2, 5)
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 73
      

      def description
        <<-'__dfa_description__'.strip!
          358:1: rewrite_alternative options {backtrack=true; } : ( rewrite_template | rewrite_tree_alternative | -> ^( ALT[\"ALT\"] EPSILON[\"EPSILON\"] EOA[\"EOA\"] ) );
        __dfa_description__
      end
    end
    class DFA76 < ANTLR3::DFA
      EOT = unpack(14, -1)
      EOF = unpack(1, -1, 4, 10, 1, -1, 1, 10, 4, -1, 3, 10)
      MIN = unpack(5, 36, 1, 44, 1, 36, 4, -1, 3, 36)
      MAX = unpack(5, 93, 1, 51, 1, 93, 4, -1, 3, 93)
      ACCEPT = unpack(7, -1, 1, 3, 1, 4, 1, 2, 1, 1, 3, -1)
      SPECIAL = unpack(14, -1)
      TRANSITION = [
        unpack(1, 7, 7, -1, 1, 2, 1, 4, 1, 1, 1, 6, 3, -1, 1, 3, 29, -1, 
               1, 8, 11, -1, 1, 5),
        unpack(1, 10, 2, -1, 1, 10, 4, -1, 4, 10, 3, -1, 1, 10, 19, -1, 
                1, 10, 2, -1, 1, 9, 6, -1, 3, 10, 7, -1, 2, 9, 1, 10),
        unpack(1, 10, 2, -1, 1, 10, 4, -1, 4, 10, 2, -1, 1, 11, 1, 10, 
                19, -1, 1, 10, 2, -1, 1, 9, 6, -1, 3, 10, 7, -1, 2, 9, 1, 
                10),
        unpack(1, 10, 2, -1, 1, 10, 4, -1, 4, 10, 3, -1, 1, 10, 19, -1, 
                1, 10, 2, -1, 1, 9, 6, -1, 3, 10, 7, -1, 2, 9, 1, 10),
        unpack(1, 10, 2, -1, 1, 10, 4, -1, 4, 10, 3, -1, 1, 10, 19, -1, 
                1, 10, 2, -1, 1, 9, 6, -1, 3, 10, 7, -1, 2, 9, 1, 10),
        unpack(1, 12, 6, -1, 1, 13),
        unpack(1, 10, 2, -1, 1, 10, 4, -1, 4, 10, 3, -1, 1, 10, 19, -1, 
                1, 10, 2, -1, 1, 9, 6, -1, 3, 10, 7, -1, 2, 9, 1, 10),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(1, 10, 2, -1, 1, 10, 4, -1, 4, 10, 3, -1, 1, 10, 19, -1, 
                1, 10, 2, -1, 1, 9, 6, -1, 3, 10, 7, -1, 2, 9, 1, 10),
        unpack(1, 10, 2, -1, 1, 10, 4, -1, 4, 10, 3, -1, 1, 10, 19, -1, 
                1, 10, 2, -1, 1, 9, 6, -1, 3, 10, 7, -1, 2, 9, 1, 10),
        unpack(1, 10, 2, -1, 1, 10, 4, -1, 4, 10, 3, -1, 1, 10, 19, -1, 
                1, 10, 2, -1, 1, 9, 6, -1, 3, 10, 7, -1, 2, 9, 1, 10)
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 76
      

      def description
        <<-'__dfa_description__'.strip!
          374:1: rewrite_tree_element : ( rewrite_tree_atom | rewrite_tree_atom ebnf_suffix -> ^( ebnf_suffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] rewrite_tree_atom EOA[\"EOA\"] ) EOB[\"EOB\"] ) ) | rewrite_tree ( ebnf_suffix -> ^( ebnf_suffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] rewrite_tree EOA[\"EOA\"] ) EOB[\"EOB\"] ) ) | -> rewrite_tree ) | rewrite_tree_ebnf );
        __dfa_description__
      end
    end
    class DFA81 < ANTLR3::DFA
      EOT = unpack(18, -1)
      EOF = unpack(8, -1, 1, 10, 9, -1)
      MIN = unpack(1, 44, 2, 81, 2, -1, 1, 44, 2, 41, 1, 39, 1, 47, 2, -1, 
                   1, 80, 1, 44, 2, 41, 1, 47, 1, 80)
      MAX = unpack(3, 81, 2, -1, 1, 83, 2, 41, 1, 83, 1, 47, 2, -1, 1, 83, 
                   1, 51, 2, 41, 1, 47, 1, 83)
      ACCEPT = unpack(3, -1, 1, 3, 1, 4, 5, -1, 1, 2, 1, 1, 6, -1)
      SPECIAL = unpack(18, -1)
      TRANSITION = [
        unpack(1, 1, 2, -1, 1, 4, 3, -1, 1, 2, 29, -1, 1, 3),
        unpack(1, 5),
        unpack(1, 5),
        unpack(),
        unpack(),
        unpack(1, 6, 6, -1, 1, 7, 31, -1, 1, 8),
        unpack(1, 9),
        unpack(1, 9),
        unpack(1, 10, 12, -1, 2, 11, 17, -1, 1, 10, 10, -1, 2, 10),
        unpack(1, 12),
        unpack(),
        unpack(),
        unpack(1, 13, 2, -1, 1, 8),
        unpack(1, 14, 6, -1, 1, 15),
        unpack(1, 16),
        unpack(1, 16),
        unpack(1, 17),
        unpack(1, 13, 2, -1, 1, 8)
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 81
      

      def description
        <<-'__dfa_description__'.strip!
          411:1: rewrite_template : ( id lp= '(' rewrite_template_args ')' (str= DOUBLE_QUOTE_STRING_LITERAL | str= DOUBLE_ANGLE_STRING_LITERAL ) -> ^( TEMPLATE[$lp,\"TEMPLATE\"] id rewrite_template_args $str) | rewrite_template_ref | rewrite_indirect_template_head | ACTION );
        __dfa_description__
      end
    end


    private

    def initialize_dfas
      super rescue nil
      @dfa46 = DFA46.new(self, 46)
      @dfa73 = DFA73.new(self, 73) do |s|
        case s
        when 0
          look_73_4 = @input.peek
          index_73_4 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_1_antl_rv_3_grammar!))
            s = 9
          elsif (syntactic_predicate?(:synpred_2_antl_rv_3_grammar!))
            s = 5
          end
           
          @input.seek(index_73_4)

        end
        
        if s < 0
          @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
          nva = ANTLR3::Error::NoViableAlternative.new(@dfa73.description, 73, s, input)
          @dfa73.error(nva)
          raise nva
        end
        
        s
      end
      @dfa76 = DFA76.new(self, 76)
      @dfa81 = DFA81.new(self, 81)

    end
    TOKENS_FOLLOWING_DOC_COMMENT_IN_grammar_def_295 = Set[67, 68, 69, 70]
    TOKENS_FOLLOWING_T__67_IN_grammar_def_305 = Set[70]
    TOKENS_FOLLOWING_T__68_IN_grammar_def_321 = Set[70]
    TOKENS_FOLLOWING_T__69_IN_grammar_def_333 = Set[70]
    TOKENS_FOLLOWING_T__70_IN_grammar_def_375 = Set[44, 51]
    TOKENS_FOLLOWING_id_IN_grammar_def_377 = Set[71]
    TOKENS_FOLLOWING_T__71_IN_grammar_def_379 = Set[4, 30, 35, 40, 43, 44, 48, 51, 75, 76, 77]
    TOKENS_FOLLOWING_options_spec_IN_grammar_def_381 = Set[4, 30, 35, 40, 43, 44, 48, 51, 75, 76, 77]
    TOKENS_FOLLOWING_tokens_spec_IN_grammar_def_384 = Set[4, 30, 35, 40, 43, 44, 48, 51, 75, 76, 77]
    TOKENS_FOLLOWING_attr_scope_IN_grammar_def_387 = Set[4, 30, 35, 40, 43, 44, 48, 51, 75, 76, 77]
    TOKENS_FOLLOWING_action_IN_grammar_def_390 = Set[4, 30, 35, 40, 43, 44, 48, 51, 75, 76, 77]
    TOKENS_FOLLOWING_rule_IN_grammar_def_398 = Set[4, 30, 35, 40, 43, 44, 48, 51, 75, 76, 77]
    TOKENS_FOLLOWING_EOF_IN_grammar_def_406 = Set[1]
    TOKENS_FOLLOWING_TOKENS_IN_tokens_spec_467 = Set[44]
    TOKENS_FOLLOWING_token_spec_IN_tokens_spec_469 = Set[44, 72]
    TOKENS_FOLLOWING_T__72_IN_tokens_spec_472 = Set[1]
    TOKENS_FOLLOWING_TOKEN_REF_IN_token_spec_492 = Set[41, 71]
    TOKENS_FOLLOWING_LABEL_ASSIGN_IN_token_spec_498 = Set[45, 46]
    TOKENS_FOLLOWING_STRING_LITERAL_IN_token_spec_503 = Set[71]
    TOKENS_FOLLOWING_CHAR_LITERAL_IN_token_spec_507 = Set[71]
    TOKENS_FOLLOWING_T__71_IN_token_spec_546 = Set[1]
    TOKENS_FOLLOWING_SCOPE_IN_attr_scope_557 = Set[44, 51]
    TOKENS_FOLLOWING_id_IN_attr_scope_559 = Set[47]
    TOKENS_FOLLOWING_ACTION_IN_attr_scope_561 = Set[1]
    TOKENS_FOLLOWING_AT_IN_action_584 = Set[44, 51, 67, 68]
    TOKENS_FOLLOWING_action_scope_name_IN_action_587 = Set[73]
    TOKENS_FOLLOWING_T__73_IN_action_589 = Set[44, 51]
    TOKENS_FOLLOWING_id_IN_action_593 = Set[47]
    TOKENS_FOLLOWING_ACTION_IN_action_595 = Set[1]
    TOKENS_FOLLOWING_id_IN_action_scope_name_621 = Set[1]
    TOKENS_FOLLOWING_T__67_IN_action_scope_name_628 = Set[1]
    TOKENS_FOLLOWING_T__68_IN_action_scope_name_643 = Set[1]
    TOKENS_FOLLOWING_OPTIONS_IN_options_spec_659 = Set[44, 51]
    TOKENS_FOLLOWING_option_IN_options_spec_662 = Set[71]
    TOKENS_FOLLOWING_T__71_IN_options_spec_664 = Set[44, 51, 72]
    TOKENS_FOLLOWING_T__72_IN_options_spec_668 = Set[1]
    TOKENS_FOLLOWING_id_IN_option_693 = Set[41]
    TOKENS_FOLLOWING_LABEL_ASSIGN_IN_option_695 = Set[44, 45, 46, 49, 51, 74]
    TOKENS_FOLLOWING_option_value_IN_option_697 = Set[1]
    TOKENS_FOLLOWING_qid_IN_option_value_726 = Set[1]
    TOKENS_FOLLOWING_STRING_LITERAL_IN_option_value_736 = Set[1]
    TOKENS_FOLLOWING_CHAR_LITERAL_IN_option_value_746 = Set[1]
    TOKENS_FOLLOWING_INT_IN_option_value_756 = Set[1]
    TOKENS_FOLLOWING_T__74_IN_option_value_766 = Set[1]
    TOKENS_FOLLOWING_DOC_COMMENT_IN_rule_791 = Set[35, 44, 51, 75, 76, 77]
    TOKENS_FOLLOWING_T__75_IN_rule_801 = Set[44, 51]
    TOKENS_FOLLOWING_T__76_IN_rule_803 = Set[44, 51]
    TOKENS_FOLLOWING_T__77_IN_rule_805 = Set[44, 51]
    TOKENS_FOLLOWING_FRAGMENT_IN_rule_807 = Set[44, 51]
    TOKENS_FOLLOWING_id_IN_rule_815 = Set[23, 30, 38, 40, 48, 50, 78, 79]
    TOKENS_FOLLOWING_BANG_IN_rule_821 = Set[23, 30, 40, 48, 50, 78, 79]
    TOKENS_FOLLOWING_ARG_ACTION_IN_rule_830 = Set[23, 30, 40, 48, 78, 79]
    TOKENS_FOLLOWING_RET_IN_rule_839 = Set[50]
    TOKENS_FOLLOWING_ARG_ACTION_IN_rule_843 = Set[30, 40, 48, 78, 79]
    TOKENS_FOLLOWING_throws_spec_IN_rule_851 = Set[30, 40, 48, 78]
    TOKENS_FOLLOWING_options_spec_IN_rule_854 = Set[30, 40, 78]
    TOKENS_FOLLOWING_rule_scope_spec_IN_rule_857 = Set[40, 78]
    TOKENS_FOLLOWING_rule_action_IN_rule_860 = Set[40, 78]
    TOKENS_FOLLOWING_T__78_IN_rule_865 = Set[31, 36, 39, 44, 45, 46, 47, 51, 81, 87, 90]
    TOKENS_FOLLOWING_alt_list_IN_rule_867 = Set[71]
    TOKENS_FOLLOWING_T__71_IN_rule_869 = Set[1, 84, 85]
    TOKENS_FOLLOWING_exception_group_IN_rule_873 = Set[1]
    TOKENS_FOLLOWING_AT_IN_rule_action_979 = Set[44, 51]
    TOKENS_FOLLOWING_id_IN_rule_action_981 = Set[47]
    TOKENS_FOLLOWING_ACTION_IN_rule_action_983 = Set[1]
    TOKENS_FOLLOWING_T__79_IN_throws_spec_1004 = Set[44, 51]
    TOKENS_FOLLOWING_id_IN_throws_spec_1006 = Set[1, 80]
    TOKENS_FOLLOWING_T__80_IN_throws_spec_1010 = Set[44, 51]
    TOKENS_FOLLOWING_id_IN_throws_spec_1012 = Set[1, 80]
    TOKENS_FOLLOWING_SCOPE_IN_rule_scope_spec_1035 = Set[47]
    TOKENS_FOLLOWING_ACTION_IN_rule_scope_spec_1037 = Set[1]
    TOKENS_FOLLOWING_SCOPE_IN_rule_scope_spec_1050 = Set[44, 51]
    TOKENS_FOLLOWING_id_IN_rule_scope_spec_1052 = Set[71, 80]
    TOKENS_FOLLOWING_T__80_IN_rule_scope_spec_1055 = Set[44, 51]
    TOKENS_FOLLOWING_id_IN_rule_scope_spec_1057 = Set[71, 80]
    TOKENS_FOLLOWING_T__71_IN_rule_scope_spec_1061 = Set[1]
    TOKENS_FOLLOWING_SCOPE_IN_rule_scope_spec_1075 = Set[47]
    TOKENS_FOLLOWING_ACTION_IN_rule_scope_spec_1077 = Set[30]
    TOKENS_FOLLOWING_SCOPE_IN_rule_scope_spec_1081 = Set[44, 51]
    TOKENS_FOLLOWING_id_IN_rule_scope_spec_1083 = Set[71, 80]
    TOKENS_FOLLOWING_T__80_IN_rule_scope_spec_1086 = Set[44, 51]
    TOKENS_FOLLOWING_id_IN_rule_scope_spec_1088 = Set[71, 80]
    TOKENS_FOLLOWING_T__71_IN_rule_scope_spec_1092 = Set[1]
    TOKENS_FOLLOWING_T__81_IN_block_1124 = Set[31, 36, 39, 44, 45, 46, 47, 48, 51, 78, 81, 87, 90]
    TOKENS_FOLLOWING_options_spec_IN_block_1133 = Set[78]
    TOKENS_FOLLOWING_T__78_IN_block_1137 = Set[31, 36, 39, 44, 45, 46, 47, 51, 81, 87, 90]
    TOKENS_FOLLOWING_altpair_IN_block_1144 = Set[82, 83]
    TOKENS_FOLLOWING_T__82_IN_block_1148 = Set[31, 36, 39, 44, 45, 46, 47, 51, 81, 87, 90]
    TOKENS_FOLLOWING_altpair_IN_block_1150 = Set[82, 83]
    TOKENS_FOLLOWING_T__83_IN_block_1165 = Set[1]
    TOKENS_FOLLOWING_alternative_IN_altpair_1204 = Set[39]
    TOKENS_FOLLOWING_rewrite_IN_altpair_1206 = Set[1]
    TOKENS_FOLLOWING_altpair_IN_alt_list_1226 = Set[1, 82]
    TOKENS_FOLLOWING_T__82_IN_alt_list_1230 = Set[31, 36, 39, 44, 45, 46, 47, 51, 81, 87, 90]
    TOKENS_FOLLOWING_altpair_IN_alt_list_1232 = Set[1, 82]
    TOKENS_FOLLOWING_element_IN_alternative_1273 = Set[1, 31, 36, 44, 45, 46, 47, 51, 81, 87, 90]
    TOKENS_FOLLOWING_exception_handler_IN_exception_group_1322 = Set[1, 84, 85]
    TOKENS_FOLLOWING_finally_clause_IN_exception_group_1329 = Set[1]
    TOKENS_FOLLOWING_finally_clause_IN_exception_group_1337 = Set[1]
    TOKENS_FOLLOWING_T__84_IN_exception_handler_1350 = Set[50]
    TOKENS_FOLLOWING_ARG_ACTION_IN_exception_handler_1352 = Set[47]
    TOKENS_FOLLOWING_ACTION_IN_exception_handler_1354 = Set[1]
    TOKENS_FOLLOWING_T__85_IN_finally_clause_1377 = Set[47]
    TOKENS_FOLLOWING_ACTION_IN_finally_clause_1379 = Set[1]
    TOKENS_FOLLOWING_id_IN_element_1399 = Set[41, 42]
    TOKENS_FOLLOWING_LABEL_ASSIGN_IN_element_1404 = Set[44, 45, 46, 51, 87, 90]
    TOKENS_FOLLOWING_LIST_LABEL_ASSIGN_IN_element_1408 = Set[44, 45, 46, 51, 87, 90]
    TOKENS_FOLLOWING_atom_IN_element_1411 = Set[1, 74, 91, 92]
    TOKENS_FOLLOWING_ebnf_suffix_IN_element_1417 = Set[1]
    TOKENS_FOLLOWING_id_IN_element_1476 = Set[41, 42]
    TOKENS_FOLLOWING_LABEL_ASSIGN_IN_element_1481 = Set[81]
    TOKENS_FOLLOWING_LIST_LABEL_ASSIGN_IN_element_1485 = Set[81]
    TOKENS_FOLLOWING_block_IN_element_1488 = Set[1, 74, 91, 92]
    TOKENS_FOLLOWING_ebnf_suffix_IN_element_1494 = Set[1]
    TOKENS_FOLLOWING_atom_IN_element_1553 = Set[1, 74, 91, 92]
    TOKENS_FOLLOWING_ebnf_suffix_IN_element_1559 = Set[1]
    TOKENS_FOLLOWING_ebnf_IN_element_1605 = Set[1]
    TOKENS_FOLLOWING_ACTION_IN_element_1612 = Set[1]
    TOKENS_FOLLOWING_SEMPRED_IN_element_1619 = Set[1, 86]
    TOKENS_FOLLOWING_T__86_IN_element_1625 = Set[1]
    TOKENS_FOLLOWING_tree_spec_IN_element_1645 = Set[1, 74, 91, 92]
    TOKENS_FOLLOWING_ebnf_suffix_IN_element_1651 = Set[1]
    TOKENS_FOLLOWING_terminal_IN_atom_1703 = Set[1]
    TOKENS_FOLLOWING_range_IN_atom_1708 = Set[1, 37, 38]
    TOKENS_FOLLOWING_ROOT_IN_atom_1718 = Set[1]
    TOKENS_FOLLOWING_BANG_IN_atom_1722 = Set[1]
    TOKENS_FOLLOWING_not_set_IN_atom_1756 = Set[1, 37, 38]
    TOKENS_FOLLOWING_ROOT_IN_atom_1765 = Set[1]
    TOKENS_FOLLOWING_BANG_IN_atom_1769 = Set[1]
    TOKENS_FOLLOWING_RULE_REF_IN_atom_1805 = Set[1, 37, 38, 50]
    TOKENS_FOLLOWING_ARG_ACTION_IN_atom_1807 = Set[1, 37, 38]
    TOKENS_FOLLOWING_ROOT_IN_atom_1817 = Set[1]
    TOKENS_FOLLOWING_BANG_IN_atom_1821 = Set[1]
    TOKENS_FOLLOWING_T__87_IN_not_set_1869 = Set[44, 45, 46, 81]
    TOKENS_FOLLOWING_not_terminal_IN_not_set_1875 = Set[1, 88]
    TOKENS_FOLLOWING_element_options_IN_not_set_1877 = Set[1]
    TOKENS_FOLLOWING_block_IN_not_set_1895 = Set[1, 88]
    TOKENS_FOLLOWING_element_options_IN_not_set_1897 = Set[1]
    TOKENS_FOLLOWING_set_IN_not_terminal_0 = Set[1]
    TOKENS_FOLLOWING_T__88_IN_element_options_1949 = Set[44, 51]
    TOKENS_FOLLOWING_qid_IN_element_options_1951 = Set[89]
    TOKENS_FOLLOWING_T__89_IN_element_options_1953 = Set[1]
    TOKENS_FOLLOWING_T__88_IN_element_options_1971 = Set[44, 51]
    TOKENS_FOLLOWING_option_IN_element_options_1973 = Set[71, 89]
    TOKENS_FOLLOWING_T__71_IN_element_options_1976 = Set[44, 51]
    TOKENS_FOLLOWING_option_IN_element_options_1978 = Set[71, 89]
    TOKENS_FOLLOWING_T__89_IN_element_options_1982 = Set[1]
    TOKENS_FOLLOWING_id_IN_element_option_2002 = Set[41]
    TOKENS_FOLLOWING_LABEL_ASSIGN_IN_element_option_2004 = Set[44, 45, 46, 49, 51, 74]
    TOKENS_FOLLOWING_option_value_IN_element_option_2006 = Set[1]
    TOKENS_FOLLOWING_TREE_BEGIN_IN_tree_spec_2028 = Set[31, 36, 44, 45, 46, 47, 51, 81, 87, 90]
    TOKENS_FOLLOWING_element_IN_tree_spec_2030 = Set[31, 36, 44, 45, 46, 47, 51, 81, 87, 90]
    TOKENS_FOLLOWING_element_IN_tree_spec_2034 = Set[31, 36, 44, 45, 46, 47, 51, 81, 83, 87, 90]
    TOKENS_FOLLOWING_T__83_IN_tree_spec_2039 = Set[1]
    TOKENS_FOLLOWING_CHAR_LITERAL_IN_range_2062 = Set[13]
    TOKENS_FOLLOWING_RANGE_IN_range_2064 = Set[46]
    TOKENS_FOLLOWING_CHAR_LITERAL_IN_range_2068 = Set[1, 88]
    TOKENS_FOLLOWING_element_options_IN_range_2070 = Set[1]
    TOKENS_FOLLOWING_CHAR_LITERAL_IN_terminal_2107 = Set[1, 37, 38, 88]
    TOKENS_FOLLOWING_element_options_IN_terminal_2109 = Set[1, 37, 38]
    TOKENS_FOLLOWING_TOKEN_REF_IN_terminal_2140 = Set[1, 37, 38, 50, 88]
    TOKENS_FOLLOWING_ARG_ACTION_IN_terminal_2142 = Set[1, 37, 38, 88]
    TOKENS_FOLLOWING_element_options_IN_terminal_2145 = Set[1, 37, 38]
    TOKENS_FOLLOWING_STRING_LITERAL_IN_terminal_2166 = Set[1, 37, 38, 88]
    TOKENS_FOLLOWING_element_options_IN_terminal_2168 = Set[1, 37, 38]
    TOKENS_FOLLOWING_T__90_IN_terminal_2189 = Set[1, 37, 38, 88]
    TOKENS_FOLLOWING_element_options_IN_terminal_2191 = Set[1, 37, 38]
    TOKENS_FOLLOWING_ROOT_IN_terminal_2218 = Set[1]
    TOKENS_FOLLOWING_BANG_IN_terminal_2239 = Set[1]
    TOKENS_FOLLOWING_block_IN_ebnf_2282 = Set[1, 74, 86, 91, 92]
    TOKENS_FOLLOWING_T__91_IN_ebnf_2290 = Set[1]
    TOKENS_FOLLOWING_T__74_IN_ebnf_2307 = Set[1]
    TOKENS_FOLLOWING_T__92_IN_ebnf_2324 = Set[1]
    TOKENS_FOLLOWING_T__86_IN_ebnf_2341 = Set[1]
    TOKENS_FOLLOWING_T__91_IN_ebnf_suffix_2426 = Set[1]
    TOKENS_FOLLOWING_T__74_IN_ebnf_suffix_2438 = Set[1]
    TOKENS_FOLLOWING_T__92_IN_ebnf_suffix_2451 = Set[1]
    TOKENS_FOLLOWING_REWRITE_IN_rewrite_2480 = Set[31]
    TOKENS_FOLLOWING_SEMPRED_IN_rewrite_2484 = Set[36, 39, 44, 45, 46, 47, 51, 81, 93]
    TOKENS_FOLLOWING_rewrite_alternative_IN_rewrite_2488 = Set[39]
    TOKENS_FOLLOWING_REWRITE_IN_rewrite_2496 = Set[36, 44, 45, 46, 47, 51, 81, 93]
    TOKENS_FOLLOWING_rewrite_alternative_IN_rewrite_2500 = Set[1]
    TOKENS_FOLLOWING_rewrite_template_IN_rewrite_alternative_2551 = Set[1]
    TOKENS_FOLLOWING_rewrite_tree_alternative_IN_rewrite_alternative_2556 = Set[1]
    TOKENS_FOLLOWING_T__81_IN_rewrite_tree_block_2596 = Set[36, 44, 45, 46, 47, 51, 81, 93]
    TOKENS_FOLLOWING_rewrite_tree_alternative_IN_rewrite_tree_block_2598 = Set[83]
    TOKENS_FOLLOWING_T__83_IN_rewrite_tree_block_2600 = Set[1]
    TOKENS_FOLLOWING_rewrite_tree_element_IN_rewrite_tree_alternative_2634 = Set[1, 36, 44, 45, 46, 47, 51, 81, 93]
    TOKENS_FOLLOWING_rewrite_tree_atom_IN_rewrite_tree_element_2662 = Set[1]
    TOKENS_FOLLOWING_rewrite_tree_atom_IN_rewrite_tree_element_2667 = Set[74, 91, 92]
    TOKENS_FOLLOWING_ebnf_suffix_IN_rewrite_tree_element_2669 = Set[1]
    TOKENS_FOLLOWING_rewrite_tree_IN_rewrite_tree_element_2703 = Set[1, 74, 91, 92]
    TOKENS_FOLLOWING_ebnf_suffix_IN_rewrite_tree_element_2709 = Set[1]
    TOKENS_FOLLOWING_rewrite_tree_ebnf_IN_rewrite_tree_element_2755 = Set[1]
    TOKENS_FOLLOWING_CHAR_LITERAL_IN_rewrite_tree_atom_2771 = Set[1]
    TOKENS_FOLLOWING_TOKEN_REF_IN_rewrite_tree_atom_2778 = Set[1, 50]
    TOKENS_FOLLOWING_ARG_ACTION_IN_rewrite_tree_atom_2780 = Set[1]
    TOKENS_FOLLOWING_RULE_REF_IN_rewrite_tree_atom_2799 = Set[1]
    TOKENS_FOLLOWING_STRING_LITERAL_IN_rewrite_tree_atom_2806 = Set[1]
    TOKENS_FOLLOWING_T__93_IN_rewrite_tree_atom_2815 = Set[44, 51]
    TOKENS_FOLLOWING_id_IN_rewrite_tree_atom_2817 = Set[1]
    TOKENS_FOLLOWING_ACTION_IN_rewrite_tree_atom_2828 = Set[1]
    TOKENS_FOLLOWING_rewrite_tree_block_IN_rewrite_tree_ebnf_2849 = Set[74, 91, 92]
    TOKENS_FOLLOWING_ebnf_suffix_IN_rewrite_tree_ebnf_2851 = Set[1]
    TOKENS_FOLLOWING_TREE_BEGIN_IN_rewrite_tree_2871 = Set[44, 45, 46, 47, 51, 93]
    TOKENS_FOLLOWING_rewrite_tree_atom_IN_rewrite_tree_2873 = Set[36, 44, 45, 46, 47, 51, 81, 83, 93]
    TOKENS_FOLLOWING_rewrite_tree_element_IN_rewrite_tree_2875 = Set[36, 44, 45, 46, 47, 51, 81, 83, 93]
    TOKENS_FOLLOWING_T__83_IN_rewrite_tree_2878 = Set[1]
    TOKENS_FOLLOWING_id_IN_rewrite_template_2910 = Set[81]
    TOKENS_FOLLOWING_T__81_IN_rewrite_template_2914 = Set[44, 51, 83]
    TOKENS_FOLLOWING_rewrite_template_args_IN_rewrite_template_2916 = Set[83]
    TOKENS_FOLLOWING_T__83_IN_rewrite_template_2918 = Set[52, 53]
    TOKENS_FOLLOWING_DOUBLE_QUOTE_STRING_LITERAL_IN_rewrite_template_2926 = Set[1]
    TOKENS_FOLLOWING_DOUBLE_ANGLE_STRING_LITERAL_IN_rewrite_template_2932 = Set[1]
    TOKENS_FOLLOWING_rewrite_template_ref_IN_rewrite_template_2959 = Set[1]
    TOKENS_FOLLOWING_rewrite_indirect_template_head_IN_rewrite_template_2968 = Set[1]
    TOKENS_FOLLOWING_ACTION_IN_rewrite_template_2977 = Set[1]
    TOKENS_FOLLOWING_id_IN_rewrite_template_ref_2990 = Set[81]
    TOKENS_FOLLOWING_T__81_IN_rewrite_template_ref_2994 = Set[44, 51, 83]
    TOKENS_FOLLOWING_rewrite_template_args_IN_rewrite_template_ref_2996 = Set[83]
    TOKENS_FOLLOWING_T__83_IN_rewrite_template_ref_2998 = Set[1]
    TOKENS_FOLLOWING_T__81_IN_rewrite_indirect_template_head_3026 = Set[47]
    TOKENS_FOLLOWING_ACTION_IN_rewrite_indirect_template_head_3028 = Set[83]
    TOKENS_FOLLOWING_T__83_IN_rewrite_indirect_template_head_3030 = Set[81]
    TOKENS_FOLLOWING_T__81_IN_rewrite_indirect_template_head_3032 = Set[44, 51, 83]
    TOKENS_FOLLOWING_rewrite_template_args_IN_rewrite_indirect_template_head_3034 = Set[83]
    TOKENS_FOLLOWING_T__83_IN_rewrite_indirect_template_head_3036 = Set[1]
    TOKENS_FOLLOWING_rewrite_template_arg_IN_rewrite_template_args_3060 = Set[1, 80]
    TOKENS_FOLLOWING_T__80_IN_rewrite_template_args_3063 = Set[44, 51]
    TOKENS_FOLLOWING_rewrite_template_arg_IN_rewrite_template_args_3065 = Set[1, 80]
    TOKENS_FOLLOWING_id_IN_rewrite_template_arg_3098 = Set[41]
    TOKENS_FOLLOWING_LABEL_ASSIGN_IN_rewrite_template_arg_3100 = Set[47]
    TOKENS_FOLLOWING_ACTION_IN_rewrite_template_arg_3102 = Set[1]
    TOKENS_FOLLOWING_id_IN_qid_3123 = Set[1, 90]
    TOKENS_FOLLOWING_T__90_IN_qid_3126 = Set[44, 51]
    TOKENS_FOLLOWING_id_IN_qid_3128 = Set[1, 90]
    TOKENS_FOLLOWING_TOKEN_REF_IN_id_3144 = Set[1]
    TOKENS_FOLLOWING_RULE_REF_IN_id_3154 = Set[1]
    TOKENS_FOLLOWING_rewrite_template_IN_synpred1_ANTLRv3Grammar_2551 = Set[1]
    TOKENS_FOLLOWING_rewrite_tree_alternative_IN_synpred2_ANTLRv3Grammar_2556 = Set[1]

  end # class Parser < ANTLR3::Parser

  at_exit { Parser.main(ARGV) } if __FILE__ == $0
end

