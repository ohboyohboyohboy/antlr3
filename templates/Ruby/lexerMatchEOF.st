/** EOF in the lexer */
lexerMatchEOF(label,elementIndex) ::= <<
<if(label)>                                     
<label; format="label">_start_<elementIndex> = character_index
match(ANTLR3::EOF)
<label; format="label"> = create_token do |t|
  t.input   = @input
  t.type    = ANTLR3::INVALID_TOKEN_TYPE
  t.channel = ANTLR3::DEFAULT_CHANNEL
  t.start   = <label; format="label">_start_<elementIndex>
  t.stop    = character_index - 1
end<\n>
<else>
match(ANTLR3::EOF)<\n>
<endif>
>>