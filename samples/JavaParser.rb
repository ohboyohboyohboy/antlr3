#!/usr/bin/env ruby
#
# samples/Java.g
# 
# Generated using ANTLR version: 3.2.1-SNAPSHOT Dec 18, 2009 04:29:28
# Ruby runtime library version: 1.6.3
# Input grammar file: samples/Java.g
# Generated at: 2010-03-25 10:36:16
# 

# ~~~> start load path setup
this_directory = File.expand_path( File.dirname( __FILE__ ) )
$:.unshift( this_directory ) unless $:.include?( this_directory )

antlr_load_failed = proc do
  load_path = $LOAD_PATH.map { |dir| '  - ' << dir }.join( $/ )
  raise LoadError, <<-END.strip!
  
Failed to load the ANTLR3 runtime library (version 1.6.3):

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
    Gem.activate( 'antlr3', '~> 1.6.3' )
  rescue Gem::LoadError
    antlr_load_failed.call
  end
  
  require 'antlr3'
  
end
# <~~~ end load path setup

# - - - - - - begin action @all::header - - - - - -
# samples/Java.g

 module Q 
# - - - - - - end action @all::header - - - - - - -


module Java
  # TokenData defines all of the token type integer values
  # as constants, which will be included in all 
  # ANTLR-generated recognizers.
  const_defined?(:TokenData) or TokenData = ANTLR3::TokenScheme.new

  module TokenData

    # define the token constants
    define_tokens( :T__29 => 29, :T__28 => 28, :T__27 => 27, :T__26 => 26, 
                   :FloatTypeSuffix => 16, :T__25 => 25, :OctalLiteral => 10, 
                   :EOF => -1, :Identifier => 4, :T__93 => 93, :T__94 => 94, 
                   :T__91 => 91, :T__92 => 92, :T__90 => 90, :COMMENT => 23, 
                   :T__99 => 99, :T__98 => 98, :T__97 => 97, :T__96 => 96, 
                   :T__95 => 95, :T__80 => 80, :T__81 => 81, :T__82 => 82, 
                   :T__83 => 83, :LINE_COMMENT => 24, :IntegerTypeSuffix => 14, 
                   :T__85 => 85, :T__84 => 84, :ASSERT => 12, :T__87 => 87, 
                   :T__86 => 86, :T__89 => 89, :T__88 => 88, :WS => 22, 
                   :T__71 => 71, :T__72 => 72, :T__70 => 70, :FloatingPointLiteral => 6, 
                   :JavaIDDigit => 21, :T__76 => 76, :T__75 => 75, :T__74 => 74, 
                   :Letter => 20, :EscapeSequence => 17, :T__73 => 73, :T__79 => 79, 
                   :T__78 => 78, :T__77 => 77, :T__68 => 68, :T__69 => 69, 
                   :T__66 => 66, :T__67 => 67, :T__64 => 64, :T__65 => 65, 
                   :T__62 => 62, :T__63 => 63, :CharacterLiteral => 7, :Exponent => 15, 
                   :T__61 => 61, :T__60 => 60, :HexDigit => 13, :T__55 => 55, 
                   :T__56 => 56, :T__57 => 57, :T__58 => 58, :T__51 => 51, 
                   :T__52 => 52, :T__53 => 53, :T__54 => 54, :T__107 => 107, 
                   :T__108 => 108, :T__109 => 109, :T__59 => 59, :T__103 => 103, 
                   :T__104 => 104, :T__105 => 105, :T__106 => 106, :T__111 => 111, 
                   :T__110 => 110, :T__113 => 113, :T__112 => 112, :T__50 => 50, 
                   :T__42 => 42, :HexLiteral => 9, :T__43 => 43, :T__40 => 40, 
                   :T__41 => 41, :T__46 => 46, :T__47 => 47, :T__44 => 44, 
                   :T__45 => 45, :T__48 => 48, :T__49 => 49, :T__102 => 102, 
                   :T__101 => 101, :T__100 => 100, :DecimalLiteral => 11, 
                   :StringLiteral => 8, :T__30 => 30, :T__31 => 31, :T__32 => 32, 
                   :T__33 => 33, :ENUM => 5, :T__34 => 34, :T__35 => 35, 
                   :T__36 => 36, :T__37 => 37, :T__38 => 38, :T__39 => 39, 
                   :UnicodeEscape => 18, :OctalEscape => 19 )

    # register the proper human-readable name or literal value
    # for each token type
    #
    # this is necessary because anonymous tokens, which are
    # created from literal values in the grammar, do not
    # have descriptive names
    register_names( "Identifier", "ENUM", "FloatingPointLiteral", "CharacterLiteral", 
                    "StringLiteral", "HexLiteral", "OctalLiteral", "DecimalLiteral", 
                    "ASSERT", "HexDigit", "IntegerTypeSuffix", "Exponent", 
                    "FloatTypeSuffix", "EscapeSequence", "UnicodeEscape", 
                    "OctalEscape", "Letter", "JavaIDDigit", "WS", "COMMENT", 
                    "LINE_COMMENT", "'package'", "';'", "'import'", "'static'", 
                    "'.'", "'*'", "'public'", "'protected'", "'private'", 
                    "'abstract'", "'final'", "'strictfp'", "'class'", "'extends'", 
                    "'implements'", "'<'", "','", "'>'", "'&'", "'{'", "'}'", 
                    "'interface'", "'void'", "'['", "']'", "'throws'", "'='", 
                    "'native'", "'synchronized'", "'transient'", "'volatile'", 
                    "'boolean'", "'char'", "'byte'", "'short'", "'int'", 
                    "'long'", "'float'", "'double'", "'?'", "'super'", "'('", 
                    "')'", "'...'", "'this'", "'null'", "'true'", "'false'", 
                    "'@'", "'default'", "':'", "'if'", "'else'", "'for'", 
                    "'while'", "'do'", "'try'", "'finally'", "'switch'", 
                    "'return'", "'throw'", "'break'", "'continue'", "'catch'", 
                    "'case'", "'+='", "'-='", "'*='", "'/='", "'&='", "'|='", 
                    "'^='", "'%='", "'||'", "'&&'", "'|'", "'^'", "'=='", 
                    "'!='", "'instanceof'", "'+'", "'-'", "'/'", "'%'", 
                    "'++'", "'--'", "'~'", "'!'", "'new'" )
    
  end


  class Parser < ANTLR3::Parser
    @grammar_home = Java

    RULE_METHODS = [ :compilation_unit, :package_declaration, :import_declaration, 
                     :type_declaration, :class_or_interface_declaration, 
                     :class_or_interface_modifiers, :class_or_interface_modifier, 
                     :modifiers, :class_declaration, :normal_class_declaration, 
                     :type_parameters, :type_parameter, :type_bound, :enum_declaration, 
                     :enum_body, :enum_constants, :enum_constant, :enum_body_declarations, 
                     :interface_declaration, :normal_interface_declaration, 
                     :type_list, :class_body, :interface_body, :class_body_declaration, 
                     :member_decl, :member_declaration, :generic_method_or_constructor_decl, 
                     :generic_method_or_constructor_rest, :method_declaration, 
                     :field_declaration, :interface_body_declaration, :interface_member_decl, 
                     :interface_method_or_field_decl, :interface_method_or_field_rest, 
                     :method_declarator_rest, :void_method_declarator_rest, 
                     :interface_method_declarator_rest, :interface_generic_method_decl, 
                     :void_interface_method_declarator_rest, :constructor_declarator_rest, 
                     :constant_declarator, :variable_declarators, :variable_declarator, 
                     :constant_declarators_rest, :constant_declarator_rest, 
                     :variable_declarator_id, :variable_initializer, :array_initializer, 
                     :modifier, :package_or_type_name, :enum_constant_name, 
                     :type_name, :type, :class_or_interface_type, :primitive_type, 
                     :variable_modifier, :type_arguments, :type_argument, 
                     :qualified_name_list, :formal_parameters, :formal_parameter_decls, 
                     :formal_parameter_decls_rest, :method_body, :constructor_body, 
                     :explicit_constructor_invocation, :qualified_name, 
                     :literal, :integer_literal, :boolean_literal, :annotations, 
                     :annotation, :annotation_name, :element_value_pairs, 
                     :element_value_pair, :element_value, :element_value_array_initializer, 
                     :annotation_type_declaration, :annotation_type_body, 
                     :annotation_type_element_declaration, :annotation_type_element_rest, 
                     :annotation_method_or_constant_rest, :annotation_method_rest, 
                     :annotation_constant_rest, :default_value, :block, 
                     :block_statement, :local_variable_declaration_statement, 
                     :local_variable_declaration, :variable_modifiers, :statement, 
                     :catches, :catch_clause, :formal_parameter, :switch_block_statement_groups, 
                     :switch_block_statement_group, :switch_label, :for_control, 
                     :for_init, :enhanced_for_control, :for_update, :par_expression, 
                     :expression_list, :statement_expression, :constant_expression, 
                     :expression, :assignment_operator, :conditional_expression, 
                     :conditional_or_expression, :conditional_and_expression, 
                     :inclusive_or_expression, :exclusive_or_expression, 
                     :and_expression, :equality_expression, :instance_of_expression, 
                     :relational_expression, :relational_op, :shift_expression, 
                     :shift_op, :additive_expression, :multiplicative_expression, 
                     :unary_expression, :unary_expression_not_plus_minus, 
                     :cast_expression, :primary, :identifier_suffix, :creator, 
                     :created_name, :inner_creator, :array_creator_rest, 
                     :class_creator_rest, :explicit_generic_invocation, 
                     :non_wildcard_type_arguments, :selector, :super_suffix, 
                     :arguments, :synpred5_Java, :synpred113_Java, :synpred117_Java, 
                     :synpred128_Java, :synpred151_Java, :synpred152_Java, 
                     :synpred157_Java, :synpred162_Java, :synpred163_Java, 
                     :synpred178_Java, :synpred180_Java, :synpred181_Java, 
                     :synpred182_Java, :synpred186_Java, :synpred188_Java, 
                     :synpred198_Java, :synpred199_Java, :synpred200_Java, 
                     :synpred211_Java, :synpred212_Java, :synpred215_Java, 
                     :synpred216_Java, :synpred217_Java, :synpred229_Java, 
                     :synpred233_Java, :synpred234_Java, :synpred236_Java, 
                     :synpred237_Java, :synpred242_Java, :synpred243_Java, 
                     :synpred249_Java, :synpred262_Java ].freeze


    include TokenData

    generated_using( "samples/Java.g", "3.2.1-SNAPSHOT Dec 18, 2009 04:29:28", "1.6.3" )

    def initialize( input, options = {} )
      super( input, options )
      @state.rule_memory = {}


    end
    # - - - - - - - - - - - - Rules - - - - - - - - - - - - -

    # 
    # parser rule compilation_unit
    # 
    # (in samples/Java.g)
    # 184:1: compilation_unit : ( annotations ( package_declaration ( import_declaration )* ( type_declaration )* | class_or_interface_declaration ( type_declaration )* ) | ( package_declaration )? ( import_declaration )* ( type_declaration )* );
    # 
    def compilation_unit
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 1)
      compilation_unit_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 185:5: ( annotations ( package_declaration ( import_declaration )* ( type_declaration )* | class_or_interface_declaration ( type_declaration )* ) | ( package_declaration )? ( import_declaration )* ( type_declaration )* )
        alt_8 = 2
        alt_8 = @dfa8.predict(@input)
        case alt_8
        when 1
          # at line 185:9: annotations ( package_declaration ( import_declaration )* ( type_declaration )* | class_or_interface_declaration ( type_declaration )* )
          @state.following.push(TOKENS_FOLLOWING_annotations_IN_compilation_unit_75)
          annotations
          @state.following.pop
          # at line 186:9: ( package_declaration ( import_declaration )* ( type_declaration )* | class_or_interface_declaration ( type_declaration )* )
          alt_4 = 2
          look_4_0 = @input.peek(1)

          if (look_4_0 == T__25) 
            alt_4 = 1
          elsif (look_4_0 == ENUM || look_4_0 == T__28 || look_4_0.between?(T__31, T__37) || look_4_0 == T__46 || look_4_0 == T__73) 
            alt_4 = 2
          else
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
          nvae = NoViableAlternative("", 4, 0)
            raise nvae
          end
          case alt_4
          when 1
            # at line 186:13: package_declaration ( import_declaration )* ( type_declaration )*
            @state.following.push(TOKENS_FOLLOWING_package_declaration_IN_compilation_unit_89)
            package_declaration
            @state.following.pop
            # at line 186:33: ( import_declaration )*
            while true # decision 1
              alt_1 = 2
              look_1_0 = @input.peek(1)

              if (look_1_0 == T__27) 
                alt_1 = 1

              end
              case alt_1
              when 1
                # at line 0:0: import_declaration
                @state.following.push(TOKENS_FOLLOWING_import_declaration_IN_compilation_unit_91)
                import_declaration
                @state.following.pop

              else
                break # out of loop for decision 1
              end
            end # loop for decision 1
            # at line 186:53: ( type_declaration )*
            while true # decision 2
              alt_2 = 2
              look_2_0 = @input.peek(1)

              if (look_2_0 == ENUM || look_2_0 == T__26 || look_2_0 == T__28 || look_2_0.between?(T__31, T__37) || look_2_0 == T__46 || look_2_0 == T__73) 
                alt_2 = 1

              end
              case alt_2
              when 1
                # at line 0:0: type_declaration
                @state.following.push(TOKENS_FOLLOWING_type_declaration_IN_compilation_unit_94)
                type_declaration
                @state.following.pop

              else
                break # out of loop for decision 2
              end
            end # loop for decision 2

          when 2
            # at line 187:13: class_or_interface_declaration ( type_declaration )*
            @state.following.push(TOKENS_FOLLOWING_class_or_interface_declaration_IN_compilation_unit_109)
            class_or_interface_declaration
            @state.following.pop
            # at line 187:44: ( type_declaration )*
            while true # decision 3
              alt_3 = 2
              look_3_0 = @input.peek(1)

              if (look_3_0 == ENUM || look_3_0 == T__26 || look_3_0 == T__28 || look_3_0.between?(T__31, T__37) || look_3_0 == T__46 || look_3_0 == T__73) 
                alt_3 = 1

              end
              case alt_3
              when 1
                # at line 0:0: type_declaration
                @state.following.push(TOKENS_FOLLOWING_type_declaration_IN_compilation_unit_111)
                type_declaration
                @state.following.pop

              else
                break # out of loop for decision 3
              end
            end # loop for decision 3

          end

        when 2
          # at line 189:9: ( package_declaration )? ( import_declaration )* ( type_declaration )*
          # at line 189:9: ( package_declaration )?
          alt_5 = 2
          look_5_0 = @input.peek(1)

          if (look_5_0 == T__25) 
            alt_5 = 1
          end
          case alt_5
          when 1
            # at line 0:0: package_declaration
            @state.following.push(TOKENS_FOLLOWING_package_declaration_IN_compilation_unit_132)
            package_declaration
            @state.following.pop

          end
          # at line 189:30: ( import_declaration )*
          while true # decision 6
            alt_6 = 2
            look_6_0 = @input.peek(1)

            if (look_6_0 == T__27) 
              alt_6 = 1

            end
            case alt_6
            when 1
              # at line 0:0: import_declaration
              @state.following.push(TOKENS_FOLLOWING_import_declaration_IN_compilation_unit_135)
              import_declaration
              @state.following.pop

            else
              break # out of loop for decision 6
            end
          end # loop for decision 6
          # at line 189:50: ( type_declaration )*
          while true # decision 7
            alt_7 = 2
            look_7_0 = @input.peek(1)

            if (look_7_0 == ENUM || look_7_0 == T__26 || look_7_0 == T__28 || look_7_0.between?(T__31, T__37) || look_7_0 == T__46 || look_7_0 == T__73) 
              alt_7 = 1

            end
            case alt_7
            when 1
              # at line 0:0: type_declaration
              @state.following.push(TOKENS_FOLLOWING_type_declaration_IN_compilation_unit_138)
              type_declaration
              @state.following.pop

            else
              break # out of loop for decision 7
            end
          end # loop for decision 7

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 1)
        memoize(__method__, compilation_unit_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule package_declaration
    # 
    # (in samples/Java.g)
    # 192:1: package_declaration : 'package' qualified_name ';' ;
    # 
    def package_declaration
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 2)
      package_declaration_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 193:9: 'package' qualified_name ';'
        match(T__25, TOKENS_FOLLOWING_T__25_IN_package_declaration_158)
        @state.following.push(TOKENS_FOLLOWING_qualified_name_IN_package_declaration_160)
        qualified_name
        @state.following.pop
        match(T__26, TOKENS_FOLLOWING_T__26_IN_package_declaration_162)

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 2)
        memoize(__method__, package_declaration_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule import_declaration
    # 
    # (in samples/Java.g)
    # 196:1: import_declaration : 'import' ( 'static' )? qualified_name ( '.' '*' )? ';' ;
    # 
    def import_declaration
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 3)
      import_declaration_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 197:9: 'import' ( 'static' )? qualified_name ( '.' '*' )? ';'
        match(T__27, TOKENS_FOLLOWING_T__27_IN_import_declaration_185)
        # at line 197:18: ( 'static' )?
        alt_9 = 2
        look_9_0 = @input.peek(1)

        if (look_9_0 == T__28) 
          alt_9 = 1
        end
        case alt_9
        when 1
          # at line 0:0: 'static'
          match(T__28, TOKENS_FOLLOWING_T__28_IN_import_declaration_187)

        end
        @state.following.push(TOKENS_FOLLOWING_qualified_name_IN_import_declaration_190)
        qualified_name
        @state.following.pop
        # at line 197:43: ( '.' '*' )?
        alt_10 = 2
        look_10_0 = @input.peek(1)

        if (look_10_0 == T__29) 
          alt_10 = 1
        end
        case alt_10
        when 1
          # at line 197:44: '.' '*'
          match(T__29, TOKENS_FOLLOWING_T__29_IN_import_declaration_193)
          match(T__30, TOKENS_FOLLOWING_T__30_IN_import_declaration_195)

        end
        match(T__26, TOKENS_FOLLOWING_T__26_IN_import_declaration_199)

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 3)
        memoize(__method__, import_declaration_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule type_declaration
    # 
    # (in samples/Java.g)
    # 200:1: type_declaration : ( class_or_interface_declaration | ';' );
    # 
    def type_declaration
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 4)
      type_declaration_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 201:5: ( class_or_interface_declaration | ';' )
        alt_11 = 2
        look_11_0 = @input.peek(1)

        if (look_11_0 == ENUM || look_11_0 == T__28 || look_11_0.between?(T__31, T__37) || look_11_0 == T__46 || look_11_0 == T__73) 
          alt_11 = 1
        elsif (look_11_0 == T__26) 
          alt_11 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 11, 0)
          raise nvae
        end
        case alt_11
        when 1
          # at line 201:9: class_or_interface_declaration
          @state.following.push(TOKENS_FOLLOWING_class_or_interface_declaration_IN_type_declaration_222)
          class_or_interface_declaration
          @state.following.pop

        when 2
          # at line 202:9: ';'
          match(T__26, TOKENS_FOLLOWING_T__26_IN_type_declaration_232)

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 4)
        memoize(__method__, type_declaration_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule class_or_interface_declaration
    # 
    # (in samples/Java.g)
    # 205:1: class_or_interface_declaration : class_or_interface_modifiers ( class_declaration | interface_declaration ) ;
    # 
    def class_or_interface_declaration
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 5)
      class_or_interface_declaration_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 206:9: class_or_interface_modifiers ( class_declaration | interface_declaration )
        @state.following.push(TOKENS_FOLLOWING_class_or_interface_modifiers_IN_class_or_interface_declaration_255)
        class_or_interface_modifiers
        @state.following.pop
        # at line 206:38: ( class_declaration | interface_declaration )
        alt_12 = 2
        look_12_0 = @input.peek(1)

        if (look_12_0 == ENUM || look_12_0 == T__37) 
          alt_12 = 1
        elsif (look_12_0 == T__46 || look_12_0 == T__73) 
          alt_12 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 12, 0)
          raise nvae
        end
        case alt_12
        when 1
          # at line 206:39: class_declaration
          @state.following.push(TOKENS_FOLLOWING_class_declaration_IN_class_or_interface_declaration_258)
          class_declaration
          @state.following.pop

        when 2
          # at line 206:59: interface_declaration
          @state.following.push(TOKENS_FOLLOWING_interface_declaration_IN_class_or_interface_declaration_262)
          interface_declaration
          @state.following.pop

        end

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 5)
        memoize(__method__, class_or_interface_declaration_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule class_or_interface_modifiers
    # 
    # (in samples/Java.g)
    # 209:1: class_or_interface_modifiers : ( class_or_interface_modifier )* ;
    # 
    def class_or_interface_modifiers
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 6)
      class_or_interface_modifiers_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 210:9: ( class_or_interface_modifier )*
        # at line 210:9: ( class_or_interface_modifier )*
        while true # decision 13
          alt_13 = 2
          look_13_0 = @input.peek(1)

          if (look_13_0 == T__73) 
            look_13_2 = @input.peek(2)

            if (look_13_2 == Identifier) 
              alt_13 = 1

            end
          elsif (look_13_0 == T__28 || look_13_0.between?(T__31, T__36)) 
            alt_13 = 1

          end
          case alt_13
          when 1
            # at line 0:0: class_or_interface_modifier
            @state.following.push(TOKENS_FOLLOWING_class_or_interface_modifier_IN_class_or_interface_modifiers_286)
            class_or_interface_modifier
            @state.following.pop

          else
            break # out of loop for decision 13
          end
        end # loop for decision 13

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 6)
        memoize(__method__, class_or_interface_modifiers_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule class_or_interface_modifier
    # 
    # (in samples/Java.g)
    # 213:1: class_or_interface_modifier : ( annotation | 'public' | 'protected' | 'private' | 'abstract' | 'static' | 'final' | 'strictfp' );
    # 
    def class_or_interface_modifier
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 7)
      class_or_interface_modifier_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 214:5: ( annotation | 'public' | 'protected' | 'private' | 'abstract' | 'static' | 'final' | 'strictfp' )
        alt_14 = 8
        case look_14 = @input.peek(1)
        when T__73 then alt_14 = 1
        when T__31 then alt_14 = 2
        when T__32 then alt_14 = 3
        when T__33 then alt_14 = 4
        when T__34 then alt_14 = 5
        when T__28 then alt_14 = 6
        when T__35 then alt_14 = 7
        when T__36 then alt_14 = 8
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          nvae = NoViableAlternative("", 14, 0)
          raise nvae
        end
        case alt_14
        when 1
          # at line 214:9: annotation
          @state.following.push(TOKENS_FOLLOWING_annotation_IN_class_or_interface_modifier_306)
          annotation
          @state.following.pop

        when 2
          # at line 215:9: 'public'
          match(T__31, TOKENS_FOLLOWING_T__31_IN_class_or_interface_modifier_319)

        when 3
          # at line 216:9: 'protected'
          match(T__32, TOKENS_FOLLOWING_T__32_IN_class_or_interface_modifier_334)

        when 4
          # at line 217:9: 'private'
          match(T__33, TOKENS_FOLLOWING_T__33_IN_class_or_interface_modifier_346)

        when 5
          # at line 218:9: 'abstract'
          match(T__34, TOKENS_FOLLOWING_T__34_IN_class_or_interface_modifier_360)

        when 6
          # at line 219:9: 'static'
          match(T__28, TOKENS_FOLLOWING_T__28_IN_class_or_interface_modifier_373)

        when 7
          # at line 220:9: 'final'
          match(T__35, TOKENS_FOLLOWING_T__35_IN_class_or_interface_modifier_388)

        when 8
          # at line 221:9: 'strictfp'
          match(T__36, TOKENS_FOLLOWING_T__36_IN_class_or_interface_modifier_404)

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 7)
        memoize(__method__, class_or_interface_modifier_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule modifiers
    # 
    # (in samples/Java.g)
    # 224:1: modifiers : ( modifier )* ;
    # 
    def modifiers
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 8)
      modifiers_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 225:9: ( modifier )*
        # at line 225:9: ( modifier )*
        while true # decision 15
          alt_15 = 2
          look_15_0 = @input.peek(1)

          if (look_15_0 == T__73) 
            look_15_2 = @input.peek(2)

            if (look_15_2 == Identifier) 
              alt_15 = 1

            end
          elsif (look_15_0 == T__28 || look_15_0.between?(T__31, T__36) || look_15_0.between?(T__52, T__55)) 
            alt_15 = 1

          end
          case alt_15
          when 1
            # at line 0:0: modifier
            @state.following.push(TOKENS_FOLLOWING_modifier_IN_modifiers_426)
            modifier
            @state.following.pop

          else
            break # out of loop for decision 15
          end
        end # loop for decision 15

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 8)
        memoize(__method__, modifiers_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule class_declaration
    # 
    # (in samples/Java.g)
    # 228:1: class_declaration : ( normal_class_declaration | enum_declaration );
    # 
    def class_declaration
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 9)
      class_declaration_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 229:5: ( normal_class_declaration | enum_declaration )
        alt_16 = 2
        look_16_0 = @input.peek(1)

        if (look_16_0 == T__37) 
          alt_16 = 1
        elsif (look_16_0 == ENUM) 
          alt_16 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 16, 0)
          raise nvae
        end
        case alt_16
        when 1
          # at line 229:9: normal_class_declaration
          @state.following.push(TOKENS_FOLLOWING_normal_class_declaration_IN_class_declaration_446)
          normal_class_declaration
          @state.following.pop

        when 2
          # at line 230:9: enum_declaration
          @state.following.push(TOKENS_FOLLOWING_enum_declaration_IN_class_declaration_456)
          enum_declaration
          @state.following.pop

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 9)
        memoize(__method__, class_declaration_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule normal_class_declaration
    # 
    # (in samples/Java.g)
    # 233:1: normal_class_declaration : 'class' Identifier ( type_parameters )? ( 'extends' type )? ( 'implements' type_list )? class_body ;
    # 
    def normal_class_declaration
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 10)
      normal_class_declaration_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 234:9: 'class' Identifier ( type_parameters )? ( 'extends' type )? ( 'implements' type_list )? class_body
        match(T__37, TOKENS_FOLLOWING_T__37_IN_normal_class_declaration_479)
        match(Identifier, TOKENS_FOLLOWING_Identifier_IN_normal_class_declaration_481)
        # at line 234:28: ( type_parameters )?
        alt_17 = 2
        look_17_0 = @input.peek(1)

        if (look_17_0 == T__40) 
          alt_17 = 1
        end
        case alt_17
        when 1
          # at line 0:0: type_parameters
          @state.following.push(TOKENS_FOLLOWING_type_parameters_IN_normal_class_declaration_483)
          type_parameters
          @state.following.pop

        end
        # at line 235:9: ( 'extends' type )?
        alt_18 = 2
        look_18_0 = @input.peek(1)

        if (look_18_0 == T__38) 
          alt_18 = 1
        end
        case alt_18
        when 1
          # at line 235:10: 'extends' type
          match(T__38, TOKENS_FOLLOWING_T__38_IN_normal_class_declaration_495)
          @state.following.push(TOKENS_FOLLOWING_type_IN_normal_class_declaration_497)
          type
          @state.following.pop

        end
        # at line 236:9: ( 'implements' type_list )?
        alt_19 = 2
        look_19_0 = @input.peek(1)

        if (look_19_0 == T__39) 
          alt_19 = 1
        end
        case alt_19
        when 1
          # at line 236:10: 'implements' type_list
          match(T__39, TOKENS_FOLLOWING_T__39_IN_normal_class_declaration_510)
          @state.following.push(TOKENS_FOLLOWING_type_list_IN_normal_class_declaration_512)
          type_list
          @state.following.pop

        end
        @state.following.push(TOKENS_FOLLOWING_class_body_IN_normal_class_declaration_524)
        class_body
        @state.following.pop

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 10)
        memoize(__method__, normal_class_declaration_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule type_parameters
    # 
    # (in samples/Java.g)
    # 240:1: type_parameters : '<' type_parameter ( ',' type_parameter )* '>' ;
    # 
    def type_parameters
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 11)
      type_parameters_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 241:9: '<' type_parameter ( ',' type_parameter )* '>'
        match(T__40, TOKENS_FOLLOWING_T__40_IN_type_parameters_547)
        @state.following.push(TOKENS_FOLLOWING_type_parameter_IN_type_parameters_549)
        type_parameter
        @state.following.pop
        # at line 241:28: ( ',' type_parameter )*
        while true # decision 20
          alt_20 = 2
          look_20_0 = @input.peek(1)

          if (look_20_0 == T__41) 
            alt_20 = 1

          end
          case alt_20
          when 1
            # at line 241:29: ',' type_parameter
            match(T__41, TOKENS_FOLLOWING_T__41_IN_type_parameters_552)
            @state.following.push(TOKENS_FOLLOWING_type_parameter_IN_type_parameters_554)
            type_parameter
            @state.following.pop

          else
            break # out of loop for decision 20
          end
        end # loop for decision 20
        match(T__42, TOKENS_FOLLOWING_T__42_IN_type_parameters_558)

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 11)
        memoize(__method__, type_parameters_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule type_parameter
    # 
    # (in samples/Java.g)
    # 244:1: type_parameter : Identifier ( 'extends' type_bound )? ;
    # 
    def type_parameter
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 12)
      type_parameter_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 245:9: Identifier ( 'extends' type_bound )?
        match(Identifier, TOKENS_FOLLOWING_Identifier_IN_type_parameter_577)
        # at line 245:20: ( 'extends' type_bound )?
        alt_21 = 2
        look_21_0 = @input.peek(1)

        if (look_21_0 == T__38) 
          alt_21 = 1
        end
        case alt_21
        when 1
          # at line 245:21: 'extends' type_bound
          match(T__38, TOKENS_FOLLOWING_T__38_IN_type_parameter_580)
          @state.following.push(TOKENS_FOLLOWING_type_bound_IN_type_parameter_582)
          type_bound
          @state.following.pop

        end

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 12)
        memoize(__method__, type_parameter_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule type_bound
    # 
    # (in samples/Java.g)
    # 248:1: type_bound : type ( '&' type )* ;
    # 
    def type_bound
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 13)
      type_bound_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 249:9: type ( '&' type )*
        @state.following.push(TOKENS_FOLLOWING_type_IN_type_bound_611)
        type
        @state.following.pop
        # at line 249:14: ( '&' type )*
        while true # decision 22
          alt_22 = 2
          look_22_0 = @input.peek(1)

          if (look_22_0 == T__43) 
            alt_22 = 1

          end
          case alt_22
          when 1
            # at line 249:15: '&' type
            match(T__43, TOKENS_FOLLOWING_T__43_IN_type_bound_614)
            @state.following.push(TOKENS_FOLLOWING_type_IN_type_bound_616)
            type
            @state.following.pop

          else
            break # out of loop for decision 22
          end
        end # loop for decision 22

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 13)
        memoize(__method__, type_bound_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule enum_declaration
    # 
    # (in samples/Java.g)
    # 252:1: enum_declaration : ENUM Identifier ( 'implements' type_list )? enum_body ;
    # 
    def enum_declaration
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 14)
      enum_declaration_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 253:9: ENUM Identifier ( 'implements' type_list )? enum_body
        match(ENUM, TOKENS_FOLLOWING_ENUM_IN_enum_declaration_637)
        match(Identifier, TOKENS_FOLLOWING_Identifier_IN_enum_declaration_639)
        # at line 253:25: ( 'implements' type_list )?
        alt_23 = 2
        look_23_0 = @input.peek(1)

        if (look_23_0 == T__39) 
          alt_23 = 1
        end
        case alt_23
        when 1
          # at line 253:26: 'implements' type_list
          match(T__39, TOKENS_FOLLOWING_T__39_IN_enum_declaration_642)
          @state.following.push(TOKENS_FOLLOWING_type_list_IN_enum_declaration_644)
          type_list
          @state.following.pop

        end
        @state.following.push(TOKENS_FOLLOWING_enum_body_IN_enum_declaration_648)
        enum_body
        @state.following.pop

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 14)
        memoize(__method__, enum_declaration_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule enum_body
    # 
    # (in samples/Java.g)
    # 256:1: enum_body : '{' ( enum_constants )? ( ',' )? ( enum_body_declarations )? '}' ;
    # 
    def enum_body
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 15)
      enum_body_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 257:9: '{' ( enum_constants )? ( ',' )? ( enum_body_declarations )? '}'
        match(T__44, TOKENS_FOLLOWING_T__44_IN_enum_body_667)
        # at line 257:13: ( enum_constants )?
        alt_24 = 2
        look_24_0 = @input.peek(1)

        if (look_24_0 == Identifier || look_24_0 == T__73) 
          alt_24 = 1
        end
        case alt_24
        when 1
          # at line 0:0: enum_constants
          @state.following.push(TOKENS_FOLLOWING_enum_constants_IN_enum_body_669)
          enum_constants
          @state.following.pop

        end
        # at line 257:29: ( ',' )?
        alt_25 = 2
        look_25_0 = @input.peek(1)

        if (look_25_0 == T__41) 
          alt_25 = 1
        end
        case alt_25
        when 1
          # at line 0:0: ','
          match(T__41, TOKENS_FOLLOWING_T__41_IN_enum_body_672)

        end
        # at line 257:34: ( enum_body_declarations )?
        alt_26 = 2
        look_26_0 = @input.peek(1)

        if (look_26_0 == T__26) 
          alt_26 = 1
        end
        case alt_26
        when 1
          # at line 0:0: enum_body_declarations
          @state.following.push(TOKENS_FOLLOWING_enum_body_declarations_IN_enum_body_675)
          enum_body_declarations
          @state.following.pop

        end
        match(T__45, TOKENS_FOLLOWING_T__45_IN_enum_body_678)

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 15)
        memoize(__method__, enum_body_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule enum_constants
    # 
    # (in samples/Java.g)
    # 260:1: enum_constants : enum_constant ( ',' enum_constant )* ;
    # 
    def enum_constants
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 16)
      enum_constants_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 261:9: enum_constant ( ',' enum_constant )*
        @state.following.push(TOKENS_FOLLOWING_enum_constant_IN_enum_constants_697)
        enum_constant
        @state.following.pop
        # at line 261:23: ( ',' enum_constant )*
        while true # decision 27
          alt_27 = 2
          look_27_0 = @input.peek(1)

          if (look_27_0 == T__41) 
            look_27_1 = @input.peek(2)

            if (look_27_1 == Identifier || look_27_1 == T__73) 
              alt_27 = 1

            end

          end
          case alt_27
          when 1
            # at line 261:24: ',' enum_constant
            match(T__41, TOKENS_FOLLOWING_T__41_IN_enum_constants_700)
            @state.following.push(TOKENS_FOLLOWING_enum_constant_IN_enum_constants_702)
            enum_constant
            @state.following.pop

          else
            break # out of loop for decision 27
          end
        end # loop for decision 27

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 16)
        memoize(__method__, enum_constants_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule enum_constant
    # 
    # (in samples/Java.g)
    # 264:1: enum_constant : ( annotations )? Identifier ( arguments )? ( class_body )? ;
    # 
    def enum_constant
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 17)
      enum_constant_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 265:9: ( annotations )? Identifier ( arguments )? ( class_body )?
        # at line 265:9: ( annotations )?
        alt_28 = 2
        look_28_0 = @input.peek(1)

        if (look_28_0 == T__73) 
          alt_28 = 1
        end
        case alt_28
        when 1
          # at line 0:0: annotations
          @state.following.push(TOKENS_FOLLOWING_annotations_IN_enum_constant_727)
          annotations
          @state.following.pop

        end
        match(Identifier, TOKENS_FOLLOWING_Identifier_IN_enum_constant_730)
        # at line 265:33: ( arguments )?
        alt_29 = 2
        look_29_0 = @input.peek(1)

        if (look_29_0 == T__66) 
          alt_29 = 1
        end
        case alt_29
        when 1
          # at line 0:0: arguments
          @state.following.push(TOKENS_FOLLOWING_arguments_IN_enum_constant_732)
          arguments
          @state.following.pop

        end
        # at line 265:44: ( class_body )?
        alt_30 = 2
        look_30_0 = @input.peek(1)

        if (look_30_0 == T__44) 
          alt_30 = 1
        end
        case alt_30
        when 1
          # at line 0:0: class_body
          @state.following.push(TOKENS_FOLLOWING_class_body_IN_enum_constant_735)
          class_body
          @state.following.pop

        end

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 17)
        memoize(__method__, enum_constant_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule enum_body_declarations
    # 
    # (in samples/Java.g)
    # 268:1: enum_body_declarations : ';' ( class_body_declaration )* ;
    # 
    def enum_body_declarations
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 18)
      enum_body_declarations_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 269:9: ';' ( class_body_declaration )*
        match(T__26, TOKENS_FOLLOWING_T__26_IN_enum_body_declarations_759)
        # at line 269:13: ( class_body_declaration )*
        while true # decision 31
          alt_31 = 2
          look_31_0 = @input.peek(1)

          if (look_31_0.between?(Identifier, ENUM) || look_31_0 == T__26 || look_31_0 == T__28 || look_31_0.between?(T__31, T__37) || look_31_0 == T__40 || look_31_0 == T__44 || look_31_0.between?(T__46, T__47) || look_31_0.between?(T__52, T__63) || look_31_0 == T__73) 
            alt_31 = 1

          end
          case alt_31
          when 1
            # at line 269:14: class_body_declaration
            @state.following.push(TOKENS_FOLLOWING_class_body_declaration_IN_enum_body_declarations_762)
            class_body_declaration
            @state.following.pop

          else
            break # out of loop for decision 31
          end
        end # loop for decision 31

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 18)
        memoize(__method__, enum_body_declarations_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule interface_declaration
    # 
    # (in samples/Java.g)
    # 272:1: interface_declaration : ( normal_interface_declaration | annotation_type_declaration );
    # 
    def interface_declaration
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 19)
      interface_declaration_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 273:5: ( normal_interface_declaration | annotation_type_declaration )
        alt_32 = 2
        look_32_0 = @input.peek(1)

        if (look_32_0 == T__46) 
          alt_32 = 1
        elsif (look_32_0 == T__73) 
          alt_32 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 32, 0)
          raise nvae
        end
        case alt_32
        when 1
          # at line 273:9: normal_interface_declaration
          @state.following.push(TOKENS_FOLLOWING_normal_interface_declaration_IN_interface_declaration_787)
          normal_interface_declaration
          @state.following.pop

        when 2
          # at line 274:9: annotation_type_declaration
          @state.following.push(TOKENS_FOLLOWING_annotation_type_declaration_IN_interface_declaration_797)
          annotation_type_declaration
          @state.following.pop

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 19)
        memoize(__method__, interface_declaration_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule normal_interface_declaration
    # 
    # (in samples/Java.g)
    # 277:1: normal_interface_declaration : 'interface' Identifier ( type_parameters )? ( 'extends' type_list )? interface_body ;
    # 
    def normal_interface_declaration
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 20)
      normal_interface_declaration_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 278:9: 'interface' Identifier ( type_parameters )? ( 'extends' type_list )? interface_body
        match(T__46, TOKENS_FOLLOWING_T__46_IN_normal_interface_declaration_820)
        match(Identifier, TOKENS_FOLLOWING_Identifier_IN_normal_interface_declaration_822)
        # at line 278:32: ( type_parameters )?
        alt_33 = 2
        look_33_0 = @input.peek(1)

        if (look_33_0 == T__40) 
          alt_33 = 1
        end
        case alt_33
        when 1
          # at line 0:0: type_parameters
          @state.following.push(TOKENS_FOLLOWING_type_parameters_IN_normal_interface_declaration_824)
          type_parameters
          @state.following.pop

        end
        # at line 278:49: ( 'extends' type_list )?
        alt_34 = 2
        look_34_0 = @input.peek(1)

        if (look_34_0 == T__38) 
          alt_34 = 1
        end
        case alt_34
        when 1
          # at line 278:50: 'extends' type_list
          match(T__38, TOKENS_FOLLOWING_T__38_IN_normal_interface_declaration_828)
          @state.following.push(TOKENS_FOLLOWING_type_list_IN_normal_interface_declaration_830)
          type_list
          @state.following.pop

        end
        @state.following.push(TOKENS_FOLLOWING_interface_body_IN_normal_interface_declaration_834)
        interface_body
        @state.following.pop

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 20)
        memoize(__method__, normal_interface_declaration_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule type_list
    # 
    # (in samples/Java.g)
    # 281:1: type_list : type ( ',' type )* ;
    # 
    def type_list
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 21)
      type_list_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 282:9: type ( ',' type )*
        @state.following.push(TOKENS_FOLLOWING_type_IN_type_list_857)
        type
        @state.following.pop
        # at line 282:14: ( ',' type )*
        while true # decision 35
          alt_35 = 2
          look_35_0 = @input.peek(1)

          if (look_35_0 == T__41) 
            alt_35 = 1

          end
          case alt_35
          when 1
            # at line 282:15: ',' type
            match(T__41, TOKENS_FOLLOWING_T__41_IN_type_list_860)
            @state.following.push(TOKENS_FOLLOWING_type_IN_type_list_862)
            type
            @state.following.pop

          else
            break # out of loop for decision 35
          end
        end # loop for decision 35

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 21)
        memoize(__method__, type_list_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule class_body
    # 
    # (in samples/Java.g)
    # 285:1: class_body : '{' ( class_body_declaration )* '}' ;
    # 
    def class_body
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 22)
      class_body_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 286:9: '{' ( class_body_declaration )* '}'
        match(T__44, TOKENS_FOLLOWING_T__44_IN_class_body_887)
        # at line 286:13: ( class_body_declaration )*
        while true # decision 36
          alt_36 = 2
          look_36_0 = @input.peek(1)

          if (look_36_0.between?(Identifier, ENUM) || look_36_0 == T__26 || look_36_0 == T__28 || look_36_0.between?(T__31, T__37) || look_36_0 == T__40 || look_36_0 == T__44 || look_36_0.between?(T__46, T__47) || look_36_0.between?(T__52, T__63) || look_36_0 == T__73) 
            alt_36 = 1

          end
          case alt_36
          when 1
            # at line 0:0: class_body_declaration
            @state.following.push(TOKENS_FOLLOWING_class_body_declaration_IN_class_body_889)
            class_body_declaration
            @state.following.pop

          else
            break # out of loop for decision 36
          end
        end # loop for decision 36
        match(T__45, TOKENS_FOLLOWING_T__45_IN_class_body_892)

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 22)
        memoize(__method__, class_body_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule interface_body
    # 
    # (in samples/Java.g)
    # 289:1: interface_body : '{' ( interface_body_declaration )* '}' ;
    # 
    def interface_body
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 23)
      interface_body_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 290:9: '{' ( interface_body_declaration )* '}'
        match(T__44, TOKENS_FOLLOWING_T__44_IN_interface_body_915)
        # at line 290:13: ( interface_body_declaration )*
        while true # decision 37
          alt_37 = 2
          look_37_0 = @input.peek(1)

          if (look_37_0.between?(Identifier, ENUM) || look_37_0 == T__26 || look_37_0 == T__28 || look_37_0.between?(T__31, T__37) || look_37_0 == T__40 || look_37_0.between?(T__46, T__47) || look_37_0.between?(T__52, T__63) || look_37_0 == T__73) 
            alt_37 = 1

          end
          case alt_37
          when 1
            # at line 0:0: interface_body_declaration
            @state.following.push(TOKENS_FOLLOWING_interface_body_declaration_IN_interface_body_917)
            interface_body_declaration
            @state.following.pop

          else
            break # out of loop for decision 37
          end
        end # loop for decision 37
        match(T__45, TOKENS_FOLLOWING_T__45_IN_interface_body_920)

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 23)
        memoize(__method__, interface_body_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule class_body_declaration
    # 
    # (in samples/Java.g)
    # 293:1: class_body_declaration : ( ';' | ( 'static' )? block | modifiers member_decl );
    # 
    def class_body_declaration
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 24)
      class_body_declaration_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 294:5: ( ';' | ( 'static' )? block | modifiers member_decl )
        alt_39 = 3
        case look_39 = @input.peek(1)
        when T__26 then alt_39 = 1
        when T__28 then look_39_2 = @input.peek(2)

        if (look_39_2.between?(Identifier, ENUM) || look_39_2 == T__28 || look_39_2.between?(T__31, T__37) || look_39_2 == T__40 || look_39_2.between?(T__46, T__47) || look_39_2.between?(T__52, T__63) || look_39_2 == T__73) 
          alt_39 = 3
        elsif (look_39_2 == T__44) 
          alt_39 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 39, 2)
          raise nvae
        end
        when T__44 then alt_39 = 2
        when Identifier, ENUM, T__31, T__32, T__33, T__34, T__35, T__36, T__37, T__40, T__46, T__47, T__52, T__53, T__54, T__55, T__56, T__57, T__58, T__59, T__60, T__61, T__62, T__63, T__73 then alt_39 = 3
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          nvae = NoViableAlternative("", 39, 0)
          raise nvae
        end
        case alt_39
        when 1
          # at line 294:9: ';'
          match(T__26, TOKENS_FOLLOWING_T__26_IN_class_body_declaration_939)

        when 2
          # at line 295:9: ( 'static' )? block
          # at line 295:9: ( 'static' )?
          alt_38 = 2
          look_38_0 = @input.peek(1)

          if (look_38_0 == T__28) 
            alt_38 = 1
          end
          case alt_38
          when 1
            # at line 0:0: 'static'
            match(T__28, TOKENS_FOLLOWING_T__28_IN_class_body_declaration_949)

          end
          @state.following.push(TOKENS_FOLLOWING_block_IN_class_body_declaration_952)
          block
          @state.following.pop

        when 3
          # at line 296:9: modifiers member_decl
          @state.following.push(TOKENS_FOLLOWING_modifiers_IN_class_body_declaration_962)
          modifiers
          @state.following.pop
          @state.following.push(TOKENS_FOLLOWING_member_decl_IN_class_body_declaration_964)
          member_decl
          @state.following.pop

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 24)
        memoize(__method__, class_body_declaration_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule member_decl
    # 
    # (in samples/Java.g)
    # 299:1: member_decl : ( generic_method_or_constructor_decl | member_declaration | 'void' Identifier void_method_declarator_rest | Identifier constructor_declarator_rest | interface_declaration | class_declaration );
    # 
    def member_decl
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 25)
      member_decl_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 300:5: ( generic_method_or_constructor_decl | member_declaration | 'void' Identifier void_method_declarator_rest | Identifier constructor_declarator_rest | interface_declaration | class_declaration )
        alt_40 = 6
        case look_40 = @input.peek(1)
        when T__40 then alt_40 = 1
        when Identifier then look_40_2 = @input.peek(2)

        if (look_40_2 == T__66) 
          alt_40 = 4
        elsif (look_40_2 == Identifier || look_40_2 == T__29 || look_40_2 == T__40 || look_40_2 == T__48) 
          alt_40 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 40, 2)
          raise nvae
        end
        when T__56, T__57, T__58, T__59, T__60, T__61, T__62, T__63 then alt_40 = 2
        when T__47 then alt_40 = 3
        when T__46, T__73 then alt_40 = 5
        when ENUM, T__37 then alt_40 = 6
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          nvae = NoViableAlternative("", 40, 0)
          raise nvae
        end
        case alt_40
        when 1
          # at line 300:9: generic_method_or_constructor_decl
          @state.following.push(TOKENS_FOLLOWING_generic_method_or_constructor_decl_IN_member_decl_987)
          generic_method_or_constructor_decl
          @state.following.pop

        when 2
          # at line 301:9: member_declaration
          @state.following.push(TOKENS_FOLLOWING_member_declaration_IN_member_decl_997)
          member_declaration
          @state.following.pop

        when 3
          # at line 302:9: 'void' Identifier void_method_declarator_rest
          match(T__47, TOKENS_FOLLOWING_T__47_IN_member_decl_1007)
          match(Identifier, TOKENS_FOLLOWING_Identifier_IN_member_decl_1009)
          @state.following.push(TOKENS_FOLLOWING_void_method_declarator_rest_IN_member_decl_1011)
          void_method_declarator_rest
          @state.following.pop

        when 4
          # at line 303:9: Identifier constructor_declarator_rest
          match(Identifier, TOKENS_FOLLOWING_Identifier_IN_member_decl_1021)
          @state.following.push(TOKENS_FOLLOWING_constructor_declarator_rest_IN_member_decl_1023)
          constructor_declarator_rest
          @state.following.pop

        when 5
          # at line 304:9: interface_declaration
          @state.following.push(TOKENS_FOLLOWING_interface_declaration_IN_member_decl_1033)
          interface_declaration
          @state.following.pop

        when 6
          # at line 305:9: class_declaration
          @state.following.push(TOKENS_FOLLOWING_class_declaration_IN_member_decl_1043)
          class_declaration
          @state.following.pop

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 25)
        memoize(__method__, member_decl_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule member_declaration
    # 
    # (in samples/Java.g)
    # 308:1: member_declaration : type ( method_declaration | field_declaration ) ;
    # 
    def member_declaration
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 26)
      member_declaration_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 309:9: type ( method_declaration | field_declaration )
        @state.following.push(TOKENS_FOLLOWING_type_IN_member_declaration_1066)
        type
        @state.following.pop
        # at line 309:14: ( method_declaration | field_declaration )
        alt_41 = 2
        look_41_0 = @input.peek(1)

        if (look_41_0 == Identifier) 
          look_41_1 = @input.peek(2)

          if (look_41_1 == T__66) 
            alt_41 = 1
          elsif (look_41_1 == T__26 || look_41_1 == T__41 || look_41_1 == T__48 || look_41_1 == T__51) 
            alt_41 = 2
          else
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
          nvae = NoViableAlternative("", 41, 1)
            raise nvae
          end
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 41, 0)
          raise nvae
        end
        case alt_41
        when 1
          # at line 309:15: method_declaration
          @state.following.push(TOKENS_FOLLOWING_method_declaration_IN_member_declaration_1069)
          method_declaration
          @state.following.pop

        when 2
          # at line 309:36: field_declaration
          @state.following.push(TOKENS_FOLLOWING_field_declaration_IN_member_declaration_1073)
          field_declaration
          @state.following.pop

        end

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 26)
        memoize(__method__, member_declaration_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule generic_method_or_constructor_decl
    # 
    # (in samples/Java.g)
    # 312:1: generic_method_or_constructor_decl : type_parameters generic_method_or_constructor_rest ;
    # 
    def generic_method_or_constructor_decl
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 27)
      generic_method_or_constructor_decl_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 313:9: type_parameters generic_method_or_constructor_rest
        @state.following.push(TOKENS_FOLLOWING_type_parameters_IN_generic_method_or_constructor_decl_1093)
        type_parameters
        @state.following.pop
        @state.following.push(TOKENS_FOLLOWING_generic_method_or_constructor_rest_IN_generic_method_or_constructor_decl_1095)
        generic_method_or_constructor_rest
        @state.following.pop

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 27)
        memoize(__method__, generic_method_or_constructor_decl_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule generic_method_or_constructor_rest
    # 
    # (in samples/Java.g)
    # 316:1: generic_method_or_constructor_rest : ( ( type | 'void' ) Identifier method_declarator_rest | Identifier constructor_declarator_rest );
    # 
    def generic_method_or_constructor_rest
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 28)
      generic_method_or_constructor_rest_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 317:5: ( ( type | 'void' ) Identifier method_declarator_rest | Identifier constructor_declarator_rest )
        alt_43 = 2
        look_43_0 = @input.peek(1)

        if (look_43_0 == Identifier) 
          look_43_1 = @input.peek(2)

          if (look_43_1 == Identifier || look_43_1 == T__29 || look_43_1 == T__40 || look_43_1 == T__48) 
            alt_43 = 1
          elsif (look_43_1 == T__66) 
            alt_43 = 2
          else
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
          nvae = NoViableAlternative("", 43, 1)
            raise nvae
          end
        elsif (look_43_0 == T__47 || look_43_0.between?(T__56, T__63)) 
          alt_43 = 1
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 43, 0)
          raise nvae
        end
        case alt_43
        when 1
          # at line 317:9: ( type | 'void' ) Identifier method_declarator_rest
          # at line 317:9: ( type | 'void' )
          alt_42 = 2
          look_42_0 = @input.peek(1)

          if (look_42_0 == Identifier || look_42_0.between?(T__56, T__63)) 
            alt_42 = 1
          elsif (look_42_0 == T__47) 
            alt_42 = 2
          else
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
          nvae = NoViableAlternative("", 42, 0)
            raise nvae
          end
          case alt_42
          when 1
            # at line 317:10: type
            @state.following.push(TOKENS_FOLLOWING_type_IN_generic_method_or_constructor_rest_1119)
            type
            @state.following.pop

          when 2
            # at line 317:17: 'void'
            match(T__47, TOKENS_FOLLOWING_T__47_IN_generic_method_or_constructor_rest_1123)

          end
          match(Identifier, TOKENS_FOLLOWING_Identifier_IN_generic_method_or_constructor_rest_1126)
          @state.following.push(TOKENS_FOLLOWING_method_declarator_rest_IN_generic_method_or_constructor_rest_1128)
          method_declarator_rest
          @state.following.pop

        when 2
          # at line 318:9: Identifier constructor_declarator_rest
          match(Identifier, TOKENS_FOLLOWING_Identifier_IN_generic_method_or_constructor_rest_1138)
          @state.following.push(TOKENS_FOLLOWING_constructor_declarator_rest_IN_generic_method_or_constructor_rest_1140)
          constructor_declarator_rest
          @state.following.pop

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 28)
        memoize(__method__, generic_method_or_constructor_rest_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule method_declaration
    # 
    # (in samples/Java.g)
    # 321:1: method_declaration : Identifier method_declarator_rest ;
    # 
    def method_declaration
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 29)
      method_declaration_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 322:9: Identifier method_declarator_rest
        match(Identifier, TOKENS_FOLLOWING_Identifier_IN_method_declaration_1159)
        @state.following.push(TOKENS_FOLLOWING_method_declarator_rest_IN_method_declaration_1161)
        method_declarator_rest
        @state.following.pop

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 29)
        memoize(__method__, method_declaration_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule field_declaration
    # 
    # (in samples/Java.g)
    # 325:1: field_declaration : variable_declarators ';' ;
    # 
    def field_declaration
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 30)
      field_declaration_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 326:9: variable_declarators ';'
        @state.following.push(TOKENS_FOLLOWING_variable_declarators_IN_field_declaration_1180)
        variable_declarators
        @state.following.pop
        match(T__26, TOKENS_FOLLOWING_T__26_IN_field_declaration_1182)

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 30)
        memoize(__method__, field_declaration_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule interface_body_declaration
    # 
    # (in samples/Java.g)
    # 329:1: interface_body_declaration : ( modifiers interface_member_decl | ';' );
    # 
    def interface_body_declaration
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 31)
      interface_body_declaration_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 330:5: ( modifiers interface_member_decl | ';' )
        alt_44 = 2
        look_44_0 = @input.peek(1)

        if (look_44_0.between?(Identifier, ENUM) || look_44_0 == T__28 || look_44_0.between?(T__31, T__37) || look_44_0 == T__40 || look_44_0.between?(T__46, T__47) || look_44_0.between?(T__52, T__63) || look_44_0 == T__73) 
          alt_44 = 1
        elsif (look_44_0 == T__26) 
          alt_44 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 44, 0)
          raise nvae
        end
        case alt_44
        when 1
          # at line 330:9: modifiers interface_member_decl
          @state.following.push(TOKENS_FOLLOWING_modifiers_IN_interface_body_declaration_1209)
          modifiers
          @state.following.pop
          @state.following.push(TOKENS_FOLLOWING_interface_member_decl_IN_interface_body_declaration_1211)
          interface_member_decl
          @state.following.pop

        when 2
          # at line 331:9: ';'
          match(T__26, TOKENS_FOLLOWING_T__26_IN_interface_body_declaration_1221)

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 31)
        memoize(__method__, interface_body_declaration_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule interface_member_decl
    # 
    # (in samples/Java.g)
    # 334:1: interface_member_decl : ( interface_method_or_field_decl | interface_generic_method_decl | 'void' Identifier void_interface_method_declarator_rest | interface_declaration | class_declaration );
    # 
    def interface_member_decl
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 32)
      interface_member_decl_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 335:5: ( interface_method_or_field_decl | interface_generic_method_decl | 'void' Identifier void_interface_method_declarator_rest | interface_declaration | class_declaration )
        alt_45 = 5
        case look_45 = @input.peek(1)
        when Identifier, T__56, T__57, T__58, T__59, T__60, T__61, T__62, T__63 then alt_45 = 1
        when T__40 then alt_45 = 2
        when T__47 then alt_45 = 3
        when T__46, T__73 then alt_45 = 4
        when ENUM, T__37 then alt_45 = 5
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          nvae = NoViableAlternative("", 45, 0)
          raise nvae
        end
        case alt_45
        when 1
          # at line 335:9: interface_method_or_field_decl
          @state.following.push(TOKENS_FOLLOWING_interface_method_or_field_decl_IN_interface_member_decl_1240)
          interface_method_or_field_decl
          @state.following.pop

        when 2
          # at line 336:9: interface_generic_method_decl
          @state.following.push(TOKENS_FOLLOWING_interface_generic_method_decl_IN_interface_member_decl_1250)
          interface_generic_method_decl
          @state.following.pop

        when 3
          # at line 337:9: 'void' Identifier void_interface_method_declarator_rest
          match(T__47, TOKENS_FOLLOWING_T__47_IN_interface_member_decl_1260)
          match(Identifier, TOKENS_FOLLOWING_Identifier_IN_interface_member_decl_1262)
          @state.following.push(TOKENS_FOLLOWING_void_interface_method_declarator_rest_IN_interface_member_decl_1264)
          void_interface_method_declarator_rest
          @state.following.pop

        when 4
          # at line 338:9: interface_declaration
          @state.following.push(TOKENS_FOLLOWING_interface_declaration_IN_interface_member_decl_1274)
          interface_declaration
          @state.following.pop

        when 5
          # at line 339:9: class_declaration
          @state.following.push(TOKENS_FOLLOWING_class_declaration_IN_interface_member_decl_1284)
          class_declaration
          @state.following.pop

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 32)
        memoize(__method__, interface_member_decl_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule interface_method_or_field_decl
    # 
    # (in samples/Java.g)
    # 342:1: interface_method_or_field_decl : type Identifier interface_method_or_field_rest ;
    # 
    def interface_method_or_field_decl
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 33)
      interface_method_or_field_decl_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 343:9: type Identifier interface_method_or_field_rest
        @state.following.push(TOKENS_FOLLOWING_type_IN_interface_method_or_field_decl_1307)
        type
        @state.following.pop
        match(Identifier, TOKENS_FOLLOWING_Identifier_IN_interface_method_or_field_decl_1309)
        @state.following.push(TOKENS_FOLLOWING_interface_method_or_field_rest_IN_interface_method_or_field_decl_1311)
        interface_method_or_field_rest
        @state.following.pop

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 33)
        memoize(__method__, interface_method_or_field_decl_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule interface_method_or_field_rest
    # 
    # (in samples/Java.g)
    # 346:1: interface_method_or_field_rest : ( constant_declarators_rest ';' | interface_method_declarator_rest );
    # 
    def interface_method_or_field_rest
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 34)
      interface_method_or_field_rest_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 347:5: ( constant_declarators_rest ';' | interface_method_declarator_rest )
        alt_46 = 2
        look_46_0 = @input.peek(1)

        if (look_46_0 == T__48 || look_46_0 == T__51) 
          alt_46 = 1
        elsif (look_46_0 == T__66) 
          alt_46 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 46, 0)
          raise nvae
        end
        case alt_46
        when 1
          # at line 347:9: constant_declarators_rest ';'
          @state.following.push(TOKENS_FOLLOWING_constant_declarators_rest_IN_interface_method_or_field_rest_1334)
          constant_declarators_rest
          @state.following.pop
          match(T__26, TOKENS_FOLLOWING_T__26_IN_interface_method_or_field_rest_1336)

        when 2
          # at line 348:9: interface_method_declarator_rest
          @state.following.push(TOKENS_FOLLOWING_interface_method_declarator_rest_IN_interface_method_or_field_rest_1346)
          interface_method_declarator_rest
          @state.following.pop

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 34)
        memoize(__method__, interface_method_or_field_rest_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule method_declarator_rest
    # 
    # (in samples/Java.g)
    # 351:1: method_declarator_rest : formal_parameters ( '[' ']' )* ( 'throws' qualified_name_list )? ( method_body | ';' ) ;
    # 
    def method_declarator_rest
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 35)
      method_declarator_rest_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 352:9: formal_parameters ( '[' ']' )* ( 'throws' qualified_name_list )? ( method_body | ';' )
        @state.following.push(TOKENS_FOLLOWING_formal_parameters_IN_method_declarator_rest_1369)
        formal_parameters
        @state.following.pop
        # at line 352:27: ( '[' ']' )*
        while true # decision 47
          alt_47 = 2
          look_47_0 = @input.peek(1)

          if (look_47_0 == T__48) 
            alt_47 = 1

          end
          case alt_47
          when 1
            # at line 352:28: '[' ']'
            match(T__48, TOKENS_FOLLOWING_T__48_IN_method_declarator_rest_1372)
            match(T__49, TOKENS_FOLLOWING_T__49_IN_method_declarator_rest_1374)

          else
            break # out of loop for decision 47
          end
        end # loop for decision 47
        # at line 353:9: ( 'throws' qualified_name_list )?
        alt_48 = 2
        look_48_0 = @input.peek(1)

        if (look_48_0 == T__50) 
          alt_48 = 1
        end
        case alt_48
        when 1
          # at line 353:10: 'throws' qualified_name_list
          match(T__50, TOKENS_FOLLOWING_T__50_IN_method_declarator_rest_1387)
          @state.following.push(TOKENS_FOLLOWING_qualified_name_list_IN_method_declarator_rest_1389)
          qualified_name_list
          @state.following.pop

        end
        # at line 354:9: ( method_body | ';' )
        alt_49 = 2
        look_49_0 = @input.peek(1)

        if (look_49_0 == T__44) 
          alt_49 = 1
        elsif (look_49_0 == T__26) 
          alt_49 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 49, 0)
          raise nvae
        end
        case alt_49
        when 1
          # at line 354:13: method_body
          @state.following.push(TOKENS_FOLLOWING_method_body_IN_method_declarator_rest_1405)
          method_body
          @state.following.pop

        when 2
          # at line 355:13: ';'
          match(T__26, TOKENS_FOLLOWING_T__26_IN_method_declarator_rest_1419)

        end

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 35)
        memoize(__method__, method_declarator_rest_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule void_method_declarator_rest
    # 
    # (in samples/Java.g)
    # 359:1: void_method_declarator_rest : formal_parameters ( 'throws' qualified_name_list )? ( method_body | ';' ) ;
    # 
    def void_method_declarator_rest
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 36)
      void_method_declarator_rest_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 360:9: formal_parameters ( 'throws' qualified_name_list )? ( method_body | ';' )
        @state.following.push(TOKENS_FOLLOWING_formal_parameters_IN_void_method_declarator_rest_1452)
        formal_parameters
        @state.following.pop
        # at line 360:27: ( 'throws' qualified_name_list )?
        alt_50 = 2
        look_50_0 = @input.peek(1)

        if (look_50_0 == T__50) 
          alt_50 = 1
        end
        case alt_50
        when 1
          # at line 360:28: 'throws' qualified_name_list
          match(T__50, TOKENS_FOLLOWING_T__50_IN_void_method_declarator_rest_1455)
          @state.following.push(TOKENS_FOLLOWING_qualified_name_list_IN_void_method_declarator_rest_1457)
          qualified_name_list
          @state.following.pop

        end
        # at line 361:9: ( method_body | ';' )
        alt_51 = 2
        look_51_0 = @input.peek(1)

        if (look_51_0 == T__44) 
          alt_51 = 1
        elsif (look_51_0 == T__26) 
          alt_51 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 51, 0)
          raise nvae
        end
        case alt_51
        when 1
          # at line 361:13: method_body
          @state.following.push(TOKENS_FOLLOWING_method_body_IN_void_method_declarator_rest_1473)
          method_body
          @state.following.pop

        when 2
          # at line 362:13: ';'
          match(T__26, TOKENS_FOLLOWING_T__26_IN_void_method_declarator_rest_1487)

        end

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 36)
        memoize(__method__, void_method_declarator_rest_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule interface_method_declarator_rest
    # 
    # (in samples/Java.g)
    # 366:1: interface_method_declarator_rest : formal_parameters ( '[' ']' )* ( 'throws' qualified_name_list )? ';' ;
    # 
    def interface_method_declarator_rest
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 37)
      interface_method_declarator_rest_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 367:9: formal_parameters ( '[' ']' )* ( 'throws' qualified_name_list )? ';'
        @state.following.push(TOKENS_FOLLOWING_formal_parameters_IN_interface_method_declarator_rest_1520)
        formal_parameters
        @state.following.pop
        # at line 367:27: ( '[' ']' )*
        while true # decision 52
          alt_52 = 2
          look_52_0 = @input.peek(1)

          if (look_52_0 == T__48) 
            alt_52 = 1

          end
          case alt_52
          when 1
            # at line 367:28: '[' ']'
            match(T__48, TOKENS_FOLLOWING_T__48_IN_interface_method_declarator_rest_1523)
            match(T__49, TOKENS_FOLLOWING_T__49_IN_interface_method_declarator_rest_1525)

          else
            break # out of loop for decision 52
          end
        end # loop for decision 52
        # at line 367:38: ( 'throws' qualified_name_list )?
        alt_53 = 2
        look_53_0 = @input.peek(1)

        if (look_53_0 == T__50) 
          alt_53 = 1
        end
        case alt_53
        when 1
          # at line 367:39: 'throws' qualified_name_list
          match(T__50, TOKENS_FOLLOWING_T__50_IN_interface_method_declarator_rest_1530)
          @state.following.push(TOKENS_FOLLOWING_qualified_name_list_IN_interface_method_declarator_rest_1532)
          qualified_name_list
          @state.following.pop

        end
        match(T__26, TOKENS_FOLLOWING_T__26_IN_interface_method_declarator_rest_1536)

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 37)
        memoize(__method__, interface_method_declarator_rest_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule interface_generic_method_decl
    # 
    # (in samples/Java.g)
    # 370:1: interface_generic_method_decl : type_parameters ( type | 'void' ) Identifier interface_method_declarator_rest ;
    # 
    def interface_generic_method_decl
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 38)
      interface_generic_method_decl_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 371:9: type_parameters ( type | 'void' ) Identifier interface_method_declarator_rest
        @state.following.push(TOKENS_FOLLOWING_type_parameters_IN_interface_generic_method_decl_1559)
        type_parameters
        @state.following.pop
        # at line 371:25: ( type | 'void' )
        alt_54 = 2
        look_54_0 = @input.peek(1)

        if (look_54_0 == Identifier || look_54_0.between?(T__56, T__63)) 
          alt_54 = 1
        elsif (look_54_0 == T__47) 
          alt_54 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 54, 0)
          raise nvae
        end
        case alt_54
        when 1
          # at line 371:26: type
          @state.following.push(TOKENS_FOLLOWING_type_IN_interface_generic_method_decl_1562)
          type
          @state.following.pop

        when 2
          # at line 371:33: 'void'
          match(T__47, TOKENS_FOLLOWING_T__47_IN_interface_generic_method_decl_1566)

        end
        match(Identifier, TOKENS_FOLLOWING_Identifier_IN_interface_generic_method_decl_1569)
        @state.following.push(TOKENS_FOLLOWING_interface_method_declarator_rest_IN_interface_generic_method_decl_1579)
        interface_method_declarator_rest
        @state.following.pop

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 38)
        memoize(__method__, interface_generic_method_decl_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule void_interface_method_declarator_rest
    # 
    # (in samples/Java.g)
    # 375:1: void_interface_method_declarator_rest : formal_parameters ( 'throws' qualified_name_list )? ';' ;
    # 
    def void_interface_method_declarator_rest
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 39)
      void_interface_method_declarator_rest_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 376:9: formal_parameters ( 'throws' qualified_name_list )? ';'
        @state.following.push(TOKENS_FOLLOWING_formal_parameters_IN_void_interface_method_declarator_rest_1602)
        formal_parameters
        @state.following.pop
        # at line 376:27: ( 'throws' qualified_name_list )?
        alt_55 = 2
        look_55_0 = @input.peek(1)

        if (look_55_0 == T__50) 
          alt_55 = 1
        end
        case alt_55
        when 1
          # at line 376:28: 'throws' qualified_name_list
          match(T__50, TOKENS_FOLLOWING_T__50_IN_void_interface_method_declarator_rest_1605)
          @state.following.push(TOKENS_FOLLOWING_qualified_name_list_IN_void_interface_method_declarator_rest_1607)
          qualified_name_list
          @state.following.pop

        end
        match(T__26, TOKENS_FOLLOWING_T__26_IN_void_interface_method_declarator_rest_1611)

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 39)
        memoize(__method__, void_interface_method_declarator_rest_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule constructor_declarator_rest
    # 
    # (in samples/Java.g)
    # 379:1: constructor_declarator_rest : formal_parameters ( 'throws' qualified_name_list )? constructor_body ;
    # 
    def constructor_declarator_rest
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 40)
      constructor_declarator_rest_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 380:9: formal_parameters ( 'throws' qualified_name_list )? constructor_body
        @state.following.push(TOKENS_FOLLOWING_formal_parameters_IN_constructor_declarator_rest_1634)
        formal_parameters
        @state.following.pop
        # at line 380:27: ( 'throws' qualified_name_list )?
        alt_56 = 2
        look_56_0 = @input.peek(1)

        if (look_56_0 == T__50) 
          alt_56 = 1
        end
        case alt_56
        when 1
          # at line 380:28: 'throws' qualified_name_list
          match(T__50, TOKENS_FOLLOWING_T__50_IN_constructor_declarator_rest_1637)
          @state.following.push(TOKENS_FOLLOWING_qualified_name_list_IN_constructor_declarator_rest_1639)
          qualified_name_list
          @state.following.pop

        end
        @state.following.push(TOKENS_FOLLOWING_constructor_body_IN_constructor_declarator_rest_1643)
        constructor_body
        @state.following.pop

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 40)
        memoize(__method__, constructor_declarator_rest_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule constant_declarator
    # 
    # (in samples/Java.g)
    # 383:1: constant_declarator : Identifier constant_declarator_rest ;
    # 
    def constant_declarator
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 41)
      constant_declarator_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 384:9: Identifier constant_declarator_rest
        match(Identifier, TOKENS_FOLLOWING_Identifier_IN_constant_declarator_1662)
        @state.following.push(TOKENS_FOLLOWING_constant_declarator_rest_IN_constant_declarator_1664)
        constant_declarator_rest
        @state.following.pop

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 41)
        memoize(__method__, constant_declarator_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule variable_declarators
    # 
    # (in samples/Java.g)
    # 387:1: variable_declarators : variable_declarator ( ',' variable_declarator )* ;
    # 
    def variable_declarators
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 42)
      variable_declarators_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 388:9: variable_declarator ( ',' variable_declarator )*
        @state.following.push(TOKENS_FOLLOWING_variable_declarator_IN_variable_declarators_1687)
        variable_declarator
        @state.following.pop
        # at line 388:29: ( ',' variable_declarator )*
        while true # decision 57
          alt_57 = 2
          look_57_0 = @input.peek(1)

          if (look_57_0 == T__41) 
            alt_57 = 1

          end
          case alt_57
          when 1
            # at line 388:30: ',' variable_declarator
            match(T__41, TOKENS_FOLLOWING_T__41_IN_variable_declarators_1690)
            @state.following.push(TOKENS_FOLLOWING_variable_declarator_IN_variable_declarators_1692)
            variable_declarator
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
        # trace_out(__method__, 42)
        memoize(__method__, variable_declarators_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule variable_declarator
    # 
    # (in samples/Java.g)
    # 391:1: variable_declarator : variable_declarator_id ( '=' variable_initializer )? ;
    # 
    def variable_declarator
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 43)
      variable_declarator_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 392:9: variable_declarator_id ( '=' variable_initializer )?
        @state.following.push(TOKENS_FOLLOWING_variable_declarator_id_IN_variable_declarator_1713)
        variable_declarator_id
        @state.following.pop
        # at line 392:32: ( '=' variable_initializer )?
        alt_58 = 2
        look_58_0 = @input.peek(1)

        if (look_58_0 == T__51) 
          alt_58 = 1
        end
        case alt_58
        when 1
          # at line 392:33: '=' variable_initializer
          match(T__51, TOKENS_FOLLOWING_T__51_IN_variable_declarator_1716)
          @state.following.push(TOKENS_FOLLOWING_variable_initializer_IN_variable_declarator_1718)
          variable_initializer
          @state.following.pop

        end

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 43)
        memoize(__method__, variable_declarator_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule constant_declarators_rest
    # 
    # (in samples/Java.g)
    # 395:1: constant_declarators_rest : constant_declarator_rest ( ',' constant_declarator )* ;
    # 
    def constant_declarators_rest
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 44)
      constant_declarators_rest_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 396:9: constant_declarator_rest ( ',' constant_declarator )*
        @state.following.push(TOKENS_FOLLOWING_constant_declarator_rest_IN_constant_declarators_rest_1743)
        constant_declarator_rest
        @state.following.pop
        # at line 396:34: ( ',' constant_declarator )*
        while true # decision 59
          alt_59 = 2
          look_59_0 = @input.peek(1)

          if (look_59_0 == T__41) 
            alt_59 = 1

          end
          case alt_59
          when 1
            # at line 396:35: ',' constant_declarator
            match(T__41, TOKENS_FOLLOWING_T__41_IN_constant_declarators_rest_1746)
            @state.following.push(TOKENS_FOLLOWING_constant_declarator_IN_constant_declarators_rest_1748)
            constant_declarator
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
        # trace_out(__method__, 44)
        memoize(__method__, constant_declarators_rest_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule constant_declarator_rest
    # 
    # (in samples/Java.g)
    # 399:1: constant_declarator_rest : ( '[' ']' )* '=' variable_initializer ;
    # 
    def constant_declarator_rest
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 45)
      constant_declarator_rest_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 400:9: ( '[' ']' )* '=' variable_initializer
        # at line 400:9: ( '[' ']' )*
        while true # decision 60
          alt_60 = 2
          look_60_0 = @input.peek(1)

          if (look_60_0 == T__48) 
            alt_60 = 1

          end
          case alt_60
          when 1
            # at line 400:10: '[' ']'
            match(T__48, TOKENS_FOLLOWING_T__48_IN_constant_declarator_rest_1770)
            match(T__49, TOKENS_FOLLOWING_T__49_IN_constant_declarator_rest_1772)

          else
            break # out of loop for decision 60
          end
        end # loop for decision 60
        match(T__51, TOKENS_FOLLOWING_T__51_IN_constant_declarator_rest_1776)
        @state.following.push(TOKENS_FOLLOWING_variable_initializer_IN_constant_declarator_rest_1778)
        variable_initializer
        @state.following.pop

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 45)
        memoize(__method__, constant_declarator_rest_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule variable_declarator_id
    # 
    # (in samples/Java.g)
    # 403:1: variable_declarator_id : Identifier ( '[' ']' )* ;
    # 
    def variable_declarator_id
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 46)
      variable_declarator_id_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 404:9: Identifier ( '[' ']' )*
        match(Identifier, TOKENS_FOLLOWING_Identifier_IN_variable_declarator_id_1801)
        # at line 404:20: ( '[' ']' )*
        while true # decision 61
          alt_61 = 2
          look_61_0 = @input.peek(1)

          if (look_61_0 == T__48) 
            alt_61 = 1

          end
          case alt_61
          when 1
            # at line 404:21: '[' ']'
            match(T__48, TOKENS_FOLLOWING_T__48_IN_variable_declarator_id_1804)
            match(T__49, TOKENS_FOLLOWING_T__49_IN_variable_declarator_id_1806)

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
        # trace_out(__method__, 46)
        memoize(__method__, variable_declarator_id_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule variable_initializer
    # 
    # (in samples/Java.g)
    # 407:1: variable_initializer : ( array_initializer | expression );
    # 
    def variable_initializer
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 47)
      variable_initializer_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 408:5: ( array_initializer | expression )
        alt_62 = 2
        look_62_0 = @input.peek(1)

        if (look_62_0 == T__44) 
          alt_62 = 1
        elsif (look_62_0 == Identifier || look_62_0.between?(FloatingPointLiteral, DecimalLiteral) || look_62_0 == T__47 || look_62_0.between?(T__56, T__63) || look_62_0.between?(T__65, T__66) || look_62_0.between?(T__69, T__72) || look_62_0.between?(T__105, T__106) || look_62_0.between?(T__109, T__113)) 
          alt_62 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 62, 0)
          raise nvae
        end
        case alt_62
        when 1
          # at line 408:9: array_initializer
          @state.following.push(TOKENS_FOLLOWING_array_initializer_IN_variable_initializer_1827)
          array_initializer
          @state.following.pop

        when 2
          # at line 409:9: expression
          @state.following.push(TOKENS_FOLLOWING_expression_IN_variable_initializer_1837)
          expression
          @state.following.pop

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 47)
        memoize(__method__, variable_initializer_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule array_initializer
    # 
    # (in samples/Java.g)
    # 412:1: array_initializer : '{' ( variable_initializer ( ',' variable_initializer )* ( ',' )? )? '}' ;
    # 
    def array_initializer
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 48)
      array_initializer_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 413:9: '{' ( variable_initializer ( ',' variable_initializer )* ( ',' )? )? '}'
        match(T__44, TOKENS_FOLLOWING_T__44_IN_array_initializer_1864)
        # at line 413:13: ( variable_initializer ( ',' variable_initializer )* ( ',' )? )?
        alt_65 = 2
        look_65_0 = @input.peek(1)

        if (look_65_0 == Identifier || look_65_0.between?(FloatingPointLiteral, DecimalLiteral) || look_65_0 == T__44 || look_65_0 == T__47 || look_65_0.between?(T__56, T__63) || look_65_0.between?(T__65, T__66) || look_65_0.between?(T__69, T__72) || look_65_0.between?(T__105, T__106) || look_65_0.between?(T__109, T__113)) 
          alt_65 = 1
        end
        case alt_65
        when 1
          # at line 413:14: variable_initializer ( ',' variable_initializer )* ( ',' )?
          @state.following.push(TOKENS_FOLLOWING_variable_initializer_IN_array_initializer_1867)
          variable_initializer
          @state.following.pop
          # at line 413:35: ( ',' variable_initializer )*
          while true # decision 63
            alt_63 = 2
            look_63_0 = @input.peek(1)

            if (look_63_0 == T__41) 
              look_63_1 = @input.peek(2)

              if (look_63_1 == Identifier || look_63_1.between?(FloatingPointLiteral, DecimalLiteral) || look_63_1 == T__44 || look_63_1 == T__47 || look_63_1.between?(T__56, T__63) || look_63_1.between?(T__65, T__66) || look_63_1.between?(T__69, T__72) || look_63_1.between?(T__105, T__106) || look_63_1.between?(T__109, T__113)) 
                alt_63 = 1

              end

            end
            case alt_63
            when 1
              # at line 413:36: ',' variable_initializer
              match(T__41, TOKENS_FOLLOWING_T__41_IN_array_initializer_1870)
              @state.following.push(TOKENS_FOLLOWING_variable_initializer_IN_array_initializer_1872)
              variable_initializer
              @state.following.pop

            else
              break # out of loop for decision 63
            end
          end # loop for decision 63
          # at line 413:63: ( ',' )?
          alt_64 = 2
          look_64_0 = @input.peek(1)

          if (look_64_0 == T__41) 
            alt_64 = 1
          end
          case alt_64
          when 1
            # at line 413:64: ','
            match(T__41, TOKENS_FOLLOWING_T__41_IN_array_initializer_1877)

          end

        end
        match(T__45, TOKENS_FOLLOWING_T__45_IN_array_initializer_1884)

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 48)
        memoize(__method__, array_initializer_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule modifier
    # 
    # (in samples/Java.g)
    # 416:1: modifier : ( annotation | 'public' | 'protected' | 'private' | 'static' | 'abstract' | 'final' | 'native' | 'synchronized' | 'transient' | 'volatile' | 'strictfp' );
    # 
    def modifier
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 49)
      modifier_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 417:5: ( annotation | 'public' | 'protected' | 'private' | 'static' | 'abstract' | 'final' | 'native' | 'synchronized' | 'transient' | 'volatile' | 'strictfp' )
        alt_66 = 12
        case look_66 = @input.peek(1)
        when T__73 then alt_66 = 1
        when T__31 then alt_66 = 2
        when T__32 then alt_66 = 3
        when T__33 then alt_66 = 4
        when T__28 then alt_66 = 5
        when T__34 then alt_66 = 6
        when T__35 then alt_66 = 7
        when T__52 then alt_66 = 8
        when T__53 then alt_66 = 9
        when T__54 then alt_66 = 10
        when T__55 then alt_66 = 11
        when T__36 then alt_66 = 12
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          nvae = NoViableAlternative("", 66, 0)
          raise nvae
        end
        case alt_66
        when 1
          # at line 417:9: annotation
          @state.following.push(TOKENS_FOLLOWING_annotation_IN_modifier_1903)
          annotation
          @state.following.pop

        when 2
          # at line 418:9: 'public'
          match(T__31, TOKENS_FOLLOWING_T__31_IN_modifier_1913)

        when 3
          # at line 419:9: 'protected'
          match(T__32, TOKENS_FOLLOWING_T__32_IN_modifier_1923)

        when 4
          # at line 420:9: 'private'
          match(T__33, TOKENS_FOLLOWING_T__33_IN_modifier_1933)

        when 5
          # at line 421:9: 'static'
          match(T__28, TOKENS_FOLLOWING_T__28_IN_modifier_1943)

        when 6
          # at line 422:9: 'abstract'
          match(T__34, TOKENS_FOLLOWING_T__34_IN_modifier_1953)

        when 7
          # at line 423:9: 'final'
          match(T__35, TOKENS_FOLLOWING_T__35_IN_modifier_1963)

        when 8
          # at line 424:9: 'native'
          match(T__52, TOKENS_FOLLOWING_T__52_IN_modifier_1973)

        when 9
          # at line 425:9: 'synchronized'
          match(T__53, TOKENS_FOLLOWING_T__53_IN_modifier_1983)

        when 10
          # at line 426:9: 'transient'
          match(T__54, TOKENS_FOLLOWING_T__54_IN_modifier_1993)

        when 11
          # at line 427:9: 'volatile'
          match(T__55, TOKENS_FOLLOWING_T__55_IN_modifier_2003)

        when 12
          # at line 428:9: 'strictfp'
          match(T__36, TOKENS_FOLLOWING_T__36_IN_modifier_2013)

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 49)
        memoize(__method__, modifier_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule package_or_type_name
    # 
    # (in samples/Java.g)
    # 431:1: package_or_type_name : qualified_name ;
    # 
    def package_or_type_name
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 50)
      package_or_type_name_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 432:9: qualified_name
        @state.following.push(TOKENS_FOLLOWING_qualified_name_IN_package_or_type_name_2032)
        qualified_name
        @state.following.pop

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 50)
        memoize(__method__, package_or_type_name_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule enum_constant_name
    # 
    # (in samples/Java.g)
    # 435:1: enum_constant_name : Identifier ;
    # 
    def enum_constant_name
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 51)
      enum_constant_name_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 436:9: Identifier
        match(Identifier, TOKENS_FOLLOWING_Identifier_IN_enum_constant_name_2051)

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 51)
        memoize(__method__, enum_constant_name_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule type_name
    # 
    # (in samples/Java.g)
    # 439:1: type_name : qualified_name ;
    # 
    def type_name
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 52)
      type_name_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 440:9: qualified_name
        @state.following.push(TOKENS_FOLLOWING_qualified_name_IN_type_name_2070)
        qualified_name
        @state.following.pop

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 52)
        memoize(__method__, type_name_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule type
    # 
    # (in samples/Java.g)
    # 443:1: type : ( class_or_interface_type ( '[' ']' )* | primitive_type ( '[' ']' )* );
    # 
    def type
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 53)
      type_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 444:2: ( class_or_interface_type ( '[' ']' )* | primitive_type ( '[' ']' )* )
        alt_69 = 2
        look_69_0 = @input.peek(1)

        if (look_69_0 == Identifier) 
          alt_69 = 1
        elsif (look_69_0.between?(T__56, T__63)) 
          alt_69 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 69, 0)
          raise nvae
        end
        case alt_69
        when 1
          # at line 444:4: class_or_interface_type ( '[' ']' )*
          @state.following.push(TOKENS_FOLLOWING_class_or_interface_type_IN_type_2084)
          class_or_interface_type
          @state.following.pop
          # at line 444:28: ( '[' ']' )*
          while true # decision 67
            alt_67 = 2
            look_67_0 = @input.peek(1)

            if (look_67_0 == T__48) 
              alt_67 = 1

            end
            case alt_67
            when 1
              # at line 444:29: '[' ']'
              match(T__48, TOKENS_FOLLOWING_T__48_IN_type_2087)
              match(T__49, TOKENS_FOLLOWING_T__49_IN_type_2089)

            else
              break # out of loop for decision 67
            end
          end # loop for decision 67

        when 2
          # at line 445:4: primitive_type ( '[' ']' )*
          @state.following.push(TOKENS_FOLLOWING_primitive_type_IN_type_2096)
          primitive_type
          @state.following.pop
          # at line 445:19: ( '[' ']' )*
          while true # decision 68
            alt_68 = 2
            look_68_0 = @input.peek(1)

            if (look_68_0 == T__48) 
              alt_68 = 1

            end
            case alt_68
            when 1
              # at line 445:20: '[' ']'
              match(T__48, TOKENS_FOLLOWING_T__48_IN_type_2099)
              match(T__49, TOKENS_FOLLOWING_T__49_IN_type_2101)

            else
              break # out of loop for decision 68
            end
          end # loop for decision 68

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 53)
        memoize(__method__, type_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule class_or_interface_type
    # 
    # (in samples/Java.g)
    # 448:1: class_or_interface_type : Identifier ( type_arguments )? ( '.' Identifier ( type_arguments )? )* ;
    # 
    def class_or_interface_type
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 54)
      class_or_interface_type_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 449:4: Identifier ( type_arguments )? ( '.' Identifier ( type_arguments )? )*
        match(Identifier, TOKENS_FOLLOWING_Identifier_IN_class_or_interface_type_2114)
        # at line 449:15: ( type_arguments )?
        alt_70 = 2
        look_70_0 = @input.peek(1)

        if (look_70_0 == T__40) 
          look_70_1 = @input.peek(2)

          if (look_70_1 == Identifier || look_70_1.between?(T__56, T__64)) 
            alt_70 = 1
          end
        end
        case alt_70
        when 1
          # at line 0:0: type_arguments
          @state.following.push(TOKENS_FOLLOWING_type_arguments_IN_class_or_interface_type_2116)
          type_arguments
          @state.following.pop

        end
        # at line 449:31: ( '.' Identifier ( type_arguments )? )*
        while true # decision 72
          alt_72 = 2
          look_72_0 = @input.peek(1)

          if (look_72_0 == T__29) 
            alt_72 = 1

          end
          case alt_72
          when 1
            # at line 449:32: '.' Identifier ( type_arguments )?
            match(T__29, TOKENS_FOLLOWING_T__29_IN_class_or_interface_type_2120)
            match(Identifier, TOKENS_FOLLOWING_Identifier_IN_class_or_interface_type_2122)
            # at line 449:47: ( type_arguments )?
            alt_71 = 2
            look_71_0 = @input.peek(1)

            if (look_71_0 == T__40) 
              look_71_1 = @input.peek(2)

              if (look_71_1 == Identifier || look_71_1.between?(T__56, T__64)) 
                alt_71 = 1
              end
            end
            case alt_71
            when 1
              # at line 0:0: type_arguments
              @state.following.push(TOKENS_FOLLOWING_type_arguments_IN_class_or_interface_type_2124)
              type_arguments
              @state.following.pop

            end

          else
            break # out of loop for decision 72
          end
        end # loop for decision 72

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 54)
        memoize(__method__, class_or_interface_type_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule primitive_type
    # 
    # (in samples/Java.g)
    # 452:1: primitive_type : ( 'boolean' | 'char' | 'byte' | 'short' | 'int' | 'long' | 'float' | 'double' );
    # 
    def primitive_type
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 55)
      primitive_type_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 
        if @input.peek(1).between?(T__56, T__63)
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
        # trace_out(__method__, 55)
        memoize(__method__, primitive_type_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule variable_modifier
    # 
    # (in samples/Java.g)
    # 463:1: variable_modifier : ( 'final' | annotation );
    # 
    def variable_modifier
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 56)
      variable_modifier_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 464:5: ( 'final' | annotation )
        alt_73 = 2
        look_73_0 = @input.peek(1)

        if (look_73_0 == T__35) 
          alt_73 = 1
        elsif (look_73_0 == T__73) 
          alt_73 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 73, 0)
          raise nvae
        end
        case alt_73
        when 1
          # at line 464:9: 'final'
          match(T__35, TOKENS_FOLLOWING_T__35_IN_variable_modifier_2233)

        when 2
          # at line 465:9: annotation
          @state.following.push(TOKENS_FOLLOWING_annotation_IN_variable_modifier_2243)
          annotation
          @state.following.pop

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 56)
        memoize(__method__, variable_modifier_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule type_arguments
    # 
    # (in samples/Java.g)
    # 468:1: type_arguments : '<' type_argument ( ',' type_argument )* '>' ;
    # 
    def type_arguments
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 57)
      type_arguments_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 469:9: '<' type_argument ( ',' type_argument )* '>'
        match(T__40, TOKENS_FOLLOWING_T__40_IN_type_arguments_2262)
        @state.following.push(TOKENS_FOLLOWING_type_argument_IN_type_arguments_2264)
        type_argument
        @state.following.pop
        # at line 469:27: ( ',' type_argument )*
        while true # decision 74
          alt_74 = 2
          look_74_0 = @input.peek(1)

          if (look_74_0 == T__41) 
            alt_74 = 1

          end
          case alt_74
          when 1
            # at line 469:28: ',' type_argument
            match(T__41, TOKENS_FOLLOWING_T__41_IN_type_arguments_2267)
            @state.following.push(TOKENS_FOLLOWING_type_argument_IN_type_arguments_2269)
            type_argument
            @state.following.pop

          else
            break # out of loop for decision 74
          end
        end # loop for decision 74
        match(T__42, TOKENS_FOLLOWING_T__42_IN_type_arguments_2273)

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 57)
        memoize(__method__, type_arguments_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule type_argument
    # 
    # (in samples/Java.g)
    # 472:1: type_argument : ( type | '?' ( ( 'extends' | 'super' ) type )? );
    # 
    def type_argument
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 58)
      type_argument_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 473:5: ( type | '?' ( ( 'extends' | 'super' ) type )? )
        alt_76 = 2
        look_76_0 = @input.peek(1)

        if (look_76_0 == Identifier || look_76_0.between?(T__56, T__63)) 
          alt_76 = 1
        elsif (look_76_0 == T__64) 
          alt_76 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 76, 0)
          raise nvae
        end
        case alt_76
        when 1
          # at line 473:9: type
          @state.following.push(TOKENS_FOLLOWING_type_IN_type_argument_2296)
          type
          @state.following.pop

        when 2
          # at line 474:9: '?' ( ( 'extends' | 'super' ) type )?
          match(T__64, TOKENS_FOLLOWING_T__64_IN_type_argument_2306)
          # at line 474:13: ( ( 'extends' | 'super' ) type )?
          alt_75 = 2
          look_75_0 = @input.peek(1)

          if (look_75_0 == T__38 || look_75_0 == T__65) 
            alt_75 = 1
          end
          case alt_75
          when 1
            # at line 474:14: ( 'extends' | 'super' ) type
            if @input.peek(1) == T__38 || @input.peek(1) == T__65
              @input.consume
              @state.error_recovery = false
            else
              @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

              mse = MismatchedSet(nil)
              raise mse
            end


            @state.following.push(TOKENS_FOLLOWING_type_IN_type_argument_2317)
            type
            @state.following.pop

          end

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 58)
        memoize(__method__, type_argument_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule qualified_name_list
    # 
    # (in samples/Java.g)
    # 477:1: qualified_name_list : qualified_name ( ',' qualified_name )* ;
    # 
    def qualified_name_list
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 59)
      qualified_name_list_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 478:9: qualified_name ( ',' qualified_name )*
        @state.following.push(TOKENS_FOLLOWING_qualified_name_IN_qualified_name_list_2342)
        qualified_name
        @state.following.pop
        # at line 478:24: ( ',' qualified_name )*
        while true # decision 77
          alt_77 = 2
          look_77_0 = @input.peek(1)

          if (look_77_0 == T__41) 
            alt_77 = 1

          end
          case alt_77
          when 1
            # at line 478:25: ',' qualified_name
            match(T__41, TOKENS_FOLLOWING_T__41_IN_qualified_name_list_2345)
            @state.following.push(TOKENS_FOLLOWING_qualified_name_IN_qualified_name_list_2347)
            qualified_name
            @state.following.pop

          else
            break # out of loop for decision 77
          end
        end # loop for decision 77

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 59)
        memoize(__method__, qualified_name_list_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule formal_parameters
    # 
    # (in samples/Java.g)
    # 481:1: formal_parameters : '(' ( formal_parameter_decls )? ')' ;
    # 
    def formal_parameters
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 60)
      formal_parameters_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 482:9: '(' ( formal_parameter_decls )? ')'
        match(T__66, TOKENS_FOLLOWING_T__66_IN_formal_parameters_2368)
        # at line 482:13: ( formal_parameter_decls )?
        alt_78 = 2
        look_78_0 = @input.peek(1)

        if (look_78_0 == Identifier || look_78_0 == T__35 || look_78_0.between?(T__56, T__63) || look_78_0 == T__73) 
          alt_78 = 1
        end
        case alt_78
        when 1
          # at line 0:0: formal_parameter_decls
          @state.following.push(TOKENS_FOLLOWING_formal_parameter_decls_IN_formal_parameters_2370)
          formal_parameter_decls
          @state.following.pop

        end
        match(T__67, TOKENS_FOLLOWING_T__67_IN_formal_parameters_2373)

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 60)
        memoize(__method__, formal_parameters_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule formal_parameter_decls
    # 
    # (in samples/Java.g)
    # 485:1: formal_parameter_decls : variable_modifiers type formal_parameter_decls_rest ;
    # 
    def formal_parameter_decls
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 61)
      formal_parameter_decls_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 486:9: variable_modifiers type formal_parameter_decls_rest
        @state.following.push(TOKENS_FOLLOWING_variable_modifiers_IN_formal_parameter_decls_2396)
        variable_modifiers
        @state.following.pop
        @state.following.push(TOKENS_FOLLOWING_type_IN_formal_parameter_decls_2398)
        type
        @state.following.pop
        @state.following.push(TOKENS_FOLLOWING_formal_parameter_decls_rest_IN_formal_parameter_decls_2400)
        formal_parameter_decls_rest
        @state.following.pop

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 61)
        memoize(__method__, formal_parameter_decls_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule formal_parameter_decls_rest
    # 
    # (in samples/Java.g)
    # 489:1: formal_parameter_decls_rest : ( variable_declarator_id ( ',' formal_parameter_decls )? | '...' variable_declarator_id );
    # 
    def formal_parameter_decls_rest
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 62)
      formal_parameter_decls_rest_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 490:5: ( variable_declarator_id ( ',' formal_parameter_decls )? | '...' variable_declarator_id )
        alt_80 = 2
        look_80_0 = @input.peek(1)

        if (look_80_0 == Identifier) 
          alt_80 = 1
        elsif (look_80_0 == T__68) 
          alt_80 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 80, 0)
          raise nvae
        end
        case alt_80
        when 1
          # at line 490:9: variable_declarator_id ( ',' formal_parameter_decls )?
          @state.following.push(TOKENS_FOLLOWING_variable_declarator_id_IN_formal_parameter_decls_rest_2423)
          variable_declarator_id
          @state.following.pop
          # at line 490:32: ( ',' formal_parameter_decls )?
          alt_79 = 2
          look_79_0 = @input.peek(1)

          if (look_79_0 == T__41) 
            alt_79 = 1
          end
          case alt_79
          when 1
            # at line 490:33: ',' formal_parameter_decls
            match(T__41, TOKENS_FOLLOWING_T__41_IN_formal_parameter_decls_rest_2426)
            @state.following.push(TOKENS_FOLLOWING_formal_parameter_decls_IN_formal_parameter_decls_rest_2428)
            formal_parameter_decls
            @state.following.pop

          end

        when 2
          # at line 491:9: '...' variable_declarator_id
          match(T__68, TOKENS_FOLLOWING_T__68_IN_formal_parameter_decls_rest_2440)
          @state.following.push(TOKENS_FOLLOWING_variable_declarator_id_IN_formal_parameter_decls_rest_2442)
          variable_declarator_id
          @state.following.pop

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 62)
        memoize(__method__, formal_parameter_decls_rest_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule method_body
    # 
    # (in samples/Java.g)
    # 494:1: method_body : block ;
    # 
    def method_body
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 63)
      method_body_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 495:9: block
        @state.following.push(TOKENS_FOLLOWING_block_IN_method_body_2465)
        block
        @state.following.pop

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 63)
        memoize(__method__, method_body_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule constructor_body
    # 
    # (in samples/Java.g)
    # 498:1: constructor_body : '{' ( explicit_constructor_invocation )? ( block_statement )* '}' ;
    # 
    def constructor_body
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 64)
      constructor_body_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 499:9: '{' ( explicit_constructor_invocation )? ( block_statement )* '}'
        match(T__44, TOKENS_FOLLOWING_T__44_IN_constructor_body_2484)
        # at line 499:13: ( explicit_constructor_invocation )?
        alt_81 = 2
        alt_81 = @dfa81.predict(@input)
        case alt_81
        when 1
          # at line 0:0: explicit_constructor_invocation
          @state.following.push(TOKENS_FOLLOWING_explicit_constructor_invocation_IN_constructor_body_2486)
          explicit_constructor_invocation
          @state.following.pop

        end
        # at line 499:46: ( block_statement )*
        while true # decision 82
          alt_82 = 2
          look_82_0 = @input.peek(1)

          if (look_82_0.between?(Identifier, ASSERT) || look_82_0 == T__26 || look_82_0 == T__28 || look_82_0.between?(T__31, T__37) || look_82_0 == T__44 || look_82_0.between?(T__46, T__47) || look_82_0 == T__53 || look_82_0.between?(T__56, T__63) || look_82_0.between?(T__65, T__66) || look_82_0.between?(T__69, T__73) || look_82_0 == T__76 || look_82_0.between?(T__78, T__81) || look_82_0.between?(T__83, T__87) || look_82_0.between?(T__105, T__106) || look_82_0.between?(T__109, T__113)) 
            alt_82 = 1

          end
          case alt_82
          when 1
            # at line 0:0: block_statement
            @state.following.push(TOKENS_FOLLOWING_block_statement_IN_constructor_body_2489)
            block_statement
            @state.following.pop

          else
            break # out of loop for decision 82
          end
        end # loop for decision 82
        match(T__45, TOKENS_FOLLOWING_T__45_IN_constructor_body_2492)

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 64)
        memoize(__method__, constructor_body_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule explicit_constructor_invocation
    # 
    # (in samples/Java.g)
    # 502:1: explicit_constructor_invocation : ( ( non_wildcard_type_arguments )? ( 'this' | 'super' ) arguments ';' | primary '.' ( non_wildcard_type_arguments )? 'super' arguments ';' );
    # 
    def explicit_constructor_invocation
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 65)
      explicit_constructor_invocation_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 503:5: ( ( non_wildcard_type_arguments )? ( 'this' | 'super' ) arguments ';' | primary '.' ( non_wildcard_type_arguments )? 'super' arguments ';' )
        alt_85 = 2
        alt_85 = @dfa85.predict(@input)
        case alt_85
        when 1
          # at line 503:9: ( non_wildcard_type_arguments )? ( 'this' | 'super' ) arguments ';'
          # at line 503:9: ( non_wildcard_type_arguments )?
          alt_83 = 2
          look_83_0 = @input.peek(1)

          if (look_83_0 == T__40) 
            alt_83 = 1
          end
          case alt_83
          when 1
            # at line 0:0: non_wildcard_type_arguments
            @state.following.push(TOKENS_FOLLOWING_non_wildcard_type_arguments_IN_explicit_constructor_invocation_2511)
            non_wildcard_type_arguments
            @state.following.pop

          end
          if @input.peek(1) == T__65 || @input.peek(1) == T__69
            @input.consume
            @state.error_recovery = false
          else
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

            mse = MismatchedSet(nil)
            raise mse
          end


          @state.following.push(TOKENS_FOLLOWING_arguments_IN_explicit_constructor_invocation_2522)
          arguments
          @state.following.pop
          match(T__26, TOKENS_FOLLOWING_T__26_IN_explicit_constructor_invocation_2524)

        when 2
          # at line 504:9: primary '.' ( non_wildcard_type_arguments )? 'super' arguments ';'
          @state.following.push(TOKENS_FOLLOWING_primary_IN_explicit_constructor_invocation_2534)
          primary
          @state.following.pop
          match(T__29, TOKENS_FOLLOWING_T__29_IN_explicit_constructor_invocation_2536)
          # at line 504:21: ( non_wildcard_type_arguments )?
          alt_84 = 2
          look_84_0 = @input.peek(1)

          if (look_84_0 == T__40) 
            alt_84 = 1
          end
          case alt_84
          when 1
            # at line 0:0: non_wildcard_type_arguments
            @state.following.push(TOKENS_FOLLOWING_non_wildcard_type_arguments_IN_explicit_constructor_invocation_2538)
            non_wildcard_type_arguments
            @state.following.pop

          end
          match(T__65, TOKENS_FOLLOWING_T__65_IN_explicit_constructor_invocation_2541)
          @state.following.push(TOKENS_FOLLOWING_arguments_IN_explicit_constructor_invocation_2543)
          arguments
          @state.following.pop
          match(T__26, TOKENS_FOLLOWING_T__26_IN_explicit_constructor_invocation_2545)

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 65)
        memoize(__method__, explicit_constructor_invocation_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule qualified_name
    # 
    # (in samples/Java.g)
    # 508:1: qualified_name : Identifier ( '.' Identifier )* ;
    # 
    def qualified_name
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 66)
      qualified_name_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 509:9: Identifier ( '.' Identifier )*
        match(Identifier, TOKENS_FOLLOWING_Identifier_IN_qualified_name_2565)
        # at line 509:20: ( '.' Identifier )*
        while true # decision 86
          alt_86 = 2
          look_86_0 = @input.peek(1)

          if (look_86_0 == T__29) 
            look_86_2 = @input.peek(2)

            if (look_86_2 == Identifier) 
              alt_86 = 1

            end

          end
          case alt_86
          when 1
            # at line 509:21: '.' Identifier
            match(T__29, TOKENS_FOLLOWING_T__29_IN_qualified_name_2568)
            match(Identifier, TOKENS_FOLLOWING_Identifier_IN_qualified_name_2570)

          else
            break # out of loop for decision 86
          end
        end # loop for decision 86

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 66)
        memoize(__method__, qualified_name_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule literal
    # 
    # (in samples/Java.g)
    # 512:1: literal : ( integer_literal | FloatingPointLiteral | CharacterLiteral | StringLiteral | boolean_literal | 'null' );
    # 
    def literal
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 67)
      literal_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 513:5: ( integer_literal | FloatingPointLiteral | CharacterLiteral | StringLiteral | boolean_literal | 'null' )
        alt_87 = 6
        case look_87 = @input.peek(1)
        when HexLiteral, OctalLiteral, DecimalLiteral then alt_87 = 1
        when FloatingPointLiteral then alt_87 = 2
        when CharacterLiteral then alt_87 = 3
        when StringLiteral then alt_87 = 4
        when T__71, T__72 then alt_87 = 5
        when T__70 then alt_87 = 6
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          nvae = NoViableAlternative("", 87, 0)
          raise nvae
        end
        case alt_87
        when 1
          # at line 513:9: integer_literal
          @state.following.push(TOKENS_FOLLOWING_integer_literal_IN_literal_2596)
          integer_literal
          @state.following.pop

        when 2
          # at line 514:9: FloatingPointLiteral
          match(FloatingPointLiteral, TOKENS_FOLLOWING_FloatingPointLiteral_IN_literal_2606)

        when 3
          # at line 515:9: CharacterLiteral
          match(CharacterLiteral, TOKENS_FOLLOWING_CharacterLiteral_IN_literal_2616)

        when 4
          # at line 516:9: StringLiteral
          match(StringLiteral, TOKENS_FOLLOWING_StringLiteral_IN_literal_2626)

        when 5
          # at line 517:9: boolean_literal
          @state.following.push(TOKENS_FOLLOWING_boolean_literal_IN_literal_2636)
          boolean_literal
          @state.following.pop

        when 6
          # at line 518:9: 'null'
          match(T__70, TOKENS_FOLLOWING_T__70_IN_literal_2646)

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 67)
        memoize(__method__, literal_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule integer_literal
    # 
    # (in samples/Java.g)
    # 521:1: integer_literal : ( HexLiteral | OctalLiteral | DecimalLiteral );
    # 
    def integer_literal
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 68)
      integer_literal_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 
        if @input.peek(1).between?(HexLiteral, DecimalLiteral)
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
        # trace_out(__method__, 68)
        memoize(__method__, integer_literal_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule boolean_literal
    # 
    # (in samples/Java.g)
    # 527:1: boolean_literal : ( 'true' | 'false' );
    # 
    def boolean_literal
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 69)
      boolean_literal_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 
        if @input.peek(1).between?(T__71, T__72)
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
        # trace_out(__method__, 69)
        memoize(__method__, boolean_literal_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule annotations
    # 
    # (in samples/Java.g)
    # 534:1: annotations : ( annotation )+ ;
    # 
    def annotations
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 70)
      annotations_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 535:9: ( annotation )+
        # at file 535:9: ( annotation )+
        match_count_88 = 0
        while true
          alt_88 = 2
          look_88_0 = @input.peek(1)

          if (look_88_0 == T__73) 
            look_88_2 = @input.peek(2)

            if (look_88_2 == Identifier) 
              look_88_3 = @input.peek(3)

              if (syntactic_predicate?(:synpred_128_java!)) 
                alt_88 = 1

              end

            end

          end
          case alt_88
          when 1
            # at line 0:0: annotation
            @state.following.push(TOKENS_FOLLOWING_annotation_IN_annotations_2735)
            annotation
            @state.following.pop

          else
            match_count_88 > 0 and break
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

            eee = EarlyExit(88)


            raise eee
          end
          match_count_88 += 1
        end


        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 70)
        memoize(__method__, annotations_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule annotation
    # 
    # (in samples/Java.g)
    # 538:1: annotation : '@' annotation_name ( '(' ( element_value_pairs | element_value )? ')' )? ;
    # 
    def annotation
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 71)
      annotation_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 539:9: '@' annotation_name ( '(' ( element_value_pairs | element_value )? ')' )?
        match(T__73, TOKENS_FOLLOWING_T__73_IN_annotation_2755)
        @state.following.push(TOKENS_FOLLOWING_annotation_name_IN_annotation_2757)
        annotation_name
        @state.following.pop
        # at line 539:29: ( '(' ( element_value_pairs | element_value )? ')' )?
        alt_90 = 2
        look_90_0 = @input.peek(1)

        if (look_90_0 == T__66) 
          alt_90 = 1
        end
        case alt_90
        when 1
          # at line 539:31: '(' ( element_value_pairs | element_value )? ')'
          match(T__66, TOKENS_FOLLOWING_T__66_IN_annotation_2761)
          # at line 539:35: ( element_value_pairs | element_value )?
          alt_89 = 3
          look_89_0 = @input.peek(1)

          if (look_89_0 == Identifier) 
            look_89_1 = @input.peek(2)

            if (look_89_1 == T__51) 
              alt_89 = 1
            elsif (look_89_1.between?(T__29, T__30) || look_89_1 == T__40 || look_89_1.between?(T__42, T__43) || look_89_1 == T__48 || look_89_1 == T__64 || look_89_1.between?(T__66, T__67) || look_89_1.between?(T__98, T__110)) 
              alt_89 = 2
            end
          elsif (look_89_0.between?(FloatingPointLiteral, DecimalLiteral) || look_89_0 == T__44 || look_89_0 == T__47 || look_89_0.between?(T__56, T__63) || look_89_0.between?(T__65, T__66) || look_89_0.between?(T__69, T__73) || look_89_0.between?(T__105, T__106) || look_89_0.between?(T__109, T__113)) 
            alt_89 = 2
          end
          case alt_89
          when 1
            # at line 539:37: element_value_pairs
            @state.following.push(TOKENS_FOLLOWING_element_value_pairs_IN_annotation_2765)
            element_value_pairs
            @state.following.pop

          when 2
            # at line 539:59: element_value
            @state.following.push(TOKENS_FOLLOWING_element_value_IN_annotation_2769)
            element_value
            @state.following.pop

          end
          match(T__67, TOKENS_FOLLOWING_T__67_IN_annotation_2774)

        end

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 71)
        memoize(__method__, annotation_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule annotation_name
    # 
    # (in samples/Java.g)
    # 542:1: annotation_name : Identifier ( '.' Identifier )* ;
    # 
    def annotation_name
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 72)
      annotation_name_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 543:7: Identifier ( '.' Identifier )*
        match(Identifier, TOKENS_FOLLOWING_Identifier_IN_annotation_name_2798)
        # at line 543:18: ( '.' Identifier )*
        while true # decision 91
          alt_91 = 2
          look_91_0 = @input.peek(1)

          if (look_91_0 == T__29) 
            alt_91 = 1

          end
          case alt_91
          when 1
            # at line 543:19: '.' Identifier
            match(T__29, TOKENS_FOLLOWING_T__29_IN_annotation_name_2801)
            match(Identifier, TOKENS_FOLLOWING_Identifier_IN_annotation_name_2803)

          else
            break # out of loop for decision 91
          end
        end # loop for decision 91

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 72)
        memoize(__method__, annotation_name_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule element_value_pairs
    # 
    # (in samples/Java.g)
    # 546:1: element_value_pairs : element_value_pair ( ',' element_value_pair )* ;
    # 
    def element_value_pairs
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 73)
      element_value_pairs_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 547:9: element_value_pair ( ',' element_value_pair )*
        @state.following.push(TOKENS_FOLLOWING_element_value_pair_IN_element_value_pairs_2824)
        element_value_pair
        @state.following.pop
        # at line 547:28: ( ',' element_value_pair )*
        while true # decision 92
          alt_92 = 2
          look_92_0 = @input.peek(1)

          if (look_92_0 == T__41) 
            alt_92 = 1

          end
          case alt_92
          when 1
            # at line 547:29: ',' element_value_pair
            match(T__41, TOKENS_FOLLOWING_T__41_IN_element_value_pairs_2827)
            @state.following.push(TOKENS_FOLLOWING_element_value_pair_IN_element_value_pairs_2829)
            element_value_pair
            @state.following.pop

          else
            break # out of loop for decision 92
          end
        end # loop for decision 92

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 73)
        memoize(__method__, element_value_pairs_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule element_value_pair
    # 
    # (in samples/Java.g)
    # 550:1: element_value_pair : Identifier '=' element_value ;
    # 
    def element_value_pair
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 74)
      element_value_pair_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 551:9: Identifier '=' element_value
        match(Identifier, TOKENS_FOLLOWING_Identifier_IN_element_value_pair_2850)
        match(T__51, TOKENS_FOLLOWING_T__51_IN_element_value_pair_2852)
        @state.following.push(TOKENS_FOLLOWING_element_value_IN_element_value_pair_2854)
        element_value
        @state.following.pop

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 74)
        memoize(__method__, element_value_pair_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule element_value
    # 
    # (in samples/Java.g)
    # 554:1: element_value : ( conditional_expression | annotation | element_value_array_initializer );
    # 
    def element_value
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 75)
      element_value_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 555:5: ( conditional_expression | annotation | element_value_array_initializer )
        alt_93 = 3
        case look_93 = @input.peek(1)
        when Identifier, FloatingPointLiteral, CharacterLiteral, StringLiteral, HexLiteral, OctalLiteral, DecimalLiteral, T__47, T__56, T__57, T__58, T__59, T__60, T__61, T__62, T__63, T__65, T__66, T__69, T__70, T__71, T__72, T__105, T__106, T__109, T__110, T__111, T__112, T__113 then alt_93 = 1
        when T__73 then alt_93 = 2
        when T__44 then alt_93 = 3
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          nvae = NoViableAlternative("", 93, 0)
          raise nvae
        end
        case alt_93
        when 1
          # at line 555:9: conditional_expression
          @state.following.push(TOKENS_FOLLOWING_conditional_expression_IN_element_value_2877)
          conditional_expression
          @state.following.pop

        when 2
          # at line 556:9: annotation
          @state.following.push(TOKENS_FOLLOWING_annotation_IN_element_value_2887)
          annotation
          @state.following.pop

        when 3
          # at line 557:9: element_value_array_initializer
          @state.following.push(TOKENS_FOLLOWING_element_value_array_initializer_IN_element_value_2897)
          element_value_array_initializer
          @state.following.pop

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 75)
        memoize(__method__, element_value_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule element_value_array_initializer
    # 
    # (in samples/Java.g)
    # 560:1: element_value_array_initializer : '{' ( element_value ( ',' element_value )* )? ( ',' )? '}' ;
    # 
    def element_value_array_initializer
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 76)
      element_value_array_initializer_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 561:9: '{' ( element_value ( ',' element_value )* )? ( ',' )? '}'
        match(T__44, TOKENS_FOLLOWING_T__44_IN_element_value_array_initializer_2920)
        # at line 561:13: ( element_value ( ',' element_value )* )?
        alt_95 = 2
        look_95_0 = @input.peek(1)

        if (look_95_0 == Identifier || look_95_0.between?(FloatingPointLiteral, DecimalLiteral) || look_95_0 == T__44 || look_95_0 == T__47 || look_95_0.between?(T__56, T__63) || look_95_0.between?(T__65, T__66) || look_95_0.between?(T__69, T__73) || look_95_0.between?(T__105, T__106) || look_95_0.between?(T__109, T__113)) 
          alt_95 = 1
        end
        case alt_95
        when 1
          # at line 561:14: element_value ( ',' element_value )*
          @state.following.push(TOKENS_FOLLOWING_element_value_IN_element_value_array_initializer_2923)
          element_value
          @state.following.pop
          # at line 561:28: ( ',' element_value )*
          while true # decision 94
            alt_94 = 2
            look_94_0 = @input.peek(1)

            if (look_94_0 == T__41) 
              look_94_1 = @input.peek(2)

              if (look_94_1 == Identifier || look_94_1.between?(FloatingPointLiteral, DecimalLiteral) || look_94_1 == T__44 || look_94_1 == T__47 || look_94_1.between?(T__56, T__63) || look_94_1.between?(T__65, T__66) || look_94_1.between?(T__69, T__73) || look_94_1.between?(T__105, T__106) || look_94_1.between?(T__109, T__113)) 
                alt_94 = 1

              end

            end
            case alt_94
            when 1
              # at line 561:29: ',' element_value
              match(T__41, TOKENS_FOLLOWING_T__41_IN_element_value_array_initializer_2926)
              @state.following.push(TOKENS_FOLLOWING_element_value_IN_element_value_array_initializer_2928)
              element_value
              @state.following.pop

            else
              break # out of loop for decision 94
            end
          end # loop for decision 94

        end
        # at line 561:51: ( ',' )?
        alt_96 = 2
        look_96_0 = @input.peek(1)

        if (look_96_0 == T__41) 
          alt_96 = 1
        end
        case alt_96
        when 1
          # at line 561:52: ','
          match(T__41, TOKENS_FOLLOWING_T__41_IN_element_value_array_initializer_2935)

        end
        match(T__45, TOKENS_FOLLOWING_T__45_IN_element_value_array_initializer_2939)

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 76)
        memoize(__method__, element_value_array_initializer_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule annotation_type_declaration
    # 
    # (in samples/Java.g)
    # 564:1: annotation_type_declaration : '@' 'interface' Identifier annotation_type_body ;
    # 
    def annotation_type_declaration
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 77)
      annotation_type_declaration_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 565:9: '@' 'interface' Identifier annotation_type_body
        match(T__73, TOKENS_FOLLOWING_T__73_IN_annotation_type_declaration_2962)
        match(T__46, TOKENS_FOLLOWING_T__46_IN_annotation_type_declaration_2964)
        match(Identifier, TOKENS_FOLLOWING_Identifier_IN_annotation_type_declaration_2966)
        @state.following.push(TOKENS_FOLLOWING_annotation_type_body_IN_annotation_type_declaration_2968)
        annotation_type_body
        @state.following.pop

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 77)
        memoize(__method__, annotation_type_declaration_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule annotation_type_body
    # 
    # (in samples/Java.g)
    # 568:1: annotation_type_body : '{' ( annotation_type_element_declaration )* '}' ;
    # 
    def annotation_type_body
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 78)
      annotation_type_body_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 569:9: '{' ( annotation_type_element_declaration )* '}'
        match(T__44, TOKENS_FOLLOWING_T__44_IN_annotation_type_body_2991)
        # at line 569:13: ( annotation_type_element_declaration )*
        while true # decision 97
          alt_97 = 2
          look_97_0 = @input.peek(1)

          if (look_97_0.between?(Identifier, ENUM) || look_97_0 == T__28 || look_97_0.between?(T__31, T__37) || look_97_0 == T__40 || look_97_0.between?(T__46, T__47) || look_97_0.between?(T__52, T__63) || look_97_0 == T__73) 
            alt_97 = 1

          end
          case alt_97
          when 1
            # at line 569:14: annotation_type_element_declaration
            @state.following.push(TOKENS_FOLLOWING_annotation_type_element_declaration_IN_annotation_type_body_2994)
            annotation_type_element_declaration
            @state.following.pop

          else
            break # out of loop for decision 97
          end
        end # loop for decision 97
        match(T__45, TOKENS_FOLLOWING_T__45_IN_annotation_type_body_2998)

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 78)
        memoize(__method__, annotation_type_body_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule annotation_type_element_declaration
    # 
    # (in samples/Java.g)
    # 572:1: annotation_type_element_declaration : modifiers annotation_type_element_rest ;
    # 
    def annotation_type_element_declaration
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 79)
      annotation_type_element_declaration_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 573:9: modifiers annotation_type_element_rest
        @state.following.push(TOKENS_FOLLOWING_modifiers_IN_annotation_type_element_declaration_3021)
        modifiers
        @state.following.pop
        @state.following.push(TOKENS_FOLLOWING_annotation_type_element_rest_IN_annotation_type_element_declaration_3023)
        annotation_type_element_rest
        @state.following.pop

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 79)
        memoize(__method__, annotation_type_element_declaration_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule annotation_type_element_rest
    # 
    # (in samples/Java.g)
    # 576:1: annotation_type_element_rest : ( type annotation_method_or_constant_rest ';' | normal_class_declaration ( ';' )? | normal_interface_declaration ( ';' )? | enum_declaration ( ';' )? | annotation_type_declaration ( ';' )? );
    # 
    def annotation_type_element_rest
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 80)
      annotation_type_element_rest_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 577:5: ( type annotation_method_or_constant_rest ';' | normal_class_declaration ( ';' )? | normal_interface_declaration ( ';' )? | enum_declaration ( ';' )? | annotation_type_declaration ( ';' )? )
        alt_102 = 5
        case look_102 = @input.peek(1)
        when Identifier, T__56, T__57, T__58, T__59, T__60, T__61, T__62, T__63 then alt_102 = 1
        when T__37 then alt_102 = 2
        when T__46 then alt_102 = 3
        when ENUM then alt_102 = 4
        when T__73 then alt_102 = 5
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          nvae = NoViableAlternative("", 102, 0)
          raise nvae
        end
        case alt_102
        when 1
          # at line 577:9: type annotation_method_or_constant_rest ';'
          @state.following.push(TOKENS_FOLLOWING_type_IN_annotation_type_element_rest_3046)
          type
          @state.following.pop
          @state.following.push(TOKENS_FOLLOWING_annotation_method_or_constant_rest_IN_annotation_type_element_rest_3048)
          annotation_method_or_constant_rest
          @state.following.pop
          match(T__26, TOKENS_FOLLOWING_T__26_IN_annotation_type_element_rest_3050)

        when 2
          # at line 578:9: normal_class_declaration ( ';' )?
          @state.following.push(TOKENS_FOLLOWING_normal_class_declaration_IN_annotation_type_element_rest_3060)
          normal_class_declaration
          @state.following.pop
          # at line 578:34: ( ';' )?
          alt_98 = 2
          look_98_0 = @input.peek(1)

          if (look_98_0 == T__26) 
            alt_98 = 1
          end
          case alt_98
          when 1
            # at line 0:0: ';'
            match(T__26, TOKENS_FOLLOWING_T__26_IN_annotation_type_element_rest_3062)

          end

        when 3
          # at line 579:9: normal_interface_declaration ( ';' )?
          @state.following.push(TOKENS_FOLLOWING_normal_interface_declaration_IN_annotation_type_element_rest_3073)
          normal_interface_declaration
          @state.following.pop
          # at line 579:38: ( ';' )?
          alt_99 = 2
          look_99_0 = @input.peek(1)

          if (look_99_0 == T__26) 
            alt_99 = 1
          end
          case alt_99
          when 1
            # at line 0:0: ';'
            match(T__26, TOKENS_FOLLOWING_T__26_IN_annotation_type_element_rest_3075)

          end

        when 4
          # at line 580:9: enum_declaration ( ';' )?
          @state.following.push(TOKENS_FOLLOWING_enum_declaration_IN_annotation_type_element_rest_3086)
          enum_declaration
          @state.following.pop
          # at line 580:26: ( ';' )?
          alt_100 = 2
          look_100_0 = @input.peek(1)

          if (look_100_0 == T__26) 
            alt_100 = 1
          end
          case alt_100
          when 1
            # at line 0:0: ';'
            match(T__26, TOKENS_FOLLOWING_T__26_IN_annotation_type_element_rest_3088)

          end

        when 5
          # at line 581:9: annotation_type_declaration ( ';' )?
          @state.following.push(TOKENS_FOLLOWING_annotation_type_declaration_IN_annotation_type_element_rest_3099)
          annotation_type_declaration
          @state.following.pop
          # at line 581:37: ( ';' )?
          alt_101 = 2
          look_101_0 = @input.peek(1)

          if (look_101_0 == T__26) 
            alt_101 = 1
          end
          case alt_101
          when 1
            # at line 0:0: ';'
            match(T__26, TOKENS_FOLLOWING_T__26_IN_annotation_type_element_rest_3101)

          end

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 80)
        memoize(__method__, annotation_type_element_rest_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule annotation_method_or_constant_rest
    # 
    # (in samples/Java.g)
    # 584:1: annotation_method_or_constant_rest : ( annotation_method_rest | annotation_constant_rest );
    # 
    def annotation_method_or_constant_rest
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 81)
      annotation_method_or_constant_rest_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 585:5: ( annotation_method_rest | annotation_constant_rest )
        alt_103 = 2
        look_103_0 = @input.peek(1)

        if (look_103_0 == Identifier) 
          look_103_1 = @input.peek(2)

          if (look_103_1 == T__66) 
            alt_103 = 1
          elsif (look_103_1 == T__26 || look_103_1 == T__41 || look_103_1 == T__48 || look_103_1 == T__51) 
            alt_103 = 2
          else
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
          nvae = NoViableAlternative("", 103, 1)
            raise nvae
          end
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 103, 0)
          raise nvae
        end
        case alt_103
        when 1
          # at line 585:9: annotation_method_rest
          @state.following.push(TOKENS_FOLLOWING_annotation_method_rest_IN_annotation_method_or_constant_rest_3125)
          annotation_method_rest
          @state.following.pop

        when 2
          # at line 586:9: annotation_constant_rest
          @state.following.push(TOKENS_FOLLOWING_annotation_constant_rest_IN_annotation_method_or_constant_rest_3135)
          annotation_constant_rest
          @state.following.pop

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 81)
        memoize(__method__, annotation_method_or_constant_rest_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule annotation_method_rest
    # 
    # (in samples/Java.g)
    # 589:1: annotation_method_rest : Identifier '(' ')' ( default_value )? ;
    # 
    def annotation_method_rest
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 82)
      annotation_method_rest_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 590:9: Identifier '(' ')' ( default_value )?
        match(Identifier, TOKENS_FOLLOWING_Identifier_IN_annotation_method_rest_3158)
        match(T__66, TOKENS_FOLLOWING_T__66_IN_annotation_method_rest_3160)
        match(T__67, TOKENS_FOLLOWING_T__67_IN_annotation_method_rest_3162)
        # at line 590:28: ( default_value )?
        alt_104 = 2
        look_104_0 = @input.peek(1)

        if (look_104_0 == T__74) 
          alt_104 = 1
        end
        case alt_104
        when 1
          # at line 0:0: default_value
          @state.following.push(TOKENS_FOLLOWING_default_value_IN_annotation_method_rest_3164)
          default_value
          @state.following.pop

        end

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 82)
        memoize(__method__, annotation_method_rest_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule annotation_constant_rest
    # 
    # (in samples/Java.g)
    # 593:1: annotation_constant_rest : variable_declarators ;
    # 
    def annotation_constant_rest
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 83)
      annotation_constant_rest_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 594:9: variable_declarators
        @state.following.push(TOKENS_FOLLOWING_variable_declarators_IN_annotation_constant_rest_3188)
        variable_declarators
        @state.following.pop

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 83)
        memoize(__method__, annotation_constant_rest_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule default_value
    # 
    # (in samples/Java.g)
    # 597:1: default_value : 'default' element_value ;
    # 
    def default_value
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 84)
      default_value_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 598:9: 'default' element_value
        match(T__74, TOKENS_FOLLOWING_T__74_IN_default_value_3211)
        @state.following.push(TOKENS_FOLLOWING_element_value_IN_default_value_3213)
        element_value
        @state.following.pop

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 84)
        memoize(__method__, default_value_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule block
    # 
    # (in samples/Java.g)
    # 603:1: block : '{' ( block_statement )* '}' ;
    # 
    def block
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 85)
      block_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 604:9: '{' ( block_statement )* '}'
        match(T__44, TOKENS_FOLLOWING_T__44_IN_block_3234)
        # at line 604:13: ( block_statement )*
        while true # decision 105
          alt_105 = 2
          look_105_0 = @input.peek(1)

          if (look_105_0.between?(Identifier, ASSERT) || look_105_0 == T__26 || look_105_0 == T__28 || look_105_0.between?(T__31, T__37) || look_105_0 == T__44 || look_105_0.between?(T__46, T__47) || look_105_0 == T__53 || look_105_0.between?(T__56, T__63) || look_105_0.between?(T__65, T__66) || look_105_0.between?(T__69, T__73) || look_105_0 == T__76 || look_105_0.between?(T__78, T__81) || look_105_0.between?(T__83, T__87) || look_105_0.between?(T__105, T__106) || look_105_0.between?(T__109, T__113)) 
            alt_105 = 1

          end
          case alt_105
          when 1
            # at line 0:0: block_statement
            @state.following.push(TOKENS_FOLLOWING_block_statement_IN_block_3236)
            block_statement
            @state.following.pop

          else
            break # out of loop for decision 105
          end
        end # loop for decision 105
        match(T__45, TOKENS_FOLLOWING_T__45_IN_block_3239)

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 85)
        memoize(__method__, block_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule block_statement
    # 
    # (in samples/Java.g)
    # 607:1: block_statement : ( local_variable_declaration_statement | class_or_interface_declaration | statement );
    # 
    def block_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 86)
      block_statement_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 608:5: ( local_variable_declaration_statement | class_or_interface_declaration | statement )
        alt_106 = 3
        alt_106 = @dfa106.predict(@input)
        case alt_106
        when 1
          # at line 608:9: local_variable_declaration_statement
          @state.following.push(TOKENS_FOLLOWING_local_variable_declaration_statement_IN_block_statement_3262)
          local_variable_declaration_statement
          @state.following.pop

        when 2
          # at line 609:9: class_or_interface_declaration
          @state.following.push(TOKENS_FOLLOWING_class_or_interface_declaration_IN_block_statement_3272)
          class_or_interface_declaration
          @state.following.pop

        when 3
          # at line 610:9: statement
          @state.following.push(TOKENS_FOLLOWING_statement_IN_block_statement_3282)
          statement
          @state.following.pop

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 86)
        memoize(__method__, block_statement_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule local_variable_declaration_statement
    # 
    # (in samples/Java.g)
    # 613:1: local_variable_declaration_statement : local_variable_declaration ';' ;
    # 
    def local_variable_declaration_statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 87)
      local_variable_declaration_statement_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 614:10: local_variable_declaration ';'
        @state.following.push(TOKENS_FOLLOWING_local_variable_declaration_IN_local_variable_declaration_statement_3306)
        local_variable_declaration
        @state.following.pop
        match(T__26, TOKENS_FOLLOWING_T__26_IN_local_variable_declaration_statement_3308)

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 87)
        memoize(__method__, local_variable_declaration_statement_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule local_variable_declaration
    # 
    # (in samples/Java.g)
    # 617:1: local_variable_declaration : variable_modifiers type variable_declarators ;
    # 
    def local_variable_declaration
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 88)
      local_variable_declaration_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 618:9: variable_modifiers type variable_declarators
        @state.following.push(TOKENS_FOLLOWING_variable_modifiers_IN_local_variable_declaration_3327)
        variable_modifiers
        @state.following.pop
        @state.following.push(TOKENS_FOLLOWING_type_IN_local_variable_declaration_3329)
        type
        @state.following.pop
        @state.following.push(TOKENS_FOLLOWING_variable_declarators_IN_local_variable_declaration_3331)
        variable_declarators
        @state.following.pop

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 88)
        memoize(__method__, local_variable_declaration_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule variable_modifiers
    # 
    # (in samples/Java.g)
    # 621:1: variable_modifiers : ( variable_modifier )* ;
    # 
    def variable_modifiers
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 89)
      variable_modifiers_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 622:9: ( variable_modifier )*
        # at line 622:9: ( variable_modifier )*
        while true # decision 107
          alt_107 = 2
          look_107_0 = @input.peek(1)

          if (look_107_0 == T__35 || look_107_0 == T__73) 
            alt_107 = 1

          end
          case alt_107
          when 1
            # at line 0:0: variable_modifier
            @state.following.push(TOKENS_FOLLOWING_variable_modifier_IN_variable_modifiers_3354)
            variable_modifier
            @state.following.pop

          else
            break # out of loop for decision 107
          end
        end # loop for decision 107

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 89)
        memoize(__method__, variable_modifiers_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule statement
    # 
    # (in samples/Java.g)
    # 625:1: statement : ( block | ASSERT expression ( ':' expression )? ';' | 'if' par_expression statement ( options {k=1; } : 'else' statement )? | 'for' '(' for_control ')' statement | 'while' par_expression statement | 'do' statement 'while' par_expression ';' | 'try' block ( catches 'finally' block | catches | 'finally' block ) | 'switch' par_expression '{' switch_block_statement_groups '}' | 'synchronized' par_expression block | 'return' ( expression )? ';' | 'throw' expression ';' | 'break' ( Identifier )? ';' | 'continue' ( Identifier )? ';' | ';' | statement_expression ';' | Identifier ':' statement );
    # 
    def statement
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 90)
      statement_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 626:5: ( block | ASSERT expression ( ':' expression )? ';' | 'if' par_expression statement ( options {k=1; } : 'else' statement )? | 'for' '(' for_control ')' statement | 'while' par_expression statement | 'do' statement 'while' par_expression ';' | 'try' block ( catches 'finally' block | catches | 'finally' block ) | 'switch' par_expression '{' switch_block_statement_groups '}' | 'synchronized' par_expression block | 'return' ( expression )? ';' | 'throw' expression ';' | 'break' ( Identifier )? ';' | 'continue' ( Identifier )? ';' | ';' | statement_expression ';' | Identifier ':' statement )
        alt_114 = 16
        alt_114 = @dfa114.predict(@input)
        case alt_114
        when 1
          # at line 626:7: block
          @state.following.push(TOKENS_FOLLOWING_block_IN_statement_3372)
          block
          @state.following.pop

        when 2
          # at line 627:9: ASSERT expression ( ':' expression )? ';'
          match(ASSERT, TOKENS_FOLLOWING_ASSERT_IN_statement_3382)
          @state.following.push(TOKENS_FOLLOWING_expression_IN_statement_3384)
          expression
          @state.following.pop
          # at line 627:27: ( ':' expression )?
          alt_108 = 2
          look_108_0 = @input.peek(1)

          if (look_108_0 == T__75) 
            alt_108 = 1
          end
          case alt_108
          when 1
            # at line 627:28: ':' expression
            match(T__75, TOKENS_FOLLOWING_T__75_IN_statement_3387)
            @state.following.push(TOKENS_FOLLOWING_expression_IN_statement_3389)
            expression
            @state.following.pop

          end
          match(T__26, TOKENS_FOLLOWING_T__26_IN_statement_3393)

        when 3
          # at line 628:9: 'if' par_expression statement ( options {k=1; } : 'else' statement )?
          match(T__76, TOKENS_FOLLOWING_T__76_IN_statement_3403)
          @state.following.push(TOKENS_FOLLOWING_par_expression_IN_statement_3405)
          par_expression
          @state.following.pop
          @state.following.push(TOKENS_FOLLOWING_statement_IN_statement_3407)
          statement
          @state.following.pop
          # at line 628:39: ( options {k=1; } : 'else' statement )?
          alt_109 = 2
          look_109_0 = @input.peek(1)

          if (look_109_0 == T__77) 
            look_109_2 = @input.peek(2)

            if (syntactic_predicate?(:synpred_157_java!)) 
              alt_109 = 1
            end
          end
          case alt_109
          when 1
            # at line 628:55: 'else' statement
            match(T__77, TOKENS_FOLLOWING_T__77_IN_statement_3417)
            @state.following.push(TOKENS_FOLLOWING_statement_IN_statement_3419)
            statement
            @state.following.pop

          end

        when 4
          # at line 629:9: 'for' '(' for_control ')' statement
          match(T__78, TOKENS_FOLLOWING_T__78_IN_statement_3431)
          match(T__66, TOKENS_FOLLOWING_T__66_IN_statement_3433)
          @state.following.push(TOKENS_FOLLOWING_for_control_IN_statement_3435)
          for_control
          @state.following.pop
          match(T__67, TOKENS_FOLLOWING_T__67_IN_statement_3437)
          @state.following.push(TOKENS_FOLLOWING_statement_IN_statement_3439)
          statement
          @state.following.pop

        when 5
          # at line 630:9: 'while' par_expression statement
          match(T__79, TOKENS_FOLLOWING_T__79_IN_statement_3449)
          @state.following.push(TOKENS_FOLLOWING_par_expression_IN_statement_3451)
          par_expression
          @state.following.pop
          @state.following.push(TOKENS_FOLLOWING_statement_IN_statement_3453)
          statement
          @state.following.pop

        when 6
          # at line 631:9: 'do' statement 'while' par_expression ';'
          match(T__80, TOKENS_FOLLOWING_T__80_IN_statement_3463)
          @state.following.push(TOKENS_FOLLOWING_statement_IN_statement_3465)
          statement
          @state.following.pop
          match(T__79, TOKENS_FOLLOWING_T__79_IN_statement_3467)
          @state.following.push(TOKENS_FOLLOWING_par_expression_IN_statement_3469)
          par_expression
          @state.following.pop
          match(T__26, TOKENS_FOLLOWING_T__26_IN_statement_3471)

        when 7
          # at line 632:9: 'try' block ( catches 'finally' block | catches | 'finally' block )
          match(T__81, TOKENS_FOLLOWING_T__81_IN_statement_3481)
          @state.following.push(TOKENS_FOLLOWING_block_IN_statement_3483)
          block
          @state.following.pop
          # at line 633:9: ( catches 'finally' block | catches | 'finally' block )
          alt_110 = 3
          look_110_0 = @input.peek(1)

          if (look_110_0 == T__88) 
            look_110_1 = @input.peek(2)

            if (syntactic_predicate?(:synpred_162_java!)) 
              alt_110 = 1
            elsif (syntactic_predicate?(:synpred_163_java!)) 
              alt_110 = 2
            else
              @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
            nvae = NoViableAlternative("", 110, 1)
              raise nvae
            end
          elsif (look_110_0 == T__82) 
            alt_110 = 3
          else
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
          nvae = NoViableAlternative("", 110, 0)
            raise nvae
          end
          case alt_110
          when 1
            # at line 633:11: catches 'finally' block
            @state.following.push(TOKENS_FOLLOWING_catches_IN_statement_3495)
            catches
            @state.following.pop
            match(T__82, TOKENS_FOLLOWING_T__82_IN_statement_3497)
            @state.following.push(TOKENS_FOLLOWING_block_IN_statement_3499)
            block
            @state.following.pop

          when 2
            # at line 634:11: catches
            @state.following.push(TOKENS_FOLLOWING_catches_IN_statement_3511)
            catches
            @state.following.pop

          when 3
            # at line 635:13: 'finally' block
            match(T__82, TOKENS_FOLLOWING_T__82_IN_statement_3525)
            @state.following.push(TOKENS_FOLLOWING_block_IN_statement_3527)
            block
            @state.following.pop

          end

        when 8
          # at line 637:9: 'switch' par_expression '{' switch_block_statement_groups '}'
          match(T__83, TOKENS_FOLLOWING_T__83_IN_statement_3547)
          @state.following.push(TOKENS_FOLLOWING_par_expression_IN_statement_3549)
          par_expression
          @state.following.pop
          match(T__44, TOKENS_FOLLOWING_T__44_IN_statement_3551)
          @state.following.push(TOKENS_FOLLOWING_switch_block_statement_groups_IN_statement_3553)
          switch_block_statement_groups
          @state.following.pop
          match(T__45, TOKENS_FOLLOWING_T__45_IN_statement_3555)

        when 9
          # at line 638:9: 'synchronized' par_expression block
          match(T__53, TOKENS_FOLLOWING_T__53_IN_statement_3565)
          @state.following.push(TOKENS_FOLLOWING_par_expression_IN_statement_3567)
          par_expression
          @state.following.pop
          @state.following.push(TOKENS_FOLLOWING_block_IN_statement_3569)
          block
          @state.following.pop

        when 10
          # at line 639:9: 'return' ( expression )? ';'
          match(T__84, TOKENS_FOLLOWING_T__84_IN_statement_3579)
          # at line 639:18: ( expression )?
          alt_111 = 2
          look_111_0 = @input.peek(1)

          if (look_111_0 == Identifier || look_111_0.between?(FloatingPointLiteral, DecimalLiteral) || look_111_0 == T__47 || look_111_0.between?(T__56, T__63) || look_111_0.between?(T__65, T__66) || look_111_0.between?(T__69, T__72) || look_111_0.between?(T__105, T__106) || look_111_0.between?(T__109, T__113)) 
            alt_111 = 1
          end
          case alt_111
          when 1
            # at line 0:0: expression
            @state.following.push(TOKENS_FOLLOWING_expression_IN_statement_3581)
            expression
            @state.following.pop

          end
          match(T__26, TOKENS_FOLLOWING_T__26_IN_statement_3584)

        when 11
          # at line 640:9: 'throw' expression ';'
          match(T__85, TOKENS_FOLLOWING_T__85_IN_statement_3594)
          @state.following.push(TOKENS_FOLLOWING_expression_IN_statement_3596)
          expression
          @state.following.pop
          match(T__26, TOKENS_FOLLOWING_T__26_IN_statement_3598)

        when 12
          # at line 641:9: 'break' ( Identifier )? ';'
          match(T__86, TOKENS_FOLLOWING_T__86_IN_statement_3608)
          # at line 641:17: ( Identifier )?
          alt_112 = 2
          look_112_0 = @input.peek(1)

          if (look_112_0 == Identifier) 
            alt_112 = 1
          end
          case alt_112
          when 1
            # at line 0:0: Identifier
            match(Identifier, TOKENS_FOLLOWING_Identifier_IN_statement_3610)

          end
          match(T__26, TOKENS_FOLLOWING_T__26_IN_statement_3613)

        when 13
          # at line 642:9: 'continue' ( Identifier )? ';'
          match(T__87, TOKENS_FOLLOWING_T__87_IN_statement_3623)
          # at line 642:20: ( Identifier )?
          alt_113 = 2
          look_113_0 = @input.peek(1)

          if (look_113_0 == Identifier) 
            alt_113 = 1
          end
          case alt_113
          when 1
            # at line 0:0: Identifier
            match(Identifier, TOKENS_FOLLOWING_Identifier_IN_statement_3625)

          end
          match(T__26, TOKENS_FOLLOWING_T__26_IN_statement_3628)

        when 14
          # at line 643:9: ';'
          match(T__26, TOKENS_FOLLOWING_T__26_IN_statement_3638)

        when 15
          # at line 644:9: statement_expression ';'
          @state.following.push(TOKENS_FOLLOWING_statement_expression_IN_statement_3649)
          statement_expression
          @state.following.pop
          match(T__26, TOKENS_FOLLOWING_T__26_IN_statement_3651)

        when 16
          # at line 645:9: Identifier ':' statement
          match(Identifier, TOKENS_FOLLOWING_Identifier_IN_statement_3661)
          match(T__75, TOKENS_FOLLOWING_T__75_IN_statement_3663)
          @state.following.push(TOKENS_FOLLOWING_statement_IN_statement_3665)
          statement
          @state.following.pop

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 90)
        memoize(__method__, statement_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule catches
    # 
    # (in samples/Java.g)
    # 648:1: catches : catch_clause ( catch_clause )* ;
    # 
    def catches
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 91)
      catches_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 649:9: catch_clause ( catch_clause )*
        @state.following.push(TOKENS_FOLLOWING_catch_clause_IN_catches_3688)
        catch_clause
        @state.following.pop
        # at line 649:22: ( catch_clause )*
        while true # decision 115
          alt_115 = 2
          look_115_0 = @input.peek(1)

          if (look_115_0 == T__88) 
            alt_115 = 1

          end
          case alt_115
          when 1
            # at line 649:23: catch_clause
            @state.following.push(TOKENS_FOLLOWING_catch_clause_IN_catches_3691)
            catch_clause
            @state.following.pop

          else
            break # out of loop for decision 115
          end
        end # loop for decision 115

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 91)
        memoize(__method__, catches_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule catch_clause
    # 
    # (in samples/Java.g)
    # 652:1: catch_clause : 'catch' '(' formal_parameter ')' block ;
    # 
    def catch_clause
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 92)
      catch_clause_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 653:9: 'catch' '(' formal_parameter ')' block
        match(T__88, TOKENS_FOLLOWING_T__88_IN_catch_clause_3716)
        match(T__66, TOKENS_FOLLOWING_T__66_IN_catch_clause_3718)
        @state.following.push(TOKENS_FOLLOWING_formal_parameter_IN_catch_clause_3720)
        formal_parameter
        @state.following.pop
        match(T__67, TOKENS_FOLLOWING_T__67_IN_catch_clause_3722)
        @state.following.push(TOKENS_FOLLOWING_block_IN_catch_clause_3724)
        block
        @state.following.pop

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 92)
        memoize(__method__, catch_clause_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule formal_parameter
    # 
    # (in samples/Java.g)
    # 656:1: formal_parameter : variable_modifiers type variable_declarator_id ;
    # 
    def formal_parameter
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 93)
      formal_parameter_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 657:9: variable_modifiers type variable_declarator_id
        @state.following.push(TOKENS_FOLLOWING_variable_modifiers_IN_formal_parameter_3743)
        variable_modifiers
        @state.following.pop
        @state.following.push(TOKENS_FOLLOWING_type_IN_formal_parameter_3745)
        type
        @state.following.pop
        @state.following.push(TOKENS_FOLLOWING_variable_declarator_id_IN_formal_parameter_3747)
        variable_declarator_id
        @state.following.pop

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 93)
        memoize(__method__, formal_parameter_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule switch_block_statement_groups
    # 
    # (in samples/Java.g)
    # 660:1: switch_block_statement_groups : ( switch_block_statement_group )* ;
    # 
    def switch_block_statement_groups
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 94)
      switch_block_statement_groups_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 661:9: ( switch_block_statement_group )*
        # at line 661:9: ( switch_block_statement_group )*
        while true # decision 116
          alt_116 = 2
          look_116_0 = @input.peek(1)

          if (look_116_0 == T__74 || look_116_0 == T__89) 
            alt_116 = 1

          end
          case alt_116
          when 1
            # at line 661:10: switch_block_statement_group
            @state.following.push(TOKENS_FOLLOWING_switch_block_statement_group_IN_switch_block_statement_groups_3775)
            switch_block_statement_group
            @state.following.pop

          else
            break # out of loop for decision 116
          end
        end # loop for decision 116

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 94)
        memoize(__method__, switch_block_statement_groups_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule switch_block_statement_group
    # 
    # (in samples/Java.g)
    # 668:1: switch_block_statement_group : ( switch_label )+ ( block_statement )* ;
    # 
    def switch_block_statement_group
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 95)
      switch_block_statement_group_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 669:9: ( switch_label )+ ( block_statement )*
        # at file 669:9: ( switch_label )+
        match_count_117 = 0
        while true
          alt_117 = 2
          look_117_0 = @input.peek(1)

          if (look_117_0 == T__89) 
            look_117_2 = @input.peek(2)

            if (syntactic_predicate?(:synpred_178_java!)) 
              alt_117 = 1

            end
          elsif (look_117_0 == T__74) 
            look_117_3 = @input.peek(2)

            if (syntactic_predicate?(:synpred_178_java!)) 
              alt_117 = 1

            end

          end
          case alt_117
          when 1
            # at line 0:0: switch_label
            @state.following.push(TOKENS_FOLLOWING_switch_label_IN_switch_block_statement_group_3802)
            switch_label
            @state.following.pop

          else
            match_count_117 > 0 and break
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

            eee = EarlyExit(117)


            raise eee
          end
          match_count_117 += 1
        end

        # at line 669:23: ( block_statement )*
        while true # decision 118
          alt_118 = 2
          look_118_0 = @input.peek(1)

          if (look_118_0.between?(Identifier, ASSERT) || look_118_0 == T__26 || look_118_0 == T__28 || look_118_0.between?(T__31, T__37) || look_118_0 == T__44 || look_118_0.between?(T__46, T__47) || look_118_0 == T__53 || look_118_0.between?(T__56, T__63) || look_118_0.between?(T__65, T__66) || look_118_0.between?(T__69, T__73) || look_118_0 == T__76 || look_118_0.between?(T__78, T__81) || look_118_0.between?(T__83, T__87) || look_118_0.between?(T__105, T__106) || look_118_0.between?(T__109, T__113)) 
            alt_118 = 1

          end
          case alt_118
          when 1
            # at line 0:0: block_statement
            @state.following.push(TOKENS_FOLLOWING_block_statement_IN_switch_block_statement_group_3805)
            block_statement
            @state.following.pop

          else
            break # out of loop for decision 118
          end
        end # loop for decision 118

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 95)
        memoize(__method__, switch_block_statement_group_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule switch_label
    # 
    # (in samples/Java.g)
    # 672:1: switch_label : ( 'case' constant_expression ':' | 'case' enum_constant_name ':' | 'default' ':' );
    # 
    def switch_label
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 96)
      switch_label_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 673:5: ( 'case' constant_expression ':' | 'case' enum_constant_name ':' | 'default' ':' )
        alt_119 = 3
        look_119_0 = @input.peek(1)

        if (look_119_0 == T__89) 
          look_119_1 = @input.peek(2)

          if (look_119_1 == Identifier) 
            look_119_3 = @input.peek(3)

            if (look_119_3 == T__75) 
              look_119_5 = @input.peek(4)

              if (syntactic_predicate?(:synpred_180_java!)) 
                alt_119 = 1
              elsif (syntactic_predicate?(:synpred_181_java!)) 
                alt_119 = 2
              else
                @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
              nvae = NoViableAlternative("", 119, 5)
                raise nvae
              end
            elsif (look_119_3.between?(T__29, T__30) || look_119_3 == T__40 || look_119_3.between?(T__42, T__43) || look_119_3 == T__48 || look_119_3 == T__51 || look_119_3 == T__64 || look_119_3 == T__66 || look_119_3.between?(T__90, T__110)) 
              alt_119 = 1
            else
              @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
            nvae = NoViableAlternative("", 119, 3)
              raise nvae
            end
          elsif (look_119_1.between?(FloatingPointLiteral, DecimalLiteral) || look_119_1 == T__47 || look_119_1.between?(T__56, T__63) || look_119_1.between?(T__65, T__66) || look_119_1.between?(T__69, T__72) || look_119_1.between?(T__105, T__106) || look_119_1.between?(T__109, T__113)) 
            alt_119 = 1
          else
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
          nvae = NoViableAlternative("", 119, 1)
            raise nvae
          end
        elsif (look_119_0 == T__74) 
          alt_119 = 3
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 119, 0)
          raise nvae
        end
        case alt_119
        when 1
          # at line 673:9: 'case' constant_expression ':'
          match(T__89, TOKENS_FOLLOWING_T__89_IN_switch_label_3829)
          @state.following.push(TOKENS_FOLLOWING_constant_expression_IN_switch_label_3831)
          constant_expression
          @state.following.pop
          match(T__75, TOKENS_FOLLOWING_T__75_IN_switch_label_3833)

        when 2
          # at line 674:9: 'case' enum_constant_name ':'
          match(T__89, TOKENS_FOLLOWING_T__89_IN_switch_label_3843)
          @state.following.push(TOKENS_FOLLOWING_enum_constant_name_IN_switch_label_3845)
          enum_constant_name
          @state.following.pop
          match(T__75, TOKENS_FOLLOWING_T__75_IN_switch_label_3847)

        when 3
          # at line 675:9: 'default' ':'
          match(T__74, TOKENS_FOLLOWING_T__74_IN_switch_label_3857)
          match(T__75, TOKENS_FOLLOWING_T__75_IN_switch_label_3859)

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 96)
        memoize(__method__, switch_label_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule for_control
    # 
    # (in samples/Java.g)
    # 678:1: for_control options {k=3; } : ( enhanced_for_control | ( for_init )? ';' ( expression )? ';' ( for_update )? );
    # 
    def for_control
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 97)
      for_control_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 680:5: ( enhanced_for_control | ( for_init )? ';' ( expression )? ';' ( for_update )? )
        alt_123 = 2
        alt_123 = @dfa123.predict(@input)
        case alt_123
        when 1
          # at line 680:9: enhanced_for_control
          @state.following.push(TOKENS_FOLLOWING_enhanced_for_control_IN_for_control_3890)
          enhanced_for_control
          @state.following.pop

        when 2
          # at line 681:9: ( for_init )? ';' ( expression )? ';' ( for_update )?
          # at line 681:9: ( for_init )?
          alt_120 = 2
          look_120_0 = @input.peek(1)

          if (look_120_0 == Identifier || look_120_0.between?(FloatingPointLiteral, DecimalLiteral) || look_120_0 == T__35 || look_120_0 == T__47 || look_120_0.between?(T__56, T__63) || look_120_0.between?(T__65, T__66) || look_120_0.between?(T__69, T__73) || look_120_0.between?(T__105, T__106) || look_120_0.between?(T__109, T__113)) 
            alt_120 = 1
          end
          case alt_120
          when 1
            # at line 0:0: for_init
            @state.following.push(TOKENS_FOLLOWING_for_init_IN_for_control_3900)
            for_init
            @state.following.pop

          end
          match(T__26, TOKENS_FOLLOWING_T__26_IN_for_control_3903)
          # at line 681:23: ( expression )?
          alt_121 = 2
          look_121_0 = @input.peek(1)

          if (look_121_0 == Identifier || look_121_0.between?(FloatingPointLiteral, DecimalLiteral) || look_121_0 == T__47 || look_121_0.between?(T__56, T__63) || look_121_0.between?(T__65, T__66) || look_121_0.between?(T__69, T__72) || look_121_0.between?(T__105, T__106) || look_121_0.between?(T__109, T__113)) 
            alt_121 = 1
          end
          case alt_121
          when 1
            # at line 0:0: expression
            @state.following.push(TOKENS_FOLLOWING_expression_IN_for_control_3905)
            expression
            @state.following.pop

          end
          match(T__26, TOKENS_FOLLOWING_T__26_IN_for_control_3908)
          # at line 681:39: ( for_update )?
          alt_122 = 2
          look_122_0 = @input.peek(1)

          if (look_122_0 == Identifier || look_122_0.between?(FloatingPointLiteral, DecimalLiteral) || look_122_0 == T__47 || look_122_0.between?(T__56, T__63) || look_122_0.between?(T__65, T__66) || look_122_0.between?(T__69, T__72) || look_122_0.between?(T__105, T__106) || look_122_0.between?(T__109, T__113)) 
            alt_122 = 1
          end
          case alt_122
          when 1
            # at line 0:0: for_update
            @state.following.push(TOKENS_FOLLOWING_for_update_IN_for_control_3910)
            for_update
            @state.following.pop

          end

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 97)
        memoize(__method__, for_control_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule for_init
    # 
    # (in samples/Java.g)
    # 684:1: for_init : ( local_variable_declaration | expression_list );
    # 
    def for_init
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 98)
      for_init_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 685:5: ( local_variable_declaration | expression_list )
        alt_124 = 2
        alt_124 = @dfa124.predict(@input)
        case alt_124
        when 1
          # at line 685:9: local_variable_declaration
          @state.following.push(TOKENS_FOLLOWING_local_variable_declaration_IN_for_init_3930)
          local_variable_declaration
          @state.following.pop

        when 2
          # at line 686:9: expression_list
          @state.following.push(TOKENS_FOLLOWING_expression_list_IN_for_init_3940)
          expression_list
          @state.following.pop

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 98)
        memoize(__method__, for_init_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule enhanced_for_control
    # 
    # (in samples/Java.g)
    # 689:1: enhanced_for_control : variable_modifiers type Identifier ':' expression ;
    # 
    def enhanced_for_control
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 99)
      enhanced_for_control_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 690:9: variable_modifiers type Identifier ':' expression
        @state.following.push(TOKENS_FOLLOWING_variable_modifiers_IN_enhanced_for_control_3963)
        variable_modifiers
        @state.following.pop
        @state.following.push(TOKENS_FOLLOWING_type_IN_enhanced_for_control_3965)
        type
        @state.following.pop
        match(Identifier, TOKENS_FOLLOWING_Identifier_IN_enhanced_for_control_3967)
        match(T__75, TOKENS_FOLLOWING_T__75_IN_enhanced_for_control_3969)
        @state.following.push(TOKENS_FOLLOWING_expression_IN_enhanced_for_control_3971)
        expression
        @state.following.pop

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 99)
        memoize(__method__, enhanced_for_control_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule for_update
    # 
    # (in samples/Java.g)
    # 693:1: for_update : expression_list ;
    # 
    def for_update
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 100)
      for_update_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 694:9: expression_list
        @state.following.push(TOKENS_FOLLOWING_expression_list_IN_for_update_3990)
        expression_list
        @state.following.pop

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 100)
        memoize(__method__, for_update_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule par_expression
    # 
    # (in samples/Java.g)
    # 699:1: par_expression : '(' expression ')' ;
    # 
    def par_expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 101)
      par_expression_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 700:9: '(' expression ')'
        match(T__66, TOKENS_FOLLOWING_T__66_IN_par_expression_4011)
        @state.following.push(TOKENS_FOLLOWING_expression_IN_par_expression_4013)
        expression
        @state.following.pop
        match(T__67, TOKENS_FOLLOWING_T__67_IN_par_expression_4015)

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 101)
        memoize(__method__, par_expression_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule expression_list
    # 
    # (in samples/Java.g)
    # 703:1: expression_list : expression ( ',' expression )* ;
    # 
    def expression_list
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 102)
      expression_list_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 704:9: expression ( ',' expression )*
        @state.following.push(TOKENS_FOLLOWING_expression_IN_expression_list_4038)
        expression
        @state.following.pop
        # at line 704:20: ( ',' expression )*
        while true # decision 125
          alt_125 = 2
          look_125_0 = @input.peek(1)

          if (look_125_0 == T__41) 
            alt_125 = 1

          end
          case alt_125
          when 1
            # at line 704:21: ',' expression
            match(T__41, TOKENS_FOLLOWING_T__41_IN_expression_list_4041)
            @state.following.push(TOKENS_FOLLOWING_expression_IN_expression_list_4043)
            expression
            @state.following.pop

          else
            break # out of loop for decision 125
          end
        end # loop for decision 125

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 102)
        memoize(__method__, expression_list_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule statement_expression
    # 
    # (in samples/Java.g)
    # 707:1: statement_expression : expression ;
    # 
    def statement_expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 103)
      statement_expression_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 708:9: expression
        @state.following.push(TOKENS_FOLLOWING_expression_IN_statement_expression_4064)
        expression
        @state.following.pop

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 103)
        memoize(__method__, statement_expression_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule constant_expression
    # 
    # (in samples/Java.g)
    # 711:1: constant_expression : expression ;
    # 
    def constant_expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 104)
      constant_expression_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 712:9: expression
        @state.following.push(TOKENS_FOLLOWING_expression_IN_constant_expression_4087)
        expression
        @state.following.pop

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 104)
        memoize(__method__, constant_expression_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule expression
    # 
    # (in samples/Java.g)
    # 715:1: expression : conditional_expression ( assignment_operator expression )? ;
    # 
    def expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 105)
      expression_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 716:9: conditional_expression ( assignment_operator expression )?
        @state.following.push(TOKENS_FOLLOWING_conditional_expression_IN_expression_4110)
        conditional_expression
        @state.following.pop
        # at line 716:32: ( assignment_operator expression )?
        alt_126 = 2
        alt_126 = @dfa126.predict(@input)
        case alt_126
        when 1
          # at line 716:33: assignment_operator expression
          @state.following.push(TOKENS_FOLLOWING_assignment_operator_IN_expression_4113)
          assignment_operator
          @state.following.pop
          @state.following.push(TOKENS_FOLLOWING_expression_IN_expression_4115)
          expression
          @state.following.pop

        end

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 105)
        memoize(__method__, expression_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule assignment_operator
    # 
    # (in samples/Java.g)
    # 719:1: assignment_operator : ( '=' | '+=' | '-=' | '*=' | '/=' | '&=' | '|=' | '^=' | '%=' | ( '<' '<' '=' )=>t1= '<' t2= '<' t3= '=' {...}? | ( '>' '>' '>' '=' )=>t1= '>' t2= '>' t3= '>' t4= '=' {...}? | ( '>' '>' '=' )=>t1= '>' t2= '>' t3= '=' {...}?);
    # 
    def assignment_operator
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 106)
      assignment_operator_start_index = @input.index
      t1 = nil
      t2 = nil
      t3 = nil
      t4 = nil

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 720:5: ( '=' | '+=' | '-=' | '*=' | '/=' | '&=' | '|=' | '^=' | '%=' | ( '<' '<' '=' )=>t1= '<' t2= '<' t3= '=' {...}? | ( '>' '>' '>' '=' )=>t1= '>' t2= '>' t3= '>' t4= '=' {...}? | ( '>' '>' '=' )=>t1= '>' t2= '>' t3= '=' {...}?)
        alt_127 = 12
        alt_127 = @dfa127.predict(@input)
        case alt_127
        when 1
          # at line 720:9: '='
          match(T__51, TOKENS_FOLLOWING_T__51_IN_assignment_operator_4140)

        when 2
          # at line 721:9: '+='
          match(T__90, TOKENS_FOLLOWING_T__90_IN_assignment_operator_4150)

        when 3
          # at line 722:9: '-='
          match(T__91, TOKENS_FOLLOWING_T__91_IN_assignment_operator_4160)

        when 4
          # at line 723:9: '*='
          match(T__92, TOKENS_FOLLOWING_T__92_IN_assignment_operator_4170)

        when 5
          # at line 724:9: '/='
          match(T__93, TOKENS_FOLLOWING_T__93_IN_assignment_operator_4180)

        when 6
          # at line 725:9: '&='
          match(T__94, TOKENS_FOLLOWING_T__94_IN_assignment_operator_4190)

        when 7
          # at line 726:9: '|='
          match(T__95, TOKENS_FOLLOWING_T__95_IN_assignment_operator_4200)

        when 8
          # at line 727:9: '^='
          match(T__96, TOKENS_FOLLOWING_T__96_IN_assignment_operator_4210)

        when 9
          # at line 728:9: '%='
          match(T__97, TOKENS_FOLLOWING_T__97_IN_assignment_operator_4220)

        when 10
          # at line 729:9: ( '<' '<' '=' )=>t1= '<' t2= '<' t3= '=' {...}?
          t1 = match(T__40, TOKENS_FOLLOWING_T__40_IN_assignment_operator_4241)
          t2 = match(T__40, TOKENS_FOLLOWING_T__40_IN_assignment_operator_4245)
          t3 = match(T__51, TOKENS_FOLLOWING_T__51_IN_assignment_operator_4249)
          unless (( t1.line == t2.line &&
                    t1.column + 1 == t2.column && 
                    t2.line == t3.line && 
                    t2.column + 1 == t3.column ))
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

            raise FailedPredicate("assignment_operator", " $t1.line == $t2.line &&\n          $t1.column + 1 == $t2.column && \n          $t2.line == $t3.line && \n          $t2.column + 1 == $t3.column ")
          end

        when 11
          # at line 734:9: ( '>' '>' '>' '=' )=>t1= '>' t2= '>' t3= '>' t4= '=' {...}?
          t1 = match(T__42, TOKENS_FOLLOWING_T__42_IN_assignment_operator_4283)
          t2 = match(T__42, TOKENS_FOLLOWING_T__42_IN_assignment_operator_4287)
          t3 = match(T__42, TOKENS_FOLLOWING_T__42_IN_assignment_operator_4291)
          t4 = match(T__51, TOKENS_FOLLOWING_T__51_IN_assignment_operator_4295)
          unless (( t1.line == t2.line && 
                    t1.column + 1 == t2.column &&
                    t2.line == t3.line && 
                    t2.column + 1 == t3.column &&
                    t3.line == t4.line && 
                    t3.column + 1 == t4.column ))
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

            raise FailedPredicate("assignment_operator", " $t1.line == $t2.line && \n          $t1.column + 1 == $t2.column &&\n          $t2.line == $t3.line && \n          $t2.column + 1 == $t3.column &&\n          $t3.line == $t4.line && \n          $t3.column + 1 == $t4.column ")
          end

        when 12
          # at line 741:9: ( '>' '>' '=' )=>t1= '>' t2= '>' t3= '=' {...}?
          t1 = match(T__42, TOKENS_FOLLOWING_T__42_IN_assignment_operator_4326)
          t2 = match(T__42, TOKENS_FOLLOWING_T__42_IN_assignment_operator_4330)
          t3 = match(T__51, TOKENS_FOLLOWING_T__51_IN_assignment_operator_4334)
          unless (( t1.line == t2.line && 
                    t1.column + 1 == t2.column && 
                    t2.line == t3.line && 
                    t2.column + 1 == t3.column ))
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

            raise FailedPredicate("assignment_operator", " $t1.line == $t2.line && \n          $t1.column + 1 == $t2.column && \n          $t2.line == $t3.line && \n          $t2.column + 1 == $t3.column ")
          end

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 106)
        memoize(__method__, assignment_operator_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule conditional_expression
    # 
    # (in samples/Java.g)
    # 748:1: conditional_expression : conditional_or_expression ( '?' expression ':' expression )? ;
    # 
    def conditional_expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 107)
      conditional_expression_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 749:9: conditional_or_expression ( '?' expression ':' expression )?
        @state.following.push(TOKENS_FOLLOWING_conditional_or_expression_IN_conditional_expression_4363)
        conditional_or_expression
        @state.following.pop
        # at line 749:35: ( '?' expression ':' expression )?
        alt_128 = 2
        look_128_0 = @input.peek(1)

        if (look_128_0 == T__64) 
          alt_128 = 1
        end
        case alt_128
        when 1
          # at line 749:37: '?' expression ':' expression
          match(T__64, TOKENS_FOLLOWING_T__64_IN_conditional_expression_4367)
          @state.following.push(TOKENS_FOLLOWING_expression_IN_conditional_expression_4369)
          expression
          @state.following.pop
          match(T__75, TOKENS_FOLLOWING_T__75_IN_conditional_expression_4371)
          @state.following.push(TOKENS_FOLLOWING_expression_IN_conditional_expression_4373)
          expression
          @state.following.pop

        end

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 107)
        memoize(__method__, conditional_expression_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule conditional_or_expression
    # 
    # (in samples/Java.g)
    # 752:1: conditional_or_expression : conditional_and_expression ( '||' conditional_and_expression )* ;
    # 
    def conditional_or_expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 108)
      conditional_or_expression_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 753:9: conditional_and_expression ( '||' conditional_and_expression )*
        @state.following.push(TOKENS_FOLLOWING_conditional_and_expression_IN_conditional_or_expression_4395)
        conditional_and_expression
        @state.following.pop
        # at line 753:36: ( '||' conditional_and_expression )*
        while true # decision 129
          alt_129 = 2
          look_129_0 = @input.peek(1)

          if (look_129_0 == T__98) 
            alt_129 = 1

          end
          case alt_129
          when 1
            # at line 753:38: '||' conditional_and_expression
            match(T__98, TOKENS_FOLLOWING_T__98_IN_conditional_or_expression_4399)
            @state.following.push(TOKENS_FOLLOWING_conditional_and_expression_IN_conditional_or_expression_4401)
            conditional_and_expression
            @state.following.pop

          else
            break # out of loop for decision 129
          end
        end # loop for decision 129

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 108)
        memoize(__method__, conditional_or_expression_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule conditional_and_expression
    # 
    # (in samples/Java.g)
    # 756:1: conditional_and_expression : inclusive_or_expression ( '&&' inclusive_or_expression )* ;
    # 
    def conditional_and_expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 109)
      conditional_and_expression_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 757:9: inclusive_or_expression ( '&&' inclusive_or_expression )*
        @state.following.push(TOKENS_FOLLOWING_inclusive_or_expression_IN_conditional_and_expression_4423)
        inclusive_or_expression
        @state.following.pop
        # at line 757:33: ( '&&' inclusive_or_expression )*
        while true # decision 130
          alt_130 = 2
          look_130_0 = @input.peek(1)

          if (look_130_0 == T__99) 
            alt_130 = 1

          end
          case alt_130
          when 1
            # at line 757:35: '&&' inclusive_or_expression
            match(T__99, TOKENS_FOLLOWING_T__99_IN_conditional_and_expression_4427)
            @state.following.push(TOKENS_FOLLOWING_inclusive_or_expression_IN_conditional_and_expression_4429)
            inclusive_or_expression
            @state.following.pop

          else
            break # out of loop for decision 130
          end
        end # loop for decision 130

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 109)
        memoize(__method__, conditional_and_expression_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule inclusive_or_expression
    # 
    # (in samples/Java.g)
    # 760:1: inclusive_or_expression : exclusive_or_expression ( '|' exclusive_or_expression )* ;
    # 
    def inclusive_or_expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 110)
      inclusive_or_expression_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 761:9: exclusive_or_expression ( '|' exclusive_or_expression )*
        @state.following.push(TOKENS_FOLLOWING_exclusive_or_expression_IN_inclusive_or_expression_4451)
        exclusive_or_expression
        @state.following.pop
        # at line 761:33: ( '|' exclusive_or_expression )*
        while true # decision 131
          alt_131 = 2
          look_131_0 = @input.peek(1)

          if (look_131_0 == T__100) 
            alt_131 = 1

          end
          case alt_131
          when 1
            # at line 761:35: '|' exclusive_or_expression
            match(T__100, TOKENS_FOLLOWING_T__100_IN_inclusive_or_expression_4455)
            @state.following.push(TOKENS_FOLLOWING_exclusive_or_expression_IN_inclusive_or_expression_4457)
            exclusive_or_expression
            @state.following.pop

          else
            break # out of loop for decision 131
          end
        end # loop for decision 131

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 110)
        memoize(__method__, inclusive_or_expression_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule exclusive_or_expression
    # 
    # (in samples/Java.g)
    # 764:1: exclusive_or_expression : and_expression ( '^' and_expression )* ;
    # 
    def exclusive_or_expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 111)
      exclusive_or_expression_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 765:9: and_expression ( '^' and_expression )*
        @state.following.push(TOKENS_FOLLOWING_and_expression_IN_exclusive_or_expression_4479)
        and_expression
        @state.following.pop
        # at line 765:24: ( '^' and_expression )*
        while true # decision 132
          alt_132 = 2
          look_132_0 = @input.peek(1)

          if (look_132_0 == T__101) 
            alt_132 = 1

          end
          case alt_132
          when 1
            # at line 765:26: '^' and_expression
            match(T__101, TOKENS_FOLLOWING_T__101_IN_exclusive_or_expression_4483)
            @state.following.push(TOKENS_FOLLOWING_and_expression_IN_exclusive_or_expression_4485)
            and_expression
            @state.following.pop

          else
            break # out of loop for decision 132
          end
        end # loop for decision 132

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 111)
        memoize(__method__, exclusive_or_expression_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule and_expression
    # 
    # (in samples/Java.g)
    # 768:1: and_expression : equality_expression ( '&' equality_expression )* ;
    # 
    def and_expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 112)
      and_expression_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 769:9: equality_expression ( '&' equality_expression )*
        @state.following.push(TOKENS_FOLLOWING_equality_expression_IN_and_expression_4507)
        equality_expression
        @state.following.pop
        # at line 769:29: ( '&' equality_expression )*
        while true # decision 133
          alt_133 = 2
          look_133_0 = @input.peek(1)

          if (look_133_0 == T__43) 
            alt_133 = 1

          end
          case alt_133
          when 1
            # at line 769:31: '&' equality_expression
            match(T__43, TOKENS_FOLLOWING_T__43_IN_and_expression_4511)
            @state.following.push(TOKENS_FOLLOWING_equality_expression_IN_and_expression_4513)
            equality_expression
            @state.following.pop

          else
            break # out of loop for decision 133
          end
        end # loop for decision 133

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 112)
        memoize(__method__, and_expression_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule equality_expression
    # 
    # (in samples/Java.g)
    # 772:1: equality_expression : instance_of_expression ( ( '==' | '!=' ) instance_of_expression )* ;
    # 
    def equality_expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 113)
      equality_expression_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 773:9: instance_of_expression ( ( '==' | '!=' ) instance_of_expression )*
        @state.following.push(TOKENS_FOLLOWING_instance_of_expression_IN_equality_expression_4535)
        instance_of_expression
        @state.following.pop
        # at line 773:32: ( ( '==' | '!=' ) instance_of_expression )*
        while true # decision 134
          alt_134 = 2
          look_134_0 = @input.peek(1)

          if (look_134_0.between?(T__102, T__103)) 
            alt_134 = 1

          end
          case alt_134
          when 1
            # at line 773:34: ( '==' | '!=' ) instance_of_expression
            if @input.peek(1).between?(T__102, T__103)
              @input.consume
              @state.error_recovery = false
            else
              @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

              mse = MismatchedSet(nil)
              raise mse
            end


            @state.following.push(TOKENS_FOLLOWING_instance_of_expression_IN_equality_expression_4547)
            instance_of_expression
            @state.following.pop

          else
            break # out of loop for decision 134
          end
        end # loop for decision 134

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 113)
        memoize(__method__, equality_expression_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule instance_of_expression
    # 
    # (in samples/Java.g)
    # 776:1: instance_of_expression : relational_expression ( 'instanceof' type )? ;
    # 
    def instance_of_expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 114)
      instance_of_expression_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 777:9: relational_expression ( 'instanceof' type )?
        @state.following.push(TOKENS_FOLLOWING_relational_expression_IN_instance_of_expression_4569)
        relational_expression
        @state.following.pop
        # at line 777:31: ( 'instanceof' type )?
        alt_135 = 2
        look_135_0 = @input.peek(1)

        if (look_135_0 == T__104) 
          alt_135 = 1
        end
        case alt_135
        when 1
          # at line 777:32: 'instanceof' type
          match(T__104, TOKENS_FOLLOWING_T__104_IN_instance_of_expression_4572)
          @state.following.push(TOKENS_FOLLOWING_type_IN_instance_of_expression_4574)
          type
          @state.following.pop

        end

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 114)
        memoize(__method__, instance_of_expression_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule relational_expression
    # 
    # (in samples/Java.g)
    # 780:1: relational_expression : shift_expression ( relational_op shift_expression )* ;
    # 
    def relational_expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 115)
      relational_expression_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 781:9: shift_expression ( relational_op shift_expression )*
        @state.following.push(TOKENS_FOLLOWING_shift_expression_IN_relational_expression_4595)
        shift_expression
        @state.following.pop
        # at line 781:26: ( relational_op shift_expression )*
        while true # decision 136
          alt_136 = 2
          look_136_0 = @input.peek(1)

          if (look_136_0 == T__40) 
            look_136_2 = @input.peek(2)

            if (look_136_2 == Identifier || look_136_2.between?(FloatingPointLiteral, DecimalLiteral) || look_136_2 == T__47 || look_136_2 == T__51 || look_136_2.between?(T__56, T__63) || look_136_2.between?(T__65, T__66) || look_136_2.between?(T__69, T__72) || look_136_2.between?(T__105, T__106) || look_136_2.between?(T__109, T__113)) 
              alt_136 = 1

            end
          elsif (look_136_0 == T__42) 
            look_136_3 = @input.peek(2)

            if (look_136_3 == Identifier || look_136_3.between?(FloatingPointLiteral, DecimalLiteral) || look_136_3 == T__47 || look_136_3 == T__51 || look_136_3.between?(T__56, T__63) || look_136_3.between?(T__65, T__66) || look_136_3.between?(T__69, T__72) || look_136_3.between?(T__105, T__106) || look_136_3.between?(T__109, T__113)) 
              alt_136 = 1

            end

          end
          case alt_136
          when 1
            # at line 781:28: relational_op shift_expression
            @state.following.push(TOKENS_FOLLOWING_relational_op_IN_relational_expression_4599)
            relational_op
            @state.following.pop
            @state.following.push(TOKENS_FOLLOWING_shift_expression_IN_relational_expression_4601)
            shift_expression
            @state.following.pop

          else
            break # out of loop for decision 136
          end
        end # loop for decision 136

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 115)
        memoize(__method__, relational_expression_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule relational_op
    # 
    # (in samples/Java.g)
    # 784:1: relational_op : ( ( '<' '=' )=>t1= '<' t2= '=' {...}? | ( '>' '=' )=>t1= '>' t2= '=' {...}? | '<' | '>' );
    # 
    def relational_op
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 116)
      relational_op_start_index = @input.index
      t1 = nil
      t2 = nil

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 785:5: ( ( '<' '=' )=>t1= '<' t2= '=' {...}? | ( '>' '=' )=>t1= '>' t2= '=' {...}? | '<' | '>' )
        alt_137 = 4
        look_137_0 = @input.peek(1)

        if (look_137_0 == T__40) 
          look_137_1 = @input.peek(2)

          if (look_137_1 == T__51) and (syntactic_predicate?(:synpred_211_java!))
            alt_137 = 1
          elsif (look_137_1 == Identifier || look_137_1.between?(FloatingPointLiteral, DecimalLiteral) || look_137_1 == T__47 || look_137_1.between?(T__56, T__63) || look_137_1.between?(T__65, T__66) || look_137_1.between?(T__69, T__72) || look_137_1.between?(T__105, T__106) || look_137_1.between?(T__109, T__113)) 
            alt_137 = 3
          else
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
          nvae = NoViableAlternative("", 137, 1)
            raise nvae
          end
        elsif (look_137_0 == T__42) 
          look_137_2 = @input.peek(2)

          if (look_137_2 == T__51) and (syntactic_predicate?(:synpred_212_java!))
            alt_137 = 2
          elsif (look_137_2 == Identifier || look_137_2.between?(FloatingPointLiteral, DecimalLiteral) || look_137_2 == T__47 || look_137_2.between?(T__56, T__63) || look_137_2.between?(T__65, T__66) || look_137_2.between?(T__69, T__72) || look_137_2.between?(T__105, T__106) || look_137_2.between?(T__109, T__113)) 
            alt_137 = 4
          else
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
          nvae = NoViableAlternative("", 137, 2)
            raise nvae
          end
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 137, 0)
          raise nvae
        end
        case alt_137
        when 1
          # at line 785:9: ( '<' '=' )=>t1= '<' t2= '=' {...}?
          t1 = match(T__40, TOKENS_FOLLOWING_T__40_IN_relational_op_4636)
          t2 = match(T__51, TOKENS_FOLLOWING_T__51_IN_relational_op_4640)
          unless (( t1.line == t2.line && 
                    t1.column + 1 == t2.column ))
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

            raise FailedPredicate("relational_op", " $t1.line == $t2.line && \n          $t1.column + 1 == $t2.column ")
          end

        when 2
          # at line 788:9: ( '>' '=' )=>t1= '>' t2= '=' {...}?
          t1 = match(T__42, TOKENS_FOLLOWING_T__42_IN_relational_op_4670)
          t2 = match(T__51, TOKENS_FOLLOWING_T__51_IN_relational_op_4674)
          unless (( t1.line == t2.line && 
                    t1.column + 1 == t2.column ))
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

            raise FailedPredicate("relational_op", " $t1.line == $t2.line && \n          $t1.column + 1 == $t2.column ")
          end

        when 3
          # at line 791:9: '<'
          match(T__40, TOKENS_FOLLOWING_T__40_IN_relational_op_4695)

        when 4
          # at line 792:9: '>'
          match(T__42, TOKENS_FOLLOWING_T__42_IN_relational_op_4706)

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 116)
        memoize(__method__, relational_op_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule shift_expression
    # 
    # (in samples/Java.g)
    # 795:1: shift_expression : additive_expression ( shift_op additive_expression )* ;
    # 
    def shift_expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 117)
      shift_expression_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 796:9: additive_expression ( shift_op additive_expression )*
        @state.following.push(TOKENS_FOLLOWING_additive_expression_IN_shift_expression_4726)
        additive_expression
        @state.following.pop
        # at line 796:29: ( shift_op additive_expression )*
        while true # decision 138
          alt_138 = 2
          look_138_0 = @input.peek(1)

          if (look_138_0 == T__40) 
            look_138_1 = @input.peek(2)

            if (look_138_1 == T__40) 
              look_138_4 = @input.peek(3)

              if (look_138_4 == Identifier || look_138_4.between?(FloatingPointLiteral, DecimalLiteral) || look_138_4 == T__47 || look_138_4.between?(T__56, T__63) || look_138_4.between?(T__65, T__66) || look_138_4.between?(T__69, T__72) || look_138_4.between?(T__105, T__106) || look_138_4.between?(T__109, T__113)) 
                alt_138 = 1

              end

            end
          elsif (look_138_0 == T__42) 
            look_138_2 = @input.peek(2)

            if (look_138_2 == T__42) 
              look_138_5 = @input.peek(3)

              if (look_138_5 == T__42) 
                look_138_7 = @input.peek(4)

                if (look_138_7 == Identifier || look_138_7.between?(FloatingPointLiteral, DecimalLiteral) || look_138_7 == T__47 || look_138_7.between?(T__56, T__63) || look_138_7.between?(T__65, T__66) || look_138_7.between?(T__69, T__72) || look_138_7.between?(T__105, T__106) || look_138_7.between?(T__109, T__113)) 
                  alt_138 = 1

                end
              elsif (look_138_5 == Identifier || look_138_5.between?(FloatingPointLiteral, DecimalLiteral) || look_138_5 == T__47 || look_138_5.between?(T__56, T__63) || look_138_5.between?(T__65, T__66) || look_138_5.between?(T__69, T__72) || look_138_5.between?(T__105, T__106) || look_138_5.between?(T__109, T__113)) 
                alt_138 = 1

              end

            end

          end
          case alt_138
          when 1
            # at line 796:31: shift_op additive_expression
            @state.following.push(TOKENS_FOLLOWING_shift_op_IN_shift_expression_4730)
            shift_op
            @state.following.pop
            @state.following.push(TOKENS_FOLLOWING_additive_expression_IN_shift_expression_4732)
            additive_expression
            @state.following.pop

          else
            break # out of loop for decision 138
          end
        end # loop for decision 138

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 117)
        memoize(__method__, shift_expression_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule shift_op
    # 
    # (in samples/Java.g)
    # 799:1: shift_op : ( ( '<' '<' )=>t1= '<' t2= '<' {...}? | ( '>' '>' '>' )=>t1= '>' t2= '>' t3= '>' {...}? | ( '>' '>' )=>t1= '>' t2= '>' {...}?);
    # 
    def shift_op
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 118)
      shift_op_start_index = @input.index
      t1 = nil
      t2 = nil
      t3 = nil

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 800:5: ( ( '<' '<' )=>t1= '<' t2= '<' {...}? | ( '>' '>' '>' )=>t1= '>' t2= '>' t3= '>' {...}? | ( '>' '>' )=>t1= '>' t2= '>' {...}?)
        alt_139 = 3
        alt_139 = @dfa139.predict(@input)
        case alt_139
        when 1
          # at line 800:9: ( '<' '<' )=>t1= '<' t2= '<' {...}?
          t1 = match(T__40, TOKENS_FOLLOWING_T__40_IN_shift_op_4763)
          t2 = match(T__40, TOKENS_FOLLOWING_T__40_IN_shift_op_4767)
          unless (( t1.line == t2.line && 
                    t1.column + 1 == t2.column ))
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

            raise FailedPredicate("shift_op", " $t1.line == $t2.line && \n          $t1.column + 1 == $t2.column ")
          end

        when 2
          # at line 803:9: ( '>' '>' '>' )=>t1= '>' t2= '>' t3= '>' {...}?
          t1 = match(T__42, TOKENS_FOLLOWING_T__42_IN_shift_op_4799)
          t2 = match(T__42, TOKENS_FOLLOWING_T__42_IN_shift_op_4803)
          t3 = match(T__42, TOKENS_FOLLOWING_T__42_IN_shift_op_4807)
          unless (( t1.line == t2.line && 
                    t1.column + 1 == t2.column &&
                    t2.line == t3.line && 
                    t2.column + 1 == t3.column ))
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

            raise FailedPredicate("shift_op", " $t1.line == $t2.line && \n          $t1.column + 1 == $t2.column &&\n          $t2.line == $t3.line && \n          $t2.column + 1 == $t3.column ")
          end

        when 3
          # at line 808:9: ( '>' '>' )=>t1= '>' t2= '>' {...}?
          t1 = match(T__42, TOKENS_FOLLOWING_T__42_IN_shift_op_4837)
          t2 = match(T__42, TOKENS_FOLLOWING_T__42_IN_shift_op_4841)
          unless (( t1.line == t2.line && 
                    t1.column + 1 == t2.column ))
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

            raise FailedPredicate("shift_op", " $t1.line == $t2.line && \n          $t1.column + 1 == $t2.column ")
          end

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 118)
        memoize(__method__, shift_op_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule additive_expression
    # 
    # (in samples/Java.g)
    # 814:1: additive_expression : multiplicative_expression ( ( '+' | '-' ) multiplicative_expression )* ;
    # 
    def additive_expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 119)
      additive_expression_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 815:9: multiplicative_expression ( ( '+' | '-' ) multiplicative_expression )*
        @state.following.push(TOKENS_FOLLOWING_multiplicative_expression_IN_additive_expression_4871)
        multiplicative_expression
        @state.following.pop
        # at line 815:35: ( ( '+' | '-' ) multiplicative_expression )*
        while true # decision 140
          alt_140 = 2
          look_140_0 = @input.peek(1)

          if (look_140_0.between?(T__105, T__106)) 
            alt_140 = 1

          end
          case alt_140
          when 1
            # at line 815:37: ( '+' | '-' ) multiplicative_expression
            if @input.peek(1).between?(T__105, T__106)
              @input.consume
              @state.error_recovery = false
            else
              @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

              mse = MismatchedSet(nil)
              raise mse
            end


            @state.following.push(TOKENS_FOLLOWING_multiplicative_expression_IN_additive_expression_4883)
            multiplicative_expression
            @state.following.pop

          else
            break # out of loop for decision 140
          end
        end # loop for decision 140

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 119)
        memoize(__method__, additive_expression_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule multiplicative_expression
    # 
    # (in samples/Java.g)
    # 818:1: multiplicative_expression : unary_expression ( ( '*' | '/' | '%' ) unary_expression )* ;
    # 
    def multiplicative_expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 120)
      multiplicative_expression_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 819:9: unary_expression ( ( '*' | '/' | '%' ) unary_expression )*
        @state.following.push(TOKENS_FOLLOWING_unary_expression_IN_multiplicative_expression_4905)
        unary_expression
        @state.following.pop
        # at line 819:26: ( ( '*' | '/' | '%' ) unary_expression )*
        while true # decision 141
          alt_141 = 2
          look_141_0 = @input.peek(1)

          if (look_141_0 == T__30 || look_141_0.between?(T__107, T__108)) 
            alt_141 = 1

          end
          case alt_141
          when 1
            # at line 819:28: ( '*' | '/' | '%' ) unary_expression
            if @input.peek(1) == T__30 || @input.peek(1).between?(T__107, T__108)
              @input.consume
              @state.error_recovery = false
            else
              @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

              mse = MismatchedSet(nil)
              raise mse
            end


            @state.following.push(TOKENS_FOLLOWING_unary_expression_IN_multiplicative_expression_4923)
            unary_expression
            @state.following.pop

          else
            break # out of loop for decision 141
          end
        end # loop for decision 141

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 120)
        memoize(__method__, multiplicative_expression_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule unary_expression
    # 
    # (in samples/Java.g)
    # 822:1: unary_expression : ( '+' unary_expression | '-' unary_expression | '++' unary_expression | '--' unary_expression | unary_expression_not_plus_minus );
    # 
    def unary_expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 121)
      unary_expression_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 823:5: ( '+' unary_expression | '-' unary_expression | '++' unary_expression | '--' unary_expression | unary_expression_not_plus_minus )
        alt_142 = 5
        case look_142 = @input.peek(1)
        when T__105 then alt_142 = 1
        when T__106 then alt_142 = 2
        when T__109 then alt_142 = 3
        when T__110 then alt_142 = 4
        when Identifier, FloatingPointLiteral, CharacterLiteral, StringLiteral, HexLiteral, OctalLiteral, DecimalLiteral, T__47, T__56, T__57, T__58, T__59, T__60, T__61, T__62, T__63, T__65, T__66, T__69, T__70, T__71, T__72, T__111, T__112, T__113 then alt_142 = 5
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          nvae = NoViableAlternative("", 142, 0)
          raise nvae
        end
        case alt_142
        when 1
          # at line 823:9: '+' unary_expression
          match(T__105, TOKENS_FOLLOWING_T__105_IN_unary_expression_4949)
          @state.following.push(TOKENS_FOLLOWING_unary_expression_IN_unary_expression_4951)
          unary_expression
          @state.following.pop

        when 2
          # at line 824:9: '-' unary_expression
          match(T__106, TOKENS_FOLLOWING_T__106_IN_unary_expression_4961)
          @state.following.push(TOKENS_FOLLOWING_unary_expression_IN_unary_expression_4963)
          unary_expression
          @state.following.pop

        when 3
          # at line 825:9: '++' unary_expression
          match(T__109, TOKENS_FOLLOWING_T__109_IN_unary_expression_4973)
          @state.following.push(TOKENS_FOLLOWING_unary_expression_IN_unary_expression_4975)
          unary_expression
          @state.following.pop

        when 4
          # at line 826:9: '--' unary_expression
          match(T__110, TOKENS_FOLLOWING_T__110_IN_unary_expression_4985)
          @state.following.push(TOKENS_FOLLOWING_unary_expression_IN_unary_expression_4987)
          unary_expression
          @state.following.pop

        when 5
          # at line 827:9: unary_expression_not_plus_minus
          @state.following.push(TOKENS_FOLLOWING_unary_expression_not_plus_minus_IN_unary_expression_4997)
          unary_expression_not_plus_minus
          @state.following.pop

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 121)
        memoize(__method__, unary_expression_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule unary_expression_not_plus_minus
    # 
    # (in samples/Java.g)
    # 830:1: unary_expression_not_plus_minus : ( '~' unary_expression | '!' unary_expression | cast_expression | primary ( selector )* ( '++' | '--' )? );
    # 
    def unary_expression_not_plus_minus
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 122)
      unary_expression_not_plus_minus_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 831:5: ( '~' unary_expression | '!' unary_expression | cast_expression | primary ( selector )* ( '++' | '--' )? )
        alt_145 = 4
        alt_145 = @dfa145.predict(@input)
        case alt_145
        when 1
          # at line 831:9: '~' unary_expression
          match(T__111, TOKENS_FOLLOWING_T__111_IN_unary_expression_not_plus_minus_5016)
          @state.following.push(TOKENS_FOLLOWING_unary_expression_IN_unary_expression_not_plus_minus_5018)
          unary_expression
          @state.following.pop

        when 2
          # at line 832:9: '!' unary_expression
          match(T__112, TOKENS_FOLLOWING_T__112_IN_unary_expression_not_plus_minus_5028)
          @state.following.push(TOKENS_FOLLOWING_unary_expression_IN_unary_expression_not_plus_minus_5030)
          unary_expression
          @state.following.pop

        when 3
          # at line 833:9: cast_expression
          @state.following.push(TOKENS_FOLLOWING_cast_expression_IN_unary_expression_not_plus_minus_5040)
          cast_expression
          @state.following.pop

        when 4
          # at line 834:9: primary ( selector )* ( '++' | '--' )?
          @state.following.push(TOKENS_FOLLOWING_primary_IN_unary_expression_not_plus_minus_5050)
          primary
          @state.following.pop
          # at line 834:17: ( selector )*
          while true # decision 143
            alt_143 = 2
            look_143_0 = @input.peek(1)

            if (look_143_0 == T__29 || look_143_0 == T__48) 
              alt_143 = 1

            end
            case alt_143
            when 1
              # at line 0:0: selector
              @state.following.push(TOKENS_FOLLOWING_selector_IN_unary_expression_not_plus_minus_5052)
              selector
              @state.following.pop

            else
              break # out of loop for decision 143
            end
          end # loop for decision 143
          # at line 834:27: ( '++' | '--' )?
          alt_144 = 2
          look_144_0 = @input.peek(1)

          if (look_144_0.between?(T__109, T__110)) 
            alt_144 = 1
          end
          case alt_144
          when 1
            # at line 
            if @input.peek(1).between?(T__109, T__110)
              @input.consume
              @state.error_recovery = false
            else
              @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

              mse = MismatchedSet(nil)
              raise mse
            end



          end

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 122)
        memoize(__method__, unary_expression_not_plus_minus_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule cast_expression
    # 
    # (in samples/Java.g)
    # 837:1: cast_expression : ( '(' primitive_type ')' unary_expression | '(' ( type | expression ) ')' unary_expression_not_plus_minus );
    # 
    def cast_expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 123)
      cast_expression_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 838:5: ( '(' primitive_type ')' unary_expression | '(' ( type | expression ) ')' unary_expression_not_plus_minus )
        alt_147 = 2
        look_147_0 = @input.peek(1)

        if (look_147_0 == T__66) 
          look_147_1 = @input.peek(2)

          if (syntactic_predicate?(:synpred_233_java!)) 
            alt_147 = 1
          elsif (true) 
            alt_147 = 2
          else
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
          nvae = NoViableAlternative("", 147, 1)
            raise nvae
          end
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 147, 0)
          raise nvae
        end
        case alt_147
        when 1
          # at line 838:8: '(' primitive_type ')' unary_expression
          match(T__66, TOKENS_FOLLOWING_T__66_IN_cast_expression_5078)
          @state.following.push(TOKENS_FOLLOWING_primitive_type_IN_cast_expression_5080)
          primitive_type
          @state.following.pop
          match(T__67, TOKENS_FOLLOWING_T__67_IN_cast_expression_5082)
          @state.following.push(TOKENS_FOLLOWING_unary_expression_IN_cast_expression_5084)
          unary_expression
          @state.following.pop

        when 2
          # at line 839:8: '(' ( type | expression ) ')' unary_expression_not_plus_minus
          match(T__66, TOKENS_FOLLOWING_T__66_IN_cast_expression_5093)
          # at line 839:12: ( type | expression )
          alt_146 = 2
          alt_146 = @dfa146.predict(@input)
          case alt_146
          when 1
            # at line 839:13: type
            @state.following.push(TOKENS_FOLLOWING_type_IN_cast_expression_5096)
            type
            @state.following.pop

          when 2
            # at line 839:20: expression
            @state.following.push(TOKENS_FOLLOWING_expression_IN_cast_expression_5100)
            expression
            @state.following.pop

          end
          match(T__67, TOKENS_FOLLOWING_T__67_IN_cast_expression_5103)
          @state.following.push(TOKENS_FOLLOWING_unary_expression_not_plus_minus_IN_cast_expression_5105)
          unary_expression_not_plus_minus
          @state.following.pop

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 123)
        memoize(__method__, cast_expression_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule primary
    # 
    # (in samples/Java.g)
    # 842:1: primary : ( par_expression | 'this' ( '.' Identifier )* ( identifier_suffix )? | 'super' super_suffix | literal | 'new' creator | Identifier ( '.' Identifier )* ( identifier_suffix )? | primitive_type ( '[' ']' )* '.' 'class' | 'void' '.' 'class' );
    # 
    def primary
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 124)
      primary_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 843:5: ( par_expression | 'this' ( '.' Identifier )* ( identifier_suffix )? | 'super' super_suffix | literal | 'new' creator | Identifier ( '.' Identifier )* ( identifier_suffix )? | primitive_type ( '[' ']' )* '.' 'class' | 'void' '.' 'class' )
        alt_153 = 8
        case look_153 = @input.peek(1)
        when T__66 then alt_153 = 1
        when T__69 then alt_153 = 2
        when T__65 then alt_153 = 3
        when FloatingPointLiteral, CharacterLiteral, StringLiteral, HexLiteral, OctalLiteral, DecimalLiteral, T__70, T__71, T__72 then alt_153 = 4
        when T__113 then alt_153 = 5
        when Identifier then alt_153 = 6
        when T__56, T__57, T__58, T__59, T__60, T__61, T__62, T__63 then alt_153 = 7
        when T__47 then alt_153 = 8
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          nvae = NoViableAlternative("", 153, 0)
          raise nvae
        end
        case alt_153
        when 1
          # at line 843:9: par_expression
          @state.following.push(TOKENS_FOLLOWING_par_expression_IN_primary_5124)
          par_expression
          @state.following.pop

        when 2
          # at line 844:9: 'this' ( '.' Identifier )* ( identifier_suffix )?
          match(T__69, TOKENS_FOLLOWING_T__69_IN_primary_5134)
          # at line 844:16: ( '.' Identifier )*
          while true # decision 148
            alt_148 = 2
            look_148_0 = @input.peek(1)

            if (look_148_0 == T__29) 
              look_148_2 = @input.peek(2)

              if (look_148_2 == Identifier) 
                look_148_3 = @input.peek(3)

                if (syntactic_predicate?(:synpred_236_java!)) 
                  alt_148 = 1

                end

              end

            end
            case alt_148
            when 1
              # at line 844:17: '.' Identifier
              match(T__29, TOKENS_FOLLOWING_T__29_IN_primary_5137)
              match(Identifier, TOKENS_FOLLOWING_Identifier_IN_primary_5139)

            else
              break # out of loop for decision 148
            end
          end # loop for decision 148
          # at line 844:34: ( identifier_suffix )?
          alt_149 = 2
          alt_149 = @dfa149.predict(@input)
          case alt_149
          when 1
            # at line 0:0: identifier_suffix
            @state.following.push(TOKENS_FOLLOWING_identifier_suffix_IN_primary_5143)
            identifier_suffix
            @state.following.pop

          end

        when 3
          # at line 845:9: 'super' super_suffix
          match(T__65, TOKENS_FOLLOWING_T__65_IN_primary_5154)
          @state.following.push(TOKENS_FOLLOWING_super_suffix_IN_primary_5156)
          super_suffix
          @state.following.pop

        when 4
          # at line 846:9: literal
          @state.following.push(TOKENS_FOLLOWING_literal_IN_primary_5166)
          literal
          @state.following.pop

        when 5
          # at line 847:9: 'new' creator
          match(T__113, TOKENS_FOLLOWING_T__113_IN_primary_5176)
          @state.following.push(TOKENS_FOLLOWING_creator_IN_primary_5178)
          creator
          @state.following.pop

        when 6
          # at line 848:9: Identifier ( '.' Identifier )* ( identifier_suffix )?
          match(Identifier, TOKENS_FOLLOWING_Identifier_IN_primary_5188)
          # at line 848:20: ( '.' Identifier )*
          while true # decision 150
            alt_150 = 2
            look_150_0 = @input.peek(1)

            if (look_150_0 == T__29) 
              look_150_2 = @input.peek(2)

              if (look_150_2 == Identifier) 
                look_150_3 = @input.peek(3)

                if (syntactic_predicate?(:synpred_242_java!)) 
                  alt_150 = 1

                end

              end

            end
            case alt_150
            when 1
              # at line 848:21: '.' Identifier
              match(T__29, TOKENS_FOLLOWING_T__29_IN_primary_5191)
              match(Identifier, TOKENS_FOLLOWING_Identifier_IN_primary_5193)

            else
              break # out of loop for decision 150
            end
          end # loop for decision 150
          # at line 848:38: ( identifier_suffix )?
          alt_151 = 2
          alt_151 = @dfa151.predict(@input)
          case alt_151
          when 1
            # at line 0:0: identifier_suffix
            @state.following.push(TOKENS_FOLLOWING_identifier_suffix_IN_primary_5197)
            identifier_suffix
            @state.following.pop

          end

        when 7
          # at line 849:9: primitive_type ( '[' ']' )* '.' 'class'
          @state.following.push(TOKENS_FOLLOWING_primitive_type_IN_primary_5208)
          primitive_type
          @state.following.pop
          # at line 849:24: ( '[' ']' )*
          while true # decision 152
            alt_152 = 2
            look_152_0 = @input.peek(1)

            if (look_152_0 == T__48) 
              alt_152 = 1

            end
            case alt_152
            when 1
              # at line 849:25: '[' ']'
              match(T__48, TOKENS_FOLLOWING_T__48_IN_primary_5211)
              match(T__49, TOKENS_FOLLOWING_T__49_IN_primary_5213)

            else
              break # out of loop for decision 152
            end
          end # loop for decision 152
          match(T__29, TOKENS_FOLLOWING_T__29_IN_primary_5217)
          match(T__37, TOKENS_FOLLOWING_T__37_IN_primary_5219)

        when 8
          # at line 850:9: 'void' '.' 'class'
          match(T__47, TOKENS_FOLLOWING_T__47_IN_primary_5229)
          match(T__29, TOKENS_FOLLOWING_T__29_IN_primary_5231)
          match(T__37, TOKENS_FOLLOWING_T__37_IN_primary_5233)

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 124)
        memoize(__method__, primary_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule identifier_suffix
    # 
    # (in samples/Java.g)
    # 853:1: identifier_suffix : ( ( '[' ']' )+ '.' 'class' | ( '[' expression ']' )+ | arguments | '.' 'class' | '.' explicit_generic_invocation | '.' 'this' | '.' 'super' arguments | '.' 'new' inner_creator );
    # 
    def identifier_suffix
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 125)
      identifier_suffix_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 854:5: ( ( '[' ']' )+ '.' 'class' | ( '[' expression ']' )+ | arguments | '.' 'class' | '.' explicit_generic_invocation | '.' 'this' | '.' 'super' arguments | '.' 'new' inner_creator )
        alt_156 = 8
        alt_156 = @dfa156.predict(@input)
        case alt_156
        when 1
          # at line 854:9: ( '[' ']' )+ '.' 'class'
          # at file 854:9: ( '[' ']' )+
          match_count_154 = 0
          while true
            alt_154 = 2
            look_154_0 = @input.peek(1)

            if (look_154_0 == T__48) 
              alt_154 = 1

            end
            case alt_154
            when 1
              # at line 854:10: '[' ']'
              match(T__48, TOKENS_FOLLOWING_T__48_IN_identifier_suffix_5253)
              match(T__49, TOKENS_FOLLOWING_T__49_IN_identifier_suffix_5255)

            else
              match_count_154 > 0 and break
              @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

              eee = EarlyExit(154)


              raise eee
            end
            match_count_154 += 1
          end

          match(T__29, TOKENS_FOLLOWING_T__29_IN_identifier_suffix_5259)
          match(T__37, TOKENS_FOLLOWING_T__37_IN_identifier_suffix_5261)

        when 2
          # at line 855:9: ( '[' expression ']' )+
          # at file 855:9: ( '[' expression ']' )+
          match_count_155 = 0
          while true
            alt_155 = 2
            alt_155 = @dfa155.predict(@input)
            case alt_155
            when 1
              # at line 855:10: '[' expression ']'
              match(T__48, TOKENS_FOLLOWING_T__48_IN_identifier_suffix_5272)
              @state.following.push(TOKENS_FOLLOWING_expression_IN_identifier_suffix_5274)
              expression
              @state.following.pop
              match(T__49, TOKENS_FOLLOWING_T__49_IN_identifier_suffix_5276)

            else
              match_count_155 > 0 and break
              @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

              eee = EarlyExit(155)


              raise eee
            end
            match_count_155 += 1
          end


        when 3
          # at line 856:9: arguments
          @state.following.push(TOKENS_FOLLOWING_arguments_IN_identifier_suffix_5289)
          arguments
          @state.following.pop

        when 4
          # at line 857:9: '.' 'class'
          match(T__29, TOKENS_FOLLOWING_T__29_IN_identifier_suffix_5299)
          match(T__37, TOKENS_FOLLOWING_T__37_IN_identifier_suffix_5301)

        when 5
          # at line 858:9: '.' explicit_generic_invocation
          match(T__29, TOKENS_FOLLOWING_T__29_IN_identifier_suffix_5311)
          @state.following.push(TOKENS_FOLLOWING_explicit_generic_invocation_IN_identifier_suffix_5313)
          explicit_generic_invocation
          @state.following.pop

        when 6
          # at line 859:9: '.' 'this'
          match(T__29, TOKENS_FOLLOWING_T__29_IN_identifier_suffix_5323)
          match(T__69, TOKENS_FOLLOWING_T__69_IN_identifier_suffix_5325)

        when 7
          # at line 860:9: '.' 'super' arguments
          match(T__29, TOKENS_FOLLOWING_T__29_IN_identifier_suffix_5335)
          match(T__65, TOKENS_FOLLOWING_T__65_IN_identifier_suffix_5337)
          @state.following.push(TOKENS_FOLLOWING_arguments_IN_identifier_suffix_5339)
          arguments
          @state.following.pop

        when 8
          # at line 861:9: '.' 'new' inner_creator
          match(T__29, TOKENS_FOLLOWING_T__29_IN_identifier_suffix_5349)
          match(T__113, TOKENS_FOLLOWING_T__113_IN_identifier_suffix_5351)
          @state.following.push(TOKENS_FOLLOWING_inner_creator_IN_identifier_suffix_5353)
          inner_creator
          @state.following.pop

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 125)
        memoize(__method__, identifier_suffix_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule creator
    # 
    # (in samples/Java.g)
    # 864:1: creator : ( non_wildcard_type_arguments created_name class_creator_rest | created_name ( array_creator_rest | class_creator_rest ) );
    # 
    def creator
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 126)
      creator_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 865:5: ( non_wildcard_type_arguments created_name class_creator_rest | created_name ( array_creator_rest | class_creator_rest ) )
        alt_158 = 2
        look_158_0 = @input.peek(1)

        if (look_158_0 == T__40) 
          alt_158 = 1
        elsif (look_158_0 == Identifier || look_158_0.between?(T__56, T__63)) 
          alt_158 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 158, 0)
          raise nvae
        end
        case alt_158
        when 1
          # at line 865:9: non_wildcard_type_arguments created_name class_creator_rest
          @state.following.push(TOKENS_FOLLOWING_non_wildcard_type_arguments_IN_creator_5372)
          non_wildcard_type_arguments
          @state.following.pop
          @state.following.push(TOKENS_FOLLOWING_created_name_IN_creator_5374)
          created_name
          @state.following.pop
          @state.following.push(TOKENS_FOLLOWING_class_creator_rest_IN_creator_5376)
          class_creator_rest
          @state.following.pop

        when 2
          # at line 866:9: created_name ( array_creator_rest | class_creator_rest )
          @state.following.push(TOKENS_FOLLOWING_created_name_IN_creator_5386)
          created_name
          @state.following.pop
          # at line 866:22: ( array_creator_rest | class_creator_rest )
          alt_157 = 2
          look_157_0 = @input.peek(1)

          if (look_157_0 == T__48) 
            alt_157 = 1
          elsif (look_157_0 == T__66) 
            alt_157 = 2
          else
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
          nvae = NoViableAlternative("", 157, 0)
            raise nvae
          end
          case alt_157
          when 1
            # at line 866:23: array_creator_rest
            @state.following.push(TOKENS_FOLLOWING_array_creator_rest_IN_creator_5389)
            array_creator_rest
            @state.following.pop

          when 2
            # at line 866:44: class_creator_rest
            @state.following.push(TOKENS_FOLLOWING_class_creator_rest_IN_creator_5393)
            class_creator_rest
            @state.following.pop

          end

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 126)
        memoize(__method__, creator_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule created_name
    # 
    # (in samples/Java.g)
    # 869:1: created_name : ( class_or_interface_type | primitive_type );
    # 
    def created_name
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 127)
      created_name_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 870:5: ( class_or_interface_type | primitive_type )
        alt_159 = 2
        look_159_0 = @input.peek(1)

        if (look_159_0 == Identifier) 
          alt_159 = 1
        elsif (look_159_0.between?(T__56, T__63)) 
          alt_159 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 159, 0)
          raise nvae
        end
        case alt_159
        when 1
          # at line 870:9: class_or_interface_type
          @state.following.push(TOKENS_FOLLOWING_class_or_interface_type_IN_created_name_5413)
          class_or_interface_type
          @state.following.pop

        when 2
          # at line 871:9: primitive_type
          @state.following.push(TOKENS_FOLLOWING_primitive_type_IN_created_name_5423)
          primitive_type
          @state.following.pop

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 127)
        memoize(__method__, created_name_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule inner_creator
    # 
    # (in samples/Java.g)
    # 874:1: inner_creator : ( non_wildcard_type_arguments )? Identifier class_creator_rest ;
    # 
    def inner_creator
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 128)
      inner_creator_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 875:9: ( non_wildcard_type_arguments )? Identifier class_creator_rest
        # at line 875:9: ( non_wildcard_type_arguments )?
        alt_160 = 2
        look_160_0 = @input.peek(1)

        if (look_160_0 == T__40) 
          alt_160 = 1
        end
        case alt_160
        when 1
          # at line 0:0: non_wildcard_type_arguments
          @state.following.push(TOKENS_FOLLOWING_non_wildcard_type_arguments_IN_inner_creator_5446)
          non_wildcard_type_arguments
          @state.following.pop

        end
        match(Identifier, TOKENS_FOLLOWING_Identifier_IN_inner_creator_5449)
        @state.following.push(TOKENS_FOLLOWING_class_creator_rest_IN_inner_creator_5451)
        class_creator_rest
        @state.following.pop

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 128)
        memoize(__method__, inner_creator_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule array_creator_rest
    # 
    # (in samples/Java.g)
    # 878:1: array_creator_rest : '[' ( ']' ( '[' ']' )* array_initializer | expression ']' ( '[' expression ']' )* ( '[' ']' )* ) ;
    # 
    def array_creator_rest
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 129)
      array_creator_rest_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 879:9: '[' ( ']' ( '[' ']' )* array_initializer | expression ']' ( '[' expression ']' )* ( '[' ']' )* )
        match(T__48, TOKENS_FOLLOWING_T__48_IN_array_creator_rest_5470)
        # at line 880:9: ( ']' ( '[' ']' )* array_initializer | expression ']' ( '[' expression ']' )* ( '[' ']' )* )
        alt_164 = 2
        look_164_0 = @input.peek(1)

        if (look_164_0 == T__49) 
          alt_164 = 1
        elsif (look_164_0 == Identifier || look_164_0.between?(FloatingPointLiteral, DecimalLiteral) || look_164_0 == T__47 || look_164_0.between?(T__56, T__63) || look_164_0.between?(T__65, T__66) || look_164_0.between?(T__69, T__72) || look_164_0.between?(T__105, T__106) || look_164_0.between?(T__109, T__113)) 
          alt_164 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 164, 0)
          raise nvae
        end
        case alt_164
        when 1
          # at line 880:13: ']' ( '[' ']' )* array_initializer
          match(T__49, TOKENS_FOLLOWING_T__49_IN_array_creator_rest_5484)
          # at line 880:17: ( '[' ']' )*
          while true # decision 161
            alt_161 = 2
            look_161_0 = @input.peek(1)

            if (look_161_0 == T__48) 
              alt_161 = 1

            end
            case alt_161
            when 1
              # at line 880:18: '[' ']'
              match(T__48, TOKENS_FOLLOWING_T__48_IN_array_creator_rest_5487)
              match(T__49, TOKENS_FOLLOWING_T__49_IN_array_creator_rest_5489)

            else
              break # out of loop for decision 161
            end
          end # loop for decision 161
          @state.following.push(TOKENS_FOLLOWING_array_initializer_IN_array_creator_rest_5493)
          array_initializer
          @state.following.pop

        when 2
          # at line 881:13: expression ']' ( '[' expression ']' )* ( '[' ']' )*
          @state.following.push(TOKENS_FOLLOWING_expression_IN_array_creator_rest_5507)
          expression
          @state.following.pop
          match(T__49, TOKENS_FOLLOWING_T__49_IN_array_creator_rest_5509)
          # at line 881:28: ( '[' expression ']' )*
          while true # decision 162
            alt_162 = 2
            alt_162 = @dfa162.predict(@input)
            case alt_162
            when 1
              # at line 881:29: '[' expression ']'
              match(T__48, TOKENS_FOLLOWING_T__48_IN_array_creator_rest_5512)
              @state.following.push(TOKENS_FOLLOWING_expression_IN_array_creator_rest_5514)
              expression
              @state.following.pop
              match(T__49, TOKENS_FOLLOWING_T__49_IN_array_creator_rest_5516)

            else
              break # out of loop for decision 162
            end
          end # loop for decision 162
          # at line 881:50: ( '[' ']' )*
          while true # decision 163
            alt_163 = 2
            look_163_0 = @input.peek(1)

            if (look_163_0 == T__48) 
              look_163_2 = @input.peek(2)

              if (look_163_2 == T__49) 
                alt_163 = 1

              end

            end
            case alt_163
            when 1
              # at line 881:51: '[' ']'
              match(T__48, TOKENS_FOLLOWING_T__48_IN_array_creator_rest_5521)
              match(T__49, TOKENS_FOLLOWING_T__49_IN_array_creator_rest_5523)

            else
              break # out of loop for decision 163
            end
          end # loop for decision 163

        end

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 129)
        memoize(__method__, array_creator_rest_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule class_creator_rest
    # 
    # (in samples/Java.g)
    # 885:1: class_creator_rest : arguments ( class_body )? ;
    # 
    def class_creator_rest
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 130)
      class_creator_rest_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 886:9: arguments ( class_body )?
        @state.following.push(TOKENS_FOLLOWING_arguments_IN_class_creator_rest_5554)
        arguments
        @state.following.pop
        # at line 886:19: ( class_body )?
        alt_165 = 2
        look_165_0 = @input.peek(1)

        if (look_165_0 == T__44) 
          alt_165 = 1
        end
        case alt_165
        when 1
          # at line 0:0: class_body
          @state.following.push(TOKENS_FOLLOWING_class_body_IN_class_creator_rest_5556)
          class_body
          @state.following.pop

        end

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 130)
        memoize(__method__, class_creator_rest_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule explicit_generic_invocation
    # 
    # (in samples/Java.g)
    # 889:1: explicit_generic_invocation : non_wildcard_type_arguments Identifier arguments ;
    # 
    def explicit_generic_invocation
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 131)
      explicit_generic_invocation_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 890:9: non_wildcard_type_arguments Identifier arguments
        @state.following.push(TOKENS_FOLLOWING_non_wildcard_type_arguments_IN_explicit_generic_invocation_5580)
        non_wildcard_type_arguments
        @state.following.pop
        match(Identifier, TOKENS_FOLLOWING_Identifier_IN_explicit_generic_invocation_5582)
        @state.following.push(TOKENS_FOLLOWING_arguments_IN_explicit_generic_invocation_5584)
        arguments
        @state.following.pop

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 131)
        memoize(__method__, explicit_generic_invocation_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule non_wildcard_type_arguments
    # 
    # (in samples/Java.g)
    # 893:1: non_wildcard_type_arguments : '<' type_list '>' ;
    # 
    def non_wildcard_type_arguments
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 132)
      non_wildcard_type_arguments_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 894:9: '<' type_list '>'
        match(T__40, TOKENS_FOLLOWING_T__40_IN_non_wildcard_type_arguments_5607)
        @state.following.push(TOKENS_FOLLOWING_type_list_IN_non_wildcard_type_arguments_5609)
        type_list
        @state.following.pop
        match(T__42, TOKENS_FOLLOWING_T__42_IN_non_wildcard_type_arguments_5611)

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 132)
        memoize(__method__, non_wildcard_type_arguments_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule selector
    # 
    # (in samples/Java.g)
    # 897:1: selector : ( '.' Identifier ( arguments )? | '.' 'this' | '.' 'super' super_suffix | '.' 'new' inner_creator | '[' expression ']' );
    # 
    def selector
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 133)
      selector_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 898:5: ( '.' Identifier ( arguments )? | '.' 'this' | '.' 'super' super_suffix | '.' 'new' inner_creator | '[' expression ']' )
        alt_167 = 5
        look_167_0 = @input.peek(1)

        if (look_167_0 == T__29) 
          case look_167 = @input.peek(2)
          when Identifier then alt_167 = 1
          when T__69 then alt_167 = 2
          when T__65 then alt_167 = 3
          when T__113 then alt_167 = 4
          else
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

            nvae = NoViableAlternative("", 167, 1)
            raise nvae
          end
        elsif (look_167_0 == T__48) 
          alt_167 = 5
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 167, 0)
          raise nvae
        end
        case alt_167
        when 1
          # at line 898:9: '.' Identifier ( arguments )?
          match(T__29, TOKENS_FOLLOWING_T__29_IN_selector_5634)
          match(Identifier, TOKENS_FOLLOWING_Identifier_IN_selector_5636)
          # at line 898:24: ( arguments )?
          alt_166 = 2
          look_166_0 = @input.peek(1)

          if (look_166_0 == T__66) 
            alt_166 = 1
          end
          case alt_166
          when 1
            # at line 0:0: arguments
            @state.following.push(TOKENS_FOLLOWING_arguments_IN_selector_5638)
            arguments
            @state.following.pop

          end

        when 2
          # at line 899:9: '.' 'this'
          match(T__29, TOKENS_FOLLOWING_T__29_IN_selector_5649)
          match(T__69, TOKENS_FOLLOWING_T__69_IN_selector_5651)

        when 3
          # at line 900:9: '.' 'super' super_suffix
          match(T__29, TOKENS_FOLLOWING_T__29_IN_selector_5661)
          match(T__65, TOKENS_FOLLOWING_T__65_IN_selector_5663)
          @state.following.push(TOKENS_FOLLOWING_super_suffix_IN_selector_5665)
          super_suffix
          @state.following.pop

        when 4
          # at line 901:9: '.' 'new' inner_creator
          match(T__29, TOKENS_FOLLOWING_T__29_IN_selector_5675)
          match(T__113, TOKENS_FOLLOWING_T__113_IN_selector_5677)
          @state.following.push(TOKENS_FOLLOWING_inner_creator_IN_selector_5679)
          inner_creator
          @state.following.pop

        when 5
          # at line 902:9: '[' expression ']'
          match(T__48, TOKENS_FOLLOWING_T__48_IN_selector_5689)
          @state.following.push(TOKENS_FOLLOWING_expression_IN_selector_5691)
          expression
          @state.following.pop
          match(T__49, TOKENS_FOLLOWING_T__49_IN_selector_5693)

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 133)
        memoize(__method__, selector_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule super_suffix
    # 
    # (in samples/Java.g)
    # 905:1: super_suffix : ( arguments | '.' Identifier ( arguments )? );
    # 
    def super_suffix
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 134)
      super_suffix_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 906:5: ( arguments | '.' Identifier ( arguments )? )
        alt_169 = 2
        look_169_0 = @input.peek(1)

        if (look_169_0 == T__66) 
          alt_169 = 1
        elsif (look_169_0 == T__29) 
          alt_169 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 169, 0)
          raise nvae
        end
        case alt_169
        when 1
          # at line 906:9: arguments
          @state.following.push(TOKENS_FOLLOWING_arguments_IN_super_suffix_5716)
          arguments
          @state.following.pop

        when 2
          # at line 907:9: '.' Identifier ( arguments )?
          match(T__29, TOKENS_FOLLOWING_T__29_IN_super_suffix_5726)
          match(Identifier, TOKENS_FOLLOWING_Identifier_IN_super_suffix_5728)
          # at line 907:24: ( arguments )?
          alt_168 = 2
          look_168_0 = @input.peek(1)

          if (look_168_0 == T__66) 
            alt_168 = 1
          end
          case alt_168
          when 1
            # at line 0:0: arguments
            @state.following.push(TOKENS_FOLLOWING_arguments_IN_super_suffix_5730)
            arguments
            @state.following.pop

          end

        end
        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 134)
        memoize(__method__, super_suffix_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end


    # 
    # parser rule arguments
    # 
    # (in samples/Java.g)
    # 910:1: arguments : '(' ( expression_list )? ')' ;
    # 
    def arguments
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 135)
      arguments_start_index = @input.index

      success = false # flag used for memoization

      begin
        # rule memoization
        if @state.backtracking > 0 and already_parsed_rule?( __method__ )
          success = true
          return 
        end
        # at line 911:9: '(' ( expression_list )? ')'
        match(T__66, TOKENS_FOLLOWING_T__66_IN_arguments_5750)
        # at line 911:13: ( expression_list )?
        alt_170 = 2
        look_170_0 = @input.peek(1)

        if (look_170_0 == Identifier || look_170_0.between?(FloatingPointLiteral, DecimalLiteral) || look_170_0 == T__47 || look_170_0.between?(T__56, T__63) || look_170_0.between?(T__65, T__66) || look_170_0.between?(T__69, T__72) || look_170_0.between?(T__105, T__106) || look_170_0.between?(T__109, T__113)) 
          alt_170 = 1
        end
        case alt_170
        when 1
          # at line 0:0: expression_list
          @state.following.push(TOKENS_FOLLOWING_expression_list_IN_arguments_5752)
          expression_list
          @state.following.pop

        end
        match(T__67, TOKENS_FOLLOWING_T__67_IN_arguments_5755)

        success = true

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 135)
        memoize(__method__, arguments_start_index, success) if @state.backtracking > 0

      end
      
      return 
    end

    # 
    # syntactic predicate synpred_5_java!
    # 
    # (in samples/Java.g)
    # 185:9: synpred5_Java : annotations ( package_declaration ( import_declaration )* ( type_declaration )* | class_or_interface_declaration ( type_declaration )* ) ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred_5_java!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 140)

      # at line 185:9: annotations ( package_declaration ( import_declaration )* ( type_declaration )* | class_or_interface_declaration ( type_declaration )* )
      @state.following.push(TOKENS_FOLLOWING_annotations_IN_synpred5_Java_75)
      annotations
      @state.following.pop
      # at line 186:9: ( package_declaration ( import_declaration )* ( type_declaration )* | class_or_interface_declaration ( type_declaration )* )
      alt_176 = 2
      look_176_0 = @input.peek(1)

      if (look_176_0 == T__25) 
        alt_176 = 1
      elsif (look_176_0 == ENUM || look_176_0 == T__28 || look_176_0.between?(T__31, T__37) || look_176_0 == T__46 || look_176_0 == T__73) 
        alt_176 = 2
      else
        @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
      nvae = NoViableAlternative("", 176, 0)
        raise nvae
      end
      case alt_176
      when 1
        # at line 186:13: package_declaration ( import_declaration )* ( type_declaration )*
        @state.following.push(TOKENS_FOLLOWING_package_declaration_IN_synpred5_Java_89)
        package_declaration
        @state.following.pop
        # at line 186:33: ( import_declaration )*
        while true # decision 173
          alt_173 = 2
          look_173_0 = @input.peek(1)

          if (look_173_0 == T__27) 
            alt_173 = 1

          end
          case alt_173
          when 1
            # at line 0:0: import_declaration
            @state.following.push(TOKENS_FOLLOWING_import_declaration_IN_synpred5_Java_91)
            import_declaration
            @state.following.pop

          else
            break # out of loop for decision 173
          end
        end # loop for decision 173
        # at line 186:53: ( type_declaration )*
        while true # decision 174
          alt_174 = 2
          look_174_0 = @input.peek(1)

          if (look_174_0 == ENUM || look_174_0 == T__26 || look_174_0 == T__28 || look_174_0.between?(T__31, T__37) || look_174_0 == T__46 || look_174_0 == T__73) 
            alt_174 = 1

          end
          case alt_174
          when 1
            # at line 0:0: type_declaration
            @state.following.push(TOKENS_FOLLOWING_type_declaration_IN_synpred5_Java_94)
            type_declaration
            @state.following.pop

          else
            break # out of loop for decision 174
          end
        end # loop for decision 174

      when 2
        # at line 187:13: class_or_interface_declaration ( type_declaration )*
        @state.following.push(TOKENS_FOLLOWING_class_or_interface_declaration_IN_synpred5_Java_109)
        class_or_interface_declaration
        @state.following.pop
        # at line 187:44: ( type_declaration )*
        while true # decision 175
          alt_175 = 2
          look_175_0 = @input.peek(1)

          if (look_175_0 == ENUM || look_175_0 == T__26 || look_175_0 == T__28 || look_175_0.between?(T__31, T__37) || look_175_0 == T__46 || look_175_0 == T__73) 
            alt_175 = 1

          end
          case alt_175
          when 1
            # at line 0:0: type_declaration
            @state.following.push(TOKENS_FOLLOWING_type_declaration_IN_synpred5_Java_111)
            type_declaration
            @state.following.pop

          else
            break # out of loop for decision 175
          end
        end # loop for decision 175

      end

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 140)

    end
    # 
    # syntactic predicate synpred_113_java!
    # 
    # (in samples/Java.g)
    # 499:13: synpred113_Java : explicit_constructor_invocation ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred_113_java!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 248)

      # at line 499:13: explicit_constructor_invocation
      @state.following.push(TOKENS_FOLLOWING_explicit_constructor_invocation_IN_synpred113_Java_2486)
      explicit_constructor_invocation
      @state.following.pop

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 248)

    end
    # 
    # syntactic predicate synpred_117_java!
    # 
    # (in samples/Java.g)
    # 503:9: synpred117_Java : ( non_wildcard_type_arguments )? ( 'this' | 'super' ) arguments ';' ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred_117_java!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 252)

      # at line 503:9: ( non_wildcard_type_arguments )? ( 'this' | 'super' ) arguments ';'
      # at line 503:9: ( non_wildcard_type_arguments )?
      alt_184 = 2
      look_184_0 = @input.peek(1)

      if (look_184_0 == T__40) 
        alt_184 = 1
      end
      case alt_184
      when 1
        # at line 0:0: non_wildcard_type_arguments
        @state.following.push(TOKENS_FOLLOWING_non_wildcard_type_arguments_IN_synpred117_Java_2511)
        non_wildcard_type_arguments
        @state.following.pop

      end
      if @input.peek(1) == T__65 || @input.peek(1) == T__69
        @input.consume
        @state.error_recovery = false
      else
        @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

        mse = MismatchedSet(nil)
        raise mse
      end


      @state.following.push(TOKENS_FOLLOWING_arguments_IN_synpred117_Java_2522)
      arguments
      @state.following.pop
      match(T__26, TOKENS_FOLLOWING_T__26_IN_synpred117_Java_2524)

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 252)

    end
    # 
    # syntactic predicate synpred_128_java!
    # 
    # (in samples/Java.g)
    # 535:9: synpred128_Java : annotation ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred_128_java!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 263)

      # at line 535:9: annotation
      @state.following.push(TOKENS_FOLLOWING_annotation_IN_synpred128_Java_2735)
      annotation
      @state.following.pop

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 263)

    end
    # 
    # syntactic predicate synpred_151_java!
    # 
    # (in samples/Java.g)
    # 608:9: synpred151_Java : local_variable_declaration_statement ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred_151_java!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 286)

      # at line 608:9: local_variable_declaration_statement
      @state.following.push(TOKENS_FOLLOWING_local_variable_declaration_statement_IN_synpred151_Java_3262)
      local_variable_declaration_statement
      @state.following.pop

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 286)

    end
    # 
    # syntactic predicate synpred_152_java!
    # 
    # (in samples/Java.g)
    # 609:9: synpred152_Java : class_or_interface_declaration ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred_152_java!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 287)

      # at line 609:9: class_or_interface_declaration
      @state.following.push(TOKENS_FOLLOWING_class_or_interface_declaration_IN_synpred152_Java_3272)
      class_or_interface_declaration
      @state.following.pop

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 287)

    end
    # 
    # syntactic predicate synpred_157_java!
    # 
    # (in samples/Java.g)
    # 628:55: synpred157_Java : 'else' statement ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred_157_java!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 292)

      # at line 628:55: 'else' statement
      match(T__77, TOKENS_FOLLOWING_T__77_IN_synpred157_Java_3417)
      @state.following.push(TOKENS_FOLLOWING_statement_IN_synpred157_Java_3419)
      statement
      @state.following.pop

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 292)

    end
    # 
    # syntactic predicate synpred_162_java!
    # 
    # (in samples/Java.g)
    # 633:11: synpred162_Java : catches 'finally' block ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred_162_java!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 297)

      # at line 633:11: catches 'finally' block
      @state.following.push(TOKENS_FOLLOWING_catches_IN_synpred162_Java_3495)
      catches
      @state.following.pop
      match(T__82, TOKENS_FOLLOWING_T__82_IN_synpred162_Java_3497)
      @state.following.push(TOKENS_FOLLOWING_block_IN_synpred162_Java_3499)
      block
      @state.following.pop

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 297)

    end
    # 
    # syntactic predicate synpred_163_java!
    # 
    # (in samples/Java.g)
    # 634:11: synpred163_Java : catches ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred_163_java!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 298)

      # at line 634:11: catches
      @state.following.push(TOKENS_FOLLOWING_catches_IN_synpred163_Java_3511)
      catches
      @state.following.pop

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 298)

    end
    # 
    # syntactic predicate synpred_178_java!
    # 
    # (in samples/Java.g)
    # 669:9: synpred178_Java : switch_label ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred_178_java!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 313)

      # at line 669:9: switch_label
      @state.following.push(TOKENS_FOLLOWING_switch_label_IN_synpred178_Java_3802)
      switch_label
      @state.following.pop

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 313)

    end
    # 
    # syntactic predicate synpred_180_java!
    # 
    # (in samples/Java.g)
    # 673:9: synpred180_Java : 'case' constant_expression ':' ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred_180_java!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 315)

      # at line 673:9: 'case' constant_expression ':'
      match(T__89, TOKENS_FOLLOWING_T__89_IN_synpred180_Java_3829)
      @state.following.push(TOKENS_FOLLOWING_constant_expression_IN_synpred180_Java_3831)
      constant_expression
      @state.following.pop
      match(T__75, TOKENS_FOLLOWING_T__75_IN_synpred180_Java_3833)

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 315)

    end
    # 
    # syntactic predicate synpred_181_java!
    # 
    # (in samples/Java.g)
    # 674:9: synpred181_Java : 'case' enum_constant_name ':' ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred_181_java!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 316)

      # at line 674:9: 'case' enum_constant_name ':'
      match(T__89, TOKENS_FOLLOWING_T__89_IN_synpred181_Java_3843)
      @state.following.push(TOKENS_FOLLOWING_enum_constant_name_IN_synpred181_Java_3845)
      enum_constant_name
      @state.following.pop
      match(T__75, TOKENS_FOLLOWING_T__75_IN_synpred181_Java_3847)

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 316)

    end
    # 
    # syntactic predicate synpred_182_java!
    # 
    # (in samples/Java.g)
    # 680:9: synpred182_Java : enhanced_for_control ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred_182_java!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 317)

      # at line 680:9: enhanced_for_control
      @state.following.push(TOKENS_FOLLOWING_enhanced_for_control_IN_synpred182_Java_3890)
      enhanced_for_control
      @state.following.pop

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 317)

    end
    # 
    # syntactic predicate synpred_186_java!
    # 
    # (in samples/Java.g)
    # 685:9: synpred186_Java : local_variable_declaration ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred_186_java!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 321)

      # at line 685:9: local_variable_declaration
      @state.following.push(TOKENS_FOLLOWING_local_variable_declaration_IN_synpred186_Java_3930)
      local_variable_declaration
      @state.following.pop

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 321)

    end
    # 
    # syntactic predicate synpred_188_java!
    # 
    # (in samples/Java.g)
    # 716:33: synpred188_Java : assignment_operator expression ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred_188_java!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 323)

      # at line 716:33: assignment_operator expression
      @state.following.push(TOKENS_FOLLOWING_assignment_operator_IN_synpred188_Java_4113)
      assignment_operator
      @state.following.pop
      @state.following.push(TOKENS_FOLLOWING_expression_IN_synpred188_Java_4115)
      expression
      @state.following.pop

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 323)

    end
    # 
    # syntactic predicate synpred_198_java!
    # 
    # (in samples/Java.g)
    # 729:9: synpred198_Java : '<' '<' '=' ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred_198_java!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 333)

      # at line 729:10: '<' '<' '='
      match(T__40, TOKENS_FOLLOWING_T__40_IN_synpred198_Java_4231)
      match(T__40, TOKENS_FOLLOWING_T__40_IN_synpred198_Java_4233)
      match(T__51, TOKENS_FOLLOWING_T__51_IN_synpred198_Java_4235)

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 333)

    end
    # 
    # syntactic predicate synpred_199_java!
    # 
    # (in samples/Java.g)
    # 734:9: synpred199_Java : '>' '>' '>' '=' ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred_199_java!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 334)

      # at line 734:10: '>' '>' '>' '='
      match(T__42, TOKENS_FOLLOWING_T__42_IN_synpred199_Java_4271)
      match(T__42, TOKENS_FOLLOWING_T__42_IN_synpred199_Java_4273)
      match(T__42, TOKENS_FOLLOWING_T__42_IN_synpred199_Java_4275)
      match(T__51, TOKENS_FOLLOWING_T__51_IN_synpred199_Java_4277)

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 334)

    end
    # 
    # syntactic predicate synpred_200_java!
    # 
    # (in samples/Java.g)
    # 741:9: synpred200_Java : '>' '>' '=' ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred_200_java!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 335)

      # at line 741:10: '>' '>' '='
      match(T__42, TOKENS_FOLLOWING_T__42_IN_synpred200_Java_4316)
      match(T__42, TOKENS_FOLLOWING_T__42_IN_synpred200_Java_4318)
      match(T__51, TOKENS_FOLLOWING_T__51_IN_synpred200_Java_4320)

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 335)

    end
    # 
    # syntactic predicate synpred_211_java!
    # 
    # (in samples/Java.g)
    # 785:9: synpred211_Java : '<' '=' ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred_211_java!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 346)

      # at line 785:10: '<' '='
      match(T__40, TOKENS_FOLLOWING_T__40_IN_synpred211_Java_4628)
      match(T__51, TOKENS_FOLLOWING_T__51_IN_synpred211_Java_4630)

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 346)

    end
    # 
    # syntactic predicate synpred_212_java!
    # 
    # (in samples/Java.g)
    # 788:9: synpred212_Java : '>' '=' ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred_212_java!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 347)

      # at line 788:10: '>' '='
      match(T__42, TOKENS_FOLLOWING_T__42_IN_synpred212_Java_4662)
      match(T__51, TOKENS_FOLLOWING_T__51_IN_synpred212_Java_4664)

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 347)

    end
    # 
    # syntactic predicate synpred_215_java!
    # 
    # (in samples/Java.g)
    # 800:9: synpred215_Java : '<' '<' ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred_215_java!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 350)

      # at line 800:10: '<' '<'
      match(T__40, TOKENS_FOLLOWING_T__40_IN_synpred215_Java_4755)
      match(T__40, TOKENS_FOLLOWING_T__40_IN_synpred215_Java_4757)

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 350)

    end
    # 
    # syntactic predicate synpred_216_java!
    # 
    # (in samples/Java.g)
    # 803:9: synpred216_Java : '>' '>' '>' ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred_216_java!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 351)

      # at line 803:10: '>' '>' '>'
      match(T__42, TOKENS_FOLLOWING_T__42_IN_synpred216_Java_4789)
      match(T__42, TOKENS_FOLLOWING_T__42_IN_synpred216_Java_4791)
      match(T__42, TOKENS_FOLLOWING_T__42_IN_synpred216_Java_4793)

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 351)

    end
    # 
    # syntactic predicate synpred_217_java!
    # 
    # (in samples/Java.g)
    # 808:9: synpred217_Java : '>' '>' ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred_217_java!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 352)

      # at line 808:10: '>' '>'
      match(T__42, TOKENS_FOLLOWING_T__42_IN_synpred217_Java_4829)
      match(T__42, TOKENS_FOLLOWING_T__42_IN_synpred217_Java_4831)

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 352)

    end
    # 
    # syntactic predicate synpred_229_java!
    # 
    # (in samples/Java.g)
    # 833:9: synpred229_Java : cast_expression ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred_229_java!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 364)

      # at line 833:9: cast_expression
      @state.following.push(TOKENS_FOLLOWING_cast_expression_IN_synpred229_Java_5040)
      cast_expression
      @state.following.pop

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 364)

    end
    # 
    # syntactic predicate synpred_233_java!
    # 
    # (in samples/Java.g)
    # 838:8: synpred233_Java : '(' primitive_type ')' unary_expression ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred_233_java!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 368)

      # at line 838:8: '(' primitive_type ')' unary_expression
      match(T__66, TOKENS_FOLLOWING_T__66_IN_synpred233_Java_5078)
      @state.following.push(TOKENS_FOLLOWING_primitive_type_IN_synpred233_Java_5080)
      primitive_type
      @state.following.pop
      match(T__67, TOKENS_FOLLOWING_T__67_IN_synpred233_Java_5082)
      @state.following.push(TOKENS_FOLLOWING_unary_expression_IN_synpred233_Java_5084)
      unary_expression
      @state.following.pop

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 368)

    end
    # 
    # syntactic predicate synpred_234_java!
    # 
    # (in samples/Java.g)
    # 839:13: synpred234_Java : type ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred_234_java!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 369)

      # at line 839:13: type
      @state.following.push(TOKENS_FOLLOWING_type_IN_synpred234_Java_5096)
      type
      @state.following.pop

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 369)

    end
    # 
    # syntactic predicate synpred_236_java!
    # 
    # (in samples/Java.g)
    # 844:17: synpred236_Java : '.' Identifier ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred_236_java!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 371)

      # at line 844:17: '.' Identifier
      match(T__29, TOKENS_FOLLOWING_T__29_IN_synpred236_Java_5137)
      match(Identifier, TOKENS_FOLLOWING_Identifier_IN_synpred236_Java_5139)

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 371)

    end
    # 
    # syntactic predicate synpred_237_java!
    # 
    # (in samples/Java.g)
    # 844:34: synpred237_Java : identifier_suffix ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred_237_java!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 372)

      # at line 844:34: identifier_suffix
      @state.following.push(TOKENS_FOLLOWING_identifier_suffix_IN_synpred237_Java_5143)
      identifier_suffix
      @state.following.pop

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 372)

    end
    # 
    # syntactic predicate synpred_242_java!
    # 
    # (in samples/Java.g)
    # 848:21: synpred242_Java : '.' Identifier ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred_242_java!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 377)

      # at line 848:21: '.' Identifier
      match(T__29, TOKENS_FOLLOWING_T__29_IN_synpred242_Java_5191)
      match(Identifier, TOKENS_FOLLOWING_Identifier_IN_synpred242_Java_5193)

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 377)

    end
    # 
    # syntactic predicate synpred_243_java!
    # 
    # (in samples/Java.g)
    # 848:38: synpred243_Java : identifier_suffix ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred_243_java!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 378)

      # at line 848:38: identifier_suffix
      @state.following.push(TOKENS_FOLLOWING_identifier_suffix_IN_synpred243_Java_5197)
      identifier_suffix
      @state.following.pop

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 378)

    end
    # 
    # syntactic predicate synpred_249_java!
    # 
    # (in samples/Java.g)
    # 855:10: synpred249_Java : '[' expression ']' ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred_249_java!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 384)

      # at line 855:10: '[' expression ']'
      match(T__48, TOKENS_FOLLOWING_T__48_IN_synpred249_Java_5272)
      @state.following.push(TOKENS_FOLLOWING_expression_IN_synpred249_Java_5274)
      expression
      @state.following.pop
      match(T__49, TOKENS_FOLLOWING_T__49_IN_synpred249_Java_5276)

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 384)

    end
    # 
    # syntactic predicate synpred_262_java!
    # 
    # (in samples/Java.g)
    # 881:29: synpred262_Java : '[' expression ']' ;
    # 
    # This is an imaginary rule inserted by ANTLR to
    # implement a syntactic predicate decision
    # 
    def synpred_262_java!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 397)

      # at line 881:29: '[' expression ']'
      match(T__48, TOKENS_FOLLOWING_T__48_IN_synpred262_Java_5512)
      @state.following.push(TOKENS_FOLLOWING_expression_IN_synpred262_Java_5514)
      expression
      @state.following.pop
      match(T__49, TOKENS_FOLLOWING_T__49_IN_synpred262_Java_5516)

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 397)

    end


    # - - - - - - - - - - DFA definitions - - - - - - - - - - -
    class DFA8 < ANTLR3::DFA
      EOT = unpack(17, -1)
      EOF = unpack(1, 2, 16, -1)
      MIN = unpack(1, 5, 1, 0, 15, -1)
      MAX = unpack(1, 73, 1, 0, 15, -1)
      ACCEPT = unpack(2, -1, 1, 2, 13, -1, 1, 1)
      SPECIAL = unpack(1, -1, 1, 0, 15, -1)
      TRANSITION = [
        unpack(1, 2, 19, -1, 4, 2, 2, -1, 7, 2, 8, -1, 1, 2, 26, -1, 1, 
               1),
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
      
      @decision = 8
      

      def description
        <<-'__dfa_description__'.strip!
          184:1: compilation_unit : ( annotations ( package_declaration ( import_declaration )* ( type_declaration )* | class_or_interface_declaration ( type_declaration )* ) | ( package_declaration )? ( import_declaration )* ( type_declaration )* );
        __dfa_description__
      end
    end
    class DFA81 < ANTLR3::DFA
      EOT = unpack(47, -1)
      EOF = unpack(47, -1)
      MIN = unpack(1, 4, 1, -1, 13, 0, 32, -1)
      MAX = unpack(1, 113, 1, -1, 13, 0, 32, -1)
      ACCEPT = unpack(1, -1, 1, 1, 13, -1, 1, 2, 31, -1)
      SPECIAL = unpack(2, -1, 1, 0, 1, 1, 1, 2, 1, 3, 1, 4, 1, 5, 1, 6, 
                       1, 7, 1, 8, 1, 9, 1, 10, 1, 11, 1, 12, 32, -1)
      TRANSITION = [
        unpack(1, 12, 1, 15, 1, 6, 1, 7, 1, 8, 3, 5, 1, 15, 13, -1, 1, 15, 
               1, -1, 1, 15, 2, -1, 7, 15, 2, -1, 1, 1, 3, -1, 3, 15, 1, 
               14, 5, -1, 1, 15, 2, -1, 8, 13, 1, -1, 1, 4, 1, 3, 2, -1, 
               1, 2, 1, 10, 2, 9, 1, 15, 2, -1, 1, 15, 1, -1, 4, 15, 1, 
               -1, 5, 15, 17, -1, 2, 15, 2, -1, 4, 15, 1, 11),
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
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
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
      
      @decision = 81
      

      def description
        <<-'__dfa_description__'.strip!
          499:13: ( explicit_constructor_invocation )?
        __dfa_description__
      end
    end
    class DFA85 < ANTLR3::DFA
      EOT = unpack(15, -1)
      EOF = unpack(15, -1)
      MIN = unpack(1, 4, 1, -1, 1, 0, 1, -1, 1, 0, 10, -1)
      MAX = unpack(1, 113, 1, -1, 1, 0, 1, -1, 1, 0, 10, -1)
      ACCEPT = unpack(1, -1, 1, 1, 1, -1, 1, 2, 11, -1)
      SPECIAL = unpack(2, -1, 1, 0, 1, -1, 1, 1, 10, -1)
      TRANSITION = [
        unpack(1, 3, 1, -1, 6, 3, 28, -1, 1, 1, 6, -1, 1, 3, 8, -1, 8, 3, 
               1, -1, 1, 4, 1, 3, 2, -1, 1, 2, 3, 3, 40, -1, 1, 3),
        unpack(),
        unpack(1, -1),
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
      
      @decision = 85
      

      def description
        <<-'__dfa_description__'.strip!
          502:1: explicit_constructor_invocation : ( ( non_wildcard_type_arguments )? ( 'this' | 'super' ) arguments ';' | primary '.' ( non_wildcard_type_arguments )? 'super' arguments ';' );
        __dfa_description__
      end
    end
    class DFA106 < ANTLR3::DFA
      EOT = unpack(46, -1)
      EOF = unpack(46, -1)
      MIN = unpack(1, 4, 4, 0, 41, -1)
      MAX = unpack(1, 113, 4, 0, 41, -1)
      ACCEPT = unpack(5, -1, 1, 2, 8, -1, 1, 3, 30, -1, 1, 1)
      SPECIAL = unpack(1, -1, 1, 0, 1, 1, 1, 2, 1, 3, 41, -1)
      TRANSITION = [
        unpack(1, 3, 1, 5, 7, 14, 13, -1, 1, 14, 1, -1, 1, 5, 2, -1, 4, 
               5, 1, 1, 2, 5, 6, -1, 1, 14, 1, -1, 1, 5, 1, 14, 5, -1, 1, 
               14, 2, -1, 8, 4, 1, -1, 2, 14, 2, -1, 4, 14, 1, 2, 2, -1, 
               1, 14, 1, -1, 4, 14, 1, -1, 5, 14, 17, -1, 2, 14, 2, -1, 
               5, 14),
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
      
      @decision = 106
      

      def description
        <<-'__dfa_description__'.strip!
          607:1: block_statement : ( local_variable_declaration_statement | class_or_interface_declaration | statement );
        __dfa_description__
      end
    end
    class DFA114 < ANTLR3::DFA
      EOT = unpack(18, -1)
      EOF = unpack(18, -1)
      MIN = unpack(1, 4, 15, -1, 1, 26, 1, -1)
      MAX = unpack(1, 113, 15, -1, 1, 110, 1, -1)
      ACCEPT = unpack(1, -1, 1, 1, 1, 2, 1, 3, 1, 4, 1, 5, 1, 6, 1, 7, 1, 
                      8, 1, 9, 1, 10, 1, 11, 1, 12, 1, 13, 1, 14, 1, 15, 
                      1, -1, 1, 16)
      SPECIAL = unpack(18, -1)
      TRANSITION = [
        unpack(1, 16, 1, -1, 6, 15, 1, 2, 13, -1, 1, 14, 17, -1, 1, 1, 2, 
               -1, 1, 15, 5, -1, 1, 9, 2, -1, 8, 15, 1, -1, 2, 15, 2, -1, 
               4, 15, 3, -1, 1, 3, 1, -1, 1, 4, 1, 5, 1, 6, 1, 7, 1, -1, 
               1, 8, 1, 10, 1, 11, 1, 12, 1, 13, 17, -1, 2, 15, 2, -1, 5, 
               15),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(1, 15, 2, -1, 2, 15, 9, -1, 1, 15, 1, -1, 2, 15, 4, -1, 
                1, 15, 2, -1, 1, 15, 12, -1, 1, 15, 1, -1, 1, 15, 8, -1, 
                1, 17, 14, -1, 21, 15),
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
          625:1: statement : ( block | ASSERT expression ( ':' expression )? ';' | 'if' par_expression statement ( options {k=1; } : 'else' statement )? | 'for' '(' for_control ')' statement | 'while' par_expression statement | 'do' statement 'while' par_expression ';' | 'try' block ( catches 'finally' block | catches | 'finally' block ) | 'switch' par_expression '{' switch_block_statement_groups '}' | 'synchronized' par_expression block | 'return' ( expression )? ';' | 'throw' expression ';' | 'break' ( Identifier )? ';' | 'continue' ( Identifier )? ';' | ';' | statement_expression ';' | Identifier ':' statement );
        __dfa_description__
      end
    end
    class DFA123 < ANTLR3::DFA
      EOT = unpack(135, -1)
      EOF = unpack(135, -1)
      MIN = unpack(5, 4, 18, -1, 8, 4, 1, 26, 24, -1, 1, 49, 1, -1, 1, 26, 
                   17, 0, 2, -1, 3, 0, 17, -1, 1, 0, 5, -1, 1, 0, 24, -1, 
                   1, 0, 5, -1)
      MAX = unpack(1, 113, 1, 73, 1, 4, 1, 110, 1, 48, 18, -1, 2, 48, 1, 
                   73, 1, 4, 1, 73, 3, 113, 1, 75, 24, -1, 1, 49, 1, -1, 
                   1, 75, 17, 0, 2, -1, 3, 0, 17, -1, 1, 0, 5, -1, 1, 0, 
                   24, -1, 1, 0, 5, -1)
      ACCEPT = unpack(5, -1, 1, 2, 118, -1, 1, 1, 10, -1)
      SPECIAL = unpack(59, -1, 1, 0, 1, 1, 1, 2, 1, 3, 1, 4, 1, 5, 1, 6, 
                       1, 7, 1, 8, 1, 9, 1, 10, 1, 11, 1, 12, 1, 13, 1, 
                       14, 1, 15, 1, 16, 2, -1, 1, 17, 1, 18, 1, 19, 17, 
                       -1, 1, 20, 5, -1, 1, 21, 24, -1, 1, 22, 5, -1)
      TRANSITION = [
        unpack(1, 3, 1, -1, 6, 5, 14, -1, 1, 5, 8, -1, 1, 1, 11, -1, 1, 
               5, 8, -1, 8, 4, 1, -1, 2, 5, 2, -1, 4, 5, 1, 2, 31, -1, 2, 
               5, 2, -1, 5, 5),
        unpack(1, 23, 30, -1, 1, 25, 20, -1, 8, 24, 9, -1, 1, 26),
        unpack(1, 27),
        unpack(1, 31, 21, -1, 1, 5, 2, -1, 1, 29, 1, 5, 9, -1, 1, 28, 3, 
                5, 4, -1, 1, 30, 2, -1, 1, 5, 12, -1, 1, 5, 1, -1, 1, 5, 
                23, -1, 21, 5),
        unpack(1, 58, 24, -1, 1, 5, 18, -1, 1, 56),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(1, 62, 24, -1, 1, 60, 10, -1, 1, 59, 7, -1, 1, 61),
        unpack(1, 64, 43, -1, 1, 63),
        unpack(1, 65, 30, -1, 1, 67, 20, -1, 8, 66, 9, -1, 1, 68),
        unpack(1, 69),
        unpack(1, 72, 24, -1, 1, 70, 5, -1, 1, 74, 20, -1, 8, 73, 2, -1, 
                1, 71, 6, -1, 1, 75),
        unpack(1, 78, 1, -1, 6, 5, 28, -1, 1, 5, 6, -1, 1, 5, 3, -1, 1, 
                5, 4, -1, 8, 79, 1, 80, 2, 5, 2, -1, 4, 5, 32, -1, 2, 5, 
                2, -1, 5, 5),
        unpack(1, 98, 32, -1, 1, 5, 2, -1, 1, 5, 24, -1, 1, 5, 3, -1, 1, 
                5, 43, -1, 1, 5),
        unpack(1, 5, 1, -1, 6, 5, 35, -1, 1, 5, 1, -1, 1, 104, 6, -1, 8, 
                5, 1, -1, 2, 5, 2, -1, 4, 5, 32, -1, 2, 5, 2, -1, 5, 5),
        unpack(1, 5, 14, -1, 1, 5, 6, -1, 1, 5, 2, -1, 1, 5, 23, -1, 1, 
                124),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(1, 129),
        unpack(),
        unpack(1, 5, 14, -1, 1, 5, 6, -1, 1, 5, 2, -1, 1, 5, 23, -1, 1, 
                124),
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
        unpack(),
        unpack(1, -1),
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
        unpack(1, -1),
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
      
      @decision = 123
      

      def description
        <<-'__dfa_description__'.strip!
          678:1: for_control options {k=3; } : ( enhanced_for_control | ( for_init )? ';' ( expression )? ';' ( for_update )? );
        __dfa_description__
      end
    end
    class DFA124 < ANTLR3::DFA
      EOT = unpack(22, -1)
      EOF = unpack(22, -1)
      MIN = unpack(1, 4, 2, -1, 2, 0, 17, -1)
      MAX = unpack(1, 113, 2, -1, 2, 0, 17, -1)
      ACCEPT = unpack(1, -1, 1, 1, 3, -1, 1, 2, 16, -1)
      SPECIAL = unpack(3, -1, 1, 0, 1, 1, 17, -1)
      TRANSITION = [
        unpack(1, 3, 1, -1, 6, 5, 23, -1, 1, 1, 11, -1, 1, 5, 8, -1, 8, 
               4, 1, -1, 2, 5, 2, -1, 4, 5, 1, 1, 31, -1, 2, 5, 2, -1, 5, 
               5),
        unpack(),
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
        unpack()
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 124
      

      def description
        <<-'__dfa_description__'.strip!
          684:1: for_init : ( local_variable_declaration | expression_list );
        __dfa_description__
      end
    end
    class DFA126 < ANTLR3::DFA
      EOT = unpack(14, -1)
      EOF = unpack(1, 12, 13, -1)
      MIN = unpack(1, 26, 11, 0, 2, -1)
      MAX = unpack(1, 97, 11, 0, 2, -1)
      ACCEPT = unpack(12, -1, 1, 2, 1, 1)
      SPECIAL = unpack(1, -1, 1, 5, 1, 2, 1, 10, 1, 8, 1, 1, 1, 4, 1, 7, 
                       1, 9, 1, 0, 1, 6, 1, 3, 2, -1)
      TRANSITION = [
        unpack(1, 12, 13, -1, 1, 10, 1, 12, 1, 11, 2, -1, 1, 12, 3, -1, 
               1, 12, 1, -1, 1, 1, 15, -1, 1, 12, 7, -1, 1, 12, 14, -1, 
               1, 2, 1, 3, 1, 4, 1, 5, 1, 6, 1, 7, 1, 8, 1, 9),
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
      
      @decision = 126
      

      def description
        <<-'__dfa_description__'.strip!
          716:32: ( assignment_operator expression )?
        __dfa_description__
      end
    end
    class DFA127 < ANTLR3::DFA
      EOT = unpack(15, -1)
      EOF = unpack(15, -1)
      MIN = unpack(1, 40, 10, -1, 2, 42, 2, -1)
      MAX = unpack(1, 97, 10, -1, 1, 42, 1, 51, 2, -1)
      ACCEPT = unpack(1, -1, 1, 1, 1, 2, 1, 3, 1, 4, 1, 5, 1, 6, 1, 7, 1, 
                      8, 1, 9, 1, 10, 2, -1, 1, 11, 1, 12)
      SPECIAL = unpack(1, 1, 11, -1, 1, 0, 2, -1)
      TRANSITION = [
        unpack(1, 10, 1, -1, 1, 11, 8, -1, 1, 1, 38, -1, 1, 2, 1, 3, 1, 
               4, 1, 5, 1, 6, 1, 7, 1, 8, 1, 9),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(1, 12),
        unpack(1, 13, 8, -1, 1, 14),
        unpack(),
        unpack()
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 127
      

      def description
        <<-'__dfa_description__'.strip!
          719:1: assignment_operator : ( '=' | '+=' | '-=' | '*=' | '/=' | '&=' | '|=' | '^=' | '%=' | ( '<' '<' '=' )=>t1= '<' t2= '<' t3= '=' {...}? | ( '>' '>' '>' '=' )=>t1= '>' t2= '>' t3= '>' t4= '=' {...}? | ( '>' '>' '=' )=>t1= '>' t2= '>' t3= '=' {...}?);
        __dfa_description__
      end
    end
    class DFA139 < ANTLR3::DFA
      EOT = unpack(24, -1)
      EOF = unpack(24, -1)
      MIN = unpack(1, 40, 1, -1, 1, 42, 1, 4, 20, -1)
      MAX = unpack(1, 42, 1, -1, 1, 42, 1, 113, 20, -1)
      ACCEPT = unpack(1, -1, 1, 1, 2, -1, 1, 2, 19, 3)
      SPECIAL = unpack(1, 0, 2, -1, 1, 1, 20, -1)
      TRANSITION = [
        unpack(1, 1, 1, -1, 1, 2),
        unpack(),
        unpack(1, 3),
        unpack(1, 21, 1, -1, 1, 15, 1, 16, 1, 17, 3, 14, 30, -1, 1, 4, 
                4, -1, 1, 23, 8, -1, 8, 22, 1, -1, 1, 13, 1, 11, 2, -1, 
                1, 12, 1, 19, 2, 18, 32, -1, 1, 5, 1, 6, 2, -1, 1, 7, 1, 
                8, 1, 9, 1, 10, 1, 20),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
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
      
      @decision = 139
      

      def description
        <<-'__dfa_description__'.strip!
          799:1: shift_op : ( ( '<' '<' )=>t1= '<' t2= '<' {...}? | ( '>' '>' '>' )=>t1= '>' t2= '>' t3= '>' {...}? | ( '>' '>' )=>t1= '>' t2= '>' {...}?);
        __dfa_description__
      end
    end
    class DFA145 < ANTLR3::DFA
      EOT = unpack(17, -1)
      EOF = unpack(17, -1)
      MIN = unpack(1, 4, 2, -1, 1, 0, 13, -1)
      MAX = unpack(1, 113, 2, -1, 1, 0, 13, -1)
      ACCEPT = unpack(1, -1, 1, 1, 1, 2, 1, -1, 1, 4, 11, -1, 1, 3)
      SPECIAL = unpack(3, -1, 1, 0, 13, -1)
      TRANSITION = [
        unpack(1, 4, 1, -1, 6, 4, 35, -1, 1, 4, 8, -1, 8, 4, 1, -1, 1, 4, 
               1, 3, 2, -1, 4, 4, 38, -1, 1, 1, 1, 2, 1, 4),
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
        unpack()
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 145
      

      def description
        <<-'__dfa_description__'.strip!
          830:1: unary_expression_not_plus_minus : ( '~' unary_expression | '!' unary_expression | cast_expression | primary ( selector )* ( '++' | '--' )? );
        __dfa_description__
      end
    end
    class DFA146 < ANTLR3::DFA
      EOT = unpack(7, -1)
      EOF = unpack(7, -1)
      MIN = unpack(1, 4, 1, 0, 1, 29, 2, -1, 1, 49, 1, 29)
      MAX = unpack(1, 113, 1, 0, 1, 67, 2, -1, 1, 49, 1, 67)
      ACCEPT = unpack(3, -1, 1, 2, 1, 1, 2, -1)
      SPECIAL = unpack(1, -1, 1, 0, 5, -1)
      TRANSITION = [
        unpack(1, 1, 1, -1, 6, 3, 35, -1, 1, 3, 8, -1, 8, 2, 1, -1, 2, 3, 
               2, -1, 4, 3, 32, -1, 2, 3, 2, -1, 5, 3),
        unpack(1, -1),
        unpack(1, 3, 18, -1, 1, 5, 18, -1, 1, 4),
        unpack(),
        unpack(),
        unpack(1, 6),
        unpack(1, 3, 18, -1, 1, 5, 18, -1, 1, 4)
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 146
      

      def description
        <<-'__dfa_description__'.strip!
          839:12: ( type | expression )
        __dfa_description__
      end
    end
    class DFA149 < ANTLR3::DFA
      EOT = unpack(33, -1)
      EOF = unpack(1, 4, 32, -1)
      MIN = unpack(1, 26, 1, 0, 1, -1, 1, 0, 29, -1)
      MAX = unpack(1, 110, 1, 0, 1, -1, 1, 0, 29, -1)
      ACCEPT = unpack(2, -1, 1, 1, 1, -1, 1, 2, 28, -1)
      SPECIAL = unpack(1, -1, 1, 0, 1, -1, 1, 1, 29, -1)
      TRANSITION = [
        unpack(1, 4, 2, -1, 1, 3, 1, 4, 9, -1, 4, 4, 1, -1, 1, 4, 2, -1, 
               1, 1, 1, 4, 1, -1, 1, 4, 12, -1, 1, 4, 1, -1, 1, 2, 1, 4, 
               7, -1, 1, 4, 14, -1, 21, 4),
        unpack(1, -1),
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
        unpack()
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 149
      

      def description
        <<-'__dfa_description__'.strip!
          844:34: ( identifier_suffix )?
        __dfa_description__
      end
    end
    class DFA151 < ANTLR3::DFA
      EOT = unpack(33, -1)
      EOF = unpack(1, 4, 32, -1)
      MIN = unpack(1, 26, 1, 0, 1, -1, 1, 0, 29, -1)
      MAX = unpack(1, 110, 1, 0, 1, -1, 1, 0, 29, -1)
      ACCEPT = unpack(2, -1, 1, 1, 1, -1, 1, 2, 28, -1)
      SPECIAL = unpack(1, -1, 1, 0, 1, -1, 1, 1, 29, -1)
      TRANSITION = [
        unpack(1, 4, 2, -1, 1, 3, 1, 4, 9, -1, 4, 4, 1, -1, 1, 4, 2, -1, 
               1, 1, 1, 4, 1, -1, 1, 4, 12, -1, 1, 4, 1, -1, 1, 2, 1, 4, 
               7, -1, 1, 4, 14, -1, 21, 4),
        unpack(1, -1),
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
        unpack()
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 151
      

      def description
        <<-'__dfa_description__'.strip!
          848:38: ( identifier_suffix )?
        __dfa_description__
      end
    end
    class DFA156 < ANTLR3::DFA
      EOT = unpack(11, -1)
      EOF = unpack(11, -1)
      MIN = unpack(1, 29, 1, 4, 1, -1, 1, 37, 7, -1)
      MAX = unpack(1, 66, 1, 113, 1, -1, 1, 113, 7, -1)
      ACCEPT = unpack(2, -1, 1, 3, 1, -1, 1, 1, 1, 2, 1, 4, 1, 6, 1, 7, 
                      1, 8, 1, 5)
      SPECIAL = unpack(11, -1)
      TRANSITION = [
        unpack(1, 3, 18, -1, 1, 1, 17, -1, 1, 2),
        unpack(1, 5, 1, -1, 6, 5, 35, -1, 1, 5, 1, -1, 1, 4, 6, -1, 8, 
                5, 1, -1, 2, 5, 2, -1, 4, 5, 32, -1, 2, 5, 2, -1, 5, 5),
        unpack(),
        unpack(1, 6, 2, -1, 1, 10, 24, -1, 1, 8, 3, -1, 1, 7, 43, -1, 1, 
                9),
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
      
      @decision = 156
      

      def description
        <<-'__dfa_description__'.strip!
          853:1: identifier_suffix : ( ( '[' ']' )+ '.' 'class' | ( '[' expression ']' )+ | arguments | '.' 'class' | '.' explicit_generic_invocation | '.' 'this' | '.' 'super' arguments | '.' 'new' inner_creator );
        __dfa_description__
      end
    end
    class DFA155 < ANTLR3::DFA
      EOT = unpack(33, -1)
      EOF = unpack(1, 1, 32, -1)
      MIN = unpack(1, 26, 1, -1, 1, 0, 30, -1)
      MAX = unpack(1, 110, 1, -1, 1, 0, 30, -1)
      ACCEPT = unpack(1, -1, 1, 2, 30, -1, 1, 1)
      SPECIAL = unpack(2, -1, 1, 0, 30, -1)
      TRANSITION = [
        unpack(1, 1, 2, -1, 2, 1, 9, -1, 4, 1, 1, -1, 1, 1, 2, -1, 1, 2, 
               1, 1, 1, -1, 1, 1, 12, -1, 1, 1, 2, -1, 1, 1, 7, -1, 1, 1, 
               14, -1, 21, 1),
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
        unpack()
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 155
      

      def description
        <<-'__dfa_description__'.strip!
          ()+ loopback of 855:9: ( '[' expression ']' )+
        __dfa_description__
      end
    end
    class DFA162 < ANTLR3::DFA
      EOT = unpack(33, -1)
      EOF = unpack(1, 2, 32, -1)
      MIN = unpack(1, 26, 1, 0, 31, -1)
      MAX = unpack(1, 110, 1, 0, 31, -1)
      ACCEPT = unpack(2, -1, 1, 2, 29, -1, 1, 1)
      SPECIAL = unpack(1, -1, 1, 0, 31, -1)
      TRANSITION = [
        unpack(1, 2, 2, -1, 2, 2, 9, -1, 4, 2, 1, -1, 1, 2, 2, -1, 1, 1, 
               1, 2, 1, -1, 1, 2, 12, -1, 1, 2, 2, -1, 1, 2, 7, -1, 1, 2, 
               14, -1, 21, 2),
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
        unpack()
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 162
      

      def description
        <<-'__dfa_description__'.strip!
          ()* loopback of 881:28: ( '[' expression ']' )*
        __dfa_description__
      end
    end


    private

    def initialize_dfas
      super rescue nil
      @dfa8 = DFA8.new(self, 8) do |s|
        case s
        when 0
          look_8_1 = @input.peek
          index_8_1 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_5_java!))
            s = 16
          elsif (true)
            s = 2
          end
           
          @input.seek(index_8_1)

        end
        
        if s < 0
          @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
          nva = ANTLR3::Error::NoViableAlternative.new(@dfa8.description, 8, s, input)
          @dfa8.error(nva)
          raise nva
        end
        
        s
      end
      @dfa81 = DFA81.new(self, 81) do |s|
        case s
        when 0
          look_81_2 = @input.peek
          index_81_2 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_113_java!))
            s = 1
          elsif (true)
            s = 15
          end
           
          @input.seek(index_81_2)

        when 1
          look_81_3 = @input.peek
          index_81_3 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_113_java!))
            s = 1
          elsif (true)
            s = 15
          end
           
          @input.seek(index_81_3)

        when 2
          look_81_4 = @input.peek
          index_81_4 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_113_java!))
            s = 1
          elsif (true)
            s = 15
          end
           
          @input.seek(index_81_4)

        when 3
          look_81_5 = @input.peek
          index_81_5 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_113_java!))
            s = 1
          elsif (true)
            s = 15
          end
           
          @input.seek(index_81_5)

        when 4
          look_81_6 = @input.peek
          index_81_6 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_113_java!))
            s = 1
          elsif (true)
            s = 15
          end
           
          @input.seek(index_81_6)

        when 5
          look_81_7 = @input.peek
          index_81_7 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_113_java!))
            s = 1
          elsif (true)
            s = 15
          end
           
          @input.seek(index_81_7)

        when 6
          look_81_8 = @input.peek
          index_81_8 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_113_java!))
            s = 1
          elsif (true)
            s = 15
          end
           
          @input.seek(index_81_8)

        when 7
          look_81_9 = @input.peek
          index_81_9 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_113_java!))
            s = 1
          elsif (true)
            s = 15
          end
           
          @input.seek(index_81_9)

        when 8
          look_81_10 = @input.peek
          index_81_10 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_113_java!))
            s = 1
          elsif (true)
            s = 15
          end
           
          @input.seek(index_81_10)

        when 9
          look_81_11 = @input.peek
          index_81_11 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_113_java!))
            s = 1
          elsif (true)
            s = 15
          end
           
          @input.seek(index_81_11)

        when 10
          look_81_12 = @input.peek
          index_81_12 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_113_java!))
            s = 1
          elsif (true)
            s = 15
          end
           
          @input.seek(index_81_12)

        when 11
          look_81_13 = @input.peek
          index_81_13 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_113_java!))
            s = 1
          elsif (true)
            s = 15
          end
           
          @input.seek(index_81_13)

        when 12
          look_81_14 = @input.peek
          index_81_14 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_113_java!))
            s = 1
          elsif (true)
            s = 15
          end
           
          @input.seek(index_81_14)

        end
        
        if s < 0
          @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
          nva = ANTLR3::Error::NoViableAlternative.new(@dfa81.description, 81, s, input)
          @dfa81.error(nva)
          raise nva
        end
        
        s
      end
      @dfa85 = DFA85.new(self, 85) do |s|
        case s
        when 0
          look_85_2 = @input.peek
          index_85_2 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_117_java!))
            s = 1
          elsif (true)
            s = 3
          end
           
          @input.seek(index_85_2)

        when 1
          look_85_4 = @input.peek
          index_85_4 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_117_java!))
            s = 1
          elsif (true)
            s = 3
          end
           
          @input.seek(index_85_4)

        end
        
        if s < 0
          @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
          nva = ANTLR3::Error::NoViableAlternative.new(@dfa85.description, 85, s, input)
          @dfa85.error(nva)
          raise nva
        end
        
        s
      end
      @dfa106 = DFA106.new(self, 106) do |s|
        case s
        when 0
          look_106_1 = @input.peek
          index_106_1 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_151_java!))
            s = 45
          elsif (syntactic_predicate?(:synpred_152_java!))
            s = 5
          end
           
          @input.seek(index_106_1)

        when 1
          look_106_2 = @input.peek
          index_106_2 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_151_java!))
            s = 45
          elsif (syntactic_predicate?(:synpred_152_java!))
            s = 5
          end
           
          @input.seek(index_106_2)

        when 2
          look_106_3 = @input.peek
          index_106_3 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_151_java!))
            s = 45
          elsif (true)
            s = 14
          end
           
          @input.seek(index_106_3)

        when 3
          look_106_4 = @input.peek
          index_106_4 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_151_java!))
            s = 45
          elsif (true)
            s = 14
          end
           
          @input.seek(index_106_4)

        end
        
        if s < 0
          @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
          nva = ANTLR3::Error::NoViableAlternative.new(@dfa106.description, 106, s, input)
          @dfa106.error(nva)
          raise nva
        end
        
        s
      end
      @dfa114 = DFA114.new(self, 114)
      @dfa123 = DFA123.new(self, 123) do |s|
        case s
        when 0
          look_123_59 = @input.peek
          index_123_59 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_182_java!))
            s = 124
          elsif (true)
            s = 5
          end
           
          @input.seek(index_123_59)

        when 1
          look_123_60 = @input.peek
          index_123_60 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_182_java!))
            s = 124
          elsif (true)
            s = 5
          end
           
          @input.seek(index_123_60)

        when 2
          look_123_61 = @input.peek
          index_123_61 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_182_java!))
            s = 124
          elsif (true)
            s = 5
          end
           
          @input.seek(index_123_61)

        when 3
          look_123_62 = @input.peek
          index_123_62 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_182_java!))
            s = 124
          elsif (true)
            s = 5
          end
           
          @input.seek(index_123_62)

        when 4
          look_123_63 = @input.peek
          index_123_63 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_182_java!))
            s = 124
          elsif (true)
            s = 5
          end
           
          @input.seek(index_123_63)

        when 5
          look_123_64 = @input.peek
          index_123_64 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_182_java!))
            s = 124
          elsif (true)
            s = 5
          end
           
          @input.seek(index_123_64)

        when 6
          look_123_65 = @input.peek
          index_123_65 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_182_java!))
            s = 124
          elsif (true)
            s = 5
          end
           
          @input.seek(index_123_65)

        when 7
          look_123_66 = @input.peek
          index_123_66 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_182_java!))
            s = 124
          elsif (true)
            s = 5
          end
           
          @input.seek(index_123_66)

        when 8
          look_123_67 = @input.peek
          index_123_67 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_182_java!))
            s = 124
          elsif (true)
            s = 5
          end
           
          @input.seek(index_123_67)

        when 9
          look_123_68 = @input.peek
          index_123_68 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_182_java!))
            s = 124
          elsif (true)
            s = 5
          end
           
          @input.seek(index_123_68)

        when 10
          look_123_69 = @input.peek
          index_123_69 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_182_java!))
            s = 124
          elsif (true)
            s = 5
          end
           
          @input.seek(index_123_69)

        when 11
          look_123_70 = @input.peek
          index_123_70 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_182_java!))
            s = 124
          elsif (true)
            s = 5
          end
           
          @input.seek(index_123_70)

        when 12
          look_123_71 = @input.peek
          index_123_71 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_182_java!))
            s = 124
          elsif (true)
            s = 5
          end
           
          @input.seek(index_123_71)

        when 13
          look_123_72 = @input.peek
          index_123_72 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_182_java!))
            s = 124
          elsif (true)
            s = 5
          end
           
          @input.seek(index_123_72)

        when 14
          look_123_73 = @input.peek
          index_123_73 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_182_java!))
            s = 124
          elsif (true)
            s = 5
          end
           
          @input.seek(index_123_73)

        when 15
          look_123_74 = @input.peek
          index_123_74 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_182_java!))
            s = 124
          elsif (true)
            s = 5
          end
           
          @input.seek(index_123_74)

        when 16
          look_123_75 = @input.peek
          index_123_75 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_182_java!))
            s = 124
          elsif (true)
            s = 5
          end
           
          @input.seek(index_123_75)

        when 17
          look_123_78 = @input.peek
          index_123_78 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_182_java!))
            s = 124
          elsif (true)
            s = 5
          end
           
          @input.seek(index_123_78)

        when 18
          look_123_79 = @input.peek
          index_123_79 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_182_java!))
            s = 124
          elsif (true)
            s = 5
          end
           
          @input.seek(index_123_79)

        when 19
          look_123_80 = @input.peek
          index_123_80 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_182_java!))
            s = 124
          elsif (true)
            s = 5
          end
           
          @input.seek(index_123_80)

        when 20
          look_123_98 = @input.peek
          index_123_98 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_182_java!))
            s = 124
          elsif (true)
            s = 5
          end
           
          @input.seek(index_123_98)

        when 21
          look_123_104 = @input.peek
          index_123_104 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_182_java!))
            s = 124
          elsif (true)
            s = 5
          end
           
          @input.seek(index_123_104)

        when 22
          look_123_129 = @input.peek
          index_123_129 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_182_java!))
            s = 124
          elsif (true)
            s = 5
          end
           
          @input.seek(index_123_129)

        end
        
        if s < 0
          @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
          nva = ANTLR3::Error::NoViableAlternative.new(@dfa123.description, 123, s, input)
          @dfa123.error(nva)
          raise nva
        end
        
        s
      end
      @dfa124 = DFA124.new(self, 124) do |s|
        case s
        when 0
          look_124_3 = @input.peek
          index_124_3 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_186_java!))
            s = 1
          elsif (true)
            s = 5
          end
           
          @input.seek(index_124_3)

        when 1
          look_124_4 = @input.peek
          index_124_4 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_186_java!))
            s = 1
          elsif (true)
            s = 5
          end
           
          @input.seek(index_124_4)

        end
        
        if s < 0
          @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
          nva = ANTLR3::Error::NoViableAlternative.new(@dfa124.description, 124, s, input)
          @dfa124.error(nva)
          raise nva
        end
        
        s
      end
      @dfa126 = DFA126.new(self, 126) do |s|
        case s
        when 0
          look_126_9 = @input.peek
          index_126_9 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_188_java!))
            s = 13
          elsif (true)
            s = 12
          end
           
          @input.seek(index_126_9)

        when 1
          look_126_5 = @input.peek
          index_126_5 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_188_java!))
            s = 13
          elsif (true)
            s = 12
          end
           
          @input.seek(index_126_5)

        when 2
          look_126_2 = @input.peek
          index_126_2 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_188_java!))
            s = 13
          elsif (true)
            s = 12
          end
           
          @input.seek(index_126_2)

        when 3
          look_126_11 = @input.peek
          index_126_11 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_188_java!))
            s = 13
          elsif (true)
            s = 12
          end
           
          @input.seek(index_126_11)

        when 4
          look_126_6 = @input.peek
          index_126_6 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_188_java!))
            s = 13
          elsif (true)
            s = 12
          end
           
          @input.seek(index_126_6)

        when 5
          look_126_1 = @input.peek
          index_126_1 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_188_java!))
            s = 13
          elsif (true)
            s = 12
          end
           
          @input.seek(index_126_1)

        when 6
          look_126_10 = @input.peek
          index_126_10 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_188_java!))
            s = 13
          elsif (true)
            s = 12
          end
           
          @input.seek(index_126_10)

        when 7
          look_126_7 = @input.peek
          index_126_7 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_188_java!))
            s = 13
          elsif (true)
            s = 12
          end
           
          @input.seek(index_126_7)

        when 8
          look_126_4 = @input.peek
          index_126_4 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_188_java!))
            s = 13
          elsif (true)
            s = 12
          end
           
          @input.seek(index_126_4)

        when 9
          look_126_8 = @input.peek
          index_126_8 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_188_java!))
            s = 13
          elsif (true)
            s = 12
          end
           
          @input.seek(index_126_8)

        when 10
          look_126_3 = @input.peek
          index_126_3 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_188_java!))
            s = 13
          elsif (true)
            s = 12
          end
           
          @input.seek(index_126_3)

        end
        
        if s < 0
          @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
          nva = ANTLR3::Error::NoViableAlternative.new(@dfa126.description, 126, s, input)
          @dfa126.error(nva)
          raise nva
        end
        
        s
      end
      @dfa127 = DFA127.new(self, 127) do |s|
        case s
        when 0
          look_127_12 = @input.peek
          index_127_12 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (look_127_12 == T__42) && (syntactic_predicate?(synpred199_Java))
            s = 13
          elsif (look_127_12 == T__51) && (syntactic_predicate?(synpred200_Java))
            s = 14
          end
           
          @input.seek(index_127_12)

        when 1
          look_127_0 = @input.peek
          index_127_0 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (look_127_0 == T__51)
            s = 1
          elsif (look_127_0 == T__90)
            s = 2
          elsif (look_127_0 == T__91)
            s = 3
          elsif (look_127_0 == T__92)
            s = 4
          elsif (look_127_0 == T__93)
            s = 5
          elsif (look_127_0 == T__94)
            s = 6
          elsif (look_127_0 == T__95)
            s = 7
          elsif (look_127_0 == T__96)
            s = 8
          elsif (look_127_0 == T__97)
            s = 9
          elsif (look_127_0 == T__40) && (syntactic_predicate?(synpred198_Java))
            s = 10
          elsif (look_127_0 == T__42)
            s = 11
          end
           
          @input.seek(index_127_0)

        end
        
        if s < 0
          @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
          nva = ANTLR3::Error::NoViableAlternative.new(@dfa127.description, 127, s, input)
          @dfa127.error(nva)
          raise nva
        end
        
        s
      end
      @dfa139 = DFA139.new(self, 139) do |s|
        case s
        when 0
          look_139_0 = @input.peek
          index_139_0 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (look_139_0 == T__40) && (syntactic_predicate?(synpred215_Java))
            s = 1
          elsif (look_139_0 == T__42)
            s = 2
          end
           
          @input.seek(index_139_0)

        when 1
          look_139_3 = @input.peek
          index_139_3 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (look_139_3 == T__42) && (syntactic_predicate?(synpred216_Java))
            s = 4
          elsif (look_139_3 == T__105) && (syntactic_predicate?(synpred217_Java))
            s = 5
          elsif (look_139_3 == T__106) && (syntactic_predicate?(synpred217_Java))
            s = 6
          elsif (look_139_3 == T__109) && (syntactic_predicate?(synpred217_Java))
            s = 7
          elsif (look_139_3 == T__110) && (syntactic_predicate?(synpred217_Java))
            s = 8
          elsif (look_139_3 == T__111) && (syntactic_predicate?(synpred217_Java))
            s = 9
          elsif (look_139_3 == T__112) && (syntactic_predicate?(synpred217_Java))
            s = 10
          elsif (look_139_3 == T__66) && (syntactic_predicate?(synpred217_Java))
            s = 11
          elsif (look_139_3 == T__69) && (syntactic_predicate?(synpred217_Java))
            s = 12
          elsif (look_139_3 == T__65) && (syntactic_predicate?(synpred217_Java))
            s = 13
          elsif (look_139_3.between?(HexLiteral, DecimalLiteral)) && (syntactic_predicate?(synpred217_Java))
            s = 14
          elsif (look_139_3 == FloatingPointLiteral) && (syntactic_predicate?(synpred217_Java))
            s = 15
          elsif (look_139_3 == CharacterLiteral) && (syntactic_predicate?(synpred217_Java))
            s = 16
          elsif (look_139_3 == StringLiteral) && (syntactic_predicate?(synpred217_Java))
            s = 17
          elsif (look_139_3.between?(T__71, T__72)) && (syntactic_predicate?(synpred217_Java))
            s = 18
          elsif (look_139_3 == T__70) && (syntactic_predicate?(synpred217_Java))
            s = 19
          elsif (look_139_3 == T__113) && (syntactic_predicate?(synpred217_Java))
            s = 20
          elsif (look_139_3 == Identifier) && (syntactic_predicate?(synpred217_Java))
            s = 21
          elsif (look_139_3.between?(T__56, T__63)) && (syntactic_predicate?(synpred217_Java))
            s = 22
          elsif (look_139_3 == T__47) && (syntactic_predicate?(synpred217_Java))
            s = 23
          end
           
          @input.seek(index_139_3)

        end
        
        if s < 0
          @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
          nva = ANTLR3::Error::NoViableAlternative.new(@dfa139.description, 139, s, input)
          @dfa139.error(nva)
          raise nva
        end
        
        s
      end
      @dfa145 = DFA145.new(self, 145) do |s|
        case s
        when 0
          look_145_3 = @input.peek
          index_145_3 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_229_java!))
            s = 16
          elsif (true)
            s = 4
          end
           
          @input.seek(index_145_3)

        end
        
        if s < 0
          @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
          nva = ANTLR3::Error::NoViableAlternative.new(@dfa145.description, 145, s, input)
          @dfa145.error(nva)
          raise nva
        end
        
        s
      end
      @dfa146 = DFA146.new(self, 146) do |s|
        case s
        when 0
          look_146_1 = @input.peek
          index_146_1 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_234_java!))
            s = 4
          elsif (true)
            s = 3
          end
           
          @input.seek(index_146_1)

        end
        
        if s < 0
          @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
          nva = ANTLR3::Error::NoViableAlternative.new(@dfa146.description, 146, s, input)
          @dfa146.error(nva)
          raise nva
        end
        
        s
      end
      @dfa149 = DFA149.new(self, 149) do |s|
        case s
        when 0
          look_149_1 = @input.peek
          index_149_1 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_237_java!))
            s = 2
          elsif (true)
            s = 4
          end
           
          @input.seek(index_149_1)

        when 1
          look_149_3 = @input.peek
          index_149_3 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_237_java!))
            s = 2
          elsif (true)
            s = 4
          end
           
          @input.seek(index_149_3)

        end
        
        if s < 0
          @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
          nva = ANTLR3::Error::NoViableAlternative.new(@dfa149.description, 149, s, input)
          @dfa149.error(nva)
          raise nva
        end
        
        s
      end
      @dfa151 = DFA151.new(self, 151) do |s|
        case s
        when 0
          look_151_1 = @input.peek
          index_151_1 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_243_java!))
            s = 2
          elsif (true)
            s = 4
          end
           
          @input.seek(index_151_1)

        when 1
          look_151_3 = @input.peek
          index_151_3 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_243_java!))
            s = 2
          elsif (true)
            s = 4
          end
           
          @input.seek(index_151_3)

        end
        
        if s < 0
          @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
          nva = ANTLR3::Error::NoViableAlternative.new(@dfa151.description, 151, s, input)
          @dfa151.error(nva)
          raise nva
        end
        
        s
      end
      @dfa156 = DFA156.new(self, 156)
      @dfa155 = DFA155.new(self, 155) do |s|
        case s
        when 0
          look_155_2 = @input.peek
          index_155_2 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_249_java!))
            s = 32
          elsif (true)
            s = 1
          end
           
          @input.seek(index_155_2)

        end
        
        if s < 0
          @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
          nva = ANTLR3::Error::NoViableAlternative.new(@dfa155.description, 155, s, input)
          @dfa155.error(nva)
          raise nva
        end
        
        s
      end
      @dfa162 = DFA162.new(self, 162) do |s|
        case s
        when 0
          look_162_1 = @input.peek
          index_162_1 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_262_java!))
            s = 32
          elsif (true)
            s = 2
          end
           
          @input.seek(index_162_1)

        end
        
        if s < 0
          @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
          nva = ANTLR3::Error::NoViableAlternative.new(@dfa162.description, 162, s, input)
          @dfa162.error(nva)
          raise nva
        end
        
        s
      end

    end
    TOKENS_FOLLOWING_annotations_IN_compilation_unit_75 = Set[5, 25, 28, 31, 32, 33, 34, 35, 36, 37, 46, 73]
    TOKENS_FOLLOWING_package_declaration_IN_compilation_unit_89 = Set[1, 5, 25, 26, 27, 28, 31, 32, 33, 34, 35, 36, 37, 46, 73]
    TOKENS_FOLLOWING_import_declaration_IN_compilation_unit_91 = Set[1, 5, 25, 26, 27, 28, 31, 32, 33, 34, 35, 36, 37, 46, 73]
    TOKENS_FOLLOWING_type_declaration_IN_compilation_unit_94 = Set[1, 5, 25, 26, 28, 31, 32, 33, 34, 35, 36, 37, 46, 73]
    TOKENS_FOLLOWING_class_or_interface_declaration_IN_compilation_unit_109 = Set[1, 5, 25, 26, 28, 31, 32, 33, 34, 35, 36, 37, 46, 73]
    TOKENS_FOLLOWING_type_declaration_IN_compilation_unit_111 = Set[1, 5, 25, 26, 28, 31, 32, 33, 34, 35, 36, 37, 46, 73]
    TOKENS_FOLLOWING_package_declaration_IN_compilation_unit_132 = Set[1, 5, 25, 26, 27, 28, 31, 32, 33, 34, 35, 36, 37, 46, 73]
    TOKENS_FOLLOWING_import_declaration_IN_compilation_unit_135 = Set[1, 5, 25, 26, 27, 28, 31, 32, 33, 34, 35, 36, 37, 46, 73]
    TOKENS_FOLLOWING_type_declaration_IN_compilation_unit_138 = Set[1, 5, 25, 26, 28, 31, 32, 33, 34, 35, 36, 37, 46, 73]
    TOKENS_FOLLOWING_T__25_IN_package_declaration_158 = Set[4]
    TOKENS_FOLLOWING_qualified_name_IN_package_declaration_160 = Set[26]
    TOKENS_FOLLOWING_T__26_IN_package_declaration_162 = Set[1]
    TOKENS_FOLLOWING_T__27_IN_import_declaration_185 = Set[4, 28]
    TOKENS_FOLLOWING_T__28_IN_import_declaration_187 = Set[4]
    TOKENS_FOLLOWING_qualified_name_IN_import_declaration_190 = Set[26, 29]
    TOKENS_FOLLOWING_T__29_IN_import_declaration_193 = Set[30]
    TOKENS_FOLLOWING_T__30_IN_import_declaration_195 = Set[26]
    TOKENS_FOLLOWING_T__26_IN_import_declaration_199 = Set[1]
    TOKENS_FOLLOWING_class_or_interface_declaration_IN_type_declaration_222 = Set[1]
    TOKENS_FOLLOWING_T__26_IN_type_declaration_232 = Set[1]
    TOKENS_FOLLOWING_class_or_interface_modifiers_IN_class_or_interface_declaration_255 = Set[5, 25, 28, 31, 32, 33, 34, 35, 36, 37, 46, 73]
    TOKENS_FOLLOWING_class_declaration_IN_class_or_interface_declaration_258 = Set[1]
    TOKENS_FOLLOWING_interface_declaration_IN_class_or_interface_declaration_262 = Set[1]
    TOKENS_FOLLOWING_class_or_interface_modifier_IN_class_or_interface_modifiers_286 = Set[1, 28, 31, 32, 33, 34, 35, 36, 73]
    TOKENS_FOLLOWING_annotation_IN_class_or_interface_modifier_306 = Set[1]
    TOKENS_FOLLOWING_T__31_IN_class_or_interface_modifier_319 = Set[1]
    TOKENS_FOLLOWING_T__32_IN_class_or_interface_modifier_334 = Set[1]
    TOKENS_FOLLOWING_T__33_IN_class_or_interface_modifier_346 = Set[1]
    TOKENS_FOLLOWING_T__34_IN_class_or_interface_modifier_360 = Set[1]
    TOKENS_FOLLOWING_T__28_IN_class_or_interface_modifier_373 = Set[1]
    TOKENS_FOLLOWING_T__35_IN_class_or_interface_modifier_388 = Set[1]
    TOKENS_FOLLOWING_T__36_IN_class_or_interface_modifier_404 = Set[1]
    TOKENS_FOLLOWING_modifier_IN_modifiers_426 = Set[1, 28, 31, 32, 33, 34, 35, 36, 52, 53, 54, 55, 73]
    TOKENS_FOLLOWING_normal_class_declaration_IN_class_declaration_446 = Set[1]
    TOKENS_FOLLOWING_enum_declaration_IN_class_declaration_456 = Set[1]
    TOKENS_FOLLOWING_T__37_IN_normal_class_declaration_479 = Set[4]
    TOKENS_FOLLOWING_Identifier_IN_normal_class_declaration_481 = Set[38, 39, 40, 44]
    TOKENS_FOLLOWING_type_parameters_IN_normal_class_declaration_483 = Set[38, 39, 40, 44]
    TOKENS_FOLLOWING_T__38_IN_normal_class_declaration_495 = Set[4, 56, 57, 58, 59, 60, 61, 62, 63]
    TOKENS_FOLLOWING_type_IN_normal_class_declaration_497 = Set[38, 39, 40, 44]
    TOKENS_FOLLOWING_T__39_IN_normal_class_declaration_510 = Set[4, 56, 57, 58, 59, 60, 61, 62, 63]
    TOKENS_FOLLOWING_type_list_IN_normal_class_declaration_512 = Set[38, 39, 40, 44]
    TOKENS_FOLLOWING_class_body_IN_normal_class_declaration_524 = Set[1]
    TOKENS_FOLLOWING_T__40_IN_type_parameters_547 = Set[4]
    TOKENS_FOLLOWING_type_parameter_IN_type_parameters_549 = Set[41, 42]
    TOKENS_FOLLOWING_T__41_IN_type_parameters_552 = Set[4]
    TOKENS_FOLLOWING_type_parameter_IN_type_parameters_554 = Set[41, 42]
    TOKENS_FOLLOWING_T__42_IN_type_parameters_558 = Set[1]
    TOKENS_FOLLOWING_Identifier_IN_type_parameter_577 = Set[1, 38]
    TOKENS_FOLLOWING_T__38_IN_type_parameter_580 = Set[4, 56, 57, 58, 59, 60, 61, 62, 63]
    TOKENS_FOLLOWING_type_bound_IN_type_parameter_582 = Set[1]
    TOKENS_FOLLOWING_type_IN_type_bound_611 = Set[1, 43]
    TOKENS_FOLLOWING_T__43_IN_type_bound_614 = Set[4, 56, 57, 58, 59, 60, 61, 62, 63]
    TOKENS_FOLLOWING_type_IN_type_bound_616 = Set[1, 43]
    TOKENS_FOLLOWING_ENUM_IN_enum_declaration_637 = Set[4]
    TOKENS_FOLLOWING_Identifier_IN_enum_declaration_639 = Set[39, 44]
    TOKENS_FOLLOWING_T__39_IN_enum_declaration_642 = Set[4, 56, 57, 58, 59, 60, 61, 62, 63]
    TOKENS_FOLLOWING_type_list_IN_enum_declaration_644 = Set[39, 44]
    TOKENS_FOLLOWING_enum_body_IN_enum_declaration_648 = Set[1]
    TOKENS_FOLLOWING_T__44_IN_enum_body_667 = Set[4, 26, 41, 45, 73]
    TOKENS_FOLLOWING_enum_constants_IN_enum_body_669 = Set[26, 41, 45]
    TOKENS_FOLLOWING_T__41_IN_enum_body_672 = Set[26, 45]
    TOKENS_FOLLOWING_enum_body_declarations_IN_enum_body_675 = Set[45]
    TOKENS_FOLLOWING_T__45_IN_enum_body_678 = Set[1]
    TOKENS_FOLLOWING_enum_constant_IN_enum_constants_697 = Set[1, 41]
    TOKENS_FOLLOWING_T__41_IN_enum_constants_700 = Set[4, 73]
    TOKENS_FOLLOWING_enum_constant_IN_enum_constants_702 = Set[1, 41]
    TOKENS_FOLLOWING_annotations_IN_enum_constant_727 = Set[4]
    TOKENS_FOLLOWING_Identifier_IN_enum_constant_730 = Set[1, 38, 39, 40, 44, 66]
    TOKENS_FOLLOWING_arguments_IN_enum_constant_732 = Set[1, 38, 39, 40, 44]
    TOKENS_FOLLOWING_class_body_IN_enum_constant_735 = Set[1]
    TOKENS_FOLLOWING_T__26_IN_enum_body_declarations_759 = Set[1, 26, 28, 31, 32, 33, 34, 35, 36, 44, 52, 53, 54, 55, 73]
    TOKENS_FOLLOWING_class_body_declaration_IN_enum_body_declarations_762 = Set[1, 26, 28, 31, 32, 33, 34, 35, 36, 44, 52, 53, 54, 55, 73]
    TOKENS_FOLLOWING_normal_interface_declaration_IN_interface_declaration_787 = Set[1]
    TOKENS_FOLLOWING_annotation_type_declaration_IN_interface_declaration_797 = Set[1]
    TOKENS_FOLLOWING_T__46_IN_normal_interface_declaration_820 = Set[4]
    TOKENS_FOLLOWING_Identifier_IN_normal_interface_declaration_822 = Set[38, 40, 44]
    TOKENS_FOLLOWING_type_parameters_IN_normal_interface_declaration_824 = Set[38, 40, 44]
    TOKENS_FOLLOWING_T__38_IN_normal_interface_declaration_828 = Set[4, 56, 57, 58, 59, 60, 61, 62, 63]
    TOKENS_FOLLOWING_type_list_IN_normal_interface_declaration_830 = Set[38, 40, 44]
    TOKENS_FOLLOWING_interface_body_IN_normal_interface_declaration_834 = Set[1]
    TOKENS_FOLLOWING_type_IN_type_list_857 = Set[1, 41]
    TOKENS_FOLLOWING_T__41_IN_type_list_860 = Set[4, 56, 57, 58, 59, 60, 61, 62, 63]
    TOKENS_FOLLOWING_type_IN_type_list_862 = Set[1, 41]
    TOKENS_FOLLOWING_T__44_IN_class_body_887 = Set[26, 28, 31, 32, 33, 34, 35, 36, 44, 45, 52, 53, 54, 55, 73]
    TOKENS_FOLLOWING_class_body_declaration_IN_class_body_889 = Set[26, 28, 31, 32, 33, 34, 35, 36, 44, 45, 52, 53, 54, 55, 73]
    TOKENS_FOLLOWING_T__45_IN_class_body_892 = Set[1]
    TOKENS_FOLLOWING_T__44_IN_interface_body_915 = Set[26, 28, 31, 32, 33, 34, 35, 36, 44, 45, 52, 53, 54, 55, 73]
    TOKENS_FOLLOWING_interface_body_declaration_IN_interface_body_917 = Set[26, 28, 31, 32, 33, 34, 35, 36, 44, 45, 52, 53, 54, 55, 73]
    TOKENS_FOLLOWING_T__45_IN_interface_body_920 = Set[1]
    TOKENS_FOLLOWING_T__26_IN_class_body_declaration_939 = Set[1]
    TOKENS_FOLLOWING_T__28_IN_class_body_declaration_949 = Set[28, 44]
    TOKENS_FOLLOWING_block_IN_class_body_declaration_952 = Set[1]
    TOKENS_FOLLOWING_modifiers_IN_class_body_declaration_962 = Set[4, 5, 25, 28, 31, 32, 33, 34, 35, 36, 37, 40, 46, 47, 56, 57, 58, 59, 60, 61, 62, 63, 73]
    TOKENS_FOLLOWING_member_decl_IN_class_body_declaration_964 = Set[1]
    TOKENS_FOLLOWING_generic_method_or_constructor_decl_IN_member_decl_987 = Set[1]
    TOKENS_FOLLOWING_member_declaration_IN_member_decl_997 = Set[1]
    TOKENS_FOLLOWING_T__47_IN_member_decl_1007 = Set[4]
    TOKENS_FOLLOWING_Identifier_IN_member_decl_1009 = Set[66]
    TOKENS_FOLLOWING_void_method_declarator_rest_IN_member_decl_1011 = Set[1]
    TOKENS_FOLLOWING_Identifier_IN_member_decl_1021 = Set[66]
    TOKENS_FOLLOWING_constructor_declarator_rest_IN_member_decl_1023 = Set[1]
    TOKENS_FOLLOWING_interface_declaration_IN_member_decl_1033 = Set[1]
    TOKENS_FOLLOWING_class_declaration_IN_member_decl_1043 = Set[1]
    TOKENS_FOLLOWING_type_IN_member_declaration_1066 = Set[4]
    TOKENS_FOLLOWING_method_declaration_IN_member_declaration_1069 = Set[1]
    TOKENS_FOLLOWING_field_declaration_IN_member_declaration_1073 = Set[1]
    TOKENS_FOLLOWING_type_parameters_IN_generic_method_or_constructor_decl_1093 = Set[4, 47, 56, 57, 58, 59, 60, 61, 62, 63]
    TOKENS_FOLLOWING_generic_method_or_constructor_rest_IN_generic_method_or_constructor_decl_1095 = Set[1]
    TOKENS_FOLLOWING_type_IN_generic_method_or_constructor_rest_1119 = Set[4]
    TOKENS_FOLLOWING_T__47_IN_generic_method_or_constructor_rest_1123 = Set[4]
    TOKENS_FOLLOWING_Identifier_IN_generic_method_or_constructor_rest_1126 = Set[66]
    TOKENS_FOLLOWING_method_declarator_rest_IN_generic_method_or_constructor_rest_1128 = Set[1]
    TOKENS_FOLLOWING_Identifier_IN_generic_method_or_constructor_rest_1138 = Set[66]
    TOKENS_FOLLOWING_constructor_declarator_rest_IN_generic_method_or_constructor_rest_1140 = Set[1]
    TOKENS_FOLLOWING_Identifier_IN_method_declaration_1159 = Set[66]
    TOKENS_FOLLOWING_method_declarator_rest_IN_method_declaration_1161 = Set[1]
    TOKENS_FOLLOWING_variable_declarators_IN_field_declaration_1180 = Set[26]
    TOKENS_FOLLOWING_T__26_IN_field_declaration_1182 = Set[1]
    TOKENS_FOLLOWING_modifiers_IN_interface_body_declaration_1209 = Set[4, 5, 25, 28, 31, 32, 33, 34, 35, 36, 37, 40, 46, 47, 56, 57, 58, 59, 60, 61, 62, 63, 73]
    TOKENS_FOLLOWING_interface_member_decl_IN_interface_body_declaration_1211 = Set[1]
    TOKENS_FOLLOWING_T__26_IN_interface_body_declaration_1221 = Set[1]
    TOKENS_FOLLOWING_interface_method_or_field_decl_IN_interface_member_decl_1240 = Set[1]
    TOKENS_FOLLOWING_interface_generic_method_decl_IN_interface_member_decl_1250 = Set[1]
    TOKENS_FOLLOWING_T__47_IN_interface_member_decl_1260 = Set[4]
    TOKENS_FOLLOWING_Identifier_IN_interface_member_decl_1262 = Set[66]
    TOKENS_FOLLOWING_void_interface_method_declarator_rest_IN_interface_member_decl_1264 = Set[1]
    TOKENS_FOLLOWING_interface_declaration_IN_interface_member_decl_1274 = Set[1]
    TOKENS_FOLLOWING_class_declaration_IN_interface_member_decl_1284 = Set[1]
    TOKENS_FOLLOWING_type_IN_interface_method_or_field_decl_1307 = Set[4]
    TOKENS_FOLLOWING_Identifier_IN_interface_method_or_field_decl_1309 = Set[48, 51, 66]
    TOKENS_FOLLOWING_interface_method_or_field_rest_IN_interface_method_or_field_decl_1311 = Set[1]
    TOKENS_FOLLOWING_constant_declarators_rest_IN_interface_method_or_field_rest_1334 = Set[26]
    TOKENS_FOLLOWING_T__26_IN_interface_method_or_field_rest_1336 = Set[1]
    TOKENS_FOLLOWING_interface_method_declarator_rest_IN_interface_method_or_field_rest_1346 = Set[1]
    TOKENS_FOLLOWING_formal_parameters_IN_method_declarator_rest_1369 = Set[26, 28, 44, 48, 50]
    TOKENS_FOLLOWING_T__48_IN_method_declarator_rest_1372 = Set[49]
    TOKENS_FOLLOWING_T__49_IN_method_declarator_rest_1374 = Set[26, 28, 44, 48, 50]
    TOKENS_FOLLOWING_T__50_IN_method_declarator_rest_1387 = Set[4]
    TOKENS_FOLLOWING_qualified_name_list_IN_method_declarator_rest_1389 = Set[26, 28, 44]
    TOKENS_FOLLOWING_method_body_IN_method_declarator_rest_1405 = Set[1]
    TOKENS_FOLLOWING_T__26_IN_method_declarator_rest_1419 = Set[1]
    TOKENS_FOLLOWING_formal_parameters_IN_void_method_declarator_rest_1452 = Set[26, 28, 44, 50]
    TOKENS_FOLLOWING_T__50_IN_void_method_declarator_rest_1455 = Set[4]
    TOKENS_FOLLOWING_qualified_name_list_IN_void_method_declarator_rest_1457 = Set[26, 28, 44]
    TOKENS_FOLLOWING_method_body_IN_void_method_declarator_rest_1473 = Set[1]
    TOKENS_FOLLOWING_T__26_IN_void_method_declarator_rest_1487 = Set[1]
    TOKENS_FOLLOWING_formal_parameters_IN_interface_method_declarator_rest_1520 = Set[26, 48, 50]
    TOKENS_FOLLOWING_T__48_IN_interface_method_declarator_rest_1523 = Set[49]
    TOKENS_FOLLOWING_T__49_IN_interface_method_declarator_rest_1525 = Set[26, 48, 50]
    TOKENS_FOLLOWING_T__50_IN_interface_method_declarator_rest_1530 = Set[4]
    TOKENS_FOLLOWING_qualified_name_list_IN_interface_method_declarator_rest_1532 = Set[26]
    TOKENS_FOLLOWING_T__26_IN_interface_method_declarator_rest_1536 = Set[1]
    TOKENS_FOLLOWING_type_parameters_IN_interface_generic_method_decl_1559 = Set[4, 47, 56, 57, 58, 59, 60, 61, 62, 63]
    TOKENS_FOLLOWING_type_IN_interface_generic_method_decl_1562 = Set[4]
    TOKENS_FOLLOWING_T__47_IN_interface_generic_method_decl_1566 = Set[4]
    TOKENS_FOLLOWING_Identifier_IN_interface_generic_method_decl_1569 = Set[48, 51, 66]
    TOKENS_FOLLOWING_interface_method_declarator_rest_IN_interface_generic_method_decl_1579 = Set[1]
    TOKENS_FOLLOWING_formal_parameters_IN_void_interface_method_declarator_rest_1602 = Set[26, 50]
    TOKENS_FOLLOWING_T__50_IN_void_interface_method_declarator_rest_1605 = Set[4]
    TOKENS_FOLLOWING_qualified_name_list_IN_void_interface_method_declarator_rest_1607 = Set[26]
    TOKENS_FOLLOWING_T__26_IN_void_interface_method_declarator_rest_1611 = Set[1]
    TOKENS_FOLLOWING_formal_parameters_IN_constructor_declarator_rest_1634 = Set[44, 50]
    TOKENS_FOLLOWING_T__50_IN_constructor_declarator_rest_1637 = Set[4]
    TOKENS_FOLLOWING_qualified_name_list_IN_constructor_declarator_rest_1639 = Set[44, 50]
    TOKENS_FOLLOWING_constructor_body_IN_constructor_declarator_rest_1643 = Set[1]
    TOKENS_FOLLOWING_Identifier_IN_constant_declarator_1662 = Set[48, 51]
    TOKENS_FOLLOWING_constant_declarator_rest_IN_constant_declarator_1664 = Set[1]
    TOKENS_FOLLOWING_variable_declarator_IN_variable_declarators_1687 = Set[1, 41]
    TOKENS_FOLLOWING_T__41_IN_variable_declarators_1690 = Set[4]
    TOKENS_FOLLOWING_variable_declarator_IN_variable_declarators_1692 = Set[1, 41]
    TOKENS_FOLLOWING_variable_declarator_id_IN_variable_declarator_1713 = Set[1, 51]
    TOKENS_FOLLOWING_T__51_IN_variable_declarator_1716 = Set[4, 6, 7, 8, 9, 10, 11, 44, 47, 56, 57, 58, 59, 60, 61, 62, 63, 65, 66, 69, 70, 71, 72, 105, 106, 109, 110, 111, 112, 113]
    TOKENS_FOLLOWING_variable_initializer_IN_variable_declarator_1718 = Set[1]
    TOKENS_FOLLOWING_constant_declarator_rest_IN_constant_declarators_rest_1743 = Set[1, 41]
    TOKENS_FOLLOWING_T__41_IN_constant_declarators_rest_1746 = Set[4]
    TOKENS_FOLLOWING_constant_declarator_IN_constant_declarators_rest_1748 = Set[1, 41]
    TOKENS_FOLLOWING_T__48_IN_constant_declarator_rest_1770 = Set[49]
    TOKENS_FOLLOWING_T__49_IN_constant_declarator_rest_1772 = Set[48, 51]
    TOKENS_FOLLOWING_T__51_IN_constant_declarator_rest_1776 = Set[4, 6, 7, 8, 9, 10, 11, 44, 47, 56, 57, 58, 59, 60, 61, 62, 63, 65, 66, 69, 70, 71, 72, 105, 106, 109, 110, 111, 112, 113]
    TOKENS_FOLLOWING_variable_initializer_IN_constant_declarator_rest_1778 = Set[1]
    TOKENS_FOLLOWING_Identifier_IN_variable_declarator_id_1801 = Set[1, 48]
    TOKENS_FOLLOWING_T__48_IN_variable_declarator_id_1804 = Set[49]
    TOKENS_FOLLOWING_T__49_IN_variable_declarator_id_1806 = Set[1, 48]
    TOKENS_FOLLOWING_array_initializer_IN_variable_initializer_1827 = Set[1]
    TOKENS_FOLLOWING_expression_IN_variable_initializer_1837 = Set[1]
    TOKENS_FOLLOWING_T__44_IN_array_initializer_1864 = Set[4, 6, 7, 8, 9, 10, 11, 44, 45, 47, 56, 57, 58, 59, 60, 61, 62, 63, 65, 66, 69, 70, 71, 72, 105, 106, 109, 110, 111, 112, 113]
    TOKENS_FOLLOWING_variable_initializer_IN_array_initializer_1867 = Set[41, 45]
    TOKENS_FOLLOWING_T__41_IN_array_initializer_1870 = Set[4, 6, 7, 8, 9, 10, 11, 44, 47, 56, 57, 58, 59, 60, 61, 62, 63, 65, 66, 69, 70, 71, 72, 105, 106, 109, 110, 111, 112, 113]
    TOKENS_FOLLOWING_variable_initializer_IN_array_initializer_1872 = Set[41, 45]
    TOKENS_FOLLOWING_T__41_IN_array_initializer_1877 = Set[45]
    TOKENS_FOLLOWING_T__45_IN_array_initializer_1884 = Set[1]
    TOKENS_FOLLOWING_annotation_IN_modifier_1903 = Set[1]
    TOKENS_FOLLOWING_T__31_IN_modifier_1913 = Set[1]
    TOKENS_FOLLOWING_T__32_IN_modifier_1923 = Set[1]
    TOKENS_FOLLOWING_T__33_IN_modifier_1933 = Set[1]
    TOKENS_FOLLOWING_T__28_IN_modifier_1943 = Set[1]
    TOKENS_FOLLOWING_T__34_IN_modifier_1953 = Set[1]
    TOKENS_FOLLOWING_T__35_IN_modifier_1963 = Set[1]
    TOKENS_FOLLOWING_T__52_IN_modifier_1973 = Set[1]
    TOKENS_FOLLOWING_T__53_IN_modifier_1983 = Set[1]
    TOKENS_FOLLOWING_T__54_IN_modifier_1993 = Set[1]
    TOKENS_FOLLOWING_T__55_IN_modifier_2003 = Set[1]
    TOKENS_FOLLOWING_T__36_IN_modifier_2013 = Set[1]
    TOKENS_FOLLOWING_qualified_name_IN_package_or_type_name_2032 = Set[1]
    TOKENS_FOLLOWING_Identifier_IN_enum_constant_name_2051 = Set[1]
    TOKENS_FOLLOWING_qualified_name_IN_type_name_2070 = Set[1]
    TOKENS_FOLLOWING_class_or_interface_type_IN_type_2084 = Set[1, 48]
    TOKENS_FOLLOWING_T__48_IN_type_2087 = Set[49]
    TOKENS_FOLLOWING_T__49_IN_type_2089 = Set[1, 48]
    TOKENS_FOLLOWING_primitive_type_IN_type_2096 = Set[1, 48]
    TOKENS_FOLLOWING_T__48_IN_type_2099 = Set[49]
    TOKENS_FOLLOWING_T__49_IN_type_2101 = Set[1, 48]
    TOKENS_FOLLOWING_Identifier_IN_class_or_interface_type_2114 = Set[1, 29, 40]
    TOKENS_FOLLOWING_type_arguments_IN_class_or_interface_type_2116 = Set[1, 29]
    TOKENS_FOLLOWING_T__29_IN_class_or_interface_type_2120 = Set[4]
    TOKENS_FOLLOWING_Identifier_IN_class_or_interface_type_2122 = Set[1, 29, 40]
    TOKENS_FOLLOWING_type_arguments_IN_class_or_interface_type_2124 = Set[1, 29]
    TOKENS_FOLLOWING_set_IN_primitive_type_0 = Set[1]
    TOKENS_FOLLOWING_T__35_IN_variable_modifier_2233 = Set[1]
    TOKENS_FOLLOWING_annotation_IN_variable_modifier_2243 = Set[1]
    TOKENS_FOLLOWING_T__40_IN_type_arguments_2262 = Set[4, 56, 57, 58, 59, 60, 61, 62, 63, 64]
    TOKENS_FOLLOWING_type_argument_IN_type_arguments_2264 = Set[41, 42]
    TOKENS_FOLLOWING_T__41_IN_type_arguments_2267 = Set[4, 56, 57, 58, 59, 60, 61, 62, 63, 64]
    TOKENS_FOLLOWING_type_argument_IN_type_arguments_2269 = Set[41, 42]
    TOKENS_FOLLOWING_T__42_IN_type_arguments_2273 = Set[1]
    TOKENS_FOLLOWING_type_IN_type_argument_2296 = Set[1]
    TOKENS_FOLLOWING_T__64_IN_type_argument_2306 = Set[1, 38, 65]
    TOKENS_FOLLOWING_set_IN_type_argument_2309 = Set[4, 56, 57, 58, 59, 60, 61, 62, 63]
    TOKENS_FOLLOWING_type_IN_type_argument_2317 = Set[1]
    TOKENS_FOLLOWING_qualified_name_IN_qualified_name_list_2342 = Set[1, 41]
    TOKENS_FOLLOWING_T__41_IN_qualified_name_list_2345 = Set[4]
    TOKENS_FOLLOWING_qualified_name_IN_qualified_name_list_2347 = Set[1, 41]
    TOKENS_FOLLOWING_T__66_IN_formal_parameters_2368 = Set[4, 35, 56, 57, 58, 59, 60, 61, 62, 63, 67, 73]
    TOKENS_FOLLOWING_formal_parameter_decls_IN_formal_parameters_2370 = Set[67]
    TOKENS_FOLLOWING_T__67_IN_formal_parameters_2373 = Set[1]
    TOKENS_FOLLOWING_variable_modifiers_IN_formal_parameter_decls_2396 = Set[4, 56, 57, 58, 59, 60, 61, 62, 63]
    TOKENS_FOLLOWING_type_IN_formal_parameter_decls_2398 = Set[4, 68]
    TOKENS_FOLLOWING_formal_parameter_decls_rest_IN_formal_parameter_decls_2400 = Set[1]
    TOKENS_FOLLOWING_variable_declarator_id_IN_formal_parameter_decls_rest_2423 = Set[1, 41]
    TOKENS_FOLLOWING_T__41_IN_formal_parameter_decls_rest_2426 = Set[4, 35, 56, 57, 58, 59, 60, 61, 62, 63, 73]
    TOKENS_FOLLOWING_formal_parameter_decls_IN_formal_parameter_decls_rest_2428 = Set[1]
    TOKENS_FOLLOWING_T__68_IN_formal_parameter_decls_rest_2440 = Set[4]
    TOKENS_FOLLOWING_variable_declarator_id_IN_formal_parameter_decls_rest_2442 = Set[1]
    TOKENS_FOLLOWING_block_IN_method_body_2465 = Set[1]
    TOKENS_FOLLOWING_T__44_IN_constructor_body_2484 = Set[4, 5, 6, 7, 8, 9, 10, 11, 12, 25, 26, 28, 31, 32, 33, 34, 35, 36, 37, 40, 44, 45, 46, 47, 53, 56, 57, 58, 59, 60, 61, 62, 63, 65, 66, 69, 70, 71, 72, 73, 76, 78, 79, 80, 81, 83, 84, 85, 86, 87, 105, 106, 109, 110, 111, 112, 113]
    TOKENS_FOLLOWING_explicit_constructor_invocation_IN_constructor_body_2486 = Set[4, 5, 6, 7, 8, 9, 10, 11, 12, 25, 26, 28, 31, 32, 33, 34, 35, 36, 37, 44, 45, 46, 47, 53, 56, 57, 58, 59, 60, 61, 62, 63, 65, 66, 69, 70, 71, 72, 73, 76, 78, 79, 80, 81, 83, 84, 85, 86, 87, 105, 106, 109, 110, 111, 112, 113]
    TOKENS_FOLLOWING_block_statement_IN_constructor_body_2489 = Set[4, 5, 6, 7, 8, 9, 10, 11, 12, 25, 26, 28, 31, 32, 33, 34, 35, 36, 37, 44, 45, 46, 47, 53, 56, 57, 58, 59, 60, 61, 62, 63, 65, 66, 69, 70, 71, 72, 73, 76, 78, 79, 80, 81, 83, 84, 85, 86, 87, 105, 106, 109, 110, 111, 112, 113]
    TOKENS_FOLLOWING_T__45_IN_constructor_body_2492 = Set[1]
    TOKENS_FOLLOWING_non_wildcard_type_arguments_IN_explicit_constructor_invocation_2511 = Set[65, 69]
    TOKENS_FOLLOWING_set_IN_explicit_constructor_invocation_2514 = Set[66]
    TOKENS_FOLLOWING_arguments_IN_explicit_constructor_invocation_2522 = Set[26]
    TOKENS_FOLLOWING_T__26_IN_explicit_constructor_invocation_2524 = Set[1]
    TOKENS_FOLLOWING_primary_IN_explicit_constructor_invocation_2534 = Set[29]
    TOKENS_FOLLOWING_T__29_IN_explicit_constructor_invocation_2536 = Set[40, 65]
    TOKENS_FOLLOWING_non_wildcard_type_arguments_IN_explicit_constructor_invocation_2538 = Set[65]
    TOKENS_FOLLOWING_T__65_IN_explicit_constructor_invocation_2541 = Set[66]
    TOKENS_FOLLOWING_arguments_IN_explicit_constructor_invocation_2543 = Set[26]
    TOKENS_FOLLOWING_T__26_IN_explicit_constructor_invocation_2545 = Set[1]
    TOKENS_FOLLOWING_Identifier_IN_qualified_name_2565 = Set[1, 29]
    TOKENS_FOLLOWING_T__29_IN_qualified_name_2568 = Set[4]
    TOKENS_FOLLOWING_Identifier_IN_qualified_name_2570 = Set[1, 29]
    TOKENS_FOLLOWING_integer_literal_IN_literal_2596 = Set[1]
    TOKENS_FOLLOWING_FloatingPointLiteral_IN_literal_2606 = Set[1]
    TOKENS_FOLLOWING_CharacterLiteral_IN_literal_2616 = Set[1]
    TOKENS_FOLLOWING_StringLiteral_IN_literal_2626 = Set[1]
    TOKENS_FOLLOWING_boolean_literal_IN_literal_2636 = Set[1]
    TOKENS_FOLLOWING_T__70_IN_literal_2646 = Set[1]
    TOKENS_FOLLOWING_set_IN_integer_literal_0 = Set[1]
    TOKENS_FOLLOWING_set_IN_boolean_literal_0 = Set[1]
    TOKENS_FOLLOWING_annotation_IN_annotations_2735 = Set[1, 73]
    TOKENS_FOLLOWING_T__73_IN_annotation_2755 = Set[4]
    TOKENS_FOLLOWING_annotation_name_IN_annotation_2757 = Set[1, 66]
    TOKENS_FOLLOWING_T__66_IN_annotation_2761 = Set[4, 6, 7, 8, 9, 10, 11, 44, 47, 56, 57, 58, 59, 60, 61, 62, 63, 65, 66, 67, 69, 70, 71, 72, 73, 105, 106, 109, 110, 111, 112, 113]
    TOKENS_FOLLOWING_element_value_pairs_IN_annotation_2765 = Set[67]
    TOKENS_FOLLOWING_element_value_IN_annotation_2769 = Set[67]
    TOKENS_FOLLOWING_T__67_IN_annotation_2774 = Set[1]
    TOKENS_FOLLOWING_Identifier_IN_annotation_name_2798 = Set[1, 29]
    TOKENS_FOLLOWING_T__29_IN_annotation_name_2801 = Set[4]
    TOKENS_FOLLOWING_Identifier_IN_annotation_name_2803 = Set[1, 29]
    TOKENS_FOLLOWING_element_value_pair_IN_element_value_pairs_2824 = Set[1, 41]
    TOKENS_FOLLOWING_T__41_IN_element_value_pairs_2827 = Set[4]
    TOKENS_FOLLOWING_element_value_pair_IN_element_value_pairs_2829 = Set[1, 41]
    TOKENS_FOLLOWING_Identifier_IN_element_value_pair_2850 = Set[51]
    TOKENS_FOLLOWING_T__51_IN_element_value_pair_2852 = Set[4, 6, 7, 8, 9, 10, 11, 44, 47, 56, 57, 58, 59, 60, 61, 62, 63, 65, 66, 69, 70, 71, 72, 73, 105, 106, 109, 110, 111, 112, 113]
    TOKENS_FOLLOWING_element_value_IN_element_value_pair_2854 = Set[1]
    TOKENS_FOLLOWING_conditional_expression_IN_element_value_2877 = Set[1]
    TOKENS_FOLLOWING_annotation_IN_element_value_2887 = Set[1]
    TOKENS_FOLLOWING_element_value_array_initializer_IN_element_value_2897 = Set[1]
    TOKENS_FOLLOWING_T__44_IN_element_value_array_initializer_2920 = Set[4, 6, 7, 8, 9, 10, 11, 41, 44, 45, 47, 56, 57, 58, 59, 60, 61, 62, 63, 65, 66, 69, 70, 71, 72, 73, 105, 106, 109, 110, 111, 112, 113]
    TOKENS_FOLLOWING_element_value_IN_element_value_array_initializer_2923 = Set[41, 45]
    TOKENS_FOLLOWING_T__41_IN_element_value_array_initializer_2926 = Set[4, 6, 7, 8, 9, 10, 11, 44, 47, 56, 57, 58, 59, 60, 61, 62, 63, 65, 66, 69, 70, 71, 72, 73, 105, 106, 109, 110, 111, 112, 113]
    TOKENS_FOLLOWING_element_value_IN_element_value_array_initializer_2928 = Set[41, 45]
    TOKENS_FOLLOWING_T__41_IN_element_value_array_initializer_2935 = Set[45]
    TOKENS_FOLLOWING_T__45_IN_element_value_array_initializer_2939 = Set[1]
    TOKENS_FOLLOWING_T__73_IN_annotation_type_declaration_2962 = Set[46]
    TOKENS_FOLLOWING_T__46_IN_annotation_type_declaration_2964 = Set[4]
    TOKENS_FOLLOWING_Identifier_IN_annotation_type_declaration_2966 = Set[44]
    TOKENS_FOLLOWING_annotation_type_body_IN_annotation_type_declaration_2968 = Set[1]
    TOKENS_FOLLOWING_T__44_IN_annotation_type_body_2991 = Set[26, 28, 31, 32, 33, 34, 35, 36, 44, 45, 52, 53, 54, 55, 73]
    TOKENS_FOLLOWING_annotation_type_element_declaration_IN_annotation_type_body_2994 = Set[26, 28, 31, 32, 33, 34, 35, 36, 44, 45, 52, 53, 54, 55, 73]
    TOKENS_FOLLOWING_T__45_IN_annotation_type_body_2998 = Set[1]
    TOKENS_FOLLOWING_modifiers_IN_annotation_type_element_declaration_3021 = Set[4, 5, 25, 28, 31, 32, 33, 34, 35, 36, 37, 46, 56, 57, 58, 59, 60, 61, 62, 63, 73]
    TOKENS_FOLLOWING_annotation_type_element_rest_IN_annotation_type_element_declaration_3023 = Set[1]
    TOKENS_FOLLOWING_type_IN_annotation_type_element_rest_3046 = Set[4]
    TOKENS_FOLLOWING_annotation_method_or_constant_rest_IN_annotation_type_element_rest_3048 = Set[26]
    TOKENS_FOLLOWING_T__26_IN_annotation_type_element_rest_3050 = Set[1]
    TOKENS_FOLLOWING_normal_class_declaration_IN_annotation_type_element_rest_3060 = Set[1, 26]
    TOKENS_FOLLOWING_T__26_IN_annotation_type_element_rest_3062 = Set[1]
    TOKENS_FOLLOWING_normal_interface_declaration_IN_annotation_type_element_rest_3073 = Set[1, 26]
    TOKENS_FOLLOWING_T__26_IN_annotation_type_element_rest_3075 = Set[1]
    TOKENS_FOLLOWING_enum_declaration_IN_annotation_type_element_rest_3086 = Set[1, 26]
    TOKENS_FOLLOWING_T__26_IN_annotation_type_element_rest_3088 = Set[1]
    TOKENS_FOLLOWING_annotation_type_declaration_IN_annotation_type_element_rest_3099 = Set[1, 26]
    TOKENS_FOLLOWING_T__26_IN_annotation_type_element_rest_3101 = Set[1]
    TOKENS_FOLLOWING_annotation_method_rest_IN_annotation_method_or_constant_rest_3125 = Set[1]
    TOKENS_FOLLOWING_annotation_constant_rest_IN_annotation_method_or_constant_rest_3135 = Set[1]
    TOKENS_FOLLOWING_Identifier_IN_annotation_method_rest_3158 = Set[66]
    TOKENS_FOLLOWING_T__66_IN_annotation_method_rest_3160 = Set[67]
    TOKENS_FOLLOWING_T__67_IN_annotation_method_rest_3162 = Set[1, 74]
    TOKENS_FOLLOWING_default_value_IN_annotation_method_rest_3164 = Set[1]
    TOKENS_FOLLOWING_variable_declarators_IN_annotation_constant_rest_3188 = Set[1]
    TOKENS_FOLLOWING_T__74_IN_default_value_3211 = Set[4, 6, 7, 8, 9, 10, 11, 44, 47, 56, 57, 58, 59, 60, 61, 62, 63, 65, 66, 69, 70, 71, 72, 73, 105, 106, 109, 110, 111, 112, 113]
    TOKENS_FOLLOWING_element_value_IN_default_value_3213 = Set[1]
    TOKENS_FOLLOWING_T__44_IN_block_3234 = Set[4, 5, 6, 7, 8, 9, 10, 11, 12, 25, 26, 28, 31, 32, 33, 34, 35, 36, 37, 44, 45, 46, 47, 53, 56, 57, 58, 59, 60, 61, 62, 63, 65, 66, 69, 70, 71, 72, 73, 76, 78, 79, 80, 81, 83, 84, 85, 86, 87, 105, 106, 109, 110, 111, 112, 113]
    TOKENS_FOLLOWING_block_statement_IN_block_3236 = Set[4, 5, 6, 7, 8, 9, 10, 11, 12, 25, 26, 28, 31, 32, 33, 34, 35, 36, 37, 44, 45, 46, 47, 53, 56, 57, 58, 59, 60, 61, 62, 63, 65, 66, 69, 70, 71, 72, 73, 76, 78, 79, 80, 81, 83, 84, 85, 86, 87, 105, 106, 109, 110, 111, 112, 113]
    TOKENS_FOLLOWING_T__45_IN_block_3239 = Set[1]
    TOKENS_FOLLOWING_local_variable_declaration_statement_IN_block_statement_3262 = Set[1]
    TOKENS_FOLLOWING_class_or_interface_declaration_IN_block_statement_3272 = Set[1]
    TOKENS_FOLLOWING_statement_IN_block_statement_3282 = Set[1]
    TOKENS_FOLLOWING_local_variable_declaration_IN_local_variable_declaration_statement_3306 = Set[26]
    TOKENS_FOLLOWING_T__26_IN_local_variable_declaration_statement_3308 = Set[1]
    TOKENS_FOLLOWING_variable_modifiers_IN_local_variable_declaration_3327 = Set[4, 56, 57, 58, 59, 60, 61, 62, 63]
    TOKENS_FOLLOWING_type_IN_local_variable_declaration_3329 = Set[4]
    TOKENS_FOLLOWING_variable_declarators_IN_local_variable_declaration_3331 = Set[1]
    TOKENS_FOLLOWING_variable_modifier_IN_variable_modifiers_3354 = Set[1, 35, 73]
    TOKENS_FOLLOWING_block_IN_statement_3372 = Set[1]
    TOKENS_FOLLOWING_ASSERT_IN_statement_3382 = Set[4, 6, 7, 8, 9, 10, 11, 44, 47, 56, 57, 58, 59, 60, 61, 62, 63, 65, 66, 69, 70, 71, 72, 105, 106, 109, 110, 111, 112, 113]
    TOKENS_FOLLOWING_expression_IN_statement_3384 = Set[26, 75]
    TOKENS_FOLLOWING_T__75_IN_statement_3387 = Set[4, 6, 7, 8, 9, 10, 11, 44, 47, 56, 57, 58, 59, 60, 61, 62, 63, 65, 66, 69, 70, 71, 72, 105, 106, 109, 110, 111, 112, 113]
    TOKENS_FOLLOWING_expression_IN_statement_3389 = Set[26]
    TOKENS_FOLLOWING_T__26_IN_statement_3393 = Set[1]
    TOKENS_FOLLOWING_T__76_IN_statement_3403 = Set[66]
    TOKENS_FOLLOWING_par_expression_IN_statement_3405 = Set[4, 5, 6, 7, 8, 9, 10, 11, 12, 25, 26, 28, 31, 32, 33, 34, 35, 36, 37, 44, 46, 47, 53, 56, 57, 58, 59, 60, 61, 62, 63, 65, 66, 69, 70, 71, 72, 73, 76, 78, 79, 80, 81, 83, 84, 85, 86, 87, 105, 106, 109, 110, 111, 112, 113]
    TOKENS_FOLLOWING_statement_IN_statement_3407 = Set[1, 77]
    TOKENS_FOLLOWING_T__77_IN_statement_3417 = Set[4, 5, 6, 7, 8, 9, 10, 11, 12, 25, 26, 28, 31, 32, 33, 34, 35, 36, 37, 44, 46, 47, 53, 56, 57, 58, 59, 60, 61, 62, 63, 65, 66, 69, 70, 71, 72, 73, 76, 78, 79, 80, 81, 83, 84, 85, 86, 87, 105, 106, 109, 110, 111, 112, 113]
    TOKENS_FOLLOWING_statement_IN_statement_3419 = Set[1]
    TOKENS_FOLLOWING_T__78_IN_statement_3431 = Set[66]
    TOKENS_FOLLOWING_T__66_IN_statement_3433 = Set[4, 6, 7, 8, 9, 10, 11, 26, 35, 44, 47, 56, 57, 58, 59, 60, 61, 62, 63, 65, 66, 69, 70, 71, 72, 73, 105, 106, 109, 110, 111, 112, 113]
    TOKENS_FOLLOWING_for_control_IN_statement_3435 = Set[67]
    TOKENS_FOLLOWING_T__67_IN_statement_3437 = Set[4, 5, 6, 7, 8, 9, 10, 11, 12, 25, 26, 28, 31, 32, 33, 34, 35, 36, 37, 44, 46, 47, 53, 56, 57, 58, 59, 60, 61, 62, 63, 65, 66, 69, 70, 71, 72, 73, 76, 78, 79, 80, 81, 83, 84, 85, 86, 87, 105, 106, 109, 110, 111, 112, 113]
    TOKENS_FOLLOWING_statement_IN_statement_3439 = Set[1]
    TOKENS_FOLLOWING_T__79_IN_statement_3449 = Set[66]
    TOKENS_FOLLOWING_par_expression_IN_statement_3451 = Set[4, 5, 6, 7, 8, 9, 10, 11, 12, 25, 26, 28, 31, 32, 33, 34, 35, 36, 37, 44, 46, 47, 53, 56, 57, 58, 59, 60, 61, 62, 63, 65, 66, 69, 70, 71, 72, 73, 76, 78, 79, 80, 81, 83, 84, 85, 86, 87, 105, 106, 109, 110, 111, 112, 113]
    TOKENS_FOLLOWING_statement_IN_statement_3453 = Set[1]
    TOKENS_FOLLOWING_T__80_IN_statement_3463 = Set[4, 5, 6, 7, 8, 9, 10, 11, 12, 25, 26, 28, 31, 32, 33, 34, 35, 36, 37, 44, 46, 47, 53, 56, 57, 58, 59, 60, 61, 62, 63, 65, 66, 69, 70, 71, 72, 73, 76, 78, 79, 80, 81, 83, 84, 85, 86, 87, 105, 106, 109, 110, 111, 112, 113]
    TOKENS_FOLLOWING_statement_IN_statement_3465 = Set[79]
    TOKENS_FOLLOWING_T__79_IN_statement_3467 = Set[66]
    TOKENS_FOLLOWING_par_expression_IN_statement_3469 = Set[26]
    TOKENS_FOLLOWING_T__26_IN_statement_3471 = Set[1]
    TOKENS_FOLLOWING_T__81_IN_statement_3481 = Set[28, 44]
    TOKENS_FOLLOWING_block_IN_statement_3483 = Set[82, 88]
    TOKENS_FOLLOWING_catches_IN_statement_3495 = Set[82]
    TOKENS_FOLLOWING_T__82_IN_statement_3497 = Set[28, 44]
    TOKENS_FOLLOWING_block_IN_statement_3499 = Set[1]
    TOKENS_FOLLOWING_catches_IN_statement_3511 = Set[1]
    TOKENS_FOLLOWING_T__82_IN_statement_3525 = Set[28, 44]
    TOKENS_FOLLOWING_block_IN_statement_3527 = Set[1]
    TOKENS_FOLLOWING_T__83_IN_statement_3547 = Set[66]
    TOKENS_FOLLOWING_par_expression_IN_statement_3549 = Set[44]
    TOKENS_FOLLOWING_T__44_IN_statement_3551 = Set[45, 74, 89]
    TOKENS_FOLLOWING_switch_block_statement_groups_IN_statement_3553 = Set[45]
    TOKENS_FOLLOWING_T__45_IN_statement_3555 = Set[1]
    TOKENS_FOLLOWING_T__53_IN_statement_3565 = Set[66]
    TOKENS_FOLLOWING_par_expression_IN_statement_3567 = Set[28, 44]
    TOKENS_FOLLOWING_block_IN_statement_3569 = Set[1]
    TOKENS_FOLLOWING_T__84_IN_statement_3579 = Set[4, 6, 7, 8, 9, 10, 11, 26, 44, 47, 56, 57, 58, 59, 60, 61, 62, 63, 65, 66, 69, 70, 71, 72, 105, 106, 109, 110, 111, 112, 113]
    TOKENS_FOLLOWING_expression_IN_statement_3581 = Set[26]
    TOKENS_FOLLOWING_T__26_IN_statement_3584 = Set[1]
    TOKENS_FOLLOWING_T__85_IN_statement_3594 = Set[4, 6, 7, 8, 9, 10, 11, 44, 47, 56, 57, 58, 59, 60, 61, 62, 63, 65, 66, 69, 70, 71, 72, 105, 106, 109, 110, 111, 112, 113]
    TOKENS_FOLLOWING_expression_IN_statement_3596 = Set[26]
    TOKENS_FOLLOWING_T__26_IN_statement_3598 = Set[1]
    TOKENS_FOLLOWING_T__86_IN_statement_3608 = Set[4, 26]
    TOKENS_FOLLOWING_Identifier_IN_statement_3610 = Set[26]
    TOKENS_FOLLOWING_T__26_IN_statement_3613 = Set[1]
    TOKENS_FOLLOWING_T__87_IN_statement_3623 = Set[4, 26]
    TOKENS_FOLLOWING_Identifier_IN_statement_3625 = Set[26]
    TOKENS_FOLLOWING_T__26_IN_statement_3628 = Set[1]
    TOKENS_FOLLOWING_T__26_IN_statement_3638 = Set[1]
    TOKENS_FOLLOWING_statement_expression_IN_statement_3649 = Set[26]
    TOKENS_FOLLOWING_T__26_IN_statement_3651 = Set[1]
    TOKENS_FOLLOWING_Identifier_IN_statement_3661 = Set[75]
    TOKENS_FOLLOWING_T__75_IN_statement_3663 = Set[4, 5, 6, 7, 8, 9, 10, 11, 12, 25, 26, 28, 31, 32, 33, 34, 35, 36, 37, 44, 46, 47, 53, 56, 57, 58, 59, 60, 61, 62, 63, 65, 66, 69, 70, 71, 72, 73, 76, 78, 79, 80, 81, 83, 84, 85, 86, 87, 105, 106, 109, 110, 111, 112, 113]
    TOKENS_FOLLOWING_statement_IN_statement_3665 = Set[1]
    TOKENS_FOLLOWING_catch_clause_IN_catches_3688 = Set[1, 88]
    TOKENS_FOLLOWING_catch_clause_IN_catches_3691 = Set[1, 88]
    TOKENS_FOLLOWING_T__88_IN_catch_clause_3716 = Set[66]
    TOKENS_FOLLOWING_T__66_IN_catch_clause_3718 = Set[4, 35, 56, 57, 58, 59, 60, 61, 62, 63, 73]
    TOKENS_FOLLOWING_formal_parameter_IN_catch_clause_3720 = Set[67]
    TOKENS_FOLLOWING_T__67_IN_catch_clause_3722 = Set[28, 44]
    TOKENS_FOLLOWING_block_IN_catch_clause_3724 = Set[1]
    TOKENS_FOLLOWING_variable_modifiers_IN_formal_parameter_3743 = Set[4, 56, 57, 58, 59, 60, 61, 62, 63]
    TOKENS_FOLLOWING_type_IN_formal_parameter_3745 = Set[4]
    TOKENS_FOLLOWING_variable_declarator_id_IN_formal_parameter_3747 = Set[1]
    TOKENS_FOLLOWING_switch_block_statement_group_IN_switch_block_statement_groups_3775 = Set[1, 74, 89]
    TOKENS_FOLLOWING_switch_label_IN_switch_block_statement_group_3802 = Set[1, 4, 5, 6, 7, 8, 9, 10, 11, 12, 25, 26, 28, 31, 32, 33, 34, 35, 36, 37, 44, 46, 47, 53, 56, 57, 58, 59, 60, 61, 62, 63, 65, 66, 69, 70, 71, 72, 73, 74, 76, 78, 79, 80, 81, 83, 84, 85, 86, 87, 89, 105, 106, 109, 110, 111, 112, 113]
    TOKENS_FOLLOWING_block_statement_IN_switch_block_statement_group_3805 = Set[1, 4, 5, 6, 7, 8, 9, 10, 11, 12, 25, 26, 28, 31, 32, 33, 34, 35, 36, 37, 44, 46, 47, 53, 56, 57, 58, 59, 60, 61, 62, 63, 65, 66, 69, 70, 71, 72, 73, 76, 78, 79, 80, 81, 83, 84, 85, 86, 87, 105, 106, 109, 110, 111, 112, 113]
    TOKENS_FOLLOWING_T__89_IN_switch_label_3829 = Set[4, 6, 7, 8, 9, 10, 11, 44, 47, 56, 57, 58, 59, 60, 61, 62, 63, 65, 66, 69, 70, 71, 72, 105, 106, 109, 110, 111, 112, 113]
    TOKENS_FOLLOWING_constant_expression_IN_switch_label_3831 = Set[75]
    TOKENS_FOLLOWING_T__75_IN_switch_label_3833 = Set[1]
    TOKENS_FOLLOWING_T__89_IN_switch_label_3843 = Set[4]
    TOKENS_FOLLOWING_enum_constant_name_IN_switch_label_3845 = Set[75]
    TOKENS_FOLLOWING_T__75_IN_switch_label_3847 = Set[1]
    TOKENS_FOLLOWING_T__74_IN_switch_label_3857 = Set[75]
    TOKENS_FOLLOWING_T__75_IN_switch_label_3859 = Set[1]
    TOKENS_FOLLOWING_enhanced_for_control_IN_for_control_3890 = Set[1]
    TOKENS_FOLLOWING_for_init_IN_for_control_3900 = Set[26]
    TOKENS_FOLLOWING_T__26_IN_for_control_3903 = Set[4, 6, 7, 8, 9, 10, 11, 26, 44, 47, 56, 57, 58, 59, 60, 61, 62, 63, 65, 66, 69, 70, 71, 72, 105, 106, 109, 110, 111, 112, 113]
    TOKENS_FOLLOWING_expression_IN_for_control_3905 = Set[26]
    TOKENS_FOLLOWING_T__26_IN_for_control_3908 = Set[1, 4, 6, 7, 8, 9, 10, 11, 35, 44, 47, 56, 57, 58, 59, 60, 61, 62, 63, 65, 66, 69, 70, 71, 72, 73, 105, 106, 109, 110, 111, 112, 113]
    TOKENS_FOLLOWING_for_update_IN_for_control_3910 = Set[1]
    TOKENS_FOLLOWING_local_variable_declaration_IN_for_init_3930 = Set[1]
    TOKENS_FOLLOWING_expression_list_IN_for_init_3940 = Set[1]
    TOKENS_FOLLOWING_variable_modifiers_IN_enhanced_for_control_3963 = Set[4, 56, 57, 58, 59, 60, 61, 62, 63]
    TOKENS_FOLLOWING_type_IN_enhanced_for_control_3965 = Set[4]
    TOKENS_FOLLOWING_Identifier_IN_enhanced_for_control_3967 = Set[75]
    TOKENS_FOLLOWING_T__75_IN_enhanced_for_control_3969 = Set[4, 6, 7, 8, 9, 10, 11, 44, 47, 56, 57, 58, 59, 60, 61, 62, 63, 65, 66, 69, 70, 71, 72, 105, 106, 109, 110, 111, 112, 113]
    TOKENS_FOLLOWING_expression_IN_enhanced_for_control_3971 = Set[1]
    TOKENS_FOLLOWING_expression_list_IN_for_update_3990 = Set[1]
    TOKENS_FOLLOWING_T__66_IN_par_expression_4011 = Set[4, 6, 7, 8, 9, 10, 11, 44, 47, 56, 57, 58, 59, 60, 61, 62, 63, 65, 66, 69, 70, 71, 72, 105, 106, 109, 110, 111, 112, 113]
    TOKENS_FOLLOWING_expression_IN_par_expression_4013 = Set[67]
    TOKENS_FOLLOWING_T__67_IN_par_expression_4015 = Set[1]
    TOKENS_FOLLOWING_expression_IN_expression_list_4038 = Set[1, 41]
    TOKENS_FOLLOWING_T__41_IN_expression_list_4041 = Set[4, 6, 7, 8, 9, 10, 11, 44, 47, 56, 57, 58, 59, 60, 61, 62, 63, 65, 66, 69, 70, 71, 72, 105, 106, 109, 110, 111, 112, 113]
    TOKENS_FOLLOWING_expression_IN_expression_list_4043 = Set[1, 41]
    TOKENS_FOLLOWING_expression_IN_statement_expression_4064 = Set[1]
    TOKENS_FOLLOWING_expression_IN_constant_expression_4087 = Set[1]
    TOKENS_FOLLOWING_conditional_expression_IN_expression_4110 = Set[1, 40, 42, 51, 90, 91, 92, 93, 94, 95, 96, 97]
    TOKENS_FOLLOWING_assignment_operator_IN_expression_4113 = Set[4, 6, 7, 8, 9, 10, 11, 44, 47, 56, 57, 58, 59, 60, 61, 62, 63, 65, 66, 69, 70, 71, 72, 105, 106, 109, 110, 111, 112, 113]
    TOKENS_FOLLOWING_expression_IN_expression_4115 = Set[1]
    TOKENS_FOLLOWING_T__51_IN_assignment_operator_4140 = Set[1]
    TOKENS_FOLLOWING_T__90_IN_assignment_operator_4150 = Set[1]
    TOKENS_FOLLOWING_T__91_IN_assignment_operator_4160 = Set[1]
    TOKENS_FOLLOWING_T__92_IN_assignment_operator_4170 = Set[1]
    TOKENS_FOLLOWING_T__93_IN_assignment_operator_4180 = Set[1]
    TOKENS_FOLLOWING_T__94_IN_assignment_operator_4190 = Set[1]
    TOKENS_FOLLOWING_T__95_IN_assignment_operator_4200 = Set[1]
    TOKENS_FOLLOWING_T__96_IN_assignment_operator_4210 = Set[1]
    TOKENS_FOLLOWING_T__97_IN_assignment_operator_4220 = Set[1]
    TOKENS_FOLLOWING_T__40_IN_assignment_operator_4241 = Set[40]
    TOKENS_FOLLOWING_T__40_IN_assignment_operator_4245 = Set[51]
    TOKENS_FOLLOWING_T__51_IN_assignment_operator_4249 = Set[1]
    TOKENS_FOLLOWING_T__42_IN_assignment_operator_4283 = Set[42]
    TOKENS_FOLLOWING_T__42_IN_assignment_operator_4287 = Set[42]
    TOKENS_FOLLOWING_T__42_IN_assignment_operator_4291 = Set[51]
    TOKENS_FOLLOWING_T__51_IN_assignment_operator_4295 = Set[1]
    TOKENS_FOLLOWING_T__42_IN_assignment_operator_4326 = Set[42]
    TOKENS_FOLLOWING_T__42_IN_assignment_operator_4330 = Set[51]
    TOKENS_FOLLOWING_T__51_IN_assignment_operator_4334 = Set[1]
    TOKENS_FOLLOWING_conditional_or_expression_IN_conditional_expression_4363 = Set[1, 64]
    TOKENS_FOLLOWING_T__64_IN_conditional_expression_4367 = Set[4, 6, 7, 8, 9, 10, 11, 44, 47, 56, 57, 58, 59, 60, 61, 62, 63, 65, 66, 69, 70, 71, 72, 105, 106, 109, 110, 111, 112, 113]
    TOKENS_FOLLOWING_expression_IN_conditional_expression_4369 = Set[75]
    TOKENS_FOLLOWING_T__75_IN_conditional_expression_4371 = Set[4, 6, 7, 8, 9, 10, 11, 44, 47, 56, 57, 58, 59, 60, 61, 62, 63, 65, 66, 69, 70, 71, 72, 105, 106, 109, 110, 111, 112, 113]
    TOKENS_FOLLOWING_expression_IN_conditional_expression_4373 = Set[1]
    TOKENS_FOLLOWING_conditional_and_expression_IN_conditional_or_expression_4395 = Set[1, 98]
    TOKENS_FOLLOWING_T__98_IN_conditional_or_expression_4399 = Set[4, 6, 7, 8, 9, 10, 11, 44, 47, 56, 57, 58, 59, 60, 61, 62, 63, 65, 66, 69, 70, 71, 72, 105, 106, 109, 110, 111, 112, 113]
    TOKENS_FOLLOWING_conditional_and_expression_IN_conditional_or_expression_4401 = Set[1, 98]
    TOKENS_FOLLOWING_inclusive_or_expression_IN_conditional_and_expression_4423 = Set[1, 99]
    TOKENS_FOLLOWING_T__99_IN_conditional_and_expression_4427 = Set[4, 6, 7, 8, 9, 10, 11, 44, 47, 56, 57, 58, 59, 60, 61, 62, 63, 65, 66, 69, 70, 71, 72, 105, 106, 109, 110, 111, 112, 113]
    TOKENS_FOLLOWING_inclusive_or_expression_IN_conditional_and_expression_4429 = Set[1, 99]
    TOKENS_FOLLOWING_exclusive_or_expression_IN_inclusive_or_expression_4451 = Set[1, 100]
    TOKENS_FOLLOWING_T__100_IN_inclusive_or_expression_4455 = Set[4, 6, 7, 8, 9, 10, 11, 44, 47, 56, 57, 58, 59, 60, 61, 62, 63, 65, 66, 69, 70, 71, 72, 105, 106, 109, 110, 111, 112, 113]
    TOKENS_FOLLOWING_exclusive_or_expression_IN_inclusive_or_expression_4457 = Set[1, 100]
    TOKENS_FOLLOWING_and_expression_IN_exclusive_or_expression_4479 = Set[1, 101]
    TOKENS_FOLLOWING_T__101_IN_exclusive_or_expression_4483 = Set[4, 6, 7, 8, 9, 10, 11, 44, 47, 56, 57, 58, 59, 60, 61, 62, 63, 65, 66, 69, 70, 71, 72, 105, 106, 109, 110, 111, 112, 113]
    TOKENS_FOLLOWING_and_expression_IN_exclusive_or_expression_4485 = Set[1, 101]
    TOKENS_FOLLOWING_equality_expression_IN_and_expression_4507 = Set[1, 43]
    TOKENS_FOLLOWING_T__43_IN_and_expression_4511 = Set[4, 6, 7, 8, 9, 10, 11, 44, 47, 56, 57, 58, 59, 60, 61, 62, 63, 65, 66, 69, 70, 71, 72, 105, 106, 109, 110, 111, 112, 113]
    TOKENS_FOLLOWING_equality_expression_IN_and_expression_4513 = Set[1, 43]
    TOKENS_FOLLOWING_instance_of_expression_IN_equality_expression_4535 = Set[1, 102, 103]
    TOKENS_FOLLOWING_set_IN_equality_expression_4539 = Set[4, 6, 7, 8, 9, 10, 11, 44, 47, 56, 57, 58, 59, 60, 61, 62, 63, 65, 66, 69, 70, 71, 72, 105, 106, 109, 110, 111, 112, 113]
    TOKENS_FOLLOWING_instance_of_expression_IN_equality_expression_4547 = Set[1, 102, 103]
    TOKENS_FOLLOWING_relational_expression_IN_instance_of_expression_4569 = Set[1, 104]
    TOKENS_FOLLOWING_T__104_IN_instance_of_expression_4572 = Set[4, 56, 57, 58, 59, 60, 61, 62, 63]
    TOKENS_FOLLOWING_type_IN_instance_of_expression_4574 = Set[1]
    TOKENS_FOLLOWING_shift_expression_IN_relational_expression_4595 = Set[1, 40, 42]
    TOKENS_FOLLOWING_relational_op_IN_relational_expression_4599 = Set[4, 6, 7, 8, 9, 10, 11, 44, 47, 56, 57, 58, 59, 60, 61, 62, 63, 65, 66, 69, 70, 71, 72, 105, 106, 109, 110, 111, 112, 113]
    TOKENS_FOLLOWING_shift_expression_IN_relational_expression_4601 = Set[1, 40, 42]
    TOKENS_FOLLOWING_T__40_IN_relational_op_4636 = Set[51]
    TOKENS_FOLLOWING_T__51_IN_relational_op_4640 = Set[1]
    TOKENS_FOLLOWING_T__42_IN_relational_op_4670 = Set[51]
    TOKENS_FOLLOWING_T__51_IN_relational_op_4674 = Set[1]
    TOKENS_FOLLOWING_T__40_IN_relational_op_4695 = Set[1]
    TOKENS_FOLLOWING_T__42_IN_relational_op_4706 = Set[1]
    TOKENS_FOLLOWING_additive_expression_IN_shift_expression_4726 = Set[1, 40, 42]
    TOKENS_FOLLOWING_shift_op_IN_shift_expression_4730 = Set[4, 6, 7, 8, 9, 10, 11, 44, 47, 56, 57, 58, 59, 60, 61, 62, 63, 65, 66, 69, 70, 71, 72, 105, 106, 109, 110, 111, 112, 113]
    TOKENS_FOLLOWING_additive_expression_IN_shift_expression_4732 = Set[1, 40, 42]
    TOKENS_FOLLOWING_T__40_IN_shift_op_4763 = Set[40]
    TOKENS_FOLLOWING_T__40_IN_shift_op_4767 = Set[1]
    TOKENS_FOLLOWING_T__42_IN_shift_op_4799 = Set[42]
    TOKENS_FOLLOWING_T__42_IN_shift_op_4803 = Set[42]
    TOKENS_FOLLOWING_T__42_IN_shift_op_4807 = Set[1]
    TOKENS_FOLLOWING_T__42_IN_shift_op_4837 = Set[42]
    TOKENS_FOLLOWING_T__42_IN_shift_op_4841 = Set[1]
    TOKENS_FOLLOWING_multiplicative_expression_IN_additive_expression_4871 = Set[1, 105, 106]
    TOKENS_FOLLOWING_set_IN_additive_expression_4875 = Set[4, 6, 7, 8, 9, 10, 11, 44, 47, 56, 57, 58, 59, 60, 61, 62, 63, 65, 66, 69, 70, 71, 72, 105, 106, 109, 110, 111, 112, 113]
    TOKENS_FOLLOWING_multiplicative_expression_IN_additive_expression_4883 = Set[1, 105, 106]
    TOKENS_FOLLOWING_unary_expression_IN_multiplicative_expression_4905 = Set[1, 30, 107, 108]
    TOKENS_FOLLOWING_set_IN_multiplicative_expression_4909 = Set[4, 6, 7, 8, 9, 10, 11, 44, 47, 56, 57, 58, 59, 60, 61, 62, 63, 65, 66, 69, 70, 71, 72, 105, 106, 109, 110, 111, 112, 113]
    TOKENS_FOLLOWING_unary_expression_IN_multiplicative_expression_4923 = Set[1, 30, 107, 108]
    TOKENS_FOLLOWING_T__105_IN_unary_expression_4949 = Set[4, 6, 7, 8, 9, 10, 11, 44, 47, 56, 57, 58, 59, 60, 61, 62, 63, 65, 66, 69, 70, 71, 72, 105, 106, 109, 110, 111, 112, 113]
    TOKENS_FOLLOWING_unary_expression_IN_unary_expression_4951 = Set[1]
    TOKENS_FOLLOWING_T__106_IN_unary_expression_4961 = Set[4, 6, 7, 8, 9, 10, 11, 44, 47, 56, 57, 58, 59, 60, 61, 62, 63, 65, 66, 69, 70, 71, 72, 105, 106, 109, 110, 111, 112, 113]
    TOKENS_FOLLOWING_unary_expression_IN_unary_expression_4963 = Set[1]
    TOKENS_FOLLOWING_T__109_IN_unary_expression_4973 = Set[4, 6, 7, 8, 9, 10, 11, 44, 47, 56, 57, 58, 59, 60, 61, 62, 63, 65, 66, 69, 70, 71, 72, 105, 106, 109, 110, 111, 112, 113]
    TOKENS_FOLLOWING_unary_expression_IN_unary_expression_4975 = Set[1]
    TOKENS_FOLLOWING_T__110_IN_unary_expression_4985 = Set[4, 6, 7, 8, 9, 10, 11, 44, 47, 56, 57, 58, 59, 60, 61, 62, 63, 65, 66, 69, 70, 71, 72, 105, 106, 109, 110, 111, 112, 113]
    TOKENS_FOLLOWING_unary_expression_IN_unary_expression_4987 = Set[1]
    TOKENS_FOLLOWING_unary_expression_not_plus_minus_IN_unary_expression_4997 = Set[1]
    TOKENS_FOLLOWING_T__111_IN_unary_expression_not_plus_minus_5016 = Set[4, 6, 7, 8, 9, 10, 11, 44, 47, 56, 57, 58, 59, 60, 61, 62, 63, 65, 66, 69, 70, 71, 72, 105, 106, 109, 110, 111, 112, 113]
    TOKENS_FOLLOWING_unary_expression_IN_unary_expression_not_plus_minus_5018 = Set[1]
    TOKENS_FOLLOWING_T__112_IN_unary_expression_not_plus_minus_5028 = Set[4, 6, 7, 8, 9, 10, 11, 44, 47, 56, 57, 58, 59, 60, 61, 62, 63, 65, 66, 69, 70, 71, 72, 105, 106, 109, 110, 111, 112, 113]
    TOKENS_FOLLOWING_unary_expression_IN_unary_expression_not_plus_minus_5030 = Set[1]
    TOKENS_FOLLOWING_cast_expression_IN_unary_expression_not_plus_minus_5040 = Set[1]
    TOKENS_FOLLOWING_primary_IN_unary_expression_not_plus_minus_5050 = Set[1, 29, 48, 109, 110]
    TOKENS_FOLLOWING_selector_IN_unary_expression_not_plus_minus_5052 = Set[1, 29, 48, 109, 110]
    TOKENS_FOLLOWING_set_IN_unary_expression_not_plus_minus_5055 = Set[1]
    TOKENS_FOLLOWING_T__66_IN_cast_expression_5078 = Set[4, 56, 57, 58, 59, 60, 61, 62, 63]
    TOKENS_FOLLOWING_primitive_type_IN_cast_expression_5080 = Set[67]
    TOKENS_FOLLOWING_T__67_IN_cast_expression_5082 = Set[4, 6, 7, 8, 9, 10, 11, 44, 47, 56, 57, 58, 59, 60, 61, 62, 63, 65, 66, 69, 70, 71, 72, 105, 106, 109, 110, 111, 112, 113]
    TOKENS_FOLLOWING_unary_expression_IN_cast_expression_5084 = Set[1]
    TOKENS_FOLLOWING_T__66_IN_cast_expression_5093 = Set[4, 6, 7, 8, 9, 10, 11, 44, 47, 56, 57, 58, 59, 60, 61, 62, 63, 65, 66, 69, 70, 71, 72, 105, 106, 109, 110, 111, 112, 113]
    TOKENS_FOLLOWING_type_IN_cast_expression_5096 = Set[67]
    TOKENS_FOLLOWING_expression_IN_cast_expression_5100 = Set[67]
    TOKENS_FOLLOWING_T__67_IN_cast_expression_5103 = Set[4, 6, 7, 8, 9, 10, 11, 44, 47, 56, 57, 58, 59, 60, 61, 62, 63, 65, 66, 69, 70, 71, 72, 105, 106, 109, 110, 111, 112, 113]
    TOKENS_FOLLOWING_unary_expression_not_plus_minus_IN_cast_expression_5105 = Set[1]
    TOKENS_FOLLOWING_par_expression_IN_primary_5124 = Set[1]
    TOKENS_FOLLOWING_T__69_IN_primary_5134 = Set[1, 29, 48, 66]
    TOKENS_FOLLOWING_T__29_IN_primary_5137 = Set[4]
    TOKENS_FOLLOWING_Identifier_IN_primary_5139 = Set[1, 29, 48, 66]
    TOKENS_FOLLOWING_identifier_suffix_IN_primary_5143 = Set[1]
    TOKENS_FOLLOWING_T__65_IN_primary_5154 = Set[29, 66]
    TOKENS_FOLLOWING_super_suffix_IN_primary_5156 = Set[1]
    TOKENS_FOLLOWING_literal_IN_primary_5166 = Set[1]
    TOKENS_FOLLOWING_T__113_IN_primary_5176 = Set[4, 40, 56, 57, 58, 59, 60, 61, 62, 63]
    TOKENS_FOLLOWING_creator_IN_primary_5178 = Set[1]
    TOKENS_FOLLOWING_Identifier_IN_primary_5188 = Set[1, 29, 48, 66]
    TOKENS_FOLLOWING_T__29_IN_primary_5191 = Set[4]
    TOKENS_FOLLOWING_Identifier_IN_primary_5193 = Set[1, 29, 48, 66]
    TOKENS_FOLLOWING_identifier_suffix_IN_primary_5197 = Set[1]
    TOKENS_FOLLOWING_primitive_type_IN_primary_5208 = Set[29, 48]
    TOKENS_FOLLOWING_T__48_IN_primary_5211 = Set[49]
    TOKENS_FOLLOWING_T__49_IN_primary_5213 = Set[29, 48]
    TOKENS_FOLLOWING_T__29_IN_primary_5217 = Set[37]
    TOKENS_FOLLOWING_T__37_IN_primary_5219 = Set[1]
    TOKENS_FOLLOWING_T__47_IN_primary_5229 = Set[29]
    TOKENS_FOLLOWING_T__29_IN_primary_5231 = Set[37]
    TOKENS_FOLLOWING_T__37_IN_primary_5233 = Set[1]
    TOKENS_FOLLOWING_T__48_IN_identifier_suffix_5253 = Set[49]
    TOKENS_FOLLOWING_T__49_IN_identifier_suffix_5255 = Set[29, 48]
    TOKENS_FOLLOWING_T__29_IN_identifier_suffix_5259 = Set[37]
    TOKENS_FOLLOWING_T__37_IN_identifier_suffix_5261 = Set[1]
    TOKENS_FOLLOWING_T__48_IN_identifier_suffix_5272 = Set[4, 6, 7, 8, 9, 10, 11, 44, 47, 56, 57, 58, 59, 60, 61, 62, 63, 65, 66, 69, 70, 71, 72, 105, 106, 109, 110, 111, 112, 113]
    TOKENS_FOLLOWING_expression_IN_identifier_suffix_5274 = Set[49]
    TOKENS_FOLLOWING_T__49_IN_identifier_suffix_5276 = Set[1, 48]
    TOKENS_FOLLOWING_arguments_IN_identifier_suffix_5289 = Set[1]
    TOKENS_FOLLOWING_T__29_IN_identifier_suffix_5299 = Set[37]
    TOKENS_FOLLOWING_T__37_IN_identifier_suffix_5301 = Set[1]
    TOKENS_FOLLOWING_T__29_IN_identifier_suffix_5311 = Set[40]
    TOKENS_FOLLOWING_explicit_generic_invocation_IN_identifier_suffix_5313 = Set[1]
    TOKENS_FOLLOWING_T__29_IN_identifier_suffix_5323 = Set[69]
    TOKENS_FOLLOWING_T__69_IN_identifier_suffix_5325 = Set[1]
    TOKENS_FOLLOWING_T__29_IN_identifier_suffix_5335 = Set[65]
    TOKENS_FOLLOWING_T__65_IN_identifier_suffix_5337 = Set[66]
    TOKENS_FOLLOWING_arguments_IN_identifier_suffix_5339 = Set[1]
    TOKENS_FOLLOWING_T__29_IN_identifier_suffix_5349 = Set[113]
    TOKENS_FOLLOWING_T__113_IN_identifier_suffix_5351 = Set[4, 40]
    TOKENS_FOLLOWING_inner_creator_IN_identifier_suffix_5353 = Set[1]
    TOKENS_FOLLOWING_non_wildcard_type_arguments_IN_creator_5372 = Set[4, 40, 56, 57, 58, 59, 60, 61, 62, 63]
    TOKENS_FOLLOWING_created_name_IN_creator_5374 = Set[66]
    TOKENS_FOLLOWING_class_creator_rest_IN_creator_5376 = Set[1]
    TOKENS_FOLLOWING_created_name_IN_creator_5386 = Set[48, 66]
    TOKENS_FOLLOWING_array_creator_rest_IN_creator_5389 = Set[1]
    TOKENS_FOLLOWING_class_creator_rest_IN_creator_5393 = Set[1]
    TOKENS_FOLLOWING_class_or_interface_type_IN_created_name_5413 = Set[1]
    TOKENS_FOLLOWING_primitive_type_IN_created_name_5423 = Set[1]
    TOKENS_FOLLOWING_non_wildcard_type_arguments_IN_inner_creator_5446 = Set[4]
    TOKENS_FOLLOWING_Identifier_IN_inner_creator_5449 = Set[66]
    TOKENS_FOLLOWING_class_creator_rest_IN_inner_creator_5451 = Set[1]
    TOKENS_FOLLOWING_T__48_IN_array_creator_rest_5470 = Set[4, 6, 7, 8, 9, 10, 11, 44, 47, 49, 56, 57, 58, 59, 60, 61, 62, 63, 65, 66, 69, 70, 71, 72, 105, 106, 109, 110, 111, 112, 113]
    TOKENS_FOLLOWING_T__49_IN_array_creator_rest_5484 = Set[44, 48]
    TOKENS_FOLLOWING_T__48_IN_array_creator_rest_5487 = Set[49]
    TOKENS_FOLLOWING_T__49_IN_array_creator_rest_5489 = Set[44, 48]
    TOKENS_FOLLOWING_array_initializer_IN_array_creator_rest_5493 = Set[1]
    TOKENS_FOLLOWING_expression_IN_array_creator_rest_5507 = Set[49]
    TOKENS_FOLLOWING_T__49_IN_array_creator_rest_5509 = Set[1, 48]
    TOKENS_FOLLOWING_T__48_IN_array_creator_rest_5512 = Set[4, 6, 7, 8, 9, 10, 11, 44, 47, 56, 57, 58, 59, 60, 61, 62, 63, 65, 66, 69, 70, 71, 72, 105, 106, 109, 110, 111, 112, 113]
    TOKENS_FOLLOWING_expression_IN_array_creator_rest_5514 = Set[49]
    TOKENS_FOLLOWING_T__49_IN_array_creator_rest_5516 = Set[1, 48]
    TOKENS_FOLLOWING_T__48_IN_array_creator_rest_5521 = Set[49]
    TOKENS_FOLLOWING_T__49_IN_array_creator_rest_5523 = Set[1, 48]
    TOKENS_FOLLOWING_arguments_IN_class_creator_rest_5554 = Set[1, 38, 39, 40, 44]
    TOKENS_FOLLOWING_class_body_IN_class_creator_rest_5556 = Set[1]
    TOKENS_FOLLOWING_non_wildcard_type_arguments_IN_explicit_generic_invocation_5580 = Set[4]
    TOKENS_FOLLOWING_Identifier_IN_explicit_generic_invocation_5582 = Set[66]
    TOKENS_FOLLOWING_arguments_IN_explicit_generic_invocation_5584 = Set[1]
    TOKENS_FOLLOWING_T__40_IN_non_wildcard_type_arguments_5607 = Set[4, 56, 57, 58, 59, 60, 61, 62, 63]
    TOKENS_FOLLOWING_type_list_IN_non_wildcard_type_arguments_5609 = Set[42]
    TOKENS_FOLLOWING_T__42_IN_non_wildcard_type_arguments_5611 = Set[1]
    TOKENS_FOLLOWING_T__29_IN_selector_5634 = Set[4]
    TOKENS_FOLLOWING_Identifier_IN_selector_5636 = Set[1, 66]
    TOKENS_FOLLOWING_arguments_IN_selector_5638 = Set[1]
    TOKENS_FOLLOWING_T__29_IN_selector_5649 = Set[69]
    TOKENS_FOLLOWING_T__69_IN_selector_5651 = Set[1]
    TOKENS_FOLLOWING_T__29_IN_selector_5661 = Set[65]
    TOKENS_FOLLOWING_T__65_IN_selector_5663 = Set[29, 66]
    TOKENS_FOLLOWING_super_suffix_IN_selector_5665 = Set[1]
    TOKENS_FOLLOWING_T__29_IN_selector_5675 = Set[113]
    TOKENS_FOLLOWING_T__113_IN_selector_5677 = Set[4, 40]
    TOKENS_FOLLOWING_inner_creator_IN_selector_5679 = Set[1]
    TOKENS_FOLLOWING_T__48_IN_selector_5689 = Set[4, 6, 7, 8, 9, 10, 11, 44, 47, 56, 57, 58, 59, 60, 61, 62, 63, 65, 66, 69, 70, 71, 72, 105, 106, 109, 110, 111, 112, 113]
    TOKENS_FOLLOWING_expression_IN_selector_5691 = Set[49]
    TOKENS_FOLLOWING_T__49_IN_selector_5693 = Set[1]
    TOKENS_FOLLOWING_arguments_IN_super_suffix_5716 = Set[1]
    TOKENS_FOLLOWING_T__29_IN_super_suffix_5726 = Set[4]
    TOKENS_FOLLOWING_Identifier_IN_super_suffix_5728 = Set[1, 66]
    TOKENS_FOLLOWING_arguments_IN_super_suffix_5730 = Set[1]
    TOKENS_FOLLOWING_T__66_IN_arguments_5750 = Set[4, 6, 7, 8, 9, 10, 11, 35, 44, 47, 56, 57, 58, 59, 60, 61, 62, 63, 65, 66, 67, 69, 70, 71, 72, 73, 105, 106, 109, 110, 111, 112, 113]
    TOKENS_FOLLOWING_expression_list_IN_arguments_5752 = Set[67]
    TOKENS_FOLLOWING_T__67_IN_arguments_5755 = Set[1]
    TOKENS_FOLLOWING_annotations_IN_synpred5_Java_75 = Set[5, 25, 28, 31, 32, 33, 34, 35, 36, 37, 46, 73]
    TOKENS_FOLLOWING_package_declaration_IN_synpred5_Java_89 = Set[1, 5, 25, 26, 27, 28, 31, 32, 33, 34, 35, 36, 37, 46, 73]
    TOKENS_FOLLOWING_import_declaration_IN_synpred5_Java_91 = Set[1, 5, 25, 26, 27, 28, 31, 32, 33, 34, 35, 36, 37, 46, 73]
    TOKENS_FOLLOWING_type_declaration_IN_synpred5_Java_94 = Set[1, 5, 25, 26, 28, 31, 32, 33, 34, 35, 36, 37, 46, 73]
    TOKENS_FOLLOWING_class_or_interface_declaration_IN_synpred5_Java_109 = Set[1, 5, 25, 26, 28, 31, 32, 33, 34, 35, 36, 37, 46, 73]
    TOKENS_FOLLOWING_type_declaration_IN_synpred5_Java_111 = Set[1, 5, 25, 26, 28, 31, 32, 33, 34, 35, 36, 37, 46, 73]
    TOKENS_FOLLOWING_explicit_constructor_invocation_IN_synpred113_Java_2486 = Set[1]
    TOKENS_FOLLOWING_non_wildcard_type_arguments_IN_synpred117_Java_2511 = Set[65, 69]
    TOKENS_FOLLOWING_set_IN_synpred117_Java_2514 = Set[66]
    TOKENS_FOLLOWING_arguments_IN_synpred117_Java_2522 = Set[26]
    TOKENS_FOLLOWING_T__26_IN_synpred117_Java_2524 = Set[1]
    TOKENS_FOLLOWING_annotation_IN_synpred128_Java_2735 = Set[1]
    TOKENS_FOLLOWING_local_variable_declaration_statement_IN_synpred151_Java_3262 = Set[1]
    TOKENS_FOLLOWING_class_or_interface_declaration_IN_synpred152_Java_3272 = Set[1]
    TOKENS_FOLLOWING_T__77_IN_synpred157_Java_3417 = Set[4, 5, 6, 7, 8, 9, 10, 11, 12, 25, 26, 28, 31, 32, 33, 34, 35, 36, 37, 44, 46, 47, 53, 56, 57, 58, 59, 60, 61, 62, 63, 65, 66, 69, 70, 71, 72, 73, 76, 78, 79, 80, 81, 83, 84, 85, 86, 87, 105, 106, 109, 110, 111, 112, 113]
    TOKENS_FOLLOWING_statement_IN_synpred157_Java_3419 = Set[1]
    TOKENS_FOLLOWING_catches_IN_synpred162_Java_3495 = Set[82]
    TOKENS_FOLLOWING_T__82_IN_synpred162_Java_3497 = Set[28, 44]
    TOKENS_FOLLOWING_block_IN_synpred162_Java_3499 = Set[1]
    TOKENS_FOLLOWING_catches_IN_synpred163_Java_3511 = Set[1]
    TOKENS_FOLLOWING_switch_label_IN_synpred178_Java_3802 = Set[1]
    TOKENS_FOLLOWING_T__89_IN_synpred180_Java_3829 = Set[4, 6, 7, 8, 9, 10, 11, 44, 47, 56, 57, 58, 59, 60, 61, 62, 63, 65, 66, 69, 70, 71, 72, 105, 106, 109, 110, 111, 112, 113]
    TOKENS_FOLLOWING_constant_expression_IN_synpred180_Java_3831 = Set[75]
    TOKENS_FOLLOWING_T__75_IN_synpred180_Java_3833 = Set[1]
    TOKENS_FOLLOWING_T__89_IN_synpred181_Java_3843 = Set[4]
    TOKENS_FOLLOWING_enum_constant_name_IN_synpred181_Java_3845 = Set[75]
    TOKENS_FOLLOWING_T__75_IN_synpred181_Java_3847 = Set[1]
    TOKENS_FOLLOWING_enhanced_for_control_IN_synpred182_Java_3890 = Set[1]
    TOKENS_FOLLOWING_local_variable_declaration_IN_synpred186_Java_3930 = Set[1]
    TOKENS_FOLLOWING_assignment_operator_IN_synpred188_Java_4113 = Set[4, 6, 7, 8, 9, 10, 11, 44, 47, 56, 57, 58, 59, 60, 61, 62, 63, 65, 66, 69, 70, 71, 72, 105, 106, 109, 110, 111, 112, 113]
    TOKENS_FOLLOWING_expression_IN_synpred188_Java_4115 = Set[1]
    TOKENS_FOLLOWING_T__40_IN_synpred198_Java_4231 = Set[40]
    TOKENS_FOLLOWING_T__40_IN_synpred198_Java_4233 = Set[51]
    TOKENS_FOLLOWING_T__51_IN_synpred198_Java_4235 = Set[1]
    TOKENS_FOLLOWING_T__42_IN_synpred199_Java_4271 = Set[42]
    TOKENS_FOLLOWING_T__42_IN_synpred199_Java_4273 = Set[42]
    TOKENS_FOLLOWING_T__42_IN_synpred199_Java_4275 = Set[51]
    TOKENS_FOLLOWING_T__51_IN_synpred199_Java_4277 = Set[1]
    TOKENS_FOLLOWING_T__42_IN_synpred200_Java_4316 = Set[42]
    TOKENS_FOLLOWING_T__42_IN_synpred200_Java_4318 = Set[51]
    TOKENS_FOLLOWING_T__51_IN_synpred200_Java_4320 = Set[1]
    TOKENS_FOLLOWING_T__40_IN_synpred211_Java_4628 = Set[51]
    TOKENS_FOLLOWING_T__51_IN_synpred211_Java_4630 = Set[1]
    TOKENS_FOLLOWING_T__42_IN_synpred212_Java_4662 = Set[51]
    TOKENS_FOLLOWING_T__51_IN_synpred212_Java_4664 = Set[1]
    TOKENS_FOLLOWING_T__40_IN_synpred215_Java_4755 = Set[40]
    TOKENS_FOLLOWING_T__40_IN_synpred215_Java_4757 = Set[1]
    TOKENS_FOLLOWING_T__42_IN_synpred216_Java_4789 = Set[42]
    TOKENS_FOLLOWING_T__42_IN_synpred216_Java_4791 = Set[42]
    TOKENS_FOLLOWING_T__42_IN_synpred216_Java_4793 = Set[1]
    TOKENS_FOLLOWING_T__42_IN_synpred217_Java_4829 = Set[42]
    TOKENS_FOLLOWING_T__42_IN_synpred217_Java_4831 = Set[1]
    TOKENS_FOLLOWING_cast_expression_IN_synpred229_Java_5040 = Set[1]
    TOKENS_FOLLOWING_T__66_IN_synpred233_Java_5078 = Set[4, 56, 57, 58, 59, 60, 61, 62, 63]
    TOKENS_FOLLOWING_primitive_type_IN_synpred233_Java_5080 = Set[67]
    TOKENS_FOLLOWING_T__67_IN_synpred233_Java_5082 = Set[4, 6, 7, 8, 9, 10, 11, 44, 47, 56, 57, 58, 59, 60, 61, 62, 63, 65, 66, 69, 70, 71, 72, 105, 106, 109, 110, 111, 112, 113]
    TOKENS_FOLLOWING_unary_expression_IN_synpred233_Java_5084 = Set[1]
    TOKENS_FOLLOWING_type_IN_synpred234_Java_5096 = Set[1]
    TOKENS_FOLLOWING_T__29_IN_synpred236_Java_5137 = Set[4]
    TOKENS_FOLLOWING_Identifier_IN_synpred236_Java_5139 = Set[1]
    TOKENS_FOLLOWING_identifier_suffix_IN_synpred237_Java_5143 = Set[1]
    TOKENS_FOLLOWING_T__29_IN_synpred242_Java_5191 = Set[4]
    TOKENS_FOLLOWING_Identifier_IN_synpred242_Java_5193 = Set[1]
    TOKENS_FOLLOWING_identifier_suffix_IN_synpred243_Java_5197 = Set[1]
    TOKENS_FOLLOWING_T__48_IN_synpred249_Java_5272 = Set[4, 6, 7, 8, 9, 10, 11, 44, 47, 56, 57, 58, 59, 60, 61, 62, 63, 65, 66, 69, 70, 71, 72, 105, 106, 109, 110, 111, 112, 113]
    TOKENS_FOLLOWING_expression_IN_synpred249_Java_5274 = Set[49]
    TOKENS_FOLLOWING_T__49_IN_synpred249_Java_5276 = Set[1]
    TOKENS_FOLLOWING_T__48_IN_synpred262_Java_5512 = Set[4, 6, 7, 8, 9, 10, 11, 44, 47, 56, 57, 58, 59, 60, 61, 62, 63, 65, 66, 69, 70, 71, 72, 105, 106, 109, 110, 111, 112, 113]
    TOKENS_FOLLOWING_expression_IN_synpred262_Java_5514 = Set[49]
    TOKENS_FOLLOWING_T__49_IN_synpred262_Java_5516 = Set[1]

  end # class Parser < ANTLR3::Parser

  at_exit { Parser.main(ARGV) } if __FILE__ == $0
end
# - - - - - - begin action @all::footer - - - - - -
# samples/Java.g

 end 
# - - - - - - end action @all::footer - - - - - - -


