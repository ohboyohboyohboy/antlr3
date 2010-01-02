/** Sometimes a look test cannot assume that LA(k) is in a
  * temp variable somewhere.  Must ask for the look
  * directly.
  */
isolatedLookaheadTest(atom, k, atomAsInt) ::= "@input.peek(<k>) == <atom>"