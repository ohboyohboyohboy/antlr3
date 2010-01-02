/** match a character */
charRef(char,label) ::= <<
<if(label)>
<label; format="label"> = @input.peek<\n>
<endif>
match(<char>)
>>