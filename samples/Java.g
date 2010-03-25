/*
 [The "BSD licence"]
 Copyright (c) 2007-2008 Terence Parr
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
*/
/** A Java 1.5 grammar for ANTLR v3 derived from the spec
 *
 *  This is a very close representation of the spec; the changes
 *  are comestic (remove left recursion) and also fixes (the spec
 *  isn't exactly perfect).  I have run this on the 1.4.2 source
 *  and some nasty looking enums from 1.5, but have not really
 *  tested for 1.5 compatibility.
 *
 *  I built this with: java -Xmx100M org.antlr.Tool java.g 
 *  and got two errors that are ok (for now):
 *  java.g:691:9: Decision can match input such as
 *    "'0'..'9'{'E', 'e'}{'+', '-'}'0'..'9'{'D', 'F', 'd', 'f'}"
 *    using multiple alternatives: 3, 4
 *  As a result, alternative(s) 4 were disabled for that input
 *  java.g:734:35: Decision can match input such as "{'$', 'A'..'Z',
 *    '_', 'a'..'z', '\u00C0'..'\u00D6', '\u00D8'..'\u00F6',
 *    '\u00F8'..'\u1FFF', '\u3040'..'\u318F', '\u3300'..'\u337F',
 *    '\u3400'..'\u3D2D', '\u4E00'..'\u9FFF', '\uF900'..'\uFAFF'}"
 *    using multiple alternatives: 1, 2
 *  As a result, alternative(s) 2 were disabled for that input
 *
 *  You can turn enum on/off as a keyword :)
 *
 *  Version 1.0 -- initial release July 5, 2006 (requires 3.0b2 or higher)
 *
 *  Primary author: Terence Parr, July 2006
 *
 *  Version 1.0.1 -- corrections by Koen Vanderkimpen & Marko van Dooren,
 *      October 25, 2006;
 *      fixed normalInterfaceDeclaration: now uses typeParameters instead
 *          of typeParameter (according to JLS, 3rd edition)
 *      fixed castExpression: no longer allows expression next to type
 *          (according to semantics in JLS, in contrast with syntax in JLS)
 *
 *  Version 1.0.2 -- Terence Parr, Nov 27, 2006
 *      java spec I built this from had some bizarre for-loop control.
 *          Looked weird and so I looked elsewhere...Yep, it's messed up.
 *          simplified.
 *
 *  Version 1.0.3 -- Chris Hogue, Feb 26, 2007
 *      Factored out an annotationName rule and used it in the annotation rule.
 *          Not sure why, but typeName wasn't recognizing references to inner
 *          annotations (e.g. @InterfaceName.InnerAnnotation())
 *      Factored out the elementValue section of an annotation reference.  Created 
 *          elementValuePair and elementValuePairs rules, then used them in the 
 *          annotation rule.  Allows it to recognize annotation references with 
 *          multiple, comma separated attributes.
 *      Updated elementValueArrayInitializer so that it allows multiple elements.
 *          (It was only allowing 0 or 1 element).
 *      Updated localVariableDeclaration to allow annotations.  Interestingly the JLS
 *          doesn't appear to indicate this is legal, but it does work as of at least
 *          JDK 1.5.0_06.
 *      Moved the Identifier portion of annotationTypeElementRest to annotationMethodRest.
 *          Because annotationConstantRest already references variableDeclarator which 
 *          has the Identifier portion in it, the parser would fail on constants in 
 *          annotation definitions because it expected two identifiers.  
 *      Added optional trailing ';' to the alternatives in annotationTypeElementRest.
 *          Wouldn't handle an inner interface that has a trailing ';'.
 *      Swapped the expression and type rule reference order in castExpression to 
 *          make it check for genericized casts first.  It was failing to recognize a
 *          statement like  "Class<Byte> TYPE = (Class<Byte>)...;" because it was seeing
 *          'Class<Byte' in the cast expression as a less than expression, then failing 
 *          on the '>'.
 *      Changed createdName to use typeArguments instead of nonWildcardTypeArguments.
 *          Again, JLS doesn't seem to allow this, but java.lang.Class has an example of
 *          of this construct.
 *      Changed the 'this' alternative in primary to allow 'identifierSuffix' rather than
 *          just 'arguments'.  The case it couldn't handle was a call to an explicit
 *          generic method invocation (e.g. this.<E>doSomething()).  Using identifierSuffix
 *          may be overly aggressive--perhaps should create a more constrained thisSuffix rule?
 *      
 *  Version 1.0.4 -- Hiroaki Nakamura, May 3, 2007
 *
 *  Fixed formalParameterDecls, localVariableDeclaration, forInit,
 *  and forVarControl to use variableModifier* not 'final'? (annotation)?
 *
 *  Version 1.0.5 -- Terence, June 21, 2007
 *  --a[i].foo didn't work. Fixed unaryExpression
 *
 *  Version 1.0.6 -- John Ridgway, March 17, 2008
 *      Made "assert" a switchable keyword like "enum".
 *      Fixed compilationUnit to disallow "annotation importDeclaration ...".
 *      Changed "Identifier ('.' Identifier)*" to "qualifiedName" in more 
 *          places.
 *      Changed modifier* and/or variableModifier* to classOrInterfaceModifiers,
 *          modifiers or variableModifiers, as appropriate.
 *      Renamed "bound" to "typeBound" to better match language in the JLS.
 *      Added "memberDeclaration" which rewrites to methodDeclaration or 
 *      fieldDeclaration and pulled type into memberDeclaration.  So we parse 
 *          type and then move on to decide whether we're dealing with a field
 *          or a method.
 *      Modified "constructorDeclaration" to use "constructorBody" instead of
 *          "methodBody".  constructorBody starts with explicitConstructorInvocation,
 *          then goes on to blockStatement*.  Pulling explicitConstructorInvocation
 *          out of expressions allowed me to simplify "primary".
 *      Changed variableDeclarator to simplify it.
 *      Changed type to use classOrInterfaceType, thus simplifying it; of course
 *          I then had to add classOrInterfaceType, but it is used in several 
 *          places.
 *      Fixed annotations, old version allowed "@X(y,z)", which is illegal.
 *      Added optional comma to end of "elementValueArrayInitializer"; as per JLS.
 *      Changed annotationTypeElementRest to use normalClassDeclaration and 
 *          normalInterfaceDeclaration rather than classDeclaration and 
 *          interfaceDeclaration, thus getting rid of a couple of grammar ambiguities.
 *      Split localVariableDeclaration into localVariableDeclarationStatement
 *          (includes the terminating semi-colon) and localVariableDeclaration.  
 *          This allowed me to use localVariableDeclaration in "forInit" clauses,
 *           simplifying them.
 *      Changed switchBlockStatementGroup to use multiple labels.  This adds an
 *          ambiguity, but if one uses appropriately greedy parsing it yields the
 *           parse that is closest to the meaning of the switch statement.
 *      Renamed "forVarControl" to "enhancedForControl" -- JLS language.
 *      Added semantic predicates to test for shift operations rather than other
 *          things.  Thus, for instance, the string "< <" will never be treated
 *          as a left-shift operator.
 *      In "creator" we rule out "nonWildcardTypeArguments" on arrayCreation, 
 *          which are illegal.
 *      Moved "nonWildcardTypeArguments into innerCreator.
 *      Removed 'super' superSuffix from explicitGenericInvocation, since that
 *          is only used in explicitConstructorInvocation at the beginning of a
 *           constructorBody.  (This is part of the simplification of expressions
 *           mentioned earlier.)
 *      Simplified primary (got rid of those things that are only used in
 *          explicitConstructorInvocation).
 *      Lexer -- removed "Exponent?" from FloatingPointLiteral choice 4, since it
 *          led to an ambiguity.
 *
 *      This grammar successfully parses every .java file in the JDK 1.5 source 
 *          tree (excluding those whose file names include '-', which are not
 *          valid Java compilation units).
 *
 *  Known remaining problems:
 *      "Letter" and "JavaIDDigit" are wrong.  The actual specification of
 *      "Letter" should be "a character for which the method
 *      Character.isJavaIdentifierStart(int) returns true."  A "Java 
 *      letter-or-digit is a character for which the method 
 *      Character.isJavaIdentifierPart(int) returns true."
 */
