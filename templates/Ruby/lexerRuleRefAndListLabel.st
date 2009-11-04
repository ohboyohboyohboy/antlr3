/** i+=INT in lexer */
lexerRuleRefAndListLabel(rule,label,args,elementIndex,scope) ::= <<
<lexerRuleRef(...)>
<addToList(elem={<label; format="label">},...)>
>>