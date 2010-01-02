grammar CSS;

options {
  language = Ruby;
  output = AST;
}

tokens {
  PERCENTAGE; DIMENSION; FUNCTION;
  INVALID; ANGLE; LENGTH; FREQ;
  TIME; EMS; EXS; RULE; ELEMENT;
  UNDER; MEDIA_LIST; SELECTOR;
}

stylesheet
  : charset?
    ( WS! | '<!--'! | '-->'! )*
    ( import_statement ( '<!--'! WS!* | '-->'! WS!* )* )*
    ( ( rule | media | page ) ( '<!--'! WS!* | '-->'! WS!* )* )*
  ;

charset
  : '@charset'^ STRING ';'!
  ;

import_statement
  : '@import'^ WS!* ( STRING | URI ) WS!* media_list? ';'! WS!*
  ;

media
  : '@media'^ WS!* media_list '{'! WS!* rule* '}'! WS!*
  ;

media_list
  : ID WS* ( ',' WS* ID WS* )* -> ^( MEDIA_LIST ID+ )
  ;

page
  : '@page' WS* ( ':' ID WS* )?
    '{' WS* declaration? ( ';' WS* declaration? )* '}' WS*
  -> ^( '@page' ID? declaration* )
  ;

rule
  : selector WS*
    '{' WS* declaration? ( ';' WS* declaration? )* '}' WS*
    -> ^( RULE selector ^( declaration )* )
  ;

selector
  : relational_selector ( ',' WS* relational_selector )*
  -> ^( SELECTOR relational_selector+ )
  ;

relational_selector
  : ( simple_selector -> simple_selector )
    ( WS* '+' WS* r=simple_selector -> ^( '+' $relational_selector $r )
    | WS* '>' WS* r=simple_selector -> ^( '>' $relational_selector $r )
    | WS+ r=simple_selector         -> ^( UNDER $relational_selector $r )
    )*
  ;

simple_selector
  : element modifier*
  | modifier+
  ;

element
  : '*' -> '*'
  | ID  -> ELEMENT[$ID]
  ;

modifier
  : HASH^
  | '.'^ ID
  | '['^ WS!* match_attribute ']'!
  | ':'^ ( ID | FUNCTION WS!* ( ID WS!* )? ')'! )
  ;

match_attribute
  : ID WS!* ( ( '='^ | '~='^ | '|='^ ) WS!* ( ID | STRING ) WS!* )?
  ;

declaration
  : ID WS!* ':'^ WS!* expr (IMPORTANT WS!*)?
  ;

expr
  : term ( ( '/'^ WS!* | ','^ WS!* )? term )*
  ;

term
  : ( '-' | '+' )? ( NUMBER | PERCENTAGE | LENGTH | EMS | EXS | ANGLE | TIME | FREQ ) WS!*
  | STRING WS!*
  | ID WS!*
  | URI WS!*
  | HASH WS!*      // <- hex color
  | FUNCTION WS!* expr ')' WS!*
  ;

WS: ( ' ' | '\t' | '\f' | '\r' | '\n' )+ ;

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
