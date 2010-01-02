/** Same as a normal DFA state except that we don't examine
  * look for the bypass alternative.  It delays error
  * detection but this is faster, smaller, and more what people
  * expect.  For (X)? people expect "if ( LA(1)==X ) match(X);"
  * and that's it. *  If a semPredState, don't force look
  * lookup; preds might not need.
  */
dfaOptionalBlockState(k,edges,eotPredictsAlt,description,stateNumber,semPredState) ::= <<
look_<decisionNumber>_<stateNumber> = @input.peek(<k>)<\n>
<edges; separator="\nels">
end
>>