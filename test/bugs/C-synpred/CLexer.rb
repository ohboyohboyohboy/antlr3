#!/usr/bin/env ruby
#
# C.g
# 
# Generated using ANTLR version: 3.2.1-SNAPSHOT Dec 18, 2009 04:29:28
# Ruby runtime library version: 1.6.4
# Input grammar file: C.g
# Generated at: 2010-04-20 15:40:09
# 

# ~~~> start load path setup
this_directory = File.expand_path( File.dirname( __FILE__ ) )
$:.unshift( this_directory ) unless $:.include?( this_directory )

antlr_load_failed = proc do
  load_path = $LOAD_PATH.map { |dir| '  - ' << dir }.join( $/ )
  raise LoadError, <<-END.strip!
  
Failed to load the ANTLR3 runtime library (version 1.6.4):

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
    Gem.activate( 'antlr3', '~> 1.6.4' )
  rescue Gem::LoadError
    antlr_load_failed.call
  end
  
  require 'antlr3'
  
end
# <~~~ end load path setup


module C
  # TokenData defines all of the token type integer values
  # as constants, which will be included in all 
  # ANTLR-generated recognizers.
  const_defined?(:TokenData) or TokenData = ANTLR3::TokenScheme.new

  module TokenData

    # define the token constants
    define_tokens( :T__29 => 29, :T__28 => 28, :T__27 => 27, :T__26 => 26, 
                   :FloatTypeSuffix => 16, :T__25 => 25, :T__24 => 24, :T__23 => 23, 
                   :LETTER => 11, :EOF => -1, :T__93 => 93, :T__94 => 94, 
                   :T__91 => 91, :T__92 => 92, :STRING_LITERAL => 9, :T__90 => 90, 
                   :FLOATING_POINT_LITERAL => 10, :COMMENT => 20, :T__99 => 99, 
                   :T__98 => 98, :T__97 => 97, :T__96 => 96, :T__95 => 95, 
                   :T__80 => 80, :T__81 => 81, :T__82 => 82, :T__83 => 83, 
                   :LINE_COMMENT => 21, :IntegerTypeSuffix => 14, :CHARACTER_LITERAL => 8, 
                   :T__85 => 85, :T__84 => 84, :T__87 => 87, :T__86 => 86, 
                   :T__89 => 89, :T__88 => 88, :T__71 => 71, :WS => 19, 
                   :T__72 => 72, :T__70 => 70, :LINE_COMMAND => 22, :T__76 => 76, 
                   :T__75 => 75, :T__74 => 74, :T__73 => 73, :DECIMAL_LITERAL => 7, 
                   :EscapeSequence => 12, :T__79 => 79, :T__78 => 78, :T__77 => 77, 
                   :T__68 => 68, :T__69 => 69, :T__66 => 66, :T__67 => 67, 
                   :T__64 => 64, :T__65 => 65, :T__62 => 62, :T__63 => 63, 
                   :Exponent => 15, :T__61 => 61, :T__60 => 60, :HexDigit => 13, 
                   :T__55 => 55, :T__56 => 56, :T__57 => 57, :T__58 => 58, 
                   :T__51 => 51, :T__52 => 52, :T__53 => 53, :T__54 => 54, 
                   :IDENTIFIER => 4, :T__59 => 59, :HEX_LITERAL => 5, :T__50 => 50, 
                   :T__42 => 42, :T__43 => 43, :T__40 => 40, :T__41 => 41, 
                   :T__46 => 46, :T__47 => 47, :T__44 => 44, :T__45 => 45, 
                   :T__48 => 48, :T__49 => 49, :OCTAL_LITERAL => 6, :T__100 => 100, 
                   :T__30 => 30, :T__31 => 31, :T__32 => 32, :T__33 => 33, 
                   :T__34 => 34, :T__35 => 35, :T__36 => 36, :T__37 => 37, 
                   :T__38 => 38, :T__39 => 39, :UnicodeEscape => 18, :OctalEscape => 17 )
    
  end


  class Lexer < ANTLR3::Lexer
    @grammar_home = C
    include TokenData

    begin
      generated_using( "C.g", "3.2.1-SNAPSHOT Dec 18, 2009 04:29:28", "1.6.4" )
    rescue NoMethodError => error
      error.name.to_sym == :generated_using or raise
    end
    
    RULE_NAMES   = ["T__23", "T__24", "T__25", "T__26", "T__27", "T__28", 
                    "T__29", "T__30", "T__31", "T__32", "T__33", "T__34", 
                    "T__35", "T__36", "T__37", "T__38", "T__39", "T__40", 
                    "T__41", "T__42", "T__43", "T__44", "T__45", "T__46", 
                    "T__47", "T__48", "T__49", "T__50", "T__51", "T__52", 
                    "T__53", "T__54", "T__55", "T__56", "T__57", "T__58", 
                    "T__59", "T__60", "T__61", "T__62", "T__63", "T__64", 
                    "T__65", "T__66", "T__67", "T__68", "T__69", "T__70", 
                    "T__71", "T__72", "T__73", "T__74", "T__75", "T__76", 
                    "T__77", "T__78", "T__79", "T__80", "T__81", "T__82", 
                    "T__83", "T__84", "T__85", "T__86", "T__87", "T__88", 
                    "T__89", "T__90", "T__91", "T__92", "T__93", "T__94", 
                    "T__95", "T__96", "T__97", "T__98", "T__99", "T__100", 
                    "IDENTIFIER", "LETTER", "CHARACTER_LITERAL", "STRING_LITERAL", 
                    "HEX_LITERAL", "DECIMAL_LITERAL", "OCTAL_LITERAL", "HexDigit", 
                    "IntegerTypeSuffix", "FLOATING_POINT_LITERAL", "Exponent", 
                    "FloatTypeSuffix", "EscapeSequence", "OctalEscape", 
                    "UnicodeEscape", "WS", "COMMENT", "LINE_COMMENT", "LINE_COMMAND"].freeze
    RULE_METHODS = [:t__23!, :t__24!, :t__25!, :t__26!, :t__27!, :t__28!, 
                    :t__29!, :t__30!, :t__31!, :t__32!, :t__33!, :t__34!, 
                    :t__35!, :t__36!, :t__37!, :t__38!, :t__39!, :t__40!, 
                    :t__41!, :t__42!, :t__43!, :t__44!, :t__45!, :t__46!, 
                    :t__47!, :t__48!, :t__49!, :t__50!, :t__51!, :t__52!, 
                    :t__53!, :t__54!, :t__55!, :t__56!, :t__57!, :t__58!, 
                    :t__59!, :t__60!, :t__61!, :t__62!, :t__63!, :t__64!, 
                    :t__65!, :t__66!, :t__67!, :t__68!, :t__69!, :t__70!, 
                    :t__71!, :t__72!, :t__73!, :t__74!, :t__75!, :t__76!, 
                    :t__77!, :t__78!, :t__79!, :t__80!, :t__81!, :t__82!, 
                    :t__83!, :t__84!, :t__85!, :t__86!, :t__87!, :t__88!, 
                    :t__89!, :t__90!, :t__91!, :t__92!, :t__93!, :t__94!, 
                    :t__95!, :t__96!, :t__97!, :t__98!, :t__99!, :t__100!, 
                    :identifier!, :letter!, :character_literal!, :string_literal!, 
                    :hex_literal!, :decimal_literal!, :octal_literal!, :hex_digit!, 
                    :integer_type_suffix!, :floating_point_literal!, :exponent!, 
                    :float_type_suffix!, :escape_sequence!, :octal_escape!, 
                    :unicode_escape!, :ws!, :comment!, :line_comment!, :line_command!].freeze

    
    def initialize(input=nil, options = {})
      super(input, options)

    end
    
    # - - - - - - - - - - - lexer rules - - - - - - - - - - - -
    # lexer rule t__23! (T__23)
    # (in C.g)
    def t__23!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 1)

      type = T__23
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 7:9: 'typedef'
      match("typedef")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 1)

    end

    # lexer rule t__24! (T__24)
    # (in C.g)
    def t__24!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 2)

      type = T__24
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 8:9: ';'
      match(?;)

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 2)

    end

    # lexer rule t__25! (T__25)
    # (in C.g)
    def t__25!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 3)

      type = T__25
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 9:9: ','
      match(?,)

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 3)

    end

    # lexer rule t__26! (T__26)
    # (in C.g)
    def t__26!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 4)

      type = T__26
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 10:9: '='
      match(?=)

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 4)

    end

    # lexer rule t__27! (T__27)
    # (in C.g)
    def t__27!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 5)

      type = T__27
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 11:9: 'extern'
      match("extern")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 5)

    end

    # lexer rule t__28! (T__28)
    # (in C.g)
    def t__28!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 6)

      type = T__28
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 12:9: 'static'
      match("static")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 6)

    end

    # lexer rule t__29! (T__29)
    # (in C.g)
    def t__29!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 7)

      type = T__29
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 13:9: 'auto'
      match("auto")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 7)

    end

    # lexer rule t__30! (T__30)
    # (in C.g)
    def t__30!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 8)

      type = T__30
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 14:9: 'register'
      match("register")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 8)

    end

    # lexer rule t__31! (T__31)
    # (in C.g)
    def t__31!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 9)

      type = T__31
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 15:9: 'void'
      match("void")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 9)

    end

    # lexer rule t__32! (T__32)
    # (in C.g)
    def t__32!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 10)

      type = T__32
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 16:9: 'char'
      match("char")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 10)

    end

    # lexer rule t__33! (T__33)
    # (in C.g)
    def t__33!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 11)

      type = T__33
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 17:9: 'short'
      match("short")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 11)

    end

    # lexer rule t__34! (T__34)
    # (in C.g)
    def t__34!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 12)

      type = T__34
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 18:9: 'int'
      match("int")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 12)

    end

    # lexer rule t__35! (T__35)
    # (in C.g)
    def t__35!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 13)

      type = T__35
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 19:9: 'long'
      match("long")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 13)

    end

    # lexer rule t__36! (T__36)
    # (in C.g)
    def t__36!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 14)

      type = T__36
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 20:9: 'float'
      match("float")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 14)

    end

    # lexer rule t__37! (T__37)
    # (in C.g)
    def t__37!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 15)

      type = T__37
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 21:9: 'double'
      match("double")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 15)

    end

    # lexer rule t__38! (T__38)
    # (in C.g)
    def t__38!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 16)

      type = T__38
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 22:9: 'signed'
      match("signed")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 16)

    end

    # lexer rule t__39! (T__39)
    # (in C.g)
    def t__39!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 17)

      type = T__39
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 23:9: 'unsigned'
      match("unsigned")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 17)

    end

    # lexer rule t__40! (T__40)
    # (in C.g)
    def t__40!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 18)

      type = T__40
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 24:9: '{'
      match(?{)

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 18)

    end

    # lexer rule t__41! (T__41)
    # (in C.g)
    def t__41!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 19)

      type = T__41
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 25:9: '}'
      match(?})

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 19)

    end

    # lexer rule t__42! (T__42)
    # (in C.g)
    def t__42!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 20)

      type = T__42
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 26:9: 'struct'
      match("struct")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 20)

    end

    # lexer rule t__43! (T__43)
    # (in C.g)
    def t__43!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 21)

      type = T__43
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 27:9: 'union'
      match("union")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 21)

    end

    # lexer rule t__44! (T__44)
    # (in C.g)
    def t__44!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 22)

      type = T__44
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 28:9: ':'
      match(?:)

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 22)

    end

    # lexer rule t__45! (T__45)
    # (in C.g)
    def t__45!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 23)

      type = T__45
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 29:9: 'enum'
      match("enum")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 23)

    end

    # lexer rule t__46! (T__46)
    # (in C.g)
    def t__46!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 24)

      type = T__46
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 30:9: 'const'
      match("const")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 24)

    end

    # lexer rule t__47! (T__47)
    # (in C.g)
    def t__47!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 25)

      type = T__47
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 31:9: 'volatile'
      match("volatile")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 25)

    end

    # lexer rule t__48! (T__48)
    # (in C.g)
    def t__48!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 26)

      type = T__48
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 32:9: '('
      match(?()

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 26)

    end

    # lexer rule t__49! (T__49)
    # (in C.g)
    def t__49!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 27)

      type = T__49
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 33:9: ')'
      match(?))

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 27)

    end

    # lexer rule t__50! (T__50)
    # (in C.g)
    def t__50!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 28)

      type = T__50
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 34:9: '['
      match(?[)

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 28)

    end

    # lexer rule t__51! (T__51)
    # (in C.g)
    def t__51!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 29)

      type = T__51
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 35:9: ']'
      match(?])

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 29)

    end

    # lexer rule t__52! (T__52)
    # (in C.g)
    def t__52!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 30)

      type = T__52
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 36:9: '*'
      match(?*)

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 30)

    end

    # lexer rule t__53! (T__53)
    # (in C.g)
    def t__53!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 31)

      type = T__53
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 37:9: '...'
      match("...")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 31)

    end

    # lexer rule t__54! (T__54)
    # (in C.g)
    def t__54!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 32)

      type = T__54
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 38:9: '+'
      match(?+)

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 32)

    end

    # lexer rule t__55! (T__55)
    # (in C.g)
    def t__55!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 33)

      type = T__55
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 39:9: '-'
      match(?-)

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 33)

    end

    # lexer rule t__56! (T__56)
    # (in C.g)
    def t__56!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 34)

      type = T__56
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 40:9: '/'
      match(?/)

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 34)

    end

    # lexer rule t__57! (T__57)
    # (in C.g)
    def t__57!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 35)

      type = T__57
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 41:9: '%'
      match(?%)

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 35)

    end

    # lexer rule t__58! (T__58)
    # (in C.g)
    def t__58!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 36)

      type = T__58
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 42:9: '++'
      match("++")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 36)

    end

    # lexer rule t__59! (T__59)
    # (in C.g)
    def t__59!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 37)

      type = T__59
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 43:9: '--'
      match("--")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 37)

    end

    # lexer rule t__60! (T__60)
    # (in C.g)
    def t__60!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 38)

      type = T__60
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 44:9: 'sizeof'
      match("sizeof")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 38)

    end

    # lexer rule t__61! (T__61)
    # (in C.g)
    def t__61!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 39)

      type = T__61
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 45:9: '.'
      match(?.)

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 39)

    end

    # lexer rule t__62! (T__62)
    # (in C.g)
    def t__62!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 40)

      type = T__62
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 46:9: '->'
      match("->")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 40)

    end

    # lexer rule t__63! (T__63)
    # (in C.g)
    def t__63!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 41)

      type = T__63
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 47:9: '&'
      match(?&)

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 41)

    end

    # lexer rule t__64! (T__64)
    # (in C.g)
    def t__64!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 42)

      type = T__64
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 48:9: '~'
      match(?~)

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 42)

    end

    # lexer rule t__65! (T__65)
    # (in C.g)
    def t__65!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 43)

      type = T__65
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 49:9: '!'
      match(?!)

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 43)

    end

    # lexer rule t__66! (T__66)
    # (in C.g)
    def t__66!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 44)

      type = T__66
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 50:9: '*='
      match("*=")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 44)

    end

    # lexer rule t__67! (T__67)
    # (in C.g)
    def t__67!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 45)

      type = T__67
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 51:9: '/='
      match("/=")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 45)

    end

    # lexer rule t__68! (T__68)
    # (in C.g)
    def t__68!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 46)

      type = T__68
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 52:9: '%='
      match("%=")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 46)

    end

    # lexer rule t__69! (T__69)
    # (in C.g)
    def t__69!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 47)

      type = T__69
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 53:9: '+='
      match("+=")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 47)

    end

    # lexer rule t__70! (T__70)
    # (in C.g)
    def t__70!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 48)

      type = T__70
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 54:9: '-='
      match("-=")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 48)

    end

    # lexer rule t__71! (T__71)
    # (in C.g)
    def t__71!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 49)

      type = T__71
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 55:9: '<<='
      match("<<=")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 49)

    end

    # lexer rule t__72! (T__72)
    # (in C.g)
    def t__72!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 50)

      type = T__72
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 56:9: '>>='
      match(">>=")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 50)

    end

    # lexer rule t__73! (T__73)
    # (in C.g)
    def t__73!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 51)

      type = T__73
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 57:9: '&='
      match("&=")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 51)

    end

    # lexer rule t__74! (T__74)
    # (in C.g)
    def t__74!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 52)

      type = T__74
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 58:9: '^='
      match("^=")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 52)

    end

    # lexer rule t__75! (T__75)
    # (in C.g)
    def t__75!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 53)

      type = T__75
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 59:9: '|='
      match("|=")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 53)

    end

    # lexer rule t__76! (T__76)
    # (in C.g)
    def t__76!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 54)

      type = T__76
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 60:9: '?'
      match(??)

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 54)

    end

    # lexer rule t__77! (T__77)
    # (in C.g)
    def t__77!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 55)

      type = T__77
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 61:9: '||'
      match("||")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 55)

    end

    # lexer rule t__78! (T__78)
    # (in C.g)
    def t__78!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 56)

      type = T__78
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 62:9: '&&'
      match("&&")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 56)

    end

    # lexer rule t__79! (T__79)
    # (in C.g)
    def t__79!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 57)

      type = T__79
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 63:9: '|'
      match(?|)

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 57)

    end

    # lexer rule t__80! (T__80)
    # (in C.g)
    def t__80!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 58)

      type = T__80
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 64:9: '^'
      match(?^)

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 58)

    end

    # lexer rule t__81! (T__81)
    # (in C.g)
    def t__81!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 59)

      type = T__81
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 65:9: '=='
      match("==")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 59)

    end

    # lexer rule t__82! (T__82)
    # (in C.g)
    def t__82!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 60)

      type = T__82
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 66:9: '!='
      match("!=")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 60)

    end

    # lexer rule t__83! (T__83)
    # (in C.g)
    def t__83!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 61)

      type = T__83
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 67:9: '<'
      match(?<)

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 61)

    end

    # lexer rule t__84! (T__84)
    # (in C.g)
    def t__84!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 62)

      type = T__84
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 68:9: '>'
      match(?>)

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 62)

    end

    # lexer rule t__85! (T__85)
    # (in C.g)
    def t__85!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 63)

      type = T__85
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 69:9: '<='
      match("<=")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 63)

    end

    # lexer rule t__86! (T__86)
    # (in C.g)
    def t__86!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 64)

      type = T__86
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 70:9: '>='
      match(">=")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 64)

    end

    # lexer rule t__87! (T__87)
    # (in C.g)
    def t__87!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 65)

      type = T__87
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 71:9: '<<'
      match("<<")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 65)

    end

    # lexer rule t__88! (T__88)
    # (in C.g)
    def t__88!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 66)

      type = T__88
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 72:9: '>>'
      match(">>")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 66)

    end

    # lexer rule t__89! (T__89)
    # (in C.g)
    def t__89!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 67)

      type = T__89
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 73:9: 'case'
      match("case")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 67)

    end

    # lexer rule t__90! (T__90)
    # (in C.g)
    def t__90!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 68)

      type = T__90
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 74:9: 'default'
      match("default")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 68)

    end

    # lexer rule t__91! (T__91)
    # (in C.g)
    def t__91!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 69)

      type = T__91
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 75:9: 'if'
      match("if")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 69)

    end

    # lexer rule t__92! (T__92)
    # (in C.g)
    def t__92!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 70)

      type = T__92
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 76:9: 'else'
      match("else")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 70)

    end

    # lexer rule t__93! (T__93)
    # (in C.g)
    def t__93!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 71)

      type = T__93
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 77:9: 'switch'
      match("switch")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 71)

    end

    # lexer rule t__94! (T__94)
    # (in C.g)
    def t__94!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 72)

      type = T__94
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 78:9: 'while'
      match("while")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 72)

    end

    # lexer rule t__95! (T__95)
    # (in C.g)
    def t__95!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 73)

      type = T__95
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 79:9: 'do'
      match("do")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 73)

    end

    # lexer rule t__96! (T__96)
    # (in C.g)
    def t__96!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 74)

      type = T__96
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 80:9: 'for'
      match("for")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 74)

    end

    # lexer rule t__97! (T__97)
    # (in C.g)
    def t__97!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 75)

      type = T__97
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 81:9: 'goto'
      match("goto")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 75)

    end

    # lexer rule t__98! (T__98)
    # (in C.g)
    def t__98!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 76)

      type = T__98
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 82:9: 'continue'
      match("continue")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 76)

    end

    # lexer rule t__99! (T__99)
    # (in C.g)
    def t__99!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 77)

      type = T__99
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 83:9: 'break'
      match("break")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 77)

    end

    # lexer rule t__100! (T__100)
    # (in C.g)
    def t__100!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 78)

      type = T__100
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 84:10: 'return'
      match("return")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 78)

    end

    # lexer rule identifier! (IDENTIFIER)
    # (in C.g)
    def identifier!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 79)

      type = IDENTIFIER
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 464:6: LETTER ( LETTER | '0' .. '9' )*
      letter!
      # at line 464:13: ( LETTER | '0' .. '9' )*
      while true # decision 1
        alt_1 = 2
        look_1_0 = @input.peek(1)

        if (look_1_0 == ?$ || look_1_0.between?(?0, ?9) || look_1_0.between?(?A, ?Z) || look_1_0 == ?_ || look_1_0.between?(?a, ?z)) 
          alt_1 = 1

        end
        case alt_1
        when 1
          # at line 
          if @input.peek(1) == ?$ || @input.peek(1).between?(?0, ?9) || @input.peek(1).between?(?A, ?Z) || @input.peek(1) == ?_ || @input.peek(1).between?(?a, ?z)
            @input.consume
          else
            mse = MismatchedSet(nil)
            recover(mse)
            raise mse
          end



        else
          break # out of loop for decision 1
        end
      end # loop for decision 1

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 79)

    end

    # lexer rule letter! (LETTER)
    # (in C.g)
    def letter!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 80)

      
      # - - - - main rule block - - - -
      # at line 
      if @input.peek(1) == ?$ || @input.peek(1).between?(?A, ?Z) || @input.peek(1) == ?_ || @input.peek(1).between?(?a, ?z)
        @input.consume
      else
        mse = MismatchedSet(nil)
        recover(mse)
        raise mse
      end



    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 80)

    end

    # lexer rule character_literal! (CHARACTER_LITERAL)
    # (in C.g)
    def character_literal!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 81)

      type = CHARACTER_LITERAL
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 476:9: '\\'' ( EscapeSequence | ~ ( '\\'' | '\\\\' ) ) '\\''
      match(?\')
      # at line 476:14: ( EscapeSequence | ~ ( '\\'' | '\\\\' ) )
      alt_2 = 2
      look_2_0 = @input.peek(1)

      if (look_2_0 == ?\\) 
        alt_2 = 1
      elsif (look_2_0.between?(0x0000, ?&) || look_2_0.between?(?(, ?[) || look_2_0.between?(?], 0xFFFF)) 
        alt_2 = 2
      else
      nvae = NoViableAlternative("", 2, 0)
        raise nvae
      end
      case alt_2
      when 1
        # at line 476:16: EscapeSequence
        escape_sequence!

      when 2
        # at line 476:33: ~ ( '\\'' | '\\\\' )
        if @input.peek(1).between?(0x0000, ?&) || @input.peek(1).between?(?(, ?[) || @input.peek(1).between?(?], 0x00FF)
          @input.consume
        else
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
      # trace_out(__method__, 81)

    end

    # lexer rule string_literal! (STRING_LITERAL)
    # (in C.g)
    def string_literal!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 82)

      type = STRING_LITERAL
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 480:8: '\"' ( EscapeSequence | ~ ( '\\\\' | '\"' ) )* '\"'
      match(?")
      # at line 480:12: ( EscapeSequence | ~ ( '\\\\' | '\"' ) )*
      while true # decision 3
        alt_3 = 3
        look_3_0 = @input.peek(1)

        if (look_3_0 == ?\\) 
          alt_3 = 1
        elsif (look_3_0.between?(0x0000, ?!) || look_3_0.between?(?#, ?[) || look_3_0.between?(?], 0xFFFF)) 
          alt_3 = 2

        end
        case alt_3
        when 1
          # at line 480:14: EscapeSequence
          escape_sequence!

        when 2
          # at line 480:31: ~ ( '\\\\' | '\"' )
          if @input.peek(1).between?(0x0000, ?!) || @input.peek(1).between?(?#, ?[) || @input.peek(1).between?(?], 0x00FF)
            @input.consume
          else
            mse = MismatchedSet(nil)
            recover(mse)
            raise mse
          end



        else
          break # out of loop for decision 3
        end
      end # loop for decision 3
      match(?")

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 82)

    end

    # lexer rule hex_literal! (HEX_LITERAL)
    # (in C.g)
    def hex_literal!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 83)

      type = HEX_LITERAL
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 483:15: '0' ( 'x' | 'X' ) ( HexDigit )+ ( IntegerTypeSuffix )?
      match(?0)
      if @input.peek(1) == ?X || @input.peek(1) == ?x
        @input.consume
      else
        mse = MismatchedSet(nil)
        recover(mse)
        raise mse
      end


      # at file 483:29: ( HexDigit )+
      match_count_4 = 0
      while true
        alt_4 = 2
        look_4_0 = @input.peek(1)

        if (look_4_0.between?(?0, ?9) || look_4_0.between?(?A, ?F) || look_4_0.between?(?a, ?f)) 
          alt_4 = 1

        end
        case alt_4
        when 1
          # at line 483:29: HexDigit
          hex_digit!

        else
          match_count_4 > 0 and break
          eee = EarlyExit(4)


          raise eee
        end
        match_count_4 += 1
      end

      # at line 483:39: ( IntegerTypeSuffix )?
      alt_5 = 2
      look_5_0 = @input.peek(1)

      if (look_5_0 == ?L || look_5_0 == ?U || look_5_0 == ?l || look_5_0 == ?u) 
        alt_5 = 1
      end
      case alt_5
      when 1
        # at line 483:39: IntegerTypeSuffix
        integer_type_suffix!

      end

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 83)

    end

    # lexer rule decimal_literal! (DECIMAL_LITERAL)
    # (in C.g)
    def decimal_literal!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 84)

      type = DECIMAL_LITERAL
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 485:19: ( '0' | '1' .. '9' ( '0' .. '9' )* ) ( IntegerTypeSuffix )?
      # at line 485:19: ( '0' | '1' .. '9' ( '0' .. '9' )* )
      alt_7 = 2
      look_7_0 = @input.peek(1)

      if (look_7_0 == ?0) 
        alt_7 = 1
      elsif (look_7_0.between?(?1, ?9)) 
        alt_7 = 2
      else
      nvae = NoViableAlternative("", 7, 0)
        raise nvae
      end
      case alt_7
      when 1
        # at line 485:20: '0'
        match(?0)

      when 2
        # at line 485:26: '1' .. '9' ( '0' .. '9' )*
        match_range(?1, ?9)
        # at line 485:35: ( '0' .. '9' )*
        while true # decision 6
          alt_6 = 2
          look_6_0 = @input.peek(1)

          if (look_6_0.between?(?0, ?9)) 
            alt_6 = 1

          end
          case alt_6
          when 1
            # at line 485:35: '0' .. '9'
            match_range(?0, ?9)

          else
            break # out of loop for decision 6
          end
        end # loop for decision 6

      end
      # at line 485:46: ( IntegerTypeSuffix )?
      alt_8 = 2
      look_8_0 = @input.peek(1)

      if (look_8_0 == ?L || look_8_0 == ?U || look_8_0 == ?l || look_8_0 == ?u) 
        alt_8 = 1
      end
      case alt_8
      when 1
        # at line 485:46: IntegerTypeSuffix
        integer_type_suffix!

      end

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 84)

    end

    # lexer rule octal_literal! (OCTAL_LITERAL)
    # (in C.g)
    def octal_literal!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 85)

      type = OCTAL_LITERAL
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 487:17: '0' ( '0' .. '7' )+ ( IntegerTypeSuffix )?
      match(?0)
      # at file 487:21: ( '0' .. '7' )+
      match_count_9 = 0
      while true
        alt_9 = 2
        look_9_0 = @input.peek(1)

        if (look_9_0.between?(?0, ?7)) 
          alt_9 = 1

        end
        case alt_9
        when 1
          # at line 487:22: '0' .. '7'
          match_range(?0, ?7)

        else
          match_count_9 > 0 and break
          eee = EarlyExit(9)


          raise eee
        end
        match_count_9 += 1
      end

      # at line 487:33: ( IntegerTypeSuffix )?
      alt_10 = 2
      look_10_0 = @input.peek(1)

      if (look_10_0 == ?L || look_10_0 == ?U || look_10_0 == ?l || look_10_0 == ?u) 
        alt_10 = 1
      end
      case alt_10
      when 1
        # at line 487:33: IntegerTypeSuffix
        integer_type_suffix!

      end

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 85)

    end

    # lexer rule hex_digit! (HexDigit)
    # (in C.g)
    def hex_digit!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 86)

      
      # - - - - main rule block - - - -
      # at line 490:12: ( '0' .. '9' | 'a' .. 'f' | 'A' .. 'F' )
      if @input.peek(1).between?(?0, ?9) || @input.peek(1).between?(?A, ?F) || @input.peek(1).between?(?a, ?f)
        @input.consume
      else
        mse = MismatchedSet(nil)
        recover(mse)
        raise mse
      end



    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 86)

    end

    # lexer rule integer_type_suffix! (IntegerTypeSuffix)
    # (in C.g)
    def integer_type_suffix!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 87)

      
      # - - - - main rule block - - - -
      # at line 494:3: ( ( 'u' | 'U' )? ( 'l' | 'L' ) | ( 'u' | 'U' ) ( 'l' | 'L' )? )
      alt_13 = 2
      look_13_0 = @input.peek(1)

      if (look_13_0 == ?U || look_13_0 == ?u) 
        look_13_1 = @input.peek(2)

        if (look_13_1 == ?L || look_13_1 == ?l) 
          alt_13 = 1
        else
          alt_13 = 2
        end
      elsif (look_13_0 == ?L || look_13_0 == ?l) 
        alt_13 = 1
      else
      nvae = NoViableAlternative("", 13, 0)
        raise nvae
      end
      case alt_13
      when 1
        # at line 494:6: ( 'u' | 'U' )? ( 'l' | 'L' )
        # at line 494:6: ( 'u' | 'U' )?
        alt_11 = 2
        look_11_0 = @input.peek(1)

        if (look_11_0 == ?U || look_11_0 == ?u) 
          alt_11 = 1
        end
        case alt_11
        when 1
          # at line 
          if @input.peek(1) == ?U || @input.peek(1) == ?u
            @input.consume
          else
            mse = MismatchedSet(nil)
            recover(mse)
            raise mse
          end



        end
        if @input.peek(1) == ?L || @input.peek(1) == ?l
          @input.consume
        else
          mse = MismatchedSet(nil)
          recover(mse)
          raise mse
        end



      when 2
        # at line 495:6: ( 'u' | 'U' ) ( 'l' | 'L' )?
        if @input.peek(1) == ?U || @input.peek(1) == ?u
          @input.consume
        else
          mse = MismatchedSet(nil)
          recover(mse)
          raise mse
        end


        # at line 495:17: ( 'l' | 'L' )?
        alt_12 = 2
        look_12_0 = @input.peek(1)

        if (look_12_0 == ?L || look_12_0 == ?l) 
          alt_12 = 1
        end
        case alt_12
        when 1
          # at line 
          if @input.peek(1) == ?L || @input.peek(1) == ?l
            @input.consume
          else
            mse = MismatchedSet(nil)
            recover(mse)
            raise mse
          end



        end

      end
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 87)

    end

    # lexer rule floating_point_literal! (FLOATING_POINT_LITERAL)
    # (in C.g)
    def floating_point_literal!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 88)

      type = FLOATING_POINT_LITERAL
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 499:3: ( ( '0' .. '9' )+ '.' ( '0' .. '9' )* ( Exponent )? ( FloatTypeSuffix )? | '.' ( '0' .. '9' )+ ( Exponent )? ( FloatTypeSuffix )? | ( '0' .. '9' )+ Exponent ( FloatTypeSuffix )? | ( '0' .. '9' )+ ( Exponent )? FloatTypeSuffix )
      alt_25 = 4
      alt_25 = @dfa25.predict(@input)
      case alt_25
      when 1
        # at line 499:5: ( '0' .. '9' )+ '.' ( '0' .. '9' )* ( Exponent )? ( FloatTypeSuffix )?
        # at file 499:5: ( '0' .. '9' )+
        match_count_14 = 0
        while true
          alt_14 = 2
          look_14_0 = @input.peek(1)

          if (look_14_0.between?(?0, ?9)) 
            alt_14 = 1

          end
          case alt_14
          when 1
            # at line 499:6: '0' .. '9'
            match_range(?0, ?9)

          else
            match_count_14 > 0 and break
            eee = EarlyExit(14)


            raise eee
          end
          match_count_14 += 1
        end

        match(?.)
        # at line 499:21: ( '0' .. '9' )*
        while true # decision 15
          alt_15 = 2
          look_15_0 = @input.peek(1)

          if (look_15_0.between?(?0, ?9)) 
            alt_15 = 1

          end
          case alt_15
          when 1
            # at line 499:22: '0' .. '9'
            match_range(?0, ?9)

          else
            break # out of loop for decision 15
          end
        end # loop for decision 15
        # at line 499:33: ( Exponent )?
        alt_16 = 2
        look_16_0 = @input.peek(1)

        if (look_16_0 == ?E || look_16_0 == ?e) 
          alt_16 = 1
        end
        case alt_16
        when 1
          # at line 499:33: Exponent
          exponent!

        end
        # at line 499:43: ( FloatTypeSuffix )?
        alt_17 = 2
        look_17_0 = @input.peek(1)

        if (look_17_0 == ?D || look_17_0 == ?F || look_17_0 == ?d || look_17_0 == ?f) 
          alt_17 = 1
        end
        case alt_17
        when 1
          # at line 499:43: FloatTypeSuffix
          float_type_suffix!

        end

      when 2
        # at line 500:5: '.' ( '0' .. '9' )+ ( Exponent )? ( FloatTypeSuffix )?
        match(?.)
        # at file 500:9: ( '0' .. '9' )+
        match_count_18 = 0
        while true
          alt_18 = 2
          look_18_0 = @input.peek(1)

          if (look_18_0.between?(?0, ?9)) 
            alt_18 = 1

          end
          case alt_18
          when 1
            # at line 500:10: '0' .. '9'
            match_range(?0, ?9)

          else
            match_count_18 > 0 and break
            eee = EarlyExit(18)


            raise eee
          end
          match_count_18 += 1
        end

        # at line 500:21: ( Exponent )?
        alt_19 = 2
        look_19_0 = @input.peek(1)

        if (look_19_0 == ?E || look_19_0 == ?e) 
          alt_19 = 1
        end
        case alt_19
        when 1
          # at line 500:21: Exponent
          exponent!

        end
        # at line 500:31: ( FloatTypeSuffix )?
        alt_20 = 2
        look_20_0 = @input.peek(1)

        if (look_20_0 == ?D || look_20_0 == ?F || look_20_0 == ?d || look_20_0 == ?f) 
          alt_20 = 1
        end
        case alt_20
        when 1
          # at line 500:31: FloatTypeSuffix
          float_type_suffix!

        end

      when 3
        # at line 501:5: ( '0' .. '9' )+ Exponent ( FloatTypeSuffix )?
        # at file 501:5: ( '0' .. '9' )+
        match_count_21 = 0
        while true
          alt_21 = 2
          look_21_0 = @input.peek(1)

          if (look_21_0.between?(?0, ?9)) 
            alt_21 = 1

          end
          case alt_21
          when 1
            # at line 501:6: '0' .. '9'
            match_range(?0, ?9)

          else
            match_count_21 > 0 and break
            eee = EarlyExit(21)


            raise eee
          end
          match_count_21 += 1
        end

        exponent!
        # at line 501:26: ( FloatTypeSuffix )?
        alt_22 = 2
        look_22_0 = @input.peek(1)

        if (look_22_0 == ?D || look_22_0 == ?F || look_22_0 == ?d || look_22_0 == ?f) 
          alt_22 = 1
        end
        case alt_22
        when 1
          # at line 501:26: FloatTypeSuffix
          float_type_suffix!

        end

      when 4
        # at line 502:5: ( '0' .. '9' )+ ( Exponent )? FloatTypeSuffix
        # at file 502:5: ( '0' .. '9' )+
        match_count_23 = 0
        while true
          alt_23 = 2
          look_23_0 = @input.peek(1)

          if (look_23_0.between?(?0, ?9)) 
            alt_23 = 1

          end
          case alt_23
          when 1
            # at line 502:6: '0' .. '9'
            match_range(?0, ?9)

          else
            match_count_23 > 0 and break
            eee = EarlyExit(23)


            raise eee
          end
          match_count_23 += 1
        end

        # at line 502:17: ( Exponent )?
        alt_24 = 2
        look_24_0 = @input.peek(1)

        if (look_24_0 == ?E || look_24_0 == ?e) 
          alt_24 = 1
        end
        case alt_24
        when 1
          # at line 502:17: Exponent
          exponent!

        end
        float_type_suffix!

      end
      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 88)

    end

    # lexer rule exponent! (Exponent)
    # (in C.g)
    def exponent!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 89)

      
      # - - - - main rule block - - - -
      # at line 506:12: ( 'e' | 'E' ) ( '+' | '-' )? ( '0' .. '9' )+
      if @input.peek(1) == ?E || @input.peek(1) == ?e
        @input.consume
      else
        mse = MismatchedSet(nil)
        recover(mse)
        raise mse
      end


      # at line 506:22: ( '+' | '-' )?
      alt_26 = 2
      look_26_0 = @input.peek(1)

      if (look_26_0 == ?+ || look_26_0 == ?-) 
        alt_26 = 1
      end
      case alt_26
      when 1
        # at line 
        if @input.peek(1) == ?+ || @input.peek(1) == ?-
          @input.consume
        else
          mse = MismatchedSet(nil)
          recover(mse)
          raise mse
        end



      end
      # at file 506:33: ( '0' .. '9' )+
      match_count_27 = 0
      while true
        alt_27 = 2
        look_27_0 = @input.peek(1)

        if (look_27_0.between?(?0, ?9)) 
          alt_27 = 1

        end
        case alt_27
        when 1
          # at line 506:34: '0' .. '9'
          match_range(?0, ?9)

        else
          match_count_27 > 0 and break
          eee = EarlyExit(27)


          raise eee
        end
        match_count_27 += 1
      end


    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 89)

    end

    # lexer rule float_type_suffix! (FloatTypeSuffix)
    # (in C.g)
    def float_type_suffix!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 90)

      
      # - - - - main rule block - - - -
      # at line 509:19: ( 'f' | 'F' | 'd' | 'D' )
      if @input.peek(1) == ?D || @input.peek(1) == ?F || @input.peek(1) == ?d || @input.peek(1) == ?f
        @input.consume
      else
        mse = MismatchedSet(nil)
        recover(mse)
        raise mse
      end



    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 90)

    end

    # lexer rule escape_sequence! (EscapeSequence)
    # (in C.g)
    def escape_sequence!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 91)

      
      # - - - - main rule block - - - -
      # at line 513:5: ( '\\\\' ( 'b' | 't' | 'n' | 'f' | 'r' | '\\\"' | '\\'' | '\\\\' ) | OctalEscape )
      alt_28 = 2
      look_28_0 = @input.peek(1)

      if (look_28_0 == ?\\) 
        look_28_1 = @input.peek(2)

        if (look_28_1 == ?" || look_28_1 == ?\' || look_28_1 == ?\\ || look_28_1 == ?b || look_28_1 == ?f || look_28_1 == ?n || look_28_1 == ?r || look_28_1 == ?t) 
          alt_28 = 1
        elsif (look_28_1.between?(?0, ?7)) 
          alt_28 = 2
        else
        nvae = NoViableAlternative("", 28, 1)
          raise nvae
        end
      else
      nvae = NoViableAlternative("", 28, 0)
        raise nvae
      end
      case alt_28
      when 1
        # at line 513:9: '\\\\' ( 'b' | 't' | 'n' | 'f' | 'r' | '\\\"' | '\\'' | '\\\\' )
        match(?\\)
        if @input.peek(1) == ?" || @input.peek(1) == ?\' || @input.peek(1) == ?\\ || @input.peek(1) == ?b || @input.peek(1) == ?f || @input.peek(1) == ?n || @input.peek(1) == ?r || @input.peek(1) == ?t
          @input.consume
        else
          mse = MismatchedSet(nil)
          recover(mse)
          raise mse
        end



      when 2
        # at line 514:9: OctalEscape
        octal_escape!

      end
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 91)

    end

    # lexer rule octal_escape! (OctalEscape)
    # (in C.g)
    def octal_escape!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 92)

      
      # - - - - main rule block - - - -
      # at line 519:5: ( '\\\\' ( '0' .. '3' ) ( '0' .. '7' ) ( '0' .. '7' ) | '\\\\' ( '0' .. '7' ) ( '0' .. '7' ) | '\\\\' ( '0' .. '7' ) )
      alt_29 = 3
      look_29_0 = @input.peek(1)

      if (look_29_0 == ?\\) 
        look_29_1 = @input.peek(2)

        if (look_29_1.between?(?0, ?3)) 
          look_29_2 = @input.peek(3)

          if (look_29_2.between?(?0, ?7)) 
            look_29_5 = @input.peek(4)

            if (look_29_5.between?(?0, ?7)) 
              alt_29 = 1
            else
              alt_29 = 2
            end
          else
            alt_29 = 3
          end
        elsif (look_29_1.between?(?4, ?7)) 
          look_29_3 = @input.peek(3)

          if (look_29_3.between?(?0, ?7)) 
            alt_29 = 2
          else
            alt_29 = 3
          end
        else
        nvae = NoViableAlternative("", 29, 1)
          raise nvae
        end
      else
      nvae = NoViableAlternative("", 29, 0)
        raise nvae
      end
      case alt_29
      when 1
        # at line 519:9: '\\\\' ( '0' .. '3' ) ( '0' .. '7' ) ( '0' .. '7' )
        match(?\\)
        # at line 519:14: ( '0' .. '3' )
        # at line 519:15: '0' .. '3'
        match_range(?0, ?3)

        # at line 519:25: ( '0' .. '7' )
        # at line 519:26: '0' .. '7'
        match_range(?0, ?7)

        # at line 519:36: ( '0' .. '7' )
        # at line 519:37: '0' .. '7'
        match_range(?0, ?7)


      when 2
        # at line 520:9: '\\\\' ( '0' .. '7' ) ( '0' .. '7' )
        match(?\\)
        # at line 520:14: ( '0' .. '7' )
        # at line 520:15: '0' .. '7'
        match_range(?0, ?7)

        # at line 520:25: ( '0' .. '7' )
        # at line 520:26: '0' .. '7'
        match_range(?0, ?7)


      when 3
        # at line 521:9: '\\\\' ( '0' .. '7' )
        match(?\\)
        # at line 521:14: ( '0' .. '7' )
        # at line 521:15: '0' .. '7'
        match_range(?0, ?7)


      end
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 92)

    end

    # lexer rule unicode_escape! (UnicodeEscape)
    # (in C.g)
    def unicode_escape!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 93)

      
      # - - - - main rule block - - - -
      # at line 526:9: '\\\\' 'u' HexDigit HexDigit HexDigit HexDigit
      match(?\\)
      match(?u)
      hex_digit!
      hex_digit!
      hex_digit!
      hex_digit!

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 93)

    end

    # lexer rule ws! (WS)
    # (in C.g)
    def ws!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 94)

      type = WS
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 529:8: ( ' ' | '\\r' | '\\t' | '\\u000C' | '\\n' )
      if @input.peek(1).between?(?\t, ?\n) || @input.peek(1).between?(?\f, ?\r) || @input.peek(1) == ?\s
        @input.consume
      else
        mse = MismatchedSet(nil)
        recover(mse)
        raise mse
      end


      # --> action
      channel=HIDDEN;
      # <-- action

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 94)

    end

    # lexer rule comment! (COMMENT)
    # (in C.g)
    def comment!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 95)

      type = COMMENT
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 533:9: '/*' ( options {greedy=false; } : . )* '*/'
      match("/*")
      # at line 533:14: ( options {greedy=false; } : . )*
      while true # decision 30
        alt_30 = 2
        look_30_0 = @input.peek(1)

        if (look_30_0 == ?*) 
          look_30_1 = @input.peek(2)

          if (look_30_1 == ?/) 
            alt_30 = 2
          elsif (look_30_1.between?(0x0000, ?.) || look_30_1.between?(?0, 0xFFFF)) 
            alt_30 = 1

          end
        elsif (look_30_0.between?(0x0000, ?)) || look_30_0.between?(?+, 0xFFFF)) 
          alt_30 = 1

        end
        case alt_30
        when 1
          # at line 533:42: .
          match_any

        else
          break # out of loop for decision 30
        end
      end # loop for decision 30
      match("*/")
      # --> action
      channel=HIDDEN;
      # <-- action

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 95)

    end

    # lexer rule line_comment! (LINE_COMMENT)
    # (in C.g)
    def line_comment!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 96)

      type = LINE_COMMENT
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 537:7: '//' (~ ( '\\n' | '\\r' ) )* ( '\\r' )? '\\n'
      match("//")
      # at line 537:12: (~ ( '\\n' | '\\r' ) )*
      while true # decision 31
        alt_31 = 2
        look_31_0 = @input.peek(1)

        if (look_31_0.between?(0x0000, ?\t) || look_31_0.between?(0x000B, ?\f) || look_31_0.between?(0x000E, 0xFFFF)) 
          alt_31 = 1

        end
        case alt_31
        when 1
          # at line 537:12: ~ ( '\\n' | '\\r' )
          if @input.peek(1).between?(0x0000, ?\t) || @input.peek(1).between?(0x000B, ?\f) || @input.peek(1).between?(0x000E, 0x00FF)
            @input.consume
          else
            mse = MismatchedSet(nil)
            recover(mse)
            raise mse
          end



        else
          break # out of loop for decision 31
        end
      end # loop for decision 31
      # at line 537:26: ( '\\r' )?
      alt_32 = 2
      look_32_0 = @input.peek(1)

      if (look_32_0 == ?\r) 
        alt_32 = 1
      end
      case alt_32
      when 1
        # at line 537:26: '\\r'
        match(?\r)

      end
      match(?\n)
      # --> action
      channel=HIDDEN;
      # <-- action

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 96)

    end

    # lexer rule line_command! (LINE_COMMAND)
    # (in C.g)
    def line_command!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 97)

      type = LINE_COMMAND
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 542:7: '#' (~ ( '\\n' | '\\r' ) )* ( '\\r' )? '\\n'
      match(?#)
      # at line 542:11: (~ ( '\\n' | '\\r' ) )*
      while true # decision 33
        alt_33 = 2
        look_33_0 = @input.peek(1)

        if (look_33_0.between?(0x0000, ?\t) || look_33_0.between?(0x000B, ?\f) || look_33_0.between?(0x000E, 0xFFFF)) 
          alt_33 = 1

        end
        case alt_33
        when 1
          # at line 542:11: ~ ( '\\n' | '\\r' )
          if @input.peek(1).between?(0x0000, ?\t) || @input.peek(1).between?(0x000B, ?\f) || @input.peek(1).between?(0x000E, 0x00FF)
            @input.consume
          else
            mse = MismatchedSet(nil)
            recover(mse)
            raise mse
          end



        else
          break # out of loop for decision 33
        end
      end # loop for decision 33
      # at line 542:25: ( '\\r' )?
      alt_34 = 2
      look_34_0 = @input.peek(1)

      if (look_34_0 == ?\r) 
        alt_34 = 1
      end
      case alt_34
      when 1
        # at line 542:25: '\\r'
        match(?\r)

      end
      match(?\n)
      # --> action
      channel=HIDDEN;
      # <-- action

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 97)

    end

    # main rule used to study the input at the current position,
    # and choose the proper lexer rule to call in order to
    # fetch the next token
    # 
    # usually, you don't make direct calls to this method,
    # but instead use the next_token method, which will
    # build and emit the actual next token
    def token!
      # at line 1:8: ( T__23 | T__24 | T__25 | T__26 | T__27 | T__28 | T__29 | T__30 | T__31 | T__32 | T__33 | T__34 | T__35 | T__36 | T__37 | T__38 | T__39 | T__40 | T__41 | T__42 | T__43 | T__44 | T__45 | T__46 | T__47 | T__48 | T__49 | T__50 | T__51 | T__52 | T__53 | T__54 | T__55 | T__56 | T__57 | T__58 | T__59 | T__60 | T__61 | T__62 | T__63 | T__64 | T__65 | T__66 | T__67 | T__68 | T__69 | T__70 | T__71 | T__72 | T__73 | T__74 | T__75 | T__76 | T__77 | T__78 | T__79 | T__80 | T__81 | T__82 | T__83 | T__84 | T__85 | T__86 | T__87 | T__88 | T__89 | T__90 | T__91 | T__92 | T__93 | T__94 | T__95 | T__96 | T__97 | T__98 | T__99 | T__100 | IDENTIFIER | CHARACTER_LITERAL | STRING_LITERAL | HEX_LITERAL | DECIMAL_LITERAL | OCTAL_LITERAL | FLOATING_POINT_LITERAL | WS | COMMENT | LINE_COMMENT | LINE_COMMAND )
      alt_35 = 89
      alt_35 = @dfa35.predict(@input)
      case alt_35
      when 1
        # at line 1:10: T__23
        t__23!

      when 2
        # at line 1:16: T__24
        t__24!

      when 3
        # at line 1:22: T__25
        t__25!

      when 4
        # at line 1:28: T__26
        t__26!

      when 5
        # at line 1:34: T__27
        t__27!

      when 6
        # at line 1:40: T__28
        t__28!

      when 7
        # at line 1:46: T__29
        t__29!

      when 8
        # at line 1:52: T__30
        t__30!

      when 9
        # at line 1:58: T__31
        t__31!

      when 10
        # at line 1:64: T__32
        t__32!

      when 11
        # at line 1:70: T__33
        t__33!

      when 12
        # at line 1:76: T__34
        t__34!

      when 13
        # at line 1:82: T__35
        t__35!

      when 14
        # at line 1:88: T__36
        t__36!

      when 15
        # at line 1:94: T__37
        t__37!

      when 16
        # at line 1:100: T__38
        t__38!

      when 17
        # at line 1:106: T__39
        t__39!

      when 18
        # at line 1:112: T__40
        t__40!

      when 19
        # at line 1:118: T__41
        t__41!

      when 20
        # at line 1:124: T__42
        t__42!

      when 21
        # at line 1:130: T__43
        t__43!

      when 22
        # at line 1:136: T__44
        t__44!

      when 23
        # at line 1:142: T__45
        t__45!

      when 24
        # at line 1:148: T__46
        t__46!

      when 25
        # at line 1:154: T__47
        t__47!

      when 26
        # at line 1:160: T__48
        t__48!

      when 27
        # at line 1:166: T__49
        t__49!

      when 28
        # at line 1:172: T__50
        t__50!

      when 29
        # at line 1:178: T__51
        t__51!

      when 30
        # at line 1:184: T__52
        t__52!

      when 31
        # at line 1:190: T__53
        t__53!

      when 32
        # at line 1:196: T__54
        t__54!

      when 33
        # at line 1:202: T__55
        t__55!

      when 34
        # at line 1:208: T__56
        t__56!

      when 35
        # at line 1:214: T__57
        t__57!

      when 36
        # at line 1:220: T__58
        t__58!

      when 37
        # at line 1:226: T__59
        t__59!

      when 38
        # at line 1:232: T__60
        t__60!

      when 39
        # at line 1:238: T__61
        t__61!

      when 40
        # at line 1:244: T__62
        t__62!

      when 41
        # at line 1:250: T__63
        t__63!

      when 42
        # at line 1:256: T__64
        t__64!

      when 43
        # at line 1:262: T__65
        t__65!

      when 44
        # at line 1:268: T__66
        t__66!

      when 45
        # at line 1:274: T__67
        t__67!

      when 46
        # at line 1:280: T__68
        t__68!

      when 47
        # at line 1:286: T__69
        t__69!

      when 48
        # at line 1:292: T__70
        t__70!

      when 49
        # at line 1:298: T__71
        t__71!

      when 50
        # at line 1:304: T__72
        t__72!

      when 51
        # at line 1:310: T__73
        t__73!

      when 52
        # at line 1:316: T__74
        t__74!

      when 53
        # at line 1:322: T__75
        t__75!

      when 54
        # at line 1:328: T__76
        t__76!

      when 55
        # at line 1:334: T__77
        t__77!

      when 56
        # at line 1:340: T__78
        t__78!

      when 57
        # at line 1:346: T__79
        t__79!

      when 58
        # at line 1:352: T__80
        t__80!

      when 59
        # at line 1:358: T__81
        t__81!

      when 60
        # at line 1:364: T__82
        t__82!

      when 61
        # at line 1:370: T__83
        t__83!

      when 62
        # at line 1:376: T__84
        t__84!

      when 63
        # at line 1:382: T__85
        t__85!

      when 64
        # at line 1:388: T__86
        t__86!

      when 65
        # at line 1:394: T__87
        t__87!

      when 66
        # at line 1:400: T__88
        t__88!

      when 67
        # at line 1:406: T__89
        t__89!

      when 68
        # at line 1:412: T__90
        t__90!

      when 69
        # at line 1:418: T__91
        t__91!

      when 70
        # at line 1:424: T__92
        t__92!

      when 71
        # at line 1:430: T__93
        t__93!

      when 72
        # at line 1:436: T__94
        t__94!

      when 73
        # at line 1:442: T__95
        t__95!

      when 74
        # at line 1:448: T__96
        t__96!

      when 75
        # at line 1:454: T__97
        t__97!

      when 76
        # at line 1:460: T__98
        t__98!

      when 77
        # at line 1:466: T__99
        t__99!

      when 78
        # at line 1:472: T__100
        t__100!

      when 79
        # at line 1:479: IDENTIFIER
        identifier!

      when 80
        # at line 1:490: CHARACTER_LITERAL
        character_literal!

      when 81
        # at line 1:508: STRING_LITERAL
        string_literal!

      when 82
        # at line 1:523: HEX_LITERAL
        hex_literal!

      when 83
        # at line 1:535: DECIMAL_LITERAL
        decimal_literal!

      when 84
        # at line 1:551: OCTAL_LITERAL
        octal_literal!

      when 85
        # at line 1:565: FLOATING_POINT_LITERAL
        floating_point_literal!

      when 86
        # at line 1:588: WS
        ws!

      when 87
        # at line 1:591: COMMENT
        comment!

      when 88
        # at line 1:599: LINE_COMMENT
        line_comment!

      when 89
        # at line 1:612: LINE_COMMAND
        line_command!

      end
    end

    
    # - - - - - - - - - - DFA definitions - - - - - - - - - - -
    class DFA25 < ANTLR3::DFA
      EOT = unpack(7, -1, 1, 8, 2, -1)
      EOF = unpack(10, -1)
      MIN = unpack(2, 46, 2, -1, 1, 43, 1, -1, 2, 48, 2, -1)
      MAX = unpack(1, 57, 1, 102, 2, -1, 1, 57, 1, -1, 1, 57, 1, 102, 2, 
                   -1)
      ACCEPT = unpack(2, -1, 1, 2, 1, 1, 1, -1, 1, 4, 2, -1, 2, 3)
      SPECIAL = unpack(10, -1)
      TRANSITION = [
        unpack(1, 2, 1, -1, 10, 1),
        unpack(1, 3, 1, -1, 10, 1, 10, -1, 1, 5, 1, 4, 1, 5, 29, -1, 1, 
                5, 1, 4, 1, 5),
        unpack(),
        unpack(),
        unpack(1, 6, 1, -1, 1, 6, 2, -1, 10, 7),
        unpack(),
        unpack(10, 7),
        unpack(10, 7, 10, -1, 1, 9, 1, -1, 1, 9, 29, -1, 1, 9, 1, -1, 1, 
                9),
        unpack(),
        unpack()
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 25
      

      def description
        <<-'__dfa_description__'.strip!
          498:1: FLOATING_POINT_LITERAL : ( ( '0' .. '9' )+ '.' ( '0' .. '9' )* ( Exponent )? ( FloatTypeSuffix )? | '.' ( '0' .. '9' )+ ( Exponent )? ( FloatTypeSuffix )? | ( '0' .. '9' )+ Exponent ( FloatTypeSuffix )? | ( '0' .. '9' )+ ( Exponent )? FloatTypeSuffix );
        __dfa_description__
      end
    end
    class DFA35 < ANTLR3::DFA
      EOT = unpack(1, -1, 1, 40, 2, -1, 1, 49, 11, 40, 7, -1, 1, 72, 1, 
                   74, 1, 78, 1, 82, 1, 86, 1, 88, 1, 91, 1, -1, 1, 93, 
                   1, 96, 1, 99, 1, 101, 1, 104, 1, -1, 3, 40, 3, -1, 2, 
                   110, 2, -1, 1, 40, 2, -1, 14, 40, 1, 131, 3, 40, 1, 136, 
                   2, 40, 23, -1, 1, 141, 2, -1, 1, 143, 7, -1, 3, 40, 1, 
                   -1, 1, 147, 1, -1, 1, 110, 18, 40, 1, 167, 1, -1, 2, 
                   40, 1, 170, 1, 40, 1, -1, 3, 40, 4, -1, 3, 40, 1, -1, 
                   2, 40, 1, 180, 1, 181, 6, 40, 1, 188, 2, 40, 1, 191, 
                   1, 40, 1, 193, 2, 40, 1, 196, 1, -1, 1, 197, 1, 40, 1, 
                   -1, 5, 40, 1, 204, 3, 40, 2, -1, 2, 40, 1, 210, 3, 40, 
                   1, -1, 2, 40, 1, -1, 1, 40, 1, -1, 1, 217, 1, 40, 2, 
                   -1, 1, 219, 3, 40, 1, 223, 1, 224, 1, -1, 1, 225, 1, 
                   40, 1, 227, 1, 228, 1, 229, 1, -1, 1, 230, 1, 231, 1, 
                   232, 1, 40, 1, 234, 1, 40, 1, -1, 1, 40, 1, -1, 1, 237, 
                   2, 40, 3, -1, 1, 240, 6, -1, 1, 40, 1, -1, 2, 40, 1, 
                   -1, 1, 244, 1, 40, 1, -1, 1, 246, 1, 247, 1, 248, 1, 
                   -1, 1, 249, 4, -1)
      EOF = unpack(250, -1)
      MIN = unpack(1, 9, 1, 121, 2, -1, 1, 61, 1, 108, 1, 104, 1, 117, 1, 
                   101, 1, 111, 1, 97, 1, 102, 1, 111, 1, 108, 1, 101, 1, 
                   110, 7, -1, 1, 61, 1, 46, 1, 43, 1, 45, 1, 42, 1, 61, 
                   1, 38, 1, -1, 1, 61, 1, 60, 3, 61, 1, -1, 1, 104, 1, 
                   111, 1, 114, 3, -1, 2, 46, 2, -1, 1, 112, 2, -1, 1, 116, 
                   1, 117, 1, 115, 1, 97, 1, 111, 1, 103, 1, 105, 1, 116, 
                   1, 103, 1, 105, 1, 97, 1, 110, 1, 115, 1, 116, 1, 36, 
                   1, 110, 1, 111, 1, 114, 1, 36, 1, 102, 1, 105, 23, -1, 
                   1, 61, 2, -1, 1, 61, 7, -1, 1, 105, 1, 116, 1, 101, 1, 
                   -1, 1, 46, 1, -1, 1, 46, 2, 101, 1, 109, 1, 101, 1, 116, 
                   1, 117, 1, 114, 1, 110, 1, 101, 1, 116, 1, 111, 1, 105, 
                   1, 117, 1, 100, 1, 97, 1, 114, 1, 115, 1, 101, 1, 36, 
                   1, -1, 1, 103, 1, 97, 1, 36, 1, 98, 1, -1, 1, 97, 1, 
                   105, 1, 111, 4, -1, 1, 108, 1, 111, 1, 97, 1, -1, 1, 
                   100, 1, 114, 2, 36, 1, 105, 1, 99, 1, 116, 1, 101, 1, 
                   111, 1, 99, 1, 36, 1, 115, 1, 114, 1, 36, 1, 116, 1, 
                   36, 1, 116, 1, 105, 1, 36, 1, -1, 1, 36, 1, 116, 1, -1, 
                   1, 108, 1, 117, 1, 103, 1, 110, 1, 101, 1, 36, 1, 107, 
                   1, 101, 1, 110, 2, -1, 1, 99, 1, 116, 1, 36, 1, 100, 
                   1, 102, 1, 104, 1, -1, 1, 116, 1, 110, 1, -1, 1, 105, 
                   1, -1, 1, 36, 1, 110, 2, -1, 1, 36, 1, 101, 1, 108, 1, 
                   110, 2, 36, 1, -1, 1, 36, 1, 102, 3, 36, 1, -1, 3, 36, 
                   1, 101, 1, 36, 1, 108, 1, -1, 1, 117, 1, -1, 1, 36, 1, 
                   116, 1, 101, 3, -1, 1, 36, 6, -1, 1, 114, 1, -1, 2, 101, 
                   1, -1, 1, 36, 1, 100, 1, -1, 3, 36, 1, -1, 1, 36, 4, 
                   -1)
      MAX = unpack(1, 126, 1, 121, 2, -1, 1, 61, 1, 120, 1, 119, 1, 117, 
                   1, 101, 2, 111, 1, 110, 3, 111, 1, 110, 7, -1, 1, 61, 
                   1, 57, 1, 61, 1, 62, 3, 61, 1, -1, 2, 61, 1, 62, 1, 61, 
                   1, 124, 1, -1, 1, 104, 1, 111, 1, 114, 3, -1, 1, 120, 
                   1, 102, 2, -1, 1, 112, 2, -1, 1, 116, 1, 117, 1, 115, 
                   1, 114, 1, 111, 1, 122, 1, 105, 2, 116, 1, 108, 1, 97, 
                   1, 110, 1, 115, 1, 116, 1, 122, 1, 110, 1, 111, 1, 114, 
                   1, 122, 1, 102, 1, 115, 23, -1, 1, 61, 2, -1, 1, 61, 
                   7, -1, 1, 105, 1, 116, 1, 101, 1, -1, 1, 102, 1, -1, 
                   1, 102, 2, 101, 1, 109, 1, 101, 1, 116, 1, 117, 1, 114, 
                   1, 110, 1, 101, 1, 116, 1, 111, 1, 105, 1, 117, 1, 100, 
                   1, 97, 1, 114, 1, 116, 1, 101, 1, 122, 1, -1, 1, 103, 
                   1, 97, 1, 122, 1, 98, 1, -1, 1, 97, 1, 105, 1, 111, 4, 
                   -1, 1, 108, 1, 111, 1, 97, 1, -1, 1, 100, 1, 114, 2, 
                   122, 1, 105, 1, 99, 1, 116, 1, 101, 1, 111, 1, 99, 1, 
                   122, 1, 115, 1, 114, 1, 122, 1, 116, 1, 122, 1, 116, 
                   1, 105, 1, 122, 1, -1, 1, 122, 1, 116, 1, -1, 1, 108, 
                   1, 117, 1, 103, 1, 110, 1, 101, 1, 122, 1, 107, 1, 101, 
                   1, 110, 2, -1, 1, 99, 1, 116, 1, 122, 1, 100, 1, 102, 
                   1, 104, 1, -1, 1, 116, 1, 110, 1, -1, 1, 105, 1, -1, 
                   1, 122, 1, 110, 2, -1, 1, 122, 1, 101, 1, 108, 1, 110, 
                   2, 122, 1, -1, 1, 122, 1, 102, 3, 122, 1, -1, 3, 122, 
                   1, 101, 1, 122, 1, 108, 1, -1, 1, 117, 1, -1, 1, 122, 
                   1, 116, 1, 101, 3, -1, 1, 122, 6, -1, 1, 114, 1, -1, 
                   2, 101, 1, -1, 1, 122, 1, 100, 1, -1, 3, 122, 1, -1, 
                   1, 122, 4, -1)
      ACCEPT = unpack(2, -1, 1, 2, 1, 3, 12, -1, 1, 18, 1, 19, 1, 22, 1, 
                      26, 1, 27, 1, 28, 1, 29, 7, -1, 1, 42, 5, -1, 1, 54, 
                      3, -1, 1, 79, 1, 80, 1, 81, 2, -1, 1, 86, 1, 89, 1, 
                      -1, 1, 59, 1, 4, 21, -1, 1, 44, 1, 30, 1, 31, 1, 39, 
                      1, 85, 1, 36, 1, 47, 1, 32, 1, 37, 1, 40, 1, 48, 1, 
                      33, 1, 45, 1, 87, 1, 88, 1, 34, 1, 46, 1, 35, 1, 51, 
                      1, 56, 1, 41, 1, 60, 1, 43, 1, -1, 1, 63, 1, 61, 1, 
                      -1, 1, 64, 1, 62, 1, 52, 1, 58, 1, 53, 1, 55, 1, 57, 
                      3, -1, 1, 82, 1, -1, 1, 83, 20, -1, 1, 69, 4, -1, 
                      1, 73, 3, -1, 1, 49, 1, 65, 1, 50, 1, 66, 3, -1, 1, 
                      84, 19, -1, 1, 12, 2, -1, 1, 74, 9, -1, 1, 23, 1, 
                      70, 6, -1, 1, 7, 2, -1, 1, 9, 1, -1, 1, 10, 2, -1, 
                      1, 67, 1, 13, 6, -1, 1, 75, 5, -1, 1, 11, 6, -1, 1, 
                      24, 1, -1, 1, 14, 3, -1, 1, 21, 1, 72, 1, 77, 1, -1, 
                      1, 5, 1, 6, 1, 20, 1, 16, 1, 38, 1, 71, 1, -1, 1, 
                      78, 2, -1, 1, 15, 2, -1, 1, 1, 3, -1, 1, 68, 1, -1, 
                      1, 8, 1, 25, 1, 76, 1, 17)
      SPECIAL = unpack(250, -1)
      TRANSITION = [
        unpack(2, 45, 1, -1, 2, 45, 18, -1, 1, 45, 1, 31, 1, 42, 1, 46, 
               1, 40, 1, 28, 1, 29, 1, 41, 1, 19, 1, 20, 1, 23, 1, 25, 1, 
               3, 1, 26, 1, 24, 1, 27, 1, 43, 9, 44, 1, 18, 1, 2, 1, 32, 
               1, 4, 1, 33, 1, 36, 1, -1, 26, 40, 1, 21, 1, -1, 1, 22, 1, 
               34, 1, 40, 1, -1, 1, 7, 1, 39, 1, 10, 1, 14, 1, 5, 1, 13, 
               1, 38, 1, 40, 1, 11, 2, 40, 1, 12, 5, 40, 1, 8, 1, 6, 1, 
               1, 1, 15, 1, 9, 1, 37, 3, 40, 1, 16, 1, 35, 1, 17, 1, 30),
        unpack(1, 47),
        unpack(),
        unpack(),
        unpack(1, 48),
        unpack(1, 52, 1, -1, 1, 51, 9, -1, 1, 50),
        unpack(1, 54, 1, 55, 10, -1, 1, 53, 2, -1, 1, 56),
        unpack(1, 57),
        unpack(1, 58),
        unpack(1, 59),
        unpack(1, 62, 6, -1, 1, 60, 6, -1, 1, 61),
        unpack(1, 64, 7, -1, 1, 63),
        unpack(1, 65),
        unpack(1, 66, 2, -1, 1, 67),
        unpack(1, 69, 9, -1, 1, 68),
        unpack(1, 70),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(1, 71),
        unpack(1, 73, 1, -1, 10, 75),
        unpack(1, 76, 17, -1, 1, 77),
        unpack(1, 79, 15, -1, 1, 81, 1, 80),
        unpack(1, 84, 4, -1, 1, 85, 13, -1, 1, 83),
        unpack(1, 87),
        unpack(1, 90, 22, -1, 1, 89),
        unpack(),
        unpack(1, 92),
        unpack(1, 94, 1, 95),
        unpack(1, 98, 1, 97),
        unpack(1, 100),
        unpack(1, 102, 62, -1, 1, 103),
        unpack(),
        unpack(1, 105),
        unpack(1, 106),
        unpack(1, 107),
        unpack(),
        unpack(),
        unpack(),
        unpack(1, 75, 1, -1, 8, 109, 2, 75, 10, -1, 3, 75, 17, -1, 1, 108, 
                11, -1, 3, 75, 17, -1, 1, 108),
        unpack(1, 75, 1, -1, 10, 111, 10, -1, 3, 75, 29, -1, 3, 75),
        unpack(),
        unpack(),
        unpack(1, 112),
        unpack(),
        unpack(),
        unpack(1, 113),
        unpack(1, 114),
        unpack(1, 115),
        unpack(1, 116, 16, -1, 1, 117),
        unpack(1, 118),
        unpack(1, 119, 18, -1, 1, 120),
        unpack(1, 121),
        unpack(1, 122),
        unpack(1, 123, 12, -1, 1, 124),
        unpack(1, 125, 2, -1, 1, 126),
        unpack(1, 127),
        unpack(1, 128),
        unpack(1, 129),
        unpack(1, 130),
        unpack(1, 40, 11, -1, 10, 40, 7, -1, 26, 40, 4, -1, 1, 40, 1, -1, 
                26, 40),
        unpack(1, 132),
        unpack(1, 133),
        unpack(1, 134),
        unpack(1, 40, 11, -1, 10, 40, 7, -1, 26, 40, 4, -1, 1, 40, 1, -1, 
                20, 40, 1, 135, 5, 40),
        unpack(1, 137),
        unpack(1, 139, 9, -1, 1, 138),
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
        unpack(1, 140),
        unpack(),
        unpack(),
        unpack(1, 142),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(1, 144),
        unpack(1, 145),
        unpack(1, 146),
        unpack(),
        unpack(1, 75, 1, -1, 8, 109, 2, 75, 10, -1, 3, 75, 29, -1, 3, 75),
        unpack(),
        unpack(1, 75, 1, -1, 10, 111, 10, -1, 3, 75, 29, -1, 3, 75),
        unpack(1, 148),
        unpack(1, 149),
        unpack(1, 150),
        unpack(1, 151),
        unpack(1, 152),
        unpack(1, 153),
        unpack(1, 154),
        unpack(1, 155),
        unpack(1, 156),
        unpack(1, 157),
        unpack(1, 158),
        unpack(1, 159),
        unpack(1, 160),
        unpack(1, 161),
        unpack(1, 162),
        unpack(1, 163),
        unpack(1, 164, 1, 165),
        unpack(1, 166),
        unpack(1, 40, 11, -1, 10, 40, 7, -1, 26, 40, 4, -1, 1, 40, 1, -1, 
                26, 40),
        unpack(),
        unpack(1, 168),
        unpack(1, 169),
        unpack(1, 40, 11, -1, 10, 40, 7, -1, 26, 40, 4, -1, 1, 40, 1, -1, 
                26, 40),
        unpack(1, 171),
        unpack(),
        unpack(1, 172),
        unpack(1, 173),
        unpack(1, 174),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(1, 175),
        unpack(1, 176),
        unpack(1, 177),
        unpack(),
        unpack(1, 178),
        unpack(1, 179),
        unpack(1, 40, 11, -1, 10, 40, 7, -1, 26, 40, 4, -1, 1, 40, 1, -1, 
                26, 40),
        unpack(1, 40, 11, -1, 10, 40, 7, -1, 26, 40, 4, -1, 1, 40, 1, -1, 
                26, 40),
        unpack(1, 182),
        unpack(1, 183),
        unpack(1, 184),
        unpack(1, 185),
        unpack(1, 186),
        unpack(1, 187),
        unpack(1, 40, 11, -1, 10, 40, 7, -1, 26, 40, 4, -1, 1, 40, 1, -1, 
                26, 40),
        unpack(1, 189),
        unpack(1, 190),
        unpack(1, 40, 11, -1, 10, 40, 7, -1, 26, 40, 4, -1, 1, 40, 1, -1, 
                26, 40),
        unpack(1, 192),
        unpack(1, 40, 11, -1, 10, 40, 7, -1, 26, 40, 4, -1, 1, 40, 1, -1, 
                26, 40),
        unpack(1, 194),
        unpack(1, 195),
        unpack(1, 40, 11, -1, 10, 40, 7, -1, 26, 40, 4, -1, 1, 40, 1, -1, 
                26, 40),
        unpack(),
        unpack(1, 40, 11, -1, 10, 40, 7, -1, 26, 40, 4, -1, 1, 40, 1, -1, 
                26, 40),
        unpack(1, 198),
        unpack(),
        unpack(1, 199),
        unpack(1, 200),
        unpack(1, 201),
        unpack(1, 202),
        unpack(1, 203),
        unpack(1, 40, 11, -1, 10, 40, 7, -1, 26, 40, 4, -1, 1, 40, 1, -1, 
                26, 40),
        unpack(1, 205),
        unpack(1, 206),
        unpack(1, 207),
        unpack(),
        unpack(),
        unpack(1, 208),
        unpack(1, 209),
        unpack(1, 40, 11, -1, 10, 40, 7, -1, 26, 40, 4, -1, 1, 40, 1, -1, 
                26, 40),
        unpack(1, 211),
        unpack(1, 212),
        unpack(1, 213),
        unpack(),
        unpack(1, 214),
        unpack(1, 215),
        unpack(),
        unpack(1, 216),
        unpack(),
        unpack(1, 40, 11, -1, 10, 40, 7, -1, 26, 40, 4, -1, 1, 40, 1, -1, 
                26, 40),
        unpack(1, 218),
        unpack(),
        unpack(),
        unpack(1, 40, 11, -1, 10, 40, 7, -1, 26, 40, 4, -1, 1, 40, 1, -1, 
                26, 40),
        unpack(1, 220),
        unpack(1, 221),
        unpack(1, 222),
        unpack(1, 40, 11, -1, 10, 40, 7, -1, 26, 40, 4, -1, 1, 40, 1, -1, 
                26, 40),
        unpack(1, 40, 11, -1, 10, 40, 7, -1, 26, 40, 4, -1, 1, 40, 1, -1, 
                26, 40),
        unpack(),
        unpack(1, 40, 11, -1, 10, 40, 7, -1, 26, 40, 4, -1, 1, 40, 1, -1, 
                26, 40),
        unpack(1, 226),
        unpack(1, 40, 11, -1, 10, 40, 7, -1, 26, 40, 4, -1, 1, 40, 1, -1, 
                26, 40),
        unpack(1, 40, 11, -1, 10, 40, 7, -1, 26, 40, 4, -1, 1, 40, 1, -1, 
                26, 40),
        unpack(1, 40, 11, -1, 10, 40, 7, -1, 26, 40, 4, -1, 1, 40, 1, -1, 
                26, 40),
        unpack(),
        unpack(1, 40, 11, -1, 10, 40, 7, -1, 26, 40, 4, -1, 1, 40, 1, -1, 
                26, 40),
        unpack(1, 40, 11, -1, 10, 40, 7, -1, 26, 40, 4, -1, 1, 40, 1, -1, 
                26, 40),
        unpack(1, 40, 11, -1, 10, 40, 7, -1, 26, 40, 4, -1, 1, 40, 1, -1, 
                26, 40),
        unpack(1, 233),
        unpack(1, 40, 11, -1, 10, 40, 7, -1, 26, 40, 4, -1, 1, 40, 1, -1, 
                26, 40),
        unpack(1, 235),
        unpack(),
        unpack(1, 236),
        unpack(),
        unpack(1, 40, 11, -1, 10, 40, 7, -1, 26, 40, 4, -1, 1, 40, 1, -1, 
                26, 40),
        unpack(1, 238),
        unpack(1, 239),
        unpack(),
        unpack(),
        unpack(),
        unpack(1, 40, 11, -1, 10, 40, 7, -1, 26, 40, 4, -1, 1, 40, 1, -1, 
                26, 40),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(),
        unpack(1, 241),
        unpack(),
        unpack(1, 242),
        unpack(1, 243),
        unpack(),
        unpack(1, 40, 11, -1, 10, 40, 7, -1, 26, 40, 4, -1, 1, 40, 1, -1, 
                26, 40),
        unpack(1, 245),
        unpack(),
        unpack(1, 40, 11, -1, 10, 40, 7, -1, 26, 40, 4, -1, 1, 40, 1, -1, 
                26, 40),
        unpack(1, 40, 11, -1, 10, 40, 7, -1, 26, 40, 4, -1, 1, 40, 1, -1, 
                26, 40),
        unpack(1, 40, 11, -1, 10, 40, 7, -1, 26, 40, 4, -1, 1, 40, 1, -1, 
                26, 40),
        unpack(),
        unpack(1, 40, 11, -1, 10, 40, 7, -1, 26, 40, 4, -1, 1, 40, 1, -1, 
                26, 40),
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
      
      @decision = 35
      

      def description
        <<-'__dfa_description__'.strip!
          1:1: Tokens : ( T__23 | T__24 | T__25 | T__26 | T__27 | T__28 | T__29 | T__30 | T__31 | T__32 | T__33 | T__34 | T__35 | T__36 | T__37 | T__38 | T__39 | T__40 | T__41 | T__42 | T__43 | T__44 | T__45 | T__46 | T__47 | T__48 | T__49 | T__50 | T__51 | T__52 | T__53 | T__54 | T__55 | T__56 | T__57 | T__58 | T__59 | T__60 | T__61 | T__62 | T__63 | T__64 | T__65 | T__66 | T__67 | T__68 | T__69 | T__70 | T__71 | T__72 | T__73 | T__74 | T__75 | T__76 | T__77 | T__78 | T__79 | T__80 | T__81 | T__82 | T__83 | T__84 | T__85 | T__86 | T__87 | T__88 | T__89 | T__90 | T__91 | T__92 | T__93 | T__94 | T__95 | T__96 | T__97 | T__98 | T__99 | T__100 | IDENTIFIER | CHARACTER_LITERAL | STRING_LITERAL | HEX_LITERAL | DECIMAL_LITERAL | OCTAL_LITERAL | FLOATING_POINT_LITERAL | WS | COMMENT | LINE_COMMENT | LINE_COMMAND );
        __dfa_description__
      end
    end

    
    private
    
    def initialize_dfas
      super rescue nil
      @dfa25 = DFA25.new(self, 25)
      @dfa35 = DFA35.new(self, 35)

    end
  end # class Lexer < ANTLR3::Lexer

  at_exit { Lexer.main(ARGV) } if __FILE__ == $0
end

