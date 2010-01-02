ruleRef(rule,label,elementIndex,args,scope) ::= <<
_last = @input.look
<super.ruleRef(...)>
<gatedAction({
<if(!rewriteMode)>
@adaptor.add_child(root_<treeLevel>, <label; format="label">.tree)
<else> <! rewrite mode !>
_first_<treeLevel>.nil? and _first_<treeLevel> = <label; format="label">.tree<\n>
<endif>
})>
>>