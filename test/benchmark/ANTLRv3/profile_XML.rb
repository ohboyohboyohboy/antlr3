require 'ruby-prof'

$real_stdout = $stdout.dup
$stdout.reopen( $stderr )
$input_data = DATA.read

profile_data = RubyProf.profile do
  require( "/home/kyle/lib/ruby/projects/antlr3/test/benchmark/ANTLRv3/ANTLRv3Lexer.rb" )
  require( "/home/kyle/lib/ruby/projects/antlr3/test/benchmark/ANTLRv3/ANTLRv3Parser.rb" )

  $input_stream = ANTLR3::StringStream.new( $input_data )
  $lexer = ANTLRv3::Lexer.new( $input_stream )
  $tokens = ANTLR3::CommonTokenStream.new( $lexer )
  $parser = ANTLRv3::Parser.new( $tokens )
  $parser_return = $parser.grammar_def
end

report = RubyProf::GraphHtmlPrinter.new( profile_data )
report.print( $real_stdout )
__END__
lexer grammar XML;
options {language = Ruby;}

DOCUMENT
    :  XMLDECL? WS? DOCTYPE? WS? ELEMENT WS? 
    ;

fragment DOCTYPE
    :
      '<!DOCTYPE' WS rootElementName=GENERIC_ID
        WS
        ( 
            ( 'SYSTEM' WS sys1=VALUE
            | 'PUBLIC' WS pub=VALUE WS sys2=VALUE
            )
            ( WS )?
        )?
        ( dtd=INTERNAL_DTD )?
      '>'
  ;

fragment INTERNAL_DTD : '[' .* ']' ;

fragment PI : '<?' target=GENERIC_ID WS? ( ATTRIBUTE WS? )*  '?>' ;

fragment XMLDECL : '<?' ('x'|'X') ('m'|'M') ('l'|'L') WS?  ( ATTRIBUTE WS? )*  '?>' ;


fragment ELEMENT
    : ( START_TAG
            (ELEMENT
            | t=PCDATA
            | t=CDATA
            | t=COMMENT
            | pi=PI
            )*
            END_TAG
      | EMPTY_ELEMENT
      )
    ;

fragment START_TAG 
    : '<' WS? name=GENERIC_ID WS?
      ( ATTRIBUTE WS? )* '>'
    ;

fragment EMPTY_ELEMENT 
    : '<' WS? name=GENERIC_ID WS? ( ATTRIBUTE WS? )* '/>'
    ;

fragment ATTRIBUTE 
    : name=GENERIC_ID WS? '=' WS? value=VALUE
    ;

fragment END_TAG 
    : '</' WS? name=GENERIC_ID WS? '>'
    ;

fragment COMMENT
  :	'<!--' (options {greedy=false;} : .)* '-->'
  ;

fragment CDATA
  :	'<![CDATA[' .* ']]>'
  ;

fragment PCDATA : (~'<')+ ; 

fragment VALUE : 
        ( '\"' (~'\"')* '\"'
        | '\'' (~'\'')* '\''
        )
  ;

fragment GENERIC_ID 
  : ( LETTER | '_' | ':') (LETTER | '0'..'9' | '.' | '-' | '_' | ':')*
  ;

fragment LETTER
  : 'a'..'z' 
  | 'A'..'Z'
  ;

fragment WS  :
  ( ' ' | '\t' | ( '\n' |	'\r\n' |	'\r' ) )+
  ;