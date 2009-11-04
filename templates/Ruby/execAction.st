/** How to execute an action */
execAction(action) ::= <<
<if(backtracking)>
# syntactic predicate action gate test
if <actions.(actionScope).synpredgate>
  # --> action
  <action>
  # \<-- action
end
<else>
# --> action
<action>
# \<-- action
<endif>
>>