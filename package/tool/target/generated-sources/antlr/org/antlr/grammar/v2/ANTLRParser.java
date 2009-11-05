// $ANTLR 2.7.7 (20060906): "antlr.g" -> "ANTLRParser.java"$

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
import java.io.*;
import org.antlr.analysis.*;
import org.antlr.misc.*;
import org.antlr.tool.*;

import antlr.TokenBuffer;
import antlr.TokenStreamException;
import antlr.Token;
import antlr.TokenStream;
import antlr.RecognitionException;
import antlr.NoViableAltException;
import antlr.ParserSharedInputState;
import antlr.collections.impl.BitSet;
import antlr.collections.AST;
import antlr.ASTFactory;
import antlr.ASTPair;
import antlr.TokenWithIndex;
import antlr.collections.impl.ASTArray;

import antlr.TokenBuffer;
import antlr.TokenStreamException;
import antlr.TokenStreamIOException;
import antlr.ANTLRException;
import antlr.LLkParser;
import antlr.Token;
import antlr.TokenStream;
import antlr.RecognitionException;
import antlr.NoViableAltException;
import antlr.MismatchedTokenException;
import antlr.SemanticException;
import antlr.ParserSharedInputState;
import antlr.collections.impl.BitSet;
import antlr.collections.AST;
import java.util.Hashtable;
import antlr.ASTFactory;
import antlr.ASTPair;
import antlr.collections.impl.ASTArray;

/** Read in an ANTLR grammar and build an AST.  Try not to do
 *  any actions, just build the tree.
 *
 *  The phases are:
 *
 *		antlr.g (this file)
 *		assign.types.g
 *		define.g
 *		buildnfa.g
 *		antlr.print.g (optional)
 *		codegen.g
 *
 *  Terence Parr
 *  University of San Francisco
 *  2005
 */
