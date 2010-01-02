dfaState(k,edges,eotPredictsAlt,description,stateNumber,semPredState) ::= <<
look_<decisionNumber>_<stateNumber> = @input.peek(<k>)<\n>
<edges; separator="\nels">
else
<if(eotPredictsAlt)>
  alt_<decisionNumber> = <eotPredictsAlt><\n>
<else>
  <ruleBacktrackFailure()>nvae = NoViableAlternative("<description>", <decisionNumber>, <stateNumber>)
  <@noViableAltException>raise nvae<@end><\n>
<endif>
end
>>