// $ANTLR 2.7.7 (20060906): "define.g" -> "DefineGrammarItemsWalker.java"$

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
	import org.antlr.misc.*;
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


public class DefineGrammarItemsWalker extends antlr.TreeParser       implements DefineGrammarItemsWalkerTokenTypes
 {
 

protected Grammar grammar;
protected GrammarAST root;
protected String currentRuleName;
protected GrammarAST currentRewriteBlock;
protected GrammarAST currentRewriteRule;
protected int outerAltNum = 0;
protected int blockLevel = 0;

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
            "define: "+ex.toString(),
            ex);
    }

	protected void finish() {
		trimGrammar();
	}

	/** Remove any lexer rules from a COMBINED; already passed to lexer */
	protected void trimGrammar() {
		if ( grammar.type!=Grammar.COMBINED ) {
			return;
		}
		// form is (header ... ) ( grammar ID (scope ...) ... ( rule ... ) ( rule ... ) ... )
		GrammarAST p = root;
		// find the grammar spec
		while ( !p.getText().equals("grammar") ) {
			p = (GrammarAST)p.getNextSibling();
		}
		p = (GrammarAST)p.getFirstChild(); // jump down to first child of grammar
		// look for first RULE def
		GrammarAST prev = p; // points to the ID (grammar name)
		while ( p.getType()!=RULE ) {
			prev = p;
			p = (GrammarAST)p.getNextSibling();
		}
		// prev points at last node before first rule subtree at this point
		while ( p!=null ) {
			String ruleName = p.getFirstChild().getText();
			//System.out.println("rule "+ruleName+" prev="+prev.getText());
			if ( Character.isUpperCase(ruleName.charAt(0)) ) {
				// remove lexer rule
				prev.setNextSibling(p.getNextSibling());
			}
			else {
				prev = p; // non-lexer rule; move on
			}
			p = (GrammarAST)p.getNextSibling();
		}
		//System.out.println("root after removal is: "+root.toStringList());
	}

    protected void trackInlineAction(GrammarAST actionAST) {
		Rule r = grammar.getRule(currentRuleName);
        if ( r!=null ) {
            r.trackInlineAction(actionAST);
        }
    }

