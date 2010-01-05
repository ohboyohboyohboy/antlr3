grammar Python;
options {
  language = Ruby;
  output   = AST;
}

tokens {
  INDENT;  DEDENT;       BLOCK;
  PARAMS;  PARAM_TUPLE;  LONGINT;
  IMAGINARY; CONCAT;       CALL;
  TUPLE;   LIST;         DICT;
  DECORATION; MODULE; DOCUMENT;
}

@lexer::init {
  @line_join_level = 0 # if > 0, newlines are insignificant
  @in_indent = false
}

@lexer::members {

# @in_indent becomes true at the start of a line with leading whitespace.
# It remains true until manually set to false by the leading_ws rule. 
def in_indent?
  if @input.beginning_of_line?
    @in_indent =
      case @input.peek
      when ?\s, ?\t then true
      else false
      end
  end
  return @in_indent
end

}

@parser::main {

require 'PythonLexer'
require 'PythonTokenSource'

main = ANTLR3::Main::ParserMain.new(
  Python::Parser, :lexer_class => Python::Lexer
)

class << main
  
  def recognize( in_stream )
    parser_options = {}
    @port and parser_options[:port] = @port
    @debug_socket and parser_options[:debug_socket] = @error
    
    lexer = Python::Lexer.new(in_stream)
    post_process = Python::TokenSource.new(lexer)
    token_stream = ANTLR3::CommonTokenStream.new(post_process)
    parser = Python::Parser.new(token_stream, parser_options)
    
    result = parser.send(@parser_rule)
    
    if result
      if result.respond_to?(:tree) and tree = result.tree
        puts(tree.inspect)
      else puts(result.inspect)
      end
    end
  end
  
end

main.execute(ARGV)

}


atom
  : NAME
  | literal
  | enclosure
  ;

literal
  : string_literal
  | INT
  | LONGINT
  | FLOAT
  | IMAGINARY
  ;

string_literal
  : STRING
  | DOCUMENT
  ;

enclosure
  : parenth_form
  | list_display
  | generator_expression
  | dict_display
  | string_conversion
  | yield_atom
  ;



/*~~~~~~~~~~~~~~~~~~~~~~~~~ LEXER ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/

LPAREN    : '(' { @line_join_level += 1 };

RPAREN    : ')' { @line_join_level -= 1 };

LBRACK    : '[' { @line_join_level += 1 };

RBRACK    : ']' { @line_join_level -= 1 };

LCURLY    : '{' { @line_join_level += 1 };

RCURLY    : '}' { @line_join_level -= 1 };

FLOAT
  : ( '.' ( '0' .. '9' )+ EXP?
    |  ( '0' .. '9' )+ '.'? EXP
    |  ( '0' .. '9' )+ '.' ( ( '0' .. '9' )+ EXP? )?
    )
    ( ( 'j' | 'J' ) { $type = IMAGINARY } )?
  ;

INT
  : (  // Hex
      '0' ( 'x' | 'X' ) ( '0' .. '9' | 'a' .. 'f' | 'A' .. 'F' )+
    | ( '0' .. '9' )+
    )
    ( ( 'l' | 'L' ) { $type = LONGINT }
    | ( 'j' | 'J' ) { $type = IMAGINARY }
    )?
  ;

NAME:   ( 'a' .. 'z' | 'A' .. 'Z' | '_')
        ( 'a' .. 'z' | 'A' .. 'Z' | '_' | '0' .. '9' )*
    ;

/** Match various string types.  Note that greedy=false implies '''
 *  should make us exit loop not continue.
 */
STRING
  : ( 'r' | 'u' | 'ur' | 'R' | 'U' | 'UR' | 'Ur' | 'uR' )?
    ( '\'\'\'' (options {greedy=false;}: TRIAPOS )* '\'\'\''  { $type = DOCUMENT }
    | '"""' (options {greedy=false;}: TRIQUOTE )* '"""'       { $type = DOCUMENT }
    | '"'  ( ESC | ~( '\\' | '\n' | '"'  ) )* '"'
    | '\'' ( ESC | ~( '\\' | '\n' | '\'' ) )* '\''
    )
  ;

/** Consume a newline and any whitespace at start of next line
 *  unless the next line contains only white space, in that case
 *  emit a newline.
 */
CONTINUED_LINE
  : '\\' '\r'? '\n' ( ' ' | '\t' )*
    ( NEWLINE
      {
        $type = NEWLINE
        # $text = $nl.text
      }
    | { $channel = HIDDEN }
    )
  ;

/** Treat a sequence of blank lines as a single blank line.  If
 *  nested within a (..), {..}, or [..], then ignore newlines.
 *  If the first newline starts in column one, they are to be ignored.
 *
 *  Frank Wierzbicki added: Also ignore FORMFEEDS (\u000C).
 */
NEWLINE
@init { 
  if @input.beginning_of_line? or @line_join_level > 0
    $channel = HIDDEN
  end
}
  : ( '\u000C'? '\r'? '\n' )+
  ;

/** Grab everything before a real symbol.  Then if newline, kill it
 *  as this is a blank line.  If whitespace followed by comment, kill it
 *  as it's a comment on a line by itself.
 *
 *  Ignore leading whitespace when nested in [..], (..), {..}.
 */
LEADING_WS
@after { @in_indent = false }
  : { in_indent? }?=>   // <-- semantic predicate meaning "only valid if in indent"
    ( { @line_join_level > 0 }? ( ' ' | '\t' )+ { $channel = HIDDEN }
    | ( ' ' | '\t' )+
      ( '#' ~'\n'* ('\r'? '\n')*
        {
          $type = COMMENT  
          $channel = HIDDEN
        }
      )?
      ( '\r'? '\n' { $channel = HIDDEN } )*
      // kill trailing newline if present and then ignore
    )
  ;
  
/** Comments not on line by themselves are turned into newlines.

    b = a # end of line comment

    or

    a = [1, # weird
         2]

    This rule is invoked directly by nextToken when the comment is in
    first column or when comment is on end of nonwhitespace line.

    Only match \n here if we didn't start on left edge; let NEWLINE return that.
    Kill if newlines if we live on a line by ourselves
    
    Consume any leading whitespace if it starts on left edge.
 */

COMMENT
  : '#' ~'\n'* { $channel = HIDDEN }
  ;

WS
  : ( ' ' | '\t' )+ {$channel=HIDDEN}
  ;

fragment
TRIQUOTE
  : '"'? '"'? ( ESC | ~( '\\' | '"' ) )+
  ;

fragment
TRIAPOS
  : '\''? '\''? ( ESC | ~( '\\' | '\'' ) )+
  ;

fragment
ESC
  : '\\' .
  ;

fragment
EXP
  : ( 'e' | 'E' ) ( '+' | '-' )? ( '0' .. '9' )+
  ;
