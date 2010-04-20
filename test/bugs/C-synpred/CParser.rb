#!/usr/bin/env ruby
#
# C.g
# 
# Generated using ANTLR version: 3.2.1-SNAPSHOT Dec 18, 2009 04:29:28
# Ruby runtime library version: 1.6.4
# Input grammar file: C.g
# Generated at: 2010-04-20 15:40:08
# 

# ~~~> start load path setup
this_directory = File.expand_path( File.dirname( __FILE__ ) )
$:.unshift( this_directory ) unless $:.include?( this_directory )

antlr_load_failed = proc do
  load_path = $LOAD_PATH.map { |dir| '  - ' << dir }.join( $/ )
  raise LoadError, <<-END.strip!
  
Failed to load the ANTLR3 runtime library (version 1.6.4):

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
    Gem.activate( 'antlr3', '~> 1.6.4' )
  rescue Gem::LoadError
    antlr_load_failed.call
  end
  
  require 'antlr3'
  
end
# <~~~ end load path setup


module C
  # TokenData defines all of the token type integer values
  # as constants, which will be included in all 
  # ANTLR-generated recognizers.
  const_defined?(:TokenData) or TokenData = ANTLR3::TokenScheme.new

  module TokenData

    # define the token constants
    define_tokens( :T__29 => 29, :T__28 => 28, :T__27 => 27, :T__26 => 26, 
                   :FloatTypeSuffix => 16, :T__25 => 25, :T__24 => 24, :T__23 => 23, 
                   :LETTER => 11, :EOF => -1, :T__93 => 93, :T__94 => 94, 
                   :T__91 => 91, :T__92 => 92, :STRING_LITERAL => 9, :T__90 => 90, 
                   :FLOATING_POINT_LITERAL => 10, :COMMENT => 20, :T__99 => 99, 
                   :T__98 => 98, :T__97 => 97, :T__96 => 96, :T__95 => 95, 
                   :T__80 => 80, :T__81 => 81, :T__82 => 82, :T__83 => 83, 
                   :LINE_COMMENT => 21, :IntegerTypeSuffix => 14, :CHARACTER_LITERAL => 8, 
                   :T__85 => 85, :T__84 => 84, :T__87 => 87, :T__86 => 86, 
                   :T__89 => 89, :T__88 => 88, :WS => 19, :T__71 => 71, 
                   :T__72 => 72, :T__70 => 70, :LINE_COMMAND => 22, :T__76 => 76, 
                   :T__75 => 75, :T__74 => 74, :T__73 => 73, :DECIMAL_LITERAL => 7, 
                   :EscapeSequence => 12, :T__79 => 79, :T__78 => 78, :T__77 => 77, 
                   :T__68 => 68, :T__69 => 69, :T__66 => 66, :T__67 => 67, 
                   :T__64 => 64, :T__65 => 65, :T__62 => 62, :T__63 => 63, 
                   :Exponent => 15, :T__61 => 61, :T__60 => 60, :HexDigit => 13, 
                   :T__55 => 55, :T__56 => 56, :T__57 => 57, :T__58 => 58, 
                   :T__51 => 51, :T__52 => 52, :T__53 => 53, :T__54 => 54, 
                   :IDENTIFIER => 4, :T__59 => 59, :HEX_LITERAL => 5, :T__50 => 50, 
                   :T__42 => 42, :T__43 => 43, :T__40 => 40, :T__41 => 41, 
                   :T__46 => 46, :T__47 => 47, :T__44 => 44, :T__45 => 45, 
                   :T__48 => 48, :T__49 => 49, :OCTAL_LITERAL => 6, :T__100 => 100, 
                   :T__30 => 30, :T__31 => 31, :T__32 => 32, :T__33 => 33, 
                   :T__34 => 34, :T__35 => 35, :T__36 => 36, :T__37 => 37, 
                   :T__38 => 38, :T__39 => 39, :UnicodeEscape => 18, :OctalEscape => 17 )

    # register the proper human-readable name or literal value
    # for each token type
    #
    # this is necessary because anonymous tokens, which are
    # created from literal values in the grammar, do not
    # have descriptive names
    register_names( "IDENTIFIER", "HEX_LITERAL", "OCTAL_LITERAL", "DECIMAL_LITERAL", 
                    "CHARACTER_LITERAL", "STRING_LITERAL", "FLOATING_POINT_LITERAL", 
                    "LETTER", "EscapeSequence", "HexDigit", "IntegerTypeSuffix", 
                    "Exponent", "FloatTypeSuffix", "OctalEscape", "UnicodeEscape", 
                    "WS", "COMMENT", "LINE_COMMENT", "LINE_COMMAND", "'typedef'", 
                    "';'", "','", "'='", "'extern'", "'static'", "'auto'", 
                    "'register'", "'void'", "'char'", "'short'", "'int'", 
                    "'long'", "'float'", "'double'", "'signed'", "'unsigned'", 
                    "'{'", "'}'", "'struct'", "'union'", "':'", "'enum'", 
                    "'const'", "'volatile'", "'('", "')'", "'['", "']'", 
                    "'*'", "'...'", "'+'", "'-'", "'/'", "'%'", "'++'", 
                    "'--'", "'sizeof'", "'.'", "'->'", "'&'", "'~'", "'!'", 
                    "'*='", "'/='", "'%='", "'+='", "'-='", "'<<='", "'>>='", 
                    "'&='", "'^='", "'|='", "'?'", "'||'", "'&&'", "'|'", 
                    "'^'", "'=='", "'!='", "'<'", "'>'", "'<='", "'>='", 
                    "'<<'", "'>>'", "'case'", "'default'", "'if'", "'else'", 
                    "'switch'", "'while'", "'do'", "'for'", "'goto'", "'continue'", 
                    "'break'", "'return'" )
    
  end


  class Parser < ANTLR3::Parser
    @grammar_home = C

    RULE_METHODS = [ :translation_unit, :external_declaration, :function_definition, 
                     :declaration, :declaration_specifiers, :init_declarator_list, 
                     :init_declarator, :storage_class_specifier, :type_specifier, 
                     :type_id, :struct_or_union_specifier, :struct_or_union, 
                     :struct_declaration_list, :struct_declaration, :specifier_qualifier_list, 
                     :struct_declarator_list, :struct_declarator, :enum_specifier, 
                     :enumerator_list, :enumerator, :type_qualifier, :declarator, 
                     :direct_declarator, :declarator_suffix, :pointer, :parameter_type_list, 
                     :parameter_list, :parameter_declaration, :identifier_list, 
                     :type_name, :abstract_declarator, :direct_abstract_declarator, 
                     :abstract_declarator_suffix, :initializer, :initializer_list, 
                     :argument_expression_list, :additive_expression, :multiplicative_expression, 
                     :cast_expression, :unary_expression, :postfix_expression, 
                     :unary_operator, :primary_expression, :constant, :expression, 
                     :constant_expression, :assignment_expression, :lvalue, 
                     :assignment_operator, :conditional_expression, :logical_or_expression, 
                     :logical_and_expression, :inclusive_or_expression, 
                     :exclusive_or_expression, :and_expression, :equality_expression, 
                     :relational_expression, :shift_expression, :statement, 
                     :labeled_statement, :compound_statement, :statement_list, 
                     :expression_statement, :selection_statement, :iteration_statement, 
                     :jump_statement, :synpred2_C, :synpred4_C, :synpred5_C, 
                     :synpred8_C, :synpred12_C, :synpred35_C, :synpred45_C, 
                     :synpred47_C, :synpred50_C, :synpred51_C, :synpred52_C, 
                     :synpred53_C, :synpred54_C, :synpred55_C, :synpred58_C, 
                     :synpred59_C, :synpred62_C, :synpred65_C, :synpred78_C, 
                     :synpred83_C, :synpred88_C, :synpred105_C, :synpred137_C ].freeze

    @@Symbols = Struct.new( :types )


    @@declaration = Struct.new( :type_def )


    include TokenData

    generated_using( "C.g", "3.2.1-SNAPSHOT Dec 18, 2009 04:29:28", "1.6.4" )

    def initialize( input, options = {} )
      super( input, options )
      @state.rule_memory = {}
      @Symbols_stack = []

      @declaration_stack = []


    end

      def type_name?( name )
        @Symbols_stack.reverse_each do | scope |
          scope.types.member?( name ) and return( true )
        end
        return( false )
      end

    # - - - - - - - - - - - - Rules - - - - - - - - - - - - -

    # 
    # parser rule translation_unit
    # 
    # (in C.g)
    # 54:1: translation_unit : ( external_declaration )+ ;
    # 
    def translation_unit
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 1)
      @Symbols_stack.push(@@Symbols.new)
      translation_unit_start_index = @input.index
      # - - - - @init action - - - -

        @Symbols_stack[-1].types = Set.new


      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 59:5: ( external_declaration )+
        # at file 59:5: ( external_declaration )+
        match_count_1 = 0
        while true
          alt_1 = 2
          alt_1 = @dfa1.predict(@input)
          case alt_1
          when 1
            # at line 0:0: external_declaration
            @state.following.push(TOKENS_FOLLOWING_external_declaration_IN_translation_unit_93)
            external_declaration
            @state.following.pop

          else
            match_count_1 > 0 and break
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

            eee = EarlyExit(1)


            raise eee
          end
          match_count_1 += 1
        end


        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 1)
        memoize(__method__, translation_unit_start_index, success) if @state.backtracking > 0
        @Symbols_stack.pop

      end
      
      return 
    end


    # 
    # parser rule external_declaration
    # 
    # (in C.g)
    # 62:1: external_declaration options {k=1; } : ( ( ( declaration_specifiers )? declarator ( declaration )* '{' )=> function_definition | declaration );
    # 
    def external_declaration
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 2)
      external_declaration_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 78:3: ( ( ( declaration_specifiers )? declarator ( declaration )* '{' )=> function_definition | declaration )
        alt_2 = 2
        alt_2 = @dfa2.predict(@input)
        case alt_2
        when 1
          # at line 78:5: ( ( declaration_specifiers )? declarator ( declaration )* '{' )=> function_definition
          @state.following.push(TOKENS_FOLLOWING_function_definition_IN_external_declaration_131)
          function_definition
          @state.following.pop

        when 2
          # at line 79:5: declaration
          @state.following.push(TOKENS_FOLLOWING_declaration_IN_external_declaration_137)
          declaration
          @state.following.pop

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 2)
        memoize(__method__, external_declaration_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule function_definition
    # 
    # (in C.g)
    # 82:1: function_definition : ( declaration_specifiers )? declarator ( ( declaration )+ compound_statement | compound_statement ) ;
    # 
    def function_definition
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 3)
      @Symbols_stack.push(@@Symbols.new)
      function_definition_start_index = @input.index
      # - - - - @init action - - - -

        @Symbols_stack[-1].types = Set.new


      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 87:6: ( declaration_specifiers )? declarator ( ( declaration )+ compound_statement | compound_statement )
        # at line 87:6: ( declaration_specifiers )?
        alt_3 = 2
        alt_3 = @dfa3.predict(@input)
        case alt_3
        when 1
          # at line 0:0: declaration_specifiers
          @state.following.push(TOKENS_FOLLOWING_declaration_specifiers_IN_function_definition_162)
          declaration_specifiers
          @state.following.pop

        end
        @state.following.push(TOKENS_FOLLOWING_declarator_IN_function_definition_165)
        declarator
        @state.following.pop
        # at line 88:5: ( ( declaration )+ compound_statement | compound_statement )
        alt_5 = 2
        alt_5 = @dfa5.predict(@input)
        case alt_5
        when 1
          # at line 88:8: ( declaration )+ compound_statement
          # at file 88:8: ( declaration )+
          match_count_4 = 0
          while true
            alt_4 = 2
            alt_4 = @dfa4.predict(@input)
            case alt_4
            when 1
              # at line 0:0: declaration
              @state.following.push(TOKENS_FOLLOWING_declaration_IN_function_definition_174)
              declaration
              @state.following.pop

            else
              match_count_4 > 0 and break
              @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

              eee = EarlyExit(4)


              raise eee
            end
            match_count_4 += 1
          end

          @state.following.push(TOKENS_FOLLOWING_compound_statement_IN_function_definition_177)
          compound_statement
          @state.following.pop

        when 2
          # at line 89:8: compound_statement
          @state.following.push(TOKENS_FOLLOWING_compound_statement_IN_function_definition_188)
          compound_statement
          @state.following.pop

        end

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 3)
        memoize(__method__, function_definition_start_index, success) if @state.backtracking > 0
        @Symbols_stack.pop

      end
      
      return 
    end


    # 
    # parser rule declaration
    # 
    # (in C.g)
    # 93:1: declaration : ( 'typedef' ( declaration_specifiers )? init_declarator_list ';' | declaration_specifiers ( init_declarator_list )? ';' );
    # 
    def declaration
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 4)
      @declaration_stack.push(@@declaration.new)
      declaration_start_index = @input.index
      # - - - - @init action - - - -
       @declaration_stack[-1].type_def = false 

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 98:3: ( 'typedef' ( declaration_specifiers )? init_declarator_list ';' | declaration_specifiers ( init_declarator_list )? ';' )
        alt_8 = 2
        alt_8 = @dfa8.predict(@input)
        case alt_8
        when 1
          # at line 98:5: 'typedef' ( declaration_specifiers )? init_declarator_list ';'
          match(T__23, TOKENS_FOLLOWING_T__23_IN_declaration_224)
          # at line 98:15: ( declaration_specifiers )?
          alt_6 = 2
          alt_6 = @dfa6.predict(@input)
          case alt_6
          when 1
            # at line 0:0: declaration_specifiers
            @state.following.push(TOKENS_FOLLOWING_declaration_specifiers_IN_declaration_226)
            declaration_specifiers
            @state.following.pop

          end
          # syntactic predicate action gate test
          if @state.backtracking == 0
            # --> action
             @declaration_stack[-1].type_def = true 
            # <-- action
          end
          @state.following.push(TOKENS_FOLLOWING_init_declarator_list_IN_declaration_235)
          init_declarator_list
          @state.following.pop
          match(T__24, TOKENS_FOLLOWING_T__24_IN_declaration_237)

        when 2
          # at line 100:5: declaration_specifiers ( init_declarator_list )? ';'
          @state.following.push(TOKENS_FOLLOWING_declaration_specifiers_IN_declaration_244)
          declaration_specifiers
          @state.following.pop
          # at line 100:28: ( init_declarator_list )?
          alt_7 = 2
          look_7_0 = @input.peek(1)

          if (look_7_0 == IDENTIFIER || look_7_0 == T__48 || look_7_0 == T__52) 
            alt_7 = 1
          end
          case alt_7
          when 1
            # at line 0:0: init_declarator_list
            @state.following.push(TOKENS_FOLLOWING_init_declarator_list_IN_declaration_246)
            init_declarator_list
            @state.following.pop

          end
          match(T__24, TOKENS_FOLLOWING_T__24_IN_declaration_249)

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 4)
        memoize(__method__, declaration_start_index, success) if @state.backtracking > 0
        @declaration_stack.pop

      end
      
      return 
    end


    # 
    # parser rule declaration_specifiers
    # 
    # (in C.g)
    # 103:1: declaration_specifiers : ( storage_class_specifier | type_specifier | type_qualifier )+ ;
    # 
    def declaration_specifiers
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 5)
      declaration_specifiers_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 104:5: ( storage_class_specifier | type_specifier | type_qualifier )+
        # at file 104:5: ( storage_class_specifier | type_specifier | type_qualifier )+
        match_count_9 = 0
        while true
          alt_9 = 4
          alt_9 = @dfa9.predict(@input)
          case alt_9
          when 1
            # at line 104:9: storage_class_specifier
            @state.following.push(TOKENS_FOLLOWING_storage_class_specifier_IN_declaration_specifiers_266)
            storage_class_specifier
            @state.following.pop

          when 2
            # at line 105:9: type_specifier
            @state.following.push(TOKENS_FOLLOWING_type_specifier_IN_declaration_specifiers_276)
            type_specifier
            @state.following.pop

          when 3
            # at line 106:9: type_qualifier
            @state.following.push(TOKENS_FOLLOWING_type_qualifier_IN_declaration_specifiers_286)
            type_qualifier
            @state.following.pop

          else
            match_count_9 > 0 and break
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

            eee = EarlyExit(9)


            raise eee
          end
          match_count_9 += 1
        end


        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 5)
        memoize(__method__, declaration_specifiers_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule init_declarator_list
    # 
    # (in C.g)
    # 110:1: init_declarator_list : init_declarator ( ',' init_declarator )* ;
    # 
    def init_declarator_list
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 6)
      init_declarator_list_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 111:5: init_declarator ( ',' init_declarator )*
        @state.following.push(TOKENS_FOLLOWING_init_declarator_IN_init_declarator_list_306)
        init_declarator
        @state.following.pop
        # at line 111:21: ( ',' init_declarator )*
        while true # decision 10
          alt_10 = 2
          look_10_0 = @input.peek(1)

          if (look_10_0 == T__25) 
            alt_10 = 1

          end
          case alt_10
          when 1
            # at line 111:22: ',' init_declarator
            match(T__25, TOKENS_FOLLOWING_T__25_IN_init_declarator_list_309)
            @state.following.push(TOKENS_FOLLOWING_init_declarator_IN_init_declarator_list_311)
            init_declarator
            @state.following.pop

          else
            break # out of loop for decision 10
          end
        end # loop for decision 10

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 6)
        memoize(__method__, init_declarator_list_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule init_declarator
    # 
    # (in C.g)
    # 114:1: init_declarator : declarator ( '=' initializer )? ;
    # 
    def init_declarator
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 7)
      init_declarator_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 115:5: declarator ( '=' initializer )?
        @state.following.push(TOKENS_FOLLOWING_declarator_IN_init_declarator_326)
        declarator
        @state.following.pop
        # at line 115:16: ( '=' initializer )?
        alt_11 = 2
        look_11_0 = @input.peek(1)

        if (look_11_0 == T__26) 
          alt_11 = 1
        end
        case alt_11
        when 1
          # at line 115:17: '=' initializer
          match(T__26, TOKENS_FOLLOWING_T__26_IN_init_declarator_329)
          @state.following.push(TOKENS_FOLLOWING_initializer_IN_init_declarator_331)
          initializer
          @state.following.pop

        end

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 7)
        memoize(__method__, init_declarator_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule storage_class_specifier
    # 
    # (in C.g)
    # 118:1: storage_class_specifier : ( 'extern' | 'static' | 'auto' | 'register' );
    # 
    def storage_class_specifier
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 8)
      storage_class_specifier_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 
        if @input.peek(1).between?(T__27, T__30)
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          mse = MismatchedSet(nil)
          raise mse
        end



        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 8)
        memoize(__method__, storage_class_specifier_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule type_specifier
    # 
    # (in C.g)
    # 125:1: type_specifier : ( 'void' | 'char' | 'short' | 'int' | 'long' | 'float' | 'double' | 'signed' | 'unsigned' | struct_or_union_specifier | enum_specifier | type_id );
    # 
    def type_specifier
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 9)
      type_specifier_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 126:3: ( 'void' | 'char' | 'short' | 'int' | 'long' | 'float' | 'double' | 'signed' | 'unsigned' | struct_or_union_specifier | enum_specifier | type_id )
        alt_12 = 12
        alt_12 = @dfa12.predict(@input)
        case alt_12
        when 1
          # at line 126:5: 'void'
          match(T__31, TOKENS_FOLLOWING_T__31_IN_type_specifier_377)

        when 2
          # at line 127:5: 'char'
          match(T__32, TOKENS_FOLLOWING_T__32_IN_type_specifier_383)

        when 3
          # at line 128:5: 'short'
          match(T__33, TOKENS_FOLLOWING_T__33_IN_type_specifier_389)

        when 4
          # at line 129:5: 'int'
          match(T__34, TOKENS_FOLLOWING_T__34_IN_type_specifier_395)

        when 5
          # at line 130:5: 'long'
          match(T__35, TOKENS_FOLLOWING_T__35_IN_type_specifier_401)

        when 6
          # at line 131:5: 'float'
          match(T__36, TOKENS_FOLLOWING_T__36_IN_type_specifier_407)

        when 7
          # at line 132:5: 'double'
          match(T__37, TOKENS_FOLLOWING_T__37_IN_type_specifier_413)

        when 8
          # at line 133:5: 'signed'
          match(T__38, TOKENS_FOLLOWING_T__38_IN_type_specifier_419)

        when 9
          # at line 134:5: 'unsigned'
          match(T__39, TOKENS_FOLLOWING_T__39_IN_type_specifier_425)

        when 10
          # at line 135:5: struct_or_union_specifier
          @state.following.push(TOKENS_FOLLOWING_struct_or_union_specifier_IN_type_specifier_431)
          struct_or_union_specifier
          @state.following.pop

        when 11
          # at line 136:5: enum_specifier
          @state.following.push(TOKENS_FOLLOWING_enum_specifier_IN_type_specifier_437)
          enum_specifier
          @state.following.pop

        when 12
          # at line 137:5: type_id
          @state.following.push(TOKENS_FOLLOWING_type_id_IN_type_specifier_443)
          type_id
          @state.following.pop

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 9)
        memoize(__method__, type_specifier_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule type_id
    # 
    # (in C.g)
    # 140:1: type_id : {...}? IDENTIFIER ;
    # 
    def type_id
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 10)
      type_id_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 141:7: {...}? IDENTIFIER
        unless (( type_name?( @input.look.text ) ))
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          raise FailedPredicate("type_id", " type_name?( @input.look.text ) ")
        end
        match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_type_id_460)

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 10)
        memoize(__method__, type_id_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule struct_or_union_specifier
    # 
    # (in C.g)
    # 144:1: struct_or_union_specifier options {k=3; } : ( struct_or_union ( IDENTIFIER )? '{' struct_declaration_list '}' | struct_or_union IDENTIFIER );
    # 
    def struct_or_union_specifier
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 11)
      @Symbols_stack.push(@@Symbols.new)
      struct_or_union_specifier_start_index = @input.index
      # - - - - @init action - - - -

        @Symbols_stack[-1].types = Set.new


      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 150:3: ( struct_or_union ( IDENTIFIER )? '{' struct_declaration_list '}' | struct_or_union IDENTIFIER )
        alt_14 = 2
        alt_14 = @dfa14.predict(@input)
        case alt_14
        when 1
          # at line 150:5: struct_or_union ( IDENTIFIER )? '{' struct_declaration_list '}'
          @state.following.push(TOKENS_FOLLOWING_struct_or_union_IN_struct_or_union_specifier_492)
          struct_or_union
          @state.following.pop
          # at line 150:21: ( IDENTIFIER )?
          alt_13 = 2
          look_13_0 = @input.peek(1)

          if (look_13_0 == IDENTIFIER) 
            alt_13 = 1
          end
          case alt_13
          when 1
            # at line 0:0: IDENTIFIER
            match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_struct_or_union_specifier_494)

          end
          match(T__40, TOKENS_FOLLOWING_T__40_IN_struct_or_union_specifier_497)
          @state.following.push(TOKENS_FOLLOWING_struct_declaration_list_IN_struct_or_union_specifier_499)
          struct_declaration_list
          @state.following.pop
          match(T__41, TOKENS_FOLLOWING_T__41_IN_struct_or_union_specifier_501)

        when 2
          # at line 151:5: struct_or_union IDENTIFIER
          @state.following.push(TOKENS_FOLLOWING_struct_or_union_IN_struct_or_union_specifier_507)
          struct_or_union
          @state.following.pop
          match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_struct_or_union_specifier_509)

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 11)
        memoize(__method__, struct_or_union_specifier_start_index, success) if @state.backtracking > 0
        @Symbols_stack.pop

      end
      
      return 
    end


    # 
    # parser rule struct_or_union
    # 
    # (in C.g)
    # 154:1: struct_or_union : ( 'struct' | 'union' );
    # 
    def struct_or_union
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 12)
      struct_or_union_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 
        if @input.peek(1).between?(T__42, T__43)
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          mse = MismatchedSet(nil)
          raise mse
        end



        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 12)
        memoize(__method__, struct_or_union_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule struct_declaration_list
    # 
    # (in C.g)
    # 159:1: struct_declaration_list : ( struct_declaration )+ ;
    # 
    def struct_declaration_list
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 13)
      struct_declaration_list_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 160:5: ( struct_declaration )+
        # at file 160:5: ( struct_declaration )+
        match_count_15 = 0
        while true
          alt_15 = 2
          alt_15 = @dfa15.predict(@input)
          case alt_15
          when 1
            # at line 0:0: struct_declaration
            @state.following.push(TOKENS_FOLLOWING_struct_declaration_IN_struct_declaration_list_541)
            struct_declaration
            @state.following.pop

          else
            match_count_15 > 0 and break
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

            eee = EarlyExit(15)


            raise eee
          end
          match_count_15 += 1
        end


        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 13)
        memoize(__method__, struct_declaration_list_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule struct_declaration
    # 
    # (in C.g)
    # 163:1: struct_declaration : specifier_qualifier_list struct_declarator_list ';' ;
    # 
    def struct_declaration
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 14)
      struct_declaration_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 164:5: specifier_qualifier_list struct_declarator_list ';'
        @state.following.push(TOKENS_FOLLOWING_specifier_qualifier_list_IN_struct_declaration_555)
        specifier_qualifier_list
        @state.following.pop
        @state.following.push(TOKENS_FOLLOWING_struct_declarator_list_IN_struct_declaration_557)
        struct_declarator_list
        @state.following.pop
        match(T__24, TOKENS_FOLLOWING_T__24_IN_struct_declaration_559)

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 14)
        memoize(__method__, struct_declaration_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule specifier_qualifier_list
    # 
    # (in C.g)
    # 167:1: specifier_qualifier_list : ( type_qualifier | type_specifier )+ ;
    # 
    def specifier_qualifier_list
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 15)
      specifier_qualifier_list_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 168:5: ( type_qualifier | type_specifier )+
        # at file 168:5: ( type_qualifier | type_specifier )+
        match_count_16 = 0
        while true
          alt_16 = 3
          alt_16 = @dfa16.predict(@input)
          case alt_16
          when 1
            # at line 168:7: type_qualifier
            @state.following.push(TOKENS_FOLLOWING_type_qualifier_IN_specifier_qualifier_list_574)
            type_qualifier
            @state.following.pop

          when 2
            # at line 168:24: type_specifier
            @state.following.push(TOKENS_FOLLOWING_type_specifier_IN_specifier_qualifier_list_578)
            type_specifier
            @state.following.pop

          else
            match_count_16 > 0 and break
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

            eee = EarlyExit(16)


            raise eee
          end
          match_count_16 += 1
        end


        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 15)
        memoize(__method__, specifier_qualifier_list_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule struct_declarator_list
    # 
    # (in C.g)
    # 171:1: struct_declarator_list : struct_declarator ( ',' struct_declarator )* ;
    # 
    def struct_declarator_list
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 16)
      struct_declarator_list_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 172:5: struct_declarator ( ',' struct_declarator )*
        @state.following.push(TOKENS_FOLLOWING_struct_declarator_IN_struct_declarator_list_594)
        struct_declarator
        @state.following.pop
        # at line 172:23: ( ',' struct_declarator )*
        while true # decision 17
          alt_17 = 2
          look_17_0 = @input.peek(1)

          if (look_17_0 == T__25) 
            alt_17 = 1

          end
          case alt_17
          when 1
            # at line 172:24: ',' struct_declarator
            match(T__25, TOKENS_FOLLOWING_T__25_IN_struct_declarator_list_597)
            @state.following.push(TOKENS_FOLLOWING_struct_declarator_IN_struct_declarator_list_599)
            struct_declarator
            @state.following.pop

          else
            break # out of loop for decision 17
          end
        end # loop for decision 17

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 16)
        memoize(__method__, struct_declarator_list_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule struct_declarator
    # 
    # (in C.g)
    # 175:1: struct_declarator : ( declarator ( ':' constant_expression )? | ':' constant_expression );
    # 
    def struct_declarator
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 17)
      struct_declarator_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 176:3: ( declarator ( ':' constant_expression )? | ':' constant_expression )
        alt_19 = 2
        look_19_0 = @input.peek(1)

        if (look_19_0 == IDENTIFIER || look_19_0 == T__48 || look_19_0 == T__52) 
          alt_19 = 1
        elsif (look_19_0 == T__44) 
          alt_19 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 19, 0)
          raise nvae
        end
        case alt_19
        when 1
          # at line 176:5: declarator ( ':' constant_expression )?
          @state.following.push(TOKENS_FOLLOWING_declarator_IN_struct_declarator_614)
          declarator
          @state.following.pop
          # at line 176:16: ( ':' constant_expression )?
          alt_18 = 2
          look_18_0 = @input.peek(1)

          if (look_18_0 == T__44) 
            alt_18 = 1
          end
          case alt_18
          when 1
            # at line 176:17: ':' constant_expression
            match(T__44, TOKENS_FOLLOWING_T__44_IN_struct_declarator_617)
            @state.following.push(TOKENS_FOLLOWING_constant_expression_IN_struct_declarator_619)
            constant_expression
            @state.following.pop

          end

        when 2
          # at line 177:5: ':' constant_expression
          match(T__44, TOKENS_FOLLOWING_T__44_IN_struct_declarator_627)
          @state.following.push(TOKENS_FOLLOWING_constant_expression_IN_struct_declarator_629)
          constant_expression
          @state.following.pop

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 17)
        memoize(__method__, struct_declarator_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule enum_specifier
    # 
    # (in C.g)
    # 180:1: enum_specifier options {k=3; } : ( 'enum' '{' enumerator_list '}' | 'enum' IDENTIFIER '{' enumerator_list '}' | 'enum' IDENTIFIER );
    # 
    def enum_specifier
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 18)
      enum_specifier_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 182:3: ( 'enum' '{' enumerator_list '}' | 'enum' IDENTIFIER '{' enumerator_list '}' | 'enum' IDENTIFIER )
        alt_20 = 3
        alt_20 = @dfa20.predict(@input)
        case alt_20
        when 1
          # at line 182:5: 'enum' '{' enumerator_list '}'
          match(T__45, TOKENS_FOLLOWING_T__45_IN_enum_specifier_649)
          match(T__40, TOKENS_FOLLOWING_T__40_IN_enum_specifier_651)
          @state.following.push(TOKENS_FOLLOWING_enumerator_list_IN_enum_specifier_653)
          enumerator_list
          @state.following.pop
          match(T__41, TOKENS_FOLLOWING_T__41_IN_enum_specifier_655)

        when 2
          # at line 183:5: 'enum' IDENTIFIER '{' enumerator_list '}'
          match(T__45, TOKENS_FOLLOWING_T__45_IN_enum_specifier_661)
          match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_enum_specifier_663)
          match(T__40, TOKENS_FOLLOWING_T__40_IN_enum_specifier_665)
          @state.following.push(TOKENS_FOLLOWING_enumerator_list_IN_enum_specifier_667)
          enumerator_list
          @state.following.pop
          match(T__41, TOKENS_FOLLOWING_T__41_IN_enum_specifier_669)

        when 3
          # at line 184:5: 'enum' IDENTIFIER
          match(T__45, TOKENS_FOLLOWING_T__45_IN_enum_specifier_675)
          match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_enum_specifier_677)

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 18)
        memoize(__method__, enum_specifier_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule enumerator_list
    # 
    # (in C.g)
    # 187:1: enumerator_list : enumerator ( ',' enumerator )* ;
    # 
    def enumerator_list
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 19)
      enumerator_list_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 188:5: enumerator ( ',' enumerator )*
        @state.following.push(TOKENS_FOLLOWING_enumerator_IN_enumerator_list_690)
        enumerator
        @state.following.pop
        # at line 188:16: ( ',' enumerator )*
        while true # decision 21
          alt_21 = 2
          look_21_0 = @input.peek(1)

          if (look_21_0 == T__25) 
            alt_21 = 1

          end
          case alt_21
          when 1
            # at line 188:17: ',' enumerator
            match(T__25, TOKENS_FOLLOWING_T__25_IN_enumerator_list_693)
            @state.following.push(TOKENS_FOLLOWING_enumerator_IN_enumerator_list_695)
            enumerator
            @state.following.pop

          else
            break # out of loop for decision 21
          end
        end # loop for decision 21

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 19)
        memoize(__method__, enumerator_list_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule enumerator
    # 
    # (in C.g)
    # 191:1: enumerator : IDENTIFIER ( '=' constant_expression )? ;
    # 
    def enumerator
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 20)
      enumerator_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 192:5: IDENTIFIER ( '=' constant_expression )?
        match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_enumerator_710)
        # at line 192:16: ( '=' constant_expression )?
        alt_22 = 2
        look_22_0 = @input.peek(1)

        if (look_22_0 == T__26) 
          alt_22 = 1
        end
        case alt_22
        when 1
          # at line 192:17: '=' constant_expression
          match(T__26, TOKENS_FOLLOWING_T__26_IN_enumerator_713)
          @state.following.push(TOKENS_FOLLOWING_constant_expression_IN_enumerator_715)
          constant_expression
          @state.following.pop

        end

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 20)
        memoize(__method__, enumerator_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule type_qualifier
    # 
    # (in C.g)
    # 195:1: type_qualifier : ( 'const' | 'volatile' );
    # 
    def type_qualifier
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 21)
      type_qualifier_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 
        if @input.peek(1).between?(T__46, T__47)
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          mse = MismatchedSet(nil)
          raise mse
        end



        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 21)
        memoize(__method__, type_qualifier_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule declarator
    # 
    # (in C.g)
    # 200:1: declarator : ( ( pointer )? direct_declarator | pointer );
    # 
    def declarator
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 22)
      declarator_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 201:3: ( ( pointer )? direct_declarator | pointer )
        alt_24 = 2
        alt_24 = @dfa24.predict(@input)
        case alt_24
        when 1
          # at line 201:5: ( pointer )? direct_declarator
          # at line 201:5: ( pointer )?
          alt_23 = 2
          look_23_0 = @input.peek(1)

          if (look_23_0 == T__52) 
            alt_23 = 1
          end
          case alt_23
          when 1
            # at line 0:0: pointer
            @state.following.push(TOKENS_FOLLOWING_pointer_IN_declarator_749)
            pointer
            @state.following.pop

          end
          @state.following.push(TOKENS_FOLLOWING_direct_declarator_IN_declarator_752)
          direct_declarator
          @state.following.pop

        when 2
          # at line 202:5: pointer
          @state.following.push(TOKENS_FOLLOWING_pointer_IN_declarator_758)
          pointer
          @state.following.pop

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 22)
        memoize(__method__, declarator_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule direct_declarator
    # 
    # (in C.g)
    # 205:1: direct_declarator : ( IDENTIFIER | '(' declarator ')' ) ( declarator_suffix )* ;
    # 
    def direct_declarator
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 23)
      direct_declarator_start_index = @input.index
      __IDENTIFIER1__ = nil

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 206:5: ( IDENTIFIER | '(' declarator ')' ) ( declarator_suffix )*
        # at line 206:5: ( IDENTIFIER | '(' declarator ')' )
        alt_25 = 2
        look_25_0 = @input.peek(1)

        if (look_25_0 == IDENTIFIER) 
          alt_25 = 1
        elsif (look_25_0 == T__48) 
          alt_25 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 25, 0)
          raise nvae
        end
        case alt_25
        when 1
          # at line 206:8: IDENTIFIER
          __IDENTIFIER1__ = match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_direct_declarator_774)
          # syntactic predicate action gate test
          if @state.backtracking == 0
            # --> action

            		  if @declaration_stack.length > 0 and @declaration_stack[-1].type_def
            			  @Symbols_stack[-1].types.add?( __IDENTIFIER1__.text ) and
            				  puts( "define type " << __IDENTIFIER1__.text )
                  end
                
            # <-- action
          end

        when 2
          # at line 213:7: '(' declarator ')'
          match(T__48, TOKENS_FOLLOWING_T__48_IN_direct_declarator_788)
          @state.following.push(TOKENS_FOLLOWING_declarator_IN_direct_declarator_790)
          declarator
          @state.following.pop
          match(T__49, TOKENS_FOLLOWING_T__49_IN_direct_declarator_792)

        end
        # at line 215:5: ( declarator_suffix )*
        while true # decision 26
          alt_26 = 2
          alt_26 = @dfa26.predict(@input)
          case alt_26
          when 1
            # at line 0:0: declarator_suffix
            @state.following.push(TOKENS_FOLLOWING_declarator_suffix_IN_direct_declarator_804)
            declarator_suffix
            @state.following.pop

          else
            break # out of loop for decision 26
          end
        end # loop for decision 26

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 23)
        memoize(__method__, direct_declarator_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule declarator_suffix
    # 
    # (in C.g)
    # 218:1: declarator_suffix : ( '[' constant_expression ']' | '[' ']' | '(' parameter_type_list ')' | '(' identifier_list ')' | '(' ')' );
    # 
    def declarator_suffix
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 24)
      declarator_suffix_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 219:3: ( '[' constant_expression ']' | '[' ']' | '(' parameter_type_list ')' | '(' identifier_list ')' | '(' ')' )
        alt_27 = 5
        alt_27 = @dfa27.predict(@input)
        case alt_27
        when 1
          # at line 219:7: '[' constant_expression ']'
          match(T__50, TOKENS_FOLLOWING_T__50_IN_declarator_suffix_820)
          @state.following.push(TOKENS_FOLLOWING_constant_expression_IN_declarator_suffix_822)
          constant_expression
          @state.following.pop
          match(T__51, TOKENS_FOLLOWING_T__51_IN_declarator_suffix_824)

        when 2
          # at line 220:7: '[' ']'
          match(T__50, TOKENS_FOLLOWING_T__50_IN_declarator_suffix_832)
          match(T__51, TOKENS_FOLLOWING_T__51_IN_declarator_suffix_834)

        when 3
          # at line 221:7: '(' parameter_type_list ')'
          match(T__48, TOKENS_FOLLOWING_T__48_IN_declarator_suffix_842)
          @state.following.push(TOKENS_FOLLOWING_parameter_type_list_IN_declarator_suffix_844)
          parameter_type_list
          @state.following.pop
          match(T__49, TOKENS_FOLLOWING_T__49_IN_declarator_suffix_846)

        when 4
          # at line 222:7: '(' identifier_list ')'
          match(T__48, TOKENS_FOLLOWING_T__48_IN_declarator_suffix_854)
          @state.following.push(TOKENS_FOLLOWING_identifier_list_IN_declarator_suffix_856)
          identifier_list
          @state.following.pop
          match(T__49, TOKENS_FOLLOWING_T__49_IN_declarator_suffix_858)

        when 5
          # at line 223:7: '(' ')'
          match(T__48, TOKENS_FOLLOWING_T__48_IN_declarator_suffix_866)
          match(T__49, TOKENS_FOLLOWING_T__49_IN_declarator_suffix_868)

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 24)
        memoize(__method__, declarator_suffix_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule pointer
    # 
    # (in C.g)
    # 226:1: pointer : ( '*' ( type_qualifier )+ ( pointer )? | '*' pointer | '*' );
    # 
    def pointer
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 25)
      pointer_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 227:3: ( '*' ( type_qualifier )+ ( pointer )? | '*' pointer | '*' )
        alt_30 = 3
        alt_30 = @dfa30.predict(@input)
        case alt_30
        when 1
          # at line 227:5: '*' ( type_qualifier )+ ( pointer )?
          match(T__52, TOKENS_FOLLOWING_T__52_IN_pointer_881)
          # at file 227:9: ( type_qualifier )+
          match_count_28 = 0
          while true
            alt_28 = 2
            alt_28 = @dfa28.predict(@input)
            case alt_28
            when 1
              # at line 0:0: type_qualifier
              @state.following.push(TOKENS_FOLLOWING_type_qualifier_IN_pointer_883)
              type_qualifier
              @state.following.pop

            else
              match_count_28 > 0 and break
              @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

              eee = EarlyExit(28)


              raise eee
            end
            match_count_28 += 1
          end

          # at line 227:25: ( pointer )?
          alt_29 = 2
          alt_29 = @dfa29.predict(@input)
          case alt_29
          when 1
            # at line 0:0: pointer
            @state.following.push(TOKENS_FOLLOWING_pointer_IN_pointer_886)
            pointer
            @state.following.pop

          end

        when 2
          # at line 228:5: '*' pointer
          match(T__52, TOKENS_FOLLOWING_T__52_IN_pointer_893)
          @state.following.push(TOKENS_FOLLOWING_pointer_IN_pointer_895)
          pointer
          @state.following.pop

        when 3
          # at line 229:5: '*'
          match(T__52, TOKENS_FOLLOWING_T__52_IN_pointer_901)

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 25)
        memoize(__method__, pointer_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule parameter_type_list
    # 
    # (in C.g)
    # 232:1: parameter_type_list : parameter_list ( ',' '...' )? ;
    # 
    def parameter_type_list
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 26)
      parameter_type_list_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 233:5: parameter_list ( ',' '...' )?
        @state.following.push(TOKENS_FOLLOWING_parameter_list_IN_parameter_type_list_914)
        parameter_list
        @state.following.pop
        # at line 233:20: ( ',' '...' )?
        alt_31 = 2
        look_31_0 = @input.peek(1)

        if (look_31_0 == T__25) 
          alt_31 = 1
        end
        case alt_31
        when 1
          # at line 233:21: ',' '...'
          match(T__25, TOKENS_FOLLOWING_T__25_IN_parameter_type_list_917)
          match(T__53, TOKENS_FOLLOWING_T__53_IN_parameter_type_list_919)

        end

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 26)
        memoize(__method__, parameter_type_list_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule parameter_list
    # 
    # (in C.g)
    # 236:1: parameter_list : parameter_declaration ( ',' parameter_declaration )* ;
    # 
    def parameter_list
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 27)
      parameter_list_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 237:5: parameter_declaration ( ',' parameter_declaration )*
        @state.following.push(TOKENS_FOLLOWING_parameter_declaration_IN_parameter_list_934)
        parameter_declaration
        @state.following.pop
        # at line 237:27: ( ',' parameter_declaration )*
        while true # decision 32
          alt_32 = 2
          alt_32 = @dfa32.predict(@input)
          case alt_32
          when 1
            # at line 237:28: ',' parameter_declaration
            match(T__25, TOKENS_FOLLOWING_T__25_IN_parameter_list_937)
            @state.following.push(TOKENS_FOLLOWING_parameter_declaration_IN_parameter_list_939)
            parameter_declaration
            @state.following.pop

          else
            break # out of loop for decision 32
          end
        end # loop for decision 32

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 27)
        memoize(__method__, parameter_list_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule parameter_declaration
    # 
    # (in C.g)
    # 240:1: parameter_declaration : declaration_specifiers ( declarator | abstract_declarator )* ;
    # 
    def parameter_declaration
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 28)
      parameter_declaration_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 241:5: declaration_specifiers ( declarator | abstract_declarator )*
        @state.following.push(TOKENS_FOLLOWING_declaration_specifiers_IN_parameter_declaration_954)
        declaration_specifiers
        @state.following.pop
        # at line 241:28: ( declarator | abstract_declarator )*
        while true # decision 33
          alt_33 = 3
          alt_33 = @dfa33.predict(@input)
          case alt_33
          when 1
            # at line 241:29: declarator
            @state.following.push(TOKENS_FOLLOWING_declarator_IN_parameter_declaration_957)
            declarator
            @state.following.pop

          when 2
            # at line 241:40: abstract_declarator
            @state.following.push(TOKENS_FOLLOWING_abstract_declarator_IN_parameter_declaration_959)
            abstract_declarator
            @state.following.pop

          else
            break # out of loop for decision 33
          end
        end # loop for decision 33

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 28)
        memoize(__method__, parameter_declaration_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule identifier_list
    # 
    # (in C.g)
    # 244:1: identifier_list : IDENTIFIER ( ',' IDENTIFIER )* ;
    # 
    def identifier_list
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 29)
      identifier_list_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 245:5: IDENTIFIER ( ',' IDENTIFIER )*
        match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_identifier_list_974)
        # at line 245:16: ( ',' IDENTIFIER )*
        while true # decision 34
          alt_34 = 2
          look_34_0 = @input.peek(1)

          if (look_34_0 == T__25) 
            alt_34 = 1

          end
          case alt_34
          when 1
            # at line 245:17: ',' IDENTIFIER
            match(T__25, TOKENS_FOLLOWING_T__25_IN_identifier_list_977)
            match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_identifier_list_979)

          else
            break # out of loop for decision 34
          end
        end # loop for decision 34

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 29)
        memoize(__method__, identifier_list_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule type_name
    # 
    # (in C.g)
    # 248:1: type_name : specifier_qualifier_list ( abstract_declarator )? ;
    # 
    def type_name
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 30)
      type_name_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 249:5: specifier_qualifier_list ( abstract_declarator )?
        @state.following.push(TOKENS_FOLLOWING_specifier_qualifier_list_IN_type_name_994)
        specifier_qualifier_list
        @state.following.pop
        # at line 249:30: ( abstract_declarator )?
        alt_35 = 2
        look_35_0 = @input.peek(1)

        if (look_35_0 == T__48 || look_35_0 == T__50 || look_35_0 == T__52) 
          alt_35 = 1
        end
        case alt_35
        when 1
          # at line 0:0: abstract_declarator
          @state.following.push(TOKENS_FOLLOWING_abstract_declarator_IN_type_name_996)
          abstract_declarator
          @state.following.pop

        end

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 30)
        memoize(__method__, type_name_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule abstract_declarator
    # 
    # (in C.g)
    # 252:1: abstract_declarator : ( pointer ( direct_abstract_declarator )? | direct_abstract_declarator );
    # 
    def abstract_declarator
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 31)
      abstract_declarator_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 253:3: ( pointer ( direct_abstract_declarator )? | direct_abstract_declarator )
        alt_37 = 2
        look_37_0 = @input.peek(1)

        if (look_37_0 == T__52) 
          alt_37 = 1
        elsif (look_37_0 == T__48 || look_37_0 == T__50) 
          alt_37 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 37, 0)
          raise nvae
        end
        case alt_37
        when 1
          # at line 253:5: pointer ( direct_abstract_declarator )?
          @state.following.push(TOKENS_FOLLOWING_pointer_IN_abstract_declarator_1010)
          pointer
          @state.following.pop
          # at line 253:13: ( direct_abstract_declarator )?
          alt_36 = 2
          alt_36 = @dfa36.predict(@input)
          case alt_36
          when 1
            # at line 0:0: direct_abstract_declarator
            @state.following.push(TOKENS_FOLLOWING_direct_abstract_declarator_IN_abstract_declarator_1012)
            direct_abstract_declarator
            @state.following.pop

          end

        when 2
          # at line 254:5: direct_abstract_declarator
          @state.following.push(TOKENS_FOLLOWING_direct_abstract_declarator_IN_abstract_declarator_1019)
          direct_abstract_declarator
          @state.following.pop

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 31)
        memoize(__method__, abstract_declarator_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule direct_abstract_declarator
    # 
    # (in C.g)
    # 257:1: direct_abstract_declarator : ( '(' abstract_declarator ')' | abstract_declarator_suffix ) ( abstract_declarator_suffix )* ;
    # 
    def direct_abstract_declarator
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 32)
      direct_abstract_declarator_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 258:6: ( '(' abstract_declarator ')' | abstract_declarator_suffix ) ( abstract_declarator_suffix )*
        # at line 258:6: ( '(' abstract_declarator ')' | abstract_declarator_suffix )
        alt_38 = 2
        alt_38 = @dfa38.predict(@input)
        case alt_38
        when 1
          # at line 258:8: '(' abstract_declarator ')'
          match(T__48, TOKENS_FOLLOWING_T__48_IN_direct_abstract_declarator_1035)
          @state.following.push(TOKENS_FOLLOWING_abstract_declarator_IN_direct_abstract_declarator_1037)
          abstract_declarator
          @state.following.pop
          match(T__49, TOKENS_FOLLOWING_T__49_IN_direct_abstract_declarator_1039)

        when 2
          # at line 258:38: abstract_declarator_suffix
          @state.following.push(TOKENS_FOLLOWING_abstract_declarator_suffix_IN_direct_abstract_declarator_1043)
          abstract_declarator_suffix
          @state.following.pop

        end
        # at line 258:67: ( abstract_declarator_suffix )*
        while true # decision 39
          alt_39 = 2
          alt_39 = @dfa39.predict(@input)
          case alt_39
          when 1
            # at line 0:0: abstract_declarator_suffix
            @state.following.push(TOKENS_FOLLOWING_abstract_declarator_suffix_IN_direct_abstract_declarator_1047)
            abstract_declarator_suffix
            @state.following.pop

          else
            break # out of loop for decision 39
          end
        end # loop for decision 39

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 32)
        memoize(__method__, direct_abstract_declarator_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule abstract_declarator_suffix
    # 
    # (in C.g)
    # 261:1: abstract_declarator_suffix : ( '[' ']' | '[' constant_expression ']' | '(' ')' | '(' parameter_type_list ')' );
    # 
    def abstract_declarator_suffix
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 33)
      abstract_declarator_suffix_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 262:3: ( '[' ']' | '[' constant_expression ']' | '(' ')' | '(' parameter_type_list ')' )
        alt_40 = 4
        alt_40 = @dfa40.predict(@input)
        case alt_40
        when 1
          # at line 262:6: '[' ']'
          match(T__50, TOKENS_FOLLOWING_T__50_IN_abstract_declarator_suffix_1062)
          match(T__51, TOKENS_FOLLOWING_T__51_IN_abstract_declarator_suffix_1064)

        when 2
          # at line 263:6: '[' constant_expression ']'
          match(T__50, TOKENS_FOLLOWING_T__50_IN_abstract_declarator_suffix_1071)
          @state.following.push(TOKENS_FOLLOWING_constant_expression_IN_abstract_declarator_suffix_1073)
          constant_expression
          @state.following.pop
          match(T__51, TOKENS_FOLLOWING_T__51_IN_abstract_declarator_suffix_1075)

        when 3
          # at line 264:6: '(' ')'
          match(T__48, TOKENS_FOLLOWING_T__48_IN_abstract_declarator_suffix_1082)
          match(T__49, TOKENS_FOLLOWING_T__49_IN_abstract_declarator_suffix_1084)

        when 4
          # at line 265:6: '(' parameter_type_list ')'
          match(T__48, TOKENS_FOLLOWING_T__48_IN_abstract_declarator_suffix_1091)
          @state.following.push(TOKENS_FOLLOWING_parameter_type_list_IN_abstract_declarator_suffix_1093)
          parameter_type_list
          @state.following.pop
          match(T__49, TOKENS_FOLLOWING_T__49_IN_abstract_declarator_suffix_1095)

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 33)
        memoize(__method__, abstract_declarator_suffix_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule initializer
    # 
    # (in C.g)
    # 268:1: initializer : ( assignment_expression | '{' initializer_list ( ',' )? '}' );
    # 
    def initializer
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 34)
      initializer_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 269:3: ( assignment_expression | '{' initializer_list ( ',' )? '}' )
        alt_42 = 2
        look_42_0 = @input.peek(1)

        if (look_42_0.between?(IDENTIFIER, FLOATING_POINT_LITERAL) || look_42_0 == T__48 || look_42_0 == T__52 || look_42_0.between?(T__54, T__55) || look_42_0.between?(T__58, T__60) || look_42_0.between?(T__63, T__65)) 
          alt_42 = 1
        elsif (look_42_0 == T__40) 
          alt_42 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 42, 0)
          raise nvae
        end
        case alt_42
        when 1
          # at line 269:5: assignment_expression
          @state.following.push(TOKENS_FOLLOWING_assignment_expression_IN_initializer_1110)
          assignment_expression
          @state.following.pop

        when 2
          # at line 270:5: '{' initializer_list ( ',' )? '}'
          match(T__40, TOKENS_FOLLOWING_T__40_IN_initializer_1116)
          @state.following.push(TOKENS_FOLLOWING_initializer_list_IN_initializer_1118)
          initializer_list
          @state.following.pop
          # at line 270:26: ( ',' )?
          alt_41 = 2
          look_41_0 = @input.peek(1)

          if (look_41_0 == T__25) 
            alt_41 = 1
          end
          case alt_41
          when 1
            # at line 0:0: ','
            match(T__25, TOKENS_FOLLOWING_T__25_IN_initializer_1120)

          end
          match(T__41, TOKENS_FOLLOWING_T__41_IN_initializer_1123)

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 34)
        memoize(__method__, initializer_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule initializer_list
    # 
    # (in C.g)
    # 273:1: initializer_list : initializer ( ',' initializer )* ;
    # 
    def initializer_list
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 35)
      initializer_list_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 274:5: initializer ( ',' initializer )*
        @state.following.push(TOKENS_FOLLOWING_initializer_IN_initializer_list_1136)
        initializer
        @state.following.pop
        # at line 274:17: ( ',' initializer )*
        while true # decision 43
          alt_43 = 2
          alt_43 = @dfa43.predict(@input)
          case alt_43
          when 1
            # at line 274:18: ',' initializer
            match(T__25, TOKENS_FOLLOWING_T__25_IN_initializer_list_1139)
            @state.following.push(TOKENS_FOLLOWING_initializer_IN_initializer_list_1141)
            initializer
            @state.following.pop

          else
            break # out of loop for decision 43
          end
        end # loop for decision 43

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 35)
        memoize(__method__, initializer_list_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule argument_expression_list
    # 
    # (in C.g)
    # 279:1: argument_expression_list : assignment_expression ( ',' assignment_expression )* ;
    # 
    def argument_expression_list
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 36)
      argument_expression_list_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 280:7: assignment_expression ( ',' assignment_expression )*
        @state.following.push(TOKENS_FOLLOWING_assignment_expression_IN_argument_expression_list_1160)
        assignment_expression
        @state.following.pop
        # at line 280:29: ( ',' assignment_expression )*
        while true # decision 44
          alt_44 = 2
          look_44_0 = @input.peek(1)

          if (look_44_0 == T__25) 
            alt_44 = 1

          end
          case alt_44
          when 1
            # at line 280:30: ',' assignment_expression
            match(T__25, TOKENS_FOLLOWING_T__25_IN_argument_expression_list_1163)
            @state.following.push(TOKENS_FOLLOWING_assignment_expression_IN_argument_expression_list_1165)
            assignment_expression
            @state.following.pop

          else
            break # out of loop for decision 44
          end
        end # loop for decision 44

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 36)
        memoize(__method__, argument_expression_list_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule additive_expression
    # 
    # (in C.g)
    # 283:1: additive_expression : ( multiplicative_expression ) ( '+' multiplicative_expression | '-' multiplicative_expression )* ;
    # 
    def additive_expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 37)
      additive_expression_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 284:5: ( multiplicative_expression ) ( '+' multiplicative_expression | '-' multiplicative_expression )*
        # at line 284:5: ( multiplicative_expression )
        # at line 284:6: multiplicative_expression
        @state.following.push(TOKENS_FOLLOWING_multiplicative_expression_IN_additive_expression_1181)
        multiplicative_expression
        @state.following.pop

        # at line 284:33: ( '+' multiplicative_expression | '-' multiplicative_expression )*
        while true # decision 45
          alt_45 = 3
          alt_45 = @dfa45.predict(@input)
          case alt_45
          when 1
            # at line 284:34: '+' multiplicative_expression
            match(T__54, TOKENS_FOLLOWING_T__54_IN_additive_expression_1185)
            @state.following.push(TOKENS_FOLLOWING_multiplicative_expression_IN_additive_expression_1187)
            multiplicative_expression
            @state.following.pop

          when 2
            # at line 284:66: '-' multiplicative_expression
            match(T__55, TOKENS_FOLLOWING_T__55_IN_additive_expression_1191)
            @state.following.push(TOKENS_FOLLOWING_multiplicative_expression_IN_additive_expression_1193)
            multiplicative_expression
            @state.following.pop

          else
            break # out of loop for decision 45
          end
        end # loop for decision 45

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 37)
        memoize(__method__, additive_expression_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule multiplicative_expression
    # 
    # (in C.g)
    # 287:1: multiplicative_expression : ( cast_expression ) ( '*' cast_expression | '/' cast_expression | '%' cast_expression )* ;
    # 
    def multiplicative_expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 38)
      multiplicative_expression_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 288:5: ( cast_expression ) ( '*' cast_expression | '/' cast_expression | '%' cast_expression )*
        # at line 288:5: ( cast_expression )
        # at line 288:6: cast_expression
        @state.following.push(TOKENS_FOLLOWING_cast_expression_IN_multiplicative_expression_1209)
        cast_expression
        @state.following.pop

        # at line 288:23: ( '*' cast_expression | '/' cast_expression | '%' cast_expression )*
        while true # decision 46
          alt_46 = 4
          alt_46 = @dfa46.predict(@input)
          case alt_46
          when 1
            # at line 288:24: '*' cast_expression
            match(T__52, TOKENS_FOLLOWING_T__52_IN_multiplicative_expression_1213)
            @state.following.push(TOKENS_FOLLOWING_cast_expression_IN_multiplicative_expression_1215)
            cast_expression
            @state.following.pop

          when 2
            # at line 288:46: '/' cast_expression
            match(T__56, TOKENS_FOLLOWING_T__56_IN_multiplicative_expression_1219)
            @state.following.push(TOKENS_FOLLOWING_cast_expression_IN_multiplicative_expression_1221)
            cast_expression
            @state.following.pop

          when 3
            # at line 288:68: '%' cast_expression
            match(T__57, TOKENS_FOLLOWING_T__57_IN_multiplicative_expression_1225)
            @state.following.push(TOKENS_FOLLOWING_cast_expression_IN_multiplicative_expression_1227)
            cast_expression
            @state.following.pop

          else
            break # out of loop for decision 46
          end
        end # loop for decision 46

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 38)
        memoize(__method__, multiplicative_expression_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule cast_expression
    # 
    # (in C.g)
    # 291:1: cast_expression : ( '(' type_name ')' cast_expression | unary_expression );
    # 
    def cast_expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 39)
      cast_expression_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 292:3: ( '(' type_name ')' cast_expression | unary_expression )
        alt_47 = 2
        alt_47 = @dfa47.predict(@input)
        case alt_47
        when 1
          # at line 292:5: '(' type_name ')' cast_expression
          match(T__48, TOKENS_FOLLOWING_T__48_IN_cast_expression_1242)
          @state.following.push(TOKENS_FOLLOWING_type_name_IN_cast_expression_1244)
          type_name
          @state.following.pop
          match(T__49, TOKENS_FOLLOWING_T__49_IN_cast_expression_1246)
          @state.following.push(TOKENS_FOLLOWING_cast_expression_IN_cast_expression_1248)
          cast_expression
          @state.following.pop

        when 2
          # at line 293:5: unary_expression
          @state.following.push(TOKENS_FOLLOWING_unary_expression_IN_cast_expression_1254)
          unary_expression
          @state.following.pop

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 39)
        memoize(__method__, cast_expression_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule unary_expression
    # 
    # (in C.g)
    # 296:1: unary_expression : ( postfix_expression | '++' unary_expression | '--' unary_expression | unary_operator cast_expression | 'sizeof' unary_expression | 'sizeof' '(' type_name ')' );
    # 
    def unary_expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 40)
      unary_expression_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 297:3: ( postfix_expression | '++' unary_expression | '--' unary_expression | unary_operator cast_expression | 'sizeof' unary_expression | 'sizeof' '(' type_name ')' )
        alt_48 = 6
        alt_48 = @dfa48.predict(@input)
        case alt_48
        when 1
          # at line 297:5: postfix_expression
          @state.following.push(TOKENS_FOLLOWING_postfix_expression_IN_unary_expression_1267)
          postfix_expression
          @state.following.pop

        when 2
          # at line 298:5: '++' unary_expression
          match(T__58, TOKENS_FOLLOWING_T__58_IN_unary_expression_1273)
          @state.following.push(TOKENS_FOLLOWING_unary_expression_IN_unary_expression_1275)
          unary_expression
          @state.following.pop

        when 3
          # at line 299:5: '--' unary_expression
          match(T__59, TOKENS_FOLLOWING_T__59_IN_unary_expression_1281)
          @state.following.push(TOKENS_FOLLOWING_unary_expression_IN_unary_expression_1283)
          unary_expression
          @state.following.pop

        when 4
          # at line 300:5: unary_operator cast_expression
          @state.following.push(TOKENS_FOLLOWING_unary_operator_IN_unary_expression_1289)
          unary_operator
          @state.following.pop
          @state.following.push(TOKENS_FOLLOWING_cast_expression_IN_unary_expression_1291)
          cast_expression
          @state.following.pop

        when 5
          # at line 301:5: 'sizeof' unary_expression
          match(T__60, TOKENS_FOLLOWING_T__60_IN_unary_expression_1297)
          @state.following.push(TOKENS_FOLLOWING_unary_expression_IN_unary_expression_1299)
          unary_expression
          @state.following.pop

        when 6
          # at line 302:5: 'sizeof' '(' type_name ')'
          match(T__60, TOKENS_FOLLOWING_T__60_IN_unary_expression_1305)
          match(T__48, TOKENS_FOLLOWING_T__48_IN_unary_expression_1307)
          @state.following.push(TOKENS_FOLLOWING_type_name_IN_unary_expression_1309)
          type_name
          @state.following.pop
          match(T__49, TOKENS_FOLLOWING_T__49_IN_unary_expression_1311)

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 40)
        memoize(__method__, unary_expression_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule postfix_expression
    # 
    # (in C.g)
    # 305:1: postfix_expression : primary_expression ( '[' expression ']' | '(' ')' | '(' argument_expression_list ')' | '.' IDENTIFIER | '*' IDENTIFIER | '->' IDENTIFIER | '++' | '--' )* ;
    # 
    def postfix_expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 41)
      postfix_expression_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 306:7: primary_expression ( '[' expression ']' | '(' ')' | '(' argument_expression_list ')' | '.' IDENTIFIER | '*' IDENTIFIER | '->' IDENTIFIER | '++' | '--' )*
        @state.following.push(TOKENS_FOLLOWING_primary_expression_IN_postfix_expression_1326)
        primary_expression
        @state.following.pop
        # at line 307:9: ( '[' expression ']' | '(' ')' | '(' argument_expression_list ')' | '.' IDENTIFIER | '*' IDENTIFIER | '->' IDENTIFIER | '++' | '--' )*
        while true # decision 49
          alt_49 = 9
          alt_49 = @dfa49.predict(@input)
          case alt_49
          when 1
            # at line 307:13: '[' expression ']'
            match(T__50, TOKENS_FOLLOWING_T__50_IN_postfix_expression_1340)
            @state.following.push(TOKENS_FOLLOWING_expression_IN_postfix_expression_1342)
            expression
            @state.following.pop
            match(T__51, TOKENS_FOLLOWING_T__51_IN_postfix_expression_1344)

          when 2
            # at line 308:13: '(' ')'
            match(T__48, TOKENS_FOLLOWING_T__48_IN_postfix_expression_1358)
            match(T__49, TOKENS_FOLLOWING_T__49_IN_postfix_expression_1360)

          when 3
            # at line 309:13: '(' argument_expression_list ')'
            match(T__48, TOKENS_FOLLOWING_T__48_IN_postfix_expression_1374)
            @state.following.push(TOKENS_FOLLOWING_argument_expression_list_IN_postfix_expression_1376)
            argument_expression_list
            @state.following.pop
            match(T__49, TOKENS_FOLLOWING_T__49_IN_postfix_expression_1378)

          when 4
            # at line 310:13: '.' IDENTIFIER
            match(T__61, TOKENS_FOLLOWING_T__61_IN_postfix_expression_1392)
            match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_postfix_expression_1394)

          when 5
            # at line 311:13: '*' IDENTIFIER
            match(T__52, TOKENS_FOLLOWING_T__52_IN_postfix_expression_1408)
            match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_postfix_expression_1410)

          when 6
            # at line 312:13: '->' IDENTIFIER
            match(T__62, TOKENS_FOLLOWING_T__62_IN_postfix_expression_1424)
            match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_postfix_expression_1426)

          when 7
            # at line 313:13: '++'
            match(T__58, TOKENS_FOLLOWING_T__58_IN_postfix_expression_1440)

          when 8
            # at line 314:13: '--'
            match(T__59, TOKENS_FOLLOWING_T__59_IN_postfix_expression_1454)

          else
            break # out of loop for decision 49
          end
        end # loop for decision 49

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 41)
        memoize(__method__, postfix_expression_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule unary_operator
    # 
    # (in C.g)
    # 318:1: unary_operator : ( '&' | '*' | '+' | '-' | '~' | '!' );
    # 
    def unary_operator
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 42)
      unary_operator_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 
        if @input.peek(1) == T__52 || @input.peek(1).between?(T__54, T__55) || @input.peek(1).between?(T__63, T__65)
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          mse = MismatchedSet(nil)
          raise mse
        end



        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 42)
        memoize(__method__, unary_operator_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule primary_expression
    # 
    # (in C.g)
    # 327:1: primary_expression : ( IDENTIFIER | constant | '(' expression ')' );
    # 
    def primary_expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 43)
      primary_expression_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 328:3: ( IDENTIFIER | constant | '(' expression ')' )
        alt_50 = 3
        case look_50 = @input.peek(1)
        when IDENTIFIER then alt_50 = 1
        when HEX_LITERAL, OCTAL_LITERAL, DECIMAL_LITERAL, CHARACTER_LITERAL, STRING_LITERAL, FLOATING_POINT_LITERAL then alt_50 = 2
        when T__48 then alt_50 = 3
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          nvae = NoViableAlternative("", 50, 0)
          raise nvae
        end
        case alt_50
        when 1
          # at line 328:5: IDENTIFIER
          match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_primary_expression_1521)

        when 2
          # at line 329:5: constant
          @state.following.push(TOKENS_FOLLOWING_constant_IN_primary_expression_1527)
          constant
          @state.following.pop

        when 3
          # at line 330:5: '(' expression ')'
          match(T__48, TOKENS_FOLLOWING_T__48_IN_primary_expression_1533)
          @state.following.push(TOKENS_FOLLOWING_expression_IN_primary_expression_1535)
          expression
          @state.following.pop
          match(T__49, TOKENS_FOLLOWING_T__49_IN_primary_expression_1537)

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 43)
        memoize(__method__, primary_expression_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule constant
    # 
    # (in C.g)
    # 333:1: constant : ( HEX_LITERAL | OCTAL_LITERAL | DECIMAL_LITERAL | CHARACTER_LITERAL | STRING_LITERAL | FLOATING_POINT_LITERAL );
    # 
    def constant
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 44)
      constant_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 
        if @input.peek(1).between?(HEX_LITERAL, FLOATING_POINT_LITERAL)
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          mse = MismatchedSet(nil)
          raise mse
        end



        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 44)
        memoize(__method__, constant_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule expression
    # 
    # (in C.g)
    # 344:1: expression : assignment_expression ( ',' assignment_expression )* ;
    # 
    def expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 45)
      expression_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 345:5: assignment_expression ( ',' assignment_expression )*
        @state.following.push(TOKENS_FOLLOWING_assignment_expression_IN_expression_1601)
        assignment_expression
        @state.following.pop
        # at line 345:27: ( ',' assignment_expression )*
        while true # decision 51
          alt_51 = 2
          look_51_0 = @input.peek(1)

          if (look_51_0 == T__25) 
            alt_51 = 1

          end
          case alt_51
          when 1
            # at line 345:28: ',' assignment_expression
            match(T__25, TOKENS_FOLLOWING_T__25_IN_expression_1604)
            @state.following.push(TOKENS_FOLLOWING_assignment_expression_IN_expression_1606)
            assignment_expression
            @state.following.pop

          else
            break # out of loop for decision 51
          end
        end # loop for decision 51

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 45)
        memoize(__method__, expression_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule constant_expression
    # 
    # (in C.g)
    # 348:1: constant_expression : conditional_expression ;
    # 
    def constant_expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 46)
      constant_expression_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 349:5: conditional_expression
        @state.following.push(TOKENS_FOLLOWING_conditional_expression_IN_constant_expression_1621)
        conditional_expression
        @state.following.pop

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 46)
        memoize(__method__, constant_expression_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule assignment_expression
    # 
    # (in C.g)
    # 352:1: assignment_expression : ( lvalue assignment_operator assignment_expression | conditional_expression );
    # 
    def assignment_expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 47)
      assignment_expression_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 353:3: ( lvalue assignment_operator assignment_expression | conditional_expression )
        alt_52 = 2
        alt_52 = @dfa52.predict(@input)
        case alt_52
        when 1
          # at line 353:5: lvalue assignment_operator assignment_expression
          @state.following.push(TOKENS_FOLLOWING_lvalue_IN_assignment_expression_1634)
          lvalue
          @state.following.pop
          @state.following.push(TOKENS_FOLLOWING_assignment_operator_IN_assignment_expression_1636)
          assignment_operator
          @state.following.pop
          @state.following.push(TOKENS_FOLLOWING_assignment_expression_IN_assignment_expression_1638)
          assignment_expression
          @state.following.pop

        when 2
          # at line 354:5: conditional_expression
          @state.following.push(TOKENS_FOLLOWING_conditional_expression_IN_assignment_expression_1644)
          conditional_expression
          @state.following.pop

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 47)
        memoize(__method__, assignment_expression_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule lvalue
    # 
    # (in C.g)
    # 357:1: lvalue : unary_expression ;
    # 
    def lvalue
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 48)
      lvalue_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 358:6: unary_expression
        @state.following.push(TOKENS_FOLLOWING_unary_expression_IN_lvalue_1660)
        unary_expression
        @state.following.pop

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 48)
        memoize(__method__, lvalue_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule assignment_operator
    # 
    # (in C.g)
    # 361:1: assignment_operator : ( '=' | '*=' | '/=' | '%=' | '+=' | '-=' | '<<=' | '>>=' | '&=' | '^=' | '|=' );
    # 
    def assignment_operator
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 49)
      assignment_operator_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 
        if @input.peek(1) == T__26 || @input.peek(1).between?(T__66, T__75)
          @input.consume
          @state.error_recovery = false
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          mse = MismatchedSet(nil)
          raise mse
        end



        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 49)
        memoize(__method__, assignment_operator_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule conditional_expression
    # 
    # (in C.g)
    # 375:1: conditional_expression : logical_or_expression ( '?' expression ':' conditional_expression )? ;
    # 
    def conditional_expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 50)
      conditional_expression_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 376:5: logical_or_expression ( '?' expression ':' conditional_expression )?
        @state.following.push(TOKENS_FOLLOWING_logical_or_expression_IN_conditional_expression_1746)
        logical_or_expression
        @state.following.pop
        # at line 376:27: ( '?' expression ':' conditional_expression )?
        alt_53 = 2
        look_53_0 = @input.peek(1)

        if (look_53_0 == T__76) 
          alt_53 = 1
        end
        case alt_53
        when 1
          # at line 376:28: '?' expression ':' conditional_expression
          match(T__76, TOKENS_FOLLOWING_T__76_IN_conditional_expression_1749)
          @state.following.push(TOKENS_FOLLOWING_expression_IN_conditional_expression_1751)
          expression
          @state.following.pop
          match(T__44, TOKENS_FOLLOWING_T__44_IN_conditional_expression_1753)
          @state.following.push(TOKENS_FOLLOWING_conditional_expression_IN_conditional_expression_1755)
          conditional_expression
          @state.following.pop

        end

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 50)
        memoize(__method__, conditional_expression_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule logical_or_expression
    # 
    # (in C.g)
    # 379:1: logical_or_expression : logical_and_expression ( '||' logical_and_expression )* ;
    # 
    def logical_or_expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 51)
      logical_or_expression_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 380:5: logical_and_expression ( '||' logical_and_expression )*
        @state.following.push(TOKENS_FOLLOWING_logical_and_expression_IN_logical_or_expression_1770)
        logical_and_expression
        @state.following.pop
        # at line 380:28: ( '||' logical_and_expression )*
        while true # decision 54
          alt_54 = 2
          alt_54 = @dfa54.predict(@input)
          case alt_54
          when 1
            # at line 380:29: '||' logical_and_expression
            match(T__77, TOKENS_FOLLOWING_T__77_IN_logical_or_expression_1773)
            @state.following.push(TOKENS_FOLLOWING_logical_and_expression_IN_logical_or_expression_1775)
            logical_and_expression
            @state.following.pop

          else
            break # out of loop for decision 54
          end
        end # loop for decision 54

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 51)
        memoize(__method__, logical_or_expression_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule logical_and_expression
    # 
    # (in C.g)
    # 383:1: logical_and_expression : inclusive_or_expression ( '&&' inclusive_or_expression )* ;
    # 
    def logical_and_expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 52)
      logical_and_expression_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 384:5: inclusive_or_expression ( '&&' inclusive_or_expression )*
        @state.following.push(TOKENS_FOLLOWING_inclusive_or_expression_IN_logical_and_expression_1790)
        inclusive_or_expression
        @state.following.pop
        # at line 384:29: ( '&&' inclusive_or_expression )*
        while true # decision 55
          alt_55 = 2
          alt_55 = @dfa55.predict(@input)
          case alt_55
          when 1
            # at line 384:30: '&&' inclusive_or_expression
            match(T__78, TOKENS_FOLLOWING_T__78_IN_logical_and_expression_1793)
            @state.following.push(TOKENS_FOLLOWING_inclusive_or_expression_IN_logical_and_expression_1795)
            inclusive_or_expression
            @state.following.pop

          else
            break # out of loop for decision 55
          end
        end # loop for decision 55

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 52)
        memoize(__method__, logical_and_expression_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule inclusive_or_expression
    # 
    # (in C.g)
    # 387:1: inclusive_or_expression : exclusive_or_expression ( '|' exclusive_or_expression )* ;
    # 
    def inclusive_or_expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 53)
      inclusive_or_expression_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 388:5: exclusive_or_expression ( '|' exclusive_or_expression )*
        @state.following.push(TOKENS_FOLLOWING_exclusive_or_expression_IN_inclusive_or_expression_1810)
        exclusive_or_expression
        @state.following.pop
        # at line 388:29: ( '|' exclusive_or_expression )*
        while true # decision 56
          alt_56 = 2
          alt_56 = @dfa56.predict(@input)
          case alt_56
          when 1
            # at line 388:30: '|' exclusive_or_expression
            match(T__79, TOKENS_FOLLOWING_T__79_IN_inclusive_or_expression_1813)
            @state.following.push(TOKENS_FOLLOWING_exclusive_or_expression_IN_inclusive_or_expression_1815)
            exclusive_or_expression
            @state.following.pop

          else
            break # out of loop for decision 56
          end
        end # loop for decision 56

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 53)
        memoize(__method__, inclusive_or_expression_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule exclusive_or_expression
    # 
    # (in C.g)
    # 391:1: exclusive_or_expression : and_expression ( '^' and_expression )* ;
    # 
    def exclusive_or_expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 54)
      exclusive_or_expression_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 392:5: and_expression ( '^' and_expression )*
        @state.following.push(TOKENS_FOLLOWING_and_expression_IN_exclusive_or_expression_1830)
        and_expression
        @state.following.pop
        # at line 392:20: ( '^' and_expression )*
        while true # decision 57
          alt_57 = 2
          alt_57 = @dfa57.predict(@input)
          case alt_57
          when 1
            # at line 392:21: '^' and_expression
            match(T__80, TOKENS_FOLLOWING_T__80_IN_exclusive_or_expression_1833)
            @state.following.push(TOKENS_FOLLOWING_and_expression_IN_exclusive_or_expression_1835)
            and_expression
            @state.following.pop

          else
            break # out of loop for decision 57
          end
        end # loop for decision 57

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 54)
        memoize(__method__, exclusive_or_expression_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule and_expression
    # 
    # (in C.g)
    # 395:1: and_expression : equality_expression ( '&' equality_expression )* ;
    # 
    def and_expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 55)
      and_expression_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 396:5: equality_expression ( '&' equality_expression )*
        @state.following.push(TOKENS_FOLLOWING_equality_expression_IN_and_expression_1850)
        equality_expression
        @state.following.pop
        # at line 396:25: ( '&' equality_expression )*
        while true # decision 58
          alt_58 = 2
          alt_58 = @dfa58.predict(@input)
          case alt_58
          when 1
            # at line 396:26: '&' equality_expression
            match(T__63, TOKENS_FOLLOWING_T__63_IN_and_expression_1853)
            @state.following.push(TOKENS_FOLLOWING_equality_expression_IN_and_expression_1855)
            equality_expression
            @state.following.pop

          else
            break # out of loop for decision 58
          end
        end # loop for decision 58

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 55)
        memoize(__method__, and_expression_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule equality_expression
    # 
    # (in C.g)
    # 398:1: equality_expression : relational_expression ( ( '==' | '!=' ) relational_expression )* ;
    # 
    def equality_expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 56)
      equality_expression_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 399:5: relational_expression ( ( '==' | '!=' ) relational_expression )*
        @state.following.push(TOKENS_FOLLOWING_relational_expression_IN_equality_expression_1869)
        relational_expression
        @state.following.pop
        # at line 399:27: ( ( '==' | '!=' ) relational_expression )*
        while true # decision 59
          alt_59 = 2
          alt_59 = @dfa59.predict(@input)
          case alt_59
          when 1
            # at line 399:28: ( '==' | '!=' ) relational_expression
            if @input.peek(1).between?(T__81, T__82)
              @input.consume
              @state.error_recovery = false
            else
              @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

              mse = MismatchedSet(nil)
              raise mse
            end


            @state.following.push(TOKENS_FOLLOWING_relational_expression_IN_equality_expression_1878)
            relational_expression
            @state.following.pop

          else
            break # out of loop for decision 59
          end
        end # loop for decision 59

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 56)
        memoize(__method__, equality_expression_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule relational_expression
    # 
    # (in C.g)
    # 402:1: relational_expression : shift_expression ( ( '<' | '>' | '<=' | '>=' ) shift_expression )* ;
    # 
    def relational_expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 57)
      relational_expression_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 403:5: shift_expression ( ( '<' | '>' | '<=' | '>=' ) shift_expression )*
        @state.following.push(TOKENS_FOLLOWING_shift_expression_IN_relational_expression_1893)
        shift_expression
        @state.following.pop
        # at line 403:22: ( ( '<' | '>' | '<=' | '>=' ) shift_expression )*
        while true # decision 60
          alt_60 = 2
          alt_60 = @dfa60.predict(@input)
          case alt_60
          when 1
            # at line 403:23: ( '<' | '>' | '<=' | '>=' ) shift_expression
            if @input.peek(1).between?(T__83, T__86)
              @input.consume
              @state.error_recovery = false
            else
              @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

              mse = MismatchedSet(nil)
              raise mse
            end


            @state.following.push(TOKENS_FOLLOWING_shift_expression_IN_relational_expression_1906)
            shift_expression
            @state.following.pop

          else
            break # out of loop for decision 60
          end
        end # loop for decision 60

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 57)
        memoize(__method__, relational_expression_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule shift_expression
    # 
    # (in C.g)
    # 406:1: shift_expression : additive_expression ( ( '<<' | '>>' ) additive_expression )* ;
    # 
    def shift_expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 58)
      shift_expression_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 407:5: additive_expression ( ( '<<' | '>>' ) additive_expression )*
        @state.following.push(TOKENS_FOLLOWING_additive_expression_IN_shift_expression_1921)
        additive_expression
        @state.following.pop
        # at line 407:25: ( ( '<<' | '>>' ) additive_expression )*
        while true # decision 61
          alt_61 = 2
          alt_61 = @dfa61.predict(@input)
          case alt_61
          when 1
            # at line 407:26: ( '<<' | '>>' ) additive_expression
            if @input.peek(1).between?(T__87, T__88)
              @input.consume
              @state.error_recovery = false
            else
              @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

              mse = MismatchedSet(nil)
              raise mse
            end


            @state.following.push(TOKENS_FOLLOWING_additive_expression_IN_shift_expression_1930)
            additive_expression
            @state.following.pop

          else
            break # out of loop for decision 61
          end
        end # loop for decision 61

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 58)
        memoize(__method__, shift_expression_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule statement
    # 
    # (in C.g)
    # 412:1: statement : ( labeled_statement | compound_statement | expression_statement | selection_statement | iteration_statement | jump_statement );
    # 
    def statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 59)
      statement_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 413:3: ( labeled_statement | compound_statement | expression_statement | selection_statement | iteration_statement | jump_statement )
        alt_62 = 6
        alt_62 = @dfa62.predict(@input)
        case alt_62
        when 1
          # at line 413:5: labeled_statement
          @state.following.push(TOKENS_FOLLOWING_labeled_statement_IN_statement_1947)
          labeled_statement
          @state.following.pop

        when 2
          # at line 414:5: compound_statement
          @state.following.push(TOKENS_FOLLOWING_compound_statement_IN_statement_1953)
          compound_statement
          @state.following.pop

        when 3
          # at line 415:5: expression_statement
          @state.following.push(TOKENS_FOLLOWING_expression_statement_IN_statement_1959)
          expression_statement
          @state.following.pop

        when 4
          # at line 416:5: selection_statement
          @state.following.push(TOKENS_FOLLOWING_selection_statement_IN_statement_1965)
          selection_statement
          @state.following.pop

        when 5
          # at line 417:5: iteration_statement
          @state.following.push(TOKENS_FOLLOWING_iteration_statement_IN_statement_1971)
          iteration_statement
          @state.following.pop

        when 6
          # at line 418:5: jump_statement
          @state.following.push(TOKENS_FOLLOWING_jump_statement_IN_statement_1977)
          jump_statement
          @state.following.pop

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 59)
        memoize(__method__, statement_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule labeled_statement
    # 
    # (in C.g)
    # 421:1: labeled_statement : ( IDENTIFIER ':' statement | 'case' constant_expression ':' statement | 'default' ':' statement );
    # 
    def labeled_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 60)
      labeled_statement_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 422:3: ( IDENTIFIER ':' statement | 'case' constant_expression ':' statement | 'default' ':' statement )
        alt_63 = 3
        case look_63 = @input.peek(1)
        when IDENTIFIER then alt_63 = 1
        when T__89 then alt_63 = 2
        when T__90 then alt_63 = 3
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          nvae = NoViableAlternative("", 63, 0)
          raise nvae
        end
        case alt_63
        when 1
          # at line 422:5: IDENTIFIER ':' statement
          match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_labeled_statement_1990)
          match(T__44, TOKENS_FOLLOWING_T__44_IN_labeled_statement_1992)
          @state.following.push(TOKENS_FOLLOWING_statement_IN_labeled_statement_1994)
          statement
          @state.following.pop

        when 2
          # at line 423:5: 'case' constant_expression ':' statement
          match(T__89, TOKENS_FOLLOWING_T__89_IN_labeled_statement_2000)
          @state.following.push(TOKENS_FOLLOWING_constant_expression_IN_labeled_statement_2002)
          constant_expression
          @state.following.pop
          match(T__44, TOKENS_FOLLOWING_T__44_IN_labeled_statement_2004)
          @state.following.push(TOKENS_FOLLOWING_statement_IN_labeled_statement_2006)
          statement
          @state.following.pop

        when 3
          # at line 424:5: 'default' ':' statement
          match(T__90, TOKENS_FOLLOWING_T__90_IN_labeled_statement_2012)
          match(T__44, TOKENS_FOLLOWING_T__44_IN_labeled_statement_2014)
          @state.following.push(TOKENS_FOLLOWING_statement_IN_labeled_statement_2016)
          statement
          @state.following.pop

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 60)
        memoize(__method__, labeled_statement_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule compound_statement
    # 
    # (in C.g)
    # 427:1: compound_statement : '{' ( declaration )* ( statement_list )? '}' ;
    # 
    def compound_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 61)
      @Symbols_stack.push(@@Symbols.new)
      compound_statement_start_index = @input.index
      # - - - - @init action - - - -

        @Symbols_stack[-1].types = Set.new


      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 432:5: '{' ( declaration )* ( statement_list )? '}'
        match(T__40, TOKENS_FOLLOWING_T__40_IN_compound_statement_2040)
        # at line 432:9: ( declaration )*
        while true # decision 64
          alt_64 = 2
          alt_64 = @dfa64.predict(@input)
          case alt_64
          when 1
            # at line 0:0: declaration
            @state.following.push(TOKENS_FOLLOWING_declaration_IN_compound_statement_2042)
            declaration
            @state.following.pop

          else
            break # out of loop for decision 64
          end
        end # loop for decision 64
        # at line 432:22: ( statement_list )?
        alt_65 = 2
        alt_65 = @dfa65.predict(@input)
        case alt_65
        when 1
          # at line 0:0: statement_list
          @state.following.push(TOKENS_FOLLOWING_statement_list_IN_compound_statement_2045)
          statement_list
          @state.following.pop

        end
        match(T__41, TOKENS_FOLLOWING_T__41_IN_compound_statement_2048)

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 61)
        memoize(__method__, compound_statement_start_index, success) if @state.backtracking > 0
        @Symbols_stack.pop

      end
      
      return 
    end


    # 
    # parser rule statement_list
    # 
    # (in C.g)
    # 435:1: statement_list : ( statement )+ ;
    # 
    def statement_list
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 62)
      statement_list_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 436:5: ( statement )+
        # at file 436:5: ( statement )+
        match_count_66 = 0
        while true
          alt_66 = 2
          alt_66 = @dfa66.predict(@input)
          case alt_66
          when 1
            # at line 0:0: statement
            @state.following.push(TOKENS_FOLLOWING_statement_IN_statement_list_2061)
            statement
            @state.following.pop

          else
            match_count_66 > 0 and break
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

            eee = EarlyExit(66)


            raise eee
          end
          match_count_66 += 1
        end


        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 62)
        memoize(__method__, statement_list_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule expression_statement
    # 
    # (in C.g)
    # 439:1: expression_statement : ( ';' | expression ';' );
    # 
    def expression_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 63)
      expression_statement_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 440:3: ( ';' | expression ';' )
        alt_67 = 2
        look_67_0 = @input.peek(1)

        if (look_67_0 == T__24) 
          alt_67 = 1
        elsif (look_67_0.between?(IDENTIFIER, FLOATING_POINT_LITERAL) || look_67_0 == T__48 || look_67_0 == T__52 || look_67_0.between?(T__54, T__55) || look_67_0.between?(T__58, T__60) || look_67_0.between?(T__63, T__65)) 
          alt_67 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 67, 0)
          raise nvae
        end
        case alt_67
        when 1
          # at line 440:5: ';'
          match(T__24, TOKENS_FOLLOWING_T__24_IN_expression_statement_2075)

        when 2
          # at line 441:5: expression ';'
          @state.following.push(TOKENS_FOLLOWING_expression_IN_expression_statement_2081)
          expression
          @state.following.pop
          match(T__24, TOKENS_FOLLOWING_T__24_IN_expression_statement_2083)

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 63)
        memoize(__method__, expression_statement_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule selection_statement
    # 
    # (in C.g)
    # 444:1: selection_statement : ( 'if' '(' expression ')' statement ( options {k=1; backtrack=false; } : 'else' statement )? | 'switch' '(' expression ')' statement );
    # 
    def selection_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 64)
      selection_statement_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 445:3: ( 'if' '(' expression ')' statement ( options {k=1; backtrack=false; } : 'else' statement )? | 'switch' '(' expression ')' statement )
        alt_69 = 2
        look_69_0 = @input.peek(1)

        if (look_69_0 == T__91) 
          alt_69 = 1
        elsif (look_69_0 == T__93) 
          alt_69 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 69, 0)
          raise nvae
        end
        case alt_69
        when 1
          # at line 445:5: 'if' '(' expression ')' statement ( options {k=1; backtrack=false; } : 'else' statement )?
          match(T__91, TOKENS_FOLLOWING_T__91_IN_selection_statement_2096)
          match(T__48, TOKENS_FOLLOWING_T__48_IN_selection_statement_2098)
          @state.following.push(TOKENS_FOLLOWING_expression_IN_selection_statement_2100)
          expression
          @state.following.pop
          match(T__49, TOKENS_FOLLOWING_T__49_IN_selection_statement_2102)
          @state.following.push(TOKENS_FOLLOWING_statement_IN_selection_statement_2104)
          statement
          @state.following.pop
          # at line 445:39: ( options {k=1; backtrack=false; } : 'else' statement )?
          alt_68 = 2
          look_68_0 = @input.peek(1)

          if (look_68_0 == T__92) 
            look_68_1 = @input.peek(2)

            if (true) 
              alt_68 = 1
            end
          end
          case alt_68
          when 1
            # at line 445:72: 'else' statement
            match(T__92, TOKENS_FOLLOWING_T__92_IN_selection_statement_2119)
            @state.following.push(TOKENS_FOLLOWING_statement_IN_selection_statement_2121)
            statement
            @state.following.pop

          end

        when 2
          # at line 446:5: 'switch' '(' expression ')' statement
          match(T__93, TOKENS_FOLLOWING_T__93_IN_selection_statement_2129)
          match(T__48, TOKENS_FOLLOWING_T__48_IN_selection_statement_2131)
          @state.following.push(TOKENS_FOLLOWING_expression_IN_selection_statement_2133)
          expression
          @state.following.pop
          match(T__49, TOKENS_FOLLOWING_T__49_IN_selection_statement_2135)
          @state.following.push(TOKENS_FOLLOWING_statement_IN_selection_statement_2137)
          statement
          @state.following.pop

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 64)
        memoize(__method__, selection_statement_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule iteration_statement
    # 
    # (in C.g)
    # 449:1: iteration_statement : ( 'while' '(' expression ')' statement | 'do' statement 'while' '(' expression ')' ';' | 'for' '(' expression_statement expression_statement ( expression )? ')' statement );
    # 
    def iteration_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 65)
      iteration_statement_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 450:3: ( 'while' '(' expression ')' statement | 'do' statement 'while' '(' expression ')' ';' | 'for' '(' expression_statement expression_statement ( expression )? ')' statement )
        alt_71 = 3
        case look_71 = @input.peek(1)
        when T__94 then alt_71 = 1
        when T__95 then alt_71 = 2
        when T__96 then alt_71 = 3
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          nvae = NoViableAlternative("", 71, 0)
          raise nvae
        end
        case alt_71
        when 1
          # at line 450:5: 'while' '(' expression ')' statement
          match(T__94, TOKENS_FOLLOWING_T__94_IN_iteration_statement_2150)
          match(T__48, TOKENS_FOLLOWING_T__48_IN_iteration_statement_2152)
          @state.following.push(TOKENS_FOLLOWING_expression_IN_iteration_statement_2154)
          expression
          @state.following.pop
          match(T__49, TOKENS_FOLLOWING_T__49_IN_iteration_statement_2156)
          @state.following.push(TOKENS_FOLLOWING_statement_IN_iteration_statement_2158)
          statement
          @state.following.pop

        when 2
          # at line 451:5: 'do' statement 'while' '(' expression ')' ';'
          match(T__95, TOKENS_FOLLOWING_T__95_IN_iteration_statement_2164)
          @state.following.push(TOKENS_FOLLOWING_statement_IN_iteration_statement_2166)
          statement
          @state.following.pop
          match(T__94, TOKENS_FOLLOWING_T__94_IN_iteration_statement_2168)
          match(T__48, TOKENS_FOLLOWING_T__48_IN_iteration_statement_2170)
          @state.following.push(TOKENS_FOLLOWING_expression_IN_iteration_statement_2172)
          expression
          @state.following.pop
          match(T__49, TOKENS_FOLLOWING_T__49_IN_iteration_statement_2174)
          match(T__24, TOKENS_FOLLOWING_T__24_IN_iteration_statement_2176)

        when 3
          # at line 452:5: 'for' '(' expression_statement expression_statement ( expression )? ')' statement
          match(T__96, TOKENS_FOLLOWING_T__96_IN_iteration_statement_2182)
          match(T__48, TOKENS_FOLLOWING_T__48_IN_iteration_statement_2184)
          @state.following.push(TOKENS_FOLLOWING_expression_statement_IN_iteration_statement_2186)
          expression_statement
          @state.following.pop
          @state.following.push(TOKENS_FOLLOWING_expression_statement_IN_iteration_statement_2188)
          expression_statement
          @state.following.pop
          # at line 452:57: ( expression )?
          alt_70 = 2
          look_70_0 = @input.peek(1)

          if (look_70_0.between?(IDENTIFIER, FLOATING_POINT_LITERAL) || look_70_0 == T__48 || look_70_0 == T__52 || look_70_0.between?(T__54, T__55) || look_70_0.between?(T__58, T__60) || look_70_0.between?(T__63, T__65)) 
            alt_70 = 1
          end
          case alt_70
          when 1
            # at line 0:0: expression
            @state.following.push(TOKENS_FOLLOWING_expression_IN_iteration_statement_2190)
            expression
            @state.following.pop

          end
          match(T__49, TOKENS_FOLLOWING_T__49_IN_iteration_statement_2193)
          @state.following.push(TOKENS_FOLLOWING_statement_IN_iteration_statement_2195)
          statement
          @state.following.pop

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 65)
        memoize(__method__, iteration_statement_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule jump_statement
    # 
    # (in C.g)
    # 455:1: jump_statement : ( 'goto' IDENTIFIER ';' | 'continue' ';' | 'break' ';' | 'return' ';' | 'return' expression ';' );
    # 
    def jump_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 66)
      jump_statement_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 456:3: ( 'goto' IDENTIFIER ';' | 'continue' ';' | 'break' ';' | 'return' ';' | 'return' expression ';' )
        alt_72 = 5
        alt_72 = @dfa72.predict(@input)
        case alt_72
        when 1
          # at line 456:5: 'goto' IDENTIFIER ';'
          match(T__97, TOKENS_FOLLOWING_T__97_IN_jump_statement_2208)
          match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_jump_statement_2210)
          match(T__24, TOKENS_FOLLOWING_T__24_IN_jump_statement_2212)

        when 2
          # at line 457:5: 'continue' ';'
          match(T__98, TOKENS_FOLLOWING_T__98_IN_jump_statement_2218)
          match(T__24, TOKENS_FOLLOWING_T__24_IN_jump_statement_2220)

        when 3
          # at line 458:5: 'break' ';'
          match(T__99, TOKENS_FOLLOWING_T__99_IN_jump_statement_2226)
          match(T__24, TOKENS_FOLLOWING_T__24_IN_jump_statement_2228)

        when 4
          # at line 459:5: 'return' ';'
          match(T__100, TOKENS_FOLLOWING_T__100_IN_jump_statement_2234)
          match(T__24, TOKENS_FOLLOWING_T__24_IN_jump_statement_2236)

        when 5
          # at line 460:5: 'return' expression ';'
          match(T__100, TOKENS_FOLLOWING_T__100_IN_jump_statement_2242)
          @state.following.push(TOKENS_FOLLOWING_expression_IN_jump_statement_2244)
          expression
          @state.following.pop
          match(T__24, TOKENS_FOLLOWING_T__24_IN_jump_statement_2246)

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 66)
        memoize(__method__, jump_statement_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end

    # 
    # syntactic predicate synpred_2_c!
    # 
    # (in C.g)
    # 78:7: synpred2_C : declaration_specifiers ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred_2_c!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 68)

      # at line 78:7: declaration_specifiers
      @state.following.push(TOKENS_FOLLOWING_declaration_specifiers_IN_synpred2_C_118)
      declaration_specifiers
      @state.following.pop

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 68)

    end
    # 
    # syntactic predicate synpred_4_c!
    # 
    # (in C.g)
    # 78:5: synpred4_C : ( declaration_specifiers )? declarator ( declaration )* '{' ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred_4_c!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 70)

      # at line 78:7: ( declaration_specifiers )? declarator ( declaration )* '{'
      # at line 78:7: ( declaration_specifiers )?
      alt_73 = 2
      alt_73 = @dfa73.predict(@input)
      case alt_73
      when 1
        # at line 0:0: declaration_specifiers
        @state.following.push(TOKENS_FOLLOWING_declaration_specifiers_IN_synpred4_C_118)
        declaration_specifiers
        @state.following.pop

      end
      @state.following.push(TOKENS_FOLLOWING_declarator_IN_synpred4_C_121)
      declarator
      @state.following.pop
      # at line 78:42: ( declaration )*
      while true # decision 74
        alt_74 = 2
        alt_74 = @dfa74.predict(@input)
        case alt_74
        when 1
          # at line 0:0: declaration
          @state.following.push(TOKENS_FOLLOWING_declaration_IN_synpred4_C_123)
          declaration
          @state.following.pop

        else
          break # out of loop for decision 74
        end
      end # loop for decision 74
      match(T__40, TOKENS_FOLLOWING_T__40_IN_synpred4_C_126)

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 70)

    end
    # 
    # syntactic predicate synpred_5_c!
    # 
    # (in C.g)
    # 87:6: synpred5_C : declaration_specifiers ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred_5_c!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 71)

      # at line 87:6: declaration_specifiers
      @state.following.push(TOKENS_FOLLOWING_declaration_specifiers_IN_synpred5_C_162)
      declaration_specifiers
      @state.following.pop

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 71)

    end
    # 
    # syntactic predicate synpred_8_c!
    # 
    # (in C.g)
    # 98:15: synpred8_C : declaration_specifiers ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred_8_c!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 74)

      # at line 98:15: declaration_specifiers
      @state.following.push(TOKENS_FOLLOWING_declaration_specifiers_IN_synpred8_C_226)
      declaration_specifiers
      @state.following.pop

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 74)

    end
    # 
    # syntactic predicate synpred_12_c!
    # 
    # (in C.g)
    # 105:9: synpred12_C : type_specifier ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred_12_c!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 78)

      # at line 105:9: type_specifier
      @state.following.push(TOKENS_FOLLOWING_type_specifier_IN_synpred12_C_276)
      type_specifier
      @state.following.pop

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 78)

    end
    # 
    # syntactic predicate synpred_35_c!
    # 
    # (in C.g)
    # 168:24: synpred35_C : type_specifier ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred_35_c!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 101)

      # at line 168:24: type_specifier
      @state.following.push(TOKENS_FOLLOWING_type_specifier_IN_synpred35_C_578)
      type_specifier
      @state.following.pop

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 101)

    end
    # 
    # syntactic predicate synpred_45_c!
    # 
    # (in C.g)
    # 201:5: synpred45_C : ( pointer )? direct_declarator ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred_45_c!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 111)

      # at line 201:5: ( pointer )? direct_declarator
      # at line 201:5: ( pointer )?
      alt_79 = 2
      look_79_0 = @input.peek(1)

      if (look_79_0 == T__52) 
        alt_79 = 1
      end
      case alt_79
      when 1
        # at line 0:0: pointer
        @state.following.push(TOKENS_FOLLOWING_pointer_IN_synpred45_C_749)
        pointer
        @state.following.pop

      end
      @state.following.push(TOKENS_FOLLOWING_direct_declarator_IN_synpred45_C_752)
      direct_declarator
      @state.following.pop

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 111)

    end
    # 
    # syntactic predicate synpred_47_c!
    # 
    # (in C.g)
    # 215:5: synpred47_C : declarator_suffix ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred_47_c!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 113)

      # at line 215:5: declarator_suffix
      @state.following.push(TOKENS_FOLLOWING_declarator_suffix_IN_synpred47_C_804)
      declarator_suffix
      @state.following.pop

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 113)

    end
    # 
    # syntactic predicate synpred_50_c!
    # 
    # (in C.g)
    # 221:7: synpred50_C : '(' parameter_type_list ')' ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred_50_c!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 116)

      # at line 221:7: '(' parameter_type_list ')'
      match(T__48, TOKENS_FOLLOWING_T__48_IN_synpred50_C_842)
      @state.following.push(TOKENS_FOLLOWING_parameter_type_list_IN_synpred50_C_844)
      parameter_type_list
      @state.following.pop
      match(T__49, TOKENS_FOLLOWING_T__49_IN_synpred50_C_846)

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 116)

    end
    # 
    # syntactic predicate synpred_51_c!
    # 
    # (in C.g)
    # 222:7: synpred51_C : '(' identifier_list ')' ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred_51_c!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 117)

      # at line 222:7: '(' identifier_list ')'
      match(T__48, TOKENS_FOLLOWING_T__48_IN_synpred51_C_854)
      @state.following.push(TOKENS_FOLLOWING_identifier_list_IN_synpred51_C_856)
      identifier_list
      @state.following.pop
      match(T__49, TOKENS_FOLLOWING_T__49_IN_synpred51_C_858)

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 117)

    end
    # 
    # syntactic predicate synpred_52_c!
    # 
    # (in C.g)
    # 227:9: synpred52_C : type_qualifier ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred_52_c!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 118)

      # at line 227:9: type_qualifier
      @state.following.push(TOKENS_FOLLOWING_type_qualifier_IN_synpred52_C_883)
      type_qualifier
      @state.following.pop

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 118)

    end
    # 
    # syntactic predicate synpred_53_c!
    # 
    # (in C.g)
    # 227:25: synpred53_C : pointer ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred_53_c!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 119)

      # at line 227:25: pointer
      @state.following.push(TOKENS_FOLLOWING_pointer_IN_synpred53_C_886)
      pointer
      @state.following.pop

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 119)

    end
    # 
    # syntactic predicate synpred_54_c!
    # 
    # (in C.g)
    # 227:5: synpred54_C : '*' ( type_qualifier )+ ( pointer )? ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred_54_c!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 120)

      # at line 227:5: '*' ( type_qualifier )+ ( pointer )?
      match(T__52, TOKENS_FOLLOWING_T__52_IN_synpred54_C_881)
      # at file 227:9: ( type_qualifier )+
      match_count_80 = 0
      while true
        alt_80 = 2
        look_80_0 = @input.peek(1)

        if (look_80_0.between?(T__46, T__47)) 
          alt_80 = 1

        end
        case alt_80
        when 1
          # at line 0:0: type_qualifier
          @state.following.push(TOKENS_FOLLOWING_type_qualifier_IN_synpred54_C_883)
          type_qualifier
          @state.following.pop

        else
          match_count_80 > 0 and break
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          eee = EarlyExit(80)


          raise eee
        end
        match_count_80 += 1
      end

      # at line 227:25: ( pointer )?
      alt_81 = 2
      look_81_0 = @input.peek(1)

      if (look_81_0 == T__52) 
        alt_81 = 1
      end
      case alt_81
      when 1
        # at line 0:0: pointer
        @state.following.push(TOKENS_FOLLOWING_pointer_IN_synpred54_C_886)
        pointer
        @state.following.pop

      end

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 120)

    end
    # 
    # syntactic predicate synpred_55_c!
    # 
    # (in C.g)
    # 228:5: synpred55_C : '*' pointer ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred_55_c!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 121)

      # at line 228:5: '*' pointer
      match(T__52, TOKENS_FOLLOWING_T__52_IN_synpred55_C_893)
      @state.following.push(TOKENS_FOLLOWING_pointer_IN_synpred55_C_895)
      pointer
      @state.following.pop

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 121)

    end
    # 
    # syntactic predicate synpred_58_c!
    # 
    # (in C.g)
    # 241:29: synpred58_C : declarator ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred_58_c!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 124)

      # at line 241:29: declarator
      @state.following.push(TOKENS_FOLLOWING_declarator_IN_synpred58_C_957)
      declarator
      @state.following.pop

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 124)

    end
    # 
    # syntactic predicate synpred_59_c!
    # 
    # (in C.g)
    # 241:40: synpred59_C : abstract_declarator ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred_59_c!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 125)

      # at line 241:40: abstract_declarator
      @state.following.push(TOKENS_FOLLOWING_abstract_declarator_IN_synpred59_C_959)
      abstract_declarator
      @state.following.pop

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 125)

    end
    # 
    # syntactic predicate synpred_62_c!
    # 
    # (in C.g)
    # 253:13: synpred62_C : direct_abstract_declarator ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred_62_c!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 128)

      # at line 253:13: direct_abstract_declarator
      @state.following.push(TOKENS_FOLLOWING_direct_abstract_declarator_IN_synpred62_C_1012)
      direct_abstract_declarator
      @state.following.pop

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 128)

    end
    # 
    # syntactic predicate synpred_65_c!
    # 
    # (in C.g)
    # 258:67: synpred65_C : abstract_declarator_suffix ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred_65_c!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 131)

      # at line 258:67: abstract_declarator_suffix
      @state.following.push(TOKENS_FOLLOWING_abstract_declarator_suffix_IN_synpred65_C_1047)
      abstract_declarator_suffix
      @state.following.pop

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 131)

    end
    # 
    # syntactic predicate synpred_78_c!
    # 
    # (in C.g)
    # 292:5: synpred78_C : '(' type_name ')' cast_expression ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred_78_c!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 144)

      # at line 292:5: '(' type_name ')' cast_expression
      match(T__48, TOKENS_FOLLOWING_T__48_IN_synpred78_C_1242)
      @state.following.push(TOKENS_FOLLOWING_type_name_IN_synpred78_C_1244)
      type_name
      @state.following.pop
      match(T__49, TOKENS_FOLLOWING_T__49_IN_synpred78_C_1246)
      @state.following.push(TOKENS_FOLLOWING_cast_expression_IN_synpred78_C_1248)
      cast_expression
      @state.following.pop

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 144)

    end
    # 
    # syntactic predicate synpred_83_c!
    # 
    # (in C.g)
    # 301:5: synpred83_C : 'sizeof' unary_expression ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred_83_c!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 149)

      # at line 301:5: 'sizeof' unary_expression
      match(T__60, TOKENS_FOLLOWING_T__60_IN_synpred83_C_1297)
      @state.following.push(TOKENS_FOLLOWING_unary_expression_IN_synpred83_C_1299)
      unary_expression
      @state.following.pop

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 149)

    end
    # 
    # syntactic predicate synpred_88_c!
    # 
    # (in C.g)
    # 311:13: synpred88_C : '*' IDENTIFIER ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred_88_c!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 154)

      # at line 311:13: '*' IDENTIFIER
      match(T__52, TOKENS_FOLLOWING_T__52_IN_synpred88_C_1408)
      match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_synpred88_C_1410)

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 154)

    end
    # 
    # syntactic predicate synpred_105_c!
    # 
    # (in C.g)
    # 353:5: synpred105_C : lvalue assignment_operator assignment_expression ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred_105_c!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 171)

      # at line 353:5: lvalue assignment_operator assignment_expression
      @state.following.push(TOKENS_FOLLOWING_lvalue_IN_synpred105_C_1634)
      lvalue
      @state.following.pop
      @state.following.push(TOKENS_FOLLOWING_assignment_operator_IN_synpred105_C_1636)
      assignment_operator
      @state.following.pop
      @state.following.push(TOKENS_FOLLOWING_assignment_expression_IN_synpred105_C_1638)
      assignment_expression
      @state.following.pop

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 171)

    end
    # 
    # syntactic predicate synpred_137_c!
    # 
    # (in C.g)
    # 432:9: synpred137_C : declaration ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred_137_c!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 203)

      # at line 432:9: declaration
      @state.following.push(TOKENS_FOLLOWING_declaration_IN_synpred137_C_2042)
      declaration
      @state.following.pop

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 203)

    end


    # - - - - - - - - - - DFA definitions - - - - - - - - - - -
    class DFA1 < ANTLR3::DFA
      EOT = unpack(19, -1)
      EOF = unpack(1, 1, 18, -1)
      MIN = unpack(1, 4, 18, -1)
      MAX = unpack(1, 52, 18, -1)
      ACCEPT = unpack(1, -1, 1, 2, 1, 1, 16, -1)
      SPECIAL = unpack(19, -1)
      TRANSITION = [
        unpack(1, 2, 18, -1, 1, 2, 3, -1, 13, 2, 2, -1, 2, 2, 1, -1, 4, 
               2, 3, -1, 1, 2),
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
      
      @decision = 1
      

      def description
        <<-'__dfa_description__'.strip!
          ()+ loopback of 59:5: ( external_declaration )+
        __dfa_description__
      end
    end
    class DFA2 < ANTLR3::DFA
      EOT = unpack(18, -1)
      EOF = unpack(18, -1)
      MIN = unpack(1, 4, 14, 0, 3, -1)
      MAX = unpack(1, 52, 14, 0, 3, -1)
      ACCEPT = unpack(15, -1, 2, 1, 1, 2)
      SPECIAL = unpack(1, 0, 1, 1, 1, 2, 1, 3, 1, 4, 1, 5, 1, 6, 1, 7, 1, 
                       8, 1, 9, 1, 10, 1, 11, 1, 12, 1, 13, 1, 14, 3, -1)
      TRANSITION = [
        unpack(1, 13, 18, -1, 1, 17, 3, -1, 4, 1, 1, 2, 1, 3, 1, 4, 1, 5, 
               1, 6, 1, 7, 1, 8, 1, 9, 1, 10, 2, -1, 2, 11, 1, -1, 1, 12, 
               2, 14, 1, 16, 3, -1, 1, 15),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
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
      
      @decision = 2
      

      def description
        <<-'__dfa_description__'.strip!
          62:1: external_declaration options {k=1; } : ( ( ( declaration_specifiers )? declarator ( declaration )* '{' )=> function_definition | declaration );
        __dfa_description__
      end
    end
    class DFA3 < ANTLR3::DFA
      EOT = unpack(36, -1)
      EOF = unpack(36, -1)
      MIN = unpack(1, 4, 12, -1, 1, 4, 4, -1, 1, 0, 1, -1, 14, 0, 2, -1)
      MAX = unpack(1, 52, 12, -1, 1, 52, 4, -1, 1, 0, 1, -1, 14, 0, 2, -1)
      ACCEPT = unpack(1, -1, 1, 1, 13, -1, 1, 2, 20, -1)
      SPECIAL = unpack(18, -1, 1, 0, 1, -1, 1, 1, 1, 2, 1, 3, 1, 4, 1, 5, 
                       1, 6, 1, 7, 1, 8, 1, 9, 1, 10, 1, 11, 1, 12, 1, 13, 
                       1, 14, 2, -1)
      TRANSITION = [
        unpack(1, 13, 22, -1, 13, 1, 2, -1, 2, 1, 1, -1, 3, 1, 1, 15, 3, 
               -1, 1, 15),
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
        unpack(1, 32, 18, -1, 1, 15, 3, -1, 4, 20, 1, 21, 1, 22, 1, 23, 
                1, 24, 1, 25, 1, 26, 1, 27, 1, 28, 1, 29, 1, 15, 1, -1, 
                2, 30, 1, -1, 1, 31, 2, 33, 1, 18, 1, -1, 1, 15, 1, -1, 
                1, 1),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(1, -1),
        unpack(),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(),
        unpack()
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 3
      

      def description
        <<-'__dfa_description__'.strip!
          87:6: ( declaration_specifiers )?
        __dfa_description__
      end
    end
    class DFA5 < ANTLR3::DFA
      EOT = unpack(17, -1)
      EOF = unpack(17, -1)
      MIN = unpack(1, 4, 16, -1)
      MAX = unpack(1, 47, 16, -1)
      ACCEPT = unpack(1, -1, 1, 1, 14, -1, 1, 2)
      SPECIAL = unpack(17, -1)
      TRANSITION = [
        unpack(1, 1, 18, -1, 1, 1, 3, -1, 13, 1, 1, 16, 1, -1, 2, 1, 1, 
               -1, 3, 1),
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
      
      @decision = 5
      

      def description
        <<-'__dfa_description__'.strip!
          88:5: ( ( declaration )+ compound_statement | compound_statement )
        __dfa_description__
      end
    end
    class DFA4 < ANTLR3::DFA
      EOT = unpack(17, -1)
      EOF = unpack(17, -1)
      MIN = unpack(1, 4, 16, -1)
      MAX = unpack(1, 47, 16, -1)
      ACCEPT = unpack(1, -1, 1, 2, 1, 1, 14, -1)
      SPECIAL = unpack(17, -1)
      TRANSITION = [
        unpack(1, 2, 18, -1, 1, 2, 3, -1, 13, 2, 1, 1, 1, -1, 2, 2, 1, -1, 
               3, 2),
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
      
      @decision = 4
      

      def description
        <<-'__dfa_description__'.strip!
          ()+ loopback of 88:8: ( declaration )+
        __dfa_description__
      end
    end
    class DFA8 < ANTLR3::DFA
      EOT = unpack(16, -1)
      EOF = unpack(16, -1)
      MIN = unpack(1, 4, 15, -1)
      MAX = unpack(1, 47, 15, -1)
      ACCEPT = unpack(1, -1, 1, 1, 1, 2, 13, -1)
      SPECIAL = unpack(16, -1)
      TRANSITION = [
        unpack(1, 2, 18, -1, 1, 1, 3, -1, 13, 2, 2, -1, 2, 2, 1, -1, 3, 
               2),
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
      
      @decision = 8
      

      def description
        <<-'__dfa_description__'.strip!
          93:1: declaration : ( 'typedef' ( declaration_specifiers )? init_declarator_list ';' | declaration_specifiers ( init_declarator_list )? ';' );
        __dfa_description__
      end
    end
    class DFA6 < ANTLR3::DFA
      EOT = unpack(37, -1)
      EOF = unpack(37, -1)
      MIN = unpack(1, 4, 12, -1, 1, 4, 4, -1, 1, 0, 18, -1)
      MAX = unpack(1, 52, 12, -1, 1, 52, 4, -1, 1, 0, 18, -1)
      ACCEPT = unpack(1, -1, 1, 1, 13, -1, 1, 2, 21, -1)
      SPECIAL = unpack(18, -1, 1, 0, 18, -1)
      TRANSITION = [
        unpack(1, 13, 22, -1, 13, 1, 2, -1, 2, 1, 1, -1, 3, 1, 1, 15, 3, 
               -1, 1, 15),
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
        unpack(1, 1, 19, -1, 3, 15, 13, 1, 2, -1, 2, 1, 1, -1, 3, 1, 1, 
                18, 1, -1, 1, 15, 1, -1, 1, 1),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
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
        unpack()
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 6
      

      def description
        <<-'__dfa_description__'.strip!
          98:15: ( declaration_specifiers )?
        __dfa_description__
      end
    end
    class DFA9 < ANTLR3::DFA
      EOT = unpack(46, -1)
      EOF = unpack(1, 1, 45, -1)
      MIN = unpack(1, 4, 1, -1, 1, 0, 43, -1)
      MAX = unpack(1, 52, 1, -1, 1, 0, 43, -1)
      ACCEPT = unpack(1, -1, 1, 4, 7, -1, 1, 1, 1, 2, 10, -1, 1, 3, 24, 
                      -1)
      SPECIAL = unpack(2, -1, 1, 0, 43, -1)
      TRANSITION = [
        unpack(1, 2, 19, -1, 2, 1, 1, -1, 4, 9, 9, 10, 2, -1, 2, 10, 1, 
               -1, 1, 10, 2, 21, 3, 1, 1, -1, 1, 1),
        unpack(),
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
      
      @decision = 9
      

      def description
        <<-'__dfa_description__'.strip!
          ()+ loopback of 104:5: ( storage_class_specifier | type_specifier | type_qualifier )+
        __dfa_description__
      end
    end
    class DFA12 < ANTLR3::DFA
      EOT = unpack(13, -1)
      EOF = unpack(13, -1)
      MIN = unpack(1, 4, 12, -1)
      MAX = unpack(1, 45, 12, -1)
      ACCEPT = unpack(1, -1, 1, 1, 1, 2, 1, 3, 1, 4, 1, 5, 1, 6, 1, 7, 1, 
                      8, 1, 9, 1, 10, 1, 11, 1, 12)
      SPECIAL = unpack(13, -1)
      TRANSITION = [
        unpack(1, 12, 26, -1, 1, 1, 1, 2, 1, 3, 1, 4, 1, 5, 1, 6, 1, 7, 
               1, 8, 1, 9, 2, -1, 2, 10, 1, -1, 1, 11),
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
      
      @decision = 12
      

      def description
        <<-'__dfa_description__'.strip!
          125:1: type_specifier : ( 'void' | 'char' | 'short' | 'int' | 'long' | 'float' | 'double' | 'signed' | 'unsigned' | struct_or_union_specifier | enum_specifier | type_id );
        __dfa_description__
      end
    end
    class DFA14 < ANTLR3::DFA
      EOT = unpack(27, -1)
      EOF = unpack(2, -1, 1, 5, 24, -1)
      MIN = unpack(1, 42, 2, 4, 24, -1)
      MAX = unpack(1, 43, 1, 40, 1, 52, 24, -1)
      ACCEPT = unpack(3, -1, 1, 1, 1, -1, 1, 2, 21, -1)
      SPECIAL = unpack(27, -1)
      TRANSITION = [
        unpack(2, 1),
        unpack(1, 2, 35, -1, 1, 3),
        unpack(1, 5, 19, -1, 2, 5, 1, -1, 13, 5, 1, 3, 1, -1, 9, 5, 1, 
                -1, 1, 5),
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
      
      @decision = 14
      

      def description
        <<-'__dfa_description__'.strip!
          144:1: struct_or_union_specifier options {k=3; } : ( struct_or_union ( IDENTIFIER )? '{' struct_declaration_list '}' | struct_or_union IDENTIFIER );
        __dfa_description__
      end
    end
    class DFA15 < ANTLR3::DFA
      EOT = unpack(15, -1)
      EOF = unpack(15, -1)
      MIN = unpack(1, 4, 14, -1)
      MAX = unpack(1, 47, 14, -1)
      ACCEPT = unpack(1, -1, 1, 2, 1, 1, 12, -1)
      SPECIAL = unpack(15, -1)
      TRANSITION = [
        unpack(1, 2, 26, -1, 9, 2, 1, -1, 1, 1, 2, 2, 1, -1, 3, 2),
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
      
      @decision = 15
      

      def description
        <<-'__dfa_description__'.strip!
          ()+ loopback of 160:5: ( struct_declaration )+
        __dfa_description__
      end
    end
    class DFA16 < ANTLR3::DFA
      EOT = unpack(39, -1)
      EOF = unpack(39, -1)
      MIN = unpack(1, 4, 1, -1, 1, 4, 16, -1, 3, 0, 17, -1)
      MAX = unpack(1, 52, 1, -1, 1, 52, 16, -1, 3, 0, 17, -1)
      ACCEPT = unpack(1, -1, 1, 3, 5, -1, 1, 1, 1, 2, 30, -1)
      SPECIAL = unpack(19, -1, 1, 0, 1, 1, 1, 2, 17, -1)
      TRANSITION = [
        unpack(1, 2, 26, -1, 9, 8, 2, -1, 2, 8, 1, 1, 1, 8, 2, 7, 3, 1, 
               1, -1, 1, 1),
        unpack(),
        unpack(1, 8, 19, -1, 2, 1, 5, -1, 9, 8, 2, -1, 2, 8, 1, 21, 3, 
                8, 1, 20, 1, 8, 1, 19, 1, -1, 1, 8),
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
      
      @decision = 16
      

      def description
        <<-'__dfa_description__'.strip!
          ()+ loopback of 168:5: ( type_qualifier | type_specifier )+
        __dfa_description__
      end
    end
    class DFA20 < ANTLR3::DFA
      EOT = unpack(27, -1)
      EOF = unpack(3, -1, 1, 5, 23, -1)
      MIN = unpack(1, 45, 1, 4, 1, -1, 1, 4, 23, -1)
      MAX = unpack(1, 45, 1, 40, 1, -1, 1, 52, 23, -1)
      ACCEPT = unpack(2, -1, 1, 1, 1, -1, 1, 2, 1, 3, 21, -1)
      SPECIAL = unpack(27, -1)
      TRANSITION = [
        unpack(1, 1),
        unpack(1, 3, 35, -1, 1, 2),
        unpack(),
        unpack(1, 5, 19, -1, 2, 5, 1, -1, 13, 5, 1, 4, 1, -1, 9, 5, 1, 
                -1, 1, 5),
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
      
      @decision = 20
      

      def description
        <<-'__dfa_description__'.strip!
          180:1: enum_specifier options {k=3; } : ( 'enum' '{' enumerator_list '}' | 'enum' IDENTIFIER '{' enumerator_list '}' | 'enum' IDENTIFIER );
        __dfa_description__
      end
    end
    class DFA24 < ANTLR3::DFA
      EOT = unpack(30, -1)
      EOF = unpack(30, -1)
      MIN = unpack(1, 4, 1, 0, 28, -1)
      MAX = unpack(1, 52, 1, 0, 28, -1)
      ACCEPT = unpack(2, -1, 1, 1, 26, -1, 1, 2)
      SPECIAL = unpack(1, -1, 1, 0, 28, -1)
      TRANSITION = [
        unpack(1, 2, 43, -1, 1, 2, 3, -1, 1, 1),
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
      
      @decision = 24
      

      def description
        <<-'__dfa_description__'.strip!
          200:1: declarator : ( ( pointer )? direct_declarator | pointer );
        __dfa_description__
      end
    end
    class DFA26 < ANTLR3::DFA
      EOT = unpack(53, -1)
      EOF = unpack(1, 1, 52, -1)
      MIN = unpack(1, 4, 23, -1, 2, 4, 1, 0, 1, -1, 1, 0, 1, -1, 13, 0, 
                   1, -1, 8, 0, 1, -1)
      MAX = unpack(1, 52, 23, -1, 1, 52, 1, 65, 1, 0, 1, -1, 1, 0, 1, -1, 
                   13, 0, 1, -1, 8, 0, 1, -1)
      ACCEPT = unpack(1, -1, 1, 2, 50, -1, 1, 1)
      SPECIAL = unpack(26, -1, 1, 0, 1, -1, 1, 1, 1, -1, 1, 2, 1, 3, 1, 
                       4, 1, 5, 1, 6, 1, 7, 1, 8, 1, 9, 1, 10, 1, 11, 1, 
                       12, 1, 13, 1, 14, 1, -1, 1, 15, 1, 16, 1, 17, 1, 
                       18, 1, 19, 1, 20, 1, 21, 1, 22, 1, -1)
      TRANSITION = [
        unpack(1, 1, 18, -1, 18, 1, 1, -1, 6, 1, 1, 24, 1, 1, 1, 25, 1, 
               -1, 1, 1),
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
        unpack(1, 28, 22, -1, 4, 30, 1, 31, 1, 32, 1, 33, 1, 34, 1, 35, 
                1, 36, 1, 37, 1, 38, 1, 39, 2, -1, 2, 40, 1, -1, 1, 41, 
                2, 42, 1, 1, 1, 26, 1, 1, 1, -1, 1, 1),
        unpack(1, 46, 6, 47, 37, -1, 1, 45, 2, -1, 1, 44, 1, 50, 1, -1, 
                2, 50, 2, -1, 1, 48, 1, 49, 1, 51, 2, -1, 3, 50),
        unpack(1, -1),
        unpack(),
        unpack(1, -1),
        unpack(),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack()
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 26
      

      def description
        <<-'__dfa_description__'.strip!
          ()* loopback of 215:5: ( declarator_suffix )*
        __dfa_description__
      end
    end
    class DFA27 < ANTLR3::DFA
      EOT = unpack(27, -1)
      EOF = unpack(27, -1)
      MIN = unpack(1, 48, 2, 4, 9, -1, 1, 0, 14, -1)
      MAX = unpack(1, 50, 1, 65, 1, 49, 9, -1, 1, 0, 14, -1)
      ACCEPT = unpack(3, -1, 1, 2, 1, 1, 6, -1, 1, 5, 1, -1, 1, 3, 12, -1, 
                      1, 4)
      SPECIAL = unpack(12, -1, 1, 0, 14, -1)
      TRANSITION = [
        unpack(1, 2, 1, -1, 1, 1),
        unpack(7, 4, 37, -1, 1, 4, 2, -1, 1, 3, 1, 4, 1, -1, 2, 4, 2, -1, 
                3, 4, 2, -1, 3, 4),
        unpack(1, 12, 22, -1, 13, 13, 2, -1, 2, 13, 1, -1, 3, 13, 1, -1, 
                1, 11),
        unpack(),
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
      
      @decision = 27
      

      def description
        <<-'__dfa_description__'.strip!
          218:1: declarator_suffix : ( '[' constant_expression ']' | '[' ']' | '(' parameter_type_list ')' | '(' identifier_list ')' | '(' ')' );
        __dfa_description__
      end
    end
    class DFA30 < ANTLR3::DFA
      EOT = unpack(29, -1)
      EOF = unpack(1, -1, 1, 3, 27, -1)
      MIN = unpack(1, 52, 1, 4, 1, 0, 15, -1, 1, 0, 10, -1)
      MAX = unpack(2, 52, 1, 0, 15, -1, 1, 0, 10, -1)
      ACCEPT = unpack(3, -1, 1, 3, 23, -1, 1, 2, 1, 1)
      SPECIAL = unpack(2, -1, 1, 0, 15, -1, 1, 1, 10, -1)
      TRANSITION = [
        unpack(1, 1),
        unpack(1, 3, 18, -1, 18, 3, 1, -1, 4, 3, 2, 18, 3, 3, 1, -1, 1, 
                2),
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
      
      @decision = 30
      

      def description
        <<-'__dfa_description__'.strip!
          226:1: pointer : ( '*' ( type_qualifier )+ ( pointer )? | '*' pointer | '*' );
        __dfa_description__
      end
    end
    class DFA28 < ANTLR3::DFA
      EOT = unpack(52, -1)
      EOF = unpack(1, 1, 51, -1)
      MIN = unpack(1, 4, 16, -1, 1, 0, 34, -1)
      MAX = unpack(1, 52, 16, -1, 1, 0, 34, -1)
      ACCEPT = unpack(1, -1, 1, 2, 49, -1, 1, 1)
      SPECIAL = unpack(17, -1, 1, 0, 34, -1)
      TRANSITION = [
        unpack(1, 1, 18, -1, 18, 1, 1, -1, 4, 1, 2, 17, 3, 1, 1, -1, 1, 
               1),
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
      
      @decision = 28
      

      def description
        <<-'__dfa_description__'.strip!
          ()+ loopback of 227:9: ( type_qualifier )+
        __dfa_description__
      end
    end
    class DFA29 < ANTLR3::DFA
      EOT = unpack(52, -1)
      EOF = unpack(1, 2, 51, -1)
      MIN = unpack(1, 4, 1, 0, 50, -1)
      MAX = unpack(1, 52, 1, 0, 50, -1)
      ACCEPT = unpack(2, -1, 1, 2, 48, -1, 1, 1)
      SPECIAL = unpack(1, -1, 1, 0, 50, -1)
      TRANSITION = [
        unpack(1, 2, 18, -1, 18, 2, 1, -1, 9, 2, 1, -1, 1, 1),
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
      
      @decision = 29
      

      def description
        <<-'__dfa_description__'.strip!
          227:25: ( pointer )?
        __dfa_description__
      end
    end
    class DFA32 < ANTLR3::DFA
      EOT = unpack(18, -1)
      EOF = unpack(18, -1)
      MIN = unpack(1, 25, 1, 4, 16, -1)
      MAX = unpack(1, 49, 1, 53, 16, -1)
      ACCEPT = unpack(2, -1, 1, 2, 1, -1, 1, 1, 13, -1)
      SPECIAL = unpack(18, -1)
      TRANSITION = [
        unpack(1, 1, 23, -1, 1, 2),
        unpack(1, 4, 22, -1, 13, 4, 2, -1, 2, 4, 1, -1, 3, 4, 5, -1, 1, 
                2),
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
      
      @decision = 32
      

      def description
        <<-'__dfa_description__'.strip!
          ()* loopback of 237:27: ( ',' parameter_declaration )*
        __dfa_description__
      end
    end
    class DFA33 < ANTLR3::DFA
      EOT = unpack(34, -1)
      EOF = unpack(1, 1, 33, -1)
      MIN = unpack(1, 4, 3, -1, 1, 0, 1, -1, 1, 4, 22, -1, 1, 0, 1, -1, 
                   2, 0, 1, -1)
      MAX = unpack(1, 52, 3, -1, 1, 0, 1, -1, 1, 52, 22, -1, 1, 0, 1, -1, 
                   2, 0, 1, -1)
      ACCEPT = unpack(1, -1, 1, 3, 3, -1, 1, 1, 1, -1, 1, 2, 26, -1)
      SPECIAL = unpack(4, -1, 1, 0, 24, -1, 1, 1, 1, -1, 1, 2, 1, 3, 1, 
                       -1)
      TRANSITION = [
        unpack(1, 5, 20, -1, 1, 1, 22, -1, 1, 6, 1, 1, 1, 7, 1, -1, 1, 4),
        unpack(),
        unpack(),
        unpack(),
        unpack(1, -1),
        unpack(),
        unpack(1, 29, 22, -1, 13, 7, 2, -1, 2, 7, 1, -1, 3, 7, 1, 32, 2, 
                7, 1, -1, 1, 31),
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
        unpack(1, -1),
        unpack(),
        unpack(1, -1),
        unpack(1, -1),
        unpack()
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 33
      

      def description
        <<-'__dfa_description__'.strip!
          ()* loopback of 241:28: ( declarator | abstract_declarator )*
        __dfa_description__
      end
    end
    class DFA36 < ANTLR3::DFA
      EOT = unpack(35, -1)
      EOF = unpack(1, 3, 34, -1)
      MIN = unpack(3, 4, 5, -1, 26, 0, 1, -1)
      MAX = unpack(2, 52, 1, 65, 5, -1, 26, 0, 1, -1)
      ACCEPT = unpack(3, -1, 1, 2, 30, -1, 1, 1)
      SPECIAL = unpack(8, -1, 1, 0, 1, 1, 1, 2, 1, 3, 1, 4, 1, 5, 1, 6, 
                       1, 7, 1, 8, 1, 9, 1, 10, 1, 11, 1, 12, 1, 13, 1, 
                       14, 1, 15, 1, 16, 1, 17, 1, 18, 1, 19, 1, 20, 1, 
                       21, 1, 22, 1, 23, 1, 24, 1, 25, 1, -1)
      TRANSITION = [
        unpack(1, 3, 20, -1, 1, 3, 22, -1, 1, 1, 1, 3, 1, 2, 1, -1, 1, 3),
        unpack(1, 10, 22, -1, 4, 12, 1, 13, 1, 14, 1, 15, 1, 16, 1, 17, 
                1, 18, 1, 19, 1, 20, 1, 21, 2, -1, 2, 22, 1, -1, 1, 23, 
                2, 24, 1, 11, 1, 8, 1, 25, 1, -1, 1, 9),
        unpack(1, 28, 6, 29, 37, -1, 1, 27, 2, -1, 1, 26, 1, 32, 1, -1, 
                2, 32, 2, -1, 1, 30, 1, 31, 1, 33, 2, -1, 3, 32),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack()
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 36
      

      def description
        <<-'__dfa_description__'.strip!
          253:13: ( direct_abstract_declarator )?
        __dfa_description__
      end
    end
    class DFA38 < ANTLR3::DFA
      EOT = unpack(21, -1)
      EOF = unpack(21, -1)
      MIN = unpack(1, 48, 1, 4, 19, -1)
      MAX = unpack(1, 50, 1, 52, 19, -1)
      ACCEPT = unpack(2, -1, 1, 2, 15, -1, 1, 1, 2, -1)
      SPECIAL = unpack(21, -1)
      TRANSITION = [
        unpack(1, 1, 1, -1, 1, 2),
        unpack(1, 2, 22, -1, 13, 2, 2, -1, 2, 2, 1, -1, 3, 2, 1, 18, 1, 
                2, 1, 18, 1, -1, 1, 18),
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
      
      @decision = 38
      

      def description
        <<-'__dfa_description__'.strip!
          258:6: ( '(' abstract_declarator ')' | abstract_declarator_suffix )
        __dfa_description__
      end
    end
    class DFA39 < ANTLR3::DFA
      EOT = unpack(35, -1)
      EOF = unpack(1, 1, 34, -1)
      MIN = unpack(1, 4, 5, -1, 2, 4, 1, 0, 1, -1, 1, 0, 1, -1, 13, 0, 1, 
                   -1, 8, 0, 1, -1)
      MAX = unpack(1, 52, 5, -1, 1, 52, 1, 65, 1, 0, 1, -1, 1, 0, 1, -1, 
                   13, 0, 1, -1, 8, 0, 1, -1)
      ACCEPT = unpack(1, -1, 1, 2, 32, -1, 1, 1)
      SPECIAL = unpack(8, -1, 1, 0, 1, -1, 1, 1, 1, -1, 1, 2, 1, 3, 1, 4, 
                       1, 5, 1, 6, 1, 7, 1, 8, 1, 9, 1, 10, 1, 11, 1, 12, 
                       1, 13, 1, 14, 1, -1, 1, 15, 1, 16, 1, 17, 1, 18, 
                       1, 19, 1, 20, 1, 21, 1, 22, 1, -1)
      TRANSITION = [
        unpack(1, 1, 20, -1, 1, 1, 22, -1, 1, 6, 1, 1, 1, 7, 1, -1, 1, 1),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(1, 10, 22, -1, 4, 12, 1, 13, 1, 14, 1, 15, 1, 16, 1, 17, 
                1, 18, 1, 19, 1, 20, 1, 21, 2, -1, 2, 22, 1, -1, 1, 23, 
                2, 24, 1, 1, 1, 8, 1, 1, 1, -1, 1, 1),
        unpack(1, 28, 6, 29, 37, -1, 1, 27, 2, -1, 1, 26, 1, 32, 1, -1, 
                2, 32, 2, -1, 1, 30, 1, 31, 1, 33, 2, -1, 3, 32),
        unpack(1, -1),
        unpack(),
        unpack(1, -1),
        unpack(),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack()
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 39
      

      def description
        <<-'__dfa_description__'.strip!
          ()* loopback of 258:67: ( abstract_declarator_suffix )*
        __dfa_description__
      end
    end
    class DFA40 < ANTLR3::DFA
      EOT = unpack(26, -1)
      EOF = unpack(26, -1)
      MIN = unpack(1, 48, 2, 4, 23, -1)
      MAX = unpack(1, 50, 1, 65, 1, 49, 23, -1)
      ACCEPT = unpack(3, -1, 1, 1, 1, 2, 6, -1, 1, 3, 1, 4, 13, -1)
      SPECIAL = unpack(26, -1)
      TRANSITION = [
        unpack(1, 2, 1, -1, 1, 1),
        unpack(7, 4, 37, -1, 1, 4, 2, -1, 1, 3, 1, 4, 1, -1, 2, 4, 2, -1, 
                3, 4, 2, -1, 3, 4),
        unpack(1, 12, 22, -1, 13, 12, 2, -1, 2, 12, 1, -1, 3, 12, 1, -1, 
                1, 11),
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
      
      @decision = 40
      

      def description
        <<-'__dfa_description__'.strip!
          261:1: abstract_declarator_suffix : ( '[' ']' | '[' constant_expression ']' | '(' ')' | '(' parameter_type_list ')' );
        __dfa_description__
      end
    end
    class DFA43 < ANTLR3::DFA
      EOT = unpack(12, -1)
      EOF = unpack(12, -1)
      MIN = unpack(1, 25, 1, 4, 10, -1)
      MAX = unpack(1, 41, 1, 65, 10, -1)
      ACCEPT = unpack(2, -1, 1, 2, 1, 1, 8, -1)
      SPECIAL = unpack(12, -1)
      TRANSITION = [
        unpack(1, 1, 15, -1, 1, 2),
        unpack(7, 3, 29, -1, 1, 3, 1, 2, 6, -1, 1, 3, 3, -1, 1, 3, 1, -1, 
                2, 3, 2, -1, 3, 3, 2, -1, 3, 3),
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
      
      @decision = 43
      

      def description
        <<-'__dfa_description__'.strip!
          ()* loopback of 274:17: ( ',' initializer )*
        __dfa_description__
      end
    end
    class DFA45 < ANTLR3::DFA
      EOT = unpack(19, -1)
      EOF = unpack(1, 1, 18, -1)
      MIN = unpack(1, 24, 18, -1)
      MAX = unpack(1, 88, 18, -1)
      ACCEPT = unpack(1, -1, 1, 3, 15, -1, 1, 1, 1, 2)
      SPECIAL = unpack(19, -1)
      TRANSITION = [
        unpack(2, 1, 15, -1, 1, 1, 2, -1, 1, 1, 4, -1, 1, 1, 1, -1, 1, 1, 
               2, -1, 1, 17, 1, 18, 7, -1, 1, 1, 12, -1, 13, 1),
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
      
      @decision = 45
      

      def description
        <<-'__dfa_description__'.strip!
          ()* loopback of 284:33: ( '+' multiplicative_expression | '-' multiplicative_expression )*
        __dfa_description__
      end
    end
    class DFA46 < ANTLR3::DFA
      EOT = unpack(22, -1)
      EOF = unpack(1, 1, 21, -1)
      MIN = unpack(1, 24, 21, -1)
      MAX = unpack(1, 88, 21, -1)
      ACCEPT = unpack(1, -1, 1, 4, 17, -1, 1, 1, 1, 2, 1, 3)
      SPECIAL = unpack(22, -1)
      TRANSITION = [
        unpack(2, 1, 15, -1, 1, 1, 2, -1, 1, 1, 4, -1, 1, 1, 1, -1, 1, 1, 
               1, 19, 1, -1, 2, 1, 1, 20, 1, 21, 5, -1, 1, 1, 12, -1, 13, 
               1),
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
      
      @decision = 46
      

      def description
        <<-'__dfa_description__'.strip!
          ()* loopback of 288:23: ( '*' cast_expression | '/' cast_expression | '%' cast_expression )*
        __dfa_description__
      end
    end
    class DFA47 < ANTLR3::DFA
      EOT = unpack(27, -1)
      EOF = unpack(27, -1)
      MIN = unpack(2, 4, 18, -1, 1, 0, 6, -1)
      MAX = unpack(2, 65, 18, -1, 1, 0, 6, -1)
      ACCEPT = unpack(2, -1, 1, 2, 5, -1, 1, 1, 18, -1)
      SPECIAL = unpack(20, -1, 1, 0, 6, -1)
      TRANSITION = [
        unpack(7, 2, 37, -1, 1, 1, 3, -1, 1, 2, 1, -1, 2, 2, 2, -1, 3, 2, 
               2, -1, 3, 2),
        unpack(1, 20, 6, 2, 20, -1, 9, 8, 2, -1, 2, 8, 1, -1, 3, 8, 1, 
                2, 3, -1, 1, 2, 1, -1, 2, 2, 2, -1, 3, 2, 2, -1, 3, 2),
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
        unpack(1, -1),
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
      
      @decision = 47
      

      def description
        <<-'__dfa_description__'.strip!
          291:1: cast_expression : ( '(' type_name ')' cast_expression | unary_expression );
        __dfa_description__
      end
    end
    class DFA48 < ANTLR3::DFA
      EOT = unpack(16, -1)
      EOF = unpack(16, -1)
      MIN = unpack(1, 4, 6, -1, 1, 4, 1, 0, 7, -1)
      MAX = unpack(1, 65, 6, -1, 1, 65, 1, 0, 7, -1)
      ACCEPT = unpack(1, -1, 1, 1, 2, -1, 1, 2, 1, 3, 1, 4, 2, -1, 1, 5, 
                      5, -1, 1, 6)
      SPECIAL = unpack(8, -1, 1, 0, 7, -1)
      TRANSITION = [
        unpack(7, 1, 37, -1, 1, 1, 3, -1, 1, 6, 1, -1, 2, 6, 2, -1, 1, 4, 
               1, 5, 1, 7, 2, -1, 3, 6),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(7, 9, 37, -1, 1, 8, 3, -1, 1, 9, 1, -1, 2, 9, 2, -1, 3, 
                9, 2, -1, 3, 9),
        unpack(1, -1),
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
      
      @decision = 48
      

      def description
        <<-'__dfa_description__'.strip!
          296:1: unary_expression : ( postfix_expression | '++' unary_expression | '--' unary_expression | unary_operator cast_expression | 'sizeof' unary_expression | 'sizeof' '(' type_name ')' );
        __dfa_description__
      end
    end
    class DFA49 < ANTLR3::DFA
      EOT = unpack(45, -1)
      EOF = unpack(1, 2, 44, -1)
      MIN = unpack(1, 24, 1, 4, 22, -1, 1, 4, 4, -1, 1, 0, 15, -1)
      MAX = unpack(1, 88, 1, 65, 22, -1, 1, 65, 4, -1, 1, 0, 15, -1)
      ACCEPT = unpack(2, -1, 1, 9, 20, -1, 1, 1, 1, -1, 1, 4, 1, 6, 1, 7, 
                      1, 8, 7, -1, 1, 2, 1, 3, 6, -1, 1, 5)
      SPECIAL = unpack(29, -1, 1, 0, 15, -1)
      TRANSITION = [
        unpack(3, 2, 14, -1, 1, 2, 2, -1, 1, 2, 3, -1, 1, 24, 1, 2, 1, 23, 
               1, 2, 1, 1, 1, -1, 4, 2, 1, 27, 1, 28, 1, -1, 1, 25, 1, 26, 
               1, 2, 2, -1, 23, 2),
        unpack(1, 29, 6, 2, 37, -1, 1, 2, 3, -1, 1, 2, 1, -1, 2, 2, 2, 
                -1, 3, 2, 2, -1, 3, 2),
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
        unpack(7, 37, 37, -1, 1, 37, 1, 36, 2, -1, 1, 37, 1, -1, 2, 37, 
                2, -1, 3, 37, 2, -1, 3, 37),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
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
        unpack()
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 49
      

      def description
        <<-'__dfa_description__'.strip!
          ()* loopback of 307:9: ( '[' expression ']' | '(' ')' | '(' argument_expression_list ')' | '.' IDENTIFIER | '*' IDENTIFIER | '->' IDENTIFIER | '++' | '--' )*
        __dfa_description__
      end
    end
    class DFA52 < ANTLR3::DFA
      EOT = unpack(111, -1)
      EOF = unpack(1, -1, 2, 15, 108, -1)
      MIN = unpack(1, 4, 2, 24, 5, 4, 7, 0, 21, -1, 7, 0, 33, -1, 35, 0)
      MAX = unpack(1, 65, 2, 88, 5, 65, 7, 0, 21, -1, 7, 0, 33, -1, 35, 
                   0)
      ACCEPT = unpack(15, -1, 1, 2, 19, -1, 1, 1, 75, -1)
      SPECIAL = unpack(8, -1, 1, 0, 1, 1, 1, 2, 1, 3, 1, 4, 1, 5, 1, 6, 
                       21, -1, 1, 7, 1, 8, 1, 9, 1, 10, 1, 11, 1, 12, 1, 
                       13, 33, -1, 1, 14, 1, 15, 1, 16, 1, 17, 1, 18, 1, 
                       19, 1, 20, 1, 21, 1, 22, 1, 23, 1, 24, 1, 25, 1, 
                       26, 1, 27, 1, 28, 1, 29, 1, 30, 1, 31, 1, 32, 1, 
                       33, 1, 34, 1, 35, 1, 36, 1, 37, 1, 38, 1, 39, 1, 
                       40, 1, 41, 1, 42, 1, 43, 1, 44, 1, 45, 1, 46, 1, 
                       47, 1, 48)
      TRANSITION = [
        unpack(1, 1, 6, 2, 37, -1, 1, 3, 3, -1, 1, 6, 1, -1, 2, 6, 2, -1, 
               1, 4, 1, 5, 1, 7, 2, -1, 3, 6),
        unpack(2, 15, 1, 35, 14, -1, 1, 15, 2, -1, 1, 15, 3, -1, 1, 9, 
                1, 15, 1, 8, 1, 15, 1, 11, 1, -1, 4, 15, 1, 13, 1, 14, 1, 
                -1, 1, 10, 1, 12, 1, 15, 2, -1, 10, 35, 13, 15),
        unpack(2, 15, 1, 35, 14, -1, 1, 15, 2, -1, 1, 15, 3, -1, 1, 37, 
                1, 15, 1, 36, 1, 15, 1, 39, 1, -1, 4, 15, 1, 41, 1, 42, 
                1, -1, 1, 38, 1, 40, 1, 15, 2, -1, 10, 35, 13, 15),
        unpack(1, 76, 6, 77, 20, -1, 9, 15, 2, -1, 2, 15, 1, -1, 3, 15, 
                1, 78, 3, -1, 1, 81, 1, -1, 2, 81, 2, -1, 1, 79, 1, 80, 
                1, 82, 2, -1, 3, 81),
        unpack(1, 83, 6, 84, 37, -1, 1, 85, 3, -1, 1, 88, 1, -1, 2, 88, 
                2, -1, 1, 86, 1, 87, 1, 89, 2, -1, 3, 88),
        unpack(1, 90, 6, 91, 37, -1, 1, 92, 3, -1, 1, 95, 1, -1, 2, 95, 
                2, -1, 1, 93, 1, 94, 1, 96, 2, -1, 3, 95),
        unpack(1, 98, 6, 99, 37, -1, 1, 97, 3, -1, 1, 102, 1, -1, 2, 102, 
                2, -1, 1, 100, 1, 101, 1, 103, 2, -1, 3, 102),
        unpack(1, 105, 6, 106, 37, -1, 1, 104, 3, -1, 1, 109, 1, -1, 2, 
                109, 2, -1, 1, 107, 1, 108, 1, 110, 2, -1, 3, 109),
        unpack(1, -1),
        unpack(1, -1),
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
        unpack(1, -1),
        unpack(1, -1),
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
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1)
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 52
      

      def description
        <<-'__dfa_description__'.strip!
          352:1: assignment_expression : ( lvalue assignment_operator assignment_expression | conditional_expression );
        __dfa_description__
      end
    end
    class DFA54 < ANTLR3::DFA
      EOT = unpack(10, -1)
      EOF = unpack(1, 1, 9, -1)
      MIN = unpack(1, 24, 9, -1)
      MAX = unpack(1, 77, 9, -1)
      ACCEPT = unpack(1, -1, 1, 2, 7, -1, 1, 1)
      SPECIAL = unpack(10, -1)
      TRANSITION = [
        unpack(2, 1, 15, -1, 1, 1, 2, -1, 1, 1, 4, -1, 1, 1, 1, -1, 1, 1, 
               24, -1, 1, 1, 1, 9),
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
      
      @decision = 54
      

      def description
        <<-'__dfa_description__'.strip!
          ()* loopback of 380:28: ( '||' logical_and_expression )*
        __dfa_description__
      end
    end
    class DFA55 < ANTLR3::DFA
      EOT = unpack(11, -1)
      EOF = unpack(1, 1, 10, -1)
      MIN = unpack(1, 24, 10, -1)
      MAX = unpack(1, 78, 10, -1)
      ACCEPT = unpack(1, -1, 1, 2, 8, -1, 1, 1)
      SPECIAL = unpack(11, -1)
      TRANSITION = [
        unpack(2, 1, 15, -1, 1, 1, 2, -1, 1, 1, 4, -1, 1, 1, 1, -1, 1, 1, 
               24, -1, 2, 1, 1, 10),
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
      
      @decision = 55
      

      def description
        <<-'__dfa_description__'.strip!
          ()* loopback of 384:29: ( '&&' inclusive_or_expression )*
        __dfa_description__
      end
    end
    class DFA56 < ANTLR3::DFA
      EOT = unpack(12, -1)
      EOF = unpack(1, 1, 11, -1)
      MIN = unpack(1, 24, 11, -1)
      MAX = unpack(1, 79, 11, -1)
      ACCEPT = unpack(1, -1, 1, 2, 9, -1, 1, 1)
      SPECIAL = unpack(12, -1)
      TRANSITION = [
        unpack(2, 1, 15, -1, 1, 1, 2, -1, 1, 1, 4, -1, 1, 1, 1, -1, 1, 1, 
               24, -1, 3, 1, 1, 11),
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
      
      @decision = 56
      

      def description
        <<-'__dfa_description__'.strip!
          ()* loopback of 388:29: ( '|' exclusive_or_expression )*
        __dfa_description__
      end
    end
    class DFA57 < ANTLR3::DFA
      EOT = unpack(13, -1)
      EOF = unpack(1, 1, 12, -1)
      MIN = unpack(1, 24, 12, -1)
      MAX = unpack(1, 80, 12, -1)
      ACCEPT = unpack(1, -1, 1, 2, 10, -1, 1, 1)
      SPECIAL = unpack(13, -1)
      TRANSITION = [
        unpack(2, 1, 15, -1, 1, 1, 2, -1, 1, 1, 4, -1, 1, 1, 1, -1, 1, 1, 
               24, -1, 4, 1, 1, 12),
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
      
      @decision = 57
      

      def description
        <<-'__dfa_description__'.strip!
          ()* loopback of 392:20: ( '^' and_expression )*
        __dfa_description__
      end
    end
    class DFA58 < ANTLR3::DFA
      EOT = unpack(14, -1)
      EOF = unpack(1, 1, 13, -1)
      MIN = unpack(1, 24, 13, -1)
      MAX = unpack(1, 80, 13, -1)
      ACCEPT = unpack(1, -1, 1, 2, 11, -1, 1, 1)
      SPECIAL = unpack(14, -1)
      TRANSITION = [
        unpack(2, 1, 15, -1, 1, 1, 2, -1, 1, 1, 4, -1, 1, 1, 1, -1, 1, 1, 
               11, -1, 1, 13, 12, -1, 5, 1),
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
      
      @decision = 58
      

      def description
        <<-'__dfa_description__'.strip!
          ()* loopback of 396:25: ( '&' equality_expression )*
        __dfa_description__
      end
    end
    class DFA59 < ANTLR3::DFA
      EOT = unpack(15, -1)
      EOF = unpack(1, 1, 14, -1)
      MIN = unpack(1, 24, 14, -1)
      MAX = unpack(1, 82, 14, -1)
      ACCEPT = unpack(1, -1, 1, 2, 12, -1, 1, 1)
      SPECIAL = unpack(15, -1)
      TRANSITION = [
        unpack(2, 1, 15, -1, 1, 1, 2, -1, 1, 1, 4, -1, 1, 1, 1, -1, 1, 1, 
               11, -1, 1, 1, 12, -1, 5, 1, 2, 14),
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
      
      @decision = 59
      

      def description
        <<-'__dfa_description__'.strip!
          ()* loopback of 399:27: ( ( '==' | '!=' ) relational_expression )*
        __dfa_description__
      end
    end
    class DFA60 < ANTLR3::DFA
      EOT = unpack(16, -1)
      EOF = unpack(1, 1, 15, -1)
      MIN = unpack(1, 24, 15, -1)
      MAX = unpack(1, 86, 15, -1)
      ACCEPT = unpack(1, -1, 1, 2, 13, -1, 1, 1)
      SPECIAL = unpack(16, -1)
      TRANSITION = [
        unpack(2, 1, 15, -1, 1, 1, 2, -1, 1, 1, 4, -1, 1, 1, 1, -1, 1, 1, 
               11, -1, 1, 1, 12, -1, 7, 1, 4, 15),
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
      
      @decision = 60
      

      def description
        <<-'__dfa_description__'.strip!
          ()* loopback of 403:22: ( ( '<' | '>' | '<=' | '>=' ) shift_expression )*
        __dfa_description__
      end
    end
    class DFA61 < ANTLR3::DFA
      EOT = unpack(17, -1)
      EOF = unpack(1, 1, 16, -1)
      MIN = unpack(1, 24, 16, -1)
      MAX = unpack(1, 88, 16, -1)
      ACCEPT = unpack(1, -1, 1, 2, 14, -1, 1, 1)
      SPECIAL = unpack(17, -1)
      TRANSITION = [
        unpack(2, 1, 15, -1, 1, 1, 2, -1, 1, 1, 4, -1, 1, 1, 1, -1, 1, 1, 
               11, -1, 1, 1, 12, -1, 11, 1, 2, 16),
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
      
      @decision = 61
      

      def description
        <<-'__dfa_description__'.strip!
          ()* loopback of 407:25: ( ( '<<' | '>>' ) additive_expression )*
        __dfa_description__
      end
    end
    class DFA62 < ANTLR3::DFA
      EOT = unpack(45, -1)
      EOF = unpack(45, -1)
      MIN = unpack(1, 4, 1, 24, 43, -1)
      MAX = unpack(1, 100, 1, 88, 43, -1)
      ACCEPT = unpack(2, -1, 1, 1, 1, -1, 1, 2, 1, 3, 6, -1, 1, 4, 1, -1, 
                      1, 5, 2, -1, 1, 6, 27, -1)
      SPECIAL = unpack(45, -1)
      TRANSITION = [
        unpack(1, 1, 6, 5, 13, -1, 1, 5, 15, -1, 1, 4, 7, -1, 1, 5, 3, -1, 
               1, 5, 1, -1, 2, 5, 2, -1, 3, 5, 2, -1, 3, 5, 23, -1, 2, 2, 
               1, 12, 1, -1, 1, 12, 3, 14, 4, 17),
        unpack(3, 5, 17, -1, 1, 2, 3, -1, 1, 5, 1, -1, 1, 5, 1, -1, 1, 
                5, 1, -1, 6, 5, 1, -1, 3, 5, 2, -1, 23, 5),
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
      
      @decision = 62
      

      def description
        <<-'__dfa_description__'.strip!
          412:1: statement : ( labeled_statement | compound_statement | expression_statement | selection_statement | iteration_statement | jump_statement );
        __dfa_description__
      end
    end
    class DFA64 < ANTLR3::DFA
      EOT = unpack(74, -1)
      EOF = unpack(74, -1)
      MIN = unpack(2, 4, 35, -1, 1, 0, 1, -1, 2, 0, 33, -1)
      MAX = unpack(1, 100, 1, 88, 35, -1, 1, 0, 1, -1, 2, 0, 33, -1)
      ACCEPT = unpack(2, -1, 1, 2, 19, -1, 1, 1, 51, -1)
      SPECIAL = unpack(37, -1, 1, 0, 1, -1, 1, 1, 1, 2, 33, -1)
      TRANSITION = [
        unpack(1, 1, 6, 2, 12, -1, 1, 22, 1, 2, 2, -1, 13, 22, 2, 2, 2, 
               22, 1, -1, 3, 22, 1, 2, 3, -1, 1, 2, 1, -1, 2, 2, 2, -1, 
               3, 2, 2, -1, 3, 2, 23, -1, 3, 2, 1, -1, 8, 2),
        unpack(1, 22, 19, -1, 1, 40, 2, 2, 13, 22, 2, -1, 2, 22, 1, 2, 
                3, 22, 1, 39, 1, -1, 1, 2, 1, -1, 1, 37, 1, -1, 6, 2, 1, 
                -1, 3, 2, 2, -1, 23, 2),
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
        unpack(1, -1),
        unpack(),
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
      
      @decision = 64
      

      def description
        <<-'__dfa_description__'.strip!
          ()* loopback of 432:9: ( declaration )*
        __dfa_description__
      end
    end
    class DFA65 < ANTLR3::DFA
      EOT = unpack(22, -1)
      EOF = unpack(22, -1)
      MIN = unpack(1, 4, 21, -1)
      MAX = unpack(1, 100, 21, -1)
      ACCEPT = unpack(1, -1, 1, 1, 19, -1, 1, 2)
      SPECIAL = unpack(22, -1)
      TRANSITION = [
        unpack(7, 1, 13, -1, 1, 1, 15, -1, 1, 1, 1, 21, 6, -1, 1, 1, 3, 
               -1, 1, 1, 1, -1, 2, 1, 2, -1, 3, 1, 2, -1, 3, 1, 23, -1, 
               3, 1, 1, -1, 8, 1),
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
      
      @decision = 65
      

      def description
        <<-'__dfa_description__'.strip!
          432:22: ( statement_list )?
        __dfa_description__
      end
    end
    class DFA66 < ANTLR3::DFA
      EOT = unpack(23, -1)
      EOF = unpack(1, 1, 22, -1)
      MIN = unpack(1, 4, 22, -1)
      MAX = unpack(1, 100, 22, -1)
      ACCEPT = unpack(1, -1, 1, 2, 1, -1, 1, 1, 19, -1)
      SPECIAL = unpack(23, -1)
      TRANSITION = [
        unpack(7, 3, 13, -1, 1, 3, 15, -1, 1, 3, 1, 1, 6, -1, 1, 3, 3, -1, 
               1, 3, 1, -1, 2, 3, 2, -1, 3, 3, 2, -1, 3, 3, 23, -1, 3, 3, 
               1, -1, 8, 3),
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
      
      @decision = 66
      

      def description
        <<-'__dfa_description__'.strip!
          ()+ loopback of 436:5: ( statement )+
        __dfa_description__
      end
    end
    class DFA72 < ANTLR3::DFA
      EOT = unpack(13, -1)
      EOF = unpack(13, -1)
      MIN = unpack(1, 97, 3, -1, 1, 4, 8, -1)
      MAX = unpack(1, 100, 3, -1, 1, 65, 8, -1)
      ACCEPT = unpack(1, -1, 1, 1, 1, 2, 1, 3, 1, -1, 1, 4, 1, 5, 6, -1)
      SPECIAL = unpack(13, -1)
      TRANSITION = [
        unpack(1, 1, 1, 2, 1, 3, 1, 4),
        unpack(),
        unpack(),
        unpack(),
        unpack(7, 6, 13, -1, 1, 5, 23, -1, 1, 6, 3, -1, 1, 6, 1, -1, 2, 
                6, 2, -1, 3, 6, 2, -1, 3, 6),
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
          455:1: jump_statement : ( 'goto' IDENTIFIER ';' | 'continue' ';' | 'break' ';' | 'return' ';' | 'return' expression ';' );
        __dfa_description__
      end
    end
    class DFA73 < ANTLR3::DFA
      EOT = unpack(36, -1)
      EOF = unpack(36, -1)
      MIN = unpack(1, 4, 12, -1, 1, 4, 4, -1, 15, 0, 3, -1)
      MAX = unpack(1, 52, 12, -1, 1, 52, 4, -1, 15, 0, 3, -1)
      ACCEPT = unpack(1, -1, 1, 1, 13, -1, 1, 2, 20, -1)
      SPECIAL = unpack(18, -1, 1, 0, 1, 1, 1, 2, 1, 3, 1, 4, 1, 5, 1, 6, 
                       1, 7, 1, 8, 1, 9, 1, 10, 1, 11, 1, 12, 1, 13, 1, 
                       14, 3, -1)
      TRANSITION = [
        unpack(1, 13, 22, -1, 13, 1, 2, -1, 2, 1, 1, -1, 3, 1, 1, 15, 3, 
               -1, 1, 15),
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
        unpack(1, 18, 18, -1, 1, 15, 3, -1, 4, 20, 1, 21, 1, 22, 1, 23, 
                1, 24, 1, 25, 1, 26, 1, 27, 1, 28, 1, 29, 1, 15, 1, -1, 
                2, 30, 1, -1, 1, 31, 2, 32, 1, 19, 1, -1, 1, 15, 1, -1, 
                1, 1),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
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
      
      @decision = 73
      

      def description
        <<-'__dfa_description__'.strip!
          78:7: ( declaration_specifiers )?
        __dfa_description__
      end
    end
    class DFA74 < ANTLR3::DFA
      EOT = unpack(17, -1)
      EOF = unpack(17, -1)
      MIN = unpack(1, 4, 16, -1)
      MAX = unpack(1, 47, 16, -1)
      ACCEPT = unpack(1, -1, 1, 2, 1, 1, 14, -1)
      SPECIAL = unpack(17, -1)
      TRANSITION = [
        unpack(1, 2, 18, -1, 1, 2, 3, -1, 13, 2, 1, 1, 1, -1, 2, 2, 1, -1, 
               3, 2),
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
      
      @decision = 74
      

      def description
        <<-'__dfa_description__'.strip!
          ()* loopback of 78:42: ( declaration )*
        __dfa_description__
      end
    end


    private

    def initialize_dfas
      super rescue nil
      @dfa1 = DFA1.new(self, 1)
      @dfa2 = DFA2.new(self, 2) do |s|
        case s
        when 0
          look_2_0 = @input.peek
          index_2_0 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (look_2_0.between?(T__27, T__30))
            s = 1
          elsif (look_2_0 == T__31)
            s = 2
          elsif (look_2_0 == T__32)
            s = 3
          elsif (look_2_0 == T__33)
            s = 4
          elsif (look_2_0 == T__34)
            s = 5
          elsif (look_2_0 == T__35)
            s = 6
          elsif (look_2_0 == T__36)
            s = 7
          elsif (look_2_0 == T__37)
            s = 8
          elsif (look_2_0 == T__38)
            s = 9
          elsif (look_2_0 == T__39)
            s = 10
          elsif (look_2_0.between?(T__42, T__43))
            s = 11
          elsif (look_2_0 == T__45)
            s = 12
          elsif (look_2_0 == IDENTIFIER)
            s = 13
          elsif (look_2_0.between?(T__46, T__47))
            s = 14
          elsif (look_2_0 == T__52) && (syntactic_predicate?( :synpred4_C ))
            s = 15
          elsif (look_2_0 == T__48) && (syntactic_predicate?( :synpred4_C ))
            s = 16
          elsif (look_2_0 == T__23)
            s = 17
          end
           
          @input.seek(index_2_0)

        when 1
          look_2_1 = @input.peek
          index_2_1 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_4_c! ))
            s = 16
          elsif (true)
            s = 17
          end
           
          @input.seek(index_2_1)

        when 2
          look_2_2 = @input.peek
          index_2_2 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_4_c! ))
            s = 16
          elsif (true)
            s = 17
          end
           
          @input.seek(index_2_2)

        when 3
          look_2_3 = @input.peek
          index_2_3 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_4_c! ))
            s = 16
          elsif (true)
            s = 17
          end
           
          @input.seek(index_2_3)

        when 4
          look_2_4 = @input.peek
          index_2_4 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_4_c! ))
            s = 16
          elsif (true)
            s = 17
          end
           
          @input.seek(index_2_4)

        when 5
          look_2_5 = @input.peek
          index_2_5 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_4_c! ))
            s = 16
          elsif (true)
            s = 17
          end
           
          @input.seek(index_2_5)

        when 6
          look_2_6 = @input.peek
          index_2_6 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_4_c! ))
            s = 16
          elsif (true)
            s = 17
          end
           
          @input.seek(index_2_6)

        when 7
          look_2_7 = @input.peek
          index_2_7 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_4_c! ))
            s = 16
          elsif (true)
            s = 17
          end
           
          @input.seek(index_2_7)

        when 8
          look_2_8 = @input.peek
          index_2_8 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_4_c! ))
            s = 16
          elsif (true)
            s = 17
          end
           
          @input.seek(index_2_8)

        when 9
          look_2_9 = @input.peek
          index_2_9 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_4_c! ))
            s = 16
          elsif (true)
            s = 17
          end
           
          @input.seek(index_2_9)

        when 10
          look_2_10 = @input.peek
          index_2_10 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_4_c! ))
            s = 16
          elsif (true)
            s = 17
          end
           
          @input.seek(index_2_10)

        when 11
          look_2_11 = @input.peek
          index_2_11 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_4_c! ))
            s = 16
          elsif (true)
            s = 17
          end
           
          @input.seek(index_2_11)

        when 12
          look_2_12 = @input.peek
          index_2_12 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_4_c! ))
            s = 16
          elsif (true)
            s = 17
          end
           
          @input.seek(index_2_12)

        when 13
          look_2_13 = @input.peek
          index_2_13 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if ((( ( syntactic_predicate?( :synpred_4_c! ) ) and ( ( type_name?( @input.look.text ) ) ) ) or syntactic_predicate?( :synpred_4_c! )))
            s = 16
          elsif (( type_name?( @input.look.text ) ))
            s = 17
          end
           
          @input.seek(index_2_13)

        when 14
          look_2_14 = @input.peek
          index_2_14 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_4_c! ))
            s = 16
          elsif (true)
            s = 17
          end
           
          @input.seek(index_2_14)

        end
        
        if s < 0
          @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
          nva = ANTLR3::Error::NoViableAlternative.new(@dfa2.description, 2, s, input)
          @dfa2.error(nva)
          raise nva
        end
        
        s
      end
      @dfa3 = DFA3.new(self, 3) do |s|
        case s
        when 0
          look_3_18 = @input.peek
          index_3_18 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (( ( syntactic_predicate?( :synpred_5_c! ) ) and ( ( type_name?( @input.look.text ) ) ) ))
            s = 1
          elsif (true)
            s = 15
          end
           
          @input.seek(index_3_18)

        when 1
          look_3_20 = @input.peek
          index_3_20 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (( ( syntactic_predicate?( :synpred_5_c! ) ) and ( ( type_name?( @input.look.text ) ) ) ))
            s = 1
          elsif (true)
            s = 15
          end
           
          @input.seek(index_3_20)

        when 2
          look_3_21 = @input.peek
          index_3_21 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (( ( syntactic_predicate?( :synpred_5_c! ) ) and ( ( type_name?( @input.look.text ) ) ) ))
            s = 1
          elsif (true)
            s = 15
          end
           
          @input.seek(index_3_21)

        when 3
          look_3_22 = @input.peek
          index_3_22 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (( ( syntactic_predicate?( :synpred_5_c! ) ) and ( ( type_name?( @input.look.text ) ) ) ))
            s = 1
          elsif (true)
            s = 15
          end
           
          @input.seek(index_3_22)

        when 4
          look_3_23 = @input.peek
          index_3_23 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (( ( syntactic_predicate?( :synpred_5_c! ) ) and ( ( type_name?( @input.look.text ) ) ) ))
            s = 1
          elsif (true)
            s = 15
          end
           
          @input.seek(index_3_23)

        when 5
          look_3_24 = @input.peek
          index_3_24 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (( ( syntactic_predicate?( :synpred_5_c! ) ) and ( ( type_name?( @input.look.text ) ) ) ))
            s = 1
          elsif (true)
            s = 15
          end
           
          @input.seek(index_3_24)

        when 6
          look_3_25 = @input.peek
          index_3_25 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (( ( syntactic_predicate?( :synpred_5_c! ) ) and ( ( type_name?( @input.look.text ) ) ) ))
            s = 1
          elsif (true)
            s = 15
          end
           
          @input.seek(index_3_25)

        when 7
          look_3_26 = @input.peek
          index_3_26 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (( ( syntactic_predicate?( :synpred_5_c! ) ) and ( ( type_name?( @input.look.text ) ) ) ))
            s = 1
          elsif (true)
            s = 15
          end
           
          @input.seek(index_3_26)

        when 8
          look_3_27 = @input.peek
          index_3_27 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (( ( syntactic_predicate?( :synpred_5_c! ) ) and ( ( type_name?( @input.look.text ) ) ) ))
            s = 1
          elsif (true)
            s = 15
          end
           
          @input.seek(index_3_27)

        when 9
          look_3_28 = @input.peek
          index_3_28 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (( ( syntactic_predicate?( :synpred_5_c! ) ) and ( ( type_name?( @input.look.text ) ) ) ))
            s = 1
          elsif (true)
            s = 15
          end
           
          @input.seek(index_3_28)

        when 10
          look_3_29 = @input.peek
          index_3_29 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (( ( syntactic_predicate?( :synpred_5_c! ) ) and ( ( type_name?( @input.look.text ) ) ) ))
            s = 1
          elsif (true)
            s = 15
          end
           
          @input.seek(index_3_29)

        when 11
          look_3_30 = @input.peek
          index_3_30 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (( ( syntactic_predicate?( :synpred_5_c! ) ) and ( ( type_name?( @input.look.text ) ) ) ))
            s = 1
          elsif (true)
            s = 15
          end
           
          @input.seek(index_3_30)

        when 12
          look_3_31 = @input.peek
          index_3_31 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (( ( syntactic_predicate?( :synpred_5_c! ) ) and ( ( type_name?( @input.look.text ) ) ) ))
            s = 1
          elsif (true)
            s = 15
          end
           
          @input.seek(index_3_31)

        when 13
          look_3_32 = @input.peek
          index_3_32 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (( ( syntactic_predicate?( :synpred_5_c! ) ) and ( ( type_name?( @input.look.text ) ) ) ))
            s = 1
          elsif (true)
            s = 15
          end
           
          @input.seek(index_3_32)

        when 14
          look_3_33 = @input.peek
          index_3_33 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (( ( syntactic_predicate?( :synpred_5_c! ) ) and ( ( type_name?( @input.look.text ) ) ) ))
            s = 1
          elsif (true)
            s = 15
          end
           
          @input.seek(index_3_33)

        end
        
        if s < 0
          @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
          nva = ANTLR3::Error::NoViableAlternative.new(@dfa3.description, 3, s, input)
          @dfa3.error(nva)
          raise nva
        end
        
        s
      end
      @dfa5 = DFA5.new(self, 5)
      @dfa4 = DFA4.new(self, 4)
      @dfa8 = DFA8.new(self, 8)
      @dfa6 = DFA6.new(self, 6) do |s|
        case s
        when 0
          look_6_18 = @input.peek
          index_6_18 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (( ( syntactic_predicate?( :synpred_8_c! ) ) and ( ( type_name?( @input.look.text ) ) ) ))
            s = 1
          elsif (true)
            s = 15
          end
           
          @input.seek(index_6_18)

        end
        
        if s < 0
          @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
          nva = ANTLR3::Error::NoViableAlternative.new(@dfa6.description, 6, s, input)
          @dfa6.error(nva)
          raise nva
        end
        
        s
      end
      @dfa9 = DFA9.new(self, 9) do |s|
        case s
        when 0
          look_9_2 = @input.peek
          index_9_2 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (( ( syntactic_predicate?( :synpred_12_c! ) ) and ( ( type_name?( @input.look.text ) ) ) ))
            s = 10
          elsif (true)
            s = 1
          end
           
          @input.seek(index_9_2)

        end
        
        if s < 0
          @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
          nva = ANTLR3::Error::NoViableAlternative.new(@dfa9.description, 9, s, input)
          @dfa9.error(nva)
          raise nva
        end
        
        s
      end
      @dfa12 = DFA12.new(self, 12)
      @dfa14 = DFA14.new(self, 14)
      @dfa15 = DFA15.new(self, 15)
      @dfa16 = DFA16.new(self, 16) do |s|
        case s
        when 0
          look_16_19 = @input.peek
          index_16_19 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (( ( syntactic_predicate?( :synpred_35_c! ) ) and ( ( type_name?( @input.look.text ) ) ) ))
            s = 8
          elsif (true)
            s = 1
          end
           
          @input.seek(index_16_19)

        when 1
          look_16_20 = @input.peek
          index_16_20 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (( ( syntactic_predicate?( :synpred_35_c! ) ) and ( ( type_name?( @input.look.text ) ) ) ))
            s = 8
          elsif (true)
            s = 1
          end
           
          @input.seek(index_16_20)

        when 2
          look_16_21 = @input.peek
          index_16_21 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (( ( syntactic_predicate?( :synpred_35_c! ) ) and ( ( type_name?( @input.look.text ) ) ) ))
            s = 8
          elsif (true)
            s = 1
          end
           
          @input.seek(index_16_21)

        end
        
        if s < 0
          @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
          nva = ANTLR3::Error::NoViableAlternative.new(@dfa16.description, 16, s, input)
          @dfa16.error(nva)
          raise nva
        end
        
        s
      end
      @dfa20 = DFA20.new(self, 20)
      @dfa24 = DFA24.new(self, 24) do |s|
        case s
        when 0
          look_24_1 = @input.peek
          index_24_1 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_45_c! ))
            s = 2
          elsif (true)
            s = 29
          end
           
          @input.seek(index_24_1)

        end
        
        if s < 0
          @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
          nva = ANTLR3::Error::NoViableAlternative.new(@dfa24.description, 24, s, input)
          @dfa24.error(nva)
          raise nva
        end
        
        s
      end
      @dfa26 = DFA26.new(self, 26) do |s|
        case s
        when 0
          look_26_26 = @input.peek
          index_26_26 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_47_c! ))
            s = 52
          elsif (true)
            s = 1
          end
           
          @input.seek(index_26_26)

        when 1
          look_26_28 = @input.peek
          index_26_28 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_47_c! ))
            s = 52
          elsif (true)
            s = 1
          end
           
          @input.seek(index_26_28)

        when 2
          look_26_30 = @input.peek
          index_26_30 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_47_c! ))
            s = 52
          elsif (true)
            s = 1
          end
           
          @input.seek(index_26_30)

        when 3
          look_26_31 = @input.peek
          index_26_31 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_47_c! ))
            s = 52
          elsif (true)
            s = 1
          end
           
          @input.seek(index_26_31)

        when 4
          look_26_32 = @input.peek
          index_26_32 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_47_c! ))
            s = 52
          elsif (true)
            s = 1
          end
           
          @input.seek(index_26_32)

        when 5
          look_26_33 = @input.peek
          index_26_33 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_47_c! ))
            s = 52
          elsif (true)
            s = 1
          end
           
          @input.seek(index_26_33)

        when 6
          look_26_34 = @input.peek
          index_26_34 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_47_c! ))
            s = 52
          elsif (true)
            s = 1
          end
           
          @input.seek(index_26_34)

        when 7
          look_26_35 = @input.peek
          index_26_35 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_47_c! ))
            s = 52
          elsif (true)
            s = 1
          end
           
          @input.seek(index_26_35)

        when 8
          look_26_36 = @input.peek
          index_26_36 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_47_c! ))
            s = 52
          elsif (true)
            s = 1
          end
           
          @input.seek(index_26_36)

        when 9
          look_26_37 = @input.peek
          index_26_37 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_47_c! ))
            s = 52
          elsif (true)
            s = 1
          end
           
          @input.seek(index_26_37)

        when 10
          look_26_38 = @input.peek
          index_26_38 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_47_c! ))
            s = 52
          elsif (true)
            s = 1
          end
           
          @input.seek(index_26_38)

        when 11
          look_26_39 = @input.peek
          index_26_39 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_47_c! ))
            s = 52
          elsif (true)
            s = 1
          end
           
          @input.seek(index_26_39)

        when 12
          look_26_40 = @input.peek
          index_26_40 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_47_c! ))
            s = 52
          elsif (true)
            s = 1
          end
           
          @input.seek(index_26_40)

        when 13
          look_26_41 = @input.peek
          index_26_41 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_47_c! ))
            s = 52
          elsif (true)
            s = 1
          end
           
          @input.seek(index_26_41)

        when 14
          look_26_42 = @input.peek
          index_26_42 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_47_c! ))
            s = 52
          elsif (true)
            s = 1
          end
           
          @input.seek(index_26_42)

        when 15
          look_26_44 = @input.peek
          index_26_44 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_47_c! ))
            s = 52
          elsif (true)
            s = 1
          end
           
          @input.seek(index_26_44)

        when 16
          look_26_45 = @input.peek
          index_26_45 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_47_c! ))
            s = 52
          elsif (true)
            s = 1
          end
           
          @input.seek(index_26_45)

        when 17
          look_26_46 = @input.peek
          index_26_46 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_47_c! ))
            s = 52
          elsif (true)
            s = 1
          end
           
          @input.seek(index_26_46)

        when 18
          look_26_47 = @input.peek
          index_26_47 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_47_c! ))
            s = 52
          elsif (true)
            s = 1
          end
           
          @input.seek(index_26_47)

        when 19
          look_26_48 = @input.peek
          index_26_48 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_47_c! ))
            s = 52
          elsif (true)
            s = 1
          end
           
          @input.seek(index_26_48)

        when 20
          look_26_49 = @input.peek
          index_26_49 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_47_c! ))
            s = 52
          elsif (true)
            s = 1
          end
           
          @input.seek(index_26_49)

        when 21
          look_26_50 = @input.peek
          index_26_50 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_47_c! ))
            s = 52
          elsif (true)
            s = 1
          end
           
          @input.seek(index_26_50)

        when 22
          look_26_51 = @input.peek
          index_26_51 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_47_c! ))
            s = 52
          elsif (true)
            s = 1
          end
           
          @input.seek(index_26_51)

        end
        
        if s < 0
          @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
          nva = ANTLR3::Error::NoViableAlternative.new(@dfa26.description, 26, s, input)
          @dfa26.error(nva)
          raise nva
        end
        
        s
      end
      @dfa27 = DFA27.new(self, 27) do |s|
        case s
        when 0
          look_27_12 = @input.peek
          index_27_12 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_50_c! ))
            s = 13
          elsif (syntactic_predicate?( :synpred_51_c! ))
            s = 26
          end
           
          @input.seek(index_27_12)

        end
        
        if s < 0
          @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
          nva = ANTLR3::Error::NoViableAlternative.new(@dfa27.description, 27, s, input)
          @dfa27.error(nva)
          raise nva
        end
        
        s
      end
      @dfa30 = DFA30.new(self, 30) do |s|
        case s
        when 0
          look_30_2 = @input.peek
          index_30_2 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_55_c! ))
            s = 27
          elsif (true)
            s = 3
          end
           
          @input.seek(index_30_2)

        when 1
          look_30_18 = @input.peek
          index_30_18 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_54_c! ))
            s = 28
          elsif (true)
            s = 3
          end
           
          @input.seek(index_30_18)

        end
        
        if s < 0
          @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
          nva = ANTLR3::Error::NoViableAlternative.new(@dfa30.description, 30, s, input)
          @dfa30.error(nva)
          raise nva
        end
        
        s
      end
      @dfa28 = DFA28.new(self, 28) do |s|
        case s
        when 0
          look_28_17 = @input.peek
          index_28_17 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_52_c! ))
            s = 51
          elsif (true)
            s = 1
          end
           
          @input.seek(index_28_17)

        end
        
        if s < 0
          @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
          nva = ANTLR3::Error::NoViableAlternative.new(@dfa28.description, 28, s, input)
          @dfa28.error(nva)
          raise nva
        end
        
        s
      end
      @dfa29 = DFA29.new(self, 29) do |s|
        case s
        when 0
          look_29_1 = @input.peek
          index_29_1 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_53_c! ))
            s = 51
          elsif (true)
            s = 2
          end
           
          @input.seek(index_29_1)

        end
        
        if s < 0
          @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
          nva = ANTLR3::Error::NoViableAlternative.new(@dfa29.description, 29, s, input)
          @dfa29.error(nva)
          raise nva
        end
        
        s
      end
      @dfa32 = DFA32.new(self, 32)
      @dfa33 = DFA33.new(self, 33) do |s|
        case s
        when 0
          look_33_4 = @input.peek
          index_33_4 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_58_c! ))
            s = 5
          elsif (syntactic_predicate?( :synpred_59_c! ))
            s = 7
          end
           
          @input.seek(index_33_4)

        when 1
          look_33_29 = @input.peek
          index_33_29 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_58_c! ))
            s = 5
          elsif (syntactic_predicate?( :synpred_59_c! ))
            s = 7
          end
           
          @input.seek(index_33_29)

        when 2
          look_33_31 = @input.peek
          index_33_31 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_58_c! ))
            s = 5
          elsif (syntactic_predicate?( :synpred_59_c! ))
            s = 7
          end
           
          @input.seek(index_33_31)

        when 3
          look_33_32 = @input.peek
          index_33_32 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_58_c! ))
            s = 5
          elsif (syntactic_predicate?( :synpred_59_c! ))
            s = 7
          end
           
          @input.seek(index_33_32)

        end
        
        if s < 0
          @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
          nva = ANTLR3::Error::NoViableAlternative.new(@dfa33.description, 33, s, input)
          @dfa33.error(nva)
          raise nva
        end
        
        s
      end
      @dfa36 = DFA36.new(self, 36) do |s|
        case s
        when 0
          look_36_8 = @input.peek
          index_36_8 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_62_c! ))
            s = 34
          elsif (true)
            s = 3
          end
           
          @input.seek(index_36_8)

        when 1
          look_36_9 = @input.peek
          index_36_9 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_62_c! ))
            s = 34
          elsif (true)
            s = 3
          end
           
          @input.seek(index_36_9)

        when 2
          look_36_10 = @input.peek
          index_36_10 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_62_c! ))
            s = 34
          elsif (true)
            s = 3
          end
           
          @input.seek(index_36_10)

        when 3
          look_36_11 = @input.peek
          index_36_11 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_62_c! ))
            s = 34
          elsif (true)
            s = 3
          end
           
          @input.seek(index_36_11)

        when 4
          look_36_12 = @input.peek
          index_36_12 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_62_c! ))
            s = 34
          elsif (true)
            s = 3
          end
           
          @input.seek(index_36_12)

        when 5
          look_36_13 = @input.peek
          index_36_13 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_62_c! ))
            s = 34
          elsif (true)
            s = 3
          end
           
          @input.seek(index_36_13)

        when 6
          look_36_14 = @input.peek
          index_36_14 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_62_c! ))
            s = 34
          elsif (true)
            s = 3
          end
           
          @input.seek(index_36_14)

        when 7
          look_36_15 = @input.peek
          index_36_15 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_62_c! ))
            s = 34
          elsif (true)
            s = 3
          end
           
          @input.seek(index_36_15)

        when 8
          look_36_16 = @input.peek
          index_36_16 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_62_c! ))
            s = 34
          elsif (true)
            s = 3
          end
           
          @input.seek(index_36_16)

        when 9
          look_36_17 = @input.peek
          index_36_17 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_62_c! ))
            s = 34
          elsif (true)
            s = 3
          end
           
          @input.seek(index_36_17)

        when 10
          look_36_18 = @input.peek
          index_36_18 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_62_c! ))
            s = 34
          elsif (true)
            s = 3
          end
           
          @input.seek(index_36_18)

        when 11
          look_36_19 = @input.peek
          index_36_19 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_62_c! ))
            s = 34
          elsif (true)
            s = 3
          end
           
          @input.seek(index_36_19)

        when 12
          look_36_20 = @input.peek
          index_36_20 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_62_c! ))
            s = 34
          elsif (true)
            s = 3
          end
           
          @input.seek(index_36_20)

        when 13
          look_36_21 = @input.peek
          index_36_21 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_62_c! ))
            s = 34
          elsif (true)
            s = 3
          end
           
          @input.seek(index_36_21)

        when 14
          look_36_22 = @input.peek
          index_36_22 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_62_c! ))
            s = 34
          elsif (true)
            s = 3
          end
           
          @input.seek(index_36_22)

        when 15
          look_36_23 = @input.peek
          index_36_23 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_62_c! ))
            s = 34
          elsif (true)
            s = 3
          end
           
          @input.seek(index_36_23)

        when 16
          look_36_24 = @input.peek
          index_36_24 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_62_c! ))
            s = 34
          elsif (true)
            s = 3
          end
           
          @input.seek(index_36_24)

        when 17
          look_36_25 = @input.peek
          index_36_25 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_62_c! ))
            s = 34
          elsif (true)
            s = 3
          end
           
          @input.seek(index_36_25)

        when 18
          look_36_26 = @input.peek
          index_36_26 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_62_c! ))
            s = 34
          elsif (true)
            s = 3
          end
           
          @input.seek(index_36_26)

        when 19
          look_36_27 = @input.peek
          index_36_27 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_62_c! ))
            s = 34
          elsif (true)
            s = 3
          end
           
          @input.seek(index_36_27)

        when 20
          look_36_28 = @input.peek
          index_36_28 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_62_c! ))
            s = 34
          elsif (true)
            s = 3
          end
           
          @input.seek(index_36_28)

        when 21
          look_36_29 = @input.peek
          index_36_29 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_62_c! ))
            s = 34
          elsif (true)
            s = 3
          end
           
          @input.seek(index_36_29)

        when 22
          look_36_30 = @input.peek
          index_36_30 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_62_c! ))
            s = 34
          elsif (true)
            s = 3
          end
           
          @input.seek(index_36_30)

        when 23
          look_36_31 = @input.peek
          index_36_31 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_62_c! ))
            s = 34
          elsif (true)
            s = 3
          end
           
          @input.seek(index_36_31)

        when 24
          look_36_32 = @input.peek
          index_36_32 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_62_c! ))
            s = 34
          elsif (true)
            s = 3
          end
           
          @input.seek(index_36_32)

        when 25
          look_36_33 = @input.peek
          index_36_33 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_62_c! ))
            s = 34
          elsif (true)
            s = 3
          end
           
          @input.seek(index_36_33)

        end
        
        if s < 0
          @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
          nva = ANTLR3::Error::NoViableAlternative.new(@dfa36.description, 36, s, input)
          @dfa36.error(nva)
          raise nva
        end
        
        s
      end
      @dfa38 = DFA38.new(self, 38)
      @dfa39 = DFA39.new(self, 39) do |s|
        case s
        when 0
          look_39_8 = @input.peek
          index_39_8 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_65_c! ))
            s = 34
          elsif (true)
            s = 1
          end
           
          @input.seek(index_39_8)

        when 1
          look_39_10 = @input.peek
          index_39_10 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_65_c! ))
            s = 34
          elsif (true)
            s = 1
          end
           
          @input.seek(index_39_10)

        when 2
          look_39_12 = @input.peek
          index_39_12 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_65_c! ))
            s = 34
          elsif (true)
            s = 1
          end
           
          @input.seek(index_39_12)

        when 3
          look_39_13 = @input.peek
          index_39_13 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_65_c! ))
            s = 34
          elsif (true)
            s = 1
          end
           
          @input.seek(index_39_13)

        when 4
          look_39_14 = @input.peek
          index_39_14 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_65_c! ))
            s = 34
          elsif (true)
            s = 1
          end
           
          @input.seek(index_39_14)

        when 5
          look_39_15 = @input.peek
          index_39_15 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_65_c! ))
            s = 34
          elsif (true)
            s = 1
          end
           
          @input.seek(index_39_15)

        when 6
          look_39_16 = @input.peek
          index_39_16 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_65_c! ))
            s = 34
          elsif (true)
            s = 1
          end
           
          @input.seek(index_39_16)

        when 7
          look_39_17 = @input.peek
          index_39_17 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_65_c! ))
            s = 34
          elsif (true)
            s = 1
          end
           
          @input.seek(index_39_17)

        when 8
          look_39_18 = @input.peek
          index_39_18 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_65_c! ))
            s = 34
          elsif (true)
            s = 1
          end
           
          @input.seek(index_39_18)

        when 9
          look_39_19 = @input.peek
          index_39_19 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_65_c! ))
            s = 34
          elsif (true)
            s = 1
          end
           
          @input.seek(index_39_19)

        when 10
          look_39_20 = @input.peek
          index_39_20 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_65_c! ))
            s = 34
          elsif (true)
            s = 1
          end
           
          @input.seek(index_39_20)

        when 11
          look_39_21 = @input.peek
          index_39_21 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_65_c! ))
            s = 34
          elsif (true)
            s = 1
          end
           
          @input.seek(index_39_21)

        when 12
          look_39_22 = @input.peek
          index_39_22 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_65_c! ))
            s = 34
          elsif (true)
            s = 1
          end
           
          @input.seek(index_39_22)

        when 13
          look_39_23 = @input.peek
          index_39_23 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_65_c! ))
            s = 34
          elsif (true)
            s = 1
          end
           
          @input.seek(index_39_23)

        when 14
          look_39_24 = @input.peek
          index_39_24 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_65_c! ))
            s = 34
          elsif (true)
            s = 1
          end
           
          @input.seek(index_39_24)

        when 15
          look_39_26 = @input.peek
          index_39_26 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_65_c! ))
            s = 34
          elsif (true)
            s = 1
          end
           
          @input.seek(index_39_26)

        when 16
          look_39_27 = @input.peek
          index_39_27 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_65_c! ))
            s = 34
          elsif (true)
            s = 1
          end
           
          @input.seek(index_39_27)

        when 17
          look_39_28 = @input.peek
          index_39_28 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_65_c! ))
            s = 34
          elsif (true)
            s = 1
          end
           
          @input.seek(index_39_28)

        when 18
          look_39_29 = @input.peek
          index_39_29 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_65_c! ))
            s = 34
          elsif (true)
            s = 1
          end
           
          @input.seek(index_39_29)

        when 19
          look_39_30 = @input.peek
          index_39_30 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_65_c! ))
            s = 34
          elsif (true)
            s = 1
          end
           
          @input.seek(index_39_30)

        when 20
          look_39_31 = @input.peek
          index_39_31 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_65_c! ))
            s = 34
          elsif (true)
            s = 1
          end
           
          @input.seek(index_39_31)

        when 21
          look_39_32 = @input.peek
          index_39_32 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_65_c! ))
            s = 34
          elsif (true)
            s = 1
          end
           
          @input.seek(index_39_32)

        when 22
          look_39_33 = @input.peek
          index_39_33 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_65_c! ))
            s = 34
          elsif (true)
            s = 1
          end
           
          @input.seek(index_39_33)

        end
        
        if s < 0
          @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
          nva = ANTLR3::Error::NoViableAlternative.new(@dfa39.description, 39, s, input)
          @dfa39.error(nva)
          raise nva
        end
        
        s
      end
      @dfa40 = DFA40.new(self, 40)
      @dfa43 = DFA43.new(self, 43)
      @dfa45 = DFA45.new(self, 45)
      @dfa46 = DFA46.new(self, 46)
      @dfa47 = DFA47.new(self, 47) do |s|
        case s
        when 0
          look_47_20 = @input.peek
          index_47_20 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_78_c! ))
            s = 8
          elsif (true)
            s = 2
          end
           
          @input.seek(index_47_20)

        end
        
        if s < 0
          @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
          nva = ANTLR3::Error::NoViableAlternative.new(@dfa47.description, 47, s, input)
          @dfa47.error(nva)
          raise nva
        end
        
        s
      end
      @dfa48 = DFA48.new(self, 48) do |s|
        case s
        when 0
          look_48_8 = @input.peek
          index_48_8 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_83_c! ))
            s = 9
          elsif (true)
            s = 15
          end
           
          @input.seek(index_48_8)

        end
        
        if s < 0
          @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
          nva = ANTLR3::Error::NoViableAlternative.new(@dfa48.description, 48, s, input)
          @dfa48.error(nva)
          raise nva
        end
        
        s
      end
      @dfa49 = DFA49.new(self, 49) do |s|
        case s
        when 0
          look_49_29 = @input.peek
          index_49_29 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_88_c! ))
            s = 44
          elsif (true)
            s = 2
          end
           
          @input.seek(index_49_29)

        end
        
        if s < 0
          @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
          nva = ANTLR3::Error::NoViableAlternative.new(@dfa49.description, 49, s, input)
          @dfa49.error(nva)
          raise nva
        end
        
        s
      end
      @dfa52 = DFA52.new(self, 52) do |s|
        case s
        when 0
          look_52_8 = @input.peek
          index_52_8 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_105_c! ))
            s = 35
          elsif (true)
            s = 15
          end
           
          @input.seek(index_52_8)

        when 1
          look_52_9 = @input.peek
          index_52_9 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_105_c! ))
            s = 35
          elsif (true)
            s = 15
          end
           
          @input.seek(index_52_9)

        when 2
          look_52_10 = @input.peek
          index_52_10 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_105_c! ))
            s = 35
          elsif (true)
            s = 15
          end
           
          @input.seek(index_52_10)

        when 3
          look_52_11 = @input.peek
          index_52_11 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_105_c! ))
            s = 35
          elsif (true)
            s = 15
          end
           
          @input.seek(index_52_11)

        when 4
          look_52_12 = @input.peek
          index_52_12 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_105_c! ))
            s = 35
          elsif (true)
            s = 15
          end
           
          @input.seek(index_52_12)

        when 5
          look_52_13 = @input.peek
          index_52_13 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_105_c! ))
            s = 35
          elsif (true)
            s = 15
          end
           
          @input.seek(index_52_13)

        when 6
          look_52_14 = @input.peek
          index_52_14 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_105_c! ))
            s = 35
          elsif (true)
            s = 15
          end
           
          @input.seek(index_52_14)

        when 7
          look_52_36 = @input.peek
          index_52_36 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_105_c! ))
            s = 35
          elsif (true)
            s = 15
          end
           
          @input.seek(index_52_36)

        when 8
          look_52_37 = @input.peek
          index_52_37 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_105_c! ))
            s = 35
          elsif (true)
            s = 15
          end
           
          @input.seek(index_52_37)

        when 9
          look_52_38 = @input.peek
          index_52_38 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_105_c! ))
            s = 35
          elsif (true)
            s = 15
          end
           
          @input.seek(index_52_38)

        when 10
          look_52_39 = @input.peek
          index_52_39 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_105_c! ))
            s = 35
          elsif (true)
            s = 15
          end
           
          @input.seek(index_52_39)

        when 11
          look_52_40 = @input.peek
          index_52_40 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_105_c! ))
            s = 35
          elsif (true)
            s = 15
          end
           
          @input.seek(index_52_40)

        when 12
          look_52_41 = @input.peek
          index_52_41 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_105_c! ))
            s = 35
          elsif (true)
            s = 15
          end
           
          @input.seek(index_52_41)

        when 13
          look_52_42 = @input.peek
          index_52_42 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_105_c! ))
            s = 35
          elsif (true)
            s = 15
          end
           
          @input.seek(index_52_42)

        when 14
          look_52_76 = @input.peek
          index_52_76 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_105_c! ))
            s = 35
          elsif (true)
            s = 15
          end
           
          @input.seek(index_52_76)

        when 15
          look_52_77 = @input.peek
          index_52_77 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_105_c! ))
            s = 35
          elsif (true)
            s = 15
          end
           
          @input.seek(index_52_77)

        when 16
          look_52_78 = @input.peek
          index_52_78 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_105_c! ))
            s = 35
          elsif (true)
            s = 15
          end
           
          @input.seek(index_52_78)

        when 17
          look_52_79 = @input.peek
          index_52_79 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_105_c! ))
            s = 35
          elsif (true)
            s = 15
          end
           
          @input.seek(index_52_79)

        when 18
          look_52_80 = @input.peek
          index_52_80 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_105_c! ))
            s = 35
          elsif (true)
            s = 15
          end
           
          @input.seek(index_52_80)

        when 19
          look_52_81 = @input.peek
          index_52_81 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_105_c! ))
            s = 35
          elsif (true)
            s = 15
          end
           
          @input.seek(index_52_81)

        when 20
          look_52_82 = @input.peek
          index_52_82 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_105_c! ))
            s = 35
          elsif (true)
            s = 15
          end
           
          @input.seek(index_52_82)

        when 21
          look_52_83 = @input.peek
          index_52_83 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_105_c! ))
            s = 35
          elsif (true)
            s = 15
          end
           
          @input.seek(index_52_83)

        when 22
          look_52_84 = @input.peek
          index_52_84 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_105_c! ))
            s = 35
          elsif (true)
            s = 15
          end
           
          @input.seek(index_52_84)

        when 23
          look_52_85 = @input.peek
          index_52_85 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_105_c! ))
            s = 35
          elsif (true)
            s = 15
          end
           
          @input.seek(index_52_85)

        when 24
          look_52_86 = @input.peek
          index_52_86 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_105_c! ))
            s = 35
          elsif (true)
            s = 15
          end
           
          @input.seek(index_52_86)

        when 25
          look_52_87 = @input.peek
          index_52_87 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_105_c! ))
            s = 35
          elsif (true)
            s = 15
          end
           
          @input.seek(index_52_87)

        when 26
          look_52_88 = @input.peek
          index_52_88 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_105_c! ))
            s = 35
          elsif (true)
            s = 15
          end
           
          @input.seek(index_52_88)

        when 27
          look_52_89 = @input.peek
          index_52_89 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_105_c! ))
            s = 35
          elsif (true)
            s = 15
          end
           
          @input.seek(index_52_89)

        when 28
          look_52_90 = @input.peek
          index_52_90 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_105_c! ))
            s = 35
          elsif (true)
            s = 15
          end
           
          @input.seek(index_52_90)

        when 29
          look_52_91 = @input.peek
          index_52_91 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_105_c! ))
            s = 35
          elsif (true)
            s = 15
          end
           
          @input.seek(index_52_91)

        when 30
          look_52_92 = @input.peek
          index_52_92 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_105_c! ))
            s = 35
          elsif (true)
            s = 15
          end
           
          @input.seek(index_52_92)

        when 31
          look_52_93 = @input.peek
          index_52_93 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_105_c! ))
            s = 35
          elsif (true)
            s = 15
          end
           
          @input.seek(index_52_93)

        when 32
          look_52_94 = @input.peek
          index_52_94 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_105_c! ))
            s = 35
          elsif (true)
            s = 15
          end
           
          @input.seek(index_52_94)

        when 33
          look_52_95 = @input.peek
          index_52_95 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_105_c! ))
            s = 35
          elsif (true)
            s = 15
          end
           
          @input.seek(index_52_95)

        when 34
          look_52_96 = @input.peek
          index_52_96 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_105_c! ))
            s = 35
          elsif (true)
            s = 15
          end
           
          @input.seek(index_52_96)

        when 35
          look_52_97 = @input.peek
          index_52_97 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_105_c! ))
            s = 35
          elsif (true)
            s = 15
          end
           
          @input.seek(index_52_97)

        when 36
          look_52_98 = @input.peek
          index_52_98 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_105_c! ))
            s = 35
          elsif (true)
            s = 15
          end
           
          @input.seek(index_52_98)

        when 37
          look_52_99 = @input.peek
          index_52_99 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_105_c! ))
            s = 35
          elsif (true)
            s = 15
          end
           
          @input.seek(index_52_99)

        when 38
          look_52_100 = @input.peek
          index_52_100 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_105_c! ))
            s = 35
          elsif (true)
            s = 15
          end
           
          @input.seek(index_52_100)

        when 39
          look_52_101 = @input.peek
          index_52_101 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_105_c! ))
            s = 35
          elsif (true)
            s = 15
          end
           
          @input.seek(index_52_101)

        when 40
          look_52_102 = @input.peek
          index_52_102 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_105_c! ))
            s = 35
          elsif (true)
            s = 15
          end
           
          @input.seek(index_52_102)

        when 41
          look_52_103 = @input.peek
          index_52_103 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_105_c! ))
            s = 35
          elsif (true)
            s = 15
          end
           
          @input.seek(index_52_103)

        when 42
          look_52_104 = @input.peek
          index_52_104 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_105_c! ))
            s = 35
          elsif (true)
            s = 15
          end
           
          @input.seek(index_52_104)

        when 43
          look_52_105 = @input.peek
          index_52_105 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_105_c! ))
            s = 35
          elsif (true)
            s = 15
          end
           
          @input.seek(index_52_105)

        when 44
          look_52_106 = @input.peek
          index_52_106 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_105_c! ))
            s = 35
          elsif (true)
            s = 15
          end
           
          @input.seek(index_52_106)

        when 45
          look_52_107 = @input.peek
          index_52_107 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_105_c! ))
            s = 35
          elsif (true)
            s = 15
          end
           
          @input.seek(index_52_107)

        when 46
          look_52_108 = @input.peek
          index_52_108 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_105_c! ))
            s = 35
          elsif (true)
            s = 15
          end
           
          @input.seek(index_52_108)

        when 47
          look_52_109 = @input.peek
          index_52_109 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_105_c! ))
            s = 35
          elsif (true)
            s = 15
          end
           
          @input.seek(index_52_109)

        when 48
          look_52_110 = @input.peek
          index_52_110 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?( :synpred_105_c! ))
            s = 35
          elsif (true)
            s = 15
          end
           
          @input.seek(index_52_110)

        end
        
        if s < 0
          @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
          nva = ANTLR3::Error::NoViableAlternative.new(@dfa52.description, 52, s, input)
          @dfa52.error(nva)
          raise nva
        end
        
        s
      end
      @dfa54 = DFA54.new(self, 54)
      @dfa55 = DFA55.new(self, 55)
      @dfa56 = DFA56.new(self, 56)
      @dfa57 = DFA57.new(self, 57)
      @dfa58 = DFA58.new(self, 58)
      @dfa59 = DFA59.new(self, 59)
      @dfa60 = DFA60.new(self, 60)
      @dfa61 = DFA61.new(self, 61)
      @dfa62 = DFA62.new(self, 62)
      @dfa64 = DFA64.new(self, 64) do |s|
        case s
        when 0
          look_64_37 = @input.peek
          index_64_37 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (( ( syntactic_predicate?( :synpred_137_c! ) ) and ( ( type_name?( @input.look.text ) ) ) ))
            s = 22
          elsif (true)
            s = 2
          end
           
          @input.seek(index_64_37)

        when 1
          look_64_39 = @input.peek
          index_64_39 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (( ( syntactic_predicate?( :synpred_137_c! ) ) and ( ( type_name?( @input.look.text ) ) ) ))
            s = 22
          elsif (true)
            s = 2
          end
           
          @input.seek(index_64_39)

        when 2
          look_64_40 = @input.peek
          index_64_40 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (( ( syntactic_predicate?( :synpred_137_c! ) ) and ( ( type_name?( @input.look.text ) ) ) ))
            s = 22
          elsif (true)
            s = 2
          end
           
          @input.seek(index_64_40)

        end
        
        if s < 0
          @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
          nva = ANTLR3::Error::NoViableAlternative.new(@dfa64.description, 64, s, input)
          @dfa64.error(nva)
          raise nva
        end
        
        s
      end
      @dfa65 = DFA65.new(self, 65)
      @dfa66 = DFA66.new(self, 66)
      @dfa72 = DFA72.new(self, 72)
      @dfa73 = DFA73.new(self, 73) do |s|
        case s
        when 0
          look_73_18 = @input.peek
          index_73_18 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (( ( syntactic_predicate?( :synpred_2_c! ) ) and ( ( type_name?( @input.look.text ) ) ) ))
            s = 1
          elsif (true)
            s = 15
          end
           
          @input.seek(index_73_18)

        when 1
          look_73_19 = @input.peek
          index_73_19 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (( ( syntactic_predicate?( :synpred_2_c! ) ) and ( ( type_name?( @input.look.text ) ) ) ))
            s = 1
          elsif (true)
            s = 15
          end
           
          @input.seek(index_73_19)

        when 2
          look_73_20 = @input.peek
          index_73_20 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (( ( syntactic_predicate?( :synpred_2_c! ) ) and ( ( type_name?( @input.look.text ) ) ) ))
            s = 1
          elsif (true)
            s = 15
          end
           
          @input.seek(index_73_20)

        when 3
          look_73_21 = @input.peek
          index_73_21 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (( ( syntactic_predicate?( :synpred_2_c! ) ) and ( ( type_name?( @input.look.text ) ) ) ))
            s = 1
          elsif (true)
            s = 15
          end
           
          @input.seek(index_73_21)

        when 4
          look_73_22 = @input.peek
          index_73_22 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (( ( syntactic_predicate?( :synpred_2_c! ) ) and ( ( type_name?( @input.look.text ) ) ) ))
            s = 1
          elsif (true)
            s = 15
          end
           
          @input.seek(index_73_22)

        when 5
          look_73_23 = @input.peek
          index_73_23 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (( ( syntactic_predicate?( :synpred_2_c! ) ) and ( ( type_name?( @input.look.text ) ) ) ))
            s = 1
          elsif (true)
            s = 15
          end
           
          @input.seek(index_73_23)

        when 6
          look_73_24 = @input.peek
          index_73_24 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (( ( syntactic_predicate?( :synpred_2_c! ) ) and ( ( type_name?( @input.look.text ) ) ) ))
            s = 1
          elsif (true)
            s = 15
          end
           
          @input.seek(index_73_24)

        when 7
          look_73_25 = @input.peek
          index_73_25 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (( ( syntactic_predicate?( :synpred_2_c! ) ) and ( ( type_name?( @input.look.text ) ) ) ))
            s = 1
          elsif (true)
            s = 15
          end
           
          @input.seek(index_73_25)

        when 8
          look_73_26 = @input.peek
          index_73_26 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (( ( syntactic_predicate?( :synpred_2_c! ) ) and ( ( type_name?( @input.look.text ) ) ) ))
            s = 1
          elsif (true)
            s = 15
          end
           
          @input.seek(index_73_26)

        when 9
          look_73_27 = @input.peek
          index_73_27 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (( ( syntactic_predicate?( :synpred_2_c! ) ) and ( ( type_name?( @input.look.text ) ) ) ))
            s = 1
          elsif (true)
            s = 15
          end
           
          @input.seek(index_73_27)

        when 10
          look_73_28 = @input.peek
          index_73_28 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (( ( syntactic_predicate?( :synpred_2_c! ) ) and ( ( type_name?( @input.look.text ) ) ) ))
            s = 1
          elsif (true)
            s = 15
          end
           
          @input.seek(index_73_28)

        when 11
          look_73_29 = @input.peek
          index_73_29 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (( ( syntactic_predicate?( :synpred_2_c! ) ) and ( ( type_name?( @input.look.text ) ) ) ))
            s = 1
          elsif (true)
            s = 15
          end
           
          @input.seek(index_73_29)

        when 12
          look_73_30 = @input.peek
          index_73_30 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (( ( syntactic_predicate?( :synpred_2_c! ) ) and ( ( type_name?( @input.look.text ) ) ) ))
            s = 1
          elsif (true)
            s = 15
          end
           
          @input.seek(index_73_30)

        when 13
          look_73_31 = @input.peek
          index_73_31 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (( ( syntactic_predicate?( :synpred_2_c! ) ) and ( ( type_name?( @input.look.text ) ) ) ))
            s = 1
          elsif (true)
            s = 15
          end
           
          @input.seek(index_73_31)

        when 14
          look_73_32 = @input.peek
          index_73_32 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (( ( syntactic_predicate?( :synpred_2_c! ) ) and ( ( type_name?( @input.look.text ) ) ) ))
            s = 1
          elsif (true)
            s = 15
          end
           
          @input.seek(index_73_32)

        end
        
        if s < 0
          @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
          nva = ANTLR3::Error::NoViableAlternative.new(@dfa73.description, 73, s, input)
          @dfa73.error(nva)
          raise nva
        end
        
        s
      end
      @dfa74 = DFA74.new(self, 74)

    end
    TOKENS_FOLLOWING_external_declaration_IN_translation_unit_93 = Set[1, 4, 23, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 42, 43, 45, 46, 47, 48, 52]
    TOKENS_FOLLOWING_function_definition_IN_external_declaration_131 = Set[1]
    TOKENS_FOLLOWING_declaration_IN_external_declaration_137 = Set[1]
    TOKENS_FOLLOWING_declaration_specifiers_IN_function_definition_162 = Set[4, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 42, 43, 45, 46, 47, 48, 52]
    TOKENS_FOLLOWING_declarator_IN_function_definition_165 = Set[4, 23, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 42, 43, 45, 46, 47, 48, 52]
    TOKENS_FOLLOWING_declaration_IN_function_definition_174 = Set[4, 23, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 42, 43, 45, 46, 47, 48, 52]
    TOKENS_FOLLOWING_compound_statement_IN_function_definition_177 = Set[1]
    TOKENS_FOLLOWING_compound_statement_IN_function_definition_188 = Set[1]
    TOKENS_FOLLOWING_T__23_IN_declaration_224 = Set[4, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 42, 43, 45, 46, 47, 48, 52]
    TOKENS_FOLLOWING_declaration_specifiers_IN_declaration_226 = Set[4, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 42, 43, 45, 46, 47, 48, 52]
    TOKENS_FOLLOWING_init_declarator_list_IN_declaration_235 = Set[24]
    TOKENS_FOLLOWING_T__24_IN_declaration_237 = Set[1]
    TOKENS_FOLLOWING_declaration_specifiers_IN_declaration_244 = Set[4, 24, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 42, 43, 45, 46, 47, 48, 52]
    TOKENS_FOLLOWING_init_declarator_list_IN_declaration_246 = Set[24]
    TOKENS_FOLLOWING_T__24_IN_declaration_249 = Set[1]
    TOKENS_FOLLOWING_storage_class_specifier_IN_declaration_specifiers_266 = Set[1, 4, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 42, 43, 45, 46, 47]
    TOKENS_FOLLOWING_type_specifier_IN_declaration_specifiers_276 = Set[1, 4, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 42, 43, 45, 46, 47]
    TOKENS_FOLLOWING_type_qualifier_IN_declaration_specifiers_286 = Set[1, 4, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 42, 43, 45, 46, 47]
    TOKENS_FOLLOWING_init_declarator_IN_init_declarator_list_306 = Set[1, 25]
    TOKENS_FOLLOWING_T__25_IN_init_declarator_list_309 = Set[4, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 42, 43, 45, 46, 47, 48, 52]
    TOKENS_FOLLOWING_init_declarator_IN_init_declarator_list_311 = Set[1, 25]
    TOKENS_FOLLOWING_declarator_IN_init_declarator_326 = Set[1, 26]
    TOKENS_FOLLOWING_T__26_IN_init_declarator_329 = Set[4, 5, 6, 7, 8, 9, 10, 40, 48, 52, 54, 55, 58, 59, 60, 63, 64, 65]
    TOKENS_FOLLOWING_initializer_IN_init_declarator_331 = Set[1]
    TOKENS_FOLLOWING_set_IN_storage_class_specifier_0 = Set[1]
    TOKENS_FOLLOWING_T__31_IN_type_specifier_377 = Set[1]
    TOKENS_FOLLOWING_T__32_IN_type_specifier_383 = Set[1]
    TOKENS_FOLLOWING_T__33_IN_type_specifier_389 = Set[1]
    TOKENS_FOLLOWING_T__34_IN_type_specifier_395 = Set[1]
    TOKENS_FOLLOWING_T__35_IN_type_specifier_401 = Set[1]
    TOKENS_FOLLOWING_T__36_IN_type_specifier_407 = Set[1]
    TOKENS_FOLLOWING_T__37_IN_type_specifier_413 = Set[1]
    TOKENS_FOLLOWING_T__38_IN_type_specifier_419 = Set[1]
    TOKENS_FOLLOWING_T__39_IN_type_specifier_425 = Set[1]
    TOKENS_FOLLOWING_struct_or_union_specifier_IN_type_specifier_431 = Set[1]
    TOKENS_FOLLOWING_enum_specifier_IN_type_specifier_437 = Set[1]
    TOKENS_FOLLOWING_type_id_IN_type_specifier_443 = Set[1]
    TOKENS_FOLLOWING_IDENTIFIER_IN_type_id_460 = Set[1]
    TOKENS_FOLLOWING_struct_or_union_IN_struct_or_union_specifier_492 = Set[4, 40]
    TOKENS_FOLLOWING_IDENTIFIER_IN_struct_or_union_specifier_494 = Set[40]
    TOKENS_FOLLOWING_T__40_IN_struct_or_union_specifier_497 = Set[4, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 42, 43, 45, 46, 47]
    TOKENS_FOLLOWING_struct_declaration_list_IN_struct_or_union_specifier_499 = Set[41]
    TOKENS_FOLLOWING_T__41_IN_struct_or_union_specifier_501 = Set[1]
    TOKENS_FOLLOWING_struct_or_union_IN_struct_or_union_specifier_507 = Set[4]
    TOKENS_FOLLOWING_IDENTIFIER_IN_struct_or_union_specifier_509 = Set[1]
    TOKENS_FOLLOWING_set_IN_struct_or_union_0 = Set[1]
    TOKENS_FOLLOWING_struct_declaration_IN_struct_declaration_list_541 = Set[1, 4, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 42, 43, 45, 46, 47]
    TOKENS_FOLLOWING_specifier_qualifier_list_IN_struct_declaration_555 = Set[4, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 42, 43, 44, 45, 46, 47, 48, 52]
    TOKENS_FOLLOWING_struct_declarator_list_IN_struct_declaration_557 = Set[24]
    TOKENS_FOLLOWING_T__24_IN_struct_declaration_559 = Set[1]
    TOKENS_FOLLOWING_type_qualifier_IN_specifier_qualifier_list_574 = Set[1, 4, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 42, 43, 45, 46, 47]
    TOKENS_FOLLOWING_type_specifier_IN_specifier_qualifier_list_578 = Set[1, 4, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 42, 43, 45, 46, 47]
    TOKENS_FOLLOWING_struct_declarator_IN_struct_declarator_list_594 = Set[1, 25]
    TOKENS_FOLLOWING_T__25_IN_struct_declarator_list_597 = Set[4, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 42, 43, 44, 45, 46, 47, 48, 52]
    TOKENS_FOLLOWING_struct_declarator_IN_struct_declarator_list_599 = Set[1, 25]
    TOKENS_FOLLOWING_declarator_IN_struct_declarator_614 = Set[1, 44]
    TOKENS_FOLLOWING_T__44_IN_struct_declarator_617 = Set[4, 5, 6, 7, 8, 9, 10, 48, 52, 54, 55, 58, 59, 60, 63, 64, 65]
    TOKENS_FOLLOWING_constant_expression_IN_struct_declarator_619 = Set[1]
    TOKENS_FOLLOWING_T__44_IN_struct_declarator_627 = Set[4, 5, 6, 7, 8, 9, 10, 48, 52, 54, 55, 58, 59, 60, 63, 64, 65]
    TOKENS_FOLLOWING_constant_expression_IN_struct_declarator_629 = Set[1]
    TOKENS_FOLLOWING_T__45_IN_enum_specifier_649 = Set[40]
    TOKENS_FOLLOWING_T__40_IN_enum_specifier_651 = Set[4]
    TOKENS_FOLLOWING_enumerator_list_IN_enum_specifier_653 = Set[41]
    TOKENS_FOLLOWING_T__41_IN_enum_specifier_655 = Set[1]
    TOKENS_FOLLOWING_T__45_IN_enum_specifier_661 = Set[4]
    TOKENS_FOLLOWING_IDENTIFIER_IN_enum_specifier_663 = Set[40]
    TOKENS_FOLLOWING_T__40_IN_enum_specifier_665 = Set[4]
    TOKENS_FOLLOWING_enumerator_list_IN_enum_specifier_667 = Set[41]
    TOKENS_FOLLOWING_T__41_IN_enum_specifier_669 = Set[1]
    TOKENS_FOLLOWING_T__45_IN_enum_specifier_675 = Set[4]
    TOKENS_FOLLOWING_IDENTIFIER_IN_enum_specifier_677 = Set[1]
    TOKENS_FOLLOWING_enumerator_IN_enumerator_list_690 = Set[1, 25]
    TOKENS_FOLLOWING_T__25_IN_enumerator_list_693 = Set[4]
    TOKENS_FOLLOWING_enumerator_IN_enumerator_list_695 = Set[1, 25]
    TOKENS_FOLLOWING_IDENTIFIER_IN_enumerator_710 = Set[1, 26]
    TOKENS_FOLLOWING_T__26_IN_enumerator_713 = Set[4, 5, 6, 7, 8, 9, 10, 48, 52, 54, 55, 58, 59, 60, 63, 64, 65]
    TOKENS_FOLLOWING_constant_expression_IN_enumerator_715 = Set[1]
    TOKENS_FOLLOWING_set_IN_type_qualifier_0 = Set[1]
    TOKENS_FOLLOWING_pointer_IN_declarator_749 = Set[4, 48, 52]
    TOKENS_FOLLOWING_direct_declarator_IN_declarator_752 = Set[1]
    TOKENS_FOLLOWING_pointer_IN_declarator_758 = Set[1]
    TOKENS_FOLLOWING_IDENTIFIER_IN_direct_declarator_774 = Set[1, 48, 50]
    TOKENS_FOLLOWING_T__48_IN_direct_declarator_788 = Set[4, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 42, 43, 45, 46, 47, 48, 52]
    TOKENS_FOLLOWING_declarator_IN_direct_declarator_790 = Set[49]
    TOKENS_FOLLOWING_T__49_IN_direct_declarator_792 = Set[1, 48, 50]
    TOKENS_FOLLOWING_declarator_suffix_IN_direct_declarator_804 = Set[1, 48, 50]
    TOKENS_FOLLOWING_T__50_IN_declarator_suffix_820 = Set[4, 5, 6, 7, 8, 9, 10, 48, 52, 54, 55, 58, 59, 60, 63, 64, 65]
    TOKENS_FOLLOWING_constant_expression_IN_declarator_suffix_822 = Set[51]
    TOKENS_FOLLOWING_T__51_IN_declarator_suffix_824 = Set[1]
    TOKENS_FOLLOWING_T__50_IN_declarator_suffix_832 = Set[51]
    TOKENS_FOLLOWING_T__51_IN_declarator_suffix_834 = Set[1]
    TOKENS_FOLLOWING_T__48_IN_declarator_suffix_842 = Set[4, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 42, 43, 45, 46, 47]
    TOKENS_FOLLOWING_parameter_type_list_IN_declarator_suffix_844 = Set[49]
    TOKENS_FOLLOWING_T__49_IN_declarator_suffix_846 = Set[1]
    TOKENS_FOLLOWING_T__48_IN_declarator_suffix_854 = Set[4]
    TOKENS_FOLLOWING_identifier_list_IN_declarator_suffix_856 = Set[49]
    TOKENS_FOLLOWING_T__49_IN_declarator_suffix_858 = Set[1]
    TOKENS_FOLLOWING_T__48_IN_declarator_suffix_866 = Set[49]
    TOKENS_FOLLOWING_T__49_IN_declarator_suffix_868 = Set[1]
    TOKENS_FOLLOWING_T__52_IN_pointer_881 = Set[4, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 42, 43, 45, 46, 47]
    TOKENS_FOLLOWING_type_qualifier_IN_pointer_883 = Set[1, 4, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 42, 43, 45, 46, 47, 52]
    TOKENS_FOLLOWING_pointer_IN_pointer_886 = Set[1]
    TOKENS_FOLLOWING_T__52_IN_pointer_893 = Set[52]
    TOKENS_FOLLOWING_pointer_IN_pointer_895 = Set[1]
    TOKENS_FOLLOWING_T__52_IN_pointer_901 = Set[1]
    TOKENS_FOLLOWING_parameter_list_IN_parameter_type_list_914 = Set[1, 25]
    TOKENS_FOLLOWING_T__25_IN_parameter_type_list_917 = Set[53]
    TOKENS_FOLLOWING_T__53_IN_parameter_type_list_919 = Set[1]
    TOKENS_FOLLOWING_parameter_declaration_IN_parameter_list_934 = Set[1, 25]
    TOKENS_FOLLOWING_T__25_IN_parameter_list_937 = Set[4, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 42, 43, 45, 46, 47]
    TOKENS_FOLLOWING_parameter_declaration_IN_parameter_list_939 = Set[1, 25]
    TOKENS_FOLLOWING_declaration_specifiers_IN_parameter_declaration_954 = Set[1, 4, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 42, 43, 45, 46, 47, 48, 50, 52]
    TOKENS_FOLLOWING_declarator_IN_parameter_declaration_957 = Set[1, 4, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 42, 43, 45, 46, 47, 48, 50, 52]
    TOKENS_FOLLOWING_abstract_declarator_IN_parameter_declaration_959 = Set[1, 4, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 42, 43, 45, 46, 47, 48, 50, 52]
    TOKENS_FOLLOWING_IDENTIFIER_IN_identifier_list_974 = Set[1, 25]
    TOKENS_FOLLOWING_T__25_IN_identifier_list_977 = Set[4]
    TOKENS_FOLLOWING_IDENTIFIER_IN_identifier_list_979 = Set[1, 25]
    TOKENS_FOLLOWING_specifier_qualifier_list_IN_type_name_994 = Set[1, 4, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 42, 43, 45, 46, 47, 48, 50, 52]
    TOKENS_FOLLOWING_abstract_declarator_IN_type_name_996 = Set[1]
    TOKENS_FOLLOWING_pointer_IN_abstract_declarator_1010 = Set[1, 4, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 42, 43, 45, 46, 47, 48, 50, 52]
    TOKENS_FOLLOWING_direct_abstract_declarator_IN_abstract_declarator_1012 = Set[1]
    TOKENS_FOLLOWING_direct_abstract_declarator_IN_abstract_declarator_1019 = Set[1]
    TOKENS_FOLLOWING_T__48_IN_direct_abstract_declarator_1035 = Set[4, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 42, 43, 45, 46, 47, 48, 50, 52]
    TOKENS_FOLLOWING_abstract_declarator_IN_direct_abstract_declarator_1037 = Set[49]
    TOKENS_FOLLOWING_T__49_IN_direct_abstract_declarator_1039 = Set[1, 4, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 42, 43, 45, 46, 47, 48, 50, 52]
    TOKENS_FOLLOWING_abstract_declarator_suffix_IN_direct_abstract_declarator_1043 = Set[1, 4, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 42, 43, 45, 46, 47, 48, 50, 52]
    TOKENS_FOLLOWING_abstract_declarator_suffix_IN_direct_abstract_declarator_1047 = Set[1, 4, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 42, 43, 45, 46, 47, 48, 50, 52]
    TOKENS_FOLLOWING_T__50_IN_abstract_declarator_suffix_1062 = Set[51]
    TOKENS_FOLLOWING_T__51_IN_abstract_declarator_suffix_1064 = Set[1]
    TOKENS_FOLLOWING_T__50_IN_abstract_declarator_suffix_1071 = Set[4, 5, 6, 7, 8, 9, 10, 48, 52, 54, 55, 58, 59, 60, 63, 64, 65]
    TOKENS_FOLLOWING_constant_expression_IN_abstract_declarator_suffix_1073 = Set[51]
    TOKENS_FOLLOWING_T__51_IN_abstract_declarator_suffix_1075 = Set[1]
    TOKENS_FOLLOWING_T__48_IN_abstract_declarator_suffix_1082 = Set[49]
    TOKENS_FOLLOWING_T__49_IN_abstract_declarator_suffix_1084 = Set[1]
    TOKENS_FOLLOWING_T__48_IN_abstract_declarator_suffix_1091 = Set[4, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 42, 43, 45, 46, 47]
    TOKENS_FOLLOWING_parameter_type_list_IN_abstract_declarator_suffix_1093 = Set[49]
    TOKENS_FOLLOWING_T__49_IN_abstract_declarator_suffix_1095 = Set[1]
    TOKENS_FOLLOWING_assignment_expression_IN_initializer_1110 = Set[1]
    TOKENS_FOLLOWING_T__40_IN_initializer_1116 = Set[4, 5, 6, 7, 8, 9, 10, 40, 48, 52, 54, 55, 58, 59, 60, 63, 64, 65]
    TOKENS_FOLLOWING_initializer_list_IN_initializer_1118 = Set[25, 41]
    TOKENS_FOLLOWING_T__25_IN_initializer_1120 = Set[41]
    TOKENS_FOLLOWING_T__41_IN_initializer_1123 = Set[1]
    TOKENS_FOLLOWING_initializer_IN_initializer_list_1136 = Set[1, 25]
    TOKENS_FOLLOWING_T__25_IN_initializer_list_1139 = Set[4, 5, 6, 7, 8, 9, 10, 40, 48, 52, 54, 55, 58, 59, 60, 63, 64, 65]
    TOKENS_FOLLOWING_initializer_IN_initializer_list_1141 = Set[1, 25]
    TOKENS_FOLLOWING_assignment_expression_IN_argument_expression_list_1160 = Set[1, 25]
    TOKENS_FOLLOWING_T__25_IN_argument_expression_list_1163 = Set[4, 5, 6, 7, 8, 9, 10, 48, 52, 54, 55, 58, 59, 60, 63, 64, 65]
    TOKENS_FOLLOWING_assignment_expression_IN_argument_expression_list_1165 = Set[1, 25]
    TOKENS_FOLLOWING_multiplicative_expression_IN_additive_expression_1181 = Set[1, 54, 55]
    TOKENS_FOLLOWING_T__54_IN_additive_expression_1185 = Set[4, 5, 6, 7, 8, 9, 10, 48, 52, 54, 55, 58, 59, 60, 63, 64, 65]
    TOKENS_FOLLOWING_multiplicative_expression_IN_additive_expression_1187 = Set[1, 54, 55]
    TOKENS_FOLLOWING_T__55_IN_additive_expression_1191 = Set[4, 5, 6, 7, 8, 9, 10, 48, 52, 54, 55, 58, 59, 60, 63, 64, 65]
    TOKENS_FOLLOWING_multiplicative_expression_IN_additive_expression_1193 = Set[1, 54, 55]
    TOKENS_FOLLOWING_cast_expression_IN_multiplicative_expression_1209 = Set[1, 52, 56, 57]
    TOKENS_FOLLOWING_T__52_IN_multiplicative_expression_1213 = Set[4, 5, 6, 7, 8, 9, 10, 48, 52, 54, 55, 58, 59, 60, 63, 64, 65]
    TOKENS_FOLLOWING_cast_expression_IN_multiplicative_expression_1215 = Set[1, 52, 56, 57]
    TOKENS_FOLLOWING_T__56_IN_multiplicative_expression_1219 = Set[4, 5, 6, 7, 8, 9, 10, 48, 52, 54, 55, 58, 59, 60, 63, 64, 65]
    TOKENS_FOLLOWING_cast_expression_IN_multiplicative_expression_1221 = Set[1, 52, 56, 57]
    TOKENS_FOLLOWING_T__57_IN_multiplicative_expression_1225 = Set[4, 5, 6, 7, 8, 9, 10, 48, 52, 54, 55, 58, 59, 60, 63, 64, 65]
    TOKENS_FOLLOWING_cast_expression_IN_multiplicative_expression_1227 = Set[1, 52, 56, 57]
    TOKENS_FOLLOWING_T__48_IN_cast_expression_1242 = Set[4, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 42, 43, 45, 46, 47]
    TOKENS_FOLLOWING_type_name_IN_cast_expression_1244 = Set[49]
    TOKENS_FOLLOWING_T__49_IN_cast_expression_1246 = Set[4, 5, 6, 7, 8, 9, 10, 48, 52, 54, 55, 58, 59, 60, 63, 64, 65]
    TOKENS_FOLLOWING_cast_expression_IN_cast_expression_1248 = Set[1]
    TOKENS_FOLLOWING_unary_expression_IN_cast_expression_1254 = Set[1]
    TOKENS_FOLLOWING_postfix_expression_IN_unary_expression_1267 = Set[1]
    TOKENS_FOLLOWING_T__58_IN_unary_expression_1273 = Set[4, 5, 6, 7, 8, 9, 10, 48, 52, 54, 55, 58, 59, 60, 63, 64, 65]
    TOKENS_FOLLOWING_unary_expression_IN_unary_expression_1275 = Set[1]
    TOKENS_FOLLOWING_T__59_IN_unary_expression_1281 = Set[4, 5, 6, 7, 8, 9, 10, 48, 52, 54, 55, 58, 59, 60, 63, 64, 65]
    TOKENS_FOLLOWING_unary_expression_IN_unary_expression_1283 = Set[1]
    TOKENS_FOLLOWING_unary_operator_IN_unary_expression_1289 = Set[4, 5, 6, 7, 8, 9, 10, 48, 52, 54, 55, 58, 59, 60, 63, 64, 65]
    TOKENS_FOLLOWING_cast_expression_IN_unary_expression_1291 = Set[1]
    TOKENS_FOLLOWING_T__60_IN_unary_expression_1297 = Set[4, 5, 6, 7, 8, 9, 10, 48, 52, 54, 55, 58, 59, 60, 63, 64, 65]
    TOKENS_FOLLOWING_unary_expression_IN_unary_expression_1299 = Set[1]
    TOKENS_FOLLOWING_T__60_IN_unary_expression_1305 = Set[48]
    TOKENS_FOLLOWING_T__48_IN_unary_expression_1307 = Set[4, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 42, 43, 45, 46, 47]
    TOKENS_FOLLOWING_type_name_IN_unary_expression_1309 = Set[49]
    TOKENS_FOLLOWING_T__49_IN_unary_expression_1311 = Set[1]
    TOKENS_FOLLOWING_primary_expression_IN_postfix_expression_1326 = Set[1, 48, 50, 52, 58, 59, 61, 62]
    TOKENS_FOLLOWING_T__50_IN_postfix_expression_1340 = Set[4, 5, 6, 7, 8, 9, 10, 48, 52, 54, 55, 58, 59, 60, 63, 64, 65]
    TOKENS_FOLLOWING_expression_IN_postfix_expression_1342 = Set[51]
    TOKENS_FOLLOWING_T__51_IN_postfix_expression_1344 = Set[1, 48, 50, 52, 58, 59, 61, 62]
    TOKENS_FOLLOWING_T__48_IN_postfix_expression_1358 = Set[49]
    TOKENS_FOLLOWING_T__49_IN_postfix_expression_1360 = Set[1, 48, 50, 52, 58, 59, 61, 62]
    TOKENS_FOLLOWING_T__48_IN_postfix_expression_1374 = Set[4, 5, 6, 7, 8, 9, 10, 48, 52, 54, 55, 58, 59, 60, 63, 64, 65]
    TOKENS_FOLLOWING_argument_expression_list_IN_postfix_expression_1376 = Set[49]
    TOKENS_FOLLOWING_T__49_IN_postfix_expression_1378 = Set[1, 48, 50, 52, 58, 59, 61, 62]
    TOKENS_FOLLOWING_T__61_IN_postfix_expression_1392 = Set[4]
    TOKENS_FOLLOWING_IDENTIFIER_IN_postfix_expression_1394 = Set[1, 48, 50, 52, 58, 59, 61, 62]
    TOKENS_FOLLOWING_T__52_IN_postfix_expression_1408 = Set[4]
    TOKENS_FOLLOWING_IDENTIFIER_IN_postfix_expression_1410 = Set[1, 48, 50, 52, 58, 59, 61, 62]
    TOKENS_FOLLOWING_T__62_IN_postfix_expression_1424 = Set[4]
    TOKENS_FOLLOWING_IDENTIFIER_IN_postfix_expression_1426 = Set[1, 48, 50, 52, 58, 59, 61, 62]
    TOKENS_FOLLOWING_T__58_IN_postfix_expression_1440 = Set[1, 48, 50, 52, 58, 59, 61, 62]
    TOKENS_FOLLOWING_T__59_IN_postfix_expression_1454 = Set[1, 48, 50, 52, 58, 59, 61, 62]
    TOKENS_FOLLOWING_set_IN_unary_operator_0 = Set[1]
    TOKENS_FOLLOWING_IDENTIFIER_IN_primary_expression_1521 = Set[1]
    TOKENS_FOLLOWING_constant_IN_primary_expression_1527 = Set[1]
    TOKENS_FOLLOWING_T__48_IN_primary_expression_1533 = Set[4, 5, 6, 7, 8, 9, 10, 48, 52, 54, 55, 58, 59, 60, 63, 64, 65]
    TOKENS_FOLLOWING_expression_IN_primary_expression_1535 = Set[49]
    TOKENS_FOLLOWING_T__49_IN_primary_expression_1537 = Set[1]
    TOKENS_FOLLOWING_set_IN_constant_0 = Set[1]
    TOKENS_FOLLOWING_assignment_expression_IN_expression_1601 = Set[1, 25]
    TOKENS_FOLLOWING_T__25_IN_expression_1604 = Set[4, 5, 6, 7, 8, 9, 10, 48, 52, 54, 55, 58, 59, 60, 63, 64, 65]
    TOKENS_FOLLOWING_assignment_expression_IN_expression_1606 = Set[1, 25]
    TOKENS_FOLLOWING_conditional_expression_IN_constant_expression_1621 = Set[1]
    TOKENS_FOLLOWING_lvalue_IN_assignment_expression_1634 = Set[26, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75]
    TOKENS_FOLLOWING_assignment_operator_IN_assignment_expression_1636 = Set[4, 5, 6, 7, 8, 9, 10, 48, 52, 54, 55, 58, 59, 60, 63, 64, 65]
    TOKENS_FOLLOWING_assignment_expression_IN_assignment_expression_1638 = Set[1]
    TOKENS_FOLLOWING_conditional_expression_IN_assignment_expression_1644 = Set[1]
    TOKENS_FOLLOWING_unary_expression_IN_lvalue_1660 = Set[1]
    TOKENS_FOLLOWING_set_IN_assignment_operator_0 = Set[1]
    TOKENS_FOLLOWING_logical_or_expression_IN_conditional_expression_1746 = Set[1, 76]
    TOKENS_FOLLOWING_T__76_IN_conditional_expression_1749 = Set[4, 5, 6, 7, 8, 9, 10, 48, 52, 54, 55, 58, 59, 60, 63, 64, 65]
    TOKENS_FOLLOWING_expression_IN_conditional_expression_1751 = Set[44]
    TOKENS_FOLLOWING_T__44_IN_conditional_expression_1753 = Set[4, 5, 6, 7, 8, 9, 10, 48, 52, 54, 55, 58, 59, 60, 63, 64, 65]
    TOKENS_FOLLOWING_conditional_expression_IN_conditional_expression_1755 = Set[1]
    TOKENS_FOLLOWING_logical_and_expression_IN_logical_or_expression_1770 = Set[1, 77]
    TOKENS_FOLLOWING_T__77_IN_logical_or_expression_1773 = Set[4, 5, 6, 7, 8, 9, 10, 48, 52, 54, 55, 58, 59, 60, 63, 64, 65]
    TOKENS_FOLLOWING_logical_and_expression_IN_logical_or_expression_1775 = Set[1, 77]
    TOKENS_FOLLOWING_inclusive_or_expression_IN_logical_and_expression_1790 = Set[1, 78]
    TOKENS_FOLLOWING_T__78_IN_logical_and_expression_1793 = Set[4, 5, 6, 7, 8, 9, 10, 48, 52, 54, 55, 58, 59, 60, 63, 64, 65]
    TOKENS_FOLLOWING_inclusive_or_expression_IN_logical_and_expression_1795 = Set[1, 78]
    TOKENS_FOLLOWING_exclusive_or_expression_IN_inclusive_or_expression_1810 = Set[1, 79]
    TOKENS_FOLLOWING_T__79_IN_inclusive_or_expression_1813 = Set[4, 5, 6, 7, 8, 9, 10, 48, 52, 54, 55, 58, 59, 60, 63, 64, 65]
    TOKENS_FOLLOWING_exclusive_or_expression_IN_inclusive_or_expression_1815 = Set[1, 79]
    TOKENS_FOLLOWING_and_expression_IN_exclusive_or_expression_1830 = Set[1, 80]
    TOKENS_FOLLOWING_T__80_IN_exclusive_or_expression_1833 = Set[4, 5, 6, 7, 8, 9, 10, 48, 52, 54, 55, 58, 59, 60, 63, 64, 65]
    TOKENS_FOLLOWING_and_expression_IN_exclusive_or_expression_1835 = Set[1, 80]
    TOKENS_FOLLOWING_equality_expression_IN_and_expression_1850 = Set[1, 63]
    TOKENS_FOLLOWING_T__63_IN_and_expression_1853 = Set[4, 5, 6, 7, 8, 9, 10, 48, 52, 54, 55, 58, 59, 60, 63, 64, 65]
    TOKENS_FOLLOWING_equality_expression_IN_and_expression_1855 = Set[1, 63]
    TOKENS_FOLLOWING_relational_expression_IN_equality_expression_1869 = Set[1, 81, 82]
    TOKENS_FOLLOWING_set_IN_equality_expression_1872 = Set[4, 5, 6, 7, 8, 9, 10, 48, 52, 54, 55, 58, 59, 60, 63, 64, 65]
    TOKENS_FOLLOWING_relational_expression_IN_equality_expression_1878 = Set[1, 81, 82]
    TOKENS_FOLLOWING_shift_expression_IN_relational_expression_1893 = Set[1, 83, 84, 85, 86]
    TOKENS_FOLLOWING_set_IN_relational_expression_1896 = Set[4, 5, 6, 7, 8, 9, 10, 48, 52, 54, 55, 58, 59, 60, 63, 64, 65]
    TOKENS_FOLLOWING_shift_expression_IN_relational_expression_1906 = Set[1, 83, 84, 85, 86]
    TOKENS_FOLLOWING_additive_expression_IN_shift_expression_1921 = Set[1, 87, 88]
    TOKENS_FOLLOWING_set_IN_shift_expression_1924 = Set[4, 5, 6, 7, 8, 9, 10, 48, 52, 54, 55, 58, 59, 60, 63, 64, 65]
    TOKENS_FOLLOWING_additive_expression_IN_shift_expression_1930 = Set[1, 87, 88]
    TOKENS_FOLLOWING_labeled_statement_IN_statement_1947 = Set[1]
    TOKENS_FOLLOWING_compound_statement_IN_statement_1953 = Set[1]
    TOKENS_FOLLOWING_expression_statement_IN_statement_1959 = Set[1]
    TOKENS_FOLLOWING_selection_statement_IN_statement_1965 = Set[1]
    TOKENS_FOLLOWING_iteration_statement_IN_statement_1971 = Set[1]
    TOKENS_FOLLOWING_jump_statement_IN_statement_1977 = Set[1]
    TOKENS_FOLLOWING_IDENTIFIER_IN_labeled_statement_1990 = Set[44]
    TOKENS_FOLLOWING_T__44_IN_labeled_statement_1992 = Set[4, 5, 6, 7, 8, 9, 10, 24, 40, 48, 52, 54, 55, 58, 59, 60, 63, 64, 65, 89, 90, 91, 93, 94, 95, 96, 97, 98, 99, 100]
    TOKENS_FOLLOWING_statement_IN_labeled_statement_1994 = Set[1]
    TOKENS_FOLLOWING_T__89_IN_labeled_statement_2000 = Set[4, 5, 6, 7, 8, 9, 10, 48, 52, 54, 55, 58, 59, 60, 63, 64, 65]
    TOKENS_FOLLOWING_constant_expression_IN_labeled_statement_2002 = Set[44]
    TOKENS_FOLLOWING_T__44_IN_labeled_statement_2004 = Set[4, 5, 6, 7, 8, 9, 10, 24, 40, 48, 52, 54, 55, 58, 59, 60, 63, 64, 65, 89, 90, 91, 93, 94, 95, 96, 97, 98, 99, 100]
    TOKENS_FOLLOWING_statement_IN_labeled_statement_2006 = Set[1]
    TOKENS_FOLLOWING_T__90_IN_labeled_statement_2012 = Set[44]
    TOKENS_FOLLOWING_T__44_IN_labeled_statement_2014 = Set[4, 5, 6, 7, 8, 9, 10, 24, 40, 48, 52, 54, 55, 58, 59, 60, 63, 64, 65, 89, 90, 91, 93, 94, 95, 96, 97, 98, 99, 100]
    TOKENS_FOLLOWING_statement_IN_labeled_statement_2016 = Set[1]
    TOKENS_FOLLOWING_T__40_IN_compound_statement_2040 = Set[4, 5, 6, 7, 8, 9, 10, 23, 24, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 45, 46, 47, 48, 52, 54, 55, 58, 59, 60, 63, 64, 65, 89, 90, 91, 93, 94, 95, 96, 97, 98, 99, 100]
    TOKENS_FOLLOWING_declaration_IN_compound_statement_2042 = Set[4, 5, 6, 7, 8, 9, 10, 23, 24, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 45, 46, 47, 48, 52, 54, 55, 58, 59, 60, 63, 64, 65, 89, 90, 91, 93, 94, 95, 96, 97, 98, 99, 100]
    TOKENS_FOLLOWING_statement_list_IN_compound_statement_2045 = Set[41]
    TOKENS_FOLLOWING_T__41_IN_compound_statement_2048 = Set[1]
    TOKENS_FOLLOWING_statement_IN_statement_list_2061 = Set[1, 4, 5, 6, 7, 8, 9, 10, 24, 40, 48, 52, 54, 55, 58, 59, 60, 63, 64, 65, 89, 90, 91, 93, 94, 95, 96, 97, 98, 99, 100]
    TOKENS_FOLLOWING_T__24_IN_expression_statement_2075 = Set[1]
    TOKENS_FOLLOWING_expression_IN_expression_statement_2081 = Set[24]
    TOKENS_FOLLOWING_T__24_IN_expression_statement_2083 = Set[1]
    TOKENS_FOLLOWING_T__91_IN_selection_statement_2096 = Set[48]
    TOKENS_FOLLOWING_T__48_IN_selection_statement_2098 = Set[4, 5, 6, 7, 8, 9, 10, 48, 52, 54, 55, 58, 59, 60, 63, 64, 65]
    TOKENS_FOLLOWING_expression_IN_selection_statement_2100 = Set[49]
    TOKENS_FOLLOWING_T__49_IN_selection_statement_2102 = Set[4, 5, 6, 7, 8, 9, 10, 24, 40, 48, 52, 54, 55, 58, 59, 60, 63, 64, 65, 89, 90, 91, 93, 94, 95, 96, 97, 98, 99, 100]
    TOKENS_FOLLOWING_statement_IN_selection_statement_2104 = Set[1, 92]
    TOKENS_FOLLOWING_T__92_IN_selection_statement_2119 = Set[4, 5, 6, 7, 8, 9, 10, 24, 40, 48, 52, 54, 55, 58, 59, 60, 63, 64, 65, 89, 90, 91, 93, 94, 95, 96, 97, 98, 99, 100]
    TOKENS_FOLLOWING_statement_IN_selection_statement_2121 = Set[1]
    TOKENS_FOLLOWING_T__93_IN_selection_statement_2129 = Set[48]
    TOKENS_FOLLOWING_T__48_IN_selection_statement_2131 = Set[4, 5, 6, 7, 8, 9, 10, 48, 52, 54, 55, 58, 59, 60, 63, 64, 65]
    TOKENS_FOLLOWING_expression_IN_selection_statement_2133 = Set[49]
    TOKENS_FOLLOWING_T__49_IN_selection_statement_2135 = Set[4, 5, 6, 7, 8, 9, 10, 24, 40, 48, 52, 54, 55, 58, 59, 60, 63, 64, 65, 89, 90, 91, 93, 94, 95, 96, 97, 98, 99, 100]
    TOKENS_FOLLOWING_statement_IN_selection_statement_2137 = Set[1]
    TOKENS_FOLLOWING_T__94_IN_iteration_statement_2150 = Set[48]
    TOKENS_FOLLOWING_T__48_IN_iteration_statement_2152 = Set[4, 5, 6, 7, 8, 9, 10, 48, 52, 54, 55, 58, 59, 60, 63, 64, 65]
    TOKENS_FOLLOWING_expression_IN_iteration_statement_2154 = Set[49]
    TOKENS_FOLLOWING_T__49_IN_iteration_statement_2156 = Set[4, 5, 6, 7, 8, 9, 10, 24, 40, 48, 52, 54, 55, 58, 59, 60, 63, 64, 65, 89, 90, 91, 93, 94, 95, 96, 97, 98, 99, 100]
    TOKENS_FOLLOWING_statement_IN_iteration_statement_2158 = Set[1]
    TOKENS_FOLLOWING_T__95_IN_iteration_statement_2164 = Set[4, 5, 6, 7, 8, 9, 10, 24, 40, 48, 52, 54, 55, 58, 59, 60, 63, 64, 65, 89, 90, 91, 93, 94, 95, 96, 97, 98, 99, 100]
    TOKENS_FOLLOWING_statement_IN_iteration_statement_2166 = Set[94]
    TOKENS_FOLLOWING_T__94_IN_iteration_statement_2168 = Set[48]
    TOKENS_FOLLOWING_T__48_IN_iteration_statement_2170 = Set[4, 5, 6, 7, 8, 9, 10, 48, 52, 54, 55, 58, 59, 60, 63, 64, 65]
    TOKENS_FOLLOWING_expression_IN_iteration_statement_2172 = Set[49]
    TOKENS_FOLLOWING_T__49_IN_iteration_statement_2174 = Set[24]
    TOKENS_FOLLOWING_T__24_IN_iteration_statement_2176 = Set[1]
    TOKENS_FOLLOWING_T__96_IN_iteration_statement_2182 = Set[48]
    TOKENS_FOLLOWING_T__48_IN_iteration_statement_2184 = Set[4, 5, 6, 7, 8, 9, 10, 24, 48, 52, 54, 55, 58, 59, 60, 63, 64, 65]
    TOKENS_FOLLOWING_expression_statement_IN_iteration_statement_2186 = Set[4, 5, 6, 7, 8, 9, 10, 24, 48, 52, 54, 55, 58, 59, 60, 63, 64, 65]
    TOKENS_FOLLOWING_expression_statement_IN_iteration_statement_2188 = Set[4, 5, 6, 7, 8, 9, 10, 48, 49, 52, 54, 55, 58, 59, 60, 63, 64, 65]
    TOKENS_FOLLOWING_expression_IN_iteration_statement_2190 = Set[49]
    TOKENS_FOLLOWING_T__49_IN_iteration_statement_2193 = Set[4, 5, 6, 7, 8, 9, 10, 24, 40, 48, 52, 54, 55, 58, 59, 60, 63, 64, 65, 89, 90, 91, 93, 94, 95, 96, 97, 98, 99, 100]
    TOKENS_FOLLOWING_statement_IN_iteration_statement_2195 = Set[1]
    TOKENS_FOLLOWING_T__97_IN_jump_statement_2208 = Set[4]
    TOKENS_FOLLOWING_IDENTIFIER_IN_jump_statement_2210 = Set[24]
    TOKENS_FOLLOWING_T__24_IN_jump_statement_2212 = Set[1]
    TOKENS_FOLLOWING_T__98_IN_jump_statement_2218 = Set[24]
    TOKENS_FOLLOWING_T__24_IN_jump_statement_2220 = Set[1]
    TOKENS_FOLLOWING_T__99_IN_jump_statement_2226 = Set[24]
    TOKENS_FOLLOWING_T__24_IN_jump_statement_2228 = Set[1]
    TOKENS_FOLLOWING_T__100_IN_jump_statement_2234 = Set[24]
    TOKENS_FOLLOWING_T__24_IN_jump_statement_2236 = Set[1]
    TOKENS_FOLLOWING_T__100_IN_jump_statement_2242 = Set[4, 5, 6, 7, 8, 9, 10, 48, 52, 54, 55, 58, 59, 60, 63, 64, 65]
    TOKENS_FOLLOWING_expression_IN_jump_statement_2244 = Set[24]
    TOKENS_FOLLOWING_T__24_IN_jump_statement_2246 = Set[1]
    TOKENS_FOLLOWING_declaration_specifiers_IN_synpred2_C_118 = Set[1]
    TOKENS_FOLLOWING_declaration_specifiers_IN_synpred4_C_118 = Set[4, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 42, 43, 45, 46, 47, 48, 52]
    TOKENS_FOLLOWING_declarator_IN_synpred4_C_121 = Set[4, 23, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 42, 43, 45, 46, 47, 48, 52]
    TOKENS_FOLLOWING_declaration_IN_synpred4_C_123 = Set[4, 23, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 42, 43, 45, 46, 47, 48, 52]
    TOKENS_FOLLOWING_T__40_IN_synpred4_C_126 = Set[1]
    TOKENS_FOLLOWING_declaration_specifiers_IN_synpred5_C_162 = Set[1]
    TOKENS_FOLLOWING_declaration_specifiers_IN_synpred8_C_226 = Set[1]
    TOKENS_FOLLOWING_type_specifier_IN_synpred12_C_276 = Set[1]
    TOKENS_FOLLOWING_type_specifier_IN_synpred35_C_578 = Set[1]
    TOKENS_FOLLOWING_pointer_IN_synpred45_C_749 = Set[4, 48, 52]
    TOKENS_FOLLOWING_direct_declarator_IN_synpred45_C_752 = Set[1]
    TOKENS_FOLLOWING_declarator_suffix_IN_synpred47_C_804 = Set[1]
    TOKENS_FOLLOWING_T__48_IN_synpred50_C_842 = Set[4, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 42, 43, 45, 46, 47]
    TOKENS_FOLLOWING_parameter_type_list_IN_synpred50_C_844 = Set[49]
    TOKENS_FOLLOWING_T__49_IN_synpred50_C_846 = Set[1]
    TOKENS_FOLLOWING_T__48_IN_synpred51_C_854 = Set[4]
    TOKENS_FOLLOWING_identifier_list_IN_synpred51_C_856 = Set[49]
    TOKENS_FOLLOWING_T__49_IN_synpred51_C_858 = Set[1]
    TOKENS_FOLLOWING_type_qualifier_IN_synpred52_C_883 = Set[1]
    TOKENS_FOLLOWING_pointer_IN_synpred53_C_886 = Set[1]
    TOKENS_FOLLOWING_T__52_IN_synpred54_C_881 = Set[4, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 42, 43, 45, 46, 47]
    TOKENS_FOLLOWING_type_qualifier_IN_synpred54_C_883 = Set[1, 4, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 42, 43, 45, 46, 47, 52]
    TOKENS_FOLLOWING_pointer_IN_synpred54_C_886 = Set[1]
    TOKENS_FOLLOWING_T__52_IN_synpred55_C_893 = Set[52]
    TOKENS_FOLLOWING_pointer_IN_synpred55_C_895 = Set[1]
    TOKENS_FOLLOWING_declarator_IN_synpred58_C_957 = Set[1]
    TOKENS_FOLLOWING_abstract_declarator_IN_synpred59_C_959 = Set[1]
    TOKENS_FOLLOWING_direct_abstract_declarator_IN_synpred62_C_1012 = Set[1]
    TOKENS_FOLLOWING_abstract_declarator_suffix_IN_synpred65_C_1047 = Set[1]
    TOKENS_FOLLOWING_T__48_IN_synpred78_C_1242 = Set[4, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 42, 43, 45, 46, 47]
    TOKENS_FOLLOWING_type_name_IN_synpred78_C_1244 = Set[49]
    TOKENS_FOLLOWING_T__49_IN_synpred78_C_1246 = Set[4, 5, 6, 7, 8, 9, 10, 48, 52, 54, 55, 58, 59, 60, 63, 64, 65]
    TOKENS_FOLLOWING_cast_expression_IN_synpred78_C_1248 = Set[1]
    TOKENS_FOLLOWING_T__60_IN_synpred83_C_1297 = Set[4, 5, 6, 7, 8, 9, 10, 48, 52, 54, 55, 58, 59, 60, 63, 64, 65]
    TOKENS_FOLLOWING_unary_expression_IN_synpred83_C_1299 = Set[1]
    TOKENS_FOLLOWING_T__52_IN_synpred88_C_1408 = Set[4]
    TOKENS_FOLLOWING_IDENTIFIER_IN_synpred88_C_1410 = Set[1]
    TOKENS_FOLLOWING_lvalue_IN_synpred105_C_1634 = Set[26, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75]
    TOKENS_FOLLOWING_assignment_operator_IN_synpred105_C_1636 = Set[4, 5, 6, 7, 8, 9, 10, 48, 52, 54, 55, 58, 59, 60, 63, 64, 65]
    TOKENS_FOLLOWING_assignment_expression_IN_synpred105_C_1638 = Set[1]
    TOKENS_FOLLOWING_declaration_IN_synpred137_C_2042 = Set[1]

  end # class Parser < ANTLR3::Parser

  at_exit { Parser.main(ARGV) } if __FILE__ == $0
end

