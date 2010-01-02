/** Match a rule reference by invoking it possibly with
  * arguments and a return value or values.
  */
ruleRef(rule,label,elementIndex,args,scope) ::= <<
@state.following.push(TOKENS_FOLLOWING_<rule.name>_IN_<ruleName>_<elementIndex>)
<if(label)><label; format="label"> = <endif><methodCall(del=scope, n={<rule.name>}, args=args)>
@state.following.pop
>>