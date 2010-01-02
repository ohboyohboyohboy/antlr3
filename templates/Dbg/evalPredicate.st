/** Force predicate validation to trigger an event */
evalPredicate(pred,description) ::= <<
predicate?("<description>") { <pred> }
>>