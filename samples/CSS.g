grammar CSS;

options { language = Ruby; }

tokens {
  PERCENTAGE;
  DIMENSION;
}

stylesheet
  : ( '<!--'
    | '-->'
    | WS
    | statement )*
  ;

statement
  : rule_set
  | at_rule
  ;

at_rule
  : AT_KEYWORD WS* any* ( block | ';' WS* )
  ;

block
  : '{' WS*
    ( any
    | block
    | AT_KEYWORD WS*
    | ';' WS*
    )*
    '}' WS*
  ;

rule_set
  : selector? '{' WS* declaration?
    ( ';' WS* declaration? )*
    '}' WS*
  ;

selector
  : any+
  ;

declaration
  : property WS* ':' WS* value
  ;

property
  : ID
  ;

value
  : ( any
    | block
    | AT_KEYWORD WS*
    )+
  ;

any
  : ( ID  | NUMBER   | PERCENTAGE    | DIMENSION   | STRING
    | URI | HASH     | UNICODE_RANGE | '~=' | '|=' | ':'
    | FUNCTION WS* any* ')'
    | '(' WS* any* ')'
    | '[' WS* any* ']'
    ) WS* ;

ID : '-'? NMSTART NMCHAR* ;

FUNCTION : ID '(' ;

AT_KEYWORD : '@' ID ;

STRING
  : '"'  ( ~( '\n' | '\r' | '\f' | '\\' | '"'  ) | '\\' NEWLINE | ESCAPE )* '"'
  | '\'' ( ~( '\n' | '\r' | '\f' | '\\' | '\'' ) | '\\' NEWLINE | ESCAPE )* '\''
  ;

INVALID
  : '"'  ( ~( '\n' | '\r' | '\f' | '\\' | '"'  ) | '\\' NEWLINE | ESCAPE )* // no "
  | '\'' ( ~( '\n' | '\r' | '\f' | '\\' | '\'' ) | '\\' NEWLINE | ESCAPE )* // no '
  ;

HASH : '#' NMCHAR+ ;

/*
  NUMBER 	    {num}
  PERCENTAGE 	{num}%
  DIMENSION 	{num}{ident}
*/
NUMBER
  : ( '0'..'9' )+ | ('0'..'9')* '.' ( '0'..'9' )+
    ( '%' { $type = PERCENTAGE }
    | ID  { $type = DIMENSION  }
    )?
  ;

URI
  : 'url(' WS STRING WS ')'
  | 'url('
    ( '!' | '#' | '$' | '%' | '&' | '*'
    | '-' | '~' | NONASCII | ESCAPE
    )* WS ')'
  ;

UNICODE_RANGE
  : 'u+' SIX_HEX ( '-' SIX_HEX )?
  ;

COMMENT
  : '/*' ~'*'* '*'+ ( ~('/' | '*') ~'*'* '*'+ )* '/'
  ;

fragment
NMSTART : 'a'..'z' | '_' | NONASCII | ESCAPE ;

fragment
NONASCII : ~('\000' .. '\177') ;

fragment
UNICODE  : '\\' SIX_HEX ( NEWLINE | '\t' )? ;

fragment
HEX      : '0' .. '9' | 'a' .. 'f' ;

fragment
SIX_HEX  : HEX HEX? HEX? HEX? HEX? HEX?
         ; 

fragment
ESCAPE   : UNICODE | '\\' ~( '\n' | '\r' | '\f' | '0'..'9' | 'a'..'f' ) ;

fragment
NEWLINE  : '\r' '\n' | ' ' | '\n' | '\r' | '\f' ;

fragment
WS        : ( ' ' | '\t' | '\f' | '\r' | '\n' )* ;

fragment
NMCHAR   : '_' | 'a'..'z' | '0'..'9' | '-' | NONASCII | ESCAPE ;
