/** Generate the tables and support code needed for the DFAState
  * object argument.  Unless there is a semantic predicate (or
  * syn pred, which become sem preds), all states should be
  * encoded in the state tables. Consequently,
  * cyclicDFAState/cyclicDFAEdge,eotDFAEdge templates are not
  * used except for special DFA states that cannot be encoded as
  * a transition table.
  */
cyclicDFA(dfa) ::= <<
class DFA<dfa.decisionNumber> \< ANTLR3::DFA
  EOT = unpack(<dfa.javaCompressedEOT; anchor, separator=", ", wrap="\n">)
  EOF = unpack(<dfa.javaCompressedEOF; anchor, separator=", ", wrap="\n">)
  MIN = unpack(<dfa.javaCompressedMin; anchor, separator=", ", wrap="\n">)
  MAX = unpack(<dfa.javaCompressedMax; anchor, separator=", ", wrap="\n">)
  ACCEPT = unpack(<dfa.javaCompressedAccept; anchor, separator=", ", wrap="\n">)
  SPECIAL = unpack(<dfa.javaCompressedSpecial; anchor, separator=", ", wrap="\n">)
  TRANSITION = [
    <dfa.javaCompressedTransition:{s|unpack(<s; wrap="\n", anchor, separator=", ">)}; separator=",\n">
  ].freeze
  
  @decision = <dfa.decisionNumber>
  
  <@errorMethod()>
<if(dfa.description)>

  def description
    \<\<-'__dfa_description__'.strip!
      <dfa.description>
    __dfa_description__
  end<\n>
<endif>
end<\n>
>>