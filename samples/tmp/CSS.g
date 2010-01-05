lexer grammar CSS;

options {
  language = C;
}

tokens {
  PERCENTAGE;
  DIMENSION;
  FUNCTION;
  INVALID;
  ANGLE;
  LENGTH;
  FREQ;
  TIME;
  EMS;
  EXS;
}

WS: ( ' ' | '\t' | '\f' | '\r' | '\n' )+ { $channel = HIDDEN };

COMMENT
  : '/*' ~'*'* '*'+ ( ~('/' | '*') ~'*'* '*'+ )* '/'
    { $channel = HIDDEN }
  ;

STRING
  : '"'
    ( ~( '\n' | '\r' | '\f' | '\\' | '"'  )
    | '\\' NEWLINE
    | ESCAPE
    )*
    ( '"'
    | { $type = INVALID }
    )
  | '\''
    ( ~( '\n' | '\r' | '\f' | '\\' | '\'' )
    | '\\' NEWLINE
    | ESCAPE
    )*
    ( '\''
    | { $type = INVALID }
    )
  ;

IMPORTANT
  : '!' ' '* 'important'
  ;

NUMBER
  : ( '0'..'9'+
    | '0'..'9'* '.' '0'..'9'+
    )
    ( '%'   { $type = PERCENTAGE }
    | 'em'  { $type = EMS  }
    | 'ex'  { $type = EXS  }
    | ( 'px' | 'cm' | 'mm' | 'in' | 'pt' | 'pc' )  { $type = LENGTH }
    | ( 'deg' | 'rad' | 'grad' ) { $type = ANGLE }
    | ( 'ms' | 's' ) { $type = TIME }
    | ( 'khz' | 'hz' ) { $type = FREQ }
    | PLAIN_ID { $type = DIMENSION }
    | /* nothing - just a plain number */
    )
  ;

ID
  : '-'?  ( 'a'..'z' | 'A'..'Z' | '_' | NONASCII | ESCAPE )
    ( '_' | 'a'..'z' | 'A'..'Z' | '0'..'9' | '-' | NONASCII | ESCAPE )*
    ( '(' { $type = FUNCTION } |  )
  ;

AT_KEYWORD : '@' PLAIN_ID ;

HASH : '#' ( '_' | 'a'..'z' | 'A'..'Z' | '0'..'9' | '-' | NONASCII | ESCAPE )+ ;

URI
  : 'url(' S STRING S ')'
  | 'url(' S ( '!' | '#' | '$' | '%' | '&' | '*' | '-' | '~' | NONASCII | ESCAPE )* S ')'
  ;

UNICODE_RANGE
  : 'u+' HEX HEX HEX HEX HEX HEX ( '-' HEX HEX HEX HEX HEX HEX )?
  ;


DELIM
  : '*' | '+' | '$' | '%' | '&'
  ;

fragment
PLAIN_ID
  : '-'?  ( 'a'..'z' | 'A' .. 'F' | '_' | NONASCII | ESCAPE )
    ( '_' | 'a'..'z' | 'A' .. 'Z' | '0'..'9' | '-' | NONASCII | ESCAPE )*
  ;

fragment
NONASCII : ~('\u0000' .. '\u007f') ;

fragment
HEX      : '0' .. '9' | 'a' .. 'f' | 'A' .. 'F' ;

fragment
ESCAPE  : '\\'
          ( HEX HEX HEX HEX HEX HEX
          | ~( '\n' | '\r' | '\f' | '0'..'9' | 'a'..'f' | 'A' .. 'F' )
          )
        ;

fragment
NEWLINE  : '\r' '\n' | ' ' | '\n' | '\r' | '\f' ;

fragment
S : ( ' ' | '\t' | '\f' | '\r' | '\n' )* ;
