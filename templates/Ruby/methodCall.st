/** helper template to format a ruby method call */
methodCall(n, del, args) ::= <<
<if(del)>@<del:delegateName()>.<endif><n><if(args)>(<args; seperator=", ">)<endif>
>>