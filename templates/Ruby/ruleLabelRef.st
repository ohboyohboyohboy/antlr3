/** reference an attribute of rule; might only have single
  * return value
  */
ruleLabelRef(referencedRule, scope, attr) ::= <<
<if(referencedRule.hasMultipleReturnValues)>
(<scope; format="label">.nil? ? nil : <scope; format="label">.<attr.name>)
<else>
<scope; format="label">
<endif>
>>