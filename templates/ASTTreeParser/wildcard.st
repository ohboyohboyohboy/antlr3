


wildcard(token,label,elementIndex,hetero) ::= <<
_last = @input.look
<super.wildcard(...)>
<if(!rewriteMode)>
<gatedAction({
tree_for_<label> = @adaptor.copy_tree(<label; format="label">)
@adaptor.add_child(root_<treeLevel>, tree_for_<label>)
})>
<else> <! rewrite mode !>
<gatedAction({
_first_<treeLevel> and _first_<treeLevel> = <label; format="label">
})>
<endif>
>>