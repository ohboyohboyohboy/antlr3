/*
 [The 'BSD licence']
 Copyright (c) 2004 Terence Parr and Loring Craymer
 All rights reserved.

 Redistribution and use in source and binary forms, with or without
 modification, are permitted provided that the following conditions
 are met:
 1. Redistributions of source code must retain the above copyright
    notice, this list of conditions and the following disclaimer.
 2. Redistributions in binary form must reproduce the above copyright
    notice, this list of conditions and the following disclaimer in the
    documentation and/or other materials provided with the distribution.
 3. The name of the author may not be used to endorse or promote products
    derived from this software without specific prior written permission.

 THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR
 IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
 OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
 IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT,
 INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
 NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
 THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
 THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/

/** Python 2.5 Grammar
 *
 *  Terence Parr and Loring Craymer
 *  February 2004
 *
 *  Converted to ANTLR v3 November 2005 by Terence Parr.
 *
 *  Updated to Python 2.5 by Aaron Maxwell, 22 July 2008
 *
 *  This grammar was derived automatically from the Python 2.3.3
 *  parser grammar to get a syntactically correct ANTLR grammar
 *  for Python.  Then Terence hand tweaked it to be semantically
 *  correct; i.e., removed lookahead issues etc...  It is LL(1)
 *  except for the (sometimes optional) trailing commas and semi-colons.
 *  It needs two symbols of lookahead in this case.
 *
 *  Starting with Loring's preliminary lexer for Python, I modified it
 *  to do my version of the whole nasty INDENT/DEDENT issue just so I
 *  could understand the problem better.  This grammar requires
 *  PythonTokenStream.java to work.  Also I used some rules from the
 *  semi-formal grammar on the web for Python (automatically
 *  translated to ANTLR format by an ANTLR grammar, naturally <grin>).
 *  The lexical rules for python are particularly nasty and it took me
 *  a long time to get it 'right'; i.e., think about it in the proper
 *  way.  Resist changing the lexer unless you've used ANTLR a lot. ;)
 *
 *  I (Terence) tested this by running it on the jython-2.1/Lib
 *  directory of 40k lines of Python.
 *  
 */

grammar Python;

options { language = Ruby; }

