grammar Javadoc;

options {
  language = Ruby;
}

@lexer::members {
  def error_header( e )
	  "#{ self.class }: #{ super }"
	end
}

comment : ( author )* ;

author  : '@author' ID { puts( "author #{ $ID.text }" ) };

ID      : ('a'..'z'|'A'..'Z')+
        ;

SIMPLE  : '{'
          {
            puts( "enter embedded Simple escape" )
            require 'SimpleLexer'
            require 'SimpleParser'
            lexer = Simple::Lexer.new( @input, :embedded => true )
            parser = Simple::Parser.new( lexer )
            parser.statement
            $channel = HIDDEN
          }
        ;

/** When the javadoc parser sees end-of-comment it just says 'I'm done', which
 *  consumes the tokens and forces this javadoc parser (feeding
 *  off the input stream currently) to exit.  It returns from
 *  method comment(), which was called from JAVADOC action in the
 *  Simple parser's lexer.
 */
STOP     : '*/'
          {
          $type = EOF
          puts( "exit javadoc" )
          }
        ;

WS  : (' '|'\t'|'\n')+ { $channel = HIDDEN }
    ;
