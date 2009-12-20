dfaLoopbackStateSwitch(k, edges, eotPredictsAlt, description, stateNumber, semPredState) ::= <<
case look_<decisionNumber> = @input.peek(<k>)
<edges; separator="\n">
<if(eotPredictsAlt)>
else
  alt_<decisionNumber> = <eotPredictsAlt>
<endif>
end
>>