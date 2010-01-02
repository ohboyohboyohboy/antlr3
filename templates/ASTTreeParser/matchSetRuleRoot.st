matchSetRuleRoot(s,label,hetero,elementIndex,debug) ::= <<
<super.matchSet(..., postmatchCode={
<if(!rewriteMode)>
<gatedAction({
<if(hetero)>
tree_for_<label> = <hetero; format="constantPath">.new(<label; format="label">)
<else>
tree_for_<label> = @adaptor.copy_node(<label; format="label">)
<endif><\n>
root_<treeLevel> = @adaptor.become_root(tree_for_<label>, root_<treeLevel>)
})>
<endif>
})>
>>