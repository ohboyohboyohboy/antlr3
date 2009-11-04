
tree(root, actionsAfterRoot, children, nullableChildList,
     enclosingTreeLevel, treeLevel) ::= <<
_last = @input.look
_save_last_<treeLevel> = _last
_first_<treeLevel> = nil
<if(!rewriteMode)>
root_<treeLevel> = @adaptor.create_flat_list!<\n>
<endif>
<root:element()>
<if(rewriteMode)>
<gatedAction({
<if(root.el.rule)>
_first_<enclosingTreeLevel>.nil? and _first_<enclosingTreeLevel> = <root.el.label; format="label">.tree<\n>
<else>
_first_<enclosingTreeLevel>.nil? and _first_<enclosingTreeLevel> = <root.el.label; format="label"><\n>
<endif>
})>
<endif>
<actionsAfterRoot:element()>
<if(nullableChildList)>
if @input.peek == DOWN
  match(DOWN, nil)
  <children:element()>
  match(UP, nil)
end
<else>
match(DOWN, nil)
<children:element()>
match(UP, nil)<\n>
<endif>
<if(!rewriteMode)>
@adaptor.add_child(root_<enclosingTreeLevel>, root_<treeLevel>)<\n>
<endif>
_last = _save_last_<treeLevel>

>>