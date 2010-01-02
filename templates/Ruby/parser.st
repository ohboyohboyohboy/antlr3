parser(
  grammar, name, scopes, tokens, tokenNames, rules, numRules, bitsets,
  ASTLabelType="Object", superClass="ANTLR3::Parser", labelType="ANTLR3::Token",
  members={<actions.parser.members>}
) ::= <<
<if(grammar.grammarIsRoot)><autoloadDelegates()><endif>

class <if(grammar.grammarIsRoot)>Parser<else><grammar.name><endif> \< <superClass>
  <parserBody(inputStreamType="ANTLR3::TokenStream", rewriteElementType="Token", actionScope="parser", ...)>
end # class <if(grammar.grammarIsRoot)>Parser<else><grammar.name><endif> \< <superClass>
<if(!actions.(actionScope).main)>

at_exit { <if(grammar.grammarIsRoot)>Parser<else><grammar.name><endif>.main(ARGV) } if __FILE__ == $0
<endif>
>>