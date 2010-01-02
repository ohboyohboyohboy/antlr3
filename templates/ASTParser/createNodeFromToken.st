createNodeFromToken(label,hetero) ::= <<
<if(hetero)>
<hetero; format="constantPath">.new(<label; format="label">)
<else>
@adaptor.create_with_payload!(<label; format="label">)
<endif>
>>