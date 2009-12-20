placeAction(scope, name) ::= <<
<if(actions.(scope).(name))>
# - - - - - - begin action @<scope>::<name> - - - - - -
<if(fileName)># <fileName><\n><endif>
<actions.(scope).(name)>
# - - - - - - end action @<scope>::<name> - - - - - - -<\n>
<endif>
>>