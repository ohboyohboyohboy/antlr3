/** An alternative is just a list of elements; at outermost
  * level
  */
alt(elements,altNum,description,autoAST,outerAlt,treeLevel,rew) ::= <<
# at line <description>
<elements:element()><rew>
>>