/** How to generate code for a rule.  This includes any return
  * type data aggregates required for multiple return values.
  */
rule(ruleName, ruleDescriptor, block, emptyRule, description, exceptions, finally, memoize) ::= <<
<returnScope(scope=ruleDescriptor.returnScope)>

# parser rule <ruleName>
# 
# (in <fileName>)
# <description>
def <ruleName><if(ruleDescriptor.parameterScope)>(<ruleDescriptor.parameterScope:parameterScope(scope=it)>)<endif>
  <traceIn()><ruleScopeSetUp()><ruleDeclarations()><ruleLabelDefs()><action(name="init", code=ruleDescriptor.actions.init)>
  <@body><ruleBody()><@end>
  
  return <ruleReturnValue()>
end
<if(ruleDescriptor.modifier)>

<ruleDescriptor.modifier> :<ruleName> rescue nil<\n>
<endif>
>>