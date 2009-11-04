returnScope(scope) ::= <<
<if(ruleDescriptor.hasMultipleReturnValues)>
<ruleDescriptor:returnStructName(r=it)> = define_return_scope <scope.attributes:{:<it.decl>}; separator=", ">
<endif>
>>