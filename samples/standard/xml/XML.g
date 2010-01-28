lexer grammar XML;
options { language = Ruby; }

@members {
  def quote(text)
    text = text.gsub(/\"/, '\\"')
    \%("#{ text }")
  end
}

DOCUMENT
    :  XMLDECL? WS? DOCTYPE? WS? ELEMENT WS? 
    ;

fragment DOCTYPE
    :
        '<!DOCTYPE' WS rootElementName=GENERIC_ID 
        {puts("ROOTELEMENT: " + $rootElementName.text)}
        WS
        ( 
            ( 'SYSTEM' WS sys1=VALUE
        {puts("SYSTEM: " + $sys1.text)}
                
            | 'PUBLIC' WS pub=VALUE WS sys2=VALUE
                {puts("PUBLIC: " + $pub.text)}
                {puts("SYSTEM: " + $sys2.text)}   
            )
            ( WS )?
        )?
        ( dtd=INTERNAL_DTD
            {puts("INTERNAL DTD: " + $dtd.text)}
        )?
    '>'
  ;

fragment INTERNAL_DTD : '[' (options {greedy=false;} : .)* ']' ;

fragment PI :
        '<?' target=GENERIC_ID WS? 
          {puts("PI: " + $target.text)}
        ( ATTRIBUTE WS? )*  '?>'
  ;

fragment XMLDECL :
        '<?' ('x'|'X') ('m'|'M') ('l'|'L') WS? 
          {puts("XML declaration")}
        ( ATTRIBUTE WS? )*  '?>'
  ;


fragment ELEMENT
    : ( START_TAG
            (ELEMENT
            | t=PCDATA
                {puts("PCDATA: " << quote($t.text))}
            | t=CDATA
                {puts("CDATA: " << quote($t.text))}
            | t=COMMENT
                {puts("Comment: " << quote($t.text))}
            | pi=PI
            )*
            END_TAG
        | EMPTY_ELEMENT
        )
    ;

fragment START_TAG 
    : '<' WS? name=GENERIC_ID WS?
          {puts("Start Tag: " + $name.text)}
        ( ATTRIBUTE WS? )* '>'
    ;

fragment EMPTY_ELEMENT 
    : '<' WS? name=GENERIC_ID WS?
          {puts("Empty Element: " + $name.text)}
        ( ATTRIBUTE WS? )* '/>'
    ;

fragment ATTRIBUTE 
    : name=GENERIC_ID WS? '=' WS? value=VALUE
        {puts("Attr: " + $name.text + " = "+ $value.text)}
    ;

fragment END_TAG 
    : '</' WS? name=GENERIC_ID WS? '>'
        {puts("End Tag: " + $name.text)}
    ;

fragment COMMENT
  :	'<!--' (options {greedy=false;} : .)* '-->'
  ;

fragment CDATA
  :	'<![CDATA[' (options {greedy=false;} : .)* ']]>'
  ;

fragment PCDATA : (~'<')+ ; 

fragment VALUE : 
        ( '\"' (~'\"')* '\"'
        | '\'' (~'\'')* '\''
        )
  ;

fragment GENERIC_ID 
    : ( LETTER | '_' | ':') 
        ( options {greedy=true;} : LETTER | '0'..'9' | '.' | '-' | '_' | ':' )*
  ;

fragment LETTER
  : 'a'..'z' 
  | 'A'..'Z'
  ;

fragment WS  :
        (   ' '
        |   '\t'
        |  ( '\n'
            |	'\r\n'
            |	'\r'
            )
        )+
    ;    
