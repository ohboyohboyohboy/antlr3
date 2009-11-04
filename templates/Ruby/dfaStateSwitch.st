/** A DFA state where a SWITCH may be generated.  The code
  * generator decides if this is possible:
  * CodeGenerator.canGenerateSwitch().
  */
dfaStateSwitch(k,edges,eotPredictsAlt,description,stateNumber,semPredState) ::= <<
case look_<decisionNumber> = @input.peek(<k>)
<edges; separator="\n">
else
<if(eotPredictsAlt)>
  alt_<decisionNumber> = <eotPredictsAlt><\n>
<else>
  <ruleBacktrackFailure()>
  nvae = NoViableAlternative("<description>", <decisionNumber>, <stateNumber>)
  <@noViableAltException>raise nvae<@end><\n>
<endif>
end
>>