ruleBody() ::= <<
<if(memoize)><if(backtracking)>
success = false # flag used for memoization<\n>
<endif><endif>
begin
  <ruleMemoization(ruleName)><block><ruleCleanUp()><(ruleDescriptor.actions.after):execAction()>
<if(memoize)><if(backtracking)>
  success = true<\n>
<endif><endif>
<if(exceptions)>
  <exceptions:{e|<catch(decl=e.decl,action=e.action)><\n>}>
<else>
<if(!emptyRule)>
<if(actions.(actionScope).rulecatch)>

# - - - - - - - - @rulecatch - - - - - - - - 
<actions.(actionScope).rulecatch>
<else>
rescue ANTLR3::Error::RecognitionError => re
  report_error(re)
  recover(re)
  <@setErrorReturnValue()>
<endif>
<endif>
<endif>

ensure
  <traceOut()><memoize()><ruleScopeCleanUp()><finally>
end
>>