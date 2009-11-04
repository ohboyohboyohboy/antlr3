

tokenDataModule() ::= <<
# TokenData defines all of the token type integer values
# as constants, which will be included in all 
# ANTLR-generated recognizers.
const_defined?(:TokenData) or TokenData = ANTLR3::TokenScheme.new

module TokenData
<if(tokens)>

  # define the token constants
  define_tokens(<tokens:{:<it.name> => <it.type>}; anchor, wrap="\n", separator=", ">)

<endif>
<if(tokenNames)>

  # register the proper human-readable name or literal value
  # for each token type
  #
  # this is necessary because anonymous tokens, which are
  # created from literal values in the grammar, do not
  # have descriptive names
  register_names(<tokenNames:{<it>}; separator=", ", anchor, wrap="\n">)

<endif>
<if(actions.token.scheme)>

  <action(name="token::scheme",code=actions.token.scheme)>

<endif>
<if(actions.token.members)>

  class Token
    <action(name="token::members",code=actions.token.members)>
  end

<endif>
end<\n>
>>