

initializeDirectDelegate() ::= <<
@<g:delegateName()> = <g.name>::<recognizerClassName()>.new(<trunc(g.delegators):{p|<p:delegateName()>, }>self, input, options.merge(:state => @state))
>>