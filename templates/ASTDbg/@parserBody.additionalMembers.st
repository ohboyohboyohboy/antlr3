@parserBody.additionalMembers() ::= <<
def self.return_scope_members
  super.push(:tree)
end

attr_reader :adaptor
def adaptor=(adaptor)
  @adaptor = 
    adaptor.is_a?(ANTLR3::Debug::TreeAdaptor) ? adaptor : 
      ANTLR3::Debug::TreeAdaptor.wrap(adaptor, @debug_listener)
  <grammar.directDelegates:{g|<g:delegateName()>.adaptor = @adaptor}; separator="\n">
end

alias tree_adaptor adaptor
alias tree_adaptor= adaptor=

>>