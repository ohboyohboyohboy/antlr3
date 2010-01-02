ruleRefTrack(rule,label,elementIndex,args,scope) ::= <<
<super.ruleRef(...)>
<gatedAction({stream_<rule.name>.add(<label; format="label">.tree)})>
>>