
createRewriteNodeFromElement(token,hetero,scope) ::= <<
<if(hetero)>
<hetero; format="constantPath">.new(stream_<token>.next_node)
<else>
stream_<token>.next_node
<endif>
>>