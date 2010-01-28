grammar Lang;
options {
  language = Ruby;
	output = AST;
}

tokens {DECL;} // an imaginary node

start : decl ;

decl
  : type ID ';' -> ^(DECL type ID)
  ;

type
  : INT_TYPE  // automatic tree construction builds a node for this rule
  | FLOAT_TYPE
  ;

INT_TYPE : 'int' ;
FLOAT_TYPE : 'float' ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+ ;
WS : (' '|'\n') {$channel=HIDDEN;} ;
