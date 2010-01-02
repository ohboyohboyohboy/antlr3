rewriteRuleRefRoot(rule) ::= <<
root_<treeLevel> = @adaptor.become_root(stream_<rule>.next_node(), root_<treeLevel>)<\n>
>>