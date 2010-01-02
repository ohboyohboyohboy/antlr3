ruleAttributeScopeClass(scope) ::= <<
<if(scope.attributes)>
Scope<scope.name> = Struct.new(<scope.attributes:{:<it.decl>}; separator=", ">)<\n>
<endif>
>>