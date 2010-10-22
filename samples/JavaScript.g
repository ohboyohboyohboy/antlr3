grammar JavaScript;

options {
  language  = Ruby;
  output    = AST;
}

tokens {
  AMP='&';              HAT='^';                  PROGRAM;
  AMP_ASGN='&=';        HAT_ASGN='^=';            QMARK='?';
  AND='&&';             IF='if';                  RBRACE='}';
  AREF;                 IN='in';                  RBRACK=']';
  ARGUMENTS;            INCR='++';                REGEX;
  ARRAY;                INSTANCEOF='instanceof';  RETURN='return';
  ARROW='->';           ITER;                     RPAREN=')';
  ASGN='=';             LABEL;                    RSHIFT='>>';
  BLOCK;                LBRACE='{';               RSHIFT3='>>>';
  BL_END='end';         LBRACK='[';               RSHIFT3_ASGN='>>>=';
  BREAK='break';        LEQ='<=';                 RSHIFT_ASGN='>>=';
  CALL;                 LESS='<';                 SEMI=';';
  CASE='case';          LET='let';                SET='set';
  CATCH='catch';        LINE_COMMENT;             SLASH;
  COLON=':';            LITERAL;                  SLASH_ASGN;
  COMMA=',';            LPAREN='(';               SPLAT;
  COMMENT;              LSHIFT='<<';              STAR='*';
  CONTINUE='continue';  LSHIFT_ASGN='<<=';        STAR_ASGN='*=';
  DECR='--';            MINUS='-';                SWITCH='switch';
  DEFAULT='default';    MINUS_ASGN='-=';          THIS='this';
  DELETE='delete';      MOD='%';                  THROW='throw';
  DO='do';              MOD_ASGN='%=';            TILDE='~';
  DOT='.';              NEQ='!=';                 TRUE='true';
  DO_UNTIL;             NEQQ='!==';               TRY='try';
  DO_WHILE;             NEW='new';                TYPEOF='typeof';
  EACH='each';          NOT='!';                  UMINUS;
  ELSE='else';          NULL='null';              UNDEFINED='undefined';
  EQ='==';              OBJECT;                   UNLESS='unless';
  EQQ='===';            OR='||';                  UNTIL='until';
  FALSE='false';        OR_ASGN='||=';            UPLUS;
  FINALLY='finally';    PARAMS;                   VAR='var';
  FOR='for';            PIPE='|';                 VOID='void';
  FOR_IN;               PIPE_ASGN='|=';           WHILE='while';
  FUNCTION='function';  PLUS='+';                 WITH='with';
  GEQ='>=';             PLUS_ASGN='+=';           WORDS;
  GET='get';            POST_DECR;                YAML;
  GREATER='>';          POST_INCR;                YIELD='yield';
  CONST='const';
}

scope InFor { active; }

@parser::members {
  
  def auto_semicolon?( error )
    if NoViableAlternative === error
      return( @auto_semicolon = error ) unless same_line?
    end
    return false
  end
  
  def recover( error = $! )
    @auto_semicolon == error and return( @auto_semicolon = nil )
    super
  end
  
  def report_error( error = $! )
    auto_semicolon?( error ) and return
    super
  end
  
  def newline?( from = 1 )
    to = from == -1 ? 1 : from + 1
    start = @input.future?( from )
    stop = @input.future?( to )
    
    start.upto( stop ) do | i |
      @input.at( i ).type == NEWLINE and return( true )
    end
    
    return( false )
  end
  
  def same_line?
    stop  = @input.future? || @input.length
    start = @input.past?   || 0
    
    start.upto( stop ) do | i |
      @input.at( i ).type == NEWLINE and return( false )
    end
    
    return( true )
  end
  
  def prepend_tree( root, child )
    child = @adaptor.rule_post_processing( child )
    root.unshift( child )
    root.start_index > child.start_index and root.start_index = child.start_index
    root.stop_index  < child.stop_index  and root.stop_index  = child.stop_index
    return @adaptor.rule_post_processing( root )
  end
}

@lexer::members {
  attr_accessor :value_expected
  
  NO_VALUE_FOLLOWS = Set[
    ID, REGEX, STRING, NUMBER, THIS,
    TRUE, FALSE, NULL, UNDEFINED,
    RPAREN, RBRACK, RBRACE,
    IVAR, DOC, YAML, WORDS
  ]
  
  def next_token
    token = super
    unless token.hidden?
      @value_expected =
        NO_VALUE_FOLLOWS.include?( token.type ) ? false : true
    end
    return( token )
  end
}

@lexer::init {
  @value_expected = true
  @token_buffer = []
  @buffer_depth = 0
}


/********************************************************************************
 ****************************  Top-Level Structure  *****************************
 ********************************************************************************/

program
  : source_elements -> source_elements
  |                 -> ^( UNDEFINED )
  ;
  
source_elements
  : statement (  statement )*
  ;

block
  : ( '{' )=> statement_block
  | statement
  ;

