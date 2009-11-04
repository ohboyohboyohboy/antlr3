lexer(grammar, name, tokens, scopes, rules, numRules, labelType="ANTLR3::Token", filterMode, superClass="ANTLR3::Lexer") ::= <<
<if(grammar.grammarIsRoot)><autoloadDelegates()><endif>

class <if(grammar.delegator)><grammar.name><else>Lexer<endif> \< <superClass>
  @grammar_home = <grammar.name>
  <if(!grammar.grammarIsRoot)><autoloadDelegates()><\n><endif>
  include TokenData
<if(filterMode)>
  include ANTLR3::FilterMode<\n>
<endif>
  <scopes:{<if(it.isDynamicGlobalScope)><globalAttributeScopeClass(scope=it)><\n><endif>}>
  begin
    generated_using('<fileName>', '<ANTLRVersion>')
  rescue NoMethodError => error
    error.name.to_sym == :generated_using or raise
  end
  
  RULE_NAMES   = [<trunc(rules):{r|"<r.ruleName>"}; separator=", ", wrap="\n", anchor>].freeze
  RULE_METHODS = [<trunc(rules):{r|:<r.ruleName; format="lexerRule">}; separator=", ", wrap="\n", anchor>].freeze

<if(grammar.delegators)>
  masters( <grammar.delegators:{d|:<d.name>}; separator=", "> )<\n>
<endif>
<if(grammar.directDelegates)>
  imports( <grammar.directDelegates:{d|:<d.name>}; separator=", "> )<\n>
<endif>
  
  def initialize(<grammar.delegators:{g|<g:delegateName()>, }>input=nil, options = {})
    super(input, options)
<if(memoize)>
<if(grammar.grammarIsRoot)>
    @state.rule_memory = {}<\n>
<endif>
<endif>
    <grammar.delegators:{g|@<g:delegateName()> = <g:delegateName()><\n>}><grammar.directDelegates:{g|@<g:delegateName()> = <newDelegate(g)><\n>}><last(grammar.delegators):{g|@parent = @<g:delegateName()><\n>}>
<if(actions.lexer.init)>
    
    # - - - - - - - - - - @init - - - - - - - - - - - - - - -
    <actions.lexer.init><\n>
<endif>
  end
<if(actions.lexer.members)>
  
  # - - - - - - - - - - custom @members - - - - - - - - - - -
  <actions.lexer.members>
<endif>
  
  # - - - - - - - - - - - lexer rules - - - - - - - - - - - -
  <rules:{<it><\n>}>
<if(grammar.delegatedRules)>
  
  # - - - - - - - - - - delegated rules - - - - - - - - - - -
  <grammar.delegatedRules:{ruleDescriptor|<delegateLexerRule(ruleDescriptor)><\n><\n>}>
<endif>
<if(cyclicDFAs)>
  
  # - - - - - - - - - - DFA definitions - - - - - - - - - - -
  <cyclicDFAs:cyclicDFA()>
  
  private
  
  def initialize_dfas
    super rescue nil
    <cyclicDFAs:cyclicDFAInit()>
  end

<endif>
end # class <if(grammar.delegator)><grammar.name><else>Lexer<endif> \< <superClass>
<if(!actions.(actionScope).main)>

at_exit { <if(grammar.delegator)><grammar.name><else>Lexer<endif>.main(ARGV) } if __FILE__ == $0
<endif>
>>