recognizerClassName() ::= <<
<if(TREE_PARSER)>TreeParser<elseif(PARSER)>Parser<else>Lexer<endif>
>>