


ruleRefRuleRoot(rule,label,elementIndex,args,scope) ::= <<
_last = @input.look
<super.ruleRef(...)>
<if(!rewriteMode)>
<gatedAction({
root_<treeLevel> = @adaptor.become_root(<label; format="label">.tree, root_<treeLevel>)
})>
<endif>
>>