matchSet(s,label,hetero,elementIndex,postmatchCode) ::= <<
_last = @input.look
<super.matchSet(..., postmatchCode={
<if(!rewriteMode)>
<gatedAction({
<if(hetero)>
tree_for_<label> = <hetero; format="constantPath">.new(<label; format="label">)
<else>
tree_for_<label> = @adaptor.copy_node(<label; format="label">)
<endif><\n>
@adaptor.add_child(root_<treeLevel>, tree_for_<label>)
})>
<endif>
})>
>>