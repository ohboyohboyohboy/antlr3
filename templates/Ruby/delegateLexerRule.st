


delegateLexerRule(ruleDescriptor) ::= <<
# delegated lexer rule <ruleDescriptor.name; format="lexerRule"> (<ruleDescriptor.name> in the grammar)
def <ruleDescriptor.name; format="lexerRule">(<ruleDescriptor.parameterScope:parameterScope(scope=it)>)
  <methodCall(del=ruleDescriptor.grammar, n={<ruleDescriptor.name; format="lexerRule">}, args=ruleDescriptor.parameterScope.attributes)>
end
>>