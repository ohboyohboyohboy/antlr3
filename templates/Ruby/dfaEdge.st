/** A simple edge with an expression.  If the expression is
  * satisfied, enter to the target state.  To handle gated
  * productions, we may have to evaluate some predicates for
  * this edge.
  */
dfaEdge(labelExpr, targetState, predicates) ::= <<
if (<labelExpr>) <if(predicates)>and (<predicates>)<endif>
  <targetState>
>>