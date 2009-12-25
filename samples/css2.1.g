header {
	package com.hawkis.srcscan.css;
}

class CSSParser extends Parser;
options {
	k=2;
}

stylesheet
  : (CHARSET_SYM STRING ";")?
    (WS|CDO|CDC)* (importCSS (WS|CDO|CDC)* )*
    ((ruleset | media | page) (WS|CDO|CDC)* )*
  ;
  
importCSS
  : IMPORT_SYM
    (STRING|URI) (IDENT (COMMA IDENT)* )? ";"
  ;
  
media
  : MEDIA_SYM IDENT (COMMA IDENT)* LBRACE (ruleset)* "}"
  ;
  
page
  : PAGE_SYM (pseudo_page)?
    LBRACE declaration (";" declaration)* "}"
  ;
  
pseudo_page
  : ":" IDENT
  ;
  
operator
  : "/" | COMMA | /* empty */
  ;
  
combinator
  : PLUS
  | GREATER
  ;
  
unary_operator
  : "-" | PLUS
  ;
  
ruleset
  : selector (COMMA selector)*
    LBRACE (declaration)* "}"
  ;
	
selector
  : (simple_selector)+ (combinator simple_selector)*
  ;
  
simple_selector
  : element_name (HASH | classDecl | attrib | pseudo)*
  | (HASH | classDecl | attrib | pseudo)
  ;
  
classDecl
  : c:CLASSDECL
  ;
	
declaration
  : i:IDENT	":"	expr (prio)? ";"
  ;
  
expr
  : term (operator term)*
  ;
  
term
	:	(unary_operator)? (IDENT | TERM |STRING)
	;
  
element_name
  : IDENT | "*"
  ;
  
attrib
  : "[" IDENT (("=" | INCLUDES | DASHMATCH) (IDENT | STRING))? "]"
  ;
  
pseudo
  : ":" (IDENT | IDENT "(" (IDENT)? ")")
  ;
  
prio
  : IMPORTANT_SYM
  ;
	
function
  : IDENT "(" expr ")"
  ;
  
class CSSLexer extends Lexer;
options {
	k=4;
	charVocabulary='\u0003'..'\uFFFF';
}

CDO			:	"<!--";
CDC			:	"-->";
INCLUDES	:	"~=";
DASHMATCH	:	"|=";
LBRACE		:	'{';
RBRACE		:	'}';
PLUS		:	'+';
GREATER		:	'>';
COMMA		:	',';
DOT			:	'.';
COLON		:	':';
SEMI		:	';';
STAR		:	'*';

IMPORT_SYM
	:	"@import"
	;

PAGE_SYM
	:	"@page"
	;

MEDIA_SYM
	:	"@media"
	;

CHARSET_SYM
	:	"@charset"
	;

IMPORTANT_SYM
	:	"!" WS "important"
	;

CLASSDECL
	: DOT IDENT
	;

// Whitespace -- ignored
WS	:	(	' '
		|	'\t'
		|	'\f'
			// handle newlines
		|	(	options {generateAmbigWarnings=false;}
			:	"\r\n"	// Evil DOS
			|	'\r'	// Macintosh
			|	'\n'	// Unix (the right way)
			)
			{ newline(); }
		)+
		{ _ttype = Token.SKIP; }
	;

// string literals
STRING
	:	'"'! (ESC|~('"'|'\\'|'\n'|'\r'))* '"'!
	|	'\''! (ESC|~('\''|'\\'|'\n'|'\r'))* '\''!
	;

HEX
	: '\\' ('0'..'9' | 'a'..'f' | 'A'..'F')+ (WS)+
	;
	
URI
	: "url(" (STRING | URL) ")"
	;

// Single-line comments
SL_COMMENT
	:	"//"
		(~('\n'|'\r'))* ('\n'|'\r'('\n')?)
		{$setType(Token.SKIP); newline();}
	;
	
