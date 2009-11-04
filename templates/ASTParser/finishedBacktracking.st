gatedAction(block) ::= <<
<if(backtracking)>
if <actions.(actionScope).synpredgate>
  <block>
end
<else>
<block>
<endif>
>>