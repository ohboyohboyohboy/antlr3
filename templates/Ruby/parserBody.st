parserBody(grammar, name, scopes, tokens, tokenNames, rules, numRules, bitsets, inputStreamType, superClass, filterMode, ASTLabelType="Object", labelType, members, rewriteElementType, actionScope) ::= <<
@grammar_home = <grammar.name>
<if(!grammar.grammarIsRoot)><autoloadDelegates()><\n><endif>
<@mixins()>

RULE_METHODS = [<rules:{r|:<r.ruleName>}; separator=", ", wrap="\n", anchor>].freeze

<scopes:{<if(it.isDynamicGlobalScope)><globalAttributeScopeClass(scope=it)><\n><endif>}>
<rules:{<ruleAttributeScopeClass(scope=it.ruleDescriptor.ruleScope)>}>
<if(grammar.delegators)>
masters( <grammar.delegators:{d|:<d.name>}; separator=", "> )<\n>
<endif>
<if(grammar.directDelegates)>
imports( <grammar.directDelegates:{d|:<d.name>}; separator=", "> )<\n>
<endif>

include TokenData

generated_using( "<fileName>", "<ANTLRVersion>", "<runtimeLibraryVersion()>" )

<if(!grammar.grammarIsRoot)>
require '<grammar.composite.rootGrammar.recognizerName>'
include <grammar.composite.rootGrammar.name>::TokenData<\n><\n>
<endif>
<parserConstructor()>
<@additionalMembers()>
<members>
# - - - - - - - - - - - - Rules - - - - - - - - - - - - -
<rules:{<it><\n>}>

<if(grammar.delegatedRules)>
# - - - - - - - - - - Delegated Rules - - - - - - - - - - -
<grammar.delegatedRules:{ruleDescriptor|<delegateRule(ruleDescriptor)><\n>}>
<endif>
<if(cyclicDFAs)>
# - - - - - - - - - - DFA definitions - - - - - - - - - - -
<cyclicDFAs:{<cyclicDFA(it)>}>

private

def initialize_dfas
  super rescue nil
  <cyclicDFAs:{<cyclicDFAInit(it)>}>
end

<endif>
<bitsets:{TOKENS_FOLLOWING_<it.name>_IN_<it.inName>_<it.tokenIndex> = Set[<it.tokenTypes:{<it>}; separator=", ">]<\n>}>
>>