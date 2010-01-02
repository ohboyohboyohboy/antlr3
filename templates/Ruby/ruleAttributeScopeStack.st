ruleAttributeScopeStack(scope) ::= <<
<if(scope.attributes)>
@<scope.name>_stack = []<\n>
<endif>
>>