


/* * * * * * * * * * * * * R U L E   H E L P E R S * * * * * * * * * * * * */

traceIn() ::= <<
<if(trace)>
trace_in(__method__, <ruleDescriptor.index>)<\n>
<else>
# -> uncomment the next line to manually enable rule tracing
# trace_in(__method__, <ruleDescriptor.index>)<\n>
<endif>
>>