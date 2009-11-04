/** For now, sets are interval tests and must be tested inline */
matchSet(s,label,elementIndex,postmatchCode) ::= <<
<if(label)>
<label; format="label"> = @input.look<\n>
<endif>
if <s>
  @input.consume
  <postmatchCode>
<if(!LEXER)>
  @state.error_recovery = false<\n>
<endif>
else
  <ruleBacktrackFailure()>
  mse = MismatchedSet(nil)
  <@mismatchedSetException()>
<if(LEXER)>
  recover(mse)
  raise mse<\n>
<else>
  raise mse<\n>
<endif>
end
<\n>
>>