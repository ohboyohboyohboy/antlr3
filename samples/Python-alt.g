grammar Python;
options {
  language = Ruby;
  output   = AST;
//  backtrack = true;
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

file_input
  : ( NEWLINE | statement )*
  ;

interactive_input
  : stmt_list? NEWLINE
  | compound_stmt NEWLINE
  ;

eval_input
  : expression_list NEWLINE*
  ;

input_input
  : expression_list NEWLINE
  ;

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
  : ( STRING | DOCUMENT ) ( STRING | DOCUMENT )*
  ;

enclosure
  : LPAREN 
    ( yield_expression
    | parenthetical
    )?
    RPAREN
  | LBRACK list_display? RBRACK
  | LCURLY key_list? RCURLY
  | string_conversion
  ;

parenthetical
  : expression
    ( (options {k=2;}: ',' expression )* ','?
    | gen_expr_for
    )
  ;

list_display
  : expression
    ( (options {k=2;}: ',' expression )* ','?
    | list_for
    )
  ;

list_comprehension
  : expression list_for
  ;

list_for
  : 'for' target_list 'in' old_expression_list list_iter?
  ;

old_expression_list
  : old_expression ( ( ',' old_expression )+ ','? )?
  ;

list_iter
  : list_for
  | list_if
  ;

list_if
  : 'if' old_expression list_iter?
  ;

gen_expr_for
  : 'for' target_list 'in' or_test gen_expr_iter?
  ;

gen_expr_iter
  : gen_expr_for
  | gen_expr_if
  ;

gen_expr_if
  : 'if' old_expression gen_expr_iter?
  ;

key_list
  : key_pair ( ',' key_pair )* ','?
  ;

key_pair
  : expression ':' expression
  ;

string_conversion
  : '`' expression_list '`'
  ;

yield_expression
  : 'yield' expression_list?
  ;

primary
  : atom
    ( ( '.' )=> '.' NAME
    | ( LPAREN )=> call
    | ( LBRACK )=> access
    )*
  ;

call
  : LPAREN
      ( ( expression 'for' )=> expression gen_expr_for
      | argument_list ','?
      )?
    RPAREN
  ;

access
  : LBRACK
    ( ( expression? ':' )=> slice
    | expression_list
    )
    RBRACK
  ;

slice
  : expression? ':' expression? ( ':' expression? )?
  ;

/*
call
  : primary LPAREN
    ( argument_list ','?
    | expression gen_expr_for
    )?
    RPAREN
  ;
*/

argument_list
  : positional_arguments ( ',' keyword_arguments )?
    ( ',' '*' expression )?
    ( ',' '**' expression )?
  | keyword_arguments ( ',' '*' expression )?
    ( ',' '**' expression )?
  | '*' expression ( ',' '**' expression )?
  | '**' expression
  ;

positional_arguments
  : expression ( ',' expression )*
  ;

keyword_arguments
  : keyword_item ( ',' keyword_item )*
  ;

keyword_item
  : NAME '=' expression
  ;

power
  : primary ( '**' unary )?
  ;

unary
  : power
  | '-' unary
  | '+' unary
  | '~' unary
  ;

multiplication
  : unary ( ( '*' | '//' | '/' | '%' ) unary )*
  ;

addition
  : multiplication ( ( '+' | '-' ) multiplication )*
  ;

shift_expr
  : addition ( ( '<<' | '>>' ) addition )*
  ;

and_expr
  : shift_expr ( '&' shift_expr )*
  ;

xor_expr
  : and_expr ( '^' and_expr )*
  ;

or_expr
  : xor_expr ( '|' xor_expr )*
  ;

comparison
  : or_expr (
      ( '<'
      | '>'
      | '=='
      | '>='
      | '<='
      | '<>'
      | '!='
      | 'is' 'not'?
      | 'not'? 'in'
      )
      or_expr
    )*
  ;

expression
  : conditional_expression
  | lambda_form
  ;

old_expression
  : or_test
  | old_lambda_form
  ;

conditional_expression
  : or_test
    ( ( 'if' or_test 'else' )=> 'if' or_test 'else' expression )?
  ;

or_test
  : and_test ( 'or' and_test )*
  ;

and_test
  : not_test ( 'and' not_test )*
  ;

not_test
  : 'not' not_test
  | comparison
  ;

lambda_form
  : 'lambda' parameter_list? ':' expression
  ;

old_lambda_form
  : 'lambda' parameter_list? ':' old_expression
  ;

expression_list
  : expression ( options {k=2;}: ',' expression )* ','?
  ;

simple_stmt
  : expression_list
  | assert_stmt
  | assignment_stmt
  | augmented_assignment_stmt
  | 'pass'
  | 'del' target_list
  | print_stmt
  | return_stmt
  | yield_stmt
  | raise_stmt
  | 'break'
  | 'continue'
  | import_stmt
  | 'global' NAME ( ',' NAME )*
  | exec_stmt
  ;

assert_stmt
  : 'assert' expression ( ',' expression )?
  ;

assignment_stmt
  : target_list '='
    ( expression_list
    | yield_expression
    )
  ;

target_list
  : target ( ',' target )* ','?
  ;

target
  : NAME
  | LPAREN target_list RPAREN
  | LBRACK target_list RBRACK
  | target_expr
  ;

target_expr
  : atom
    ( ( '.' )=> '.' NAME
    | ( LPAREN )=> call
    | ( LBRACK )=> access
    )*
  ;

augmented_assignment_stmt
  : target
    ( '+='
    | '-='
    | '*='
    | '/='
    | '%='
    | '**='
    | '>>='
    | '<<='
    | '&='
    | '^='
    | '|='
    )
    ( expression_list
    | yield_expression
    )
  ;

print_stmt
  : 'print' ( expression ( ',' expression )* ','? )?
  | 'print' '>>' expression ( ',' expression )+ ','?
  ;

return_stmt
  : 'return' expression_list?
  ;

yield_stmt
  : yield_expression
  ;

raise_stmt
  : 'raise' expression ',' expression ',' expression
  | 'raise' expression ',' expression
  | 'raise' expression
  | 'raise'
  ;

import_stmt
  : 'import' module_name
    ( 'as' NAME )?
    ( ',' module_name ( 'as' NAME )? )*
  | 'from' relative_module_name
    'import' NAME ( 'as' NAME )?
    ( ',' NAME ( 'as' NAME )? )*
  | 'from' relative_module_name
    'import' LPAREN
    NAME ( 'as' NAME )?
    ( ',' NAME ( 'as' NAME )? )* ','?
    RPAREN
  | 'from' module_name 'import' '*'
  ;

module_name
  : ( NAME '.' )* NAME
  ;

relative_module_name
  : '.'* module_name | '.'+
  ;

exec_stmt
  : 'exec' or_expr ( 'in' expression ( ',' expression )? )
  ;

compound_stmt
  : if_stmt
  | while_stmt
  | for_stmt
  | try_stmt
  | with_stmt
  | function_def
  | class_def
  ;

suite
  : stmt_list NEWLINE
  | NEWLINE INDENT statement+ DEDENT
  ;

statement
  : stmt_list NEWLINE
  | compound_stmt
  ;

stmt_list
  : simple_stmt ( ';' simple_stmt )* ';'?
  ;

if_stmt
  : 'if' expression ':' suite
    ( 'elif' expression ':' suite )*
    ( 'else' ':' suite )?
  ;

while_stmt
  : 'while' expression ':' suite
    ( 'else' ':' suite )?
  ;

for_stmt
  : 'for' target_list 'in' expression_list ':' suite
    ( 'else' ':' suite )?
  ;

try_stmt
  : try1_stmt
  | try2_stmt
  ;

try1_stmt
  : 'try' ':' suite
    ( 'except' ( expression ( ',' target )? )? ':' suite )+
    ( 'else' ':' suite )?
    ( 'finally' ':' suite )?
  ;

try2_stmt
  : 'try' ':' suite 'finally' ':' suite
  ;

with_stmt
  : 'with' expression ( 'as' target )? ':' suite
  ;

function_def
  : decorators? 'def' NAME LPAREN parameter_list? RPAREN ':' suite
  ;

decorators
  : decorator+
  ;

decorator
  : '@' dotted_name ( LPAREN ( argument_list ','? )? RPAREN )? NEWLINE
  ;

dotted_name
  : NAME ( '.' NAME )*
  ;

parameter_list
  : ( def_parameter ',' )*
    ( '*' NAME ( ',' '**' NAME )?
    | '**' NAME
    | def_parameter ','?
    )
  ;

def_parameter
  : parameter ( '=' expression )?
  ;

sublist
  : parameter ( ',' parameter )* ','?
  ;

parameter
  : NAME
  | LPAREN sublist RPAREN
  ;

class_def
  : 'class' NAME inheritance? ':' suite
  ;

inheritance
  : LPAREN expression_list? RPAREN
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
