==============================================================================
Developing / Customizing The ANTLR for Ruby Project
  by Kyle Yetter  <kcy5b@yahoo.com>
  November 20, 2009
==============================================================================

= Just a Quick Note

I'd love to keep this all intuitive and straight foward. However,
this project differs from many typical ruby projects in that it
dependens upon a number of entities outside the warm n' cozy ruby
environment -- that is, java, the ANTLR tool, and ANTLR's
StringTemplate-based code generation architecture. So there are
a number of variables that add good helping of complexity to
the project.

So if you have any trouble getting everything to work properly,
do yourself a favor and read through this guide. Feel free to
drop any other specific questions to me via e-mail and
I'll try to help you out as I can.

==============================================================================
Getting Started
------------------------------------------------------------------------------

= Setting Up the Project

If you haven't already:

1. pull the repository

  git clone git://rubyforge.org/antlr3.git

2. from the project's top directory, run the simple setup script
  
  ruby setup.rb

Assuming everything worked without a hitch, modify your
PATH environmental variable to add the following directories:
  
  $base/bin  $base/scripts  $base/vendor/bin
  
where $base is the absolute path of the project's base directory.
If you use a bash-flavored shell, you can do this by running:

  . ./project-env.sh

= External Programs Used By the Project

general:
  - git
  - ruby 1.8.7
  - ruby 1.9.1 (optional)
  - java
  
for documentation:
  - pygmentize
  
for building ANTLR:
  - javac
  - fastjar or jar

==============================================================================
Development Dependencies / Third-Party Gems
------------------------------------------------------------------------------

* the ANTLR runtime library (everything under lib) has no external
  dependencies (and ideally will stay that way)
  
* to allow contributors to take advantage of various useful third party
  libraries for testing, benchmarking, utilities, yada yada yada, the
  project uses a third-party library, `bundler', to manage a project-specific
  stash of gems
  
* while adding a tad more complexity to the project, this setup offers the
  advantages of:
  
  - not bulking up a developer's system gem repository with libraries
    he or she may have no use for, slowing everything down
  - removing interference from gem installations of earlier versions
    of the antlr3 library, as generated code will always try to
    activate the antlr3 gem before loading the runtime library
  
* the setup.rb script should install bundler in vendor/bundler by importing
  the library as a git submodule. This can also be done manually via:
  
    git submodule init
    git submodule update vendor/bundler
  
* the file config/gemfile specifies the gems to fetch as well as other
  bundler environment settings -- edit this to add/remove development
  dependencies
  
* the script scripts/gem-bundle.rb runs the gem bundle command to update
  the project's local gem installations. Running `rake setup' will
  also check for any necessary gem updates from config/gemfile
  
* the project configuration object, $project, which is defined in
  config/project.rb, handles setting up the load path and loading
  the bundler environment, which is located at vendor/environment.rb
  
* more info on bundler can be found at the project's homepage:

  bundler: http://github.com/wycats/bundler

==============================================================================
Project Layout
------------------------------------------------------------------------------
= Top Level

antlr3
|-- bin       : contains the antlr4ruby program
|-- config    : project development configuration scripts and data
|-- dev-lib   : home of all extra libraries used for development purposes
|-- doc       : custom documentation
|-- java      : the modified ANTLR3 jar and RubyTarget.java
|-- lib       : the ruby ANTLR runtime library
|-- log       : archived benchmarking data and other project logs
|-- notes     : random text notes I recorded throughout development
|-- samples   : ANTLR grammar samples customized for ruby output
|-- scripts   : development utilities
|-- templates : the string template files ANTLR uses to write ruby
|-- test      : a bunch of test code
`-- vendor    : third party libraries used by the development tools

= Templates

templates
|-- Ruby.stg           : all of the core templates for ruby output
|-- AST.stg            : additional base templates used by tree code
|-- ASTParser.stg      : more tree template code for AST-building parsers
|-- ASTTreeParser.stg  : more tree template code for tree parsers
|-- Dbg.stg            : debug-mode extensions to the core templates
`-- ASTDbg.stg         : debug-mode extensions to the AST templates

* These are the String Template group files that ANTLR uses to
  generate ruby code

* If you are unfamilliar with the String Template language,
  refer to http://www.stringtemplate.org for more information
  and documentation

