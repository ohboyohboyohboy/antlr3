
tokenRef(token,label,elementIndex,hetero) ::= <<
_last = @input.look
<super.tokenRef(...)>
<if(!rewriteMode)>
<gatedAction({
<if(hetero)>
tree_for_<label> = <hetero; format="constantPath">.new(<label; format="label">)
<else>
tree_for_<label> = @adaptor.copy_node(<label; format="label">)
<endif><\n>
@adaptor.add_child(root_<treeLevel>, tree_for_<label>)
})>
<else> <! rewrite mode !>
<gatedAction({
_first_<treeLevel> ||= <label; format="label"><\n>
})>
<endif>
>>