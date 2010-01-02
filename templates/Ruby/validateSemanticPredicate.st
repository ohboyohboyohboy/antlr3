/** Every predicate is used as a validating predicate (even when
  * it is also hoisted into a prediction expression).
  */
validateSemanticPredicate(pred,description) ::= <<
unless (<evalPredicate(...)>)
  raise FailedPredicate("<ruleName>", "<description>")
end
>>