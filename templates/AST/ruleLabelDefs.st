ruleLabelDefs() ::= <<
<super.ruleLabelDefs()>
<[ruleDescriptor.tokenLabels,ruleDescriptor.wildcardTreeLabels,ruleDescriptor.wildcardTreeListLabels,ruleDescriptor.tokenListLabels]
    :{tree_for_<it.label.text> = nil}; separator="\n">
<ruleDescriptor.allTokenRefsInAltsWithRewrites
    :{stream_<it> = ANTLR3::AST::RewriteRule<rewriteElementType>Stream.new(@adaptor, "token <it>")}; separator="\n">
<ruleDescriptor.allRuleRefsInAltsWithRewrites
    :{stream_<it> = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule <it>")}; separator="\n">
>>