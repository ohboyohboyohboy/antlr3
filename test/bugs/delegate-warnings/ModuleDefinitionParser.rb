#!/usr/bin/env ruby
#
# ModuleDefinition.g
# --
# Generated using ANTLR version: 3.2.1-SNAPSHOT Jul 31, 2010 19:34:52
# Ruby runtime library version: 1.8.1
# Input grammar file: ModuleDefinition.g
# Generated at: 2010-10-22 01:19:45
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
                   :IdTail => 9, :DEC_NUMBER => 7, :ID => 10, :HEX_NUMBER => 8, 
                   :EOF => -1 )

    # register the proper human-readable name or literal value
    # for each token type
    #
    # this is necessary because anonymous tokens, which are
    # created from literal values in the grammar, do not
    # have descriptive names
    register_names( "WS", "BLOCK_COMMENT", "LINE_COMMENT", "DEC_NUMBER", 
                    "HEX_NUMBER", "IdTail", "ID", "CID", "'*'", "'/'", "'+'", 
                    "'-'" )
    
  end


  class Parser < ANTLR3::Parser
    @grammar_home = ModuleDefinition

    RULE_METHODS = [ :number, :expr1, :expr ].freeze


    include TokenData

    begin
      generated_using( "ModuleDefinition.g", "3.2.1-SNAPSHOT Jul 31, 2010 19:34:52", "1.8.1" )
    rescue NoMethodError => error
      # ignore
    end

    def initialize( input, options = {} )
      super( input, options )


    end
    # - - - - - - - - - - - - Rules - - - - - - - - - - - - -

    # 
    # parser rule number
    # 
    # (in ModuleDefinition.g)
    # 21:1: number returns [value] : ( DEC_NUMBER | HEX_NUMBER );
    # 
    def number
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 1 )
      value = nil
      __DEC_NUMBER1__ = nil
      __HEX_NUMBER2__ = nil

      begin
        # at line 22:2: ( DEC_NUMBER | HEX_NUMBER )
        alt_1 = 2
        look_1_0 = @input.peek( 1 )

        if ( look_1_0 == DEC_NUMBER )
          alt_1 = 1
        elsif ( look_1_0 == HEX_NUMBER )
          alt_1 = 2
        else
          raise NoViableAlternative( "", 1, 0 )
        end
        case alt_1
        when 1
          # at line 22:4: DEC_NUMBER
          __DEC_NUMBER1__ = match( DEC_NUMBER, TOKENS_FOLLOWING_DEC_NUMBER_IN_number_180 )
          # --> action
           value = __DEC_NUMBER1__.text.to_i 
          # <-- action

        when 2
          # at line 23:4: HEX_NUMBER
          __HEX_NUMBER2__ = match( HEX_NUMBER, TOKENS_FOLLOWING_HEX_NUMBER_IN_number_187 )
          # --> action
           value = __HEX_NUMBER2__.text[2..-1].to_i(16) 
          # <-- action

        end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 1 )

      end
      
      return value
    end


    # 
    # parser rule expr1
    # 
    # (in ModuleDefinition.g)
    # 27:1: expr1 returns [value] : e= number ( '*' e= number | '/' e= number )* ;
    # 
    def expr1
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 2 )
      value = nil
      e = nil

      begin
        # at line 28:5: e= number ( '*' e= number | '/' e= number )*
        @state.following.push( TOKENS_FOLLOWING_number_IN_expr1_207 )
        e = number
        @state.following.pop
        # --> action
         value = e 
        # <-- action
        # at line 29:5: ( '*' e= number | '/' e= number )*
        while true # decision 2
          alt_2 = 3
          look_2_0 = @input.peek( 1 )

          if ( look_2_0 == T__12 )
            alt_2 = 1
          elsif ( look_2_0 == T__13 )
            alt_2 = 2

          end
          case alt_2
          when 1
            # at line 29:7: '*' e= number
            match( T__12, TOKENS_FOLLOWING_T__12_IN_expr1_217 )
            @state.following.push( TOKENS_FOLLOWING_number_IN_expr1_221 )
            e = number
            @state.following.pop
            # --> action
             value *= e 
            # <-- action

          when 2
            # at line 30:7: '/' e= number
            match( T__13, TOKENS_FOLLOWING_T__13_IN_expr1_231 )
            @state.following.push( TOKENS_FOLLOWING_number_IN_expr1_235 )
            e = number
            @state.following.pop
            # --> action
             value /= e 
            # <-- action

          else
            break # out of loop for decision 2
          end
        end # loop for decision 2

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 2 )

      end
      
      return value
    end


    # 
    # parser rule expr
    # 
    # (in ModuleDefinition.g)
    # 34:1: expr returns [value] : e= expr1 ( '+' e= expr1 | '-' e= expr1 )* ;
    # 
    def expr
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 3 )
      value = nil
      e = nil

      begin
        # at line 35:5: e= expr1 ( '+' e= expr1 | '-' e= expr1 )*
        @state.following.push( TOKENS_FOLLOWING_expr1_IN_expr_262 )
        e = expr1
        @state.following.pop
        # --> action
         value = e 
        # <-- action
        # at line 36:5: ( '+' e= expr1 | '-' e= expr1 )*
        while true # decision 3
          alt_3 = 3
          look_3_0 = @input.peek( 1 )

          if ( look_3_0 == T__14 )
            alt_3 = 1
          elsif ( look_3_0 == T__15 )
            alt_3 = 2

          end
          case alt_3
          when 1
            # at line 36:7: '+' e= expr1
            match( T__14, TOKENS_FOLLOWING_T__14_IN_expr_272 )
            @state.following.push( TOKENS_FOLLOWING_expr1_IN_expr_276 )
            e = expr1
            @state.following.pop
            # --> action
             value += e 
            # <-- action

          when 2
            # at line 37:7: '-' e= expr1
            match( T__15, TOKENS_FOLLOWING_T__15_IN_expr_286 )
            @state.following.push( TOKENS_FOLLOWING_expr1_IN_expr_290 )
            e = expr1
            @state.following.pop
            # --> action
             value -= e 
            # <-- action

          else
            break # out of loop for decision 3
          end
        end # loop for decision 3

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 3 )

      end
      
      return value
    end



    TOKENS_FOLLOWING_DEC_NUMBER_IN_number_180 = Set[ 1 ]
    TOKENS_FOLLOWING_HEX_NUMBER_IN_number_187 = Set[ 1 ]
    TOKENS_FOLLOWING_number_IN_expr1_207 = Set[ 1, 12, 13 ]
    TOKENS_FOLLOWING_T__12_IN_expr1_217 = Set[ 7, 8 ]
    TOKENS_FOLLOWING_number_IN_expr1_221 = Set[ 1, 12, 13 ]
    TOKENS_FOLLOWING_T__13_IN_expr1_231 = Set[ 7, 8 ]
    TOKENS_FOLLOWING_number_IN_expr1_235 = Set[ 1, 12, 13 ]
    TOKENS_FOLLOWING_expr1_IN_expr_262 = Set[ 1, 14, 15 ]
    TOKENS_FOLLOWING_T__14_IN_expr_272 = Set[ 7, 8 ]
    TOKENS_FOLLOWING_expr1_IN_expr_276 = Set[ 1, 14, 15 ]
    TOKENS_FOLLOWING_T__15_IN_expr_286 = Set[ 7, 8 ]
    TOKENS_FOLLOWING_expr1_IN_expr_290 = Set[ 1, 14, 15 ]

  end # class Parser < ANTLR3::Parser

  at_exit { Parser.main( ARGV ) } if __FILE__ == $0
end

