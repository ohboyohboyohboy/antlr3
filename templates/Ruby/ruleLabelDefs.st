

ruleLabelDefs() ::= <<
<[ruleDescriptor.tokenLabels,ruleDescriptor.tokenListLabels,ruleDescriptor.wildcardTreeLabels,ruleDescriptor.wildcardTreeListLabels]:{<it.label.text; format="label"> = nil<\n>}><[ruleDescriptor.tokenListLabels,ruleDescriptor.ruleListLabels,ruleDescriptor.wildcardTreeListLabels]:{list_of_<it.label.text; format="label"> = []<\n>}><[ruleDescriptor.ruleLabels,ruleDescriptor.ruleListLabels]:ruleLabelDef(label=it)><ruleDescriptor.ruleListLabels:{<it.label.text; format="label"> = nil<\n>}>
>>