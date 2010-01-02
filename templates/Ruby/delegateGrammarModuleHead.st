delegateGrammarModuleHead(gram) ::= <<
<if(gram.grammarIsRoot)>
module <gram.name>
<else>
<delegateGrammarModuleHead(gram=gram.delegator)><\n>
class <gram.name>
<endif>
>>