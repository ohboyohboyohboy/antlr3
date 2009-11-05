// $ANTLR 2.7.7 (20060906): "assign.types.g" -> "AssignTokenTypesWalker.java"$

/*
 [The "BSD licence"]
 Copyright (c) 2005-2008 Terence Parr
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
	package org.antlr.grammar.v2;
	import java.util.*;
	import org.antlr.analysis.*;
	import org.antlr.misc.*;
	import java.io.*;
    import org.antlr.tool.*;

import antlr.TreeParser;
import antlr.Token;
import antlr.collections.AST;
import antlr.RecognitionException;
import antlr.ANTLRException;
import antlr.NoViableAltException;
import antlr.MismatchedTokenException;
import antlr.SemanticException;
import antlr.collections.impl.BitSet;
import antlr.ASTPair;
import antlr.collections.impl.ASTArray;


/** [Warning: TJP says that this is probably out of date as of 11/19/2005,
 *   but since it's probably still useful, I'll leave in.  Don't have energy
 *   to update at the moment.]
 *
 *  Compute the token types for all literals and rules etc..  There are
 *  a few different cases to consider for grammar types and a few situations
 *  within.
 *
 *  CASE 1 : pure parser grammar
 *	a) Any reference to a token gets a token type.
 *  b) The tokens section may alias a token name to a string or char
 *
 *  CASE 2 : pure lexer grammar
 *  a) Import token vocabulary if available. Set token types for any new tokens
 *     to values above last imported token type
 *  b) token rule definitions get token types if not already defined
 *  c) literals do NOT get token types
 *
 *  CASE 3 : merged parser / lexer grammar
 *	a) Any char or string literal gets a token type in a parser rule
 *  b) Any reference to a token gets a token type if not referencing
 *     a fragment lexer rule
 *  c) The tokens section may alias a token name to a string or char
 *     which must add a rule to the lexer
 *  d) token rule definitions get token types if not already defined
 *  e) token rule definitions may also alias a token name to a literal.
 *     E.g., Rule 'FOR : "for";' will alias FOR to "for" in the sense that
 *     references to either in the parser grammar will yield the token type
 *
 *  What this pass does:
 *
 *  0. Collects basic info about the grammar like grammar name and type;
 *     Oh, I have go get the options in case they affect the token types.
 *     E.g., tokenVocab option.
 *     Imports any token vocab name/type pairs into a local hashtable.
 *  1. Finds a list of all literals and token names.
 *  2. Finds a list of all token name rule definitions;
 *     no token rules implies pure parser.
 *  3. Finds a list of all simple token rule defs of form "<NAME> : <literal>;"
 *     and aliases them.
 *  4. Walks token names table and assign types to any unassigned
 *  5. Walks aliases and assign types to referenced literals
 *  6. Walks literals, assigning types if untyped
 *  4. Informs the Grammar object of the type definitions such as:
 *     g.defineToken(<charliteral>, ttype);
 *     g.defineToken(<stringliteral>, ttype);
 *     g.defineToken(<tokenID>, ttype);
 *     where some of the ttype values will be the same for aliases tokens.
 */
