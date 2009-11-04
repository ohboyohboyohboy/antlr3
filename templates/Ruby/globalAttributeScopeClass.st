

globalAttributeScopeClass(scope) ::= <<
<if(scope.attributes)>Scope<scope.name> = Struct.new(<scope.attributes:{:<it.decl>}; separator=", ">)<endif>
>>