grammar Java;
options {backtrack=true; memoize=true; language=Ruby;}

@lexer::init {
@enum_is_keyword = true
@assert_is_keyword = true
}

@lexer::members {
attr_reader :enum_is_keyword, :assert_is_keyword
}

// starting point for parsing a java file
/* The annotations are separated out to make parsing faster, but must be associated with
   a packageDeclaration or a typeDeclaration (and not an empty one). */
compilation_unit
    :   annotations
        (   package_declaration import_declaration* type_declaration*
        |   class_or_interface_declaration type_declaration*
        )
    |   package_declaration? import_declaration* type_declaration*
    ;

package_declaration
    :   'package' qualified_name ';'
    ;
    
import_declaration
    :   'import' 'static'? qualified_name ('.' '*')? ';'
    ;
    
type_declaration
    :   class_or_interface_declaration
    |   ';'
    ;
    
class_or_interface_declaration
    :   class_or_interface_modifiers (class_declaration | interface_declaration)
    ;
    
class_or_interface_modifiers
    :   class_or_interface_modifier*
    ;

class_or_interface_modifier
    :   annotation   // class or interface
    |   'public'     // class or interface
    |   'protected'  // class or interface
    |   'private'    // class or interface
    |   'abstract'   // class or interface
    |   'static'     // class or interface
    |   'final'      // class only -- does not apply to interfaces
    |   'strictfp'   // class or interface
    ;

