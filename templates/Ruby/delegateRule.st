delegateRule(ruleDescriptor) ::= <<
# delegated rule <ruleDescriptor.name>
def <ruleDescriptor.name>(<ruleDescriptor.parameterScope:parameterScope(scope=it)>)
  <methodCall(del=ruleDescriptor.grammar, n=ruleDescriptor.name, args={<ruleDescriptor.parameterScope.attributes:{<it.name>}>})>
end
>>