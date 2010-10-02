/**
[The "BSD licence"]
Copyright (c) 2010 Kyle Yetter
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

**/

grammar JavaScript;

options
{
  language  = Ruby;
	output    = AST;
}

tokens {
	ABSTRACT='abstract';  GET='get';                POST_DECR;
	AMP='&';              GOTO='goto';              POST_INCR;
	AMP_ASGN='&=';        GREATER='>';              PRIVATE='private';
	AND='&&';             HAT='^';                  PROGRAM;
	AREF;                 HAT_ASGN='^=';            PROTECTED='protected';
	ARGUMENTS;            IF='if';                  PUBLIC='public';
	ARRAY;                IMPLEMENTS='implements';  QMARK='?';
	AS='as';              IMPORT='import';          RBRACE='}';
	ASGN='=';             IN='in';                  RBRACK=']';
	BLOCK;                INCR='++';                REGEX;
	BOOLEAN='boolean';    INSTANCEOF='instanceof';  RETURN='return';
	BREAK='break';        INT='int';                RPAREN=')';
	BYTE='byte';          INTERFACE='interface';    RSHIFT3='>>>';
	CALL;                 IS='is';                  RSHIFT3_ASGN='>>>=';
	CASE='case';          LABEL;                    RSHIFT='>>';
	CATCH='catch';        LBRACE='{';               RSHIFT_ASGN='>>=';
	CHAR='char';          LBRACK='[';               SEMI=';'; //]
	CLASS='class';        LEQ='<=';                 SET='set';
	COLON=':';            LESS='<';                 SHORT='short';
	COMMA=',';            LET='let';                SLASH;
	COMMENT;              LINE_COMMENT;             SLASH_ASGN;
	CONST='const';        LITERAL;                  STAR='*';
	CONTINUE='continue';  LONG='long';              STAR_ASGN='*=';
	DEBUGGER='debugger';  LPAREN='(';               STATIC='static';
	DECR='--';            LSHIFT='<<';              SUPER='super';
	DEFAULT='default';    LSHIFT_ASGN='<<=';        SWITCH='switch';
	DELETE='delete';      MINUS='-';                SYNCHRONIZED='synchronized';
	DO='do';              MINUS_ASGN='-=';          THIS='this';
	DOT='.';              MOD='%';                  THROW='throw';
	DOUBLE='double';      MOD_ASGN='%=';            THROWS='throws';
	EACH='each';          NAMESPACE='namespace';    TILDE='~';
	ELSE='else';          NATIVE='native';          TRANSIENT='transient';
	ENUM='enum';          NEQ='!=';                 TRUE='true';
	EQ='==';              NEQQ='!==';               TRY='try';
	EQQ='===';            NEW='new';                TYPEOF='typeof';
	EXPORT='export';      NOT='!';                  UNDEFINED='undefined';
	EXTENDS='extends';    NULL='null';              USE='use';
	FALSE='false';        OBJECT;                   VAR='var';
	FINAL='final';        OR='||';                  VOID='void';
	FINALLY='finally';    PACKAGE='package';        VOLATILE='volatile';
	FLOAT='float';        PARAMS;                   WHILE='while';
	FOR='for';            PIPE='|';                 WITH='with';
	FOR_IN;               PIPE_ASGN='|=';           YIELD='yield';
	FUNCTION='function';  PLUS='+';
	GEQ='>=';             PLUS_ASGN='+=';
}

scope InFor {
  active;
}

@parser::members {
  
  def auto_semicolon?( error )
    if ANTLR3::Error::NoViableAlternative === error
      ( input.position - 1 ).downto( 0 ) do | i |
        token = input[ i ] or break
        token.hidden? or break
        token.type == NEWLINE and return true
      end
    end
    return false
  end
  
  def recover( error = $! )
    auto_semicolon?( error ) and return
    super
  end
  
  def report_error( error = $! )
    auto_semicolon?( error ) and return
    super
  end
  
}

@lexer::members {
  attr_accessor :regex_possible
  
  NO_REGEX_FOLLOWS = Set[
    ID, REGEX, STRING, NUMBER, THIS,
    TRUE, FALSE, NULL,
    RPAREN, RBRACK, RBRACE, UNDEFINED
  ]
  
  def next_token
    token = super
    unless token.hidden?
      @regex_possible =
        NO_REGEX_FOLLOWS.include?( token.type ) ? false : true
      @last_type = token.type
    end
    return( token )
  end
}