modifiers
    :   modifier*
    ;

class_declaration
    :   normal_class_declaration
    |   enum_declaration
    ;
    
normal_class_declaration
    :   'class' Identifier type_parameters?
        ('extends' type)?
        ('implements' type_list)?
        class_body
    ;
    
type_parameters
    :   '<' type_parameter (',' type_parameter)* '>'
    ;

type_parameter
    :   Identifier ('extends' type_bound)?
    ;
        
type_bound
    :   type ('&' type)*
    ;

enum_declaration
    :   ENUM Identifier ('implements' type_list)? enum_body
    ;

enum_body
    :   '{' enum_constants? ','? enum_body_declarations? '}'
    ;

enum_constants
    :   enum_constant (',' enum_constant)*
    ;
    
enum_constant
    :   annotations? Identifier arguments? class_body?
    ;
    
enum_body_declarations
    :   ';' (class_body_declaration)*
    ;
    
interface_declaration
    :   normal_interface_declaration
    |   annotation_type_declaration
    ;
    
normal_interface_declaration
    :   'interface' Identifier type_parameters? ('extends' type_list)? interface_body
    ;
    
type_list
    :   type (',' type)*
    ;
    
class_body
    :   '{' class_body_declaration* '}'
    ;
    
interface_body
    :   '{' interface_body_declaration* '}'
    ;

class_body_declaration
    :   ';'
    |   'static'? block
    |   modifiers member_decl
    ;
    
member_decl
    :   generic_method_or_constructor_decl
    |   member_declaration
    |   'void' Identifier void_method_declarator_rest
    |   Identifier constructor_declarator_rest
    |   interface_declaration
    |   class_declaration
    ;
    
member_declaration
    :   type (method_declaration | field_declaration)
    ;

generic_method_or_constructor_decl
    :   type_parameters generic_method_or_constructor_rest
    ;
    
generic_method_or_constructor_rest
    :   (type | 'void') Identifier method_declarator_rest
    |   Identifier constructor_declarator_rest
    ;

method_declaration
    :   Identifier method_declarator_rest
    ;

field_declaration
    :   variable_declarators ';'
    ;
        
interface_body_declaration
    :   modifiers interface_member_decl
    |   ';'
    ;

interface_member_decl
    :   interface_method_or_field_decl
    |   interface_generic_method_decl
    |   'void' Identifier void_interface_method_declarator_rest
    |   interface_declaration
    |   class_declaration
    ;
    
interface_method_or_field_decl
    :   type Identifier interface_method_or_field_rest
    ;
    
interface_method_or_field_rest
    :   constant_declarators_rest ';'
    |   interface_method_declarator_rest
    ;
    
method_declarator_rest
    :   formal_parameters ('[' ']')*
        ('throws' qualified_name_list)?
        (   method_body
        |   ';'
        )
    ;
    
