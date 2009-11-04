

dfaOptionalBlockStateSwitch(k, edges, eotPredictsAlt, description, stateNumber, semPredState) ::= <<
case look_<decisionNumber> = @input.peek(<k>)
<edges; separator="\n">
end
>>