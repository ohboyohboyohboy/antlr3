#!/usr/bin/env ruby
# 
# generated using ANTLR Version: 3.2 Nov 04, 2009 19:38:44
# input grammar file: ./test/benchmark/XML/XML.g
# generated at: 2009-11-08 17:25:27

this_directory = File.expand_path( File.dirname( __FILE__ ) )
$:.unshift( this_directory ) unless $:.include?( this_directory )

begin
  require 'rubygems'
  gem 'antlr3'
rescue LoadError
  # ignore load error and assume antlr3.rb is in the load path already
end

require 'antlr3'


module XML
  # TokenData defines all of the token type integer values
  # as constants, which will be included in all 
  # ANTLR-generated recognizers.
  const_defined?(:TokenData) or TokenData = ANTLR3::TokenScheme.new

  module TokenData

    # define the token constants
    define_tokens(:CDATA => 16, :END_TAG => 18, :EMPTY_ELEMENT => 19, :LETTER => 20, 
                  :ATTRIBUTE => 12, :XMLDECL => 4, :START_TAG => 14, :VALUE => 10, 
                  :INTERNAL_DTD => 11, :EOF => -1, :PCDATA => 15, :WS => 5, 
                  :DOCUMENT => 8, :GENERIC_ID => 9, :ELEMENT => 7, :DOCTYPE => 6, 
                  :PI => 13, :COMMENT => 17)
  end


  class Lexer < ANTLR3::Lexer
    @grammar_home = XML
    include TokenData

    begin
      generated_using('./test/benchmark/XML/XML.g', '3.2 Nov 04, 2009 19:38:44')
    rescue NoMethodError => error
      error.name.to_sym == :generated_using or raise
    end
    
    RULE_NAMES   = ["DOCUMENT", "DOCTYPE", "INTERNAL_DTD", "PI", "XMLDECL", 
                    "ELEMENT", "START_TAG", "EMPTY_ELEMENT", "ATTRIBUTE", 
                    "END_TAG", "COMMENT", "CDATA", "PCDATA", "VALUE", "GENERIC_ID", 
                    "LETTER", "WS"].freeze
    RULE_METHODS = [:document!, :doctype!, :internal_dtd!, :pi!, :xmldecl!, 
                    :element!, :start_tag!, :empty_element!, :attribute!, 
                    :end_tag!, :comment!, :cdata!, :pcdata!, :value!, :generic_id!, 
                    :letter!, :ws!].freeze

    
    def initialize(input=nil, options = {})
      super(input, options)

    end
    
    # - - - - - - - - - - - lexer rules - - - - - - - - - - - -
    # lexer rule document! (DOCUMENT)
    # (in ./test/benchmark/XML/XML.g)
    def document!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 1)

      type = DOCUMENT
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 5:8: ( XMLDECL )? ( WS )? ( DOCTYPE )? ( WS )? ELEMENT ( WS )?
      # at line 5:8: ( XMLDECL )?
      alt_1 = 2
      look_1_0 = @input.peek(1)

      if (look_1_0 == ?<) 
        look_1_1 = @input.peek(2)

        if (look_1_1 == ??) 
          alt_1 = 1
        end
      end
      case alt_1
      when 1
        # at line 5:8: XMLDECL
        xmldecl!

      end
      # at line 5:17: ( WS )?
      alt_2 = 2
      case look_2 = @input.peek(1)
      when ?\s then alt_2 = 1
      when ?\t then alt_2 = 1
      when ?\n then alt_2 = 1
      when ?\r then alt_2 = 1
      end
      case alt_2
      when 1
        # at line 5:17: WS
        ws!

      end
      # at line 5:21: ( DOCTYPE )?
      alt_3 = 2
      look_3_0 = @input.peek(1)

      if (look_3_0 == ?<) 
        look_3_1 = @input.peek(2)

        if (look_3_1 == ?!) 
          alt_3 = 1
        end
      end
      case alt_3
      when 1
        # at line 5:21: DOCTYPE
        doctype!

      end
      # at line 5:30: ( WS )?
      alt_4 = 2
      look_4_0 = @input.peek(1)

      if (look_4_0.between?(?\t, ?\n) || look_4_0 == ?\r || look_4_0 == ?\s) 
        alt_4 = 1
      end
      case alt_4
      when 1
        # at line 5:30: WS
        ws!

      end
      element!
      # at line 5:42: ( WS )?
      alt_5 = 2
      look_5_0 = @input.peek(1)

      if (look_5_0.between?(?\t, ?\n) || look_5_0 == ?\r || look_5_0 == ?\s) 
        alt_5 = 1
      end
      case alt_5
      when 1
        # at line 5:42: WS
        ws!

      end

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 1)

    end

    # lexer rule doctype! (DOCTYPE)
    # (in ./test/benchmark/XML/XML.g)
    def doctype!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 2)
      # - - - - label initialization - - - -
      rootElementName = nil
      sys1 = nil
      pub = nil
      sys2 = nil
      dtd = nil


      
      # - - - - main rule block - - - -
      # at line 10:7: '<!DOCTYPE' WS rootElementName= GENERIC_ID WS ( ( 'SYSTEM' WS sys1= VALUE | 'PUBLIC' WS pub= VALUE WS sys2= VALUE ) ( WS )? )? (dtd= INTERNAL_DTD )? '>'
      match("<!DOCTYPE")
      ws!
      rootElementName_start_73 = self.character_index
      generic_id!
      rootElementName = create_token do |t|
        t.input   = @input
        t.type    = ANTLR3::INVALID_TOKEN_TYPE
        t.channel = ANTLR3::DEFAULT_CHANNEL
        t.start   = rootElementName_start_73
        t.stop    = self.character_index - 1
      end
      ws!
      # at line 12:9: ( ( 'SYSTEM' WS sys1= VALUE | 'PUBLIC' WS pub= VALUE WS sys2= VALUE ) ( WS )? )?
      alt_8 = 2
      look_8_0 = @input.peek(1)

      if (look_8_0 == ?P || look_8_0 == ?S) 
        alt_8 = 1
      end
      case alt_8
      when 1
        # at line 13:13: ( 'SYSTEM' WS sys1= VALUE | 'PUBLIC' WS pub= VALUE WS sys2= VALUE ) ( WS )?
        # at line 13:13: ( 'SYSTEM' WS sys1= VALUE | 'PUBLIC' WS pub= VALUE WS sys2= VALUE )
        alt_6 = 2
        look_6_0 = @input.peek(1)

        if (look_6_0 == ?S) 
          alt_6 = 1
        elsif (look_6_0 == ?P) 
          alt_6 = 2
        else
        nvae = NoViableAlternative("", 6, 0)
          raise nvae
        end
        case alt_6
        when 1
          # at line 13:15: 'SYSTEM' WS sys1= VALUE
          match("SYSTEM")
          ws!
          sys1_start_116 = self.character_index
          value!
          sys1 = create_token do |t|
            t.input   = @input
            t.type    = ANTLR3::INVALID_TOKEN_TYPE
            t.channel = ANTLR3::DEFAULT_CHANNEL
            t.start   = sys1_start_116
            t.stop    = self.character_index - 1
          end

        when 2
          # at line 14:15: 'PUBLIC' WS pub= VALUE WS sys2= VALUE
          match("PUBLIC")
          ws!
          pub_start_138 = self.character_index
          value!
          pub = create_token do |t|
            t.input   = @input
            t.type    = ANTLR3::INVALID_TOKEN_TYPE
            t.channel = ANTLR3::DEFAULT_CHANNEL
            t.start   = pub_start_138
            t.stop    = self.character_index - 1
          end
          ws!
          sys2_start_144 = self.character_index
          value!
          sys2 = create_token do |t|
            t.input   = @input
            t.type    = ANTLR3::INVALID_TOKEN_TYPE
            t.channel = ANTLR3::DEFAULT_CHANNEL
            t.start   = sys2_start_144
            t.stop    = self.character_index - 1
          end

        end
        # at line 16:13: ( WS )?
        alt_7 = 2
        look_7_0 = @input.peek(1)

        if (look_7_0.between?(?\t, ?\n) || look_7_0 == ?\r || look_7_0 == ?\s) 
          alt_7 = 1
        end
        case alt_7
        when 1
          # at line 16:15: WS
          ws!

        end

      end
      # at line 18:9: (dtd= INTERNAL_DTD )?
      alt_9 = 2
      look_9_0 = @input.peek(1)

      if (look_9_0 == ?[) 
        alt_9 = 1
      end
      case alt_9
      when 1
        # at line 18:11: dtd= INTERNAL_DTD
        dtd_start_202 = self.character_index
        internal_dtd!
        dtd = create_token do |t|
          t.input   = @input
          t.type    = ANTLR3::INVALID_TOKEN_TYPE
          t.channel = ANTLR3::DEFAULT_CHANNEL
          t.start   = dtd_start_202
          t.stop    = self.character_index - 1
        end

      end
      match(?>)

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 2)

    end

    # lexer rule internal_dtd! (INTERNAL_DTD)
    # (in ./test/benchmark/XML/XML.g)
    def internal_dtd!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 3)

      
      # - - - - main rule block - - - -
      # at line 22:25: '[' ( . )* ']'
      match(?[)
      # at line 22:29: ( . )*
      loop do  #loop 10
        alt_10 = 2
        look_10_0 = @input.peek(1)

        if (look_10_0 == ?]) 
          alt_10 = 2
        elsif (look_10_0.between?(0x0000, ?\\) || look_10_0.between?(?^, 0xFFFF)) 
          alt_10 = 1

        end
        case alt_10
        when 1
          # at line 22:29: .
          match_any

        else
          break #loop 10
        end
      end
      match(?])

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 3)

    end

    # lexer rule pi! (PI)
    # (in ./test/benchmark/XML/XML.g)
    def pi!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 4)
      # - - - - label initialization - - - -
      target = nil


      
      # - - - - main rule block - - - -
      # at line 24:15: '<?' target= GENERIC_ID ( WS )? ( ATTRIBUTE ( WS )? )* '?>'
      match("<?")
      target_start_243 = self.character_index
      generic_id!
      target = create_token do |t|
        t.input   = @input
        t.type    = ANTLR3::INVALID_TOKEN_TYPE
        t.channel = ANTLR3::DEFAULT_CHANNEL
        t.start   = target_start_243
        t.stop    = self.character_index - 1
      end
      # at line 24:38: ( WS )?
      alt_11 = 2
      look_11_0 = @input.peek(1)

      if (look_11_0.between?(?\t, ?\n) || look_11_0 == ?\r || look_11_0 == ?\s) 
        alt_11 = 1
      end
      case alt_11
      when 1
        # at line 24:38: WS
        ws!

      end
      # at line 24:42: ( ATTRIBUTE ( WS )? )*
      loop do  #loop 13
        alt_13 = 2
        look_13_0 = @input.peek(1)

        if (look_13_0 == ?: || look_13_0.between?(?A, ?Z) || look_13_0 == ?_ || look_13_0.between?(?a, ?z)) 
          alt_13 = 1

        end
        case alt_13
        when 1
          # at line 24:44: ATTRIBUTE ( WS )?
          attribute!
          # at line 24:54: ( WS )?
          alt_12 = 2
          look_12_0 = @input.peek(1)

          if (look_12_0.between?(?\t, ?\n) || look_12_0 == ?\r || look_12_0 == ?\s) 
            alt_12 = 1
          end
          case alt_12
          when 1
            # at line 24:54: WS
            ws!

          end

        else
          break #loop 13
        end
      end
      match("?>")

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 4)

    end

    # lexer rule xmldecl! (XMLDECL)
    # (in ./test/benchmark/XML/XML.g)
    def xmldecl!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 5)

      
      # - - - - main rule block - - - -
      # at line 26:20: '<?' ( 'x' | 'X' ) ( 'm' | 'M' ) ( 'l' | 'L' ) ( WS )? ( ATTRIBUTE ( WS )? )* '?>'
      match("<?")
      if @input.peek(1) == ?X || @input.peek(1) == ?x
        @input.consume
      else
        mse = MismatchedSet(nil)
        recover(mse)
        raise mse
      end


      if @input.peek(1) == ?M || @input.peek(1) == ?m
        @input.consume
      else
        mse = MismatchedSet(nil)
        recover(mse)
        raise mse
      end


      if @input.peek(1) == ?L || @input.peek(1) == ?l
        @input.consume
      else
        mse = MismatchedSet(nil)
        recover(mse)
        raise mse
      end


      # at line 26:55: ( WS )?
      alt_14 = 2
      look_14_0 = @input.peek(1)

      if (look_14_0.between?(?\t, ?\n) || look_14_0 == ?\r || look_14_0 == ?\s) 
        alt_14 = 1
      end
      case alt_14
      when 1
        # at line 26:55: WS
        ws!

      end
      # at line 26:60: ( ATTRIBUTE ( WS )? )*
      loop do  #loop 16
        alt_16 = 2
        look_16_0 = @input.peek(1)

        if (look_16_0 == ?: || look_16_0.between?(?A, ?Z) || look_16_0 == ?_ || look_16_0.between?(?a, ?z)) 
          alt_16 = 1

        end
        case alt_16
        when 1
          # at line 26:62: ATTRIBUTE ( WS )?
          attribute!
          # at line 26:72: ( WS )?
          alt_15 = 2
          look_15_0 = @input.peek(1)

          if (look_15_0.between?(?\t, ?\n) || look_15_0 == ?\r || look_15_0 == ?\s) 
            alt_15 = 1
          end
          case alt_15
          when 1
            # at line 26:72: WS
            ws!

          end

        else
          break #loop 16
        end
      end
      match("?>")

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 5)

    end

    # lexer rule element! (ELEMENT)
    # (in ./test/benchmark/XML/XML.g)
    def element!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 6)
      # - - - - label initialization - - - -
      t = nil
      pi = nil


      
      # - - - - main rule block - - - -
      # at line 30:7: ( START_TAG ( ELEMENT | t= PCDATA | t= CDATA | t= COMMENT | pi= PI )* END_TAG | EMPTY_ELEMENT )
      # at line 30:7: ( START_TAG ( ELEMENT | t= PCDATA | t= CDATA | t= COMMENT | pi= PI )* END_TAG | EMPTY_ELEMENT )
      alt_18 = 2
      alt_18 = @dfa18.predict(@input)
      case alt_18
      when 1
        # at line 30:9: START_TAG ( ELEMENT | t= PCDATA | t= CDATA | t= COMMENT | pi= PI )* END_TAG
        start_tag!
        # at line 31:13: ( ELEMENT | t= PCDATA | t= CDATA | t= COMMENT | pi= PI )*
        loop do  #loop 17
          alt_17 = 6
          look_17_0 = @input.peek(1)

          if (look_17_0 == ?<) 
            case look_17 = @input.peek(2)
            when ?! then look_17_4 = @input.peek(3)

            if (look_17_4 == ?[) 
              alt_17 = 3
            elsif (look_17_4 == ?-) 
              alt_17 = 4

            end
            when ?? then alt_17 = 5
            when ?\t, ?\n, ?\r, ?\s, ?:, ?A, ?B, ?C, ?D, ?E, ?F, ?G, ?H, ?I, ?J, ?K, ?L, ?M, ?N, ?O, ?P, ?Q, ?R, ?S, ?T, ?U, ?V, ?W, ?X, ?Y, ?Z, ?_, ?a, ?b, ?c, ?d, ?e, ?f, ?g, ?h, ?i, ?j, ?k, ?l, ?m, ?n, ?o, ?p, ?q, ?r, ?s, ?t, ?u, ?v, ?w, ?x, ?y, ?z then alt_17 = 1
            end
          elsif (look_17_0.between?(0x0000, ?;) || look_17_0.between?(?=, 0xFFFF)) 
            alt_17 = 2

          end
          case alt_17
          when 1
            # at line 31:14: ELEMENT
            element!

          when 2
            # at line 32:15: t= PCDATA
            t_start_356 = self.character_index
            pcdata!
            t = create_token do |t|
              t.input   = @input
              t.type    = ANTLR3::INVALID_TOKEN_TYPE
              t.channel = ANTLR3::DEFAULT_CHANNEL
              t.start   = t_start_356
              t.stop    = self.character_index - 1
            end

          when 3
            # at line 33:15: t= CDATA
            t_start_374 = self.character_index
            cdata!
            t = create_token do |t|
              t.input   = @input
              t.type    = ANTLR3::INVALID_TOKEN_TYPE
              t.channel = ANTLR3::DEFAULT_CHANNEL
              t.start   = t_start_374
              t.stop    = self.character_index - 1
            end

          when 4
            # at line 34:15: t= COMMENT
            t_start_392 = self.character_index
            comment!
            t = create_token do |t|
              t.input   = @input
              t.type    = ANTLR3::INVALID_TOKEN_TYPE
              t.channel = ANTLR3::DEFAULT_CHANNEL
              t.start   = t_start_392
              t.stop    = self.character_index - 1
            end

          when 5
            # at line 35:15: pi= PI
            pi_start_410 = self.character_index
            pi!
            pi = create_token do |t|
              t.input   = @input
              t.type    = ANTLR3::INVALID_TOKEN_TYPE
              t.channel = ANTLR3::DEFAULT_CHANNEL
              t.start   = pi_start_410
              t.stop    = self.character_index - 1
            end

          else
            break #loop 17
          end
        end
        end_tag!

      when 2
        # at line 38:9: EMPTY_ELEMENT
        empty_element!

      end

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 6)

    end

    # lexer rule start_tag! (START_TAG)
    # (in ./test/benchmark/XML/XML.g)
    def start_tag!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 7)
      # - - - - label initialization - - - -
      name = nil


      
      # - - - - main rule block - - - -
      # at line 43:7: '<' ( WS )? name= GENERIC_ID ( WS )? ( ATTRIBUTE ( WS )? )* '>'
      match(?<)
      # at line 43:11: ( WS )?
      alt_19 = 2
      look_19_0 = @input.peek(1)

      if (look_19_0.between?(?\t, ?\n) || look_19_0 == ?\r || look_19_0 == ?\s) 
        alt_19 = 1
      end
      case alt_19
      when 1
        # at line 43:11: WS
        ws!

      end
      name_start_484 = self.character_index
      generic_id!
      name = create_token do |t|
        t.input   = @input
        t.type    = ANTLR3::INVALID_TOKEN_TYPE
        t.channel = ANTLR3::DEFAULT_CHANNEL
        t.start   = name_start_484
        t.stop    = self.character_index - 1
      end
      # at line 43:31: ( WS )?
      alt_20 = 2
      look_20_0 = @input.peek(1)

      if (look_20_0.between?(?\t, ?\n) || look_20_0 == ?\r || look_20_0 == ?\s) 
        alt_20 = 1
      end
      case alt_20
      when 1
        # at line 43:31: WS
        ws!

      end
      # at line 44:7: ( ATTRIBUTE ( WS )? )*
      loop do  #loop 22
        alt_22 = 2
        look_22_0 = @input.peek(1)

        if (look_22_0 == ?: || look_22_0.between?(?A, ?Z) || look_22_0 == ?_ || look_22_0.between?(?a, ?z)) 
          alt_22 = 1

        end
        case alt_22
        when 1
          # at line 44:9: ATTRIBUTE ( WS )?
          attribute!
          # at line 44:19: ( WS )?
          alt_21 = 2
          look_21_0 = @input.peek(1)

          if (look_21_0.between?(?\t, ?\n) || look_21_0 == ?\r || look_21_0 == ?\s) 
            alt_21 = 1
          end
          case alt_21
          when 1
            # at line 44:19: WS
            ws!

          end

        else
          break #loop 22
        end
      end
      match(?>)

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 7)

    end

    # lexer rule empty_element! (EMPTY_ELEMENT)
    # (in ./test/benchmark/XML/XML.g)
    def empty_element!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 8)
      # - - - - label initialization - - - -
      name = nil


      
      # - - - - main rule block - - - -
      # at line 48:7: '<' ( WS )? name= GENERIC_ID ( WS )? ( ATTRIBUTE ( WS )? )* '/>'
      match(?<)
      # at line 48:11: ( WS )?
      alt_23 = 2
      look_23_0 = @input.peek(1)

      if (look_23_0.between?(?\t, ?\n) || look_23_0 == ?\r || look_23_0 == ?\s) 
        alt_23 = 1
      end
      case alt_23
      when 1
        # at line 48:11: WS
        ws!

      end
      name_start_532 = self.character_index
      generic_id!
      name = create_token do |t|
        t.input   = @input
        t.type    = ANTLR3::INVALID_TOKEN_TYPE
        t.channel = ANTLR3::DEFAULT_CHANNEL
        t.start   = name_start_532
        t.stop    = self.character_index - 1
      end
      # at line 48:31: ( WS )?
      alt_24 = 2
      look_24_0 = @input.peek(1)

      if (look_24_0.between?(?\t, ?\n) || look_24_0 == ?\r || look_24_0 == ?\s) 
        alt_24 = 1
      end
      case alt_24
      when 1
        # at line 48:31: WS
        ws!

      end
      # at line 48:35: ( ATTRIBUTE ( WS )? )*
      loop do  #loop 26
        alt_26 = 2
        look_26_0 = @input.peek(1)

        if (look_26_0 == ?: || look_26_0.between?(?A, ?Z) || look_26_0 == ?_ || look_26_0.between?(?a, ?z)) 
          alt_26 = 1

        end
        case alt_26
        when 1
          # at line 48:37: ATTRIBUTE ( WS )?
          attribute!
          # at line 48:47: ( WS )?
          alt_25 = 2
          look_25_0 = @input.peek(1)

          if (look_25_0.between?(?\t, ?\n) || look_25_0 == ?\r || look_25_0 == ?\s) 
            alt_25 = 1
          end
          case alt_25
          when 1
            # at line 48:47: WS
            ws!

          end

        else
          break #loop 26
        end
      end
      match("/>")

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 8)

    end

    # lexer rule attribute! (ATTRIBUTE)
    # (in ./test/benchmark/XML/XML.g)
    def attribute!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 9)
      # - - - - label initialization - - - -
      name = nil
      value = nil


      
      # - - - - main rule block - - - -
      # at line 52:7: name= GENERIC_ID ( WS )? '=' ( WS )? value= VALUE
      name_start_569 = self.character_index
      generic_id!
      name = create_token do |t|
        t.input   = @input
        t.type    = ANTLR3::INVALID_TOKEN_TYPE
        t.channel = ANTLR3::DEFAULT_CHANNEL
        t.start   = name_start_569
        t.stop    = self.character_index - 1
      end
      # at line 52:23: ( WS )?
      alt_27 = 2
      look_27_0 = @input.peek(1)

      if (look_27_0.between?(?\t, ?\n) || look_27_0 == ?\r || look_27_0 == ?\s) 
        alt_27 = 1
      end
      case alt_27
      when 1
        # at line 52:23: WS
        ws!

      end
      match(?=)
      # at line 52:31: ( WS )?
      alt_28 = 2
      look_28_0 = @input.peek(1)

      if (look_28_0.between?(?\t, ?\n) || look_28_0 == ?\r || look_28_0 == ?\s) 
        alt_28 = 1
      end
      case alt_28
      when 1
        # at line 52:31: WS
        ws!

      end
      value_start_581 = self.character_index
      value!
      value = create_token do |t|
        t.input   = @input
        t.type    = ANTLR3::INVALID_TOKEN_TYPE
        t.channel = ANTLR3::DEFAULT_CHANNEL
        t.start   = value_start_581
        t.stop    = self.character_index - 1
      end

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 9)

    end

    # lexer rule end_tag! (END_TAG)
    # (in ./test/benchmark/XML/XML.g)
    def end_tag!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 10)
      # - - - - label initialization - - - -
      name = nil


      
      # - - - - main rule block - - - -
      # at line 56:7: '</' ( WS )? name= GENERIC_ID ( WS )? '>'
      match("</")
      # at line 56:12: ( WS )?
      alt_29 = 2
      look_29_0 = @input.peek(1)

      if (look_29_0.between?(?\t, ?\n) || look_29_0 == ?\r || look_29_0 == ?\s) 
        alt_29 = 1
      end
      case alt_29
      when 1
        # at line 56:12: WS
        ws!

      end
      name_start_608 = self.character_index
      generic_id!
      name = create_token do |t|
        t.input   = @input
        t.type    = ANTLR3::INVALID_TOKEN_TYPE
        t.channel = ANTLR3::DEFAULT_CHANNEL
        t.start   = name_start_608
        t.stop    = self.character_index - 1
      end
      # at line 56:32: ( WS )?
      alt_30 = 2
      look_30_0 = @input.peek(1)

      if (look_30_0.between?(?\t, ?\n) || look_30_0 == ?\r || look_30_0 == ?\s) 
        alt_30 = 1
      end
      case alt_30
      when 1
        # at line 56:32: WS
        ws!

      end
      match(?>)

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 10)

    end

    # lexer rule comment! (COMMENT)
    # (in ./test/benchmark/XML/XML.g)
    def comment!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 11)

      
      # - - - - main rule block - - - -
      # at line 60:4: '<!--' ( options {greedy=false; } : . )* '-->'
      match("<!--")
      # at line 60:11: ( options {greedy=false; } : . )*
      loop do  #loop 31
        alt_31 = 2
        look_31_0 = @input.peek(1)

        if (look_31_0 == ?-) 
          look_31_1 = @input.peek(2)

          if (look_31_1 == ?-) 
            look_31_3 = @input.peek(3)

            if (look_31_3 == ?>) 
              alt_31 = 2
            elsif (look_31_3.between?(0x0000, ?=) || look_31_3.between?(??, 0xFFFF)) 
              alt_31 = 1

            end
          elsif (look_31_1.between?(0x0000, ?,) || look_31_1.between?(?., 0xFFFF)) 
            alt_31 = 1

          end
        elsif (look_31_0.between?(0x0000, ?,) || look_31_0.between?(?., 0xFFFF)) 
          alt_31 = 1

        end
        case alt_31
        when 1
          # at line 60:38: .
          match_any

        else
          break #loop 31
        end
      end
      match("-->")

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 11)

    end

    # lexer rule cdata! (CDATA)
    # (in ./test/benchmark/XML/XML.g)
    def cdata!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 12)

      
      # - - - - main rule block - - - -
      # at line 64:4: '<![CDATA[' ( . )* ']]>'
      match("<![CDATA[")
      # at line 64:16: ( . )*
      loop do  #loop 32
        alt_32 = 2
        look_32_0 = @input.peek(1)

        if (look_32_0 == ?]) 
          look_32_1 = @input.peek(2)

          if (look_32_1 == ?]) 
            look_32_3 = @input.peek(3)

            if (look_32_3 == ?>) 
              alt_32 = 2
            elsif (look_32_3.between?(0x0000, ?=) || look_32_3.between?(??, 0xFFFF)) 
              alt_32 = 1

            end
          elsif (look_32_1.between?(0x0000, ?\\) || look_32_1.between?(?^, 0xFFFF)) 
            alt_32 = 1

          end
        elsif (look_32_0.between?(0x0000, ?\\) || look_32_0.between?(?^, 0xFFFF)) 
          alt_32 = 1

        end
        case alt_32
        when 1
          # at line 64:16: .
          match_any

        else
          break #loop 32
        end
      end
      match("]]>")

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 12)

    end

    # lexer rule pcdata! (PCDATA)
    # (in ./test/benchmark/XML/XML.g)
    def pcdata!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 13)

      
      # - - - - main rule block - - - -
      # at line 67:19: (~ '<' )+
      # at file 67:19: (~ '<' )+
      match_count_33 = 0
      loop do
        alt_33 = 2
        look_33_0 = @input.peek(1)

        if (look_33_0.between?(0x0000, ?;) || look_33_0.between?(?=, 0xFFFF)) 
          alt_33 = 1

        end
        case alt_33
        when 1
          # at line 67:20: ~ '<'
          if @input.peek(1).between?(0x0000, ?;) || @input.peek(1).between?(?=, 0x00FF)
            @input.consume
          else
            mse = MismatchedSet(nil)
            recover(mse)
            raise mse
          end



        else
          match_count_33 > 0 and break
          eee = EarlyExit(33)


          raise eee
        end
        match_count_33 += 1
      end


    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 13)

    end

    # lexer rule value! (VALUE)
    # (in ./test/benchmark/XML/XML.g)
    def value!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 14)

      
      # - - - - main rule block - - - -
      # at line 70:9: ( '\\\"' (~ '\\\"' )* '\\\"' | '\\'' (~ '\\'' )* '\\'' )
      # at line 70:9: ( '\\\"' (~ '\\\"' )* '\\\"' | '\\'' (~ '\\'' )* '\\'' )
      alt_36 = 2
      look_36_0 = @input.peek(1)

      if (look_36_0 == ?") 
        alt_36 = 1
      elsif (look_36_0 == ?\') 
        alt_36 = 2
      else
      nvae = NoViableAlternative("", 36, 0)
        raise nvae
      end
      case alt_36
      when 1
        # at line 70:11: '\\\"' (~ '\\\"' )* '\\\"'
        match(?\")
        # at line 70:16: (~ '\\\"' )*
        loop do  #loop 34
          alt_34 = 2
          look_34_0 = @input.peek(1)

          if (look_34_0.between?(0x0000, ?!) || look_34_0.between?(?#, 0xFFFF)) 
            alt_34 = 1

          end
          case alt_34
          when 1
            # at line 70:17: ~ '\\\"'
            if @input.peek(1).between?(0x0000, ?!) || @input.peek(1).between?(?#, 0x00FF)
              @input.consume
            else
              mse = MismatchedSet(nil)
              recover(mse)
              raise mse
            end



          else
            break #loop 34
          end
        end
        match(?\")

      when 2
        # at line 71:11: '\\'' (~ '\\'' )* '\\''
        match(?\')
        # at line 71:16: (~ '\\'' )*
        loop do  #loop 35
          alt_35 = 2
          look_35_0 = @input.peek(1)

          if (look_35_0.between?(0x0000, ?&) || look_35_0.between?(?(, 0xFFFF)) 
            alt_35 = 1

          end
          case alt_35
          when 1
            # at line 71:17: ~ '\\''
            if @input.peek(1).between?(0x0000, ?&) || @input.peek(1).between?(?(, 0x00FF)
              @input.consume
            else
              mse = MismatchedSet(nil)
              recover(mse)
              raise mse
            end



          else
            break #loop 35
          end
        end
        match(?\')

      end

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 14)

    end

    # lexer rule generic_id! (GENERIC_ID)
    # (in ./test/benchmark/XML/XML.g)
    def generic_id!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 15)

      
      # - - - - main rule block - - - -
      # at line 76:5: ( LETTER | '_' | ':' ) ( LETTER | '0' .. '9' | '.' | '-' | '_' | ':' )*
      if @input.peek(1) == ?: || @input.peek(1).between?(?A, ?Z) || @input.peek(1) == ?_ || @input.peek(1).between?(?a, ?z)
        @input.consume
      else
        mse = MismatchedSet(nil)
        recover(mse)
        raise mse
      end


      # at line 76:27: ( LETTER | '0' .. '9' | '.' | '-' | '_' | ':' )*
      loop do  #loop 37
        alt_37 = 2
        look_37_0 = @input.peek(1)

        if (look_37_0.between?(?-, ?.) || look_37_0.between?(?0, ?:) || look_37_0.between?(?A, ?Z) || look_37_0 == ?_ || look_37_0.between?(?a, ?z)) 
          alt_37 = 1

        end
        case alt_37
        when 1
          # at line 
          if @input.peek(1).between?(?-, ?.) || @input.peek(1).between?(?0, ?:) || @input.peek(1).between?(?A, ?Z) || @input.peek(1) == ?_ || @input.peek(1).between?(?a, ?z)
            @input.consume
          else
            mse = MismatchedSet(nil)
            recover(mse)
            raise mse
          end



        else
          break #loop 37
        end
      end

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 15)

    end

    # lexer rule letter! (LETTER)
    # (in ./test/benchmark/XML/XML.g)
    def letter!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 16)

      
      # - - - - main rule block - - - -
      # at line 
      if @input.peek(1).between?(?A, ?Z) || @input.peek(1).between?(?a, ?z)
        @input.consume
      else
        mse = MismatchedSet(nil)
        recover(mse)
        raise mse
      end



    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 16)

    end

    # lexer rule ws! (WS)
    # (in ./test/benchmark/XML/XML.g)
    def ws!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 17)

      
      # - - - - main rule block - - - -
      # at line 85:3: ( ' ' | '\\t' | ( '\\n' | '\\r\\n' | '\\r' ) )+
      # at file 85:3: ( ' ' | '\\t' | ( '\\n' | '\\r\\n' | '\\r' ) )+
      match_count_39 = 0
      loop do
        alt_39 = 4
        case look_39 = @input.peek(1)
        when ?\s then alt_39 = 1
        when ?\t then alt_39 = 2
        when ?\n, ?\r then alt_39 = 3
        end
        case alt_39
        when 1
          # at line 85:5: ' '
          match(?\s)

        when 2
          # at line 85:11: '\\t'
          match(?\t)

        when 3
          # at line 85:18: ( '\\n' | '\\r\\n' | '\\r' )
          # at line 85:18: ( '\\n' | '\\r\\n' | '\\r' )
          alt_38 = 3
          look_38_0 = @input.peek(1)

          if (look_38_0 == ?\n) 
            alt_38 = 1
          elsif (look_38_0 == ?\r) 
            look_38_2 = @input.peek(2)

            if (look_38_2 == ?\n) 
              alt_38 = 2
            else
              alt_38 = 3
            end
          else
          nvae = NoViableAlternative("", 38, 0)
            raise nvae
          end
          case alt_38
          when 1
            # at line 85:20: '\\n'
            match(?\n)

          when 2
            # at line 85:27: '\\r\\n'
            match("\r\n")

          when 3
            # at line 85:36: '\\r'
            match(?\r)

          end

        else
          match_count_39 > 0 and break
          eee = EarlyExit(39)


          raise eee
        end
        match_count_39 += 1
      end


    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 17)

    end

    # main rule used to study the input at the current position,
    # and choose the proper lexer rule to call in order to
    # fetch the next token
    # 
    # usually, you don't make direct calls to this method,
    # but instead use the next_token method, which will
    # build and emit the actual next token
    def token!
      # at line 1:10: DOCUMENT
      document!

    end

    
    # - - - - - - - - - - DFA definitions - - - - - - - - - - -
    class DFA18 < ANTLR3::DFA
      EOT = unpack(48, -1)
      EOF = unpack(48, -1)
      MIN = unpack(1, 60, 13, 9, 2, -1, 14, 9, 2, 0, 6, 9, 1, 0, 1, 9, 1, 
                   0, 7, 9)
      MAX = unpack(1, 60, 13, 122, 2, -1, 6, 122, 1, 39, 3, 122, 4, 39, 
                   2, -1, 1, 122, 4, 61, 1, 39, 1, -1, 1, 122, 1, -1, 1, 
                   122, 1, 61, 5, 122)
      ACCEPT = unpack(14, -1, 1, 1, 1, 2, 32, -1)
      SPECIAL = unpack(30, -1, 1, 3, 1, 1, 6, -1, 1, 2, 1, -1, 1, 0, 7, 
                       -1)
      TRANSITION = [
        unpack(1, 1),
        unpack(1, 3, 1, 4, 2, -1, 1, 5, 18, -1, 1, 2, 25, -1, 1, 6, 6, 
                -1, 26, 6, 4, -1, 1, 6, 1, -1, 26, 6),
        unpack(1, 3, 1, 4, 2, -1, 1, 5, 18, -1, 1, 2, 25, -1, 1, 6, 6, 
                -1, 26, 6, 4, -1, 1, 6, 1, -1, 26, 6),
        unpack(1, 3, 1, 4, 2, -1, 1, 5, 18, -1, 1, 2, 25, -1, 1, 6, 6, 
                -1, 26, 6, 4, -1, 1, 6, 1, -1, 26, 6),
        unpack(1, 3, 1, 4, 2, -1, 1, 5, 18, -1, 1, 2, 25, -1, 1, 6, 6, 
                -1, 26, 6, 4, -1, 1, 6, 1, -1, 26, 6),
        unpack(1, 3, 1, 7, 2, -1, 1, 5, 18, -1, 1, 2, 25, -1, 1, 6, 6, 
                -1, 26, 6, 4, -1, 1, 6, 1, -1, 26, 6),
        unpack(1, 10, 1, 11, 2, -1, 1, 12, 18, -1, 1, 9, 12, -1, 2, 13, 
                1, 15, 10, 13, 1, 8, 3, -1, 1, 14, 2, -1, 26, 8, 4, -1, 
                1, 8, 1, -1, 26, 8),
        unpack(1, 3, 1, 4, 2, -1, 1, 5, 18, -1, 1, 2, 25, -1, 1, 6, 6, 
                -1, 26, 6, 4, -1, 1, 6, 1, -1, 26, 6),
        unpack(1, 17, 1, 18, 2, -1, 1, 19, 18, -1, 1, 16, 12, -1, 2, 21, 
                1, 15, 10, 21, 1, 20, 2, -1, 1, 22, 1, 14, 2, -1, 26, 20, 
                4, -1, 1, 20, 1, -1, 26, 20),
        unpack(1, 10, 1, 11, 2, -1, 1, 12, 18, -1, 1, 9, 14, -1, 1, 15, 
                10, -1, 1, 23, 3, -1, 1, 14, 2, -1, 26, 23, 4, -1, 1, 23, 
                1, -1, 26, 23),
        unpack(1, 10, 1, 11, 2, -1, 1, 12, 18, -1, 1, 9, 14, -1, 1, 15, 
                10, -1, 1, 23, 3, -1, 1, 14, 2, -1, 26, 23, 4, -1, 1, 23, 
                1, -1, 26, 23),
        unpack(1, 10, 1, 11, 2, -1, 1, 12, 18, -1, 1, 9, 14, -1, 1, 15, 
                10, -1, 1, 23, 3, -1, 1, 14, 2, -1, 26, 23, 4, -1, 1, 23, 
                1, -1, 26, 23),
        unpack(1, 10, 1, 24, 2, -1, 1, 12, 18, -1, 1, 9, 14, -1, 1, 15, 
                10, -1, 1, 23, 3, -1, 1, 14, 2, -1, 26, 23, 4, -1, 1, 23, 
                1, -1, 26, 23),
        unpack(1, 10, 1, 11, 2, -1, 1, 12, 18, -1, 1, 9, 12, -1, 2, 13, 
                1, 15, 10, 13, 1, 8, 3, -1, 1, 14, 2, -1, 26, 8, 4, -1, 
                1, 8, 1, -1, 26, 8),
        unpack(),
        unpack(),
        unpack(1, 17, 1, 18, 2, -1, 1, 19, 18, -1, 1, 16, 14, -1, 1, 15, 
                10, -1, 1, 23, 2, -1, 1, 22, 1, 14, 2, -1, 26, 23, 4, -1, 
                1, 23, 1, -1, 26, 23),
        unpack(1, 17, 1, 18, 2, -1, 1, 19, 18, -1, 1, 16, 14, -1, 1, 15, 
                10, -1, 1, 23, 2, -1, 1, 22, 1, 14, 2, -1, 26, 23, 4, -1, 
                1, 23, 1, -1, 26, 23),
        unpack(1, 17, 1, 18, 2, -1, 1, 19, 18, -1, 1, 16, 14, -1, 1, 15, 
                10, -1, 1, 23, 2, -1, 1, 22, 1, 14, 2, -1, 26, 23, 4, -1, 
                1, 23, 1, -1, 26, 23),
        unpack(1, 17, 1, 25, 2, -1, 1, 19, 18, -1, 1, 16, 14, -1, 1, 15, 
                10, -1, 1, 23, 2, -1, 1, 22, 1, 14, 2, -1, 26, 23, 4, -1, 
                1, 23, 1, -1, 26, 23),
        unpack(1, 17, 1, 18, 2, -1, 1, 19, 18, -1, 1, 16, 12, -1, 2, 21, 
                1, 15, 10, 21, 1, 20, 2, -1, 1, 22, 1, 14, 2, -1, 26, 20, 
                4, -1, 1, 20, 1, -1, 26, 20),
        unpack(1, 17, 1, 18, 2, -1, 1, 19, 18, -1, 1, 16, 12, -1, 2, 21, 
                1, 15, 10, 21, 1, 20, 2, -1, 1, 22, 1, 14, 2, -1, 26, 20, 
                4, -1, 1, 20, 1, -1, 26, 20),
        unpack(1, 27, 1, 28, 2, -1, 1, 29, 18, -1, 1, 26, 1, -1, 1, 30, 
                4, -1, 1, 31),
        unpack(1, 34, 1, 35, 2, -1, 1, 36, 18, -1, 1, 33, 12, -1, 2, 32, 
                1, -1, 11, 32, 2, -1, 1, 22, 3, -1, 26, 32, 4, -1, 1, 32, 
                1, -1, 26, 32),
        unpack(1, 10, 1, 11, 2, -1, 1, 12, 18, -1, 1, 9, 14, -1, 1, 15, 
                10, -1, 1, 23, 3, -1, 1, 14, 2, -1, 26, 23, 4, -1, 1, 23, 
                1, -1, 26, 23),
        unpack(1, 17, 1, 18, 2, -1, 1, 19, 18, -1, 1, 16, 14, -1, 1, 15, 
                10, -1, 1, 23, 2, -1, 1, 22, 1, 14, 2, -1, 26, 23, 4, -1, 
                1, 23, 1, -1, 26, 23),
        unpack(1, 27, 1, 28, 2, -1, 1, 29, 18, -1, 1, 26, 1, -1, 1, 30, 
                4, -1, 1, 31),
        unpack(1, 27, 1, 28, 2, -1, 1, 29, 18, -1, 1, 26, 1, -1, 1, 30, 
                4, -1, 1, 31),
        unpack(1, 27, 1, 28, 2, -1, 1, 29, 18, -1, 1, 26, 1, -1, 1, 30, 
                4, -1, 1, 31),
        unpack(1, 27, 1, 37, 2, -1, 1, 29, 18, -1, 1, 26, 1, -1, 1, 30, 
                4, -1, 1, 31),
        unpack(34, 38, 1, 39, 65501, 38),
        unpack(39, 40, 1, 41, 65496, 40),
        unpack(1, 34, 1, 35, 2, -1, 1, 36, 18, -1, 1, 33, 12, -1, 2, 32, 
                1, -1, 11, 32, 2, -1, 1, 22, 3, -1, 26, 32, 4, -1, 1, 32, 
                1, -1, 26, 32),
        unpack(1, 34, 1, 35, 2, -1, 1, 36, 18, -1, 1, 33, 28, -1, 1, 22),
        unpack(1, 34, 1, 35, 2, -1, 1, 36, 18, -1, 1, 33, 28, -1, 1, 22),
        unpack(1, 34, 1, 35, 2, -1, 1, 36, 18, -1, 1, 33, 28, -1, 1, 22),
        unpack(1, 34, 1, 42, 2, -1, 1, 36, 18, -1, 1, 33, 28, -1, 1, 22),
        unpack(1, 27, 1, 28, 2, -1, 1, 29, 18, -1, 1, 26, 1, -1, 1, 30, 
                4, -1, 1, 31),
        unpack(34, 38, 1, 39, 65501, 38),
        unpack(1, 44, 1, 45, 2, -1, 1, 46, 18, -1, 1, 43, 14, -1, 1, 15, 
                10, -1, 1, 23, 3, -1, 1, 14, 2, -1, 26, 23, 4, -1, 1, 23, 
                1, -1, 26, 23),
        unpack(39, 40, 1, 41, 65496, 40),
        unpack(1, 44, 1, 45, 2, -1, 1, 46, 18, -1, 1, 43, 14, -1, 1, 15, 
                10, -1, 1, 23, 3, -1, 1, 14, 2, -1, 26, 23, 4, -1, 1, 23, 
                1, -1, 26, 23),
        unpack(1, 34, 1, 35, 2, -1, 1, 36, 18, -1, 1, 33, 28, -1, 1, 22),
        unpack(1, 44, 1, 45, 2, -1, 1, 46, 18, -1, 1, 43, 14, -1, 1, 15, 
                10, -1, 1, 23, 3, -1, 1, 14, 2, -1, 26, 23, 4, -1, 1, 23, 
                1, -1, 26, 23),
        unpack(1, 44, 1, 45, 2, -1, 1, 46, 18, -1, 1, 43, 14, -1, 1, 15, 
                10, -1, 1, 23, 3, -1, 1, 14, 2, -1, 26, 23, 4, -1, 1, 23, 
                1, -1, 26, 23),
        unpack(1, 44, 1, 45, 2, -1, 1, 46, 18, -1, 1, 43, 14, -1, 1, 15, 
                10, -1, 1, 23, 3, -1, 1, 14, 2, -1, 26, 23, 4, -1, 1, 23, 
                1, -1, 26, 23),
        unpack(1, 44, 1, 47, 2, -1, 1, 46, 18, -1, 1, 43, 14, -1, 1, 15, 
                10, -1, 1, 23, 3, -1, 1, 14, 2, -1, 26, 23, 4, -1, 1, 23, 
                1, -1, 26, 23),
        unpack(1, 44, 1, 45, 2, -1, 1, 46, 18, -1, 1, 43, 14, -1, 1, 15, 
                10, -1, 1, 23, 3, -1, 1, 14, 2, -1, 26, 23, 4, -1, 1, 23, 
                1, -1, 26, 23)
      ].freeze
      
      @decision = 18
      

      def description
        <<-'__dfa_description__'.strip!
          30:7: ( START_TAG ( ELEMENT | t= PCDATA | t= CDATA | t= COMMENT | pi= PI )* END_TAG | EMPTY_ELEMENT )
        __dfa_description__
      end
    end

    
    private
    
    def initialize_dfas
      super rescue nil
      @dfa18 = DFA18.new(self, 18) do |s|
        case s
        when 0
          look_18_40 = @input.peek
          s = -1
          if (look_18_40 == ?\')
            s = 41
          elsif (look_18_40.between?(0x0000, ?&) || look_18_40.between?(?(, 0xFFFF))
            s = 40
          end

        when 1
          look_18_31 = @input.peek
          s = -1
          if (look_18_31.between?(0x0000, ?&) || look_18_31.between?(?(, 0xFFFF))
            s = 40
          elsif (look_18_31 == ?\')
            s = 41
          end

        when 2
          look_18_38 = @input.peek
          s = -1
          if (look_18_38 == ?")
            s = 39
          elsif (look_18_38.between?(0x0000, ?!) || look_18_38.between?(?#, 0xFFFF))
            s = 38
          end

        when 3
          look_18_30 = @input.peek
          s = -1
          if (look_18_30.between?(0x0000, ?!) || look_18_30.between?(?#, 0xFFFF))
            s = 38
          elsif (look_18_30 == ?")
            s = 39
          end

        end
        
        if s < 0
          nva = ANTLR3::Error::NoViableAlternative.new(@dfa18.description, 18, s, input)
          @dfa18.error(nva)
          raise nva
        end
        
        s
      end

    end
  end # class Lexer < ANTLR3::Lexer

  at_exit { Lexer.main(ARGV) } if __FILE__ == $0
end

