parserConstructor() ::= <<
def initialize(<grammar.delegators:{g|<g:delegateName()>, }>input, options = {})
  super(input, options)
<if(memoize)><if(grammar.grammarIsRoot)>
  @state.rule_memory = {}
<endif><endif>
  <scopes:{<if(it.isDynamicGlobalScope)><globalAttributeScopeStack(scope=it)><\n><endif>}><rules:{<ruleAttributeScopeStack(scope=it.ruleDescriptor.ruleScope)>}>
  <placeAction(scope=actionScope,name="init")>
  <grammar.delegators:{g|@<g:delegateName()> = <g:delegateName()><\n>}><grammar.directDelegates:{g|@<g:delegateName()> = <newDelegate(g)><\n>}><last(grammar.delegators):{g|@parent = @<g:delegateName()><\n>}><@init()>
end
>>