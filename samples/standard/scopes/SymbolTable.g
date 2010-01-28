grammar SymbolTable;

options { language = Ruby; }

/* Scope of symbol names.  Both globals and block rules need to push a new
 * symbol table upon entry and they must use the same stack.  So, I must
 * define a global scope and say that globals and block use this by saying
 * 'scope Symbols;' in those rule definitions.
 */
scope Symbols {
names
}

@init {
@level = 0
}

prog: globals (method)*
    ;

globals
scope Symbols;
@init {
@level += 1
$Symbols::names = []
}
    :   (decl)*
        {
        puts( "globals: [#{ $Symbols::names.join( ', ' ) }]" )
        @level -= 1
        }
    ;

method
    :   'method' ID '(' ')' block
    ;

block
scope Symbols;
@init {
@level += 1
$Symbols::names = []
}
    : '{' (decl)* (stat)* '}'
      {
      puts( "level #@level symbols: [#{ $Symbols::names.join( ', ' ) }]" )
      @level -= 1
      }
    ;

stat:   ID '=' INT ';'
    |   block
    ;

decl: 'int' ID ';'
      { $Symbols::names << $ID } // add to current symbol table
    ;

ID  :   ('a'..'z')+
    ;

INT :   ('0'..'9')+
    ;

WS  :   (' '|'\n'|'\r')+ {$channel=HIDDEN}
    ;
