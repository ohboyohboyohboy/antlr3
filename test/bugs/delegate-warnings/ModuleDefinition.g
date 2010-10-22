grammar ModuleDefinition;
options { language = Ruby; }

/* Lexer definitions */

WS : (' '|'\t'|'\r'|'\n') { skip } ;

BLOCK_COMMENT : '/*' .* '*/' { $channel=HIDDEN; } ;
LINE_COMMENT : '//' ~('\n'|'\r')* '\r'? '\n' { $channel=HIDDEN; } ;

DEC_NUMBER : '0'..'9'+ ;
HEX_NUMBER : '0' ('x'|'X') ('0'..'9'|'a'..'f'|'A'..'F')+ ;

ID  : 'a'..'z' IdTail;
CID : 'A'..'Z' IdTail;

fragment IdTail : ('a'..'z'|'A'..'Z'|'0'..'9'|'_')* ;

/* Primitives */

number returns[value]
 : DEC_NUMBER { $value = $DEC_NUMBER.text.to_i }
 | HEX_NUMBER { $value = $HEX_NUMBER.text[2..-1].to_i(16) };

/* Grammar */

expr1 returns[value]
  : e=number { $value = $e.value }
    ( '*' e=number { $value *= $e.value }
    | '/' e=number { $value /= $e.value }
    )*
  ;

expr returns[value]
  : e=expr1 { $value = $e.value }
    ( '+' e=expr1 { $value += $e.value }
    | '-' e=expr1 { $value -= $e.value }
    )*
  ;