void_method_declarator_rest
    :   formal_parameters ('throws' qualified_name_list)?
        (   method_body
        |   ';'
        )
    ;
    
interface_method_declarator_rest
    :   formal_parameters ('[' ']')* ('throws' qualified_name_list)? ';'
    ;
    
interface_generic_method_decl
    :   type_parameters (type | 'void') Identifier
        interface_method_declarator_rest
    ;
    
void_interface_method_declarator_rest
    :   formal_parameters ('throws' qualified_name_list)? ';'
    ;
    
constructor_declarator_rest
    :   formal_parameters ('throws' qualified_name_list)? constructor_body
    ;

constant_declarator
    :   Identifier constant_declarator_rest
    ;
    
variable_declarators
    :   variable_declarator (',' variable_declarator)*
    ;

variable_declarator
    :   variable_declarator_id ('=' variable_initializer)?
    ;
    
constant_declarators_rest
    :   constant_declarator_rest (',' constant_declarator)*
    ;

constant_declarator_rest
    :   ('[' ']')* '=' variable_initializer
    ;
    
variable_declarator_id
    :   Identifier ('[' ']')*
    ;

variable_initializer
    :   array_initializer
    |   expression
    ;
        
array_initializer
    :   '{' (variable_initializer (',' variable_initializer)* (',')? )? '}'
    ;

modifier
    :   annotation
    |   'public'
    |   'protected'
    |   'private'
    |   'static'
    |   'abstract'
    |   'final'
    |   'native'
    |   'synchronized'
    |   'transient'
    |   'volatile'
    |   'strictfp'
    ;

package_or_type_name
    :   qualified_name
    ;

enum_constant_name
    :   Identifier
    ;

type_name
    :   qualified_name
    ;

type
	:	class_or_interface_type ('[' ']')*
	|	primitive_type ('[' ']')*
	;

class_or_interface_type
	:	Identifier type_arguments? ('.' Identifier type_arguments? )*
	;

primitive_type
    :   'boolean'
    |   'char'
    |   'byte'
    |   'short'
    |   'int'
    |   'long'
    |   'float'
    |   'double'
    ;

variable_modifier
    :   'final'
    |   annotation
    ;

type_arguments
    :   '<' type_argument (',' type_argument)* '>'
    ;
    
type_argument
    :   type
    |   '?' (('extends' | 'super') type)?
    ;
    
qualified_name_list
    :   qualified_name (',' qualified_name)*
    ;

formal_parameters
    :   '(' formal_parameter_decls? ')'
    ;
    
formal_parameter_decls
    :   variable_modifiers type formal_parameter_decls_rest
    ;
    
formal_parameter_decls_rest
    :   variable_declarator_id (',' formal_parameter_decls)?
    |   '...' variable_declarator_id
    ;
    
method_body
    :   block
    ;

constructor_body
    :   '{' explicit_constructor_invocation? block_statement* '}'
    ;

explicit_constructor_invocation
    :   non_wildcard_type_arguments? ('this' | 'super') arguments ';'
    |   primary '.' non_wildcard_type_arguments? 'super' arguments ';'
    ;


qualified_name
    :   Identifier ('.' Identifier)*
    ;
    
literal 
    :   integer_literal
    |   FloatingPointLiteral
    |   CharacterLiteral
    |   StringLiteral
    |   boolean_literal
    |   'null'
    ;

integer_literal
    :   HexLiteral
    |   OctalLiteral
    |   DecimalLiteral
    ;

boolean_literal
    :   'true'
    |   'false'
    ;

// ANNOTATIONS

annotations
    :   annotation+
    ;

annotation
    :   '@' annotation_name ( '(' ( element_value_pairs | element_value )? ')' )?
    ;
    
annotation_name
    : Identifier ('.' Identifier)*
    ;

element_value_pairs
    :   element_value_pair (',' element_value_pair)*
    ;

element_value_pair
    :   Identifier '=' element_value
    ;
    
element_value
    :   conditional_expression
    |   annotation
    |   element_value_array_initializer
    ;
    
element_value_array_initializer
    :   '{' (element_value (',' element_value)*)? (',')? '}'
    ;
    
