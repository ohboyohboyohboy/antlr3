


noRewrite(rewriteBlockLevel, treeLevel) ::= <<
<gatedAction({
<if(rewriteMode)>
return_value.tree = _first_0
if @adaptor.parent(return_value.tree) && @adaptor.flat_list?(@adaptor.parent(return_value.tree))
  return_value.tree = @adaptor.parent(return_value.tree)
end
<endif>
})>
>>