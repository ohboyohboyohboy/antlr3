ANTLR Version 3 for Ruby
    by Kyle Yetter (kcy5b@yahoo.com)
    http://antlr3.rubyforge.org

== DESCRIPTION:

Fully-featured ruby parser generation for ANTLR version 3.

ANTLR (ANother Tool for Language Recognition) is a powerful code-generation tool
written by Terrence Parr. It is used to generate code for performing a variety
of language recognition tasks, including lexing, parsing, abstract syntax tree
generation and manipulation, and tree structure recognition. The tool operates
simillarly to other parser generators, taking in a grammar file written in the
special ANTLR metalanguage and outputting source code that implements desired
functionality. However, ANTLR's metalanguage provides more power and flexability
than most traditional parser generators, largely due to its LALR-based `LL*'
recognition strategy.

For more information on ANTLR itself, visit http://www.antlr.org

While the tool itself is implemented in Java, it has an extensible design that
allows for code generation in foreign programming languages. To implement an
ANTLR language target, a developer may supply a set of templates written in the
StringTemplate (http://www.stringtemplate.org) language.

ANTLR is currently distributed with a fairly limited Ruby target implementation.
While it does provide implementation for basic lexer and parser classes, the
target does not provide any implementation for abstract syntax tree
construction, tree parser class generation, input translation, or a number of
the other ANTLR features that give the program an edge over traditional code
generators.

This gem packages together a complete implementation of the majority of features
ANTLR provides for other language targets, such as Java and Python. It contains:

* StringTemplate target templates for Ruby
* A RubyTarget java class for the ANTLR Tool library
* A complete ANTLR JAR that integrates these templates and classes
* a runtime library that collects classes used throughout generated ruby code
* a few extra utilities for working with ANTLR grammars and output

== FEATURES

This package provides the necessary templates and libraries for generating
ruby code with ANTLR that is capable of:

* performing lexical analysis on text (aka tokenizing text)
* parsing lexical output and responding with arbitrary actions 
* building Abstract Syntax Trees (ASTs)
* walking or parsing arbitrary tree structures and reacting with arbitrary
  blocks of code
* translating text into some desired output using token rewriting

Some possible applications of these capabilities include:

* code compilation with ruby
* source code highlighting and formatting
* domain-specific language implementation
* source code extraction and analysis

== ISSUES

=== Getting The Whole Mess to Work For Ya

I wrote this target implementation independently; it is a replacement for the
ruby target that comes bundled with ANTLR. As a consequence, to use this target
and the runtime libraries, you must either use the antlr4ruby command-line
utility or manually integrate the target's templates and java code into your
local ANTLR3 jar.

=== The Template Output Option

The target is intended to be as complete and fully-featured as ANTLR's Java and Python targets. However, I do not provide any implementation of the template-construction mode available for Java and Python targets. 

While I'm interested in having this capability, I have not implemented it yet because ANTLR requires you to use its StringTemplate templating language. Thus, I would have to port the StringTemplate library to Ruby and write a target for ST parser generation. Doing so would also add an additional library dependency and add more complexity to this project.

I would prefer to permit template generation that uses ruby's standard ERB templating library, which would ultimately be more comfortable, familliar, and useful for most ruby developers (by which I don't mean any disrepect to Terrence Parr's java-based StringTemplate library). This may be possible without any imposition upon ANTLR itself, but I have not studied ANTLR's template-output generation with enough depth yet to try out any ideas.

== LICENSE

[The "BSD licence"]
Copyright (c) 2009 Kyle Yetter
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions
are met:

 1. Redistributions of source code must retain the above copyright
    notice, this list of conditions and the following disclaimer.
 2. Redistributions in binary form must reproduce the above copyright
    notice, this list of conditions and the following disclaimer in the
    documentation and/or other materials provided with the distribution.
 3. The name of the author may not be used to endorse or promote products
    derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR
IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT,
INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

