

// @blockBody.predecision() ::= "<enterSubRule()>"
// @blockBody.postdecision() ::= "<exitDecision()>"
// @blockBody.postbranch() ::= "<exitSubRule()>"
@blockBody.decision() ::= <<
in_decision(<decisionNumber>) do
  <@super.decision()>
end
>>