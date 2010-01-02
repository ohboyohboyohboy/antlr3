ruleBacktrackFailure() ::= <<
<if(backtracking)>
@state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)<\n>
<endif>
>>