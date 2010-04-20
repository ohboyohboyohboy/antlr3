grammar Fish;

options {
  language  = Ruby;
  output    = AST;
}

tokens {
  CMD;
  IF;
  WHILE;
  IN;
  FOR;
  SWITCH;
  CASE;
  FUNCTION;
  ELSE;
  BLOCK_END;
  BLOCK;
  ARGS;
  FD_REDIRECT;
  FD;
  OR;
  AND;
  NOT;
}

@parser::members {
  def self.parse_file( path, options = {} )
    parser =
      open( path ) do | f |
        new( f, options )
      end
    return parser.script.tree
  end
}

script
  : pipeline+
  ;

pipeline
  : command ( FD? PIPE^ command )* ( BG^ | CMD_END! | EOF! )
  ;

command
  : for_cmd
  | while_cmd
  | if_cmd
  | block_cmd
  | switch_cmd
  | function_cmd
  | AND^ command
  | OR^ command
  | NOT^ command
  | cmd
  ;

cmd
  : CMD ( SHELL_TOKEN | redirect )* -> ^( CMD ^( ARGS SHELL_TOKEN* ) redirect* )
  ;


block_cmd
  : BLOCK pipeline*
    end_cmd
      -> ^( BLOCK pipeline* end_cmd? )
  ;

end_cmd
  : BLOCK_END ( SHELL_TOKEN | redirect )* -> redirect*
  ;

command_list
  : pipeline* -> ^( BLOCK pipeline* )
  ;

redirect
  : FD? ( FD_REDIRECT^ | REDIRECT^ SHELL_TOKEN )
  ;

for_cmd
  : FOR var=SHELL_TOKEN IN arg_list CMD_END
    command_list
    end_cmd
      -> ^( FOR $var arg_list command_list end_cmd? )
  ;

arg_list
  : SHELL_TOKEN* -> ^( ARGS SHELL_TOKEN* )
  ;

while_cmd
  : WHILE pipeline
    command_list
    end_cmd
      -> ^( WHILE pipeline command_list end_cmd )
  ;
  
switch_cmd
  : SWITCH arg_list CMD_END
    case_cmd*
    end_cmd
      -> ^( SWITCH arg_list case_cmd* end_cmd? )
  ;

case_cmd
  : CASE arg_list CMD_END
    command_list
      -> ^( CASE arg_list command_list )
  ;

if_cmd
  : IF condition=pipeline
      if_body=command_list
    ( ELSE else_body=command_list )?
    end_cmd
    -> ^( IF $condition $if_body $else_body? end_cmd? )
  ;

function_cmd
  : FUNCTION SHELL_TOKEN+ CMD_END
    command_list
    end_cmd
    -> ^( FUNCTION ^( ARGS SHELL_TOKEN+ ) command_list end_cmd? )
  ;


COMMENT
  : '#' ( ~'\n' )* ( '\n' | EOF ) { $channel = HIDDEN }
  ;

SPACE
  : ( ' ' | '\t' )+ { $channel = HIDDEN }
  ;

REDIRECT
  : ( '>' '>'? | '^' '^'? )
    ( '|' { $type = PIPE }
    | '&' ( '0' .. '9' )+ { $type = FD_REDIRECT }
    | '?'
    )?
  | '<'
  ;

CMD_END
  : ';'
  | '\\'? '\n'
  ;

BG: '&'
  ;

PIPE
  : '|'
  ;

SHELL_TOKEN
  : ( NUMBER REDIRECT )=> NUMBER { $type = FD }
  | ( NORMAL_CHARS
    | ESCAPE
    | STRING
    | SLICE
    | SUBSHELL
    )+
  ;

fragment
NUMBER
  : ( '0' .. '9' )+
  ;

fragment
ESCAPE
  : '\\' ~'\n'
  ;

fragment
SUBSHELL
  : '(' ( ~( '(' | ')' ) |  SUBSHELL )* ')'
  ;

fragment
SLICE
  : '[' ( ~( '[' | ']' | '(' ) | SUBSHELL | SLICE )* ']'
  ;

fragment
STRING
  : '\'' ( ~( '\'' | '\\' ) | '\\' . )* '\''
  | '"'  ( ~( '"'  | '\\' ) | '\\' . )* '"'
  ;

fragment
NORMAL_CHARS
  : (
     ~( '"' | '\'' | '#' | ' '  | '&' | '(' | ')' | ';'
      | '<' | '>'  | '^' | '\\' | '[' | ']' | '|' | '\t'
      | '\n'
      )
    )+
  ;
