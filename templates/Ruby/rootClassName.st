rootClassName() ::= <<
<if(grammar.grammarIsRoot)><grammar.name><else><grammar.composite.rootGrammar.name><endif>::<if(TREE_PARSER)>TreeParser<elseif(PARSER)>Parser<else>Lexer<endif>
>>