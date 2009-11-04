rewriteAltFirst(a) ::= <<
<if(a.pred)>
if <a.pred>
  # <a.description>
  <a.alt>
<else>
# <a.description>
<a.alt>
<endif>
>>