// multiple-line comments
COMMENT
	:	"/*"
		(	/*	'\r' '\n' can be matched in one alternative or by matching
				'\r' in one iteration and '\n' in another. I am trying to
				handle any flavor of newline that comes in, but the language
				that allows both "\r\n" and "\r" and "\n" to all be valid
				newline is ambiguous. Consequently, the resulting grammar
				must be ambiguous. I'm shutting this warning off.
			 */
			options {
				generateAmbigWarnings=false;
			}
		:
			{ LA(2)!='/' }? '*'
		|	'\r' '\n'		{newline();}
		|	'\r'			{newline();}
		|	'\n'			{newline();}
		|	~('*'|'\n'|'\r')
		)*
		"*/"
		{$setType(Token.SKIP);}
	;

IDENT
	:	NMSTART (NMCHAR)*
	;

TERM
	:	LENGTH
	|	HASH
	|	ANGLE
	|	TIME
	|	FREQ
	|	HASH
	|	NUM
	|	URI
	|	NMSTART (NMCHAR)*
	|	FONT_NAME
	|	EMS
	|	EXS
	;
	
// hexadecimal digit (again, note it's protected!)
protected
HEX_DIGIT
	:	('0'..'9'|'A'..'F'|'a'..'f')
	;

// escape sequence -- note that this is protected; it can only be called
// from another lexer rule -- it will not ever directly return a token to
// the parser
// There are various ambiguities hushed in this rule. The optional
// '0'...'9' digit matches should be matched here rather than letting
// them go back to STRING_LITERAL to be matched. ANTLR does the
// right thing by matching immediately; hence, it's ok to shut off
// the FOLLOW ambig warnings.
protected
ESC
	:	'\\'
		(	'n'
		|	'r'
		|	't'
		|	'b'
		|	'f'
		|	'"'
		|	'\''
		|	'\\'
		|	('u')+ HEX_DIGIT HEX_DIGIT HEX_DIGIT HEX_DIGIT
		|	'0'..'3'
			(
				options {
					warnWhenFollowAmbig = false;
				}
			:	'0'..'7'
				(
					options {
						warnWhenFollowAmbig = false;
					}
				:	'0'..'7'
				)?
			)?
		|	'4'..'7'
			(
				options {
					warnWhenFollowAmbig = false;
				}
			:	'0'..'7'
			)?
		)
	;
protected
NONASCII
	:	'\200'..'\377'
	;

protected
NMSTART
	:	'_' | '-' | 'a'..'z'| 'A'..'Z' | NONASCII | ESC
	;

protected
NMCHAR
	:	NMSTART | '0'..'9'
	;

protected
NAME
	:	(NMCHAR)+
	;

protected
NUM
	:	('0'..'9')+ | ('0'..'9')* '.' ('0'..'9')+
	;

protected
HASH
	:	'#' NAME
	;

protected
EMS	:	"em";

protected
EXS	:	"ex";

protected
PX	:	"px";

protected
CM	:	"cm";

protected
MM	:	"mm";

protected
IN	:	"in";

protected
PT	:	"pt";

protected
PC	:	"pc";

protected
PERCENT
	: '%'
	;

protected
LENGTH
	:	NUM (PX | PERCENT | CM | MM | IN | PT | PC)?
	;
	
protected
DEG	:	"deg";

protected
RAD	:	"rad";

protected
GRAD:	"grad";

protected
ANGLE
	:	NUM (DEG | RAD | GRAD)
	;
	
protected
MS	:	"ms";

protected
S	:	"s";

protected
TIME
	:	NUM (MS | S)
	;

protected
HZ	:	"hz";

protected
KHZ	:	"khz";

protected
FREQ
	: NUM (HZ | KHZ)?
	;

protected
FONT_NAME
	: (STRING | NAME) (COMMA (STRING | NAME))*
	;

protected
URL
	:	('!'|'#'|'$'|'%'|'&'|'*'|'-'|'~'|'/'|':'|NONASCII|ESC)*
	;
