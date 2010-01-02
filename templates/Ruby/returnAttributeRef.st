returnAttributeRef(ruleDescriptor, attr) ::= <<
<if(ruleDescriptor.hasMultipleReturnValues)>
return_value.<attr.name>
<else>
<attr.name>
<endif>
>>