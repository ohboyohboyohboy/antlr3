@ruleBody.setErrorReturnValue() ::= <<
return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)<\n>
>>