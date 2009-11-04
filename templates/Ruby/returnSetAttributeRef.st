

returnSetAttributeRef(ruleDescriptor, attr, expr) ::= <<
<if(ruleDescriptor.hasMultipleReturnValues)>
return_value.<attr.name> = <expr>
<else>
<attr.name> = <expr>
<endif>
>>