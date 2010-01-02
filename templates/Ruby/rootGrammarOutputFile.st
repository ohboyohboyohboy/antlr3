rootGrammarOutputFile() ::= <<
module <recognizer.grammar.name>
  <placeAction(scope="module",name="head")>
  <tokenDataModule()>
  <recognizer>
  <placeAction(scope="module",name="foot")>
end
>>