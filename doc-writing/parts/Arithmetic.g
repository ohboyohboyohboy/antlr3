grammar Arithmetic;
options {
  language = Ruby; 
  backtrack = true;
}

expressions
      : add (';' add)*
      ;

add  : mult ( '+' mult)*
      | mult ( '-' mult)*
      ;

mult : value ( '*' value)*
      | value ( '/' value)*
      ;

value: FLOAT
      | HEXADECIMAL
      | DECIMAL
      | OCTAL
      | BINARY
      | '(' add ')'
      ;

FLOAT
  : '-'? ('0'..'9')+ '.' ('0'..'9')+ EXPONENT?
  | DECIMAL EXPONENT
  ;

fragment
EXPONENT
  : ('e'|'E') '-'? DECIMAL
  ;

HEXADECIMAL
  : '-'? '0x' ('a'..'f' | 'A'..'F' | '0'..'9')+
  ;

DECIMAL
  : '-'? '1'.. '9' ('0'..'9')*
  ;

OCTAL
  : '-'? '0' ('0'..'7')*
  ;

BINARY
  : '-'? '0b' ('0'..'1')+
  ;

WS: (' ' | '\t' | '\r' | '\n')+ { $channel = HIDDEN }
  ;
