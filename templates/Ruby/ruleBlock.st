/** A rule block with multiple alternatives */
ruleBlock(alts,decls,decision,enclosingBlockLevel,blockLevel,decisionNumber,maxK,maxAlt,description) ::= <<
# at line <description>
alt_<decisionNumber> = <maxAlt>
<decls>
<@decision><decision><@end>
case alt_<decisionNumber>
<alts:altSwitchCase(); separator="\n">
end
>>