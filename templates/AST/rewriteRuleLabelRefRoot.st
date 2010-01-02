rewriteRuleLabelRefRoot(label) ::= <<
root_<treeLevel> = @adaptor.become_root(stream_<label>.next_node, root_<treeLevel>)<\n>
>>