

@parserBody.additionalMembers() ::= <<
<if(grammar.grammarIsRoot)>
RULE_NAMES = [
  :invalid_rule, <grammar.allImportedRules:{rST|:<rST.name>}; wrap="\n  ", separator=", ">
].freeze
<endif>
>>