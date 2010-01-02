/** $x is either global scope or x is rule with dynamic scope;
  * refers to stack itself not top of stack.  This is useful for
  * predicates like {$function.size()>0 &&
  * $function::name.equals("foo")}?
  */
isolatedDynamicScopeRef(scope) ::= "@<scope>_stack"