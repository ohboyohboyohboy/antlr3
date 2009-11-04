

rewriteTree(root,children,description,enclosingTreeLevel,treeLevel) ::= <<
# at line <description>
root_<treeLevel> = @adaptor.create_flat_list!
<root:rewriteElement()>
<children:rewriteElement()>
@adaptor.add_child(root_<enclosingTreeLevel>, root_<treeLevel>)<\n>
>>