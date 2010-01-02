rewriteCode(alts, description,
        referencedElementsDeep, // ALL referenced elements to right of ->
        referencedTokenLabels,
        referencedTokenListLabels,
        referencedRuleLabels,
        referencedRuleListLabels,
        referencedWildcardLabels,
        referencedWildcardListLabels,
        rewriteBlockLevel, enclosingTreeLevel, treeLevel) ::=
<<
# AST Rewrite
# elements: <referencedElementsDeep; separator=", ">
# token labels: <referencedTokenLabels; separator=", ">
# rule labels: <referencedRuleLabels; separator=", ">
# token list labels: <referencedTokenListLabels; separator=", ">
# rule list labels: <referencedRuleListLabels; separator=", ">
# wildcard labels: <[referencedWildcardLabels,referencedWildcardListLabels]; separator=", ">
<gatedAction({
<prevRuleRootRef(); format="label">.tree = root_0
<rewriteCodeLabels()>
root_0 = @adaptor.create_flat_list!
<first(alts):rewriteAltFirst(); anchor>

<rest(alts):{a| els<rewriteAltRest(a)>}; anchor, separator="\n\n">

<! if tree parser and rewrite=true !>
<if(TREE_PARSER)>
<if(rewriteMode)>
<prevRuleRootRef(); format="label">.tree = @adaptor.rule_post_processing(root_0)
@input.replace_children(
  @adaptor.parent(return_value.start),
  @adaptor.child_index(return_value.start),
  @adaptor.child_index(_last),
  return_value.tree
)<\n>
<endif>
<endif>

<! if parser or tree-parser and rewrite!=true, we need to set result !>
<if(!TREE_PARSER)>
<prevRuleRootRef(); format="label">.tree = root_0<\n>
<else>
<if(!rewriteMode)>
<prevRuleRootRef(); format="label">.tree = root_0<\n>
<endif>
<endif>
})>
>>