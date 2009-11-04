#!/usr/bin/ruby
establish 'standard'

options = DATA.read.split(/\n\n/).map do |chunk|
  name, desc = chunk.split(/\n/,2)
  desc.strip!
  desc = desc.fold
  default = desc =~ (/ The default is (?:to )?(.*?)\.$/) ? $1 : nil
  desc[$~[0]] = '' if $~
  
  default =~ /\bfalse\b/ and default = 'false'
  [name, desc, default]
end

YAML.dump(options, $stdout) #.map { |i| i[2] }

__END__
language
Specify the target language in which ANTLR should generate recognizers.
ANTLR uses the CLASSPATH to find directory org/antlr/
codegen/templates/Java, in this case, used to generate Java. The default
is Java.

output
Generate output templates, template, or trees, AST. This is available
only for combined, parser, and tree grammars. Tree grammars
cannot currently output trees, only templates. The default is to
generate nothing.

backtrack
When true, indicates that ANTLR should backtrack when static
LL(*) grammar analysis fails to yield a deterministic decision. This
is usually used in conjunction with the memoize option. The default
is false.

memoize
Record partial parsing results to guarantee that while backtracking
the parser never parses the same input with the same rule
more than once. This guarantees linear parsing speed at the cost
of nonlinear memory. The default is false.

tokenVocab
Specify where ANTLR should get a set of predefined tokens and
token types. This is needed to have one grammar use the token
types of another. Typically a tree grammar will use the token types
of the parser grammar that creates its trees. The default is to not
import any token vocabulary.

rewrite
When the output of your translator looks very much like the input,
the easiest solution involves modifying the input buffer in-place.
Re-creating the entire input with actions just to change a small
piece is too much work. rewrite works in conjunction with output=
template. Template construction actions usually just set the
return template for the surrounding rule. When you use
rewrite=true, the recognizer also replaces the input matched by
the rule with the template. The default is false.

superClass
Specify the superclass of the generated recognizer. This is not
the supergrammar—it affects only code generation. The default
is Lexer, Parser, or TreeParser depending on the grammar type.

filter
Lexer only. All lexer rules are tried in order specified, looking for
a match. Upon finding a matching rule, nextToken( ) returns that
rule’s Token object. If no rule matches, the lexer consumes a single
character and again looks for a matching rule. The default is not
to filter, false.

ASTLabelType
Set the target language type for all tree labels and tree-valued
expressions. The default is Object.

TokenLabelType
Set the target language type for all token labels and token-valued
expressions. The default is interface Token.

k
Limit the recognizer generated from this grammar to use a maximum,
fixed-look depth of k. This turns off LL(*) analysis in
favor of classical LL(k). The default is * to engage LL(*).
