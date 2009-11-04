

dfaDecision(decisionNumber,description) ::= <<
begin
  @state.cyclic_decision = true
  <super.dfaDecision(...)>
rescue ANTLR3::Error::NoViableAlternative => nvae
  @debug_listener.recognition_exception(nvae)
  raise
end
>>