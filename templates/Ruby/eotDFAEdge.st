/** An edge pointing at end-of-token; essentially matches any
  * char; always jump to the target.
  */
eotDFAEdge(targetStateNumber, edgeNumber, predicates) ::= <<
e
  s = <targetStateNumber><\n>
>>