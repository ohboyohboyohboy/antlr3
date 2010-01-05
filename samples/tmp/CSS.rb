#!/usr/bin/env ruby
#
# CSS.g
# 
# Generated using ANTLR version: 3.2.1-SNAPSHOT Dec 18, 2009 04:29:28
# Ruby runtime library version: 1.2.6
# Input grammar file: CSS.g
# Generated at: 2010-01-02 19:55:10
# 

# ~~~> start load path setup
this_directory = File.expand_path( File.dirname( __FILE__ ) )
$:.unshift( this_directory ) unless $:.include?( this_directory )

antlr_load_failed = proc do
  load_path = $LOAD_PATH.map { |dir| '  - ' << dir }.join( $/ )
  raise LoadError, <<-'END'.strip!
  
Failed to load the ANTLR3 runtime library (version 1.2.6):

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
    Gem.activate( 'antlr3', '= 1.2.6' )
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
    define_tokens(:FUNCTION => 6, :UNICODE_RANGE => 29, :ANGLE => 8, :NUMBER => 21, 
                  :HASH => 25, :S => 26, :DELIM => 30, :ID => 23, :EOF => -1, 
                  :INVALID => 7, :PERCENTAGE => 4, :LENGTH => 9, :IMPORTANT => 19, 
                  :URI => 27, :TIME => 11, :WS => 14, :NEWLINE => 16, :ESCAPE => 17, 
                  :HEX => 28, :EMS => 12, :EXS => 13, :PLAIN_ID => 20, :DIMENSION => 5, 
                  :FREQ => 10, :AT_KEYWORD => 24, :COMMENT => 15, :NONASCII => 22, 
                  :STRING => 18)
  end


  class Lexer < ANTLR3::Lexer
    @grammar_home = CSS
    include TokenData

    begin
      generated_using( "CSS.g", "3.2.1-SNAPSHOT Dec 18, 2009 04:29:28", "1.2.6" )
    rescue NoMethodError => error
      error.name.to_sym == :generated_using or raise
    end
    
    RULE_NAMES   = ["WS", "COMMENT", "STRING", "IMPORTANT", "NUMBER", "ID", 
                    "AT_KEYWORD", "HASH", "URI", "UNICODE_RANGE", "DELIM", 
                    "PLAIN_ID", "NONASCII", "HEX", "ESCAPE", "NEWLINE", 
                    "S"].freeze
    RULE_METHODS = [:ws!, :comment!, :string!, :important!, :number!, :id!, 
                    :at_keyword!, :hash!, :uri!, :unicode_range!, :delim!, 
                    :plain_id!, :nonascii!, :hex!, :escape!, :newline!, 
                    :s!].freeze

    
    def initialize(input=nil, options = {})
      super(input, options)

    end
    
    # - - - - - - - - - - - lexer rules - - - - - - - - - - - -
    # lexer rule ws! (WS)
    # (in CSS.g)
    def ws!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 1)

      type = WS
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 20:5: ( ' ' | '\\t' | '\\f' | '\\r' | '\\n' )+
      # at file 20:5: ( ' ' | '\\t' | '\\f' | '\\r' | '\\n' )+
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

      # --> action
       channel = HIDDEN 
      # <-- action

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 1)

    end

    # lexer rule comment! (COMMENT)
    # (in CSS.g)
    def comment!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 2)

      type = COMMENT
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 23:5: '/*' (~ '*' )* ( '*' )+ (~ ( '/' | '*' ) (~ '*' )* ( '*' )+ )* '/'
      match("/*")
      # at line 23:10: (~ '*' )*
      loop do  #loop 2
        alt_2 = 2
        look_2_0 = @input.peek(1)

        if (look_2_0.between?(0x0000, ?)) || look_2_0.between?(?+, 0xFFFF)) 
          alt_2 = 1

        end
        case alt_2
        when 1
          # at line 23:10: ~ '*'
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
      # at file 23:16: ( '*' )+
      match_count_3 = 0
      loop do
        alt_3 = 2
        look_3_0 = @input.peek(1)

        if (look_3_0 == ?*) 
          alt_3 = 1

        end
        case alt_3
        when 1
          # at line 23:16: '*'
          match(?*)

        else
          match_count_3 > 0 and break
          eee = EarlyExit(3)


          raise eee
        end
        match_count_3 += 1
      end

      # at line 23:21: (~ ( '/' | '*' ) (~ '*' )* ( '*' )+ )*
      loop do  #loop 6
        alt_6 = 2
        look_6_0 = @input.peek(1)

        if (look_6_0.between?(0x0000, ?)) || look_6_0.between?(?+, ?.) || look_6_0.between?(?0, 0xFFFF)) 
          alt_6 = 1

        end
        case alt_6
        when 1
          # at line 23:23: ~ ( '/' | '*' ) (~ '*' )* ( '*' )+
          if @input.peek(1).between?(0x0000, ?)) || @input.peek(1).between?(?+, ?.) || @input.peek(1).between?(?0, 0x00FF)
            @input.consume
          else
            mse = MismatchedSet(nil)
            recover(mse)
            raise mse
          end


          # at line 23:36: (~ '*' )*
          loop do  #loop 4
            alt_4 = 2
            look_4_0 = @input.peek(1)

            if (look_4_0.between?(0x0000, ?)) || look_4_0.between?(?+, 0xFFFF)) 
              alt_4 = 1

            end
            case alt_4
            when 1
              # at line 23:36: ~ '*'
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
          # at file 23:42: ( '*' )+
          match_count_5 = 0
          loop do
            alt_5 = 2
            look_5_0 = @input.peek(1)

            if (look_5_0 == ?*) 
              alt_5 = 1

            end
            case alt_5
            when 1
              # at line 23:42: '*'
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
      # trace_out(__method__, 2)

    end

    # lexer rule string! (STRING)
    # (in CSS.g)
    def string!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 3)

      type = STRING
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 28:3: ( '\"' (~ ( '\\n' | '\\r' | '\\f' | '\\\\' | '\"' ) | '\\\\' NEWLINE | ESCAPE )* ( '\"' | ) | '\\'' (~ ( '\\n' | '\\r' | '\\f' | '\\\\' | '\\'' ) | '\\\\' NEWLINE | ESCAPE )* ( '\\'' | ) )
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
        # at line 28:5: '\"' (~ ( '\\n' | '\\r' | '\\f' | '\\\\' | '\"' ) | '\\\\' NEWLINE | ESCAPE )* ( '\"' | )
        match(?")
        # at line 29:5: (~ ( '\\n' | '\\r' | '\\f' | '\\\\' | '\"' ) | '\\\\' NEWLINE | ESCAPE )*
        loop do  #loop 7
          alt_7 = 4
          look_7_0 = @input.peek(1)

          if (look_7_0.between?(0x0000, ?\t) || look_7_0 == 0x000B || look_7_0.between?(0x000E, ?!) || look_7_0.between?(?#, ?[) || look_7_0.between?(?], 0xFFFF)) 
            alt_7 = 1
          elsif (look_7_0 == ?\\) 
            look_7_3 = @input.peek(2)

            if (look_7_3.between?(0x0000, ?\t) || look_7_3 == 0x000B || look_7_3.between?(0x000E, 0x001F) || look_7_3.between?(?!, 0xFFFF)) 
              alt_7 = 3
            elsif (look_7_3 == ?\n || look_7_3.between?(?\f, ?\r) || look_7_3 == ?\s) 
              alt_7 = 2

            end

          end
          case alt_7
          when 1
            # at line 29:7: ~ ( '\\n' | '\\r' | '\\f' | '\\\\' | '\"' )
            if @input.peek(1).between?(0x0000, ?\t) || @input.peek(1) == 0x000B || @input.peek(1).between?(0x000E, ?!) || @input.peek(1).between?(?#, ?[) || @input.peek(1).between?(?], 0x00FF)
              @input.consume
            else
              mse = MismatchedSet(nil)
              recover(mse)
              raise mse
            end



          when 2
            # at line 30:7: '\\\\' NEWLINE
            match(?\\)
            newline!

          when 3
            # at line 31:7: ESCAPE
            escape!

          else
            break #loop 7
          end
        end
        # at line 33:5: ( '\"' | )
        alt_8 = 2
        look_8_0 = @input.peek(1)

        if (look_8_0 == ?") 
          alt_8 = 1
        else
          alt_8 = 2
        end
        case alt_8
        when 1
          # at line 33:7: '\"'
          match(?")

        when 2
          # at line 34:7: 
          # --> action
           type = INVALID 
          # <-- action

        end

      when 2
        # at line 36:5: '\\'' (~ ( '\\n' | '\\r' | '\\f' | '\\\\' | '\\'' ) | '\\\\' NEWLINE | ESCAPE )* ( '\\'' | )
        match(?\')
        # at line 37:5: (~ ( '\\n' | '\\r' | '\\f' | '\\\\' | '\\'' ) | '\\\\' NEWLINE | ESCAPE )*
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
            # at line 37:7: ~ ( '\\n' | '\\r' | '\\f' | '\\\\' | '\\'' )
            if @input.peek(1).between?(0x0000, ?\t) || @input.peek(1) == 0x000B || @input.peek(1).between?(0x000E, ?&) || @input.peek(1).between?(?(, ?[) || @input.peek(1).between?(?], 0x00FF)
              @input.consume
            else
              mse = MismatchedSet(nil)
              recover(mse)
              raise mse
            end



          when 2
            # at line 38:7: '\\\\' NEWLINE
            match(?\\)
            newline!

          when 3
            # at line 39:7: ESCAPE
            escape!

          else
            break #loop 9
          end
        end
        # at line 41:5: ( '\\'' | )
        alt_10 = 2
        look_10_0 = @input.peek(1)

        if (look_10_0 == ?\') 
          alt_10 = 1
        else
          alt_10 = 2
        end
        case alt_10
        when 1
          # at line 41:7: '\\''
          match(?\')

        when 2
          # at line 42:7: 
          # --> action
           type = INVALID 
          # <-- action

        end

      end
      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 3)

    end

    # lexer rule important! (IMPORTANT)
    # (in CSS.g)
    def important!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 4)

      type = IMPORTANT
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 47:5: '!' ( ' ' )* 'important'
      match(?!)
      # at line 47:9: ( ' ' )*
      loop do  #loop 12
        alt_12 = 2
        look_12_0 = @input.peek(1)

        if (look_12_0 == ?\s) 
          alt_12 = 1

        end
        case alt_12
        when 1
          # at line 47:9: ' '
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
      # trace_out(__method__, 4)

    end

    # lexer rule number! (NUMBER)
    # (in CSS.g)
    def number!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 5)

      type = NUMBER
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 51:5: ( ( '0' .. '9' )+ | ( '0' .. '9' )* '.' ( '0' .. '9' )+ ) ( '%' | 'em' | 'ex' | ( 'px' | 'cm' | 'mm' | 'in' | 'pt' | 'pc' ) | ( 'deg' | 'rad' | 'grad' ) | ( 'ms' | 's' ) | ( 'khz' | 'hz' ) | PLAIN_ID | )
      # at line 51:5: ( ( '0' .. '9' )+ | ( '0' .. '9' )* '.' ( '0' .. '9' )+ )
      alt_16 = 2
      alt_16 = @dfa16.predict(@input)
      case alt_16
      when 1
        # at line 51:7: ( '0' .. '9' )+
        # at file 51:7: ( '0' .. '9' )+
        match_count_13 = 0
        loop do
          alt_13 = 2
          look_13_0 = @input.peek(1)

          if (look_13_0.between?(?0, ?9)) 
            alt_13 = 1

          end
          case alt_13
          when 1
            # at line 51:7: '0' .. '9'
            match_range(?0, ?9)

          else
            match_count_13 > 0 and break
            eee = EarlyExit(13)


            raise eee
          end
          match_count_13 += 1
        end


      when 2
        # at line 52:7: ( '0' .. '9' )* '.' ( '0' .. '9' )+
        # at line 52:7: ( '0' .. '9' )*
        loop do  #loop 14
          alt_14 = 2
          look_14_0 = @input.peek(1)

          if (look_14_0.between?(?0, ?9)) 
            alt_14 = 1

          end
          case alt_14
          when 1
            # at line 52:7: '0' .. '9'
            match_range(?0, ?9)

          else
            break #loop 14
          end
        end
        match(?.)
        # at file 52:21: ( '0' .. '9' )+
        match_count_15 = 0
        loop do
          alt_15 = 2
          look_15_0 = @input.peek(1)

          if (look_15_0.between?(?0, ?9)) 
            alt_15 = 1

          end
          case alt_15
          when 1
            # at line 52:21: '0' .. '9'
            match_range(?0, ?9)

          else
            match_count_15 > 0 and break
            eee = EarlyExit(15)


            raise eee
          end
          match_count_15 += 1
        end


      end
      # at line 54:5: ( '%' | 'em' | 'ex' | ( 'px' | 'cm' | 'mm' | 'in' | 'pt' | 'pc' ) | ( 'deg' | 'rad' | 'grad' ) | ( 'ms' | 's' ) | ( 'khz' | 'hz' ) | PLAIN_ID | )
      alt_21 = 9
      alt_21 = @dfa21.predict(@input)
      case alt_21
      when 1
        # at line 54:7: '%'
        match(?%)
        # --> action
         type = PERCENTAGE 
        # <-- action

      when 2
        # at line 55:7: 'em'
        match("em")
        # --> action
         type = EMS  
        # <-- action

      when 3
        # at line 56:7: 'ex'
        match("ex")
        # --> action
         type = EXS  
        # <-- action

      when 4
        # at line 57:7: ( 'px' | 'cm' | 'mm' | 'in' | 'pt' | 'pc' )
        # at line 57:7: ( 'px' | 'cm' | 'mm' | 'in' | 'pt' | 'pc' )
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
          # at line 57:9: 'px'
          match("px")

        when 2
          # at line 57:16: 'cm'
          match("cm")

        when 3
          # at line 57:23: 'mm'
          match("mm")

        when 4
          # at line 57:30: 'in'
          match("in")

        when 5
          # at line 57:37: 'pt'
          match("pt")

        when 6
          # at line 57:44: 'pc'
          match("pc")

        end
        # --> action
         type = LENGTH 
        # <-- action

      when 5
        # at line 58:7: ( 'deg' | 'rad' | 'grad' )
        # at line 58:7: ( 'deg' | 'rad' | 'grad' )
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
          # at line 58:9: 'deg'
          match("deg")

        when 2
          # at line 58:17: 'rad'
          match("rad")

        when 3
          # at line 58:25: 'grad'
          match("grad")

        end
        # --> action
         type = ANGLE 
        # <-- action

      when 6
        # at line 59:7: ( 'ms' | 's' )
        # at line 59:7: ( 'ms' | 's' )
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
          # at line 59:9: 'ms'
          match("ms")

        when 2
          # at line 59:16: 's'
          match(?s)

        end
        # --> action
         type = TIME 
        # <-- action

      when 7
        # at line 60:7: ( 'khz' | 'hz' )
        # at line 60:7: ( 'khz' | 'hz' )
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
          # at line 60:9: 'khz'
          match("khz")

        when 2
          # at line 60:17: 'hz'
          match("hz")

        end
        # --> action
         type = FREQ 
        # <-- action

      when 8
        # at line 61:7: PLAIN_ID
        plain_id!
        # --> action
         type = DIMENSION 
        # <-- action

      when 9
        # at line 63:5: 

      end

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 5)

    end

    # lexer rule id! (ID)
    # (in CSS.g)
    def id!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 6)

      type = ID
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 67:5: ( '-' )? ( 'a' .. 'z' | 'A' .. 'Z' | '_' | NONASCII | ESCAPE ) ( '_' | 'a' .. 'z' | 'A' .. 'Z' | '0' .. '9' | '-' | NONASCII | ESCAPE )* ( '(' | )
      # at line 67:5: ( '-' )?
      alt_22 = 2
      look_22_0 = @input.peek(1)

      if (look_22_0 == ?-) 
        alt_22 = 1
      end
      case alt_22
      when 1
        # at line 67:5: '-'
        match(?-)

      end
      # at line 67:11: ( 'a' .. 'z' | 'A' .. 'Z' | '_' | NONASCII | ESCAPE )
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
        # at line 67:13: 'a' .. 'z'
        match_range(?a, ?z)

      when 2
        # at line 67:24: 'A' .. 'Z'
        match_range(?A, ?Z)

      when 3
        # at line 67:35: '_'
        match(?_)

      when 4
        # at line 67:41: NONASCII
        nonascii!

      when 5
        # at line 67:52: ESCAPE
        escape!

      end
      # at line 68:5: ( '_' | 'a' .. 'z' | 'A' .. 'Z' | '0' .. '9' | '-' | NONASCII | ESCAPE )*
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
          # at line 68:7: '_'
          match(?_)

        when 2
          # at line 68:13: 'a' .. 'z'
          match_range(?a, ?z)

        when 3
          # at line 68:24: 'A' .. 'Z'
          match_range(?A, ?Z)

        when 4
          # at line 68:35: '0' .. '9'
          match_range(?0, ?9)

        when 5
          # at line 68:46: '-'
          match(?-)

        when 6
          # at line 68:52: NONASCII
          nonascii!

        when 7
          # at line 68:63: ESCAPE
          escape!

        else
          break #loop 24
        end
      end
      # at line 69:5: ( '(' | )
      alt_25 = 2
      look_25_0 = @input.peek(1)

      if (look_25_0 == ?() 
        alt_25 = 1
      else
        alt_25 = 2
      end
      case alt_25
      when 1
        # at line 69:7: '('
        match(?()
        # --> action
         type = FUNCTION 
        # <-- action

      when 2
        # at line 69:35: 

      end

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 6)

    end

    # lexer rule at_keyword! (AT_KEYWORD)
    # (in CSS.g)
    def at_keyword!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 7)

      type = AT_KEYWORD
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 72:14: '@' PLAIN_ID
      match(?@)
      plain_id!

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 7)

    end

    # lexer rule hash! (HASH)
    # (in CSS.g)
    def hash!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 8)

      type = HASH
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 74:8: '#' ( '_' | 'a' .. 'z' | 'A' .. 'Z' | '0' .. '9' | '-' | NONASCII | ESCAPE )+
      match(?#)
      # at file 74:12: ( '_' | 'a' .. 'z' | 'A' .. 'Z' | '0' .. '9' | '-' | NONASCII | ESCAPE )+
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
          # at line 74:14: '_'
          match(?_)

        when 2
          # at line 74:20: 'a' .. 'z'
          match_range(?a, ?z)

        when 3
          # at line 74:31: 'A' .. 'Z'
          match_range(?A, ?Z)

        when 4
          # at line 74:42: '0' .. '9'
          match_range(?0, ?9)

        when 5
          # at line 74:53: '-'
          match(?-)

        when 6
          # at line 74:59: NONASCII
          nonascii!

        when 7
          # at line 74:70: ESCAPE
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
      # trace_out(__method__, 8)

    end

    # lexer rule uri! (URI)
    # (in CSS.g)
    def uri!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 9)

      type = URI
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 77:3: ( 'url(' S STRING S ')' | 'url(' S ( '!' | '#' | '$' | '%' | '&' | '*' | '-' | '~' | NONASCII | ESCAPE )* S ')' )
      alt_28 = 2
      alt_28 = @dfa28.predict(@input)
      case alt_28
      when 1
        # at line 77:5: 'url(' S STRING S ')'
        match("url(")
        s!
        string!
        s!
        match(?))

      when 2
        # at line 78:5: 'url(' S ( '!' | '#' | '$' | '%' | '&' | '*' | '-' | '~' | NONASCII | ESCAPE )* S ')'
        match("url(")
        s!
        # at line 78:14: ( '!' | '#' | '$' | '%' | '&' | '*' | '-' | '~' | NONASCII | ESCAPE )*
        loop do  #loop 27
          alt_27 = 11
          alt_27 = @dfa27.predict(@input)
          case alt_27
          when 1
            # at line 78:16: '!'
            match(?!)

          when 2
            # at line 78:22: '#'
            match(?#)

          when 3
            # at line 78:28: '$'
            match(?$)

          when 4
            # at line 78:34: '%'
            match(?%)

          when 5
            # at line 78:40: '&'
            match(?&)

          when 6
            # at line 78:46: '*'
            match(?*)

          when 7
            # at line 78:52: '-'
            match(?-)

          when 8
            # at line 78:58: '~'
            match(?~)

          when 9
            # at line 78:64: NONASCII
            nonascii!

          when 10
            # at line 78:75: ESCAPE
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
      # trace_out(__method__, 9)

    end

    # lexer rule unicode_range! (UNICODE_RANGE)
    # (in CSS.g)
    def unicode_range!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 10)

      type = UNICODE_RANGE
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 82:5: 'u+' HEX HEX HEX HEX HEX HEX ( '-' HEX HEX HEX HEX HEX HEX )?
      match("u+")
      hex!
      hex!
      hex!
      hex!
      hex!
      hex!
      # at line 82:34: ( '-' HEX HEX HEX HEX HEX HEX )?
      alt_29 = 2
      look_29_0 = @input.peek(1)

      if (look_29_0 == ?-) 
        alt_29 = 1
      end
      case alt_29
      when 1
        # at line 82:36: '-' HEX HEX HEX HEX HEX HEX
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
      # trace_out(__method__, 10)

    end

    # lexer rule delim! (DELIM)
    # (in CSS.g)
    def delim!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 11)

      type = DELIM
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 
      if @input.peek(1).between?(?$, ?&) || @input.peek(1).between?(?*, ?+)
        @input.consume
      else
        mse = MismatchedSet(nil)
        recover(mse)
        raise mse
      end



      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 11)

    end

    # lexer rule plain_id! (PLAIN_ID)
    # (in CSS.g)
    def plain_id!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 12)

      
      # - - - - main rule block - - - -
      # at line 92:5: ( '-' )? ( 'a' .. 'z' | 'A' .. 'F' | '_' | NONASCII | ESCAPE ) ( '_' | 'a' .. 'z' | 'A' .. 'Z' | '0' .. '9' | '-' | NONASCII | ESCAPE )*
      # at line 92:5: ( '-' )?
      alt_30 = 2
      look_30_0 = @input.peek(1)

      if (look_30_0 == ?-) 
        alt_30 = 1
      end
      case alt_30
      when 1
        # at line 92:5: '-'
        match(?-)

      end
      # at line 92:11: ( 'a' .. 'z' | 'A' .. 'F' | '_' | NONASCII | ESCAPE )
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
        # at line 92:13: 'a' .. 'z'
        match_range(?a, ?z)

      when 2
        # at line 92:24: 'A' .. 'F'
        match_range(?A, ?F)

      when 3
        # at line 92:37: '_'
        match(?_)

      when 4
        # at line 92:43: NONASCII
        nonascii!

      when 5
        # at line 92:54: ESCAPE
        escape!

      end
      # at line 93:5: ( '_' | 'a' .. 'z' | 'A' .. 'Z' | '0' .. '9' | '-' | NONASCII | ESCAPE )*
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
          # at line 93:7: '_'
          match(?_)

        when 2
          # at line 93:13: 'a' .. 'z'
          match_range(?a, ?z)

        when 3
          # at line 93:24: 'A' .. 'Z'
          match_range(?A, ?Z)

        when 4
          # at line 93:37: '0' .. '9'
          match_range(?0, ?9)

        when 5
          # at line 93:48: '-'
          match(?-)

        when 6
          # at line 93:54: NONASCII
          nonascii!

        when 7
          # at line 93:65: ESCAPE
          escape!

        else
          break #loop 32
        end
      end

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 12)

    end

    # lexer rule nonascii! (NONASCII)
    # (in CSS.g)
    def nonascii!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 13)

      
      # - - - - main rule block - - - -
      # at line 97:12: ~ ( '\\u0000' .. '\\u007f' )
      if @input.peek(1).between?(0x0080, 0x00FF)
        @input.consume
      else
        mse = MismatchedSet(nil)
        recover(mse)
        raise mse
      end



    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 13)

    end

    # lexer rule hex! (HEX)
    # (in CSS.g)
    def hex!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 14)

      
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
      # trace_out(__method__, 14)

    end

    # lexer rule escape! (ESCAPE)
    # (in CSS.g)
    def escape!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 15)

      
      # - - - - main rule block - - - -
      # at line 103:11: '\\\\' ( HEX HEX HEX HEX HEX HEX | ~ ( '\\n' | '\\r' | '\\f' | '0' .. '9' | 'a' .. 'f' | 'A' .. 'F' ) )
      match(?\\)
      # at line 104:11: ( HEX HEX HEX HEX HEX HEX | ~ ( '\\n' | '\\r' | '\\f' | '0' .. '9' | 'a' .. 'f' | 'A' .. 'F' ) )
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
        # at line 104:13: HEX HEX HEX HEX HEX HEX
        hex!
        hex!
        hex!
        hex!
        hex!
        hex!

      when 2
        # at line 105:13: ~ ( '\\n' | '\\r' | '\\f' | '0' .. '9' | 'a' .. 'f' | 'A' .. 'F' )
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
      # trace_out(__method__, 15)

    end

    # lexer rule newline! (NEWLINE)
    # (in CSS.g)
    def newline!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 16)

      
      # - - - - main rule block - - - -
      # at line 110:10: ( '\\r' '\\n' | ' ' | '\\n' | '\\r' | '\\f' )
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
        # at line 110:12: '\\r' '\\n'
        match(?\r)
        match(?\n)

      when 2
        # at line 110:24: ' '
        match(?\s)

      when 3
        # at line 110:30: '\\n'
        match(?\n)

      when 4
        # at line 110:37: '\\r'
        match(?\r)

      when 5
        # at line 110:44: '\\f'
        match(?\f)

      end
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 16)

    end

    # lexer rule s! (S)
    # (in CSS.g)
    def s!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 17)

      
      # - - - - main rule block - - - -
      # at line 113:5: ( ' ' | '\\t' | '\\f' | '\\r' | '\\n' )*
      # at line 113:5: ( ' ' | '\\t' | '\\f' | '\\r' | '\\n' )*
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
      # at line 1:8: ( WS | COMMENT | STRING | IMPORTANT | NUMBER | ID | AT_KEYWORD | HASH | URI | UNICODE_RANGE | DELIM )
      alt_36 = 11
      alt_36 = @dfa36.predict(@input)
      case alt_36
      when 1
        # at line 1:10: WS
        ws!

      when 2
        # at line 1:13: COMMENT
        comment!

      when 3
        # at line 1:21: STRING
        string!

      when 4
        # at line 1:28: IMPORTANT
        important!

      when 5
        # at line 1:38: NUMBER
        number!

      when 6
        # at line 1:45: ID
        id!

      when 7
        # at line 1:48: AT_KEYWORD
        at_keyword!

      when 8
        # at line 1:59: HASH
        hash!

      when 9
        # at line 1:64: URI
        uri!

      when 10
        # at line 1:68: UNICODE_RANGE
        unicode_range!

      when 11
        # at line 1:82: DELIM
        delim!

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
          51:5: ( ( '0' .. '9' )+ | ( '0' .. '9' )* '.' ( '0' .. '9' )+ )
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
          54:5: ( '%' | 'em' | 'ex' | ( 'px' | 'cm' | 'mm' | 'in' | 'pt' | 'pc' ) | ( 'deg' | 'rad' | 'grad' ) | ( 'ms' | 's' ) | ( 'khz' | 'hz' ) | PLAIN_ID | )
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
          76:1: URI : ( 'url(' S STRING S ')' | 'url(' S ( '!' | '#' | '$' | '%' | '&' | '*' | '-' | '~' | NONASCII | ESCAPE )* S ')' );
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
          ()* loopback of 78:14: ( '!' | '#' | '$' | '%' | '&' | '*' | '-' | '~' | NONASCII | ESCAPE )*
        __dfa_description__
      end
    end
    class DFA36 < ANTLR3::DFA
      EOT = unpack(7, -1, 1, 6, 3, -1, 1, 6, 1, -1, 2, 6, 1, -1)
      EOF = unpack(16, -1)
      MIN = unpack(1, 9, 6, -1, 1, 43, 3, -1, 1, 108, 1, -1, 1, 40, 1, 9, 
                   1, -1)
      MAX = unpack(1, -1, 6, -1, 1, 114, 3, -1, 1, 108, 1, -1, 1, 40, 1, 
                   -1, 1, -1)
      ACCEPT = unpack(1, -1, 1, 1, 1, 2, 1, 3, 1, 4, 1, 5, 1, 6, 1, -1, 
                      1, 7, 1, 8, 1, 11, 1, -1, 1, 10, 2, -1, 1, 9)
      SPECIAL = unpack(16, -1)
      TRANSITION = [
        unpack(2, 1, 1, -1, 2, 1, 18, -1, 1, 1, 1, 4, 1, 3, 1, 9, 3, 10, 
               1, 3, 2, -1, 2, 10, 1, -1, 1, 6, 1, 5, 1, 2, 10, 5, 6, -1, 
               1, 8, 26, 6, 1, -1, 1, 6, 2, -1, 1, 6, 1, -1, 20, 6, 1, 7, 
               5, 6, 5, -1, 65408, 6),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(1, 12, 70, -1, 1, 11),
        unpack(),
        unpack(),
        unpack(),
        unpack(1, 13),
        unpack(),
        unpack(1, 14),
        unpack(2, 15, 1, -1, 2, 15, 18, -1, 8, 15, 1, -1, 2, 15, 2, -1, 
                1, 15, 46, -1, 1, 15, 33, -1, 1, 15, 1, -1, 65408, 15),
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
          1:1: Tokens : ( WS | COMMENT | STRING | IMPORTANT | NUMBER | ID | AT_KEYWORD | HASH | URI | UNICODE_RANGE | DELIM );
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

