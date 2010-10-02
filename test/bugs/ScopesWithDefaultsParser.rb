#!/usr/bin/env ruby
#
# ScopesWithDefaults.g
# --
# Generated using ANTLR version: 3.2.1-SNAPSHOT Jul 31, 2010 17:27:43
# Ruby runtime library version: 1.8.1
# Input grammar file: ScopesWithDefaults.g
# Generated at: 2010-07-31 17:32:43
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


module ScopesWithDefaults
  # TokenData defines all of the token type integer values
  # as constants, which will be included in all 
  # ANTLR-generated recognizers.
  const_defined?( :TokenData ) or TokenData = ANTLR3::TokenScheme.new

  module TokenData

    # define the token constants
    define_tokens( :INT => 4, :EOF => -1 )

    # register the proper human-readable name or literal value
    # for each token type
    #
    # this is necessary because anonymous tokens, which are
    # created from literal values in the grammar, do not
    # have descriptive names
    register_names( "INT" )
    
  end


  class Parser < ANTLR3::Parser
    @grammar_home = ScopesWithDefaults

    RULE_METHODS = [ :a, :b ].freeze

    @@A = Scope( "t = 1" )


    @@b = Scope( "a = 3" )


    include TokenData

    begin
      generated_using( "ScopesWithDefaults.g", "3.2.1-SNAPSHOT Jul 31, 2010 17:27:43", "1.8.1" )
    rescue NoMethodError => error
      # ignore
    end

    def initialize( input, options = {} )
      super( input, options )
      @A_stack = []

      @b_stack = []


    end
    # - - - - - - - - - - - - Rules - - - - - - - - - - - - -

    # 
    # parser rule a
    # 
    # (in ScopesWithDefaults.g)
    # 9:1: a[ i = 0 ] returns [ y = [] ] : INT ;
    # 
    def a( i = 0 )
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 1 )
      @A_stack.push( @@A.new )
      y =  []

      begin
        # at line 11:5: INT
        match( INT, TOKENS_FOLLOWING_INT_IN_a_44 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 1 )
        @A_stack.pop

      end
      
      return y
    end


    # 
    # parser rule b
    # 
    # (in ScopesWithDefaults.g)
    # 14:1: b : INT INT ;
    # 
    def b
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 2 )
      @b_stack.push( @@b.new )

      begin
        # at line 18:5: INT INT
        match( INT, TOKENS_FOLLOWING_INT_IN_b_63 )
        match( INT, TOKENS_FOLLOWING_INT_IN_b_65 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 2 )
        @b_stack.pop

      end
      
      return 
    end



    TOKENS_FOLLOWING_INT_IN_a_44 = Set[ 1 ]
    TOKENS_FOLLOWING_INT_IN_b_63 = Set[ 4 ]
    TOKENS_FOLLOWING_INT_IN_b_65 = Set[ 1 ]

  end # class Parser < ANTLR3::Parser

  at_exit { Parser.main( ARGV ) } if __FILE__ == $0
end

