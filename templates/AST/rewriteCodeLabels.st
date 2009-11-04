rewriteCodeLabels() ::= <<
<referencedTokenLabels:
{stream_<it> = <rewriteElementType; format="snakecase">_stream("token <it>", <it; format="label">)};
separator="\n">
<referencedTokenListLabels:
{stream_<it> = <rewriteElementType; format="snakecase">_stream("token <it>", list_of_<it; format="label">)};
separator="\n">
<referencedWildcardLabels:
{stream_<it> = subtree_stream("wildcard <it>", <it; format="label">)};
separator="\n">
<referencedWildcardListLabels:
{stream_<it> = subtree_stream("wildcard <it>", list_of_<it; format="label">)};
separator="\n">
<referencedRuleLabels:
{stream_<it> = <it; format="label"> ? subtree_stream("rule <it>", <it; format="label">.tree) : subtree_stream("token <it>")};
separator="\n">
<referencedRuleListLabels:
{stream_<it> = subtree_stream("token <it>", list_of_<it; format="label">)};
separator="\n">
>>