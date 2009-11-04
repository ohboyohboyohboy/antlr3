autoloadDelegates() ::= <<
<if(grammar.directDelegates)>
<grammar.directDelegates:{autoload :<it.name>, "<it.recognizerName>"<\n>}>
<endif>
>>