ruleLabelPropertyRef_text(scope, attr) ::= <<
<if(TREE_PARSER)>
(<scope; format="label">.nil? ? nil : @input.token_stream.to_s(
    @input.tree_adaptor.token_start_index(<scope; format="label">.start),
    @input.tree_adaptor.token_stop_index(<scope; format="label">.start)))
<else>
(<scope; format="label">.nil? ? nil : @input.to_s(<scope; format="label">.start,<scope; format="label">.stop))
<endif>
>>