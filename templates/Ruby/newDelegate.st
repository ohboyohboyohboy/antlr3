newDelegate(gram) ::= <<
<gram.name>.new(<trunc(gram.delegators):{p|<p:delegateName()>, }>self, @input, :state => @state<@delegateOptions()>)
>>