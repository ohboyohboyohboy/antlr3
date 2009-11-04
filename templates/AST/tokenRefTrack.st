tokenRefTrack(token,label,elementIndex,hetero) ::= <<
<tokenRefBang(...)> <! Track implies no auto AST construction!>
<gatedAction({stream_<token>.add(<label; format="label">)})>
>>