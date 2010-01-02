/** A lexer rule reference */
lexerRuleRef(rule,label,args,elementIndex,scope) ::= <<
<if(label)>
<label; format="label">_start_<elementIndex> = self.character_index
<methodCall(n={<rule.name; format="lexerRule">},del=scope,args=args)>
<label; format="label"> = create_token do |t|
  t.input   = @input
  t.type    = ANTLR3::INVALID_TOKEN_TYPE
  t.channel = ANTLR3::DEFAULT_CHANNEL
  t.start   = <label; format="label">_start_<elementIndex>
  t.stop    = self.character_index - 1
end
<else>
<methodCall(n={<rule.name; format="lexerRule">}, del=scope, args=args)>
<endif>
>>