@lexer::init {
  @regex_possible = true
  @last_type = nil
}

program
  :  source_elements 
  ;
  
source_elements
  : statement (  statement )*
  ;

block
  : ( '{' )=> statement_block
  | statement
  ;

statement_block
  : '{'  ( statement_list  )? '}' -> ^( BLOCK statement_list? )
  ;
  
statement_list
  : statement (  statement )* -> statement+
  ;

statement
  : variable_statement
  | empty_statement
  | ( ID  ':' )=> labelled_statement
  | ( 'let' )=> let_statement
	| expression_statement
  | if_statement
  | iteration_statement
  | continue_statement
  | break_statement
	| yield_statement
  | return_statement
  | with_statement
  | switch_statement
  | throw_statement
  | try_statement
  ;

variable_statement
  : 'var'  variable_declaration_list statement_end    -> ^( 'var' variable_declaration_list )
  ;
  
variable_declaration_list
  : variable_declaration (  ','  variable_declaration )*
    -> variable_declaration+
  ;
  
variable_declaration
  : declaration_target ( '='^  expression )?
  ;

declaration_target
  : '[' declaration_target ( ',' declaration_target )* ']' -> ^( ARRAY declaration_target+ )
	| '{' declaration_key ( ',' declaration_key )* '}'       -> ^( OBJECT declaration_key+ )
	| variable_name -> variable_name
	;
	
declaration_key
  : property_name ':'^ declaration_target
	;
  
empty_statement
  : ';' ->
  ;
  
expression_statement
  : expression_list statement_end!  ;
  
if_statement
  : 'if'  '('  expression_list  ')' 
    when_true=block
    (  'else'  when_false=block )?
    -> ^( 'if' expression_list $when_true $when_false? )
  ;

let_statement
  : 'let' '(' variable_declaration_list ')' block
	  -> ^( 'let' variable_declaration_list block )
	;

iteration_statement
  : do_while_statement
  | while_statement
	| ( 'for' 'each' '(' )=> for_each_in_statement
  | ( 'for'  '('  for_in_statement_initialiser_part  'in' )=> for_in_statement
  | for_statement
  ;
  
do_while_statement
  : 'do'  block  'while'  '(' expression_list ')' statement_end    -> ^( 'do' expression_list block )
  ;
  
while_statement
  : 'while'  '('  expression_list  ')'  block
    -> ^( 'while' expression_list block )
  ;
  
for_statement
  : 'for' 
    '('
    (  for_statement_initialiser_part )?  ';'
    (  cond=expression_list )?  ';'
    (  step=expression_list )? 
    ')' 
    block
    -> ^( 'for' for_statement_initialiser_part? $cond? $step? block )
  ;
  
for_statement_initialiser_part
  scope InFor;
  @before {
    $InFor::active = true
  }
  @after {
    $InFor::active = false
  }
  : expression_list
  | 'var'^  variable_declaration_list
  ;

for_each_in_statement
  : 'for' 'each' '('  for_in_statement_initialiser_part  'in'  expression  ')'  block
	  -> ^( 'each' for_in_statement_initialiser_part expression block )
	;
  
for_in_statement
  : f='for'  '('  for_in_statement_initialiser_part  'in'  expression  ')'  block
    -> ^( FOR_IN[ $f ] for_in_statement_initialiser_part expression block )
  ;
  
for_in_statement_initialiser_part
  scope InFor;
  @before {
    $InFor::active = true
  }
  @after {
    $InFor::active = false
  }
  : 'var'^  variable_declaration
  | member
  ;

continue_statement
  : 'continue'^ ID? statement_end!
  ;

break_statement
  : 'break'^ ID? statement_end!
  ;

return_statement
  : 'return'^ expression_list? statement_end!
  ;

yield_statement
  : 'yield'^ expression_list? statement_end!
	;


with_statement
  : 'with'  '('  expression_list  ')'  block
    -> ^( 'with' expression_list block )
  ;

labelled_statement
  : ID  ':'  block
    -> ^( LABEL ID block )
  ;
  
switch_statement
  : 'switch'  '('  expression_list  ')' 
    '{'
    (  case_clause )*
    (  default_clause (  case_clause )* )? 
    '}'
    -> ^( 'switch' expression_list case_clause* default_clause? )
  ;
  
case_clause
  : 'case'^  expression_list  ':'!  statement_list?
  ;
  
default_clause
  : 'default'^  ':'!  statement_list?
  ;
  
throw_statement
  : 'throw'^ expression_list statement_end!
  ;

