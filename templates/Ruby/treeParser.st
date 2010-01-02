/** How to generate a tree parser; same as parser except the
  * input stream is a different type.
  */
treeParser(grammar, name, scopes, tokens, tokenNames, globalAction, rules, numRules, bitsets, labelType={<ASTLabelType>}, ASTLabelType="Object", superClass="ANTLR3::TreeParser", members={<actions.treeparser.members>}, filterMode) ::= <<
<if(grammar.grammarIsRoot)><autoloadDelegates()><endif>

class <if(grammar.grammarIsRoot)>TreeParser<else><grammar.name><endif> \< <superClass>
  <parserBody(inputStreamType="TreeNodeStream", rewriteElementType="Node", actionScope="treeparser", ...)>
end # class <if(grammar.grammarIsRoot)>TreeParser<else><grammar.name><endif> \< <superClass>
<if(!actions.(actionScope).main)>

at_exit { <if(grammar.grammarIsRoot)>TreeParser<else><grammar.name><endif>.main(ARGV) } if __FILE__ == $0
<endif>
>>