

traceOut() ::= <<
<if(trace)>
trace_out(__method__, <ruleDescriptor.index>)<\n>
<else>
# -> uncomment the next line to manually enable rule tracing
# trace_out(__method__, <ruleDescriptor.index>)<\n>
<endif>
>>