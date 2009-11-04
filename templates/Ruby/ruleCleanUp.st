

ruleCleanUp() ::= <<
<if(ruleDescriptor.hasMultipleReturnValues)>
<if(!TREE_PARSER)>
# - - - - - - - rule clean up - - - - - - - -
return_value.stop = @input.look(-1)<\n>
<endif>
<endif>
>>