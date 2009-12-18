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
/*--------------------------------------------------------------------------
 *  Copyright 2007 Taro L. Saito
 *
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 *--------------------------------------------------------------------------*/
//--------------------------------------
// XerialJ Project
//
// JSON.g
// Since: Apr 26, 2007
//
//--------------------------------------

grammar JSON;
options
{
  language=Java;
  output=AST;
//	charVocabulary='\u0000'..'\uFFFE';
}

tokens
{
  OBJECT;
  ELEMENT;
  ARRAY;
  STRING;
  INTEGER;
  DOUBLE;
}

@lexer::header
{
//--------------------------------------
// XerialJ Project
//
// JSONLexer.java
// Since: Apr 26, 2007
//
//--------------------------------------
package org.xerial.json.impl;
}

@header
{
//--------------------------------------
// Xerial Project
//
// JSONParser.java
// Since: Apr 26, 2007
//
//--------------------------------------
package org.xerial.json.impl;
}

@rulecatch {

}

// lexer rules
Colon: ':';
Comma: ',';
LBrace: '{';
RBrace: '}';
LBracket: '[';
RBracket: ']';
fragment Dot: '.';
TRUE:  'true';
FALSE: 'false';
NULL: 'null';

fragment Digit: '0' .. '9';
fragment HexDigit: ('0' .. '9' | 'A' .. 'F' | 'a' .. 'f');
fragment UnicodeChar: ~('"'| '\\');
fragment StringChar :  UnicodeChar | EscapeSequence;

fragment EscapeSequence
  : '\\' ('\"' | '\\' | '/' | 'b' | 'f' | 'n' | 'r' | 't' | 'u' HexDigit HexDigit HexDigit HexDigit)
  ;

fragment Int: '-'? ('0' | '1'..'9' Digit*);
fragment Frac: Dot Digit+;
fragment Exp: ('e' | 'E') ('+' | '-')? Digit+;

WhiteSpace: (' ' | '\r' | '\t' | '\u000C' | '\n') { $channel=HIDDEN; };

String: '"' StringChar* '"';
Integer: Int;
Double:  Int (Frac Exp? | Exp);

// parser rules
jsonObject
  : object
  ;

jsonArray
  : array
  ;	


object
  : LBrace (objectElement (Comma objectElement)*)? RBrace
    -> ^(OBJECT objectElement*)
  ;

objectElement
  : String Colon value
    -> ^(ELEMENT String value)
  ;	

array
  : LBracket value (Comma value)* RBracket
    -> ^(ARRAY value+)
  ;


value
  : String -> ^(STRING String)
  | Integer -> ^(INTEGER Integer)
  | Double -> ^(DOUBLE Double)
  | object  
  | array  
  | TRUE   
  | FALSE
  | NULL
  ;
