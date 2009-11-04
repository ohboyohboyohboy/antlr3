ANTLR Version 3 for Ruby
    by Kyle Yetter (kcy5b@yahoo.com)
    http://antlr3.rubyforge.org

== DESCRIPTION:

Fully-featured ruby parser generation for ANTLR version 3.

ANTLR (ANother Tool for Language Recognition) is a tool that is used to generate
code for performing a variety of language recognition tasks, such as lexing,
parsing, abstract syntax tree generation and manipulation, and tree structure
recognition. The tool operates simillarly to other parser generators, taking in
a grammar file written in the special ANTLR metalanguage and outputting source
code that implements desired functionality.

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

* StringTemplate target templates for Ruby (which you must manually integrate
  into your local ANTLR package)
* A RubyTarget java class which also must be manually integrated compiled into   
  your local ANTLR package
* a runtime library that collects classes used throughout generated ruby code
* some extra utilities for working with ANTLR grammars

== FEATURES

-> generates ruby code capable of:
   * lexing text input
   * parsing lexical output and responding with arbitrary actions 
   * constructing Abstract Syntax Trees (ASTs)
   * parsing AST structure and responding with arbitrary actions
  * translating input source to some desired output format

-> this package serves to be a powerful assistance when writing ruby source code
   intended for performing tasks like:
   * code compilation
   * source code highlighting and formatting
   * domain-specific language implementation
   * source code extraction and analysis
   
== ISSUES

* I wrote this target implementation independently; it is a replacement for the
ruby target that comes bundled with ANTLR. As a consequence, to use this target
and the runtime libraries, the code generation templates must be manually
integrated into your ANTLR package (see instructions below)

* while the target is intended to be complete, I do not provide any
implementation of the template-construction mode available for Java and Python
targets. While I'm interested in having this capability, I have not implemented
it yet because ANTLR forces you to use its StringTemplate templating language.
Thus, I would have to port the StringTemplate library to Ruby and write a target
for ST parser generation. I would prefer to permit template generation that uses
ruby's standard ERB templating library.

== INSTALL:

Please read INSTALL.txt for detailed instructions for integrating this
code-generation target with an ANTLR installation.

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

