

ruleMemoization(name) ::= <<
<if(memoize)>
# rule memoization
if @state.backtracking > 0 and already_parsed_rule?(__method__)
  success = true
  return <ruleReturnValue()>
end<\n>
<endif>
>>