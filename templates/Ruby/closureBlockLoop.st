closureBlockLoop() ::= <<
loop do  #loop <decisionNumber>
  alt_<decisionNumber> = <maxAlt>
  <@decisionBody><decision><@end>
  case alt_<decisionNumber>
  <alts:altSwitchCase(); separator="\n">
  else
    break #loop <decisionNumber>
  end
end
>>