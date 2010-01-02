ruleCleanUp() ::= <<
<super.ruleCleanUp()>
<if(!rewriteMode)>
<gatedAction({
return_value.tree = @adaptor.rule_post_processing(root_0)
})>
<endif>
>>