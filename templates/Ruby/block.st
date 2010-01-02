/** A (...) subrule with multiple alternatives */
block(alts,decls,decision,enclosingBlockLevel,blockLevel,decisionNumber,maxK,maxAlt,description) ::= <<
# at line <description>
alt_<decisionNumber> = <maxAlt>
<decls>
<@body><blockBody()><@end>
>>