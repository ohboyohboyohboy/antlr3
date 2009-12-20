wildcard(label,elementIndex) ::= <<
<if(label)>
<label; format="label"> = @input.look<\n>
<endif>
match_any
>>