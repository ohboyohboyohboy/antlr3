/** A (..)+ block with 0 or more alternatives */
positiveClosureBlock(alts,decls,decision,enclosingBlockLevel,blockLevel,decisionNumber,maxK,maxAlt,description) ::= <<
# at file <description>
<decls>
<@loopBody>
<positiveClosureBlockLoop()>
<@end>
>>