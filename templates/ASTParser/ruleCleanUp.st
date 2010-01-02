ruleCleanUp() ::= <<
<super.ruleCleanUp()>
<gatedAction({
return_value.tree = @adaptor.rule_post_processing(root_0)
@adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)
})>
>>