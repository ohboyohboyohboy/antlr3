#!/usr/bin/ruby
# encoding: utf-8

require 'strscan'

module Highlight
  load_recognizer( 'antlr3-grammar' )

  module Languages
    class ANTLR
      CATEGORIES = {}

      def self.add_category( name, *types )
        for type in types
          Integer === type or type = ANTLRv3Grammar::TokenData[ type ]
          CATEGORIES[ type ] = name
        end
        return nil
      end

      def self.load( path, opts = {} )
        opts[ :file ] ||= path.to_s
        new( File.read( path ), opts )
      end

      include ANTLRv3Grammar::TokenData

      KEYWORD = -2
      RULE_DECLARATION = -3
      LABEL = -4
      NAME  = -5
      DOLLAR = ANTLRv3Grammar::TokenData[ "'$'" ]

      add_category( 'o', REWRITE, ROOT, BANG, RANGE,
      LABEL_ASSIGN, LIST_LABEL_ASSIGN,
      "'=>'", "'~'", "'.'", "'?'", "'+'", "'*'" )
      add_category( 'k',
        SCOPE, FRAGMENT, KEYWORD, "'catch'", "'finally'",
        "'grammar'", "'lexer'", "'parser'", "'private'",
        "'protected'", "'public'", "'throws'", "'tree'",
        OPTIONS, TOKENS
      )
      add_category( 'c', SL_COMMENT, DOC_COMMENT, ML_COMMENT )
      add_category( 'p', "';'", "':'", "'<'", "'>'", "'$'",
      "'('", "')'", "'|'", "','", "'}'", TREE_BEGIN )
      add_category( 'kd', RULE_DECLARATION )
      add_category( 'nl', LABEL )
      add_category( 'n', RULE_REF, TOKEN_REF )
      add_category( 's2', STRING_LITERAL, CHAR_LITERAL )
      add_category( 'name', NAME )
      
      attr_reader :lexer, :input, :tokens, :tree, :name, :rules, :html

      def initialize( source, options = {} )
        @line_offset = options.fetch( :line, 1 )
        source = source.to_s.expand_tabs( options[ :tab_width ] || 4 )
        @input = ANTLR3::StringStream.new( source, options )
        lexer = ANTLRv3Grammar::Lexer.new( @input )
        @tokens = ANTLR3::CommonTokenStream.new( lexer )
        parser = ANTLRv3Grammar::Parser.new( @tokens )

        @style = options.fetch( :style, 'spectacular' )

        if rule_name = options[ :snippet ]
          @tree = parser.send( rule_name ).tree rescue nil
          @name = options[ :name ] || "#{ rule_name }-#{ __id__.abs }"
        else
          @tree = parser.grammar_def.tree rescue nil
          @name = ( options[ :name ] || @tree[ 0 ].text ) rescue 'unknown'
        end

        @rules = {}
        @token_index = {}
        for token in @tokens
          token.channel = :default
          @token_index[ token.start ] = token
        end
        @tokens.reset

        tweak( @tree ) if @tree
        build_html( options )
      end

      def stylesheet
        Highlight.load_style( @style, 'ANTLR3' )
      end

      def full_document( out = StringIO.new )
        out.puts   "<html>"
        out.puts   "  <head>"
        out.printf "    <title>ANTLR Grammar: %s</title>\n", @name
        out.puts   '    <style type="text/css">'
        out.puts   stylesheet.fixed_indent( 6 )
        out.puts   '    </style>'
        out.puts   '  </head>'
        out.puts   '  <body>'
        out.puts  @html.to_s.fixed_indent( 4 )
        out.puts   '  </body>'
        out.puts   '</html>'
        return( StringIO === out ? out.string : out )
      end

      def write_to_file( path = '.' )
        if test( ?d, path )
          path = path / @name + '.html'
        end
        open( path, 'w' ) do |f|
          full_document( f )
        end
        return path
      end

      def to_s
        @html.to_s
      end

      private

      def build_html( options )
        t = options[ :class ] || 'ANTLR3'
        id = options[ :id ] || @name

        @html = Formatters::HTML::CodeBlock.new( t, id, options )
        @tokens.reset

        loop do
          case @tokens.peek
          when AT then named_action
          when ACTION then tokenize_action
          when SCOPE
            token
            @tokens.peek == WS and token
            case @tokens.peek
            when TOKEN_REF, RULE_REF
              token( 'nc' )
              @tokens.peek == WS and token
              @tokens.peek == ACTION and token( 'scope_definition' )
            when ACTION
              token( 'scope_definition' )
            end
          when DOLLAR
            2.times { token( 'si' ) }
          when RULE_REF, TOKEN_REF
            tk = @tokens.look
            if @rules.has_key?( tk.text )
              token( categorize( tk ), @rules[ tk.text ] )
            else
              token( 'gr' )
            end
          when EOF then break
          else token
          end
        end
      end

      def token( type = nil, link = nil )
        tk = @tokens.consume
        type ||= categorize( tk )
        link ? @html.add_token( type, tk.text, :link => link ) :
        @html.add_token( type, tk.text )
      end

      def named_action
        if @tokens.look( 3 ).text == '::'
          3.times { token( 'kt' ) }
          token( 'kt' )
        else
          2.times { token( 'kt' ) }
        end
      end

      def tokenize_action
        scanner = StringScanner.new( @tokens.consume.text )
        until scanner.eos?
          raw_source = scanner.scan( /(?:[^\$\\]|\\.)+/m ) and
          @html.add_token( 'kt', raw_source )
          if ref = scanner.scan( /\$\w+(?:::\w+)?/ )
            @html.add_token( 'si', ref )
          elsif dollar = scanner.scan( /\$\S*/ )
            @html.add_token( 'gr', dollar )
          end
        end
      end

      def index_rules( rules, tokens )
        @rules = {}

        if tokens
          for node in tokens.children
            t = node.token
            @rules[ t.text ] = [ t.line - @line_offset, t.start ]
          end
        end

        for rule in rules
          name = rule[ 0 ].token
          dtoken = @token_index[ name.start ]
          dtoken.type = RULE_DECLARATION
          body = rule[ -2 ]
          @tokens[ body.token_range ].each_cons( 2 ) do |t1, t2|
            case t1.type
            when RULE_REF, TOKEN_REF
              t2.text =~ /\+?=/ and
              t1.type = LABEL
            else
            end
          end

          @rules[ name.text ] = name.line - @line_offset
        end
      end

      def tweak( tree )
        # change the grammar -> NAME <-; declaration token from "TOKEN_REF"
        name_token = @token_index[ tree[ 0 ].token.start ]
        name_token.type = NAME

        option_blocks = []
        token_list = nil
        rules = []

        tree.walk do |node|
          case node.type
          when OPTIONS then option_blocks << node.token_range
          when TOKENS then token_list = node
          when RULE then rules << node
          end
        end

        for range in option_blocks
          for t in @tokens[ range ]
            if t.type == RULE_REF or t.type == TOKEN_REF
              t.type = ID
            elsif t.text == '}'
              t.type = OPTIONS
            end
          end
        end

        token_list and @tokens[ token_list.token_range ].each do |t|
          if t.type == TOKEN_REF
            t.type = ID
          elsif t.text == '}'
            t.type = TOKENS
          end
        end

        index_rules( rules, token_list )
      end

      def categorize( token )
        c = CATEGORIES[ token.type ] and return c
        case nm = token.name
        when /^'\w+'$/ then 'k'
        when /^'.+'$/ then 'o'
        else nm.inflect( :snakecase )
        end
      end
    end
  end
end
