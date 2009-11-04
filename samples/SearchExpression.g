grammar SearchExpression;

options {
  language=Ruby;
  output=AST;
}


search_expression
    : not_expression ( ('and' | 'or' | 'xor')^ not_expression)*
    ;

not_expression
    : ( 'not'^ )? atom
    ;

atom
    : group
    | term
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

WS  : (' ' | '\t' | '\n' | '\r' )+ { $channel = HIDDEN }
    ;
