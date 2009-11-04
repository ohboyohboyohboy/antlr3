delegateGrammarModuleTail(gram) ::= <<
<if(gram.grammarIsRoot)>
end # module <gram.name>
<else>
end # class <gram.name>
<delegateGrammarModuleTail(gram=gram.delegator)><\n>
<endif>
>>