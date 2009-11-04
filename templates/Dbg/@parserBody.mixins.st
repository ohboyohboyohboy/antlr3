@parserBody.mixins() ::= <<
include ANTLR3::<if(profile)>Profile<else>Debug<endif>::ParserEvents
>>