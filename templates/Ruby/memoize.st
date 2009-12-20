memoize() ::= <<
<if(memoize)><if(backtracking)>
memoize(__method__, <ruleDescriptor.name>_start_index, success) if @state.backtracking > 0<\n>
<endif><endif>
>>