statement_block
  : '{'  statement_list? '}' -> ^( BLOCK statement_list? )
  ;
  
statement_list
  : statement+ -> statement+
  ;

clause
  : '(' expression_list ')' -> expression_list
  ;

/********************************************************************************
 ********************************  Statements  **********************************
 ********************************************************************************/

statement
  : variable_statement
  | const_statement
  | empty_statement
  | ( 'function' )=> function
  | ( ID  ':' )=> labelled_statement
  | ( 'let' )=> let_statement
  | expression_statement
  | if_statement
  | while_statement
  | do_while_statement
  | for_loop
  | continue_statement
  | break_statement
  | yield_statement
  | return_statement
  | with_statement
  | switch_statement
  | throw_statement
  | try_statement
  ;

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Simple Statements
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

empty_statement
  : ';' ->
  ;

expression_statement
  : expression_list statement_end!
  ;

labelled_statement
  : ID  ':'  block -> ^( LABEL ID block )
  ;

statement_end
  : ';'
  | ( '}' )=>
  | EOF
  ;

blank
  : -> ^( UNDEFINED )
  ;

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Block-ish Statements
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

try_statement
  : 'try'
    ( statement_block -> statement_block )
    ( f=finally_clause     -> { prepend_tree( $f.tree, $tree ) }
    | ( catch_clause       -> { prepend_tree( $catch_clause.tree, $tree ) } )
      (  f2=finally_clause -> { prepend_tree( $f2.tree, $tree ) } )?
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

with_statement
  : 'with' clause block -> ^( 'with' clause block )
  ;

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Variable Declarations
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

variable_statement
  : 'var'^ variable_declaration_list statement_end!
  ;

const_statement
  : 'const'^ variable_declaration_list statement_end!
  ;

let_statement
  : 'let'^ '('! variable_declaration_list ')'! block
  ;

variable_declaration_list
  : variable_declaration ( ','! variable_declaration )*
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

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Branching Statements
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

if_statement
  : 'if'^ clause block ( 'else'! block )?
  ;

switch_statement
  : 'switch'  '('  expression_list  ')' 
    '{'
    ( case_clause )*
    ( default_clause (  case_clause )* )? 
    '}'
    -> ^( 'switch' expression_list case_clause* default_clause? )
  ;
  
case_clause
  : 'case'^  expression_list  ':'!  statement_list?
  ;
  
default_clause
  : 'default'^  ':'!  statement_list?
  ;

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// While Loops
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

do_while_statement
  : 'do' block 'while' clause statement_end
    -> ^( 'do' clause block )
  ;

while_statement
  : 'while'^ clause block
  ;

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// For Loops
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

for_loop
  : { @input.peek( 2 ) == EACH }?=> for_each_in_statement
  | ( 'for'  '('  ~( ')' | ';' | 'in' )*  'in' )=> for_in_statement
  | for_statement
  ;

for_statement
  : 'for'^
    '('!
    ( for_statement_initialiser_part | blank ) ';'!
    ( expression_list | blank )  ';'!
    ( expression_list | blank )
    ')'!
    block
  ;
  
for_statement_initialiser_part
  scope InFor;
  @before { $InFor::active = true  }
  @after  { $InFor::active = false }
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
  @before { $InFor::active = true  }
  @after  { $InFor::active = false }
  : 'var'^  variable_declaration
  | member
  ;

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Flow Control
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

continue_statement
  : 'continue'^ ( { same_line? }?=> ID )? statement_end!
  ;

break_statement
  : 'break'^ ( { same_line? }?=> ID )? statement_end!
  ;

return_statement
  : 'return'^ ( { same_line? }?=> expression_list )? statement_end!
  ;

yield_statement
  : 'yield'^ ( { same_line? }?=> expression_list )? statement_end!
  ;
  
throw_statement
  : 'throw'^ ( { same_line? }?=> expression_list )? statement_end!
  ;

/********************************************************************************
 ********************************  Expression  **********************************
 ********************************************************************************/

expression_list
  : expression ( ','^ expression )*
  ;

expression
  : ( member assignment_op )=> member assignment_op^ expression
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
  : bit_or  ( '&&'^  bit_or )*
  ;

bit_or
  : bit_xor ( '|'^  bit_xor )*
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
  : 'delete' unary   -> ^( 'delete' unary )
  | 'void'   unary   -> ^( 'void' unary )
  | 'typeof' unary   -> ^( 'typeof' unary )
  | '++'     unary   -> ^( '++' unary )
  | '--'     unary   -> ^( '--' unary )
  | '+'      unary   -> ^( UPLUS[ '+' ] unary )
  | '-'      unary   -> ^( UMINUS[ '-' ] unary )
  | '~'      unary   -> ^( '~' unary )
  | '!'      unary   -> ^( '!' unary )
  | postfix          -> postfix
  ;

postfix
  : member
    ( { same_line? }?=>
      ( '++' -> ^( POST_INCR[ '++' ] member )
      | '--' -> ^( POST_DECR[ '--' ] member )
      )
    |        -> member
    )
  ;

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Atomic Expressions
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

member
  : ( receiver    -> receiver )
    ( accessor    -> { prepend_tree( $accessor.tree, $tree ) }
    | arguments   -> ^( CALL $member arguments )
    )*
  ;
  
accessor
  : '['  expression  ']' -> ^( AREF[ '[' ] expression )  //]
  |  '.'  property_name  -> ^( '.'  property_name )
  ;

receiver
  : primary  -> primary
  | function -> function
  | ( 'new' new_target arguments? )=>
      'new' new_target arguments? -> ^( 'new' new_target arguments? )
  ;

new_target
  : ( receiver -> receiver )
    ( accessor -> { prepend_tree( $accessor.tree, $tree )  } )*
  ;

arguments
  : '('  ( expression  ( ',' expression  )* )? ')' -> ^( ARGUMENTS expression* )
  ;

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Functions / Blocks
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

function
  : 'function'^ variable_name? function_parameters statement_block
  ;
  
function_parameters
  : '(' parameters? ')' -> ^( PARAMS parameters? )
  ;

parameters
  : variable_name (  ','  variable_name )* -> variable_name+
  ;

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Literals
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

primary
  : 'this'^
  | 'null'^
  | 'true'^
  | 'false'^
  | 'undefined'^
  | variable_name^
  | NUMBER^
  | STRING^
  | REGEX^
  | array_literal
  | object_literal
  | '('!  expression_list  ')'!
  ;

array_literal
  : '[' ']' -> ^( ARRAY )
  | '[' list_item ( ',' list_item )* ']' -> ^( ARRAY list_item* )
  ;
  
list_item
  : ( ',' )=>  -> ^( UNDEFINED )
  | expression -> expression
  ;
  
object_literal
  : '{'  '}' -> ^( OBJECT )
  | '{'  property_definition (  ','  property_definition )* '}'
    -> ^( OBJECT property_definition+ )
  ;

property_definition
  : 'get'^ ID function_parameters block
  | 'set'^ ID function_parameters block
  | property_name ':'^ expression
  ;

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
// Names and Words
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

property_name
  : ID
  | STRING
  | NUMBER
  | reserved { $reserved.tree.token.type = ID }
  ;

variable_name
  : ID
  | t=pseudokeyword { $t.tree.token.type = ID }
  ;

pseudokeyword
  : 'each'
  | 'get'
  | 'set'
  ;

reserved
  : 'break'    | 'do'      | 'function'   | 'new'    | 'throw'     | 'until'
  | 'case'     | 'each'    | 'get'        | 'null'   | 'true'      | 'var'  
  | 'catch'    | 'else'    | 'if'         | 'return' | 'try'       | 'void' 
  | 'continue' | 'false'   | 'in'         | 'set'    | 'typeof'    | 'while'
  | 'default'  | 'finally' | 'instanceof' | 'switch' | 'undefined' | 'with' 
  | 'delete'   | 'for'     | 'let'        | 'this'   | 'unless'    | 'yield'
  ;

/********************************************************************************
 ***********************************  Lexer  ************************************
 ********************************************************************************/

SLASH
  : '//' ~( '\n' | '\r' )* { $type = LINE_COMMENT; $channel = HIDDEN }
  | '/*' .* '*/' { $type = COMMENT; $channel = HIDDEN }
  | { @value_expected  }?=> '/' ( ~( '/' | '*' | '\\' | '\r' | '\n' ) | '\\' . ) ( ~( '/' | '\\' | '\n' | '\r' ) | '\\' . )* '/' ( 'a'..'z' )* { $type = REGEX }
  | { !@value_expected }?=> '/' ( '=' { $type = SLASH_ASGN } | { $type = SLASH } )
  ;

STRING
  : '\'' ( ~( '\'' | '\\' ) | '\\' . )* '\''
  | '"'  ( ~( '"'  | '\\' ) | '\\' . )* '"'
  ;

NUMBER
  : ('0'..'9')+ '.' ('0'..'9')* ( ('e' | 'E') ('+' | '-')? ('0'..'9')+ )?
  | '.'? ('0'..'9')+ ( ('e' | 'E') ('+' | '-')? ('0'..'9')+ )?
  | '0' ('x' | 'X') ( '0'..'9' | 'a'..'f' | 'A'..'F' )+
  ;

NEWLINE
  : ( '\n' | '\r' )+ { $channel = HIDDEN }
  ;

ID
  : ( '$' | '_' | 'a'..'z' | 'A'..'Z' )
    ( 'a'..'z' | 'A'..'Z' | '0'..'9' | '_' | '$' )*
  ;

WS // Tab, vertical tab, form feed, space, non-breaking space and any other unicode "space separator".
  : ( '\t' | '\f' | ' ' | '\u00A0' )+  { $channel = HIDDEN }
  ;


