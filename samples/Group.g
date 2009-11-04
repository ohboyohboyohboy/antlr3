

/** Match a group of template definitions beginning
 *  with a group name declaration.  Templates are enclosed
 *  in double-quotes or <<...>> quotes for multi-line templates.
 *  Template names have arg lists that indicate the cardinality
 *  of the attribute: present, optional, zero-or-more, one-or-more.
 *  Here is a sample group file:

	group nfa;

	// an NFA has edges and states
	nfa(states,edges) ::= <<
	digraph NFA {
	rankdir=LR;
	<states; separator="\\n">
	<edges; separator="\\n">
	}
	>>

	state(name) ::= "node [shape = circle]; <name>;"

 */
grammar Group;

/*options {
    k=3;
}*/

@members {
protected StringTemplateGroup group;

public void reportError(RecognitionException e) {
  if ( group!=null ) {
      group.error("template group parse error", e);
  }
  else {
      System.err.println("template group parse error: "+e);
      e.printStackTrace(System.err);
  }
}
}


@header {
/*
 [The "BSD licence"]
 Copyright (c) 2003-2004 Terence Parr
 All rights reserved.

 Redistribution and use in source and binary forms, with or without
 modification, are permitted provided that the following conditions
 are met:
 1. Redistributions of source code must retain the above copyright
    notice, this list of conditions and the following disclaimer.
 2. Redistributions in binary form must reproduce the above copyright
    notice, this list of conditions and the following disclaimer in the
    documentation and/or other materials provided with the distribution.
 3. The name of the author may not be used to endorse or promote products
    derived from this software without specific prior written permission.

 THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR
 IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
 OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
 IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT,
 INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
 NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
 THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
 THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/
package org.antlr.stringtemplate.language;
import org.antlr.stringtemplate.*;
import java.util.*;
}


group[StringTemplateGroup g]
@init {
this.group = g;
}
	:	'group' name=ID {g.setName(name.getText());}
		( COLON s=ID {g.setSuperGroup(s.getText());} )?
	    ( 'implements' i=ID {g.implementInterface(i.getText());}
	      (COMMA i2=ID {g.implementInterface(i2.getText());} )*
	    )?
	    SEMI
	    ( template[g] | mapdef[g] )+
    ;

template[StringTemplateGroup g]
@init {
    Map formalArgs = null;
    StringTemplate st = null;
    boolean ignore = false;
    String templateName=null;
    int line = LT(1).getLine();
}
	:	(	AT scp=ID DOT region=ID
			{
			templateName=g.getMangledRegionName(scope.getText(),region.getText());
	    	if ( g.isDefinedInThisGroup(templateName) ) {
	        	g.error("group ")
	    }
		|	name=ID {templateName = name.getText();}
			{
			if ( g.isDefinedInThisGroup(templateName) ) {
				g.error("redefinition of template: ' )
			}
			}
		)
        {if ( st!=null ) {st.setGroupFileLine(line);}}
	    LPAREN
	        (args[st]|{st.defineEmptyFormalArgumentList();})
	    RPAREN
	    DEFINED_TO_BE
	    (	t=STRING     {st.setTemplate(t.getText());}
	    |	bt=BIGSTRING {st.setTemplate(bt.getText());}
	    )

	|   alias=ID DEFINED_TO_BE target=ID
	    {g.defineTemplateAlias(alias.getText(), target.getText());}
	;

args[StringTemplate st]
  :	arg[st] ( COMMA arg[st] )*
	;

arg[StringTemplate st]
@init {
	StringTemplate defaultValue = null;
}
	:	name=ID
		(	ASSIGN s=STRING
			{ defaultValue=new StringTemplate("$_val_$') }
		|	ASSIGN bs=ANONYMOUS_TEMPLATE
			{defaultValue=new StringTemplate(st.getGroup(), bs.getText());
			defaultValue.setName("<")}
		)?
        {st.defineFormalArgument(name.getText(), defaultValue);}
    ;

/*
suffix returns [int cardinality=FormalArgument.REQUIRED]
    :   OPTIONAL {cardinality=FormalArgument.OPTIONAL;}
    |   STAR     {cardinality=FormalArgument.ZERO_OR_MORE;}
    |   PLUS     {cardinality=FormalArgument.ONE_OR_MORE;}
	|
    ;
    */

mapdef[StringTemplateGroup g]
@init {
Map m=null;
}
	:	name=ID
	  DEFINED_TO_BE m=map
	  { 
	    if ( g.getMap(name.getText())!=null ) {
	        g.error("redefinition of map:")
	     }}
	;

map /* cannot use = (yet) in v3: returns [Map mapping=new HashMap()]*/
	:   LBRACK mapPairs[mapping] RBRACK
	;
	
mapPairs [Map mapping]
    : keyValuePair[mapping] (COMMA keyValuePair[mapping])*
      (COMMA defaultValuePair[mapping])?
    | defaultValuePair[mapping] 
    ;	
	
defaultValuePair[Map mapping]
@init {
StringTemplate v = null;
}
	:	'default' COLON v=keyValue
        {mapping.put(ASTExpr.DEFAULT_MAP_VALUE_NAME, v);}
	;

keyValuePair[Map mapping]
@init {
StringTemplate v = null;
}
	:	key=STRING COLON v=keyValue {mapping.put(key.getText(), v);}
	;

keyValue /* cannot use = (yet) in v3: returns [StringTemplate value=null]*/
	:	s1=BIGSTRING	{value = new StringTemplate(group,s1.getText());}
	|	s2=STRING		{value = new StringTemplate(group,s2.getText());}
	|	k=ID			'k.getText().equals("key'
						{value = ASTExpr.MAP_KEY_VALUE;}
	|					{value = null;}
	;



/*options {
	k=2;
	charVocabulary = '\u0000'..'\uFFFE';
    testLiterals=false;
}*/

ID
/*options {
    testLiterals=true;
}*/
	:	('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'0'..'9'|'-'|'_')*
	;

STRING
	:	'"'! ( '\\'! '"' | '\\' ~'"' | ~'"' )* '"'!
	;

BIGSTRING
	:	'<<'!
	 	(/*options {greedy=true;}('\r'!)?'\n'! {newline();})? // consume 1st \n
		(	/*options {greedy=false;}*/  // stop when you see the >>
			{LA(3)=='>'&&LA(4)=='>'}? '\r'! '\n'! {newline();} // kill last \r\n
		|	{LA(2)=='>'&&LA(3)=='>'}? '\n'! {newline();}       // kill last \n
		|	('\r')? '\n' {newline();}                          // else keep
		|	'\\'! '>'  // \> escape
		|	.
		)*
        '>>'!
	;

ANONYMOUS_TEMPLATE
@init {
List args=null;
StringTemplateToken t = null;
}
	:	'{'!
		(	/*options {greedy=false;}*/  // stop when you see the >>
			('\r')? '\n' {newline();}                          // else keep
		|	'\\'! '}'   // \} escape
		|	.
		)*
	    '}'!
	;


AT	:	'@' ;
LPAREN: '(' ;
RPAREN: ')' ;
LBRACK: '[' ;
RBRACK: ']' ;
COMMA:  ',' ;
DOT:  '.' ;
DEFINED_TO_BE:  '::=' ;
SEMI:   ';' ;
COLON:  ':' ;
STAR:   '*' ;
PLUS:   '+' ;
ASSIGN:   '=' ;
OPTIONAL : '?' ;

// Single-line comments
SL_COMMENT
    :   '//'
        (~('\n'|'\r'))* (('\r')? '\n')?
        {$setType(Token.SKIP); newline();}
    ;

// multiple-line comments
ML_COMMENT
    :   '/*'
        (   
            /*options {
                greedy=false;
            }*/
           ('\r')? '\n'    {newline();}
        |   .
        )*
        '*/'
        {$setType(Token.SKIP);}
    ;

// Whitespace -- ignored
WS  :   (   ' '
        |   '\t'
        |   '\f'
        |   ('\r')? '\n' { newline(); }
        )+
        { $setType(Token.SKIP); }
    ;
