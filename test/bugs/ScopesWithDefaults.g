grammar ScopesWithDefaults;

options { language = Ruby; }

scope A {
  t = 1;
}

a [ i = 0 ] returns [ y = [\] ]
  scope A;
  : INT
  ;

b
  scope {
    a = 3;
  }
  : INT INT
  ;

INT: ( '0'..'9' )+;