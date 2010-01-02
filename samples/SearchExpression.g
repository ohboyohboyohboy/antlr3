grammar SearchExpression;

options {
  language = Ruby;
  output = AST;
}

tokens {
  MATCH;
}


search_expression
    : not_expression ( ('and'^ | 'or'^ | 'xor'^) not_expression )*
    ;

not_expression
    : ( 'not'^ )? atom
    ;

atom
    : group
    | ( CHUNK ':'^ )? term+
    ;

group
    : '('! search_expression ')'!
    | '['! search_expression ']'!
    | '{'! search_expression '}'!
    ;

term
    : CHUNK
    | STRING
    | REGEX
    ;

CHUNK
    : ('a' .. 'z' | 'A' .. 'Z' | '0' .. '9' | '_' | '-' | '.' | ',' | '\\' . )+
    ;

REGEX
    : '/' ( '\\' . | ~'/' )+ '/' ('i' | 'm' | 'x')*
    ;

STRING
    : '"' ( ~('"'|'\\') | '\\' . )* '"'
    | '\'' ( ~('\''|'\\') | '\\' . )* '\''
    ;

WS  : (' ' | '\t' | '\n' | '\r' )+ { $channel = HIDDEN }
    ;
