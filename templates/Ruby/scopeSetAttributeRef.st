

scopeSetAttributeRef(scope, attr, expr, index, negIndex) ::= <<
<if(negIndex)>
@<scope>_stack[-<negIndex>].<attr.name> = <expr>
<else>
<if(index)>
@<scope>_stack[<index>].<attr.name> = <expr>
<else>
@<scope>_stack[-1].<attr.name> = <expr>
<endif>
<endif>
>>