public class AssignTokenTypesWalker extends antlr.TreeParser       implements AssignTokenTypesWalkerTokenTypes
 {

    public void reportError(RecognitionException ex) {
		Token token = null;
		if ( ex instanceof MismatchedTokenException ) {
			token = ((MismatchedTokenException)ex).token;
		}
		else if ( ex instanceof NoViableAltException ) {
			token = ((NoViableAltException)ex).token;
		}
        ErrorManager.syntaxError(
            ErrorManager.MSG_SYNTAX_ERROR,
            grammar,
            token,
            "assign.types: "+ex.toString(),
            ex);
    }


protected Grammar grammar;
protected String currentRuleName;

protected static GrammarAST stringAlias;
protected static GrammarAST charAlias;
protected static GrammarAST stringAlias2;
protected static GrammarAST charAlias2;

protected void initASTPatterns() {
	stringAlias =
		(GrammarAST)astFactory.make( (new ASTArray(3)).add((GrammarAST)astFactory.create(BLOCK)).add((GrammarAST)astFactory.make( (new ASTArray(3)).add((GrammarAST)astFactory.create(ALT)).add((GrammarAST)astFactory.create(STRING_LITERAL)).add((GrammarAST)astFactory.create(EOA)))).add((GrammarAST)astFactory.create(EOB)));
	charAlias =
		(GrammarAST)astFactory.make( (new ASTArray(3)).add((GrammarAST)astFactory.create(BLOCK)).add((GrammarAST)astFactory.make( (new ASTArray(3)).add((GrammarAST)astFactory.create(ALT)).add((GrammarAST)astFactory.create(CHAR_LITERAL)).add((GrammarAST)astFactory.create(EOA)))).add((GrammarAST)astFactory.create(EOB)));
	stringAlias2 =
		(GrammarAST)astFactory.make( (new ASTArray(3)).add((GrammarAST)astFactory.create(BLOCK)).add((GrammarAST)astFactory.make( (new ASTArray(4)).add((GrammarAST)astFactory.create(ALT)).add((GrammarAST)astFactory.create(STRING_LITERAL)).add((GrammarAST)astFactory.create(ACTION)).add((GrammarAST)astFactory.create(EOA)))).add((GrammarAST)astFactory.create(EOB)));
	charAlias2 =
		(GrammarAST)astFactory.make( (new ASTArray(3)).add((GrammarAST)astFactory.create(BLOCK)).add((GrammarAST)astFactory.make( (new ASTArray(4)).add((GrammarAST)astFactory.create(ALT)).add((GrammarAST)astFactory.create(CHAR_LITERAL)).add((GrammarAST)astFactory.create(ACTION)).add((GrammarAST)astFactory.create(EOA)))).add((GrammarAST)astFactory.create(EOB)));
}

// Behavior moved to AssignTokenTypesBehavior
protected void trackString(GrammarAST t) {;}
protected void trackToken(GrammarAST t) {;}
protected void trackTokenRule(GrammarAST t, GrammarAST modifier, GrammarAST block) {;}
protected void alias(GrammarAST t, GrammarAST s) {;}
public    void defineTokens(Grammar root) {;}
protected void defineStringLiteralsFromDelegates() {;}
protected void assignStringTypes(Grammar root) {;}
protected void aliasTokenIDsAndLiterals(Grammar root) {;}
protected void assignTokenIDTypes(Grammar root) {;}
protected void defineTokenNamesAndLiteralsInGrammar(Grammar root) {;}
protected void init(Grammar root) {;}
public AssignTokenTypesWalker() {
	tokenNames = _tokenNames;
}

	public final void grammar(AST _t,
		Grammar g
	) throws RecognitionException {
		
		GrammarAST grammar_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		
			init(g);
		
		
		try {      // for error handling
			{
			if (_t==null) _t=ASTNULL;
			switch ( _t.getType()) {
			case LEXER_GRAMMAR:
			{
				AST __t3 = _t;
				GrammarAST tmp1_AST_in = (GrammarAST)_t;
				match(_t,LEXER_GRAMMAR);
				_t = _t.getFirstChild();
				grammarSpec(_t);
				_t = _retTree;
				_t = __t3;
				_t = _t.getNextSibling();
				break;
			}
			case PARSER_GRAMMAR:
			{
				AST __t4 = _t;
				GrammarAST tmp2_AST_in = (GrammarAST)_t;
				match(_t,PARSER_GRAMMAR);
				_t = _t.getFirstChild();
				grammarSpec(_t);
				_t = _retTree;
				_t = __t4;
				_t = _t.getNextSibling();
				break;
			}
			case TREE_GRAMMAR:
			{
				AST __t5 = _t;
				GrammarAST tmp3_AST_in = (GrammarAST)_t;
				match(_t,TREE_GRAMMAR);
				_t = _t.getFirstChild();
				grammarSpec(_t);
				_t = _retTree;
				_t = __t5;
				_t = _t.getNextSibling();
				break;
			}
			case COMBINED_GRAMMAR:
			{
				AST __t6 = _t;
				GrammarAST tmp4_AST_in = (GrammarAST)_t;
				match(_t,COMBINED_GRAMMAR);
				_t = _t.getFirstChild();
				grammarSpec(_t);
				_t = _retTree;
				_t = __t6;
				_t = _t.getNextSibling();
				break;
			}
			default:
			{
				throw new NoViableAltException(_t);
			}
			}
			}
		}
		catch (RecognitionException ex) {
			reportError(ex);
			if (_t!=null) {_t = _t.getNextSibling();}
		}
		_retTree = _t;
	}
	
	public final void grammarSpec(AST _t) throws RecognitionException {
		
		GrammarAST grammarSpec_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		GrammarAST id = null;
		GrammarAST cmt = null;
		Map opts=null;
		
		try {      // for error handling
			id = (GrammarAST)_t;
			match(_t,ID);
			_t = _t.getNextSibling();
			{
			if (_t==null) _t=ASTNULL;
			switch ( _t.getType()) {
			case DOC_COMMENT:
			{
				cmt = (GrammarAST)_t;
				match(_t,DOC_COMMENT);
				_t = _t.getNextSibling();
				break;
			}
			case OPTIONS:
			case TOKENS:
			case RULE:
			case SCOPE:
			case IMPORT:
			case AMPERSAND:
			{
				break;
			}
			default:
			{
				throw new NoViableAltException(_t);
			}
			}
			}
			{
			if (_t==null) _t=ASTNULL;
			switch ( _t.getType()) {
			case OPTIONS:
			{
				optionsSpec(_t);
				_t = _retTree;
				break;
			}
			case TOKENS:
			case RULE:
			case SCOPE:
			case IMPORT:
			case AMPERSAND:
			{
				break;
			}
			default:
			{
				throw new NoViableAltException(_t);
			}
			}
			}
			{
			if (_t==null) _t=ASTNULL;
			switch ( _t.getType()) {
			case IMPORT:
			{
				delegateGrammars(_t);
				_t = _retTree;
				break;
			}
			case TOKENS:
			case RULE:
			case SCOPE:
			case AMPERSAND:
			{
				break;
			}
			default:
			{
				throw new NoViableAltException(_t);
			}
			}
			}
			{
			if (_t==null) _t=ASTNULL;
			switch ( _t.getType()) {
			case TOKENS:
			{
				tokensSpec(_t);
				_t = _retTree;
				break;
			}
			case RULE:
			case SCOPE:
			case AMPERSAND:
			{
				break;
			}
			default:
			{
				throw new NoViableAltException(_t);
			}
			}
			}
			{
			_loop13:
			do {
				if (_t==null) _t=ASTNULL;
				if ((_t.getType()==SCOPE)) {
					attrScope(_t);
					_t = _retTree;
				}
				else {
					break _loop13;
				}
				
			} while (true);
			}
			{
			_loop15:
			do {
				if (_t==null) _t=ASTNULL;
				if ((_t.getType()==AMPERSAND)) {
					GrammarAST tmp5_AST_in = (GrammarAST)_t;
					match(_t,AMPERSAND);
					_t = _t.getNextSibling();
				}
				else {
					break _loop15;
				}
				
			} while (true);
			}
			rules(_t);
			_t = _retTree;
		}
		catch (RecognitionException ex) {
			reportError(ex);
			if (_t!=null) {_t = _t.getNextSibling();}
		}
		_retTree = _t;
	}
	
	public final Map  optionsSpec(AST _t) throws RecognitionException {
		Map opts=new HashMap();
		
		GrammarAST optionsSpec_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		
		try {      // for error handling
			AST __t19 = _t;
			GrammarAST tmp6_AST_in = (GrammarAST)_t;
			match(_t,OPTIONS);
			_t = _t.getFirstChild();
			{
			int _cnt21=0;
			_loop21:
			do {
				if (_t==null) _t=ASTNULL;
				if ((_t.getType()==ASSIGN)) {
					option(_t,opts);
					_t = _retTree;
				}
				else {
					if ( _cnt21>=1 ) { break _loop21; } else {throw new NoViableAltException(_t);}
				}
				
				_cnt21++;
			} while (true);
			}
			_t = __t19;
			_t = _t.getNextSibling();
		}
		catch (RecognitionException ex) {
			reportError(ex);
			if (_t!=null) {_t = _t.getNextSibling();}
		}
		_retTree = _t;
		return opts;
	}
	
	public final void delegateGrammars(AST _t) throws RecognitionException {
		
		GrammarAST delegateGrammars_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		
		try {      // for error handling
			AST __t31 = _t;
			GrammarAST tmp7_AST_in = (GrammarAST)_t;
			match(_t,IMPORT);
			_t = _t.getFirstChild();
			{
			int _cnt34=0;
			_loop34:
			do {
				if (_t==null) _t=ASTNULL;
				switch ( _t.getType()) {
				case ASSIGN:
				{
					AST __t33 = _t;
					GrammarAST tmp8_AST_in = (GrammarAST)_t;
					match(_t,ASSIGN);
					_t = _t.getFirstChild();
					GrammarAST tmp9_AST_in = (GrammarAST)_t;
					match(_t,ID);
					_t = _t.getNextSibling();
					GrammarAST tmp10_AST_in = (GrammarAST)_t;
					match(_t,ID);
					_t = _t.getNextSibling();
					_t = __t33;
					_t = _t.getNextSibling();
					break;
				}
				case ID:
				{
					GrammarAST tmp11_AST_in = (GrammarAST)_t;
					match(_t,ID);
					_t = _t.getNextSibling();
					break;
				}
				default:
				{
					if ( _cnt34>=1 ) { break _loop34; } else {throw new NoViableAltException(_t);}
				}
				}
				_cnt34++;
			} while (true);
			}
			_t = __t31;
			_t = _t.getNextSibling();
		}
		catch (RecognitionException ex) {
			reportError(ex);
			if (_t!=null) {_t = _t.getNextSibling();}
		}
		_retTree = _t;
	}
	
	public final void tokensSpec(AST _t) throws RecognitionException {
		
		GrammarAST tokensSpec_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		
		try {      // for error handling
			AST __t36 = _t;
			GrammarAST tmp12_AST_in = (GrammarAST)_t;
			match(_t,TOKENS);
			_t = _t.getFirstChild();
			{
			int _cnt38=0;
			_loop38:
			do {
				if (_t==null) _t=ASTNULL;
				if ((_t.getType()==ASSIGN||_t.getType()==TOKEN_REF)) {
					tokenSpec(_t);
					_t = _retTree;
				}
				else {
					if ( _cnt38>=1 ) { break _loop38; } else {throw new NoViableAltException(_t);}
				}
				
				_cnt38++;
			} while (true);
			}
			_t = __t36;
			_t = _t.getNextSibling();
		}
		catch (RecognitionException ex) {
			reportError(ex);
			if (_t!=null) {_t = _t.getNextSibling();}
		}
		_retTree = _t;
	}
	
	public final void attrScope(AST _t) throws RecognitionException {
		
		GrammarAST attrScope_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		
		try {      // for error handling
			AST __t17 = _t;
			GrammarAST tmp13_AST_in = (GrammarAST)_t;
			match(_t,SCOPE);
			_t = _t.getFirstChild();
			GrammarAST tmp14_AST_in = (GrammarAST)_t;
			match(_t,ID);
			_t = _t.getNextSibling();
			GrammarAST tmp15_AST_in = (GrammarAST)_t;
			match(_t,ACTION);
			_t = _t.getNextSibling();
			_t = __t17;
			_t = _t.getNextSibling();
		}
		catch (RecognitionException ex) {
			reportError(ex);
			if (_t!=null) {_t = _t.getNextSibling();}
		}
		_retTree = _t;
	}
	
	public final void rules(AST _t) throws RecognitionException {
		
		GrammarAST rules_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		
		try {      // for error handling
			{
			int _cnt44=0;
			_loop44:
			do {
				if (_t==null) _t=ASTNULL;
				if ((_t.getType()==RULE)) {
					rule(_t);
					_t = _retTree;
				}
				else {
					if ( _cnt44>=1 ) { break _loop44; } else {throw new NoViableAltException(_t);}
				}
				
				_cnt44++;
			} while (true);
			}
		}
		catch (RecognitionException ex) {
			reportError(ex);
			if (_t!=null) {_t = _t.getNextSibling();}
		}
		_retTree = _t;
	}
	
	public final void option(AST _t,
		Map opts
	) throws RecognitionException {
		
		GrammarAST option_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		GrammarAST id = null;
		
		String key=null;
		Object value=null;
		
		
		try {      // for error handling
			AST __t23 = _t;
			GrammarAST tmp16_AST_in = (GrammarAST)_t;
			match(_t,ASSIGN);
			_t = _t.getFirstChild();
			id = (GrammarAST)_t;
			match(_t,ID);
			_t = _t.getNextSibling();
			key=id.getText();
			value=optionValue(_t);
			_t = _retTree;
			_t = __t23;
			_t = _t.getNextSibling();
			
			opts.put(key,value);
			// check for grammar-level option to import vocabulary
			if ( currentRuleName==null && key.equals("tokenVocab") ) {
			grammar.importTokenVocabulary(id,(String)value);
			}
			
		}
		catch (RecognitionException ex) {
			reportError(ex);
			if (_t!=null) {_t = _t.getNextSibling();}
		}
		_retTree = _t;
	}
	
	public final Object  optionValue(AST _t) throws RecognitionException {
		Object value=null;
		
		GrammarAST optionValue_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		GrammarAST id = null;
		GrammarAST s = null;
		GrammarAST c = null;
		GrammarAST i = null;
		
		try {      // for error handling
			if (_t==null) _t=ASTNULL;
			switch ( _t.getType()) {
			case ID:
			{
				id = (GrammarAST)_t;
				match(_t,ID);
				_t = _t.getNextSibling();
				value = id.getText();
				break;
			}
			case STRING_LITERAL:
			{
				s = (GrammarAST)_t;
				match(_t,STRING_LITERAL);
				_t = _t.getNextSibling();
				value = s.getText();
				break;
			}
			case CHAR_LITERAL:
			{
				c = (GrammarAST)_t;
				match(_t,CHAR_LITERAL);
				_t = _t.getNextSibling();
				value = c.getText();
				break;
			}
			case INT:
			{
				i = (GrammarAST)_t;
				match(_t,INT);
				_t = _t.getNextSibling();
				value = new Integer(i.getText());
				break;
			}
			default:
			{
				throw new NoViableAltException(_t);
			}
			}
		}
		catch (RecognitionException ex) {
			reportError(ex);
			if (_t!=null) {_t = _t.getNextSibling();}
		}
		_retTree = _t;
		return value;
	}
	
	public final void charSet(AST _t) throws RecognitionException {
		
		GrammarAST charSet_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		
		try {      // for error handling
			AST __t26 = _t;
			GrammarAST tmp17_AST_in = (GrammarAST)_t;
			match(_t,CHARSET);
			_t = _t.getFirstChild();
			charSetElement(_t);
			_t = _retTree;
			_t = __t26;
			_t = _t.getNextSibling();
		}
		catch (RecognitionException ex) {
			reportError(ex);
			if (_t!=null) {_t = _t.getNextSibling();}
		}
		_retTree = _t;
	}
	
	public final void charSetElement(AST _t) throws RecognitionException {
		
		GrammarAST charSetElement_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		GrammarAST c = null;
		GrammarAST c1 = null;
		GrammarAST c2 = null;
		GrammarAST c3 = null;
		GrammarAST c4 = null;
		
		try {      // for error handling
			if (_t==null) _t=ASTNULL;
			switch ( _t.getType()) {
			case CHAR_LITERAL:
			{
				c = (GrammarAST)_t;
				match(_t,CHAR_LITERAL);
				_t = _t.getNextSibling();
				break;
			}
			case OR:
			{
				AST __t28 = _t;
				GrammarAST tmp18_AST_in = (GrammarAST)_t;
				match(_t,OR);
				_t = _t.getFirstChild();
				c1 = (GrammarAST)_t;
				match(_t,CHAR_LITERAL);
				_t = _t.getNextSibling();
				c2 = (GrammarAST)_t;
				match(_t,CHAR_LITERAL);
				_t = _t.getNextSibling();
				_t = __t28;
				_t = _t.getNextSibling();
				break;
			}
			case RANGE:
			{
				AST __t29 = _t;
				GrammarAST tmp19_AST_in = (GrammarAST)_t;
				match(_t,RANGE);
				_t = _t.getFirstChild();
				c3 = (GrammarAST)_t;
				match(_t,CHAR_LITERAL);
				_t = _t.getNextSibling();
				c4 = (GrammarAST)_t;
				match(_t,CHAR_LITERAL);
				_t = _t.getNextSibling();
				_t = __t29;
				_t = _t.getNextSibling();
				break;
			}
			default:
			{
				throw new NoViableAltException(_t);
			}
			}
		}
		catch (RecognitionException ex) {
			reportError(ex);
			if (_t!=null) {_t = _t.getNextSibling();}
		}
		_retTree = _t;
	}
	
	public final void tokenSpec(AST _t) throws RecognitionException {
		
		GrammarAST tokenSpec_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		GrammarAST t = null;
		GrammarAST t2 = null;
		GrammarAST s = null;
		GrammarAST c = null;
		
		try {      // for error handling
			if (_t==null) _t=ASTNULL;
			switch ( _t.getType()) {
			case TOKEN_REF:
			{
				t = (GrammarAST)_t;
				match(_t,TOKEN_REF);
				_t = _t.getNextSibling();
				trackToken(t);
				break;
			}
			case ASSIGN:
			{
				AST __t40 = _t;
				GrammarAST tmp20_AST_in = (GrammarAST)_t;
				match(_t,ASSIGN);
				_t = _t.getFirstChild();
				t2 = (GrammarAST)_t;
				match(_t,TOKEN_REF);
				_t = _t.getNextSibling();
				trackToken(t2);
				{
				if (_t==null) _t=ASTNULL;
				switch ( _t.getType()) {
				case STRING_LITERAL:
				{
					s = (GrammarAST)_t;
					match(_t,STRING_LITERAL);
					_t = _t.getNextSibling();
					trackString(s); alias(t2,s);
					break;
				}
				case CHAR_LITERAL:
				{
					c = (GrammarAST)_t;
					match(_t,CHAR_LITERAL);
					_t = _t.getNextSibling();
					trackString(c); alias(t2,c);
					break;
				}
				default:
				{
					throw new NoViableAltException(_t);
				}
				}
				}
				_t = __t40;
				_t = _t.getNextSibling();
				break;
			}
			default:
			{
				throw new NoViableAltException(_t);
			}
			}
		}
		catch (RecognitionException ex) {
			reportError(ex);
			if (_t!=null) {_t = _t.getNextSibling();}
		}
		_retTree = _t;
	}
	
	public final void rule(AST _t) throws RecognitionException {
		
		GrammarAST rule_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		GrammarAST id = null;
		GrammarAST m = null;
		GrammarAST b = null;
		
		try {      // for error handling
			AST __t46 = _t;
			GrammarAST tmp21_AST_in = (GrammarAST)_t;
			match(_t,RULE);
			_t = _t.getFirstChild();
			id = (GrammarAST)_t;
			match(_t,ID);
			_t = _t.getNextSibling();
			currentRuleName=id.getText();
			{
			if (_t==null) _t=ASTNULL;
			switch ( _t.getType()) {
			case FRAGMENT:
			case LITERAL_protected:
			case LITERAL_public:
			case LITERAL_private:
			{
				m = _t==ASTNULL ? null : (GrammarAST)_t;
				modifier(_t);
				_t = _retTree;
				break;
			}
			case ARG:
			{
				break;
			}
			default:
			{
				throw new NoViableAltException(_t);
			}
			}
			}
			{
			GrammarAST tmp22_AST_in = (GrammarAST)_t;
			match(_t,ARG);
			_t = _t.getNextSibling();
			{
			if (_t==null) _t=ASTNULL;
			switch ( _t.getType()) {
			case ARG_ACTION:
			{
				GrammarAST tmp23_AST_in = (GrammarAST)_t;
				match(_t,ARG_ACTION);
				_t = _t.getNextSibling();
				break;
			}
			case RET:
			{
				break;
			}
			default:
			{
				throw new NoViableAltException(_t);
			}
			}
			}
			}
			{
			GrammarAST tmp24_AST_in = (GrammarAST)_t;
			match(_t,RET);
			_t = _t.getNextSibling();
			{
			if (_t==null) _t=ASTNULL;
			switch ( _t.getType()) {
			case ARG_ACTION:
			{
				GrammarAST tmp25_AST_in = (GrammarAST)_t;
				match(_t,ARG_ACTION);
				_t = _t.getNextSibling();
				break;
			}
			case OPTIONS:
			case BLOCK:
			case SCOPE:
			case AMPERSAND:
			{
				break;
			}
			default:
			{
				throw new NoViableAltException(_t);
			}
			}
			}
			}
			{
			if (_t==null) _t=ASTNULL;
			switch ( _t.getType()) {
			case OPTIONS:
			{
				optionsSpec(_t);
				_t = _retTree;
				break;
			}
			case BLOCK:
			case SCOPE:
			case AMPERSAND:
			{
				break;
			}
			default:
			{
				throw new NoViableAltException(_t);
			}
			}
			}
			{
			if (_t==null) _t=ASTNULL;
			switch ( _t.getType()) {
			case SCOPE:
			{
				ruleScopeSpec(_t);
				_t = _retTree;
				break;
			}
			case BLOCK:
			case AMPERSAND:
			{
				break;
			}
			default:
			{
				throw new NoViableAltException(_t);
			}
			}
			}
			{
			_loop55:
			do {
				if (_t==null) _t=ASTNULL;
				if ((_t.getType()==AMPERSAND)) {
					GrammarAST tmp26_AST_in = (GrammarAST)_t;
					match(_t,AMPERSAND);
					_t = _t.getNextSibling();
				}
				else {
					break _loop55;
				}
				
			} while (true);
			}
			b = _t==ASTNULL ? null : (GrammarAST)_t;
			block(_t);
			_t = _retTree;
			{
			if (_t==null) _t=ASTNULL;
			switch ( _t.getType()) {
			case LITERAL_catch:
			case LITERAL_finally:
			{
				exceptionGroup(_t);
				_t = _retTree;
				break;
			}
			case EOR:
			{
				break;
			}
			default:
			{
				throw new NoViableAltException(_t);
			}
			}
			}
			GrammarAST tmp27_AST_in = (GrammarAST)_t;
			match(_t,EOR);
			_t = _t.getNextSibling();
			trackTokenRule(id,m,b);
			_t = __t46;
			_t = _t.getNextSibling();
		}
		catch (RecognitionException ex) {
			reportError(ex);
			if (_t!=null) {_t = _t.getNextSibling();}
		}
		_retTree = _t;
	}
	
	public final void modifier(AST _t) throws RecognitionException {
		
		GrammarAST modifier_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		
		try {      // for error handling
			if (_t==null) _t=ASTNULL;
			switch ( _t.getType()) {
			case LITERAL_protected:
			{
				GrammarAST tmp28_AST_in = (GrammarAST)_t;
				match(_t,LITERAL_protected);
				_t = _t.getNextSibling();
				break;
			}
			case LITERAL_public:
			{
				GrammarAST tmp29_AST_in = (GrammarAST)_t;
				match(_t,LITERAL_public);
				_t = _t.getNextSibling();
				break;
			}
			case LITERAL_private:
			{
				GrammarAST tmp30_AST_in = (GrammarAST)_t;
				match(_t,LITERAL_private);
				_t = _t.getNextSibling();
				break;
			}
			case FRAGMENT:
			{
				GrammarAST tmp31_AST_in = (GrammarAST)_t;
				match(_t,FRAGMENT);
				_t = _t.getNextSibling();
				break;
			}
			default:
			{
				throw new NoViableAltException(_t);
			}
			}
		}
		catch (RecognitionException ex) {
			reportError(ex);
			if (_t!=null) {_t = _t.getNextSibling();}
		}
		_retTree = _t;
	}
	
	public final void ruleScopeSpec(AST _t) throws RecognitionException {
		
		GrammarAST ruleScopeSpec_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		
		try {      // for error handling
			AST __t59 = _t;
			GrammarAST tmp32_AST_in = (GrammarAST)_t;
			match(_t,SCOPE);
			_t = _t.getFirstChild();
			{
			if (_t==null) _t=ASTNULL;
			switch ( _t.getType()) {
			case ACTION:
			{
				GrammarAST tmp33_AST_in = (GrammarAST)_t;
				match(_t,ACTION);
				_t = _t.getNextSibling();
				break;
			}
			case 3:
			case ID:
			{
				break;
			}
			default:
			{
				throw new NoViableAltException(_t);
			}
			}
			}
			{
			_loop62:
			do {
				if (_t==null) _t=ASTNULL;
				if ((_t.getType()==ID)) {
					GrammarAST tmp34_AST_in = (GrammarAST)_t;
					match(_t,ID);
					_t = _t.getNextSibling();
				}
				else {
					break _loop62;
				}
				
			} while (true);
			}
			_t = __t59;
			_t = _t.getNextSibling();
		}
		catch (RecognitionException ex) {
			reportError(ex);
			if (_t!=null) {_t = _t.getNextSibling();}
		}
		_retTree = _t;
	}
	
	public final void block(AST _t) throws RecognitionException {
		
		GrammarAST block_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		
		try {      // for error handling
			AST __t64 = _t;
			GrammarAST tmp35_AST_in = (GrammarAST)_t;
			match(_t,BLOCK);
			_t = _t.getFirstChild();
			{
			if (_t==null) _t=ASTNULL;
			switch ( _t.getType()) {
			case OPTIONS:
			{
				optionsSpec(_t);
				_t = _retTree;
				break;
			}
			case ALT:
			{
				break;
			}
			default:
			{
				throw new NoViableAltException(_t);
			}
			}
			}
			{
			int _cnt67=0;
			_loop67:
			do {
				if (_t==null) _t=ASTNULL;
				if ((_t.getType()==ALT)) {
					alternative(_t);
					_t = _retTree;
					rewrite(_t);
					_t = _retTree;
				}
				else {
					if ( _cnt67>=1 ) { break _loop67; } else {throw new NoViableAltException(_t);}
				}
				
				_cnt67++;
			} while (true);
			}
			GrammarAST tmp36_AST_in = (GrammarAST)_t;
			match(_t,EOB);
			_t = _t.getNextSibling();
			_t = __t64;
			_t = _t.getNextSibling();
		}
		catch (RecognitionException ex) {
			reportError(ex);
			if (_t!=null) {_t = _t.getNextSibling();}
		}
		_retTree = _t;
	}
	
	public final void exceptionGroup(AST _t) throws RecognitionException {
		
		GrammarAST exceptionGroup_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		
		try {      // for error handling
			if (_t==null) _t=ASTNULL;
			switch ( _t.getType()) {
			case LITERAL_catch:
			{
				{
				int _cnt74=0;
				_loop74:
				do {
					if (_t==null) _t=ASTNULL;
					if ((_t.getType()==LITERAL_catch)) {
						exceptionHandler(_t);
						_t = _retTree;
					}
					else {
						if ( _cnt74>=1 ) { break _loop74; } else {throw new NoViableAltException(_t);}
					}
					
					_cnt74++;
				} while (true);
				}
				{
				if (_t==null) _t=ASTNULL;
				switch ( _t.getType()) {
				case LITERAL_finally:
				{
					finallyClause(_t);
					_t = _retTree;
					break;
				}
				case EOR:
				{
					break;
				}
				default:
				{
					throw new NoViableAltException(_t);
				}
				}
				}
				break;
			}
			case LITERAL_finally:
			{
				finallyClause(_t);
				_t = _retTree;
				break;
			}
			default:
			{
				throw new NoViableAltException(_t);
			}
			}
		}
		catch (RecognitionException ex) {
			reportError(ex);
			if (_t!=null) {_t = _t.getNextSibling();}
		}
		_retTree = _t;
	}
	
	public final void alternative(AST _t) throws RecognitionException {
		
		GrammarAST alternative_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		
		try {      // for error handling
			AST __t69 = _t;
			GrammarAST tmp37_AST_in = (GrammarAST)_t;
			match(_t,ALT);
			_t = _t.getFirstChild();
			{
			int _cnt71=0;
			_loop71:
			do {
				if (_t==null) _t=ASTNULL;
				if ((_t.getType()==BLOCK||_t.getType()==OPTIONAL||_t.getType()==CLOSURE||_t.getType()==POSITIVE_CLOSURE||_t.getType()==SYNPRED||_t.getType()==RANGE||_t.getType()==CHAR_RANGE||_t.getType()==EPSILON||_t.getType()==FORCED_ACTION||_t.getType()==GATED_SEMPRED||_t.getType()==SYN_SEMPRED||_t.getType()==BACKTRACK_SEMPRED||_t.getType()==DOT||_t.getType()==ACTION||_t.getType()==ASSIGN||_t.getType()==STRING_LITERAL||_t.getType()==CHAR_LITERAL||_t.getType()==TOKEN_REF||_t.getType()==BANG||_t.getType()==PLUS_ASSIGN||_t.getType()==SEMPRED||_t.getType()==ROOT||_t.getType()==WILDCARD||_t.getType()==RULE_REF||_t.getType()==NOT||_t.getType()==TREE_BEGIN)) {
					element(_t);
					_t = _retTree;
				}
				else {
					if ( _cnt71>=1 ) { break _loop71; } else {throw new NoViableAltException(_t);}
				}
				
				_cnt71++;
			} while (true);
			}
			GrammarAST tmp38_AST_in = (GrammarAST)_t;
			match(_t,EOA);
			_t = _t.getNextSibling();
			_t = __t69;
			_t = _t.getNextSibling();
		}
		catch (RecognitionException ex) {
			reportError(ex);
			if (_t!=null) {_t = _t.getNextSibling();}
		}
		_retTree = _t;
	}
	
	public final void rewrite(AST _t) throws RecognitionException {
		
		GrammarAST rewrite_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		
		try {      // for error handling
			{
			_loop85:
			do {
				if (_t==null) _t=ASTNULL;
				if ((_t.getType()==REWRITE)) {
					AST __t82 = _t;
					GrammarAST tmp39_AST_in = (GrammarAST)_t;
					match(_t,REWRITE);
					_t = _t.getFirstChild();
					{
					if (_t==null) _t=ASTNULL;
					switch ( _t.getType()) {
					case SEMPRED:
					{
						GrammarAST tmp40_AST_in = (GrammarAST)_t;
						match(_t,SEMPRED);
						_t = _t.getNextSibling();
						break;
					}
					case ALT:
					case TEMPLATE:
					case ACTION:
					case ETC:
					{
						break;
					}
					default:
					{
						throw new NoViableAltException(_t);
					}
					}
					}
					{
					if (_t==null) _t=ASTNULL;
					switch ( _t.getType()) {
					case ALT:
					{
						GrammarAST tmp41_AST_in = (GrammarAST)_t;
						match(_t,ALT);
						_t = _t.getNextSibling();
						break;
					}
					case TEMPLATE:
					{
						GrammarAST tmp42_AST_in = (GrammarAST)_t;
						match(_t,TEMPLATE);
						_t = _t.getNextSibling();
						break;
					}
					case ACTION:
					{
						GrammarAST tmp43_AST_in = (GrammarAST)_t;
						match(_t,ACTION);
						_t = _t.getNextSibling();
						break;
					}
					case ETC:
					{
						GrammarAST tmp44_AST_in = (GrammarAST)_t;
						match(_t,ETC);
						_t = _t.getNextSibling();
						break;
					}
					default:
					{
						throw new NoViableAltException(_t);
					}
					}
					}
					_t = __t82;
					_t = _t.getNextSibling();
				}
				else {
					break _loop85;
				}
				
			} while (true);
			}
		}
		catch (RecognitionException ex) {
			reportError(ex);
			if (_t!=null) {_t = _t.getNextSibling();}
		}
		_retTree = _t;
	}
	
	public final void element(AST _t) throws RecognitionException {
		
		GrammarAST element_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		
		try {      // for error handling
			if (_t==null) _t=ASTNULL;
			switch ( _t.getType()) {
			case ROOT:
			{
				AST __t87 = _t;
				GrammarAST tmp45_AST_in = (GrammarAST)_t;
				match(_t,ROOT);
				_t = _t.getFirstChild();
				element(_t);
				_t = _retTree;
				_t = __t87;
				_t = _t.getNextSibling();
				break;
			}
			case BANG:
			{
				AST __t88 = _t;
				GrammarAST tmp46_AST_in = (GrammarAST)_t;
				match(_t,BANG);
				_t = _t.getFirstChild();
				element(_t);
				_t = _retTree;
				_t = __t88;
				_t = _t.getNextSibling();
				break;
			}
			case DOT:
			case STRING_LITERAL:
			case CHAR_LITERAL:
			case TOKEN_REF:
			case WILDCARD:
			case RULE_REF:
			{
				atom(_t);
				_t = _retTree;
				break;
			}
			case NOT:
			{
				AST __t89 = _t;
				GrammarAST tmp47_AST_in = (GrammarAST)_t;
				match(_t,NOT);
				_t = _t.getFirstChild();
				element(_t);
				_t = _retTree;
				_t = __t89;
				_t = _t.getNextSibling();
				break;
			}
			case RANGE:
			{
				AST __t90 = _t;
				GrammarAST tmp48_AST_in = (GrammarAST)_t;
				match(_t,RANGE);
				_t = _t.getFirstChild();
				atom(_t);
				_t = _retTree;
				atom(_t);
				_t = _retTree;
				_t = __t90;
				_t = _t.getNextSibling();
				break;
			}
			case CHAR_RANGE:
			{
				AST __t91 = _t;
				GrammarAST tmp49_AST_in = (GrammarAST)_t;
				match(_t,CHAR_RANGE);
				_t = _t.getFirstChild();
				atom(_t);
				_t = _retTree;
				atom(_t);
				_t = _retTree;
				_t = __t91;
				_t = _t.getNextSibling();
				break;
			}
			case ASSIGN:
			{
				AST __t92 = _t;
				GrammarAST tmp50_AST_in = (GrammarAST)_t;
				match(_t,ASSIGN);
				_t = _t.getFirstChild();
				GrammarAST tmp51_AST_in = (GrammarAST)_t;
				match(_t,ID);
				_t = _t.getNextSibling();
				element(_t);
				_t = _retTree;
				_t = __t92;
				_t = _t.getNextSibling();
				break;
			}
			case PLUS_ASSIGN:
			{
				AST __t93 = _t;
				GrammarAST tmp52_AST_in = (GrammarAST)_t;
				match(_t,PLUS_ASSIGN);
				_t = _t.getFirstChild();
				GrammarAST tmp53_AST_in = (GrammarAST)_t;
				match(_t,ID);
				_t = _t.getNextSibling();
				element(_t);
				_t = _retTree;
				_t = __t93;
				_t = _t.getNextSibling();
				break;
			}
			case BLOCK:
			case OPTIONAL:
			case CLOSURE:
			case POSITIVE_CLOSURE:
			{
				ebnf(_t);
				_t = _retTree;
				break;
			}
			case TREE_BEGIN:
			{
				tree(_t);
				_t = _retTree;
				break;
			}
			case SYNPRED:
			{
				AST __t94 = _t;
				GrammarAST tmp54_AST_in = (GrammarAST)_t;
				match(_t,SYNPRED);
				_t = _t.getFirstChild();
				block(_t);
				_t = _retTree;
				_t = __t94;
				_t = _t.getNextSibling();
				break;
			}
			case FORCED_ACTION:
			{
				GrammarAST tmp55_AST_in = (GrammarAST)_t;
				match(_t,FORCED_ACTION);
				_t = _t.getNextSibling();
				break;
			}
			case ACTION:
			{
				GrammarAST tmp56_AST_in = (GrammarAST)_t;
				match(_t,ACTION);
				_t = _t.getNextSibling();
				break;
			}
			case SEMPRED:
			{
				GrammarAST tmp57_AST_in = (GrammarAST)_t;
				match(_t,SEMPRED);
				_t = _t.getNextSibling();
				break;
			}
			case SYN_SEMPRED:
			{
				GrammarAST tmp58_AST_in = (GrammarAST)_t;
				match(_t,SYN_SEMPRED);
				_t = _t.getNextSibling();
				break;
			}
			case BACKTRACK_SEMPRED:
			{
				GrammarAST tmp59_AST_in = (GrammarAST)_t;
				match(_t,BACKTRACK_SEMPRED);
				_t = _t.getNextSibling();
				break;
			}
			case GATED_SEMPRED:
			{
				GrammarAST tmp60_AST_in = (GrammarAST)_t;
				match(_t,GATED_SEMPRED);
				_t = _t.getNextSibling();
				break;
			}
			case EPSILON:
			{
				GrammarAST tmp61_AST_in = (GrammarAST)_t;
				match(_t,EPSILON);
				_t = _t.getNextSibling();
				break;
			}
			default:
			{
				throw new NoViableAltException(_t);
			}
			}
		}
		catch (RecognitionException ex) {
			reportError(ex);
			if (_t!=null) {_t = _t.getNextSibling();}
		}
		_retTree = _t;
	}
	
	public final void exceptionHandler(AST _t) throws RecognitionException {
		
		GrammarAST exceptionHandler_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		
		try {      // for error handling
			AST __t77 = _t;
			GrammarAST tmp62_AST_in = (GrammarAST)_t;
			match(_t,LITERAL_catch);
			_t = _t.getFirstChild();
			GrammarAST tmp63_AST_in = (GrammarAST)_t;
			match(_t,ARG_ACTION);
			_t = _t.getNextSibling();
			GrammarAST tmp64_AST_in = (GrammarAST)_t;
			match(_t,ACTION);
			_t = _t.getNextSibling();
			_t = __t77;
			_t = _t.getNextSibling();
		}
		catch (RecognitionException ex) {
			reportError(ex);
			if (_t!=null) {_t = _t.getNextSibling();}
		}
		_retTree = _t;
	}
	
	public final void finallyClause(AST _t) throws RecognitionException {
		
		GrammarAST finallyClause_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		
		try {      // for error handling
			AST __t79 = _t;
			GrammarAST tmp65_AST_in = (GrammarAST)_t;
			match(_t,LITERAL_finally);
			_t = _t.getFirstChild();
			GrammarAST tmp66_AST_in = (GrammarAST)_t;
			match(_t,ACTION);
			_t = _t.getNextSibling();
			_t = __t79;
			_t = _t.getNextSibling();
		}
		catch (RecognitionException ex) {
			reportError(ex);
			if (_t!=null) {_t = _t.getNextSibling();}
		}
		_retTree = _t;
	}
	
	public final void atom(AST _t) throws RecognitionException {
		
		GrammarAST atom_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		GrammarAST rr = null;
		GrammarAST rarg = null;
		GrammarAST t = null;
		GrammarAST targ = null;
		GrammarAST c = null;
		GrammarAST s = null;
		
		try {      // for error handling
			if (_t==null) _t=ASTNULL;
			switch ( _t.getType()) {
			case RULE_REF:
			{
				AST __t104 = _t;
				rr = _t==ASTNULL ? null :(GrammarAST)_t;
				match(_t,RULE_REF);
				_t = _t.getFirstChild();
				{
				if (_t==null) _t=ASTNULL;
				switch ( _t.getType()) {
				case ARG_ACTION:
				{
					rarg = (GrammarAST)_t;
					match(_t,ARG_ACTION);
					_t = _t.getNextSibling();
					break;
				}
				case 3:
				{
					break;
				}
				default:
				{
					throw new NoViableAltException(_t);
				}
				}
				}
				_t = __t104;
				_t = _t.getNextSibling();
				break;
			}
			case TOKEN_REF:
			{
				AST __t106 = _t;
				t = _t==ASTNULL ? null :(GrammarAST)_t;
				match(_t,TOKEN_REF);
				_t = _t.getFirstChild();
				{
				if (_t==null) _t=ASTNULL;
				switch ( _t.getType()) {
				case ARG_ACTION:
				{
					targ = (GrammarAST)_t;
					match(_t,ARG_ACTION);
					_t = _t.getNextSibling();
					break;
				}
				case 3:
				{
					break;
				}
				default:
				{
					throw new NoViableAltException(_t);
				}
				}
				}
				_t = __t106;
				_t = _t.getNextSibling();
				trackToken(t);
				break;
			}
			case CHAR_LITERAL:
			{
				c = (GrammarAST)_t;
				match(_t,CHAR_LITERAL);
				_t = _t.getNextSibling();
				trackString(c);
				break;
			}
			case STRING_LITERAL:
			{
				s = (GrammarAST)_t;
				match(_t,STRING_LITERAL);
				_t = _t.getNextSibling();
				trackString(s);
				break;
			}
			case WILDCARD:
			{
				GrammarAST tmp67_AST_in = (GrammarAST)_t;
				match(_t,WILDCARD);
				_t = _t.getNextSibling();
				break;
			}
			case DOT:
			{
				AST __t108 = _t;
				GrammarAST tmp68_AST_in = (GrammarAST)_t;
				match(_t,DOT);
				_t = _t.getFirstChild();
				GrammarAST tmp69_AST_in = (GrammarAST)_t;
				match(_t,ID);
				_t = _t.getNextSibling();
				atom(_t);
				_t = _retTree;
				_t = __t108;
				_t = _t.getNextSibling();
				break;
			}
			default:
			{
				throw new NoViableAltException(_t);
			}
			}
		}
		catch (RecognitionException ex) {
			reportError(ex);
			if (_t!=null) {_t = _t.getNextSibling();}
		}
		_retTree = _t;
	}
	
	public final void ebnf(AST _t) throws RecognitionException {
		
		GrammarAST ebnf_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		
		try {      // for error handling
			if (_t==null) _t=ASTNULL;
			switch ( _t.getType()) {
			case BLOCK:
			{
				block(_t);
				_t = _retTree;
				break;
			}
			case OPTIONAL:
			{
				AST __t96 = _t;
				GrammarAST tmp70_AST_in = (GrammarAST)_t;
				match(_t,OPTIONAL);
				_t = _t.getFirstChild();
				block(_t);
				_t = _retTree;
				_t = __t96;
				_t = _t.getNextSibling();
				break;
			}
			case CLOSURE:
			{
				AST __t97 = _t;
				GrammarAST tmp71_AST_in = (GrammarAST)_t;
				match(_t,CLOSURE);
				_t = _t.getFirstChild();
				block(_t);
				_t = _retTree;
				_t = __t97;
				_t = _t.getNextSibling();
				break;
			}
			case POSITIVE_CLOSURE:
			{
				AST __t98 = _t;
				GrammarAST tmp72_AST_in = (GrammarAST)_t;
				match(_t,POSITIVE_CLOSURE);
				_t = _t.getFirstChild();
				block(_t);
				_t = _retTree;
				_t = __t98;
				_t = _t.getNextSibling();
				break;
			}
			default:
			{
				throw new NoViableAltException(_t);
			}
			}
		}
		catch (RecognitionException ex) {
			reportError(ex);
			if (_t!=null) {_t = _t.getNextSibling();}
		}
		_retTree = _t;
	}
	
	public final void tree(AST _t) throws RecognitionException {
		
		GrammarAST tree_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		
		try {      // for error handling
			AST __t100 = _t;
			GrammarAST tmp73_AST_in = (GrammarAST)_t;
			match(_t,TREE_BEGIN);
			_t = _t.getFirstChild();
			element(_t);
			_t = _retTree;
			{
			_loop102:
			do {
				if (_t==null) _t=ASTNULL;
				if ((_t.getType()==BLOCK||_t.getType()==OPTIONAL||_t.getType()==CLOSURE||_t.getType()==POSITIVE_CLOSURE||_t.getType()==SYNPRED||_t.getType()==RANGE||_t.getType()==CHAR_RANGE||_t.getType()==EPSILON||_t.getType()==FORCED_ACTION||_t.getType()==GATED_SEMPRED||_t.getType()==SYN_SEMPRED||_t.getType()==BACKTRACK_SEMPRED||_t.getType()==DOT||_t.getType()==ACTION||_t.getType()==ASSIGN||_t.getType()==STRING_LITERAL||_t.getType()==CHAR_LITERAL||_t.getType()==TOKEN_REF||_t.getType()==BANG||_t.getType()==PLUS_ASSIGN||_t.getType()==SEMPRED||_t.getType()==ROOT||_t.getType()==WILDCARD||_t.getType()==RULE_REF||_t.getType()==NOT||_t.getType()==TREE_BEGIN)) {
					element(_t);
					_t = _retTree;
				}
				else {
					break _loop102;
				}
				
			} while (true);
			}
			_t = __t100;
			_t = _t.getNextSibling();
		}
		catch (RecognitionException ex) {
			reportError(ex);
			if (_t!=null) {_t = _t.getNextSibling();}
		}
		_retTree = _t;
	}
	
	public final void ast_suffix(AST _t) throws RecognitionException {
		
		GrammarAST ast_suffix_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		
		try {      // for error handling
			if (_t==null) _t=ASTNULL;
			switch ( _t.getType()) {
			case ROOT:
			{
				GrammarAST tmp74_AST_in = (GrammarAST)_t;
				match(_t,ROOT);
				_t = _t.getNextSibling();
				break;
			}
			case BANG:
			{
				GrammarAST tmp75_AST_in = (GrammarAST)_t;
				match(_t,BANG);
				_t = _t.getNextSibling();
				break;
			}
			default:
			{
				throw new NoViableAltException(_t);
			}
			}
		}
		catch (RecognitionException ex) {
			reportError(ex);
			if (_t!=null) {_t = _t.getNextSibling();}
		}
		_retTree = _t;
	}
	
	
	public static final String[] _tokenNames = {
		"<0>",
		"EOF",
		"<2>",
		"NULL_TREE_LOOKAHEAD",
		"\"options\"",
		"\"tokens\"",
		"\"parser\"",
		"LEXER",
		"RULE",
		"BLOCK",
		"OPTIONAL",
		"CLOSURE",
		"POSITIVE_CLOSURE",
		"SYNPRED",
		"RANGE",
		"CHAR_RANGE",
		"EPSILON",
		"ALT",
		"EOR",
		"EOB",
		"EOA",
		"ID",
		"ARG",
		"ARGLIST",
		"RET",
		"LEXER_GRAMMAR",
		"PARSER_GRAMMAR",
		"TREE_GRAMMAR",
		"COMBINED_GRAMMAR",
		"INITACTION",
		"FORCED_ACTION",
		"LABEL",
		"TEMPLATE",
		"\"scope\"",
		"\"import\"",
		"GATED_SEMPRED",
		"SYN_SEMPRED",
		"BACKTRACK_SEMPRED",
		"\"fragment\"",
		"DOT",
		"ACTION",
		"DOC_COMMENT",
		"SEMI",
		"\"lexer\"",
		"\"tree\"",
		"\"grammar\"",
		"AMPERSAND",
		"COLON",
		"RCURLY",
		"ASSIGN",
		"STRING_LITERAL",
		"CHAR_LITERAL",
		"INT",
		"STAR",
		"COMMA",
		"TOKEN_REF",
		"\"protected\"",
		"\"public\"",
		"\"private\"",
		"BANG",
		"ARG_ACTION",
		"\"returns\"",
		"\"throws\"",
		"LPAREN",
		"OR",
		"RPAREN",
		"\"catch\"",
		"\"finally\"",
		"PLUS_ASSIGN",
		"SEMPRED",
		"IMPLIES",
		"ROOT",
		"WILDCARD",
		"RULE_REF",
		"NOT",
		"TREE_BEGIN",
		"QUESTION",
		"PLUS",
		"OPEN_ELEMENT_OPTION",
		"CLOSE_ELEMENT_OPTION",
		"REWRITE",
		"ETC",
		"DOLLAR",
		"DOUBLE_QUOTE_STRING_LITERAL",
		"DOUBLE_ANGLE_STRING_LITERAL",
		"WS",
		"COMMENT",
		"SL_COMMENT",
		"ML_COMMENT",
		"STRAY_BRACKET",
		"ESC",
		"DIGIT",
		"XDIGIT",
		"NESTED_ARG_ACTION",
		"NESTED_ACTION",
		"ACTION_CHAR_LITERAL",
		"ACTION_STRING_LITERAL",
		"ACTION_ESC",
		"WS_LOOP",
		"INTERNAL_RULE_REF",
		"WS_OPT",
		"SRC",
		"CHARSET"
	};
	
	}
	
