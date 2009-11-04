grammar Fish;

options {
  language=Ruby;
  output=AST;
  backtrack=true;
}

tokens {
  GLOB;
  COMMAND;
}

command:
  : built_in_command
  | pipeline
  ;

built_in
  : block_command
  | alias
  ;

block_command
  : block_start_command command* block_end
  ;

pipeline
  : basic_command ( pipe basic_command )+ term
  | basic_command term
  ;

basic_command
  : COMMAND_NAME params* redirection
  ;

general_command
  : WS? command_name argument* redirection* terminate
    -> ^( {@adaptor.create!(COMMAND, $command_name.text)} argument* )
  ;

command_name
  : CHUNK
  | string
  ;

string
  : DOUBLE_STRING
  | SINGLE_STRING
  ;

argument
  : CHUNK
  | VARIABLE_EXPANSION
  | PROCESS_EXPANSION
  | subshell
  | string
  ;

subshell
  : '(' script ')'
  ;

redirection
  : '|' general_command
  | REDIRECT
  ;

terminate
  : CLOSE_COMMAND
  | '&'
  ;
  



DOUBLE_STRING
  : '"'
    ( '\\' .
    | ~'"'
    )*
    '"'
  ;

CHUNK
  : ( '\\' .
    | INSIGNIFICANT_CHARACTER
    | '*' { $type = GLOB }
    | '?' { $type = GLOB }
    | BRACE_EXPANSION { $type = GLOB }
    )+
  ;

OPEN_P
  : '(' ;

CLOSE_P
  : ')' ;

TIDLE
  : '~' ;

COMMENT
  : '#' .* NEWLINE
  ;

VARIABLE_EXPANSION
  : '$'+ INSIGNIFICANT_CHARACTER+ ARRAY_INDEX*
  ;

COMMAND_SUBSTITUTION
  : '(' ( COMMAND_SUBSTITUTION | ~('('|')') )* ')'
  ;

PROCESS_EXPANSION
  : '%' INSIGNIFICANT_CHARACTER+
  ;

CLOSE_COMMAND
  : ';' | NEWLINE | EOF
  ;

SINGLE_STRING
   : '\''
     ( '\\' .
     | ~'\''
     )*
     '\''
   ;

WS : ('\t' | ' ')+
   ;

REDIRECT
  : FD? ( '<<' | '<' | '^^' | '^' | '>>' | '>' ) TARGET_SUFFIX?
  ;

fragment
INSIGNIFICANT_CHARACTER
  : ~('%' | '$'  | '(' | ')'
    | '^' | '>'  | '<' | '|'
    | '&' | '#'  | ';' 
    | '?' | '*'  | '{'  | '}' | '~'
    | ' ' | '\t' | '\n' |'\r'
    | '"' | '\''
    )
  ;
  
fragment
NEWLINE 
  : '\r'? '\n' WS? NEWLINE?
  ;
  
fragment
FD
  : '0'..'9'+
  ;

fragment
ARRAY_INDEX
  : '[' .* ']'
  ;

fragment
BRACE_EXPANSION
  : '{' .* '}'
  ;

fragment
TARGET_SUFFIX
  : '&' (FD | '-' | '|')
  ;
