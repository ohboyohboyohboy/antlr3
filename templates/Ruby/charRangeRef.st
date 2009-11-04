/** match a character range */
charRangeRef(a,b,label) ::= <<
<if(label)>
<label; format="label"> = @input.peek<\n>
<endif>
match_range(<a>, <b>)
>>