try_statement
  : 'try'  ( statement_block -> statement_block ) 
    ( f=finally_clause -> { $f.tree.unshift( $tree ) }
    | ( catch_clause -> { $catch_clause.tree.unshift( $tree ) } )
      (  f2=finally_clause -> { $f2.tree.unshift( $tree ) } )?
    )
  ;
       
catch_clause
  : 'catch'  '('  ID  ')'  statement_block
    -> ^( 'catch' ID statement_block )
  ;
  
finally_clause
  : 'finally' statement_block
    -> ^( 'finally' statement_block )
  ;

/********************************************************************************
 ********************************  Expression  **********************************
 ********************************************************************************/

expression_list
  : expression ( ','^ expression )*
  ;

expression
  : ( member  assignment_op )=> member  assignment_op^  expression
  | conditional
  ;
  
assignment_op
  : '='
  | '*='
  | SLASH_ASGN
  | '%='
  | '+='
  | '-='
  | '<<='
  | '>>='
  | '>>>='
  | '&='
  | '^='
  | '|='
  ;

conditional
  : logical_or (  '?'^  t=expression  ':'!  f=expression )?
  ;

logical_or
  : logical_and (  '||'^  logical_and )*
  ;

logical_and
  : bit_or (  '&&'^  bit_or )*
  ;

bit_or
  : bit_xor (  '|'^  bit_xor )*
  ;

bit_xor
  : bit_and (  '^'^  bit_and )*
  ;

bit_and
  : equality (  '&'^  equality )*
  ;

equality
  : relation 
    ( 
      ( '=='^ | '!='^ | '==='^ | '!=='^ ) 
      relation
    )*
  ;

relation
  : shift (  relation_op^  shift )*
  ;
  
relation_op
  : '<'
  | '>'
  | '<='
  | '>='
  | 'instanceof'
  | { !( $InFor.last && $InFor::active ) }?=> 'in'
  ;

shift
  : add (  ( '<<'^ | '>>'^ | '>>>'^ )  add )*
  ;

add
  : mult (  ( '+'^ | '-'^ )  mult )*
  ;

mult
  : unary (  ( '*'^ | SLASH^ | '%'^ )  unary )*
  ;

unary
  : 'delete'^  unary
  | 'void'^  unary
  | 'typeof'^  unary
  | '++'^  unary
  | '--'^  unary
  | '+'^  unary
  | '-'^  unary
  | '~'^  unary
  | '!'^  unary
  | postfix
  ;

postfix
  : member
    ( '++' -> ^( POST_INCR[ '++' ] member )
    | '--' -> ^( POST_DECR[ '--' ] member )
    |      -> member
    )
  ;

member
  : ( receiver  -> receiver )
    ( accessor  -> { $accessor.tree.unshift( $tree ) }
    | arguments -> ^( CALL $member arguments )
    )*
  ;
  
accessor
  : '['  expression  ']' -> ^( AREF[ '[' ] expression )  //]
  |  '.'  property_name  -> ^( '.'  property_name )
  ;

receiver
  : primary
  | function
  | ( 'new' new_target arguments? )=>
      'new' new_target arguments? -> ^( 'new' new_target arguments? )
  ;

new_target
  : ( receiver -> receiver )
    ( accessor -> { $accessor.tree.unshift( $tree )  } )*
  ;

arguments
  : '('  ')' -> ^( ARGUMENTS )
  | '('  expression  ( ',' expression  )* ')'
    -> ^( ARGUMENTS expression+ )
  ;

primary
  : 'this'^
  | variable_name^
  | 'null'^
  | 'true'^
  | 'false'^
  | 'undefined'^
  | NUMBER^
  | STRING^
  | REGEX^
  | array_literal
  | object_literal
  | '('!  expression_list  ')'!
  ;

function
	: 'function'^  ( ID  )? formal_parameter_list  block
	;
  
formal_parameter_list
  : '(' (  ID (  ','  ID )* )?  ')'
    -> ^( PARAMS ID* )
  ;

literal
  : 'null'^  | 'true'^  | 'false'^  | NUMBER^  | STRING^  | REGEX^
  ;


array_literal
  : '['  ']'  -> ^( ARRAY )
  | '[' expression ( ',' expression?  )* ']' -> ^( ARRAY expression+ )
  ;
  
list_element
  : ( ',' )=> -> ^( UNDEFINED )
  | expression -> expression
  ;
  

