

// Region overrides that tell various constructs to add debugging triggers
@block.body() ::= <<
in_subrule(<decisionNumber>) do
  <@super.body()>
end
>>