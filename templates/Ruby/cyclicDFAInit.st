

cyclicDFAInit(dfa) ::= <<
<if(dfa.specialStateSTs)>
@dfa<dfa.decisionNumber> = DFA<dfa.decisionNumber>.new(self, <dfa.decisionNumber>) do |s|
  case s
  <dfa.specialStateSTs:{state|when <i0>
  <state>}; separator="\n">
  end
  
  if s \< 0
<if(backtracking)>
    @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed<\n>
<endif>
    nva = ANTLR3::Error::NoViableAlternative.new(@dfa<dfa.decisionNumber>.description, <dfa.decisionNumber>, s, input)
    @dfa<dfa.decisionNumber>.error(nva)
    raise nva
  end
  
  s
end<\n>
<else>
@dfa<dfa.decisionNumber> = DFA<dfa.decisionNumber>.new(self, <dfa.decisionNumber>)<\n>
<endif>
>>