tokens {
  INDENT;  DEDENT;       BLOCK;
  PARAMS;  PARAM_TUPLE;  LONGINT;
  COMPLEX; CONCAT;       CALL;
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
  : ( NEWLINE* DOCUMENT )?
    ( NEWLINE | statement )*
  ;

single_input
  : NEWLINE
  | simple_statement
  | compound_statement NEWLINE
  ;

eval_input
  : NEWLINE* test_list NEWLINE*
  ;

decorator
  : '@' dotted_attr ( LPAREN arg_list? RPAREN )? NEWLINE
  ;

dotted_attr
  : NAME ( '.' NAME )*
  ;

decoration
  : decorator+ 
  |            
  ;

func_def
  : decoration 'def' NAME LPAREN var_args_list? RPAREN ':' suite
    { puts( "found method def #{ $NAME.text }" ) }
  ;

parameters
  : LPAREN var_args_list? RPAREN
  ;

var_args_list
  : def_parameter ( ',' def_parameter )* 
    ( ','
      ( '*' single=NAME
        ( ',' '**' double=NAME 
        |                      
        )
      | '**' double=NAME       
      )?
    )? 
  | '*' single=NAME 
    ( ',' '**' double=NAME 
    |
    )
  | '**' NAME 
  ;

def_parameter
  : fp_def ( '=' test )?
  ;

fp_def
  : NAME
  | LPAREN fp_list RPAREN
  ;

fp_list
  : fp_def ( ',' fp_def )* ','? 
  ;

statement
  : simple_statement
  | compound_statement
  ;

simple_statement
  : small_statement 
    ( ';' small_statement )* 
    ';'? NEWLINE
    
  ;

small_statement
  : expr_statement
  | print_statement
  | del_statement
  | pass_statement
  | flow_statement
  | import_statement
  | global_statement
  | exec_statement
  | assert_statement
  ;

expr_statement
  : test_list
    ( ( '+='
      | '-='
      | '*='
      | '/='
      | '%='
      | '&='
      | '|='
      | '^='
      | '<<='
      | '>>='
      | '**='
      | '//='
      )
      ( yield_expr
      | test_list
      )
    | ( '=' ( test_list | yield_expr ) )+
    )?
  ;
  
print_statement
  : 'print'
    ( test ( ',' test )*  no_nl=','?             
    | '>>' dev=test ( ',' obj=test )* no_nl=','? 
    |                                            
    )
  ;

del_statement
  : 'del' exprlist
  ;

pass_statement
  : 'pass'
  ;

flow_statement
  : break_statement
  | continue_statement
  | return_statement
  | raise_statement
  | yield_statement
  ;

break_statement
  : 'break'
  ;

continue_statement
  : 'continue'
  ;

return_statement
  : 'return' test_list?
  ;

yield_statement
  : yield_expr
  ;

raise_statement
  : 'raise' ( test ( ',' test ( ',' test )? )? )?
  ;

import_statement
  : import_name
  | import_from
  ;

import_name
  : 'import' dotted_as_names
  ;

import_from
  : 'from' ( '.'* dotted_name | '.'+ ) 'import'
    ( '*'
    | import_as_names
    | LPAREN import_as_names RPAREN
    )
  ;

import_as_names
  : import_as_name ( ',' import_as_name )* ','?
  ;

import_as_name
  : NAME ( 'as' NAME )?
  ;

dotted_as_name
  : dotted_name ( 'as' NAME )?
  ;

dotted_as_names
  : dotted_as_name ( ',' dotted_as_name )*
  ;
  
dotted_name
  : NAME ( '.' NAME )*
  ;

global_statement
  : 'global' NAME ( ',' NAME )*
  ;

exec_statement
  : 'exec' expr ( 'in' test ( ',' test )? )?
  ;

assert_statement
  : 'assert' assertion=test ( ',' error_value=test )?
    
  ;

compound_statement
  : if_statement
  | while_statement
  | for_statement
  | try_statement
  | with_statement
  | func_def
  | class_def
  ;

if_statement
  : 'if' test ':' suite elif_clause*
    ( 'else' ':' suite )?
  ;

elif_clause
  : 'elif' test ':' suite
  ;

while_statement
  : 'while' test ':' suite
    ( 'else' ':' suite )?
  ;

for_statement
  : 'for' exprlist 'in' test_list ':' suite ( 'else' ':' suite )?
  ;

try_statement
  : 'try' ':' suite
    ( except_clause+ ( 'else' ':' suite )? ( 'finally' ':' suite)?
    | 'finally' ':' suite
    )
  ;

with_statement
  : 'with' test
    ( 'as' NAME ':' suite 
    | ':' suite 
    )
  ;

except_clause
  : 'except' ( test ( ',' test )? )? ':' suite
  ;

suite
  : simple_statement 
  | NEWLINE INDENT (statement)+ DEDENT 
  ;

test
  : or_test
    ( ('if' or_test 'else') => 'if' or_test 'else' test )?
  | lamb_def
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

comparison
  : expr
    (
      ( '<'
      | '>'
      | '=='
      | '>='
      | '<='
      | '<>'
      | '!='
      | 'in'
      | 'not' 'in'
      | 'is'
      | 'is' 'not'
      )
      expr
    )*
  ;

expr
  : xor_expr ( '|' xor_expr )*
  ;

xor_expr
  : and_expr ( '^' and_expr )*
  ;

and_expr
  : shift_expr ( '&' shift_expr )*
  ;

shift_expr
  : arith_expr ( ( '<<' | '>>' ) arith_expr )*
  ;

arith_expr
  : term ( ( '+' | '-' ) term )*
  ;

term
  : factor ( ( '*' | '/' | '%' | '//' ) factor )*
  ;

factor
  : '+' factor
  | '-' factor
  | '~' factor
  | power
  ;

power
  : atom trailer* ( '**' factor )?
  ;

atom
  : LPAREN 
    ( yield_expr
    | testlist_gexp
    )?
    RPAREN
  | LBRACK list_maker? RBRACK
  | LCURLY dict_maker? RCURLY
  | '`' test_list '`'
  | NAME
  | INT
  | LONGINT
  | FLOAT
  | COMPLEX
  | ( STRING | DOCUMENT )+
  ;

list_maker
  : test 
    ( list_for
    | (options {greedy=true;}:',' test)*
    ) ','?
  ;

testlist_gexp
  : test
    ( (options {k=2;}: ',' test)* ','?
    | gen_for
    )
  ;

lamb_def
  : 'lambda' var_args_list? ':' test
  ;

trailer
  : LPAREN arg_list? RPAREN
  | LBRACK subscript_list RBRACK
  | '.' NAME
  ;

subscript_list : subscript (options {greedy=true;}:',' subscript)* (',')?
              ;

subscript : '.' '.' '.'
          | test (':' (test)? (sliceop)?)?
          | ':' (test)? (sliceop)?
          ;

sliceop : ':' (test)?
        ;

exprlist : expr (options {k=2;}: ',' expr)* (',')?
         ;

test_list
    : test (options {k=2;}: ',' test)* (',')?
    ;

dict_maker
  : test ':' test (options {k=2;}:',' test ':' test )* ','?
  ;

class_def
  : 'class' NAME (LPAREN test_list? RPAREN)? ':' suite
    { puts( "found method def #{ $NAME.text }" ) }
  ;

arg_list
  : argument (',' argument)*
    ( ','
      ( '*' test (',' '**' test)?
      | '**' test
      )?
    )?
  | '*' test ( ',' '**' test )?
  | '**' test
  ;

argument
  : test ( '=' test | gen_for )?
  ;

list_iter
  : list_for
  | list_if
  ;

list_for
  : 'for' exprlist 'in' test_list list_iter?
  ;

list_if
  : 'if' test list_iter?
  ;

gen_iter
  : gen_for
  | gen_if
  ;

gen_for
  : 'for' exprlist 'in' or_test gen_iter?
  ;

gen_if
  : 'if' test gen_iter?
  ;

yield_expr
  : 'yield' test_list? 
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
    ( ( 'j' | 'J' ) { $type = COMPLEX } )?
  ;

INT
  : (  // Hex
      '0' ( 'x' | 'X' ) ( '0' .. '9' | 'a' .. 'f' | 'A' .. 'F' )+
    | ( '0' .. '9' )+
    )
    ( ( 'l' | 'L' ) { $type = LONGINT }
    | ( 'j' | 'J' ) { $type = COMPLEX }
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
