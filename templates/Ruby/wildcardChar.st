/** Match . wildcard in lexer */
wildcardChar(label, elementIndex) ::= <<
<if(label)>
<label; format="label"> = @input.peek<\n>
<endif>
match_any
>>