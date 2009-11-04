

scopeAttributeRef(scope, attr, index, negIndex) ::= <<
<if(negIndex)>
@<scope>_stack[-<negIndex>].<attr.name>
<else>
<if(index)>
@<scope>_stack[<index>].<attr.name>
<else>
@<scope>_stack[-1].<attr.name>
<endif>
<endif>
>>