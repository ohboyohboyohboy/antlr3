

ruleReturnValue() ::= <<
<if(!ruleDescriptor.isSynPred)>
<if(ruleDescriptor.hasReturnValue)>
<if(ruleDescriptor.hasSingleReturnValue)>
<ruleDescriptor.singleValueReturnName>
<else>
return_value
<endif>
<endif>
<endif>
>>