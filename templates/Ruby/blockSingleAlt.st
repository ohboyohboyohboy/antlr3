/** A special case of a (...) subrule with a single alternative */
blockSingleAlt(alts,decls,decision,enclosingBlockLevel,blockLevel,decisionNumber,description) ::= <<
# at line <description>
<decls>
<@prealt()>
<alts>
>>