ruleDeclarations() ::= <<
<if(ruleDescriptor.hasMultipleReturnValues)>
return_value = <returnStructName(r=ruleDescriptor)>.new

# $rule.start = the first token seen before matching
return_value.start = @input.look<\n>
<else>
<ruleDescriptor.returnScope.attributes:{a|<a.name> = <if(a.initValue)><a.initValue><else>nil<endif><\n>}>
<endif>
<if(memoize)>
<ruleDescriptor.name>_start_index = @input.index<\n>
<endif>
>>