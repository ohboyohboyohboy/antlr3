/** match a token optionally with a label in front */
tokenRef(token,label,elementIndex,hetero) ::= <<
<if(label)><label; format="label"> = <endif>match(<token>, TOKENS_FOLLOWING_<token>_IN_<ruleName>_<elementIndex>)
>>