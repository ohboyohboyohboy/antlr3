/** The code to initiate execution of a cyclic DFA; this is used
  * in the rule to predict an alt just like the fixed DFA case.
  * The <name> attribute is inherited via the parser, lexer, ...
  */
dfaDecision(decisionNumber, description) ::= <<
alt_<decisionNumber> = @dfa<decisionNumber>.predict(@input)
>>