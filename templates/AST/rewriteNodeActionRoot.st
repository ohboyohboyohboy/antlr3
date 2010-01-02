rewriteNodeActionRoot(action) ::= <<
root_<treeLevel> = @adaptor.become_root(<action>, root_<treeLevel>)<\n>
>>