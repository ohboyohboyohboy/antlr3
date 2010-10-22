#!/usr/bin/env ruby
#
# ModuleDefinition.g
# --
# Generated using ANTLR version: 3.2.1-SNAPSHOT Jul 31, 2010 19:34:52
# Ruby runtime library version: 1.8.1
# Input grammar file: ModuleDefinition.g
# Generated at: 2010-10-22 01:19:46
# 

# ~~~> start load path setup
this_directory = File.expand_path( File.dirname( __FILE__ ) )
$LOAD_PATH.unshift( this_directory ) unless $LOAD_PATH.include?( this_directory )

antlr_load_failed = proc do
  load_path = $LOAD_PATH.map { |dir| '  - ' << dir }.join( $/ )
  raise LoadError, <<-END.strip!
  
Failed to load the ANTLR3 runtime library (version 1.8.1):

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
    Gem.activate( 'antlr3', '~> 1.8.1' )
  rescue Gem::LoadError
    antlr_load_failed.call
  end
  
  require 'antlr3'
  
end
# <~~~ end load path setup


module ModuleDefinition
  # TokenData defines all of the token type integer values
  # as constants, which will be included in all 
  # ANTLR-generated recognizers.
  const_defined?( :TokenData ) or TokenData = ANTLR3::TokenScheme.new

  module TokenData

    # define the token constants
    define_tokens( :WS => 4, :T__15 => 15, :LINE_COMMENT => 6, :T__12 => 12, 
                   :T__14 => 14, :T__13 => 13, :CID => 11, :BLOCK_COMMENT => 5, 
                   :IdTail => 9, :DEC_NUMBER => 7, :HEX_NUMBER => 8, :ID => 10, 
                   :EOF => -1 )
    
  end


  class Lexer < ANTLR3::Lexer
    @grammar_home = ModuleDefinition
    include TokenData

    
    begin
      generated_using( "ModuleDefinition.g", "3.2.1-SNAPSHOT Jul 31, 2010 19:34:52", "1.8.1" )
    rescue NoMethodError => error
      # ignore
    end
    
    RULE_NAMES   = [ "T__12", "T__13", "T__14", "T__15", "WS", "BLOCK_COMMENT", 
                     "LINE_COMMENT", "DEC_NUMBER", "HEX_NUMBER", "ID", "CID", 
                     "IdTail" ].freeze
    RULE_METHODS = [ :t__12!, :t__13!, :t__14!, :t__15!, :ws!, :block_comment!, 
                     :line_comment!, :dec_number!, :hex_number!, :id!, :cid!, 
                     :id_tail! ].freeze

    
    def initialize( input=nil, options = {} )
      super( input, options )

    end
    
    
    # - - - - - - - - - - - lexer rules - - - - - - - - - - - -
    # lexer rule t__12! (T__12)
    # (in ModuleDefinition.g)
    def t__12!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 1 )

      type = T__12
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 7:9: '*'
      match( 0x2a )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 1 )

    end

    # lexer rule t__13! (T__13)
    # (in ModuleDefinition.g)
    def t__13!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 2 )

      type = T__13
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 8:9: '/'
      match( 0x2f )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 2 )

    end

    # lexer rule t__14! (T__14)
    # (in ModuleDefinition.g)
    def t__14!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 3 )

      type = T__14
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 9:9: '+'
      match( 0x2b )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 3 )

    end

    # lexer rule t__15! (T__15)
    # (in ModuleDefinition.g)
    def t__15!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 4 )

      type = T__15
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 10:9: '-'
      match( 0x2d )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 4 )

    end

    # lexer rule ws! (WS)
    # (in ModuleDefinition.g)
    def ws!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 5 )

      type = WS
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 6:6: ( ' ' | '\\t' | '\\r' | '\\n' )
      if @input.peek( 1 ).between?( 0x9, 0xa ) || @input.peek(1) == 0xd || @input.peek(1) == 0x20
        @input.consume
      else
        mse = MismatchedSet( nil )
        recover mse
        raise mse
      end


      # --> action
       skip 
      # <-- action

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 5 )

    end

    # lexer rule block_comment! (BLOCK_COMMENT)
    # (in ModuleDefinition.g)
    def block_comment!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 6 )

      type = BLOCK_COMMENT
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 8:17: '/*' ( . )* '*/'
      match( "/*" )
      # at line 8:22: ( . )*
      while true # decision 1
        alt_1 = 2
        look_1_0 = @input.peek( 1 )

        if ( look_1_0 == 0x2a )
          look_1_1 = @input.peek( 2 )

          if ( look_1_1 == 0x2f )
            alt_1 = 2
          elsif ( look_1_1.between?( 0x0, 0x2e ) || look_1_1.between?( 0x30, 0xffff ) )
            alt_1 = 1

          end
        elsif ( look_1_0.between?( 0x0, 0x29 ) || look_1_0.between?( 0x2b, 0xffff ) )
          alt_1 = 1

        end
        case alt_1
        when 1
          # at line 8:22: .
          match_any

        else
          break # out of loop for decision 1
        end
      end # loop for decision 1
      match( "*/" )
      # --> action
       channel=HIDDEN; 
      # <-- action

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 6 )

    end

    # lexer rule line_comment! (LINE_COMMENT)
    # (in ModuleDefinition.g)
    def line_comment!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 7 )

      type = LINE_COMMENT
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 9:16: '//' (~ ( '\\n' | '\\r' ) )* ( '\\r' )? '\\n'
      match( "//" )
      # at line 9:21: (~ ( '\\n' | '\\r' ) )*
      while true # decision 2
        alt_2 = 2
        look_2_0 = @input.peek( 1 )

        if ( look_2_0.between?( 0x0, 0x9 ) || look_2_0.between?( 0xb, 0xc ) || look_2_0.between?( 0xe, 0xffff ) )
          alt_2 = 1

        end
        case alt_2
        when 1
          # at line 9:21: ~ ( '\\n' | '\\r' )
          if @input.peek( 1 ).between?( 0x0, 0x9 ) || @input.peek( 1 ).between?( 0xb, 0xc ) || @input.peek( 1 ).between?( 0xe, 0xff )
            @input.consume
          else
            mse = MismatchedSet( nil )
            recover mse
            raise mse
          end



        else
          break # out of loop for decision 2
        end
      end # loop for decision 2
      # at line 9:35: ( '\\r' )?
      alt_3 = 2
      look_3_0 = @input.peek( 1 )

      if ( look_3_0 == 0xd )
        alt_3 = 1
      end
      case alt_3
      when 1
        # at line 9:35: '\\r'
        match( 0xd )

      end
      match( 0xa )
      # --> action
       channel=HIDDEN; 
      # <-- action

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 7 )

    end

    # lexer rule dec_number! (DEC_NUMBER)
    # (in ModuleDefinition.g)
    def dec_number!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 8 )

      type = DEC_NUMBER
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 11:14: ( '0' .. '9' )+
      # at file 11:14: ( '0' .. '9' )+
      match_count_4 = 0
      while true
        alt_4 = 2
        look_4_0 = @input.peek( 1 )

        if ( look_4_0.between?( 0x30, 0x39 ) )
          alt_4 = 1

        end
        case alt_4
        when 1
          # at line 11:14: '0' .. '9'
          match_range( 0x30, 0x39 )

        else
          match_count_4 > 0 and break
          eee = EarlyExit(4)


          raise eee
        end
        match_count_4 += 1
      end


      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 8 )

    end

    # lexer rule hex_number! (HEX_NUMBER)
    # (in ModuleDefinition.g)
    def hex_number!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 9 )

      type = HEX_NUMBER
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 12:14: '0' ( 'x' | 'X' ) ( '0' .. '9' | 'a' .. 'f' | 'A' .. 'F' )+
      match( 0x30 )
      if @input.peek(1) == 0x58 || @input.peek(1) == 0x78
        @input.consume
      else
        mse = MismatchedSet( nil )
        recover mse
        raise mse
      end


      # at file 12:28: ( '0' .. '9' | 'a' .. 'f' | 'A' .. 'F' )+
      match_count_5 = 0
      while true
        alt_5 = 2
        look_5_0 = @input.peek( 1 )

        if ( look_5_0.between?( 0x30, 0x39 ) || look_5_0.between?( 0x41, 0x46 ) || look_5_0.between?( 0x61, 0x66 ) )
          alt_5 = 1

        end
        case alt_5
        when 1
          # at line 
          if @input.peek( 1 ).between?( 0x30, 0x39 ) || @input.peek( 1 ).between?( 0x41, 0x46 ) || @input.peek( 1 ).between?( 0x61, 0x66 )
            @input.consume
          else
            mse = MismatchedSet( nil )
            recover mse
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
      # trace_out( __method__, 9 )

    end

    # lexer rule id! (ID)
    # (in ModuleDefinition.g)
    def id!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 10 )

      type = ID
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 14:7: 'a' .. 'z' IdTail
      match_range( 0x61, 0x7a )
      id_tail!

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 10 )

    end

    # lexer rule cid! (CID)
    # (in ModuleDefinition.g)
    def cid!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 11 )

      type = CID
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 15:7: 'A' .. 'Z' IdTail
      match_range( 0x41, 0x5a )
      id_tail!

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 11 )

    end

    # lexer rule id_tail! (IdTail)
    # (in ModuleDefinition.g)
    def id_tail!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 12 )

      
      # - - - - main rule block - - - -
      # at line 17:19: ( 'a' .. 'z' | 'A' .. 'Z' | '0' .. '9' | '_' )*
      # at line 17:19: ( 'a' .. 'z' | 'A' .. 'Z' | '0' .. '9' | '_' )*
      while true # decision 6
        alt_6 = 2
        look_6_0 = @input.peek( 1 )

        if ( look_6_0.between?( 0x30, 0x39 ) || look_6_0.between?( 0x41, 0x5a ) || look_6_0 == 0x5f || look_6_0.between?( 0x61, 0x7a ) )
          alt_6 = 1

        end
        case alt_6
        when 1
          # at line 
          if @input.peek( 1 ).between?( 0x30, 0x39 ) || @input.peek( 1 ).between?( 0x41, 0x5a ) || @input.peek(1) == 0x5f || @input.peek( 1 ).between?( 0x61, 0x7a )
            @input.consume
          else
            mse = MismatchedSet( nil )
            recover mse
            raise mse
          end



        else
          break # out of loop for decision 6
        end
      end # loop for decision 6

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 12 )

    end

    # main rule used to study the input at the current position,
    # and choose the proper lexer rule to call in order to
    # fetch the next token
    # 
    # usually, you don't make direct calls to this method,
    # but instead use the next_token method, which will
    # build and emit the actual next token
    def token!
      # at line 1:8: ( T__12 | T__13 | T__14 | T__15 | WS | BLOCK_COMMENT | LINE_COMMENT | DEC_NUMBER | HEX_NUMBER | ID | CID )
      alt_7 = 11
      alt_7 = @dfa7.predict( @input )
      case alt_7
      when 1
        # at line 1:10: T__12
        t__12!

      when 2
        # at line 1:16: T__13
        t__13!

      when 3
        # at line 1:22: T__14
        t__14!

      when 4
        # at line 1:28: T__15
        t__15!

      when 5
        # at line 1:34: WS
        ws!

      when 6
        # at line 1:37: BLOCK_COMMENT
        block_comment!

      when 7
        # at line 1:51: LINE_COMMENT
        line_comment!

      when 8
        # at line 1:64: DEC_NUMBER
        dec_number!

      when 9
        # at line 1:75: HEX_NUMBER
        hex_number!

      when 10
        # at line 1:86: ID
        id!

      when 11
        # at line 1:89: CID
        cid!

      end
    end

    
    # - - - - - - - - - - DFA definitions - - - - - - - - - - -
    class DFA7 < ANTLR3::DFA
      EOT = unpack( 2, -1, 1, 12, 3, -1, 1, 7, 7, -1 )
      EOF = unpack( 14, -1 )
      MIN = unpack( 1, 9, 1, -1, 1, 42, 3, -1, 1, 88, 7, -1 )
      MAX = unpack( 1, 122, 1, -1, 1, 47, 3, -1, 1, 120, 7, -1 )
      ACCEPT = unpack( 1, -1, 1, 1, 1, -1, 1, 3, 1, 4, 1, 5, 1, -1, 1, 8, 
                       1, 10, 1, 11, 1, 6, 1, 7, 1, 2, 1, 9 )
      SPECIAL = unpack( 14, -1 )
      TRANSITION = [
        unpack( 2, 5, 2, -1, 1, 5, 18, -1, 1, 5, 9, -1, 1, 1, 1, 3, 1, -1, 
                1, 4, 1, -1, 1, 2, 1, 6, 9, 7, 7, -1, 26, 9, 6, -1, 26, 
                8 ),
        unpack(  ),
        unpack( 1, 10, 4, -1, 1, 11 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 13, 31, -1, 1, 13 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  )
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 7
      

      def description
        <<-'__dfa_description__'.strip!
          1:1: Tokens : ( T__12 | T__13 | T__14 | T__15 | WS | BLOCK_COMMENT | LINE_COMMENT | DEC_NUMBER | HEX_NUMBER | ID | CID );
        __dfa_description__
      end
    end

    
    private
    
    def initialize_dfas
      super rescue nil
      @dfa7 = DFA7.new( self, 7 )

    end
  end # class Lexer < ANTLR3::Lexer

  at_exit { Lexer.main( ARGV ) } if __FILE__ == $0
end

