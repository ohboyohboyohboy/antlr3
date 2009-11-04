/** match ^(root children) in tree parser */
tree(root, actionsAfterRoot, children, nullableChildList, enclosingTreeLevel, treeLevel) ::= <<
<root:element()>
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
match(UP, nil)
<endif>
>>