annotation_type_declaration
    :   '@' 'interface' Identifier annotation_type_body
    ;
    
annotation_type_body
    :   '{' (annotation_type_element_declaration)* '}'
    ;
    
annotation_type_element_declaration
    :   modifiers annotation_type_element_rest
    ;
    
annotation_type_element_rest
    :   type annotation_method_or_constant_rest ';'
    |   normal_class_declaration ';'?
    |   normal_interface_declaration ';'?
    |   enum_declaration ';'?
    |   annotation_type_declaration ';'?
    ;
    
annotation_method_or_constant_rest
    :   annotation_method_rest
    |   annotation_constant_rest
    ;
    
annotation_method_rest
    :   Identifier '(' ')' default_value?
    ;
    
annotation_constant_rest
    :   variable_declarators
    ;
    
default_value
    :   'default' element_value
    ;

// STATEMENTS / BLOCKS

block
    :   '{' block_statement* '}'
    ;
    
block_statement
    :   local_variable_declaration_statement
    |   class_or_interface_declaration
    |   statement
    ;
    
local_variable_declaration_statement
    :    local_variable_declaration ';'
    ;

local_variable_declaration
    :   variable_modifiers type variable_declarators
    ;
    
variable_modifiers
    :   variable_modifier*
    ;

statement
    : block
    |   ASSERT expression (':' expression)? ';'
    |   'if' par_expression statement (options {k=1;}:'else' statement)?
    |   'for' '(' for_control ')' statement
    |   'while' par_expression statement
    |   'do' statement 'while' par_expression ';'
    |   'try' block
        ( catches 'finally' block
        | catches
        |   'finally' block
        )
    |   'switch' par_expression '{' switch_block_statement_groups '}'
    |   'synchronized' par_expression block
    |   'return' expression? ';'
    |   'throw' expression ';'
    |   'break' Identifier? ';'
    |   'continue' Identifier? ';'
    |   ';' 
    |   statement_expression ';'
    |   Identifier ':' statement
    ;
    
catches
    :   catch_clause (catch_clause)*
    ;
    
catch_clause
    :   'catch' '(' formal_parameter ')' block
    ;

formal_parameter
    :   variable_modifiers type variable_declarator_id
    ;
        
switch_block_statement_groups
    :   (switch_block_statement_group)*
    ;
    
/* The change here (switchLabel -> switchLabel+) technically makes this grammar
   ambiguous; but with appropriately greedy parsing it yields the most
   appropriate AST, one in which each group, except possibly the last one, has
   labels and statements. */
switch_block_statement_group
    :   switch_label+ block_statement*
    ;
    
switch_label
    :   'case' constant_expression ':'
    |   'case' enum_constant_name ':'
    |   'default' ':'
    ;
    
for_control
options {k=3;} // be efficient for common case: for (ID ID : ID) ...
    :   enhanced_for_control
    |   for_init? ';' expression? ';' for_update?
    ;

for_init
    :   local_variable_declaration
    |   expression_list
    ;
    
enhanced_for_control
    :   variable_modifiers type Identifier ':' expression
    ;

for_update
    :   expression_list
    ;

// EXPRESSIONS

par_expression
    :   '(' expression ')'
    ;
    
expression_list
    :   expression (',' expression)*
    ;

statement_expression
    :   expression
    ;
    
constant_expression
    :   expression
    ;
    
expression
    :   conditional_expression (assignment_operator expression)?
    ;
    
assignment_operator
    :   '='
    |   '+='
    |   '-='
    |   '*='
    |   '/='
    |   '&='
    |   '|='
    |   '^='
    |   '%='
    |   ('<' '<' '=')=> t1='<' t2='<' t3='=' 
        { $t1.line == $t2.line &&
          $t1.column + 1 == $t2.column && 
          $t2.line == $t3.line && 
          $t2.column + 1 == $t3.column }?
    |   ('>' '>' '>' '=')=> t1='>' t2='>' t3='>' t4='='
        { $t1.line == $t2.line && 
          $t1.column + 1 == $t2.column &&
          $t2.line == $t3.line && 
          $t2.column + 1 == $t3.column &&
          $t3.line == $t4.line && 
          $t3.column + 1 == $t4.column }?
    |   ('>' '>' '=')=> t1='>' t2='>' t3='='
        { $t1.line == $t2.line && 
          $t1.column + 1 == $t2.column && 
          $t2.line == $t3.line && 
          $t2.column + 1 == $t3.column }?
    ;

