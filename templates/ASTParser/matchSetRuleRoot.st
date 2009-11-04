


matchSetRuleRoot(s,label,hetero,elementIndex,debug) ::= <<
<if(label)>
<label; format="label"> = @input.look<\n>
<endif>
<super.matchSet(..., postmatchCode={<gatedAction({root_0 = @adaptor.become_root(<createNodeFromToken(...)>, root_0)})>})>
>>