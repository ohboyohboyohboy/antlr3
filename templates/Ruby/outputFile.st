/** The overall file structure of a recognizer; stores methods
  * for rules and cyclic DFAs plus support code.
  */
outputFile(LEXER, PARSER, TREE_PARSER, actionScope, actions, docComment, recognizer, name,
  tokens, tokenNames, rules, cyclicDFAs, bitsets, buildTemplate, buildAST, rewriteMode,
  profile, backtracking, synpreds, memoize, numRules, fileName, ANTLRVersion, generatedTimestamp,
  trace, scopes, superClass, literals) ::=
<<
#!/usr/bin/env ruby
#
# <fileName>
# 
# Generated using ANTLR version: <ANTLRVersion>
# Ruby runtime library version: <runtimeLibraryVersion()>
# Input grammar file: <fileName>
# Generated at: <generatedTimestamp>
# 

# ~~~\> start load path setup
this_directory = File.expand_path( File.dirname( __FILE__ ) )
$:.unshift( this_directory ) unless $:.include?( this_directory )

antlr_load_failed = proc do
  load_path = $LOAD_PATH.map { |dir| '  - ' \<\< dir }.join( $/ )
  raise LoadError, \<\<-'END'.strip!
  
Failed to load the ANTLR3 runtime library (version <runtimeLibraryVersion()>):

Ensure the library has been installed on your system and is available
on the load path. If rubygems is available on your system, this can
be done with the command:
  
  gem install antlr3

Current load path:
#{ load_path }

  END
end

defined?(ANTLR3) or begin
  
  # 1: try to load the ruby antlr3 runtime library from the system path
  require 'antlr3'
  
rescue LoadError
  
  # 2: try to load rubygems if it isn't already loaded
  defined?(Gem) or begin
    require 'rubygems'
  rescue LoadError
    antlr_load_failed.call
  end
  
  # 3: try to activate the antlr3 gem
  begin
    Gem.activate( 'antlr3', '= <runtimeLibraryVersion()>' )
  rescue Gem::LoadError
    antlr_load_failed.call
  end
  
  require 'antlr3'
  
end
# \<~~~ end load path setup

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