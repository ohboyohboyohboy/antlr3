/** Just like a fixed DFA edge, test the look and indicate
  * what state to jump to next if successful.  Again, this is
  * for special states.
  */
cyclicDFAEdge(labelExpr, targetStateNumber, edgeNumber, predicates) ::= <<
if (<labelExpr>)<if(predicates)> && (<predicates>)<endif>
  s = <targetStateNumber><\n>
>>