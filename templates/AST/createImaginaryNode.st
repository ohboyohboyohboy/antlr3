createImaginaryNode(tokenType,hetero,args) ::= <<
<if(hetero)>
<hetero; format="constantPath">.new(create_token(<tokenType>)<if(args)>, <args; separator=", "><endif>)
<else>
<if(!args)>@adaptor.create_from_type!(<tokenType>, "<tokenType>")
<else>@adaptor.create!(<tokenType>, <args; separator=", ">)
<endif>
<endif>
>>