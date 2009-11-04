
wildcard(label,elementIndex) ::= <<
<super.wildcard(...)>
<gatedAction({
tree_for_<label> = @adaptor.create_with_payload!(<label; format="label">)
@adaptor.add_child(root_0, tree_for_<label>)
})>
>>