conditional_expression
    :   conditional_or_expression ( '?' expression ':' expression )?
    ;

conditional_or_expression
    :   conditional_and_expression ( '||' conditional_and_expression )*
    ;

conditional_and_expression
    :   inclusive_or_expression ( '&&' inclusive_or_expression )*
    ;

inclusive_or_expression
    :   exclusive_or_expression ( '|' exclusive_or_expression )*
    ;

exclusive_or_expression
    :   and_expression ( '^' and_expression )*
    ;

and_expression
    :   equality_expression ( '&' equality_expression )*
    ;

equality_expression
    :   instance_of_expression ( ('==' | '!=') instance_of_expression )*
    ;

instance_of_expression
    :   relational_expression ('instanceof' type)?
    ;

relational_expression
    :   shift_expression ( relational_op shift_expression )*
    ;
    
relational_op
    :   ('<' '=')=> t1='<' t2='=' 
        { $t1.line == $t2.line && 
          $t1.column + 1 == $t2.column }?
    |   ('>' '=')=> t1='>' t2='=' 
        { $t1.line == $t2.line && 
          $t1.column + 1 == $t2.column }?
    |   '<' 
    |   '>' 
    ;

shift_expression
    :   additive_expression ( shift_op additive_expression )*
    ;

shift_op
    :   ('<' '<')=> t1='<' t2='<' 
        { $t1.line == $t2.line && 
          $t1.column + 1 == $t2.column }?
    |   ('>' '>' '>')=> t1='>' t2='>' t3='>' 
        { $t1.line == $t2.line && 
          $t1.column + 1 == $t2.column &&
          $t2.line == $t3.line && 
          $t2.column + 1 == $t3.column }?
    |   ('>' '>')=> t1='>' t2='>'
        { $t1.line == $t2.line && 
          $t1.column + 1 == $t2.column }?
    ;


additive_expression
    :   multiplicative_expression ( ('+' | '-') multiplicative_expression )*
    ;

multiplicative_expression
    :   unary_expression ( ( '*' | '/' | '%' ) unary_expression )*
    ;
    
unary_expression
    :   '+' unary_expression
    |   '-' unary_expression
    |   '++' unary_expression
    |   '--' unary_expression
    |   unary_expression_not_plus_minus
    ;

unary_expression_not_plus_minus
    :   '~' unary_expression
    |   '!' unary_expression
    |   cast_expression
    |   primary selector* ('++'|'--')?
    ;

cast_expression
    :  '(' primitive_type ')' unary_expression
    |  '(' (type | expression) ')' unary_expression_not_plus_minus
    ;

primary
    :   par_expression
    |   'this' ('.' Identifier)* identifier_suffix?
    |   'super' super_suffix
    |   literal
    |   'new' creator
    |   Identifier ('.' Identifier)* identifier_suffix?
    |   primitive_type ('[' ']')* '.' 'class'
    |   'void' '.' 'class'
    ;

identifier_suffix
    :   ('[' ']')+ '.' 'class'
    |   ('[' expression ']')+ // can also be matched by selector, but do here
    |   arguments
    |   '.' 'class'
    |   '.' explicit_generic_invocation
    |   '.' 'this'
    |   '.' 'super' arguments
    |   '.' 'new' inner_creator
    ;

creator
    :   non_wildcard_type_arguments created_name class_creator_rest
    |   created_name (array_creator_rest | class_creator_rest)
    ;

created_name
    :   class_or_interface_type
    |   primitive_type
    ;
    
inner_creator
    :   non_wildcard_type_arguments? Identifier class_creator_rest
    ;

array_creator_rest
    :   '['
        (   ']' ('[' ']')* array_initializer
        |   expression ']' ('[' expression ']')* ('[' ']')*
        )
    ;

class_creator_rest
    :   arguments class_body?
    ;
    
explicit_generic_invocation
    :   non_wildcard_type_arguments Identifier arguments
    ;
    
non_wildcard_type_arguments
    :   '<' type_list '>'
    ;
    
