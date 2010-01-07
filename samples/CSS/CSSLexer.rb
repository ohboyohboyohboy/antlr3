#!/usr/bin/env ruby
#
# samples/CSS.g
# 
# Generated using ANTLR version: 3.2.1-SNAPSHOT Dec 18, 2009 04:29:28
# Ruby runtime library version: 1.3.0
# Input grammar file: samples/CSS.g
# Generated at: 2010-01-07 07:34:04
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


module CSS
  # TokenData defines all of the token type integer values
  # as constants, which will be included in all 
  # ANTLR-generated recognizers.
  const_defined?(:TokenData) or TokenData = ANTLR3::TokenScheme.new

  module TokenData

    # define the token constants
    define_tokens(:FUNCTION => 6, :UNICODE_RANGE => 34, :MEDIA_LIST => 17, 
                  :ID => 22, :EOF => -1, :LENGTH => 9, :T__55 => 55, :TIME => 11, 
                  :T__56 => 56, :T__57 => 57, :UNDER => 16, :SELECTOR => 18, 
                  :T__51 => 51, :T__52 => 52, :T__53 => 53, :ESCAPE => 28, 
                  :T__54 => 54, :HEX => 33, :ELEMENT => 15, :DIMENSION => 5, 
                  :FREQ => 10, :AT_KEYWORD => 31, :COMMENT => 26, :T__50 => 50, 
                  :T__42 => 42, :T__43 => 43, :T__40 => 40, :T__41 => 41, 
                  :T__46 => 46, :T__47 => 47, :T__44 => 44, :ANGLE => 8, 
                  :RULE => 14, :T__45 => 45, :T__48 => 48, :T__49 => 49, 
                  :NUMBER => 25, :HASH => 23, :S => 32, :INVALID => 7, :PERCENTAGE => 4, 
                  :IMPORTANT => 24, :URI => 21, :WS => 19, :T__35 => 35, 
                  :NEWLINE => 27, :T__36 => 36, :T__37 => 37, :EMS => 12, 
                  :T__38 => 38, :T__39 => 39, :EXS => 13, :PLAIN_ID => 29, 
                  :NONASCII => 30, :STRING => 20)
    
  end


  class Lexer < ANTLR3::Lexer
    @grammar_home = CSS
    include TokenData

    begin
      generated_using( "samples/CSS.g", "3.2.1-SNAPSHOT Dec 18, 2009 04:29:28", "1.3.0" )
    rescue NoMethodError => error
      error.name.to_sym == :generated_using or raise
    end
    
    RULE_NAMES   = ["T__35", "T__36", "T__37", "T__38", "T__39", "T__40", 
                    "T__41", "T__42", "T__43", "T__44", "T__45", "T__46", 
                    "T__47", "T__48", "T__49", "T__50", "T__51", "T__52", 
                    "T__53", "T__54", "T__55", "T__56", "T__57", "WS", "COMMENT", 
                    "STRING", "IMPORTANT", "NUMBER", "ID", "AT_KEYWORD", 
                    "HASH", "URI", "UNICODE_RANGE", "PLAIN_ID", "NONASCII", 
                    "HEX", "ESCAPE", "NEWLINE", "S"].freeze
    RULE_METHODS = [:t__35!, :t__36!, :t__37!, :t__38!, :t__39!, :t__40!, 
                    :t__41!, :t__42!, :t__43!, :t__44!, :t__45!, :t__46!, 
                    :t__47!, :t__48!, :t__49!, :t__50!, :t__51!, :t__52!, 
                    :t__53!, :t__54!, :t__55!, :t__56!, :t__57!, :ws!, :comment!, 
                    :string!, :important!, :number!, :id!, :at_keyword!, 
                    :hash!, :uri!, :unicode_range!, :plain_id!, :nonascii!, 
                    :hex!, :escape!, :newline!, :s!].freeze

    
    def initialize(input=nil, options = {})
      super(input, options)

    end
    
    # - - - - - - - - - - - lexer rules - - - - - - - - - - - -
    # lexer rule t__35! (T__35)
    # (in samples/CSS.g)
    def t__35!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 1)

      type = T__35
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 7:9: '<!--'
      match("<!--")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 1)

    end

    # lexer rule t__36! (T__36)
    # (in samples/CSS.g)
    def t__36!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 2)

      type = T__36
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 8:9: '-->'
      match("-->")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 2)

    end

    # lexer rule t__37! (T__37)
    # (in samples/CSS.g)
    def t__37!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 3)

      type = T__37
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 9:9: '@charset'
      match("@charset")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 3)

    end

    # lexer rule t__38! (T__38)
    # (in samples/CSS.g)
    def t__38!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 4)

      type = T__38
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 10:9: ';'
      match(?;)

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 4)

    end

    # lexer rule t__39! (T__39)
    # (in samples/CSS.g)
    def t__39!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 5)

      type = T__39
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 11:9: '@import'
      match("@import")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 5)

    end

    # lexer rule t__40! (T__40)
    # (in samples/CSS.g)
    def t__40!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 6)

      type = T__40
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 12:9: '@media'
      match("@media")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 6)

    end

    # lexer rule t__41! (T__41)
    # (in samples/CSS.g)
    def t__41!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 7)

      type = T__41
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 13:9: '{'
      match(?{)

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 7)

    end

    # lexer rule t__42! (T__42)
    # (in samples/CSS.g)
    def t__42!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 8)

      type = T__42
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 14:9: '}'
      match(?})

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 8)

    end

    # lexer rule t__43! (T__43)
    # (in samples/CSS.g)
    def t__43!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 9)

      type = T__43
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 15:9: ','
      match(?,)

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 9)

    end

    # lexer rule t__44! (T__44)
    # (in samples/CSS.g)
    def t__44!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 10)

      type = T__44
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 16:9: '@page'
      match("@page")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 10)

    end

    # lexer rule t__45! (T__45)
    # (in samples/CSS.g)
    def t__45!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 11)

      type = T__45
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 17:9: ':'
      match(?:)

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 11)

    end

    # lexer rule t__46! (T__46)
    # (in samples/CSS.g)
    def t__46!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 12)

      type = T__46
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 18:9: '+'
      match(?+)

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 12)

    end

    # lexer rule t__47! (T__47)
    # (in samples/CSS.g)
    def t__47!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 13)

      type = T__47
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 19:9: '>'
      match(?>)

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 13)

    end

    # lexer rule t__48! (T__48)
    # (in samples/CSS.g)
    def t__48!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 14)

      type = T__48
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 20:9: '*'
      match(?*)

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 14)

    end

    # lexer rule t__49! (T__49)
    # (in samples/CSS.g)
    def t__49!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 15)

      type = T__49
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 21:9: '.'
      match(?.)

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 15)

    end

    # lexer rule t__50! (T__50)
    # (in samples/CSS.g)
    def t__50!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 16)

      type = T__50
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 22:9: '['
      match(?[)

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 16)

    end

    # lexer rule t__51! (T__51)
    # (in samples/CSS.g)
    def t__51!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 17)

      type = T__51
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 23:9: ']'
      match(?])

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 17)

    end

    # lexer rule t__52! (T__52)
    # (in samples/CSS.g)
    def t__52!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 18)

      type = T__52
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 24:9: ')'
      match(?))

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 18)

    end

    # lexer rule t__53! (T__53)
    # (in samples/CSS.g)
    def t__53!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 19)

      type = T__53
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 25:9: '='
      match(?=)

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 19)

    end

    # lexer rule t__54! (T__54)
    # (in samples/CSS.g)
    def t__54!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 20)

      type = T__54
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 26:9: '~='
      match("~=")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 20)

    end

    # lexer rule t__55! (T__55)
    # (in samples/CSS.g)
    def t__55!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 21)

      type = T__55
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 27:9: '|='
      match("|=")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 21)

    end

    # lexer rule t__56! (T__56)
    # (in samples/CSS.g)
    def t__56!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 22)

      type = T__56
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 28:9: '/'
      match(?/)

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 22)

    end

    # lexer rule t__57! (T__57)
    # (in samples/CSS.g)
    def t__57!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 23)

      type = T__57
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 29:9: '-'
      match(?-)

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 23)

    end

    # lexer rule ws! (WS)
    # (in samples/CSS.g)
    def ws!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 24)

      type = WS
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 101:5: ( ' ' | '\\t' | '\\f' | '\\r' | '\\n' )+
      # at file 101:5: ( ' ' | '\\t' | '\\f' | '\\r' | '\\n' )+
      match_count_1 = 0
      loop do
        alt_1 = 2
        look_1_0 = @input.peek(1)

        if (look_1_0.between?(?\t, ?\n) || look_1_0.between?(?\f, ?\r) || look_1_0 == ?\s) 
          alt_1 = 1

        end
        case alt_1
        when 1
          # at line 
          if @input.peek(1).between?(?\t, ?\n) || @input.peek(1).between?(?\f, ?\r) || @input.peek(1) == ?\s
            @input.consume
          else
            mse = MismatchedSet(nil)
            recover(mse)
            raise mse
          end



        else
          match_count_1 > 0 and break
          eee = EarlyExit(1)


          raise eee
        end
        match_count_1 += 1
      end


      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 24)

    end

    # lexer rule comment! (COMMENT)
    # (in samples/CSS.g)
    def comment!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 25)

      type = COMMENT
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 104:5: '/*' (~ '*' )* ( '*' )+ (~ ( '/' | '*' ) (~ '*' )* ( '*' )+ )* '/'
      match("/*")
      # at line 104:10: (~ '*' )*
      loop do  #loop 2
        alt_2 = 2
        look_2_0 = @input.peek(1)

        if (look_2_0.between?(0x0000, ?)) || look_2_0.between?(?+, 0xFFFF)) 
          alt_2 = 1

        end
        case alt_2
        when 1
          # at line 104:10: ~ '*'
          if @input.peek(1).between?(0x0000, ?)) || @input.peek(1).between?(?+, 0x00FF)
            @input.consume
          else
            mse = MismatchedSet(nil)
            recover(mse)
            raise mse
          end



        else
          break #loop 2
        end
      end
      # at file 104:16: ( '*' )+
      match_count_3 = 0
      loop do
        alt_3 = 2
        look_3_0 = @input.peek(1)

        if (look_3_0 == ?*) 
          alt_3 = 1

        end
        case alt_3
        when 1
          # at line 104:16: '*'
          match(?*)

        else
          match_count_3 > 0 and break
          eee = EarlyExit(3)


          raise eee
        end
        match_count_3 += 1
      end

      # at line 104:21: (~ ( '/' | '*' ) (~ '*' )* ( '*' )+ )*
      loop do  #loop 6
        alt_6 = 2
        look_6_0 = @input.peek(1)

        if (look_6_0.between?(0x0000, ?)) || look_6_0.between?(?+, ?.) || look_6_0.between?(?0, 0xFFFF)) 
          alt_6 = 1

        end
        case alt_6
        when 1
          # at line 104:23: ~ ( '/' | '*' ) (~ '*' )* ( '*' )+
          if @input.peek(1).between?(0x0000, ?)) || @input.peek(1).between?(?+, ?.) || @input.peek(1).between?(?0, 0x00FF)
            @input.consume
          else
            mse = MismatchedSet(nil)
            recover(mse)
            raise mse
          end


          # at line 104:36: (~ '*' )*
          loop do  #loop 4
            alt_4 = 2
            look_4_0 = @input.peek(1)

            if (look_4_0.between?(0x0000, ?)) || look_4_0.between?(?+, 0xFFFF)) 
              alt_4 = 1

            end
            case alt_4
            when 1
              # at line 104:36: ~ '*'
              if @input.peek(1).between?(0x0000, ?)) || @input.peek(1).between?(?+, 0x00FF)
                @input.consume
              else
                mse = MismatchedSet(nil)
                recover(mse)
                raise mse
              end



            else
              break #loop 4
            end
          end
          # at file 104:42: ( '*' )+
          match_count_5 = 0
          loop do
            alt_5 = 2
            look_5_0 = @input.peek(1)

            if (look_5_0 == ?*) 
              alt_5 = 1

            end
            case alt_5
            when 1
              # at line 104:42: '*'
              match(?*)

            else
              match_count_5 > 0 and break
              eee = EarlyExit(5)


              raise eee
            end
            match_count_5 += 1
          end


        else
          break #loop 6
        end
      end
      match(?/)
      # --> action
       channel = HIDDEN 
      # <-- action

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 25)

    end

    # lexer rule string! (STRING)
    # (in samples/CSS.g)
    def string!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 26)

      type = STRING
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 109:3: ( '\"' (~ ( '\\n' | '\\r' | '\\f' | '\\\\' | '\"' ) | '\\\\' NEWLINE | ESCAPE )* ( '\"' | ) | '\\'' (~ ( '\\n' | '\\r' | '\\f' | '\\\\' | '\\'' ) | '\\\\' NEWLINE | ESCAPE )* ( '\\'' | ) )
      alt_11 = 2
      look_11_0 = @input.peek(1)

      if (look_11_0 == ?") 
        alt_11 = 1
      elsif (look_11_0 == ?\') 
        alt_11 = 2
      else
      nvae = NoViableAlternative("", 11, 0)
        raise nvae
      end
      case alt_11
      when 1
        # at line 109:5: '\"' (~ ( '\\n' | '\\r' | '\\f' | '\\\\' | '\"' ) | '\\\\' NEWLINE | ESCAPE )* ( '\"' | )
        match(?")
        # at line 110:5: (~ ( '\\n' | '\\r' | '\\f' | '\\\\' | '\"' ) | '\\\\' NEWLINE | ESCAPE )*
        loop do  #loop 7
          alt_7 = 4
          look_7_0 = @input.peek(1)

          if (look_7_0.between?(0x0000, ?\t) || look_7_0 == 0x000B || look_7_0.between?(0x000E, ?!) || look_7_0.between?(?#, ?[) || look_7_0.between?(?], 0xFFFF)) 
            alt_7 = 1
          elsif (look_7_0 == ?\\) 
            look_7_3 = @input.peek(2)

            if (look_7_3 == ?\r) 
              alt_7 = 2
            elsif (look_7_3 == ?\n || look_7_3 == ?\f || look_7_3 == ?\s) 
              alt_7 = 2
            elsif (look_7_3.between?(0x0000, ?\t) || look_7_3 == 0x000B || look_7_3.between?(0x000E, 0x001F) || look_7_3.between?(?!, 0xFFFF)) 
              alt_7 = 3

            end

          end
          case alt_7
          when 1
            # at line 110:7: ~ ( '\\n' | '\\r' | '\\f' | '\\\\' | '\"' )
            if @input.peek(1).between?(0x0000, ?\t) || @input.peek(1) == 0x000B || @input.peek(1).between?(0x000E, ?!) || @input.peek(1).between?(?#, ?[) || @input.peek(1).between?(?], 0x00FF)
              @input.consume
            else
              mse = MismatchedSet(nil)
              recover(mse)
              raise mse
            end



          when 2
            # at line 111:7: '\\\\' NEWLINE
            match(?\\)
            newline!

          when 3
            # at line 112:7: ESCAPE
            escape!

          else
            break #loop 7
          end
        end
        # at line 114:5: ( '\"' | )
        alt_8 = 2
        look_8_0 = @input.peek(1)

        if (look_8_0 == ?") 
          alt_8 = 1
        else
          alt_8 = 2
        end
        case alt_8
        when 1
          # at line 114:7: '\"'
          match(?")

        when 2
          # at line 115:7: 
          # --> action
           type = INVALID 
          # <-- action

        end

      when 2
        # at line 117:5: '\\'' (~ ( '\\n' | '\\r' | '\\f' | '\\\\' | '\\'' ) | '\\\\' NEWLINE | ESCAPE )* ( '\\'' | )
        match(?\')
        # at line 118:5: (~ ( '\\n' | '\\r' | '\\f' | '\\\\' | '\\'' ) | '\\\\' NEWLINE | ESCAPE )*
        loop do  #loop 9
          alt_9 = 4
          look_9_0 = @input.peek(1)

          if (look_9_0.between?(0x0000, ?\t) || look_9_0 == 0x000B || look_9_0.between?(0x000E, ?&) || look_9_0.between?(?(, ?[) || look_9_0.between?(?], 0xFFFF)) 
            alt_9 = 1
          elsif (look_9_0 == ?\\) 
            look_9_3 = @input.peek(2)

            if (look_9_3 == ?\r) 
              alt_9 = 2
            elsif (look_9_3 == ?\n || look_9_3 == ?\f || look_9_3 == ?\s) 
              alt_9 = 2
            elsif (look_9_3.between?(0x0000, ?\t) || look_9_3 == 0x000B || look_9_3.between?(0x000E, 0x001F) || look_9_3.between?(?!, 0xFFFF)) 
              alt_9 = 3

            end

          end
          case alt_9
          when 1
            # at line 118:7: ~ ( '\\n' | '\\r' | '\\f' | '\\\\' | '\\'' )
            if @input.peek(1).between?(0x0000, ?\t) || @input.peek(1) == 0x000B || @input.peek(1).between?(0x000E, ?&) || @input.peek(1).between?(?(, ?[) || @input.peek(1).between?(?], 0x00FF)
              @input.consume
            else
              mse = MismatchedSet(nil)
              recover(mse)
              raise mse
            end



          when 2
            # at line 119:7: '\\\\' NEWLINE
            match(?\\)
            newline!

          when 3
            # at line 120:7: ESCAPE
            escape!

          else
            break #loop 9
          end
        end
        # at line 122:5: ( '\\'' | )
        alt_10 = 2
        look_10_0 = @input.peek(1)

        if (look_10_0 == ?\') 
          alt_10 = 1
        else
          alt_10 = 2
        end
        case alt_10
        when 1
          # at line 122:7: '\\''
          match(?\')

        when 2
          # at line 123:7: 
          # --> action
           type = INVALID 
          # <-- action

        end

      end
      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 26)

    end

    # lexer rule important! (IMPORTANT)
    # (in samples/CSS.g)
    def important!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 27)

      type = IMPORTANT
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 128:5: '!' ( ' ' )* 'important'
      match(?!)
      # at line 128:9: ( ' ' )*
      loop do  #loop 12
        alt_12 = 2
        look_12_0 = @input.peek(1)

        if (look_12_0 == ?\s) 
          alt_12 = 1

        end
        case alt_12
        when 1
          # at line 128:9: ' '
          match(?\s)

        else
          break #loop 12
        end
      end
      match("important")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 27)

    end

    # lexer rule number! (NUMBER)
    # (in samples/CSS.g)
    def number!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 28)

      type = NUMBER
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 132:5: ( ( '0' .. '9' )+ | ( '0' .. '9' )* '.' ( '0' .. '9' )+ ) ( '%' | 'em' | 'ex' | ( 'px' | 'cm' | 'mm' | 'in' | 'pt' | 'pc' ) | ( 'deg' | 'rad' | 'grad' ) | ( 'ms' | 's' ) | ( 'khz' | 'hz' ) | PLAIN_ID | )
      # at line 132:5: ( ( '0' .. '9' )+ | ( '0' .. '9' )* '.' ( '0' .. '9' )+ )
      alt_16 = 2
      alt_16 = @dfa16.predict(@input)
      case alt_16
      when 1
        # at line 132:7: ( '0' .. '9' )+
        # at file 132:7: ( '0' .. '9' )+
        match_count_13 = 0
        loop do
          alt_13 = 2
          look_13_0 = @input.peek(1)

          if (look_13_0.between?(?0, ?9)) 
            alt_13 = 1

          end
          case alt_13
          when 1
            # at line 132:7: '0' .. '9'
            match_range(?0, ?9)

          else
            match_count_13 > 0 and break
            eee = EarlyExit(13)


            raise eee
          end
          match_count_13 += 1
        end


      when 2
        # at line 133:7: ( '0' .. '9' )* '.' ( '0' .. '9' )+
        # at line 133:7: ( '0' .. '9' )*
        loop do  #loop 14
          alt_14 = 2
          look_14_0 = @input.peek(1)

          if (look_14_0.between?(?0, ?9)) 
            alt_14 = 1

          end
          case alt_14
          when 1
            # at line 133:7: '0' .. '9'
            match_range(?0, ?9)

          else
            break #loop 14
          end
        end
        match(?.)
        # at file 133:21: ( '0' .. '9' )+
        match_count_15 = 0
        loop do
          alt_15 = 2
          look_15_0 = @input.peek(1)

          if (look_15_0.between?(?0, ?9)) 
            alt_15 = 1

          end
          case alt_15
          when 1
            # at line 133:21: '0' .. '9'
            match_range(?0, ?9)

          else
            match_count_15 > 0 and break
            eee = EarlyExit(15)


            raise eee
          end
          match_count_15 += 1
        end


      end
      # at line 135:5: ( '%' | 'em' | 'ex' | ( 'px' | 'cm' | 'mm' | 'in' | 'pt' | 'pc' ) | ( 'deg' | 'rad' | 'grad' ) | ( 'ms' | 's' ) | ( 'khz' | 'hz' ) | PLAIN_ID | )
      alt_21 = 9
      alt_21 = @dfa21.predict(@input)
      case alt_21
      when 1
        # at line 135:7: '%'
        match(?%)
        # --> action
         type = PERCENTAGE 
        # <-- action

      when 2
        # at line 136:7: 'em'
        match("em")
        # --> action
         type = EMS  
        # <-- action

      when 3
        # at line 137:7: 'ex'
        match("ex")
        # --> action
         type = EXS  
        # <-- action

      when 4
        # at line 138:7: ( 'px' | 'cm' | 'mm' | 'in' | 'pt' | 'pc' )
        # at line 138:7: ( 'px' | 'cm' | 'mm' | 'in' | 'pt' | 'pc' )
        alt_17 = 6
        case look_17 = @input.peek(1)
        when ?p then case look_17 = @input.peek(2)
        when ?x then alt_17 = 1
        when ?t then alt_17 = 5
        when ?c then alt_17 = 6
        else
          nvae = NoViableAlternative("", 17, 1)
          raise nvae
        end
        when ?c then alt_17 = 2
        when ?m then alt_17 = 3
        when ?i then alt_17 = 4
        else
          nvae = NoViableAlternative("", 17, 0)
          raise nvae
        end
        case alt_17
        when 1
          # at line 138:9: 'px'
          match("px")

        when 2
          # at line 138:16: 'cm'
          match("cm")

        when 3
          # at line 138:23: 'mm'
          match("mm")

        when 4
          # at line 138:30: 'in'
          match("in")

        when 5
          # at line 138:37: 'pt'
          match("pt")

        when 6
          # at line 138:44: 'pc'
          match("pc")

        end
        # --> action
         type = LENGTH 
        # <-- action

      when 5
        # at line 139:7: ( 'deg' | 'rad' | 'grad' )
        # at line 139:7: ( 'deg' | 'rad' | 'grad' )
        alt_18 = 3
        case look_18 = @input.peek(1)
        when ?d then alt_18 = 1
        when ?r then alt_18 = 2
        when ?g then alt_18 = 3
        else
          nvae = NoViableAlternative("", 18, 0)
          raise nvae
        end
        case alt_18
        when 1
          # at line 139:9: 'deg'
          match("deg")

        when 2
          # at line 139:17: 'rad'
          match("rad")

        when 3
          # at line 139:25: 'grad'
          match("grad")

        end
        # --> action
         type = ANGLE 
        # <-- action

      when 6
        # at line 140:7: ( 'ms' | 's' )
        # at line 140:7: ( 'ms' | 's' )
        alt_19 = 2
        look_19_0 = @input.peek(1)

        if (look_19_0 == ?m) 
          alt_19 = 1
        elsif (look_19_0 == ?s) 
          alt_19 = 2
        else
        nvae = NoViableAlternative("", 19, 0)
          raise nvae
        end
        case alt_19
        when 1
          # at line 140:9: 'ms'
          match("ms")

        when 2
          # at line 140:16: 's'
          match(?s)

        end
        # --> action
         type = TIME 
        # <-- action

      when 7
        # at line 141:7: ( 'khz' | 'hz' )
        # at line 141:7: ( 'khz' | 'hz' )
        alt_20 = 2
        look_20_0 = @input.peek(1)

        if (look_20_0 == ?k) 
          alt_20 = 1
        elsif (look_20_0 == ?h) 
          alt_20 = 2
        else
        nvae = NoViableAlternative("", 20, 0)
          raise nvae
        end
        case alt_20
        when 1
          # at line 141:9: 'khz'
          match("khz")

        when 2
          # at line 141:17: 'hz'
          match("hz")

        end
        # --> action
         type = FREQ 
        # <-- action

      when 8
        # at line 142:7: PLAIN_ID
        plain_id!
        # --> action
         type = DIMENSION 
        # <-- action

      when 9
        # at line 144:5: 

      end

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 28)

    end

    # lexer rule id! (ID)
    # (in samples/CSS.g)
    def id!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 29)

      type = ID
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 148:5: ( '-' )? ( 'a' .. 'z' | 'A' .. 'Z' | '_' | NONASCII | ESCAPE ) ( '_' | 'a' .. 'z' | 'A' .. 'Z' | '0' .. '9' | '-' | NONASCII | ESCAPE )* ( '(' | )
      # at line 148:5: ( '-' )?
      alt_22 = 2
      look_22_0 = @input.peek(1)

      if (look_22_0 == ?-) 
        alt_22 = 1
      end
      case alt_22
      when 1
        # at line 148:5: '-'
        match(?-)

      end
      # at line 148:11: ( 'a' .. 'z' | 'A' .. 'Z' | '_' | NONASCII | ESCAPE )
      alt_23 = 5
      look_23_0 = @input.peek(1)

      if (look_23_0.between?(?a, ?z)) 
        alt_23 = 1
      elsif (look_23_0.between?(?A, ?Z)) 
        alt_23 = 2
      elsif (look_23_0 == ?_) 
        alt_23 = 3
      elsif (look_23_0.between?(0x0080, 0xFFFF)) 
        alt_23 = 4
      elsif (look_23_0 == ?\\) 
        alt_23 = 5
      else
      nvae = NoViableAlternative("", 23, 0)
        raise nvae
      end
      case alt_23
      when 1
        # at line 148:13: 'a' .. 'z'
        match_range(?a, ?z)

      when 2
        # at line 148:24: 'A' .. 'Z'
        match_range(?A, ?Z)

      when 3
        # at line 148:35: '_'
        match(?_)

      when 4
        # at line 148:41: NONASCII
        nonascii!

      when 5
        # at line 148:52: ESCAPE
        escape!

      end
      # at line 149:5: ( '_' | 'a' .. 'z' | 'A' .. 'Z' | '0' .. '9' | '-' | NONASCII | ESCAPE )*
      loop do  #loop 24
        alt_24 = 8
        look_24_0 = @input.peek(1)

        if (look_24_0 == ?_) 
          alt_24 = 1
        elsif (look_24_0.between?(?a, ?z)) 
          alt_24 = 2
        elsif (look_24_0.between?(?A, ?Z)) 
          alt_24 = 3
        elsif (look_24_0.between?(?0, ?9)) 
          alt_24 = 4
        elsif (look_24_0 == ?-) 
          alt_24 = 5
        elsif (look_24_0.between?(0x0080, 0xFFFF)) 
          alt_24 = 6
        elsif (look_24_0 == ?\\) 
          alt_24 = 7

        end
        case alt_24
        when 1
          # at line 149:7: '_'
          match(?_)

        when 2
          # at line 149:13: 'a' .. 'z'
          match_range(?a, ?z)

        when 3
          # at line 149:24: 'A' .. 'Z'
          match_range(?A, ?Z)

        when 4
          # at line 149:35: '0' .. '9'
          match_range(?0, ?9)

        when 5
          # at line 149:46: '-'
          match(?-)

        when 6
          # at line 149:52: NONASCII
          nonascii!

        when 7
          # at line 149:63: ESCAPE
          escape!

        else
          break #loop 24
        end
      end
      # at line 150:5: ( '(' | )
      alt_25 = 2
      look_25_0 = @input.peek(1)

      if (look_25_0 == ?() 
        alt_25 = 1
      else
        alt_25 = 2
      end
      case alt_25
      when 1
        # at line 150:7: '('
        match(?()
        # --> action
         type = FUNCTION 
        # <-- action

      when 2
        # at line 150:35: 

      end

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 29)

    end

    # lexer rule at_keyword! (AT_KEYWORD)
    # (in samples/CSS.g)
    def at_keyword!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 30)

      type = AT_KEYWORD
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 153:14: '@' PLAIN_ID
      match(?@)
      plain_id!

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 30)

    end

    # lexer rule hash! (HASH)
    # (in samples/CSS.g)
    def hash!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 31)

      type = HASH
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 155:8: '#' ( '_' | 'a' .. 'z' | 'A' .. 'Z' | '0' .. '9' | '-' | NONASCII | ESCAPE )+
      match(?#)
      # at file 155:12: ( '_' | 'a' .. 'z' | 'A' .. 'Z' | '0' .. '9' | '-' | NONASCII | ESCAPE )+
      match_count_26 = 0
      loop do
        alt_26 = 8
        look_26_0 = @input.peek(1)

        if (look_26_0 == ?_) 
          alt_26 = 1
        elsif (look_26_0.between?(?a, ?z)) 
          alt_26 = 2
        elsif (look_26_0.between?(?A, ?Z)) 
          alt_26 = 3
        elsif (look_26_0.between?(?0, ?9)) 
          alt_26 = 4
        elsif (look_26_0 == ?-) 
          alt_26 = 5
        elsif (look_26_0.between?(0x0080, 0xFFFF)) 
          alt_26 = 6
        elsif (look_26_0 == ?\\) 
          alt_26 = 7

        end
        case alt_26
        when 1
          # at line 155:14: '_'
          match(?_)

        when 2
          # at line 155:20: 'a' .. 'z'
          match_range(?a, ?z)

        when 3
          # at line 155:31: 'A' .. 'Z'
          match_range(?A, ?Z)

        when 4
          # at line 155:42: '0' .. '9'
          match_range(?0, ?9)

        when 5
          # at line 155:53: '-'
          match(?-)

        when 6
          # at line 155:59: NONASCII
          nonascii!

        when 7
          # at line 155:70: ESCAPE
          escape!

        else
          match_count_26 > 0 and break
          eee = EarlyExit(26)


          raise eee
        end
        match_count_26 += 1
      end


      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 31)

    end

    # lexer rule uri! (URI)
    # (in samples/CSS.g)
    def uri!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 32)

      type = URI
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 158:3: ( 'url(' S STRING S ')' | 'url(' S ( '!' | '#' | '$' | '%' | '&' | '*' | '-' | '~' | NONASCII | ESCAPE )* S ')' )
      alt_28 = 2
      alt_28 = @dfa28.predict(@input)
      case alt_28
      when 1
        # at line 158:5: 'url(' S STRING S ')'
        match("url(")
        s!
        string!
        s!
        match(?))

      when 2
        # at line 159:5: 'url(' S ( '!' | '#' | '$' | '%' | '&' | '*' | '-' | '~' | NONASCII | ESCAPE )* S ')'
        match("url(")
        s!
        # at line 159:14: ( '!' | '#' | '$' | '%' | '&' | '*' | '-' | '~' | NONASCII | ESCAPE )*
        loop do  #loop 27
          alt_27 = 11
          alt_27 = @dfa27.predict(@input)
          case alt_27
          when 1
            # at line 159:16: '!'
            match(?!)

          when 2
            # at line 159:22: '#'
            match(?#)

          when 3
            # at line 159:28: '$'
            match(?$)

          when 4
            # at line 159:34: '%'
            match(?%)

          when 5
            # at line 159:40: '&'
            match(?&)

          when 6
            # at line 159:46: '*'
            match(?*)

          when 7
            # at line 159:52: '-'
            match(?-)

          when 8
            # at line 159:58: '~'
            match(?~)

          when 9
            # at line 159:64: NONASCII
            nonascii!

          when 10
            # at line 159:75: ESCAPE
            escape!

          else
            break #loop 27
          end
        end
        s!
        match(?))

      end
      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 32)

    end

    # lexer rule unicode_range! (UNICODE_RANGE)
    # (in samples/CSS.g)
    def unicode_range!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 33)

      type = UNICODE_RANGE
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 163:5: 'u+' HEX HEX HEX HEX HEX HEX ( '-' HEX HEX HEX HEX HEX HEX )?
      match("u+")
      hex!
      hex!
      hex!
      hex!
      hex!
      hex!
      # at line 163:34: ( '-' HEX HEX HEX HEX HEX HEX )?
      alt_29 = 2
      look_29_0 = @input.peek(1)

      if (look_29_0 == ?-) 
        alt_29 = 1
      end
      case alt_29
      when 1
        # at line 163:36: '-' HEX HEX HEX HEX HEX HEX
        match(?-)
        hex!
        hex!
        hex!
        hex!
        hex!
        hex!

      end

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 33)

    end

    # lexer rule plain_id! (PLAIN_ID)
    # (in samples/CSS.g)
    def plain_id!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 34)

      
      # - - - - main rule block - - - -
      # at line 168:5: ( '-' )? ( 'a' .. 'z' | 'A' .. 'F' | '_' | NONASCII | ESCAPE ) ( '_' | 'a' .. 'z' | 'A' .. 'Z' | '0' .. '9' | '-' | NONASCII | ESCAPE )*
      # at line 168:5: ( '-' )?
      alt_30 = 2
      look_30_0 = @input.peek(1)

      if (look_30_0 == ?-) 
        alt_30 = 1
      end
      case alt_30
      when 1
        # at line 168:5: '-'
        match(?-)

      end
      # at line 168:11: ( 'a' .. 'z' | 'A' .. 'F' | '_' | NONASCII | ESCAPE )
      alt_31 = 5
      look_31_0 = @input.peek(1)

      if (look_31_0.between?(?a, ?z)) 
        alt_31 = 1
      elsif (look_31_0.between?(?A, ?F)) 
        alt_31 = 2
      elsif (look_31_0 == ?_) 
        alt_31 = 3
      elsif (look_31_0.between?(0x0080, 0xFFFF)) 
        alt_31 = 4
      elsif (look_31_0 == ?\\) 
        alt_31 = 5
      else
      nvae = NoViableAlternative("", 31, 0)
        raise nvae
      end
      case alt_31
      when 1
        # at line 168:13: 'a' .. 'z'
        match_range(?a, ?z)

      when 2
        # at line 168:24: 'A' .. 'F'
        match_range(?A, ?F)

      when 3
        # at line 168:37: '_'
        match(?_)

      when 4
        # at line 168:43: NONASCII
        nonascii!

      when 5
        # at line 168:54: ESCAPE
        escape!

      end
      # at line 169:5: ( '_' | 'a' .. 'z' | 'A' .. 'Z' | '0' .. '9' | '-' | NONASCII | ESCAPE )*
      loop do  #loop 32
        alt_32 = 8
        look_32_0 = @input.peek(1)

        if (look_32_0 == ?_) 
          alt_32 = 1
        elsif (look_32_0.between?(?a, ?z)) 
          alt_32 = 2
        elsif (look_32_0.between?(?A, ?Z)) 
          alt_32 = 3
        elsif (look_32_0.between?(?0, ?9)) 
          alt_32 = 4
        elsif (look_32_0 == ?-) 
          alt_32 = 5
        elsif (look_32_0.between?(0x0080, 0xFFFF)) 
          alt_32 = 6
        elsif (look_32_0 == ?\\) 
          alt_32 = 7

        end
        case alt_32
        when 1
          # at line 169:7: '_'
          match(?_)

        when 2
          # at line 169:13: 'a' .. 'z'
          match_range(?a, ?z)

        when 3
          # at line 169:24: 'A' .. 'Z'
          match_range(?A, ?Z)

        when 4
          # at line 169:37: '0' .. '9'
          match_range(?0, ?9)

        when 5
          # at line 169:48: '-'
          match(?-)

        when 6
          # at line 169:54: NONASCII
          nonascii!

        when 7
          # at line 169:65: ESCAPE
          escape!

        else
          break #loop 32
        end
      end

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 34)

    end

    # lexer rule nonascii! (NONASCII)
    # (in samples/CSS.g)
    def nonascii!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 35)

      
      # - - - - main rule block - - - -
      # at line 173:12: ~ ( '\\u0000' .. '\\u007f' )
      if @input.peek(1).between?(0x0080, 0x00FF)
        @input.consume
      else
        mse = MismatchedSet(nil)
        recover(mse)
        raise mse
      end



    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 35)

    end

    # lexer rule hex! (HEX)
    # (in samples/CSS.g)
    def hex!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 36)

      
      # - - - - main rule block - - - -
      # at line 
      if @input.peek(1).between?(?0, ?9) || @input.peek(1).between?(?A, ?F) || @input.peek(1).between?(?a, ?f)
        @input.consume
      else
        mse = MismatchedSet(nil)
        recover(mse)
        raise mse
      end



    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 36)

    end

    # lexer rule escape! (ESCAPE)
    # (in samples/CSS.g)
    def escape!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 37)

      
      # - - - - main rule block - - - -
      # at line 179:11: '\\\\' ( HEX HEX HEX HEX HEX HEX | ~ ( '\\n' | '\\r' | '\\f' | '0' .. '9' | 'a' .. 'f' | 'A' .. 'F' ) )
      match(?\\)
      # at line 180:11: ( HEX HEX HEX HEX HEX HEX | ~ ( '\\n' | '\\r' | '\\f' | '0' .. '9' | 'a' .. 'f' | 'A' .. 'F' ) )
      alt_33 = 2
      look_33_0 = @input.peek(1)

      if (look_33_0.between?(?0, ?9) || look_33_0.between?(?A, ?F) || look_33_0.between?(?a, ?f)) 
        alt_33 = 1
      elsif (look_33_0.between?(0x0000, ?\t) || look_33_0 == 0x000B || look_33_0.between?(0x000E, ?/) || look_33_0.between?(?:, ?@) || look_33_0.between?(?G, ?`) || look_33_0.between?(?g, 0xFFFF)) 
        alt_33 = 2
      else
      nvae = NoViableAlternative("", 33, 0)
        raise nvae
      end
      case alt_33
      when 1
        # at line 180:13: HEX HEX HEX HEX HEX HEX
        hex!
        hex!
        hex!
        hex!
        hex!
        hex!

      when 2
        # at line 181:13: ~ ( '\\n' | '\\r' | '\\f' | '0' .. '9' | 'a' .. 'f' | 'A' .. 'F' )
        if @input.peek(1).between?(0x0000, ?\t) || @input.peek(1) == 0x000B || @input.peek(1).between?(0x000E, ?/) || @input.peek(1).between?(?:, ?@) || @input.peek(1).between?(?G, ?`) || @input.peek(1).between?(?g, 0x00FF)
          @input.consume
        else
          mse = MismatchedSet(nil)
          recover(mse)
          raise mse
        end



      end

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 37)

    end

    # lexer rule newline! (NEWLINE)
    # (in samples/CSS.g)
    def newline!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 38)

      
      # - - - - main rule block - - - -
      # at line 186:10: ( '\\r' '\\n' | ' ' | '\\n' | '\\r' | '\\f' )
      alt_34 = 5
      case look_34 = @input.peek(1)
      when ?\r then look_34_1 = @input.peek(2)

      if (look_34_1 == ?\n) 
        alt_34 = 1
      else
        alt_34 = 4
      end
      when ?\s then alt_34 = 2
      when ?\n then alt_34 = 3
      when ?\f then alt_34 = 5
      else
        nvae = NoViableAlternative("", 34, 0)
        raise nvae
      end
      case alt_34
      when 1
        # at line 186:12: '\\r' '\\n'
        match(?\r)
        match(?\n)

      when 2
        # at line 186:24: ' '
        match(?\s)

      when 3
        # at line 186:30: '\\n'
        match(?\n)

      when 4
        # at line 186:37: '\\r'
        match(?\r)

      when 5
        # at line 186:44: '\\f'
        match(?\f)

      end
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 38)

    end

    # lexer rule s! (S)
    # (in samples/CSS.g)
    def s!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 39)

      
      # - - - - main rule block - - - -
      # at line 189:5: ( ' ' | '\\t' | '\\f' | '\\r' | '\\n' )*
      # at line 189:5: ( ' ' | '\\t' | '\\f' | '\\r' | '\\n' )*
      loop do  #loop 35
        alt_35 = 2
        look_35_0 = @input.peek(1)

        if (look_35_0.between?(?\t, ?\n) || look_35_0.between?(?\f, ?\r) || look_35_0 == ?\s) 
          alt_35 = 1

        end
        case alt_35
        when 1
          # at line 
          if @input.peek(1).between?(?\t, ?\n) || @input.peek(1).between?(?\f, ?\r) || @input.peek(1) == ?\s
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

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 39)

    end

    # main rule used to study the input at the current position,
    # and choose the proper lexer rule to call in order to
    # fetch the next token
    # 
    # usually, you don't make direct calls to this method,
    # but instead use the next_token method, which will
    # build and emit the actual next token
    def token!
      # at line 1:8: ( T__35 | T__36 | T__37 | T__38 | T__39 | T__40 | T__41 | T__42 | T__43 | T__44 | T__45 | T__46 | T__47 | T__48 | T__49 | T__50 | T__51 | T__52 | T__53 | T__54 | T__55 | T__56 | T__57 | WS | COMMENT | STRING | IMPORTANT | NUMBER | ID | AT_KEYWORD | HASH | URI | UNICODE_RANGE )
      alt_36 = 33
      alt_36 = @dfa36.predict(@input)
      case alt_36
      when 1
        # at line 1:10: T__35
        t__35!

      when 2
        # at line 1:16: T__36
        t__36!

      when 3
        # at line 1:22: T__37
        t__37!

      when 4
        # at line 1:28: T__38
        t__38!

      when 5
        # at line 1:34: T__39
        t__39!

      when 6
        # at line 1:40: T__40
        t__40!

      when 7
        # at line 1:46: T__41
        t__41!

      when 8
        # at line 1:52: T__42
        t__42!

      when 9
        # at line 1:58: T__43
        t__43!

      when 10
        # at line 1:64: T__44
        t__44!

      when 11
        # at line 1:70: T__45
        t__45!

      when 12
        # at line 1:76: T__46
        t__46!

      when 13
        # at line 1:82: T__47
        t__47!

      when 14
        # at line 1:88: T__48
        t__48!

      when 15
        # at line 1:94: T__49
        t__49!

      when 16
        # at line 1:100: T__50
        t__50!

      when 17
        # at line 1:106: T__51
        t__51!

      when 18
        # at line 1:112: T__52
        t__52!

      when 19
        # at line 1:118: T__53
        t__53!

      when 20
        # at line 1:124: T__54
        t__54!

      when 21
        # at line 1:130: T__55
        t__55!

      when 22
        # at line 1:136: T__56
        t__56!

      when 23
        # at line 1:142: T__57
        t__57!

      when 24
        # at line 1:148: WS
        ws!

      when 25
        # at line 1:151: COMMENT
        comment!

      when 26
        # at line 1:159: STRING
        string!

      when 27
        # at line 1:166: IMPORTANT
        important!

      when 28
        # at line 1:176: NUMBER
        number!

      when 29
        # at line 1:183: ID
        id!

      when 30
        # at line 1:186: AT_KEYWORD
        at_keyword!

      when 31
        # at line 1:197: HASH
        hash!

      when 32
        # at line 1:202: URI
        uri!

      when 33
        # at line 1:206: UNICODE_RANGE
        unicode_range!

      end
    end

    
    # - - - - - - - - - - DFA definitions - - - - - - - - - - -
    class DFA16 < ANTLR3::DFA
      EOT = unpack(1, -1, 1, 3, 2, -1)
      EOF = unpack(4, -1)
      MIN = unpack(2, 46, 2, -1)
      MAX = unpack(2, 57, 2, -1)
      ACCEPT = unpack(2, -1, 1, 2, 1, 1)
      SPECIAL = unpack(4, -1)
      TRANSITION = [
        unpack(1, 2, 1, -1, 10, 1),
        unpack(1, 2, 1, -1, 10, 1),
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
          132:5: ( ( '0' .. '9' )+ | ( '0' .. '9' )* '.' ( '0' .. '9' )+ )
        __dfa_description__
      end
    end
    class DFA21 < ANTLR3::DFA
      EOT = unpack(1, 14, 1, -1, 8, 13, 1, -1, 2, 13, 11, -1, 4, 13, 3, 
                   -1, 1, 13, 2, -1)
      EOF = unpack(34, -1)
      MIN = unpack(1, 37, 1, -1, 1, 109, 1, 99, 2, 109, 1, 110, 1, 101, 
                   1, 97, 1, 114, 1, -1, 1, 104, 1, 122, 11, -1, 1, 103, 
                   1, 100, 1, 97, 1, 122, 3, -1, 1, 100, 2, -1)
      MAX = unpack(1, -1, 1, -1, 2, 120, 1, 109, 1, 115, 1, 110, 1, 101, 
                   1, 97, 1, 114, 1, -1, 1, 104, 1, 122, 11, -1, 1, 103, 
                   1, 100, 1, 97, 1, 122, 3, -1, 1, 100, 2, -1)
      ACCEPT = unpack(1, -1, 1, 1, 8, -1, 1, 6, 2, -1, 1, 8, 1, 9, 1, 2, 
                      1, 3, 5, 4, 1, 6, 1, 4, 4, -1, 1, 7, 2, 5, 1, -1, 
                      1, 7, 1, 5)
      SPECIAL = unpack(34, -1)
      TRANSITION = [
        unpack(1, 1, 7, -1, 1, 13, 19, -1, 6, 13, 21, -1, 1, 13, 2, -1, 
               1, 13, 1, -1, 2, 13, 1, 4, 1, 7, 1, 2, 1, 13, 1, 9, 1, 12, 
               1, 6, 1, 13, 1, 11, 1, 13, 1, 5, 2, 13, 1, 3, 1, 13, 1, 8, 
               1, 10, 7, 13, 5, -1, 65408, 13),
        unpack(),
        unpack(1, 15, 10, -1, 1, 16),
        unpack(1, 19, 16, -1, 1, 18, 3, -1, 1, 17),
        unpack(1, 20),
        unpack(1, 21, 5, -1, 1, 22),
        unpack(1, 23),
        unpack(1, 24),
        unpack(1, 25),
        unpack(1, 26),
        unpack(),
        unpack(1, 27),
        unpack(1, 28),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(1, 29),
        unpack(1, 30),
        unpack(1, 31),
        unpack(1, 32),
        unpack(),
        unpack(),
        unpack(),
        unpack(1, 33),
        unpack(),
        unpack()
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 21
      

      def description
        <<-'__dfa_description__'.strip!
          135:5: ( '%' | 'em' | 'ex' | ( 'px' | 'cm' | 'mm' | 'in' | 'pt' | 'pc' ) | ( 'deg' | 'rad' | 'grad' ) | ( 'ms' | 's' ) | ( 'khz' | 'hz' ) | PLAIN_ID | )
        __dfa_description__
      end
    end
    class DFA28 < ANTLR3::DFA
      EOT = unpack(8, -1)
      EOF = unpack(8, -1)
      MIN = unpack(1, 117, 1, 114, 1, 108, 1, 40, 2, 9, 2, -1)
      MAX = unpack(1, 117, 1, 114, 1, 108, 1, 40, 2, -1, 2, -1)
      ACCEPT = unpack(6, -1, 1, 1, 1, 2)
      SPECIAL = unpack(8, -1)
      TRANSITION = [
        unpack(1, 1),
        unpack(1, 2),
        unpack(1, 3),
        unpack(1, 4),
        unpack(2, 5, 1, -1, 2, 5, 18, -1, 1, 5, 1, 7, 1, 6, 4, 7, 1, 6, 
                1, -1, 2, 7, 2, -1, 1, 7, 46, -1, 1, 7, 33, -1, 1, 7, 1, 
                -1, 65408, 7),
        unpack(2, 5, 1, -1, 2, 5, 18, -1, 1, 5, 1, 7, 1, 6, 4, 7, 1, 6, 
                1, -1, 2, 7, 2, -1, 1, 7, 46, -1, 1, 7, 33, -1, 1, 7, 1, 
                -1, 65408, 7),
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
          157:1: URI : ( 'url(' S STRING S ')' | 'url(' S ( '!' | '#' | '$' | '%' | '&' | '*' | '-' | '~' | NONASCII | ESCAPE )* S ')' );
        __dfa_description__
      end
    end
    class DFA27 < ANTLR3::DFA
      EOT = unpack(12, -1)
      EOF = unpack(12, -1)
      MIN = unpack(1, 9, 11, -1)
      MAX = unpack(1, -1, 11, -1)
      ACCEPT = unpack(1, -1, 1, 11, 1, 1, 1, 2, 1, 3, 1, 4, 1, 5, 1, 6, 
                      1, 7, 1, 8, 1, 9, 1, 10)
      SPECIAL = unpack(12, -1)
      TRANSITION = [
        unpack(2, 1, 1, -1, 2, 1, 18, -1, 1, 1, 1, 2, 1, -1, 1, 3, 1, 4, 
               1, 5, 1, 6, 2, -1, 1, 1, 1, 7, 2, -1, 1, 8, 46, -1, 1, 11, 
               33, -1, 1, 9, 1, -1, 65408, 10),
        unpack(),
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
          ()* loopback of 159:14: ( '!' | '#' | '$' | '%' | '&' | '*' | '-' | '~' | NONASCII | ESCAPE )*
        __dfa_description__
      end
    end
    class DFA36 < ANTLR3::DFA
      EOT = unpack(2, -1, 1, 28, 9, -1, 1, 34, 6, -1, 1, 36, 4, -1, 1, 25, 
                   4, -1, 4, 33, 4, -1, 1, 25, 1, -1, 4, 33, 1, 25, 4, 33, 
                   1, 25, 3, 33, 1, 57, 1, -1, 2, 33, 1, 60, 1, -1, 1, 33, 
                   1, 62, 1, -1, 1, 63, 2, -1)
      EOF = unpack(64, -1)
      MIN = unpack(1, 9, 1, -1, 2, 45, 8, -1, 1, 48, 6, -1, 1, 42, 4, -1, 
                   1, 43, 4, -1, 1, 104, 1, 109, 1, 101, 1, 97, 4, -1, 1, 
                   108, 1, -1, 1, 97, 1, 112, 1, 100, 1, 103, 1, 40, 1, 
                   114, 1, 111, 1, 105, 1, 101, 1, 9, 1, 115, 1, 114, 1, 
                   97, 1, 45, 1, -1, 1, 101, 1, 116, 1, 45, 1, -1, 1, 116, 
                   1, 45, 1, -1, 1, 45, 2, -1)
      MAX = unpack(1, -1, 1, -1, 2, -1, 8, -1, 1, 57, 6, -1, 1, 42, 4, -1, 
                   1, 114, 4, -1, 1, 104, 1, 109, 1, 101, 1, 97, 4, -1, 
                   1, 108, 1, -1, 1, 97, 1, 112, 1, 100, 1, 103, 1, 40, 
                   1, 114, 1, 111, 1, 105, 1, 101, 1, -1, 1, 115, 1, 114, 
                   1, 97, 1, -1, 1, -1, 1, 101, 1, 116, 1, -1, 1, -1, 1, 
                   116, 1, -1, 1, -1, 1, -1, 2, -1)
      ACCEPT = unpack(1, -1, 1, 1, 2, -1, 1, 4, 1, 7, 1, 8, 1, 9, 1, 11, 
                      1, 12, 1, 13, 1, 14, 1, -1, 1, 16, 1, 17, 1, 18, 1, 
                      19, 1, 20, 1, 21, 1, -1, 1, 24, 1, 26, 1, 27, 1, 28, 
                      1, -1, 1, 29, 1, 31, 1, 2, 1, 23, 4, -1, 1, 30, 1, 
                      15, 1, 25, 1, 22, 1, -1, 1, 33, 14, -1, 1, 32, 3, 
                      -1, 1, 10, 2, -1, 1, 6, 1, -1, 1, 5, 1, 3)
      SPECIAL = unpack(64, -1)
      TRANSITION = [
        unpack(2, 20, 1, -1, 2, 20, 18, -1, 1, 20, 1, 22, 1, 21, 1, 26, 
               3, -1, 1, 21, 1, -1, 1, 15, 1, 11, 1, 9, 1, 7, 1, 2, 1, 12, 
               1, 19, 10, 23, 1, 8, 1, 4, 1, 1, 1, 16, 1, 10, 1, -1, 1, 
               3, 26, 25, 1, 13, 1, 25, 1, 14, 1, -1, 1, 25, 1, -1, 20, 
               25, 1, 24, 5, 25, 1, 5, 1, 18, 1, 6, 1, 17, 1, -1, 65408, 
               25),
        unpack(),
        unpack(1, 27, 19, -1, 26, 25, 1, -1, 1, 25, 2, -1, 1, 25, 1, -1, 
                26, 25, 5, -1, 65408, 25),
        unpack(1, 33, 19, -1, 6, 33, 21, -1, 1, 33, 2, -1, 1, 33, 1, -1, 
                2, 33, 1, 29, 5, 33, 1, 30, 3, 33, 1, 31, 2, 33, 1, 32, 
                10, 33, 5, -1, 65408, 33),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(10, 23),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(1, 35),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(1, 38, 70, -1, 1, 37),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(1, 39),
        unpack(1, 40),
        unpack(1, 41),
        unpack(1, 42),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(1, 43),
        unpack(),
        unpack(1, 44),
        unpack(1, 45),
        unpack(1, 46),
        unpack(1, 47),
        unpack(1, 48),
        unpack(1, 49),
        unpack(1, 50),
        unpack(1, 51),
        unpack(1, 52),
        unpack(2, 53, 1, -1, 2, 53, 18, -1, 8, 53, 1, -1, 2, 53, 2, -1, 
                1, 53, 46, -1, 1, 53, 33, -1, 1, 53, 1, -1, 65408, 53),
        unpack(1, 54),
        unpack(1, 55),
        unpack(1, 56),
        unpack(1, 33, 2, -1, 10, 33, 7, -1, 26, 33, 1, -1, 1, 33, 2, -1, 
                1, 33, 1, -1, 26, 33, 5, -1, 65408, 33),
        unpack(),
        unpack(1, 58),
        unpack(1, 59),
        unpack(1, 33, 2, -1, 10, 33, 7, -1, 26, 33, 1, -1, 1, 33, 2, -1, 
                1, 33, 1, -1, 26, 33, 5, -1, 65408, 33),
        unpack(),
        unpack(1, 61),
        unpack(1, 33, 2, -1, 10, 33, 7, -1, 26, 33, 1, -1, 1, 33, 2, -1, 
                1, 33, 1, -1, 26, 33, 5, -1, 65408, 33),
        unpack(),
        unpack(1, 33, 2, -1, 10, 33, 7, -1, 26, 33, 1, -1, 1, 33, 2, -1, 
                1, 33, 1, -1, 26, 33, 5, -1, 65408, 33),
        unpack(),
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
          1:1: Tokens : ( T__35 | T__36 | T__37 | T__38 | T__39 | T__40 | T__41 | T__42 | T__43 | T__44 | T__45 | T__46 | T__47 | T__48 | T__49 | T__50 | T__51 | T__52 | T__53 | T__54 | T__55 | T__56 | T__57 | WS | COMMENT | STRING | IMPORTANT | NUMBER | ID | AT_KEYWORD | HASH | URI | UNICODE_RANGE );
        __dfa_description__
      end
    end

    
    private
    
    def initialize_dfas
      super rescue nil
      @dfa16 = DFA16.new(self, 16)
      @dfa21 = DFA21.new(self, 21)
      @dfa28 = DFA28.new(self, 28)
      @dfa27 = DFA27.new(self, 27)
      @dfa36 = DFA36.new(self, 36)

    end
  end # class Lexer < ANTLR3::Lexer

  at_exit { Lexer.main(ARGV) } if __FILE__ == $0
end

