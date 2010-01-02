/** Match a string literal */
lexerStringRef(string,label) ::= <<
<if(label)>
<label; format="label">_start = self.character_index
match(<string>)
<label; format="label"> = create_token do |t|
  t.input   = @input
  t.type    = ANTLR3::INVALID_TOKEN_TYPE
  t.channel = ANTLR3::DEFAULT_CHANNEL
  t.start   = <label; format="label">_start
  t.stop    = character_index - 1
end
<else>
match(<string>)
<endif>
>>