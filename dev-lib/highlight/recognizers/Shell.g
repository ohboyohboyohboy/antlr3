lexer grammar Shell;

options { language = Ruby; }

tokens {
  COMMAND_NAME;
  SWITCH;
}

@init {
  @cmd_start = true
}

STRING
  : '"'  ( ~('"' | '\\')  | '\\' . )* '"'
  | '\'' ( ~('\'' | '\\') | '\\' . )* '\''
  ;

SHELL_STRING
  : '`' ( ~('`' | '\\') | '\\' . )* '`'
  ;

CMD_OUTPUT
  : { @cmd_start }?=> WS ~'\n'+ ( '\n' WS ~'\n'* )* '\n'*
  ;

SPACE
  : WS
  ;

COMMAND_END
@after { @cmd_start = true }
  : '\r'? '\n'
  | ';'
  ;

VARIABLE
  : '$' ('a'..'z' | 'A'..'Z' | '0'..'9' | '-' | '_')+
  ;

GLOB
  : ('?' | '*')+
  ;

CHUNK
@after { @cmd_start = false }
  : '-'+ CHUNK_CHAR* { $type = SWITCH }
  | CHUNK_CHAR+ { @cmd_start and $type = COMMAND_NAME }
  ;

OPEN_PAR   : '(' ;
CLOSE_PAR  : ')' ;

PIPELINE_OPERATOR
  : '&&' | '||' | '|' | '&' { @cmd_start = true }
  ;

REDIRECT
  : ('0'..'9')* ('>>' | '>' | '<<' | '<') ('&' ('0'..'9')+)?
  ;

COMMENT
  : '#' ( ~( '\r' | '\n' ) )*
  ;

fragment
CHUNK_CHAR
  : ~( '>' | '<' | '#' | '`'  | '"'  | '\'' | '|' | '(' | ')' | '$' | ';'
     | ' ' | '?' | '*'  | '~' | '\\' | '\t' | '{' | '}' | '\n' | '\r' )
  | '\\' .
  ;

fragment
WS: ( ' ' | '\t' )+
  ;