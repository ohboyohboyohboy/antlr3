#!/usr/bin/env ruby
#
# Group.g
# 
# Generated using ANTLR version: 3.2.1-SNAPSHOT Dec 18, 2009 04:29:28
# Ruby runtime library version: 1.3.1
# Input grammar file: Group.g
# Generated at: 2010-01-10 19:38:43
# 

# ~~~> start load path setup
this_directory = File.expand_path( File.dirname( __FILE__ ) )
$:.unshift( this_directory ) unless $:.include?( this_directory )

antlr_load_failed = proc do
  load_path = $LOAD_PATH.map { |dir| '  - ' << dir }.join( $/ )
  raise LoadError, <<-END.strip!
  
Failed to load the ANTLR3 runtime library (version 1.3.1):

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
    Gem.activate( 'antlr3', '= 1.3.1' )
  rescue Gem::LoadError
    antlr_load_failed.call
  end
  
  require 'antlr3'
  
end
# <~~~ end load path setup

# - - - - - - begin action @lexer::header - - - - - -
# Group.g


module ANTLR3
module Template

# - - - - - - end action @lexer::header - - - - - - -


class Group
  # TokenData defines all of the token type integer values
  # as constants, which will be included in all 
  # ANTLR-generated recognizers.
  const_defined?(:TokenData) or TokenData = ANTLR3::TokenScheme.new

  module TokenData

    # define the token constants
    define_tokens(:WS => 9, :T__16 => 16, :T__15 => 15, :T__17 => 17, :T__12 => 12, 
                  :TEMPLATE => 6, :T__11 => 11, :T__14 => 14, :T__13 => 13, 
                  :T__10 => 10, :CONSTANT => 4, :ID => 5, :COMMENT => 8, 
                  :EOF => -1, :STRING => 7)
    
  end


  class Lexer < ANTLR3::Lexer
    @grammar_home = Group
    include TokenData

    begin
      generated_using( "Group.g", "3.2.1-SNAPSHOT Dec 18, 2009 04:29:28", "1.3.1" )
    rescue NoMethodError => error
      error.name.to_sym == :generated_using or raise
    end
    
    RULE_NAMES   = ["T__10", "T__11", "T__12", "T__13", "T__14", "T__15", 
                    "T__16", "T__17", "CONSTANT", "ID", "TEMPLATE", "STRING", 
                    "COMMENT", "WS"].freeze
    RULE_METHODS = [:t__10!, :t__11!, :t__12!, :t__13!, :t__14!, :t__15!, 
                    :t__16!, :t__17!, :constant!, :id!, :template!, :string!, 
                    :comment!, :ws!].freeze

    
    def initialize(input=nil, options = {})
      super(input, options)

    end
    
    # - - - - - - - - - - - lexer rules - - - - - - - - - - - -
    # lexer rule t__10! (T__10)
    # (in Group.g)
    def t__10!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 1)

      type = T__10
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 16:9: 'group'
      match("group")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 1)

    end

    # lexer rule t__11! (T__11)
    # (in Group.g)
    def t__11!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 2)

      type = T__11
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 17:9: '::'
      match("::")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 2)

    end

    # lexer rule t__12! (T__12)
    # (in Group.g)
    def t__12!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 3)

      type = T__12
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 18:9: ';'
      match(?;)

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 3)

    end

    # lexer rule t__13! (T__13)
    # (in Group.g)
    def t__13!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 4)

      type = T__13
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 19:9: '::='
      match("::=")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 4)

    end

    # lexer rule t__14! (T__14)
    # (in Group.g)
    def t__14!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 5)

      type = T__14
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 20:9: '('
      match(?()

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 5)

    end

    # lexer rule t__15! (T__15)
    # (in Group.g)
    def t__15!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 6)

      type = T__15
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 21:9: ')'
      match(?))

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 6)

    end

    # lexer rule t__16! (T__16)
    # (in Group.g)
    def t__16!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 7)

      type = T__16
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 22:9: ','
      match(?,)

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 7)

    end

    # lexer rule t__17! (T__17)
    # (in Group.g)
    def t__17!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 8)

      type = T__17
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 23:9: '='
      match(?=)

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 8)

    end

    # lexer rule constant! (CONSTANT)
    # (in Group.g)
    def constant!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 9)

      type = CONSTANT
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 91:5: 'A' .. 'Z' ( 'a' .. 'z' | '_' | 'A' .. 'Z' | '0' .. '9' )*
      match_range(?A, ?Z)
      # at line 91:14: ( 'a' .. 'z' | '_' | 'A' .. 'Z' | '0' .. '9' )*
      loop do  #loop 1
        alt_1 = 2
        look_1_0 = @input.peek(1)

        if (look_1_0.between?(?0, ?9) || look_1_0.between?(?A, ?Z) || look_1_0 == ?_ || look_1_0.between?(?a, ?z)) 
          alt_1 = 1

        end
        case alt_1
        when 1
          # at line 
          if @input.peek(1).between?(?0, ?9) || @input.peek(1).between?(?A, ?Z) || @input.peek(1) == ?_ || @input.peek(1).between?(?a, ?z)
            @input.consume
          else
            mse = MismatchedSet(nil)
            recover(mse)
            raise mse
          end



        else
          break #loop 1
        end
      end

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 9)

    end

    # lexer rule id! (ID)
    # (in Group.g)
    def id!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 10)

      type = ID
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 95:5: ( 'a' .. 'z' | '_' ) ( 'a' .. 'z' | '_' | 'A' .. 'Z' | '0' .. '9' )*
      if @input.peek(1) == ?_ || @input.peek(1).between?(?a, ?z)
        @input.consume
      else
        mse = MismatchedSet(nil)
        recover(mse)
        raise mse
      end


      # at line 96:5: ( 'a' .. 'z' | '_' | 'A' .. 'Z' | '0' .. '9' )*
      loop do  #loop 2
        alt_2 = 2
        look_2_0 = @input.peek(1)

        if (look_2_0.between?(?0, ?9) || look_2_0.between?(?A, ?Z) || look_2_0 == ?_ || look_2_0.between?(?a, ?z)) 
          alt_2 = 1

        end
        case alt_2
        when 1
          # at line 
          if @input.peek(1).between?(?0, ?9) || @input.peek(1).between?(?A, ?Z) || @input.peek(1) == ?_ || @input.peek(1).between?(?a, ?z)
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

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 10)

    end

    # lexer rule template! (TEMPLATE)
    # (in Group.g)
    def template!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 11)

      type = TEMPLATE
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 100:5: '<<' ( options {greedy=false; } : '\\\\' . | . )* '>>'
      match("<<")
      # at line 101:5: ( options {greedy=false; } : '\\\\' . | . )*
      loop do  #loop 3
        alt_3 = 3
        look_3_0 = @input.peek(1)

        if (look_3_0 == ?>) 
          look_3_1 = @input.peek(2)

          if (look_3_1 == ?>) 
            alt_3 = 3
          elsif (look_3_1.between?(0x0000, ?=) || look_3_1.between?(??, 0xFFFF)) 
            alt_3 = 2

          end
        elsif (look_3_0 == ?\\) 
          look_3_2 = @input.peek(2)

          if (look_3_2 == ?>) 
            alt_3 = 1
          elsif (look_3_2 == ?\\) 
            alt_3 = 1
          elsif (look_3_2.between?(0x0000, ?=) || look_3_2.between?(??, ?[) || look_3_2.between?(?], 0xFFFF)) 
            alt_3 = 1

          end
        elsif (look_3_0.between?(0x0000, ?=) || look_3_0.between?(??, ?[) || look_3_0.between?(?], 0xFFFF)) 
          alt_3 = 2

        end
        case alt_3
        when 1
          # at line 101:35: '\\\\' .
          match(?\\)
          match_any

        when 2
          # at line 101:44: .
          match_any

        else
          break #loop 3
        end
      end
      match(">>")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 11)

    end

    # lexer rule string! (STRING)
    # (in Group.g)
    def string!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 12)

      type = STRING
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 106:3: ( '\"' (~ ( '\\\\' | '\"' ) | '\\\\' . )* '\"' | '\\'' (~ ( '\\\\' | '\\'' ) | '\\\\' . )* '\\'' )
      alt_6 = 2
      look_6_0 = @input.peek(1)

      if (look_6_0 == ?") 
        alt_6 = 1
      elsif (look_6_0 == ?\') 
        alt_6 = 2
      else
      nvae = NoViableAlternative("", 6, 0)
        raise nvae
      end
      case alt_6
      when 1
        # at line 106:5: '\"' (~ ( '\\\\' | '\"' ) | '\\\\' . )* '\"'
        match(?")
        # at line 106:10: (~ ( '\\\\' | '\"' ) | '\\\\' . )*
        loop do  #loop 4
          alt_4 = 3
          look_4_0 = @input.peek(1)

          if (look_4_0.between?(0x0000, ?!) || look_4_0.between?(?#, ?[) || look_4_0.between?(?], 0xFFFF)) 
            alt_4 = 1
          elsif (look_4_0 == ?\\) 
            alt_4 = 2

          end
          case alt_4
          when 1
            # at line 106:12: ~ ( '\\\\' | '\"' )
            if @input.peek(1).between?(0x0000, ?!) || @input.peek(1).between?(?#, ?[) || @input.peek(1).between?(?], 0x00FF)
              @input.consume
            else
              mse = MismatchedSet(nil)
              recover(mse)
              raise mse
            end



          when 2
            # at line 106:31: '\\\\' .
            match(?\\)
            match_any

          else
            break #loop 4
          end
        end
        match(?")

      when 2
        # at line 107:5: '\\'' (~ ( '\\\\' | '\\'' ) | '\\\\' . )* '\\''
        match(?\')
        # at line 107:10: (~ ( '\\\\' | '\\'' ) | '\\\\' . )*
        loop do  #loop 5
          alt_5 = 3
          look_5_0 = @input.peek(1)

          if (look_5_0.between?(0x0000, ?&) || look_5_0.between?(?(, ?[) || look_5_0.between?(?], 0xFFFF)) 
            alt_5 = 1
          elsif (look_5_0 == ?\\) 
            alt_5 = 2

          end
          case alt_5
          when 1
            # at line 107:12: ~ ( '\\\\' | '\\'' )
            if @input.peek(1).between?(0x0000, ?&) || @input.peek(1).between?(?(, ?[) || @input.peek(1).between?(?], 0x00FF)
              @input.consume
            else
              mse = MismatchedSet(nil)
              recover(mse)
              raise mse
            end



          when 2
            # at line 107:31: '\\\\' .
            match(?\\)
            match_any

          else
            break #loop 5
          end
        end
        match(?\')

      end
      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 12)

    end

    # lexer rule comment! (COMMENT)
    # (in Group.g)
    def comment!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 13)

      type = COMMENT
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 112:3: ( ( '#' | '//' ) (~ '\\n' )* | '/*' ( . )* '*/' )
      alt_10 = 2
      look_10_0 = @input.peek(1)

      if (look_10_0 == ?#) 
        alt_10 = 1
      elsif (look_10_0 == ?/) 
        look_10_2 = @input.peek(2)

        if (look_10_2 == ?/) 
          alt_10 = 1
        elsif (look_10_2 == ?*) 
          alt_10 = 2
        else
        nvae = NoViableAlternative("", 10, 2)
          raise nvae
        end
      else
      nvae = NoViableAlternative("", 10, 0)
        raise nvae
      end
      case alt_10
      when 1
        # at line 112:5: ( '#' | '//' ) (~ '\\n' )*
        # at line 112:5: ( '#' | '//' )
        alt_7 = 2
        look_7_0 = @input.peek(1)

        if (look_7_0 == ?#) 
          alt_7 = 1
        elsif (look_7_0 == ?/) 
          alt_7 = 2
        else
        nvae = NoViableAlternative("", 7, 0)
          raise nvae
        end
        case alt_7
        when 1
          # at line 112:7: '#'
          match(?#)

        when 2
          # at line 112:13: '//'
          match("//")

        end
        # at line 112:20: (~ '\\n' )*
        loop do  #loop 8
          alt_8 = 2
          look_8_0 = @input.peek(1)

          if (look_8_0.between?(0x0000, ?\t) || look_8_0.between?(0x000B, 0xFFFF)) 
            alt_8 = 1

          end
          case alt_8
          when 1
            # at line 112:20: ~ '\\n'
            if @input.peek(1).between?(0x0000, ?\t) || @input.peek(1).between?(0x000B, 0x00FF)
              @input.consume
            else
              mse = MismatchedSet(nil)
              recover(mse)
              raise mse
            end



          else
            break #loop 8
          end
        end

      when 2
        # at line 113:5: '/*' ( . )* '*/'
        match("/*")
        # at line 113:10: ( . )*
        loop do  #loop 9
          alt_9 = 2
          look_9_0 = @input.peek(1)

          if (look_9_0 == ?*) 
            look_9_1 = @input.peek(2)

            if (look_9_1 == ?/) 
              alt_9 = 2
            elsif (look_9_1.between?(0x0000, ?.) || look_9_1.between?(?0, 0xFFFF)) 
              alt_9 = 1

            end
          elsif (look_9_0.between?(0x0000, ?)) || look_9_0.between?(?+, 0xFFFF)) 
            alt_9 = 1

          end
          case alt_9
          when 1
            # at line 113:10: .
            match_any

          else
            break #loop 9
          end
        end
        match("*/")

      end
      
      @state.type = type
      @state.channel = channel
    # --> action
     skip 
    # <-- action
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 13)

    end

    # lexer rule ws! (WS)
    # (in Group.g)
    def ws!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 14)

      type = WS
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 117:5: ( ' ' | '\\t' | '\\n' | '\\r' | '\\f' )+
      # at file 117:5: ( ' ' | '\\t' | '\\n' | '\\r' | '\\f' )+
      match_count_11 = 0
      loop do
        alt_11 = 2
        look_11_0 = @input.peek(1)

        if (look_11_0.between?(?\t, ?\n) || look_11_0.between?(?\f, ?\r) || look_11_0 == ?\s) 
          alt_11 = 1

        end
        case alt_11
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
          match_count_11 > 0 and break
          eee = EarlyExit(11)


          raise eee
        end
        match_count_11 += 1
      end

      # --> action
       channel = HIDDEN 
      # <-- action

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 14)

    end

    # main rule used to study the input at the current position,
    # and choose the proper lexer rule to call in order to
    # fetch the next token
    # 
    # usually, you don't make direct calls to this method,
    # but instead use the next_token method, which will
    # build and emit the actual next token
    def token!
      # at line 1:8: ( T__10 | T__11 | T__12 | T__13 | T__14 | T__15 | T__16 | T__17 | CONSTANT | ID | TEMPLATE | STRING | COMMENT | WS )
      alt_12 = 14
      alt_12 = @dfa12.predict(@input)
      case alt_12
      when 1
        # at line 1:10: T__10
        t__10!

      when 2
        # at line 1:16: T__11
        t__11!

      when 3
        # at line 1:22: T__12
        t__12!

      when 4
        # at line 1:28: T__13
        t__13!

      when 5
        # at line 1:34: T__14
        t__14!

      when 6
        # at line 1:40: T__15
        t__15!

      when 7
        # at line 1:46: T__16
        t__16!

      when 8
        # at line 1:52: T__17
        t__17!

      when 9
        # at line 1:58: CONSTANT
        constant!

      when 10
        # at line 1:67: ID
        id!

      when 11
        # at line 1:70: TEMPLATE
        template!

      when 12
        # at line 1:79: STRING
        string!

      when 13
        # at line 1:86: COMMENT
        comment!

      when 14
        # at line 1:94: WS
        ws!

      end
    end

    
    # - - - - - - - - - - DFA definitions - - - - - - - - - - -
    class DFA12 < ANTLR3::DFA
      EOT = unpack(1, -1, 1, 9, 12, -1, 1, 9, 1, 18, 1, 9, 2, -1, 1, 9, 
                   1, 21, 1, -1)
      EOF = unpack(22, -1)
      MIN = unpack(1, 9, 1, 114, 1, 58, 11, -1, 1, 111, 1, 61, 1, 117, 2, 
                   -1, 1, 112, 1, 48, 1, -1)
      MAX = unpack(1, 122, 1, 114, 1, 58, 11, -1, 1, 111, 1, 61, 1, 117, 
                   2, -1, 1, 112, 1, 122, 1, -1)
      ACCEPT = unpack(3, -1, 1, 3, 1, 5, 1, 6, 1, 7, 1, 8, 1, 9, 1, 10, 
                      1, 11, 1, 12, 1, 13, 1, 14, 3, -1, 1, 4, 1, 2, 2, 
                      -1, 1, 1)
      SPECIAL = unpack(22, -1)
      TRANSITION = [
        unpack(2, 13, 1, -1, 2, 13, 18, -1, 1, 13, 1, -1, 1, 11, 1, 12, 
               3, -1, 1, 11, 1, 4, 1, 5, 2, -1, 1, 6, 2, -1, 1, 12, 10, 
               -1, 1, 2, 1, 3, 1, 10, 1, 7, 3, -1, 26, 8, 4, -1, 1, 9, 1, 
               -1, 6, 9, 1, 1, 19, 9),
        unpack(1, 14),
        unpack(1, 15),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(1, 16),
        unpack(1, 17),
        unpack(1, 19),
        unpack(),
        unpack(),
        unpack(1, 20),
        unpack(10, 9, 7, -1, 26, 9, 4, -1, 1, 9, 1, -1, 26, 9),
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
          1:1: Tokens : ( T__10 | T__11 | T__12 | T__13 | T__14 | T__15 | T__16 | T__17 | CONSTANT | ID | TEMPLATE | STRING | COMMENT | WS );
        __dfa_description__
      end
    end

    
    private
    
    def initialize_dfas
      super rescue nil
      @dfa12 = DFA12.new(self, 12)

    end
  end # class Lexer < ANTLR3::Lexer

  at_exit { Lexer.main(ARGV) } if __FILE__ == $0
end
# - - - - - - begin action @lexer::footer - - - - - -
# Group.g


end # module ANTLR3
end # module Template

# - - - - - - end action @lexer::footer - - - - - - -