object_literal
  : '{'  '}' -> ^( OBJECT )
  | '{'  property_definition (  ','  property_definition )* '}'
    -> ^( OBJECT property_definition+ )
  ;

property_definition
  : 'get'^ ID formal_parameter_list block
	| 'set'^ ID formal_parameter_list block
	| property_name  ':'^   expression
  ;

property_name
  : ID
	| reserved { $reserved.tree.token.type = ID }
	| STRING
  | NUMBER
  ;

statement_end
  : ';'
  | ( '}' )=>
  | EOF
  ;

variable_name
  : ID
	| t=pseudokeyword { $t.tree.token.type = ID }
	;

pseudokeyword
  : 'abstract'
  | 'as'
  | 'boolean'
  | 'byte'
  | 'char'
  | 'class'
  | 'debugger'
  | 'double'
	| 'each'
  | 'enum'
  | 'export'
  | 'extends'
  | 'final'
  | 'float'
	| 'get'
	| 'set'
  | 'goto'
  | 'implements'
  | 'import'
  | 'int'
  | 'interface'
  | 'is'
  | 'long'
  | 'namespace'
  | 'native'
  | 'package'
  | 'private'
  | 'protected'
  | 'public'
  | 'short'
  | 'static'
  | 'super'
  | 'synchronized'
  | 'throws'
  | 'transient'
  | 'use'
  | 'volatile'
  ;

reserved
  : 'abstract'
  | 'as'
  | 'boolean'
  | 'break'
  | 'byte'
  | 'case'
  | 'catch'
  | 'char'
  | 'class'
  | 'const'
  | 'continue'
  | 'debugger'
  | 'default'
  | 'delete'
  | 'do'
  | 'double'
  | 'each'
  | 'else'
  | 'enum'
  | 'export'
  | 'extends'
  | 'false'
  | 'final'
  | 'finally'
  | 'float'
  | 'for'
  | 'function'
  | 'get'
  | 'goto'
  | 'if'
  | 'implements'
  | 'import'
  | 'in'
  | 'instanceof'
  | 'int'
  | 'interface'
  | 'is'
  | 'let'
  | 'long'
  | 'namespace'
  | 'native'
  | 'new'
  | 'null'
  | 'package'
  | 'private'
  | 'protected'
  | 'public'
  | 'return'
  | 'set'
  | 'short'
  | 'static'
  | 'super'
  | 'switch'
  | 'synchronized'
  | 'this'
  | 'throw'
  | 'throws'
  | 'transient'
  | 'true'
  | 'try'
  | 'typeof'
  | 'undefined'
  | 'use'
  | 'var'
  | 'void'
  | 'volatile'
  | 'while'
  | 'with'
  | 'yield'
  ;
  
/********************************************************************************
 ***********************************  Lexer  ************************************
 ********************************************************************************/

SLASH
  : '//' ~( '\n' | '\r' | '\u2028' | '\u2029' )* { skip }
  | '/*' .* '*/' { skip }
  | { @regex_possible  }?=> '/' ( ~( '/' | '*' | '\\' | '\r' | '\n' ) | '\\' . ) ( ~( '/' | '\\' | '\n' | '\r' ) | '\\' . )* '/' ( 'a'..'z' )* { $type = REGEX }
  | { !@regex_possible }?=> '/' ( '=' { $type = SLASH_ASGN } | { $type = SLASH } )
  ;

STRING
	: '"'  ( ~( '"'  | '\\' | '\n' | '\r' ) | '\\' . )* '"'
	| '\'' ( ~( '\'' | '\\' | '\n' | '\r' ) | '\\' . )* '\''
	;

NUMBER
	: ('0'..'9')+ '.' ('0'..'9')* ( ('e' | 'E') ('+' | '-')? ('0'..'9')+ )?
	| '.'? ('0'..'9')+ ( ('e' | 'E') ('+' | '-')? ('0'..'9')+ )?
	| '0' ('x' | 'X') ( '0'..'9' | 'a'..'f' | 'A'..'F' )+
	;

NEWLINE
  : ( '\n' | '\r' )+
    { $channel = HIDDEN }
	;

ID
	: ( '$' | '_' | 'a'..'z' | 'A'..'Z' )
    ( 'a'..'z' | 'A'..'Z' | '0'..'9' | '_' | '$' )*
	;

WS // Tab, vertical tab, form feed, space, non-breaking space and any other unicode "space separator".
	: ( '\t' | '\f' | ' ' | '\u00A0' )+	{ $channel = HIDDEN }
	;
