// $ANTLR 2.7.7 (20060906): "buildnfa.g" -> "TreeToNFAConverter.java"$

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


/** Build an NFA from a tree representing an ANTLR grammar. */
public class TreeToNFAConverter extends antlr.TreeParser       implements TreeToNFAConverterTokenTypes
 {


/** Factory used to create nodes and submachines */
protected NFAFactory factory = null;

/** Which NFA object are we filling in? */
protected NFA nfa = null;

/** Which grammar are we converting an NFA for? */
protected Grammar grammar = null;

protected String currentRuleName = null;

protected int outerAltNum = 0;
protected int blockLevel = 0;

public TreeToNFAConverter(Grammar g, NFA nfa, NFAFactory factory) {
	this();
	this.grammar = g;
	this.nfa = nfa;
	this.factory = factory;
}

/*
protected void init() {
    // define all the rule begin/end NFAStates to solve forward reference issues
    Collection rules = grammar.getRules();
    for (Iterator itr = rules.iterator(); itr.hasNext();) {
		Rule r = (Rule) itr.next();
        String ruleName = r.name;
        NFAState ruleBeginState = factory.newState();
        ruleBeginState.setDescription("rule "+ruleName+" start");
		ruleBeginState.enclosingRule = r;
        r.startState = ruleBeginState;
        NFAState ruleEndState = factory.newState();
        ruleEndState.setDescription("rule "+ruleName+" end");
        ruleEndState.setAcceptState(true);
		ruleEndState.enclosingRule = r;
        r.stopState = ruleEndState;
    }
}
*/

protected void addFollowTransition(String ruleName, NFAState following) {
     //System.out.println("adding follow link to rule "+ruleName);
     // find last link in FOLLOW chain emanating from rule
     Rule r = grammar.getRule(ruleName);
     NFAState end = r.stopState;
     while ( end.transition(1)!=null ) {
         end = (NFAState)end.transition(1).target;
     }
     if ( end.transition(0)!=null ) {
         // already points to a following node
         // gotta add another node to keep edges to a max of 2
         NFAState n = factory.newState();
         Transition e = new Transition(Label.EPSILON, n);
         end.addTransition(e);
         end = n;
     }
     Transition followEdge = new Transition(Label.EPSILON, following);
     end.addTransition(followEdge);
}

protected void finish() {
    List rules = new LinkedList();
    rules.addAll(grammar.getRules());
    int numEntryPoints = factory.build_EOFStates(rules);
    if ( numEntryPoints==0 ) {
        ErrorManager.grammarWarning(ErrorManager.MSG_NO_GRAMMAR_START_RULE,
                                   grammar,
                                   null,
                                   grammar.name);
    }
}

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
            "buildnfa: "+ex.toString(),
            ex);
    }
