// $ANTLR 2.7.7 (20060906): "antlr.print.g" -> "ANTLRTreePrinter.java"$

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


/** Print out a grammar (no pretty printing).
 *
 *  Terence Parr
 *  University of San Francisco
 *  August 19, 2003
 */
public class ANTLRTreePrinter extends antlr.TreeParser       implements ANTLRTreePrinterTokenTypes
 {


	protected Grammar grammar;
	protected boolean showActions;
    protected StringBuffer buf = new StringBuffer(300);

    public void out(String s) {
        buf.append(s);
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
            "antlr.print: "+ex.toString(),
            ex);
    }

	/** Normalize a grammar print out by removing all double spaces
	 *  and trailing/beginning stuff.  FOr example, convert
	 *
	 *  ( A  |  B  |  C )*
	 *
	 *  to
	 *
	 *  ( A | B | C )*
	 */
	public static String normalize(String g) {
	    StringTokenizer st = new StringTokenizer(g, " ", false);
		StringBuffer buf = new StringBuffer();
		while ( st.hasMoreTokens() ) {
			String w = st.nextToken();
			buf.append(w);
			buf.append(" ");
		}
		return buf.toString().trim();
	}
public ANTLRTreePrinter() {
	tokenNames = _tokenNames;
}

/** Call this to figure out how to print */
	public final String  toString(AST _t,
		Grammar g, boolean showActions
	) throws RecognitionException {
		String s=null;
		
		GrammarAST toString_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		
		grammar = g;
		this.showActions = showActions;
		
		
		try {      // for error handling
			{
			if (_t==null) _t=ASTNULL;
			switch ( _t.getType()) {
			case LEXER_GRAMMAR:
			case PARSER_GRAMMAR:
			case TREE_GRAMMAR:
			case COMBINED_GRAMMAR:
			{
				grammar(_t);
				_t = _retTree;
				break;
			}
			case RULE:
			{
				rule(_t);
				_t = _retTree;
				break;
			}
			case ALT:
			{
				alternative(_t);
				_t = _retTree;
				break;
			}
			case BLOCK:
			case OPTIONAL:
			case CLOSURE:
			case POSITIVE_CLOSURE:
			case SYNPRED:
			case RANGE:
			case CHAR_RANGE:
			case EPSILON:
			case FORCED_ACTION:
			case LABEL:
			case GATED_SEMPRED:
			case SYN_SEMPRED:
			case BACKTRACK_SEMPRED:
			case DOT:
			case ACTION:
			case ASSIGN:
			case STRING_LITERAL:
			case CHAR_LITERAL:
			case TOKEN_REF:
			case BANG:
			case PLUS_ASSIGN:
			case SEMPRED:
			case ROOT:
			case WILDCARD:
			case RULE_REF:
			case NOT:
			case TREE_BEGIN:
			{
				element(_t);
				_t = _retTree;
				break;
			}
			case REWRITE:
			{
				single_rewrite(_t);
				_t = _retTree;
				break;
			}
			case EOR:
			{
				GrammarAST tmp1_AST_in = (GrammarAST)_t;
				match(_t,EOR);
				_t = _t.getNextSibling();
				s="EOR";
				break;
			}
			default:
			{
				throw new NoViableAltException(_t);
			}
			}
			}
			return normalize(buf.toString());
		}
		catch (RecognitionException ex) {
			reportError(ex);
			if (_t!=null) {_t = _t.getNextSibling();}
		}
		_retTree = _t;
		return s;
	}
	
	public final void grammar(AST _t) throws RecognitionException {
		
		GrammarAST grammar_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		
		try {      // for error handling
			{
			if (_t==null) _t=ASTNULL;
			switch ( _t.getType()) {
			case LEXER_GRAMMAR:
			{
				AST __t5 = _t;
				GrammarAST tmp2_AST_in = (GrammarAST)_t;
				match(_t,LEXER_GRAMMAR);
				_t = _t.getFirstChild();
				grammarSpec(_t,"lexer " );
				_t = _retTree;
				_t = __t5;
				_t = _t.getNextSibling();
				break;
			}
			case PARSER_GRAMMAR:
			{
				AST __t6 = _t;
				GrammarAST tmp3_AST_in = (GrammarAST)_t;
				match(_t,PARSER_GRAMMAR);
				_t = _t.getFirstChild();
				grammarSpec(_t,"parser ");
				_t = _retTree;
				_t = __t6;
				_t = _t.getNextSibling();
				break;
			}
			case TREE_GRAMMAR:
			{
				AST __t7 = _t;
				GrammarAST tmp4_AST_in = (GrammarAST)_t;
				match(_t,TREE_GRAMMAR);
				_t = _t.getFirstChild();
				grammarSpec(_t,"tree ");
				_t = _retTree;
				_t = __t7;
				_t = _t.getNextSibling();
				break;
			}
			case COMBINED_GRAMMAR:
			{
				AST __t8 = _t;
				GrammarAST tmp5_AST_in = (GrammarAST)_t;
				match(_t,COMBINED_GRAMMAR);
				_t = _t.getFirstChild();
				grammarSpec(_t,"");
				_t = _retTree;
				_t = __t8;
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
	
	public final void rule(AST _t) throws RecognitionException {
		
		GrammarAST rule_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		GrammarAST id = null;
		GrammarAST arg = null;
		GrammarAST ret = null;
		GrammarAST b = null;
		
		try {      // for error handling
			AST __t48 = _t;
			GrammarAST tmp6_AST_in = (GrammarAST)_t;
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
			out(id.getText());
			AST __t50 = _t;
			GrammarAST tmp7_AST_in = (GrammarAST)_t;
			match(_t,ARG);
			_t = _t.getFirstChild();
			{
			if (_t==null) _t=ASTNULL;
			switch ( _t.getType()) {
			case ARG_ACTION:
			{
				arg = (GrammarAST)_t;
				match(_t,ARG_ACTION);
				_t = _t.getNextSibling();
				out("["+arg.getText()+"]");
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
			_t = __t50;
			_t = _t.getNextSibling();
			AST __t52 = _t;
			GrammarAST tmp8_AST_in = (GrammarAST)_t;
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
				out(" returns ["+ret.getText()+"]");
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
			_t = __t52;
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
			_loop57:
			do {
				if (_t==null) _t=ASTNULL;
				if ((_t.getType()==AMPERSAND)) {
					ruleAction(_t);
					_t = _retTree;
				}
				else {
					break _loop57;
				}
				
			} while (true);
			}
			out(" : ");
			b = _t==ASTNULL ? null : (GrammarAST)_t;
			block(_t,false);
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
			GrammarAST tmp9_AST_in = (GrammarAST)_t;
			match(_t,EOR);
			_t = _t.getNextSibling();
			out(";\n");
			_t = __t48;
			_t = _t.getNextSibling();
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
			AST __t80 = _t;
			GrammarAST tmp10_AST_in = (GrammarAST)_t;
			match(_t,ALT);
			_t = _t.getFirstChild();
			{
			int _cnt82=0;
			_loop82:
			do {
				if (_t==null) _t=ASTNULL;
				if ((_t.getType()==BLOCK||_t.getType()==OPTIONAL||_t.getType()==CLOSURE||_t.getType()==POSITIVE_CLOSURE||_t.getType()==SYNPRED||_t.getType()==RANGE||_t.getType()==CHAR_RANGE||_t.getType()==EPSILON||_t.getType()==FORCED_ACTION||_t.getType()==LABEL||_t.getType()==GATED_SEMPRED||_t.getType()==SYN_SEMPRED||_t.getType()==BACKTRACK_SEMPRED||_t.getType()==DOT||_t.getType()==ACTION||_t.getType()==ASSIGN||_t.getType()==STRING_LITERAL||_t.getType()==CHAR_LITERAL||_t.getType()==TOKEN_REF||_t.getType()==BANG||_t.getType()==PLUS_ASSIGN||_t.getType()==SEMPRED||_t.getType()==ROOT||_t.getType()==WILDCARD||_t.getType()==RULE_REF||_t.getType()==NOT||_t.getType()==TREE_BEGIN)) {
					element(_t);
					_t = _retTree;
				}
				else {
					if ( _cnt82>=1 ) { break _loop82; } else {throw new NoViableAltException(_t);}
				}
				
				_cnt82++;
			} while (true);
			}
			GrammarAST tmp11_AST_in = (GrammarAST)_t;
			match(_t,EOA);
			_t = _t.getNextSibling();
			_t = __t80;
			_t = _t.getNextSibling();
		}
		catch (RecognitionException ex) {
			reportError(ex);
			if (_t!=null) {_t = _t.getNextSibling();}
		}
		_retTree = _t;
	}
	
	public final void element(AST _t) throws RecognitionException {
		
		GrammarAST element_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		GrammarAST id = null;
		GrammarAST id2 = null;
		GrammarAST a = null;
		GrammarAST a2 = null;
		GrammarAST pred = null;
		GrammarAST spred = null;
		GrammarAST gpred = null;
		
		try {      // for error handling
			if (_t==null) _t=ASTNULL;
			switch ( _t.getType()) {
			case ROOT:
			{
				AST __t107 = _t;
				GrammarAST tmp12_AST_in = (GrammarAST)_t;
				match(_t,ROOT);
				_t = _t.getFirstChild();
				element(_t);
				_t = _retTree;
				_t = __t107;
				_t = _t.getNextSibling();
				break;
			}
			case BANG:
			{
				AST __t108 = _t;
				GrammarAST tmp13_AST_in = (GrammarAST)_t;
				match(_t,BANG);
				_t = _t.getFirstChild();
				element(_t);
				_t = _retTree;
				_t = __t108;
				_t = _t.getNextSibling();
				break;
			}
			case LABEL:
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
				AST __t109 = _t;
				GrammarAST tmp14_AST_in = (GrammarAST)_t;
				match(_t,NOT);
				_t = _t.getFirstChild();
				out("~");
				element(_t);
				_t = _retTree;
				_t = __t109;
				_t = _t.getNextSibling();
				break;
			}
			case RANGE:
			{
				AST __t110 = _t;
				GrammarAST tmp15_AST_in = (GrammarAST)_t;
				match(_t,RANGE);
				_t = _t.getFirstChild();
				atom(_t);
				_t = _retTree;
				out("..");
				atom(_t);
				_t = _retTree;
				_t = __t110;
				_t = _t.getNextSibling();
				break;
			}
			case CHAR_RANGE:
			{
				AST __t111 = _t;
				GrammarAST tmp16_AST_in = (GrammarAST)_t;
				match(_t,CHAR_RANGE);
				_t = _t.getFirstChild();
				atom(_t);
				_t = _retTree;
				out("..");
				atom(_t);
				_t = _retTree;
				_t = __t111;
				_t = _t.getNextSibling();
				break;
			}
			case ASSIGN:
			{
				AST __t112 = _t;
				GrammarAST tmp17_AST_in = (GrammarAST)_t;
				match(_t,ASSIGN);
				_t = _t.getFirstChild();
				id = (GrammarAST)_t;
				match(_t,ID);
				_t = _t.getNextSibling();
				out(id.getText()+"=");
				element(_t);
				_t = _retTree;
				_t = __t112;
				_t = _t.getNextSibling();
				break;
			}
			case PLUS_ASSIGN:
			{
				AST __t113 = _t;
				GrammarAST tmp18_AST_in = (GrammarAST)_t;
				match(_t,PLUS_ASSIGN);
				_t = _t.getFirstChild();
				id2 = (GrammarAST)_t;
				match(_t,ID);
				_t = _t.getNextSibling();
				out(id2.getText()+"+=");
				element(_t);
				_t = _retTree;
				_t = __t113;
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
				AST __t114 = _t;
				GrammarAST tmp19_AST_in = (GrammarAST)_t;
				match(_t,SYNPRED);
				_t = _t.getFirstChild();
				block(_t,true);
				_t = _retTree;
				_t = __t114;
				_t = _t.getNextSibling();
				out("=>");
				break;
			}
			case ACTION:
			{
				a = (GrammarAST)_t;
				match(_t,ACTION);
				_t = _t.getNextSibling();
				if ( showActions ) {out("{"); out(a.getText()); out("}");}
				break;
			}
			case FORCED_ACTION:
			{
				a2 = (GrammarAST)_t;
				match(_t,FORCED_ACTION);
				_t = _t.getNextSibling();
				if ( showActions ) {out("{{"); out(a2.getText()); out("}}");}
				break;
			}
			case SEMPRED:
			{
				pred = (GrammarAST)_t;
				match(_t,SEMPRED);
				_t = _t.getNextSibling();
				
					if ( showActions ) {out("{"); out(pred.getText()); out("}?");}
					else {out("{...}?");}
					
				break;
			}
			case SYN_SEMPRED:
			{
				spred = (GrammarAST)_t;
				match(_t,SYN_SEMPRED);
				_t = _t.getNextSibling();
				
					  String name = spred.getText();
					  GrammarAST predAST=grammar.getSyntacticPredicate(name);
					  block(predAST, true);
					  out("=>");
					
				break;
			}
			case BACKTRACK_SEMPRED:
			{
				GrammarAST tmp20_AST_in = (GrammarAST)_t;
				match(_t,BACKTRACK_SEMPRED);
				_t = _t.getNextSibling();
				break;
			}
			case GATED_SEMPRED:
			{
				gpred = (GrammarAST)_t;
				match(_t,GATED_SEMPRED);
				_t = _t.getNextSibling();
				
					if ( showActions ) {out("{"); out(gpred.getText()); out("}? =>");}
					else {out("{...}? =>");}
					
				break;
			}
			case EPSILON:
			{
				GrammarAST tmp21_AST_in = (GrammarAST)_t;
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
	
	public final void single_rewrite(AST _t) throws RecognitionException {
		
		GrammarAST single_rewrite_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		
		try {      // for error handling
			AST __t92 = _t;
			GrammarAST tmp22_AST_in = (GrammarAST)_t;
			match(_t,REWRITE);
			_t = _t.getFirstChild();
			out(" ->");
			{
			if (_t==null) _t=ASTNULL;
			switch ( _t.getType()) {
			case SEMPRED:
			{
				GrammarAST tmp23_AST_in = (GrammarAST)_t;
				match(_t,SEMPRED);
				_t = _t.getNextSibling();
				out(" {"+tmp23_AST_in.getText()+"}?");
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
				alternative(_t);
				_t = _retTree;
				break;
			}
			case TEMPLATE:
			{
				rewrite_template(_t);
				_t = _retTree;
				break;
			}
			case ETC:
			{
				GrammarAST tmp24_AST_in = (GrammarAST)_t;
				match(_t,ETC);
				_t = _t.getNextSibling();
				out("...");
				break;
			}
			case ACTION:
			{
				GrammarAST tmp25_AST_in = (GrammarAST)_t;
				match(_t,ACTION);
				_t = _t.getNextSibling();
				out(" {"+tmp25_AST_in.getText()+"}");
				break;
			}
			default:
			{
				throw new NoViableAltException(_t);
			}
			}
			}
			_t = __t92;
			_t = _t.getNextSibling();
		}
		catch (RecognitionException ex) {
			reportError(ex);
			if (_t!=null) {_t = _t.getNextSibling();}
		}
		_retTree = _t;
	}
	
	public final void grammarSpec(AST _t,
		String gtype
	) throws RecognitionException {
		
		GrammarAST grammarSpec_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		GrammarAST id = null;
		GrammarAST cmt = null;
		
		try {      // for error handling
			id = (GrammarAST)_t;
			match(_t,ID);
			_t = _t.getNextSibling();
			out(gtype+"grammar "+id.getText());
			{
			if (_t==null) _t=ASTNULL;
			switch ( _t.getType()) {
			case DOC_COMMENT:
			{
				cmt = (GrammarAST)_t;
				match(_t,DOC_COMMENT);
				_t = _t.getNextSibling();
				out(cmt.getText()+"\n");
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
			out(";\n");
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
			_loop17:
			do {
				if (_t==null) _t=ASTNULL;
				if ((_t.getType()==SCOPE)) {
					attrScope(_t);
					_t = _retTree;
				}
				else {
					break _loop17;
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
			reportError(ex);
			if (_t!=null) {_t = _t.getNextSibling();}
		}
		_retTree = _t;
	}
	
	public final void attrScope(AST _t) throws RecognitionException {
		
		GrammarAST attrScope_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		
		try {      // for error handling
			AST __t10 = _t;
			GrammarAST tmp26_AST_in = (GrammarAST)_t;
			match(_t,SCOPE);
			_t = _t.getFirstChild();
			GrammarAST tmp27_AST_in = (GrammarAST)_t;
			match(_t,ID);
			_t = _t.getNextSibling();
			GrammarAST tmp28_AST_in = (GrammarAST)_t;
			match(_t,ACTION);
			_t = _t.getNextSibling();
			_t = __t10;
			_t = _t.getNextSibling();
		}
		catch (RecognitionException ex) {
			reportError(ex);
			if (_t!=null) {_t = _t.getNextSibling();}
		}
		_retTree = _t;
	}
	
	public final void optionsSpec(AST _t) throws RecognitionException {
		
		GrammarAST optionsSpec_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		
		try {      // for error handling
			AST __t26 = _t;
			GrammarAST tmp29_AST_in = (GrammarAST)_t;
			match(_t,OPTIONS);
			_t = _t.getFirstChild();
			out(" options {");
			{
			int _cnt28=0;
			_loop28:
			do {
				if (_t==null) _t=ASTNULL;
				if ((_t.getType()==ASSIGN)) {
					option(_t);
					_t = _retTree;
					out("; ");
				}
				else {
					if ( _cnt28>=1 ) { break _loop28; } else {throw new NoViableAltException(_t);}
				}
				
				_cnt28++;
			} while (true);
			}
			out("} ");
			_t = __t26;
			_t = _t.getNextSibling();
		}
		catch (RecognitionException ex) {
			reportError(ex);
			if (_t!=null) {_t = _t.getNextSibling();}
		}
		_retTree = _t;
	}
	
	public final void delegateGrammars(AST _t) throws RecognitionException {
		
		GrammarAST delegateGrammars_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		
		try {      // for error handling
			AST __t33 = _t;
			GrammarAST tmp30_AST_in = (GrammarAST)_t;
			match(_t,IMPORT);
			_t = _t.getFirstChild();
			{
			int _cnt36=0;
			_loop36:
			do {
				if (_t==null) _t=ASTNULL;
				switch ( _t.getType()) {
				case ASSIGN:
				{
					AST __t35 = _t;
					GrammarAST tmp31_AST_in = (GrammarAST)_t;
					match(_t,ASSIGN);
					_t = _t.getFirstChild();
					GrammarAST tmp32_AST_in = (GrammarAST)_t;
					match(_t,ID);
					_t = _t.getNextSibling();
					GrammarAST tmp33_AST_in = (GrammarAST)_t;
					match(_t,ID);
					_t = _t.getNextSibling();
					_t = __t35;
					_t = _t.getNextSibling();
					break;
				}
				case ID:
				{
					GrammarAST tmp34_AST_in = (GrammarAST)_t;
					match(_t,ID);
					_t = _t.getNextSibling();
					break;
				}
				default:
				{
					if ( _cnt36>=1 ) { break _loop36; } else {throw new NoViableAltException(_t);}
				}
				}
				_cnt36++;
			} while (true);
			}
			_t = __t33;
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
			AST __t38 = _t;
			GrammarAST tmp35_AST_in = (GrammarAST)_t;
			match(_t,TOKENS);
			_t = _t.getFirstChild();
			{
			int _cnt40=0;
			_loop40:
			do {
				if (_t==null) _t=ASTNULL;
				if ((_t.getType()==ASSIGN||_t.getType()==TOKEN_REF)) {
					tokenSpec(_t);
					_t = _retTree;
				}
				else {
					if ( _cnt40>=1 ) { break _loop40; } else {throw new NoViableAltException(_t);}
				}
				
				_cnt40++;
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
	
	public final void actions(AST _t) throws RecognitionException {
		
		GrammarAST actions_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		
		try {      // for error handling
			{
			int _cnt21=0;
			_loop21:
			do {
				if (_t==null) _t=ASTNULL;
				if ((_t.getType()==AMPERSAND)) {
					action(_t);
					_t = _retTree;
				}
				else {
					if ( _cnt21>=1 ) { break _loop21; } else {throw new NoViableAltException(_t);}
				}
				
				_cnt21++;
			} while (true);
			}
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
			int _cnt46=0;
			_loop46:
			do {
				if (_t==null) _t=ASTNULL;
				if ((_t.getType()==RULE)) {
					rule(_t);
					_t = _retTree;
				}
				else {
					if ( _cnt46>=1 ) { break _loop46; } else {throw new NoViableAltException(_t);}
				}
				
				_cnt46++;
			} while (true);
			}
		}
		catch (RecognitionException ex) {
			reportError(ex);
			if (_t!=null) {_t = _t.getNextSibling();}
		}
		_retTree = _t;
	}
	
	public final void action(AST _t) throws RecognitionException {
		
		GrammarAST action_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		GrammarAST id1 = null;
		GrammarAST id2 = null;
		GrammarAST a1 = null;
		GrammarAST a2 = null;
		
		String scope=null, name=null;
		String action=null;
		
		
		try {      // for error handling
			AST __t23 = _t;
			GrammarAST tmp36_AST_in = (GrammarAST)_t;
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
				scope=id1.getText(); name=a1.getText(); action=a1.getText();
				break;
			}
			case ACTION:
			{
				a2 = (GrammarAST)_t;
				match(_t,ACTION);
				_t = _t.getNextSibling();
				scope=null; name=id1.getText(); action=a2.getText();
				break;
			}
			default:
			{
				throw new NoViableAltException(_t);
			}
			}
			}
			_t = __t23;
			_t = _t.getNextSibling();
			
					 if ( showActions ) {
					 	out("@"+(scope!=null?scope+"::":"")+name+action);
					 }
					
		}
		catch (RecognitionException ex) {
			reportError(ex);
			if (_t!=null) {_t = _t.getNextSibling();}
		}
		_retTree = _t;
	}
	
	public final void option(AST _t) throws RecognitionException {
		
		GrammarAST option_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		GrammarAST id = null;
		
		try {      // for error handling
			AST __t30 = _t;
			GrammarAST tmp37_AST_in = (GrammarAST)_t;
			match(_t,ASSIGN);
			_t = _t.getFirstChild();
			id = (GrammarAST)_t;
			match(_t,ID);
			_t = _t.getNextSibling();
			out(id.getText()+"=");
			optionValue(_t);
			_t = _retTree;
			_t = __t30;
			_t = _t.getNextSibling();
		}
		catch (RecognitionException ex) {
			reportError(ex);
			if (_t!=null) {_t = _t.getNextSibling();}
		}
		_retTree = _t;
	}
	
	public final void optionValue(AST _t) throws RecognitionException {
		
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
				out(id.getText());
				break;
			}
			case STRING_LITERAL:
			{
				s = (GrammarAST)_t;
				match(_t,STRING_LITERAL);
				_t = _t.getNextSibling();
				out(s.getText());
				break;
			}
			case CHAR_LITERAL:
			{
				c = (GrammarAST)_t;
				match(_t,CHAR_LITERAL);
				_t = _t.getNextSibling();
				out(c.getText());
				break;
			}
			case INT:
			{
				i = (GrammarAST)_t;
				match(_t,INT);
				_t = _t.getNextSibling();
				out(i.getText());
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
		
		try {      // for error handling
			if (_t==null) _t=ASTNULL;
			switch ( _t.getType()) {
			case TOKEN_REF:
			{
				GrammarAST tmp38_AST_in = (GrammarAST)_t;
				match(_t,TOKEN_REF);
				_t = _t.getNextSibling();
				break;
			}
			case ASSIGN:
			{
				AST __t42 = _t;
				GrammarAST tmp39_AST_in = (GrammarAST)_t;
				match(_t,ASSIGN);
				_t = _t.getFirstChild();
				GrammarAST tmp40_AST_in = (GrammarAST)_t;
				match(_t,TOKEN_REF);
				_t = _t.getNextSibling();
				{
				if (_t==null) _t=ASTNULL;
				switch ( _t.getType()) {
				case STRING_LITERAL:
				{
					GrammarAST tmp41_AST_in = (GrammarAST)_t;
					match(_t,STRING_LITERAL);
					_t = _t.getNextSibling();
					break;
				}
				case CHAR_LITERAL:
				{
					GrammarAST tmp42_AST_in = (GrammarAST)_t;
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
				_t = __t42;
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
	
	public final void modifier(AST _t) throws RecognitionException {
		
		GrammarAST modifier_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		out(modifier_AST_in.getText()); out(" ");
		
		try {      // for error handling
			if (_t==null) _t=ASTNULL;
			switch ( _t.getType()) {
			case LITERAL_protected:
			{
				GrammarAST tmp43_AST_in = (GrammarAST)_t;
				match(_t,LITERAL_protected);
				_t = _t.getNextSibling();
				break;
			}
			case LITERAL_public:
			{
				GrammarAST tmp44_AST_in = (GrammarAST)_t;
				match(_t,LITERAL_public);
				_t = _t.getNextSibling();
				break;
			}
			case LITERAL_private:
			{
				GrammarAST tmp45_AST_in = (GrammarAST)_t;
				match(_t,LITERAL_private);
				_t = _t.getNextSibling();
				break;
			}
			case FRAGMENT:
			{
				GrammarAST tmp46_AST_in = (GrammarAST)_t;
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
			AST __t63 = _t;
			GrammarAST tmp47_AST_in = (GrammarAST)_t;
			match(_t,SCOPE);
			_t = _t.getFirstChild();
			{
			if (_t==null) _t=ASTNULL;
			switch ( _t.getType()) {
			case ACTION:
			{
				GrammarAST tmp48_AST_in = (GrammarAST)_t;
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
			_loop66:
			do {
				if (_t==null) _t=ASTNULL;
				if ((_t.getType()==ID)) {
					GrammarAST tmp49_AST_in = (GrammarAST)_t;
					match(_t,ID);
					_t = _t.getNextSibling();
				}
				else {
					break _loop66;
				}
				
			} while (true);
			}
			_t = __t63;
			_t = _t.getNextSibling();
		}
		catch (RecognitionException ex) {
			reportError(ex);
			if (_t!=null) {_t = _t.getNextSibling();}
		}
		_retTree = _t;
	}
	
	public final void ruleAction(AST _t) throws RecognitionException {
		
		GrammarAST ruleAction_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		GrammarAST id = null;
		GrammarAST a = null;
		
		try {      // for error handling
			AST __t60 = _t;
			GrammarAST tmp50_AST_in = (GrammarAST)_t;
			match(_t,AMPERSAND);
			_t = _t.getFirstChild();
			id = (GrammarAST)_t;
			match(_t,ID);
			_t = _t.getNextSibling();
			a = (GrammarAST)_t;
			match(_t,ACTION);
			_t = _t.getNextSibling();
			_t = __t60;
			_t = _t.getNextSibling();
			if ( showActions ) out("@"+id.getText()+"{"+a.getText()+"}");
		}
		catch (RecognitionException ex) {
			reportError(ex);
			if (_t!=null) {_t = _t.getNextSibling();}
		}
		_retTree = _t;
	}
	
	public final void block(AST _t,
		boolean forceParens
	) throws RecognitionException {
		
		GrammarAST block_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		
		int numAlts = countAltsForBlock(block_AST_in);
		
		
		try {      // for error handling
			AST __t68 = _t;
			GrammarAST tmp51_AST_in = (GrammarAST)_t;
			match(_t,BLOCK);
			_t = _t.getFirstChild();
			if ( forceParens||numAlts>1 ) out(" (");
			{
			if (_t==null) _t=ASTNULL;
			switch ( _t.getType()) {
			case OPTIONS:
			{
				optionsSpec(_t);
				_t = _retTree;
				out(" : ");
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
			alternative(_t);
			_t = _retTree;
			rewrite(_t);
			_t = _retTree;
			{
			_loop71:
			do {
				if (_t==null) _t=ASTNULL;
				if ((_t.getType()==ALT)) {
					out(" | ");
					alternative(_t);
					_t = _retTree;
					rewrite(_t);
					_t = _retTree;
				}
				else {
					break _loop71;
				}
				
			} while (true);
			}
			GrammarAST tmp52_AST_in = (GrammarAST)_t;
			match(_t,EOB);
			_t = _t.getNextSibling();
			if ( forceParens||numAlts>1 ) out(")");
			_t = __t68;
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
				int _cnt85=0;
				_loop85:
				do {
					if (_t==null) _t=ASTNULL;
					if ((_t.getType()==LITERAL_catch)) {
						exceptionHandler(_t);
						_t = _retTree;
					}
					else {
						if ( _cnt85>=1 ) { break _loop85; } else {throw new NoViableAltException(_t);}
					}
					
					_cnt85++;
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
	
	public final void rewrite(AST _t) throws RecognitionException {
		
		GrammarAST rewrite_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		
		try {      // for error handling
			{
			_loop105:
			do {
				if (_t==null) _t=ASTNULL;
				if ((_t.getType()==REWRITE)) {
					single_rewrite(_t);
					_t = _retTree;
				}
				else {
					break _loop105;
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
	
	public final int  countAltsForBlock(AST _t) throws RecognitionException {
		int n=0;
		
		GrammarAST countAltsForBlock_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		
		try {      // for error handling
			AST __t73 = _t;
			GrammarAST tmp53_AST_in = (GrammarAST)_t;
			match(_t,BLOCK);
			_t = _t.getFirstChild();
			{
			if (_t==null) _t=ASTNULL;
			switch ( _t.getType()) {
			case OPTIONS:
			{
				GrammarAST tmp54_AST_in = (GrammarAST)_t;
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
			int _cnt78=0;
			_loop78:
			do {
				if (_t==null) _t=ASTNULL;
				if ((_t.getType()==ALT)) {
					GrammarAST tmp55_AST_in = (GrammarAST)_t;
					match(_t,ALT);
					_t = _t.getNextSibling();
					{
					_loop77:
					do {
						if (_t==null) _t=ASTNULL;
						if ((_t.getType()==REWRITE)) {
							GrammarAST tmp56_AST_in = (GrammarAST)_t;
							match(_t,REWRITE);
							_t = _t.getNextSibling();
						}
						else {
							break _loop77;
						}
						
					} while (true);
					}
					n++;
				}
				else {
					if ( _cnt78>=1 ) { break _loop78; } else {throw new NoViableAltException(_t);}
				}
				
				_cnt78++;
			} while (true);
			}
			GrammarAST tmp57_AST_in = (GrammarAST)_t;
			match(_t,EOB);
			_t = _t.getNextSibling();
			_t = __t73;
			_t = _t.getNextSibling();
		}
		catch (RecognitionException ex) {
			reportError(ex);
			if (_t!=null) {_t = _t.getNextSibling();}
		}
		_retTree = _t;
		return n;
	}
	
	public final void exceptionHandler(AST _t) throws RecognitionException {
		
		GrammarAST exceptionHandler_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		
		try {      // for error handling
			AST __t88 = _t;
			GrammarAST tmp58_AST_in = (GrammarAST)_t;
			match(_t,LITERAL_catch);
			_t = _t.getFirstChild();
			GrammarAST tmp59_AST_in = (GrammarAST)_t;
			match(_t,ARG_ACTION);
			_t = _t.getNextSibling();
			GrammarAST tmp60_AST_in = (GrammarAST)_t;
			match(_t,ACTION);
			_t = _t.getNextSibling();
			_t = __t88;
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
			AST __t90 = _t;
			GrammarAST tmp61_AST_in = (GrammarAST)_t;
			match(_t,LITERAL_finally);
			_t = _t.getFirstChild();
			GrammarAST tmp62_AST_in = (GrammarAST)_t;
			match(_t,ACTION);
			_t = _t.getNextSibling();
			_t = __t90;
			_t = _t.getNextSibling();
		}
		catch (RecognitionException ex) {
			reportError(ex);
			if (_t!=null) {_t = _t.getNextSibling();}
		}
		_retTree = _t;
	}
	
	public final void rewrite_template(AST _t) throws RecognitionException {
		
		GrammarAST rewrite_template_AST_in = (_t == ASTNULL) ? null : (GrammarAST)_t;
		GrammarAST id = null;
		GrammarAST ind = null;
		GrammarAST arg = null;
		GrammarAST a = null;
		
		try {      // for error handling
			AST __t96 = _t;
			GrammarAST tmp63_AST_in = (GrammarAST)_t;
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
				out(" "+id.getText());
				break;
			}
			case ACTION:
			{
				ind = (GrammarAST)_t;
				match(_t,ACTION);
				_t = _t.getNextSibling();
				out(" ({"+ind.getText()+"})");
				break;
			}
			default:
			{
				throw new NoViableAltException(_t);
			}
			}
			}
			AST __t98 = _t;
			GrammarAST tmp64_AST_in = (GrammarAST)_t;
			match(_t,ARGLIST);
			_t = _t.getFirstChild();
			out("(");
			{
			_loop101:
			do {
				if (_t==null) _t=ASTNULL;
				if ((_t.getType()==ARG)) {
					AST __t100 = _t;
					GrammarAST tmp65_AST_in = (GrammarAST)_t;
					match(_t,ARG);
					_t = _t.getFirstChild();
					arg = (GrammarAST)_t;
					match(_t,ID);
					_t = _t.getNextSibling();
					out(arg.getText()+"=");
					a = (GrammarAST)_t;
					match(_t,ACTION);
					_t = _t.getNextSibling();
					out(a.getText());
					_t = __t100;
					_t = _t.getNextSibling();
				}
				else {
					break _loop101;
				}
				
			} while (true);
			}
			out(")");
			_t = __t98;
			_t = _t.getNextSibling();
			{
			if (_t==null) _t=ASTNULL;
			switch ( _t.getType()) {
			case DOUBLE_QUOTE_STRING_LITERAL:
			{
				GrammarAST tmp66_AST_in = (GrammarAST)_t;
				match(_t,DOUBLE_QUOTE_STRING_LITERAL);
				_t = _t.getNextSibling();
				out(" "+tmp66_AST_in.getText());
				break;
			}
			case DOUBLE_ANGLE_STRING_LITERAL:
			{
				GrammarAST tmp67_AST_in = (GrammarAST)_t;
				match(_t,DOUBLE_ANGLE_STRING_LITERAL);
				_t = _t.getNextSibling();
				out(" "+tmp67_AST_in.getText());
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
			_t = __t96;
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
		GrammarAST rarg = null;
		GrammarAST targ = null;
		out(" ");
		
		try {      // for error handling
			if (_t==null) _t=ASTNULL;
			switch ( _t.getType()) {
			case STRING_LITERAL:
			case CHAR_LITERAL:
			case TOKEN_REF:
			case WILDCARD:
			case RULE_REF:
			{
				{
				if (_t==null) _t=ASTNULL;
				switch ( _t.getType()) {
				case RULE_REF:
				{
					AST __t125 = _t;
					GrammarAST tmp68_AST_in = (GrammarAST)_t;
					match(_t,RULE_REF);
					_t = _t.getFirstChild();
					out(atom_AST_in.toString());
					{
					if (_t==null) _t=ASTNULL;
					switch ( _t.getType()) {
					case ARG_ACTION:
					{
						rarg = (GrammarAST)_t;
						match(_t,ARG_ACTION);
						_t = _t.getNextSibling();
						out("["+rarg.toString()+"]");
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
					_t = __t125;
					_t = _t.getNextSibling();
					break;
				}
				case TOKEN_REF:
				{
					AST __t128 = _t;
					GrammarAST tmp69_AST_in = (GrammarAST)_t;
					match(_t,TOKEN_REF);
					_t = _t.getFirstChild();
					out(atom_AST_in.toString());
					{
					if (_t==null) _t=ASTNULL;
					switch ( _t.getType()) {
					case ARG_ACTION:
					{
						targ = (GrammarAST)_t;
						match(_t,ARG_ACTION);
						_t = _t.getNextSibling();
						out("["+targ.toString()+"]");
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
					_t = __t128;
					_t = _t.getNextSibling();
					break;
				}
				case CHAR_LITERAL:
				{
					AST __t131 = _t;
					GrammarAST tmp70_AST_in = (GrammarAST)_t;
					match(_t,CHAR_LITERAL);
					_t = _t.getFirstChild();
					out(atom_AST_in.toString());
					{
					if (_t==null) _t=ASTNULL;
					switch ( _t.getType()) {
					case BANG:
					case ROOT:
					{
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
					_t = __t131;
					_t = _t.getNextSibling();
					break;
				}
				case STRING_LITERAL:
				{
					AST __t133 = _t;
					GrammarAST tmp71_AST_in = (GrammarAST)_t;
					match(_t,STRING_LITERAL);
					_t = _t.getFirstChild();
					out(atom_AST_in.toString());
					{
					if (_t==null) _t=ASTNULL;
					switch ( _t.getType()) {
					case BANG:
					case ROOT:
					{
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
					_t = __t133;
					_t = _t.getNextSibling();
					break;
				}
				case WILDCARD:
				{
					AST __t135 = _t;
					GrammarAST tmp72_AST_in = (GrammarAST)_t;
					match(_t,WILDCARD);
					_t = _t.getFirstChild();
					out(atom_AST_in.toString());
					{
					if (_t==null) _t=ASTNULL;
					switch ( _t.getType()) {
					case BANG:
					case ROOT:
					{
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
					_t = __t135;
					_t = _t.getNextSibling();
					break;
				}
				default:
				{
					throw new NoViableAltException(_t);
				}
				}
				}
				out(" ");
				break;
			}
			case LABEL:
			{
				GrammarAST tmp73_AST_in = (GrammarAST)_t;
				match(_t,LABEL);
				_t = _t.getNextSibling();
				out(" $"+tmp73_AST_in.getText());
				break;
			}
			case DOT:
			{
				AST __t137 = _t;
				GrammarAST tmp74_AST_in = (GrammarAST)_t;
				match(_t,DOT);
				_t = _t.getFirstChild();
				GrammarAST tmp75_AST_in = (GrammarAST)_t;
				match(_t,ID);
				_t = _t.getNextSibling();
				out(tmp75_AST_in.getText()+".");
				atom(_t);
				_t = _retTree;
				_t = __t137;
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
				block(_t,true);
				_t = _retTree;
				out(" ");
				break;
			}
			case OPTIONAL:
			{
				AST __t116 = _t;
				GrammarAST tmp76_AST_in = (GrammarAST)_t;
				match(_t,OPTIONAL);
				_t = _t.getFirstChild();
				block(_t,true);
				_t = _retTree;
				_t = __t116;
				_t = _t.getNextSibling();
				out("? ");
				break;
			}
			case CLOSURE:
			{
				AST __t117 = _t;
				GrammarAST tmp77_AST_in = (GrammarAST)_t;
				match(_t,CLOSURE);
				_t = _t.getFirstChild();
				block(_t,true);
				_t = _retTree;
				_t = __t117;
				_t = _t.getNextSibling();
				out("* ");
				break;
			}
			case POSITIVE_CLOSURE:
			{
				AST __t118 = _t;
				GrammarAST tmp78_AST_in = (GrammarAST)_t;
				match(_t,POSITIVE_CLOSURE);
				_t = _t.getFirstChild();
				block(_t,true);
				_t = _retTree;
				_t = __t118;
				_t = _t.getNextSibling();
				out("+ ");
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
			AST __t120 = _t;
			GrammarAST tmp79_AST_in = (GrammarAST)_t;
			match(_t,TREE_BEGIN);
			_t = _t.getFirstChild();
			out(" ^(");
			element(_t);
			_t = _retTree;
			{
			_loop122:
			do {
				if (_t==null) _t=ASTNULL;
				if ((_t.getType()==BLOCK||_t.getType()==OPTIONAL||_t.getType()==CLOSURE||_t.getType()==POSITIVE_CLOSURE||_t.getType()==SYNPRED||_t.getType()==RANGE||_t.getType()==CHAR_RANGE||_t.getType()==EPSILON||_t.getType()==FORCED_ACTION||_t.getType()==LABEL||_t.getType()==GATED_SEMPRED||_t.getType()==SYN_SEMPRED||_t.getType()==BACKTRACK_SEMPRED||_t.getType()==DOT||_t.getType()==ACTION||_t.getType()==ASSIGN||_t.getType()==STRING_LITERAL||_t.getType()==CHAR_LITERAL||_t.getType()==TOKEN_REF||_t.getType()==BANG||_t.getType()==PLUS_ASSIGN||_t.getType()==SEMPRED||_t.getType()==ROOT||_t.getType()==WILDCARD||_t.getType()==RULE_REF||_t.getType()==NOT||_t.getType()==TREE_BEGIN)) {
					element(_t);
					_t = _retTree;
				}
				else {
					break _loop122;
				}
				
			} while (true);
			}
			out(") ");
			_t = __t120;
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
				GrammarAST tmp80_AST_in = (GrammarAST)_t;
				match(_t,ROOT);
				_t = _t.getNextSibling();
				out("^");
				break;
			}
			case BANG:
			{
				GrammarAST tmp81_AST_in = (GrammarAST)_t;
				match(_t,BANG);
				_t = _t.getNextSibling();
				out("!");
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
		"SRC"
	};
	
	}
	