public class ANTLRParser extends antlr.LLkParser       implements ANTLRTokenTypes
 {

	protected Grammar grammar = null;
	protected int gtype = 0;

    public Grammar getGrammar() {
        return grammar;
    }

    public void setGrammar(Grammar grammar) {
        this.grammar = grammar;
    }

    public int getGtype() {
        return gtype;
    }

    public void setGtype(int gtype) {
        this.gtype = gtype;
        }
	
    protected String currentRuleName = null;
	protected GrammarAST currentBlockAST = null;
	protected boolean atTreeRoot; // are we matching a tree root in tree grammar?

	protected GrammarAST setToBlockWithSet(GrammarAST b) {
		GrammarAST alt = (GrammarAST)astFactory.make( (new ASTArray(3)).add((GrammarAST)astFactory.create(ALT,"ALT")).add(b).add((GrammarAST)astFactory.create(EOA,"<end-of-alt>")));
		prefixWithSynPred(alt);
		return (GrammarAST)astFactory.make( (new ASTArray(3)).add((GrammarAST)astFactory.create(BLOCK,"BLOCK")).add(alt).add((GrammarAST)astFactory.create(EOB,"<end-of-block>")));
	}

	/** Create a copy of the alt and make it into a BLOCK; all actions,
	 *  labels, tree operators, rewrites are removed.
	 */
	protected GrammarAST createBlockFromDupAlt(GrammarAST alt) {
		GrammarAST nalt = GrammarAST.dupTreeNoActions(alt, null);
		GrammarAST blk = (GrammarAST)astFactory.make( (new ASTArray(3)).add((GrammarAST)astFactory.create(BLOCK,"BLOCK")).add(nalt).add((GrammarAST)astFactory.create(EOB,"<end-of-block>")));
		return blk;
	}

	/** Rewrite alt to have a synpred as first element;
	 *  (xxx)=>xxx
	 *  but only if they didn't specify one manually.
	 */
	protected void prefixWithSynPred(GrammarAST alt) {
		// if they want backtracking and it's not a lexer rule in combined grammar
		String autoBacktrack = (String)grammar.getBlockOption(currentBlockAST, "backtrack");
		if ( autoBacktrack==null ) {
			autoBacktrack = (String)grammar.getOption("backtrack");
		}
		if ( autoBacktrack!=null&&autoBacktrack.equals("true") &&
			 !(gtype==COMBINED_GRAMMAR &&
			 Character.isUpperCase(currentRuleName.charAt(0))) &&
			 alt.getFirstChild().getType()!=SYN_SEMPRED )
		{
			// duplicate alt and make a synpred block around that dup'd alt
			GrammarAST synpredBlockAST = createBlockFromDupAlt(alt);

			// Create a BACKTRACK_SEMPRED node as if user had typed this in
			// Effectively we replace (xxx)=>xxx with {synpredxxx}? xxx
			GrammarAST synpredAST = createSynSemPredFromBlock(synpredBlockAST,
															  BACKTRACK_SEMPRED);

			// insert BACKTRACK_SEMPRED as first element of alt
			synpredAST.getLastSibling().setNextSibling(alt.getFirstChild());
			alt.setFirstChild(synpredAST);
		}
	}

	protected GrammarAST createSynSemPredFromBlock(GrammarAST synpredBlockAST,
												   int synpredTokenType)
	{
		// add grammar fragment to a list so we can make fake rules for them
		// later.
		String predName = grammar.defineSyntacticPredicate(synpredBlockAST,currentRuleName);
		// convert (alpha)=> into {synpredN}? where N is some pred count
		// during code gen we convert to function call with templates
		String synpredinvoke = predName;
		GrammarAST p = (GrammarAST)astFactory.create(synpredTokenType,synpredinvoke);
		// track how many decisions have synpreds
		grammar.blocksWithSynPreds.add(currentBlockAST);
		return p;
	}

	public GrammarAST createSimpleRuleAST(String name,
										  GrammarAST block,
										  boolean fragment)
   {
   		GrammarAST modifier = null;
   		if ( fragment ) {
   			modifier = (GrammarAST)astFactory.create(FRAGMENT,"fragment");
   		}
   		GrammarAST EORAST = (GrammarAST)astFactory.create(EOR,"<end-of-rule>");
   		GrammarAST EOBAST = block.getLastChild();
		EORAST.setLine(EOBAST.getLine());
		EORAST.setColumn(EOBAST.getColumn());
		GrammarAST ruleAST =
		   (GrammarAST)astFactory.make( (new ASTArray(8)).add((GrammarAST)astFactory.create(RULE,"rule")).add((GrammarAST)astFactory.create(ID,name)).add(modifier).add((GrammarAST)astFactory.create(ARG,"ARG")).add((GrammarAST)astFactory.create(RET,"RET")).add((GrammarAST)astFactory.create(SCOPE,"scope")).add(block).add(EORAST));
		ruleAST.setLine(block.getLine());
		ruleAST.setColumn(block.getColumn());
		return ruleAST;
	}

    public void reportError(RecognitionException ex) {
		Token token = null;
		try {
			token = LT(1);
		}
		catch (TokenStreamException tse) {
			ErrorManager.internalError("can't get token???", tse);
		}
		ErrorManager.syntaxError(
			ErrorManager.MSG_SYNTAX_ERROR,
			grammar,
			token,
			"antlr: "+ex.toString(),
			ex);
    }

    public void cleanup(GrammarAST root) {
		if ( gtype==LEXER_GRAMMAR ) {
			String filter = (String)grammar.getOption("filter");
			GrammarAST tokensRuleAST =
			    grammar.addArtificialMatchTokensRule(
			    	root,
			    	grammar.lexerRuleNamesInCombined,
                    grammar.getDelegateNames(),
			    	filter!=null&&filter.equals("true"));
		}
    }

protected ANTLRParser(TokenBuffer tokenBuf, int k) {
  super(tokenBuf,k);
  tokenNames = _tokenNames;
  buildTokenTypeASTClassMap();
  astFactory = new ASTFactory(getTokenTypeToASTClassMap());
}

public ANTLRParser(TokenBuffer tokenBuf) {
  this(tokenBuf,3);
}

protected ANTLRParser(TokenStream lexer, int k) {
  super(lexer,k);
  tokenNames = _tokenNames;
  buildTokenTypeASTClassMap();
  astFactory = new ASTFactory(getTokenTypeToASTClassMap());
}

public ANTLRParser(TokenStream lexer) {
  this(lexer,3);
}

public ANTLRParser(ParserSharedInputState state) {
  super(state,3);
  tokenNames = _tokenNames;
  buildTokenTypeASTClassMap();
  astFactory = new ASTFactory(getTokenTypeToASTClassMap());
}

	public final void grammar(
		Grammar g
	) throws RecognitionException, TokenStreamException {
		
		returnAST = null;
		ASTPair currentAST = new ASTPair();
		GrammarAST grammar_AST = null;
		Token  cmt = null;
		GrammarAST cmt_AST = null;
		GrammarAST gr_AST = null;
		GrammarAST gid_AST = null;
		GrammarAST ig_AST = null;
		GrammarAST ts_AST = null;
		GrammarAST scopes_AST = null;
		GrammarAST a_AST = null;
		GrammarAST r_AST = null;
		
			this.grammar = g;
			GrammarAST opt=null;
			Token optionsStartToken = null;
			Map opts;
			// set to factory that sets enclosing rule
			astFactory = new ASTFactory() {
				{
					setASTNodeClass(GrammarAST.class);
					setASTNodeClass("org.antlr.tool.GrammarAST");
				}
				public AST create(Token token) {
					AST t = super.create(token);
					((GrammarAST)t).enclosingRuleName = currentRuleName;
					return t;
				}
				public AST create(int i) {
					AST t = super.create(i);
					((GrammarAST)t).enclosingRuleName = currentRuleName;
					return t;
				}
			};
		
		
		try {      // for error handling
			{
			switch ( LA(1)) {
			case ACTION:
			{
				GrammarAST tmp1_AST = null;
				tmp1_AST = (GrammarAST)astFactory.create(LT(1));
				match(ACTION);
				break;
			}
			case PARSER:
			case DOC_COMMENT:
			case LITERAL_lexer:
			case LITERAL_tree:
			case LITERAL_grammar:
			{
				break;
			}
			default:
			{
				throw new NoViableAltException(LT(1), getFilename());
			}
			}
			}
			{
			switch ( LA(1)) {
			case DOC_COMMENT:
			{
				cmt = LT(1);
				cmt_AST = (GrammarAST)astFactory.create(cmt);
				match(DOC_COMMENT);
				break;
			}
			case PARSER:
			case LITERAL_lexer:
			case LITERAL_tree:
			case LITERAL_grammar:
			{
				break;
			}
			default:
			{
				throw new NoViableAltException(LT(1), getFilename());
			}
			}
			}
			grammarType();
			gr_AST = (GrammarAST)returnAST;
			id();
			gid_AST = (GrammarAST)returnAST;
			grammar.setName(gid_AST.getText());
			GrammarAST tmp2_AST = null;
			tmp2_AST = (GrammarAST)astFactory.create(LT(1));
			match(SEMI);
			{
			switch ( LA(1)) {
			case OPTIONS:
			{
				optionsStartToken=LT(1);
				opts=optionsSpec();
				grammar.setOptions(opts, optionsStartToken);
				opt=(GrammarAST)returnAST;
				break;
			}
			case TOKENS:
			case SCOPE:
			case IMPORT:
			case FRAGMENT:
			case DOC_COMMENT:
			case AMPERSAND:
			case TOKEN_REF:
			case LITERAL_protected:
			case LITERAL_public:
			case LITERAL_private:
			case RULE_REF:
			{
				break;
			}
			default:
			{
				throw new NoViableAltException(LT(1), getFilename());
			}
			}
			}
			{
			switch ( LA(1)) {
			case IMPORT:
			{
				delegateGrammars();
				ig_AST = (GrammarAST)returnAST;
				break;
			}
			case TOKENS:
			case SCOPE:
			case FRAGMENT:
			case DOC_COMMENT:
			case AMPERSAND:
			case TOKEN_REF:
			case LITERAL_protected:
			case LITERAL_public:
			case LITERAL_private:
			case RULE_REF:
			{
				break;
			}
			default:
			{
				throw new NoViableAltException(LT(1), getFilename());
			}
			}
			}
			{
			switch ( LA(1)) {
			case TOKENS:
			{
				tokensSpec();
				ts_AST = (GrammarAST)returnAST;
				break;
			}
			case SCOPE:
			case FRAGMENT:
			case DOC_COMMENT:
			case AMPERSAND:
			case TOKEN_REF:
			case LITERAL_protected:
			case LITERAL_public:
			case LITERAL_private:
			case RULE_REF:
			{
				break;
			}
			default:
			{
				throw new NoViableAltException(LT(1), getFilename());
			}
			}
			}
			attrScopes();
			scopes_AST = (GrammarAST)returnAST;
			{
			switch ( LA(1)) {
			case AMPERSAND:
			{
				actions();
				a_AST = (GrammarAST)returnAST;
				break;
			}
			case FRAGMENT:
			case DOC_COMMENT:
			case TOKEN_REF:
			case LITERAL_protected:
			case LITERAL_public:
			case LITERAL_private:
			case RULE_REF:
			{
				break;
			}
			default:
			{
				throw new NoViableAltException(LT(1), getFilename());
			}
			}
			}
			rules();
			r_AST = (GrammarAST)returnAST;
			GrammarAST tmp3_AST = null;
			tmp3_AST = (GrammarAST)astFactory.create(LT(1));
			match(Token.EOF_TYPE);
			grammar_AST = (GrammarAST)currentAST.root;
			
			grammar_AST = (GrammarAST)astFactory.make( (new ASTArray(2)).add(null).add((GrammarAST)astFactory.make( (new ASTArray(9)).add(gr_AST).add(gid_AST).add(cmt_AST).add(opt).add(ig_AST).add(ts_AST).add(scopes_AST).add(a_AST).add(r_AST))));
			cleanup(grammar_AST);
			
			currentAST.root = grammar_AST;
			currentAST.child = grammar_AST!=null &&grammar_AST.getFirstChild()!=null ?
				grammar_AST.getFirstChild() : grammar_AST;
			currentAST.advanceChildToEnd();
		}
		catch (RecognitionException ex) {
			reportError(ex);
			recover(ex,_tokenSet_0);
		}
		returnAST = grammar_AST;
	}
	
	public final void grammarType() throws RecognitionException, TokenStreamException {
		
		returnAST = null;
		ASTPair currentAST = new ASTPair();
		GrammarAST grammarType_AST = null;
		Token  gr = null;
		GrammarAST gr_AST = null;
		
		try {      // for error handling
			{
			switch ( LA(1)) {
			case LITERAL_lexer:
			{
				match(LITERAL_lexer);
				gtype=LEXER_GRAMMAR; grammar.type = Grammar.LEXER;
				break;
			}
			case PARSER:
			{
				match(PARSER);
				gtype=PARSER_GRAMMAR; grammar.type = Grammar.PARSER;
				break;
			}
			case LITERAL_tree:
			{
				match(LITERAL_tree);
				gtype=TREE_GRAMMAR; grammar.type = Grammar.TREE_PARSER;
				break;
			}
			case LITERAL_grammar:
			{
				gtype=COMBINED_GRAMMAR; grammar.type = Grammar.COMBINED;
				break;
			}
			default:
			{
				throw new NoViableAltException(LT(1), getFilename());
			}
			}
			}
			gr = LT(1);
			gr_AST = (GrammarAST)astFactory.create(gr);
			astFactory.addASTChild(currentAST, gr_AST);
			match(LITERAL_grammar);
			gr_AST.setType(gtype);
			grammarType_AST = (GrammarAST)currentAST.root;
		}
		catch (RecognitionException ex) {
			reportError(ex);
			recover(ex,_tokenSet_1);
		}
		returnAST = grammarType_AST;
	}
	
	public final void id() throws RecognitionException, TokenStreamException {
		
		returnAST = null;
		ASTPair currentAST = new ASTPair();
		GrammarAST id_AST = null;
		
		try {      // for error handling
			switch ( LA(1)) {
			case TOKEN_REF:
			{
				GrammarAST tmp7_AST = null;
				tmp7_AST = (GrammarAST)astFactory.create(LT(1));
				astFactory.addASTChild(currentAST, tmp7_AST);
				match(TOKEN_REF);
				id_AST = (GrammarAST)currentAST.root;
				id_AST.setType(ID);
				id_AST = (GrammarAST)currentAST.root;
				break;
			}
			case RULE_REF:
			{
				GrammarAST tmp8_AST = null;
				tmp8_AST = (GrammarAST)astFactory.create(LT(1));
				astFactory.addASTChild(currentAST, tmp8_AST);
				match(RULE_REF);
				id_AST = (GrammarAST)currentAST.root;
				id_AST.setType(ID);
				id_AST = (GrammarAST)currentAST.root;
				break;
			}
			default:
			{
				throw new NoViableAltException(LT(1), getFilename());
			}
			}
		}
		catch (RecognitionException ex) {
			reportError(ex);
			recover(ex,_tokenSet_2);
		}
		returnAST = id_AST;
	}
	
	public final Map  optionsSpec() throws RecognitionException, TokenStreamException {
		Map opts=new HashMap();
		
		returnAST = null;
		ASTPair currentAST = new ASTPair();
		GrammarAST optionsSpec_AST = null;
		
		try {      // for error handling
			GrammarAST tmp9_AST = null;
			tmp9_AST = (GrammarAST)astFactory.create(LT(1));
			astFactory.makeASTRoot(currentAST, tmp9_AST);
			match(OPTIONS);
			{
			int _cnt18=0;
			_loop18:
			do {
				if ((LA(1)==TOKEN_REF||LA(1)==RULE_REF)) {
					option(opts);
					astFactory.addASTChild(currentAST, returnAST);
					match(SEMI);
				}
				else {
					if ( _cnt18>=1 ) { break _loop18; } else {throw new NoViableAltException(LT(1), getFilename());}
				}
				
				_cnt18++;
			} while (true);
			}
			match(RCURLY);
			optionsSpec_AST = (GrammarAST)currentAST.root;
		}
		catch (RecognitionException ex) {
			reportError(ex);
			recover(ex,_tokenSet_3);
		}
		returnAST = optionsSpec_AST;
		return opts;
	}
	
	public final void delegateGrammars() throws RecognitionException, TokenStreamException {
		
		returnAST = null;
		ASTPair currentAST = new ASTPair();
		GrammarAST delegateGrammars_AST = null;
		
		try {      // for error handling
			GrammarAST tmp12_AST = null;
			tmp12_AST = (GrammarAST)astFactory.create(LT(1));
			astFactory.makeASTRoot(currentAST, tmp12_AST);
			match(IMPORT);
			delegateGrammar();
			astFactory.addASTChild(currentAST, returnAST);
			{
			_loop23:
			do {
				if ((LA(1)==COMMA)) {
					match(COMMA);
					delegateGrammar();
					astFactory.addASTChild(currentAST, returnAST);
				}
				else {
					break _loop23;
				}
				
			} while (true);
			}
			match(SEMI);
			delegateGrammars_AST = (GrammarAST)currentAST.root;
		}
		catch (RecognitionException ex) {
			reportError(ex);
			recover(ex,_tokenSet_4);
		}
		returnAST = delegateGrammars_AST;
	}
	
	public final void tokensSpec() throws RecognitionException, TokenStreamException {
		
		returnAST = null;
		ASTPair currentAST = new ASTPair();
		GrammarAST tokensSpec_AST = null;
		
		try {      // for error handling
			GrammarAST tmp15_AST = null;
			tmp15_AST = (GrammarAST)astFactory.create(LT(1));
			astFactory.makeASTRoot(currentAST, tmp15_AST);
			match(TOKENS);
			{
			int _cnt27=0;
			_loop27:
			do {
				if ((LA(1)==TOKEN_REF)) {
					tokenSpec();
					astFactory.addASTChild(currentAST, returnAST);
				}
				else {
					if ( _cnt27>=1 ) { break _loop27; } else {throw new NoViableAltException(LT(1), getFilename());}
				}
				
				_cnt27++;
			} while (true);
			}
			match(RCURLY);
			tokensSpec_AST = (GrammarAST)currentAST.root;
		}
		catch (RecognitionException ex) {
			reportError(ex);
			recover(ex,_tokenSet_5);
		}
		returnAST = tokensSpec_AST;
	}
	
	public final void attrScopes() throws RecognitionException, TokenStreamException {
		
		returnAST = null;
		ASTPair currentAST = new ASTPair();
		GrammarAST attrScopes_AST = null;
		
		try {      // for error handling
			{
			_loop33:
			do {
				if ((LA(1)==SCOPE)) {
					attrScope();
					astFactory.addASTChild(currentAST, returnAST);
				}
				else {
					break _loop33;
				}
				
			} while (true);
			}
			attrScopes_AST = (GrammarAST)currentAST.root;
		}
		catch (RecognitionException ex) {
			reportError(ex);
			recover(ex,_tokenSet_6);
		}
		returnAST = attrScopes_AST;
	}
	
	public final void actions() throws RecognitionException, TokenStreamException {
		
		returnAST = null;
		ASTPair currentAST = new ASTPair();
		GrammarAST actions_AST = null;
		
		try {      // for error handling
			{
			int _cnt12=0;
			_loop12:
			do {
				if ((LA(1)==AMPERSAND)) {
					action();
					astFactory.addASTChild(currentAST, returnAST);
				}
				else {
					if ( _cnt12>=1 ) { break _loop12; } else {throw new NoViableAltException(LT(1), getFilename());}
				}
				
				_cnt12++;
			} while (true);
			}
			actions_AST = (GrammarAST)currentAST.root;
		}
		catch (RecognitionException ex) {
			reportError(ex);
			recover(ex,_tokenSet_7);
		}
		returnAST = actions_AST;
	}
	
	public final void rules() throws RecognitionException, TokenStreamException {
		
		returnAST = null;
		ASTPair currentAST = new ASTPair();
		GrammarAST rules_AST = null;
		
		try {      // for error handling
			{
			int _cnt37=0;
			_loop37:
			do {
				if ((_tokenSet_7.member(LA(1)))) {
					rule();
					astFactory.addASTChild(currentAST, returnAST);
				}
				else {
					if ( _cnt37>=1 ) { break _loop37; } else {throw new NoViableAltException(LT(1), getFilename());}
				}
				
				_cnt37++;
			} while (true);
			}
			rules_AST = (GrammarAST)currentAST.root;
		}
		catch (RecognitionException ex) {
			reportError(ex);
			recover(ex,_tokenSet_0);
		}
		returnAST = rules_AST;
	}
	
/** Match stuff like @parser::members {int i;} */
	public final void action() throws RecognitionException, TokenStreamException {
		
		returnAST = null;
		ASTPair currentAST = new ASTPair();
		GrammarAST action_AST = null;
		
		try {      // for error handling
			GrammarAST tmp17_AST = null;
			tmp17_AST = (GrammarAST)astFactory.create(LT(1));
			astFactory.makeASTRoot(currentAST, tmp17_AST);
			match(AMPERSAND);
			{
			if ((_tokenSet_8.member(LA(1))) && (LA(2)==COLON)) {
				actionScopeName();
				astFactory.addASTChild(currentAST, returnAST);
				match(COLON);
				match(COLON);
			}
			else if ((LA(1)==TOKEN_REF||LA(1)==RULE_REF) && (LA(2)==ACTION)) {
			}
			else {
				throw new NoViableAltException(LT(1), getFilename());
			}
			
			}
			id();
			astFactory.addASTChild(currentAST, returnAST);
			GrammarAST tmp20_AST = null;
			tmp20_AST = (GrammarAST)astFactory.create(LT(1));
			astFactory.addASTChild(currentAST, tmp20_AST);
			match(ACTION);
			action_AST = (GrammarAST)currentAST.root;
		}
		catch (RecognitionException ex) {
			reportError(ex);
			recover(ex,_tokenSet_6);
		}
		returnAST = action_AST;
	}
	
/** Sometimes the scope names will collide with keywords; allow them as
 *  ids for action scopes.
 */
	public final void actionScopeName() throws RecognitionException, TokenStreamException {
		
		returnAST = null;
		ASTPair currentAST = new ASTPair();
		GrammarAST actionScopeName_AST = null;
		Token  l = null;
		GrammarAST l_AST = null;
		Token  p = null;
		GrammarAST p_AST = null;
		
		try {      // for error handling
			switch ( LA(1)) {
			case TOKEN_REF:
			case RULE_REF:
			{
				id();
				astFactory.addASTChild(currentAST, returnAST);
				actionScopeName_AST = (GrammarAST)currentAST.root;
				break;
			}
			case LITERAL_lexer:
			{
				l = LT(1);
				l_AST = (GrammarAST)astFactory.create(l);
				astFactory.addASTChild(currentAST, l_AST);
				match(LITERAL_lexer);
				l_AST.setType(ID);
				actionScopeName_AST = (GrammarAST)currentAST.root;
				break;
			}
			case PARSER:
			{
				p = LT(1);
				p_AST = (GrammarAST)astFactory.create(p);
				astFactory.addASTChild(currentAST, p_AST);
				match(PARSER);
				p_AST.setType(ID);
				actionScopeName_AST = (GrammarAST)currentAST.root;
				break;
			}
			default:
			{
				throw new NoViableAltException(LT(1), getFilename());
			}
			}
		}
		catch (RecognitionException ex) {
			reportError(ex);
			recover(ex,_tokenSet_9);
		}
		returnAST = actionScopeName_AST;
	}
	
	public final void option(
		Map opts
	) throws RecognitionException, TokenStreamException {
		
		returnAST = null;
		ASTPair currentAST = new ASTPair();
		GrammarAST option_AST = null;
		GrammarAST o_AST = null;
		
		Object value=null;
		
		
		try {      // for error handling
			id();
			o_AST = (GrammarAST)returnAST;
			astFactory.addASTChild(currentAST, returnAST);
			GrammarAST tmp21_AST = null;
			tmp21_AST = (GrammarAST)astFactory.create(LT(1));
			astFactory.makeASTRoot(currentAST, tmp21_AST);
			match(ASSIGN);
			value=optionValue();
			astFactory.addASTChild(currentAST, returnAST);
			
				opts.put(o_AST.getText(), value);
				
			option_AST = (GrammarAST)currentAST.root;
		}
		catch (RecognitionException ex) {
			reportError(ex);
			recover(ex,_tokenSet_10);
		}
		returnAST = option_AST;
	}
	
	public final Object  optionValue() throws RecognitionException, TokenStreamException {
		Object value=null;
		
		returnAST = null;
		ASTPair currentAST = new ASTPair();
		GrammarAST optionValue_AST = null;
		GrammarAST x_AST = null;
		Token  s = null;
		GrammarAST s_AST = null;
		Token  c = null;
		GrammarAST c_AST = null;
		Token  i = null;
		GrammarAST i_AST = null;
		Token  ss = null;
		GrammarAST ss_AST = null;
		
		try {      // for error handling
			switch ( LA(1)) {
			case TOKEN_REF:
			case RULE_REF:
			{
				id();
				x_AST = (GrammarAST)returnAST;
				astFactory.addASTChild(currentAST, returnAST);
				value = x_AST.getText();
				optionValue_AST = (GrammarAST)currentAST.root;
				break;
			}
			case STRING_LITERAL:
			{
				s = LT(1);
				s_AST = (GrammarAST)astFactory.create(s);
				astFactory.addASTChild(currentAST, s_AST);
				match(STRING_LITERAL);
				String vs = s_AST.getText();
				value=vs.substring(1,vs.length()-1);
				optionValue_AST = (GrammarAST)currentAST.root;
				break;
			}
			case CHAR_LITERAL:
			{
				c = LT(1);
				c_AST = (GrammarAST)astFactory.create(c);
				astFactory.addASTChild(currentAST, c_AST);
				match(CHAR_LITERAL);
				String vs = c_AST.getText();
				value=vs.substring(1,vs.length()-1);
				optionValue_AST = (GrammarAST)currentAST.root;
				break;
			}
			case INT:
			{
				i = LT(1);
				i_AST = (GrammarAST)astFactory.create(i);
				astFactory.addASTChild(currentAST, i_AST);
				match(INT);
				value = new Integer(i_AST.getText());
				optionValue_AST = (GrammarAST)currentAST.root;
				break;
			}
			case STAR:
			{
				ss = LT(1);
				ss_AST = (GrammarAST)astFactory.create(ss);
				astFactory.addASTChild(currentAST, ss_AST);
				match(STAR);
				ss_AST.setType(STRING_LITERAL); value = "*";
				optionValue_AST = (GrammarAST)currentAST.root;
				break;
			}
			default:
			{
				throw new NoViableAltException(LT(1), getFilename());
			}
			}
		}
		catch (RecognitionException ex) {
			reportError(ex);
			recover(ex,_tokenSet_10);
		}
		returnAST = optionValue_AST;
		return value;
	}
	
	public final void delegateGrammar() throws RecognitionException, TokenStreamException {
		
		returnAST = null;
		ASTPair currentAST = new ASTPair();
		GrammarAST delegateGrammar_AST = null;
		GrammarAST lab_AST = null;
		GrammarAST g_AST = null;
		GrammarAST g2_AST = null;
		
		try {      // for error handling
			if ((LA(1)==TOKEN_REF||LA(1)==RULE_REF) && (LA(2)==ASSIGN)) {
				id();
				lab_AST = (GrammarAST)returnAST;
				astFactory.addASTChild(currentAST, returnAST);
				GrammarAST tmp22_AST = null;
				tmp22_AST = (GrammarAST)astFactory.create(LT(1));
				astFactory.makeASTRoot(currentAST, tmp22_AST);
				match(ASSIGN);
				id();
				g_AST = (GrammarAST)returnAST;
				astFactory.addASTChild(currentAST, returnAST);
				grammar.importGrammar(g_AST, lab_AST.getText());
				delegateGrammar_AST = (GrammarAST)currentAST.root;
			}
			else if ((LA(1)==TOKEN_REF||LA(1)==RULE_REF) && (LA(2)==SEMI||LA(2)==COMMA)) {
				id();
				g2_AST = (GrammarAST)returnAST;
				astFactory.addASTChild(currentAST, returnAST);
				grammar.importGrammar(g2_AST,null);
				delegateGrammar_AST = (GrammarAST)currentAST.root;
			}
			else {
				throw new NoViableAltException(LT(1), getFilename());
			}
			
		}
		catch (RecognitionException ex) {
			reportError(ex);
			recover(ex,_tokenSet_11);
		}
		returnAST = delegateGrammar_AST;
	}
	
	public final void tokenSpec() throws RecognitionException, TokenStreamException {
		
		returnAST = null;
		ASTPair currentAST = new ASTPair();
		GrammarAST tokenSpec_AST = null;
		
		try {      // for error handling
			GrammarAST tmp23_AST = null;
			tmp23_AST = (GrammarAST)astFactory.create(LT(1));
			astFactory.addASTChild(currentAST, tmp23_AST);
			match(TOKEN_REF);
			{
			switch ( LA(1)) {
			case ASSIGN:
			{
				GrammarAST tmp24_AST = null;
				tmp24_AST = (GrammarAST)astFactory.create(LT(1));
				astFactory.makeASTRoot(currentAST, tmp24_AST);
				match(ASSIGN);
				{
				switch ( LA(1)) {
				case STRING_LITERAL:
				{
					GrammarAST tmp25_AST = null;
					tmp25_AST = (GrammarAST)astFactory.create(LT(1));
					astFactory.addASTChild(currentAST, tmp25_AST);
					match(STRING_LITERAL);
					break;
				}
				case CHAR_LITERAL:
				{
					GrammarAST tmp26_AST = null;
					tmp26_AST = (GrammarAST)astFactory.create(LT(1));
					astFactory.addASTChild(currentAST, tmp26_AST);
					match(CHAR_LITERAL);
					break;
				}
				default:
				{
					throw new NoViableAltException(LT(1), getFilename());
				}
				}
				}
				break;
			}
			case SEMI:
			{
				break;
			}
			default:
			{
				throw new NoViableAltException(LT(1), getFilename());
			}
			}
			}
			match(SEMI);
			tokenSpec_AST = (GrammarAST)currentAST.root;
		}
		catch (RecognitionException ex) {
			reportError(ex);
			recover(ex,_tokenSet_12);
		}
		returnAST = tokenSpec_AST;
	}
	
	public final void attrScope() throws RecognitionException, TokenStreamException {
		
		returnAST = null;
		ASTPair currentAST = new ASTPair();
		GrammarAST attrScope_AST = null;
		
		try {      // for error handling
			GrammarAST tmp28_AST = null;
			tmp28_AST = (GrammarAST)astFactory.create(LT(1));
			astFactory.makeASTRoot(currentAST, tmp28_AST);
			match(SCOPE);
			id();
			astFactory.addASTChild(currentAST, returnAST);
			GrammarAST tmp29_AST = null;
			tmp29_AST = (GrammarAST)astFactory.create(LT(1));
			astFactory.addASTChild(currentAST, tmp29_AST);
			match(ACTION);
			attrScope_AST = (GrammarAST)currentAST.root;
		}
		catch (RecognitionException ex) {
			reportError(ex);
			recover(ex,_tokenSet_5);
		}
		returnAST = attrScope_AST;
	}
	
	public final void rule() throws RecognitionException, TokenStreamException {
		
		returnAST = null;
		ASTPair currentAST = new ASTPair();
		GrammarAST rule_AST = null;
		Token  d = null;
		GrammarAST d_AST = null;
		Token  p1 = null;
		GrammarAST p1_AST = null;
		Token  p2 = null;
		GrammarAST p2_AST = null;
		Token  p3 = null;
		GrammarAST p3_AST = null;
		Token  p4 = null;
		GrammarAST p4_AST = null;
		GrammarAST ruleName_AST = null;
		Token  aa = null;
		GrammarAST aa_AST = null;
		Token  rt = null;
		GrammarAST rt_AST = null;
		GrammarAST scopes_AST = null;
		GrammarAST a_AST = null;
		Token  colon = null;
		GrammarAST colon_AST = null;
		GrammarAST b_AST = null;
		Token  semi = null;
		GrammarAST semi_AST = null;
		GrammarAST ex_AST = null;
		
		GrammarAST modifier=null, blk=null, blkRoot=null, eob=null;
		int start = ((TokenWithIndex)LT(1)).getIndex();
		int startLine = LT(1).getLine();
		GrammarAST opt = null;
		Map opts = null;
		
		
		try {      // for error handling
			{
			switch ( LA(1)) {
			case DOC_COMMENT:
			{
				d = LT(1);
				d_AST = (GrammarAST)astFactory.create(d);
				match(DOC_COMMENT);
				break;
			}
			case FRAGMENT:
			case TOKEN_REF:
			case LITERAL_protected:
			case LITERAL_public:
			case LITERAL_private:
			case RULE_REF:
			{
				break;
			}
			default:
			{
				throw new NoViableAltException(LT(1), getFilename());
			}
			}
			}
			{
			switch ( LA(1)) {
			case LITERAL_protected:
			{
				p1 = LT(1);
				p1_AST = (GrammarAST)astFactory.create(p1);
				match(LITERAL_protected);
				modifier=p1_AST;
				break;
			}
			case LITERAL_public:
			{
				p2 = LT(1);
				p2_AST = (GrammarAST)astFactory.create(p2);
				match(LITERAL_public);
				modifier=p2_AST;
				break;
			}
			case LITERAL_private:
			{
				p3 = LT(1);
				p3_AST = (GrammarAST)astFactory.create(p3);
				match(LITERAL_private);
				modifier=p3_AST;
				break;
			}
			case FRAGMENT:
			{
				p4 = LT(1);
				p4_AST = (GrammarAST)astFactory.create(p4);
				match(FRAGMENT);
				modifier=p4_AST;
				break;
			}
			case TOKEN_REF:
			case RULE_REF:
			{
				break;
			}
			default:
			{
				throw new NoViableAltException(LT(1), getFilename());
			}
			}
			}
			id();
			ruleName_AST = (GrammarAST)returnAST;
			currentRuleName=ruleName_AST.getText();
			if ( gtype==LEXER_GRAMMAR && p4_AST==null ) {
			grammar.lexerRuleNamesInCombined.add(currentRuleName);
				 }
				
			{
			switch ( LA(1)) {
			case BANG:
			{
				GrammarAST tmp30_AST = null;
				tmp30_AST = (GrammarAST)astFactory.create(LT(1));
				match(BANG);
				break;
			}
			case OPTIONS:
			case SCOPE:
			case AMPERSAND:
			case COLON:
			case ARG_ACTION:
			case LITERAL_returns:
			case LITERAL_throws:
			{
				break;
			}
			default:
			{
				throw new NoViableAltException(LT(1), getFilename());
			}
			}
			}
			{
			switch ( LA(1)) {
			case ARG_ACTION:
			{
				aa = LT(1);
				aa_AST = (GrammarAST)astFactory.create(aa);
				match(ARG_ACTION);
				break;
			}
			case OPTIONS:
			case SCOPE:
			case AMPERSAND:
			case COLON:
			case LITERAL_returns:
			case LITERAL_throws:
			{
				break;
			}
			default:
			{
				throw new NoViableAltException(LT(1), getFilename());
			}
			}
			}
			{
			switch ( LA(1)) {
			case LITERAL_returns:
			{
				match(LITERAL_returns);
				rt = LT(1);
				rt_AST = (GrammarAST)astFactory.create(rt);
				match(ARG_ACTION);
				break;
			}
			case OPTIONS:
			case SCOPE:
			case AMPERSAND:
			case COLON:
			case LITERAL_throws:
			{
				break;
			}
			default:
			{
				throw new NoViableAltException(LT(1), getFilename());
			}
			}
			}
			{
			switch ( LA(1)) {
			case LITERAL_throws:
			{
				throwsSpec();
				break;
			}
			case OPTIONS:
			case SCOPE:
			case AMPERSAND:
			case COLON:
			{
				break;
			}
			default:
			{
				throw new NoViableAltException(LT(1), getFilename());
			}
			}
			}
			{
			switch ( LA(1)) {
			case OPTIONS:
			{
				opts=optionsSpec();
				opt=(GrammarAST)returnAST;
				break;
			}
			case SCOPE:
			case AMPERSAND:
			case COLON:
			{
				break;
			}
			default:
			{
				throw new NoViableAltException(LT(1), getFilename());
			}
			}
			}
			ruleScopeSpec();
			scopes_AST = (GrammarAST)returnAST;
			{
			switch ( LA(1)) {
			case AMPERSAND:
			{
				ruleActions();
				a_AST = (GrammarAST)returnAST;
				break;
			}
			case COLON:
			{
				break;
			}
			default:
			{
				throw new NoViableAltException(LT(1), getFilename());
			}
			}
			}
			colon = LT(1);
			colon_AST = (GrammarAST)astFactory.create(colon);
			match(COLON);
			
				blkRoot = (GrammarAST)astFactory.create(BLOCK,"BLOCK");
				blkRoot.setBlockOptions(opts);
				blkRoot.setLine(colon.getLine());
				blkRoot.setColumn(colon.getColumn());
				eob = (GrammarAST)astFactory.create(EOB,"<end-of-block>");
			
			altList(opts);
			b_AST = (GrammarAST)returnAST;
			blk = b_AST;
			semi = LT(1);
			semi_AST = (GrammarAST)astFactory.create(semi);
			match(SEMI);
			{
			switch ( LA(1)) {
			case LITERAL_catch:
			case LITERAL_finally:
			{
				exceptionGroup();
				ex_AST = (GrammarAST)returnAST;
				break;
			}
			case EOF:
			case FRAGMENT:
			case DOC_COMMENT:
			case TOKEN_REF:
			case LITERAL_protected:
			case LITERAL_public:
			case LITERAL_private:
			case RULE_REF:
			{
				break;
			}
			default:
			{
				throw new NoViableAltException(LT(1), getFilename());
			}
			}
			}
			rule_AST = (GrammarAST)currentAST.root;
			
			int stop = ((TokenWithIndex)LT(1)).getIndex()-1; // point at the semi or exception thingie
				eob.setLine(semi.getLine());
				eob.setColumn(semi.getColumn());
			GrammarAST eor = (GrammarAST)astFactory.create(EOR,"<end-of-rule>");
				eor.setLine(semi.getLine());
				eor.setColumn(semi.getColumn());
				GrammarAST root = (GrammarAST)astFactory.create(RULE,"rule");
				root.ruleStartTokenIndex = start;
				root.ruleStopTokenIndex = stop;
				root.setLine(startLine);
				root.setBlockOptions(opts);
			rule_AST = (GrammarAST)astFactory.make( (new ASTArray(11)).add(root).add(ruleName_AST).add(modifier).add((GrammarAST)astFactory.make( (new ASTArray(2)).add((GrammarAST)astFactory.create(ARG,"ARG")).add(aa_AST))).add((GrammarAST)astFactory.make( (new ASTArray(2)).add((GrammarAST)astFactory.create(RET,"RET")).add(rt_AST))).add(opt).add(scopes_AST).add(a_AST).add(blk).add(ex_AST).add(eor));
				currentRuleName=null;
			
			currentAST.root = rule_AST;
			currentAST.child = rule_AST!=null &&rule_AST.getFirstChild()!=null ?
				rule_AST.getFirstChild() : rule_AST;
			currentAST.advanceChildToEnd();
		}
		catch (RecognitionException ex) {
			reportError(ex);
			recover(ex,_tokenSet_13);
		}
		returnAST = rule_AST;
	}
	
	public final void throwsSpec() throws RecognitionException, TokenStreamException {
		
		returnAST = null;
		ASTPair currentAST = new ASTPair();
		GrammarAST throwsSpec_AST = null;
		
		try {      // for error handling
			GrammarAST tmp32_AST = null;
			tmp32_AST = (GrammarAST)astFactory.create(LT(1));
			astFactory.addASTChild(currentAST, tmp32_AST);
			match(LITERAL_throws);
			id();
			astFactory.addASTChild(currentAST, returnAST);
			{
			_loop54:
			do {
				if ((LA(1)==COMMA)) {
					GrammarAST tmp33_AST = null;
					tmp33_AST = (GrammarAST)astFactory.create(LT(1));
					astFactory.addASTChild(currentAST, tmp33_AST);
					match(COMMA);
					id();
					astFactory.addASTChild(currentAST, returnAST);
				}
				else {
					break _loop54;
				}
				
			} while (true);
			}
			throwsSpec_AST = (GrammarAST)currentAST.root;
		}
		catch (RecognitionException ex) {
			reportError(ex);
			recover(ex,_tokenSet_14);
		}
		returnAST = throwsSpec_AST;
	}
	
	public final void ruleScopeSpec() throws RecognitionException, TokenStreamException {
		
		returnAST = null;
		ASTPair currentAST = new ASTPair();
		GrammarAST ruleScopeSpec_AST = null;
		Token  a = null;
		GrammarAST a_AST = null;
		GrammarAST ids_AST = null;
		
		int line = LT(1).getLine();
		int column = LT(1).getColumn();
		
		
		try {      // for error handling
			{
			if ((LA(1)==SCOPE) && (LA(2)==ACTION) && (LA(3)==SCOPE||LA(3)==AMPERSAND||LA(3)==COLON)) {
				match(SCOPE);
				a = LT(1);
				a_AST = (GrammarAST)astFactory.create(a);
				match(ACTION);
			}
			else if ((LA(1)==SCOPE||LA(1)==AMPERSAND||LA(1)==COLON) && (_tokenSet_15.member(LA(2))) && (_tokenSet_16.member(LA(3)))) {
			}
			else {
				throw new NoViableAltException(LT(1), getFilename());
			}
			
			}
			{
			_loop58:
			do {
				if ((LA(1)==SCOPE)) {
					match(SCOPE);
					idList();
					ids_AST = (GrammarAST)returnAST;
					match(SEMI);
				}
				else {
					break _loop58;
				}
				
			} while (true);
			}
			ruleScopeSpec_AST = (GrammarAST)currentAST.root;
			
					GrammarAST scopeRoot = (GrammarAST)(GrammarAST)astFactory.create(SCOPE,"scope");
					scopeRoot.setLine(line);
					scopeRoot.setColumn(column);
					ruleScopeSpec_AST = (GrammarAST)astFactory.make( (new ASTArray(3)).add(scopeRoot).add(a_AST).add(ids_AST));
					
			currentAST.root = ruleScopeSpec_AST;
			currentAST.child = ruleScopeSpec_AST!=null &&ruleScopeSpec_AST.getFirstChild()!=null ?
				ruleScopeSpec_AST.getFirstChild() : ruleScopeSpec_AST;
			currentAST.advanceChildToEnd();
		}
		catch (RecognitionException ex) {
			reportError(ex);
			recover(ex,_tokenSet_17);
		}
		returnAST = ruleScopeSpec_AST;
	}
	
	public final void ruleActions() throws RecognitionException, TokenStreamException {
		
		returnAST = null;
		ASTPair currentAST = new ASTPair();
		GrammarAST ruleActions_AST = null;
		
		try {      // for error handling
			{
			int _cnt50=0;
			_loop50:
			do {
				if ((LA(1)==AMPERSAND)) {
					ruleAction();
					astFactory.addASTChild(currentAST, returnAST);
				}
				else {
					if ( _cnt50>=1 ) { break _loop50; } else {throw new NoViableAltException(LT(1), getFilename());}
				}
				
				_cnt50++;
			} while (true);
			}
			ruleActions_AST = (GrammarAST)currentAST.root;
		}
		catch (RecognitionException ex) {
			reportError(ex);
			recover(ex,_tokenSet_9);
		}
		returnAST = ruleActions_AST;
	}
	
	public final void altList(
		Map opts
	) throws RecognitionException, TokenStreamException {
		
		returnAST = null;
		ASTPair currentAST = new ASTPair();
		GrammarAST altList_AST = null;
		GrammarAST a1_AST = null;
		GrammarAST a2_AST = null;
		
			GrammarAST blkRoot = (GrammarAST)astFactory.create(BLOCK,"BLOCK");
			blkRoot.setBlockOptions(opts);
			blkRoot.setLine(LT(0).getLine()); // set to : or (
			blkRoot.setColumn(LT(0).getColumn());
			GrammarAST save = currentBlockAST;
			currentBlockAST = blkRoot;
		
		
		try {      // for error handling
			alternative();
			a1_AST = (GrammarAST)returnAST;
			astFactory.addASTChild(currentAST, returnAST);
			rewrite();
			astFactory.addASTChild(currentAST, returnAST);
			if (LA(1)==OR||(LA(2)==QUESTION||LA(2)==PLUS||LA(2)==STAR)) prefixWithSynPred(a1_AST);
			{
			_loop67:
			do {
				if ((LA(1)==OR)) {
					match(OR);
					alternative();
					a2_AST = (GrammarAST)returnAST;
					astFactory.addASTChild(currentAST, returnAST);
					rewrite();
					astFactory.addASTChild(currentAST, returnAST);
					if (LA(1)==OR||(LA(2)==QUESTION||LA(2)==PLUS||LA(2)==STAR)) prefixWithSynPred(a2_AST);
				}
				else {
					break _loop67;
				}
				
			} while (true);
			}
			altList_AST = (GrammarAST)currentAST.root;
			
			altList_AST = (GrammarAST)astFactory.make( (new ASTArray(3)).add(blkRoot).add(altList_AST).add((GrammarAST)astFactory.create(EOB,"<end-of-block>")));
			currentBlockAST = save;
			
			currentAST.root = altList_AST;
			currentAST.child = altList_AST!=null &&altList_AST.getFirstChild()!=null ?
				altList_AST.getFirstChild() : altList_AST;
			currentAST.advanceChildToEnd();
			altList_AST = (GrammarAST)currentAST.root;
		}
		catch (RecognitionException ex) {
			reportError(ex);
			recover(ex,_tokenSet_10);
		}
		returnAST = altList_AST;
	}
	
	public final void exceptionGroup() throws RecognitionException, TokenStreamException {
		
		returnAST = null;
		ASTPair currentAST = new ASTPair();
		GrammarAST exceptionGroup_AST = null;
		
		try {      // for error handling
			switch ( LA(1)) {
			case LITERAL_catch:
			{
				{
				int _cnt73=0;
				_loop73:
				do {
					if ((LA(1)==LITERAL_catch)) {
						exceptionHandler();
						astFactory.addASTChild(currentAST, returnAST);
					}
					else {
						if ( _cnt73>=1 ) { break _loop73; } else {throw new NoViableAltException(LT(1), getFilename());}
					}
					
					_cnt73++;
				} while (true);
				}
				{
				switch ( LA(1)) {
				case LITERAL_finally:
				{
					finallyClause();
					astFactory.addASTChild(currentAST, returnAST);
					break;
				}
				case EOF:
				case FRAGMENT:
				case DOC_COMMENT:
				case TOKEN_REF:
				case LITERAL_protected:
				case LITERAL_public:
				case LITERAL_private:
				case RULE_REF:
				{
					break;
				}
				default:
				{
					throw new NoViableAltException(LT(1), getFilename());
				}
				}
				}
				exceptionGroup_AST = (GrammarAST)currentAST.root;
				break;
			}
			case LITERAL_finally:
			{
				finallyClause();
				astFactory.addASTChild(currentAST, returnAST);
				exceptionGroup_AST = (GrammarAST)currentAST.root;
				break;
			}
			default:
			{
				throw new NoViableAltException(LT(1), getFilename());
			}
			}
		}
		catch (RecognitionException ex) {
			reportError(ex);
			recover(ex,_tokenSet_13);
		}
		returnAST = exceptionGroup_AST;
	}
	
/** Match stuff like @init {int i;} */
	public final void ruleAction() throws RecognitionException, TokenStreamException {
		
		returnAST = null;
		ASTPair currentAST = new ASTPair();
		GrammarAST ruleAction_AST = null;
		
		try {      // for error handling
			GrammarAST tmp38_AST = null;
			tmp38_AST = (GrammarAST)astFactory.create(LT(1));
			astFactory.makeASTRoot(currentAST, tmp38_AST);
			match(AMPERSAND);
			id();
			astFactory.addASTChild(currentAST, returnAST);
			GrammarAST tmp39_AST = null;
			tmp39_AST = (GrammarAST)astFactory.create(LT(1));
			astFactory.addASTChild(currentAST, tmp39_AST);
			match(ACTION);
			ruleAction_AST = (GrammarAST)currentAST.root;
		}
		catch (RecognitionException ex) {
			reportError(ex);
			recover(ex,_tokenSet_17);
		}
		returnAST = ruleAction_AST;
	}
	
	public final void idList() throws RecognitionException, TokenStreamException {
		
		returnAST = null;
		ASTPair currentAST = new ASTPair();
		GrammarAST idList_AST = null;
		
		try {      // for error handling
			id();
			astFactory.addASTChild(currentAST, returnAST);
			{
			_loop127:
			do {
				if ((LA(1)==COMMA)) {
					match(COMMA);
					id();
					astFactory.addASTChild(currentAST, returnAST);
				}
				else {
					break _loop127;
				}
				
			} while (true);
			}
			idList_AST = (GrammarAST)currentAST.root;
		}
		catch (RecognitionException ex) {
			reportError(ex);
			recover(ex,_tokenSet_10);
		}
		returnAST = idList_AST;
	}
	
/** Build #(BLOCK ( #(ALT ...) EOB )+ ) */
	public final void block() throws RecognitionException, TokenStreamException {
		
		returnAST = null;
		ASTPair currentAST = new ASTPair();
		GrammarAST block_AST = null;
		Token  lp = null;
		GrammarAST lp_AST = null;
		GrammarAST a1_AST = null;
		GrammarAST a2_AST = null;
		Token  rp = null;
		GrammarAST rp_AST = null;
		
		GrammarAST save = currentBlockAST;
		Map opts=null;
		
		
		try {      // for error handling
			lp = LT(1);
			lp_AST = (GrammarAST)astFactory.create(lp);
			astFactory.makeASTRoot(currentAST, lp_AST);
			match(LPAREN);
			lp_AST.setType(BLOCK); lp_AST.setText("BLOCK");
			{
			if ((LA(1)==OPTIONS||LA(1)==AMPERSAND||LA(1)==COLON)) {
				{
				switch ( LA(1)) {
				case OPTIONS:
				{
					opts=optionsSpec();
					astFactory.addASTChild(currentAST, returnAST);
					block_AST = (GrammarAST)currentAST.root;
					block_AST.setOptions(grammar,opts);
					break;
				}
				case AMPERSAND:
				case COLON:
				{
					break;
				}
				default:
				{
					throw new NoViableAltException(LT(1), getFilename());
				}
				}
				}
				{
				switch ( LA(1)) {
				case AMPERSAND:
				{
					ruleActions();
					astFactory.addASTChild(currentAST, returnAST);
					break;
				}
				case COLON:
				{
					break;
				}
				default:
				{
					throw new NoViableAltException(LT(1), getFilename());
				}
				}
				}
				match(COLON);
			}
			else if ((LA(1)==ACTION) && (LA(2)==COLON) && (_tokenSet_18.member(LA(3)))) {
				GrammarAST tmp42_AST = null;
				tmp42_AST = (GrammarAST)astFactory.create(LT(1));
				astFactory.addASTChild(currentAST, tmp42_AST);
				match(ACTION);
				match(COLON);
			}
			else if ((_tokenSet_18.member(LA(1))) && (_tokenSet_19.member(LA(2))) && (_tokenSet_20.member(LA(3)))) {
			}
			else {
				throw new NoViableAltException(LT(1), getFilename());
			}
			
			}
			currentBlockAST = lp_AST;
			alternative();
			a1_AST = (GrammarAST)returnAST;
			astFactory.addASTChild(currentAST, returnAST);
			rewrite();
			astFactory.addASTChild(currentAST, returnAST);
			if (LA(1)==OR||(LA(2)==QUESTION||LA(2)==PLUS||LA(2)==STAR)) prefixWithSynPred(a1_AST);
			{
			_loop64:
			do {
				if ((LA(1)==OR)) {
					match(OR);
					alternative();
					a2_AST = (GrammarAST)returnAST;
					astFactory.addASTChild(currentAST, returnAST);
					rewrite();
					astFactory.addASTChild(currentAST, returnAST);
					if (LA(1)==OR||(LA(2)==QUESTION||LA(2)==PLUS||LA(2)==STAR)) prefixWithSynPred(a2_AST);
				}
				else {
					break _loop64;
				}
				
			} while (true);
			}
			rp = LT(1);
			rp_AST = (GrammarAST)astFactory.create(rp);
			match(RPAREN);
			block_AST = (GrammarAST)currentAST.root;
			
					currentBlockAST = save;
			GrammarAST eob = (GrammarAST)astFactory.create(EOB,"<end-of-block>");
			eob.setLine(rp.getLine());
			eob.setColumn(rp.getColumn());
			block_AST.addChild(eob);
			
			block_AST = (GrammarAST)currentAST.root;
		}
		catch (RecognitionException ex) {
			reportError(ex);
			recover(ex,_tokenSet_21);
		}
		returnAST = block_AST;
	}
	
	public final void alternative() throws RecognitionException, TokenStreamException {
		
		returnAST = null;
		ASTPair currentAST = new ASTPair();
		GrammarAST alternative_AST = null;
		GrammarAST el_AST = null;
		
		GrammarAST eoa = (GrammarAST)astFactory.create(EOA,"<end-of-alt>");
		GrammarAST altRoot = (GrammarAST)astFactory.create(ALT,"ALT");
		altRoot.setLine(LT(1).getLine());
		altRoot.setColumn(LT(1).getColumn());
		
		
		try {      // for error handling
			switch ( LA(1)) {
			case FORCED_ACTION:
			case ACTION:
			case STRING_LITERAL:
			case CHAR_LITERAL:
			case TOKEN_REF:
			case LPAREN:
			case SEMPRED:
			case WILDCARD:
			case RULE_REF:
			case NOT:
			case TREE_BEGIN:
			{
				{
				int _cnt70=0;
				_loop70:
				do {
					if ((_tokenSet_22.member(LA(1)))) {
						element();
						el_AST = (GrammarAST)returnAST;
						astFactory.addASTChild(currentAST, returnAST);
					}
					else {
						if ( _cnt70>=1 ) { break _loop70; } else {throw new NoViableAltException(LT(1), getFilename());}
					}
					
					_cnt70++;
				} while (true);
				}
				alternative_AST = (GrammarAST)currentAST.root;
				
				if ( alternative_AST==null ) {
				alternative_AST = (GrammarAST)astFactory.make( (new ASTArray(3)).add(altRoot).add((GrammarAST)astFactory.create(EPSILON,"epsilon")).add(eoa));
				}
				else {
					// we have a real list of stuff
					alternative_AST = (GrammarAST)astFactory.make( (new ASTArray(3)).add(altRoot).add(alternative_AST).add(eoa));
				}
				
				currentAST.root = alternative_AST;
				currentAST.child = alternative_AST!=null &&alternative_AST.getFirstChild()!=null ?
					alternative_AST.getFirstChild() : alternative_AST;
				currentAST.advanceChildToEnd();
				alternative_AST = (GrammarAST)currentAST.root;
				break;
			}
			case SEMI:
			case OR:
			case RPAREN:
			case REWRITE:
			{
				alternative_AST = (GrammarAST)currentAST.root;
				
					GrammarAST eps = (GrammarAST)astFactory.create(EPSILON,"epsilon");
						eps.setLine(LT(0).getLine()); // get line/col of '|' or ':' (prev token)
						eps.setColumn(LT(0).getColumn());
					alternative_AST = (GrammarAST)astFactory.make( (new ASTArray(3)).add(altRoot).add(eps).add(eoa));
					
				currentAST.root = alternative_AST;
				currentAST.child = alternative_AST!=null &&alternative_AST.getFirstChild()!=null ?
					alternative_AST.getFirstChild() : alternative_AST;
				currentAST.advanceChildToEnd();
				alternative_AST = (GrammarAST)currentAST.root;
				break;
			}
			default:
			{
				throw new NoViableAltException(LT(1), getFilename());
			}
			}
		}
		catch (RecognitionException ex) {
			reportError(ex);
			recover(ex,_tokenSet_23);
		}
		returnAST = alternative_AST;
	}
	
	public final void rewrite() throws RecognitionException, TokenStreamException {
		
		returnAST = null;
		ASTPair currentAST = new ASTPair();
		GrammarAST rewrite_AST = null;
		Token  rew = null;
		GrammarAST rew_AST = null;
		Token  pred = null;
		GrammarAST pred_AST = null;
		GrammarAST alt_AST = null;
		Token  rew2 = null;
		GrammarAST rew2_AST = null;
		GrammarAST alt2_AST = null;
		
		GrammarAST root = new GrammarAST();
		
		
		try {      // for error handling
			switch ( LA(1)) {
			case REWRITE:
			{
				{
				_loop131:
				do {
					if ((LA(1)==REWRITE) && (LA(2)==SEMPRED)) {
						rew = LT(1);
						rew_AST = (GrammarAST)astFactory.create(rew);
						match(REWRITE);
						pred = LT(1);
						pred_AST = (GrammarAST)astFactory.create(pred);
						match(SEMPRED);
						rewrite_alternative();
						alt_AST = (GrammarAST)returnAST;
						root.addChild( (GrammarAST)astFactory.make( (new ASTArray(3)).add(rew_AST).add(pred_AST).add(alt_AST)) );
					}
					else {
						break _loop131;
					}
					
				} while (true);
				}
				rew2 = LT(1);
				rew2_AST = (GrammarAST)astFactory.create(rew2);
				match(REWRITE);
				rewrite_alternative();
				alt2_AST = (GrammarAST)returnAST;
				rewrite_AST = (GrammarAST)currentAST.root;
				
				root.addChild( (GrammarAST)astFactory.make( (new ASTArray(2)).add(rew2_AST).add(alt2_AST)) );
				rewrite_AST = (GrammarAST)root.getFirstChild();
				
				currentAST.root = rewrite_AST;
				currentAST.child = rewrite_AST!=null &&rewrite_AST.getFirstChild()!=null ?
					rewrite_AST.getFirstChild() : rewrite_AST;
				currentAST.advanceChildToEnd();
				break;
			}
			case SEMI:
			case OR:
			case RPAREN:
			{
				rewrite_AST = (GrammarAST)currentAST.root;
				break;
			}
			default:
			{
				throw new NoViableAltException(LT(1), getFilename());
			}
			}
		}
		catch (RecognitionException ex) {
			reportError(ex);
			recover(ex,_tokenSet_24);
		}
		returnAST = rewrite_AST;
	}
	
	public final void element() throws RecognitionException, TokenStreamException {
		
		returnAST = null;
		ASTPair currentAST = new ASTPair();
		GrammarAST element_AST = null;
		
		try {      // for error handling
			elementNoOptionSpec();
			astFactory.addASTChild(currentAST, returnAST);
			element_AST = (GrammarAST)currentAST.root;
		}
		catch (RecognitionException ex) {
			reportError(ex);
			recover(ex,_tokenSet_25);
		}
		returnAST = element_AST;
	}
	
	public final void exceptionHandler() throws RecognitionException, TokenStreamException {
		
		returnAST = null;
		ASTPair currentAST = new ASTPair();
		GrammarAST exceptionHandler_AST = null;
		
		try {      // for error handling
			GrammarAST tmp45_AST = null;
			tmp45_AST = (GrammarAST)astFactory.create(LT(1));
			astFactory.makeASTRoot(currentAST, tmp45_AST);
			match(LITERAL_catch);
			GrammarAST tmp46_AST = null;
			tmp46_AST = (GrammarAST)astFactory.create(LT(1));
			astFactory.addASTChild(currentAST, tmp46_AST);
			match(ARG_ACTION);
			GrammarAST tmp47_AST = null;
			tmp47_AST = (GrammarAST)astFactory.create(LT(1));
			astFactory.addASTChild(currentAST, tmp47_AST);
			match(ACTION);
			exceptionHandler_AST = (GrammarAST)currentAST.root;
		}
		catch (RecognitionException ex) {
			reportError(ex);
			recover(ex,_tokenSet_26);
		}
		returnAST = exceptionHandler_AST;
	}
	
	public final void finallyClause() throws RecognitionException, TokenStreamException {
		
		returnAST = null;
		ASTPair currentAST = new ASTPair();
		GrammarAST finallyClause_AST = null;
		
		try {      // for error handling
			GrammarAST tmp48_AST = null;
			tmp48_AST = (GrammarAST)astFactory.create(LT(1));
			astFactory.makeASTRoot(currentAST, tmp48_AST);
			match(LITERAL_finally);
			GrammarAST tmp49_AST = null;
			tmp49_AST = (GrammarAST)astFactory.create(LT(1));
			astFactory.addASTChild(currentAST, tmp49_AST);
			match(ACTION);
			finallyClause_AST = (GrammarAST)currentAST.root;
		}
		catch (RecognitionException ex) {
			reportError(ex);
			recover(ex,_tokenSet_13);
		}
		returnAST = finallyClause_AST;
	}
	
	public final void elementNoOptionSpec() throws RecognitionException, TokenStreamException {
		
		returnAST = null;
		ASTPair currentAST = new ASTPair();
		GrammarAST elementNoOptionSpec_AST = null;
		Token  p = null;
		GrammarAST p_AST = null;
		GrammarAST t3_AST = null;
		
		IntSet elements=null;
		GrammarAST sub, sub2;
		
		
		try {      // for error handling
			{
			switch ( LA(1)) {
			case LPAREN:
			{
				ebnf();
				astFactory.addASTChild(currentAST, returnAST);
				break;
			}
			case FORCED_ACTION:
			{
				GrammarAST tmp50_AST = null;
				tmp50_AST = (GrammarAST)astFactory.create(LT(1));
				astFactory.addASTChild(currentAST, tmp50_AST);
				match(FORCED_ACTION);
				break;
			}
			case ACTION:
			{
				GrammarAST tmp51_AST = null;
				tmp51_AST = (GrammarAST)astFactory.create(LT(1));
				astFactory.addASTChild(currentAST, tmp51_AST);
				match(ACTION);
				break;
			}
			case SEMPRED:
			{
				p = LT(1);
				p_AST = (GrammarAST)astFactory.create(p);
				astFactory.addASTChild(currentAST, p_AST);
				match(SEMPRED);
				{
				switch ( LA(1)) {
				case IMPLIES:
				{
					match(IMPLIES);
					p_AST.setType(GATED_SEMPRED);
					break;
				}
				case FORCED_ACTION:
				case ACTION:
				case SEMI:
				case STRING_LITERAL:
				case CHAR_LITERAL:
				case TOKEN_REF:
				case LPAREN:
				case OR:
				case RPAREN:
				case SEMPRED:
				case WILDCARD:
				case RULE_REF:
				case NOT:
				case TREE_BEGIN:
				case REWRITE:
				{
					break;
				}
				default:
				{
					throw new NoViableAltException(LT(1), getFilename());
				}
				}
				}
				
							grammar.blocksWithSemPreds.add(currentBlockAST);
							
				break;
			}
			case TREE_BEGIN:
			{
				tree();
				t3_AST = (GrammarAST)returnAST;
				astFactory.addASTChild(currentAST, returnAST);
				break;
			}
			default:
				if ((LA(1)==TOKEN_REF||LA(1)==RULE_REF) && (LA(2)==ASSIGN||LA(2)==PLUS_ASSIGN)) {
					id();
					astFactory.addASTChild(currentAST, returnAST);
					{
					switch ( LA(1)) {
					case ASSIGN:
					{
						GrammarAST tmp53_AST = null;
						tmp53_AST = (GrammarAST)astFactory.create(LT(1));
						astFactory.makeASTRoot(currentAST, tmp53_AST);
						match(ASSIGN);
						break;
					}
					case PLUS_ASSIGN:
					{
						GrammarAST tmp54_AST = null;
						tmp54_AST = (GrammarAST)astFactory.create(LT(1));
						astFactory.makeASTRoot(currentAST, tmp54_AST);
						match(PLUS_ASSIGN);
						break;
					}
					default:
					{
						throw new NoViableAltException(LT(1), getFilename());
					}
					}
					}
					{
					switch ( LA(1)) {
					case STRING_LITERAL:
					case CHAR_LITERAL:
					case TOKEN_REF:
					case WILDCARD:
					case RULE_REF:
					case NOT:
					{
						atom();
						astFactory.addASTChild(currentAST, returnAST);
						break;
					}
					case LPAREN:
					{
						block();
						astFactory.addASTChild(currentAST, returnAST);
						break;
					}
					default:
					{
						throw new NoViableAltException(LT(1), getFilename());
					}
					}
					}
					{
					switch ( LA(1)) {
					case STAR:
					case QUESTION:
					case PLUS:
					{
						sub=ebnfSuffix((GrammarAST)currentAST.root,false);
						elementNoOptionSpec_AST = (GrammarAST)currentAST.root;
						elementNoOptionSpec_AST=sub;
						currentAST.root = elementNoOptionSpec_AST;
						currentAST.child = elementNoOptionSpec_AST!=null &&elementNoOptionSpec_AST.getFirstChild()!=null ?
							elementNoOptionSpec_AST.getFirstChild() : elementNoOptionSpec_AST;
						currentAST.advanceChildToEnd();
						break;
					}
					case FORCED_ACTION:
					case ACTION:
					case SEMI:
					case STRING_LITERAL:
					case CHAR_LITERAL:
					case TOKEN_REF:
					case LPAREN:
					case OR:
					case RPAREN:
					case SEMPRED:
					case WILDCARD:
					case RULE_REF:
					case NOT:
					case TREE_BEGIN:
					case REWRITE:
					{
						break;
					}
					default:
					{
						throw new NoViableAltException(LT(1), getFilename());
					}
					}
					}
				}
				else if ((_tokenSet_27.member(LA(1))) && (_tokenSet_28.member(LA(2)))) {
					atom();
					astFactory.addASTChild(currentAST, returnAST);
					{
					switch ( LA(1)) {
					case STAR:
					case QUESTION:
					case PLUS:
					{
						sub2=ebnfSuffix((GrammarAST)currentAST.root,false);
						elementNoOptionSpec_AST = (GrammarAST)currentAST.root;
						elementNoOptionSpec_AST=sub2;
						currentAST.root = elementNoOptionSpec_AST;
						currentAST.child = elementNoOptionSpec_AST!=null &&elementNoOptionSpec_AST.getFirstChild()!=null ?
							elementNoOptionSpec_AST.getFirstChild() : elementNoOptionSpec_AST;
						currentAST.advanceChildToEnd();
						break;
					}
					case FORCED_ACTION:
					case ACTION:
					case SEMI:
					case STRING_LITERAL:
					case CHAR_LITERAL:
					case TOKEN_REF:
					case LPAREN:
					case OR:
					case RPAREN:
					case SEMPRED:
					case WILDCARD:
					case RULE_REF:
					case NOT:
					case TREE_BEGIN:
					case REWRITE:
					{
						break;
					}
					default:
					{
						throw new NoViableAltException(LT(1), getFilename());
					}
					}
					}
				}
			else {
				throw new NoViableAltException(LT(1), getFilename());
			}
			}
			}
			elementNoOptionSpec_AST = (GrammarAST)currentAST.root;
		}
		catch (RecognitionException ex) {
			reportError(ex);
			recover(ex,_tokenSet_25);
		}
		returnAST = elementNoOptionSpec_AST;
	}
	
	public final void atom() throws RecognitionException, TokenStreamException {
		
		returnAST = null;
		ASTPair currentAST = new ASTPair();
		GrammarAST atom_AST = null;
		Token  w = null;
		GrammarAST w_AST = null;
		
		try {      // for error handling
			if ((LA(1)==CHAR_LITERAL) && (LA(2)==RANGE)) {
				range();
				astFactory.addASTChild(currentAST, returnAST);
				{
				switch ( LA(1)) {
				case ROOT:
				{
					GrammarAST tmp55_AST = null;
					tmp55_AST = (GrammarAST)astFactory.create(LT(1));
					astFactory.makeASTRoot(currentAST, tmp55_AST);
					match(ROOT);
					break;
				}
				case BANG:
				{
					GrammarAST tmp56_AST = null;
					tmp56_AST = (GrammarAST)astFactory.create(LT(1));
					astFactory.makeASTRoot(currentAST, tmp56_AST);
					match(BANG);
					break;
				}
				case FORCED_ACTION:
				case ACTION:
				case SEMI:
				case STRING_LITERAL:
				case CHAR_LITERAL:
				case STAR:
				case TOKEN_REF:
				case LPAREN:
				case OR:
				case RPAREN:
				case SEMPRED:
				case WILDCARD:
				case RULE_REF:
				case NOT:
				case TREE_BEGIN:
				case QUESTION:
				case PLUS:
				case REWRITE:
				{
					break;
				}
				default:
				{
					throw new NoViableAltException(LT(1), getFilename());
				}
				}
				}
				atom_AST = (GrammarAST)currentAST.root;
			}
			else if ((_tokenSet_29.member(LA(1))) && (_tokenSet_30.member(LA(2)))) {
				{
				if (((LA(1)==TOKEN_REF||LA(1)==RULE_REF) && (LA(2)==WILDCARD) && (_tokenSet_29.member(LA(3))))&&(LT(1).getColumn()+LT(1).getText().length()==LT(2).getColumn()&&
			 LT(2).getColumn()+1==LT(3).getColumn())) {
					id();
					astFactory.addASTChild(currentAST, returnAST);
					w = LT(1);
					w_AST = (GrammarAST)astFactory.create(w);
					astFactory.makeASTRoot(currentAST, w_AST);
					match(WILDCARD);
					{
					switch ( LA(1)) {
					case STRING_LITERAL:
					case CHAR_LITERAL:
					case TOKEN_REF:
					case WILDCARD:
					{
						terminal();
						astFactory.addASTChild(currentAST, returnAST);
						break;
					}
					case RULE_REF:
					{
						ruleref();
						astFactory.addASTChild(currentAST, returnAST);
						break;
					}
					default:
					{
						throw new NoViableAltException(LT(1), getFilename());
					}
					}
					}
					w_AST.setType(DOT);
				}
				else if ((_tokenSet_31.member(LA(1))) && (_tokenSet_30.member(LA(2))) && (_tokenSet_20.member(LA(3)))) {
					terminal();
					astFactory.addASTChild(currentAST, returnAST);
				}
				else if ((LA(1)==RULE_REF) && (_tokenSet_32.member(LA(2))) && (_tokenSet_20.member(LA(3)))) {
					ruleref();
					astFactory.addASTChild(currentAST, returnAST);
				}
				else {
					throw new NoViableAltException(LT(1), getFilename());
				}
				
				}
				atom_AST = (GrammarAST)currentAST.root;
			}
			else if ((LA(1)==NOT)) {
				notSet();
				astFactory.addASTChild(currentAST, returnAST);
				{
				switch ( LA(1)) {
				case ROOT:
				{
					GrammarAST tmp57_AST = null;
					tmp57_AST = (GrammarAST)astFactory.create(LT(1));
					astFactory.makeASTRoot(currentAST, tmp57_AST);
					match(ROOT);
					break;
				}
				case BANG:
				{
					GrammarAST tmp58_AST = null;
					tmp58_AST = (GrammarAST)astFactory.create(LT(1));
					astFactory.makeASTRoot(currentAST, tmp58_AST);
					match(BANG);
					break;
				}
				case FORCED_ACTION:
				case ACTION:
				case SEMI:
				case STRING_LITERAL:
				case CHAR_LITERAL:
				case STAR:
				case TOKEN_REF:
				case LPAREN:
				case OR:
				case RPAREN:
				case SEMPRED:
				case WILDCARD:
				case RULE_REF:
				case NOT:
				case TREE_BEGIN:
				case QUESTION:
				case PLUS:
				case REWRITE:
				{
					break;
				}
				default:
				{
					throw new NoViableAltException(LT(1), getFilename());
				}
				}
				}
				atom_AST = (GrammarAST)currentAST.root;
			}
			else {
				throw new NoViableAltException(LT(1), getFilename());
			}
			
		}
		catch (RecognitionException ex) {
			reportError(ex);
			recover(ex,_tokenSet_33);
		}
		returnAST = atom_AST;
	}
	
	public final GrammarAST  ebnfSuffix(
		GrammarAST elemAST, boolean inRewrite
	) throws RecognitionException, TokenStreamException {
		GrammarAST subrule=null;
		
		returnAST = null;
		ASTPair currentAST = new ASTPair();
		GrammarAST ebnfSuffix_AST = null;
		
		GrammarAST ebnfRoot=null;
		
		
		try {      // for error handling
			{
			switch ( LA(1)) {
			case QUESTION:
			{
				GrammarAST tmp59_AST = null;
				tmp59_AST = (GrammarAST)astFactory.create(LT(1));
				match(QUESTION);
				ebnfRoot = (GrammarAST)astFactory.create(OPTIONAL,"?");
				break;
			}
			case STAR:
			{
				GrammarAST tmp60_AST = null;
				tmp60_AST = (GrammarAST)astFactory.create(LT(1));
				match(STAR);
				ebnfRoot = (GrammarAST)astFactory.create(CLOSURE,"*");
				break;
			}
			case PLUS:
			{
				GrammarAST tmp61_AST = null;
				tmp61_AST = (GrammarAST)astFactory.create(LT(1));
				match(PLUS);
				ebnfRoot = (GrammarAST)astFactory.create(POSITIVE_CLOSURE,"+");
				break;
			}
			default:
			{
				throw new NoViableAltException(LT(1), getFilename());
			}
			}
			}
			
					GrammarAST save = currentBlockAST;
				ebnfRoot.setLine(elemAST.getLine());
				ebnfRoot.setColumn(elemAST.getColumn());
				GrammarAST blkRoot = (GrammarAST)astFactory.create(BLOCK,"BLOCK");
				currentBlockAST = blkRoot;
				GrammarAST eob = (GrammarAST)astFactory.create(EOB,"<end-of-block>");
					eob.setLine(elemAST.getLine());
					eob.setColumn(elemAST.getColumn());
					GrammarAST alt = (GrammarAST)astFactory.make( (new ASTArray(3)).add((GrammarAST)astFactory.create(ALT,"ALT")).add(elemAST).add((GrammarAST)astFactory.create(EOA,"<end-of-alt>")));
				if ( !inRewrite ) {
					prefixWithSynPred(alt);
				}
					subrule =
					     (GrammarAST)astFactory.make( (new ASTArray(2)).add(ebnfRoot).add((GrammarAST)astFactory.make( (new ASTArray(3)).add(blkRoot).add(alt).add(eob))));
					currentBlockAST = save;
					
		}
		catch (RecognitionException ex) {
			reportError(ex);
			recover(ex,_tokenSet_34);
		}
		returnAST = ebnfSuffix_AST;
		return subrule;
	}
	
/** matches ENBF blocks (and sets via block rule) */
	public final void ebnf() throws RecognitionException, TokenStreamException {
		
		returnAST = null;
		ASTPair currentAST = new ASTPair();
		GrammarAST ebnf_AST = null;
		GrammarAST b_AST = null;
		
		int line = LT(1).getLine();
		int col = LT(1).getColumn();
		
		
		try {      // for error handling
			block();
			b_AST = (GrammarAST)returnAST;
			{
			switch ( LA(1)) {
			case QUESTION:
			{
				GrammarAST tmp62_AST = null;
				tmp62_AST = (GrammarAST)astFactory.create(LT(1));
				match(QUESTION);
				ebnf_AST = (GrammarAST)currentAST.root;
				ebnf_AST=(GrammarAST)astFactory.make( (new ASTArray(2)).add((GrammarAST)astFactory.create(OPTIONAL,"?")).add(b_AST));
				currentAST.root = ebnf_AST;
				currentAST.child = ebnf_AST!=null &&ebnf_AST.getFirstChild()!=null ?
					ebnf_AST.getFirstChild() : ebnf_AST;
				currentAST.advanceChildToEnd();
				break;
			}
			case STAR:
			{
				GrammarAST tmp63_AST = null;
				tmp63_AST = (GrammarAST)astFactory.create(LT(1));
				match(STAR);
				ebnf_AST = (GrammarAST)currentAST.root;
				ebnf_AST=(GrammarAST)astFactory.make( (new ASTArray(2)).add((GrammarAST)astFactory.create(CLOSURE,"*")).add(b_AST));
				currentAST.root = ebnf_AST;
				currentAST.child = ebnf_AST!=null &&ebnf_AST.getFirstChild()!=null ?
					ebnf_AST.getFirstChild() : ebnf_AST;
				currentAST.advanceChildToEnd();
				break;
			}
			case PLUS:
			{
				GrammarAST tmp64_AST = null;
				tmp64_AST = (GrammarAST)astFactory.create(LT(1));
				match(PLUS);
				ebnf_AST = (GrammarAST)currentAST.root;
				ebnf_AST=(GrammarAST)astFactory.make( (new ASTArray(2)).add((GrammarAST)astFactory.create(POSITIVE_CLOSURE,"+")).add(b_AST));
				currentAST.root = ebnf_AST;
				currentAST.child = ebnf_AST!=null &&ebnf_AST.getFirstChild()!=null ?
					ebnf_AST.getFirstChild() : ebnf_AST;
				currentAST.advanceChildToEnd();
				break;
			}
			case IMPLIES:
			{
				match(IMPLIES);
				ebnf_AST = (GrammarAST)currentAST.root;
				
							if ( gtype==COMBINED_GRAMMAR &&
							     Character.isUpperCase(currentRuleName.charAt(0)) )
						    {
				// ignore for lexer rules in combined
						    	ebnf_AST = (GrammarAST)astFactory.make( (new ASTArray(2)).add((GrammarAST)astFactory.create(SYNPRED,"=>")).add(b_AST)); 
						    }
						    else {
						    	// create manually specified (...)=> predicate;
				// convert to sempred
						    	ebnf_AST = createSynSemPredFromBlock(b_AST, SYN_SEMPRED);
							}
							
				currentAST.root = ebnf_AST;
				currentAST.child = ebnf_AST!=null &&ebnf_AST.getFirstChild()!=null ?
					ebnf_AST.getFirstChild() : ebnf_AST;
				currentAST.advanceChildToEnd();
				break;
			}
			case ROOT:
			{
				GrammarAST tmp66_AST = null;
				tmp66_AST = (GrammarAST)astFactory.create(LT(1));
				match(ROOT);
				ebnf_AST = (GrammarAST)currentAST.root;
				ebnf_AST = (GrammarAST)astFactory.make( (new ASTArray(2)).add(tmp66_AST).add(b_AST));
				currentAST.root = ebnf_AST;
				currentAST.child = ebnf_AST!=null &&ebnf_AST.getFirstChild()!=null ?
					ebnf_AST.getFirstChild() : ebnf_AST;
				currentAST.advanceChildToEnd();
				break;
			}
			case BANG:
			{
				GrammarAST tmp67_AST = null;
				tmp67_AST = (GrammarAST)astFactory.create(LT(1));
				match(BANG);
				ebnf_AST = (GrammarAST)currentAST.root;
				ebnf_AST = (GrammarAST)astFactory.make( (new ASTArray(2)).add(tmp67_AST).add(b_AST));
				currentAST.root = ebnf_AST;
				currentAST.child = ebnf_AST!=null &&ebnf_AST.getFirstChild()!=null ?
					ebnf_AST.getFirstChild() : ebnf_AST;
				currentAST.advanceChildToEnd();
				break;
			}
			case FORCED_ACTION:
			case ACTION:
			case SEMI:
			case STRING_LITERAL:
			case CHAR_LITERAL:
			case TOKEN_REF:
			case LPAREN:
			case OR:
			case RPAREN:
			case SEMPRED:
			case WILDCARD:
			case RULE_REF:
			case NOT:
			case TREE_BEGIN:
			case REWRITE:
			{
				ebnf_AST = (GrammarAST)currentAST.root;
				ebnf_AST = b_AST;
				currentAST.root = ebnf_AST;
				currentAST.child = ebnf_AST!=null &&ebnf_AST.getFirstChild()!=null ?
					ebnf_AST.getFirstChild() : ebnf_AST;
				currentAST.advanceChildToEnd();
				break;
			}
			default:
			{
				throw new NoViableAltException(LT(1), getFilename());
			}
			}
			}
			ebnf_AST = (GrammarAST)currentAST.root;
			ebnf_AST.setLine(line); ebnf_AST.setColumn(col);
		}
		catch (RecognitionException ex) {
			reportError(ex);
			recover(ex,_tokenSet_25);
		}
		returnAST = ebnf_AST;
	}
	
	public final void tree() throws RecognitionException, TokenStreamException {
		
		returnAST = null;
		ASTPair currentAST = new ASTPair();
		GrammarAST tree_AST = null;
		
		try {      // for error handling
			GrammarAST tmp68_AST = null;
			tmp68_AST = (GrammarAST)astFactory.create(LT(1));
			astFactory.makeASTRoot(currentAST, tmp68_AST);
			match(TREE_BEGIN);
			treeRoot();
			astFactory.addASTChild(currentAST, returnAST);
			{
			int _cnt101=0;
			_loop101:
			do {
				if ((_tokenSet_22.member(LA(1)))) {
					element();
					astFactory.addASTChild(currentAST, returnAST);
				}
				else {
					if ( _cnt101>=1 ) { break _loop101; } else {throw new NoViableAltException(LT(1), getFilename());}
				}
				
				_cnt101++;
			} while (true);
			}
			match(RPAREN);
			tree_AST = (GrammarAST)currentAST.root;
		}
		catch (RecognitionException ex) {
			reportError(ex);
			recover(ex,_tokenSet_25);
		}
		returnAST = tree_AST;
	}
	
	public final void range() throws RecognitionException, TokenStreamException {
		
		returnAST = null;
		ASTPair currentAST = new ASTPair();
		GrammarAST range_AST = null;
		Token  c1 = null;
		GrammarAST c1_AST = null;
		Token  c2 = null;
		GrammarAST c2_AST = null;
		
		GrammarAST subrule=null, root=null;
		
		
		try {      // for error handling
			c1 = LT(1);
			c1_AST = (GrammarAST)astFactory.create(c1);
			match(CHAR_LITERAL);
			GrammarAST tmp70_AST = null;
			tmp70_AST = (GrammarAST)astFactory.create(LT(1));
			match(RANGE);
			c2 = LT(1);
			c2_AST = (GrammarAST)astFactory.create(c2);
			match(CHAR_LITERAL);
			range_AST = (GrammarAST)currentAST.root;
			
					GrammarAST r = (GrammarAST)astFactory.create(CHAR_RANGE,"..");
					r.setLine(c1.getLine());
					r.setColumn(c1.getColumn());
					range_AST = (GrammarAST)astFactory.make( (new ASTArray(3)).add(r).add(c1_AST).add(c2_AST));
					root = range_AST;
					
			currentAST.root = range_AST;
			currentAST.child = range_AST!=null &&range_AST.getFirstChild()!=null ?
				range_AST.getFirstChild() : range_AST;
			currentAST.advanceChildToEnd();
		}
		catch (RecognitionException ex) {
			reportError(ex);
			recover(ex,_tokenSet_35);
		}
		returnAST = range_AST;
	}
	
	public final void terminal() throws RecognitionException, TokenStreamException {
		
		returnAST = null;
		ASTPair currentAST = new ASTPair();
		GrammarAST terminal_AST = null;
		Token  cl = null;
		GrammarAST cl_AST = null;
		Token  tr = null;
		GrammarAST tr_AST = null;
		Token  sl = null;
		GrammarAST sl_AST = null;
		Token  wi = null;
		GrammarAST wi_AST = null;
		
		GrammarAST ebnfRoot=null, subrule=null;
		
		
		try {      // for error handling
			switch ( LA(1)) {
			case CHAR_LITERAL:
			{
				cl = LT(1);
				cl_AST = (GrammarAST)astFactory.create(cl);
				astFactory.makeASTRoot(currentAST, cl_AST);
				match(CHAR_LITERAL);
				{
				switch ( LA(1)) {
				case OPEN_ELEMENT_OPTION:
				{
					elementOptions(cl_AST);
					break;
				}
				case FORCED_ACTION:
				case ACTION:
				case SEMI:
				case STRING_LITERAL:
				case CHAR_LITERAL:
				case STAR:
				case TOKEN_REF:
				case BANG:
				case LPAREN:
				case OR:
				case RPAREN:
				case SEMPRED:
				case ROOT:
				case WILDCARD:
				case RULE_REF:
				case NOT:
				case TREE_BEGIN:
				case QUESTION:
				case PLUS:
				case REWRITE:
				{
					break;
				}
				default:
				{
					throw new NoViableAltException(LT(1), getFilename());
				}
				}
				}
				{
				switch ( LA(1)) {
				case ROOT:
				{
					GrammarAST tmp71_AST = null;
					tmp71_AST = (GrammarAST)astFactory.create(LT(1));
					astFactory.makeASTRoot(currentAST, tmp71_AST);
					match(ROOT);
					break;
				}
				case BANG:
				{
					GrammarAST tmp72_AST = null;
					tmp72_AST = (GrammarAST)astFactory.create(LT(1));
					astFactory.makeASTRoot(currentAST, tmp72_AST);
					match(BANG);
					break;
				}
				case FORCED_ACTION:
				case ACTION:
				case SEMI:
				case STRING_LITERAL:
				case CHAR_LITERAL:
				case STAR:
				case TOKEN_REF:
				case LPAREN:
				case OR:
				case RPAREN:
				case SEMPRED:
				case WILDCARD:
				case RULE_REF:
				case NOT:
				case TREE_BEGIN:
				case QUESTION:
				case PLUS:
				case REWRITE:
				{
					break;
				}
				default:
				{
					throw new NoViableAltException(LT(1), getFilename());
				}
				}
				}
				terminal_AST = (GrammarAST)currentAST.root;
				break;
			}
			case TOKEN_REF:
			{
				tr = LT(1);
				tr_AST = (GrammarAST)astFactory.create(tr);
				astFactory.makeASTRoot(currentAST, tr_AST);
				match(TOKEN_REF);
				{
				switch ( LA(1)) {
				case OPEN_ELEMENT_OPTION:
				{
					elementOptions(tr_AST);
					break;
				}
				case FORCED_ACTION:
				case ACTION:
				case SEMI:
				case STRING_LITERAL:
				case CHAR_LITERAL:
				case STAR:
				case TOKEN_REF:
				case BANG:
				case ARG_ACTION:
				case LPAREN:
				case OR:
				case RPAREN:
				case SEMPRED:
				case ROOT:
				case WILDCARD:
				case RULE_REF:
				case NOT:
				case TREE_BEGIN:
				case QUESTION:
				case PLUS:
				case REWRITE:
				{
					break;
				}
				default:
				{
					throw new NoViableAltException(LT(1), getFilename());
				}
				}
				}
				{
				switch ( LA(1)) {
				case ARG_ACTION:
				{
					GrammarAST tmp73_AST = null;
					tmp73_AST = (GrammarAST)astFactory.create(LT(1));
					astFactory.addASTChild(currentAST, tmp73_AST);
					match(ARG_ACTION);
					break;
				}
				case FORCED_ACTION:
				case ACTION:
				case SEMI:
				case STRING_LITERAL:
				case CHAR_LITERAL:
				case STAR:
				case TOKEN_REF:
				case BANG:
				case LPAREN:
				case OR:
				case RPAREN:
				case SEMPRED:
				case ROOT:
				case WILDCARD:
				case RULE_REF:
				case NOT:
				case TREE_BEGIN:
				case QUESTION:
				case PLUS:
				case REWRITE:
				{
					break;
				}
				default:
				{
					throw new NoViableAltException(LT(1), getFilename());
				}
				}
				}
				{
				switch ( LA(1)) {
				case ROOT:
				{
					GrammarAST tmp74_AST = null;
					tmp74_AST = (GrammarAST)astFactory.create(LT(1));
					astFactory.makeASTRoot(currentAST, tmp74_AST);
					match(ROOT);
					break;
				}
				case BANG:
				{
					GrammarAST tmp75_AST = null;
					tmp75_AST = (GrammarAST)astFactory.create(LT(1));
					astFactory.makeASTRoot(currentAST, tmp75_AST);
					match(BANG);
					break;
				}
				case FORCED_ACTION:
				case ACTION:
				case SEMI:
				case STRING_LITERAL:
				case CHAR_LITERAL:
				case STAR:
				case TOKEN_REF:
				case LPAREN:
				case OR:
				case RPAREN:
				case SEMPRED:
				case WILDCARD:
				case RULE_REF:
				case NOT:
				case TREE_BEGIN:
				case QUESTION:
				case PLUS:
				case REWRITE:
				{
					break;
				}
				default:
				{
					throw new NoViableAltException(LT(1), getFilename());
				}
				}
				}
				terminal_AST = (GrammarAST)currentAST.root;
				break;
			}
			case STRING_LITERAL:
			{
				sl = LT(1);
				sl_AST = (GrammarAST)astFactory.create(sl);
				astFactory.makeASTRoot(currentAST, sl_AST);
				match(STRING_LITERAL);
				{
				switch ( LA(1)) {
				case OPEN_ELEMENT_OPTION:
				{
					elementOptions(sl_AST);
					break;
				}
				case FORCED_ACTION:
				case ACTION:
				case SEMI:
				case STRING_LITERAL:
				case CHAR_LITERAL:
				case STAR:
				case TOKEN_REF:
				case BANG:
				case LPAREN:
				case OR:
				case RPAREN:
				case SEMPRED:
				case ROOT:
				case WILDCARD:
				case RULE_REF:
				case NOT:
				case TREE_BEGIN:
				case QUESTION:
				case PLUS:
				case REWRITE:
				{
					break;
				}
				default:
				{
					throw new NoViableAltException(LT(1), getFilename());
				}
				}
				}
				{
				switch ( LA(1)) {
				case ROOT:
				{
					GrammarAST tmp76_AST = null;
					tmp76_AST = (GrammarAST)astFactory.create(LT(1));
					astFactory.makeASTRoot(currentAST, tmp76_AST);
					match(ROOT);
					break;
				}
				case BANG:
				{
					GrammarAST tmp77_AST = null;
					tmp77_AST = (GrammarAST)astFactory.create(LT(1));
					astFactory.makeASTRoot(currentAST, tmp77_AST);
					match(BANG);
					break;
				}
				case FORCED_ACTION:
				case ACTION:
				case SEMI:
				case STRING_LITERAL:
				case CHAR_LITERAL:
				case STAR:
				case TOKEN_REF:
				case LPAREN:
				case OR:
				case RPAREN:
				case SEMPRED:
				case WILDCARD:
				case RULE_REF:
				case NOT:
				case TREE_BEGIN:
				case QUESTION:
				case PLUS:
				case REWRITE:
				{
					break;
				}
				default:
				{
					throw new NoViableAltException(LT(1), getFilename());
				}
				}
				}
				terminal_AST = (GrammarAST)currentAST.root;
				break;
			}
			case WILDCARD:
			{
				wi = LT(1);
				wi_AST = (GrammarAST)astFactory.create(wi);
				astFactory.addASTChild(currentAST, wi_AST);
				match(WILDCARD);
				{
				switch ( LA(1)) {
				case ROOT:
				{
					GrammarAST tmp78_AST = null;
					tmp78_AST = (GrammarAST)astFactory.create(LT(1));
					astFactory.makeASTRoot(currentAST, tmp78_AST);
					match(ROOT);
					break;
				}
				case BANG:
				{
					GrammarAST tmp79_AST = null;
					tmp79_AST = (GrammarAST)astFactory.create(LT(1));
					astFactory.makeASTRoot(currentAST, tmp79_AST);
					match(BANG);
					break;
				}
				case FORCED_ACTION:
				case ACTION:
				case SEMI:
				case STRING_LITERAL:
				case CHAR_LITERAL:
				case STAR:
				case TOKEN_REF:
				case LPAREN:
				case OR:
				case RPAREN:
				case SEMPRED:
				case WILDCARD:
				case RULE_REF:
				case NOT:
				case TREE_BEGIN:
				case QUESTION:
				case PLUS:
				case REWRITE:
				{
					break;
				}
				default:
				{
					throw new NoViableAltException(LT(1), getFilename());
				}
				}
				}
				
						if ( atTreeRoot ) {
						    ErrorManager.syntaxError(
							    ErrorManager.MSG_WILDCARD_AS_ROOT,grammar,wi,null,null);
					    }
					
				terminal_AST = (GrammarAST)currentAST.root;
				break;
			}
			default:
			{
				throw new NoViableAltException(LT(1), getFilename());
			}
			}
		}
		catch (RecognitionException ex) {
			reportError(ex);
			recover(ex,_tokenSet_33);
		}
		returnAST = terminal_AST;
	}
	
	public final void ruleref() throws RecognitionException, TokenStreamException {
		
		returnAST = null;
		ASTPair currentAST = new ASTPair();
		GrammarAST ruleref_AST = null;
		Token  rr = null;
		GrammarAST rr_AST = null;
		
		try {      // for error handling
			rr = LT(1);
			rr_AST = (GrammarAST)astFactory.create(rr);
			astFactory.makeASTRoot(currentAST, rr_AST);
			match(RULE_REF);
			{
			switch ( LA(1)) {
			case ARG_ACTION:
			{
				GrammarAST tmp80_AST = null;
				tmp80_AST = (GrammarAST)astFactory.create(LT(1));
				astFactory.addASTChild(currentAST, tmp80_AST);
				match(ARG_ACTION);
				break;
			}
			case FORCED_ACTION:
			case ACTION:
			case SEMI:
			case STRING_LITERAL:
			case CHAR_LITERAL:
			case STAR:
			case TOKEN_REF:
			case BANG:
			case LPAREN:
			case OR:
			case RPAREN:
			case SEMPRED:
			case ROOT:
			case WILDCARD:
			case RULE_REF:
			case NOT:
			case TREE_BEGIN:
			case QUESTION:
			case PLUS:
			case REWRITE:
			{
				break;
			}
			default:
			{
				throw new NoViableAltException(LT(1), getFilename());
			}
			}
			}
			{
			switch ( LA(1)) {
			case ROOT:
			{
				GrammarAST tmp81_AST = null;
				tmp81_AST = (GrammarAST)astFactory.create(LT(1));
				astFactory.makeASTRoot(currentAST, tmp81_AST);
				match(ROOT);
				break;
			}
			case BANG:
			{
				GrammarAST tmp82_AST = null;
				tmp82_AST = (GrammarAST)astFactory.create(LT(1));
				astFactory.makeASTRoot(currentAST, tmp82_AST);
				match(BANG);
				break;
			}
			case FORCED_ACTION:
			case ACTION:
			case SEMI:
			case STRING_LITERAL:
			case CHAR_LITERAL:
			case STAR:
			case TOKEN_REF:
			case LPAREN:
			case OR:
			case RPAREN:
			case SEMPRED:
			case WILDCARD:
			case RULE_REF:
			case NOT:
			case TREE_BEGIN:
			case QUESTION:
			case PLUS:
			case REWRITE:
			{
				break;
			}
			default:
			{
				throw new NoViableAltException(LT(1), getFilename());
			}
			}
			}
			ruleref_AST = (GrammarAST)currentAST.root;
		}
		catch (RecognitionException ex) {
			reportError(ex);
			recover(ex,_tokenSet_33);
		}
		returnAST = ruleref_AST;
	}
	
	public final void notSet() throws RecognitionException, TokenStreamException {
		
		returnAST = null;
		ASTPair currentAST = new ASTPair();
		GrammarAST notSet_AST = null;
		Token  n = null;
		GrammarAST n_AST = null;
		
		int line = LT(1).getLine();
		int col = LT(1).getColumn();
		GrammarAST subrule=null;
		
		
		try {      // for error handling
			n = LT(1);
			n_AST = (GrammarAST)astFactory.create(n);
			astFactory.makeASTRoot(currentAST, n_AST);
			match(NOT);
			{
			switch ( LA(1)) {
			case STRING_LITERAL:
			case CHAR_LITERAL:
			case TOKEN_REF:
			{
				notTerminal();
				astFactory.addASTChild(currentAST, returnAST);
				break;
			}
			case LPAREN:
			{
				block();
				astFactory.addASTChild(currentAST, returnAST);
				break;
			}
			default:
			{
				throw new NoViableAltException(LT(1), getFilename());
			}
			}
			}
			notSet_AST = (GrammarAST)currentAST.root;
			notSet_AST.setLine(line); notSet_AST.setColumn(col);
			notSet_AST = (GrammarAST)currentAST.root;
		}
		catch (RecognitionException ex) {
			reportError(ex);
			recover(ex,_tokenSet_35);
		}
		returnAST = notSet_AST;
	}
	
	public final void notTerminal() throws RecognitionException, TokenStreamException {
		
		returnAST = null;
		ASTPair currentAST = new ASTPair();
		GrammarAST notTerminal_AST = null;
		Token  cl = null;
		GrammarAST cl_AST = null;
		Token  tr = null;
		GrammarAST tr_AST = null;
		
		try {      // for error handling
			switch ( LA(1)) {
			case CHAR_LITERAL:
			{
				cl = LT(1);
				cl_AST = (GrammarAST)astFactory.create(cl);
				astFactory.addASTChild(currentAST, cl_AST);
				match(CHAR_LITERAL);
				notTerminal_AST = (GrammarAST)currentAST.root;
				break;
			}
			case TOKEN_REF:
			{
				tr = LT(1);
				tr_AST = (GrammarAST)astFactory.create(tr);
				astFactory.addASTChild(currentAST, tr_AST);
				match(TOKEN_REF);
				notTerminal_AST = (GrammarAST)currentAST.root;
				break;
			}
			case STRING_LITERAL:
			{
				GrammarAST tmp83_AST = null;
				tmp83_AST = (GrammarAST)astFactory.create(LT(1));
				astFactory.addASTChild(currentAST, tmp83_AST);
				match(STRING_LITERAL);
				notTerminal_AST = (GrammarAST)currentAST.root;
				break;
			}
			default:
			{
				throw new NoViableAltException(LT(1), getFilename());
			}
			}
		}
		catch (RecognitionException ex) {
			reportError(ex);
			recover(ex,_tokenSet_35);
		}
		returnAST = notTerminal_AST;
	}
	
	public final void treeRoot() throws RecognitionException, TokenStreamException {
		
		returnAST = null;
		ASTPair currentAST = new ASTPair();
		GrammarAST treeRoot_AST = null;
		
		try {      // for error handling
			atTreeRoot=true;
			{
			if ((LA(1)==TOKEN_REF||LA(1)==RULE_REF) && (LA(2)==ASSIGN||LA(2)==PLUS_ASSIGN)) {
				id();
				astFactory.addASTChild(currentAST, returnAST);
				{
				switch ( LA(1)) {
				case ASSIGN:
				{
					GrammarAST tmp84_AST = null;
					tmp84_AST = (GrammarAST)astFactory.create(LT(1));
					astFactory.makeASTRoot(currentAST, tmp84_AST);
					match(ASSIGN);
					break;
				}
				case PLUS_ASSIGN:
				{
					GrammarAST tmp85_AST = null;
					tmp85_AST = (GrammarAST)astFactory.create(LT(1));
					astFactory.makeASTRoot(currentAST, tmp85_AST);
					match(PLUS_ASSIGN);
					break;
				}
				default:
				{
					throw new NoViableAltException(LT(1), getFilename());
				}
				}
				}
				{
				switch ( LA(1)) {
				case STRING_LITERAL:
				case CHAR_LITERAL:
				case TOKEN_REF:
				case WILDCARD:
				case RULE_REF:
				case NOT:
				{
					atom();
					astFactory.addASTChild(currentAST, returnAST);
					break;
				}
				case LPAREN:
				{
					block();
					astFactory.addASTChild(currentAST, returnAST);
					break;
				}
				default:
				{
					throw new NoViableAltException(LT(1), getFilename());
				}
				}
				}
			}
			else if ((_tokenSet_27.member(LA(1))) && (_tokenSet_36.member(LA(2)))) {
				atom();
				astFactory.addASTChild(currentAST, returnAST);
			}
			else if ((LA(1)==LPAREN)) {
				block();
				astFactory.addASTChild(currentAST, returnAST);
			}
			else {
				throw new NoViableAltException(LT(1), getFilename());
			}
			
			}
			atTreeRoot=false;
			treeRoot_AST = (GrammarAST)currentAST.root;
		}
		catch (RecognitionException ex) {
			reportError(ex);
			recover(ex,_tokenSet_22);
		}
		returnAST = treeRoot_AST;
	}
	
	public final void elementOptions(
		GrammarAST terminalAST
	) throws RecognitionException, TokenStreamException {
		
		returnAST = null;
		ASTPair currentAST = new ASTPair();
		GrammarAST elementOptions_AST = null;
		
		try {      // for error handling
			if ((LA(1)==OPEN_ELEMENT_OPTION) && (LA(2)==TOKEN_REF||LA(2)==RULE_REF) && (LA(3)==WILDCARD||LA(3)==CLOSE_ELEMENT_OPTION)) {
				GrammarAST tmp86_AST = null;
				tmp86_AST = (GrammarAST)astFactory.create(LT(1));
				astFactory.makeASTRoot(currentAST, tmp86_AST);
				match(OPEN_ELEMENT_OPTION);
				defaultNodeOption(terminalAST);
				astFactory.addASTChild(currentAST, returnAST);
				match(CLOSE_ELEMENT_OPTION);
				elementOptions_AST = (GrammarAST)currentAST.root;
			}
			else if ((LA(1)==OPEN_ELEMENT_OPTION) && (LA(2)==TOKEN_REF||LA(2)==RULE_REF) && (LA(3)==ASSIGN)) {
				GrammarAST tmp88_AST = null;
				tmp88_AST = (GrammarAST)astFactory.create(LT(1));
				astFactory.makeASTRoot(currentAST, tmp88_AST);
				match(OPEN_ELEMENT_OPTION);
				elementOption(terminalAST);
				astFactory.addASTChild(currentAST, returnAST);
				{
				_loop116:
				do {
					if ((LA(1)==SEMI)) {
						match(SEMI);
						elementOption(terminalAST);
						astFactory.addASTChild(currentAST, returnAST);
					}
					else {
						break _loop116;
					}
					
				} while (true);
				}
				match(CLOSE_ELEMENT_OPTION);
				elementOptions_AST = (GrammarAST)currentAST.root;
			}
			else {
				throw new NoViableAltException(LT(1), getFilename());
			}
			
		}
		catch (RecognitionException ex) {
			reportError(ex);
			recover(ex,_tokenSet_37);
		}
		returnAST = elementOptions_AST;
	}
	
	public final void defaultNodeOption(
		GrammarAST terminalAST
	) throws RecognitionException, TokenStreamException {
		
		returnAST = null;
		ASTPair currentAST = new ASTPair();
		GrammarAST defaultNodeOption_AST = null;
		GrammarAST i_AST = null;
		GrammarAST i2_AST = null;
		
		StringBuffer buf = new StringBuffer();
		
		
		try {      // for error handling
			id();
			i_AST = (GrammarAST)returnAST;
			astFactory.addASTChild(currentAST, returnAST);
			buf.append(i_AST.getText());
			{
			_loop119:
			do {
				if ((LA(1)==WILDCARD)) {
					GrammarAST tmp91_AST = null;
					tmp91_AST = (GrammarAST)astFactory.create(LT(1));
					astFactory.addASTChild(currentAST, tmp91_AST);
					match(WILDCARD);
					id();
					i2_AST = (GrammarAST)returnAST;
					astFactory.addASTChild(currentAST, returnAST);
					buf.append("."+i2_AST.getText());
				}
				else {
					break _loop119;
				}
				
			} while (true);
			}
			terminalAST.setTerminalOption(grammar,Grammar.defaultTokenOption,buf.toString());
			defaultNodeOption_AST = (GrammarAST)currentAST.root;
		}
		catch (RecognitionException ex) {
			reportError(ex);
			recover(ex,_tokenSet_38);
		}
		returnAST = defaultNodeOption_AST;
	}
	
	public final void elementOption(
		GrammarAST terminalAST
	) throws RecognitionException, TokenStreamException {
		
		returnAST = null;
		ASTPair currentAST = new ASTPair();
		GrammarAST elementOption_AST = null;
		GrammarAST a_AST = null;
		GrammarAST b_AST = null;
		Token  s = null;
		GrammarAST s_AST = null;
		
		try {      // for error handling
			id();
			a_AST = (GrammarAST)returnAST;
			astFactory.addASTChild(currentAST, returnAST);
			GrammarAST tmp92_AST = null;
			tmp92_AST = (GrammarAST)astFactory.create(LT(1));
			astFactory.makeASTRoot(currentAST, tmp92_AST);
			match(ASSIGN);
			{
			switch ( LA(1)) {
			case TOKEN_REF:
			case RULE_REF:
			{
				id();
				b_AST = (GrammarAST)returnAST;
				astFactory.addASTChild(currentAST, returnAST);
				break;
			}
			case STRING_LITERAL:
			{
				s = LT(1);
				s_AST = (GrammarAST)astFactory.create(s);
				astFactory.addASTChild(currentAST, s_AST);
				match(STRING_LITERAL);
				break;
			}
			default:
			{
				throw new NoViableAltException(LT(1), getFilename());
			}
			}
			}
			
					Object v = (b_AST!=null)?b_AST.getText():s_AST.getText();
					terminalAST.setTerminalOption(grammar,a_AST.getText(),v);
					
			elementOption_AST = (GrammarAST)currentAST.root;
		}
		catch (RecognitionException ex) {
			reportError(ex);
			recover(ex,_tokenSet_39);
		}
		returnAST = elementOption_AST;
	}
	
	public final void rewrite_alternative() throws RecognitionException, TokenStreamException {
		
		returnAST = null;
		ASTPair currentAST = new ASTPair();
		GrammarAST rewrite_alternative_AST = null;
		
		GrammarAST eoa = (GrammarAST)astFactory.create(EOA,"<end-of-alt>");
		GrammarAST altRoot = (GrammarAST)astFactory.create(ALT,"ALT");
		altRoot.setLine(LT(1).getLine());
		altRoot.setColumn(LT(1).getColumn());
		
		
		try {      // for error handling
			if (((_tokenSet_40.member(LA(1))) && (_tokenSet_41.member(LA(2))) && (_tokenSet_42.member(LA(3))))&&(grammar.buildTemplate())) {
				rewrite_template();
				astFactory.addASTChild(currentAST, returnAST);
				rewrite_alternative_AST = (GrammarAST)currentAST.root;
			}
			else if (((_tokenSet_43.member(LA(1))) && (_tokenSet_44.member(LA(2))) && (_tokenSet_45.member(LA(3))))&&(grammar.buildAST())) {
				{
				int _cnt135=0;
				_loop135:
				do {
					if ((_tokenSet_43.member(LA(1)))) {
						rewrite_element();
						astFactory.addASTChild(currentAST, returnAST);
					}
					else {
						if ( _cnt135>=1 ) { break _loop135; } else {throw new NoViableAltException(LT(1), getFilename());}
					}
					
					_cnt135++;
				} while (true);
				}
				rewrite_alternative_AST = (GrammarAST)currentAST.root;
				
				if ( rewrite_alternative_AST==null ) {
				rewrite_alternative_AST = (GrammarAST)astFactory.make( (new ASTArray(3)).add(altRoot).add((GrammarAST)astFactory.create(EPSILON,"epsilon")).add(eoa));
				}
				else {
				rewrite_alternative_AST = (GrammarAST)astFactory.make( (new ASTArray(3)).add(altRoot).add(rewrite_alternative_AST).add(eoa));
				}
				
				currentAST.root = rewrite_alternative_AST;
				currentAST.child = rewrite_alternative_AST!=null &&rewrite_alternative_AST.getFirstChild()!=null ?
					rewrite_alternative_AST.getFirstChild() : rewrite_alternative_AST;
				currentAST.advanceChildToEnd();
				rewrite_alternative_AST = (GrammarAST)currentAST.root;
			}
			else if ((_tokenSet_23.member(LA(1)))) {
				rewrite_alternative_AST = (GrammarAST)currentAST.root;
				rewrite_alternative_AST = (GrammarAST)astFactory.make( (new ASTArray(3)).add(altRoot).add((GrammarAST)astFactory.create(EPSILON,"epsilon")).add(eoa));
				currentAST.root = rewrite_alternative_AST;
				currentAST.child = rewrite_alternative_AST!=null &&rewrite_alternative_AST.getFirstChild()!=null ?
					rewrite_alternative_AST.getFirstChild() : rewrite_alternative_AST;
				currentAST.advanceChildToEnd();
				rewrite_alternative_AST = (GrammarAST)currentAST.root;
			}
			else if (((LA(1)==ETC))&&(grammar.buildAST())) {
				GrammarAST tmp93_AST = null;
				tmp93_AST = (GrammarAST)astFactory.create(LT(1));
				astFactory.addASTChild(currentAST, tmp93_AST);
				match(ETC);
				rewrite_alternative_AST = (GrammarAST)currentAST.root;
			}
			else {
				throw new NoViableAltException(LT(1), getFilename());
			}
			
		}
		catch (RecognitionException ex) {
			reportError(ex);
			recover(ex,_tokenSet_23);
		}
		returnAST = rewrite_alternative_AST;
	}
	
	public final void rewrite_block() throws RecognitionException, TokenStreamException {
		
		returnAST = null;
		ASTPair currentAST = new ASTPair();
		GrammarAST rewrite_block_AST = null;
		Token  lp = null;
		GrammarAST lp_AST = null;
		
		try {      // for error handling
			lp = LT(1);
			lp_AST = (GrammarAST)astFactory.create(lp);
			astFactory.makeASTRoot(currentAST, lp_AST);
			match(LPAREN);
			lp_AST.setType(BLOCK); lp_AST.setText("BLOCK");
			rewrite_alternative();
			astFactory.addASTChild(currentAST, returnAST);
			match(RPAREN);
			rewrite_block_AST = (GrammarAST)currentAST.root;
			
			GrammarAST eob = (GrammarAST)astFactory.create(EOB,"<end-of-block>");
			eob.setLine(lp.getLine());
			eob.setColumn(lp.getColumn());
			rewrite_block_AST.addChild(eob);
			
			rewrite_block_AST = (GrammarAST)currentAST.root;
		}
		catch (RecognitionException ex) {
			reportError(ex);
			recover(ex,_tokenSet_46);
		}
		returnAST = rewrite_block_AST;
	}
	
/** Build a tree for a template rewrite:
      ^(TEMPLATE (ID|ACTION) ^(ARGLIST ^(ARG ID ACTION) ...) )
    where ARGLIST is always there even if no args exist.
    ID can be "template" keyword.  If first child is ACTION then it's
    an indirect template ref

    -> foo(a={...}, b={...})
    -> ({string-e})(a={...}, b={...})  // e evaluates to template name
    -> {%{$ID.text}} // create literal template from string (done in ActionTranslator)
	-> {st-expr} // st-expr evaluates to ST
 */
	public final void rewrite_template() throws RecognitionException, TokenStreamException {
		
		returnAST = null;
		ASTPair currentAST = new ASTPair();
		GrammarAST rewrite_template_AST = null;
		Token st=null;
		
		try {      // for error handling
			switch ( LA(1)) {
			case LPAREN:
			{
				rewrite_indirect_template_head();
				astFactory.addASTChild(currentAST, returnAST);
				rewrite_template_AST = (GrammarAST)currentAST.root;
				break;
			}
			case ACTION:
			{
				GrammarAST tmp95_AST = null;
				tmp95_AST = (GrammarAST)astFactory.create(LT(1));
				astFactory.addASTChild(currentAST, tmp95_AST);
				match(ACTION);
				rewrite_template_AST = (GrammarAST)currentAST.root;
				break;
			}
			default:
				if (((LA(1)==TOKEN_REF||LA(1)==RULE_REF) && (LA(2)==LPAREN) && (LA(3)==TOKEN_REF||LA(3)==RPAREN||LA(3)==RULE_REF))&&(LT(1).getText().equals("template"))) {
					rewrite_template_head();
					astFactory.addASTChild(currentAST, returnAST);
					st=LT(1);
					{
					switch ( LA(1)) {
					case DOUBLE_QUOTE_STRING_LITERAL:
					{
						match(DOUBLE_QUOTE_STRING_LITERAL);
						break;
					}
					case DOUBLE_ANGLE_STRING_LITERAL:
					{
						match(DOUBLE_ANGLE_STRING_LITERAL);
						break;
					}
					default:
					{
						throw new NoViableAltException(LT(1), getFilename());
					}
					}
					}
					rewrite_template_AST = (GrammarAST)currentAST.root;
					rewrite_template_AST.addChild((GrammarAST)astFactory.create(st));
					rewrite_template_AST = (GrammarAST)currentAST.root;
				}
				else if ((LA(1)==TOKEN_REF||LA(1)==RULE_REF) && (LA(2)==LPAREN) && (LA(3)==TOKEN_REF||LA(3)==RPAREN||LA(3)==RULE_REF)) {
					rewrite_template_head();
					astFactory.addASTChild(currentAST, returnAST);
					rewrite_template_AST = (GrammarAST)currentAST.root;
				}
			else {
				throw new NoViableAltException(LT(1), getFilename());
			}
			}
		}
		catch (RecognitionException ex) {
			reportError(ex);
			recover(ex,_tokenSet_23);
		}
		returnAST = rewrite_template_AST;
	}
	
	public final void rewrite_element() throws RecognitionException, TokenStreamException {
		
		returnAST = null;
		ASTPair currentAST = new ASTPair();
		GrammarAST rewrite_element_AST = null;
		GrammarAST t_AST = null;
		GrammarAST tr_AST = null;
		
		GrammarAST subrule=null;
		
		
		try {      // for error handling
			switch ( LA(1)) {
			case ACTION:
			case STRING_LITERAL:
			case CHAR_LITERAL:
			case TOKEN_REF:
			case RULE_REF:
			case DOLLAR:
			{
				rewrite_atom();
				t_AST = (GrammarAST)returnAST;
				astFactory.addASTChild(currentAST, returnAST);
				{
				switch ( LA(1)) {
				case STAR:
				case QUESTION:
				case PLUS:
				{
					subrule=ebnfSuffix(t_AST,true);
					astFactory.addASTChild(currentAST, returnAST);
					rewrite_element_AST = (GrammarAST)currentAST.root;
					rewrite_element_AST=subrule;
					currentAST.root = rewrite_element_AST;
					currentAST.child = rewrite_element_AST!=null &&rewrite_element_AST.getFirstChild()!=null ?
						rewrite_element_AST.getFirstChild() : rewrite_element_AST;
					currentAST.advanceChildToEnd();
					break;
				}
				case ACTION:
				case SEMI:
				case STRING_LITERAL:
				case CHAR_LITERAL:
				case TOKEN_REF:
				case LPAREN:
				case OR:
				case RPAREN:
				case RULE_REF:
				case TREE_BEGIN:
				case REWRITE:
				case DOLLAR:
				{
					break;
				}
				default:
				{
					throw new NoViableAltException(LT(1), getFilename());
				}
				}
				}
				rewrite_element_AST = (GrammarAST)currentAST.root;
				break;
			}
			case LPAREN:
			{
				rewrite_ebnf();
				astFactory.addASTChild(currentAST, returnAST);
				rewrite_element_AST = (GrammarAST)currentAST.root;
				break;
			}
			case TREE_BEGIN:
			{
				rewrite_tree();
				tr_AST = (GrammarAST)returnAST;
				astFactory.addASTChild(currentAST, returnAST);
				{
				switch ( LA(1)) {
				case STAR:
				case QUESTION:
				case PLUS:
				{
					subrule=ebnfSuffix(tr_AST,true);
					astFactory.addASTChild(currentAST, returnAST);
					rewrite_element_AST = (GrammarAST)currentAST.root;
					rewrite_element_AST=subrule;
					currentAST.root = rewrite_element_AST;
					currentAST.child = rewrite_element_AST!=null &&rewrite_element_AST.getFirstChild()!=null ?
						rewrite_element_AST.getFirstChild() : rewrite_element_AST;
					currentAST.advanceChildToEnd();
					break;
				}
				case ACTION:
				case SEMI:
				case STRING_LITERAL:
				case CHAR_LITERAL:
				case TOKEN_REF:
				case LPAREN:
				case OR:
				case RPAREN:
				case RULE_REF:
				case TREE_BEGIN:
				case REWRITE:
				case DOLLAR:
				{
					break;
				}
				default:
				{
					throw new NoViableAltException(LT(1), getFilename());
				}
				}
				}
				rewrite_element_AST = (GrammarAST)currentAST.root;
				break;
			}
			default:
			{
				throw new NoViableAltException(LT(1), getFilename());
			}
			}
		}
		catch (RecognitionException ex) {
			reportError(ex);
			recover(ex,_tokenSet_47);
		}
		returnAST = rewrite_element_AST;
	}
	
	public final void rewrite_atom() throws RecognitionException, TokenStreamException {
		
		returnAST = null;
		ASTPair currentAST = new ASTPair();
		GrammarAST rewrite_atom_AST = null;
		Token  tr = null;
		GrammarAST tr_AST = null;
		Token  rr = null;
		GrammarAST rr_AST = null;
		Token  cl = null;
		GrammarAST cl_AST = null;
		Token  sl = null;
		GrammarAST sl_AST = null;
		Token  d = null;
		GrammarAST d_AST = null;
		GrammarAST i_AST = null;
		
		GrammarAST subrule=null;
		
		
		try {      // for error handling
			switch ( LA(1)) {
			case TOKEN_REF:
			{
				tr = LT(1);
				tr_AST = (GrammarAST)astFactory.create(tr);
				astFactory.makeASTRoot(currentAST, tr_AST);
				match(TOKEN_REF);
				{
				switch ( LA(1)) {
				case OPEN_ELEMENT_OPTION:
				{
					elementOptions(tr_AST);
					break;
				}
				case ACTION:
				case SEMI:
				case STRING_LITERAL:
				case CHAR_LITERAL:
				case STAR:
				case TOKEN_REF:
				case ARG_ACTION:
				case LPAREN:
				case OR:
				case RPAREN:
				case RULE_REF:
				case TREE_BEGIN:
				case QUESTION:
				case PLUS:
				case REWRITE:
				case DOLLAR:
				{
					break;
				}
				default:
				{
					throw new NoViableAltException(LT(1), getFilename());
				}
				}
				}
				{
				switch ( LA(1)) {
				case ARG_ACTION:
				{
					GrammarAST tmp98_AST = null;
					tmp98_AST = (GrammarAST)astFactory.create(LT(1));
					astFactory.addASTChild(currentAST, tmp98_AST);
					match(ARG_ACTION);
					break;
				}
				case ACTION:
				case SEMI:
				case STRING_LITERAL:
				case CHAR_LITERAL:
				case STAR:
				case TOKEN_REF:
				case LPAREN:
				case OR:
				case RPAREN:
				case RULE_REF:
				case TREE_BEGIN:
				case QUESTION:
				case PLUS:
				case REWRITE:
				case DOLLAR:
				{
					break;
				}
				default:
				{
					throw new NoViableAltException(LT(1), getFilename());
				}
				}
				}
				rewrite_atom_AST = (GrammarAST)currentAST.root;
				break;
			}
			case RULE_REF:
			{
				rr = LT(1);
				rr_AST = (GrammarAST)astFactory.create(rr);
				astFactory.addASTChild(currentAST, rr_AST);
				match(RULE_REF);
				rewrite_atom_AST = (GrammarAST)currentAST.root;
				break;
			}
			case CHAR_LITERAL:
			{
				cl = LT(1);
				cl_AST = (GrammarAST)astFactory.create(cl);
				astFactory.makeASTRoot(currentAST, cl_AST);
				match(CHAR_LITERAL);
				{
				switch ( LA(1)) {
				case OPEN_ELEMENT_OPTION:
				{
					elementOptions(cl_AST);
					break;
				}
				case ACTION:
				case SEMI:
				case STRING_LITERAL:
				case CHAR_LITERAL:
				case STAR:
				case TOKEN_REF:
				case LPAREN:
				case OR:
				case RPAREN:
				case RULE_REF:
				case TREE_BEGIN:
				case QUESTION:
				case PLUS:
				case REWRITE:
				case DOLLAR:
				{
					break;
				}
				default:
				{
					throw new NoViableAltException(LT(1), getFilename());
				}
				}
				}
				rewrite_atom_AST = (GrammarAST)currentAST.root;
				break;
			}
			case STRING_LITERAL:
			{
				sl = LT(1);
				sl_AST = (GrammarAST)astFactory.create(sl);
				astFactory.makeASTRoot(currentAST, sl_AST);
				match(STRING_LITERAL);
				{
				switch ( LA(1)) {
				case OPEN_ELEMENT_OPTION:
				{
					elementOptions(sl_AST);
					break;
				}
				case ACTION:
				case SEMI:
				case STRING_LITERAL:
				case CHAR_LITERAL:
				case STAR:
				case TOKEN_REF:
				case LPAREN:
				case OR:
				case RPAREN:
				case RULE_REF:
				case TREE_BEGIN:
				case QUESTION:
				case PLUS:
				case REWRITE:
				case DOLLAR:
				{
					break;
				}
				default:
				{
					throw new NoViableAltException(LT(1), getFilename());
				}
				}
				}
				rewrite_atom_AST = (GrammarAST)currentAST.root;
				break;
			}
			case DOLLAR:
			{
				d = LT(1);
				d_AST = (GrammarAST)astFactory.create(d);
				match(DOLLAR);
				id();
				i_AST = (GrammarAST)returnAST;
				rewrite_atom_AST = (GrammarAST)currentAST.root;
				
						rewrite_atom_AST = (GrammarAST)astFactory.create(LABEL,i_AST.getText());
						rewrite_atom_AST.setLine(d_AST.getLine());
						rewrite_atom_AST.setColumn(d_AST.getColumn());
						
				currentAST.root = rewrite_atom_AST;
				currentAST.child = rewrite_atom_AST!=null &&rewrite_atom_AST.getFirstChild()!=null ?
					rewrite_atom_AST.getFirstChild() : rewrite_atom_AST;
				currentAST.advanceChildToEnd();
				break;
			}
			case ACTION:
			{
				GrammarAST tmp99_AST = null;
				tmp99_AST = (GrammarAST)astFactory.create(LT(1));
				astFactory.addASTChild(currentAST, tmp99_AST);
				match(ACTION);
				rewrite_atom_AST = (GrammarAST)currentAST.root;
				break;
			}
			default:
			{
				throw new NoViableAltException(LT(1), getFilename());
			}
			}
		}
		catch (RecognitionException ex) {
			reportError(ex);
			recover(ex,_tokenSet_48);
		}
		returnAST = rewrite_atom_AST;
	}
	
	public final void rewrite_ebnf() throws RecognitionException, TokenStreamException {
		
		returnAST = null;
		ASTPair currentAST = new ASTPair();
		GrammarAST rewrite_ebnf_AST = null;
		GrammarAST b_AST = null;
		
		int line = LT(1).getLine();
		int col = LT(1).getColumn();
		
		
		try {      // for error handling
			rewrite_block();
			b_AST = (GrammarAST)returnAST;
			{
			switch ( LA(1)) {
			case QUESTION:
			{
				GrammarAST tmp100_AST = null;
				tmp100_AST = (GrammarAST)astFactory.create(LT(1));
				match(QUESTION);
				rewrite_ebnf_AST = (GrammarAST)currentAST.root;
				rewrite_ebnf_AST=(GrammarAST)astFactory.make( (new ASTArray(2)).add((GrammarAST)astFactory.create(OPTIONAL,"?")).add(b_AST));
				currentAST.root = rewrite_ebnf_AST;
				currentAST.child = rewrite_ebnf_AST!=null &&rewrite_ebnf_AST.getFirstChild()!=null ?
					rewrite_ebnf_AST.getFirstChild() : rewrite_ebnf_AST;
				currentAST.advanceChildToEnd();
				break;
			}
			case STAR:
			{
				GrammarAST tmp101_AST = null;
				tmp101_AST = (GrammarAST)astFactory.create(LT(1));
				match(STAR);
				rewrite_ebnf_AST = (GrammarAST)currentAST.root;
				rewrite_ebnf_AST=(GrammarAST)astFactory.make( (new ASTArray(2)).add((GrammarAST)astFactory.create(CLOSURE,"*")).add(b_AST));
				currentAST.root = rewrite_ebnf_AST;
				currentAST.child = rewrite_ebnf_AST!=null &&rewrite_ebnf_AST.getFirstChild()!=null ?
					rewrite_ebnf_AST.getFirstChild() : rewrite_ebnf_AST;
				currentAST.advanceChildToEnd();
				break;
			}
			case PLUS:
			{
				GrammarAST tmp102_AST = null;
				tmp102_AST = (GrammarAST)astFactory.create(LT(1));
				match(PLUS);
				rewrite_ebnf_AST = (GrammarAST)currentAST.root;
				rewrite_ebnf_AST=(GrammarAST)astFactory.make( (new ASTArray(2)).add((GrammarAST)astFactory.create(POSITIVE_CLOSURE,"+")).add(b_AST));
				currentAST.root = rewrite_ebnf_AST;
				currentAST.child = rewrite_ebnf_AST!=null &&rewrite_ebnf_AST.getFirstChild()!=null ?
					rewrite_ebnf_AST.getFirstChild() : rewrite_ebnf_AST;
				currentAST.advanceChildToEnd();
				break;
			}
			default:
			{
				throw new NoViableAltException(LT(1), getFilename());
			}
			}
			}
			rewrite_ebnf_AST = (GrammarAST)currentAST.root;
			rewrite_ebnf_AST.setLine(line); rewrite_ebnf_AST.setColumn(col);
		}
		catch (RecognitionException ex) {
			reportError(ex);
			recover(ex,_tokenSet_47);
		}
		returnAST = rewrite_ebnf_AST;
	}
	
	public final void rewrite_tree() throws RecognitionException, TokenStreamException {
		
		returnAST = null;
		ASTPair currentAST = new ASTPair();
		GrammarAST rewrite_tree_AST = null;
		
		try {      // for error handling
			GrammarAST tmp103_AST = null;
			tmp103_AST = (GrammarAST)astFactory.create(LT(1));
			astFactory.makeASTRoot(currentAST, tmp103_AST);
			match(TREE_BEGIN);
			rewrite_atom();
			astFactory.addASTChild(currentAST, returnAST);
			{
			_loop148:
			do {
				if ((_tokenSet_43.member(LA(1)))) {
					rewrite_element();
					astFactory.addASTChild(currentAST, returnAST);
				}
				else {
					break _loop148;
				}
				
			} while (true);
			}
			match(RPAREN);
			rewrite_tree_AST = (GrammarAST)currentAST.root;
		}
		catch (RecognitionException ex) {
			reportError(ex);
			recover(ex,_tokenSet_48);
		}
		returnAST = rewrite_tree_AST;
	}
	
/** -> foo(a={...}, ...) */
	public final void rewrite_template_head() throws RecognitionException, TokenStreamException {
		
		returnAST = null;
		ASTPair currentAST = new ASTPair();
		GrammarAST rewrite_template_head_AST = null;
		Token  lp = null;
		GrammarAST lp_AST = null;
		
		try {      // for error handling
			id();
			astFactory.addASTChild(currentAST, returnAST);
			lp = LT(1);
			lp_AST = (GrammarAST)astFactory.create(lp);
			astFactory.makeASTRoot(currentAST, lp_AST);
			match(LPAREN);
			lp_AST.setType(TEMPLATE); lp_AST.setText("TEMPLATE");
			rewrite_template_args();
			astFactory.addASTChild(currentAST, returnAST);
			match(RPAREN);
			rewrite_template_head_AST = (GrammarAST)currentAST.root;
		}
		catch (RecognitionException ex) {
			reportError(ex);
			recover(ex,_tokenSet_49);
		}
		returnAST = rewrite_template_head_AST;
	}
	
/** -> ({expr})(a={...}, ...) */
	public final void rewrite_indirect_template_head() throws RecognitionException, TokenStreamException {
		
		returnAST = null;
		ASTPair currentAST = new ASTPair();
		GrammarAST rewrite_indirect_template_head_AST = null;
		Token  lp = null;
		GrammarAST lp_AST = null;
		
		try {      // for error handling
			lp = LT(1);
			lp_AST = (GrammarAST)astFactory.create(lp);
			astFactory.makeASTRoot(currentAST, lp_AST);
			match(LPAREN);
			lp_AST.setType(TEMPLATE); lp_AST.setText("TEMPLATE");
			GrammarAST tmp106_AST = null;
			tmp106_AST = (GrammarAST)astFactory.create(LT(1));
			astFactory.addASTChild(currentAST, tmp106_AST);
			match(ACTION);
			match(RPAREN);
			match(LPAREN);
			rewrite_template_args();
			astFactory.addASTChild(currentAST, returnAST);
			match(RPAREN);
			rewrite_indirect_template_head_AST = (GrammarAST)currentAST.root;
		}
		catch (RecognitionException ex) {
			reportError(ex);
			recover(ex,_tokenSet_23);
		}
		returnAST = rewrite_indirect_template_head_AST;
	}
	
	public final void rewrite_template_args() throws RecognitionException, TokenStreamException {
		
		returnAST = null;
		ASTPair currentAST = new ASTPair();
		GrammarAST rewrite_template_args_AST = null;
		
		try {      // for error handling
			switch ( LA(1)) {
			case TOKEN_REF:
			case RULE_REF:
			{
				rewrite_template_arg();
				astFactory.addASTChild(currentAST, returnAST);
				{
				_loop155:
				do {
					if ((LA(1)==COMMA)) {
						match(COMMA);
						rewrite_template_arg();
						astFactory.addASTChild(currentAST, returnAST);
					}
					else {
						break _loop155;
					}
					
				} while (true);
				}
				rewrite_template_args_AST = (GrammarAST)currentAST.root;
				rewrite_template_args_AST = (GrammarAST)astFactory.make( (new ASTArray(2)).add((GrammarAST)astFactory.create(ARGLIST,"ARGLIST")).add(rewrite_template_args_AST));
				currentAST.root = rewrite_template_args_AST;
				currentAST.child = rewrite_template_args_AST!=null &&rewrite_template_args_AST.getFirstChild()!=null ?
					rewrite_template_args_AST.getFirstChild() : rewrite_template_args_AST;
				currentAST.advanceChildToEnd();
				rewrite_template_args_AST = (GrammarAST)currentAST.root;
				break;
			}
			case RPAREN:
			{
				rewrite_template_args_AST = (GrammarAST)currentAST.root;
				rewrite_template_args_AST = (GrammarAST)astFactory.create(ARGLIST,"ARGLIST");
				currentAST.root = rewrite_template_args_AST;
				currentAST.child = rewrite_template_args_AST!=null &&rewrite_template_args_AST.getFirstChild()!=null ?
					rewrite_template_args_AST.getFirstChild() : rewrite_template_args_AST;
				currentAST.advanceChildToEnd();
				rewrite_template_args_AST = (GrammarAST)currentAST.root;
				break;
			}
			default:
			{
				throw new NoViableAltException(LT(1), getFilename());
			}
			}
		}
		catch (RecognitionException ex) {
			reportError(ex);
			recover(ex,_tokenSet_50);
		}
		returnAST = rewrite_template_args_AST;
	}
	
	public final void rewrite_template_arg() throws RecognitionException, TokenStreamException {
		
		returnAST = null;
		ASTPair currentAST = new ASTPair();
		GrammarAST rewrite_template_arg_AST = null;
		Token  a = null;
		GrammarAST a_AST = null;
		
		try {      // for error handling
			id();
			astFactory.addASTChild(currentAST, returnAST);
			a = LT(1);
			a_AST = (GrammarAST)astFactory.create(a);
			astFactory.makeASTRoot(currentAST, a_AST);
			match(ASSIGN);
			a_AST.setType(ARG); a_AST.setText("ARG");
			GrammarAST tmp111_AST = null;
			tmp111_AST = (GrammarAST)astFactory.create(LT(1));
			astFactory.addASTChild(currentAST, tmp111_AST);
			match(ACTION);
			rewrite_template_arg_AST = (GrammarAST)currentAST.root;
		}
		catch (RecognitionException ex) {
			reportError(ex);
			recover(ex,_tokenSet_51);
		}
		returnAST = rewrite_template_arg_AST;
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
	
	protected void buildTokenTypeASTClassMap() {
		tokenTypeToASTClassMap=null;
	};
	
	private static final long[] mk_tokenSet_0() {
		long[] data = { 2L, 0L};
		return data;
	}
	public static final BitSet _tokenSet_0 = new BitSet(mk_tokenSet_0());
	private static final long[] mk_tokenSet_1() {
		long[] data = { 36028797018963968L, 512L, 0L, 0L};
		return data;
	}
	public static final BitSet _tokenSet_1 = new BitSet(mk_tokenSet_1());
	private static final long[] mk_tokenSet_2() {
		long[] data = { -509253095465680880L, 375571L, 0L, 0L};
		return data;
	}
	public static final BitSet _tokenSet_2 = new BitSet(mk_tokenSet_2());
	private static final long[] mk_tokenSet_3() {
		long[] data = { 540645561187958816L, 512L, 0L, 0L};
		return data;
	}
	public static final BitSet _tokenSet_3 = new BitSet(mk_tokenSet_3());
	private static final long[] mk_tokenSet_4() {
		long[] data = { 540504806519734304L, 512L, 0L, 0L};
		return data;
	}
	public static final BitSet _tokenSet_4 = new BitSet(mk_tokenSet_4());
	private static final long[] mk_tokenSet_5() {
		long[] data = { 540504806519734272L, 512L, 0L, 0L};
		return data;
	}
	public static final BitSet _tokenSet_5 = new BitSet(mk_tokenSet_5());
	private static final long[] mk_tokenSet_6() {
		long[] data = { 540504797929799680L, 512L, 0L, 0L};
		return data;
	}
	public static final BitSet _tokenSet_6 = new BitSet(mk_tokenSet_6());
	private static final long[] mk_tokenSet_7() {
		long[] data = { 540434429185622016L, 512L, 0L, 0L};
		return data;
	}
	public static final BitSet _tokenSet_7 = new BitSet(mk_tokenSet_7());
	private static final long[] mk_tokenSet_8() {
		long[] data = { 36037593111986240L, 512L, 0L, 0L};
		return data;
	}
	public static final BitSet _tokenSet_8 = new BitSet(mk_tokenSet_8());
	private static final long[] mk_tokenSet_9() {
		long[] data = { 140737488355328L, 0L};
		return data;
	}
	public static final BitSet _tokenSet_9 = new BitSet(mk_tokenSet_9());
	private static final long[] mk_tokenSet_10() {
		long[] data = { 4398046511104L, 0L};
		return data;
	}
	public static final BitSet _tokenSet_10 = new BitSet(mk_tokenSet_10());
	private static final long[] mk_tokenSet_11() {
		long[] data = { 18018796555993088L, 0L};
		return data;
	}
	public static final BitSet _tokenSet_11 = new BitSet(mk_tokenSet_11());
	private static final long[] mk_tokenSet_12() {
		long[] data = { 36310271995674624L, 0L};
		return data;
	}
	public static final BitSet _tokenSet_12 = new BitSet(mk_tokenSet_12());
	private static final long[] mk_tokenSet_13() {
		long[] data = { 540434429185622018L, 512L, 0L, 0L};
		return data;
	}
	public static final BitSet _tokenSet_13 = new BitSet(mk_tokenSet_13());
	private static final long[] mk_tokenSet_14() {
		long[] data = { 211114822467600L, 0L};
		return data;
	}
	public static final BitSet _tokenSet_14 = new BitSet(mk_tokenSet_14());
	private static final long[] mk_tokenSet_15() {
		long[] data = { -9183960041483403264L, 69409L, 0L, 0L};
		return data;
	}
	public static final BitSet _tokenSet_15 = new BitSet(mk_tokenSet_15());
	private static final long[] mk_tokenSet_16() {
		long[] data = { -6922376498456281070L, 491519L, 0L, 0L};
		return data;
	}
	public static final BitSet _tokenSet_16 = new BitSet(mk_tokenSet_16());
	private static final long[] mk_tokenSet_17() {
		long[] data = { 211106232532992L, 0L};
		return data;
	}
	public static final BitSet _tokenSet_17 = new BitSet(mk_tokenSet_17());
	private static final long[] mk_tokenSet_18() {
		long[] data = { -9183964439529914368L, 69411L, 0L, 0L};
		return data;
	}
	public static final BitSet _tokenSet_18 = new BitSet(mk_tokenSet_18());
	private static final long[] mk_tokenSet_19() {
		long[] data = { -7444796529132421104L, 491507L, 0L, 0L};
		return data;
	}
	public static final BitSet _tokenSet_19 = new BitSet(mk_tokenSet_19());
	private static final long[] mk_tokenSet_20() {
		long[] data = { -6940390896965763054L, 491519L, 0L, 0L};
		return data;
	}
	public static final BitSet _tokenSet_20 = new BitSet(mk_tokenSet_20());
	private static final long[] mk_tokenSet_21() {
		long[] data = { -8598492089925238784L, 81891L, 0L, 0L};
		return data;
	}
	public static final BitSet _tokenSet_21 = new BitSet(mk_tokenSet_21());
	private static final long[] mk_tokenSet_22() {
		long[] data = { -9183964439529914368L, 3872L, 0L, 0L};
		return data;
	}
	public static final BitSet _tokenSet_22 = new BitSet(mk_tokenSet_22());
	private static final long[] mk_tokenSet_23() {
		long[] data = { 4398046511104L, 65539L, 0L, 0L};
		return data;
	}
	public static final BitSet _tokenSet_23 = new BitSet(mk_tokenSet_23());
	private static final long[] mk_tokenSet_24() {
		long[] data = { 4398046511104L, 3L, 0L, 0L};
		return data;
	}
	public static final BitSet _tokenSet_24 = new BitSet(mk_tokenSet_24());
	private static final long[] mk_tokenSet_25() {
		long[] data = { -9183960041483403264L, 69411L, 0L, 0L};
		return data;
	}
	public static final BitSet _tokenSet_25 = new BitSet(mk_tokenSet_25());
	private static final long[] mk_tokenSet_26() {
		long[] data = { 540434429185622018L, 524L, 0L, 0L};
		return data;
	}
	public static final BitSet _tokenSet_26 = new BitSet(mk_tokenSet_26());
	private static final long[] mk_tokenSet_27() {
		long[] data = { 39406496739491840L, 1792L, 0L, 0L};
		return data;
	}
	public static final BitSet _tokenSet_27 = new BitSet(mk_tokenSet_27());
	private static final long[] mk_tokenSet_28() {
		long[] data = { -7445570585318375424L, 98211L, 0L, 0L};
		return data;
	}
	public static final BitSet _tokenSet_28 = new BitSet(mk_tokenSet_28());
	private static final long[] mk_tokenSet_29() {
		long[] data = { 39406496739491840L, 768L, 0L, 0L};
		return data;
	}
	public static final BitSet _tokenSet_29 = new BitSet(mk_tokenSet_29());
	private static final long[] mk_tokenSet_30() {
		long[] data = { -7445570585318391808L, 98211L, 0L, 0L};
		return data;
	}
	public static final BitSet _tokenSet_30 = new BitSet(mk_tokenSet_30());
	private static final long[] mk_tokenSet_31() {
		long[] data = { 39406496739491840L, 256L, 0L, 0L};
		return data;
	}
	public static final BitSet _tokenSet_31 = new BitSet(mk_tokenSet_31());
	private static final long[] mk_tokenSet_32() {
		long[] data = { -7445570585318391808L, 81827L, 0L, 0L};
		return data;
	}
	public static final BitSet _tokenSet_32 = new BitSet(mk_tokenSet_32());
	private static final long[] mk_tokenSet_33() {
		long[] data = { -9174952842228662272L, 81699L, 0L, 0L};
		return data;
	}
	public static final BitSet _tokenSet_33 = new BitSet(mk_tokenSet_33());
	private static final long[] mk_tokenSet_34() {
		long[] data = { -9183960041483403264L, 331555L, 0L, 0L};
		return data;
	}
	public static final BitSet _tokenSet_34 = new BitSet(mk_tokenSet_34());
	private static final long[] mk_tokenSet_35() {
		long[] data = { -8598492089925238784L, 81827L, 0L, 0L};
		return data;
	}
	public static final BitSet _tokenSet_35 = new BitSet(mk_tokenSet_35());
	private static final long[] mk_tokenSet_36() {
		long[] data = { -7454582182619627520L, 20384L, 0L, 0L};
		return data;
	}
	public static final BitSet _tokenSet_36 = new BitSet(mk_tokenSet_36());
	private static final long[] mk_tokenSet_37() {
		long[] data = { -7445570585318391808L, 343971L, 0L, 0L};
		return data;
	}
	public static final BitSet _tokenSet_37 = new BitSet(mk_tokenSet_37());
	private static final long[] mk_tokenSet_38() {
		long[] data = { 0L, 32768L, 0L, 0L};
		return data;
	}
	public static final BitSet _tokenSet_38 = new BitSet(mk_tokenSet_38());
	private static final long[] mk_tokenSet_39() {
		long[] data = { 4398046511104L, 32768L, 0L, 0L};
		return data;
	}
	public static final BitSet _tokenSet_39 = new BitSet(mk_tokenSet_39());
	private static final long[] mk_tokenSet_40() {
		long[] data = { -9187342140324184064L, 512L, 0L, 0L};
		return data;
	}
	public static final BitSet _tokenSet_40 = new BitSet(mk_tokenSet_40());
	private static final long[] mk_tokenSet_41() {
		long[] data = { -9223366539296636928L, 65539L, 0L, 0L};
		return data;
	}
	public static final BitSet _tokenSet_41 = new BitSet(mk_tokenSet_41());
	private static final long[] mk_tokenSet_42() {
		long[] data = { -8094086457758580734L, 475119L, 0L, 0L};
		return data;
	}
	public static final BitSet _tokenSet_42 = new BitSet(mk_tokenSet_42());
	private static final long[] mk_tokenSet_43() {
		long[] data = { -9183964440603656192L, 264704L, 0L, 0L};
		return data;
	}
	public static final BitSet _tokenSet_43 = new BitSet(mk_tokenSet_43());
	private static final long[] mk_tokenSet_44() {
		long[] data = { -8022031338695557120L, 489987L, 0L, 0L};
		return data;
	}
	public static final BitSet _tokenSet_44 = new BitSet(mk_tokenSet_44());
	private static final long[] mk_tokenSet_45() {
		long[] data = { -6941164953151733758L, 491503L, 0L, 0L};
		return data;
	}
	public static final BitSet _tokenSet_45 = new BitSet(mk_tokenSet_45());
	private static final long[] mk_tokenSet_46() {
		long[] data = { 9007199254740992L, 12288L, 0L, 0L};
		return data;
	}
	public static final BitSet _tokenSet_46 = new BitSet(mk_tokenSet_46());
	private static final long[] mk_tokenSet_47() {
		long[] data = { -9183960042557145088L, 330243L, 0L, 0L};
		return data;
	}
	public static final BitSet _tokenSet_47 = new BitSet(mk_tokenSet_47());
	private static final long[] mk_tokenSet_48() {
		long[] data = { -9174952843302404096L, 342531L, 0L, 0L};
		return data;
	}
	public static final BitSet _tokenSet_48 = new BitSet(mk_tokenSet_48());
	private static final long[] mk_tokenSet_49() {
		long[] data = { 4398046511104L, 1638403L, 0L, 0L};
		return data;
	}
	public static final BitSet _tokenSet_49 = new BitSet(mk_tokenSet_49());
	private static final long[] mk_tokenSet_50() {
		long[] data = { 0L, 2L, 0L, 0L};
		return data;
	}
	public static final BitSet _tokenSet_50 = new BitSet(mk_tokenSet_50());
	private static final long[] mk_tokenSet_51() {
		long[] data = { 18014398509481984L, 2L, 0L, 0L};
		return data;
	}
	public static final BitSet _tokenSet_51 = new BitSet(mk_tokenSet_51());
	
	}
