

lexerRuleLabelDefs() ::= <<
<if([ruleDescriptor.tokenLabels,ruleDescriptor.tokenListLabels,ruleDescriptor.ruleLabels,ruleDescriptor.charLabels,ruleDescriptor.tokenListLabels,ruleDescriptor.ruleListLabels])>
# - - - - label initialization - - - -
<[ruleDescriptor.tokenLabels,ruleDescriptor.tokenListLabels,ruleDescriptor.ruleLabels,ruleDescriptor.charLabels]:{<it.label.text; format="label"> = nil<\n>}>
<[ruleDescriptor.tokenListLabels,ruleDescriptor.ruleListLabels]:{list_of_<it.label.text; format="label"> = [] unless defined?(list_of_<it.label.text; format="label">)<\n>}>
<endif>
>>