public DefineGrammarItemsWalker() {
	tokenNames = _tokenNames;
}

	public final void grammar(AST _t,
		Grammar g
	) throws RecognitionException {
		
		GrammarAST grammar_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		
		grammar = g;
		root = grammar_AST_in;
		
		
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
				if ( inputState.guessing==0 ) {
					grammar.type = Grammar.LEXER;
				}
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
				if ( inputState.guessing==0 ) {
					grammar.type = Grammar.PARSER;
				}
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
				if ( inputState.guessing==0 ) {
					grammar.type = Grammar.TREE_PARSER;
				}
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
				if ( inputState.guessing==0 ) {
					grammar.type = Grammar.COMBINED;
				}
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
			if ( inputState.guessing==0 ) {
				finish();
			}
		}
		catch (RecognitionException ex) {
			if (inputState.guessing==0) {
				reportError(ex);
				if (_t!=null) {_t = _t.getNextSibling();}
			} else {
			  throw ex;
			}
		}
		_retTree = _t;
	}
	
	public final void grammarSpec(AST _t) throws RecognitionException {
		
		GrammarAST grammarSpec_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		GrammarAST id = null;
		GrammarAST cmt = null;
		
		Map opts=null;
		Token optionsStartToken=null;
		
		
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
				if ( inputState.guessing==0 ) {
					optionsStartToken=((GrammarAST)_t).getToken();
				}
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
			_loop15:
			do {
				if (_t==null) _t=ASTNULL;
				if ((_t.getType()==SCOPE)) {
					attrScope(_t);
					_t = _retTree;
				}
				else {
					break _loop15;
				}
				
			} while (true);
			}
			{
			if (_t==null) _t=ASTNULL;
			switch ( _t.getType()) {
			case AMPERSAND:
			{
				actions(_t);
				_t = _retTree;
				break;
			}
			case RULE:
			{
				break;
			}
			default:
			{
				throw new NoViableAltException(_t);
			}
			}
			}
			rules(_t);
			_t = _retTree;
		}
		catch (RecognitionException ex) {
			if (inputState.guessing==0) {
				reportError(ex);
				if (_t!=null) {_t = _t.getNextSibling();}
			} else {
			  throw ex;
			}
		}
		_retTree = _t;
	}
	
	public final void attrScope(AST _t) throws RecognitionException {
		
		GrammarAST attrScope_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		GrammarAST name = null;
		GrammarAST attrs = null;
		
		try {      // for error handling
			AST __t8 = _t;
			GrammarAST tmp5_AST_in = (GrammarAST)_t;
			match(_t,SCOPE);
			_t = _t.getFirstChild();
			name = (GrammarAST)_t;
			match(_t,ID);
			_t = _t.getNextSibling();
			attrs = (GrammarAST)_t;
			match(_t,ACTION);
			_t = _t.getNextSibling();
			_t = __t8;
			_t = _t.getNextSibling();
			if ( inputState.guessing==0 ) {
				
						AttributeScope scope = grammar.defineGlobalScope(name.getText(),attrs.token);
						scope.isDynamicGlobalScope = true;
						scope.addAttributes(attrs.getText(), ';');
						
			}
		}
		catch (RecognitionException ex) {
			if (inputState.guessing==0) {
				reportError(ex);
				if (_t!=null) {_t = _t.getNextSibling();}
			} else {
			  throw ex;
			}
		}
		_retTree = _t;
	}
	
	public final void optionsSpec(AST _t) throws RecognitionException {
		
		GrammarAST optionsSpec_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		
		try {      // for error handling
			GrammarAST tmp6_AST_in = (GrammarAST)_t;
			match(_t,OPTIONS);
			_t = _t.getNextSibling();
		}
		catch (RecognitionException ex) {
			if (inputState.guessing==0) {
				reportError(ex);
				if (_t!=null) {_t = _t.getNextSibling();}
			} else {
			  throw ex;
			}
		}
		_retTree = _t;
	}
	
	public final void delegateGrammars(AST _t) throws RecognitionException {
		
		GrammarAST delegateGrammars_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		
		try {      // for error handling
			AST __t25 = _t;
			GrammarAST tmp7_AST_in = (GrammarAST)_t;
			match(_t,IMPORT);
			_t = _t.getFirstChild();
			{
			int _cnt28=0;
			_loop28:
			do {
				if (_t==null) _t=ASTNULL;
				switch ( _t.getType()) {
				case ASSIGN:
				{
					AST __t27 = _t;
					GrammarAST tmp8_AST_in = (GrammarAST)_t;
					match(_t,ASSIGN);
					_t = _t.getFirstChild();
					GrammarAST tmp9_AST_in = (GrammarAST)_t;
					match(_t,ID);
					_t = _t.getNextSibling();
					GrammarAST tmp10_AST_in = (GrammarAST)_t;
					match(_t,ID);
					_t = _t.getNextSibling();
					_t = __t27;
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
					if ( _cnt28>=1 ) { break _loop28; } else {throw new NoViableAltException(_t);}
				}
				}
				_cnt28++;
			} while (true);
			}
			_t = __t25;
			_t = _t.getNextSibling();
		}
		catch (RecognitionException ex) {
			if (inputState.guessing==0) {
				reportError(ex);
				if (_t!=null) {_t = _t.getNextSibling();}
			} else {
			  throw ex;
			}
		}
		_retTree = _t;
	}
	
	public final void tokensSpec(AST _t) throws RecognitionException {
		
		GrammarAST tokensSpec_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		
		try {      // for error handling
			AST __t30 = _t;
			GrammarAST tmp12_AST_in = (GrammarAST)_t;
			match(_t,TOKENS);
			_t = _t.getFirstChild();
			{
			int _cnt32=0;
			_loop32:
			do {
				if (_t==null) _t=ASTNULL;
				if ((_t.getType()==ASSIGN||_t.getType()==TOKEN_REF)) {
					tokenSpec(_t);
					_t = _retTree;
				}
				else {
					if ( _cnt32>=1 ) { break _loop32; } else {throw new NoViableAltException(_t);}
				}
				
				_cnt32++;
			} while (true);
			}
			_t = __t30;
			_t = _t.getNextSibling();
		}
		catch (RecognitionException ex) {
			if (inputState.guessing==0) {
				reportError(ex);
				if (_t!=null) {_t = _t.getNextSibling();}
			} else {
			  throw ex;
			}
		}
		_retTree = _t;
	}
	
	public final void actions(AST _t) throws RecognitionException {
		
		GrammarAST actions_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		
		try {      // for error handling
			{
			int _cnt19=0;
			_loop19:
			do {
				if (_t==null) _t=ASTNULL;
				if ((_t.getType()==AMPERSAND)) {
					action(_t);
					_t = _retTree;
				}
				else {
					if ( _cnt19>=1 ) { break _loop19; } else {throw new NoViableAltException(_t);}
				}
				
				_cnt19++;
			} while (true);
			}
		}
		catch (RecognitionException ex) {
			if (inputState.guessing==0) {
				reportError(ex);
				if (_t!=null) {_t = _t.getNextSibling();}
			} else {
			  throw ex;
			}
		}
		_retTree = _t;
	}
	
	public final void rules(AST _t) throws RecognitionException {
		
		GrammarAST rules_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		
		try {      // for error handling
			{
			int _cnt38=0;
			_loop38:
			do {
				if (_t==null) _t=ASTNULL;
				if ((_t.getType()==RULE)) {
					rule(_t);
					_t = _retTree;
				}
				else {
					if ( _cnt38>=1 ) { break _loop38; } else {throw new NoViableAltException(_t);}
				}
				
				_cnt38++;
			} while (true);
			}
		}
		catch (RecognitionException ex) {
			if (inputState.guessing==0) {
				reportError(ex);
				if (_t!=null) {_t = _t.getNextSibling();}
			} else {
			  throw ex;
			}
		}
		_retTree = _t;
	}
	
	public final void action(AST _t) throws RecognitionException {
		
		GrammarAST action_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		GrammarAST amp = null;
		GrammarAST id1 = null;
		GrammarAST id2 = null;
		GrammarAST a1 = null;
		GrammarAST a2 = null;
		
		String scope=null;
		GrammarAST nameAST=null, actionAST=null;
		
		
		try {      // for error handling
			AST __t21 = _t;
			amp = _t==ASTNULL ? null :(GrammarAST)_t;
			match(_t,AMPERSAND);
			_t = _t.getFirstChild();
			id1 = (GrammarAST)_t;
			match(_t,ID);
			_t = _t.getNextSibling();
			{
			if (_t==null) _t=ASTNULL;
			switch ( _t.getType()) {
			case ID:
			{
				id2 = (GrammarAST)_t;
				match(_t,ID);
				_t = _t.getNextSibling();
				a1 = (GrammarAST)_t;
				match(_t,ACTION);
				_t = _t.getNextSibling();
				if ( inputState.guessing==0 ) {
					scope=id1.getText(); nameAST=id2; actionAST=a1;
				}
				break;
			}
			case ACTION:
			{
				a2 = (GrammarAST)_t;
				match(_t,ACTION);
				_t = _t.getNextSibling();
				if ( inputState.guessing==0 ) {
					scope=null; nameAST=id1; actionAST=a2;
				}
				break;
			}
			default:
			{
				throw new NoViableAltException(_t);
			}
			}
			}
			_t = __t21;
			_t = _t.getNextSibling();
			if ( inputState.guessing==0 ) {
				
						 grammar.defineNamedAction(amp,scope,nameAST,actionAST);
						
			}
		}
		catch (RecognitionException ex) {
			if (inputState.guessing==0) {
				reportError(ex);
				if (_t!=null) {_t = _t.getNextSibling();}
			} else {
			  throw ex;
			}
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
				break;
			}
			case ASSIGN:
			{
				AST __t34 = _t;
				GrammarAST tmp13_AST_in = (GrammarAST)_t;
				match(_t,ASSIGN);
				_t = _t.getFirstChild();
				t2 = (GrammarAST)_t;
				match(_t,TOKEN_REF);
				_t = _t.getNextSibling();
				{
				if (_t==null) _t=ASTNULL;
				switch ( _t.getType()) {
				case STRING_LITERAL:
				{
					s = (GrammarAST)_t;
					match(_t,STRING_LITERAL);
					_t = _t.getNextSibling();
					break;
				}
				case CHAR_LITERAL:
				{
					c = (GrammarAST)_t;
					match(_t,CHAR_LITERAL);
					_t = _t.getNextSibling();
					break;
				}
				default:
				{
					throw new NoViableAltException(_t);
				}
				}
				}
				_t = __t34;
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
			if (inputState.guessing==0) {
				reportError(ex);
				if (_t!=null) {_t = _t.getNextSibling();}
			} else {
			  throw ex;
			}
		}
		_retTree = _t;
	}
	
	public final void rule(AST _t) throws RecognitionException {
		
		GrammarAST rule_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		GrammarAST id = null;
		GrammarAST args = null;
		GrammarAST ret = null;
		GrammarAST b = null;
		
		String mod=null;
		String name=null;
		Map opts=null;
		Rule r = null;
		
		
		try {      // for error handling
			AST __t40 = _t;
			GrammarAST tmp14_AST_in = (GrammarAST)_t;
			match(_t,RULE);
			_t = _t.getFirstChild();
			id = (GrammarAST)_t;
			match(_t,ID);
			_t = _t.getNextSibling();
			if ( inputState.guessing==0 ) {
				opts = tmp14_AST_in.getBlockOptions();
			}
			{
			if (_t==null) _t=ASTNULL;
			switch ( _t.getType()) {
			case FRAGMENT:
			case LITERAL_protected:
			case LITERAL_public:
			case LITERAL_private:
			{
				mod=modifier(_t);
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
			AST __t42 = _t;
			GrammarAST tmp15_AST_in = (GrammarAST)_t;
			match(_t,ARG);
			_t = _t.getFirstChild();
			{
			if (_t==null) _t=ASTNULL;
			switch ( _t.getType()) {
			case ARG_ACTION:
			{
				args = (GrammarAST)_t;
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
			_t = __t42;
			_t = _t.getNextSibling();
			AST __t44 = _t;
			GrammarAST tmp16_AST_in = (GrammarAST)_t;
			match(_t,RET);
			_t = _t.getFirstChild();
			{
			if (_t==null) _t=ASTNULL;
			switch ( _t.getType()) {
			case ARG_ACTION:
			{
				ret = (GrammarAST)_t;
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
			_t = __t44;
			_t = _t.getNextSibling();
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
			if ( inputState.guessing==0 ) {
				
							name = id.getText();
							currentRuleName = name;
							if ( Character.isUpperCase(name.charAt(0)) &&
								 grammar.type==Grammar.COMBINED )
							{
								// a merged grammar spec, track lexer rules and send to another grammar
								grammar.defineLexerRuleFoundInParser(id.getToken(), rule_AST_in);
							}
							else {
								int numAlts = countAltsForRule(rule_AST_in);
								grammar.defineRule(id.getToken(), mod, opts, rule_AST_in, args, numAlts);
								r = grammar.getRule(name);
								if ( args!=null ) {
									r.parameterScope = grammar.createParameterScope(name,args.token);
									r.parameterScope.addAttributes(args.getText(), ',');
								}
								if ( ret!=null ) {
									r.returnScope = grammar.createReturnScope(name,ret.token);
									r.returnScope.addAttributes(ret.getText(), ',');
								}
							}
							
			}
			{
			if (_t==null) _t=ASTNULL;
			switch ( _t.getType()) {
			case SCOPE:
			{
				ruleScopeSpec(_t,r);
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
			_loop49:
			do {
				if (_t==null) _t=ASTNULL;
				if ((_t.getType()==AMPERSAND)) {
					ruleAction(_t,r);
					_t = _retTree;
				}
				else {
					break _loop49;
				}
				
			} while (true);
			}
			if ( inputState.guessing==0 ) {
				this.blockLevel=0;
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
			GrammarAST tmp17_AST_in = (GrammarAST)_t;
			match(_t,EOR);
			_t = _t.getNextSibling();
			if ( inputState.guessing==0 ) {
				
				// copy rule options into the block AST, which is where
				// the analysis will look for k option etc...
				b.setBlockOptions(opts);
				
			}
			_t = __t40;
			_t = _t.getNextSibling();
		}
		catch (RecognitionException ex) {
			if (inputState.guessing==0) {
				reportError(ex);
				if (_t!=null) {_t = _t.getNextSibling();}
			} else {
			  throw ex;
			}
		}
		_retTree = _t;
	}
	
	public final String  modifier(AST _t) throws RecognitionException {
		String mod;
		
		GrammarAST modifier_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		
		mod = modifier_AST_in.getText();
		
		
		try {      // for error handling
			if (_t==null) _t=ASTNULL;
			switch ( _t.getType()) {
			case LITERAL_protected:
			{
				GrammarAST tmp18_AST_in = (GrammarAST)_t;
				match(_t,LITERAL_protected);
				_t = _t.getNextSibling();
				break;
			}
			case LITERAL_public:
			{
				GrammarAST tmp19_AST_in = (GrammarAST)_t;
				match(_t,LITERAL_public);
				_t = _t.getNextSibling();
				break;
			}
			case LITERAL_private:
			{
				GrammarAST tmp20_AST_in = (GrammarAST)_t;
				match(_t,LITERAL_private);
				_t = _t.getNextSibling();
				break;
			}
			case FRAGMENT:
			{
				GrammarAST tmp21_AST_in = (GrammarAST)_t;
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
			if (inputState.guessing==0) {
				reportError(ex);
				if (_t!=null) {_t = _t.getNextSibling();}
			} else {
			  throw ex;
			}
		}
		_retTree = _t;
		return mod;
	}
	
	public final void ruleScopeSpec(AST _t,
		Rule r
	) throws RecognitionException {
		
		GrammarAST ruleScopeSpec_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		GrammarAST attrs = null;
		GrammarAST uses = null;
		
		try {      // for error handling
			AST __t69 = _t;
			GrammarAST tmp22_AST_in = (GrammarAST)_t;
			match(_t,SCOPE);
			_t = _t.getFirstChild();
			{
			if (_t==null) _t=ASTNULL;
			switch ( _t.getType()) {
			case ACTION:
			{
				attrs = (GrammarAST)_t;
				match(_t,ACTION);
				_t = _t.getNextSibling();
				if ( inputState.guessing==0 ) {
					
						         r.ruleScope = grammar.createRuleScope(r.name,attrs.token);
								 r.ruleScope.isDynamicRuleScope = true;
								 r.ruleScope.addAttributes(attrs.getText(), ';');
								
				}
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
			_loop72:
			do {
				if (_t==null) _t=ASTNULL;
				if ((_t.getType()==ID)) {
					uses = (GrammarAST)_t;
					match(_t,ID);
					_t = _t.getNextSibling();
					if ( inputState.guessing==0 ) {
						
							         if ( grammar.getGlobalScope(uses.getText())==null ) {
										 ErrorManager.grammarError(ErrorManager.MSG_UNKNOWN_DYNAMIC_SCOPE,
																   grammar,
																   uses.token,
																   uses.getText());
							         }
							         else {
							         	if ( r.useScopes==null ) {r.useScopes=new ArrayList();}
							         	r.useScopes.add(uses.getText());
							         }
							
					}
				}
				else {
					break _loop72;
				}
				
			} while (true);
			}
			_t = __t69;
			_t = _t.getNextSibling();
		}
		catch (RecognitionException ex) {
			if (inputState.guessing==0) {
				reportError(ex);
				if (_t!=null) {_t = _t.getNextSibling();}
			} else {
			  throw ex;
			}
		}
		_retTree = _t;
	}
	
	public final void ruleAction(AST _t,
		Rule r
	) throws RecognitionException {
		
		GrammarAST ruleAction_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		GrammarAST amp = null;
		GrammarAST id = null;
		GrammarAST a = null;
		
		try {      // for error handling
			AST __t66 = _t;
			amp = _t==ASTNULL ? null :(GrammarAST)_t;
			match(_t,AMPERSAND);
			_t = _t.getFirstChild();
			id = (GrammarAST)_t;
			match(_t,ID);
			_t = _t.getNextSibling();
			a = (GrammarAST)_t;
			match(_t,ACTION);
			_t = _t.getNextSibling();
			_t = __t66;
			_t = _t.getNextSibling();
			if ( inputState.guessing==0 ) {
				if (r!=null) r.defineNamedAction(amp,id,a);
			}
		}
		catch (RecognitionException ex) {
			if (inputState.guessing==0) {
				reportError(ex);
				if (_t!=null) {_t = _t.getNextSibling();}
			} else {
			  throw ex;
			}
		}
		_retTree = _t;
	}
	
	public final void block(AST _t) throws RecognitionException {
		
		GrammarAST block_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		
		this.blockLevel++;
		if ( this.blockLevel==1 ) {this.outerAltNum=1;}
		
		
		try {      // for error handling
			AST __t74 = _t;
			GrammarAST tmp23_AST_in = (GrammarAST)_t;
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
			_loop77:
			do {
				if (_t==null) _t=ASTNULL;
				if ((_t.getType()==AMPERSAND)) {
					blockAction(_t);
					_t = _retTree;
				}
				else {
					break _loop77;
				}
				
			} while (true);
			}
			{
			int _cnt79=0;
			_loop79:
			do {
				if (_t==null) _t=ASTNULL;
				if ((_t.getType()==ALT)) {
					alternative(_t);
					_t = _retTree;
					rewrite(_t);
					_t = _retTree;
					if ( inputState.guessing==0 ) {
						if ( this.blockLevel==1 ) {this.outerAltNum++;}
					}
				}
				else {
					if ( _cnt79>=1 ) { break _loop79; } else {throw new NoViableAltException(_t);}
				}
				
				_cnt79++;
			} while (true);
			}
			GrammarAST tmp24_AST_in = (GrammarAST)_t;
			match(_t,EOB);
			_t = _t.getNextSibling();
			_t = __t74;
			_t = _t.getNextSibling();
			if ( inputState.guessing==0 ) {
				this.blockLevel--;
			}
		}
		catch (RecognitionException ex) {
			if (inputState.guessing==0) {
				reportError(ex);
				if (_t!=null) {_t = _t.getNextSibling();}
			} else {
			  throw ex;
			}
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
				int _cnt88=0;
				_loop88:
				do {
					if (_t==null) _t=ASTNULL;
					if ((_t.getType()==LITERAL_catch)) {
						exceptionHandler(_t);
						_t = _retTree;
					}
					else {
						if ( _cnt88>=1 ) { break _loop88; } else {throw new NoViableAltException(_t);}
					}
					
					_cnt88++;
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
			if (inputState.guessing==0) {
				reportError(ex);
				if (_t!=null) {_t = _t.getNextSibling();}
			} else {
			  throw ex;
			}
		}
		_retTree = _t;
	}
	
	public final int  countAltsForRule(AST _t) throws RecognitionException {
		int n=0;
		
		GrammarAST countAltsForRule_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		GrammarAST id = null;
		
		try {      // for error handling
			AST __t52 = _t;
			GrammarAST tmp25_AST_in = (GrammarAST)_t;
			match(_t,RULE);
			_t = _t.getFirstChild();
			id = (GrammarAST)_t;
			match(_t,ID);
			_t = _t.getNextSibling();
			{
			if (_t==null) _t=ASTNULL;
			switch ( _t.getType()) {
			case FRAGMENT:
			case LITERAL_protected:
			case LITERAL_public:
			case LITERAL_private:
			{
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
			GrammarAST tmp26_AST_in = (GrammarAST)_t;
			match(_t,ARG);
			_t = _t.getNextSibling();
			GrammarAST tmp27_AST_in = (GrammarAST)_t;
			match(_t,RET);
			_t = _t.getNextSibling();
			{
			if (_t==null) _t=ASTNULL;
			switch ( _t.getType()) {
			case OPTIONS:
			{
				GrammarAST tmp28_AST_in = (GrammarAST)_t;
				match(_t,OPTIONS);
				_t = _t.getNextSibling();
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
				GrammarAST tmp29_AST_in = (GrammarAST)_t;
				match(_t,SCOPE);
				_t = _t.getNextSibling();
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
			_loop57:
			do {
				if (_t==null) _t=ASTNULL;
				if ((_t.getType()==AMPERSAND)) {
					GrammarAST tmp30_AST_in = (GrammarAST)_t;
					match(_t,AMPERSAND);
					_t = _t.getNextSibling();
				}
				else {
					break _loop57;
				}
				
			} while (true);
			}
			AST __t58 = _t;
			GrammarAST tmp31_AST_in = (GrammarAST)_t;
			match(_t,BLOCK);
			_t = _t.getFirstChild();
			{
			if (_t==null) _t=ASTNULL;
			switch ( _t.getType()) {
			case OPTIONS:
			{
				GrammarAST tmp32_AST_in = (GrammarAST)_t;
				match(_t,OPTIONS);
				_t = _t.getNextSibling();
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
			int _cnt63=0;
			_loop63:
			do {
				if (_t==null) _t=ASTNULL;
				if ((_t.getType()==ALT)) {
					GrammarAST tmp33_AST_in = (GrammarAST)_t;
					match(_t,ALT);
					_t = _t.getNextSibling();
					{
					_loop62:
					do {
						if (_t==null) _t=ASTNULL;
						if ((_t.getType()==REWRITE)) {
							GrammarAST tmp34_AST_in = (GrammarAST)_t;
							match(_t,REWRITE);
							_t = _t.getNextSibling();
						}
						else {
							break _loop62;
						}
						
					} while (true);
					}
					if ( inputState.guessing==0 ) {
						n++;
					}
				}
				else {
					if ( _cnt63>=1 ) { break _loop63; } else {throw new NoViableAltException(_t);}
				}
				
				_cnt63++;
			} while (true);
			}
			GrammarAST tmp35_AST_in = (GrammarAST)_t;
			match(_t,EOB);
			_t = _t.getNextSibling();
			_t = __t58;
			_t = _t.getNextSibling();
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
			GrammarAST tmp36_AST_in = (GrammarAST)_t;
			match(_t,EOR);
			_t = _t.getNextSibling();
			_t = __t52;
			_t = _t.getNextSibling();
		}
		catch (RecognitionException ex) {
			if (inputState.guessing==0) {
				reportError(ex);
				if (_t!=null) {_t = _t.getNextSibling();}
			} else {
			  throw ex;
			}
		}
		_retTree = _t;
		return n;
	}
	
	public final void blockAction(AST _t) throws RecognitionException {
		
		GrammarAST blockAction_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		GrammarAST amp = null;
		GrammarAST id = null;
		GrammarAST a = null;
		
		try {      // for error handling
			AST __t81 = _t;
			amp = _t==ASTNULL ? null :(GrammarAST)_t;
			match(_t,AMPERSAND);
			_t = _t.getFirstChild();
			id = (GrammarAST)_t;
			match(_t,ID);
			_t = _t.getNextSibling();
			a = (GrammarAST)_t;
			match(_t,ACTION);
			_t = _t.getNextSibling();
			_t = __t81;
			_t = _t.getNextSibling();
		}
		catch (RecognitionException ex) {
			if (inputState.guessing==0) {
				reportError(ex);
				if (_t!=null) {_t = _t.getNextSibling();}
			} else {
			  throw ex;
			}
		}
		_retTree = _t;
	}
	
	public final void alternative(AST _t) throws RecognitionException {
		
		GrammarAST alternative_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		
		if ( grammar.type!=Grammar.LEXER && grammar.getOption("output")!=null && blockLevel==1 ) {
			GrammarAST aRewriteNode = alternative_AST_in.findFirstType(REWRITE); // alt itself has rewrite?
			GrammarAST rewriteAST = (GrammarAST)alternative_AST_in.getNextSibling();
			// we have a rewrite if alt uses it inside subrule or this alt has one
			// but don't count -> ... rewrites, which mean "do default auto construction"
			if ( aRewriteNode!=null||
				 (rewriteAST!=null &&
				  rewriteAST.getType()==REWRITE &&
				  rewriteAST.getFirstChild()!=null &&
				  rewriteAST.getFirstChild().getType()!=ETC) )
			{
				Rule r = grammar.getRule(currentRuleName);
				r.trackAltsWithRewrites(alternative_AST_in,this.outerAltNum);
			}
		}
		
		
		try {      // for error handling
			AST __t83 = _t;
			GrammarAST tmp37_AST_in = (GrammarAST)_t;
			match(_t,ALT);
			_t = _t.getFirstChild();
			{
			int _cnt85=0;
			_loop85:
			do {
				if (_t==null) _t=ASTNULL;
				if ((_t.getType()==BLOCK||_t.getType()==OPTIONAL||_t.getType()==CLOSURE||_t.getType()==POSITIVE_CLOSURE||_t.getType()==SYNPRED||_t.getType()==RANGE||_t.getType()==CHAR_RANGE||_t.getType()==EPSILON||_t.getType()==FORCED_ACTION||_t.getType()==GATED_SEMPRED||_t.getType()==SYN_SEMPRED||_t.getType()==BACKTRACK_SEMPRED||_t.getType()==DOT||_t.getType()==ACTION||_t.getType()==ASSIGN||_t.getType()==STRING_LITERAL||_t.getType()==CHAR_LITERAL||_t.getType()==TOKEN_REF||_t.getType()==BANG||_t.getType()==PLUS_ASSIGN||_t.getType()==SEMPRED||_t.getType()==ROOT||_t.getType()==WILDCARD||_t.getType()==RULE_REF||_t.getType()==NOT||_t.getType()==TREE_BEGIN)) {
					element(_t);
					_t = _retTree;
				}
				else {
					if ( _cnt85>=1 ) { break _loop85; } else {throw new NoViableAltException(_t);}
				}
				
				_cnt85++;
			} while (true);
			}
			GrammarAST tmp38_AST_in = (GrammarAST)_t;
			match(_t,EOA);
			_t = _t.getNextSibling();
			_t = __t83;
			_t = _t.getNextSibling();
		}
		catch (RecognitionException ex) {
			if (inputState.guessing==0) {
				reportError(ex);
				if (_t!=null) {_t = _t.getNextSibling();}
			} else {
			  throw ex;
			}
		}
		_retTree = _t;
	}
	
	public final void rewrite(AST _t) throws RecognitionException {
		
		GrammarAST rewrite_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		GrammarAST pred = null;
		
		currentRewriteRule = rewrite_AST_in; // has to execute during guessing
		if ( grammar.buildAST() ) {
		rewrite_AST_in.rewriteRefsDeep = new HashSet<GrammarAST>();
		}
		
		
		try {      // for error handling
			{
			_loop131:
			do {
				if (_t==null) _t=ASTNULL;
				if ((_t.getType()==REWRITE)) {
					AST __t129 = _t;
					GrammarAST tmp39_AST_in = (GrammarAST)_t;
					match(_t,REWRITE);
					_t = _t.getFirstChild();
					{
					if (_t==null) _t=ASTNULL;
					switch ( _t.getType()) {
					case SEMPRED:
					{
						pred = (GrammarAST)_t;
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
					rewrite_alternative(_t);
					_t = _retTree;
					_t = __t129;
					_t = _t.getNextSibling();
					if ( inputState.guessing==0 ) {
						
						if ( pred!=null ) {
						pred.outerAltNum = this.outerAltNum;
						trackInlineAction(pred);
						}
						
					}
				}
				else {
					break _loop131;
				}
				
			} while (true);
			}
		}
		catch (RecognitionException ex) {
			if (inputState.guessing==0) {
				reportError(ex);
				if (_t!=null) {_t = _t.getNextSibling();}
			} else {
			  throw ex;
			}
		}
		_retTree = _t;
	}
	
	public final void element(AST _t) throws RecognitionException {
		
		GrammarAST element_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		GrammarAST id = null;
		GrammarAST el = null;
		GrammarAST id2 = null;
		GrammarAST a2 = null;
		GrammarAST act = null;
		GrammarAST act2 = null;
		
		try {      // for error handling
			if (_t==null) _t=ASTNULL;
			switch ( _t.getType()) {
			case ROOT:
			{
				AST __t95 = _t;
				GrammarAST tmp40_AST_in = (GrammarAST)_t;
				match(_t,ROOT);
				_t = _t.getFirstChild();
				element(_t);
				_t = _retTree;
				_t = __t95;
				_t = _t.getNextSibling();
				break;
			}
			case BANG:
			{
				AST __t96 = _t;
				GrammarAST tmp41_AST_in = (GrammarAST)_t;
				match(_t,BANG);
				_t = _t.getFirstChild();
				element(_t);
				_t = _retTree;
				_t = __t96;
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
				atom(_t,null);
				_t = _retTree;
				break;
			}
			case NOT:
			{
				AST __t97 = _t;
				GrammarAST tmp42_AST_in = (GrammarAST)_t;
				match(_t,NOT);
				_t = _t.getFirstChild();
				element(_t);
				_t = _retTree;
				_t = __t97;
				_t = _t.getNextSibling();
				break;
			}
			case RANGE:
			{
				AST __t98 = _t;
				GrammarAST tmp43_AST_in = (GrammarAST)_t;
				match(_t,RANGE);
				_t = _t.getFirstChild();
				atom(_t,null);
				_t = _retTree;
				atom(_t,null);
				_t = _retTree;
				_t = __t98;
				_t = _t.getNextSibling();
				break;
			}
			case CHAR_RANGE:
			{
				AST __t99 = _t;
				GrammarAST tmp44_AST_in = (GrammarAST)_t;
				match(_t,CHAR_RANGE);
				_t = _t.getFirstChild();
				atom(_t,null);
				_t = _retTree;
				atom(_t,null);
				_t = _retTree;
				_t = __t99;
				_t = _t.getNextSibling();
				break;
			}
			case ASSIGN:
			{
				AST __t100 = _t;
				GrammarAST tmp45_AST_in = (GrammarAST)_t;
				match(_t,ASSIGN);
				_t = _t.getFirstChild();
				id = (GrammarAST)_t;
				match(_t,ID);
				_t = _t.getNextSibling();
				el = _t==ASTNULL ? null : (GrammarAST)_t;
				element(_t);
				_t = _retTree;
				_t = __t100;
				_t = _t.getNextSibling();
				if ( inputState.guessing==0 ) {
					
							if ( el.getType()==ANTLRParser.ROOT ||
					el.getType()==ANTLRParser.BANG )
							{
					el = (GrammarAST)el.getFirstChild();
					}
						if ( el.getType()==RULE_REF) {
							grammar.defineRuleRefLabel(currentRuleName,id.getToken(),el);
						}
						else if ( el.getType()==WILDCARD && grammar.type==Grammar.TREE_PARSER ) {
							grammar.defineWildcardTreeLabel(currentRuleName,id.getToken(),el);
						}
						else {
							grammar.defineTokenRefLabel(currentRuleName,id.getToken(),el);
						}
						
				}
				break;
			}
			case PLUS_ASSIGN:
			{
				AST __t101 = _t;
				GrammarAST tmp46_AST_in = (GrammarAST)_t;
				match(_t,PLUS_ASSIGN);
				_t = _t.getFirstChild();
				id2 = (GrammarAST)_t;
				match(_t,ID);
				_t = _t.getNextSibling();
				a2 = _t==ASTNULL ? null : (GrammarAST)_t;
				element(_t);
				_t = _retTree;
				if ( inputState.guessing==0 ) {
					
					if ( a2.getType()==ANTLRParser.ROOT ||
					a2.getType()==ANTLRParser.BANG )
					{
					a2 = (GrammarAST)a2.getFirstChild();
					}
						    if ( a2.getType()==RULE_REF ) {
						    	grammar.defineRuleListLabel(currentRuleName,id2.getToken(),a2);
						    }
					else if ( a2.getType()==WILDCARD && grammar.type==Grammar.TREE_PARSER ) {
					grammar.defineWildcardTreeListLabel(currentRuleName,id2.getToken(),a2);
					}
						    else {
						    	grammar.defineTokenListLabel(currentRuleName,id2.getToken(),a2);
						    }
						
				}
				_t = __t101;
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
				AST __t102 = _t;
				GrammarAST tmp47_AST_in = (GrammarAST)_t;
				match(_t,SYNPRED);
				_t = _t.getFirstChild();
				block(_t);
				_t = _retTree;
				_t = __t102;
				_t = _t.getNextSibling();
				break;
			}
			case ACTION:
			{
				act = (GrammarAST)_t;
				match(_t,ACTION);
				_t = _t.getNextSibling();
				if ( inputState.guessing==0 ) {
					
					act.outerAltNum = this.outerAltNum;
							trackInlineAction(act);
					
				}
				break;
			}
			case FORCED_ACTION:
			{
				act2 = (GrammarAST)_t;
				match(_t,FORCED_ACTION);
				_t = _t.getNextSibling();
				if ( inputState.guessing==0 ) {
					
					act2.outerAltNum = this.outerAltNum;
							trackInlineAction(act2);
					
				}
				break;
			}
			case SEMPRED:
			{
				GrammarAST tmp48_AST_in = (GrammarAST)_t;
				match(_t,SEMPRED);
				_t = _t.getNextSibling();
				if ( inputState.guessing==0 ) {
					
					tmp48_AST_in.outerAltNum = this.outerAltNum;
					trackInlineAction(tmp48_AST_in);
					
				}
				break;
			}
			case SYN_SEMPRED:
			{
				GrammarAST tmp49_AST_in = (GrammarAST)_t;
				match(_t,SYN_SEMPRED);
				_t = _t.getNextSibling();
				break;
			}
			case BACKTRACK_SEMPRED:
			{
				GrammarAST tmp50_AST_in = (GrammarAST)_t;
				match(_t,BACKTRACK_SEMPRED);
				_t = _t.getNextSibling();
				break;
			}
			case GATED_SEMPRED:
			{
				GrammarAST tmp51_AST_in = (GrammarAST)_t;
				match(_t,GATED_SEMPRED);
				_t = _t.getNextSibling();
				if ( inputState.guessing==0 ) {
					
					tmp51_AST_in.outerAltNum = this.outerAltNum;
					trackInlineAction(tmp51_AST_in);
					
				}
				break;
			}
			case EPSILON:
			{
				GrammarAST tmp52_AST_in = (GrammarAST)_t;
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
			if (inputState.guessing==0) {
				reportError(ex);
				if (_t!=null) {_t = _t.getNextSibling();}
			} else {
			  throw ex;
			}
		}
		_retTree = _t;
	}
	
	public final void exceptionHandler(AST _t) throws RecognitionException {
		
		GrammarAST exceptionHandler_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		
		try {      // for error handling
			AST __t91 = _t;
			GrammarAST tmp53_AST_in = (GrammarAST)_t;
			match(_t,LITERAL_catch);
			_t = _t.getFirstChild();
			GrammarAST tmp54_AST_in = (GrammarAST)_t;
			match(_t,ARG_ACTION);
			_t = _t.getNextSibling();
			GrammarAST tmp55_AST_in = (GrammarAST)_t;
			match(_t,ACTION);
			_t = _t.getNextSibling();
			_t = __t91;
			_t = _t.getNextSibling();
			if ( inputState.guessing==0 ) {
				trackInlineAction(tmp55_AST_in);
			}
		}
		catch (RecognitionException ex) {
			if (inputState.guessing==0) {
				reportError(ex);
				if (_t!=null) {_t = _t.getNextSibling();}
			} else {
			  throw ex;
			}
		}
		_retTree = _t;
	}
	
	public final void finallyClause(AST _t) throws RecognitionException {
		
		GrammarAST finallyClause_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		
		try {      // for error handling
			AST __t93 = _t;
			GrammarAST tmp56_AST_in = (GrammarAST)_t;
			match(_t,LITERAL_finally);
			_t = _t.getFirstChild();
			GrammarAST tmp57_AST_in = (GrammarAST)_t;
			match(_t,ACTION);
			_t = _t.getNextSibling();
			_t = __t93;
			_t = _t.getNextSibling();
			if ( inputState.guessing==0 ) {
				trackInlineAction(tmp57_AST_in);
			}
		}
		catch (RecognitionException ex) {
			if (inputState.guessing==0) {
				reportError(ex);
				if (_t!=null) {_t = _t.getNextSibling();}
			} else {
			  throw ex;
			}
		}
		_retTree = _t;
	}
	
	public final void atom(AST _t,
		GrammarAST scope
	) throws RecognitionException {
		
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
				AST __t121 = _t;
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
				_t = __t121;
				_t = _t.getNextSibling();
				if ( inputState.guessing==0 ) {
					
					grammar.altReferencesRule(currentRuleName, scope, rr, this.outerAltNum);
							if ( rarg!=null ) {
					rarg.outerAltNum = this.outerAltNum;
					trackInlineAction(rarg);
					}
					
				}
				break;
			}
			case TOKEN_REF:
			{
				AST __t123 = _t;
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
				_t = __t123;
				_t = _t.getNextSibling();
				if ( inputState.guessing==0 ) {
					
							if ( targ!=null ) {
					targ.outerAltNum = this.outerAltNum;
					trackInlineAction(targ);
					}
						if ( grammar.type==Grammar.LEXER ) {
							grammar.altReferencesRule(currentRuleName, scope, t, this.outerAltNum);
						}
						else {
							grammar.altReferencesTokenID(currentRuleName, t, this.outerAltNum);
						}
						
				}
				break;
			}
			case CHAR_LITERAL:
			{
				c = (GrammarAST)_t;
				match(_t,CHAR_LITERAL);
				_t = _t.getNextSibling();
				if ( inputState.guessing==0 ) {
					
						if ( grammar.type!=Grammar.LEXER ) {
							Rule rule = grammar.getRule(currentRuleName);
								if ( rule!=null ) {
									rule.trackTokenReferenceInAlt(c, outerAltNum);
							}
						}
						
				}
				break;
			}
			case STRING_LITERAL:
			{
				s = (GrammarAST)_t;
				match(_t,STRING_LITERAL);
				_t = _t.getNextSibling();
				if ( inputState.guessing==0 ) {
					
						if ( grammar.type!=Grammar.LEXER ) {
							Rule rule = grammar.getRule(currentRuleName);
								if ( rule!=null ) {
									rule.trackTokenReferenceInAlt(s, outerAltNum);
							}
						}
						
				}
				break;
			}
			case WILDCARD:
			{
				GrammarAST tmp58_AST_in = (GrammarAST)_t;
				match(_t,WILDCARD);
				_t = _t.getNextSibling();
				break;
			}
			case DOT:
			{
				AST __t125 = _t;
				GrammarAST tmp59_AST_in = (GrammarAST)_t;
				match(_t,DOT);
				_t = _t.getFirstChild();
				GrammarAST tmp60_AST_in = (GrammarAST)_t;
				match(_t,ID);
				_t = _t.getNextSibling();
				atom(_t,tmp60_AST_in);
				_t = _retTree;
				_t = __t125;
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
			if (inputState.guessing==0) {
				reportError(ex);
				if (_t!=null) {_t = _t.getNextSibling();}
			} else {
			  throw ex;
			}
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
				AST __t106 = _t;
				GrammarAST tmp61_AST_in = (GrammarAST)_t;
				match(_t,OPTIONAL);
				_t = _t.getFirstChild();
				block(_t);
				_t = _retTree;
				_t = __t106;
				_t = _t.getNextSibling();
				break;
			}
			default:
				boolean synPredMatched105 = false;
				if (_t==null) _t=ASTNULL;
				if (((_t.getType()==CLOSURE||_t.getType()==POSITIVE_CLOSURE))) {
					AST __t105 = _t;
					synPredMatched105 = true;
					inputState.guessing++;
					try {
						{
						dotLoop(_t);
						_t = _retTree;
						}
					}
					catch (RecognitionException pe) {
						synPredMatched105 = false;
					}
					_t = __t105;
inputState.guessing--;
				}
				if ( synPredMatched105 ) {
					dotLoop(_t);
					_t = _retTree;
				}
				else if ((_t.getType()==CLOSURE)) {
					AST __t107 = _t;
					GrammarAST tmp62_AST_in = (GrammarAST)_t;
					match(_t,CLOSURE);
					_t = _t.getFirstChild();
					block(_t);
					_t = _retTree;
					_t = __t107;
					_t = _t.getNextSibling();
				}
				else if ((_t.getType()==POSITIVE_CLOSURE)) {
					AST __t108 = _t;
					GrammarAST tmp63_AST_in = (GrammarAST)_t;
					match(_t,POSITIVE_CLOSURE);
					_t = _t.getFirstChild();
					block(_t);
					_t = _retTree;
					_t = __t108;
					_t = _t.getNextSibling();
				}
			else {
				throw new NoViableAltException(_t);
			}
			}
		}
		catch (RecognitionException ex) {
			if (inputState.guessing==0) {
				reportError(ex);
				if (_t!=null) {_t = _t.getNextSibling();}
			} else {
			  throw ex;
			}
		}
		_retTree = _t;
	}
	
	public final void tree(AST _t) throws RecognitionException {
		
		GrammarAST tree_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		
		try {      // for error handling
			AST __t117 = _t;
			GrammarAST tmp64_AST_in = (GrammarAST)_t;
			match(_t,TREE_BEGIN);
			_t = _t.getFirstChild();
			element(_t);
			_t = _retTree;
			{
			_loop119:
			do {
				if (_t==null) _t=ASTNULL;
				if ((_t.getType()==BLOCK||_t.getType()==OPTIONAL||_t.getType()==CLOSURE||_t.getType()==POSITIVE_CLOSURE||_t.getType()==SYNPRED||_t.getType()==RANGE||_t.getType()==CHAR_RANGE||_t.getType()==EPSILON||_t.getType()==FORCED_ACTION||_t.getType()==GATED_SEMPRED||_t.getType()==SYN_SEMPRED||_t.getType()==BACKTRACK_SEMPRED||_t.getType()==DOT||_t.getType()==ACTION||_t.getType()==ASSIGN||_t.getType()==STRING_LITERAL||_t.getType()==CHAR_LITERAL||_t.getType()==TOKEN_REF||_t.getType()==BANG||_t.getType()==PLUS_ASSIGN||_t.getType()==SEMPRED||_t.getType()==ROOT||_t.getType()==WILDCARD||_t.getType()==RULE_REF||_t.getType()==NOT||_t.getType()==TREE_BEGIN)) {
					element(_t);
					_t = _retTree;
				}
				else {
					break _loop119;
				}
				
			} while (true);
			}
			_t = __t117;
			_t = _t.getNextSibling();
		}
		catch (RecognitionException ex) {
			if (inputState.guessing==0) {
				reportError(ex);
				if (_t!=null) {_t = _t.getNextSibling();}
			} else {
			  throw ex;
			}
		}
		_retTree = _t;
	}
	
/** Track the .* and .+ idioms and make them nongreedy by default.
 */
	public final void dotLoop(AST _t) throws RecognitionException {
		
		GrammarAST dotLoop_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		
		GrammarAST block = (GrammarAST)dotLoop_AST_in.getFirstChild();
		
		
		try {      // for error handling
			{
			if (_t==null) _t=ASTNULL;
			switch ( _t.getType()) {
			case CLOSURE:
			{
				AST __t111 = _t;
				GrammarAST tmp65_AST_in = (GrammarAST)_t;
				match(_t,CLOSURE);
				_t = _t.getFirstChild();
				dotBlock(_t);
				_t = _retTree;
				_t = __t111;
				_t = _t.getNextSibling();
				break;
			}
			case POSITIVE_CLOSURE:
			{
				AST __t112 = _t;
				GrammarAST tmp66_AST_in = (GrammarAST)_t;
				match(_t,POSITIVE_CLOSURE);
				_t = _t.getFirstChild();
				dotBlock(_t);
				_t = _retTree;
				_t = __t112;
				_t = _t.getNextSibling();
				break;
			}
			default:
			{
				throw new NoViableAltException(_t);
			}
			}
			}
			if ( inputState.guessing==0 ) {
				
				Map opts=new HashMap();
				opts.put("greedy", "false");
				if ( grammar.type!=Grammar.LEXER ) {
				// parser grammars assume k=1 for .* loops
				// otherwise they (analysis?) look til EOF!
				opts.put("k", Utils.integer(1));
				}
				block.setOptions(grammar,opts);
				
			}
		}
		catch (RecognitionException ex) {
			if (inputState.guessing==0) {
				reportError(ex);
				if (_t!=null) {_t = _t.getNextSibling();}
			} else {
			  throw ex;
			}
		}
		_retTree = _t;
	}
	
	public final void dotBlock(AST _t) throws RecognitionException {
		
		GrammarAST dotBlock_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		
		try {      // for error handling
			AST __t114 = _t;
			GrammarAST tmp67_AST_in = (GrammarAST)_t;
			match(_t,BLOCK);
			_t = _t.getFirstChild();
			AST __t115 = _t;
			GrammarAST tmp68_AST_in = (GrammarAST)_t;
			match(_t,ALT);
			_t = _t.getFirstChild();
			GrammarAST tmp69_AST_in = (GrammarAST)_t;
			match(_t,WILDCARD);
			_t = _t.getNextSibling();
			GrammarAST tmp70_AST_in = (GrammarAST)_t;
			match(_t,EOA);
			_t = _t.getNextSibling();
			_t = __t115;
			_t = _t.getNextSibling();
			GrammarAST tmp71_AST_in = (GrammarAST)_t;
			match(_t,EOB);
			_t = _t.getNextSibling();
			_t = __t114;
			_t = _t.getNextSibling();
		}
		catch (RecognitionException ex) {
			if (inputState.guessing==0) {
				reportError(ex);
				if (_t!=null) {_t = _t.getNextSibling();}
			} else {
			  throw ex;
			}
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
				GrammarAST tmp72_AST_in = (GrammarAST)_t;
				match(_t,ROOT);
				_t = _t.getNextSibling();
				break;
			}
			case BANG:
			{
				GrammarAST tmp73_AST_in = (GrammarAST)_t;
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
			if (inputState.guessing==0) {
				reportError(ex);
				if (_t!=null) {_t = _t.getNextSibling();}
			} else {
			  throw ex;
			}
		}
		_retTree = _t;
	}
	
	public final void rewrite_alternative(AST _t) throws RecognitionException {
		
		GrammarAST rewrite_alternative_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		GrammarAST a = null;
		
		try {      // for error handling
			if (_t==null) _t=ASTNULL;
			if (((_t.getType()==ALT))&&(grammar.buildAST())) {
				AST __t135 = _t;
				a = _t==ASTNULL ? null :(GrammarAST)_t;
				match(_t,ALT);
				_t = _t.getFirstChild();
				{
				if (_t==null) _t=ASTNULL;
				switch ( _t.getType()) {
				case OPTIONAL:
				case CLOSURE:
				case POSITIVE_CLOSURE:
				case LABEL:
				case ACTION:
				case STRING_LITERAL:
				case CHAR_LITERAL:
				case TOKEN_REF:
				case RULE_REF:
				case TREE_BEGIN:
				{
					{
					int _cnt138=0;
					_loop138:
					do {
						if (_t==null) _t=ASTNULL;
						if ((_t.getType()==OPTIONAL||_t.getType()==CLOSURE||_t.getType()==POSITIVE_CLOSURE||_t.getType()==LABEL||_t.getType()==ACTION||_t.getType()==STRING_LITERAL||_t.getType()==CHAR_LITERAL||_t.getType()==TOKEN_REF||_t.getType()==RULE_REF||_t.getType()==TREE_BEGIN)) {
							rewrite_element(_t);
							_t = _retTree;
						}
						else {
							if ( _cnt138>=1 ) { break _loop138; } else {throw new NoViableAltException(_t);}
						}
						
						_cnt138++;
					} while (true);
					}
					break;
				}
				case EPSILON:
				{
					GrammarAST tmp74_AST_in = (GrammarAST)_t;
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
				GrammarAST tmp75_AST_in = (GrammarAST)_t;
				match(_t,EOA);
				_t = _t.getNextSibling();
				_t = __t135;
				_t = _t.getNextSibling();
			}
			else if (((_t.getType()==ALT||_t.getType()==TEMPLATE||_t.getType()==ACTION))&&(grammar.buildTemplate())) {
				rewrite_template(_t);
				_t = _retTree;
			}
			else if ((_t.getType()==ETC)) {
				GrammarAST tmp76_AST_in = (GrammarAST)_t;
				match(_t,ETC);
				_t = _t.getNextSibling();
				if (!(this.blockLevel==1))
				  throw new SemanticException("this.blockLevel==1");
			}
			else {
				throw new NoViableAltException(_t);
			}
			
		}
		catch (RecognitionException ex) {
			if (inputState.guessing==0) {
				reportError(ex);
				if (_t!=null) {_t = _t.getNextSibling();}
			} else {
			  throw ex;
			}
		}
		_retTree = _t;
	}
	
	public final void rewrite_block(AST _t) throws RecognitionException {
		
		GrammarAST rewrite_block_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		
		GrammarAST enclosingBlock = currentRewriteBlock;
		if ( inputState.guessing==0 ) {  // don't do if guessing
		currentRewriteBlock=rewrite_block_AST_in; // pts to BLOCK node
		currentRewriteBlock.rewriteRefsShallow = new HashSet<GrammarAST>();
		currentRewriteBlock.rewriteRefsDeep = new HashSet<GrammarAST>();
		}
		
		
		try {      // for error handling
			AST __t133 = _t;
			GrammarAST tmp77_AST_in = (GrammarAST)_t;
			match(_t,BLOCK);
			_t = _t.getFirstChild();
			rewrite_alternative(_t);
			_t = _retTree;
			GrammarAST tmp78_AST_in = (GrammarAST)_t;
			match(_t,EOB);
			_t = _t.getNextSibling();
			_t = __t133;
			_t = _t.getNextSibling();
			if ( inputState.guessing==0 ) {
				
				// copy the element refs in this block to the surrounding block
				if ( enclosingBlock!=null ) {
				enclosingBlock.rewriteRefsDeep
				.addAll(currentRewriteBlock.rewriteRefsShallow);
				}
				currentRewriteBlock = enclosingBlock; // restore old BLOCK ptr
				
			}
		}
		catch (RecognitionException ex) {
			if (inputState.guessing==0) {
				reportError(ex);
				if (_t!=null) {_t = _t.getNextSibling();}
			} else {
			  throw ex;
			}
		}
		_retTree = _t;
	}
	
	public final void rewrite_element(AST _t) throws RecognitionException {
		
		GrammarAST rewrite_element_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		
		try {      // for error handling
			if (_t==null) _t=ASTNULL;
			switch ( _t.getType()) {
			case LABEL:
			case ACTION:
			case STRING_LITERAL:
			case CHAR_LITERAL:
			case TOKEN_REF:
			case RULE_REF:
			{
				rewrite_atom(_t);
				_t = _retTree;
				break;
			}
			case OPTIONAL:
			case CLOSURE:
			case POSITIVE_CLOSURE:
			{
				rewrite_ebnf(_t);
				_t = _retTree;
				break;
			}
			case TREE_BEGIN:
			{
				rewrite_tree(_t);
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
			if (inputState.guessing==0) {
				reportError(ex);
				if (_t!=null) {_t = _t.getNextSibling();}
			} else {
			  throw ex;
			}
		}
		_retTree = _t;
	}
	
	public final void rewrite_template(AST _t) throws RecognitionException {
		
		GrammarAST rewrite_template_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		GrammarAST id = null;
		GrammarAST ind = null;
		GrammarAST arg = null;
		GrammarAST a = null;
		GrammarAST act = null;
		
		try {      // for error handling
			if (_t==null) _t=ASTNULL;
			switch ( _t.getType()) {
			case ALT:
			{
				AST __t153 = _t;
				GrammarAST tmp79_AST_in = (GrammarAST)_t;
				match(_t,ALT);
				_t = _t.getFirstChild();
				GrammarAST tmp80_AST_in = (GrammarAST)_t;
				match(_t,EPSILON);
				_t = _t.getNextSibling();
				GrammarAST tmp81_AST_in = (GrammarAST)_t;
				match(_t,EOA);
				_t = _t.getNextSibling();
				_t = __t153;
				_t = _t.getNextSibling();
				break;
			}
			case TEMPLATE:
			{
				AST __t154 = _t;
				GrammarAST tmp82_AST_in = (GrammarAST)_t;
				match(_t,TEMPLATE);
				_t = _t.getFirstChild();
				{
				if (_t==null) _t=ASTNULL;
				switch ( _t.getType()) {
				case ID:
				{
					id = (GrammarAST)_t;
					match(_t,ID);
					_t = _t.getNextSibling();
					break;
				}
				case ACTION:
				{
					ind = (GrammarAST)_t;
					match(_t,ACTION);
					_t = _t.getNextSibling();
					break;
				}
				default:
				{
					throw new NoViableAltException(_t);
				}
				}
				}
				AST __t156 = _t;
				GrammarAST tmp83_AST_in = (GrammarAST)_t;
				match(_t,ARGLIST);
				_t = _t.getFirstChild();
				{
				_loop159:
				do {
					if (_t==null) _t=ASTNULL;
					if ((_t.getType()==ARG)) {
						AST __t158 = _t;
						GrammarAST tmp84_AST_in = (GrammarAST)_t;
						match(_t,ARG);
						_t = _t.getFirstChild();
						arg = (GrammarAST)_t;
						match(_t,ID);
						_t = _t.getNextSibling();
						a = (GrammarAST)_t;
						match(_t,ACTION);
						_t = _t.getNextSibling();
						_t = __t158;
						_t = _t.getNextSibling();
						if ( inputState.guessing==0 ) {
							
							a.outerAltNum = this.outerAltNum;
							trackInlineAction(a);
							
						}
					}
					else {
						break _loop159;
					}
					
				} while (true);
				}
				_t = __t156;
				_t = _t.getNextSibling();
				if ( inputState.guessing==0 ) {
					
					if ( ind!=null ) {
					ind.outerAltNum = this.outerAltNum;
					trackInlineAction(ind);
					}
					
				}
				{
				if (_t==null) _t=ASTNULL;
				switch ( _t.getType()) {
				case DOUBLE_QUOTE_STRING_LITERAL:
				{
					GrammarAST tmp85_AST_in = (GrammarAST)_t;
					match(_t,DOUBLE_QUOTE_STRING_LITERAL);
					_t = _t.getNextSibling();
					break;
				}
				case DOUBLE_ANGLE_STRING_LITERAL:
				{
					GrammarAST tmp86_AST_in = (GrammarAST)_t;
					match(_t,DOUBLE_ANGLE_STRING_LITERAL);
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
				_t = __t154;
				_t = _t.getNextSibling();
				break;
			}
			case ACTION:
			{
				act = (GrammarAST)_t;
				match(_t,ACTION);
				_t = _t.getNextSibling();
				if ( inputState.guessing==0 ) {
					
					act.outerAltNum = this.outerAltNum;
					trackInlineAction(act);
					
				}
				break;
			}
			default:
			{
				throw new NoViableAltException(_t);
			}
			}
		}
		catch (RecognitionException ex) {
			if (inputState.guessing==0) {
				reportError(ex);
				if (_t!=null) {_t = _t.getNextSibling();}
			} else {
			  throw ex;
			}
		}
		_retTree = _t;
	}
	
	public final void rewrite_atom(AST _t) throws RecognitionException {
		
		GrammarAST rewrite_atom_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		GrammarAST arg = null;
		
		Rule r = grammar.getRule(currentRuleName);
		Set tokenRefsInAlt = r.getTokenRefsInAlt(outerAltNum);
		boolean imaginary =
		rewrite_atom_AST_in.getType()==TOKEN_REF &&
		!tokenRefsInAlt.contains(rewrite_atom_AST_in.getText());
		if ( !imaginary && grammar.buildAST() &&
		(rewrite_atom_AST_in.getType()==RULE_REF ||
		rewrite_atom_AST_in.getType()==LABEL ||
		rewrite_atom_AST_in.getType()==TOKEN_REF ||
		rewrite_atom_AST_in.getType()==CHAR_LITERAL ||
		rewrite_atom_AST_in.getType()==STRING_LITERAL) )
		{
		// track per block and for entire rewrite rule
		if ( currentRewriteBlock!=null ) {
		currentRewriteBlock.rewriteRefsShallow.add(rewrite_atom_AST_in);
		currentRewriteBlock.rewriteRefsDeep.add(rewrite_atom_AST_in);
		}
		currentRewriteRule.rewriteRefsDeep.add(rewrite_atom_AST_in);
		}
		
		
		try {      // for error handling
			if (_t==null) _t=ASTNULL;
			switch ( _t.getType()) {
			case RULE_REF:
			{
				GrammarAST tmp87_AST_in = (GrammarAST)_t;
				match(_t,RULE_REF);
				_t = _t.getNextSibling();
				break;
			}
			case STRING_LITERAL:
			case CHAR_LITERAL:
			case TOKEN_REF:
			{
				{
				if (_t==null) _t=ASTNULL;
				switch ( _t.getType()) {
				case TOKEN_REF:
				{
					AST __t150 = _t;
					GrammarAST tmp88_AST_in = (GrammarAST)_t;
					match(_t,TOKEN_REF);
					_t = _t.getFirstChild();
					{
					if (_t==null) _t=ASTNULL;
					switch ( _t.getType()) {
					case ARG_ACTION:
					{
						arg = (GrammarAST)_t;
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
					_t = __t150;
					_t = _t.getNextSibling();
					break;
				}
				case CHAR_LITERAL:
				{
					GrammarAST tmp89_AST_in = (GrammarAST)_t;
					match(_t,CHAR_LITERAL);
					_t = _t.getNextSibling();
					break;
				}
				case STRING_LITERAL:
				{
					GrammarAST tmp90_AST_in = (GrammarAST)_t;
					match(_t,STRING_LITERAL);
					_t = _t.getNextSibling();
					break;
				}
				default:
				{
					throw new NoViableAltException(_t);
				}
				}
				}
				if ( inputState.guessing==0 ) {
					
					if ( arg!=null ) {
					arg.outerAltNum = this.outerAltNum;
					trackInlineAction(arg);
					}
					
				}
				break;
			}
			case LABEL:
			{
				GrammarAST tmp91_AST_in = (GrammarAST)_t;
				match(_t,LABEL);
				_t = _t.getNextSibling();
				break;
			}
			case ACTION:
			{
				GrammarAST tmp92_AST_in = (GrammarAST)_t;
				match(_t,ACTION);
				_t = _t.getNextSibling();
				if ( inputState.guessing==0 ) {
					
					tmp92_AST_in.outerAltNum = this.outerAltNum;
					trackInlineAction(tmp92_AST_in);
					
				}
				break;
			}
			default:
			{
				throw new NoViableAltException(_t);
			}
			}
		}
		catch (RecognitionException ex) {
			if (inputState.guessing==0) {
				reportError(ex);
				if (_t!=null) {_t = _t.getNextSibling();}
			} else {
			  throw ex;
			}
		}
		_retTree = _t;
	}
	
	public final void rewrite_ebnf(AST _t) throws RecognitionException {
		
		GrammarAST rewrite_ebnf_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		
		try {      // for error handling
			if (_t==null) _t=ASTNULL;
			switch ( _t.getType()) {
			case OPTIONAL:
			{
				AST __t141 = _t;
				GrammarAST tmp93_AST_in = (GrammarAST)_t;
				match(_t,OPTIONAL);
				_t = _t.getFirstChild();
				rewrite_block(_t);
				_t = _retTree;
				_t = __t141;
				_t = _t.getNextSibling();
				break;
			}
			case CLOSURE:
			{
				AST __t142 = _t;
				GrammarAST tmp94_AST_in = (GrammarAST)_t;
				match(_t,CLOSURE);
				_t = _t.getFirstChild();
				rewrite_block(_t);
				_t = _retTree;
				_t = __t142;
				_t = _t.getNextSibling();
				break;
			}
			case POSITIVE_CLOSURE:
			{
				AST __t143 = _t;
				GrammarAST tmp95_AST_in = (GrammarAST)_t;
				match(_t,POSITIVE_CLOSURE);
				_t = _t.getFirstChild();
				rewrite_block(_t);
				_t = _retTree;
				_t = __t143;
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
			if (inputState.guessing==0) {
				reportError(ex);
				if (_t!=null) {_t = _t.getNextSibling();}
			} else {
			  throw ex;
			}
		}
		_retTree = _t;
	}
	
	public final void rewrite_tree(AST _t) throws RecognitionException {
		
		GrammarAST rewrite_tree_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		
		try {      // for error handling
			AST __t145 = _t;
			GrammarAST tmp96_AST_in = (GrammarAST)_t;
			match(_t,TREE_BEGIN);
			_t = _t.getFirstChild();
			rewrite_atom(_t);
			_t = _retTree;
			{
			_loop147:
			do {
				if (_t==null) _t=ASTNULL;
				if ((_t.getType()==OPTIONAL||_t.getType()==CLOSURE||_t.getType()==POSITIVE_CLOSURE||_t.getType()==LABEL||_t.getType()==ACTION||_t.getType()==STRING_LITERAL||_t.getType()==CHAR_LITERAL||_t.getType()==TOKEN_REF||_t.getType()==RULE_REF||_t.getType()==TREE_BEGIN)) {
					rewrite_element(_t);
					_t = _retTree;
				}
				else {
					break _loop147;
				}
				
			} while (true);
			}
			_t = __t145;
			_t = _t.getNextSibling();
		}
		catch (RecognitionException ex) {
			if (inputState.guessing==0) {
				reportError(ex);
				if (_t!=null) {_t = _t.getNextSibling();}
			} else {
			  throw ex;
			}
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
		"SRC"
	};
	
	}
	
