/** A DFA state that is actually the loopback decision of a
  * closure loop.  If end-of-token (EOT) predicts any of the
  * targets then it should act like a default clause (i.e., no
  * error can be generated). This is used only in the lexer so
  * that for ('a')* on the end of a rule anything other than 'a'
  * predicts exiting. *  If a semPredState, don't force
  * look lookup; preds might not need.
  */
dfaLoopbackState(k,edges,eotPredictsAlt,description,stateNumber,semPredState) ::= <<
look_<decisionNumber>_<stateNumber> = @input.peek(<k>)<\n>
<edges; separator="\nels"><\n>
<if(eotPredictsAlt)>
else
  alt_<decisionNumber> = <eotPredictsAlt><\n>
<endif>
end
>>