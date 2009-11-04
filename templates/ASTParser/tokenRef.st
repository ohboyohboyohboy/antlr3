
tokenRef(token,label,elementIndex,hetero) ::= <<
<super.tokenRef(...)>
<gatedAction({
tree_for_<label> = <createNodeFromToken(...)>
@adaptor.add_child(root_0, tree_for_<label>)
})>
>>