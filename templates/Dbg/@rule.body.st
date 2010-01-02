@rule.body() ::= <<
in_rule(grammar_file_name, "<ruleName>") do
  @debug_listener.location(<ruleDescriptor.tree.line>, <ruleDescriptor.tree.column>)
  
  <@super.body()>
  
  @debug_listener.location(<ruleDescriptor.EORNode.line>, <ruleDescriptor.EORNode.column>)
end
>>