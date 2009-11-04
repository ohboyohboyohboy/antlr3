/** A simpler version of a rule template that is specific to the
  * imaginary rules created for syntactic predicates.  As they
  * never have return values nor parameters etc..., just give
  * simplest possible method.  Don't do any of the normal
  * memoization stuff in here either; it's a waste. As
  * predicates cannot be inlined into the invoking rule, they
  * need to be in a rule by themselves.
  */
synpredRule(ruleName, ruleDescriptor, block, description, nakedBlock) ::= <<
# parser rule <ruleName; format="lexerRule"> (<ruleName>)
# 
# (in <fileName>)
# <description>
def <ruleName; format="lexerRule"><if(ruleDescriptor.parameterScope)>(<ruleDescriptor.parameterScope:parameterScope(scope=it)>)<endif>
  <traceIn()><ruleLabelDefs()>
  <block>
ensure
  <traceOut()>
end
>>