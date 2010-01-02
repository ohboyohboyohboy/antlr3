/** How to generate code for the implicitly-defined lexer
  * grammar rule that chooses between lexer rules.
  */
tokensRule(ruleName,nakedBlock,args,block,ruleDescriptor) ::= <<
# main rule used to study the input at the current position,
# and choose the proper lexer rule to call in order to
# fetch the next token
# 
# usually, you don't make direct calls to this method,
# but instead use the next_token method, which will
# build and emit the actual next token
def <ruleName; format="lexerRule">
  <block>
end
>>