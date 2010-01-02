createRewriteNodeFromElement(token,hetero,args) ::= <<
<if(hetero)>
<hetero; format="constantPath">.new(stream_<token>.next<if(args)>, <args; separator=", "><endif>)
<else>
<if(args)><! must create new node from old !>
<! need to call different adaptor.create!*() methods depending of argument count !>
<if(!args)>@adaptor.create_from_type!(<token>, "<token>")
<else><if(!rest(args))>@adaptor.create_from_token!(<token>, <first(args)>)
<else><if(!rest(rest(args)))>@adaptor.create_from_token!(<token>, <first(args)>, <first(rest(args))>)
<endif>
<endif>
<endif>
<else>
stream_<token>.next_node
<endif>
<endif>
>>