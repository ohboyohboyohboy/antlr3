/** Convert the simple input to be java code; wrap in a class,
 *  convert method with "public void", add decls.  This shows how to insert
 *  extra text into a stream of tokens and how to replace a token
 *  with some text.  Calling toString() on the TokenRewriteStream
 *  in Main will print out the original input stream.
 *
 *  Note that you can do the instructions in any order as the
 *  rewrite instructions just get queued up and executed upon toString().
 */
grammar Tweak;
options { language = Ruby; }

@init {
  @input = ANTLR3::TokenRewriteStream.new( @input )
}

program
@init { start = @input.look }
  :   method+
    {
    @input.insert_before( start,"public class Wrapper {\n" )
    # note the reference to the last token matched for method:
    @input.insert_after( $method.stop, "\n}\n" )
    }
  ;

method
    : m='method' ID '(' ')' body
      { @input.replace( $m, "public void" ) }
    ; 

body
// decls is on body's local variable stack but is visible to
// any rule that body calls such as stat.  From other rules
// it is referenced as $body::decls
// From within rule body, you can use $decls shorthand
scope {
    decls
}
@init {
    $body::decls = Set.new
}
    :   lcurly='{' stat* '}'
        {
        # dump declarations for all identifiers seen in statement list
        $body::decls.each { | i | @input.insert_after( $lcurly, "\nint #{ i };" ) }
        }
    ;

stat:   ID '=' expr ';' { $body::decls.add( $ID.text ) } // track left-hand-sides/
    ;

expr:   mul ('+' mul)* 
    ;

mul :   atom ('*' atom)*
    ;

atom:   ID
    |   INT
    ;

ID  :   ('a'..'z'|'A'..'Z')+ ;

INT :   ('0'..'9')+ ;

WS  :   (' '|'\t'|'\n')+ {$channel=HIDDEN;}
    ;
