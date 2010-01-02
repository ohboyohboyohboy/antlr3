alt(elements,altNum,description,autoAST,outerAlt,treeLevel,rew) ::= <<
<if(autoAST)><if(outerAlt)><if(!rewriteMode)>
root_0 = @adaptor.create_flat_list!<\n><\n>
<endif><endif><endif>
# at line <description>
<elements:element()><rew>
>>