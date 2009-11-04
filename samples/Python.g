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

options {
  language = Ruby;
  output = AST;
}


tokens {
    INDENT;
    DEDENT;
    BLOCK;
}

@lexer::init {
  ## Handles context-sensitive lexing of implicit line joining such as
  #  the case where newline is ignored in cases like this:
  #  a = [3,
  #       4]
  @implicit_line_joining_level = 0
  @in_indent = false
}
@lexer::members {

def in_indent?
  if @input.column == 0
    @in_indent = case @input.peek
    when ?\s, ?\t then true
    else false
    end
  end
  return @in_indent
end

}

@parser::main {
  \$:.unshift(File.dirname(__FILE__))
  require 'PythonLexer'
  require 'PythonTokenSource'
  
  main = ANTLR3::Main::ParserMain.new(Python::Parser, 
           :lexer_class_name => "Python::Lexer")
  
  class << main
    
    def recognize(in_stream)
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

single_input : NEWLINE
             | simple_statement
             | compound_statement NEWLINE
             ;

file_input : (NEWLINE | statement)* -> ^(nil statements*)
           ;

eval_input : (NEWLINE)* test_list (NEWLINE)*
           ;

decorators: decorator+
          ;

decorator: AT dotted_attr (LPAREN arg_list? RPAREN)? NEWLINE
         -> ^(AT dotted_attr arg_list?)
         ;

dotted_attr
    : NAME (DOT NAME)+ -> ^(DOT NAME+)
    | NAME
    ;

func_def : decorators? 'def' NAME parameters COLON suite
        -> ^('def' NAME parameters decorators? suite)
        ;

parameters : LPAREN (var_args_list)? RPAREN
           ;

var_args_list : def_parameter
              (options {greedy=true;}: COMMA def_parameter)*
              (COMMA
                  ( STAR NAME (COMMA DOUBLE_STAR NAME)?
                  | DOUBLE_STAR NAME
                  )?
              )?
            | STAR NAME (COMMA DOUBLE_STAR NAME)?
            | DOUBLE_STAR NAME
            ;

def_parameter : fp_def (ASSIGN test)?
             ;

fp_def : NAME
      | LPAREN fp_list RPAREN
      ;

fp_list : fp_def (options {greedy=true;}:COMMA fp_def)* (COMMA)?
       ;

statement
     : simple_statement
     | compound_statement
     ;

simple_statement 
     : small_statement 
       (options {greedy=true;}:SEMI small_statement)* 
       (SEMI)? NEWLINE
     ;

small_statement: expr_statement
           | print_statement
           | del_statement
           | pass_statement
           | flow_statement
           | import_statement
           | global_statement
           | exec_statement
           | assert_statement
           ;

expr_statement : test_list
            ( augmented_assign yield_expr
            | augmented_assign test_list
            | assigns
            )?
          ;

assigns
    : assign_testlist+
    | assign_yield+
    ;

assign_testlist
       : ASSIGN test_list
       ;

assign_yield
    : ASSIGN yield_expr
    ;

augmented_assign : PLUS_EQUAL
          | MINUS_EQUAL
          | STAR_EQUAL
          | SLASH_EQUAL
          | PERCENT_EQUAL
          | AMPER_EQUAL
          | VBAR_EQUAL
          | CIRCUMFLEX_EQUAL
          | LEFT_SHIFT_EQUAL
          | RIGHT_SHIFT_EQUAL
          | DOUBLE_STAR_EQUAL
          | DOUBLE_SLASH_EQUAL
          ;
          
print_statement : 'print' (print_list | RIGHT_SHIFT print_list)?
           ;

print_list returns [newline]
    : test (options {k=2;}: COMMA test)* (COMMA)?
    ;


del_statement : 'del' exprlist
         ;

pass_statement : 'pass'
          ;

flow_statement : break_statement
          | continue_statement
          | return_statement
          | raise_statement
          | yield_statement
          ;

break_statement : 'break'
           ;

continue_statement : 'continue'
              ;

return_statement : 'return' (test_list)?
            ;

yield_statement : yield_expr
           ;

raise_statement: 'raise' (test (COMMA test (COMMA test)?)?)?
          ;

import_statement : import_name
            | import_from
            ;

import_name : 'import' dotted_as_names
            ;

import_from: 'from' (DOT* dotted_name | DOT+) 'import'
              (STAR
              | import_as_names
              | LPAREN import_as_names RPAREN
              )
           ;

import_as_names : import_as_name (COMMA import_as_name)* (COMMA)?
                ;

import_as_name : NAME ('as' NAME)?
               ;

dotted_as_name : dotted_name ('as' NAME)?
               ;

dotted_as_names : dotted_as_name (COMMA dotted_as_name)*
                ;
dotted_name : NAME (DOT NAME)*
            ;

global_statement : 'global' NAME (COMMA NAME)*
            ;

exec_statement : 'exec' expr ('in' test (COMMA test)?)?
          ;

assert_statement : 'assert' test (COMMA test)?
            ;

compound_statement : if_statement
              | while_statement
              | for_statement
              | try_statement
              | with_statement
              | func_def
              | class_def
              ;

if_statement: 'if' test COLON suite elif_clause*  ('else' COLON suite)?
       ;

elif_clause : 'elif' test COLON suite
            ;

while_statement : 'while' test COLON suite ('else' COLON suite)?
           ;

for_statement : 'for' exprlist 'in' test_list COLON suite ('else' COLON suite)?
         ;

try_statement : 'try' COLON suite
           ( except_clause+ ('else' COLON suite)? ('finally' COLON suite)?
           | 'finally' COLON suite
           )
         ;

with_statement: 'with' test (with_var)? COLON suite
         ;

with_var: ('as' | NAME) expr
        ;

except_clause : 'except' (test (COMMA test)?)? COLON suite
              ;

suite : simple_statement -> ^(BLOCK simple_statement)
      | NEWLINE INDENT (statement)+ DEDENT -> ^(BLOCK statement+)
      ;

test: or_test
    ( ('if' or_test 'else') => 'if' or_test 'else' test)?
    | lamb_def
    ;

or_test : and_test (OR and_test)*
        ;

and_test : not_test (AND not_test)*
         ;

not_test : NOT not_test
         | comparison
         ;

comparison: expr (comp_op expr)*
          ;

comp_op : LESS
        | GREATER
        | EQUAL
        | GREATER_EQUAL
        | LESS_EQUAL
        | ALT_NOT_EQUAL
        | NOT_EQUAL
        | 'in'
        | NOT 'in'
        | 'is'
        | 'is' NOT
        ;

expr : xor_expr (VBAR xor_expr)*
     ;

xor_expr : and_expr (CIRCUMFLEX and_expr)*
         ;

and_expr : shift_expr (AMPER shift_expr)*
         ;

shift_expr : arith_expr ((LEFT_SHIFT|RIGHT_SHIFT) arith_expr)*
           ;

arith_expr: term ((PLUS|MINUS) term)*
          ;

term : factor ((STAR | SLASH | PERCENT | DOUBLE_SLASH ) factor)*
     ;

factor : PLUS factor
       | MINUS factor
       | TILDE factor
       | power
       ;

power : atom (trailer)* (options {greedy=true;}:DOUBLE_STAR factor)?
      ;

atom : LPAREN 
       ( yield_expr
       | testlist_gexp
       )?
       RPAREN
     | LBRACK (list_maker)? RBRACK
     | LCURLY (dict_maker)? RCURLY
     | BACKQUOTE test_list BACKQUOTE
     | NAME
     | INT
     | LONGINT
     | FLOAT
     | COMPLEX
     | (STRING)+
     ;

list_maker : test 
            ( list_for
            | (options {greedy=true;}:COMMA test)*
            ) (COMMA)?
          ;

testlist_gexp
    : test ( (options {k=2;}: COMMA test)* (COMMA)?
           | gen_for
           )
           
    ;

lamb_def: 'lambda' (var_args_list)? COLON test
       ;

trailer : LPAREN (arg_list)? RPAREN
        | LBRACK subscript_list RBRACK
        | DOT NAME
        ;

subscript_list : subscript (options {greedy=true;}:COMMA subscript)* (COMMA)?
              ;

subscript : DOT DOT DOT
          | test (COLON (test)? (sliceop)?)?
          | COLON (test)? (sliceop)?
          ;

sliceop : COLON (test)?
        ;

exprlist : expr (options {k=2;}: COMMA expr)* (COMMA)?
         ;

test_list
    : test (options {k=2;}: COMMA test)* (COMMA)?
    ;

dict_maker : test COLON test (options {k=2;}:COMMA test COLON test)* (COMMA)?
          ;

class_def: 'class' NAME (LPAREN test_list? RPAREN)? COLON suite
        ;

arg_list : argument (COMMA argument)*
          ( COMMA
            ( STAR test (COMMA DOUBLE_STAR test)?
            | DOUBLE_STAR test
            )?
          )?
        |   STAR test (COMMA DOUBLE_STAR test)?
        |   DOUBLE_STAR test
        ;

argument : test ( ASSIGN test | gen_for)?
         ;

list_iter : list_for
          | list_if
          ;

list_for : 'for' exprlist 'in' test_list list_iter?
         ;

list_if : 'if' test list_iter?
        ;

gen_iter: gen_for
        | gen_if
        ;

gen_for: 'for' exprlist 'in' or_test gen_iter?
       ;

gen_if: 'if' test gen_iter?
      ;

yield_expr : 'yield' test_list? -> ^('yield' test_list?)
           ;

/*~~~~~~~~~~~~~~~~~~~~~~~~~ LEXER ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/

LPAREN    : '(' {@implicit_line_joining_level += 1};

RPAREN    : ')' {@implicit_line_joining_level -= 1};

LBRACK    : '[' {@implicit_line_joining_level += 1};

RBRACK    : ']' {@implicit_line_joining_level -= 1};

COLON     : ':' ;

COMMA    : ',' ;

SEMI    : ';' ;

PLUS    : '+' ;

MINUS    : '-' ;

STAR    : '*' ;

SLASH    : '/' ;

VBAR    : '|' ;

AMPER    : '&' ;

LESS    : '<' ;

GREATER    : '>' ;

ASSIGN    : '=' ;

PERCENT    : '%' ;

BACKQUOTE    : '`' ;

LCURLY    : '{' {@implicit_line_joining_level += 1};

RCURLY    : '}' {@implicit_line_joining_level -= 1};

CIRCUMFLEX    : '^' ;

TILDE    : '~' ;

EQUAL    : '==' ;

NOT_EQUAL    : '!=' ;

ALT_NOT_EQUAL: '<>' ;

LESS_EQUAL    : '<=' ;

LEFT_SHIFT    : '<<' ;

GREATER_EQUAL    : '>=' ;

RIGHT_SHIFT    : '>>' ;

PLUS_EQUAL    : '+=' ;

MINUS_EQUAL    : '-=' ;

DOUBLE_STAR    : '**' ;

STAR_EQUAL    : '*=' ;

DOUBLE_SLASH    : '//' ;

SLASH_EQUAL    : '/=' ;

VBAR_EQUAL    : '|=' ;

PERCENT_EQUAL    : '%=' ;

AMPER_EQUAL    : '&=' ;

CIRCUMFLEX_EQUAL    : '^=' ;

LEFT_SHIFT_EQUAL    : '<<=' ;

RIGHT_SHIFT_EQUAL    : '>>=' ;

DOUBLE_STAR_EQUAL    : '**=' ;

DOUBLE_SLASH_EQUAL    : '//=' ;

DOT : '.' ;

AT : '@' ;

AND : 'and' ;

OR : 'or' ;

NOT : 'not' ;

FLOAT
    :   '.' DIGITS (Exponent)?
    |   DIGITS '.' Exponent
    |   DIGITS ('.' (DIGITS (Exponent)?)? | Exponent)
    ;

LONGINT
    :   INT ('l'|'L')
    ;

fragment
Exponent
    :    ('e' | 'E') ( '+' | '-' )? DIGITS
    ;

INT :   // Hex
        '0' ('x' | 'X') ( '0' .. '9' | 'a' .. 'f' | 'A' .. 'F' )+
    |   // Octal
        '0' DIGITS*
    |   '1'..'9' DIGITS*
    ;

COMPLEX
    :   INT ('j'|'J')
    |   FLOAT ('j'|'J')
    ;

fragment
DIGITS : ( '0' .. '9' )+ ;

NAME:   ( 'a' .. 'z' | 'A' .. 'Z' | '_')
        ( 'a' .. 'z' | 'A' .. 'Z' | '_' | '0' .. '9' )*
    ;

/** Match various string types.  Note that greedy=false implies '''
 *  should make us exit loop not continue.
 */
STRING
    :   ('r'|'u'|'ur')?
        ('\'\'\'' (options {greedy=false;}:TRIAPOS)* '\'\'\''
        |'"""' (options {greedy=false;}:TRIQUOTE)* '"""'
        |'"' (ESC|~('\\'|'\n'|'"'))* '"'
        |'\'' (ESC|~('\\'|'\n'|'\''))* '\''
        )
    ;

/** the two '"'? cause a warning -- is there a way to avoid that? */
fragment
TRIQUOTE
    : '"'? '"'? (ESC|~('\\'|'"'))+
    ;

/** the two '\''? cause a warning -- is there a way to avoid that? */
fragment
TRIAPOS
    : '\''? '\''? (ESC|~('\\'|'\''))+
    ;

fragment
ESC
    :    '\\' .
    ;

/** Consume a newline and any whitespace at start of next line
 *  unless the next line contains only white space, in that case
 *  emit a newline.
 */
CONTINUED_LINE
    :    '\\' ('\r')? '\n' (' '|'\t')*
         ( nl=NEWLINE
           {
              $type = NEWLINE
              $text = $nl.text
            }
         |  { $channel=HIDDEN }
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
  if @input.column == 0 || @implicit_line_joining_level > 0
    $channel=HIDDEN
  end
}
    :   (('\u000C')?('\r')? '\n' )+
    ;

/** Grab everything before a real symbol.  Then if newline, kill it
 *  as this is a blank line.  If whitespace followed by comment, kill it
 *  as it's a comment on a line by itself.
 *
 *  Ignore leading whitespace when nested in [..], (..), {..}.
 */
LEADING_WS
@after {@in_indent = false}
    :  {in_indent?}?=>
         ( {@implicit_line_joining_level>0}? ( ' ' | '\t' )+ {$channel=HIDDEN}
         | ( ' ' | '\t' )+
           ( '#' ~'\n'* ('\r'? '\n')*
             {
                 $type = COMMENT  
                 $channel = HIDDEN
              }
           )?
           ('\r'? '\n' { $channel = HIDDEN })*
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

WS  : (' '|'\t')+ {$channel=HIDDEN}
    ;

