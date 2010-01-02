positiveClosureBlockLoop() ::= <<
match_count_<decisionNumber> = 0
loop do
  alt_<decisionNumber> = <maxAlt>
  <@decisionBody><decision><@end>
  case alt_<decisionNumber>
  <alts:altSwitchCase(); separator="\n">
  else
    match_count_<decisionNumber> > 0 and break
    <ruleBacktrackFailure()>
    eee = EarlyExit(<decisionNumber>)
    <@earlyExitException()><\n>
    raise eee
  end
  match_count_<decisionNumber> += 1
end<\n>
>>