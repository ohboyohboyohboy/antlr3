grammar DynamicScopes;

options {
  language = Ruby;
}

program : method ;

method
/* name is visible to any rule called by method directly or indirectly.
 *  There is also a stack of these names, one slot for each nested
 *  invocation of method.  If you have a method nested within another
 *  method then you have name strings on the stack.  Referencing
 *  $method.name access the topmost always.  I have no way at the moment
 *  to access earlier elements on the stack.
 */
scope {
  name;
}
    :   'method' ID '(' ')' { $method::name = $ID.text } body
    ; 

body:   '{' stat* '}'
    ;

stat:   ID '=' expr ';'
    |   method // allow nested methods to demo stack nature of dynamic attributes
    ;

expr:   mul ('+' mul)* 
    ;

mul :   atom ('*' atom)*
    ;

/** Demonstrate that 'name' is a dynamically-scoped attribute defined
 *  within rule method.  With lexical-scoping (variables go away at
 *  the end of the '}'), you'd have to pass the current method name
 *  down through all rules as a parameter.  Ick.  This is much much better.
 */
atom:   ID  { puts( "ref #{ $ID.text } from method #{ $method::name }" ) }
    |   INT { puts( "int #{ $INT.text } in method #{ $method::name }" ) }
    ;

ID  :   ('a'..'z'|'A'..'Z')+ ;

INT :   '0'..'9'+ ;

WS  :   (' '|'\t'|'\n')+ {$channel=HIDDEN}
    ;