* Modifications to these files will not be reflected in ANTLR
  output until the ANTLR jar is updated with the changes. The
  jar can be updated via:
  
    rake antlr

= Testing

test
|-- unit        : plain old unit tests for runtime library components
|-- functional  : tests of the functionality of ANTLR generated code
`-- performance : specs that are used for benchmarking/profiling

* most unit tests and functional tests use a combined test/unit
  and rspec environment; the tests are written as Test::Unit::TestCase
  subclasses, but often use rspec-style example blocks and assertions

* the tests can generally be run directly, but scripts/antlr-tests
  is a command-line tool that can be used to run tests in an
  `enhanced' fashion

== Functional Tests

* functional tests are grouped into a number of categories, each of
  which is represented as a subdirectory of test/functional. For
  example tests concerning pure lexer functionality are all placed
  in the directory test/functional/lexer

* tests are further organized by specific subject, with one or more tests
  focused on some single aspect grouped together in a single file under the category
  directory. For example, test/functional/lexer/filter-mode.rb
  contains several tests concerning filter mode lexer grammars.

* the ANTLR grammars used to generate code are written 'inline' with all of
  the tests. A number of utility classes contained in lib/antlr3/test
  are used to compile the grammars into code, dynamically load the
  code ANTLR generates, and test the output functionality.

* running the ANTLR tool to generate code is fairly slow (that is, when you're
  doing it 100 times in a row). When you first run all of the functional tests,
  don't be surprised if it takes a good 10-15 minutes to do. However, grammars
  are only recompiled when their source has changed or updates have been
  made to the ANTLR jar, so subsequent runs are usually pretty quick.
  
==============================================================================
Programs / Utility Scripts
------------------------------------------------------------------------------

= antlr4ruby

* a very simple script that wraps for the ANTLR3 tool
* currently, it simply finds the absolute path of
  java/antlr-full-3.x.x.jar in the project directory
  and then essentially runs:
  
  java -jar path/to/antlr-full-3.x.x.jar ARGV

* so to use ANTLR to generate ruby output using this project's
  runtime library and code templates, run:
  
  antlr4ruby [antlr options] path/to/Grammar.g

* run antlr4ruby without arguments to get a summary of
  ANTLR's options and arguments, or read up on the
  ANTLR tool's documentation at http://www.antlr.org

= antlr-tests

* used to run various types of tests in the project, summarize
  the results in tabular format, and dump enhanced information
  about errors/test failures that arose during the test run
  
* uses the third party gem `main' to create a hierarchical
  command structure, instead of plain old optparse
  
* examples:
  
  # run functional tests
  antlr-tests functional
  
  # run unit, functional, benchmarking, and profiling tests:
  antlr-tests run
  
  # trash all files generated by the tests
  antlr-tests clean
  
  # run all parser-oriented tests
  antlr-tests functional parser
  
= grammar-tools

* a growing number of utilities for viewing properties of ANTLR
  grammar files, refactoring/porting ANTLR grammars for
  ruby output, and formatting/highlighting grammar files
  
* a few notable commands:

  # produce a fairly nice HTML-formatted grammar display
  grammar-tools format html path/to/Grammar.g > grammar.html
  
  # list all rule names defined within a grammar
  grammar-tools show rules path/to/Grammar.g
  
  # set up a grammar targetted for a language other than
  # ruby to be retargetted for ruby output
  grammar-tools modify stylize path/to/Grammar.g
  
  # print out a grammar without any language-specific elements
  grammar-tools modify strip path/to/Grammar.g
  
  # print out help with a list of commands
  grammar-tools help

= st-group

* utility commands for working with StringTemplate template group files
* uses the same command style as grammar-tools
* current notable commands:

  # break up a large STG file into a directory containing a single .st
  # file for each template defined in a group
  st-group unzip path/to/Group.stg
  
  # reconstitute a directory created by unzipping a group file
  # back into a single .stg file
  st-group zip path/to/Group/
  
  # print out names and other definition info contained in a .stg file
  st-group info path/to/Group.stg
  
  # extract and display a single template definition
  st-group show path/to/Group.stg templateName

= gem-bundle.rb

* only works once the third party bundler library has been pulled
  by the setup.rb script
  
* a script to run the gem bundle command to update the project's
  isolated gem repository
  
* essentially the same as `gem bundle', but sets up the environment
  so that it should work with older versions of rubygems

