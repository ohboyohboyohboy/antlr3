#!/usr/bin/env ruby
#
# samples/CPP.g
# 
# Generated using ANTLR version: 3.2.1-SNAPSHOT Dec 18, 2009 04:29:28
# Ruby runtime library version: 1.3.0
# Input grammar file: samples/CPP.g
# Generated at: 2010-01-07 10:20:07
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
                  :COPERATOR => 106, :MINUSEQUAL => 61, :RPAREN => 51, :STRING_LITERAL => 55, 
                  :MAC_FUNCTION => 43, :FLOATING_POINT_LITERAL => 100, :DOTMBR => 113, 
                  :INCLUDE => 38, :ENDIF => 9, :ARGS => 28, :COMMENT => 122, 
                  :REFERANCE => 18, :DIVIDE => 85, :TEXT_END => 31, :GREATERTHAN => 77, 
                  :MAC_FUNCTION_OBJECT => 44, :LINE_COMMENT => 123, :IntegerTypeSuffix => 117, 
                  :DEFINED => 90, :POINTERTOMBR => 112, :ELSE => 8, :ELLIPSIS => 53, 
                  :CHARACTER_LITERAL => 99, :UNARY_MINUS => 16, :EXPR_DEF => 14, 
                  :LCURLY => 110, :SEMICOLON => 103, :BITWISEXOREQUAL => 65, 
                  :ERROR => 11, :METHOD_CALL => 27, :ELIF => 7, :WS => 50, 
                  :CKEYWORD => 105, :SHARPSHARP => 104, :SHIFTLEFTEQUAL => 62, 
                  :OR => 69, :SIZEOF => 89, :INDEX_OP => 21, :EXPR_GROUP => 26, 
                  :DIVIDEEQUAL => 58, :LESSTHANOREQUALTO => 78, :INCLUDE_FILE => 107, 
                  :WARNING => 10, :EscapeSequence => 115, :DECIMAL_LITERAL => 54, 
                  :EXP_ARGS => 33, :STRING_OP => 102, :End => 47, :ESCAPED_NEWLINE => 124, 
                  :MAC_OBJECT => 42, :PLUSPLUS => 87, :PRAGMA => 12, :INCLUDE_EXPAND => 39, 
                  :SHIFTLEFT => 80, :Exponent => 118, :STRINGIFICATION => 101, 
                  :AND => 70, :DEFINE => 40, :EXPAND => 32, :POINTER_AT => 24, 
                  :POST_DEC => 23, :DIRECTIVE => 46, :HexDigit => 116, :LPAREN => 49, 
                  :IF => 6, :PLUSEQUAL => 60, :GREATERTHANOREQUALTO => 79, 
                  :EXPR => 13, :MODEQUAL => 59, :SCOPE => 114, :COMMA => 52, 
                  :IDENTIFIER => 48, :EQUAL => 75, :SHIFTRIGHT => 81, :QUESTIONMARK => 67, 
                  :TILDE => 92, :PLUS => 82, :SHIFTRIGHTEQUAL => 63, :EXP_ARG => 34, 
                  :HEX_LITERAL => 97, :UNDEF => 41, :DOT => 95, :MACRO_DEFINE => 45, 
                  :LESSTHAN => 76, :EXEC_MACRO => 35, :IFNDEF => 5, :TIMESEQUAL => 57, 
                  :TEXT_GROUP => 30, :AMPERSAND => 73, :OCTAL_LITERAL => 98, 
                  :BITWISEANDEQUAL => 64, :IFDEF => 4, :MINUS => 83, :RSQUARE => 94, 
                  :BITWISEOR => 71, :TEXT_LINE => 29, :LINE => 37, :CONCATENATE => 36, 
                  :COLON => 68, :MACRO_TEXT => 108, :UnicodeEscape => 121, 
                  :RCURLY => 111, :EXPR_NDEF => 15, :POST_INC => 22, :POINTERTO => 96, 
                  :SIZEOF_TYPE => 20, :OctalEscape => 120, :BITWISEOREQUAL => 66)
    
  end


  class Lexer < ANTLR3::Lexer
    @grammar_home = CPP
    include TokenData

    begin
      generated_using( "samples/CPP.g", "3.2.1-SNAPSHOT Dec 18, 2009 04:29:28", "1.3.0" )
    rescue NoMethodError => error
      error.name.to_sym == :generated_using or raise
    end
    
    RULE_NAMES   = ["STRING_OP", "DIRECTIVE", "MACRO_TEXT", "SIZEOF", "DEFINED", 
                    "IDENTIFIER", "LETTER", "STRINGIFICATION", "SHARPSHARP", 
                    "ASSIGNEQUAL", "COLON", "COMMA", "QUESTIONMARK", "SEMICOLON", 
                    "POINTERTO", "LPAREN", "RPAREN", "LSQUARE", "RSQUARE", 
                    "LCURLY", "RCURLY", "EQUAL", "NOTEQUAL", "LESSTHANOREQUALTO", 
                    "LESSTHAN", "GREATERTHANOREQUALTO", "GREATERTHAN", "DIVIDE", 
                    "DIVIDEEQUAL", "PLUS", "PLUSEQUAL", "PLUSPLUS", "MINUS", 
                    "MINUSEQUAL", "MINUSMINUS", "STAR", "TIMESEQUAL", "MOD", 
                    "MODEQUAL", "SHIFTRIGHT", "SHIFTRIGHTEQUAL", "SHIFTLEFT", 
                    "SHIFTLEFTEQUAL", "AND", "NOT", "OR", "AMPERSAND", "BITWISEANDEQUAL", 
                    "TILDE", "BITWISEOR", "BITWISEOREQUAL", "BITWISEXOR", 
                    "BITWISEXOREQUAL", "DOT", "POINTERTOMBR", "DOTMBR", 
                    "SCOPE", "ELLIPSIS", "INCLUDE_FILE", "CHARACTER_LITERAL", 
                    "STRING_LITERAL", "HEX_LITERAL", "DECIMAL_LITERAL", 
                    "OCTAL_LITERAL", "HexDigit", "IntegerTypeSuffix", "FLOATING_POINT_LITERAL", 
                    "Exponent", "FloatTypeSuffix", "EscapeSequence", "OctalEscape", 
                    "UnicodeEscape", "COMMENT", "LINE_COMMENT", "WS", "End", 
                    "ESCAPED_NEWLINE", "COPERATOR", "CKEYWORD", "Tokens", 
                    "synpred1_CPP", "synpred2_CPP"].freeze
    RULE_METHODS = [:string_op!, :directive!, :macro_text!, :sizeof!, :defined!, 
                    :identifier!, :letter!, :stringification!, :sharpsharp!, 
                    :assignequal!, :colon!, :comma!, :questionmark!, :semicolon!, 
                    :pointerto!, :lparen!, :rparen!, :lsquare!, :rsquare!, 
                    :lcurly!, :rcurly!, :equal!, :notequal!, :lessthanorequalto!, 
                    :lessthan!, :greaterthanorequalto!, :greaterthan!, :divide!, 
                    :divideequal!, :plus!, :plusequal!, :plusplus!, :minus!, 
                    :minusequal!, :minusminus!, :star!, :timesequal!, :mod!, 
                    :modequal!, :shiftright!, :shiftrightequal!, :shiftleft!, 
                    :shiftleftequal!, :and!, :not!, :or!, :ampersand!, :bitwiseandequal!, 
                    :tilde!, :bitwiseor!, :bitwiseorequal!, :bitwisexor!, 
                    :bitwisexorequal!, :dot!, :pointertombr!, :dotmbr!, 
                    :scope!, :ellipsis!, :include_file!, :character_literal!, 
                    :string_literal!, :hex_literal!, :decimal_literal!, 
                    :octal_literal!, :hex_digit!, :integer_type_suffix!, 
                    :floating_point_literal!, :exponent!, :float_type_suffix!, 
                    :escape_sequence!, :octal_escape!, :unicode_escape!, 
                    :comment!, :line_comment!, :ws!, :end!, :escaped_newline!, 
                    :coperator!, :ckeyword!, :token!, :synpred_1_cpp!, :synpred_2_cpp!].freeze

    
    def initialize(input=nil, options = {})
      super(input, options)

      
      # - - - - - - - - - - @init - - - - - - - - - - - - - - -

              @in_directive = @in_define_mode = false
              @discard_space = true
              @ltoken = End
              @cpp = ?X

    end
    
    # - - - - - - - - - - custom @members - - - - - - - - - - -

            def in_directive?
              @in_directive
            end
            
            def in_define_mode?
              @in_define_mode
            end
            
            def discard_space?
              @discard_space
            end
            
            attr_reader   :include_search_paths
            attr_accessor :cpp
            attr_accessor :ltoken
    
    # - - - - - - - - - - - lexer rules - - - - - - - - - - - -
    # lexer rule string_op! (STRING_OP)
    # (in samples/CPP.g)
    def string_op!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 1)

      type = STRING_OP
      channel = ANTLR3::DEFAULT_CHANNEL
      # - - - - label initialization - - - -
      id = nil


      
      # - - - - main rule block - - - -
      # at line 340:12: {...}? '#' ( WS )? id= IDENTIFIER
      unless (( @in_define_mode ))
        raise FailedPredicate("STRING_OP", " @in_define_mode ")
      end
      match(?#)
      # at line 340:37: ( WS )?
      alt_1 = 2
      look_1_0 = @input.peek(1)

      if (look_1_0 == ?\t || look_1_0.between?(?\f, ?\r) || look_1_0 == ?\s) 
        alt_1 = 1
      end
      case alt_1
      when 1
        # at line 340:37: WS
        ws!

      end
      id_start_45 = self.character_index
      identifier!
      id = create_token do |t|
        t.input   = @input
        t.type    = ANTLR3::INVALID_TOKEN_TYPE
        t.channel = ANTLR3::DEFAULT_CHANNEL
        t.start   = id_start_45
        t.stop    = self.character_index - 1
      end
      # syntactic predicate action gate test
      if @state.backtracking == 0
        # --> action
         self.text = id.text
        # <-- action
      end

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 1)

    end

    # lexer rule directive! (DIRECTIVE)
    # (in samples/CPP.g)
    def directive!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 2)

      type = DIRECTIVE
      channel = ANTLR3::DEFAULT_CHANNEL
      # - - - - label initialization - - - -
      f = nil
      m = nil


      
      # - - - - main rule block - - - -
      # at line 345:10: {...}? '#' ( WS )? ( 'ifdef' | 'ifndef' | 'if' | 'elif' | 'else' | 'endif' | 'line' | 'undef' WS | 'define' WS | 'exec_macro_expression' | ( 'include' | 'include_next' ) WS f= IDENTIFIER | ( 'include' | 'include_next' ) WS f= INCLUDE_FILE | 'warning' m= MACRO_TEXT | 'error' (m= MACRO_TEXT )? | 'pragma' m= MACRO_TEXT )
      unless (( !@in_directive && !@in_define_mode ))
        raise FailedPredicate("DIRECTIVE", " !@in_directive && !@in_define_mode ")
      end
      match(?#)
      # syntactic predicate action gate test
      if @state.backtracking == 0
        # --> action

                    @in_directive = true
                    @cpp = ?X
                    @discard_space = false
                 
        # <-- action
      end
      # at line 350:12: ( WS )?
      alt_2 = 2
      look_2_0 = @input.peek(1)

      if (look_2_0 == ?\t || look_2_0.between?(?\f, ?\r) || look_2_0 == ?\s) 
        alt_2 = 1
      end
      case alt_2
      when 1
        # at line 350:12: WS
        ws!

      end
      # at line 351:5: ( 'ifdef' | 'ifndef' | 'if' | 'elif' | 'else' | 'endif' | 'line' | 'undef' WS | 'define' WS | 'exec_macro_expression' | ( 'include' | 'include_next' ) WS f= IDENTIFIER | ( 'include' | 'include_next' ) WS f= INCLUDE_FILE | 'warning' m= MACRO_TEXT | 'error' (m= MACRO_TEXT )? | 'pragma' m= MACRO_TEXT )
      alt_6 = 15
      alt_6 = @dfa6.predict(@input)
      case alt_6
      when 1
        # at line 351:7: 'ifdef'
        match("ifdef")
        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action
           
                     type = IF
                     @discard_space = true
                     self.text = "ifdef"
                   
          # <-- action
        end

      when 2
        # at line 357:7: 'ifndef'
        match("ifndef")
        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action

                     type = IF
                     @discard_space = true
                     self.text = "ifndef"
                   
          # <-- action
        end

      when 3
        # at line 363:7: 'if'
        match("if")
        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action

                      type = IF
                      @discard_space = true
                      self.text = "if"
                   
          # <-- action
        end

      when 4
        # at line 369:7: 'elif'
        match("elif")
        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action

                      type = ELIF
                      @discard_space = true
                   
          # <-- action
        end

      when 5
        # at line 374:7: 'else'
        match("else")
        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action
           
                      type = ELSE
                      @discard_space = true
                 
          # <-- action
        end

      when 6
        # at line 379:7: 'endif'
        match("endif")
        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action

                      type = ENDIF
                      @discard_space = true
                 
          # <-- action
        end

      when 7
        # at line 384:7: 'line'
        match("line")
        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action
           
                      type = LINE
                      @discard_space = true
                  
          # <-- action
        end

      when 8
        # at line 389:7: 'undef' WS
        match("undef")
        ws!
        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action
           
                      type = UNDEF
                      @discard_space = true
                  
          # <-- action
        end

      when 9
        # at line 394:7: 'define' WS
        match("define")
        ws!
        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action

                      type = DEFINE
                      @cpp = ?D
                      @discard_space = false
                
          # <-- action
        end

      when 10
        # at line 400:7: 'exec_macro_expression'
        match("exec_macro_expression")
        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action
           
                      type = EXEC_MACRO
                      @discard_space = true
                
          # <-- action
        end

      when 11
        # at line 405:7: ( 'include' | 'include_next' ) WS f= IDENTIFIER
        # at line 405:7: ( 'include' | 'include_next' )
        alt_3 = 2
        alt_3 = @dfa3.predict(@input)
        case alt_3
        when 1
          # at line 405:8: 'include'
          match("include")

        when 2
          # at line 405:18: 'include_next'
          match("include_next")

        end
        ws!
        f_start_287 = self.character_index
        identifier!
        f = create_token do |t|
          t.input   = @input
          t.type    = ANTLR3::INVALID_TOKEN_TYPE
          t.channel = ANTLR3::DEFAULT_CHANNEL
          t.start   = f_start_287
          t.stop    = self.character_index - 1
        end
        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action

                      type = INCLUDE_EXPAND
                      self.text = f.text
                      @discard_space = true
                
          # <-- action
        end

      when 12
        # at line 411:7: ( 'include' | 'include_next' ) WS f= INCLUDE_FILE
        # at line 411:7: ( 'include' | 'include_next' )
        alt_4 = 2
        alt_4 = @dfa4.predict(@input)
        case alt_4
        when 1
          # at line 411:8: 'include'
          match("include")

        when 2
          # at line 411:18: 'include_next'
          match("include_next")

        end
        ws!
        f_start_316 = self.character_index
        include_file!
        f = create_token do |t|
          t.input   = @input
          t.type    = ANTLR3::INVALID_TOKEN_TYPE
          t.channel = ANTLR3::DEFAULT_CHANNEL
          t.start   = f_start_316
          t.stop    = self.character_index - 1
        end
        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action

                    type = INCLUDE
                    self.text = f.text
                    @discard_space = true
                
          # <-- action
        end

      when 13
        # at line 417:7: 'warning' m= MACRO_TEXT
        match("warning")
        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action
           type = WARNING 
          # <-- action
        end
        m_start_338 = self.character_index
        macro_text!
        m = create_token do |t|
          t.input   = @input
          t.type    = ANTLR3::INVALID_TOKEN_TYPE
          t.channel = ANTLR3::DEFAULT_CHANNEL
          t.start   = m_start_338
          t.stop    = self.character_index - 1
        end
        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action
           self.text = m.text 
          # <-- action
        end

      when 14
        # at line 418:7: 'error' (m= MACRO_TEXT )?
        match("error")
        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action
           type = ERROR   
          # <-- action
        end
        # at line 418:37: (m= MACRO_TEXT )?
        alt_5 = 2
        look_5_0 = @input.peek(1)

        if (look_5_0.between?(0x0000, ?\t) || look_5_0.between?(0x000B, 0xFFFF)) 
          alt_5 = 1
        end
        case alt_5
        when 1
          # at line 418:38: m= MACRO_TEXT
          m_start_357 = self.character_index
          macro_text!
          m = create_token do |t|
            t.input   = @input
            t.type    = ANTLR3::INVALID_TOKEN_TYPE
            t.channel = ANTLR3::DEFAULT_CHANNEL
            t.start   = m_start_357
            t.stop    = self.character_index - 1
          end
          # syntactic predicate action gate test
          if @state.backtracking == 0
            # --> action
             self.text = m.text 
            # <-- action
          end

        end

      when 15
        # at line 419:7: 'pragma' m= MACRO_TEXT
        match("pragma")
        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action
           type = PRAGMA  
          # <-- action
        end
        m_start_376 = self.character_index
        macro_text!
        m = create_token do |t|
          t.input   = @input
          t.type    = ANTLR3::INVALID_TOKEN_TYPE
          t.channel = ANTLR3::DEFAULT_CHANNEL
          t.start   = m_start_376
          t.stop    = self.character_index - 1
        end
        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action
           self.text = m.text 
          # <-- action
        end

      end

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 2)

    end

    # lexer rule macro_text! (MACRO_TEXT)
    # (in samples/CPP.g)
    def macro_text!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 3)

      
      # - - - - main rule block - - - -
      # at line 424:13: ( ( '/*' )=> '/*' ( . )* '*/' | ( '\\\\\\n' )=> ( '\\\\\\n' ) | ( '\\\\\\r\\n' )=> ( '\\\\\\n' ) | ~ '\\n' )+
      # at file 424:13: ( ( '/*' )=> '/*' ( . )* '*/' | ( '\\\\\\n' )=> ( '\\\\\\n' ) | ( '\\\\\\r\\n' )=> ( '\\\\\\n' ) | ~ '\\n' )+
      match_count_8 = 0
      loop do
        alt_8 = 5
        alt_8 = @dfa8.predict(@input)
        case alt_8
        when 1
          # at line 424:15: ( '/*' )=> '/*' ( . )* '*/'
          match("/*")
          # at line 424:31: ( . )*
          loop do  #loop 7
            alt_7 = 2
            look_7_0 = @input.peek(1)

            if (look_7_0 == ?*) 
              look_7_1 = @input.peek(2)

              if (look_7_1 == ?/) 
                alt_7 = 2
              elsif (look_7_1.between?(0x0000, ?.) || look_7_1.between?(?0, 0xFFFF)) 
                alt_7 = 1

              end
            elsif (look_7_0.between?(0x0000, ?)) || look_7_0.between?(?+, 0xFFFF)) 
              alt_7 = 1

            end
            case alt_7
            when 1
              # at line 424:31: .
              match_any

            else
              break #loop 7
            end
          end
          match("*/")

        when 2
          # at line 425:15: ( '\\\\\\n' )=> ( '\\\\\\n' )
          # at line 425:27: ( '\\\\\\n' )
          # at line 425:28: '\\\\\\n'
          match("\\\n")


        when 3
          # at line 426:15: ( '\\\\\\r\\n' )=> ( '\\\\\\n' )
          # at line 426:29: ( '\\\\\\n' )
          # at line 426:30: '\\\\\\n'
          match("\\\n")


        when 4
          # at line 427:15: ~ '\\n'
          if @input.peek(1).between?(0x0000, ?\t) || @input.peek(1).between?(0x000B, 0x00FF)
            @input.consume
          else
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

            mse = MismatchedSet(nil)
            recover(mse)
            raise mse
          end



        else
          match_count_8 > 0 and break
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          eee = EarlyExit(8)


          raise eee
        end
        match_count_8 += 1
      end


    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 3)

    end

    # lexer rule sizeof! (SIZEOF)
    # (in samples/CPP.g)
    def sizeof!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 4)

      type = SIZEOF
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 431:12: 'sizeof'
      match("sizeof")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 4)

    end

    # lexer rule defined! (DEFINED)
    # (in samples/CPP.g)
    def defined!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 5)

      type = DEFINED
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 434:12: 'defined'
      match("defined")
      # syntactic predicate action gate test
      if @state.backtracking == 0
        # --> action
         type = CKEYWORD unless @in_directive 
        # <-- action
      end

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 5)

    end

    # lexer rule identifier! (IDENTIFIER)
    # (in samples/CPP.g)
    def identifier!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 6)

      type = IDENTIFIER
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 439:12: LETTER ( LETTER | '0' .. '9' )*
      letter!
      # at line 439:19: ( LETTER | '0' .. '9' )*
      loop do  #loop 9
        alt_9 = 2
        look_9_0 = @input.peek(1)

        if (look_9_0 == ?$ || look_9_0.between?(?0, ?9) || look_9_0.between?(?A, ?Z) || look_9_0 == ?_ || look_9_0.between?(?a, ?z)) 
          alt_9 = 1

        end
        case alt_9
        when 1
          # at line 
          if @input.peek(1) == ?$ || @input.peek(1).between?(?0, ?9) || @input.peek(1).between?(?A, ?Z) || @input.peek(1) == ?_ || @input.peek(1).between?(?a, ?z)
            @input.consume
          else
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

            mse = MismatchedSet(nil)
            recover(mse)
            raise mse
          end



        else
          break #loop 9
        end
      end
      # syntactic predicate action gate test
      if @state.backtracking == 0
        # --> action

                      if @in_directive and @cpp == ?D
                        if @input.peek == ?(
                          @cpp = ?(
                        else
                          @in_define_mode = true
                          @in_directive = false
                          @cpp = ?X
                        end
                      end
                    
        # <-- action
      end

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 6)

    end

    # lexer rule letter! (LETTER)
    # (in samples/CPP.g)
    def letter!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 7)

      
      # - - - - main rule block - - - -
      # at line 
      if @input.peek(1) == ?$ || @input.peek(1).between?(?A, ?Z) || @input.peek(1) == ?_ || @input.peek(1).between?(?a, ?z)
        @input.consume
      else
        @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

        mse = MismatchedSet(nil)
        recover(mse)
        raise mse
      end



    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 7)

    end

    # lexer rule stringification! (STRINGIFICATION)
    # (in samples/CPP.g)
    def stringification!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 8)

      type = STRINGIFICATION
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 462:25: '#_#_'
      match("#_#_")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 8)

    end

    # lexer rule sharpsharp! (SHARPSHARP)
    # (in samples/CPP.g)
    def sharpsharp!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 9)

      type = SHARPSHARP
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 465:25: '##'
      match("##")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 9)

    end

    # lexer rule assignequal! (ASSIGNEQUAL)
    # (in samples/CPP.g)
    def assignequal!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 10)

      type = ASSIGNEQUAL
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 467:25: '='
      match(?=)

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 10)

    end

    # lexer rule colon! (COLON)
    # (in samples/CPP.g)
    def colon!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 11)

      type = COLON
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 469:25: ':'
      match(?:)

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 11)

    end

    # lexer rule comma! (COMMA)
    # (in samples/CPP.g)
    def comma!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 12)

      type = COMMA
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 471:25: ','
      match(?,)

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 12)

    end

    # lexer rule questionmark! (QUESTIONMARK)
    # (in samples/CPP.g)
    def questionmark!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 13)

      type = QUESTIONMARK
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 473:25: '?'
      match(??)

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 13)

    end

    # lexer rule semicolon! (SEMICOLON)
    # (in samples/CPP.g)
    def semicolon!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 14)

      type = SEMICOLON
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 475:25: ';'
      match(?;)

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 14)

    end

    # lexer rule pointerto! (POINTERTO)
    # (in samples/CPP.g)
    def pointerto!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 15)

      type = POINTERTO
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 477:25: '->'
      match("->")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 15)

    end

    # lexer rule lparen! (LPAREN)
    # (in samples/CPP.g)
    def lparen!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 16)

      type = LPAREN
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 479:25: '('
      match(?()

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 16)

    end

    # lexer rule rparen! (RPAREN)
    # (in samples/CPP.g)
    def rparen!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 17)

      type = RPAREN
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 481:25: ')'
      match(?))
      # syntactic predicate action gate test
      if @state.backtracking == 0
        # --> action

                    if @cpp == ?( and @input.peek != ?\n
                      @in_define_mode = true
                      @in_directive = false
                      @cpp = ?X
                    end
            
        # <-- action
      end

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 17)

    end

    # lexer rule lsquare! (LSQUARE)
    # (in samples/CPP.g)
    def lsquare!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 18)

      type = LSQUARE
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 491:27: '['
      match(?[)

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 18)

    end

    # lexer rule rsquare! (RSQUARE)
    # (in samples/CPP.g)
    def rsquare!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 19)

      type = RSQUARE
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 493:27: ']'
      match(?])

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 19)

    end

    # lexer rule lcurly! (LCURLY)
    # (in samples/CPP.g)
    def lcurly!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 20)

      type = LCURLY
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 495:27: '{'
      match(?{)

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 20)

    end

    # lexer rule rcurly! (RCURLY)
    # (in samples/CPP.g)
    def rcurly!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 21)

      type = RCURLY
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 497:27: '}'
      match(?})

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 21)

    end

    # lexer rule equal! (EQUAL)
    # (in samples/CPP.g)
    def equal!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 22)

      type = EQUAL
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 499:27: '=='
      match("==")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 22)

    end

    # lexer rule notequal! (NOTEQUAL)
    # (in samples/CPP.g)
    def notequal!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 23)

      type = NOTEQUAL
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 501:27: '!='
      match("!=")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 23)

    end

    # lexer rule lessthanorequalto! (LESSTHANOREQUALTO)
    # (in samples/CPP.g)
    def lessthanorequalto!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 24)

      type = LESSTHANOREQUALTO
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 503:27: '<='
      match("<=")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 24)

    end

    # lexer rule lessthan! (LESSTHAN)
    # (in samples/CPP.g)
    def lessthan!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 25)

      type = LESSTHAN
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 505:27: '<'
      match(?<)

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 25)

    end

    # lexer rule greaterthanorequalto! (GREATERTHANOREQUALTO)
    # (in samples/CPP.g)
    def greaterthanorequalto!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 26)

      type = GREATERTHANOREQUALTO
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 507:27: '>='
      match(">=")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 26)

    end

    # lexer rule greaterthan! (GREATERTHAN)
    # (in samples/CPP.g)
    def greaterthan!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 27)

      type = GREATERTHAN
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 509:27: '>'
      match(?>)

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 27)

    end

    # lexer rule divide! (DIVIDE)
    # (in samples/CPP.g)
    def divide!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 28)

      type = DIVIDE
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 511:27: '/'
      match(?/)

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 28)

    end

    # lexer rule divideequal! (DIVIDEEQUAL)
    # (in samples/CPP.g)
    def divideequal!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 29)

      type = DIVIDEEQUAL
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 513:27: '/='
      match("/=")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 29)

    end

    # lexer rule plus! (PLUS)
    # (in samples/CPP.g)
    def plus!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 30)

      type = PLUS
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 515:27: '+'
      match(?+)

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 30)

    end

    # lexer rule plusequal! (PLUSEQUAL)
    # (in samples/CPP.g)
    def plusequal!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 31)

      type = PLUSEQUAL
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 517:27: '+='
      match("+=")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 31)

    end

    # lexer rule plusplus! (PLUSPLUS)
    # (in samples/CPP.g)
    def plusplus!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 32)

      type = PLUSPLUS
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 519:27: '++'
      match("++")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 32)

    end

    # lexer rule minus! (MINUS)
    # (in samples/CPP.g)
    def minus!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 33)

      type = MINUS
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 521:27: '-'
      match(?-)

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 33)

    end

    # lexer rule minusequal! (MINUSEQUAL)
    # (in samples/CPP.g)
    def minusequal!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 34)

      type = MINUSEQUAL
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 523:27: '-='
      match("-=")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 34)

    end

    # lexer rule minusminus! (MINUSMINUS)
    # (in samples/CPP.g)
    def minusminus!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 35)

      type = MINUSMINUS
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 525:27: '--'
      match("--")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 35)

    end

    # lexer rule star! (STAR)
    # (in samples/CPP.g)
    def star!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 36)

      type = STAR
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 527:27: '*'
      match(?*)

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 36)

    end

    # lexer rule timesequal! (TIMESEQUAL)
    # (in samples/CPP.g)
    def timesequal!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 37)

      type = TIMESEQUAL
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 529:27: '*='
      match("*=")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 37)

    end

    # lexer rule mod! (MOD)
    # (in samples/CPP.g)
    def mod!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 38)

      type = MOD
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 531:27: '%'
      match(?%)

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 38)

    end

    # lexer rule modequal! (MODEQUAL)
    # (in samples/CPP.g)
    def modequal!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 39)

      type = MODEQUAL
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 533:27: '%='
      match("%=")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 39)

    end

    # lexer rule shiftright! (SHIFTRIGHT)
    # (in samples/CPP.g)
    def shiftright!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 40)

      type = SHIFTRIGHT
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 535:27: '>>'
      match(">>")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 40)

    end

    # lexer rule shiftrightequal! (SHIFTRIGHTEQUAL)
    # (in samples/CPP.g)
    def shiftrightequal!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 41)

      type = SHIFTRIGHTEQUAL
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 537:27: '>>='
      match(">>=")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 41)

    end

    # lexer rule shiftleft! (SHIFTLEFT)
    # (in samples/CPP.g)
    def shiftleft!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 42)

      type = SHIFTLEFT
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 539:27: '<<'
      match("<<")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 42)

    end

    # lexer rule shiftleftequal! (SHIFTLEFTEQUAL)
    # (in samples/CPP.g)
    def shiftleftequal!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 43)

      type = SHIFTLEFTEQUAL
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 541:27: '<<='
      match("<<=")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 43)

    end

    # lexer rule and! (AND)
    # (in samples/CPP.g)
    def and!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 44)

      type = AND
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 543:27: '&&'
      match("&&")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 44)

    end

    # lexer rule not! (NOT)
    # (in samples/CPP.g)
    def not!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 45)

      type = NOT
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 545:27: '!'
      match(?!)

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 45)

    end

    # lexer rule or! (OR)
    # (in samples/CPP.g)
    def or!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 46)

      type = OR
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 547:27: '||'
      match("||")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 46)

    end

    # lexer rule ampersand! (AMPERSAND)
    # (in samples/CPP.g)
    def ampersand!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 47)

      type = AMPERSAND
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 549:27: '&'
      match(?&)

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 47)

    end

    # lexer rule bitwiseandequal! (BITWISEANDEQUAL)
    # (in samples/CPP.g)
    def bitwiseandequal!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 48)

      type = BITWISEANDEQUAL
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 551:27: '&='
      match("&=")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 48)

    end

    # lexer rule tilde! (TILDE)
    # (in samples/CPP.g)
    def tilde!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 49)

      type = TILDE
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 553:27: '~'
      match(?~)

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 49)

    end

    # lexer rule bitwiseor! (BITWISEOR)
    # (in samples/CPP.g)
    def bitwiseor!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 50)

      type = BITWISEOR
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 555:27: '|'
      match(?|)

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 50)

    end

    # lexer rule bitwiseorequal! (BITWISEOREQUAL)
    # (in samples/CPP.g)
    def bitwiseorequal!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 51)

      type = BITWISEOREQUAL
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 557:27: '|='
      match("|=")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 51)

    end

    # lexer rule bitwisexor! (BITWISEXOR)
    # (in samples/CPP.g)
    def bitwisexor!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 52)

      type = BITWISEXOR
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 559:27: '^'
      match(?^)

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 52)

    end

    # lexer rule bitwisexorequal! (BITWISEXOREQUAL)
    # (in samples/CPP.g)
    def bitwisexorequal!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 53)

      type = BITWISEXOREQUAL
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 561:27: '^='
      match("^=")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 53)

    end

    # lexer rule dot! (DOT)
    # (in samples/CPP.g)
    def dot!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 54)

      type = DOT
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 563:27: '.'
      match(?.)

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 54)

    end

    # lexer rule pointertombr! (POINTERTOMBR)
    # (in samples/CPP.g)
    def pointertombr!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 55)

      type = POINTERTOMBR
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 565:27: '->*'
      match("->*")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 55)

    end

    # lexer rule dotmbr! (DOTMBR)
    # (in samples/CPP.g)
    def dotmbr!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 56)

      type = DOTMBR
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 567:27: '.*'
      match(".*")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 56)

    end

    # lexer rule scope! (SCOPE)
    # (in samples/CPP.g)
    def scope!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 57)

      type = SCOPE
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 569:27: '::'
      match("::")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 57)

    end

    # lexer rule ellipsis! (ELLIPSIS)
    # (in samples/CPP.g)
    def ellipsis!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 58)

      type = ELLIPSIS
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 571:27: '...'
      match("...")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 58)

    end

    # lexer rule include_file! (INCLUDE_FILE)
    # (in samples/CPP.g)
    def include_file!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 59)

      
      # - - - - main rule block - - - -
      # at line 575:9: ( '<' ( ' ' | '!' | '#' .. ';' | '=' | '?' .. '[' | ']' .. '\\u00FF' )+ '>' | '\"' ( ' ' | '!' | '#' .. ';' | '=' | '?' .. '[' | ']' .. '\\u00FF' )+ '\"' )
      alt_12 = 2
      look_12_0 = @input.peek(1)

      if (look_12_0 == ?<) 
        alt_12 = 1
      elsif (look_12_0 == ?") 
        alt_12 = 2
      else
        @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
      nvae = NoViableAlternative("", 12, 0)
        raise nvae
      end
      case alt_12
      when 1
        # at line 575:11: '<' ( ' ' | '!' | '#' .. ';' | '=' | '?' .. '[' | ']' .. '\\u00FF' )+ '>'
        match(?<)
        # at file 575:15: ( ' ' | '!' | '#' .. ';' | '=' | '?' .. '[' | ']' .. '\\u00FF' )+
        match_count_10 = 0
        loop do
          alt_10 = 2
          look_10_0 = @input.peek(1)

          if (look_10_0.between?(?\s, ?!) || look_10_0.between?(?#, ?;) || look_10_0 == ?= || look_10_0.between?(??, ?[) || look_10_0.between?(?], 0x00FF)) 
            alt_10 = 1

          end
          case alt_10
          when 1
            # at line 
            if @input.peek(1).between?(?\s, ?!) || @input.peek(1).between?(?#, ?;) || @input.peek(1) == ?= || @input.peek(1).between?(??, ?[) || @input.peek(1).between?(?], 0x00FF)
              @input.consume
            else
              @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

              mse = MismatchedSet(nil)
              recover(mse)
              raise mse
            end



          else
            match_count_10 > 0 and break
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

            eee = EarlyExit(10)


            raise eee
          end
          match_count_10 += 1
        end

        match(?>)

      when 2
        # at line 576:13: '\"' ( ' ' | '!' | '#' .. ';' | '=' | '?' .. '[' | ']' .. '\\u00FF' )+ '\"'
        match(?")
        # at file 576:17: ( ' ' | '!' | '#' .. ';' | '=' | '?' .. '[' | ']' .. '\\u00FF' )+
        match_count_11 = 0
        loop do
          alt_11 = 2
          look_11_0 = @input.peek(1)

          if (look_11_0.between?(?\s, ?!) || look_11_0.between?(?#, ?;) || look_11_0 == ?= || look_11_0.between?(??, ?[) || look_11_0.between?(?], 0x00FF)) 
            alt_11 = 1

          end
          case alt_11
          when 1
            # at line 
            if @input.peek(1).between?(?\s, ?!) || @input.peek(1).between?(?#, ?;) || @input.peek(1) == ?= || @input.peek(1).between?(??, ?[) || @input.peek(1).between?(?], 0x00FF)
              @input.consume
            else
              @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

              mse = MismatchedSet(nil)
              recover(mse)
              raise mse
            end



          else
            match_count_11 > 0 and break
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

            eee = EarlyExit(11)


            raise eee
          end
          match_count_11 += 1
        end

        match(?")

      end
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 59)

    end

    # lexer rule character_literal! (CHARACTER_LITERAL)
    # (in samples/CPP.g)
    def character_literal!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 60)

      type = CHARACTER_LITERAL
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 580:13: ( 'L' )? '\\'' ( EscapeSequence | ~ ( '\\'' | '\\\\' ) ) '\\''
      # at line 580:13: ( 'L' )?
      alt_13 = 2
      look_13_0 = @input.peek(1)

      if (look_13_0 == ?L) 
        alt_13 = 1
      end
      case alt_13
      when 1
        # at line 580:14: 'L'
        match(?L)

      end
      match(?\')
      # at line 580:25: ( EscapeSequence | ~ ( '\\'' | '\\\\' ) )
      alt_14 = 2
      look_14_0 = @input.peek(1)

      if (look_14_0 == ?\\) 
        alt_14 = 1
      elsif (look_14_0.between?(0x0000, ?&) || look_14_0.between?(?(, ?[) || look_14_0.between?(?], 0xFFFF)) 
        alt_14 = 2
      else
        @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
      nvae = NoViableAlternative("", 14, 0)
        raise nvae
      end
      case alt_14
      when 1
        # at line 580:27: EscapeSequence
        escape_sequence!

      when 2
        # at line 580:44: ~ ( '\\'' | '\\\\' )
        if @input.peek(1).between?(0x0000, ?&) || @input.peek(1).between?(?(, ?[) || @input.peek(1).between?(?], 0x00FF)
          @input.consume
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          mse = MismatchedSet(nil)
          recover(mse)
          raise mse
        end



      end
      match(?\')

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 60)

    end

    # lexer rule string_literal! (STRING_LITERAL)
    # (in samples/CPP.g)
    def string_literal!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 61)

      type = STRING_LITERAL
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 585:13: '\"' ( EscapeSequence | ~ ( '\"' ) )* '\"'
      match(?")
      # at line 585:17: ( EscapeSequence | ~ ( '\"' ) )*
      loop do  #loop 15
        alt_15 = 3
        alt_15 = @dfa15.predict(@input)
        case alt_15
        when 1
          # at line 585:18: EscapeSequence
          escape_sequence!

        when 2
          # at line 585:35: ~ ( '\"' )
          if @input.peek(1).between?(0x0000, ?!) || @input.peek(1).between?(?#, 0x00FF)
            @input.consume
          else
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

            mse = MismatchedSet(nil)
            recover(mse)
            raise mse
          end



        else
          break #loop 15
        end
      end
      match(?")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 61)

    end

    # lexer rule hex_literal! (HEX_LITERAL)
    # (in samples/CPP.g)
    def hex_literal!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 62)

      type = HEX_LITERAL
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 589:13: '0' ( 'x' | 'X' ) ( HexDigit )+ ( IntegerTypeSuffix )?
      match(?0)
      if @input.peek(1) == ?X || @input.peek(1) == ?x
        @input.consume
      else
        @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

        mse = MismatchedSet(nil)
        recover(mse)
        raise mse
      end


      # at file 589:27: ( HexDigit )+
      match_count_16 = 0
      loop do
        alt_16 = 2
        look_16_0 = @input.peek(1)

        if (look_16_0.between?(?0, ?9) || look_16_0.between?(?A, ?F) || look_16_0.between?(?a, ?f)) 
          alt_16 = 1

        end
        case alt_16
        when 1
          # at line 589:27: HexDigit
          hex_digit!

        else
          match_count_16 > 0 and break
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          eee = EarlyExit(16)


          raise eee
        end
        match_count_16 += 1
      end

      # at line 589:37: ( IntegerTypeSuffix )?
      alt_17 = 2
      look_17_0 = @input.peek(1)

      if (look_17_0 == ?L || look_17_0 == ?U || look_17_0 == ?l || look_17_0 == ?u) 
        alt_17 = 1
      end
      case alt_17
      when 1
        # at line 589:37: IntegerTypeSuffix
        integer_type_suffix!

      end

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 62)

    end

    # lexer rule decimal_literal! (DECIMAL_LITERAL)
    # (in samples/CPP.g)
    def decimal_literal!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 63)

      type = DECIMAL_LITERAL
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 593:13: ( '0' | '1' .. '9' ( '0' .. '9' )* ) ( IntegerTypeSuffix )?
      # at line 593:13: ( '0' | '1' .. '9' ( '0' .. '9' )* )
      alt_19 = 2
      look_19_0 = @input.peek(1)

      if (look_19_0 == ?0) 
        alt_19 = 1
      elsif (look_19_0.between?(?1, ?9)) 
        alt_19 = 2
      else
        @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
      nvae = NoViableAlternative("", 19, 0)
        raise nvae
      end
      case alt_19
      when 1
        # at line 593:14: '0'
        match(?0)

      when 2
        # at line 593:20: '1' .. '9' ( '0' .. '9' )*
        match_range(?1, ?9)
        # at line 593:29: ( '0' .. '9' )*
        loop do  #loop 18
          alt_18 = 2
          look_18_0 = @input.peek(1)

          if (look_18_0.between?(?0, ?9)) 
            alt_18 = 1

          end
          case alt_18
          when 1
            # at line 593:29: '0' .. '9'
            match_range(?0, ?9)

          else
            break #loop 18
          end
        end

      end
      # at line 593:40: ( IntegerTypeSuffix )?
      alt_20 = 2
      look_20_0 = @input.peek(1)

      if (look_20_0 == ?L || look_20_0 == ?U || look_20_0 == ?l || look_20_0 == ?u) 
        alt_20 = 1
      end
      case alt_20
      when 1
        # at line 593:40: IntegerTypeSuffix
        integer_type_suffix!

      end

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 63)

    end

    # lexer rule octal_literal! (OCTAL_LITERAL)
    # (in samples/CPP.g)
    def octal_literal!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 64)

      type = OCTAL_LITERAL
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 597:13: '0' ( '0' .. '7' )+ ( IntegerTypeSuffix )?
      match(?0)
      # at file 597:17: ( '0' .. '7' )+
      match_count_21 = 0
      loop do
        alt_21 = 2
        look_21_0 = @input.peek(1)

        if (look_21_0.between?(?0, ?7)) 
          alt_21 = 1

        end
        case alt_21
        when 1
          # at line 597:18: '0' .. '7'
          match_range(?0, ?7)

        else
          match_count_21 > 0 and break
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          eee = EarlyExit(21)


          raise eee
        end
        match_count_21 += 1
      end

      # at line 597:29: ( IntegerTypeSuffix )?
      alt_22 = 2
      look_22_0 = @input.peek(1)

      if (look_22_0 == ?L || look_22_0 == ?U || look_22_0 == ?l || look_22_0 == ?u) 
        alt_22 = 1
      end
      case alt_22
      when 1
        # at line 597:29: IntegerTypeSuffix
        integer_type_suffix!

      end

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 64)

    end

    # lexer rule hex_digit! (HexDigit)
    # (in samples/CPP.g)
    def hex_digit!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 65)

      
      # - - - - main rule block - - - -
      # at line 601:13: ( '0' .. '9' | 'a' .. 'f' | 'A' .. 'F' )
      if @input.peek(1).between?(?0, ?9) || @input.peek(1).between?(?A, ?F) || @input.peek(1).between?(?a, ?f)
        @input.consume
      else
        @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

        mse = MismatchedSet(nil)
        recover(mse)
        raise mse
      end



    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 65)

    end

    # lexer rule integer_type_suffix! (IntegerTypeSuffix)
    # (in samples/CPP.g)
    def integer_type_suffix!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 66)

      
      # - - - - main rule block - - - -
      # at line 605:5: ( 'u' | 'ul' | 'U' | 'UL' | 'l' | 'L' )
      alt_23 = 6
      case look_23 = @input.peek(1)
      when ?u then look_23_1 = @input.peek(2)

      if (look_23_1 == ?l) 
        alt_23 = 2
      else
        alt_23 = 1
      end
      when ?U then look_23_2 = @input.peek(2)

      if (look_23_2 == ?L) 
        alt_23 = 4
      else
        alt_23 = 3
      end
      when ?l then alt_23 = 5
      when ?L then alt_23 = 6
      else
        @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

        nvae = NoViableAlternative("", 23, 0)
        raise nvae
      end
      case alt_23
      when 1
        # at line 605:13: 'u'
        match(?u)

      when 2
        # at line 605:19: 'ul'
        match("ul")

      when 3
        # at line 605:26: 'U'
        match(?U)

      when 4
        # at line 605:32: 'UL'
        match("UL")

      when 5
        # at line 605:39: 'l'
        match(?l)

      when 6
        # at line 605:45: 'L'
        match(?L)

      end
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 66)

    end

    # lexer rule floating_point_literal! (FLOATING_POINT_LITERAL)
    # (in samples/CPP.g)
    def floating_point_literal!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 67)

      type = FLOATING_POINT_LITERAL
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 609:5: ( ( '0' .. '9' )+ '.' ( '0' .. '9' )* ( Exponent )? ( FloatTypeSuffix )? | '.' ( '0' .. '9' )+ ( Exponent )? ( FloatTypeSuffix )? | ( '0' .. '9' )+ Exponent ( FloatTypeSuffix )? | ( '0' .. '9' )+ FloatTypeSuffix )
      alt_34 = 4
      alt_34 = @dfa34.predict(@input)
      case alt_34
      when 1
        # at line 609:13: ( '0' .. '9' )+ '.' ( '0' .. '9' )* ( Exponent )? ( FloatTypeSuffix )?
        # at file 609:13: ( '0' .. '9' )+
        match_count_24 = 0
        loop do
          alt_24 = 2
          look_24_0 = @input.peek(1)

          if (look_24_0.between?(?0, ?9)) 
            alt_24 = 1

          end
          case alt_24
          when 1
            # at line 609:14: '0' .. '9'
            match_range(?0, ?9)

          else
            match_count_24 > 0 and break
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

            eee = EarlyExit(24)


            raise eee
          end
          match_count_24 += 1
        end

        match(?.)
        # at line 609:29: ( '0' .. '9' )*
        loop do  #loop 25
          alt_25 = 2
          look_25_0 = @input.peek(1)

          if (look_25_0.between?(?0, ?9)) 
            alt_25 = 1

          end
          case alt_25
          when 1
            # at line 609:30: '0' .. '9'
            match_range(?0, ?9)

          else
            break #loop 25
          end
        end
        # at line 609:41: ( Exponent )?
        alt_26 = 2
        look_26_0 = @input.peek(1)

        if (look_26_0 == ?E || look_26_0 == ?e) 
          alt_26 = 1
        end
        case alt_26
        when 1
          # at line 609:41: Exponent
          exponent!

        end
        # at line 609:51: ( FloatTypeSuffix )?
        alt_27 = 2
        look_27_0 = @input.peek(1)

        if (look_27_0 == ?D || look_27_0 == ?F || look_27_0 == ?d || look_27_0 == ?f) 
          alt_27 = 1
        end
        case alt_27
        when 1
          # at line 609:51: FloatTypeSuffix
          float_type_suffix!

        end

      when 2
        # at line 610:13: '.' ( '0' .. '9' )+ ( Exponent )? ( FloatTypeSuffix )?
        match(?.)
        # at file 610:17: ( '0' .. '9' )+
        match_count_28 = 0
        loop do
          alt_28 = 2
          look_28_0 = @input.peek(1)

          if (look_28_0.between?(?0, ?9)) 
            alt_28 = 1

          end
          case alt_28
          when 1
            # at line 610:18: '0' .. '9'
            match_range(?0, ?9)

          else
            match_count_28 > 0 and break
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

            eee = EarlyExit(28)


            raise eee
          end
          match_count_28 += 1
        end

        # at line 610:29: ( Exponent )?
        alt_29 = 2
        look_29_0 = @input.peek(1)

        if (look_29_0 == ?E || look_29_0 == ?e) 
          alt_29 = 1
        end
        case alt_29
        when 1
          # at line 610:29: Exponent
          exponent!

        end
        # at line 610:39: ( FloatTypeSuffix )?
        alt_30 = 2
        look_30_0 = @input.peek(1)

        if (look_30_0 == ?D || look_30_0 == ?F || look_30_0 == ?d || look_30_0 == ?f) 
          alt_30 = 1
        end
        case alt_30
        when 1
          # at line 610:39: FloatTypeSuffix
          float_type_suffix!

        end

      when 3
        # at line 611:13: ( '0' .. '9' )+ Exponent ( FloatTypeSuffix )?
        # at file 611:13: ( '0' .. '9' )+
        match_count_31 = 0
        loop do
          alt_31 = 2
          look_31_0 = @input.peek(1)

          if (look_31_0.between?(?0, ?9)) 
            alt_31 = 1

          end
          case alt_31
          when 1
            # at line 611:14: '0' .. '9'
            match_range(?0, ?9)

          else
            match_count_31 > 0 and break
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

            eee = EarlyExit(31)


            raise eee
          end
          match_count_31 += 1
        end

        exponent!
        # at line 611:34: ( FloatTypeSuffix )?
        alt_32 = 2
        look_32_0 = @input.peek(1)

        if (look_32_0 == ?D || look_32_0 == ?F || look_32_0 == ?d || look_32_0 == ?f) 
          alt_32 = 1
        end
        case alt_32
        when 1
          # at line 611:34: FloatTypeSuffix
          float_type_suffix!

        end

      when 4
        # at line 612:13: ( '0' .. '9' )+ FloatTypeSuffix
        # at file 612:13: ( '0' .. '9' )+
        match_count_33 = 0
        loop do
          alt_33 = 2
          look_33_0 = @input.peek(1)

          if (look_33_0.between?(?0, ?9)) 
            alt_33 = 1

          end
          case alt_33
          when 1
            # at line 612:14: '0' .. '9'
            match_range(?0, ?9)

          else
            match_count_33 > 0 and break
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

            eee = EarlyExit(33)


            raise eee
          end
          match_count_33 += 1
        end

        float_type_suffix!

      end
      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 67)

    end

    # lexer rule exponent! (Exponent)
    # (in samples/CPP.g)
    def exponent!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 68)

      
      # - - - - main rule block - - - -
      # at line 616:13: ( 'e' | 'E' ) ( '+' | '-' )? ( '0' .. '9' )+
      if @input.peek(1) == ?E || @input.peek(1) == ?e
        @input.consume
      else
        @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

        mse = MismatchedSet(nil)
        recover(mse)
        raise mse
      end


      # at line 616:23: ( '+' | '-' )?
      alt_35 = 2
      look_35_0 = @input.peek(1)

      if (look_35_0 == ?+ || look_35_0 == ?-) 
        alt_35 = 1
      end
      case alt_35
      when 1
        # at line 
        if @input.peek(1) == ?+ || @input.peek(1) == ?-
          @input.consume
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          mse = MismatchedSet(nil)
          recover(mse)
          raise mse
        end



      end
      # at file 616:34: ( '0' .. '9' )+
      match_count_36 = 0
      loop do
        alt_36 = 2
        look_36_0 = @input.peek(1)

        if (look_36_0.between?(?0, ?9)) 
          alt_36 = 1

        end
        case alt_36
        when 1
          # at line 616:35: '0' .. '9'
          match_range(?0, ?9)

        else
          match_count_36 > 0 and break
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          eee = EarlyExit(36)


          raise eee
        end
        match_count_36 += 1
      end


    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 68)

    end

    # lexer rule float_type_suffix! (FloatTypeSuffix)
    # (in samples/CPP.g)
    def float_type_suffix!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 69)

      
      # - - - - main rule block - - - -
      # at line 620:13: ( 'f' | 'F' | 'd' | 'D' )
      if @input.peek(1) == ?D || @input.peek(1) == ?F || @input.peek(1) == ?d || @input.peek(1) == ?f
        @input.consume
      else
        @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

        mse = MismatchedSet(nil)
        recover(mse)
        raise mse
      end



    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 69)

    end

    # lexer rule escape_sequence! (EscapeSequence)
    # (in samples/CPP.g)
    def escape_sequence!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 70)

      
      # - - - - main rule block - - - -
      # at line 624:5: ( '\\\\' ( 'b' | 't' | 'n' | 'f' | 'r' | 'v' | '\\\"' | '\\'' | '\\\\' ) | '\\\\' 'x' ( HexDigit )+ | OctalEscape )
      alt_38 = 3
      look_38_0 = @input.peek(1)

      if (look_38_0 == ?\\) 
        case look_38 = @input.peek(2)
        when ?", ?\', ?\\, ?b, ?f, ?n, ?r, ?t, ?v then alt_38 = 1
        when ?x then alt_38 = 2
        when ?0, ?1, ?2, ?3, ?4, ?5, ?6, ?7 then alt_38 = 3
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          nvae = NoViableAlternative("", 38, 1)
          raise nvae
        end
      else
        @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
      nvae = NoViableAlternative("", 38, 0)
        raise nvae
      end
      case alt_38
      when 1
        # at line 624:13: '\\\\' ( 'b' | 't' | 'n' | 'f' | 'r' | 'v' | '\\\"' | '\\'' | '\\\\' )
        match(?\\)
        if @input.peek(1) == ?" || @input.peek(1) == ?\' || @input.peek(1) == ?\\ || @input.peek(1) == ?b || @input.peek(1) == ?f || @input.peek(1) == ?n || @input.peek(1) == ?r || @input.peek(1) == ?t || @input.peek(1) == ?v
          @input.consume
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          mse = MismatchedSet(nil)
          recover(mse)
          raise mse
        end



      when 2
        # at line 625:13: '\\\\' 'x' ( HexDigit )+
        match(?\\)
        match(?x)
        # at file 625:22: ( HexDigit )+
        match_count_37 = 0
        loop do
          alt_37 = 2
          look_37_0 = @input.peek(1)

          if (look_37_0.between?(?0, ?9) || look_37_0.between?(?A, ?F) || look_37_0.between?(?a, ?f)) 
            alt_37 = 1

          end
          case alt_37
          when 1
            # at line 625:22: HexDigit
            hex_digit!

          else
            match_count_37 > 0 and break
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

            eee = EarlyExit(37)


            raise eee
          end
          match_count_37 += 1
        end


      when 3
        # at line 626:9: OctalEscape
        octal_escape!

      end
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 70)

    end

    # lexer rule octal_escape! (OctalEscape)
    # (in samples/CPP.g)
    def octal_escape!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 71)

      
      # - - - - main rule block - - - -
      # at line 630:5: ( '\\\\' ( '0' .. '3' ) ( '0' .. '7' ) ( '0' .. '7' ) | '\\\\' ( '0' .. '7' ) ( '0' .. '7' ) | '\\\\' ( '0' .. '7' ) )
      alt_39 = 3
      look_39_0 = @input.peek(1)

      if (look_39_0 == ?\\) 
        look_39_1 = @input.peek(2)

        if (look_39_1.between?(?0, ?3)) 
          look_39_2 = @input.peek(3)

          if (look_39_2.between?(?0, ?7)) 
            look_39_4 = @input.peek(4)

            if (look_39_4.between?(?0, ?7)) 
              alt_39 = 1
            else
              alt_39 = 2
            end
          else
            alt_39 = 3
          end
        elsif (look_39_1.between?(?4, ?7)) 
          look_39_3 = @input.peek(3)

          if (look_39_3.between?(?0, ?7)) 
            alt_39 = 2
          else
            alt_39 = 3
          end
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 39, 1)
          raise nvae
        end
      else
        @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
      nvae = NoViableAlternative("", 39, 0)
        raise nvae
      end
      case alt_39
      when 1
        # at line 630:13: '\\\\' ( '0' .. '3' ) ( '0' .. '7' ) ( '0' .. '7' )
        match(?\\)
        # at line 630:18: ( '0' .. '3' )
        # at line 630:19: '0' .. '3'
        match_range(?0, ?3)

        # at line 630:29: ( '0' .. '7' )
        # at line 630:30: '0' .. '7'
        match_range(?0, ?7)

        # at line 630:40: ( '0' .. '7' )
        # at line 630:41: '0' .. '7'
        match_range(?0, ?7)


      when 2
        # at line 631:13: '\\\\' ( '0' .. '7' ) ( '0' .. '7' )
        match(?\\)
        # at line 631:18: ( '0' .. '7' )
        # at line 631:19: '0' .. '7'
        match_range(?0, ?7)

        # at line 631:29: ( '0' .. '7' )
        # at line 631:30: '0' .. '7'
        match_range(?0, ?7)


      when 3
        # at line 632:13: '\\\\' ( '0' .. '7' )
        match(?\\)
        # at line 632:18: ( '0' .. '7' )
        # at line 632:19: '0' .. '7'
        match_range(?0, ?7)


      end
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 71)

    end

    # lexer rule unicode_escape! (UnicodeEscape)
    # (in samples/CPP.g)
    def unicode_escape!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 72)

      
      # - - - - main rule block - - - -
      # at line 636:13: '\\\\' 'u' HexDigit HexDigit HexDigit HexDigit
      match(?\\)
      match(?u)
      hex_digit!
      hex_digit!
      hex_digit!
      hex_digit!

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 72)

    end

    # lexer rule comment! (COMMENT)
    # (in samples/CPP.g)
    def comment!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 73)

      type = COMMENT
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 640:5: ( '/*' ( . )* '*/' | '/' '\\\\' '\\n' '*' ( . )* '*/' )
      alt_42 = 2
      look_42_0 = @input.peek(1)

      if (look_42_0 == ?/) 
        look_42_1 = @input.peek(2)

        if (look_42_1 == ?*) 
          alt_42 = 1
        elsif (look_42_1 == ?\\) 
          alt_42 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 42, 1)
          raise nvae
        end
      else
        @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
      nvae = NoViableAlternative("", 42, 0)
        raise nvae
      end
      case alt_42
      when 1
        # at line 640:9: '/*' ( . )* '*/'
        match("/*")
        # at line 640:15: ( . )*
        loop do  #loop 40
          alt_40 = 2
          look_40_0 = @input.peek(1)

          if (look_40_0 == ?*) 
            look_40_1 = @input.peek(2)

            if (look_40_1 == ?/) 
              alt_40 = 2
            elsif (look_40_1.between?(0x0000, ?.) || look_40_1.between?(?0, 0xFFFF)) 
              alt_40 = 1

            end
          elsif (look_40_0.between?(0x0000, ?)) || look_40_0.between?(?+, 0xFFFF)) 
            alt_40 = 1

          end
          case alt_40
          when 1
            # at line 640:15: .
            match_any

          else
            break #loop 40
          end
        end
        match("*/")
        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action
           channel = HIDDEN 
          # <-- action
        end

      when 2
        # at line 641:9: '/' '\\\\' '\\n' '*' ( . )* '*/'
        match(?/)
        match(?\\)
        match(?\n)
        match(?*)
        # at line 641:27: ( . )*
        loop do  #loop 41
          alt_41 = 2
          look_41_0 = @input.peek(1)

          if (look_41_0 == ?*) 
            look_41_1 = @input.peek(2)

            if (look_41_1 == ?/) 
              alt_41 = 2
            elsif (look_41_1.between?(0x0000, ?.) || look_41_1.between?(?0, 0xFFFF)) 
              alt_41 = 1

            end
          elsif (look_41_0.between?(0x0000, ?)) || look_41_0.between?(?+, 0xFFFF)) 
            alt_41 = 1

          end
          case alt_41
          when 1
            # at line 641:27: .
            match_any

          else
            break #loop 41
          end
        end
        match("*/")
        # syntactic predicate action gate test
        if @state.backtracking == 0
          # --> action
           channel = HIDDEN 
          # <-- action
        end

      end
      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 73)

    end

    # lexer rule line_comment! (LINE_COMMENT)
    # (in samples/CPP.g)
    def line_comment!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 74)

      type = LINE_COMMENT
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 645:8: '//' (~ ( '\\n' | '\\r' ) )* ( '\\r' )? '\\n'
      match("//")
      # at line 645:13: (~ ( '\\n' | '\\r' ) )*
      loop do  #loop 43
        alt_43 = 2
        look_43_0 = @input.peek(1)

        if (look_43_0.between?(0x0000, ?\t) || look_43_0.between?(0x000B, ?\f) || look_43_0.between?(0x000E, 0xFFFF)) 
          alt_43 = 1

        end
        case alt_43
        when 1
          # at line 645:13: ~ ( '\\n' | '\\r' )
          if @input.peek(1).between?(0x0000, ?\t) || @input.peek(1).between?(0x000B, ?\f) || @input.peek(1).between?(0x000E, 0x00FF)
            @input.consume
          else
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

            mse = MismatchedSet(nil)
            recover(mse)
            raise mse
          end



        else
          break #loop 43
        end
      end
      # at line 645:27: ( '\\r' )?
      alt_44 = 2
      look_44_0 = @input.peek(1)

      if (look_44_0 == ?\r) 
        alt_44 = 1
      end
      case alt_44
      when 1
        # at line 645:27: '\\r'
        match(?\r)

      end
      match(?\n)
      # syntactic predicate action gate test
      if @state.backtracking == 0
        # --> action

                  if @in_directive
                    type = End
                  else
                    case (@input.peek rescue nil)
                    when ?#, -1
                      type = TEXT_END
                    else
                      type = End
                    end
                  end
                  @in_define_mode = @in_directive = false
                  @discard_space = true
              
        # <-- action
      end

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 74)

    end

    # lexer rule ws! (WS)
    # (in samples/CPP.g)
    def ws!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 75)

      type = WS
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 662:9: ( ' ' | '\\r' | '\\t' | '\\f' )+
      # syntactic predicate action gate test
      if @state.backtracking == 0
        # --> action

                   c = @input.peek(-1) rescue End
                   c ||= End
                   @ltoken = c == ?\n ? End : c
                
        # <-- action
      end
      # at file 667:9: ( ' ' | '\\r' | '\\t' | '\\f' )+
      match_count_45 = 0
      loop do
        alt_45 = 2
        look_45_0 = @input.peek(1)

        if (look_45_0 == ?\t || look_45_0.between?(?\f, ?\r) || look_45_0 == ?\s) 
          alt_45 = 1

        end
        case alt_45
        when 1
          # at line 
          if @input.peek(1) == ?\t || @input.peek(1).between?(?\f, ?\r) || @input.peek(1) == ?\s
            @input.consume
          else
            @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

            mse = MismatchedSet(nil)
            recover(mse)
            raise mse
          end



        else
          match_count_45 > 0 and break
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          eee = EarlyExit(45)


          raise eee
        end
        match_count_45 += 1
      end

      # syntactic predicate action gate test
      if @state.backtracking == 0
        # --> action

                  if @in_directive
                    if @discard_space
                      channel = HIDDEN
                    else
                      type = WS
                    end
                  else
                    unless @in_define_mode
                      begin
                        c = @input.peek or channel = HIDDEN
                        if c != EOF && c != ?# && @ltoken == End
                          type = End
                        end
                      rescue
                        channel = HIDDEN
                      end
                    end
                  end
              
        # <-- action
      end

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 75)

    end

    # lexer rule end! (End)
    # (in samples/CPP.g)
    def end!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 76)

      type = End
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 694:7: ( WS )? '\\n'
      # at line 694:7: ( WS )?
      alt_46 = 2
      look_46_0 = @input.peek(1)

      if (look_46_0 == ?\t || look_46_0.between?(?\f, ?\r) || look_46_0 == ?\s) 
        alt_46 = 1
      end
      case alt_46
      when 1
        # at line 694:7: WS
        ws!

      end
      match(?\n)
      # syntactic predicate action gate test
      if @state.backtracking == 0
        # --> action

                if @in_directive
                  type = End
                else
                  if @in_define_mode
                     type = End
                  else
                    begin
                      if c = @input.peek(1) and c != ?# and c != -1
                        type = TEXT_END
                      elsif c.nil?
                        type = End
                      end
                    rescue
                      type = End
                    end
                  end
                end
                
                @ltoken = End
                @in_directive = @in_define_mode = false
                @discard_space = true
            
        # <-- action
      end

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 76)

    end

    # lexer rule escaped_newline! (ESCAPED_NEWLINE)
    # (in samples/CPP.g)
    def escaped_newline!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 77)

      type = ESCAPED_NEWLINE
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 721:7: ( '\\\\\\n' | '\\\\\\r\\n' )
      # at line 721:7: ( '\\\\\\n' | '\\\\\\r\\n' )
      alt_47 = 2
      look_47_0 = @input.peek(1)

      if (look_47_0 == ?\\) 
        look_47_1 = @input.peek(2)

        if (look_47_1 == ?\n) 
          alt_47 = 1
        elsif (look_47_1 == ?\r) 
          alt_47 = 2
        else
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
        nvae = NoViableAlternative("", 47, 1)
          raise nvae
        end
      else
        @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
      nvae = NoViableAlternative("", 47, 0)
        raise nvae
      end
      case alt_47
      when 1
        # at line 721:8: '\\\\\\n'
        match("\\\n")

      when 2
        # at line 721:17: '\\\\\\r\\n'
        match("\\\r\n")

      end
      # syntactic predicate action gate test
      if @state.backtracking == 0
        # --> action
         channel = HIDDEN 
        # <-- action
      end

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 77)

    end

    # lexer rule coperator! (COPERATOR)
    # (in samples/CPP.g)
    def coperator!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 78)

      type = COPERATOR
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 725:11: {...}? ( COLON | QUESTIONMARK | POINTERTO | LCURLY | RCURLY | LSQUARE | RSQUARE | STAR | EQUAL | NOTEQUAL | LESSTHANOREQUALTO | LESSTHAN | GREATERTHANOREQUALTO | GREATERTHAN | DIVIDE | PLUSPLUS | MINUSMINUS | MOD | SHIFTRIGHT | SHIFTLEFT | AND | OR | BITWISEOR | BITWISEXOR | DOT | POINTERTOMBR | DOTMBR | SCOPE | AMPERSAND | PLUS | MINUS | TILDE | ASSIGNEQUAL | TIMESEQUAL | DIVIDEEQUAL | MODEQUAL | PLUSEQUAL | MINUSEQUAL | SHIFTLEFTEQUAL | SHIFTRIGHTEQUAL | BITWISEANDEQUAL | BITWISEXOREQUAL | BITWISEOREQUAL | NOT | ELLIPSIS )
      unless ((!@in_directive))
        raise FailedPredicate("COPERATOR", "!@in_directive")
      end
      # at line 726:9: ( COLON | QUESTIONMARK | POINTERTO | LCURLY | RCURLY | LSQUARE | RSQUARE | STAR | EQUAL | NOTEQUAL | LESSTHANOREQUALTO | LESSTHAN | GREATERTHANOREQUALTO | GREATERTHAN | DIVIDE | PLUSPLUS | MINUSMINUS | MOD | SHIFTRIGHT | SHIFTLEFT | AND | OR | BITWISEOR | BITWISEXOR | DOT | POINTERTOMBR | DOTMBR | SCOPE | AMPERSAND | PLUS | MINUS | TILDE | ASSIGNEQUAL | TIMESEQUAL | DIVIDEEQUAL | MODEQUAL | PLUSEQUAL | MINUSEQUAL | SHIFTLEFTEQUAL | SHIFTRIGHTEQUAL | BITWISEANDEQUAL | BITWISEXOREQUAL | BITWISEOREQUAL | NOT | ELLIPSIS )
      alt_48 = 45
      alt_48 = @dfa48.predict(@input)
      case alt_48
      when 1
        # at line 726:11: COLON
        colon!

      when 2
        # at line 726:34: QUESTIONMARK
        questionmark!

      when 3
        # at line 727:11: POINTERTO
        pointerto!

      when 4
        # at line 727:34: LCURLY
        lcurly!

      when 5
        # at line 727:53: RCURLY
        rcurly!

      when 6
        # at line 728:11: LSQUARE
        lsquare!

      when 7
        # at line 728:34: RSQUARE
        rsquare!

      when 8
        # at line 728:53: STAR
        star!

      when 9
        # at line 729:11: EQUAL
        equal!

      when 10
        # at line 729:34: NOTEQUAL
        notequal!

      when 11
        # at line 729:53: LESSTHANOREQUALTO
        lessthanorequalto!

      when 12
        # at line 729:75: LESSTHAN
        lessthan!

      when 13
        # at line 730:11: GREATERTHANOREQUALTO
        greaterthanorequalto!

      when 14
        # at line 730:34: GREATERTHAN
        greaterthan!

      when 15
        # at line 730:53: DIVIDE
        divide!

      when 16
        # at line 730:75: PLUSPLUS
        plusplus!

      when 17
        # at line 731:11: MINUSMINUS
        minusminus!

      when 18
        # at line 731:34: MOD
        mod!

      when 19
        # at line 731:53: SHIFTRIGHT
        shiftright!

      when 20
        # at line 731:75: SHIFTLEFT
        shiftleft!

      when 21
        # at line 732:11: AND
        and!

      when 22
        # at line 732:34: OR
        or!

      when 23
        # at line 732:53: BITWISEOR
        bitwiseor!

      when 24
        # at line 732:75: BITWISEXOR
        bitwisexor!

      when 25
        # at line 733:11: DOT
        dot!

      when 26
        # at line 733:34: POINTERTOMBR
        pointertombr!

      when 27
        # at line 733:53: DOTMBR
        dotmbr!

      when 28
        # at line 733:75: SCOPE
        scope!

      when 29
        # at line 734:11: AMPERSAND
        ampersand!

      when 30
        # at line 734:34: PLUS
        plus!

      when 31
        # at line 734:53: MINUS
        minus!

      when 32
        # at line 735:11: TILDE
        tilde!

      when 33
        # at line 735:34: ASSIGNEQUAL
        assignequal!

      when 34
        # at line 735:53: TIMESEQUAL
        timesequal!

      when 35
        # at line 735:75: DIVIDEEQUAL
        divideequal!

      when 36
        # at line 736:11: MODEQUAL
        modequal!

      when 37
        # at line 736:34: PLUSEQUAL
        plusequal!

      when 38
        # at line 736:53: MINUSEQUAL
        minusequal!

      when 39
        # at line 736:75: SHIFTLEFTEQUAL
        shiftleftequal!

      when 40
        # at line 737:11: SHIFTRIGHTEQUAL
        shiftrightequal!

      when 41
        # at line 737:34: BITWISEANDEQUAL
        bitwiseandequal!

      when 42
        # at line 737:53: BITWISEXOREQUAL
        bitwisexorequal!

      when 43
        # at line 737:75: BITWISEOREQUAL
        bitwiseorequal!

      when 44
        # at line 738:11: NOT
        not!

      when 45
        # at line 738:34: ELLIPSIS
        ellipsis!

      end

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 78)

    end

    # lexer rule ckeyword! (CKEYWORD)
    # (in samples/CPP.g)
    def ckeyword!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 79)

      type = CKEYWORD
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 742:9: ({...}? 'typedef' | '__va_list__' | 'extern' | 'static' | 'auto' | 'register' | 'void' | 'char' | 'short' | 'int' | 'long' | 'float' | 'double' | 'signed' | 'unsigned' | '__fpreg' | '__float80' | 'struct' | 'union' | 'enum' | 'const' | 'volatile' | 'case' | 'default' | 'switch' | 'while' | 'do' | 'for' | 'goto' | 'continue' | 'break' | 'return' | 'if' | 'else' )
      alt_49 = 34
      alt_49 = @dfa49.predict(@input)
      case alt_49
      when 1
        # at line 742:11: {...}? 'typedef'
        unless ((!@in_directive))
          raise FailedPredicate("CKEYWORD", "!@in_directive")
        end
        match("typedef")

      when 2
        # at line 743:23: '__va_list__'
        match("__va_list__")

      when 3
        # at line 743:39: 'extern'
        match("extern")

      when 4
        # at line 743:52: 'static'
        match("static")

      when 5
        # at line 743:65: 'auto'
        match("auto")

      when 6
        # at line 743:79: 'register'
        match("register")

      when 7
        # at line 744:11: 'void'
        match("void")

      when 8
        # at line 744:23: 'char'
        match("char")

      when 9
        # at line 744:39: 'short'
        match("short")

      when 10
        # at line 744:52: 'int'
        match("int")

      when 11
        # at line 744:65: 'long'
        match("long")

      when 12
        # at line 744:79: 'float'
        match("float")

      when 13
        # at line 745:11: 'double'
        match("double")

      when 14
        # at line 745:23: 'signed'
        match("signed")

      when 15
        # at line 745:39: 'unsigned'
        match("unsigned")

      when 16
        # at line 745:52: '__fpreg'
        match("__fpreg")

      when 17
        # at line 745:65: '__float80'
        match("__float80")

      when 18
        # at line 745:79: 'struct'
        match("struct")

      when 19
        # at line 746:11: 'union'
        match("union")

      when 20
        # at line 746:23: 'enum'
        match("enum")

      when 21
        # at line 746:39: 'const'
        match("const")

      when 22
        # at line 746:52: 'volatile'
        match("volatile")

      when 23
        # at line 746:65: 'case'
        match("case")

      when 24
        # at line 746:79: 'default'
        match("default")

      when 25
        # at line 747:11: 'switch'
        match("switch")

      when 26
        # at line 747:23: 'while'
        match("while")

      when 27
        # at line 747:39: 'do'
        match("do")

      when 28
        # at line 747:52: 'for'
        match("for")

      when 29
        # at line 747:65: 'goto'
        match("goto")

      when 30
        # at line 747:79: 'continue'
        match("continue")

      when 31
        # at line 748:11: 'break'
        match("break")

      when 32
        # at line 748:23: 'return'
        match("return")

      when 33
        # at line 748:39: 'if'
        match("if")

      when 34
        # at line 748:52: 'else'
        match("else")

      end
      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 79)

    end

    # main rule used to study the input at the current position,
    # and choose the proper lexer rule to call in order to
    # fetch the next token
    # 
    # usually, you don't make direct calls to this method,
    # but instead use the next_token method, which will
    # build and emit the actual next token
    def token!
      # at line 1:8: ( STRING_OP | DIRECTIVE | SIZEOF | DEFINED | IDENTIFIER | STRINGIFICATION | SHARPSHARP | ASSIGNEQUAL | COLON | COMMA | QUESTIONMARK | SEMICOLON | POINTERTO | LPAREN | RPAREN | LSQUARE | RSQUARE | LCURLY | RCURLY | EQUAL | NOTEQUAL | LESSTHANOREQUALTO | LESSTHAN | GREATERTHANOREQUALTO | GREATERTHAN | DIVIDE | DIVIDEEQUAL | PLUS | PLUSEQUAL | PLUSPLUS | MINUS | MINUSEQUAL | MINUSMINUS | STAR | TIMESEQUAL | MOD | MODEQUAL | SHIFTRIGHT | SHIFTRIGHTEQUAL | SHIFTLEFT | SHIFTLEFTEQUAL | AND | NOT | OR | AMPERSAND | BITWISEANDEQUAL | TILDE | BITWISEOR | BITWISEOREQUAL | BITWISEXOR | BITWISEXOREQUAL | DOT | POINTERTOMBR | DOTMBR | SCOPE | ELLIPSIS | CHARACTER_LITERAL | STRING_LITERAL | HEX_LITERAL | DECIMAL_LITERAL | OCTAL_LITERAL | FLOATING_POINT_LITERAL | COMMENT | LINE_COMMENT | WS | End | ESCAPED_NEWLINE | COPERATOR | CKEYWORD )
      alt_50 = 69
      alt_50 = @dfa50.predict(@input)
      case alt_50
      when 1
        # at line 1:10: STRING_OP
        string_op!

      when 2
        # at line 1:20: DIRECTIVE
        directive!

      when 3
        # at line 1:30: SIZEOF
        sizeof!

      when 4
        # at line 1:37: DEFINED
        defined!

      when 5
        # at line 1:45: IDENTIFIER
        identifier!

      when 6
        # at line 1:56: STRINGIFICATION
        stringification!

      when 7
        # at line 1:72: SHARPSHARP
        sharpsharp!

      when 8
        # at line 1:83: ASSIGNEQUAL
        assignequal!

      when 9
        # at line 1:95: COLON
        colon!

      when 10
        # at line 1:101: COMMA
        comma!

      when 11
        # at line 1:107: QUESTIONMARK
        questionmark!

      when 12
        # at line 1:120: SEMICOLON
        semicolon!

      when 13
        # at line 1:130: POINTERTO
        pointerto!

      when 14
        # at line 1:140: LPAREN
        lparen!

      when 15
        # at line 1:147: RPAREN
        rparen!

      when 16
        # at line 1:154: LSQUARE
        lsquare!

      when 17
        # at line 1:162: RSQUARE
        rsquare!

      when 18
        # at line 1:170: LCURLY
        lcurly!

      when 19
        # at line 1:177: RCURLY
        rcurly!

      when 20
        # at line 1:184: EQUAL
        equal!

      when 21
        # at line 1:190: NOTEQUAL
        notequal!

      when 22
        # at line 1:199: LESSTHANOREQUALTO
        lessthanorequalto!

      when 23
        # at line 1:217: LESSTHAN
        lessthan!

      when 24
        # at line 1:226: GREATERTHANOREQUALTO
        greaterthanorequalto!

      when 25
        # at line 1:247: GREATERTHAN
        greaterthan!

      when 26
        # at line 1:259: DIVIDE
        divide!

      when 27
        # at line 1:266: DIVIDEEQUAL
        divideequal!

      when 28
        # at line 1:278: PLUS
        plus!

      when 29
        # at line 1:283: PLUSEQUAL
        plusequal!

      when 30
        # at line 1:293: PLUSPLUS
        plusplus!

      when 31
        # at line 1:302: MINUS
        minus!

      when 32
        # at line 1:308: MINUSEQUAL
        minusequal!

      when 33
        # at line 1:319: MINUSMINUS
        minusminus!

      when 34
        # at line 1:330: STAR
        star!

      when 35
        # at line 1:335: TIMESEQUAL
        timesequal!

      when 36
        # at line 1:346: MOD
        mod!

      when 37
        # at line 1:350: MODEQUAL
        modequal!

      when 38
        # at line 1:359: SHIFTRIGHT
        shiftright!

      when 39
        # at line 1:370: SHIFTRIGHTEQUAL
        shiftrightequal!

      when 40
        # at line 1:386: SHIFTLEFT
        shiftleft!

      when 41
        # at line 1:396: SHIFTLEFTEQUAL
        shiftleftequal!

      when 42
        # at line 1:411: AND
        and!

      when 43
        # at line 1:415: NOT
        not!

      when 44
        # at line 1:419: OR
        or!

      when 45
        # at line 1:422: AMPERSAND
        ampersand!

      when 46
        # at line 1:432: BITWISEANDEQUAL
        bitwiseandequal!

      when 47
        # at line 1:448: TILDE
        tilde!

      when 48
        # at line 1:454: BITWISEOR
        bitwiseor!

      when 49
        # at line 1:464: BITWISEOREQUAL
        bitwiseorequal!

      when 50
        # at line 1:479: BITWISEXOR
        bitwisexor!

      when 51
        # at line 1:490: BITWISEXOREQUAL
        bitwisexorequal!

      when 52
        # at line 1:506: DOT
        dot!

      when 53
        # at line 1:510: POINTERTOMBR
        pointertombr!

      when 54
        # at line 1:523: DOTMBR
        dotmbr!

      when 55
        # at line 1:530: SCOPE
        scope!

      when 56
        # at line 1:536: ELLIPSIS
        ellipsis!

      when 57
        # at line 1:545: CHARACTER_LITERAL
        character_literal!

      when 58
        # at line 1:563: STRING_LITERAL
        string_literal!

      when 59
        # at line 1:578: HEX_LITERAL
        hex_literal!

      when 60
        # at line 1:590: DECIMAL_LITERAL
        decimal_literal!

      when 61
        # at line 1:606: OCTAL_LITERAL
        octal_literal!

      when 62
        # at line 1:620: FLOATING_POINT_LITERAL
        floating_point_literal!

      when 63
        # at line 1:643: COMMENT
        comment!

      when 64
        # at line 1:651: LINE_COMMENT
        line_comment!

      when 65
        # at line 1:664: WS
        ws!

      when 66
        # at line 1:667: End
        end!

      when 67
        # at line 1:671: ESCAPED_NEWLINE
        escaped_newline!

      when 68
        # at line 1:687: COPERATOR
        coperator!

      when 69
        # at line 1:697: CKEYWORD
        ckeyword!

      end
    end
    # parser rule synpred_1_cpp! (synpred1_CPP)
    # 
    # (in samples/CPP.g)
    # 
    def synpred_1_cpp!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 81)

      # at line 424:16: '/*'
      match("/*")

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 81)

    end
    # parser rule synpred_2_cpp! (synpred2_CPP)
    # 
    # (in samples/CPP.g)
    # 
    def synpred_2_cpp!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 82)

      # at line 425:16: '\\\\\\n'
      match("\\\n")

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 82)

    end
    # parser rule synpred_3_cpp! (synpred3_CPP)
    # 
    # (in samples/CPP.g)
    # 
    def synpred_3_cpp!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 83)

      # at line 426:16: '\\\\\\r\\n'
      match("\\\r\n")

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 83)

    end

    
    # - - - - - - - - - - DFA definitions - - - - - - - - - - -
    class DFA6 < ANTLR3::DFA
      EOT = unpack(8, -1, 1, 16, 23, -1)
      EOF = unpack(32, -1)
      MIN = unpack(1, 100, 1, 102, 1, 108, 5, -1, 1, 100, 1, 99, 1, 105, 
                   6, -1, 1, 108, 2, -1, 1, 117, 1, 100, 1, 101, 1, 9, 1, 
                   110, 1, 9, 1, 101, 2, -1, 1, 120, 1, 116, 1, 9)
      MAX = unpack(1, 119, 1, 110, 1, 120, 5, -1, 1, 110, 1, 99, 1, 115, 
                   6, -1, 1, 108, 2, -1, 1, 117, 1, 100, 1, 101, 1, 95, 
                   1, 110, 1, 122, 1, 101, 2, -1, 1, 120, 1, 116, 1, 32)
      ACCEPT = unpack(3, -1, 1, 7, 1, 8, 1, 9, 1, 13, 1, 15, 3, -1, 1, 6, 
                      1, 10, 1, 14, 1, 1, 1, 2, 1, 3, 1, -1, 1, 4, 1, 5, 
                      7, -1, 1, 12, 1, 11, 3, -1)
      SPECIAL = unpack(32, -1)
      TRANSITION = [
        unpack(1, 5, 1, 2, 3, -1, 1, 1, 2, -1, 1, 3, 3, -1, 1, 7, 4, -1, 
               1, 4, 1, -1, 1, 6),
        unpack(1, 8, 7, -1, 1, 9),
        unpack(1, 10, 1, -1, 1, 11, 3, -1, 1, 13, 5, -1, 1, 12),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(1, 14, 9, -1, 1, 15),
        unpack(1, 17),
        unpack(1, 18, 9, -1, 1, 19),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(1, 20),
        unpack(),
        unpack(),
        unpack(1, 21),
        unpack(1, 22),
        unpack(1, 23),
        unpack(1, 25, 2, -1, 2, 25, 18, -1, 1, 25, 62, -1, 1, 24),
        unpack(1, 26),
        unpack(1, 25, 2, -1, 2, 25, 18, -1, 1, 25, 1, -1, 1, 27, 1, -1, 
                1, 28, 23, -1, 1, 27, 4, -1, 26, 28, 4, -1, 1, 28, 1, -1, 
                26, 28),
        unpack(1, 29),
        unpack(),
        unpack(),
        unpack(1, 30),
        unpack(1, 31),
        unpack(1, 25, 2, -1, 2, 25, 18, -1, 1, 25)
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 6
      

      def description
        <<-'__dfa_description__'.strip!
          351:5: ( 'ifdef' | 'ifndef' | 'if' | 'elif' | 'else' | 'endif' | 'line' | 'undef' WS | 'define' WS | 'exec_macro_expression' | ( 'include' | 'include_next' ) WS f= IDENTIFIER | ( 'include' | 'include_next' ) WS f= INCLUDE_FILE | 'warning' m= MACRO_TEXT | 'error' (m= MACRO_TEXT )? | 'pragma' m= MACRO_TEXT )
        __dfa_description__
      end
    end
    class DFA3 < ANTLR3::DFA
      EOT = unpack(10, -1)
      EOF = unpack(10, -1)
      MIN = unpack(1, 105, 1, 110, 1, 99, 1, 108, 1, 117, 1, 100, 1, 101, 
                   1, 9, 2, -1)
      MAX = unpack(1, 105, 1, 110, 1, 99, 1, 108, 1, 117, 1, 100, 1, 101, 
                   1, 95, 2, -1)
      ACCEPT = unpack(8, -1, 1, 2, 1, 1)
      SPECIAL = unpack(10, -1)
      TRANSITION = [
        unpack(1, 1),
        unpack(1, 2),
        unpack(1, 3),
        unpack(1, 4),
        unpack(1, 5),
        unpack(1, 6),
        unpack(1, 7),
        unpack(1, 9, 2, -1, 2, 9, 18, -1, 1, 9, 62, -1, 1, 8),
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
          405:7: ( 'include' | 'include_next' )
        __dfa_description__
      end
    end
    class DFA4 < ANTLR3::DFA
      EOT = unpack(10, -1)
      EOF = unpack(10, -1)
      MIN = unpack(1, 105, 1, 110, 1, 99, 1, 108, 1, 117, 1, 100, 1, 101, 
                   1, 9, 2, -1)
      MAX = unpack(1, 105, 1, 110, 1, 99, 1, 108, 1, 117, 1, 100, 1, 101, 
                   1, 95, 2, -1)
      ACCEPT = unpack(8, -1, 1, 2, 1, 1)
      SPECIAL = unpack(10, -1)
      TRANSITION = [
        unpack(1, 1),
        unpack(1, 2),
        unpack(1, 3),
        unpack(1, 4),
        unpack(1, 5),
        unpack(1, 6),
        unpack(1, 7),
        unpack(1, 9, 2, -1, 2, 9, 18, -1, 1, 9, 62, -1, 1, 8),
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
          411:7: ( 'include' | 'include_next' )
        __dfa_description__
      end
    end
    class DFA8 < ANTLR3::DFA
      EOT = unpack(1, 1, 1, -1, 2, 4, 1, -1, 1, 4, 1, -1, 4, 4, 5, -1, 1, 
                   4)
      EOF = unpack(17, -1)
      MIN = unpack(1, 0, 1, -1, 1, 42, 1, 10, 1, -1, 6, 0, 3, -1, 3, 0)
      MAX = unpack(1, -1, 1, -1, 1, 42, 1, 10, 1, -1, 1, -1, 1, 0, 4, -1, 
                   3, -1, 2, 0, 1, -1)
      ACCEPT = unpack(1, -1, 1, 5, 2, -1, 1, 4, 6, -1, 1, 1, 1, 2, 1, 3, 
                      3, -1)
      SPECIAL = unpack(1, 0, 4, -1, 1, 8, 1, 7, 1, 1, 1, 3, 1, 5, 1, 2, 
                       3, -1, 1, 9, 1, 4, 1, 6)
      TRANSITION = [
        unpack(10, 4, 1, -1, 36, 4, 1, 2, 44, 4, 1, 3, 65443, 4),
        unpack(),
        unpack(1, 5),
        unpack(1, 6),
        unpack(),
        unpack(10, 10, 1, 11, 31, 10, 1, 7, 4, 10, 1, 8, 44, 10, 1, 9, 
                65443, 10),
        unpack(1, -1),
        unpack(10, 10, 1, 11, 31, 10, 1, 7, 4, 10, 1, 14, 44, 10, 1, 9, 
                65443, 10),
        unpack(10, 10, 1, 11, 31, 10, 1, 15, 4, 10, 1, 8, 44, 10, 1, 9, 
                65443, 10),
        unpack(10, 10, 1, 16, 31, 10, 1, 7, 4, 10, 1, 8, 44, 10, 1, 9, 
                65443, 10),
        unpack(10, 10, 1, 11, 31, 10, 1, 7, 4, 10, 1, 8, 44, 10, 1, 9, 
                65443, 10),
        unpack(),
        unpack(),
        unpack(),
        unpack(1, -1),
        unpack(1, -1),
        unpack(10, 10, 1, 11, 31, 10, 1, 7, 4, 10, 1, 8, 44, 10, 1, 9, 
                65443, 10)
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 8
      

      def description
        <<-'__dfa_description__'.strip!
          ()+ loopback of 424:13: ( ( '/*' )=> '/*' ( . )* '*/' | ( '\\\\\\n' )=> ( '\\\\\\n' ) | ( '\\\\\\r\\n' )=> ( '\\\\\\n' ) | ~ '\\n' )+
        __dfa_description__
      end
    end
    class DFA15 < ANTLR3::DFA
      EOT = unpack(4, -1, 1, 3, 6, -1)
      EOF = unpack(11, -1)
      MIN = unpack(1, 0, 1, -1, 1, 0, 1, -1, 2, 0, 5, -1)
      MAX = unpack(1, -1, 1, -1, 1, -1, 1, -1, 2, -1, 5, -1)
      ACCEPT = unpack(1, -1, 1, 3, 1, -1, 1, 2, 2, -1, 5, 1)
      SPECIAL = unpack(1, 0, 1, -1, 1, 3, 1, -1, 1, 1, 1, 2, 5, -1)
      TRANSITION = [
        unpack(34, 3, 1, 1, 57, 3, 1, 2, 65443, 3),
        unpack(),
        unpack(34, 3, 1, 4, 4, 3, 1, 7, 8, 3, 4, 8, 4, 9, 36, 3, 1, 6, 
                5, 3, 1, 7, 3, 3, 1, 7, 7, 3, 1, 7, 3, 3, 1, 7, 1, 3, 1, 
                7, 1, 3, 1, 7, 1, 3, 1, 5, 65415, 3),
        unpack(),
        unpack(0, 9),
        unpack(48, 3, 10, 10, 7, 3, 6, 10, 26, 3, 6, 10, 65433, 3),
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
          ()* loopback of 585:17: ( EscapeSequence | ~ ( '\"' ) )*
        __dfa_description__
      end
    end
    class DFA34 < ANTLR3::DFA
      EOT = unpack(6, -1)
      EOF = unpack(6, -1)
      MIN = unpack(2, 46, 4, -1)
      MAX = unpack(1, 57, 1, 102, 4, -1)
      ACCEPT = unpack(2, -1, 1, 2, 1, 3, 1, 4, 1, 1)
      SPECIAL = unpack(6, -1)
      TRANSITION = [
        unpack(1, 2, 1, -1, 10, 1),
        unpack(1, 5, 1, -1, 10, 1, 10, -1, 1, 4, 1, 3, 1, 4, 29, -1, 1, 
                4, 1, 3, 1, 4),
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
      
      @decision = 34
      

      def description
        <<-'__dfa_description__'.strip!
          608:1: FLOATING_POINT_LITERAL : ( ( '0' .. '9' )+ '.' ( '0' .. '9' )* ( Exponent )? ( FloatTypeSuffix )? | '.' ( '0' .. '9' )+ ( Exponent )? ( FloatTypeSuffix )? | ( '0' .. '9' )+ Exponent ( FloatTypeSuffix )? | ( '0' .. '9' )+ FloatTypeSuffix );
        __dfa_description__
      end
    end
    class DFA48 < ANTLR3::DFA
      EOT = unpack(1, -1, 1, 22, 1, -1, 1, 26, 4, -1, 1, 28, 1, 30, 1, 32, 
                   1, 35, 1, 38, 1, 40, 1, 43, 1, 45, 1, 48, 1, 51, 1, 53, 
                   1, 56, 3, -1, 1, 58, 10, -1, 1, 60, 2, -1, 1, 62, 25, 
                   -1)
      EOF = unpack(63, -1)
      MIN = unpack(1, 33, 1, 58, 1, -1, 1, 45, 4, -1, 3, 61, 1, 60, 2, 61, 
                   1, 43, 1, 61, 1, 38, 2, 61, 1, 42, 3, -1, 1, 42, 10, 
                   -1, 1, 61, 2, -1, 1, 61, 25, -1)
      MAX = unpack(1, 126, 1, 58, 1, -1, 1, 62, 4, -1, 4, 61, 1, 62, 4, 
                   61, 1, 124, 1, 61, 1, 46, 3, -1, 1, 42, 10, -1, 1, 61, 
                   2, -1, 1, 61, 25, -1)
      ACCEPT = unpack(2, -1, 1, 2, 1, -1, 1, 4, 1, 5, 1, 6, 1, 7, 12, -1, 
                      1, 32, 1, 28, 1, 1, 1, -1, 1, 17, 1, 38, 1, 31, 1, 
                      34, 1, 8, 1, 9, 1, 33, 1, 10, 1, 44, 1, 11, 1, -1, 
                      1, 12, 1, 13, 1, -1, 1, 14, 1, 35, 1, 15, 1, 16, 1, 
                      37, 1, 30, 1, 36, 1, 18, 1, 21, 1, 41, 1, 29, 1, 22, 
                      1, 43, 1, 23, 1, 42, 1, 24, 1, 27, 1, 45, 1, 25, 1, 
                      26, 1, 3, 1, 39, 1, 20, 1, 40, 1, 19)
      SPECIAL = unpack(63, -1)
      TRANSITION = [
        unpack(1, 10, 3, -1, 1, 15, 1, 16, 3, -1, 1, 8, 1, 14, 1, -1, 1, 
               3, 1, 19, 1, 13, 10, -1, 1, 1, 1, -1, 1, 11, 1, 9, 1, 12, 
               1, 2, 27, -1, 1, 6, 1, -1, 1, 7, 1, 18, 28, -1, 1, 4, 1, 
               17, 1, 5, 1, 20),
        unpack(1, 21),
        unpack(),
        unpack(1, 24, 15, -1, 1, 25, 1, 23),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(1, 27),
        unpack(1, 29),
        unpack(1, 31),
        unpack(1, 34, 1, 33),
        unpack(1, 36, 1, 37),
        unpack(1, 39),
        unpack(1, 41, 17, -1, 1, 42),
        unpack(1, 44),
        unpack(1, 46, 22, -1, 1, 47),
        unpack(1, 50, 62, -1, 1, 49),
        unpack(1, 52),
        unpack(1, 54, 3, -1, 1, 55),
        unpack(),
        unpack(),
        unpack(),
        unpack(1, 57),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(1, 59),
        unpack(),
        unpack(),
        unpack(1, 61),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
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
      
      @decision = 48
      

      def description
        <<-'__dfa_description__'.strip!
          726:9: ( COLON | QUESTIONMARK | POINTERTO | LCURLY | RCURLY | LSQUARE | RSQUARE | STAR | EQUAL | NOTEQUAL | LESSTHANOREQUALTO | LESSTHAN | GREATERTHANOREQUALTO | GREATERTHAN | DIVIDE | PLUSPLUS | MINUSMINUS | MOD | SHIFTRIGHT | SHIFTLEFT | AND | OR | BITWISEOR | BITWISEXOR | DOT | POINTERTOMBR | DOTMBR | SCOPE | AMPERSAND | PLUS | MINUS | TILDE | ASSIGNEQUAL | TIMESEQUAL | DIVIDEEQUAL | MODEQUAL | PLUSEQUAL | MINUSEQUAL | SHIFTLEFTEQUAL | SHIFTRIGHTEQUAL | BITWISEANDEQUAL | BITWISEXOREQUAL | BITWISEOREQUAL | NOT | ELLIPSIS )
        __dfa_description__
      end
    end
    class DFA49 < ANTLR3::DFA
      EOT = unpack(34, -1, 1, 47, 19, -1)
      EOF = unpack(54, -1)
      MIN = unpack(1, 95, 1, -1, 1, 95, 1, 108, 1, 104, 1, -1, 1, 101, 1, 
                   111, 1, 97, 1, 102, 1, -1, 1, 108, 1, 101, 1, 110, 3, 
                   -1, 1, 102, 3, -1, 1, 97, 3, -1, 1, 103, 1, 105, 1, -1, 
                   1, 110, 5, -1, 1, 117, 1, -1, 1, 105, 1, -1, 1, 108, 
                   6, -1, 1, 115, 8, -1)
      MAX = unpack(1, 119, 1, -1, 1, 95, 1, 120, 1, 119, 1, -1, 1, 101, 
                   2, 111, 1, 110, 1, -1, 2, 111, 1, 110, 3, -1, 1, 118, 
                   3, -1, 1, 114, 3, -1, 1, 116, 1, 108, 1, -1, 1, 110, 
                   5, -1, 1, 117, 1, -1, 1, 115, 1, -1, 1, 112, 6, -1, 1, 
                   116, 8, -1)
      ACCEPT = unpack(1, -1, 1, 1, 3, -1, 1, 5, 4, -1, 1, 11, 3, -1, 1, 
                      26, 1, 29, 1, 31, 1, -1, 1, 3, 1, 20, 1, 34, 1, -1, 
                      1, 9, 1, 14, 1, 25, 2, -1, 1, 8, 1, -1, 1, 23, 1, 
                      10, 1, 33, 1, 12, 1, 28, 1, -1, 1, 24, 1, -1, 1, 2, 
                      1, -1, 1, 4, 1, 18, 1, 6, 1, 32, 1, 7, 1, 22, 1, -1, 
                      1, 13, 1, 27, 1, 15, 1, 19, 1, 16, 1, 17, 1, 21, 1, 
                      30)
      SPECIAL = unpack(54, -1)
      TRANSITION = [
        unpack(1, 2, 1, -1, 1, 5, 1, 16, 1, 8, 1, 12, 1, 3, 1, 11, 1, 15, 
               1, -1, 1, 9, 2, -1, 1, 10, 5, -1, 1, 6, 1, 4, 1, 1, 1, 13, 
               1, 7, 1, 14),
        unpack(),
        unpack(1, 17),
        unpack(1, 20, 1, -1, 1, 19, 9, -1, 1, 18),
        unpack(1, 22, 1, 23, 10, -1, 1, 21, 2, -1, 1, 24),
        unpack(),
        unpack(1, 25),
        unpack(1, 26),
        unpack(1, 29, 6, -1, 1, 27, 6, -1, 1, 28),
        unpack(1, 31, 7, -1, 1, 30),
        unpack(),
        unpack(1, 32, 2, -1, 1, 33),
        unpack(1, 35, 9, -1, 1, 34),
        unpack(1, 36),
        unpack(),
        unpack(),
        unpack(),
        unpack(1, 38, 15, -1, 1, 37),
        unpack(),
        unpack(),
        unpack(),
        unpack(1, 39, 16, -1, 1, 40),
        unpack(),
        unpack(),
        unpack(),
        unpack(1, 41, 12, -1, 1, 42),
        unpack(1, 43, 2, -1, 1, 44),
        unpack(),
        unpack(1, 45),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(1, 46),
        unpack(),
        unpack(1, 49, 9, -1, 1, 48),
        unpack(),
        unpack(1, 51, 3, -1, 1, 50),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(1, 52, 1, 53),
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
          742:1: CKEYWORD : ({...}? 'typedef' | '__va_list__' | 'extern' | 'static' | 'auto' | 'register' | 'void' | 'char' | 'short' | 'int' | 'long' | 'float' | 'double' | 'signed' | 'unsigned' | '__fpreg' | '__float80' | 'struct' | 'union' | 'enum' | 'const' | 'volatile' | 'case' | 'default' | 'switch' | 'while' | 'do' | 'for' | 'goto' | 'continue' | 'break' | 'return' | 'if' | 'else' );
        __dfa_description__
      end
    end
    class DFA50 < ANTLR3::DFA
      EOT = unpack(2, -1, 3, 50, 1, 69, 1, 71, 1, -1, 1, 72, 1, -1, 1, 76, 
                   2, -1, 1, 77, 1, 78, 1, 79, 1, 80, 1, 82, 1, 85, 1, 88, 
                   1, 92, 1, 95, 1, 97, 1, 99, 1, 102, 1, 105, 1, 106, 1, 
                   108, 1, 112, 1, 50, 2, -1, 2, 116, 1, 118, 2, -1, 13, 
                   50, 1, -1, 1, 61, 2, -1, 7, 61, 1, -1, 6, 50, 1, 158, 
                   1, -1, 1, 161, 2, -1, 1, 165, 1, 166, 1, 167, 5, -1, 
                   1, 173, 1, -1, 1, 175, 1, 177, 1, -1, 1, 179, 1, 181, 
                   1, -1, 1, 183, 3, -1, 1, 185, 1, 186, 1, -1, 1, 188, 
                   1, -1, 1, 190, 1, -1, 1, 192, 1, 193, 1, -1, 1, 195, 
                   1, 196, 2, -1, 1, 199, 1, -1, 1, 201, 3, -1, 1, 50, 1, 
                   -1, 1, 205, 1, -1, 1, 116, 1, -1, 11, 50, 1, -1, 7, 50, 
                   1, -1, 1, 230, 10, 61, 8, 50, 6, -1, 1, 253, 11, -1, 
                   1, 259, 3, -1, 1, 262, 21, -1, 1, 275, 1, -1, 1, 50, 
                   1, -1, 13, 50, 1, -1, 2, 50, 1, -1, 5, 50, 2, 61, 1, 
                   -1, 11, 61, 9, 50, 25, -1, 5, 50, 3, -1, 2, 50, 1, -1, 
                   1, 50, 1, -1, 2, 50, 2, -1, 4, 50, 1, -1, 1, 50, 2, 61, 
                   1, -1, 1, 61, 2, 230, 3, 61, 1, 230, 4, 61, 4, 50, 1, 
                   -1, 4, 50, 4, -1, 8, 50, 1, -1, 1, 50, 1, -1, 1, 50, 
                   3, -1, 1, 230, 2, 61, 1, 230, 1, 61, 1, 230, 4, 61, 1, 
                   376, 4, -1, 2, 50, 1, -1, 4, 50, 1, -1, 1, 50, 1, -1, 
                   3, 50, 1, 230, 2, 61, 1, 230, 3, 61, 1, -1, 1, 391, 1, 
                   -1, 1, 392, 1, 50, 1, -1, 5, 50, 3, 61, 1, 230, 2, -1, 
                   2, 50, 4, -1, 2, 61, 1, 230, 1, -1, 1, 50, 1, -1, 2, 
                   61, 1, 50, 2, 61, 1, -1, 12, 61, 1, 230)
      EOF = unpack(424, -1)
      MIN = unpack(2, 9, 1, 104, 1, 101, 1, 39, 1, 61, 1, 58, 1, -1, 1, 
                   0, 1, -1, 1, 45, 2, -1, 4, 0, 1, 61, 1, 60, 1, 61, 1, 
                   42, 1, 43, 2, 61, 1, 38, 1, 61, 1, 0, 1, 61, 1, 42, 1, 
                   121, 2, -1, 2, 46, 1, 9, 2, -1, 1, 95, 1, 108, 1, 117, 
                   1, 101, 1, 111, 1, 97, 1, 102, 1, 111, 1, 108, 1, 110, 
                   1, 104, 1, 111, 1, 114, 1, -1, 1, 35, 1, -1, 1, 9, 1, 
                   102, 1, 108, 1, 105, 1, 110, 1, 101, 1, 97, 1, 114, 1, 
                   -1, 1, 103, 1, 97, 1, 111, 1, 105, 1, 102, 1, 117, 5, 
                   0, 1, 42, 10, 0, 1, 61, 2, 0, 1, 61, 2, 0, 2, -1, 18, 
                   0, 1, 46, 1, -1, 1, 0, 1, 112, 1, -1, 1, 46, 1, -1, 1, 
                   46, 1, -1, 1, 102, 1, 116, 1, 117, 1, 115, 1, 116, 1, 
                   103, 1, 105, 1, 97, 1, 110, 1, 115, 1, 116, 1, -1, 1, 
                   110, 1, 111, 1, 114, 2, 105, 1, 116, 1, 101, 1, -1, 1, 
                   36, 1, 99, 1, 105, 1, 100, 1, 101, 1, 114, 1, 110, 1, 
                   100, 1, 102, 1, 114, 1, 97, 1, 101, 1, 110, 1, 116, 1, 
                   117, 1, 114, 1, 116, 1, 97, 1, 98, 1, 0, 2, -1, 1, 0, 
                   2, -1, 4, 0, 5, -1, 1, 0, 1, -1, 3, 0, 1, -1, 3, 0, 1, 
                   -1, 1, 0, 1, -1, 2, 0, 1, -1, 1, 0, 1, -1, 1, 0, 1, -1, 
                   2, 0, 1, -1, 2, 0, 2, -1, 1, 0, 1, -1, 2, 0, 1, -1, 1, 
                   101, 1, -1, 1, 97, 1, 108, 1, 101, 1, 109, 1, 101, 1, 
                   111, 1, 105, 1, 117, 1, 100, 1, 97, 1, 114, 1, 115, 1, 
                   101, 1, -1, 1, 103, 1, 97, 1, -1, 1, 105, 1, 111, 1, 
                   108, 1, 111, 1, 97, 1, 101, 1, 100, 1, 0, 1, 108, 1, 
                   102, 1, 101, 1, 105, 1, 99, 1, 111, 2, 101, 1, 105, 1, 
                   110, 1, 103, 1, 111, 1, 101, 1, 105, 1, 99, 1, 116, 1, 
                   99, 1, 110, 1, 117, 1, 108, 2, -1, 1, 0, 5, -1, 1, 0, 
                   2, -1, 1, 0, 12, -1, 1, 0, 1, 100, 1, 95, 1, 114, 1, 
                   111, 1, 114, 3, -1, 1, 115, 1, 114, 1, -1, 1, 116, 1, 
                   -1, 1, 116, 1, 105, 2, -1, 1, 116, 1, 103, 1, 110, 1, 
                   101, 1, -1, 1, 107, 1, 102, 1, 101, 1, -1, 1, 117, 2, 
                   36, 1, 102, 1, 95, 1, 114, 1, 36, 1, 102, 1, 110, 1, 
                   105, 1, 109, 1, 102, 1, 100, 1, 99, 1, 116, 1, -1, 1, 
                   104, 1, 101, 1, 108, 1, 101, 4, -1, 1, 101, 1, 108, 1, 
                   101, 1, 97, 1, 110, 1, 116, 1, 110, 1, 105, 1, -1, 1, 
                   110, 1, -1, 1, 110, 3, -1, 1, 36, 1, 102, 1, 100, 1, 
                   36, 1, 109, 1, 0, 1, 9, 1, 101, 1, 110, 1, 97, 1, 36, 
                   4, -1, 1, 100, 1, 116, 1, -1, 1, 102, 1, 105, 1, 103, 
                   1, 116, 1, -1, 1, 101, 1, -1, 1, 108, 1, 117, 1, 101, 
                   1, 36, 1, 101, 1, 97, 1, 0, 1, 9, 1, 103, 1, 0, 1, -1, 
                   1, 36, 1, -1, 1, 36, 1, 115, 1, -1, 1, 56, 1, 114, 2, 
                   101, 1, 100, 1, 9, 1, 99, 2, 0, 1, -1, 1, 0, 1, 116, 
                   1, 48, 4, -1, 1, 110, 1, 114, 1, 0, 1, -1, 1, 95, 1, 
                   -1, 1, 101, 1, 111, 1, 95, 1, 120, 1, 95, 1, -1, 1, 116, 
                   1, 101, 1, 9, 1, 120, 1, 112, 1, 114, 1, 101, 2, 115, 
                   1, 105, 1, 111, 1, 110, 1, 36)
      MAX = unpack(1, 126, 1, 122, 1, 119, 1, 111, 1, 39, 1, 61, 1, 58, 
                   1, -1, 1, 0, 1, -1, 1, 62, 2, -1, 4, 0, 2, 61, 1, 62, 
                   1, 92, 4, 61, 1, 124, 1, 0, 1, 61, 1, 57, 1, 121, 2, 
                   -1, 1, 120, 1, 102, 1, 32, 2, -1, 1, 95, 1, 120, 1, 117, 
                   1, 101, 2, 111, 1, 110, 2, 111, 1, 110, 1, 104, 1, 111, 
                   1, 114, 1, -1, 1, 35, 1, -1, 1, 122, 1, 110, 1, 120, 
                   1, 105, 1, 110, 1, 101, 1, 97, 1, 114, 1, -1, 1, 122, 
                   1, 114, 1, 111, 1, 105, 1, 102, 1, 117, 5, 0, 1, 42, 
                   10, 0, 1, 61, 2, 0, 1, 61, 2, 0, 2, -1, 18, 0, 1, 46, 
                   1, -1, 1, 0, 1, 112, 1, -1, 1, 102, 1, -1, 1, 102, 1, 
                   -1, 1, 118, 1, 116, 1, 117, 1, 115, 2, 116, 1, 108, 1, 
                   97, 1, 110, 1, 115, 1, 116, 1, -1, 1, 110, 1, 111, 1, 
                   114, 1, 115, 1, 105, 1, 116, 1, 101, 1, -1, 1, 122, 1, 
                   99, 1, 115, 1, 100, 1, 101, 1, 114, 1, 110, 1, 100, 1, 
                   102, 1, 114, 1, 97, 1, 101, 1, 110, 1, 116, 1, 117, 1, 
                   114, 1, 116, 1, 105, 1, 98, 1, 0, 2, -1, 1, 0, 2, -1, 
                   4, 0, 5, -1, 1, 0, 1, -1, 3, 0, 1, -1, 3, 0, 1, -1, 1, 
                   0, 1, -1, 2, 0, 1, -1, 1, 0, 1, -1, 1, 0, 1, -1, 2, 0, 
                   1, -1, 2, 0, 2, -1, 1, 0, 1, -1, 2, 0, 1, -1, 1, 101, 
                   1, -1, 1, 97, 1, 112, 1, 101, 1, 109, 1, 101, 1, 111, 
                   1, 105, 1, 117, 1, 100, 1, 97, 1, 114, 1, 116, 1, 101, 
                   1, -1, 1, 103, 1, 97, 1, -1, 1, 105, 1, 111, 1, 108, 
                   1, 111, 1, 97, 1, 101, 1, 100, 1, 0, 1, 108, 1, 102, 
                   1, 101, 1, 105, 1, 99, 1, 111, 2, 101, 1, 105, 1, 110, 
                   1, 103, 1, 111, 1, 101, 1, 105, 1, 99, 1, 116, 1, 99, 
                   1, 110, 1, 117, 1, 108, 2, -1, 1, 0, 5, -1, 1, 0, 2, 
                   -1, 1, 0, 12, -1, 1, 0, 1, 100, 1, 95, 1, 114, 1, 111, 
                   1, 114, 3, -1, 1, 115, 1, 114, 1, -1, 1, 116, 1, -1, 
                   1, 116, 1, 105, 2, -1, 1, 116, 1, 103, 1, 110, 1, 101, 
                   1, -1, 1, 107, 1, 102, 1, 101, 1, -1, 1, 117, 2, 122, 
                   1, 102, 1, 95, 1, 114, 1, 122, 1, 102, 1, 110, 1, 105, 
                   1, 109, 1, 102, 1, 100, 1, 99, 1, 116, 1, -1, 1, 104, 
                   1, 101, 1, 108, 1, 101, 4, -1, 1, 101, 1, 108, 1, 101, 
                   1, 97, 1, 110, 1, 116, 1, 110, 1, 105, 1, -1, 1, 110, 
                   1, -1, 1, 110, 3, -1, 1, 122, 1, 102, 1, 100, 1, 122, 
                   1, 109, 1, -1, 1, 32, 1, 101, 1, 110, 1, 97, 1, 122, 
                   4, -1, 1, 100, 1, 116, 1, -1, 1, 102, 1, 105, 1, 103, 
                   1, 116, 1, -1, 1, 101, 1, -1, 1, 108, 1, 117, 1, 101, 
                   1, 122, 1, 101, 1, 97, 1, -1, 1, 32, 1, 103, 1, -1, 1, 
                   -1, 1, 122, 1, -1, 1, 122, 1, 115, 1, -1, 1, 56, 1, 114, 
                   2, 101, 1, 100, 1, 95, 1, 99, 2, -1, 1, -1, 1, 0, 1, 
                   116, 1, 48, 4, -1, 1, 110, 1, 114, 1, -1, 1, -1, 1, 95, 
                   1, -1, 1, 101, 1, 111, 1, 95, 1, 120, 1, 95, 1, -1, 1, 
                   116, 1, 101, 1, 32, 1, 120, 1, 112, 1, 114, 1, 101, 2, 
                   115, 1, 105, 1, 111, 1, 110, 1, 122)
      ACCEPT = unpack(7, -1, 1, 10, 1, -1, 1, 12, 1, -1, 1, 14, 1, 15, 17, 
                      -1, 1, 57, 1, 58, 3, -1, 1, 66, 1, 67, 13, -1, 1, 
                      5, 1, -1, 1, 7, 8, -1, 1, 1, 28, -1, 1, 63, 1, 64, 
                      19, -1, 1, 62, 2, -1, 1, 59, 1, -1, 1, 60, 1, -1, 
                      1, 65, 11, -1, 1, 5, 7, -1, 1, 6, 20, -1, 1, 8, 1, 
                      68, 1, -1, 1, 9, 1, 11, 4, -1, 1, 31, 1, 16, 1, 17, 
                      1, 18, 1, 19, 1, -1, 1, 43, 3, -1, 1, 23, 3, -1, 1, 
                      25, 1, -1, 1, 26, 2, -1, 1, 28, 1, -1, 1, 34, 1, -1, 
                      1, 36, 2, -1, 1, 45, 2, -1, 1, 48, 1, 47, 1, -1, 1, 
                      50, 2, -1, 1, 52, 1, -1, 1, 61, 13, -1, 1, 5, 2, -1, 
                      1, 5, 28, -1, 1, 20, 1, 55, 1, -1, 1, 13, 1, 32, 1, 
                      33, 1, 21, 1, 22, 1, -1, 1, 40, 1, 24, 1, -1, 1, 38, 
                      1, 27, 1, 29, 1, 30, 1, 35, 1, 37, 1, 42, 1, 46, 1, 
                      44, 1, 49, 1, 51, 1, 54, 6, -1, 3, 5, 2, -1, 1, 5, 
                      1, -1, 1, 5, 2, -1, 2, 5, 4, -1, 1, 5, 3, -1, 1, 2, 
                      15, -1, 1, 5, 4, -1, 1, 53, 1, 41, 1, 39, 1, 56, 8, 
                      -1, 1, 5, 1, -1, 1, 5, 1, -1, 3, 5, 11, -1, 4, 5, 
                      2, -1, 1, 5, 4, -1, 1, 5, 1, -1, 1, 5, 10, -1, 1, 
                      3, 1, -1, 1, 5, 2, -1, 1, 5, 9, -1, 1, 4, 3, -1, 4, 
                      5, 3, -1, 1, 69, 1, -1, 1, 5, 5, -1, 1, 5, 13, -1)
      SPECIAL = unpack(69, -1, 1, 43, 1, -1, 1, 44, 1, 45, 3, -1, 1, 9, 
                       1, 8, 1, 7, 1, 6, 1, 5, 1, -1, 1, 30, 2, -1, 1, 1, 
                       2, -1, 1, 15, 3, -1, 1, 14, 2, -1, 1, 12, 1, -1, 
                       1, 21, 1, -1, 1, 19, 2, -1, 1, 28, 2, -1, 1, 38, 
                       1, 26, 1, -1, 1, 40, 3, -1, 1, 34, 45, -1, 1, 4, 
                       2, -1, 1, 35, 3, -1, 1, 46, 1, 23, 1, 24, 5, -1, 
                       1, 3, 1, -1, 1, 2, 1, -1, 1, 31, 1, -1, 1, 16, 1, 
                       -1, 1, 17, 1, -1, 1, 13, 1, -1, 1, 11, 1, 10, 1, 
                       -1, 1, 22, 1, -1, 1, 20, 1, -1, 1, 29, 1, 25, 1, 
                       -1, 1, 27, 1, 37, 2, -1, 1, 39, 1, -1, 1, 36, 28, 
                       -1, 1, 48, 22, -1, 1, 33, 5, -1, 1, 32, 2, -1, 1, 
                       18, 12, -1, 1, 41, 70, -1, 1, 50, 25, -1, 1, 52, 
                       2, -1, 1, 0, 13, -1, 1, 47, 1, 49, 1, -1, 1, 42, 
                       8, -1, 1, 51, 22, -1)
      TRANSITION = [
        unpack(1, 34, 1, 35, 1, -1, 2, 34, 18, -1, 1, 34, 1, 17, 1, 31, 
               1, 1, 1, 50, 1, 23, 1, 24, 1, 30, 1, 11, 1, 12, 1, 22, 1, 
               21, 1, 7, 1, 10, 1, 28, 1, 20, 1, 32, 9, 33, 1, 6, 1, 9, 
               1, 18, 1, 5, 1, 19, 1, 8, 1, -1, 11, 50, 1, 4, 14, 50, 1, 
               13, 1, 36, 1, 14, 1, 27, 1, 37, 1, -1, 1, 39, 1, 49, 1, 42, 
               1, 3, 1, 38, 1, 45, 1, 48, 1, 50, 1, 43, 2, 50, 1, 44, 5, 
               50, 1, 40, 1, 2, 1, 29, 1, 46, 1, 41, 1, 47, 3, 50, 1, 15, 
               1, 25, 1, 16, 1, 26),
        unpack(1, 53, 2, -1, 2, 53, 18, -1, 1, 53, 2, -1, 1, 52, 1, 61, 
                28, -1, 26, 61, 4, -1, 1, 51, 1, -1, 3, 61, 1, 58, 1, 55, 
                3, 61, 1, 54, 2, 61, 1, 56, 3, 61, 1, 60, 4, 61, 1, 57, 
                1, 61, 1, 59, 3, 61),
        unpack(1, 64, 1, 62, 10, -1, 1, 63, 2, -1, 1, 65),
        unpack(1, 66, 9, -1, 1, 67),
        unpack(1, 30),
        unpack(1, 68),
        unpack(1, 70),
        unpack(),
        unpack(1, -1),
        unpack(),
        unpack(1, 75, 15, -1, 1, 74, 1, 73),
        unpack(),
        unpack(),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, 81),
        unpack(1, 84, 1, 83),
        unpack(1, 86, 1, 87),
        unpack(1, 90, 4, -1, 1, 91, 13, -1, 1, 89, 30, -1, 1, 90),
        unpack(1, 94, 17, -1, 1, 93),
        unpack(1, 96),
        unpack(1, 98),
        unpack(1, 100, 22, -1, 1, 101),
        unpack(1, 104, 62, -1, 1, 103),
        unpack(1, -1),
        unpack(1, 107),
        unpack(1, 109, 3, -1, 1, 110, 1, -1, 10, 111),
        unpack(1, 113),
        unpack(),
        unpack(),
        unpack(1, 111, 1, -1, 8, 115, 2, 111, 10, -1, 3, 111, 17, -1, 1, 
                114, 11, -1, 3, 111, 17, -1, 1, 114),
        unpack(1, 111, 1, -1, 10, 117, 10, -1, 3, 111, 29, -1, 3, 111),
        unpack(1, 34, 1, 35, 1, -1, 2, 34, 18, -1, 1, 34),
        unpack(),
        unpack(),
        unpack(1, 119),
        unpack(1, 122, 1, -1, 1, 121, 9, -1, 1, 120),
        unpack(1, 123),
        unpack(1, 124),
        unpack(1, 125),
        unpack(1, 128, 6, -1, 1, 126, 6, -1, 1, 127),
        unpack(1, 130, 7, -1, 1, 129),
        unpack(1, 131),
        unpack(1, 132, 2, -1, 1, 133),
        unpack(1, 134),
        unpack(1, 135),
        unpack(1, 136),
        unpack(1, 137),
        unpack(),
        unpack(1, 138),
        unpack(),
        unpack(1, 53, 2, -1, 2, 53, 18, -1, 1, 53, 3, -1, 1, 61, 28, -1, 
                26, 61, 4, -1, 1, 61, 1, -1, 3, 61, 1, 58, 1, 55, 3, 61, 
                1, 54, 2, 61, 1, 56, 3, 61, 1, 60, 4, 61, 1, 57, 1, 61, 
                1, 59, 3, 61),
        unpack(1, 139, 7, -1, 1, 140),
        unpack(1, 141, 1, -1, 1, 142, 3, -1, 1, 144, 5, -1, 1, 143),
        unpack(1, 145),
        unpack(1, 146),
        unpack(1, 147),
        unpack(1, 148),
        unpack(1, 149),
        unpack(),
        unpack(1, 151, 18, -1, 1, 150),
        unpack(1, 152, 16, -1, 1, 153),
        unpack(1, 154),
        unpack(1, 155),
        unpack(1, 156),
        unpack(1, 157),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, 164),
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
        unpack(1, 176),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, 180),
        unpack(1, -1),
        unpack(1, -1),
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
        unpack(1, 202),
        unpack(),
        unpack(1, -1),
        unpack(1, 204),
        unpack(),
        unpack(1, 111, 1, -1, 8, 115, 2, 111, 10, -1, 3, 111, 29, -1, 3, 
                111),
        unpack(),
        unpack(1, 111, 1, -1, 10, 117, 10, -1, 3, 111, 29, -1, 3, 111),
        unpack(),
        unpack(1, 207, 15, -1, 1, 206),
        unpack(1, 208),
        unpack(1, 209),
        unpack(1, 210),
        unpack(1, 211),
        unpack(1, 212, 12, -1, 1, 213),
        unpack(1, 214, 2, -1, 1, 215),
        unpack(1, 216),
        unpack(1, 217),
        unpack(1, 218),
        unpack(1, 219),
        unpack(),
        unpack(1, 220),
        unpack(1, 221),
        unpack(1, 222),
        unpack(1, 224, 9, -1, 1, 223),
        unpack(1, 225),
        unpack(1, 226),
        unpack(1, 227),
        unpack(),
        unpack(1, 61, 11, -1, 10, 61, 7, -1, 26, 61, 4, -1, 1, 61, 1, -1, 
                3, 61, 1, 228, 9, 61, 1, 229, 12, 61),
        unpack(1, 231),
        unpack(1, 232, 9, -1, 1, 233),
        unpack(1, 234),
        unpack(1, 235),
        unpack(1, 236),
        unpack(1, 237),
        unpack(1, 238),
        unpack(1, 239),
        unpack(1, 240),
        unpack(1, 241),
        unpack(1, 242),
        unpack(1, 243),
        unpack(1, 244),
        unpack(1, 245),
        unpack(1, 246),
        unpack(1, 247),
        unpack(1, 249, 7, -1, 1, 248),
        unpack(1, 250),
        unpack(1, -1),
        unpack(),
        unpack(),
        unpack(1, -1),
        unpack(),
        unpack(),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(1, -1),
        unpack(),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(),
        unpack(1, -1),
        unpack(1, -1),
        unpack(1, -1),
        unpack(),
        unpack(1, -1),
        unpack(),
        unpack(1, -1),
        unpack(1, -1),
        unpack(),
        unpack(1, -1),
        unpack(),
        unpack(1, -1),
        unpack(),
        unpack(1, -1),
        unpack(1, -1),
        unpack(),
        unpack(1, -1),
        unpack(1, -1),
        unpack(),
        unpack(),
        unpack(1, -1),
        unpack(),
        unpack(1, -1),
        unpack(1, -1),
        unpack(),
        unpack(1, 276),
        unpack(),
        unpack(1, 277),
        unpack(1, 279, 3, -1, 1, 278),
        unpack(1, 280),
        unpack(1, 281),
        unpack(1, 282),
        unpack(1, 283),
        unpack(1, 284),
        unpack(1, 285),
        unpack(1, 286),
        unpack(1, 287),
        unpack(1, 288),
        unpack(1, 289, 1, 290),
        unpack(1, 291),
        unpack(),
        unpack(1, 292),
        unpack(1, 293),
        unpack(),
        unpack(1, 294),
        unpack(1, 295),
        unpack(1, 296),
        unpack(1, 297),
        unpack(1, 298),
        unpack(1, 299),
        unpack(1, 300),
        unpack(1, -1),
        unpack(1, 302),
        unpack(1, 303),
        unpack(1, 304),
        unpack(1, 305),
        unpack(1, 306),
        unpack(1, 307),
        unpack(1, 308),
        unpack(1, 309),
        unpack(1, 310),
        unpack(1, 311),
        unpack(1, 312),
        unpack(1, 313),
        unpack(1, 314),
        unpack(1, 315),
        unpack(1, 316),
        unpack(1, 317),
        unpack(1, 318),
        unpack(1, 319),
        unpack(1, 320),
        unpack(1, 321),
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
        unpack(1, -1),
        unpack(1, 326),
        unpack(1, 327),
        unpack(1, 328),
        unpack(1, 329),
        unpack(1, 330),
        unpack(),
        unpack(),
        unpack(),
        unpack(1, 331),
        unpack(1, 332),
        unpack(),
        unpack(1, 333),
        unpack(),
        unpack(1, 334),
        unpack(1, 335),
        unpack(),
        unpack(),
        unpack(1, 336),
        unpack(1, 337),
        unpack(1, 338),
        unpack(1, 339),
        unpack(),
        unpack(1, 340),
        unpack(1, 341),
        unpack(1, 342),
        unpack(),
        unpack(1, 343),
        unpack(1, 61, 11, -1, 10, 61, 7, -1, 26, 61, 4, -1, 1, 61, 1, -1, 
                26, 61),
        unpack(1, 61, 11, -1, 10, 61, 7, -1, 26, 61, 4, -1, 1, 61, 1, -1, 
                26, 61),
        unpack(1, 344),
        unpack(1, 345),
        unpack(1, 346),
        unpack(1, 61, 11, -1, 10, 61, 7, -1, 26, 61, 4, -1, 1, 61, 1, -1, 
                26, 61),
        unpack(1, 347),
        unpack(1, 348),
        unpack(1, 349),
        unpack(1, 350),
        unpack(1, 351),
        unpack(1, 352),
        unpack(1, 353),
        unpack(1, 354),
        unpack(),
        unpack(1, 355),
        unpack(1, 356),
        unpack(1, 357),
        unpack(1, 358),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(1, 359),
        unpack(1, 360),
        unpack(1, 361),
        unpack(1, 362),
        unpack(1, 363),
        unpack(1, 364),
        unpack(1, 365),
        unpack(1, 366),
        unpack(),
        unpack(1, 367),
        unpack(),
        unpack(1, 368),
        unpack(),
        unpack(),
        unpack(),
        unpack(1, 61, 11, -1, 10, 61, 7, -1, 26, 61, 4, -1, 1, 61, 1, -1, 
                26, 61),
        unpack(1, 369),
        unpack(1, 370),
        unpack(1, 61, 11, -1, 10, 61, 7, -1, 26, 61, 4, -1, 1, 61, 1, -1, 
                26, 61),
        unpack(1, 371),
        unpack(10, 301, 1, -1, 25, 301, 1, 372, 11, 301, 10, 372, 7, 301, 
                26, 372, 4, 301, 1, 372, 1, 301, 26, 372, 65413, 301),
        unpack(1, 301, 2, -1, 2, 301, 18, -1, 1, 301),
        unpack(1, 373),
        unpack(1, 374),
        unpack(1, 375),
        unpack(1, 50, 11, -1, 10, 50, 7, -1, 26, 50, 4, -1, 1, 50, 1, -1, 
                26, 50),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(1, 377),
        unpack(1, 378),
        unpack(),
        unpack(1, 379),
        unpack(1, 380),
        unpack(1, 381),
        unpack(1, 382),
        unpack(),
        unpack(1, 383),
        unpack(),
        unpack(1, 384),
        unpack(1, 385),
        unpack(1, 386),
        unpack(1, 61, 11, -1, 10, 61, 7, -1, 26, 61, 4, -1, 1, 61, 1, -1, 
                26, 61),
        unpack(1, 387),
        unpack(1, 388),
        unpack(10, 301, 1, -1, 25, 301, 1, 372, 11, 301, 10, 372, 7, 301, 
                26, 372, 4, 301, 1, 372, 1, 301, 26, 372, 65413, 301),
        unpack(1, 301, 2, -1, 2, 301, 18, -1, 1, 301),
        unpack(1, 389),
        unpack(10, 301, 1, -1, 25, 301, 1, 390, 11, 301, 10, 390, 7, 301, 
                26, 390, 4, 301, 1, 390, 1, 301, 26, 390, 65413, 301),
        unpack(),
        unpack(1, 50, 11, -1, 10, 50, 7, -1, 26, 50, 4, -1, 1, 50, 1, -1, 
                26, 50),
        unpack(),
        unpack(1, 50, 11, -1, 10, 50, 7, -1, 26, 50, 4, -1, 1, 50, 1, -1, 
                26, 50),
        unpack(1, 393),
        unpack(),
        unpack(1, 394),
        unpack(1, 395),
        unpack(1, 396),
        unpack(1, 397),
        unpack(1, 398),
        unpack(1, 301, 2, -1, 2, 301, 18, -1, 1, 301, 62, -1, 1, 399),
        unpack(1, 400),
        unpack(10, 301, 1, -1, 25, 301, 1, 401, 11, 301, 10, 401, 7, 301, 
                26, 401, 4, 301, 1, 401, 1, 301, 26, 401, 65413, 301),
        unpack(10, 301, 1, -1, 25, 301, 1, 390, 11, 301, 10, 390, 7, 301, 
                26, 390, 4, 301, 1, 390, 1, 301, 26, 390, 65413, 301),
        unpack(),
        unpack(1, -1),
        unpack(1, 403),
        unpack(1, 404),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(1, 405),
        unpack(1, 406),
        unpack(10, 301, 1, -1, 25, 301, 1, 401, 11, 301, 10, 401, 7, 301, 
                26, 401, 4, 301, 1, 401, 1, 301, 26, 401, 65413, 301),
        unpack(),
        unpack(1, 407),
        unpack(),
        unpack(1, 408),
        unpack(1, 409),
        unpack(1, 410),
        unpack(1, 411),
        unpack(1, 412),
        unpack(),
        unpack(1, 413),
        unpack(1, 414),
        unpack(1, 301, 2, -1, 2, 301, 18, -1, 1, 301),
        unpack(1, 415),
        unpack(1, 416),
        unpack(1, 417),
        unpack(1, 418),
        unpack(1, 419),
        unpack(1, 420),
        unpack(1, 421),
        unpack(1, 422),
        unpack(1, 423),
        unpack(1, 61, 11, -1, 10, 61, 7, -1, 26, 61, 4, -1, 1, 61, 1, -1, 
                26, 61)
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 50
      

      def description
        <<-'__dfa_description__'.strip!
          1:1: Tokens : ( STRING_OP | DIRECTIVE | SIZEOF | DEFINED | IDENTIFIER | STRINGIFICATION | SHARPSHARP | ASSIGNEQUAL | COLON | COMMA | QUESTIONMARK | SEMICOLON | POINTERTO | LPAREN | RPAREN | LSQUARE | RSQUARE | LCURLY | RCURLY | EQUAL | NOTEQUAL | LESSTHANOREQUALTO | LESSTHAN | GREATERTHANOREQUALTO | GREATERTHAN | DIVIDE | DIVIDEEQUAL | PLUS | PLUSEQUAL | PLUSPLUS | MINUS | MINUSEQUAL | MINUSMINUS | STAR | TIMESEQUAL | MOD | MODEQUAL | SHIFTRIGHT | SHIFTRIGHTEQUAL | SHIFTLEFT | SHIFTLEFTEQUAL | AND | NOT | OR | AMPERSAND | BITWISEANDEQUAL | TILDE | BITWISEOR | BITWISEOREQUAL | BITWISEXOR | BITWISEXOREQUAL | DOT | POINTERTOMBR | DOTMBR | SCOPE | ELLIPSIS | CHARACTER_LITERAL | STRING_LITERAL | HEX_LITERAL | DECIMAL_LITERAL | OCTAL_LITERAL | FLOATING_POINT_LITERAL | COMMENT | LINE_COMMENT | WS | End | ESCAPED_NEWLINE | COPERATOR | CKEYWORD );
        __dfa_description__
      end
    end

    
    private
    
    def initialize_dfas
      super rescue nil
      @dfa6 = DFA6.new(self, 6)
      @dfa3 = DFA3.new(self, 3)
      @dfa4 = DFA4.new(self, 4)
      @dfa8 = DFA8.new(self, 8) do |s|
        case s
        when 0
          look_8_0 = @input.peek
          s = -1
          if (look_8_0 == ?/)
            s = 2
          elsif (look_8_0 == ?\\)
            s = 3
          elsif (look_8_0.between?(0x0000, ?\t) || look_8_0.between?(0x000B, ?.) || look_8_0.between?(?0, ?[) || look_8_0.between?(?], 0xFFFF))
            s = 4
          else
            s = 1
          end

        when 1
          look_8_7 = @input.peek
          index_8_7 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (look_8_7 == ?/)
            s = 14
          elsif (look_8_7 == ?*)
            s = 7
          elsif (look_8_7 == ?\\)
            s = 9
          elsif (look_8_7.between?(0x0000, ?\t) || look_8_7.between?(0x000B, ?)) || look_8_7.between?(?+, ?.) || look_8_7.between?(?0, ?[) || look_8_7.between?(?], 0xFFFF))
            s = 10
          elsif (look_8_7 == ?\n) && (syntactic_predicate?(synpred1_CPP))
            s = 11
          else
            s = 4
          end
           
          @input.seek(index_8_7)

        when 2
          look_8_10 = @input.peek
          index_8_10 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (look_8_10 == ?*)
            s = 7
          elsif (look_8_10 == ?/)
            s = 8
          elsif (look_8_10 == ?\\)
            s = 9
          elsif (look_8_10.between?(0x0000, ?\t) || look_8_10.between?(0x000B, ?)) || look_8_10.between?(?+, ?.) || look_8_10.between?(?0, ?[) || look_8_10.between?(?], 0xFFFF))
            s = 10
          elsif (look_8_10 == ?\n) && (syntactic_predicate?(synpred1_CPP))
            s = 11
          else
            s = 4
          end
           
          @input.seek(index_8_10)

        when 3
          look_8_8 = @input.peek
          index_8_8 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (look_8_8 == ?*)
            s = 15
          elsif (look_8_8 == ?/)
            s = 8
          elsif (look_8_8 == ?\\)
            s = 9
          elsif (look_8_8.between?(0x0000, ?\t) || look_8_8.between?(0x000B, ?)) || look_8_8.between?(?+, ?.) || look_8_8.between?(?0, ?[) || look_8_8.between?(?], 0xFFFF))
            s = 10
          elsif (look_8_8 == ?\n) && (syntactic_predicate?(synpred1_CPP))
            s = 11
          else
            s = 4
          end
           
          @input.seek(index_8_8)

        when 4
          look_8_15 = @input.peek
          index_8_15 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_1_cpp!))
            s = 11
          elsif (true)
            s = 4
          end
           
          @input.seek(index_8_15)

        when 5
          look_8_9 = @input.peek
          s = -1
          if (look_8_9 == ?\n)
            s = 16
          elsif (look_8_9 == ?*)
            s = 7
          elsif (look_8_9 == ?/)
            s = 8
          elsif (look_8_9 == ?\\)
            s = 9
          elsif (look_8_9.between?(0x0000, ?\t) || look_8_9.between?(0x000B, ?)) || look_8_9.between?(?+, ?.) || look_8_9.between?(?0, ?[) || look_8_9.between?(?], 0xFFFF))
            s = 10
          else
            s = 4
          end

        when 6
          look_8_16 = @input.peek
          index_8_16 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (look_8_16 == ?/)
            s = 8
          elsif (look_8_16 == ?\\)
            s = 9
          elsif (look_8_16 == ?*)
            s = 7
          elsif (look_8_16.between?(0x0000, ?\t) || look_8_16.between?(0x000B, ?)) || look_8_16.between?(?+, ?.) || look_8_16.between?(?0, ?[) || look_8_16.between?(?], 0xFFFF))
            s = 10
          elsif (look_8_16 == ?\n) && (syntactic_predicate?(synpred1_CPP))
            s = 11
          else
            s = 4
          end
           
          @input.seek(index_8_16)

        when 7
          look_8_6 = @input.peek
          index_8_6 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_2_cpp!))
            s = 12
          elsif (syntactic_predicate?(:synpred_3_cpp!))
            s = 13
          end
           
          @input.seek(index_8_6)

        when 8
          look_8_5 = @input.peek
          index_8_5 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (look_8_5 == ?*)
            s = 7
          elsif (look_8_5 == ?/)
            s = 8
          elsif (look_8_5 == ?\\)
            s = 9
          elsif (look_8_5.between?(0x0000, ?\t) || look_8_5.between?(0x000B, ?)) || look_8_5.between?(?+, ?.) || look_8_5.between?(?0, ?[) || look_8_5.between?(?], 0xFFFF))
            s = 10
          elsif (look_8_5 == ?\n) && (syntactic_predicate?(synpred1_CPP))
            s = 11
          else
            s = 4
          end
           
          @input.seek(index_8_5)

        when 9
          look_8_14 = @input.peek
          index_8_14 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (syntactic_predicate?(:synpred_1_cpp!))
            s = 11
          elsif (true)
            s = 4
          end
           
          @input.seek(index_8_14)

        end
        
        if s < 0
          @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
          nva = ANTLR3::Error::NoViableAlternative.new(@dfa8.description, 8, s, input)
          @dfa8.error(nva)
          raise nva
        end
        
        s
      end
      @dfa15 = DFA15.new(self, 15) do |s|
        case s
        when 0
          look_15_0 = @input.peek
          s = -1
          if (look_15_0 == ?")
            s = 1
          elsif (look_15_0 == ?\\)
            s = 2
          elsif (look_15_0.between?(0x0000, ?!) || look_15_0.between?(?#, ?[) || look_15_0.between?(?], 0xFFFF))
            s = 3
          end

        when 1
          look_15_4 = @input.peek
          s = -1
          if (look_15_4.between?(0x0000, 0xFFFF))
            s = 9
          else
            s = 3
          end

        when 2
          look_15_5 = @input.peek
          s = -1
          if (look_15_5.between?(0x0000, ?/) || look_15_5.between?(?:, ?@) || look_15_5.between?(?G, ?`) || look_15_5.between?(?g, 0xFFFF))
            s = 3
          elsif (look_15_5.between?(?0, ?9) || look_15_5.between?(?A, ?F) || look_15_5.between?(?a, ?f))
            s = 10
          end

        when 3
          look_15_2 = @input.peek
          s = -1
          if (look_15_2 == ?")
            s = 4
          elsif (look_15_2 == ?x)
            s = 5
          elsif (look_15_2 == ?\\)
            s = 6
          elsif (look_15_2 == ?\' || look_15_2 == ?b || look_15_2 == ?f || look_15_2 == ?n || look_15_2 == ?r || look_15_2 == ?t || look_15_2 == ?v)
            s = 7
          elsif (look_15_2.between?(?0, ?3))
            s = 8
          elsif (look_15_2.between?(0x0000, ?!) || look_15_2.between?(?#, ?&) || look_15_2.between?(?(, ?/) || look_15_2.between?(?8, ?[) || look_15_2.between?(?], ?a) || look_15_2.between?(?c, ?e) || look_15_2.between?(?g, ?m) || look_15_2.between?(?o, ?q) || look_15_2 == ?s || look_15_2 == ?u || look_15_2 == ?w || look_15_2.between?(?y, 0xFFFF))
            s = 3
          elsif (look_15_2.between?(?4, ?7))
            s = 9
          end

        end
        
        if s < 0
          @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
          nva = ANTLR3::Error::NoViableAlternative.new(@dfa15.description, 15, s, input)
          @dfa15.error(nva)
          raise nva
        end
        
        s
      end
      @dfa34 = DFA34.new(self, 34)
      @dfa48 = DFA48.new(self, 48)
      @dfa49 = DFA49.new(self, 49)
      @dfa50 = DFA50.new(self, 50) do |s|
        case s
        when 0
          look_50_375 = @input.peek
          s = -1
          if (look_50_375.between?(0x0000, ?\t) || look_50_375.between?(0x000B, ?#) || look_50_375.between?(?%, ?/) || look_50_375.between?(?:, ?@) || look_50_375.between?(?[, ?^) || look_50_375 == ?` || look_50_375.between?(?{, 0xFFFF))
            s = 301
          elsif (look_50_375 == ?$ || look_50_375.between?(?0, ?9) || look_50_375.between?(?A, ?Z) || look_50_375 == ?_ || look_50_375.between?(?a, ?z))
            s = 390
          else
            s = 61
          end

        when 1
          look_50_85 = @input.peek
          index_50_85 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (not (((!@in_directive))))
            s = 178
          elsif ((!@in_directive))
            s = 160
          end
           
          @input.seek(index_50_85)

        when 2
          look_50_175 = @input.peek
          index_50_175 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (not (((!@in_directive))))
            s = 258
          elsif ((!@in_directive))
            s = 160
          end
           
          @input.seek(index_50_175)

        when 3
          look_50_173 = @input.peek
          index_50_173 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (not (((!@in_directive))))
            s = 257
          elsif ((!@in_directive))
            s = 160
          end
           
          @input.seek(index_50_173)

        when 4
          look_50_158 = @input.peek
          index_50_158 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (not (((!@in_directive))))
            s = 251
          elsif ((!@in_directive))
            s = 160
          end
           
          @input.seek(index_50_158)

        when 5
          look_50_80 = @input.peek
          index_50_80 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (not (((!@in_directive))))
            s = 172
          elsif ((!@in_directive))
            s = 160
          end
           
          @input.seek(index_50_80)

        when 6
          look_50_79 = @input.peek
          index_50_79 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (not (((!@in_directive))))
            s = 171
          elsif ((!@in_directive))
            s = 160
          end
           
          @input.seek(index_50_79)

        when 7
          look_50_78 = @input.peek
          index_50_78 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (not (((!@in_directive))))
            s = 170
          elsif ((!@in_directive))
            s = 160
          end
           
          @input.seek(index_50_78)

        when 8
          look_50_77 = @input.peek
          index_50_77 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (not (((!@in_directive))))
            s = 169
          elsif ((!@in_directive))
            s = 160
          end
           
          @input.seek(index_50_77)

        when 9
          look_50_76 = @input.peek
          index_50_76 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (not (((!@in_directive))))
            s = 168
          elsif ((!@in_directive))
            s = 160
          end
           
          @input.seek(index_50_76)

        when 10
          look_50_186 = @input.peek
          index_50_186 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (not (((!@in_directive))))
            s = 266
          elsif ((!@in_directive))
            s = 160
          end
           
          @input.seek(index_50_186)

        when 11
          look_50_185 = @input.peek
          index_50_185 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (not (((!@in_directive))))
            s = 265
          elsif ((!@in_directive))
            s = 160
          end
           
          @input.seek(index_50_185)

        when 12
          look_50_95 = @input.peek
          index_50_95 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (not (((!@in_directive))))
            s = 187
          elsif ((!@in_directive))
            s = 160
          end
           
          @input.seek(index_50_95)

        when 13
          look_50_183 = @input.peek
          index_50_183 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (not (((!@in_directive))))
            s = 264
          elsif ((!@in_directive))
            s = 160
          end
           
          @input.seek(index_50_183)

        when 14
          look_50_92 = @input.peek
          index_50_92 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (not (((!@in_directive))))
            s = 184
          elsif ((!@in_directive))
            s = 160
          end
           
          @input.seek(index_50_92)

        when 15
          look_50_88 = @input.peek
          index_50_88 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (not (((!@in_directive))))
            s = 182
          elsif ((!@in_directive))
            s = 160
          end
           
          @input.seek(index_50_88)

        when 16
          look_50_179 = @input.peek
          index_50_179 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (not (((!@in_directive))))
            s = 261
          elsif ((!@in_directive))
            s = 160
          end
           
          @input.seek(index_50_179)

        when 17
          look_50_181 = @input.peek
          index_50_181 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (not (((!@in_directive))))
            s = 263
          elsif ((!@in_directive))
            s = 160
          end
           
          @input.seek(index_50_181)

        when 18
          look_50_262 = @input.peek
          index_50_262 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (not (((!@in_directive))))
            s = 324
          elsif ((!@in_directive))
            s = 160
          end
           
          @input.seek(index_50_262)

        when 19
          look_50_99 = @input.peek
          index_50_99 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (not (((!@in_directive))))
            s = 191
          elsif ((!@in_directive))
            s = 160
          end
           
          @input.seek(index_50_99)

        when 20
          look_50_190 = @input.peek
          index_50_190 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (not (((!@in_directive))))
            s = 268
          elsif ((!@in_directive))
            s = 160
          end
           
          @input.seek(index_50_190)

        when 21
          look_50_97 = @input.peek
          index_50_97 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (not (((!@in_directive))))
            s = 189
          elsif ((!@in_directive))
            s = 160
          end
           
          @input.seek(index_50_97)

        when 22
          look_50_188 = @input.peek
          index_50_188 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (not (((!@in_directive))))
            s = 267
          elsif ((!@in_directive))
            s = 160
          end
           
          @input.seek(index_50_188)

        when 23
          look_50_166 = @input.peek
          index_50_166 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (not (((!@in_directive))))
            s = 255
          elsif ((!@in_directive))
            s = 160
          end
           
          @input.seek(index_50_166)

        when 24
          look_50_167 = @input.peek
          index_50_167 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (not (((!@in_directive))))
            s = 256
          elsif ((!@in_directive))
            s = 160
          end
           
          @input.seek(index_50_167)

        when 25
          look_50_193 = @input.peek
          index_50_193 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (not (((!@in_directive))))
            s = 270
          elsif ((!@in_directive))
            s = 160
          end
           
          @input.seek(index_50_193)

        when 26
          look_50_106 = @input.peek
          index_50_106 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (not (((!@in_directive))))
            s = 198
          elsif ((!@in_directive))
            s = 160
          end
           
          @input.seek(index_50_106)

        when 27
          look_50_195 = @input.peek
          index_50_195 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (not (((!@in_directive))))
            s = 271
          elsif ((!@in_directive))
            s = 160
          end
           
          @input.seek(index_50_195)

        when 28
          look_50_102 = @input.peek
          index_50_102 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (not (((!@in_directive))))
            s = 194
          elsif ((!@in_directive))
            s = 160
          end
           
          @input.seek(index_50_102)

        when 29
          look_50_192 = @input.peek
          index_50_192 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (not (((!@in_directive))))
            s = 269
          elsif ((!@in_directive))
            s = 160
          end
           
          @input.seek(index_50_192)

        when 30
          look_50_82 = @input.peek
          index_50_82 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (not (((!@in_directive))))
            s = 174
          elsif ((!@in_directive))
            s = 160
          end
           
          @input.seek(index_50_82)

        when 31
          look_50_177 = @input.peek
          index_50_177 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (not (((!@in_directive))))
            s = 260
          elsif ((!@in_directive))
            s = 160
          end
           
          @input.seek(index_50_177)

        when 32
          look_50_259 = @input.peek
          index_50_259 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (not (((!@in_directive))))
            s = 323
          elsif ((!@in_directive))
            s = 160
          end
           
          @input.seek(index_50_259)

        when 33
          look_50_253 = @input.peek
          index_50_253 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (not (((!@in_directive))))
            s = 322
          elsif ((!@in_directive))
            s = 160
          end
           
          @input.seek(index_50_253)

        when 34
          look_50_112 = @input.peek
          index_50_112 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (not (((!@in_directive))))
            s = 203
          elsif ((!@in_directive))
            s = 160
          end
           
          @input.seek(index_50_112)

        when 35
          look_50_161 = @input.peek
          index_50_161 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (not (((!@in_directive))))
            s = 252
          elsif ((!@in_directive))
            s = 160
          end
           
          @input.seek(index_50_161)

        when 36
          look_50_201 = @input.peek
          index_50_201 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (not (((!@in_directive))))
            s = 274
          elsif ((!@in_directive))
            s = 160
          end
           
          @input.seek(index_50_201)

        when 37
          look_50_196 = @input.peek
          index_50_196 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (not (((!@in_directive))))
            s = 272
          elsif ((!@in_directive))
            s = 160
          end
           
          @input.seek(index_50_196)

        when 38
          look_50_105 = @input.peek
          index_50_105 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (not (((!@in_directive))))
            s = 197
          elsif ((!@in_directive))
            s = 160
          end
           
          @input.seek(index_50_105)

        when 39
          look_50_199 = @input.peek
          index_50_199 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (not (((!@in_directive))))
            s = 273
          elsif ((!@in_directive))
            s = 160
          end
           
          @input.seek(index_50_199)

        when 40
          look_50_108 = @input.peek
          index_50_108 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (not (((!@in_directive))))
            s = 200
          elsif ((!@in_directive))
            s = 160
          end
           
          @input.seek(index_50_108)

        when 41
          look_50_275 = @input.peek
          index_50_275 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (not (((!@in_directive))))
            s = 325
          elsif ((!@in_directive))
            s = 160
          end
           
          @input.seek(index_50_275)

        when 42
          look_50_392 = @input.peek
          index_50_392 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (not (((!@in_directive))))
            s = 50
          elsif ((!@in_directive))
            s = 402
          end
           
          @input.seek(index_50_392)

        when 43
          look_50_69 = @input.peek
          index_50_69 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (not (((!@in_directive))))
            s = 159
          elsif ((!@in_directive))
            s = 160
          end
           
          @input.seek(index_50_69)

        when 44
          look_50_71 = @input.peek
          index_50_71 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (not (((!@in_directive))))
            s = 162
          elsif ((!@in_directive))
            s = 160
          end
           
          @input.seek(index_50_71)

        when 45
          look_50_72 = @input.peek
          index_50_72 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (not (((!@in_directive))))
            s = 163
          elsif ((!@in_directive))
            s = 160
          end
           
          @input.seek(index_50_72)

        when 46
          look_50_165 = @input.peek
          index_50_165 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (not (((!@in_directive))))
            s = 254
          elsif ((!@in_directive))
            s = 160
          end
           
          @input.seek(index_50_165)

        when 47
          look_50_389 = @input.peek
          s = -1
          if (look_50_389.between?(0x0000, ?\t) || look_50_389.between?(0x000B, ?#) || look_50_389.between?(?%, ?/) || look_50_389.between?(?:, ?@) || look_50_389.between?(?[, ?^) || look_50_389 == ?` || look_50_389.between?(?{, 0xFFFF))
            s = 301
          elsif (look_50_389 == ?$ || look_50_389.between?(?0, ?9) || look_50_389.between?(?A, ?Z) || look_50_389 == ?_ || look_50_389.between?(?a, ?z))
            s = 401
          else
            s = 61
          end

        when 48
          look_50_230 = @input.peek
          index_50_230 = @input.index
          @input.rewind(@input.last_marker, false)
          s = -1
          if (( @in_define_mode ))
            s = 61
          elsif (( !@in_directive && !@in_define_mode ))
            s = 301
          end
           
          @input.seek(index_50_230)

        when 49
          look_50_390 = @input.peek
          s = -1
          if (look_50_390.between?(0x0000, ?\t) || look_50_390.between?(0x000B, ?#) || look_50_390.between?(?%, ?/) || look_50_390.between?(?:, ?@) || look_50_390.between?(?[, ?^) || look_50_390 == ?` || look_50_390.between?(?{, 0xFFFF))
            s = 301
          elsif (look_50_390 == ?$ || look_50_390.between?(?0, ?9) || look_50_390.between?(?A, ?Z) || look_50_390 == ?_ || look_50_390.between?(?a, ?z))
            s = 390
          else
            s = 230
          end

        when 50
          look_50_346 = @input.peek
          s = -1
          if (look_50_346 == ?$ || look_50_346.between?(?0, ?9) || look_50_346.between?(?A, ?Z) || look_50_346 == ?_ || look_50_346.between?(?a, ?z))
            s = 372
          elsif (look_50_346.between?(0x0000, ?\t) || look_50_346.between?(0x000B, ?#) || look_50_346.between?(?%, ?/) || look_50_346.between?(?:, ?@) || look_50_346.between?(?[, ?^) || look_50_346 == ?` || look_50_346.between?(?{, 0xFFFF))
            s = 301
          else
            s = 230
          end

        when 51
          look_50_401 = @input.peek
          s = -1
          if (look_50_401.between?(0x0000, ?\t) || look_50_401.between?(0x000B, ?#) || look_50_401.between?(?%, ?/) || look_50_401.between?(?:, ?@) || look_50_401.between?(?[, ?^) || look_50_401 == ?` || look_50_401.between?(?{, 0xFFFF))
            s = 301
          elsif (look_50_401 == ?$ || look_50_401.between?(?0, ?9) || look_50_401.between?(?A, ?Z) || look_50_401 == ?_ || look_50_401.between?(?a, ?z))
            s = 401
          else
            s = 230
          end

        when 52
          look_50_372 = @input.peek
          s = -1
          if (look_50_372 == ?$ || look_50_372.between?(?0, ?9) || look_50_372.between?(?A, ?Z) || look_50_372 == ?_ || look_50_372.between?(?a, ?z))
            s = 372
          elsif (look_50_372.between?(0x0000, ?\t) || look_50_372.between?(0x000B, ?#) || look_50_372.between?(?%, ?/) || look_50_372.between?(?:, ?@) || look_50_372.between?(?[, ?^) || look_50_372 == ?` || look_50_372.between?(?{, 0xFFFF))
            s = 301
          else
            s = 230
          end

        end
        
        if s < 0
          @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
          nva = ANTLR3::Error::NoViableAlternative.new(@dfa50.description, 50, s, input)
          @dfa50.error(nva)
          raise nva
        end
        
        s
      end

    end
  end # class Lexer < ANTLR3::Lexer

  at_exit { Lexer.main(ARGV) } if __FILE__ == $0
end
