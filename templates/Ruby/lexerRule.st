/** How to generate a rule in the lexer; naked blocks are used
  * for fragment rules.
  */
lexerRule(ruleName,nakedBlock,ruleDescriptor,block,memoize) ::= <<
# lexer rule <ruleName; format="lexerRule"> (<ruleName>)
# (in <fileName>)
def <ruleName; format="lexerRule"><if(ruleDescriptor.parameterScope)>(<ruleDescriptor.parameterScope:parameterScope(scope=it)>)<endif>
  <traceIn()><ruleScopeSetUp()><ruleDeclarations()><if(memoize)>
<if(backtracking)>
  
  # backtracking success
  success = false<\n>
<endif>
<endif>
<if(nakedBlock)>
  <ruleMemoization({<ruleName; format="lexerRule">})><lexerRuleLabelDefs()><action(name="init", code=ruleDescriptor.actions.init)>
  
  # - - - - main rule block - - - -
  <block>
<else>

  type = <ruleName>
  channel = ANTLR3::DEFAULT_CHANNEL
  <ruleMemoization(ruleName)><lexerRuleLabelDefs()><action(name="init", code=ruleDescriptor.actions.init)>
  
  # - - - - main rule block - - - -
  <block>
  <ruleCleanUp()>
  
  @state.type = type
  @state.channel = channel
<(ruleDescriptor.actions.after):execAction()>
<endif>
<if(memoize)><if(backtracking)>
  success = false<\n>
<endif><endif>
ensure
  <traceOut()><ruleScopeCleanUp()><memoize()>
end
<! <if(ruleDescriptor.modifier)>

<ruleDescriptor.modifier> :<ruleName; format="lexerRule"><\n>
<endif> !>
>>