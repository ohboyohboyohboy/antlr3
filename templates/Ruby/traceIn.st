traceIn() ::= <<
<if(trace)>
trace_in(__method__, <ruleDescriptor.index>)<\n>
<else>
# -> uncomment the next line to manually enable rule tracing
# trace_in(__method__, <ruleDescriptor.index>)<\n>
<endif>
>>