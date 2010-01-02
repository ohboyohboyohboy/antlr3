/** A special state in a cyclic DFA; special means has a
  * semantic predicate or it's a huge set of symbols to check.
  */
cyclicDFAState(decisionNumber, stateNumber, edges, needErrorClause, semPredState) ::= <<
look_<decisionNumber>_<stateNumber> = @input.peek
<if(semPredState)>
index_<decisionNumber>_<stateNumber> = @input.index
@input.rewind(@input.last_marker, false)<\n>
<endif>
s = -1
<edges; separator="els">end
<if(semPredState)> <! return input cursor to state before we rewound !>
@input.seek(index_<decisionNumber>_<stateNumber>)<\n>
<endif>
>>