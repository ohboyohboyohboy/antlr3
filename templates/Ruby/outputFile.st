/** The overall file structure of a recognizer; stores methods
  * for rules and cyclic DFAs plus support code.
  */
outputFile(LEXER,PARSER,TREE_PARSER, actionScope, actions, docComment, recognizer, name, tokens, tokenNames, rules, cyclicDFAs, bitsets, buildTemplate, buildAST, rewriteMode, profile, backtracking, synpreds, memoize, numRules, fileName, ANTLRVersion, generatedTimestamp, trace, scopes, superClass, literals) ::=
<<
#!/usr/bin/env ruby
# 
# generated using ANTLR Version: <ANTLRVersion>
# input grammar file: <fileName>
# generated at: <generatedTimestamp>

this_directory = File.expand_path( File.dirname( __FILE__ ) )
$:.unshift( this_directory ) unless $:.include?( this_directory )

begin
  require 'rubygems'
  gem 'antlr3'
rescue LoadError
  # ignore load error and assume antlr3.rb is in the load path already
end

require 'antlr3'

<placeAction(scope=actionScope,name="header")>

<if(recognizer.grammar.grammarIsRoot)>
<rootGrammarOutputFile()>
<else>
<delegateGrammarOutputFile()>
<endif>

<placeAction(scope=actionScope,name="footer")>

<if(actions.(actionScope).main)>
if __FILE__ == $0 and ARGV.first != '--'
<placeAction(scope=actionScope,name="main")>
end
<endif>
>>