wildcardRuleRoot(label,elementIndex) ::= <<
<super.wildcard(...)>
<gatedAction({
tree_for_<label> = @adaptor.create_with_payload!(<label; format="label">)
root_0 = @adaptor.become_root(tree_for_<label>, root_0)
})>
>>