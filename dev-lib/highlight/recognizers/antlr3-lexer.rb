#!/usr/bin/env ruby
#
# ANTLRv3Grammar.g
# 
# Generated using ANTLR version: 3.2.1-SNAPSHOT Jun 18, 2010 05:38:11
# Ruby runtime library version: 1.7.5
# Input grammar file: ANTLRv3Grammar.g
# Generated at: 2010-07-03 23:17:11
# 

# ~~~> start load path setup
this_directory = File.expand_path( File.dirname( __FILE__ ) )
$LOAD_PATH.unshift( this_directory ) unless $LOAD_PATH.include?( this_directory )

antlr_load_failed = proc do
  load_path = $LOAD_PATH.map { |dir| '  - ' << dir }.join( $/ )
  raise LoadError, <<-END.strip!
  
Failed to load the ANTLR3 runtime library (version 1.7.5):

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
    Gem.activate( 'antlr3', '~> 1.7.5' )
  rescue Gem::LoadError
    antlr_load_failed.call
  end
  
  require 'antlr3'
  
end
# <~~~ end load path setup


module ANTLRv3Grammar
  # TokenData defines all of the token type integer values
  # as constants, which will be included in all 
  # ANTLR-generated recognizers.
  const_defined?( :TokenData ) or TokenData = ANTLR3::TokenScheme.new

  module TokenData

    # define the token constants
    define_tokens( :BACKTRACK_SEMPRED => 34, :DOUBLE_ANGLE_STRING_LITERAL => 53, 
                   :LEXER_GRAMMAR => 24, :EOA => 19, :ARGLIST => 22, :EOF => -1, 
                   :SEMPRED => 31, :ACTION => 47, :EOB => 18, :TOKEN_REF => 44, 
                   :T__93 => 93, :T__91 => 91, :RET => 23, :T__92 => 92, 
                   :STRING_LITERAL => 45, :T__90 => 90, :ARG => 21, :EOR => 17, 
                   :ARG_ACTION => 50, :DOUBLE_QUOTE_STRING_LITERAL => 52, 
                   :NESTED_ARG_ACTION => 60, :ACTION_CHAR_LITERAL => 62, 
                   :T__80 => 80, :T__81 => 81, :T__82 => 82, :RULE => 7, 
                   :ACTION_ESC => 64, :T__83 => 83, :PARSER_GRAMMAR => 25, 
                   :SRC => 54, :INT => 49, :CHAR_RANGE => 14, :EPSILON => 15, 
                   :T__85 => 85, :T__84 => 84, :T__87 => 87, :T__86 => 86, 
                   :REWRITE => 39, :T__89 => 89, :T__88 => 88, :WS => 66, 
                   :T__71 => 71, :T__72 => 72, :COMBINED_GRAMMAR => 27, 
                   :T__70 => 70, :LEXER => 6, :SL_COMMENT => 55, :TREE_GRAMMAR => 26, 
                   :T__76 => 76, :CLOSURE => 10, :T__75 => 75, :PARSER => 5, 
                   :T__74 => 74, :T__73 => 73, :T__79 => 79, :T__78 => 78, 
                   :T__77 => 77, :T__68 => 68, :T__69 => 69, :T__67 => 67, 
                   :NESTED_ACTION => 63, :ESC => 58, :FRAGMENT => 35, :ID => 20, 
                   :TREE_BEGIN => 36, :AT => 40, :ML_COMMENT => 56, :ALT => 16, 
                   :SCOPE => 30, :LABEL_ASSIGN => 41, :DOC_COMMENT => 4, 
                   :WS_LOOP => 65, :RANGE => 13, :TOKENS => 43, :GATED_SEMPRED => 32, 
                   :LITERAL_CHAR => 57, :BANG => 38, :LIST_LABEL_ASSIGN => 42, 
                   :ACTION_STRING_LITERAL => 61, :ROOT => 37, :RULE_REF => 51, 
                   :SYNPRED => 12, :OPTIONAL => 9, :CHAR_LITERAL => 46, 
                   :LABEL => 28, :TEMPLATE => 29, :SYN_SEMPRED => 33, :XDIGIT => 59, 
                   :BLOCK => 8, :POSITIVE_CLOSURE => 11, :OPTIONS => 48 )
    
  end


  class Lexer < ANTLR3::Lexer
    @grammar_home = ANTLRv3Grammar
    include TokenData

    
    begin
      generated_using( "ANTLRv3Grammar.g", "3.2.1-SNAPSHOT Jun 18, 2010 05:38:11", "1.7.5" )
    rescue NoMethodError => error
      # ignore
    end
    
    RULE_NAMES   = [ "RET", "SCOPE", "FRAGMENT", "TREE_BEGIN", "ROOT", "BANG", 
                     "RANGE", "REWRITE", "AT", "LABEL_ASSIGN", "LIST_LABEL_ASSIGN", 
                     "T__67", "T__68", "T__69", "T__70", "T__71", "T__72", 
                     "T__73", "T__74", "T__75", "T__76", "T__77", "T__78", 
                     "T__79", "T__80", "T__81", "T__82", "T__83", "T__84", 
                     "T__85", "T__86", "T__87", "T__88", "T__89", "T__90", 
                     "T__91", "T__92", "T__93", "SL_COMMENT", "ML_COMMENT", 
                     "CHAR_LITERAL", "STRING_LITERAL", "LITERAL_CHAR", "DOUBLE_QUOTE_STRING_LITERAL", 
                     "DOUBLE_ANGLE_STRING_LITERAL", "ESC", "XDIGIT", "INT", 
                     "ARG_ACTION", "NESTED_ARG_ACTION", "ACTION", "NESTED_ACTION", 
                     "ACTION_CHAR_LITERAL", "ACTION_STRING_LITERAL", "ACTION_ESC", 
                     "TOKEN_REF", "RULE_REF", "OPTIONS", "TOKENS", "SRC", 
                     "WS", "WS_LOOP" ].freeze
    RULE_METHODS = [ :ret!, :scope!, :fragment!, :tree_begin!, :root!, :bang!, 
                     :range!, :rewrite!, :at!, :label_assign!, :list_label_assign!, 
                     :t__67!, :t__68!, :t__69!, :t__70!, :t__71!, :t__72!, 
                     :t__73!, :t__74!, :t__75!, :t__76!, :t__77!, :t__78!, 
                     :t__79!, :t__80!, :t__81!, :t__82!, :t__83!, :t__84!, 
                     :t__85!, :t__86!, :t__87!, :t__88!, :t__89!, :t__90!, 
                     :t__91!, :t__92!, :t__93!, :sl_comment!, :ml_comment!, 
                     :char_literal!, :string_literal!, :literal_char!, :double_quote_string_literal!, 
                     :double_angle_string_literal!, :esc!, :xdigit!, :int!, 
                     :arg_action!, :nested_arg_action!, :action!, :nested_action!, 
                     :action_char_literal!, :action_string_literal!, :action_esc!, 
                     :token_ref!, :rule_ref!, :options!, :tokens!, :src!, 
                     :ws!, :ws_loop! ].freeze

    
    def initialize( input=nil, options = {} )
      super( input, options )

    end
    
    
    # - - - - - - - - - - - lexer rules - - - - - - - - - - - -
    # lexer rule ret! (RET)
    # (in ANTLRv3Grammar.g)
    def ret!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 1 )

      type = RET
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 7:7: 'returns'
      match( "returns" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 1 )

    end

    # lexer rule scope! (SCOPE)
    # (in ANTLRv3Grammar.g)
    def scope!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 2 )

      type = SCOPE
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 8:9: 'scope'
      match( "scope" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 2 )

    end

    # lexer rule fragment! (FRAGMENT)
    # (in ANTLRv3Grammar.g)
    def fragment!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 3 )

      type = FRAGMENT
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 9:12: 'fragment'
      match( "fragment" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 3 )

    end

    # lexer rule tree_begin! (TREE_BEGIN)
    # (in ANTLRv3Grammar.g)
    def tree_begin!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 4 )

      type = TREE_BEGIN
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 10:14: '^('
      match( "^(" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 4 )

    end

    # lexer rule root! (ROOT)
    # (in ANTLRv3Grammar.g)
    def root!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 5 )

      type = ROOT
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 11:8: '^'
      match( 0x5e )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 5 )

    end

    # lexer rule bang! (BANG)
    # (in ANTLRv3Grammar.g)
    def bang!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 6 )

      type = BANG
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 12:8: '!'
      match( 0x21 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 6 )

    end

    # lexer rule range! (RANGE)
    # (in ANTLRv3Grammar.g)
    def range!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 7 )

      type = RANGE
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 13:9: '..'
      match( ".." )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 7 )

    end

    # lexer rule rewrite! (REWRITE)
    # (in ANTLRv3Grammar.g)
    def rewrite!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 8 )

      type = REWRITE
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 14:11: '->'
      match( "->" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 8 )

    end

    # lexer rule at! (AT)
    # (in ANTLRv3Grammar.g)
    def at!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 9 )

      type = AT
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 15:6: '@'
      match( 0x40 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 9 )

    end

    # lexer rule label_assign! (LABEL_ASSIGN)
    # (in ANTLRv3Grammar.g)
    def label_assign!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 10 )

      type = LABEL_ASSIGN
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 16:16: '='
      match( 0x3d )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 10 )

    end

    # lexer rule list_label_assign! (LIST_LABEL_ASSIGN)
    # (in ANTLRv3Grammar.g)
    def list_label_assign!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 11 )

      type = LIST_LABEL_ASSIGN
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 17:21: '+='
      match( "+=" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 11 )

    end

    # lexer rule t__67! (T__67)
    # (in ANTLRv3Grammar.g)
    def t__67!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 12 )

      type = T__67
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 18:9: 'lexer'
      match( "lexer" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 12 )

    end

    # lexer rule t__68! (T__68)
    # (in ANTLRv3Grammar.g)
    def t__68!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 13 )

      type = T__68
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 19:9: 'parser'
      match( "parser" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 13 )

    end

    # lexer rule t__69! (T__69)
    # (in ANTLRv3Grammar.g)
    def t__69!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 14 )

      type = T__69
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 20:9: 'tree'
      match( "tree" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 14 )

    end

    # lexer rule t__70! (T__70)
    # (in ANTLRv3Grammar.g)
    def t__70!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 15 )

      type = T__70
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 21:9: 'grammar'
      match( "grammar" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 15 )

    end

    # lexer rule t__71! (T__71)
    # (in ANTLRv3Grammar.g)
    def t__71!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 16 )

      type = T__71
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 22:9: ';'
      match( 0x3b )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 16 )

    end

    # lexer rule t__72! (T__72)
    # (in ANTLRv3Grammar.g)
    def t__72!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 17 )

      type = T__72
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 23:9: '}'
      match( 0x7d )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 17 )

    end

    # lexer rule t__73! (T__73)
    # (in ANTLRv3Grammar.g)
    def t__73!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 18 )

      type = T__73
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 24:9: '::'
      match( "::" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 18 )

    end

    # lexer rule t__74! (T__74)
    # (in ANTLRv3Grammar.g)
    def t__74!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 19 )

      type = T__74
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 25:9: '*'
      match( 0x2a )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 19 )

    end

    # lexer rule t__75! (T__75)
    # (in ANTLRv3Grammar.g)
    def t__75!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 20 )

      type = T__75
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 26:9: 'protected'
      match( "protected" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 20 )

    end

    # lexer rule t__76! (T__76)
    # (in ANTLRv3Grammar.g)
    def t__76!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 21 )

      type = T__76
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 27:9: 'public'
      match( "public" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 21 )

    end

    # lexer rule t__77! (T__77)
    # (in ANTLRv3Grammar.g)
    def t__77!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 22 )

      type = T__77
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 28:9: 'private'
      match( "private" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 22 )

    end

    # lexer rule t__78! (T__78)
    # (in ANTLRv3Grammar.g)
    def t__78!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 23 )

      type = T__78
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 29:9: ':'
      match( 0x3a )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 23 )

    end

    # lexer rule t__79! (T__79)
    # (in ANTLRv3Grammar.g)
    def t__79!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 24 )

      type = T__79
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 30:9: 'throws'
      match( "throws" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 24 )

    end

    # lexer rule t__80! (T__80)
    # (in ANTLRv3Grammar.g)
    def t__80!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 25 )

      type = T__80
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 31:9: ','
      match( 0x2c )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 25 )

    end

    # lexer rule t__81! (T__81)
    # (in ANTLRv3Grammar.g)
    def t__81!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 26 )

      type = T__81
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 32:9: '('
      match( 0x28 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 26 )

    end

    # lexer rule t__82! (T__82)
    # (in ANTLRv3Grammar.g)
    def t__82!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 27 )

      type = T__82
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 33:9: '|'
      match( 0x7c )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 27 )

    end

    # lexer rule t__83! (T__83)
    # (in ANTLRv3Grammar.g)
    def t__83!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 28 )

      type = T__83
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 34:9: ')'
      match( 0x29 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 28 )

    end

    # lexer rule t__84! (T__84)
    # (in ANTLRv3Grammar.g)
    def t__84!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 29 )

      type = T__84
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 35:9: 'catch'
      match( "catch" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 29 )

    end

    # lexer rule t__85! (T__85)
    # (in ANTLRv3Grammar.g)
    def t__85!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 30 )

      type = T__85
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 36:9: 'finally'
      match( "finally" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 30 )

    end

    # lexer rule t__86! (T__86)
    # (in ANTLRv3Grammar.g)
    def t__86!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 31 )

      type = T__86
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 37:9: '=>'
      match( "=>" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 31 )

    end

    # lexer rule t__87! (T__87)
    # (in ANTLRv3Grammar.g)
    def t__87!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 32 )

      type = T__87
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 38:9: '~'
      match( 0x7e )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 32 )

    end

    # lexer rule t__88! (T__88)
    # (in ANTLRv3Grammar.g)
    def t__88!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 33 )

      type = T__88
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 39:9: '<'
      match( 0x3c )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 33 )

    end

    # lexer rule t__89! (T__89)
    # (in ANTLRv3Grammar.g)
    def t__89!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 34 )

      type = T__89
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 40:9: '>'
      match( 0x3e )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 34 )

    end

    # lexer rule t__90! (T__90)
    # (in ANTLRv3Grammar.g)
    def t__90!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 35 )

      type = T__90
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 41:9: '.'
      match( 0x2e )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 35 )

    end

    # lexer rule t__91! (T__91)
    # (in ANTLRv3Grammar.g)
    def t__91!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 36 )

      type = T__91
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 42:9: '?'
      match( 0x3f )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 36 )

    end

    # lexer rule t__92! (T__92)
    # (in ANTLRv3Grammar.g)
    def t__92!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 37 )

      type = T__92
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 43:9: '+'
      match( 0x2b )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 37 )

    end

    # lexer rule t__93! (T__93)
    # (in ANTLRv3Grammar.g)
    def t__93!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 38 )

      type = T__93
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 44:9: '$'
      match( 0x24 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 38 )

    end

    # lexer rule sl_comment! (SL_COMMENT)
    # (in ANTLRv3Grammar.g)
    def sl_comment!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 39 )

      type = SL_COMMENT
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 473:5: '//' ( ' $ANTLR ' SRC | (~ ( '\\r' | '\\n' ) )* ) ( '\\r' )? '\\n'
      match( "//" )
      # at line 474:5: ( ' $ANTLR ' SRC | (~ ( '\\r' | '\\n' ) )* )
      alt_2 = 2
      alt_2 = @dfa2.predict( @input )
      case alt_2
      when 1
        # at line 474:7: ' $ANTLR ' SRC
        match( " $ANTLR " )
        src!

      when 2
        # at line 475:6: (~ ( '\\r' | '\\n' ) )*
        # at line 475:6: (~ ( '\\r' | '\\n' ) )*
        while true # decision 1
          alt_1 = 2
          look_1_0 = @input.peek( 1 )

          if ( look_1_0.between?( 0x0, 0x9 ) || look_1_0.between?( 0xb, 0xc ) || look_1_0.between?( 0xe, 0xffff ) )
            alt_1 = 1

          end
          case alt_1
          when 1
            # at line 475:6: ~ ( '\\r' | '\\n' )
            if @input.peek( 1 ).between?( 0x0, 0x9 ) || @input.peek( 1 ).between?( 0xb, 0xc ) || @input.peek( 1 ).between?( 0xe, 0xff )
              @input.consume
            else
              mse = MismatchedSet( nil )
              recover mse
              raise mse
            end



          else
            break # out of loop for decision 1
          end
        end # loop for decision 1

      end
      # at line 477:3: ( '\\r' )?
      alt_3 = 2
      look_3_0 = @input.peek( 1 )

      if ( look_3_0 == 0xd )
        alt_3 = 1
      end
      case alt_3
      when 1
        # at line 477:3: '\\r'
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
      # trace_out( __method__, 39 )

    end

    # lexer rule ml_comment! (ML_COMMENT)
    # (in ANTLRv3Grammar.g)
    def ml_comment!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 40 )

      type = ML_COMMENT
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 481:4: '/*' ( . )* '*/'
      match( "/*" )
      # --> action
      if @input.peek(1) == ?* then type = DOC_COMMENT else channel = HIDDEN end 
      # <-- action
      # at line 481:88: ( . )*
      while true # decision 4
        alt_4 = 2
        look_4_0 = @input.peek( 1 )

        if ( look_4_0 == 0x2a )
          look_4_1 = @input.peek( 2 )

          if ( look_4_1 == 0x2f )
            alt_4 = 2
          elsif ( look_4_1.between?( 0x0, 0x2e ) || look_4_1.between?( 0x30, 0xffff ) )
            alt_4 = 1

          end
        elsif ( look_4_0.between?( 0x0, 0x29 ) || look_4_0.between?( 0x2b, 0xffff ) )
          alt_4 = 1

        end
        case alt_4
        when 1
          # at line 481:88: .
          match_any

        else
          break # out of loop for decision 4
        end
      end # loop for decision 4
      match( "*/" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 40 )

    end

    # lexer rule char_literal! (CHAR_LITERAL)
    # (in ANTLRv3Grammar.g)
    def char_literal!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 41 )

      type = CHAR_LITERAL
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 485:4: '\\'' LITERAL_CHAR '\\''
      match( 0x27 )
      literal_char!
      match( 0x27 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 41 )

    end

    # lexer rule string_literal! (STRING_LITERAL)
    # (in ANTLRv3Grammar.g)
    def string_literal!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 42 )

      type = STRING_LITERAL
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 489:4: '\\'' LITERAL_CHAR ( LITERAL_CHAR )* '\\''
      match( 0x27 )
      literal_char!
      # at line 489:22: ( LITERAL_CHAR )*
      while true # decision 5
        alt_5 = 2
        look_5_0 = @input.peek( 1 )

        if ( look_5_0.between?( 0x0, 0x26 ) || look_5_0.between?( 0x28, 0xffff ) )
          alt_5 = 1

        end
        case alt_5
        when 1
          # at line 489:22: LITERAL_CHAR
          literal_char!

        else
          break # out of loop for decision 5
        end
      end # loop for decision 5
      match( 0x27 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 42 )

    end

    # lexer rule literal_char! (LITERAL_CHAR)
    # (in ANTLRv3Grammar.g)
    def literal_char!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 43 )

      
      # - - - - main rule block - - - -
      # at line 494:2: ( ESC | ~ ( '\\'' | '\\\\' ) )
      alt_6 = 2
      look_6_0 = @input.peek( 1 )

      if ( look_6_0 == 0x5c )
        alt_6 = 1
      elsif ( look_6_0.between?( 0x0, 0x26 ) || look_6_0.between?( 0x28, 0x5b ) || look_6_0.between?( 0x5d, 0xffff ) )
        alt_6 = 2
      else
        raise NoViableAlternative( "", 6, 0 )
      end
      case alt_6
      when 1
        # at line 494:4: ESC
        esc!

      when 2
        # at line 495:4: ~ ( '\\'' | '\\\\' )
        if @input.peek( 1 ).between?( 0x0, 0x26 ) || @input.peek( 1 ).between?( 0x28, 0x5b ) || @input.peek( 1 ).between?( 0x5d, 0xff )
          @input.consume
        else
          mse = MismatchedSet( nil )
          recover mse
          raise mse
        end



      end
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 43 )

    end

    # lexer rule double_quote_string_literal! (DOUBLE_QUOTE_STRING_LITERAL)
    # (in ANTLRv3Grammar.g)
    def double_quote_string_literal!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 44 )

      type = DOUBLE_QUOTE_STRING_LITERAL
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 499:4: '\"' ( ESC | ~ ( '\\\\' | '\"' ) )* '\"'
      match( 0x22 )
      # at line 499:8: ( ESC | ~ ( '\\\\' | '\"' ) )*
      while true # decision 7
        alt_7 = 3
        look_7_0 = @input.peek( 1 )

        if ( look_7_0 == 0x5c )
          alt_7 = 1
        elsif ( look_7_0.between?( 0x0, 0x21 ) || look_7_0.between?( 0x23, 0x5b ) || look_7_0.between?( 0x5d, 0xffff ) )
          alt_7 = 2

        end
        case alt_7
        when 1
          # at line 499:9: ESC
          esc!

        when 2
          # at line 499:15: ~ ( '\\\\' | '\"' )
          if @input.peek( 1 ).between?( 0x0, 0x21 ) || @input.peek( 1 ).between?( 0x23, 0x5b ) || @input.peek( 1 ).between?( 0x5d, 0xff )
            @input.consume
          else
            mse = MismatchedSet( nil )
            recover mse
            raise mse
          end



        else
          break # out of loop for decision 7
        end
      end # loop for decision 7
      match( 0x22 )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 44 )

    end

    # lexer rule double_angle_string_literal! (DOUBLE_ANGLE_STRING_LITERAL)
    # (in ANTLRv3Grammar.g)
    def double_angle_string_literal!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 45 )

      type = DOUBLE_ANGLE_STRING_LITERAL
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 503:4: '<<' ( . )* '>>'
      match( "<<" )
      # at line 503:9: ( . )*
      while true # decision 8
        alt_8 = 2
        look_8_0 = @input.peek( 1 )

        if ( look_8_0 == 0x3e )
          look_8_1 = @input.peek( 2 )

          if ( look_8_1 == 0x3e )
            alt_8 = 2
          elsif ( look_8_1.between?( 0x0, 0x3d ) || look_8_1.between?( 0x3f, 0xffff ) )
            alt_8 = 1

          end
        elsif ( look_8_0.between?( 0x0, 0x3d ) || look_8_0.between?( 0x3f, 0xffff ) )
          alt_8 = 1

        end
        case alt_8
        when 1
          # at line 503:9: .
          match_any

        else
          break # out of loop for decision 8
        end
      end # loop for decision 8
      match( ">>" )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 45 )

    end

    # lexer rule esc! (ESC)
    # (in ANTLRv3Grammar.g)
    def esc!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 46 )

      
      # - - - - main rule block - - - -
      # at line 507:7: '\\\\' ( 'n' | 'r' | 't' | 'b' | 'f' | '\"' | '\\'' | '\\\\' | '>' | 'u' XDIGIT XDIGIT XDIGIT XDIGIT | . )
      match( 0x5c )
      # at line 508:3: ( 'n' | 'r' | 't' | 'b' | 'f' | '\"' | '\\'' | '\\\\' | '>' | 'u' XDIGIT XDIGIT XDIGIT XDIGIT | . )
      alt_9 = 11
      alt_9 = @dfa9.predict( @input )
      case alt_9
      when 1
        # at line 508:5: 'n'
        match( 0x6e )

      when 2
        # at line 509:5: 'r'
        match( 0x72 )

      when 3
        # at line 510:5: 't'
        match( 0x74 )

      when 4
        # at line 511:5: 'b'
        match( 0x62 )

      when 5
        # at line 512:5: 'f'
        match( 0x66 )

      when 6
        # at line 513:5: '\"'
        match( 0x22 )

      when 7
        # at line 514:5: '\\''
        match( 0x27 )

      when 8
        # at line 515:5: '\\\\'
        match( 0x5c )

      when 9
        # at line 516:5: '>'
        match( 0x3e )

      when 10
        # at line 517:5: 'u' XDIGIT XDIGIT XDIGIT XDIGIT
        match( 0x75 )
        xdigit!
        xdigit!
        xdigit!
        xdigit!

      when 11
        # at line 518:5: .
        match_any

      end

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 46 )

    end

    # lexer rule xdigit! (XDIGIT)
    # (in ANTLRv3Grammar.g)
    def xdigit!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 47 )

      
      # - - - - main rule block - - - -
      # at line 
      if @input.peek( 1 ).between?( 0x30, 0x39 ) || @input.peek( 1 ).between?( 0x41, 0x46 ) || @input.peek( 1 ).between?( 0x61, 0x66 )
        @input.consume
      else
        mse = MismatchedSet( nil )
        recover mse
        raise mse
      end



    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 47 )

    end

    # lexer rule int! (INT)
    # (in ANTLRv3Grammar.g)
    def int!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 48 )

      type = INT
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 529:7: ( '0' .. '9' )+
      # at file 529:7: ( '0' .. '9' )+
      match_count_10 = 0
      while true
        alt_10 = 2
        look_10_0 = @input.peek( 1 )

        if ( look_10_0.between?( 0x30, 0x39 ) )
          alt_10 = 1

        end
        case alt_10
        when 1
          # at line 529:7: '0' .. '9'
          match_range( 0x30, 0x39 )

        else
          match_count_10 > 0 and break
          eee = EarlyExit(10)


          raise eee
        end
        match_count_10 += 1
      end


      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 48 )

    end

    # lexer rule arg_action! (ARG_ACTION)
    # (in ANTLRv3Grammar.g)
    def arg_action!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 49 )

      type = ARG_ACTION
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 533:4: NESTED_ARG_ACTION
      nested_arg_action!

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 49 )

    end

    # lexer rule nested_arg_action! (NESTED_ARG_ACTION)
    # (in ANTLRv3Grammar.g)
    def nested_arg_action!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 50 )

      
      # - - - - main rule block - - - -
      # at line 538:2: '[' ( options {greedy=false; k=1; } : NESTED_ARG_ACTION | ACTION_STRING_LITERAL | ACTION_CHAR_LITERAL | . )* ']'
      match( 0x5b )
      # at line 539:2: ( options {greedy=false; k=1; } : NESTED_ARG_ACTION | ACTION_STRING_LITERAL | ACTION_CHAR_LITERAL | . )*
      while true # decision 11
        alt_11 = 5
        look_11_0 = @input.peek( 1 )

        if ( look_11_0 == 0x5d )
          alt_11 = 5
        elsif ( look_11_0 == 0x5b )
          alt_11 = 1
        elsif ( look_11_0 == 0x22 )
          alt_11 = 2
        elsif ( look_11_0 == 0x27 )
          alt_11 = 3
        elsif ( look_11_0.between?( 0x0, 0x21 ) || look_11_0.between?( 0x23, 0x26 ) || look_11_0.between?( 0x28, 0x5a ) || look_11_0 == 0x5c || look_11_0.between?( 0x5e, 0xffff ) )
          alt_11 = 4

        end
        case alt_11
        when 1
          # at line 540:4: NESTED_ARG_ACTION
          nested_arg_action!

        when 2
          # at line 541:4: ACTION_STRING_LITERAL
          action_string_literal!

        when 3
          # at line 542:4: ACTION_CHAR_LITERAL
          action_char_literal!

        when 4
          # at line 543:4: .
          match_any

        else
          break # out of loop for decision 11
        end
      end # loop for decision 11
      match( 0x5d )

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 50 )

    end

    # lexer rule action! (ACTION)
    # (in ANTLRv3Grammar.g)
    def action!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 51 )

      type = ACTION
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 550:4: NESTED_ACTION ( '?' )?
      nested_action!
      # at line 550:18: ( '?' )?
      alt_12 = 2
      look_12_0 = @input.peek( 1 )

      if ( look_12_0 == 0x3f )
        alt_12 = 1
      end
      case alt_12
      when 1
        # at line 550:20: '?'
        match( 0x3f )
        # --> action
         type = SEMPRED 
        # <-- action

      end

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 51 )

    end

    # lexer rule nested_action! (NESTED_ACTION)
    # (in ANTLRv3Grammar.g)
    def nested_action!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 52 )

      
      # - - - - main rule block - - - -
      # at line 555:2: '{' ( options {greedy=false; k=2; } : NESTED_ACTION | SL_COMMENT | ML_COMMENT | ACTION_STRING_LITERAL | ACTION_CHAR_LITERAL | ~ '\\\\' | '\\\\' . )* '}'
      match( 0x7b )
      # at line 556:2: ( options {greedy=false; k=2; } : NESTED_ACTION | SL_COMMENT | ML_COMMENT | ACTION_STRING_LITERAL | ACTION_CHAR_LITERAL | ~ '\\\\' | '\\\\' . )*
      while true # decision 13
        alt_13 = 8
        alt_13 = @dfa13.predict( @input )
        case alt_13
        when 1
          # at line 557:4: NESTED_ACTION
          nested_action!

        when 2
          # at line 558:4: SL_COMMENT
          sl_comment!

        when 3
          # at line 559:4: ML_COMMENT
          ml_comment!

        when 4
          # at line 560:4: ACTION_STRING_LITERAL
          action_string_literal!

        when 5
          # at line 561:4: ACTION_CHAR_LITERAL
          action_char_literal!

        when 6
          # at line 562:4: ~ '\\\\'
          if @input.peek( 1 ).between?( 0x0, 0x5b ) || @input.peek( 1 ).between?( 0x5d, 0xff )
            @input.consume
          else
            mse = MismatchedSet( nil )
            recover mse
            raise mse
          end



        when 7
          # at line 563:5: '\\\\' .
          match( 0x5c )
          match_any

        else
          break # out of loop for decision 13
        end
      end # loop for decision 13
      match( 0x7d )

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 52 )

    end

    # lexer rule action_char_literal! (ACTION_CHAR_LITERAL)
    # (in ANTLRv3Grammar.g)
    def action_char_literal!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 53 )

      
      # - - - - main rule block - - - -
      # at line 570:4: '\\'' (~ ( '\\\\' | '\\'' ) | '\\\\' . )* '\\''
      match( 0x27 )
      # at line 570:9: (~ ( '\\\\' | '\\'' ) | '\\\\' . )*
      while true # decision 14
        alt_14 = 3
        look_14_0 = @input.peek( 1 )

        if ( look_14_0.between?( 0x0, 0x26 ) || look_14_0.between?( 0x28, 0x5b ) || look_14_0.between?( 0x5d, 0xffff ) )
          alt_14 = 1
        elsif ( look_14_0 == 0x5c )
          alt_14 = 2

        end
        case alt_14
        when 1
          # at line 570:11: ~ ( '\\\\' | '\\'' )
          if @input.peek( 1 ).between?( 0x0, 0x26 ) || @input.peek( 1 ).between?( 0x28, 0x5b ) || @input.peek( 1 ).between?( 0x5d, 0xff )
            @input.consume
          else
            mse = MismatchedSet( nil )
            recover mse
            raise mse
          end



        when 2
          # at line 570:26: '\\\\' .
          match( 0x5c )
          match_any

        else
          break # out of loop for decision 14
        end
      end # loop for decision 14
      match( 0x27 )

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 53 )

    end

    # lexer rule action_string_literal! (ACTION_STRING_LITERAL)
    # (in ANTLRv3Grammar.g)
    def action_string_literal!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 54 )

      
      # - - - - main rule block - - - -
      # at line 575:4: '\"' (~ ( '\\\\' | '\"' ) | '\\\\' . )* '\"'
      match( 0x22 )
      # at line 575:8: (~ ( '\\\\' | '\"' ) | '\\\\' . )*
      while true # decision 15
        alt_15 = 3
        look_15_0 = @input.peek( 1 )

        if ( look_15_0.between?( 0x0, 0x21 ) || look_15_0.between?( 0x23, 0x5b ) || look_15_0.between?( 0x5d, 0xffff ) )
          alt_15 = 1
        elsif ( look_15_0 == 0x5c )
          alt_15 = 2

        end
        case alt_15
        when 1
          # at line 575:10: ~ ( '\\\\' | '\"' )
          if @input.peek( 1 ).between?( 0x0, 0x21 ) || @input.peek( 1 ).between?( 0x23, 0x5b ) || @input.peek( 1 ).between?( 0x5d, 0xff )
            @input.consume
          else
            mse = MismatchedSet( nil )
            recover mse
            raise mse
          end



        when 2
          # at line 575:24: '\\\\' .
          match( 0x5c )
          match_any

        else
          break # out of loop for decision 15
        end
      end # loop for decision 15
      match( 0x22 )

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 54 )

    end

    # lexer rule action_esc! (ACTION_ESC)
    # (in ANTLRv3Grammar.g)
    def action_esc!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 55 )

      
      # - - - - main rule block - - - -
      # at line 580:4: '\\\\' .
      match( 0x5c )
      match_any

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 55 )

    end

    # lexer rule token_ref! (TOKEN_REF)
    # (in ANTLRv3Grammar.g)
    def token_ref!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 56 )

      type = TOKEN_REF
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 584:4: 'A' .. 'Z' ( 'a' .. 'z' | 'A' .. 'Z' | '_' | '0' .. '9' )*
      match_range( 0x41, 0x5a )
      # at line 584:13: ( 'a' .. 'z' | 'A' .. 'Z' | '_' | '0' .. '9' )*
      while true # decision 16
        alt_16 = 2
        look_16_0 = @input.peek( 1 )

        if ( look_16_0.between?( 0x30, 0x39 ) || look_16_0.between?( 0x41, 0x5a ) || look_16_0 == 0x5f || look_16_0.between?( 0x61, 0x7a ) )
          alt_16 = 1

        end
        case alt_16
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
          break # out of loop for decision 16
        end
      end # loop for decision 16

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 56 )

    end

    # lexer rule rule_ref! (RULE_REF)
    # (in ANTLRv3Grammar.g)
    def rule_ref!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 57 )

      type = RULE_REF
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 588:4: 'a' .. 'z' ( 'a' .. 'z' | 'A' .. 'Z' | '_' | '0' .. '9' )*
      match_range( 0x61, 0x7a )
      # at line 588:13: ( 'a' .. 'z' | 'A' .. 'Z' | '_' | '0' .. '9' )*
      while true # decision 17
        alt_17 = 2
        look_17_0 = @input.peek( 1 )

        if ( look_17_0.between?( 0x30, 0x39 ) || look_17_0.between?( 0x41, 0x5a ) || look_17_0 == 0x5f || look_17_0.between?( 0x61, 0x7a ) )
          alt_17 = 1

        end
        case alt_17
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
          break # out of loop for decision 17
        end
      end # loop for decision 17

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 57 )

    end

    # lexer rule options! (OPTIONS)
    # (in ANTLRv3Grammar.g)
    def options!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 58 )

      type = OPTIONS
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 595:4: 'options' WS_LOOP '{'
      match( "options" )
      ws_loop!
      match( 0x7b )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 58 )

    end

    # lexer rule tokens! (TOKENS)
    # (in ANTLRv3Grammar.g)
    def tokens!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 59 )

      type = TOKENS
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 599:4: 'tokens' WS_LOOP '{'
      match( "tokens" )
      ws_loop!
      match( 0x7b )

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 59 )

    end

    # lexer rule src! (SRC)
    # (in ANTLRv3Grammar.g)
    def src!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 60 )
      # - - - - label initialization - - - -
      file = nil
      line = nil


      
      # - - - - main rule block - - - -
      # at line 607:7: 'src' ' ' file= ACTION_STRING_LITERAL ' ' line= INT
      match( "src" )
      match( 0x20 )
      file_start_1006 = self.character_index
      action_string_literal!
      file = create_token do |t|
        t.input   = @input
        t.type    = ANTLR3::INVALID_TOKEN_TYPE
        t.channel = ANTLR3::DEFAULT_CHANNEL
        t.start   = file_start_1006
        t.stop    = self.character_index - 1
      end
      match( 0x20 )
      line_start_1012 = self.character_index
      int!
      line = create_token do |t|
        t.input   = @input
        t.type    = ANTLR3::INVALID_TOKEN_TYPE
        t.channel = ANTLR3::DEFAULT_CHANNEL
        t.start   = line_start_1012
        t.stop    = self.character_index - 1
      end

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 60 )

    end

    # lexer rule ws! (WS)
    # (in ANTLRv3Grammar.g)
    def ws!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 61 )

      type = WS
      channel = ANTLR3::DEFAULT_CHANNEL

      
      # - - - - main rule block - - - -
      # at line 610:6: ( ' ' | '\\t' | ( '\\r' )? '\\n' )+
      # at file 610:6: ( ' ' | '\\t' | ( '\\r' )? '\\n' )+
      match_count_19 = 0
      while true
        alt_19 = 4
        case look_19 = @input.peek( 1 )
        when 0x20 then alt_19 = 1
        when 0x9 then alt_19 = 2
        when 0xa, 0xd then alt_19 = 3
        end
        case alt_19
        when 1
          # at line 610:8: ' '
          match( 0x20 )

        when 2
          # at line 611:5: '\\t'
          match( 0x9 )

        when 3
          # at line 612:5: ( '\\r' )? '\\n'
          # at line 612:5: ( '\\r' )?
          alt_18 = 2
          look_18_0 = @input.peek( 1 )

          if ( look_18_0 == 0xd )
            alt_18 = 1
          end
          case alt_18
          when 1
            # at line 612:5: '\\r'
            match( 0xd )

          end
          match( 0xa )

        else
          match_count_19 > 0 and break
          eee = EarlyExit(19)


          raise eee
        end
        match_count_19 += 1
      end

      # --> action
      channel=HIDDEN
      # <-- action

      
      @state.type = type
      @state.channel = channel

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 61 )

    end

    # lexer rule ws_loop! (WS_LOOP)
    # (in ANTLRv3Grammar.g)
    def ws_loop!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 62 )

      
      # - - - - main rule block - - - -
      # at line 619:4: ( WS | SL_COMMENT | ML_COMMENT )*
      # at line 619:4: ( WS | SL_COMMENT | ML_COMMENT )*
      while true # decision 20
        alt_20 = 4
        look_20_0 = @input.peek( 1 )

        if ( look_20_0.between?( 0x9, 0xa ) || look_20_0 == 0xd || look_20_0 == 0x20 )
          alt_20 = 1
        elsif ( look_20_0 == 0x2f )
          look_20_3 = @input.peek( 2 )

          if ( look_20_3 == 0x2f )
            alt_20 = 2
          elsif ( look_20_3 == 0x2a )
            alt_20 = 3

          end

        end
        case alt_20
        when 1
          # at line 619:6: WS
          ws!

        when 2
          # at line 620:5: SL_COMMENT
          sl_comment!

        when 3
          # at line 621:5: ML_COMMENT
          ml_comment!

        else
          break # out of loop for decision 20
        end
      end # loop for decision 20

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 62 )

    end

    # main rule used to study the input at the current position,
    # and choose the proper lexer rule to call in order to
    # fetch the next token
    # 
    # usually, you don't make direct calls to this method,
    # but instead use the next_token method, which will
    # build and emit the actual next token
    def token!
      # at line 1:8: ( RET | SCOPE | FRAGMENT | TREE_BEGIN | ROOT | BANG | RANGE | REWRITE | AT | LABEL_ASSIGN | LIST_LABEL_ASSIGN | T__67 | T__68 | T__69 | T__70 | T__71 | T__72 | T__73 | T__74 | T__75 | T__76 | T__77 | T__78 | T__79 | T__80 | T__81 | T__82 | T__83 | T__84 | T__85 | T__86 | T__87 | T__88 | T__89 | T__90 | T__91 | T__92 | T__93 | SL_COMMENT | ML_COMMENT | CHAR_LITERAL | STRING_LITERAL | DOUBLE_QUOTE_STRING_LITERAL | DOUBLE_ANGLE_STRING_LITERAL | INT | ARG_ACTION | ACTION | TOKEN_REF | RULE_REF | OPTIONS | TOKENS | WS )
      alt_21 = 52
      alt_21 = @dfa21.predict( @input )
      case alt_21
      when 1
        # at line 1:10: RET
        ret!

      when 2
        # at line 1:14: SCOPE
        scope!

      when 3
        # at line 1:20: FRAGMENT
        fragment!

      when 4
        # at line 1:29: TREE_BEGIN
        tree_begin!

      when 5
        # at line 1:40: ROOT
        root!

      when 6
        # at line 1:45: BANG
        bang!

      when 7
        # at line 1:50: RANGE
        range!

      when 8
        # at line 1:56: REWRITE
        rewrite!

      when 9
        # at line 1:64: AT
        at!

      when 10
        # at line 1:67: LABEL_ASSIGN
        label_assign!

      when 11
        # at line 1:80: LIST_LABEL_ASSIGN
        list_label_assign!

      when 12
        # at line 1:98: T__67
        t__67!

      when 13
        # at line 1:104: T__68
        t__68!

      when 14
        # at line 1:110: T__69
        t__69!

      when 15
        # at line 1:116: T__70
        t__70!

      when 16
        # at line 1:122: T__71
        t__71!

      when 17
        # at line 1:128: T__72
        t__72!

      when 18
        # at line 1:134: T__73
        t__73!

      when 19
        # at line 1:140: T__74
        t__74!

      when 20
        # at line 1:146: T__75
        t__75!

      when 21
        # at line 1:152: T__76
        t__76!

      when 22
        # at line 1:158: T__77
        t__77!

      when 23
        # at line 1:164: T__78
        t__78!

      when 24
        # at line 1:170: T__79
        t__79!

      when 25
        # at line 1:176: T__80
        t__80!

      when 26
        # at line 1:182: T__81
        t__81!

      when 27
        # at line 1:188: T__82
        t__82!

      when 28
        # at line 1:194: T__83
        t__83!

      when 29
        # at line 1:200: T__84
        t__84!

      when 30
        # at line 1:206: T__85
        t__85!

      when 31
        # at line 1:212: T__86
        t__86!

      when 32
        # at line 1:218: T__87
        t__87!

      when 33
        # at line 1:224: T__88
        t__88!

      when 34
        # at line 1:230: T__89
        t__89!

      when 35
        # at line 1:236: T__90
        t__90!

      when 36
        # at line 1:242: T__91
        t__91!

      when 37
        # at line 1:248: T__92
        t__92!

      when 38
        # at line 1:254: T__93
        t__93!

      when 39
        # at line 1:260: SL_COMMENT
        sl_comment!

      when 40
        # at line 1:271: ML_COMMENT
        ml_comment!

      when 41
        # at line 1:282: CHAR_LITERAL
        char_literal!

      when 42
        # at line 1:295: STRING_LITERAL
        string_literal!

      when 43
        # at line 1:310: DOUBLE_QUOTE_STRING_LITERAL
        double_quote_string_literal!

      when 44
        # at line 1:338: DOUBLE_ANGLE_STRING_LITERAL
        double_angle_string_literal!

      when 45
        # at line 1:366: INT
        int!

      when 46
        # at line 1:370: ARG_ACTION
        arg_action!

      when 47
        # at line 1:381: ACTION
        action!

      when 48
        # at line 1:388: TOKEN_REF
        token_ref!

      when 49
        # at line 1:398: RULE_REF
        rule_ref!

      when 50
        # at line 1:407: OPTIONS
        options!

      when 51
        # at line 1:415: TOKENS
        tokens!

      when 52
        # at line 1:422: WS
        ws!

      end
    end

    
    # - - - - - - - - - - DFA definitions - - - - - - - - - - -
    class DFA2 < ANTLR3::DFA
      EOT = unpack( 18, -1, 1, 2, 3, -1, 1, 2, 3, -1 )
      EOF = unpack( 26, -1 )
      MIN = unpack( 2, 0, 1, -1, 17, 0, 1, -1, 4, 0, 1, -1 )
      MAX = unpack( 2, -1, 1, -1, 17, -1, 1, -1, 4, -1, 1, -1 )
      ACCEPT = unpack( 2, -1, 1, 2, 17, -1, 1, 1, 4, -1, 1, 1 )
      SPECIAL = unpack( 1, 12, 1, 15, 1, -1, 1, 14, 1, 17, 1, 16, 1, 21, 
                        1, 20, 1, 22, 1, 9, 1, 3, 1, 4, 1, 1, 1, 0, 1, 18, 
                        1, 7, 1, 6, 1, 10, 1, 19, 1, 5, 1, -1, 1, 8, 1, 
                        13, 1, 2, 1, 11, 1, -1 )
      TRANSITION = [
        unpack( 32, 2, 1, 1, 65503, 2 ),
        unpack( 36, 2, 1, 3, 65499, 2 ),
        unpack(  ),
        unpack( 65, 2, 1, 4, 65470, 2 ),
        unpack( 78, 2, 1, 5, 65457, 2 ),
        unpack( 84, 2, 1, 6, 65451, 2 ),
        unpack( 76, 2, 1, 7, 65459, 2 ),
        unpack( 82, 2, 1, 8, 65453, 2 ),
        unpack( 32, 2, 1, 9, 65503, 2 ),
        unpack( 115, 2, 1, 10, 65420, 2 ),
        unpack( 114, 2, 1, 11, 65421, 2 ),
        unpack( 99, 2, 1, 12, 65436, 2 ),
        unpack( 32, 2, 1, 13, 65503, 2 ),
        unpack( 34, 2, 1, 14, 65501, 2 ),
        unpack( 10, 19, 1, 18, 2, 19, 1, 15, 20, 19, 1, 17, 57, 19, 1, 
                 16, 65443, 19 ),
        unpack( 10, 20, 1, 18, 65525, 20 ),
        unpack( 10, 23, 1, 22, 2, 23, 1, 21, 65522, 23 ),
        unpack( 32, 2, 1, 24, 65503, 2 ),
        unpack( 0, 20 ),
        unpack( 10, 19, 1, 18, 2, 19, 1, 15, 20, 19, 1, 17, 57, 19, 1, 
                 16, 65443, 19 ),
        unpack(  ),
        unpack( 10, 20, 1, 18, 65525, 20 ),
        unpack( 0, 20 ),
        unpack( 10, 19, 1, 18, 2, 19, 1, 15, 20, 19, 1, 17, 57, 19, 1, 
                 16, 65443, 19 ),
        unpack( 48, 2, 10, 25, 65478, 2 ),
        unpack(  )
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 2
      

      def description
        <<-'__dfa_description__'.strip!
          474:5: ( ' $ANTLR ' SRC | (~ ( '\\r' | '\\n' ) )* )
        __dfa_description__
      end
    end
    class DFA9 < ANTLR3::DFA
      EOT = unpack( 10, -1, 1, 11, 2, -1 )
      EOF = unpack( 13, -1 )
      MIN = unpack( 1, 0, 9, -1, 1, 48, 2, -1 )
      MAX = unpack( 1, -1, 9, -1, 1, 102, 2, -1 )
      ACCEPT = unpack( 1, -1, 1, 1, 1, 2, 1, 3, 1, 4, 1, 5, 1, 6, 1, 7, 
                       1, 8, 1, 9, 1, -1, 1, 11, 1, 10 )
      SPECIAL = unpack( 1, 0, 12, -1 )
      TRANSITION = [
        unpack( 34, 11, 1, 6, 4, 11, 1, 7, 22, 11, 1, 9, 29, 11, 1, 8, 5, 
                11, 1, 4, 3, 11, 1, 5, 7, 11, 1, 1, 3, 11, 1, 2, 1, 11, 
                1, 3, 1, 10, 65418, 11 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 10, 12, 7, -1, 6, 12, 26, -1, 6, 12 ),
        unpack(  ),
        unpack(  )
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 9
      

      def description
        <<-'__dfa_description__'.strip!
          508:3: ( 'n' | 'r' | 't' | 'b' | 'f' | '\"' | '\\'' | '\\\\' | '>' | 'u' XDIGIT XDIGIT XDIGIT XDIGIT | . )
        __dfa_description__
      end
    end
    class DFA13 < ANTLR3::DFA
      EOT = unpack( 30, -1 )
      EOF = unpack( 30, -1 )
      MIN = unpack( 1, 0, 2, -1, 3, 0, 24, -1 )
      MAX = unpack( 1, -1, 2, -1, 3, -1, 24, -1 )
      ACCEPT = unpack( 1, -1, 1, 8, 1, 1, 3, -1, 1, 6, 1, 7, 1, 2, 1, 3, 
                       6, -1, 7, 4, 7, 5 )
      SPECIAL = unpack( 1, 0, 2, -1, 1, 1, 1, 2, 1, 3, 24, -1 )
      TRANSITION = [
        unpack( 34, 6, 1, 4, 4, 6, 1, 5, 7, 6, 1, 3, 44, 6, 1, 7, 30, 6, 
                1, 2, 1, 6, 1, 1, 65410, 6 ),
        unpack(  ),
        unpack(  ),
        unpack( 42, 6, 1, 9, 4, 6, 1, 8, 65488, 6 ),
        unpack( 34, 21, 1, 19, 4, 21, 1, 20, 7, 21, 1, 18, 44, 21, 1, 22, 
                 30, 21, 1, 17, 1, 21, 1, 16, 65410, 21 ),
        unpack( 34, 28, 1, 26, 4, 28, 1, 27, 7, 28, 1, 25, 44, 28, 1, 29, 
                 30, 28, 1, 24, 1, 28, 1, 23, 65410, 28 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
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
      
      @decision = 13
      

      def description
        <<-'__dfa_description__'.strip!
          ()* loopback of 556:2: ( options {greedy=false; k=2; } : NESTED_ACTION | SL_COMMENT | ML_COMMENT | ACTION_STRING_LITERAL | ACTION_CHAR_LITERAL | ~ '\\\\' | '\\\\' . )*
        __dfa_description__
      end
    end
    class DFA21 < ANTLR3::DFA
      EOT = unpack( 1, -1, 3, 37, 1, 44, 1, -1, 1, 46, 2, -1, 1, 48, 1, 
                    50, 4, 37, 2, -1, 1, 60, 5, -1, 1, 37, 1, -1, 1, 63, 
                    10, -1, 1, 37, 2, -1, 4, 37, 8, -1, 8, 37, 2, -1, 1, 
                    37, 6, -1, 15, 37, 13, -1, 10, 37, 1, 123, 4, 37, 2, 
                    -1, 2, 37, 1, 131, 2, 37, 1, 134, 4, 37, 1, -1, 3, 37, 
                    1, 142, 1, -1, 2, 37, 1, -1, 2, 37, 1, -1, 1, 148, 2, 
                    37, 1, 151, 1, 152, 2, 37, 2, -1, 1, 37, 1, 157, 1, 
                    37, 1, 159, 1, -1, 1, 37, 1, 161, 3, -1, 1, 162, 1, 
                    -1, 1, 37, 1, -1, 1, 164, 1, -1, 1, 37, 4, -1, 1, 166, 
                    1, -1 )
      EOF = unpack( 167, -1 )
      MIN = unpack( 1, 9, 1, 101, 1, 99, 1, 105, 1, 40, 1, -1, 1, 46, 2, 
                    -1, 1, 62, 1, 61, 1, 101, 1, 97, 1, 104, 1, 114, 2, 
                    -1, 1, 58, 5, -1, 1, 97, 1, -1, 1, 60, 3, -1, 1, 42, 
                    1, 0, 5, -1, 1, 112, 2, -1, 1, 116, 1, 111, 1, 97, 1, 
                    110, 8, -1, 1, 120, 1, 114, 1, 105, 1, 98, 1, 101, 1, 
                    114, 1, 107, 1, 97, 2, -1, 1, 116, 4, -1, 2, 0, 1, 116, 
                    1, 117, 1, 112, 1, 103, 1, 97, 1, 101, 1, 115, 1, 116, 
                    1, 118, 1, 108, 1, 101, 1, 111, 1, 101, 1, 109, 1, 99, 
                    11, 0, 2, -1, 1, 105, 1, 114, 1, 101, 1, 109, 1, 108, 
                    1, 114, 2, 101, 1, 97, 1, 105, 1, 48, 1, 119, 1, 110, 
                    1, 109, 1, 104, 1, 0, 1, -1, 1, 111, 1, 110, 1, 48, 
                    1, 101, 1, 108, 1, 48, 1, 114, 1, 99, 1, 116, 1, 99, 
                    1, -1, 2, 115, 1, 97, 1, 48, 1, 0, 1, 110, 1, 115, 1, 
                    -1, 1, 110, 1, 121, 1, -1, 1, 48, 1, 116, 1, 101, 2, 
                    48, 1, 9, 1, 114, 1, -1, 1, 0, 1, 115, 1, 48, 1, 116, 
                    1, 48, 1, -1, 1, 101, 1, 48, 3, -1, 1, 48, 1, 0, 1, 
                    9, 1, -1, 1, 48, 1, -1, 1, 100, 4, -1, 1, 48, 1, -1 )
      MAX = unpack( 1, 126, 1, 101, 1, 99, 1, 114, 1, 40, 1, -1, 1, 46, 
                    2, -1, 1, 62, 1, 61, 1, 101, 1, 117, 2, 114, 2, -1, 
                    1, 58, 5, -1, 1, 97, 1, -1, 1, 60, 3, -1, 1, 47, 1, 
                    -1, 5, -1, 1, 112, 2, -1, 1, 116, 1, 111, 1, 97, 1, 
                    110, 8, -1, 1, 120, 1, 114, 1, 111, 1, 98, 1, 101, 1, 
                    114, 1, 107, 1, 97, 2, -1, 1, 116, 4, -1, 2, -1, 1, 
                    116, 1, 117, 1, 112, 1, 103, 1, 97, 1, 101, 1, 115, 
                    1, 116, 1, 118, 1, 108, 1, 101, 1, 111, 1, 101, 1, 109, 
                    1, 99, 11, -1, 2, -1, 1, 105, 1, 114, 1, 101, 1, 109, 
                    1, 108, 1, 114, 2, 101, 1, 97, 1, 105, 1, 122, 1, 119, 
                    1, 110, 1, 109, 1, 104, 1, -1, 1, -1, 1, 111, 1, 110, 
                    1, 122, 1, 101, 1, 108, 1, 122, 1, 114, 1, 99, 1, 116, 
                    1, 99, 1, -1, 2, 115, 1, 97, 1, 122, 1, -1, 1, 110, 
                    1, 115, 1, -1, 1, 110, 1, 121, 1, -1, 1, 122, 1, 116, 
                    1, 101, 2, 122, 1, 123, 1, 114, 1, -1, 1, -1, 1, 115, 
                    1, 122, 1, 116, 1, 122, 1, -1, 1, 101, 1, 122, 3, -1, 
                    1, 122, 1, -1, 1, 123, 1, -1, 1, 122, 1, -1, 1, 100, 
                    4, -1, 1, 122, 1, -1 )
      ACCEPT = unpack( 5, -1, 1, 6, 1, -1, 1, 8, 1, 9, 6, -1, 1, 16, 1, 
                       17, 1, -1, 1, 19, 1, 25, 1, 26, 1, 27, 1, 28, 1, 
                       -1, 1, 32, 1, -1, 1, 34, 1, 36, 1, 38, 2, -1, 1, 
                       43, 1, 45, 1, 46, 1, 47, 1, 48, 1, -1, 1, 49, 1, 
                       52, 4, -1, 1, 4, 1, 5, 1, 7, 1, 35, 1, 31, 1, 10, 
                       1, 11, 1, 37, 8, -1, 1, 18, 1, 23, 1, -1, 1, 44, 
                       1, 33, 1, 39, 1, 40, 28, -1, 1, 42, 1, 41, 16, -1, 
                       1, 41, 10, -1, 1, 14, 7, -1, 1, 2, 2, -1, 1, 12, 
                       7, -1, 1, 29, 5, -1, 1, 13, 2, -1, 1, 21, 1, 24, 
                       1, 51, 3, -1, 1, 1, 1, -1, 1, 30, 1, -1, 1, 22, 1, 
                       15, 1, 50, 1, 3, 1, -1, 1, 20 )
      SPECIAL = unpack( 30, -1, 1, 9, 35, -1, 1, 1, 1, 0, 15, -1, 1, 10, 
                        1, 13, 1, 11, 1, 17, 1, 15, 1, 4, 1, 5, 1, 6, 1, 
                        7, 1, 3, 1, 8, 17, -1, 1, 12, 16, -1, 1, 14, 14, 
                        -1, 1, 16, 11, -1, 1, 2, 11, -1 )
      TRANSITION = [
        unpack( 2, 38, 2, -1, 1, 38, 18, -1, 1, 38, 1, 5, 1, 31, 1, -1, 
                1, 28, 2, -1, 1, 30, 1, 20, 1, 22, 1, 18, 1, 10, 1, 19, 
                1, 7, 1, 6, 1, 29, 10, 32, 1, 17, 1, 15, 1, 25, 1, 9, 1, 
                26, 1, 27, 1, 8, 26, 35, 1, 33, 2, -1, 1, 4, 2, -1, 2, 37, 
                1, 23, 2, 37, 1, 3, 1, 14, 4, 37, 1, 11, 2, 37, 1, 36, 1, 
                12, 1, 37, 1, 1, 1, 2, 1, 13, 6, 37, 1, 34, 1, 21, 1, 16, 
                1, 24 ),
        unpack( 1, 39 ),
        unpack( 1, 40 ),
        unpack( 1, 42, 8, -1, 1, 41 ),
        unpack( 1, 43 ),
        unpack(  ),
        unpack( 1, 45 ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 47 ),
        unpack( 1, 49 ),
        unpack( 1, 51 ),
        unpack( 1, 52, 16, -1, 1, 53, 2, -1, 1, 54 ),
        unpack( 1, 56, 6, -1, 1, 57, 2, -1, 1, 55 ),
        unpack( 1, 58 ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 59 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 61 ),
        unpack(  ),
        unpack( 1, 62 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 65, 4, -1, 1, 64 ),
        unpack( 39, 67, 1, -1, 52, 67, 1, 66, 65443, 67 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 68 ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 69 ),
        unpack( 1, 70 ),
        unpack( 1, 71 ),
        unpack( 1, 72 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 73 ),
        unpack( 1, 74 ),
        unpack( 1, 76, 5, -1, 1, 75 ),
        unpack( 1, 77 ),
        unpack( 1, 78 ),
        unpack( 1, 79 ),
        unpack( 1, 80 ),
        unpack( 1, 81 ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 82 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 34, 93, 1, 88, 4, 93, 1, 89, 22, 93, 1, 91, 29, 93, 1, 
                 90, 5, 93, 1, 86, 3, 93, 1, 87, 7, 93, 1, 83, 3, 93, 1, 
                 84, 1, 93, 1, 85, 1, 92, 65418, 93 ),
        unpack( 39, 94, 1, 95, 65496, 94 ),
        unpack( 1, 96 ),
        unpack( 1, 97 ),
        unpack( 1, 98 ),
        unpack( 1, 99 ),
        unpack( 1, 100 ),
        unpack( 1, 101 ),
        unpack( 1, 102 ),
        unpack( 1, 103 ),
        unpack( 1, 104 ),
        unpack( 1, 105 ),
        unpack( 1, 106 ),
        unpack( 1, 107 ),
        unpack( 1, 108 ),
        unpack( 1, 109 ),
        unpack( 1, 110 ),
        unpack( 39, 94, 1, 95, 65496, 94 ),
        unpack( 39, 94, 1, 95, 65496, 94 ),
        unpack( 39, 94, 1, 95, 65496, 94 ),
        unpack( 39, 94, 1, 95, 65496, 94 ),
        unpack( 39, 94, 1, 95, 65496, 94 ),
        unpack( 39, 94, 1, 95, 65496, 94 ),
        unpack( 39, 94, 1, 95, 65496, 94 ),
        unpack( 39, 94, 1, 95, 65496, 94 ),
        unpack( 39, 94, 1, 95, 65496, 94 ),
        unpack( 39, 94, 1, 95, 8, 94, 10, 111, 7, 94, 6, 111, 26, 94, 6, 
                 111, 65433, 94 ),
        unpack( 39, 94, 1, 95, 65496, 94 ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 113 ),
        unpack( 1, 114 ),
        unpack( 1, 115 ),
        unpack( 1, 116 ),
        unpack( 1, 117 ),
        unpack( 1, 118 ),
        unpack( 1, 119 ),
        unpack( 1, 120 ),
        unpack( 1, 121 ),
        unpack( 1, 122 ),
        unpack( 10, 37, 7, -1, 26, 37, 4, -1, 1, 37, 1, -1, 26, 37 ),
        unpack( 1, 124 ),
        unpack( 1, 125 ),
        unpack( 1, 126 ),
        unpack( 1, 127 ),
        unpack( 48, 94, 10, 128, 7, 94, 6, 128, 26, 94, 6, 128, 65433, 
                 94 ),
        unpack(  ),
        unpack( 1, 129 ),
        unpack( 1, 130 ),
        unpack( 10, 37, 7, -1, 26, 37, 4, -1, 1, 37, 1, -1, 26, 37 ),
        unpack( 1, 132 ),
        unpack( 1, 133 ),
        unpack( 10, 37, 7, -1, 26, 37, 4, -1, 1, 37, 1, -1, 26, 37 ),
        unpack( 1, 135 ),
        unpack( 1, 136 ),
        unpack( 1, 137 ),
        unpack( 1, 138 ),
        unpack(  ),
        unpack( 1, 139 ),
        unpack( 1, 140 ),
        unpack( 1, 141 ),
        unpack( 10, 37, 7, -1, 26, 37, 4, -1, 1, 37, 1, -1, 26, 37 ),
        unpack( 48, 94, 10, 143, 7, 94, 6, 143, 26, 94, 6, 143, 65433, 
                 94 ),
        unpack( 1, 144 ),
        unpack( 1, 145 ),
        unpack(  ),
        unpack( 1, 146 ),
        unpack( 1, 147 ),
        unpack(  ),
        unpack( 10, 37, 7, -1, 26, 37, 4, -1, 1, 37, 1, -1, 26, 37 ),
        unpack( 1, 149 ),
        unpack( 1, 150 ),
        unpack( 10, 37, 7, -1, 26, 37, 4, -1, 1, 37, 1, -1, 26, 37 ),
        unpack( 10, 37, 7, -1, 26, 37, 4, -1, 1, 37, 1, -1, 26, 37 ),
        unpack( 2, 153, 2, -1, 1, 153, 18, -1, 1, 153, 14, -1, 1, 153, 
                 75, -1, 1, 153 ),
        unpack( 1, 154 ),
        unpack(  ),
        unpack( 48, 94, 10, 155, 7, 94, 6, 155, 26, 94, 6, 155, 65433, 
                 94 ),
        unpack( 1, 156 ),
        unpack( 10, 37, 7, -1, 26, 37, 4, -1, 1, 37, 1, -1, 26, 37 ),
        unpack( 1, 158 ),
        unpack( 10, 37, 7, -1, 26, 37, 4, -1, 1, 37, 1, -1, 26, 37 ),
        unpack(  ),
        unpack( 1, 160 ),
        unpack( 10, 37, 7, -1, 26, 37, 4, -1, 1, 37, 1, -1, 26, 37 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 10, 37, 7, -1, 26, 37, 4, -1, 1, 37, 1, -1, 26, 37 ),
        unpack( 39, 94, 1, 95, 65496, 94 ),
        unpack( 2, 163, 2, -1, 1, 163, 18, -1, 1, 163, 14, -1, 1, 163, 
                 75, -1, 1, 163 ),
        unpack(  ),
        unpack( 10, 37, 7, -1, 26, 37, 4, -1, 1, 37, 1, -1, 26, 37 ),
        unpack(  ),
        unpack( 1, 165 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 10, 37, 7, -1, 26, 37, 4, -1, 1, 37, 1, -1, 26, 37 ),
        unpack(  )
      ].freeze
      
      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end
      
      @decision = 21
      

      def description
        <<-'__dfa_description__'.strip!
          1:1: Tokens : ( RET | SCOPE | FRAGMENT | TREE_BEGIN | ROOT | BANG | RANGE | REWRITE | AT | LABEL_ASSIGN | LIST_LABEL_ASSIGN | T__67 | T__68 | T__69 | T__70 | T__71 | T__72 | T__73 | T__74 | T__75 | T__76 | T__77 | T__78 | T__79 | T__80 | T__81 | T__82 | T__83 | T__84 | T__85 | T__86 | T__87 | T__88 | T__89 | T__90 | T__91 | T__92 | T__93 | SL_COMMENT | ML_COMMENT | CHAR_LITERAL | STRING_LITERAL | DOUBLE_QUOTE_STRING_LITERAL | DOUBLE_ANGLE_STRING_LITERAL | INT | ARG_ACTION | ACTION | TOKEN_REF | RULE_REF | OPTIONS | TOKENS | WS );
        __dfa_description__
      end
    end

    
    private
    
    def initialize_dfas
      super rescue nil
      @dfa2 = DFA2.new( self, 2 ) do |s|
        case s
        when 0
          look_2_13 = @input.peek
          s = -1
          if ( look_2_13.between?( 0x0, 0x21 ) || look_2_13.between?( 0x23, 0xffff ) )
            s = 2
          elsif ( look_2_13 == 0x22 )
            s = 14
          end

        when 1
          look_2_12 = @input.peek
          s = -1
          if ( look_2_12 == 0x20 )
            s = 13
          elsif ( look_2_12.between?( 0x0, 0x1f ) || look_2_12.between?( 0x21, 0xffff ) )
            s = 2
          end

        when 2
          look_2_23 = @input.peek
          s = -1
          if ( look_2_23 == 0xd )
            s = 15
          elsif ( look_2_23 == 0xa )
            s = 18
          elsif ( look_2_23 == 0x22 )
            s = 17
          elsif ( look_2_23.between?( 0x0, 0x9 ) || look_2_23.between?( 0xb, 0xc ) || look_2_23.between?( 0xe, 0x21 ) || look_2_23.between?( 0x23, 0x5b ) || look_2_23.between?( 0x5d, 0xffff ) )
            s = 19
          elsif ( look_2_23 == 0x5c )
            s = 16
          end

        when 3
          look_2_10 = @input.peek
          s = -1
          if ( look_2_10 == 0x72 )
            s = 11
          elsif ( look_2_10.between?( 0x0, 0x71 ) || look_2_10.between?( 0x73, 0xffff ) )
            s = 2
          end

        when 4
          look_2_11 = @input.peek
          s = -1
          if ( look_2_11 == 0x63 )
            s = 12
          elsif ( look_2_11.between?( 0x0, 0x62 ) || look_2_11.between?( 0x64, 0xffff ) )
            s = 2
          end

        when 5
          look_2_19 = @input.peek
          s = -1
          if ( look_2_19 == 0xd )
            s = 15
          elsif ( look_2_19 == 0xa )
            s = 18
          elsif ( look_2_19 == 0x22 )
            s = 17
          elsif ( look_2_19.between?( 0x0, 0x9 ) || look_2_19.between?( 0xb, 0xc ) || look_2_19.between?( 0xe, 0x21 ) || look_2_19.between?( 0x23, 0x5b ) || look_2_19.between?( 0x5d, 0xffff ) )
            s = 19
          elsif ( look_2_19 == 0x5c )
            s = 16
          end

        when 6
          look_2_16 = @input.peek
          s = -1
          if ( look_2_16 == 0xd )
            s = 21
          elsif ( look_2_16 == 0xa )
            s = 22
          elsif ( look_2_16.between?( 0x0, 0x9 ) || look_2_16.between?( 0xb, 0xc ) || look_2_16.between?( 0xe, 0xffff ) )
            s = 23
          end

        when 7
          look_2_15 = @input.peek
          s = -1
          if ( look_2_15 == 0xa )
            s = 18
          elsif ( look_2_15.between?( 0x0, 0x9 ) || look_2_15.between?( 0xb, 0xffff ) )
            s = 20
          end

        when 8
          look_2_21 = @input.peek
          s = -1
          if ( look_2_21 == 0xa )
            s = 18
          elsif ( look_2_21.between?( 0x0, 0x9 ) || look_2_21.between?( 0xb, 0xffff ) )
            s = 20
          end

        when 9
          look_2_9 = @input.peek
          s = -1
          if ( look_2_9 == 0x73 )
            s = 10
          elsif ( look_2_9.between?( 0x0, 0x72 ) || look_2_9.between?( 0x74, 0xffff ) )
            s = 2
          end

        when 10
          look_2_17 = @input.peek
          s = -1
          if ( look_2_17.between?( 0x0, 0x1f ) || look_2_17.between?( 0x21, 0xffff ) )
            s = 2
          elsif ( look_2_17 == 0x20 )
            s = 24
          end

        when 11
          look_2_24 = @input.peek
          s = -1
          if ( look_2_24.between?( 0x0, 0x2f ) || look_2_24.between?( 0x3a, 0xffff ) )
            s = 2
          elsif ( look_2_24.between?( 0x30, 0x39 ) )
            s = 25
          end

        when 12
          look_2_0 = @input.peek
          s = -1
          if ( look_2_0 == 0x20 )
            s = 1
          elsif ( look_2_0.between?( 0x0, 0x1f ) || look_2_0.between?( 0x21, 0xffff ) )
            s = 2
          end

        when 13
          look_2_22 = @input.peek
          s = -1
          if ( look_2_22.between?( 0x0, 0xffff ) )
            s = 20
          else
            s = 2
          end

        when 14
          look_2_3 = @input.peek
          s = -1
          if ( look_2_3 == 0x41 )
            s = 4
          elsif ( look_2_3.between?( 0x0, 0x40 ) || look_2_3.between?( 0x42, 0xffff ) )
            s = 2
          end

        when 15
          look_2_1 = @input.peek
          s = -1
          if ( look_2_1 == 0x24 )
            s = 3
          elsif ( look_2_1.between?( 0x0, 0x23 ) || look_2_1.between?( 0x25, 0xffff ) )
            s = 2
          end

        when 16
          look_2_5 = @input.peek
          s = -1
          if ( look_2_5 == 0x54 )
            s = 6
          elsif ( look_2_5.between?( 0x0, 0x53 ) || look_2_5.between?( 0x55, 0xffff ) )
            s = 2
          end

        when 17
          look_2_4 = @input.peek
          s = -1
          if ( look_2_4 == 0x4e )
            s = 5
          elsif ( look_2_4.between?( 0x0, 0x4d ) || look_2_4.between?( 0x4f, 0xffff ) )
            s = 2
          end

        when 18
          look_2_14 = @input.peek
          s = -1
          if ( look_2_14 == 0xd )
            s = 15
          elsif ( look_2_14 == 0x5c )
            s = 16
          elsif ( look_2_14 == 0x22 )
            s = 17
          elsif ( look_2_14 == 0xa )
            s = 18
          elsif ( look_2_14.between?( 0x0, 0x9 ) || look_2_14.between?( 0xb, 0xc ) || look_2_14.between?( 0xe, 0x21 ) || look_2_14.between?( 0x23, 0x5b ) || look_2_14.between?( 0x5d, 0xffff ) )
            s = 19
          end

        when 19
          look_2_18 = @input.peek
          s = -1
          if ( look_2_18.between?( 0x0, 0xffff ) )
            s = 20
          else
            s = 2
          end

        when 20
          look_2_7 = @input.peek
          s = -1
          if ( look_2_7 == 0x52 )
            s = 8
          elsif ( look_2_7.between?( 0x0, 0x51 ) || look_2_7.between?( 0x53, 0xffff ) )
            s = 2
          end

        when 21
          look_2_6 = @input.peek
          s = -1
          if ( look_2_6 == 0x4c )
            s = 7
          elsif ( look_2_6.between?( 0x0, 0x4b ) || look_2_6.between?( 0x4d, 0xffff ) )
            s = 2
          end

        when 22
          look_2_8 = @input.peek
          s = -1
          if ( look_2_8 == 0x20 )
            s = 9
          elsif ( look_2_8.between?( 0x0, 0x1f ) || look_2_8.between?( 0x21, 0xffff ) )
            s = 2
          end

        end
        
        if s < 0
          nva = ANTLR3::Error::NoViableAlternative.new( @dfa2.description, 2, s, input )
          @dfa2.error( nva )
          raise nva
        end
        
        s
      end
      @dfa9 = DFA9.new( self, 9 ) do |s|
        case s
        when 0
          look_9_0 = @input.peek
          s = -1
          if ( look_9_0 == 0x6e )
            s = 1
          elsif ( look_9_0 == 0x72 )
            s = 2
          elsif ( look_9_0 == 0x74 )
            s = 3
          elsif ( look_9_0 == 0x62 )
            s = 4
          elsif ( look_9_0 == 0x66 )
            s = 5
          elsif ( look_9_0 == 0x22 )
            s = 6
          elsif ( look_9_0 == 0x27 )
            s = 7
          elsif ( look_9_0 == 0x5c )
            s = 8
          elsif ( look_9_0 == 0x3e )
            s = 9
          elsif ( look_9_0 == 0x75 )
            s = 10
          elsif ( look_9_0.between?( 0x0, 0x21 ) || look_9_0.between?( 0x23, 0x26 ) || look_9_0.between?( 0x28, 0x3d ) || look_9_0.between?( 0x3f, 0x5b ) || look_9_0.between?( 0x5d, 0x61 ) || look_9_0.between?( 0x63, 0x65 ) || look_9_0.between?( 0x67, 0x6d ) || look_9_0.between?( 0x6f, 0x71 ) || look_9_0 == 0x73 || look_9_0.between?( 0x76, 0xffff ) )
            s = 11
          end

        end
        
        if s < 0
          nva = ANTLR3::Error::NoViableAlternative.new( @dfa9.description, 9, s, input )
          @dfa9.error( nva )
          raise nva
        end
        
        s
      end
      @dfa13 = DFA13.new( self, 13 ) do |s|
        case s
        when 0
          look_13_0 = @input.peek
          s = -1
          if ( look_13_0 == 0x7d )
            s = 1
          elsif ( look_13_0 == 0x7b )
            s = 2
          elsif ( look_13_0 == 0x2f )
            s = 3
          elsif ( look_13_0 == 0x22 )
            s = 4
          elsif ( look_13_0 == 0x27 )
            s = 5
          elsif ( look_13_0.between?( 0x0, 0x21 ) || look_13_0.between?( 0x23, 0x26 ) || look_13_0.between?( 0x28, 0x2e ) || look_13_0.between?( 0x30, 0x5b ) || look_13_0.between?( 0x5d, 0x7a ) || look_13_0 == 0x7c || look_13_0.between?( 0x7e, 0xffff ) )
            s = 6
          elsif ( look_13_0 == 0x5c )
            s = 7
          end

        when 1
          look_13_3 = @input.peek
          s = -1
          if ( look_13_3 == 0x2f )
            s = 8
          elsif ( look_13_3 == 0x2a )
            s = 9
          elsif ( look_13_3.between?( 0x0, 0x29 ) || look_13_3.between?( 0x2b, 0x2e ) || look_13_3.between?( 0x30, 0xffff ) )
            s = 6
          end

        when 2
          look_13_4 = @input.peek
          s = -1
          if ( look_13_4 == 0x7d )
            s = 16
          elsif ( look_13_4 == 0x7b )
            s = 17
          elsif ( look_13_4 == 0x2f )
            s = 18
          elsif ( look_13_4 == 0x22 )
            s = 19
          elsif ( look_13_4 == 0x27 )
            s = 20
          elsif ( look_13_4.between?( 0x0, 0x21 ) || look_13_4.between?( 0x23, 0x26 ) || look_13_4.between?( 0x28, 0x2e ) || look_13_4.between?( 0x30, 0x5b ) || look_13_4.between?( 0x5d, 0x7a ) || look_13_4 == 0x7c || look_13_4.between?( 0x7e, 0xffff ) )
            s = 21
          elsif ( look_13_4 == 0x5c )
            s = 22
          end

        when 3
          look_13_5 = @input.peek
          s = -1
          if ( look_13_5 == 0x7d )
            s = 23
          elsif ( look_13_5 == 0x7b )
            s = 24
          elsif ( look_13_5 == 0x2f )
            s = 25
          elsif ( look_13_5 == 0x22 )
            s = 26
          elsif ( look_13_5 == 0x27 )
            s = 27
          elsif ( look_13_5.between?( 0x0, 0x21 ) || look_13_5.between?( 0x23, 0x26 ) || look_13_5.between?( 0x28, 0x2e ) || look_13_5.between?( 0x30, 0x5b ) || look_13_5.between?( 0x5d, 0x7a ) || look_13_5 == 0x7c || look_13_5.between?( 0x7e, 0xffff ) )
            s = 28
          elsif ( look_13_5 == 0x5c )
            s = 29
          end

        end
        
        if s < 0
          nva = ANTLR3::Error::NoViableAlternative.new( @dfa13.description, 13, s, input )
          @dfa13.error( nva )
          raise nva
        end
        
        s
      end
      @dfa21 = DFA21.new( self, 21 ) do |s|
        case s
        when 0
          look_21_67 = @input.peek
          s = -1
          if ( look_21_67.between?( 0x0, 0x26 ) || look_21_67.between?( 0x28, 0xffff ) )
            s = 94
          elsif ( look_21_67 == 0x27 )
            s = 95
          end

        when 1
          look_21_66 = @input.peek
          s = -1
          if ( look_21_66 == 0x6e )
            s = 83
          elsif ( look_21_66 == 0x72 )
            s = 84
          elsif ( look_21_66 == 0x74 )
            s = 85
          elsif ( look_21_66 == 0x62 )
            s = 86
          elsif ( look_21_66 == 0x66 )
            s = 87
          elsif ( look_21_66 == 0x22 )
            s = 88
          elsif ( look_21_66 == 0x27 )
            s = 89
          elsif ( look_21_66 == 0x5c )
            s = 90
          elsif ( look_21_66 == 0x3e )
            s = 91
          elsif ( look_21_66 == 0x75 )
            s = 92
          elsif ( look_21_66.between?( 0x0, 0x21 ) || look_21_66.between?( 0x23, 0x26 ) || look_21_66.between?( 0x28, 0x3d ) || look_21_66.between?( 0x3f, 0x5b ) || look_21_66.between?( 0x5d, 0x61 ) || look_21_66.between?( 0x63, 0x65 ) || look_21_66.between?( 0x67, 0x6d ) || look_21_66.between?( 0x6f, 0x71 ) || look_21_66 == 0x73 || look_21_66.between?( 0x76, 0xffff ) )
            s = 93
          end

        when 2
          look_21_155 = @input.peek
          s = -1
          if ( look_21_155 == 0x27 )
            s = 95
          elsif ( look_21_155.between?( 0x0, 0x26 ) || look_21_155.between?( 0x28, 0xffff ) )
            s = 94
          end

        when 3
          look_21_92 = @input.peek
          s = -1
          if ( look_21_92.between?( 0x30, 0x39 ) || look_21_92.between?( 0x41, 0x46 ) || look_21_92.between?( 0x61, 0x66 ) )
            s = 111
          elsif ( look_21_92 == 0x27 )
            s = 95
          elsif ( look_21_92.between?( 0x0, 0x26 ) || look_21_92.between?( 0x28, 0x2f ) || look_21_92.between?( 0x3a, 0x40 ) || look_21_92.between?( 0x47, 0x60 ) || look_21_92.between?( 0x67, 0xffff ) )
            s = 94
          end

        when 4
          look_21_88 = @input.peek
          s = -1
          if ( look_21_88 == 0x27 )
            s = 95
          elsif ( look_21_88.between?( 0x0, 0x26 ) || look_21_88.between?( 0x28, 0xffff ) )
            s = 94
          end

        when 5
          look_21_89 = @input.peek
          s = -1
          if ( look_21_89 == 0x27 )
            s = 95
          elsif ( look_21_89.between?( 0x0, 0x26 ) || look_21_89.between?( 0x28, 0xffff ) )
            s = 94
          end

        when 6
          look_21_90 = @input.peek
          s = -1
          if ( look_21_90.between?( 0x0, 0x26 ) || look_21_90.between?( 0x28, 0xffff ) )
            s = 94
          elsif ( look_21_90 == 0x27 )
            s = 95
          end

        when 7
          look_21_91 = @input.peek
          s = -1
          if ( look_21_91.between?( 0x0, 0x26 ) || look_21_91.between?( 0x28, 0xffff ) )
            s = 94
          elsif ( look_21_91 == 0x27 )
            s = 95
          end

        when 8
          look_21_93 = @input.peek
          s = -1
          if ( look_21_93 == 0x27 )
            s = 95
          elsif ( look_21_93.between?( 0x0, 0x26 ) || look_21_93.between?( 0x28, 0xffff ) )
            s = 94
          end

        when 9
          look_21_30 = @input.peek
          s = -1
          if ( look_21_30 == 0x5c )
            s = 66
          elsif ( look_21_30.between?( 0x0, 0x26 ) || look_21_30.between?( 0x28, 0x5b ) || look_21_30.between?( 0x5d, 0xffff ) )
            s = 67
          end

        when 10
          look_21_83 = @input.peek
          s = -1
          if ( look_21_83.between?( 0x0, 0x26 ) || look_21_83.between?( 0x28, 0xffff ) )
            s = 94
          elsif ( look_21_83 == 0x27 )
            s = 95
          end

        when 11
          look_21_85 = @input.peek
          s = -1
          if ( look_21_85.between?( 0x0, 0x26 ) || look_21_85.between?( 0x28, 0xffff ) )
            s = 94
          elsif ( look_21_85 == 0x27 )
            s = 95
          end

        when 12
          look_21_111 = @input.peek
          s = -1
          if ( look_21_111.between?( 0x0, 0x2f ) || look_21_111.between?( 0x3a, 0x40 ) || look_21_111.between?( 0x47, 0x60 ) || look_21_111.between?( 0x67, 0xffff ) )
            s = 94
          elsif ( look_21_111.between?( 0x30, 0x39 ) || look_21_111.between?( 0x41, 0x46 ) || look_21_111.between?( 0x61, 0x66 ) )
            s = 128
          end

        when 13
          look_21_84 = @input.peek
          s = -1
          if ( look_21_84 == 0x27 )
            s = 95
          elsif ( look_21_84.between?( 0x0, 0x26 ) || look_21_84.between?( 0x28, 0xffff ) )
            s = 94
          end

        when 14
          look_21_128 = @input.peek
          s = -1
          if ( look_21_128.between?( 0x0, 0x2f ) || look_21_128.between?( 0x3a, 0x40 ) || look_21_128.between?( 0x47, 0x60 ) || look_21_128.between?( 0x67, 0xffff ) )
            s = 94
          elsif ( look_21_128.between?( 0x30, 0x39 ) || look_21_128.between?( 0x41, 0x46 ) || look_21_128.between?( 0x61, 0x66 ) )
            s = 143
          end

        when 15
          look_21_87 = @input.peek
          s = -1
          if ( look_21_87 == 0x27 )
            s = 95
          elsif ( look_21_87.between?( 0x0, 0x26 ) || look_21_87.between?( 0x28, 0xffff ) )
            s = 94
          end

        when 16
          look_21_143 = @input.peek
          s = -1
          if ( look_21_143.between?( 0x0, 0x2f ) || look_21_143.between?( 0x3a, 0x40 ) || look_21_143.between?( 0x47, 0x60 ) || look_21_143.between?( 0x67, 0xffff ) )
            s = 94
          elsif ( look_21_143.between?( 0x30, 0x39 ) || look_21_143.between?( 0x41, 0x46 ) || look_21_143.between?( 0x61, 0x66 ) )
            s = 155
          end

        when 17
          look_21_86 = @input.peek
          s = -1
          if ( look_21_86 == 0x27 )
            s = 95
          elsif ( look_21_86.between?( 0x0, 0x26 ) || look_21_86.between?( 0x28, 0xffff ) )
            s = 94
          end

        end
        
        if s < 0
          nva = ANTLR3::Error::NoViableAlternative.new( @dfa21.description, 21, s, input )
          @dfa21.error( nva )
          raise nva
        end
        
        s
      end

    end
  end # class Lexer < ANTLR3::Lexer

  at_exit { Lexer.main( ARGV ) } if __FILE__ == $0
end

