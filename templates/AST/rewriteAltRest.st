rewriteAltRest(a) ::= <<
<if(a.pred)>
if <a.pred>
  # <a.description>
  <a.alt>
<else>
e <! little hack to get if .. elsif .. else block right !>
  # <a.description>
  <a.alt>
end
<endif>
>>