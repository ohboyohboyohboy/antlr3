grammar DebugDFA;

options { language=Ruby; }

a : ( b | c ) EOF;
b : ID* INT;
c : ID+ BANG;
ID : 'a'..'z'+ ;
INT : '0'..'9'+ ;
BANG : '!';
WS : (' '|'\n') {$channel=HIDDEN;} ;