selector
    :   '.' Identifier arguments?
    |   '.' 'this'
    |   '.' 'super' super_suffix
    |   '.' 'new' inner_creator
    |   '[' expression ']'
    ;
    
super_suffix
    :   arguments
    |   '.' Identifier arguments?
    ;

arguments
    :   '(' expression_list? ')'
    ;

// LEXER

HexLiteral : '0' ('x'|'X') HexDigit+ IntegerTypeSuffix? ;

DecimalLiteral : ('0' | '1'..'9' '0'..'9'*) IntegerTypeSuffix? ;

OctalLiteral : '0' ('0'..'7')+ IntegerTypeSuffix? ;

fragment
HexDigit : ('0'..'9'|'a'..'f'|'A'..'F') ;

fragment
IntegerTypeSuffix : ('l'|'L') ;

FloatingPointLiteral
    :   ('0'..'9')+ '.' ('0'..'9')* Exponent? FloatTypeSuffix?
    |   '.' ('0'..'9')+ Exponent? FloatTypeSuffix?
    |   ('0'..'9')+ Exponent FloatTypeSuffix?
    |   ('0'..'9')+ FloatTypeSuffix
    ;

fragment
Exponent : ('e'|'E') ('+'|'-')? ('0'..'9')+ ;

fragment
FloatTypeSuffix : ('f'|'F'|'d'|'D') ;

CharacterLiteral
    :   '\'' ( EscapeSequence | ~('\''|'\\') ) '\''
    ;

StringLiteral
    :  '"' ( EscapeSequence | ~('\\'|'"') )* '"'
    ;

fragment
EscapeSequence
    :   '\\' ('b'|'t'|'n'|'f'|'r'|'\"'|'\''|'\\')
    |   UnicodeEscape
    |   OctalEscape
    ;

fragment
OctalEscape
    :   '\\' ('0'..'3') ('0'..'7') ('0'..'7')
    |   '\\' ('0'..'7') ('0'..'7')
    |   '\\' ('0'..'7')
    ;

fragment
UnicodeEscape
    :   '\\' 'u' HexDigit HexDigit HexDigit HexDigit
    ;

ENUM:   'enum' {@enum_is_keyword or $type=Identifier}
    ;
    
ASSERT
    :   'assert' {@assert_is_keyword or $type=Identifier}
    ;
    
Identifier 
    :   Letter (Letter|JavaIDDigit)*
    ;

/**I found this char range in JavaCC's grammar, but Letter and Digit overlap.
   Still works, but...
 */
fragment
Letter
    :  '\u0024' |
       '\u0041'..'\u005a' |
       '\u005f' |
       '\u0061'..'\u007a' |
       '\u00c0'..'\u00d6' |
       '\u00d8'..'\u00f6' |
       '\u00f8'..'\u00ff' |
       '\u0100'..'\u1fff' |
       '\u3040'..'\u318f' |
       '\u3300'..'\u337f' |
       '\u3400'..'\u3d2d' |
       '\u4e00'..'\u9fff' |
       '\uf900'..'\ufaff'
    ;

fragment
JavaIDDigit
    :  '\u0030'..'\u0039' |
       '\u0660'..'\u0669' |
       '\u06f0'..'\u06f9' |
       '\u0966'..'\u096f' |
       '\u09e6'..'\u09ef' |
       '\u0a66'..'\u0a6f' |
       '\u0ae6'..'\u0aef' |
       '\u0b66'..'\u0b6f' |
       '\u0be7'..'\u0bef' |
       '\u0c66'..'\u0c6f' |
       '\u0ce6'..'\u0cef' |
       '\u0d66'..'\u0d6f' |
       '\u0e50'..'\u0e59' |
       '\u0ed0'..'\u0ed9' |
       '\u1040'..'\u1049'
   ;

WS  :  (' '|'\r'|'\t'|'\u000C'|'\n') {$channel=HIDDEN;}
    ;

COMMENT
    :   '/*' ( options {greedy=false;} : . )* '*/' {$channel=HIDDEN;}
    ;

LINE_COMMENT
    : '//' ~('\n'|'\r')* '\r'? '\n' {$channel=HIDDEN;}
    ;