public TreeToNFAConverter() {
	tokenNames = _tokenNames;
}

	public final void grammar(AST _t) throws RecognitionException {
		
		GrammarAST grammar_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		
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
			finish();
		}
		catch (RecognitionException ex) {
			reportError(ex);
			if (_t!=null) {_t = _t.getNextSibling();}
		}
		_retTree = _t;
	}
	
	public final void grammarSpec(AST _t) throws RecognitionException {
		
		GrammarAST grammarSpec_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		GrammarAST cmt = null;
		
		try {      // for error handling
			GrammarAST tmp5_AST_in = (GrammarAST)_t;
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
				AST __t12 = _t;
				GrammarAST tmp6_AST_in = (GrammarAST)_t;
				match(_t,OPTIONS);
				_t = _t.getFirstChild();
				GrammarAST tmp7_AST_in = (GrammarAST)_t;
				if ( _t==null ) throw new MismatchedTokenException();
				_t = _t.getNextSibling();
				_t = __t12;
				_t = _t.getNextSibling();
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
				AST __t14 = _t;
				GrammarAST tmp8_AST_in = (GrammarAST)_t;
				match(_t,IMPORT);
				_t = _t.getFirstChild();
				GrammarAST tmp9_AST_in = (GrammarAST)_t;
				if ( _t==null ) throw new MismatchedTokenException();
				_t = _t.getNextSibling();
				_t = __t14;
				_t = _t.getNextSibling();
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
				AST __t16 = _t;
				GrammarAST tmp10_AST_in = (GrammarAST)_t;
				match(_t,TOKENS);
				_t = _t.getFirstChild();
				GrammarAST tmp11_AST_in = (GrammarAST)_t;
				if ( _t==null ) throw new MismatchedTokenException();
				_t = _t.getNextSibling();
				_t = __t16;
				_t = _t.getNextSibling();
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
			_loop18:
			do {
				if (_t==null) _t=ASTNULL;
				if ((_t.getType()==SCOPE)) {
					attrScope(_t);
					_t = _retTree;
				}
				else {
					break _loop18;
				}
				
			} while (true);
			}
			{
			_loop20:
			do {
				if (_t==null) _t=ASTNULL;
				if ((_t.getType()==AMPERSAND)) {
					GrammarAST tmp12_AST_in = (GrammarAST)_t;
					match(_t,AMPERSAND);
					_t = _t.getNextSibling();
				}
				else {
					break _loop20;
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
	
	public final void attrScope(AST _t) throws RecognitionException {
		
		GrammarAST attrScope_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		
		try {      // for error handling
			AST __t8 = _t;
			GrammarAST tmp13_AST_in = (GrammarAST)_t;
			match(_t,SCOPE);
			_t = _t.getFirstChild();
			GrammarAST tmp14_AST_in = (GrammarAST)_t;
			match(_t,ID);
			_t = _t.getNextSibling();
			GrammarAST tmp15_AST_in = (GrammarAST)_t;
			match(_t,ACTION);
			_t = _t.getNextSibling();
			_t = __t8;
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
			int _cnt23=0;
			_loop23:
			do {
				if (_t==null) _t=ASTNULL;
				if ((_t.getType()==RULE)) {
					rule(_t);
					_t = _retTree;
				}
				else {
					if ( _cnt23>=1 ) { break _loop23; } else {throw new NoViableAltException(_t);}
				}
				
				_cnt23++;
			} while (true);
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
		
		StateCluster g=null;
		StateCluster b = null;
		String r=null;
		
		
		try {      // for error handling
			AST __t25 = _t;
			GrammarAST tmp16_AST_in = (GrammarAST)_t;
			match(_t,RULE);
			_t = _t.getFirstChild();
			id = (GrammarAST)_t;
			match(_t,ID);
			_t = _t.getNextSibling();
			r=id.getText();
			
			currentRuleName = r;
			factory.setCurrentRule(grammar.getLocallyDefinedRule(r));
			
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
			{
			GrammarAST tmp17_AST_in = (GrammarAST)_t;
			match(_t,ARG);
			_t = _t.getNextSibling();
			{
			if (_t==null) _t=ASTNULL;
			switch ( _t.getType()) {
			case ARG_ACTION:
			{
				GrammarAST tmp18_AST_in = (GrammarAST)_t;
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
			GrammarAST tmp19_AST_in = (GrammarAST)_t;
			match(_t,RET);
			_t = _t.getNextSibling();
			{
			if (_t==null) _t=ASTNULL;
			switch ( _t.getType()) {
			case ARG_ACTION:
			{
				GrammarAST tmp20_AST_in = (GrammarAST)_t;
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
				GrammarAST tmp21_AST_in = (GrammarAST)_t;
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
			_loop34:
			do {
				if (_t==null) _t=ASTNULL;
				if ((_t.getType()==AMPERSAND)) {
					GrammarAST tmp22_AST_in = (GrammarAST)_t;
					match(_t,AMPERSAND);
					_t = _t.getNextSibling();
				}
				else {
					break _loop34;
				}
				
			} while (true);
			}
			GrammarAST blk = (GrammarAST)_t;
			b=block(_t);
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
			GrammarAST tmp23_AST_in = (GrammarAST)_t;
			match(_t,EOR);
			_t = _t.getNextSibling();
			
			if ( blk.getSetValue() !=null ) {
			// if block comes back as a set not BLOCK, make it
			// a single ALT block
			b = factory.build_AlternativeBlockFromSet(b);
			}
							if ( Character.isLowerCase(r.charAt(0)) ||
								 grammar.type==Grammar.LEXER )
							{
								// attach start node to block for this rule
			Rule thisR = grammar.getLocallyDefinedRule(r);
								NFAState start = thisR.startState;
								start.associatedASTNode = id;
								start.addTransition(new Transition(Label.EPSILON, b.left));
			
								// track decision if > 1 alts
								if ( grammar.getNumberOfAltsForDecisionNFA(b.left)>1 ) {
									b.left.setDescription(grammar.grammarTreeToString(rule_AST_in,false));
									b.left.setDecisionASTNode(blk);
									int d = grammar.assignDecisionNumber( b.left );
									grammar.setDecisionNFA( d, b.left );
				grammar.setDecisionBlockAST(d, blk);
								}
			
								// hook to end of rule node
								NFAState end = thisR.stopState;
								b.right.addTransition(new Transition(Label.EPSILON,end));
							}
			
			_t = __t25;
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
				GrammarAST tmp24_AST_in = (GrammarAST)_t;
				match(_t,LITERAL_protected);
				_t = _t.getNextSibling();
				break;
			}
			case LITERAL_public:
			{
				GrammarAST tmp25_AST_in = (GrammarAST)_t;
				match(_t,LITERAL_public);
				_t = _t.getNextSibling();
				break;
			}
			case LITERAL_private:
			{
				GrammarAST tmp26_AST_in = (GrammarAST)_t;
				match(_t,LITERAL_private);
				_t = _t.getNextSibling();
				break;
			}
			case FRAGMENT:
			{
				GrammarAST tmp27_AST_in = (GrammarAST)_t;
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
			AST __t38 = _t;
			GrammarAST tmp28_AST_in = (GrammarAST)_t;
			match(_t,SCOPE);
			_t = _t.getFirstChild();
			{
			if (_t==null) _t=ASTNULL;
			switch ( _t.getType()) {
			case ACTION:
			{
				GrammarAST tmp29_AST_in = (GrammarAST)_t;
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
			_loop41:
			do {
				if (_t==null) _t=ASTNULL;
				if ((_t.getType()==ID)) {
					GrammarAST tmp30_AST_in = (GrammarAST)_t;
					match(_t,ID);
					_t = _t.getNextSibling();
				}
				else {
					break _loop41;
				}
				
			} while (true);
			}
			_t = __t38;
			_t = _t.getNextSibling();
		}
		catch (RecognitionException ex) {
			reportError(ex);
			if (_t!=null) {_t = _t.getNextSibling();}
		}
		_retTree = _t;
	}
	
	public final StateCluster  block(AST _t) throws RecognitionException {
		StateCluster g = null;
		
		GrammarAST block_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		
		StateCluster a = null;
		List alts = new LinkedList();
		this.blockLevel++;
		if ( this.blockLevel==1 ) {this.outerAltNum=1;}
		
		
		try {      // for error handling
			if (_t==null) _t=ASTNULL;
			if (((_t.getType()==BLOCK))&&(grammar.isValidSet(this,block_AST_in) &&
		 !currentRuleName.equals(Grammar.ARTIFICIAL_TOKENS_RULENAME))) {
				g=set(_t);
				_t = _retTree;
				this.blockLevel--;
			}
			else if ((_t.getType()==BLOCK)) {
				AST __t43 = _t;
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
				int _cnt46=0;
				_loop46:
				do {
					if (_t==null) _t=ASTNULL;
					if ((_t.getType()==ALT)) {
						a=alternative(_t);
						_t = _retTree;
						rewrite(_t);
						_t = _retTree;
						
						alts.add(a);
						if ( this.blockLevel==1 ) {this.outerAltNum++;}
						
					}
					else {
						if ( _cnt46>=1 ) { break _loop46; } else {throw new NoViableAltException(_t);}
					}
					
					_cnt46++;
				} while (true);
				}
				GrammarAST tmp33_AST_in = (GrammarAST)_t;
				match(_t,EOB);
				_t = _t.getNextSibling();
				_t = __t43;
				_t = _t.getNextSibling();
				g = factory.build_AlternativeBlock(alts);
				this.blockLevel--;
			}
			else {
				throw new NoViableAltException(_t);
			}
			
		}
		catch (RecognitionException ex) {
			reportError(ex);
			if (_t!=null) {_t = _t.getNextSibling();}
		}
		_retTree = _t;
		return g;
	}
	
	public final void exceptionGroup(AST _t) throws RecognitionException {
		
		GrammarAST exceptionGroup_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		
		try {      // for error handling
			if (_t==null) _t=ASTNULL;
			switch ( _t.getType()) {
			case LITERAL_catch:
			{
				{
				int _cnt53=0;
				_loop53:
				do {
					if (_t==null) _t=ASTNULL;
					if ((_t.getType()==LITERAL_catch)) {
						exceptionHandler(_t);
						_t = _retTree;
					}
					else {
						if ( _cnt53>=1 ) { break _loop53; } else {throw new NoViableAltException(_t);}
					}
					
					_cnt53++;
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
	
	public final StateCluster  set(AST _t) throws RecognitionException {
		StateCluster g=null;
		
		GrammarAST set_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		GrammarAST b = null;
		
		IntSet elements=new IntervalSet();
		set_AST_in.setSetValue(elements); // track set for use by code gen
		
		
		try {      // for error handling
			AST __t102 = _t;
			b = _t==ASTNULL ? null :(GrammarAST)_t;
			match(_t,BLOCK);
			_t = _t.getFirstChild();
			{
			int _cnt106=0;
			_loop106:
			do {
				if (_t==null) _t=ASTNULL;
				if ((_t.getType()==ALT)) {
					AST __t104 = _t;
					GrammarAST tmp34_AST_in = (GrammarAST)_t;
					match(_t,ALT);
					_t = _t.getFirstChild();
					{
					if (_t==null) _t=ASTNULL;
					switch ( _t.getType()) {
					case BACKTRACK_SEMPRED:
					{
						GrammarAST tmp35_AST_in = (GrammarAST)_t;
						match(_t,BACKTRACK_SEMPRED);
						_t = _t.getNextSibling();
						break;
					}
					case BLOCK:
					case CHAR_RANGE:
					case STRING_LITERAL:
					case CHAR_LITERAL:
					case TOKEN_REF:
					case NOT:
					{
						break;
					}
					default:
					{
						throw new NoViableAltException(_t);
					}
					}
					}
					setElement(_t,elements);
					_t = _retTree;
					GrammarAST tmp36_AST_in = (GrammarAST)_t;
					match(_t,EOA);
					_t = _t.getNextSibling();
					_t = __t104;
					_t = _t.getNextSibling();
				}
				else {
					if ( _cnt106>=1 ) { break _loop106; } else {throw new NoViableAltException(_t);}
				}
				
				_cnt106++;
			} while (true);
			}
			GrammarAST tmp37_AST_in = (GrammarAST)_t;
			match(_t,EOB);
			_t = _t.getNextSibling();
			_t = __t102;
			_t = _t.getNextSibling();
			
			g = factory.build_Set(elements,b);
			b.followingNFAState = g.right;
			b.setSetValue(elements); // track set value of this block
			
		}
		catch (RecognitionException ex) {
			reportError(ex);
			if (_t!=null) {_t = _t.getNextSibling();}
		}
		_retTree = _t;
		return g;
	}
	
	public final StateCluster  alternative(AST _t) throws RecognitionException {
		StateCluster g=null;
		
		GrammarAST alternative_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		
		StateCluster e = null;
		
		
		try {      // for error handling
			AST __t48 = _t;
			GrammarAST tmp38_AST_in = (GrammarAST)_t;
			match(_t,ALT);
			_t = _t.getFirstChild();
			{
			int _cnt50=0;
			_loop50:
			do {
				if (_t==null) _t=ASTNULL;
				if ((_tokenSet_0.member(_t.getType()))) {
					e=element(_t);
					_t = _retTree;
					g = factory.build_AB(g,e);
				}
				else {
					if ( _cnt50>=1 ) { break _loop50; } else {throw new NoViableAltException(_t);}
				}
				
				_cnt50++;
			} while (true);
			}
			_t = __t48;
			_t = _t.getNextSibling();
			
			if (g==null) { // if alt was a list of actions or whatever
			g = factory.build_Epsilon();
			}
			else {
				factory.optimizeAlternative(g);
			}
			
		}
		catch (RecognitionException ex) {
			reportError(ex);
			if (_t!=null) {_t = _t.getNextSibling();}
		}
		_retTree = _t;
		return g;
	}
	
	public final void rewrite(AST _t) throws RecognitionException {
		
		GrammarAST rewrite_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		
		try {      // for error handling
			{
			_loop64:
			do {
				if (_t==null) _t=ASTNULL;
				if ((_t.getType()==REWRITE)) {
					
								if ( grammar.getOption("output")==null ) {
									ErrorManager.grammarError(ErrorManager.MSG_REWRITE_OR_OP_WITH_NO_OUTPUT_OPTION,
															  grammar, rewrite_AST_in.token, currentRuleName);
								}
								
					AST __t61 = _t;
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
					_t = __t61;
					_t = _t.getNextSibling();
				}
				else {
					break _loop64;
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
	
	public final StateCluster  element(AST _t) throws RecognitionException {
		StateCluster g=null;
		
		GrammarAST element_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		GrammarAST a = null;
		GrammarAST b = null;
		GrammarAST c1 = null;
		GrammarAST c2 = null;
		GrammarAST pred = null;
		GrammarAST spred = null;
		GrammarAST bpred = null;
		GrammarAST gpred = null;
		
		try {      // for error handling
			if (_t==null) _t=ASTNULL;
			switch ( _t.getType()) {
			case ROOT:
			{
				AST __t66 = _t;
				GrammarAST tmp45_AST_in = (GrammarAST)_t;
				match(_t,ROOT);
				_t = _t.getFirstChild();
				g=element(_t);
				_t = _retTree;
				_t = __t66;
				_t = _t.getNextSibling();
				break;
			}
			case BANG:
			{
				AST __t67 = _t;
				GrammarAST tmp46_AST_in = (GrammarAST)_t;
				match(_t,BANG);
				_t = _t.getFirstChild();
				g=element(_t);
				_t = _retTree;
				_t = __t67;
				_t = _t.getNextSibling();
				break;
			}
			case ASSIGN:
			{
				AST __t68 = _t;
				GrammarAST tmp47_AST_in = (GrammarAST)_t;
				match(_t,ASSIGN);
				_t = _t.getFirstChild();
				GrammarAST tmp48_AST_in = (GrammarAST)_t;
				match(_t,ID);
				_t = _t.getNextSibling();
				g=element(_t);
				_t = _retTree;
				_t = __t68;
				_t = _t.getNextSibling();
				break;
			}
			case PLUS_ASSIGN:
			{
				AST __t69 = _t;
				GrammarAST tmp49_AST_in = (GrammarAST)_t;
				match(_t,PLUS_ASSIGN);
				_t = _t.getFirstChild();
				GrammarAST tmp50_AST_in = (GrammarAST)_t;
				match(_t,ID);
				_t = _t.getNextSibling();
				g=element(_t);
				_t = _retTree;
				_t = __t69;
				_t = _t.getNextSibling();
				break;
			}
			case RANGE:
			{
				AST __t70 = _t;
				GrammarAST tmp51_AST_in = (GrammarAST)_t;
				match(_t,RANGE);
				_t = _t.getFirstChild();
				a = _t==ASTNULL ? null : (GrammarAST)_t;
				atom(_t,null);
				_t = _retTree;
				b = _t==ASTNULL ? null : (GrammarAST)_t;
				atom(_t,null);
				_t = _retTree;
				_t = __t70;
				_t = _t.getNextSibling();
				g = factory.build_Range(grammar.getTokenType(a.getText()),
				grammar.getTokenType(b.getText()));
				break;
			}
			case CHAR_RANGE:
			{
				AST __t71 = _t;
				GrammarAST tmp52_AST_in = (GrammarAST)_t;
				match(_t,CHAR_RANGE);
				_t = _t.getFirstChild();
				c1 = (GrammarAST)_t;
				match(_t,CHAR_LITERAL);
				_t = _t.getNextSibling();
				c2 = (GrammarAST)_t;
				match(_t,CHAR_LITERAL);
				_t = _t.getNextSibling();
				_t = __t71;
				_t = _t.getNextSibling();
				
				if ( grammar.type==Grammar.LEXER ) {
					g = factory.build_CharRange(c1.getText(), c2.getText());
				}
				
				break;
			}
			case DOT:
			case STRING_LITERAL:
			case CHAR_LITERAL:
			case TOKEN_REF:
			case WILDCARD:
			case RULE_REF:
			case NOT:
			{
				g=atom_or_notatom(_t);
				_t = _retTree;
				break;
			}
			case BLOCK:
			case OPTIONAL:
			case CLOSURE:
			case POSITIVE_CLOSURE:
			{
				g=ebnf(_t);
				_t = _retTree;
				break;
			}
			case TREE_BEGIN:
			{
				g=tree(_t);
				_t = _retTree;
				break;
			}
			case SYNPRED:
			{
				AST __t72 = _t;
				GrammarAST tmp53_AST_in = (GrammarAST)_t;
				match(_t,SYNPRED);
				_t = _t.getFirstChild();
				block(_t);
				_t = _retTree;
				_t = __t72;
				_t = _t.getNextSibling();
				break;
			}
			case ACTION:
			{
				GrammarAST tmp54_AST_in = (GrammarAST)_t;
				match(_t,ACTION);
				_t = _t.getNextSibling();
				g = factory.build_Action(tmp54_AST_in);
				break;
			}
			case FORCED_ACTION:
			{
				GrammarAST tmp55_AST_in = (GrammarAST)_t;
				match(_t,FORCED_ACTION);
				_t = _t.getNextSibling();
				g = factory.build_Action(tmp55_AST_in);
				break;
			}
			case SEMPRED:
			{
				pred = (GrammarAST)_t;
				match(_t,SEMPRED);
				_t = _t.getNextSibling();
				g = factory.build_SemanticPredicate(pred);
				break;
			}
			case SYN_SEMPRED:
			{
				spred = (GrammarAST)_t;
				match(_t,SYN_SEMPRED);
				_t = _t.getNextSibling();
				g = factory.build_SemanticPredicate(spred);
				break;
			}
			case BACKTRACK_SEMPRED:
			{
				bpred = (GrammarAST)_t;
				match(_t,BACKTRACK_SEMPRED);
				_t = _t.getNextSibling();
				g = factory.build_SemanticPredicate(bpred);
				break;
			}
			case GATED_SEMPRED:
			{
				gpred = (GrammarAST)_t;
				match(_t,GATED_SEMPRED);
				_t = _t.getNextSibling();
				g = factory.build_SemanticPredicate(gpred);
				break;
			}
			case EPSILON:
			{
				GrammarAST tmp56_AST_in = (GrammarAST)_t;
				match(_t,EPSILON);
				_t = _t.getNextSibling();
				g = factory.build_Epsilon();
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
		return g;
	}
	
	public final void exceptionHandler(AST _t) throws RecognitionException {
		
		GrammarAST exceptionHandler_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		
		try {      // for error handling
			AST __t56 = _t;
			GrammarAST tmp57_AST_in = (GrammarAST)_t;
			match(_t,LITERAL_catch);
			_t = _t.getFirstChild();
			GrammarAST tmp58_AST_in = (GrammarAST)_t;
			match(_t,ARG_ACTION);
			_t = _t.getNextSibling();
			GrammarAST tmp59_AST_in = (GrammarAST)_t;
			match(_t,ACTION);
			_t = _t.getNextSibling();
			_t = __t56;
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
			AST __t58 = _t;
			GrammarAST tmp60_AST_in = (GrammarAST)_t;
			match(_t,LITERAL_finally);
			_t = _t.getFirstChild();
			GrammarAST tmp61_AST_in = (GrammarAST)_t;
			match(_t,ACTION);
			_t = _t.getNextSibling();
			_t = __t58;
			_t = _t.getNextSibling();
		}
		catch (RecognitionException ex) {
			reportError(ex);
			if (_t!=null) {_t = _t.getNextSibling();}
		}
		_retTree = _t;
	}
	
	public final StateCluster  atom(AST _t,
		String scopeName
	) throws RecognitionException {
		StateCluster g=null;
		
		GrammarAST atom_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		GrammarAST r = null;
		GrammarAST rarg = null;
		GrammarAST as1 = null;
		GrammarAST t = null;
		GrammarAST targ = null;
		GrammarAST as2 = null;
		GrammarAST c = null;
		GrammarAST as3 = null;
		GrammarAST s = null;
		GrammarAST as4 = null;
		GrammarAST w = null;
		GrammarAST as5 = null;
		GrammarAST scope = null;
		
		try {      // for error handling
			if (_t==null) _t=ASTNULL;
			switch ( _t.getType()) {
			case RULE_REF:
			{
				AST __t87 = _t;
				r = _t==ASTNULL ? null :(GrammarAST)_t;
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
				case BANG:
				case ROOT:
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
				case BANG:
				case ROOT:
				{
					as1 = _t==ASTNULL ? null : (GrammarAST)_t;
					ast_suffix(_t);
					_t = _retTree;
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
				_t = __t87;
				_t = _t.getNextSibling();
				
				NFAState start = grammar.getRuleStartState(scopeName,r.getText());
				if ( start!=null ) {
				Rule rr = grammar.getRule(scopeName,r.getText());
				g = factory.build_RuleRef(rr, start);
				r.followingNFAState = g.right;
				r.NFAStartState = g.left;
				if ( g.left.transition(0) instanceof RuleClosureTransition
					 && grammar.type!=Grammar.LEXER )
				{
				addFollowTransition(r.getText(), g.right);
				}
				// else rule ref got inlined to a set
				}
				
				break;
			}
			case TOKEN_REF:
			{
				AST __t90 = _t;
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
				case BANG:
				case ROOT:
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
				case BANG:
				case ROOT:
				{
					as2 = _t==ASTNULL ? null : (GrammarAST)_t;
					ast_suffix(_t);
					_t = _retTree;
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
				_t = __t90;
				_t = _t.getNextSibling();
				
				if ( grammar.type==Grammar.LEXER ) {
				NFAState start = grammar.getRuleStartState(scopeName,t.getText());
				if ( start!=null ) {
				Rule rr = grammar.getRule(scopeName,t.getText());
				g = factory.build_RuleRef(rr, start);
					t.NFAStartState = g.left;
				// don't add FOLLOW transitions in the lexer;
				// only exact context should be used.
				}
				}
				else {
				g = factory.build_Atom(t);
				t.followingNFAState = g.right;
				}
				
				break;
			}
			case CHAR_LITERAL:
			{
				AST __t93 = _t;
				c = _t==ASTNULL ? null :(GrammarAST)_t;
				match(_t,CHAR_LITERAL);
				_t = _t.getFirstChild();
				{
				if (_t==null) _t=ASTNULL;
				switch ( _t.getType()) {
				case BANG:
				case ROOT:
				{
					as3 = _t==ASTNULL ? null : (GrammarAST)_t;
					ast_suffix(_t);
					_t = _retTree;
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
				_t = __t93;
				_t = _t.getNextSibling();
				
					if ( grammar.type==Grammar.LEXER ) {
						g = factory.build_CharLiteralAtom(c);
					}
					else {
				g = factory.build_Atom(c);
				c.followingNFAState = g.right;
					}
					
				break;
			}
			case STRING_LITERAL:
			{
				AST __t95 = _t;
				s = _t==ASTNULL ? null :(GrammarAST)_t;
				match(_t,STRING_LITERAL);
				_t = _t.getFirstChild();
				{
				if (_t==null) _t=ASTNULL;
				switch ( _t.getType()) {
				case BANG:
				case ROOT:
				{
					as4 = _t==ASTNULL ? null : (GrammarAST)_t;
					ast_suffix(_t);
					_t = _retTree;
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
				_t = __t95;
				_t = _t.getNextSibling();
				
					if ( grammar.type==Grammar.LEXER ) {
						g = factory.build_StringLiteralAtom(s);
					}
					else {
				g = factory.build_Atom(s);
				s.followingNFAState = g.right;
					}
					
				break;
			}
			case WILDCARD:
			{
				AST __t97 = _t;
				w = _t==ASTNULL ? null :(GrammarAST)_t;
				match(_t,WILDCARD);
				_t = _t.getFirstChild();
				{
				if (_t==null) _t=ASTNULL;
				switch ( _t.getType()) {
				case BANG:
				case ROOT:
				{
					as5 = _t==ASTNULL ? null : (GrammarAST)_t;
					ast_suffix(_t);
					_t = _retTree;
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
				_t = __t97;
				_t = _t.getNextSibling();
				
				if ( nfa.grammar.type==Grammar.TREE_PARSER ) {
				g = factory.build_WildcardTree(w);
				}
				else {
				g = factory.build_Wildcard(w);
				}
				
				break;
			}
			case DOT:
			{
				AST __t99 = _t;
				GrammarAST tmp62_AST_in = (GrammarAST)_t;
				match(_t,DOT);
				_t = _t.getFirstChild();
				scope = (GrammarAST)_t;
				match(_t,ID);
				_t = _t.getNextSibling();
				g=atom(_t,scope.getText());
				_t = _retTree;
				_t = __t99;
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
		return g;
	}
	
	public final StateCluster  atom_or_notatom(AST _t) throws RecognitionException {
		StateCluster g=null;
		
		GrammarAST atom_or_notatom_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		GrammarAST n = null;
		GrammarAST c = null;
		GrammarAST ast1 = null;
		GrammarAST t = null;
		GrammarAST ast3 = null;
		
		try {      // for error handling
			if (_t==null) _t=ASTNULL;
			switch ( _t.getType()) {
			case DOT:
			case STRING_LITERAL:
			case CHAR_LITERAL:
			case TOKEN_REF:
			case WILDCARD:
			case RULE_REF:
			{
				g=atom(_t,null);
				_t = _retTree;
				break;
			}
			case NOT:
			{
				AST __t82 = _t;
				n = _t==ASTNULL ? null :(GrammarAST)_t;
				match(_t,NOT);
				_t = _t.getFirstChild();
				{
				if (_t==null) _t=ASTNULL;
				switch ( _t.getType()) {
				case CHAR_LITERAL:
				{
					c = (GrammarAST)_t;
					match(_t,CHAR_LITERAL);
					_t = _t.getNextSibling();
					{
					if (_t==null) _t=ASTNULL;
					switch ( _t.getType()) {
					case BANG:
					case ROOT:
					{
						ast1 = _t==ASTNULL ? null : (GrammarAST)_t;
						ast_suffix(_t);
						_t = _retTree;
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
					
						            int ttype=0;
								if ( grammar.type==Grammar.LEXER ) {
								ttype = Grammar.getCharValueFromGrammarCharLiteral(c.getText());
								}
								else {
								ttype = grammar.getTokenType(c.getText());
							}
					IntSet notAtom = grammar.complement(ttype);
					if ( notAtom.isNil() ) {
					ErrorManager.grammarError(ErrorManager.MSG_EMPTY_COMPLEMENT,
										  			              grammar,
													              c.token,
														          c.getText());
					}
						            g=factory.build_Set(notAtom,n);
						
					break;
				}
				case TOKEN_REF:
				{
					t = (GrammarAST)_t;
					match(_t,TOKEN_REF);
					_t = _t.getNextSibling();
					{
					if (_t==null) _t=ASTNULL;
					switch ( _t.getType()) {
					case BANG:
					case ROOT:
					{
						ast3 = _t==ASTNULL ? null : (GrammarAST)_t;
						ast_suffix(_t);
						_t = _retTree;
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
					
						            int ttype=0;
					IntSet notAtom = null;
								if ( grammar.type==Grammar.LEXER ) {
								notAtom = grammar.getSetFromRule(this,t.getText());
						   		if ( notAtom==null ) {
							ErrorManager.grammarError(ErrorManager.MSG_RULE_INVALID_SET,
									  			              grammar,
												              t.token,
													          t.getText());
						   		}
						   		else {
						            		notAtom = grammar.complement(notAtom);
						            	}
								}
								else {
								ttype = grammar.getTokenType(t.getText());
						            	notAtom = grammar.complement(ttype);
							}
					if ( notAtom==null || notAtom.isNil() ) {
					ErrorManager.grammarError(ErrorManager.MSG_EMPTY_COMPLEMENT,
									  			              grammar,
												              t.token,
													          t.getText());
					}
						           g=factory.build_Set(notAtom,n);
						
					break;
				}
				case BLOCK:
				{
					g=set(_t);
					_t = _retTree;
					
						           GrammarAST stNode = (GrammarAST)n.getFirstChild();
					//IntSet notSet = grammar.complement(stNode.getSetValue());
					// let code generator complement the sets
					IntSet s = stNode.getSetValue();
					stNode.setSetValue(s);
					// let code gen do the complement again; here we compute
					// for NFA construction
					s = grammar.complement(s);
					if ( s.isNil() ) {
					ErrorManager.grammarError(ErrorManager.MSG_EMPTY_COMPLEMENT,
									  			              grammar,
												              n.token);
					}
						           g=factory.build_Set(s,n);
						
					break;
				}
				default:
				{
					throw new NoViableAltException(_t);
				}
				}
				}
				n.followingNFAState = g.right;
				_t = __t82;
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
		return g;
	}
	
	public final StateCluster  ebnf(AST _t) throws RecognitionException {
		StateCluster g=null;
		
		GrammarAST ebnf_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		
		StateCluster b = null;
		GrammarAST blk = ebnf_AST_in;
		if ( blk.getType()!=BLOCK ) {
			blk = (GrammarAST)blk.getFirstChild();
		}
		GrammarAST eob = blk.getLastChild();
		
		
		try {      // for error handling
			if (_t==null) _t=ASTNULL;
			switch ( _t.getType()) {
			case OPTIONAL:
			{
				AST __t74 = _t;
				GrammarAST tmp63_AST_in = (GrammarAST)_t;
				match(_t,OPTIONAL);
				_t = _t.getFirstChild();
				b=block(_t);
				_t = _retTree;
				_t = __t74;
				_t = _t.getNextSibling();
				
				if ( blk.getSetValue() !=null ) {
				// if block comes back SET not BLOCK, make it
				// a single ALT block
				b = factory.build_AlternativeBlockFromSet(b);
				}
				g = factory.build_Aoptional(b);
					g.left.setDescription(grammar.grammarTreeToString(ebnf_AST_in,false));
				// there is always at least one alt even if block has just 1 alt
				int d = grammar.assignDecisionNumber( g.left );
						grammar.setDecisionNFA(d, g.left);
				grammar.setDecisionBlockAST(d, blk);
				g.left.setDecisionASTNode(ebnf_AST_in);
					
				break;
			}
			case CLOSURE:
			{
				AST __t75 = _t;
				GrammarAST tmp64_AST_in = (GrammarAST)_t;
				match(_t,CLOSURE);
				_t = _t.getFirstChild();
				b=block(_t);
				_t = _retTree;
				_t = __t75;
				_t = _t.getNextSibling();
				
				if (  blk.getSetValue() !=null ) {
				b = factory.build_AlternativeBlockFromSet(b);
				}
				g = factory.build_Astar(b);
						// track the loop back / exit decision point
					b.right.setDescription("()* loopback of "+grammar.grammarTreeToString(ebnf_AST_in,false));
				int d = grammar.assignDecisionNumber( b.right );
						grammar.setDecisionNFA(d, b.right);
				grammar.setDecisionBlockAST(d, blk);
				b.right.setDecisionASTNode(eob);
				// make block entry state also have same decision for interpreting grammar
				NFAState altBlockState = (NFAState)g.left.transition(0).target;
				altBlockState.setDecisionASTNode(ebnf_AST_in);
				altBlockState.setDecisionNumber(d);
				g.left.setDecisionNumber(d); // this is the bypass decision (2 alts)
				g.left.setDecisionASTNode(ebnf_AST_in);
					
				break;
			}
			case POSITIVE_CLOSURE:
			{
				AST __t76 = _t;
				GrammarAST tmp65_AST_in = (GrammarAST)_t;
				match(_t,POSITIVE_CLOSURE);
				_t = _t.getFirstChild();
				b=block(_t);
				_t = _retTree;
				_t = __t76;
				_t = _t.getNextSibling();
				
				if ( blk.getSetValue() !=null ) {
				b = factory.build_AlternativeBlockFromSet(b);
				}
				g = factory.build_Aplus(b);
				// don't make a decision on left edge, can reuse loop end decision
						// track the loop back / exit decision point
					b.right.setDescription("()+ loopback of "+grammar.grammarTreeToString(ebnf_AST_in,false));
				int d = grammar.assignDecisionNumber( b.right );
						grammar.setDecisionNFA(d, b.right);
				grammar.setDecisionBlockAST(d, blk);
				b.right.setDecisionASTNode(eob);
				// make block entry state also have same decision for interpreting grammar
				NFAState altBlockState = (NFAState)g.left.transition(0).target;
				altBlockState.setDecisionASTNode(ebnf_AST_in);
				altBlockState.setDecisionNumber(d);
				
				break;
			}
			default:
				if (_t==null) _t=ASTNULL;
				if (((_t.getType()==BLOCK))&&(grammar.isValidSet(this,ebnf_AST_in))) {
					g=set(_t);
					_t = _retTree;
				}
				else if ((_t.getType()==BLOCK)) {
					b=block(_t);
					_t = _retTree;
					
					// track decision if > 1 alts
					if ( grammar.getNumberOfAltsForDecisionNFA(b.left)>1 ) {
					b.left.setDescription(grammar.grammarTreeToString(blk,false));
					b.left.setDecisionASTNode(blk);
					int d = grammar.assignDecisionNumber( b.left );
					grammar.setDecisionNFA( d, b.left );
					grammar.setDecisionBlockAST(d, blk);
					}
					g = b;
					
				}
			else {
				throw new NoViableAltException(_t);
			}
			}
		}
		catch (RecognitionException ex) {
			reportError(ex);
			if (_t!=null) {_t = _t.getNextSibling();}
		}
		_retTree = _t;
		return g;
	}
	
	public final StateCluster  tree(AST _t) throws RecognitionException {
		StateCluster g=null;
		
		GrammarAST tree_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		
		StateCluster e=null;
		GrammarAST el=null;
		StateCluster down=null, up=null;
		
		
		try {      // for error handling
			AST __t78 = _t;
			GrammarAST tmp66_AST_in = (GrammarAST)_t;
			match(_t,TREE_BEGIN);
			_t = _t.getFirstChild();
			el=(GrammarAST)_t;
			g=element(_t);
			_t = _retTree;
			
			down = factory.build_Atom(Label.DOWN, el);
			// TODO set following states for imaginary nodes?
			//el.followingNFAState = down.right;
					   g = factory.build_AB(g,down);
					
			{
			_loop80:
			do {
				if (_t==null) _t=ASTNULL;
				if ((_tokenSet_0.member(_t.getType()))) {
					el=(GrammarAST)_t;
					e=element(_t);
					_t = _retTree;
					g = factory.build_AB(g,e);
				}
				else {
					break _loop80;
				}
				
			} while (true);
			}
			
			up = factory.build_Atom(Label.UP, el);
			//el.followingNFAState = up.right;
					   g = factory.build_AB(g,up);
					   // tree roots point at right edge of DOWN for LOOK computation later
					   tree_AST_in.NFATreeDownState = down.left;
					
			_t = __t78;
			_t = _t.getNextSibling();
		}
		catch (RecognitionException ex) {
			reportError(ex);
			if (_t!=null) {_t = _t.getNextSibling();}
		}
		_retTree = _t;
		return g;
	}
	
	public final void ast_suffix(AST _t) throws RecognitionException {
		
		GrammarAST ast_suffix_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		
		try {      // for error handling
			if (_t==null) _t=ASTNULL;
			switch ( _t.getType()) {
			case ROOT:
			{
				GrammarAST tmp67_AST_in = (GrammarAST)_t;
				match(_t,ROOT);
				_t = _t.getNextSibling();
				break;
			}
			case BANG:
			{
				GrammarAST tmp68_AST_in = (GrammarAST)_t;
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
	
	public final void setElement(AST _t,
		IntSet elements
	) throws RecognitionException {
		
		GrammarAST setElement_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		GrammarAST c = null;
		GrammarAST t = null;
		GrammarAST s = null;
		GrammarAST c1 = null;
		GrammarAST c2 = null;
		
		int ttype;
		IntSet ns=null;
		StateCluster gset;
		
		
		try {      // for error handling
			if (_t==null) _t=ASTNULL;
			switch ( _t.getType()) {
			case CHAR_LITERAL:
			{
				c = (GrammarAST)_t;
				match(_t,CHAR_LITERAL);
				_t = _t.getNextSibling();
				
					if ( grammar.type==Grammar.LEXER ) {
					ttype = Grammar.getCharValueFromGrammarCharLiteral(c.getText());
					}
					else {
					ttype = grammar.getTokenType(c.getText());
				}
				if ( elements.member(ttype) ) {
							ErrorManager.grammarError(ErrorManager.MSG_DUPLICATE_SET_ENTRY,
													  grammar,
													  c.token,
													  c.getText());
				}
				elements.add(ttype);
				
				break;
			}
			case TOKEN_REF:
			{
				t = (GrammarAST)_t;
				match(_t,TOKEN_REF);
				_t = _t.getNextSibling();
				
						if ( grammar.type==Grammar.LEXER ) {
							// recursively will invoke this rule to match elements in target rule ref
							IntSet ruleSet = grammar.getSetFromRule(this,t.getText());
							if ( ruleSet==null ) {
								ErrorManager.grammarError(ErrorManager.MSG_RULE_INVALID_SET,
												  grammar,
												  t.token,
												  t.getText());
							}
							else {
								elements.addAll(ruleSet);
							}
						}
						else {
							ttype = grammar.getTokenType(t.getText());
							if ( elements.member(ttype) ) {
								ErrorManager.grammarError(ErrorManager.MSG_DUPLICATE_SET_ENTRY,
														  grammar,
														  t.token,
														  t.getText());
							}
							elements.add(ttype);
							}
				
				break;
			}
			case STRING_LITERAL:
			{
				s = (GrammarAST)_t;
				match(_t,STRING_LITERAL);
				_t = _t.getNextSibling();
				
				ttype = grammar.getTokenType(s.getText());
				if ( elements.member(ttype) ) {
							ErrorManager.grammarError(ErrorManager.MSG_DUPLICATE_SET_ENTRY,
													  grammar,
													  s.token,
													  s.getText());
				}
				elements.add(ttype);
				
				break;
			}
			case CHAR_RANGE:
			{
				AST __t122 = _t;
				GrammarAST tmp69_AST_in = (GrammarAST)_t;
				match(_t,CHAR_RANGE);
				_t = _t.getFirstChild();
				c1 = (GrammarAST)_t;
				match(_t,CHAR_LITERAL);
				_t = _t.getNextSibling();
				c2 = (GrammarAST)_t;
				match(_t,CHAR_LITERAL);
				_t = _t.getNextSibling();
				_t = __t122;
				_t = _t.getNextSibling();
				
					if ( grammar.type==Grammar.LEXER ) {
					        int a = Grammar.getCharValueFromGrammarCharLiteral(c1.getText());
					    int b = Grammar.getCharValueFromGrammarCharLiteral(c2.getText());
						elements.addAll(IntervalSet.of(a,b));
					}
					
				break;
			}
			case BLOCK:
			{
				gset=set(_t);
				_t = _retTree;
				
						Transition setTrans = gset.left.transition(0);
				elements.addAll(setTrans.label.getSet());
				
				break;
			}
			case NOT:
			{
				AST __t123 = _t;
				GrammarAST tmp70_AST_in = (GrammarAST)_t;
				match(_t,NOT);
				_t = _t.getFirstChild();
				ns=new IntervalSet();
				setElement(_t,ns);
				_t = _retTree;
				
				IntSet not = grammar.complement(ns);
				elements.addAll(not);
				
				_t = __t123;
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
	
	public final IntSet  setRule(AST _t) throws RecognitionException {
		IntSet elements=new IntervalSet();
		
		GrammarAST setRule_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		GrammarAST id = null;
		IntSet s=null;
		
		try {      // for error handling
			AST __t108 = _t;
			GrammarAST tmp71_AST_in = (GrammarAST)_t;
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
			GrammarAST tmp72_AST_in = (GrammarAST)_t;
			match(_t,ARG);
			_t = _t.getNextSibling();
			GrammarAST tmp73_AST_in = (GrammarAST)_t;
			match(_t,RET);
			_t = _t.getNextSibling();
			{
			if (_t==null) _t=ASTNULL;
			switch ( _t.getType()) {
			case OPTIONS:
			{
				GrammarAST tmp74_AST_in = (GrammarAST)_t;
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
			_loop113:
			do {
				if (_t==null) _t=ASTNULL;
				if ((_t.getType()==AMPERSAND)) {
					GrammarAST tmp75_AST_in = (GrammarAST)_t;
					match(_t,AMPERSAND);
					_t = _t.getNextSibling();
				}
				else {
					break _loop113;
				}
				
			} while (true);
			}
			AST __t114 = _t;
			GrammarAST tmp76_AST_in = (GrammarAST)_t;
			match(_t,BLOCK);
			_t = _t.getFirstChild();
			{
			if (_t==null) _t=ASTNULL;
			switch ( _t.getType()) {
			case OPTIONS:
			{
				GrammarAST tmp77_AST_in = (GrammarAST)_t;
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
			int _cnt119=0;
			_loop119:
			do {
				if (_t==null) _t=ASTNULL;
				if ((_t.getType()==ALT)) {
					AST __t117 = _t;
					GrammarAST tmp78_AST_in = (GrammarAST)_t;
					match(_t,ALT);
					_t = _t.getFirstChild();
					{
					if (_t==null) _t=ASTNULL;
					switch ( _t.getType()) {
					case BACKTRACK_SEMPRED:
					{
						GrammarAST tmp79_AST_in = (GrammarAST)_t;
						match(_t,BACKTRACK_SEMPRED);
						_t = _t.getNextSibling();
						break;
					}
					case BLOCK:
					case CHAR_RANGE:
					case STRING_LITERAL:
					case CHAR_LITERAL:
					case TOKEN_REF:
					case NOT:
					{
						break;
					}
					default:
					{
						throw new NoViableAltException(_t);
					}
					}
					}
					setElement(_t,elements);
					_t = _retTree;
					GrammarAST tmp80_AST_in = (GrammarAST)_t;
					match(_t,EOA);
					_t = _t.getNextSibling();
					_t = __t117;
					_t = _t.getNextSibling();
				}
				else {
					if ( _cnt119>=1 ) { break _loop119; } else {throw new NoViableAltException(_t);}
				}
				
				_cnt119++;
			} while (true);
			}
			GrammarAST tmp81_AST_in = (GrammarAST)_t;
			match(_t,EOB);
			_t = _t.getNextSibling();
			_t = __t114;
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
			GrammarAST tmp82_AST_in = (GrammarAST)_t;
			match(_t,EOR);
			_t = _t.getNextSibling();
			_t = __t108;
			_t = _t.getNextSibling();
		}
		catch (RecognitionException re) {
			throw re;
		}
		_retTree = _t;
		return elements;
	}
	
/** Check to see if this block can be a set.  Can't have actions
 *  etc...  Also can't be in a rule with a rewrite as we need
 *  to track what's inside set for use in rewrite.
 */
	public final void testBlockAsSet(AST _t) throws RecognitionException {
		
		GrammarAST testBlockAsSet_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		
		int nAlts=0;
		Rule r = grammar.getLocallyDefinedRule(currentRuleName);
		
		
		try {      // for error handling
			AST __t125 = _t;
			GrammarAST tmp83_AST_in = (GrammarAST)_t;
			match(_t,BLOCK);
			_t = _t.getFirstChild();
			{
			int _cnt129=0;
			_loop129:
			do {
				if (_t==null) _t=ASTNULL;
				if ((_t.getType()==ALT)) {
					AST __t127 = _t;
					GrammarAST tmp84_AST_in = (GrammarAST)_t;
					match(_t,ALT);
					_t = _t.getFirstChild();
					{
					if (_t==null) _t=ASTNULL;
					switch ( _t.getType()) {
					case BACKTRACK_SEMPRED:
					{
						GrammarAST tmp85_AST_in = (GrammarAST)_t;
						match(_t,BACKTRACK_SEMPRED);
						_t = _t.getNextSibling();
						break;
					}
					case BLOCK:
					case CHAR_RANGE:
					case STRING_LITERAL:
					case CHAR_LITERAL:
					case TOKEN_REF:
					case NOT:
					{
						break;
					}
					default:
					{
						throw new NoViableAltException(_t);
					}
					}
					}
					testSetElement(_t);
					_t = _retTree;
					nAlts++;
					GrammarAST tmp86_AST_in = (GrammarAST)_t;
					match(_t,EOA);
					_t = _t.getNextSibling();
					_t = __t127;
					_t = _t.getNextSibling();
					if (!(!r.hasRewrite(outerAltNum)))
					  throw new SemanticException("!r.hasRewrite(outerAltNum)");
				}
				else {
					if ( _cnt129>=1 ) { break _loop129; } else {throw new NoViableAltException(_t);}
				}
				
				_cnt129++;
			} while (true);
			}
			GrammarAST tmp87_AST_in = (GrammarAST)_t;
			match(_t,EOB);
			_t = _t.getNextSibling();
			_t = __t125;
			_t = _t.getNextSibling();
			if (!(nAlts>1))
			  throw new SemanticException("nAlts>1");
		}
		catch (RecognitionException re) {
			throw re;
		}
		_retTree = _t;
	}
	
/** Match just an element; no ast suffix etc.. */
	public final void testSetElement(AST _t) throws RecognitionException {
		
		GrammarAST testSetElement_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		GrammarAST c = null;
		GrammarAST t = null;
		GrammarAST s = null;
		GrammarAST c1 = null;
		GrammarAST c2 = null;
		
		AST r = _t;
		
		
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
			case TOKEN_REF:
			{
				t = (GrammarAST)_t;
				match(_t,TOKEN_REF);
				_t = _t.getNextSibling();
				
						if ( grammar.type==Grammar.LEXER ) {
					        Rule rule = grammar.getRule(t.getText());
					        if ( rule==null ) {
					        	throw new RecognitionException("invalid rule");
					        }
							// recursively will invoke this rule to match elements in target rule ref
					        testSetRule(rule.tree);
						}
				
				break;
			}
			case CHAR_RANGE:
			{
				AST __t144 = _t;
				GrammarAST tmp88_AST_in = (GrammarAST)_t;
				match(_t,CHAR_RANGE);
				_t = _t.getFirstChild();
				c1 = (GrammarAST)_t;
				match(_t,CHAR_LITERAL);
				_t = _t.getNextSibling();
				c2 = (GrammarAST)_t;
				match(_t,CHAR_LITERAL);
				_t = _t.getNextSibling();
				_t = __t144;
				_t = _t.getNextSibling();
				break;
			}
			case BLOCK:
			{
				testBlockAsSet(_t);
				_t = _retTree;
				break;
			}
			case NOT:
			{
				AST __t145 = _t;
				GrammarAST tmp89_AST_in = (GrammarAST)_t;
				match(_t,NOT);
				_t = _t.getFirstChild();
				testSetElement(_t);
				_t = _retTree;
				_t = __t145;
				_t = _t.getNextSibling();
				break;
			}
			default:
				if (_t==null) _t=ASTNULL;
				if (((_t.getType()==STRING_LITERAL))&&(grammar.type!=Grammar.LEXER)) {
					s = (GrammarAST)_t;
					match(_t,STRING_LITERAL);
					_t = _t.getNextSibling();
				}
			else {
				throw new NoViableAltException(_t);
			}
			}
		}
		catch (RecognitionException re) {
			throw re;
		}
		_retTree = _t;
	}
	
	public final void testSetRule(AST _t) throws RecognitionException {
		
		GrammarAST testSetRule_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		GrammarAST id = null;
		
		try {      // for error handling
			AST __t131 = _t;
			GrammarAST tmp90_AST_in = (GrammarAST)_t;
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
			GrammarAST tmp91_AST_in = (GrammarAST)_t;
			match(_t,ARG);
			_t = _t.getNextSibling();
			GrammarAST tmp92_AST_in = (GrammarAST)_t;
			match(_t,RET);
			_t = _t.getNextSibling();
			{
			if (_t==null) _t=ASTNULL;
			switch ( _t.getType()) {
			case OPTIONS:
			{
				GrammarAST tmp93_AST_in = (GrammarAST)_t;
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
			_loop136:
			do {
				if (_t==null) _t=ASTNULL;
				if ((_t.getType()==AMPERSAND)) {
					GrammarAST tmp94_AST_in = (GrammarAST)_t;
					match(_t,AMPERSAND);
					_t = _t.getNextSibling();
				}
				else {
					break _loop136;
				}
				
			} while (true);
			}
			AST __t137 = _t;
			GrammarAST tmp95_AST_in = (GrammarAST)_t;
			match(_t,BLOCK);
			_t = _t.getFirstChild();
			{
			int _cnt141=0;
			_loop141:
			do {
				if (_t==null) _t=ASTNULL;
				if ((_t.getType()==ALT)) {
					AST __t139 = _t;
					GrammarAST tmp96_AST_in = (GrammarAST)_t;
					match(_t,ALT);
					_t = _t.getFirstChild();
					{
					if (_t==null) _t=ASTNULL;
					switch ( _t.getType()) {
					case BACKTRACK_SEMPRED:
					{
						GrammarAST tmp97_AST_in = (GrammarAST)_t;
						match(_t,BACKTRACK_SEMPRED);
						_t = _t.getNextSibling();
						break;
					}
					case BLOCK:
					case CHAR_RANGE:
					case STRING_LITERAL:
					case CHAR_LITERAL:
					case TOKEN_REF:
					case NOT:
					{
						break;
					}
					default:
					{
						throw new NoViableAltException(_t);
					}
					}
					}
					testSetElement(_t);
					_t = _retTree;
					GrammarAST tmp98_AST_in = (GrammarAST)_t;
					match(_t,EOA);
					_t = _t.getNextSibling();
					_t = __t139;
					_t = _t.getNextSibling();
				}
				else {
					if ( _cnt141>=1 ) { break _loop141; } else {throw new NoViableAltException(_t);}
				}
				
				_cnt141++;
			} while (true);
			}
			GrammarAST tmp99_AST_in = (GrammarAST)_t;
			match(_t,EOB);
			_t = _t.getNextSibling();
			_t = __t137;
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
			GrammarAST tmp100_AST_in = (GrammarAST)_t;
			match(_t,EOR);
			_t = _t.getNextSibling();
			_t = __t131;
			_t = _t.getNextSibling();
		}
		catch (RecognitionException re) {
			throw re;
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
	
	private static final long[] mk_tokenSet_0() {
		long[] data = { 616432089855819264L, 4016L, 0L, 0L};
		return data;
	}
	public static final BitSet _tokenSet_0 = new BitSet(mk_tokenSet_0());
	}
	
