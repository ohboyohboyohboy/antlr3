grammar Calculator;
options {
  language = Ruby;
}

evaluate returns [result]
  : r=expression { $result = $r.result }
  ;

expression returns [result]
  : r=mult
    ( '+' r2=mult { $r.result += $r2.result }
    | '-' r2=mult { $r.result -= $r2.result }
    )* { $result = $r.result }
  ;

mult returns [result]
  : r=log
    ( '*' r2=log { $r.result *= $r2.result }
    | '/' r2=log { $r.result /= $r2.result }  //
    )* { $result = $r.result };

log returns [result]
  : 'ln' r=exp { $result = Math.log( r ) }
  | r=exp { $result = $r.result }
  ;

exp returns [result]
  : r=atom ( '^' r2=atom { $r.result **= $r2.result } )? { $result = $r.result }
  ;

atom returns [result]
  : n=INTEGER { $result = Integer( $n.text ) }
  | n=DECIMAL { $result = $n.text.to_f }
  | '(' r=expression { $result = $r.result } ')'
  | 'PI' { $result = Math::PI }
  | 'E'  { $result = Math::E  }
  ;

INTEGER: DIGIT+;

DECIMAL: DIGIT+ '.' DIGIT+;

fragment
DIGIT: '0'..'9';

WS: (' ' | '\n' | '\t')+  { $channel = HIDDEN };
