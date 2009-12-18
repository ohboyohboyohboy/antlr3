$real_stdout = $stdout.dup
$stdout.reopen( $stderr )
$progress = proc do | c |
  $real_stdout.putc( c )
  $real_stdout.flush
end

require 'benchmark'

$load_times = {}
$lexing = Array.new( 10 )
$parsing = Array.new( 10 )
$trials = [ $load_times, $lexing, $parsing ]

$dump = proc do | obj, status |
  $progress[ ?~ ]
  Marshal.dump( obj, $real_stdout )
  $real_stdout.flush
  exit!( status )
end

$input_data = DATA.read
at_exit { $! ? $dump[ $!, 1 ] : $dump[ $trials, 0 ] }

$progress[ ?. ]
$load_times[ "/home/kyle/lib/ruby/projects/antlr3/test/benchmark/ANTLRv3/ANTLRv3Lexer.rb" ] = Benchmark.measure { load( "/home/kyle/lib/ruby/projects/antlr3/test/benchmark/ANTLRv3/ANTLRv3Lexer.rb" ) }
$progress[ ?. ]
$load_times[ "/home/kyle/lib/ruby/projects/antlr3/test/benchmark/ANTLRv3/ANTLRv3Parser.rb" ] = Benchmark.measure { load( "/home/kyle/lib/ruby/projects/antlr3/test/benchmark/ANTLRv3/ANTLRv3Parser.rb" ) }

10.times do | i |
  $progress[ ?. ]
  $lexing[ i ] = Benchmark.measure do
    $input_stream = ANTLR3::StringStream.new( $input_data )
    $lexer = ANTLRv3::Lexer.new( $input_stream )
    $tokens = ANTLR3::CommonTokenStream.new( $lexer )
  end
  $progress[ ?. ]
  $parsing[ i ] = Benchmark.measure do
    $parser = ANTLRv3::Parser.new( $tokens )
    $parser_return = $parser.grammar_def
  end
end

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
