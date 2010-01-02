/** A (..)* block with 0 or more alternatives */
closureBlock(alts,decls,decision,enclosingBlockLevel,blockLevel,decisionNumber,maxK,maxAlt,description) ::= <<
# at line <description>
<decls>
<@loopBody>
<closureBlockLoop()>
<@end>
>>