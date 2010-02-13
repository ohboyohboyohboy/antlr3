#!/usr/bin/env ruby
#
# SimpleShell.g
# 
# Generated using ANTLR version: 3.2.1-SNAPSHOT Dec 18, 2009 04:29:28
# Ruby runtime library version: 1.6.1
# Input grammar file: SimpleShell.g
# Generated at: 2010-02-10 23:57:59
# 

# ~~~> start load path setup
this_directory = File.expand_path( File.dirname( __FILE__ ) )
$:.unshift( this_directory ) unless $:.include?( this_directory )

antlr_load_failed = proc do
  load_path = $LOAD_PATH.map { |dir| '  - ' << dir }.join( $/ )
  raise LoadError, <<-END.strip!
  
Failed to load the ANTLR3 runtime library (version 1.6.1):

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
    Gem.activate( 'antlr3', '~> 1.6.1' )
  rescue Gem::LoadError
    antlr_load_failed.call
  end
  
  require 'antlr3'
  
end
# <~~~ end load path setup


module Shell
  # TokenData defines all of the token type integer values
  # as constants, which will be included in all 
  # ANTLR-generated recognizers.
  const_defined?(:TokenData) or TokenData = ANTLR3::TokenScheme.new

  module TokenData

    # define the token constants
    define_tokens( :GLOB => 11, :WS => 8, :VARIABLE => 10, :PIPELINE_OPERATOR => 16, 
                   :REDIRECT => 17, :CHUNK => 13, :COMMAND_NAME => 4, :CLOSE_PAR => 15, 
                   :SWITCH => 5, :COMMAND_END => 9, :CHUNK_CHAR => 12, :SHELL_STRING => 7, 
                   :COMMENT => 18, :EOF => -1, :OPEN_PAR => 14, :STRING => 6 )
    
  end


  class Lexer < ANTLR3::Lexer
    @grammar_home = Shell
    include TokenData

    begin
      generated_using( "SimpleShell.g", "3.2.1-SNAPSHOT Dec 18, 2009 04:29:28", "1.6.1" )
    rescue NoMethodError => error
      error.name.to_sym == :generated_using or raise
    end
    
    RULE_NAMES   = ["STRING", "SHELL_STRING", "WS", "COMMAND_END", "VARIABLE", 
                    "GLOB", "CHUNK", "OPEN_PAR", "CLOSE_PAR", "PIPELINE_OPERATOR", 
                    "REDIRECT", "COMMENT", "CHUNK_CHAR"].freeze
    RULE_METHODS = [:string!, :shell_string!, :ws!, :command_end!, :variable!, 
                    :glob!, :chunk!, :open_par!, :close_par!, :pipeline_operator!, 
                    :redirect!, :comment!, :chunk_char!].freeze

    
    def initialize(input=nil, options = {})
      super(input, options)

      
      # - - - - - - - - - - @init - - - - - - - - - - - - - - -

        @cmd_start = true

    end
    
    # - - - - - - - - - - - lexer rules - - - - - - - - - - - -
    # lexer rule string! (STRING)
    # (in SimpleShell.g)
    def string!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 1)

      type = STRING
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 15:3: ( '\"' (~ ( '\"' | '\\\\' ) | '\\\\' . )* '\"' | '\\'' (~ ( '\\'' | '\\\\' ) | '\\\\' . )* '\\'' )
      alt_3 = 2
      look_3_0 = @input.peek(1)

      if (look_3_0 == ?") 
        alt_3 = 1
      elsif (look_3_0 == ?\') 
        alt_3 = 2
      else
      nvae = NoViableAlternative("", 3, 0)
        raise nvae
      end
      case alt_3
      when 1
        # at line 15:5: '\"' (~ ( '\"' | '\\\\' ) | '\\\\' . )* '\"'
        match(?")
        # at line 15:10: (~ ( '\"' | '\\\\' ) | '\\\\' . )*
        while true # decision 1
          alt_1 = 3
          look_1_0 = @input.peek(1)

          if (look_1_0.between?(0x0000, ?!) || look_1_0.between?(?#, ?[) || look_1_0.between?(?], 0xFFFF)) 
            alt_1 = 1
          elsif (look_1_0 == ?\\) 
            alt_1 = 2

          end
          case alt_1
          when 1
            # at line 15:12: ~ ( '\"' | '\\\\' )
            if @input.peek(1).between?(0x0000, ?!) || @input.peek(1).between?(?#, ?[) || @input.peek(1).between?(?], 0x00FF)
              @input.consume
            else
              mse = MismatchedSet(nil)
              recover(mse)
              raise mse
            end



          when 2
            # at line 15:29: '\\\\' .
            match(?\\)
            match_any

          else
            break # out of loop for decision 1
          end
        end # loop for decision 1
        match(?")

      when 2
        # at line 16:5: '\\'' (~ ( '\\'' | '\\\\' ) | '\\\\' . )* '\\''
        match(?\')
        # at line 16:10: (~ ( '\\'' | '\\\\' ) | '\\\\' . )*
        while true # decision 2
          alt_2 = 3
          look_2_0 = @input.peek(1)

          if (look_2_0.between?(0x0000, ?&) || look_2_0.between?(?(, ?[) || look_2_0.between?(?], 0xFFFF)) 
            alt_2 = 1
          elsif (look_2_0 == ?\\) 
            alt_2 = 2

          end
          case alt_2
          when 1
            # at line 16:12: ~ ( '\\'' | '\\\\' )
            if @input.peek(1).between?(0x0000, ?&) || @input.peek(1).between?(?(, ?[) || @input.peek(1).between?(?], 0x00FF)
              @input.consume
            else
              mse = MismatchedSet(nil)
              recover(mse)
              raise mse
            end



          when 2
            # at line 16:29: '\\\\' .
            match(?\\)
            match_any

          else
            break # out of loop for decision 2
          end
        end # loop for decision 2
        match(?\')

      end
      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 1)

    end

    # lexer rule shell_string! (SHELL_STRING)
    # (in SimpleShell.g)
    def shell_string!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 2)

      type = SHELL_STRING
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 20:5: '`' (~ ( '`' | '\\\\' ) | '\\\\' . )* '`'
      match(?`)
      # at line 20:9: (~ ( '`' | '\\\\' ) | '\\\\' . )*
      while true # decision 4
        alt_4 = 3
        look_4_0 = @input.peek(1)

        if (look_4_0.between?(0x0000, ?[) || look_4_0.between?(?], ?_) || look_4_0.between?(?a, 0xFFFF)) 
          alt_4 = 1
        elsif (look_4_0 == ?\\) 
          alt_4 = 2

        end
        case alt_4
        when 1
          # at line 20:11: ~ ( '`' | '\\\\' )
          if @input.peek(1).between?(0x0000, ?[) || @input.peek(1).between?(?], ?_) || @input.peek(1).between?(?a, 0x00FF)
            @input.consume
          else
            mse = MismatchedSet(nil)
            recover(mse)
            raise mse
          end



        when 2
          # at line 20:27: '\\\\' .
          match(?\\)
          match_any

        else
          break # out of loop for decision 4
        end
      end # loop for decision 4
      match(?`)

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 2)

    end

    # lexer rule ws! (WS)
    # (in SimpleShell.g)
    def ws!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 3)

      type = WS
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 23:5: ( ' ' | '\\t' )+
      # at file 23:5: ( ' ' | '\\t' )+
      match_count_5 = 0
      while true
        alt_5 = 2
        look_5_0 = @input.peek(1)

        if (look_5_0 == ?\t || look_5_0 == ?\s) 
          alt_5 = 1

        end
        case alt_5
        when 1
          # at line 
          if @input.peek(1) == ?\t || @input.peek(1) == ?\s
            @input.consume
          else
            mse = MismatchedSet(nil)
            recover(mse)
            raise mse
          end



        else
          match_count_5 > 0 and break
          eee = EarlyExit(5)


          raise eee
        end
        match_count_5 += 1
      end


      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 3)

    end

    # lexer rule command_end! (COMMAND_END)
    # (in SimpleShell.g)
    def command_end!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 4)

      type = COMMAND_END
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 27:3: ( ( '\\r' )? '\\n' | ';' )
      alt_7 = 2
      look_7_0 = @input.peek(1)

      if (look_7_0 == ?\n || look_7_0 == ?\r) 
        alt_7 = 1
      elsif (look_7_0 == ?;) 
        alt_7 = 2
      else
      nvae = NoViableAlternative("", 7, 0)
        raise nvae
      end
      case alt_7
      when 1
        # at line 27:5: ( '\\r' )? '\\n'
        # at line 27:5: ( '\\r' )?
        alt_6 = 2
        look_6_0 = @input.peek(1)

        if (look_6_0 == ?\r) 
          alt_6 = 1
        end
        case alt_6
        when 1
          # at line 27:5: '\\r'
          match(?\r)

        end
        match(?\n)

      when 2
        # at line 28:5: ';'
        match(?;)

      end
      
      @state.type = type
      @state.channel = channel
    # --> action
     @cmd_start = true 
    # <-- action
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 4)

    end

    # lexer rule variable! (VARIABLE)
    # (in SimpleShell.g)
    def variable!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 5)

      type = VARIABLE
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 32:5: '$' ( 'a' .. 'z' | 'A' .. 'Z' | '0' .. '9' | '-' | '_' )+
      match(?$)
      # at file 32:9: ( 'a' .. 'z' | 'A' .. 'Z' | '0' .. '9' | '-' | '_' )+
      match_count_8 = 0
      while true
        alt_8 = 2
        look_8_0 = @input.peek(1)

        if (look_8_0 == ?- || look_8_0.between?(?0, ?9) || look_8_0.between?(?A, ?Z) || look_8_0 == ?_ || look_8_0.between?(?a, ?z)) 
          alt_8 = 1

        end
        case alt_8
        when 1
          # at line 
          if @input.peek(1) == ?- || @input.peek(1).between?(?0, ?9) || @input.peek(1).between?(?A, ?Z) || @input.peek(1) == ?_ || @input.peek(1).between?(?a, ?z)
            @input.consume
          else
            mse = MismatchedSet(nil)
            recover(mse)
            raise mse
          end



        else
          match_count_8 > 0 and break
          eee = EarlyExit(8)


          raise eee
        end
        match_count_8 += 1
      end


      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 5)

    end

    # lexer rule glob! (GLOB)
    # (in SimpleShell.g)
    def glob!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 6)

      type = GLOB
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 36:5: ( '?' | '*' )+
      # at file 36:5: ( '?' | '*' )+
      match_count_9 = 0
      while true
        alt_9 = 2
        look_9_0 = @input.peek(1)

        if (look_9_0 == ?* || look_9_0 == ??) 
          alt_9 = 1

        end
        case alt_9
        when 1
          # at line 
          if @input.peek(1) == ?* || @input.peek(1) == ??
            @input.consume
          else
            mse = MismatchedSet(nil)
            recover(mse)
            raise mse
          end



        else
          match_count_9 > 0 and break
          eee = EarlyExit(9)


          raise eee
        end
        match_count_9 += 1
      end


      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 6)

    end

    # lexer rule chunk! (CHUNK)
    # (in SimpleShell.g)
    def chunk!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 7)

      type = CHUNK
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 41:3: ( ( '-' )+ ( CHUNK_CHAR )* | ( CHUNK_CHAR )+ )
      alt_13 = 2
      look_13_0 = @input.peek(1)

      if (look_13_0 == ?-) 
        alt_13 = 1
      elsif (look_13_0.between?(0x0000, ?\b) || look_13_0.between?(0x000B, ?\f) || look_13_0.between?(0x000E, 0x001F) || look_13_0 == ?! || look_13_0.between?(?%, ?&) || look_13_0.between?(?+, ?,) || look_13_0.between?(?., ?:) || look_13_0 == ?= || look_13_0.between?(?@, ?_) || look_13_0.between?(?a, ?z) || look_13_0.between?(0x007F, 0xFFFF)) 
        alt_13 = 2
      else
      nvae = NoViableAlternative("", 13, 0)
        raise nvae
      end
      case alt_13
      when 1
        # at line 41:5: ( '-' )+ ( CHUNK_CHAR )*
        # at file 41:5: ( '-' )+
        match_count_10 = 0
        while true
          alt_10 = 2
          look_10_0 = @input.peek(1)

          if (look_10_0 == ?-) 
            alt_10 = 1

          end
          case alt_10
          when 1
            # at line 41:5: '-'
            match(?-)

          else
            match_count_10 > 0 and break
            eee = EarlyExit(10)


            raise eee
          end
          match_count_10 += 1
        end

        # at line 41:10: ( CHUNK_CHAR )*
        while true # decision 11
          alt_11 = 2
          look_11_0 = @input.peek(1)

          if (look_11_0.between?(0x0000, ?\b) || look_11_0.between?(0x000B, ?\f) || look_11_0.between?(0x000E, 0x001F) || look_11_0 == ?! || look_11_0.between?(?%, ?&) || look_11_0.between?(?+, ?:) || look_11_0 == ?= || look_11_0.between?(?@, ?_) || look_11_0.between?(?a, ?z) || look_11_0.between?(0x007F, 0xFFFF)) 
            alt_11 = 1

          end
          case alt_11
          when 1
            # at line 41:10: CHUNK_CHAR
            chunk_char!

          else
            break # out of loop for decision 11
          end
        end # loop for decision 11
        # --> action
         type = SWITCH 
        # <-- action

      when 2
        # at line 42:5: ( CHUNK_CHAR )+
        # at file 42:5: ( CHUNK_CHAR )+
        match_count_12 = 0
        while true
          alt_12 = 2
          look_12_0 = @input.peek(1)

          if (look_12_0.between?(0x0000, ?\b) || look_12_0.between?(0x000B, ?\f) || look_12_0.between?(0x000E, 0x001F) || look_12_0 == ?! || look_12_0.between?(?%, ?&) || look_12_0.between?(?+, ?:) || look_12_0 == ?= || look_12_0.between?(?@, ?_) || look_12_0.between?(?a, ?z) || look_12_0.between?(0x007F, 0xFFFF)) 
            alt_12 = 1

          end
          case alt_12
          when 1
            # at line 42:5: CHUNK_CHAR
            chunk_char!

          else
            match_count_12 > 0 and break
            eee = EarlyExit(12)


            raise eee
          end
          match_count_12 += 1
        end

        # --> action
         @cmd_start and type = COMMAND_NAME 
        # <-- action

      end
      
      @state.type = type
      @state.channel = channel
    # --> action
     @cmd_start = false 
    # <-- action
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 7)

    end

    # lexer rule open_par! (OPEN_PAR)
    # (in SimpleShell.g)
    def open_par!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 8)

      type = OPEN_PAR
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 45:14: '('
      match(?()

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 8)

    end

    # lexer rule close_par! (CLOSE_PAR)
    # (in SimpleShell.g)
    def close_par!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 9)

      type = CLOSE_PAR
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 46:14: ')'
      match(?))

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 9)

    end

    # lexer rule pipeline_operator! (PIPELINE_OPERATOR)
    # (in SimpleShell.g)
    def pipeline_operator!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 10)

      type = PIPELINE_OPERATOR
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 49:3: ( '&&' | '||' | '|' | '&' )
      alt_14 = 4
      look_14_0 = @input.peek(1)

      if (look_14_0 == ?&) 
        look_14_1 = @input.peek(2)

        if (look_14_1 == ?&) 
          alt_14 = 1
        else
          alt_14 = 4
        end
      elsif (look_14_0 == ?|) 
        look_14_2 = @input.peek(2)

        if (look_14_2 == ?|) 
          alt_14 = 2
        else
          alt_14 = 3
        end
      else
      nvae = NoViableAlternative("", 14, 0)
        raise nvae
      end
      case alt_14
      when 1
        # at line 49:5: '&&'
        match("&&")

      when 2
        # at line 49:12: '||'
        match("||")

      when 3
        # at line 49:19: '|'
        match(?|)

      when 4
        # at line 49:25: '&'
        match(?&)
        # --> action
         @cmd_start = true 
        # <-- action

      end
      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 10)

    end

    # lexer rule redirect! (REDIRECT)
    # (in SimpleShell.g)
    def redirect!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 11)

      type = REDIRECT
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 53:5: ( '0' .. '9' )* ( '>>' | '>' | '<<' | '<' ) ( '&' ( '0' .. '9' )+ )?
      # at line 53:5: ( '0' .. '9' )*
      while true # decision 15
        alt_15 = 2
        look_15_0 = @input.peek(1)

        if (look_15_0.between?(?0, ?9)) 
          alt_15 = 1

        end
        case alt_15
        when 1
          # at line 53:6: '0' .. '9'
          match_range(?0, ?9)

        else
          break # out of loop for decision 15
        end
      end # loop for decision 15
      # at line 53:17: ( '>>' | '>' | '<<' | '<' )
      alt_16 = 4
      look_16_0 = @input.peek(1)

      if (look_16_0 == ?>) 
        look_16_1 = @input.peek(2)

        if (look_16_1 == ?>) 
          alt_16 = 1
        else
          alt_16 = 2
        end
      elsif (look_16_0 == ?<) 
        look_16_2 = @input.peek(2)

        if (look_16_2 == ?<) 
          alt_16 = 3
        else
          alt_16 = 4
        end
      else
      nvae = NoViableAlternative("", 16, 0)
        raise nvae
      end
      case alt_16
      when 1
        # at line 53:18: '>>'
        match(">>")

      when 2
        # at line 53:25: '>'
        match(?>)

      when 3
        # at line 53:31: '<<'
        match("<<")

      when 4
        # at line 53:38: '<'
        match(?<)

      end
      # at line 53:43: ( '&' ( '0' .. '9' )+ )?
      alt_18 = 2
      look_18_0 = @input.peek(1)

      if (look_18_0 == ?&) 
        alt_18 = 1
      end
      case alt_18
      when 1
        # at line 53:44: '&' ( '0' .. '9' )+
        match(?&)
        # at file 53:48: ( '0' .. '9' )+
        match_count_17 = 0
        while true
          alt_17 = 2
          look_17_0 = @input.peek(1)

          if (look_17_0.between?(?0, ?9)) 
            alt_17 = 1

          end
          case alt_17
          when 1
            # at line 53:49: '0' .. '9'
            match_range(?0, ?9)

          else
            match_count_17 > 0 and break
            eee = EarlyExit(17)


            raise eee
          end
          match_count_17 += 1
        end


      end

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 11)

    end

    # lexer rule comment! (COMMENT)
    # (in SimpleShell.g)
    def comment!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 12)

      type = COMMENT
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 57:5: '#' (~ ( '\\r' | '\\n' ) )*
      match(?#)
      # at line 57:9: (~ ( '\\r' | '\\n' ) )*
      while true # decision 19
        alt_19 = 2
        look_19_0 = @input.peek(1)

        if (look_19_0.between?(0x0000, ?\t) || look_19_0.between?(0x000B, ?\f) || look_19_0.between?(0x000E, 0xFFFF)) 
          alt_19 = 1

        end
        case alt_19
        when 1
          # at line 57:11: ~ ( '\\r' | '\\n' )
          if @input.peek(1).between?(0x0000, ?\t) || @input.peek(1).between?(0x000B, ?\f) || @input.peek(1).between?(0x000E, 0x00FF)
            @input.consume
          else
            mse = MismatchedSet(nil)
            recover(mse)
            raise mse
          end



        else
          break # out of loop for decision 19
        end
      end # loop for decision 19

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 12)

    end

    # lexer rule chunk_char! (CHUNK_CHAR)
    # (in SimpleShell.g)
    def chunk_char!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 13)

      
      # - - - - main rule block - - - -
      # at line 62:3: (~ ( '>' | '<' | '#' | '`' | '\"' | '\\'' | '|' | '(' | ')' | '$' | ';' | ' ' | '?' | '*' | '~' | '\\\\' | '\\t' | '{' | '}' | '\\n' | '\\r' ) | '\\\\' . )
      alt_20 = 2
      look_20_0 = @input.peek(1)

      if (look_20_0.between?(0x0000, ?\b) || look_20_0.between?(0x000B, ?\f) || look_20_0.between?(0x000E, 0x001F) || look_20_0 == ?! || look_20_0.between?(?%, ?&) || look_20_0.between?(?+, ?:) || look_20_0 == ?= || look_20_0.between?(?@, ?[) || look_20_0.between?(?], ?_) || look_20_0.between?(?a, ?z) || look_20_0.between?(0x007F, 0xFFFF)) 
        alt_20 = 1
      elsif (look_20_0 == ?\\) 
        alt_20 = 2
      else
      nvae = NoViableAlternative("", 20, 0)
        raise nvae
      end
      case alt_20
      when 1
        # at line 62:5: ~ ( '>' | '<' | '#' | '`' | '\"' | '\\'' | '|' | '(' | ')' | '$' | ';' | ' ' | '?' | '*' | '~' | '\\\\' | '\\t' | '{' | '}' | '\\n' | '\\r' )
        if @input.peek(1).between?(0x0000, ?\b) || @input.peek(1).between?(0x000B, ?\f) || @input.peek(1).between?(0x000E, 0x001F) || @input.peek(1) == ?! || @input.peek(1).between?(?%, ?&) || @input.peek(1).between?(?+, ?:) || @input.peek(1) == ?= || @input.peek(1).between?(?@, ?[) || @input.peek(1).between?(?], ?_) || @input.peek(1).between?(?a, ?z) || @input.peek(1).between?(0x007F, 0x00FF)
          @input.consume
        else
          mse = MismatchedSet(nil)
          recover(mse)
          raise mse
        end



      when 2
        # at line 64:5: '\\\\' .
        match(?\\)
        match_any

      end
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 13)

    end

    # main rule used to study the input at the current position,
    # and choose the proper lexer rule to call in order to
    # fetch the next token
    # 
    # usually, you don't make direct calls to this method,
    # but instead use the next_token method, which will
    # build and emit the actual next token
    def token!
      # at line 1:8: ( STRING | SHELL_STRING | WS | COMMAND_END | VARIABLE | GLOB | CHUNK | OPEN_PAR | CLOSE_PAR | PIPELINE_OPERATOR | REDIRECT | COMMENT )
      alt_21 = 12
      alt_21 = @dfa21.predict(@input)
      case alt_21
      when 1
        # at line 1:10: STRING
        string!

      when 2
        # at line 1:17: SHELL_STRING
        shell_string!

      when 3
        # at line 1:30: WS
        ws!

      when 4
        # at line 1:33: COMMAND_END
        command_end!

      when 5
        # at line 1:45: VARIABLE
        variable!

      when 6
        # at line 1:54: GLOB
        glob!

      when 7
        # at line 1:59: CHUNK
        chunk!

      when 8
        # at line 1:65: OPEN_PAR
        open_par!

      when 9
        # at line 1:74: CLOSE_PAR
        close_par!

      when 10
        # at line 1:84: PIPELINE_OPERATOR
        pipeline_operator!

      when 11
        # at line 1:102: REDIRECT
        redirect!

      when 12
        # at line 1:111: COMMENT
        comment!

      end
    end

    
    # - - - - - - - - - - DFA definitions - - - - - - - - - - -
    class DFA21 < ANTLR3::DFA
      EOT = unpack(8, -1, 1, 7, 2, -1, 1, 7, 4, -1)
      EOF = unpack(16, -1)
      MIN = unpack(1, 0, 7, -1, 1, 38, 2, -1, 1, 48, 4, -1)
      MAX = unpack(1, -1, 7, -1, 1, 38, 2, -1, 1, 62, 4, -1)
      ACCEPT = unpack(1, -1, 1, 1, 1, 2, 1, 3, 1, 4, 1, 5, 1, 6, 1, 7, 1, 
                      -1, 1, 8, 1, 9, 1, -1, 1, 10, 1, 11, 1, 12, 1, 7)
      SPECIAL = unpack(1, 0, 15, -1)
      TRANSITION = [
        unpack(9, 7, 1, 3, 1, 4, 2, 7, 1, 4, 18, 7, 1, 3, 1, 7, 1, 1, 1, 
               14, 1, 5, 1, 7, 1, 8, 1, 1, 1, 9, 1, 10, 1, 6, 5, 7, 10, 
               11, 1, 7, 1, 4, 1, 13, 1, 7, 1, 13, 1, 6, 32, 7, 1, 2, 26, 
               7, 1, -1, 1, 12, 2, -1, 65409, 7),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(1, 15),
        unpack(),
        unpack(),
        unpack(10, 11, 2, -1, 1, 13, 1, -1, 1, 13),
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
      
      @decision = 21
      

      def description
        <<-'__dfa_description__'.strip!
          1:1: Tokens : ( STRING | SHELL_STRING | WS | COMMAND_END | VARIABLE | GLOB | CHUNK | OPEN_PAR | CLOSE_PAR | PIPELINE_OPERATOR | REDIRECT | COMMENT );
        __dfa_description__
      end
    end

    
    private
    
    def initialize_dfas
      super rescue nil
      @dfa21 = DFA21.new(self, 21) do |s|
        case s
        when 0
          look_21_0 = @input.peek
          s = -1
          if (look_21_0 == ?" || look_21_0 == ?\')
            s = 1
          elsif (look_21_0 == ?`)
            s = 2
          elsif (look_21_0 == ?\t || look_21_0 == ?\s)
            s = 3
          elsif (look_21_0 == ?\n || look_21_0 == ?\r || look_21_0 == ?;)
            s = 4
          elsif (look_21_0 == ?$)
            s = 5
          elsif (look_21_0 == ?* || look_21_0 == ??)
            s = 6
          elsif (look_21_0.between?(0x0000, ?\b) || look_21_0.between?(0x000B, ?\f) || look_21_0.between?(0x000E, 0x001F) || look_21_0 == ?! || look_21_0 == ?% || look_21_0.between?(?+, ?/) || look_21_0 == ?: || look_21_0 == ?= || look_21_0.between?(?@, ?_) || look_21_0.between?(?a, ?z) || look_21_0.between?(0x007F, 0xFFFF))
            s = 7
          elsif (look_21_0 == ?&)
            s = 8
          elsif (look_21_0 == ?()
            s = 9
          elsif (look_21_0 == ?))
            s = 10
          elsif (look_21_0.between?(?0, ?9))
            s = 11
          elsif (look_21_0 == ?|)
            s = 12
          elsif (look_21_0 == ?< || look_21_0 == ?>)
            s = 13
          elsif (look_21_0 == ?#)
            s = 14
          end

        end
        
        if s < 0
          nva = ANTLR3::Error::NoViableAlternative.new(@dfa21.description, 21, s, input)
          @dfa21.error(nva)
          raise nva
        end
        
        s
      end

    end
  end # class Lexer < ANTLR3::Lexer

  at_exit { Lexer.main(ARGV) } if __FILE__ == $0
end

