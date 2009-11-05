// $ANTLR 3.1.3 Oct 07, 2009 18:36:49 org/antlr/grammar/v3/ActionTranslator.g 2009-11-04 19:38:57

package org.antlr.grammar.v3;
import org.antlr.stringtemplate.StringTemplate;
import org.antlr.runtime.*;
import org.antlr.tool.*;
import org.antlr.codegen.*;

import org.antlr.runtime.*;
import java.util.List;
import java.util.ArrayList;
import org.antlr.grammar.v2.ANTLRParser;



import org.antlr.runtime.*;
import java.util.Stack;
import java.util.List;
import java.util.ArrayList;
import java.util.Map;
import java.util.HashMap;
public class ActionTranslator extends Lexer {
    public static final int INDIRECT_TEMPLATE_INSTANCE=28;
    public static final int RULE_SCOPE_ATTR=12;
    public static final int ESC=32;
    public static final int SET_RULE_SCOPE_ATTR=11;
    public static final int DYNAMIC_NEGATIVE_INDEXED_SCOPE_ATTR=22;
    public static final int SET_ATTRIBUTE=30;
    public static final int ERROR_SCOPED_XY=20;
    public static final int INT=37;
    public static final int TEMPLATE_EXPR=31;
    public static final int ERROR_XY=33;
    public static final int LOCAL_ATTR=17;
    public static final int TEXT=36;
    public static final int ISOLATED_TOKEN_REF=14;
    public static final int ID=4;
    public static final int TOKEN_SCOPE_ATTR=10;
    public static final int EOF=-1;
    public static final int SET_TOKEN_SCOPE_ATTR=9;
    public static final int ACTION=27;
    public static final int UNKNOWN_SYNTAX=35;
    public static final int WS=5;
    public static final int ARG=25;
    public static final int TEMPLATE_INSTANCE=26;
    public static final int ISOLATED_LEXER_RULE_REF=15;
    public static final int SET_EXPR_ATTRIBUTE=29;
    public static final int ATTR_VALUE_EXPR=6;
    public static final int SET_ENCLOSING_RULE_SCOPE_ATTR=7;
    public static final int SET_LOCAL_ATTR=16;
    public static final int ENCLOSING_RULE_SCOPE_ATTR=8;
    public static final int SET_DYNAMIC_SCOPE_ATTR=18;
    public static final int SCOPE_INDEX_EXPR=21;
    public static final int ISOLATED_DYNAMIC_SCOPE=24;
    public static final int LABEL_REF=13;
    public static final int DYNAMIC_SCOPE_ATTR=19;
    public static final int ERROR_X=34;
    public static final int DYNAMIC_ABSOLUTE_INDEXED_SCOPE_ATTR=23;

    public List chunks = new ArrayList();
    Rule enclosingRule;
    int outerAltNum;
    Grammar grammar;
    CodeGenerator generator;
    antlr.Token actionToken;

    	public ActionTranslator(CodeGenerator generator,
    								 String ruleName,
    								 GrammarAST actionAST)
    	{
    		this(new ANTLRStringStream(actionAST.token.getText()));
    		this.generator = generator;
    		this.grammar = generator.grammar;
    	    this.enclosingRule = grammar.getLocallyDefinedRule(ruleName);
    	    this.actionToken = actionAST.token;
    	    this.outerAltNum = actionAST.outerAltNum;
    	}

    	public ActionTranslator(CodeGenerator generator,
    								 String ruleName,
    								 antlr.Token actionToken,
    								 int outerAltNum)
    	{
    		this(new ANTLRStringStream(actionToken.getText()));
    		this.generator = generator;
    		grammar = generator.grammar;
    	    this.enclosingRule = grammar.getRule(ruleName);
    	    this.actionToken = actionToken;
    		this.outerAltNum = outerAltNum;
    	}

    /** Return a list of strings and StringTemplate objects that
     *  represent the translated action.
     */
    public List translateToChunks() {
    	// System.out.println("###\naction="+action);
    	Token t;
    	do {
    		t = nextToken();
    	} while ( t.getType()!= Token.EOF );
    	return chunks;
    }

    public String translate() {
    	List theChunks = translateToChunks();
    	//System.out.println("chunks="+a.chunks);
    	StringBuffer buf = new StringBuffer();
    	for (int i = 0; i < theChunks.size(); i++) {
    		Object o = (Object) theChunks.get(i);
    		buf.append(o);
    	}
    	//System.out.println("translated: "+buf.toString());
    	return buf.toString();
    }

    public List translateAction(String action) {
    	String rname = null;
    	if ( enclosingRule!=null ) {
    		rname = enclosingRule.name;
    	}
    	ActionTranslator translator =
    		new ActionTranslator(generator,
    								  rname,
    								  new antlr.CommonToken(ANTLRParser.ACTION,action),outerAltNum);
        return translator.translateToChunks();
    }

    public boolean isTokenRefInAlt(String id) {
        return enclosingRule.getTokenRefsInAlt(id, outerAltNum)!=null;
    }
    public boolean isRuleRefInAlt(String id) {
        return enclosingRule.getRuleRefsInAlt(id, outerAltNum)!=null;
    }
    public Grammar.LabelElementPair getElementLabel(String id) {
        return enclosingRule.getLabel(id);
    }

    public void checkElementRefUniqueness(String ref, boolean isToken) {
    		List refs = null;
    		if ( isToken ) {
    		    refs = enclosingRule.getTokenRefsInAlt(ref, outerAltNum);
    		}
    		else {
    		    refs = enclosingRule.getRuleRefsInAlt(ref, outerAltNum);
    		}
    		if ( refs!=null && refs.size()>1 ) {
    			ErrorManager.grammarError(ErrorManager.MSG_NONUNIQUE_REF,
    									  grammar,
    									  actionToken,
    									  ref);
    		}
    }

    /** For $rulelabel.name, return the Attribute found for name.  It
     *  will be a predefined property or a return value.
     */
    public Attribute getRuleLabelAttribute(String ruleName, String attrName) {
    	Rule r = grammar.getRule(ruleName);
    	AttributeScope scope = r.getLocalAttributeScope(attrName);
    	if ( scope!=null && !scope.isParameterScope ) {
    		return scope.getAttribute(attrName);
    	}
    	return null;
    }

    AttributeScope resolveDynamicScope(String scopeName) {
    	if ( grammar.getGlobalScope(scopeName)!=null ) {
    		return grammar.getGlobalScope(scopeName);
    	}
    	Rule scopeRule = grammar.getRule(scopeName);
    	if ( scopeRule!=null ) {
    		return scopeRule.ruleScope;
    	}
    	return null; // not a valid dynamic scope
    }

    protected StringTemplate template(String name) {
    	StringTemplate st = generator.getTemplates().getInstanceOf(name);
    	chunks.add(st);
    	return st;
    }




    // delegates
    // delegators

    public ActionTranslator() {;} 
    public ActionTranslator(CharStream input) {
        this(input, new RecognizerSharedState());
    }
    public ActionTranslator(CharStream input, RecognizerSharedState state) {
        super(input,state);

    }
    public String getGrammarFileName() { return "org/antlr/grammar/v3/ActionTranslator.g"; }

    public Token nextToken() {
        while (true) {
            if ( input.LA(1)==CharStream.EOF ) {
                return Token.EOF_TOKEN;
            }
            state.token = null;
    	state.channel = Token.DEFAULT_CHANNEL;
            state.tokenStartCharIndex = input.index();
            state.tokenStartCharPositionInLine = input.getCharPositionInLine();
            state.tokenStartLine = input.getLine();
    	state.text = null;
            try {
                int m = input.mark();
                state.backtracking=1; 
                state.failed=false;
                mTokens();
                state.backtracking=0;

                if ( state.failed ) {
                    input.rewind(m);
                    input.consume(); 
                }
                else {
                    emit();
                    return state.token;
                }
            }
            catch (RecognitionException re) {
                // shouldn't happen in backtracking mode, but...
                reportError(re);
                recover(re);
            }
        }
    }

    public void memoize(IntStream input,
    		int ruleIndex,
    		int ruleStartIndex)
    {
    if ( state.backtracking>1 ) super.memoize(input, ruleIndex, ruleStartIndex);
    }

    public boolean alreadyParsedRule(IntStream input, int ruleIndex) {
    if ( state.backtracking>1 ) return super.alreadyParsedRule(input, ruleIndex);
    return false;
    }// $ANTLR start "SET_ENCLOSING_RULE_SCOPE_ATTR"
    public final void mSET_ENCLOSING_RULE_SCOPE_ATTR() throws RecognitionException {
        try {
            int _type = SET_ENCLOSING_RULE_SCOPE_ATTR;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            Token x=null;
            Token y=null;
            Token expr=null;

            // org/antlr/grammar/v3/ActionTranslator.g:184:2: ( '$' x= ID '.' y= ID ( WS )? '=' expr= ATTR_VALUE_EXPR ';' {...}?)
            // org/antlr/grammar/v3/ActionTranslator.g:184:4: '$' x= ID '.' y= ID ( WS )? '=' expr= ATTR_VALUE_EXPR ';' {...}?
            {
            match('$'); if (state.failed) return ;
            int xStart50 = getCharIndex();
            mID(); if (state.failed) return ;
            x = new CommonToken(input, Token.INVALID_TOKEN_TYPE, Token.DEFAULT_CHANNEL, xStart50, getCharIndex()-1);
            match('.'); if (state.failed) return ;
            int yStart56 = getCharIndex();
            mID(); if (state.failed) return ;
            y = new CommonToken(input, Token.INVALID_TOKEN_TYPE, Token.DEFAULT_CHANNEL, yStart56, getCharIndex()-1);
            // org/antlr/grammar/v3/ActionTranslator.g:184:22: ( WS )?
            int alt1=2;
            int LA1_0 = input.LA(1);

            if ( ((LA1_0>='\t' && LA1_0<='\n')||LA1_0=='\r'||LA1_0==' ') ) {
                alt1=1;
            }
            switch (alt1) {
                case 1 :
                    // org/antlr/grammar/v3/ActionTranslator.g:184:22: WS
                    {
                    mWS(); if (state.failed) return ;

                    }
                    break;

            }

            match('='); if (state.failed) return ;
            int exprStart65 = getCharIndex();
            mATTR_VALUE_EXPR(); if (state.failed) return ;
            expr = new CommonToken(input, Token.INVALID_TOKEN_TYPE, Token.DEFAULT_CHANNEL, exprStart65, getCharIndex()-1);
            match(';'); if (state.failed) return ;
            if ( !((enclosingRule!=null &&
            	                         (x!=null?x.getText():null).equals(enclosingRule.name) &&
            	                         enclosingRule.getLocalAttributeScope((y!=null?y.getText():null))!=null)) ) {
                if (state.backtracking>0) {state.failed=true; return ;}
                throw new FailedPredicateException(input, "SET_ENCLOSING_RULE_SCOPE_ATTR", "enclosingRule!=null &&\n\t                         $x.text.equals(enclosingRule.name) &&\n\t                         enclosingRule.getLocalAttributeScope($y.text)!=null");
            }
            if ( state.backtracking==1 ) {

              		StringTemplate st = null;
              		AttributeScope scope = enclosingRule.getLocalAttributeScope((y!=null?y.getText():null));
              		if ( scope.isPredefinedRuleScope ) {
              			if ( (y!=null?y.getText():null).equals("st") || (y!=null?y.getText():null).equals("tree") ) {
              				st = template("ruleSetPropertyRef_"+(y!=null?y.getText():null));
              				grammar.referenceRuleLabelPredefinedAttribute((x!=null?x.getText():null));
              				st.setAttribute("scope", (x!=null?x.getText():null));
              				st.setAttribute("attr", (y!=null?y.getText():null));
              				st.setAttribute("expr", translateAction((expr!=null?expr.getText():null)));
              			} else {
              				ErrorManager.grammarError(ErrorManager.MSG_WRITE_TO_READONLY_ATTR,
              										  grammar,
              										  actionToken,
              										  (x!=null?x.getText():null),
              										  (y!=null?y.getText():null));
              			}
              		}
              	    else if ( scope.isPredefinedLexerRuleScope ) {
              	    	// this is a better message to emit than the previous one...
              			ErrorManager.grammarError(ErrorManager.MSG_WRITE_TO_READONLY_ATTR,
              									  grammar,
              									  actionToken,
              									  (x!=null?x.getText():null),
              									  (y!=null?y.getText():null));
              	    }
              		else if ( scope.isParameterScope ) {
              			st = template("parameterSetAttributeRef");
              			st.setAttribute("attr", scope.getAttribute((y!=null?y.getText():null)));
              			st.setAttribute("expr", translateAction((expr!=null?expr.getText():null)));
              		}
              		else { // must be return value
              			st = template("returnSetAttributeRef");
              			st.setAttribute("ruleDescriptor", enclosingRule);
              			st.setAttribute("attr", scope.getAttribute((y!=null?y.getText():null)));
              			st.setAttribute("expr", translateAction((expr!=null?expr.getText():null)));
              		}
              		
            }

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "SET_ENCLOSING_RULE_SCOPE_ATTR"

    // $ANTLR start "ENCLOSING_RULE_SCOPE_ATTR"
    public final void mENCLOSING_RULE_SCOPE_ATTR() throws RecognitionException {
        try {
            int _type = ENCLOSING_RULE_SCOPE_ATTR;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            Token x=null;
            Token y=null;

            // org/antlr/grammar/v3/ActionTranslator.g:229:2: ( '$' x= ID '.' y= ID {...}?)
            // org/antlr/grammar/v3/ActionTranslator.g:229:4: '$' x= ID '.' y= ID {...}?
            {
            match('$'); if (state.failed) return ;
            int xStart97 = getCharIndex();
            mID(); if (state.failed) return ;
            x = new CommonToken(input, Token.INVALID_TOKEN_TYPE, Token.DEFAULT_CHANNEL, xStart97, getCharIndex()-1);
            match('.'); if (state.failed) return ;
            int yStart103 = getCharIndex();
            mID(); if (state.failed) return ;
            y = new CommonToken(input, Token.INVALID_TOKEN_TYPE, Token.DEFAULT_CHANNEL, yStart103, getCharIndex()-1);
            if ( !((enclosingRule!=null &&
            	                         (x!=null?x.getText():null).equals(enclosingRule.name) &&
            	                         enclosingRule.getLocalAttributeScope((y!=null?y.getText():null))!=null)) ) {
                if (state.backtracking>0) {state.failed=true; return ;}
                throw new FailedPredicateException(input, "ENCLOSING_RULE_SCOPE_ATTR", "enclosingRule!=null &&\n\t                         $x.text.equals(enclosingRule.name) &&\n\t                         enclosingRule.getLocalAttributeScope($y.text)!=null");
            }
            if ( state.backtracking==1 ) {

              		if ( isRuleRefInAlt((x!=null?x.getText():null))  ) {
              			ErrorManager.grammarError(ErrorManager.MSG_RULE_REF_AMBIG_WITH_RULE_IN_ALT,
              									  grammar,
              									  actionToken,
              									  (x!=null?x.getText():null));
              		}
              		StringTemplate st = null;
              		AttributeScope scope = enclosingRule.getLocalAttributeScope((y!=null?y.getText():null));
              		if ( scope.isPredefinedRuleScope ) {
              			st = template("rulePropertyRef_"+(y!=null?y.getText():null));
              			grammar.referenceRuleLabelPredefinedAttribute((x!=null?x.getText():null));
              			st.setAttribute("scope", (x!=null?x.getText():null));
              			st.setAttribute("attr", (y!=null?y.getText():null));
              		}
              	    else if ( scope.isPredefinedLexerRuleScope ) {
              	    	// perhaps not the most precise error message to use, but...
              			ErrorManager.grammarError(ErrorManager.MSG_RULE_HAS_NO_ARGS,
              									  grammar,
              									  actionToken,
              									  (x!=null?x.getText():null));
              	    }
              		else if ( scope.isParameterScope ) {
              			st = template("parameterAttributeRef");
              			st.setAttribute("attr", scope.getAttribute((y!=null?y.getText():null)));
              		}
              		else { // must be return value
              			st = template("returnAttributeRef");
              			st.setAttribute("ruleDescriptor", enclosingRule);
              			st.setAttribute("attr", scope.getAttribute((y!=null?y.getText():null)));
              		}
              		
            }

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "ENCLOSING_RULE_SCOPE_ATTR"

    // $ANTLR start "SET_TOKEN_SCOPE_ATTR"
    public final void mSET_TOKEN_SCOPE_ATTR() throws RecognitionException {
        try {
            int _type = SET_TOKEN_SCOPE_ATTR;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            Token x=null;
            Token y=null;

            // org/antlr/grammar/v3/ActionTranslator.g:269:2: ( '$' x= ID '.' y= ID ( WS )? '=' {...}?)
            // org/antlr/grammar/v3/ActionTranslator.g:269:4: '$' x= ID '.' y= ID ( WS )? '=' {...}?
            {
            match('$'); if (state.failed) return ;
            int xStart129 = getCharIndex();
            mID(); if (state.failed) return ;
            x = new CommonToken(input, Token.INVALID_TOKEN_TYPE, Token.DEFAULT_CHANNEL, xStart129, getCharIndex()-1);
            match('.'); if (state.failed) return ;
            int yStart135 = getCharIndex();
            mID(); if (state.failed) return ;
            y = new CommonToken(input, Token.INVALID_TOKEN_TYPE, Token.DEFAULT_CHANNEL, yStart135, getCharIndex()-1);
            // org/antlr/grammar/v3/ActionTranslator.g:269:22: ( WS )?
            int alt2=2;
            int LA2_0 = input.LA(1);

            if ( ((LA2_0>='\t' && LA2_0<='\n')||LA2_0=='\r'||LA2_0==' ') ) {
                alt2=1;
            }
            switch (alt2) {
                case 1 :
                    // org/antlr/grammar/v3/ActionTranslator.g:269:22: WS
                    {
                    mWS(); if (state.failed) return ;

                    }
                    break;

            }

            match('='); if (state.failed) return ;
            if ( !((enclosingRule!=null && input.LA(1)!='=' &&
            	                         (enclosingRule.getTokenLabel((x!=null?x.getText():null))!=null||
            	                          isTokenRefInAlt((x!=null?x.getText():null))) &&
            	                         AttributeScope.tokenScope.getAttribute((y!=null?y.getText():null))!=null)) ) {
                if (state.backtracking>0) {state.failed=true; return ;}
                throw new FailedPredicateException(input, "SET_TOKEN_SCOPE_ATTR", "enclosingRule!=null && input.LA(1)!='=' &&\n\t                         (enclosingRule.getTokenLabel($x.text)!=null||\n\t                          isTokenRefInAlt($x.text)) &&\n\t                         AttributeScope.tokenScope.getAttribute($y.text)!=null");
            }
            if ( state.backtracking==1 ) {

              		ErrorManager.grammarError(ErrorManager.MSG_WRITE_TO_READONLY_ATTR,
              								  grammar,
              								  actionToken,
              								  (x!=null?x.getText():null),
              								  (y!=null?y.getText():null));
              		
            }

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "SET_TOKEN_SCOPE_ATTR"

    // $ANTLR start "TOKEN_SCOPE_ATTR"
    public final void mTOKEN_SCOPE_ATTR() throws RecognitionException {
        try {
            int _type = TOKEN_SCOPE_ATTR;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            Token x=null;
            Token y=null;

            // org/antlr/grammar/v3/ActionTranslator.g:288:2: ( '$' x= ID '.' y= ID {...}?)
            // org/antlr/grammar/v3/ActionTranslator.g:288:4: '$' x= ID '.' y= ID {...}?
            {
            match('$'); if (state.failed) return ;
            int xStart174 = getCharIndex();
            mID(); if (state.failed) return ;
            x = new CommonToken(input, Token.INVALID_TOKEN_TYPE, Token.DEFAULT_CHANNEL, xStart174, getCharIndex()-1);
            match('.'); if (state.failed) return ;
            int yStart180 = getCharIndex();
            mID(); if (state.failed) return ;
            y = new CommonToken(input, Token.INVALID_TOKEN_TYPE, Token.DEFAULT_CHANNEL, yStart180, getCharIndex()-1);
            if ( !((enclosingRule!=null &&
            	                         (enclosingRule.getTokenLabel((x!=null?x.getText():null))!=null||
            	                          isTokenRefInAlt((x!=null?x.getText():null))) &&
            	                         AttributeScope.tokenScope.getAttribute((y!=null?y.getText():null))!=null &&
            	                         (grammar.type!=Grammar.LEXER ||
            	                         getElementLabel((x!=null?x.getText():null)).elementRef.token.getType()==ANTLRParser.TOKEN_REF ||
            	                         getElementLabel((x!=null?x.getText():null)).elementRef.token.getType()==ANTLRParser.STRING_LITERAL))) ) {
                if (state.backtracking>0) {state.failed=true; return ;}
                throw new FailedPredicateException(input, "TOKEN_SCOPE_ATTR", "enclosingRule!=null &&\n\t                         (enclosingRule.getTokenLabel($x.text)!=null||\n\t                          isTokenRefInAlt($x.text)) &&\n\t                         AttributeScope.tokenScope.getAttribute($y.text)!=null &&\n\t                         (grammar.type!=Grammar.LEXER ||\n\t                         getElementLabel($x.text).elementRef.token.getType()==ANTLRParser.TOKEN_REF ||\n\t                         getElementLabel($x.text).elementRef.token.getType()==ANTLRParser.STRING_LITERAL)");
            }
            if ( state.backtracking==1 ) {

              		String label = (x!=null?x.getText():null);
              		if ( enclosingRule.getTokenLabel((x!=null?x.getText():null))==null ) {
              			// $tokenref.attr  gotta get old label or compute new one
              			checkElementRefUniqueness((x!=null?x.getText():null), true);
              			label = enclosingRule.getElementLabel((x!=null?x.getText():null), outerAltNum, generator);
              			if ( label==null ) {
              				ErrorManager.grammarError(ErrorManager.MSG_FORWARD_ELEMENT_REF,
              										  grammar,
              										  actionToken,
              										  "$"+(x!=null?x.getText():null)+"."+(y!=null?y.getText():null));
              				label = (x!=null?x.getText():null);
              			}
              		}
              		StringTemplate st = template("tokenLabelPropertyRef_"+(y!=null?y.getText():null));
              		st.setAttribute("scope", label);
              		st.setAttribute("attr", AttributeScope.tokenScope.getAttribute((y!=null?y.getText():null)));
              		
            }

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "TOKEN_SCOPE_ATTR"

    // $ANTLR start "SET_RULE_SCOPE_ATTR"
    public final void mSET_RULE_SCOPE_ATTR() throws RecognitionException {
        try {
            int _type = SET_RULE_SCOPE_ATTR;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            Token x=null;
            Token y=null;


            Grammar.LabelElementPair pair=null;
            String refdRuleName=null;

            // org/antlr/grammar/v3/ActionTranslator.g:326:2: ( '$' x= ID '.' y= ID ( WS )? '=' {...}?{...}?)
            // org/antlr/grammar/v3/ActionTranslator.g:326:4: '$' x= ID '.' y= ID ( WS )? '=' {...}?{...}?
            {
            match('$'); if (state.failed) return ;
            int xStart211 = getCharIndex();
            mID(); if (state.failed) return ;
            x = new CommonToken(input, Token.INVALID_TOKEN_TYPE, Token.DEFAULT_CHANNEL, xStart211, getCharIndex()-1);
            match('.'); if (state.failed) return ;
            int yStart217 = getCharIndex();
            mID(); if (state.failed) return ;
            y = new CommonToken(input, Token.INVALID_TOKEN_TYPE, Token.DEFAULT_CHANNEL, yStart217, getCharIndex()-1);
            // org/antlr/grammar/v3/ActionTranslator.g:326:22: ( WS )?
            int alt3=2;
            int LA3_0 = input.LA(1);

            if ( ((LA3_0>='\t' && LA3_0<='\n')||LA3_0=='\r'||LA3_0==' ') ) {
                alt3=1;
            }
            switch (alt3) {
                case 1 :
                    // org/antlr/grammar/v3/ActionTranslator.g:326:22: WS
                    {
                    mWS(); if (state.failed) return ;

                    }
                    break;

            }

            match('='); if (state.failed) return ;
            if ( !((enclosingRule!=null && input.LA(1)!='=')) ) {
                if (state.backtracking>0) {state.failed=true; return ;}
                throw new FailedPredicateException(input, "SET_RULE_SCOPE_ATTR", "enclosingRule!=null && input.LA(1)!='='");
            }
            if ( state.backtracking==1 ) {

              		pair = enclosingRule.getRuleLabel((x!=null?x.getText():null));
              		refdRuleName = (x!=null?x.getText():null);
              		if ( pair!=null ) {
              			refdRuleName = pair.referencedRuleName;
              		}
              		
            }
            if ( !(((enclosingRule.getRuleLabel((x!=null?x.getText():null))!=null || isRuleRefInAlt((x!=null?x.getText():null))) &&
            	      getRuleLabelAttribute(enclosingRule.getRuleLabel((x!=null?x.getText():null))!=null?enclosingRule.getRuleLabel((x!=null?x.getText():null)).referencedRuleName:(x!=null?x.getText():null),(y!=null?y.getText():null))!=null)) ) {
                if (state.backtracking>0) {state.failed=true; return ;}
                throw new FailedPredicateException(input, "SET_RULE_SCOPE_ATTR", "(enclosingRule.getRuleLabel($x.text)!=null || isRuleRefInAlt($x.text)) &&\n\t      getRuleLabelAttribute(enclosingRule.getRuleLabel($x.text)!=null?enclosingRule.getRuleLabel($x.text).referencedRuleName:$x.text,$y.text)!=null");
            }
            if ( state.backtracking==1 ) {

              		ErrorManager.grammarError(ErrorManager.MSG_WRITE_TO_READONLY_ATTR,
              								  grammar,
              								  actionToken,
              								  (x!=null?x.getText():null),
              								  (y!=null?y.getText():null));
              		
            }

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "SET_RULE_SCOPE_ATTR"

    // $ANTLR start "RULE_SCOPE_ATTR"
    public final void mRULE_SCOPE_ATTR() throws RecognitionException {
        try {
            int _type = RULE_SCOPE_ATTR;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            Token x=null;
            Token y=null;


            Grammar.LabelElementPair pair=null;
            String refdRuleName=null;

            // org/antlr/grammar/v3/ActionTranslator.g:355:2: ( '$' x= ID '.' y= ID {...}?{...}?)
            // org/antlr/grammar/v3/ActionTranslator.g:355:4: '$' x= ID '.' y= ID {...}?{...}?
            {
            match('$'); if (state.failed) return ;
            int xStart270 = getCharIndex();
            mID(); if (state.failed) return ;
            x = new CommonToken(input, Token.INVALID_TOKEN_TYPE, Token.DEFAULT_CHANNEL, xStart270, getCharIndex()-1);
            match('.'); if (state.failed) return ;
            int yStart276 = getCharIndex();
            mID(); if (state.failed) return ;
            y = new CommonToken(input, Token.INVALID_TOKEN_TYPE, Token.DEFAULT_CHANNEL, yStart276, getCharIndex()-1);
            if ( !((enclosingRule!=null)) ) {
                if (state.backtracking>0) {state.failed=true; return ;}
                throw new FailedPredicateException(input, "RULE_SCOPE_ATTR", "enclosingRule!=null");
            }
            if ( state.backtracking==1 ) {

              		pair = enclosingRule.getRuleLabel((x!=null?x.getText():null));
              		refdRuleName = (x!=null?x.getText():null);
              		if ( pair!=null ) {
              			refdRuleName = pair.referencedRuleName;
              		}
              		
            }
            if ( !(((enclosingRule.getRuleLabel((x!=null?x.getText():null))!=null || isRuleRefInAlt((x!=null?x.getText():null))) &&
            	      getRuleLabelAttribute(enclosingRule.getRuleLabel((x!=null?x.getText():null))!=null?enclosingRule.getRuleLabel((x!=null?x.getText():null)).referencedRuleName:(x!=null?x.getText():null),(y!=null?y.getText():null))!=null)) ) {
                if (state.backtracking>0) {state.failed=true; return ;}
                throw new FailedPredicateException(input, "RULE_SCOPE_ATTR", "(enclosingRule.getRuleLabel($x.text)!=null || isRuleRefInAlt($x.text)) &&\n\t      getRuleLabelAttribute(enclosingRule.getRuleLabel($x.text)!=null?enclosingRule.getRuleLabel($x.text).referencedRuleName:$x.text,$y.text)!=null");
            }
            if ( state.backtracking==1 ) {

              		String label = (x!=null?x.getText():null);
              		if ( pair==null ) {
              			// $ruleref.attr  gotta get old label or compute new one
              			checkElementRefUniqueness((x!=null?x.getText():null), false);
              			label = enclosingRule.getElementLabel((x!=null?x.getText():null), outerAltNum, generator);
              			if ( label==null ) {
              				ErrorManager.grammarError(ErrorManager.MSG_FORWARD_ELEMENT_REF,
              										  grammar,
              										  actionToken,
              										  "$"+(x!=null?x.getText():null)+"."+(y!=null?y.getText():null));
              				label = (x!=null?x.getText():null);
              			}
              		}
              		StringTemplate st;
              		Rule refdRule = grammar.getRule(refdRuleName);
              		AttributeScope scope = refdRule.getLocalAttributeScope((y!=null?y.getText():null));
              		if ( scope.isPredefinedRuleScope ) {
              			st = template("ruleLabelPropertyRef_"+(y!=null?y.getText():null));
              			grammar.referenceRuleLabelPredefinedAttribute(refdRuleName);
              			st.setAttribute("scope", label);
              			st.setAttribute("attr", (y!=null?y.getText():null));
              		}
              		else if ( scope.isPredefinedLexerRuleScope ) {
              			st = template("lexerRuleLabelPropertyRef_"+(y!=null?y.getText():null));
              			grammar.referenceRuleLabelPredefinedAttribute(refdRuleName);
              			st.setAttribute("scope", label);
              			st.setAttribute("attr", (y!=null?y.getText():null));
              		}
              		else if ( scope.isParameterScope ) {
              			// TODO: error!
              		}
              		else {
              			st = template("ruleLabelRef");
              			st.setAttribute("referencedRule", refdRule);
              			st.setAttribute("scope", label);
              			st.setAttribute("attr", scope.getAttribute((y!=null?y.getText():null)));
              		}
              		
            }

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "RULE_SCOPE_ATTR"

    // $ANTLR start "LABEL_REF"
    public final void mLABEL_REF() throws RecognitionException {
        try {
            int _type = LABEL_REF;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            Token ID1=null;

            // org/antlr/grammar/v3/ActionTranslator.g:413:2: ( '$' ID {...}?)
            // org/antlr/grammar/v3/ActionTranslator.g:413:4: '$' ID {...}?
            {
            match('$'); if (state.failed) return ;
            int ID1Start318 = getCharIndex();
            mID(); if (state.failed) return ;
            ID1 = new CommonToken(input, Token.INVALID_TOKEN_TYPE, Token.DEFAULT_CHANNEL, ID1Start318, getCharIndex()-1);
            if ( !((enclosingRule!=null &&
            	            getElementLabel((ID1!=null?ID1.getText():null))!=null &&
            		        enclosingRule.getRuleLabel((ID1!=null?ID1.getText():null))==null)) ) {
                if (state.backtracking>0) {state.failed=true; return ;}
                throw new FailedPredicateException(input, "LABEL_REF", "enclosingRule!=null &&\n\t            getElementLabel($ID.text)!=null &&\n\t\t        enclosingRule.getRuleLabel($ID.text)==null");
            }
            if ( state.backtracking==1 ) {

              		StringTemplate st;
              		Grammar.LabelElementPair pair = getElementLabel((ID1!=null?ID1.getText():null));
              		if ( pair.type==Grammar.RULE_LIST_LABEL ||
                           pair.type==Grammar.TOKEN_LIST_LABEL ||
                           pair.type==Grammar.WILDCARD_TREE_LIST_LABEL )
                      {
              			st = template("listLabelRef");
              		}
              		else {
              			st = template("tokenLabelRef");
              		}
              		st.setAttribute("label", (ID1!=null?ID1.getText():null));
              		
            }

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "LABEL_REF"

    // $ANTLR start "ISOLATED_TOKEN_REF"
    public final void mISOLATED_TOKEN_REF() throws RecognitionException {
        try {
            int _type = ISOLATED_TOKEN_REF;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            Token ID2=null;

            // org/antlr/grammar/v3/ActionTranslator.g:435:2: ( '$' ID {...}?)
            // org/antlr/grammar/v3/ActionTranslator.g:435:4: '$' ID {...}?
            {
            match('$'); if (state.failed) return ;
            int ID2Start342 = getCharIndex();
            mID(); if (state.failed) return ;
            ID2 = new CommonToken(input, Token.INVALID_TOKEN_TYPE, Token.DEFAULT_CHANNEL, ID2Start342, getCharIndex()-1);
            if ( !((grammar.type!=Grammar.LEXER && enclosingRule!=null && isTokenRefInAlt((ID2!=null?ID2.getText():null)))) ) {
                if (state.backtracking>0) {state.failed=true; return ;}
                throw new FailedPredicateException(input, "ISOLATED_TOKEN_REF", "grammar.type!=Grammar.LEXER && enclosingRule!=null && isTokenRefInAlt($ID.text)");
            }
            if ( state.backtracking==1 ) {

              		String label = enclosingRule.getElementLabel((ID2!=null?ID2.getText():null), outerAltNum, generator);
              		checkElementRefUniqueness((ID2!=null?ID2.getText():null), true);
              		if ( label==null ) {
              			ErrorManager.grammarError(ErrorManager.MSG_FORWARD_ELEMENT_REF,
              									  grammar,
              									  actionToken,
              									  (ID2!=null?ID2.getText():null));
              		}
              		else {
              			StringTemplate st = template("tokenLabelRef");
              			st.setAttribute("label", label);
              		}
              		
            }

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "ISOLATED_TOKEN_REF"

    // $ANTLR start "ISOLATED_LEXER_RULE_REF"
    public final void mISOLATED_LEXER_RULE_REF() throws RecognitionException {
        try {
            int _type = ISOLATED_LEXER_RULE_REF;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            Token ID3=null;

            // org/antlr/grammar/v3/ActionTranslator.g:455:2: ( '$' ID {...}?)
            // org/antlr/grammar/v3/ActionTranslator.g:455:4: '$' ID {...}?
            {
            match('$'); if (state.failed) return ;
            int ID3Start366 = getCharIndex();
            mID(); if (state.failed) return ;
            ID3 = new CommonToken(input, Token.INVALID_TOKEN_TYPE, Token.DEFAULT_CHANNEL, ID3Start366, getCharIndex()-1);
            if ( !((grammar.type==Grammar.LEXER &&
            	             enclosingRule!=null &&
            	             isRuleRefInAlt((ID3!=null?ID3.getText():null)))) ) {
                if (state.backtracking>0) {state.failed=true; return ;}
                throw new FailedPredicateException(input, "ISOLATED_LEXER_RULE_REF", "grammar.type==Grammar.LEXER &&\n\t             enclosingRule!=null &&\n\t             isRuleRefInAlt($ID.text)");
            }
            if ( state.backtracking==1 ) {

              		String label = enclosingRule.getElementLabel((ID3!=null?ID3.getText():null), outerAltNum, generator);
              		checkElementRefUniqueness((ID3!=null?ID3.getText():null), false);
              		if ( label==null ) {
              			ErrorManager.grammarError(ErrorManager.MSG_FORWARD_ELEMENT_REF,
              									  grammar,
              									  actionToken,
              									  (ID3!=null?ID3.getText():null));
              		}
              		else {
              			StringTemplate st = template("lexerRuleLabel");
              			st.setAttribute("label", label);
              		}
              		
            }

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "ISOLATED_LEXER_RULE_REF"

    // $ANTLR start "SET_LOCAL_ATTR"
    public final void mSET_LOCAL_ATTR() throws RecognitionException {
        try {
            int _type = SET_LOCAL_ATTR;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            Token expr=null;
            Token ID4=null;

            // org/antlr/grammar/v3/ActionTranslator.g:487:2: ( '$' ID ( WS )? '=' expr= ATTR_VALUE_EXPR ';' {...}?)
            // org/antlr/grammar/v3/ActionTranslator.g:487:4: '$' ID ( WS )? '=' expr= ATTR_VALUE_EXPR ';' {...}?
            {
            match('$'); if (state.failed) return ;
            int ID4Start390 = getCharIndex();
            mID(); if (state.failed) return ;
            ID4 = new CommonToken(input, Token.INVALID_TOKEN_TYPE, Token.DEFAULT_CHANNEL, ID4Start390, getCharIndex()-1);
            // org/antlr/grammar/v3/ActionTranslator.g:487:11: ( WS )?
            int alt4=2;
            int LA4_0 = input.LA(1);

            if ( ((LA4_0>='\t' && LA4_0<='\n')||LA4_0=='\r'||LA4_0==' ') ) {
                alt4=1;
            }
            switch (alt4) {
                case 1 :
                    // org/antlr/grammar/v3/ActionTranslator.g:487:11: WS
                    {
                    mWS(); if (state.failed) return ;

                    }
                    break;

            }

            match('='); if (state.failed) return ;
            int exprStart399 = getCharIndex();
            mATTR_VALUE_EXPR(); if (state.failed) return ;
            expr = new CommonToken(input, Token.INVALID_TOKEN_TYPE, Token.DEFAULT_CHANNEL, exprStart399, getCharIndex()-1);
            match(';'); if (state.failed) return ;
            if ( !((enclosingRule!=null
            													&& enclosingRule.getLocalAttributeScope((ID4!=null?ID4.getText():null))!=null
            													&& !enclosingRule.getLocalAttributeScope((ID4!=null?ID4.getText():null)).isPredefinedLexerRuleScope)) ) {
                if (state.backtracking>0) {state.failed=true; return ;}
                throw new FailedPredicateException(input, "SET_LOCAL_ATTR", "enclosingRule!=null\n\t\t\t\t\t\t\t\t\t\t\t\t\t&& enclosingRule.getLocalAttributeScope($ID.text)!=null\n\t\t\t\t\t\t\t\t\t\t\t\t\t&& !enclosingRule.getLocalAttributeScope($ID.text).isPredefinedLexerRuleScope");
            }
            if ( state.backtracking==1 ) {

              		StringTemplate st;
              		AttributeScope scope = enclosingRule.getLocalAttributeScope((ID4!=null?ID4.getText():null));
              		if ( scope.isPredefinedRuleScope ) {
              			if ((ID4!=null?ID4.getText():null).equals("tree") || (ID4!=null?ID4.getText():null).equals("st")) {
              				st = template("ruleSetPropertyRef_"+(ID4!=null?ID4.getText():null));
              				grammar.referenceRuleLabelPredefinedAttribute(enclosingRule.name);
              				st.setAttribute("scope", enclosingRule.name);
              				st.setAttribute("attr", (ID4!=null?ID4.getText():null));
              				st.setAttribute("expr", translateAction((expr!=null?expr.getText():null)));
              			} else {
              				ErrorManager.grammarError(ErrorManager.MSG_WRITE_TO_READONLY_ATTR,
              										 grammar,
              										 actionToken,
              										 (ID4!=null?ID4.getText():null),
              										 "");
              			}
              		}
              		else if ( scope.isParameterScope ) {
              			st = template("parameterSetAttributeRef");
              			st.setAttribute("attr", scope.getAttribute((ID4!=null?ID4.getText():null)));
              			st.setAttribute("expr", translateAction((expr!=null?expr.getText():null)));
              		}
              		else {
              			st = template("returnSetAttributeRef");
              			st.setAttribute("ruleDescriptor", enclosingRule);
              			st.setAttribute("attr", scope.getAttribute((ID4!=null?ID4.getText():null)));
              			st.setAttribute("expr", translateAction((expr!=null?expr.getText():null)));
              			}
              		
            }

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "SET_LOCAL_ATTR"

    // $ANTLR start "LOCAL_ATTR"
    public final void mLOCAL_ATTR() throws RecognitionException {
        try {
            int _type = LOCAL_ATTR;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            Token ID5=null;

            // org/antlr/grammar/v3/ActionTranslator.g:523:2: ( '$' ID {...}?)
            // org/antlr/grammar/v3/ActionTranslator.g:523:4: '$' ID {...}?
            {
            match('$'); if (state.failed) return ;
            int ID5Start422 = getCharIndex();
            mID(); if (state.failed) return ;
            ID5 = new CommonToken(input, Token.INVALID_TOKEN_TYPE, Token.DEFAULT_CHANNEL, ID5Start422, getCharIndex()-1);
            if ( !((enclosingRule!=null && enclosingRule.getLocalAttributeScope((ID5!=null?ID5.getText():null))!=null)) ) {
                if (state.backtracking>0) {state.failed=true; return ;}
                throw new FailedPredicateException(input, "LOCAL_ATTR", "enclosingRule!=null && enclosingRule.getLocalAttributeScope($ID.text)!=null");
            }
            if ( state.backtracking==1 ) {

              		StringTemplate st;
              		AttributeScope scope = enclosingRule.getLocalAttributeScope((ID5!=null?ID5.getText():null));
              		if ( scope.isPredefinedRuleScope ) {
              			st = template("rulePropertyRef_"+(ID5!=null?ID5.getText():null));
              			grammar.referenceRuleLabelPredefinedAttribute(enclosingRule.name);
              			st.setAttribute("scope", enclosingRule.name);
              			st.setAttribute("attr", (ID5!=null?ID5.getText():null));
              		}
              		else if ( scope.isPredefinedLexerRuleScope ) {
              			st = template("lexerRulePropertyRef_"+(ID5!=null?ID5.getText():null));
              			st.setAttribute("scope", enclosingRule.name);
              			st.setAttribute("attr", (ID5!=null?ID5.getText():null));
              		}
              		else if ( scope.isParameterScope ) {
              			st = template("parameterAttributeRef");
              			st.setAttribute("attr", scope.getAttribute((ID5!=null?ID5.getText():null)));
              		}
              		else {
              			st = template("returnAttributeRef");
              			st.setAttribute("ruleDescriptor", enclosingRule);
              			st.setAttribute("attr", scope.getAttribute((ID5!=null?ID5.getText():null)));
              		}
              		
            }

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "LOCAL_ATTR"

    // $ANTLR start "SET_DYNAMIC_SCOPE_ATTR"
    public final void mSET_DYNAMIC_SCOPE_ATTR() throws RecognitionException {
        try {
            int _type = SET_DYNAMIC_SCOPE_ATTR;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            Token x=null;
            Token y=null;
            Token expr=null;

            // org/antlr/grammar/v3/ActionTranslator.g:564:2: ( '$' x= ID '::' y= ID ( WS )? '=' expr= ATTR_VALUE_EXPR ';' {...}?)
            // org/antlr/grammar/v3/ActionTranslator.g:564:4: '$' x= ID '::' y= ID ( WS )? '=' expr= ATTR_VALUE_EXPR ';' {...}?
            {
            match('$'); if (state.failed) return ;
            int xStart448 = getCharIndex();
            mID(); if (state.failed) return ;
            x = new CommonToken(input, Token.INVALID_TOKEN_TYPE, Token.DEFAULT_CHANNEL, xStart448, getCharIndex()-1);
            match("::"); if (state.failed) return ;

            int yStart454 = getCharIndex();
            mID(); if (state.failed) return ;
            y = new CommonToken(input, Token.INVALID_TOKEN_TYPE, Token.DEFAULT_CHANNEL, yStart454, getCharIndex()-1);
            // org/antlr/grammar/v3/ActionTranslator.g:564:23: ( WS )?
            int alt5=2;
            int LA5_0 = input.LA(1);

            if ( ((LA5_0>='\t' && LA5_0<='\n')||LA5_0=='\r'||LA5_0==' ') ) {
                alt5=1;
            }
            switch (alt5) {
                case 1 :
                    // org/antlr/grammar/v3/ActionTranslator.g:564:23: WS
                    {
                    mWS(); if (state.failed) return ;

                    }
                    break;

            }

            match('='); if (state.failed) return ;
            int exprStart463 = getCharIndex();
            mATTR_VALUE_EXPR(); if (state.failed) return ;
            expr = new CommonToken(input, Token.INVALID_TOKEN_TYPE, Token.DEFAULT_CHANNEL, exprStart463, getCharIndex()-1);
            match(';'); if (state.failed) return ;
            if ( !((resolveDynamicScope((x!=null?x.getText():null))!=null &&
            						     resolveDynamicScope((x!=null?x.getText():null)).getAttribute((y!=null?y.getText():null))!=null)) ) {
                if (state.backtracking>0) {state.failed=true; return ;}
                throw new FailedPredicateException(input, "SET_DYNAMIC_SCOPE_ATTR", "resolveDynamicScope($x.text)!=null &&\n\t\t\t\t\t\t     resolveDynamicScope($x.text).getAttribute($y.text)!=null");
            }
            if ( state.backtracking==1 ) {

              		AttributeScope scope = resolveDynamicScope((x!=null?x.getText():null));
              		if ( scope!=null ) {
              			StringTemplate st = template("scopeSetAttributeRef");
              			st.setAttribute("scope", (x!=null?x.getText():null));
              			st.setAttribute("attr",  scope.getAttribute((y!=null?y.getText():null)));
              			st.setAttribute("expr",  translateAction((expr!=null?expr.getText():null)));
              		}
              		else {
              			// error: invalid dynamic attribute
              		}
              		
            }

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "SET_DYNAMIC_SCOPE_ATTR"

    // $ANTLR start "DYNAMIC_SCOPE_ATTR"
    public final void mDYNAMIC_SCOPE_ATTR() throws RecognitionException {
        try {
            int _type = DYNAMIC_SCOPE_ATTR;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            Token x=null;
            Token y=null;

            // org/antlr/grammar/v3/ActionTranslator.g:583:2: ( '$' x= ID '::' y= ID {...}?)
            // org/antlr/grammar/v3/ActionTranslator.g:583:4: '$' x= ID '::' y= ID {...}?
            {
            match('$'); if (state.failed) return ;
            int xStart498 = getCharIndex();
            mID(); if (state.failed) return ;
            x = new CommonToken(input, Token.INVALID_TOKEN_TYPE, Token.DEFAULT_CHANNEL, xStart498, getCharIndex()-1);
            match("::"); if (state.failed) return ;

            int yStart504 = getCharIndex();
            mID(); if (state.failed) return ;
            y = new CommonToken(input, Token.INVALID_TOKEN_TYPE, Token.DEFAULT_CHANNEL, yStart504, getCharIndex()-1);
            if ( !((resolveDynamicScope((x!=null?x.getText():null))!=null &&
            						     resolveDynamicScope((x!=null?x.getText():null)).getAttribute((y!=null?y.getText():null))!=null)) ) {
                if (state.backtracking>0) {state.failed=true; return ;}
                throw new FailedPredicateException(input, "DYNAMIC_SCOPE_ATTR", "resolveDynamicScope($x.text)!=null &&\n\t\t\t\t\t\t     resolveDynamicScope($x.text).getAttribute($y.text)!=null");
            }
            if ( state.backtracking==1 ) {

              		AttributeScope scope = resolveDynamicScope((x!=null?x.getText():null));
              		if ( scope!=null ) {
              			StringTemplate st = template("scopeAttributeRef");
              			st.setAttribute("scope", (x!=null?x.getText():null));
              			st.setAttribute("attr",  scope.getAttribute((y!=null?y.getText():null)));
              		}
              		else {
              			// error: invalid dynamic attribute
              		}
              		
            }

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "DYNAMIC_SCOPE_ATTR"

    // $ANTLR start "ERROR_SCOPED_XY"
    public final void mERROR_SCOPED_XY() throws RecognitionException {
        try {
            int _type = ERROR_SCOPED_XY;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            Token x=null;
            Token y=null;

            // org/antlr/grammar/v3/ActionTranslator.g:602:2: ( '$' x= ID '::' y= ID )
            // org/antlr/grammar/v3/ActionTranslator.g:602:4: '$' x= ID '::' y= ID
            {
            match('$'); if (state.failed) return ;
            int xStart538 = getCharIndex();
            mID(); if (state.failed) return ;
            x = new CommonToken(input, Token.INVALID_TOKEN_TYPE, Token.DEFAULT_CHANNEL, xStart538, getCharIndex()-1);
            match("::"); if (state.failed) return ;

            int yStart544 = getCharIndex();
            mID(); if (state.failed) return ;
            y = new CommonToken(input, Token.INVALID_TOKEN_TYPE, Token.DEFAULT_CHANNEL, yStart544, getCharIndex()-1);
            if ( state.backtracking==1 ) {

              		chunks.add(getText());
              		generator.issueInvalidScopeError((x!=null?x.getText():null),(y!=null?y.getText():null),
              		                                 enclosingRule,actionToken,
              		                                 outerAltNum);		
              		
            }

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "ERROR_SCOPED_XY"

    // $ANTLR start "DYNAMIC_NEGATIVE_INDEXED_SCOPE_ATTR"
    public final void mDYNAMIC_NEGATIVE_INDEXED_SCOPE_ATTR() throws RecognitionException {
        try {
            int _type = DYNAMIC_NEGATIVE_INDEXED_SCOPE_ATTR;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            Token x=null;
            Token expr=null;
            Token y=null;

            // org/antlr/grammar/v3/ActionTranslator.g:620:2: ( '$' x= ID '[' '-' expr= SCOPE_INDEX_EXPR ']' '::' y= ID )
            // org/antlr/grammar/v3/ActionTranslator.g:620:4: '$' x= ID '[' '-' expr= SCOPE_INDEX_EXPR ']' '::' y= ID
            {
            match('$'); if (state.failed) return ;
            int xStart566 = getCharIndex();
            mID(); if (state.failed) return ;
            x = new CommonToken(input, Token.INVALID_TOKEN_TYPE, Token.DEFAULT_CHANNEL, xStart566, getCharIndex()-1);
            match('['); if (state.failed) return ;
            match('-'); if (state.failed) return ;
            int exprStart574 = getCharIndex();
            mSCOPE_INDEX_EXPR(); if (state.failed) return ;
            expr = new CommonToken(input, Token.INVALID_TOKEN_TYPE, Token.DEFAULT_CHANNEL, exprStart574, getCharIndex()-1);
            match(']'); if (state.failed) return ;
            match("::"); if (state.failed) return ;

            int yStart582 = getCharIndex();
            mID(); if (state.failed) return ;
            y = new CommonToken(input, Token.INVALID_TOKEN_TYPE, Token.DEFAULT_CHANNEL, yStart582, getCharIndex()-1);
            if ( state.backtracking==1 ) {

              		StringTemplate st = template("scopeAttributeRef");
              		st.setAttribute("scope",    (x!=null?x.getText():null));
              		st.setAttribute("attr",     resolveDynamicScope((x!=null?x.getText():null)).getAttribute((y!=null?y.getText():null)));
              		st.setAttribute("negIndex", (expr!=null?expr.getText():null));
              		
            }

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "DYNAMIC_NEGATIVE_INDEXED_SCOPE_ATTR"

    // $ANTLR start "DYNAMIC_ABSOLUTE_INDEXED_SCOPE_ATTR"
    public final void mDYNAMIC_ABSOLUTE_INDEXED_SCOPE_ATTR() throws RecognitionException {
        try {
            int _type = DYNAMIC_ABSOLUTE_INDEXED_SCOPE_ATTR;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            Token x=null;
            Token expr=null;
            Token y=null;

            // org/antlr/grammar/v3/ActionTranslator.g:631:2: ( '$' x= ID '[' expr= SCOPE_INDEX_EXPR ']' '::' y= ID )
            // org/antlr/grammar/v3/ActionTranslator.g:631:4: '$' x= ID '[' expr= SCOPE_INDEX_EXPR ']' '::' y= ID
            {
            match('$'); if (state.failed) return ;
            int xStart606 = getCharIndex();
            mID(); if (state.failed) return ;
            x = new CommonToken(input, Token.INVALID_TOKEN_TYPE, Token.DEFAULT_CHANNEL, xStart606, getCharIndex()-1);
            match('['); if (state.failed) return ;
            int exprStart612 = getCharIndex();
            mSCOPE_INDEX_EXPR(); if (state.failed) return ;
            expr = new CommonToken(input, Token.INVALID_TOKEN_TYPE, Token.DEFAULT_CHANNEL, exprStart612, getCharIndex()-1);
            match(']'); if (state.failed) return ;
            match("::"); if (state.failed) return ;

            int yStart620 = getCharIndex();
            mID(); if (state.failed) return ;
            y = new CommonToken(input, Token.INVALID_TOKEN_TYPE, Token.DEFAULT_CHANNEL, yStart620, getCharIndex()-1);
            if ( state.backtracking==1 ) {

              		StringTemplate st = template("scopeAttributeRef");
              		st.setAttribute("scope", (x!=null?x.getText():null));
              		st.setAttribute("attr",  resolveDynamicScope((x!=null?x.getText():null)).getAttribute((y!=null?y.getText():null)));
              		st.setAttribute("index", (expr!=null?expr.getText():null));
              		
            }

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "DYNAMIC_ABSOLUTE_INDEXED_SCOPE_ATTR"

    // $ANTLR start "SCOPE_INDEX_EXPR"
    public final void mSCOPE_INDEX_EXPR() throws RecognitionException {
        try {
            // org/antlr/grammar/v3/ActionTranslator.g:643:2: ( (~ ']' )+ )
            // org/antlr/grammar/v3/ActionTranslator.g:643:4: (~ ']' )+
            {
            // org/antlr/grammar/v3/ActionTranslator.g:643:4: (~ ']' )+
            int cnt6=0;
            loop6:
            do {
                int alt6=2;
                int LA6_0 = input.LA(1);

                if ( ((LA6_0>='\u0000' && LA6_0<='\\')||(LA6_0>='^' && LA6_0<='\uFFFF')) ) {
                    alt6=1;
                }


                switch (alt6) {
            	case 1 :
            	    // org/antlr/grammar/v3/ActionTranslator.g:643:5: ~ ']'
            	    {
            	    if ( (input.LA(1)>='\u0000' && input.LA(1)<='\\')||(input.LA(1)>='^' && input.LA(1)<='\uFFFF') ) {
            	        input.consume();
            	    state.failed=false;
            	    }
            	    else {
            	        if (state.backtracking>0) {state.failed=true; return ;}
            	        MismatchedSetException mse = new MismatchedSetException(null,input);
            	        recover(mse);
            	        throw mse;}


            	    }
            	    break;

            	default :
            	    if ( cnt6 >= 1 ) break loop6;
            	    if (state.backtracking>0) {state.failed=true; return ;}
                        EarlyExitException eee =
                            new EarlyExitException(6, input);
                        throw eee;
                }
                cnt6++;
            } while (true);


            }

        }
        finally {
        }
    }
    // $ANTLR end "SCOPE_INDEX_EXPR"

    // $ANTLR start "ISOLATED_DYNAMIC_SCOPE"
    public final void mISOLATED_DYNAMIC_SCOPE() throws RecognitionException {
        try {
            int _type = ISOLATED_DYNAMIC_SCOPE;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            Token ID6=null;

            // org/antlr/grammar/v3/ActionTranslator.g:652:2: ( '$' ID {...}?)
            // org/antlr/grammar/v3/ActionTranslator.g:652:4: '$' ID {...}?
            {
            match('$'); if (state.failed) return ;
            int ID6Start663 = getCharIndex();
            mID(); if (state.failed) return ;
            ID6 = new CommonToken(input, Token.INVALID_TOKEN_TYPE, Token.DEFAULT_CHANNEL, ID6Start663, getCharIndex()-1);
            if ( !((resolveDynamicScope((ID6!=null?ID6.getText():null))!=null)) ) {
                if (state.backtracking>0) {state.failed=true; return ;}
                throw new FailedPredicateException(input, "ISOLATED_DYNAMIC_SCOPE", "resolveDynamicScope($ID.text)!=null");
            }
            if ( state.backtracking==1 ) {

              		StringTemplate st = template("isolatedDynamicScopeRef");
              		st.setAttribute("scope", (ID6!=null?ID6.getText():null));
              		
            }

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "ISOLATED_DYNAMIC_SCOPE"

    // $ANTLR start "TEMPLATE_INSTANCE"
    public final void mTEMPLATE_INSTANCE() throws RecognitionException {
        try {
            int _type = TEMPLATE_INSTANCE;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // org/antlr/grammar/v3/ActionTranslator.g:665:2: ( '%' ID '(' ( ( WS )? ARG ( ',' ( WS )? ARG )* ( WS )? )? ')' )
            // org/antlr/grammar/v3/ActionTranslator.g:665:4: '%' ID '(' ( ( WS )? ARG ( ',' ( WS )? ARG )* ( WS )? )? ')'
            {
            match('%'); if (state.failed) return ;
            mID(); if (state.failed) return ;
            match('('); if (state.failed) return ;
            // org/antlr/grammar/v3/ActionTranslator.g:665:15: ( ( WS )? ARG ( ',' ( WS )? ARG )* ( WS )? )?
            int alt11=2;
            int LA11_0 = input.LA(1);

            if ( ((LA11_0>='\t' && LA11_0<='\n')||LA11_0=='\r'||LA11_0==' '||(LA11_0>='A' && LA11_0<='Z')||LA11_0=='_'||(LA11_0>='a' && LA11_0<='z')) ) {
                alt11=1;
            }
            switch (alt11) {
                case 1 :
                    // org/antlr/grammar/v3/ActionTranslator.g:665:17: ( WS )? ARG ( ',' ( WS )? ARG )* ( WS )?
                    {
                    // org/antlr/grammar/v3/ActionTranslator.g:665:17: ( WS )?
                    int alt7=2;
                    int LA7_0 = input.LA(1);

                    if ( ((LA7_0>='\t' && LA7_0<='\n')||LA7_0=='\r'||LA7_0==' ') ) {
                        alt7=1;
                    }
                    switch (alt7) {
                        case 1 :
                            // org/antlr/grammar/v3/ActionTranslator.g:665:17: WS
                            {
                            mWS(); if (state.failed) return ;

                            }
                            break;

                    }

                    mARG(); if (state.failed) return ;
                    // org/antlr/grammar/v3/ActionTranslator.g:665:25: ( ',' ( WS )? ARG )*
                    loop9:
                    do {
                        int alt9=2;
                        int LA9_0 = input.LA(1);

                        if ( (LA9_0==',') ) {
                            alt9=1;
                        }


                        switch (alt9) {
                    	case 1 :
                    	    // org/antlr/grammar/v3/ActionTranslator.g:665:26: ',' ( WS )? ARG
                    	    {
                    	    match(','); if (state.failed) return ;
                    	    // org/antlr/grammar/v3/ActionTranslator.g:665:30: ( WS )?
                    	    int alt8=2;
                    	    int LA8_0 = input.LA(1);

                    	    if ( ((LA8_0>='\t' && LA8_0<='\n')||LA8_0=='\r'||LA8_0==' ') ) {
                    	        alt8=1;
                    	    }
                    	    switch (alt8) {
                    	        case 1 :
                    	            // org/antlr/grammar/v3/ActionTranslator.g:665:30: WS
                    	            {
                    	            mWS(); if (state.failed) return ;

                    	            }
                    	            break;

                    	    }

                    	    mARG(); if (state.failed) return ;

                    	    }
                    	    break;

                    	default :
                    	    break loop9;
                        }
                    } while (true);

                    // org/antlr/grammar/v3/ActionTranslator.g:665:40: ( WS )?
                    int alt10=2;
                    int LA10_0 = input.LA(1);

                    if ( ((LA10_0>='\t' && LA10_0<='\n')||LA10_0=='\r'||LA10_0==' ') ) {
                        alt10=1;
                    }
                    switch (alt10) {
                        case 1 :
                            // org/antlr/grammar/v3/ActionTranslator.g:665:40: WS
                            {
                            mWS(); if (state.failed) return ;

                            }
                            break;

                    }


                    }
                    break;

            }

            match(')'); if (state.failed) return ;
            if ( state.backtracking==1 ) {

              		String action = getText().substring(1,getText().length());
              		String ruleName = "<outside-of-rule>";
              		if ( enclosingRule!=null ) {
              			ruleName = enclosingRule.name;
              		}
              		StringTemplate st =
              			generator.translateTemplateConstructor(ruleName,
              												   outerAltNum,
              												   actionToken,
              												   action);
              		if ( st!=null ) {
              			chunks.add(st);
              		}
              		
            }

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "TEMPLATE_INSTANCE"

    // $ANTLR start "INDIRECT_TEMPLATE_INSTANCE"
    public final void mINDIRECT_TEMPLATE_INSTANCE() throws RecognitionException {
        try {
            int _type = INDIRECT_TEMPLATE_INSTANCE;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // org/antlr/grammar/v3/ActionTranslator.g:686:2: ( '%' '(' ACTION ')' '(' ( ( WS )? ARG ( ',' ( WS )? ARG )* ( WS )? )? ')' )
            // org/antlr/grammar/v3/ActionTranslator.g:686:4: '%' '(' ACTION ')' '(' ( ( WS )? ARG ( ',' ( WS )? ARG )* ( WS )? )? ')'
            {
            match('%'); if (state.failed) return ;
            match('('); if (state.failed) return ;
            mACTION(); if (state.failed) return ;
            match(')'); if (state.failed) return ;
            match('('); if (state.failed) return ;
            // org/antlr/grammar/v3/ActionTranslator.g:686:27: ( ( WS )? ARG ( ',' ( WS )? ARG )* ( WS )? )?
            int alt16=2;
            int LA16_0 = input.LA(1);

            if ( ((LA16_0>='\t' && LA16_0<='\n')||LA16_0=='\r'||LA16_0==' '||(LA16_0>='A' && LA16_0<='Z')||LA16_0=='_'||(LA16_0>='a' && LA16_0<='z')) ) {
                alt16=1;
            }
            switch (alt16) {
                case 1 :
                    // org/antlr/grammar/v3/ActionTranslator.g:686:29: ( WS )? ARG ( ',' ( WS )? ARG )* ( WS )?
                    {
                    // org/antlr/grammar/v3/ActionTranslator.g:686:29: ( WS )?
                    int alt12=2;
                    int LA12_0 = input.LA(1);

                    if ( ((LA12_0>='\t' && LA12_0<='\n')||LA12_0=='\r'||LA12_0==' ') ) {
                        alt12=1;
                    }
                    switch (alt12) {
                        case 1 :
                            // org/antlr/grammar/v3/ActionTranslator.g:686:29: WS
                            {
                            mWS(); if (state.failed) return ;

                            }
                            break;

                    }

                    mARG(); if (state.failed) return ;
                    // org/antlr/grammar/v3/ActionTranslator.g:686:37: ( ',' ( WS )? ARG )*
                    loop14:
                    do {
                        int alt14=2;
                        int LA14_0 = input.LA(1);

                        if ( (LA14_0==',') ) {
                            alt14=1;
                        }


                        switch (alt14) {
                    	case 1 :
                    	    // org/antlr/grammar/v3/ActionTranslator.g:686:38: ',' ( WS )? ARG
                    	    {
                    	    match(','); if (state.failed) return ;
                    	    // org/antlr/grammar/v3/ActionTranslator.g:686:42: ( WS )?
                    	    int alt13=2;
                    	    int LA13_0 = input.LA(1);

                    	    if ( ((LA13_0>='\t' && LA13_0<='\n')||LA13_0=='\r'||LA13_0==' ') ) {
                    	        alt13=1;
                    	    }
                    	    switch (alt13) {
                    	        case 1 :
                    	            // org/antlr/grammar/v3/ActionTranslator.g:686:42: WS
                    	            {
                    	            mWS(); if (state.failed) return ;

                    	            }
                    	            break;

                    	    }

                    	    mARG(); if (state.failed) return ;

                    	    }
                    	    break;

                    	default :
                    	    break loop14;
                        }
                    } while (true);

                    // org/antlr/grammar/v3/ActionTranslator.g:686:52: ( WS )?
                    int alt15=2;
                    int LA15_0 = input.LA(1);

                    if ( ((LA15_0>='\t' && LA15_0<='\n')||LA15_0=='\r'||LA15_0==' ') ) {
                        alt15=1;
                    }
                    switch (alt15) {
                        case 1 :
                            // org/antlr/grammar/v3/ActionTranslator.g:686:52: WS
                            {
                            mWS(); if (state.failed) return ;

                            }
                            break;

                    }


                    }
                    break;

            }

            match(')'); if (state.failed) return ;
            if ( state.backtracking==1 ) {

              		String action = getText().substring(1,getText().length());
              		StringTemplate st =
              			generator.translateTemplateConstructor(enclosingRule.name,
              												   outerAltNum,
              												   actionToken,
              												   action);
              		chunks.add(st);
              		
            }

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "INDIRECT_TEMPLATE_INSTANCE"

    // $ANTLR start "ARG"
    public final void mARG() throws RecognitionException {
        try {
            // org/antlr/grammar/v3/ActionTranslator.g:700:5: ( ID '=' ACTION )
            // org/antlr/grammar/v3/ActionTranslator.g:700:7: ID '=' ACTION
            {
            mID(); if (state.failed) return ;
            match('='); if (state.failed) return ;
            mACTION(); if (state.failed) return ;

            }

        }
        finally {
        }
    }
    // $ANTLR end "ARG"

    // $ANTLR start "SET_EXPR_ATTRIBUTE"
    public final void mSET_EXPR_ATTRIBUTE() throws RecognitionException {
        try {
            int _type = SET_EXPR_ATTRIBUTE;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            Token a=null;
            Token expr=null;
            Token ID7=null;

            // org/antlr/grammar/v3/ActionTranslator.g:705:2: ( '%' a= ACTION '.' ID ( WS )? '=' expr= ATTR_VALUE_EXPR ';' )
            // org/antlr/grammar/v3/ActionTranslator.g:705:4: '%' a= ACTION '.' ID ( WS )? '=' expr= ATTR_VALUE_EXPR ';'
            {
            match('%'); if (state.failed) return ;
            int aStart813 = getCharIndex();
            mACTION(); if (state.failed) return ;
            a = new CommonToken(input, Token.INVALID_TOKEN_TYPE, Token.DEFAULT_CHANNEL, aStart813, getCharIndex()-1);
            match('.'); if (state.failed) return ;
            int ID7Start817 = getCharIndex();
            mID(); if (state.failed) return ;
            ID7 = new CommonToken(input, Token.INVALID_TOKEN_TYPE, Token.DEFAULT_CHANNEL, ID7Start817, getCharIndex()-1);
            // org/antlr/grammar/v3/ActionTranslator.g:705:24: ( WS )?
            int alt17=2;
            int LA17_0 = input.LA(1);

            if ( ((LA17_0>='\t' && LA17_0<='\n')||LA17_0=='\r'||LA17_0==' ') ) {
                alt17=1;
            }
            switch (alt17) {
                case 1 :
                    // org/antlr/grammar/v3/ActionTranslator.g:705:24: WS
                    {
                    mWS(); if (state.failed) return ;

                    }
                    break;

            }

            match('='); if (state.failed) return ;
            int exprStart826 = getCharIndex();
            mATTR_VALUE_EXPR(); if (state.failed) return ;
            expr = new CommonToken(input, Token.INVALID_TOKEN_TYPE, Token.DEFAULT_CHANNEL, exprStart826, getCharIndex()-1);
            match(';'); if (state.failed) return ;
            if ( state.backtracking==1 ) {

              		StringTemplate st = template("actionSetAttribute");
              		String action = (a!=null?a.getText():null);
              		action = action.substring(1,action.length()-1); // stuff inside {...}
              		st.setAttribute("st", translateAction(action));
              		st.setAttribute("attrName", (ID7!=null?ID7.getText():null));
              		st.setAttribute("expr", translateAction((expr!=null?expr.getText():null)));
              		
            }

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "SET_EXPR_ATTRIBUTE"

    // $ANTLR start "SET_ATTRIBUTE"
    public final void mSET_ATTRIBUTE() throws RecognitionException {
        try {
            int _type = SET_ATTRIBUTE;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            Token x=null;
            Token y=null;
            Token expr=null;

            // org/antlr/grammar/v3/ActionTranslator.g:722:2: ( '%' x= ID '.' y= ID ( WS )? '=' expr= ATTR_VALUE_EXPR ';' )
            // org/antlr/grammar/v3/ActionTranslator.g:722:4: '%' x= ID '.' y= ID ( WS )? '=' expr= ATTR_VALUE_EXPR ';'
            {
            match('%'); if (state.failed) return ;
            int xStart853 = getCharIndex();
            mID(); if (state.failed) return ;
            x = new CommonToken(input, Token.INVALID_TOKEN_TYPE, Token.DEFAULT_CHANNEL, xStart853, getCharIndex()-1);
            match('.'); if (state.failed) return ;
            int yStart859 = getCharIndex();
            mID(); if (state.failed) return ;
            y = new CommonToken(input, Token.INVALID_TOKEN_TYPE, Token.DEFAULT_CHANNEL, yStart859, getCharIndex()-1);
            // org/antlr/grammar/v3/ActionTranslator.g:722:22: ( WS )?
            int alt18=2;
            int LA18_0 = input.LA(1);

            if ( ((LA18_0>='\t' && LA18_0<='\n')||LA18_0=='\r'||LA18_0==' ') ) {
                alt18=1;
            }
            switch (alt18) {
                case 1 :
                    // org/antlr/grammar/v3/ActionTranslator.g:722:22: WS
                    {
                    mWS(); if (state.failed) return ;

                    }
                    break;

            }

            match('='); if (state.failed) return ;
            int exprStart868 = getCharIndex();
            mATTR_VALUE_EXPR(); if (state.failed) return ;
            expr = new CommonToken(input, Token.INVALID_TOKEN_TYPE, Token.DEFAULT_CHANNEL, exprStart868, getCharIndex()-1);
            match(';'); if (state.failed) return ;
            if ( state.backtracking==1 ) {

              		StringTemplate st = template("actionSetAttribute");
              		st.setAttribute("st", (x!=null?x.getText():null));
              		st.setAttribute("attrName", (y!=null?y.getText():null));
              		st.setAttribute("expr", translateAction((expr!=null?expr.getText():null)));
              		
            }

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "SET_ATTRIBUTE"

    // $ANTLR start "ATTR_VALUE_EXPR"
    public final void mATTR_VALUE_EXPR() throws RecognitionException {
        try {
            // org/antlr/grammar/v3/ActionTranslator.g:735:2: (~ '=' (~ ';' )* )
            // org/antlr/grammar/v3/ActionTranslator.g:735:4: ~ '=' (~ ';' )*
            {
            if ( (input.LA(1)>='\u0000' && input.LA(1)<='<')||(input.LA(1)>='>' && input.LA(1)<='\uFFFF') ) {
                input.consume();
            state.failed=false;
            }
            else {
                if (state.backtracking>0) {state.failed=true; return ;}
                MismatchedSetException mse = new MismatchedSetException(null,input);
                recover(mse);
                throw mse;}

            // org/antlr/grammar/v3/ActionTranslator.g:735:9: (~ ';' )*
            loop19:
            do {
                int alt19=2;
                int LA19_0 = input.LA(1);

                if ( ((LA19_0>='\u0000' && LA19_0<=':')||(LA19_0>='<' && LA19_0<='\uFFFF')) ) {
                    alt19=1;
                }


                switch (alt19) {
            	case 1 :
            	    // org/antlr/grammar/v3/ActionTranslator.g:735:10: ~ ';'
            	    {
            	    if ( (input.LA(1)>='\u0000' && input.LA(1)<=':')||(input.LA(1)>='<' && input.LA(1)<='\uFFFF') ) {
            	        input.consume();
            	    state.failed=false;
            	    }
            	    else {
            	        if (state.backtracking>0) {state.failed=true; return ;}
            	        MismatchedSetException mse = new MismatchedSetException(null,input);
            	        recover(mse);
            	        throw mse;}


            	    }
            	    break;

            	default :
            	    break loop19;
                }
            } while (true);


            }

        }
        finally {
        }
    }
    // $ANTLR end "ATTR_VALUE_EXPR"

    // $ANTLR start "TEMPLATE_EXPR"
    public final void mTEMPLATE_EXPR() throws RecognitionException {
        try {
            int _type = TEMPLATE_EXPR;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            Token a=null;

            // org/antlr/grammar/v3/ActionTranslator.g:740:2: ( '%' a= ACTION )
            // org/antlr/grammar/v3/ActionTranslator.g:740:4: '%' a= ACTION
            {
            match('%'); if (state.failed) return ;
            int aStart917 = getCharIndex();
            mACTION(); if (state.failed) return ;
            a = new CommonToken(input, Token.INVALID_TOKEN_TYPE, Token.DEFAULT_CHANNEL, aStart917, getCharIndex()-1);
            if ( state.backtracking==1 ) {

              		StringTemplate st = template("actionStringConstructor");
              		String action = (a!=null?a.getText():null);
              		action = action.substring(1,action.length()-1); // stuff inside {...}
              		st.setAttribute("stringExpr", translateAction(action));
              		
            }

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "TEMPLATE_EXPR"

    // $ANTLR start "ACTION"
    public final void mACTION() throws RecognitionException {
        try {
            // org/antlr/grammar/v3/ActionTranslator.g:752:2: ( '{' ( options {greedy=false; } : . )* '}' )
            // org/antlr/grammar/v3/ActionTranslator.g:752:4: '{' ( options {greedy=false; } : . )* '}'
            {
            match('{'); if (state.failed) return ;
            // org/antlr/grammar/v3/ActionTranslator.g:752:8: ( options {greedy=false; } : . )*
            loop20:
            do {
                int alt20=2;
                int LA20_0 = input.LA(1);

                if ( (LA20_0=='}') ) {
                    alt20=2;
                }
                else if ( ((LA20_0>='\u0000' && LA20_0<='|')||(LA20_0>='~' && LA20_0<='\uFFFF')) ) {
                    alt20=1;
                }


                switch (alt20) {
            	case 1 :
            	    // org/antlr/grammar/v3/ActionTranslator.g:752:33: .
            	    {
            	    matchAny(); if (state.failed) return ;

            	    }
            	    break;

            	default :
            	    break loop20;
                }
            } while (true);

            match('}'); if (state.failed) return ;

            }

        }
        finally {
        }
    }
    // $ANTLR end "ACTION"

    // $ANTLR start "ESC"
    public final void mESC() throws RecognitionException {
        try {
            int _type = ESC;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // org/antlr/grammar/v3/ActionTranslator.g:755:5: ( '\\\\' '$' | '\\\\' '%' | '\\\\' ~ ( '$' | '%' ) )
            int alt21=3;
            int LA21_0 = input.LA(1);

            if ( (LA21_0=='\\') ) {
                int LA21_1 = input.LA(2);

                if ( (LA21_1=='$') ) {
                    alt21=1;
                }
                else if ( (LA21_1=='%') ) {
                    alt21=2;
                }
                else if ( ((LA21_1>='\u0000' && LA21_1<='#')||(LA21_1>='&' && LA21_1<='\uFFFF')) ) {
                    alt21=3;
                }
                else {
                    if (state.backtracking>0) {state.failed=true; return ;}
                    NoViableAltException nvae =
                        new NoViableAltException("", 21, 1, input);

                    throw nvae;
                }
            }
            else {
                if (state.backtracking>0) {state.failed=true; return ;}
                NoViableAltException nvae =
                    new NoViableAltException("", 21, 0, input);

                throw nvae;
            }
            switch (alt21) {
                case 1 :
                    // org/antlr/grammar/v3/ActionTranslator.g:755:9: '\\\\' '$'
                    {
                    match('\\'); if (state.failed) return ;
                    match('$'); if (state.failed) return ;
                    if ( state.backtracking==1 ) {
                      chunks.add("$");
                    }

                    }
                    break;
                case 2 :
                    // org/antlr/grammar/v3/ActionTranslator.g:756:4: '\\\\' '%'
                    {
                    match('\\'); if (state.failed) return ;
                    match('%'); if (state.failed) return ;
                    if ( state.backtracking==1 ) {
                      chunks.add("%");
                    }

                    }
                    break;
                case 3 :
                    // org/antlr/grammar/v3/ActionTranslator.g:757:4: '\\\\' ~ ( '$' | '%' )
                    {
                    match('\\'); if (state.failed) return ;
                    if ( (input.LA(1)>='\u0000' && input.LA(1)<='#')||(input.LA(1)>='&' && input.LA(1)<='\uFFFF') ) {
                        input.consume();
                    state.failed=false;
                    }
                    else {
                        if (state.backtracking>0) {state.failed=true; return ;}
                        MismatchedSetException mse = new MismatchedSetException(null,input);
                        recover(mse);
                        throw mse;}

                    if ( state.backtracking==1 ) {
                      chunks.add(getText());
                    }

                    }
                    break;

            }
            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "ESC"

    // $ANTLR start "ERROR_XY"
    public final void mERROR_XY() throws RecognitionException {
        try {
            int _type = ERROR_XY;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            Token x=null;
            Token y=null;

            // org/antlr/grammar/v3/ActionTranslator.g:761:2: ( '$' x= ID '.' y= ID )
            // org/antlr/grammar/v3/ActionTranslator.g:761:4: '$' x= ID '.' y= ID
            {
            match('$'); if (state.failed) return ;
            int xStart1017 = getCharIndex();
            mID(); if (state.failed) return ;
            x = new CommonToken(input, Token.INVALID_TOKEN_TYPE, Token.DEFAULT_CHANNEL, xStart1017, getCharIndex()-1);
            match('.'); if (state.failed) return ;
            int yStart1023 = getCharIndex();
            mID(); if (state.failed) return ;
            y = new CommonToken(input, Token.INVALID_TOKEN_TYPE, Token.DEFAULT_CHANNEL, yStart1023, getCharIndex()-1);
            if ( state.backtracking==1 ) {

              		chunks.add(getText());
              		generator.issueInvalidAttributeError((x!=null?x.getText():null),(y!=null?y.getText():null),
              		                                     enclosingRule,actionToken,
              		                                     outerAltNum);
              		
            }

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "ERROR_XY"

    // $ANTLR start "ERROR_X"
    public final void mERROR_X() throws RecognitionException {
        try {
            int _type = ERROR_X;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            Token x=null;

            // org/antlr/grammar/v3/ActionTranslator.g:771:2: ( '$' x= ID )
            // org/antlr/grammar/v3/ActionTranslator.g:771:4: '$' x= ID
            {
            match('$'); if (state.failed) return ;
            int xStart1043 = getCharIndex();
            mID(); if (state.failed) return ;
            x = new CommonToken(input, Token.INVALID_TOKEN_TYPE, Token.DEFAULT_CHANNEL, xStart1043, getCharIndex()-1);
            if ( state.backtracking==1 ) {

              		chunks.add(getText());
              		generator.issueInvalidAttributeError((x!=null?x.getText():null),
              		                                     enclosingRule,actionToken,
              		                                     outerAltNum);
              		
            }

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "ERROR_X"

    // $ANTLR start "UNKNOWN_SYNTAX"
    public final void mUNKNOWN_SYNTAX() throws RecognitionException {
        try {
            int _type = UNKNOWN_SYNTAX;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // org/antlr/grammar/v3/ActionTranslator.g:781:2: ( '$' | '%' ( ID | '.' | '(' | ')' | ',' | '{' | '}' | '\"' )* )
            int alt23=2;
            int LA23_0 = input.LA(1);

            if ( (LA23_0=='$') ) {
                alt23=1;
            }
            else if ( (LA23_0=='%') ) {
                alt23=2;
            }
            else {
                if (state.backtracking>0) {state.failed=true; return ;}
                NoViableAltException nvae =
                    new NoViableAltException("", 23, 0, input);

                throw nvae;
            }
            switch (alt23) {
                case 1 :
                    // org/antlr/grammar/v3/ActionTranslator.g:781:4: '$'
                    {
                    match('$'); if (state.failed) return ;
                    if ( state.backtracking==1 ) {

                      		chunks.add(getText());
                      		// shouldn't need an error here.  Just accept $ if it doesn't look like anything
                      		
                    }

                    }
                    break;
                case 2 :
                    // org/antlr/grammar/v3/ActionTranslator.g:786:4: '%' ( ID | '.' | '(' | ')' | ',' | '{' | '}' | '\"' )*
                    {
                    match('%'); if (state.failed) return ;
                    // org/antlr/grammar/v3/ActionTranslator.g:786:8: ( ID | '.' | '(' | ')' | ',' | '{' | '}' | '\"' )*
                    loop22:
                    do {
                        int alt22=9;
                        alt22 = dfa22.predict(input);
                        switch (alt22) {
                    	case 1 :
                    	    // org/antlr/grammar/v3/ActionTranslator.g:786:9: ID
                    	    {
                    	    mID(); if (state.failed) return ;

                    	    }
                    	    break;
                    	case 2 :
                    	    // org/antlr/grammar/v3/ActionTranslator.g:786:12: '.'
                    	    {
                    	    match('.'); if (state.failed) return ;

                    	    }
                    	    break;
                    	case 3 :
                    	    // org/antlr/grammar/v3/ActionTranslator.g:786:16: '('
                    	    {
                    	    match('('); if (state.failed) return ;

                    	    }
                    	    break;
                    	case 4 :
                    	    // org/antlr/grammar/v3/ActionTranslator.g:786:20: ')'
                    	    {
                    	    match(')'); if (state.failed) return ;

                    	    }
                    	    break;
                    	case 5 :
                    	    // org/antlr/grammar/v3/ActionTranslator.g:786:24: ','
                    	    {
                    	    match(','); if (state.failed) return ;

                    	    }
                    	    break;
                    	case 6 :
                    	    // org/antlr/grammar/v3/ActionTranslator.g:786:28: '{'
                    	    {
                    	    match('{'); if (state.failed) return ;

                    	    }
                    	    break;
                    	case 7 :
                    	    // org/antlr/grammar/v3/ActionTranslator.g:786:32: '}'
                    	    {
                    	    match('}'); if (state.failed) return ;

                    	    }
                    	    break;
                    	case 8 :
                    	    // org/antlr/grammar/v3/ActionTranslator.g:786:36: '\"'
                    	    {
                    	    match('\"'); if (state.failed) return ;

                    	    }
                    	    break;

                    	default :
                    	    break loop22;
                        }
                    } while (true);

                    if ( state.backtracking==1 ) {

                      		chunks.add(getText());
                      		ErrorManager.grammarError(ErrorManager.MSG_INVALID_TEMPLATE_ACTION,
                      								  grammar,
                      								  actionToken,
                      								  getText());
                      		
                    }

                    }
                    break;

            }
            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "UNKNOWN_SYNTAX"

    // $ANTLR start "TEXT"
    public final void mTEXT() throws RecognitionException {
        try {
            int _type = TEXT;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // org/antlr/grammar/v3/ActionTranslator.g:796:5: ( (~ ( '$' | '%' | '\\\\' ) )+ )
            // org/antlr/grammar/v3/ActionTranslator.g:796:7: (~ ( '$' | '%' | '\\\\' ) )+
            {
            // org/antlr/grammar/v3/ActionTranslator.g:796:7: (~ ( '$' | '%' | '\\\\' ) )+
            int cnt24=0;
            loop24:
            do {
                int alt24=2;
                int LA24_0 = input.LA(1);

                if ( ((LA24_0>='\u0000' && LA24_0<='#')||(LA24_0>='&' && LA24_0<='[')||(LA24_0>=']' && LA24_0<='\uFFFF')) ) {
                    alt24=1;
                }


                switch (alt24) {
            	case 1 :
            	    // org/antlr/grammar/v3/ActionTranslator.g:796:7: ~ ( '$' | '%' | '\\\\' )
            	    {
            	    if ( (input.LA(1)>='\u0000' && input.LA(1)<='#')||(input.LA(1)>='&' && input.LA(1)<='[')||(input.LA(1)>=']' && input.LA(1)<='\uFFFF') ) {
            	        input.consume();
            	    state.failed=false;
            	    }
            	    else {
            	        if (state.backtracking>0) {state.failed=true; return ;}
            	        MismatchedSetException mse = new MismatchedSetException(null,input);
            	        recover(mse);
            	        throw mse;}


            	    }
            	    break;

            	default :
            	    if ( cnt24 >= 1 ) break loop24;
            	    if (state.backtracking>0) {state.failed=true; return ;}
                        EarlyExitException eee =
                            new EarlyExitException(24, input);
                        throw eee;
                }
                cnt24++;
            } while (true);

            if ( state.backtracking==1 ) {
              chunks.add(getText());
            }

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "TEXT"

    // $ANTLR start "ID"
    public final void mID() throws RecognitionException {
        try {
            // org/antlr/grammar/v3/ActionTranslator.g:800:5: ( ( 'a' .. 'z' | 'A' .. 'Z' | '_' ) ( 'a' .. 'z' | 'A' .. 'Z' | '_' | '0' .. '9' )* )
            // org/antlr/grammar/v3/ActionTranslator.g:800:9: ( 'a' .. 'z' | 'A' .. 'Z' | '_' ) ( 'a' .. 'z' | 'A' .. 'Z' | '_' | '0' .. '9' )*
            {
            if ( (input.LA(1)>='A' && input.LA(1)<='Z')||input.LA(1)=='_'||(input.LA(1)>='a' && input.LA(1)<='z') ) {
                input.consume();
            state.failed=false;
            }
            else {
                if (state.backtracking>0) {state.failed=true; return ;}
                MismatchedSetException mse = new MismatchedSetException(null,input);
                recover(mse);
                throw mse;}

            // org/antlr/grammar/v3/ActionTranslator.g:800:33: ( 'a' .. 'z' | 'A' .. 'Z' | '_' | '0' .. '9' )*
            loop25:
            do {
                int alt25=2;
                int LA25_0 = input.LA(1);

                if ( ((LA25_0>='0' && LA25_0<='9')||(LA25_0>='A' && LA25_0<='Z')||LA25_0=='_'||(LA25_0>='a' && LA25_0<='z')) ) {
                    alt25=1;
                }


                switch (alt25) {
            	case 1 :
            	    // org/antlr/grammar/v3/ActionTranslator.g:
            	    {
            	    if ( (input.LA(1)>='0' && input.LA(1)<='9')||(input.LA(1)>='A' && input.LA(1)<='Z')||input.LA(1)=='_'||(input.LA(1)>='a' && input.LA(1)<='z') ) {
            	        input.consume();
            	    state.failed=false;
            	    }
            	    else {
            	        if (state.backtracking>0) {state.failed=true; return ;}
            	        MismatchedSetException mse = new MismatchedSetException(null,input);
            	        recover(mse);
            	        throw mse;}


            	    }
            	    break;

            	default :
            	    break loop25;
                }
            } while (true);


            }

        }
        finally {
        }
    }
    // $ANTLR end "ID"

    // $ANTLR start "INT"
    public final void mINT() throws RecognitionException {
        try {
            // org/antlr/grammar/v3/ActionTranslator.g:804:5: ( ( '0' .. '9' )+ )
            // org/antlr/grammar/v3/ActionTranslator.g:804:7: ( '0' .. '9' )+
            {
            // org/antlr/grammar/v3/ActionTranslator.g:804:7: ( '0' .. '9' )+
            int cnt26=0;
            loop26:
            do {
                int alt26=2;
                int LA26_0 = input.LA(1);

                if ( ((LA26_0>='0' && LA26_0<='9')) ) {
                    alt26=1;
                }


                switch (alt26) {
            	case 1 :
            	    // org/antlr/grammar/v3/ActionTranslator.g:804:7: '0' .. '9'
            	    {
            	    matchRange('0','9'); if (state.failed) return ;

            	    }
            	    break;

            	default :
            	    if ( cnt26 >= 1 ) break loop26;
            	    if (state.backtracking>0) {state.failed=true; return ;}
                        EarlyExitException eee =
                            new EarlyExitException(26, input);
                        throw eee;
                }
                cnt26++;
            } while (true);


            }

        }
        finally {
        }
    }
    // $ANTLR end "INT"

    // $ANTLR start "WS"
    public final void mWS() throws RecognitionException {
        try {
            // org/antlr/grammar/v3/ActionTranslator.g:808:4: ( ( ' ' | '\\t' | '\\n' | '\\r' )+ )
            // org/antlr/grammar/v3/ActionTranslator.g:808:6: ( ' ' | '\\t' | '\\n' | '\\r' )+
            {
            // org/antlr/grammar/v3/ActionTranslator.g:808:6: ( ' ' | '\\t' | '\\n' | '\\r' )+
            int cnt27=0;
            loop27:
            do {
                int alt27=2;
                int LA27_0 = input.LA(1);

                if ( ((LA27_0>='\t' && LA27_0<='\n')||LA27_0=='\r'||LA27_0==' ') ) {
                    alt27=1;
                }


                switch (alt27) {
            	case 1 :
            	    // org/antlr/grammar/v3/ActionTranslator.g:
            	    {
            	    if ( (input.LA(1)>='\t' && input.LA(1)<='\n')||input.LA(1)=='\r'||input.LA(1)==' ' ) {
            	        input.consume();
            	    state.failed=false;
            	    }
            	    else {
            	        if (state.backtracking>0) {state.failed=true; return ;}
            	        MismatchedSetException mse = new MismatchedSetException(null,input);
            	        recover(mse);
            	        throw mse;}


            	    }
            	    break;

            	default :
            	    if ( cnt27 >= 1 ) break loop27;
            	    if (state.backtracking>0) {state.failed=true; return ;}
                        EarlyExitException eee =
                            new EarlyExitException(27, input);
                        throw eee;
                }
                cnt27++;
            } while (true);


            }

        }
        finally {
        }
    }
    // $ANTLR end "WS"

    public void mTokens() throws RecognitionException {
        // org/antlr/grammar/v3/ActionTranslator.g:1:39: ( SET_ENCLOSING_RULE_SCOPE_ATTR | ENCLOSING_RULE_SCOPE_ATTR | SET_TOKEN_SCOPE_ATTR | TOKEN_SCOPE_ATTR | SET_RULE_SCOPE_ATTR | RULE_SCOPE_ATTR | LABEL_REF | ISOLATED_TOKEN_REF | ISOLATED_LEXER_RULE_REF | SET_LOCAL_ATTR | LOCAL_ATTR | SET_DYNAMIC_SCOPE_ATTR | DYNAMIC_SCOPE_ATTR | ERROR_SCOPED_XY | DYNAMIC_NEGATIVE_INDEXED_SCOPE_ATTR | DYNAMIC_ABSOLUTE_INDEXED_SCOPE_ATTR | ISOLATED_DYNAMIC_SCOPE | TEMPLATE_INSTANCE | INDIRECT_TEMPLATE_INSTANCE | SET_EXPR_ATTRIBUTE | SET_ATTRIBUTE | TEMPLATE_EXPR | ESC | ERROR_XY | ERROR_X | UNKNOWN_SYNTAX | TEXT )
        int alt28=27;
        alt28 = dfa28.predict(input);
        switch (alt28) {
            case 1 :
                // org/antlr/grammar/v3/ActionTranslator.g:1:41: SET_ENCLOSING_RULE_SCOPE_ATTR
                {
                mSET_ENCLOSING_RULE_SCOPE_ATTR(); if (state.failed) return ;

                }
                break;
            case 2 :
                // org/antlr/grammar/v3/ActionTranslator.g:1:71: ENCLOSING_RULE_SCOPE_ATTR
                {
                mENCLOSING_RULE_SCOPE_ATTR(); if (state.failed) return ;

                }
                break;
            case 3 :
                // org/antlr/grammar/v3/ActionTranslator.g:1:97: SET_TOKEN_SCOPE_ATTR
                {
                mSET_TOKEN_SCOPE_ATTR(); if (state.failed) return ;

                }
                break;
            case 4 :
                // org/antlr/grammar/v3/ActionTranslator.g:1:118: TOKEN_SCOPE_ATTR
                {
                mTOKEN_SCOPE_ATTR(); if (state.failed) return ;

                }
                break;
            case 5 :
                // org/antlr/grammar/v3/ActionTranslator.g:1:135: SET_RULE_SCOPE_ATTR
                {
                mSET_RULE_SCOPE_ATTR(); if (state.failed) return ;

                }
                break;
            case 6 :
                // org/antlr/grammar/v3/ActionTranslator.g:1:155: RULE_SCOPE_ATTR
                {
                mRULE_SCOPE_ATTR(); if (state.failed) return ;

                }
                break;
            case 7 :
                // org/antlr/grammar/v3/ActionTranslator.g:1:171: LABEL_REF
                {
                mLABEL_REF(); if (state.failed) return ;

                }
                break;
            case 8 :
                // org/antlr/grammar/v3/ActionTranslator.g:1:181: ISOLATED_TOKEN_REF
                {
                mISOLATED_TOKEN_REF(); if (state.failed) return ;

                }
                break;
            case 9 :
                // org/antlr/grammar/v3/ActionTranslator.g:1:200: ISOLATED_LEXER_RULE_REF
                {
                mISOLATED_LEXER_RULE_REF(); if (state.failed) return ;

                }
                break;
            case 10 :
                // org/antlr/grammar/v3/ActionTranslator.g:1:224: SET_LOCAL_ATTR
                {
                mSET_LOCAL_ATTR(); if (state.failed) return ;

                }
                break;
            case 11 :
                // org/antlr/grammar/v3/ActionTranslator.g:1:239: LOCAL_ATTR
                {
                mLOCAL_ATTR(); if (state.failed) return ;

                }
                break;
            case 12 :
                // org/antlr/grammar/v3/ActionTranslator.g:1:250: SET_DYNAMIC_SCOPE_ATTR
                {
                mSET_DYNAMIC_SCOPE_ATTR(); if (state.failed) return ;

                }
                break;
            case 13 :
                // org/antlr/grammar/v3/ActionTranslator.g:1:273: DYNAMIC_SCOPE_ATTR
                {
                mDYNAMIC_SCOPE_ATTR(); if (state.failed) return ;

                }
                break;
            case 14 :
                // org/antlr/grammar/v3/ActionTranslator.g:1:292: ERROR_SCOPED_XY
                {
                mERROR_SCOPED_XY(); if (state.failed) return ;

                }
                break;
            case 15 :
                // org/antlr/grammar/v3/ActionTranslator.g:1:308: DYNAMIC_NEGATIVE_INDEXED_SCOPE_ATTR
                {
                mDYNAMIC_NEGATIVE_INDEXED_SCOPE_ATTR(); if (state.failed) return ;

                }
                break;
            case 16 :
                // org/antlr/grammar/v3/ActionTranslator.g:1:344: DYNAMIC_ABSOLUTE_INDEXED_SCOPE_ATTR
                {
                mDYNAMIC_ABSOLUTE_INDEXED_SCOPE_ATTR(); if (state.failed) return ;

                }
                break;
            case 17 :
                // org/antlr/grammar/v3/ActionTranslator.g:1:380: ISOLATED_DYNAMIC_SCOPE
                {
                mISOLATED_DYNAMIC_SCOPE(); if (state.failed) return ;

                }
                break;
            case 18 :
                // org/antlr/grammar/v3/ActionTranslator.g:1:403: TEMPLATE_INSTANCE
                {
                mTEMPLATE_INSTANCE(); if (state.failed) return ;

                }
                break;
            case 19 :
                // org/antlr/grammar/v3/ActionTranslator.g:1:421: INDIRECT_TEMPLATE_INSTANCE
                {
                mINDIRECT_TEMPLATE_INSTANCE(); if (state.failed) return ;

                }
                break;
            case 20 :
                // org/antlr/grammar/v3/ActionTranslator.g:1:448: SET_EXPR_ATTRIBUTE
                {
                mSET_EXPR_ATTRIBUTE(); if (state.failed) return ;

                }
                break;
            case 21 :
                // org/antlr/grammar/v3/ActionTranslator.g:1:467: SET_ATTRIBUTE
                {
                mSET_ATTRIBUTE(); if (state.failed) return ;

                }
                break;
            case 22 :
                // org/antlr/grammar/v3/ActionTranslator.g:1:481: TEMPLATE_EXPR
                {
                mTEMPLATE_EXPR(); if (state.failed) return ;

                }
                break;
            case 23 :
                // org/antlr/grammar/v3/ActionTranslator.g:1:495: ESC
                {
                mESC(); if (state.failed) return ;

                }
                break;
            case 24 :
                // org/antlr/grammar/v3/ActionTranslator.g:1:499: ERROR_XY
                {
                mERROR_XY(); if (state.failed) return ;

                }
                break;
            case 25 :
                // org/antlr/grammar/v3/ActionTranslator.g:1:508: ERROR_X
                {
                mERROR_X(); if (state.failed) return ;

                }
                break;
            case 26 :
                // org/antlr/grammar/v3/ActionTranslator.g:1:516: UNKNOWN_SYNTAX
                {
                mUNKNOWN_SYNTAX(); if (state.failed) return ;

                }
                break;
            case 27 :
                // org/antlr/grammar/v3/ActionTranslator.g:1:531: TEXT
                {
                mTEXT(); if (state.failed) return ;

                }
                break;

        }

    }

    // $ANTLR start synpred1_ActionTranslator
    public final void synpred1_ActionTranslator_fragment() throws RecognitionException {   
        // org/antlr/grammar/v3/ActionTranslator.g:1:41: ( SET_ENCLOSING_RULE_SCOPE_ATTR )
        // org/antlr/grammar/v3/ActionTranslator.g:1:41: SET_ENCLOSING_RULE_SCOPE_ATTR
        {
        mSET_ENCLOSING_RULE_SCOPE_ATTR(); if (state.failed) return ;

        }
    }
    // $ANTLR end synpred1_ActionTranslator

    // $ANTLR start synpred2_ActionTranslator
    public final void synpred2_ActionTranslator_fragment() throws RecognitionException {   
        // org/antlr/grammar/v3/ActionTranslator.g:1:71: ( ENCLOSING_RULE_SCOPE_ATTR )
        // org/antlr/grammar/v3/ActionTranslator.g:1:71: ENCLOSING_RULE_SCOPE_ATTR
        {
        mENCLOSING_RULE_SCOPE_ATTR(); if (state.failed) return ;

        }
    }
    // $ANTLR end synpred2_ActionTranslator

    // $ANTLR start synpred3_ActionTranslator
    public final void synpred3_ActionTranslator_fragment() throws RecognitionException {   
        // org/antlr/grammar/v3/ActionTranslator.g:1:97: ( SET_TOKEN_SCOPE_ATTR )
        // org/antlr/grammar/v3/ActionTranslator.g:1:97: SET_TOKEN_SCOPE_ATTR
        {
        mSET_TOKEN_SCOPE_ATTR(); if (state.failed) return ;

        }
    }
    // $ANTLR end synpred3_ActionTranslator

    // $ANTLR start synpred4_ActionTranslator
    public final void synpred4_ActionTranslator_fragment() throws RecognitionException {   
        // org/antlr/grammar/v3/ActionTranslator.g:1:118: ( TOKEN_SCOPE_ATTR )
        // org/antlr/grammar/v3/ActionTranslator.g:1:118: TOKEN_SCOPE_ATTR
        {
        mTOKEN_SCOPE_ATTR(); if (state.failed) return ;

        }
    }
    // $ANTLR end synpred4_ActionTranslator

    // $ANTLR start synpred5_ActionTranslator
    public final void synpred5_ActionTranslator_fragment() throws RecognitionException {   
        // org/antlr/grammar/v3/ActionTranslator.g:1:135: ( SET_RULE_SCOPE_ATTR )
        // org/antlr/grammar/v3/ActionTranslator.g:1:135: SET_RULE_SCOPE_ATTR
        {
        mSET_RULE_SCOPE_ATTR(); if (state.failed) return ;

        }
    }
    // $ANTLR end synpred5_ActionTranslator

    // $ANTLR start synpred6_ActionTranslator
    public final void synpred6_ActionTranslator_fragment() throws RecognitionException {   
        // org/antlr/grammar/v3/ActionTranslator.g:1:155: ( RULE_SCOPE_ATTR )
        // org/antlr/grammar/v3/ActionTranslator.g:1:155: RULE_SCOPE_ATTR
        {
        mRULE_SCOPE_ATTR(); if (state.failed) return ;

        }
    }
    // $ANTLR end synpred6_ActionTranslator

    // $ANTLR start synpred7_ActionTranslator
    public final void synpred7_ActionTranslator_fragment() throws RecognitionException {   
        // org/antlr/grammar/v3/ActionTranslator.g:1:171: ( LABEL_REF )
        // org/antlr/grammar/v3/ActionTranslator.g:1:171: LABEL_REF
        {
        mLABEL_REF(); if (state.failed) return ;

        }
    }
    // $ANTLR end synpred7_ActionTranslator

    // $ANTLR start synpred8_ActionTranslator
    public final void synpred8_ActionTranslator_fragment() throws RecognitionException {   
        // org/antlr/grammar/v3/ActionTranslator.g:1:181: ( ISOLATED_TOKEN_REF )
        // org/antlr/grammar/v3/ActionTranslator.g:1:181: ISOLATED_TOKEN_REF
        {
        mISOLATED_TOKEN_REF(); if (state.failed) return ;

        }
    }
    // $ANTLR end synpred8_ActionTranslator

    // $ANTLR start synpred9_ActionTranslator
    public final void synpred9_ActionTranslator_fragment() throws RecognitionException {   
        // org/antlr/grammar/v3/ActionTranslator.g:1:200: ( ISOLATED_LEXER_RULE_REF )
        // org/antlr/grammar/v3/ActionTranslator.g:1:200: ISOLATED_LEXER_RULE_REF
        {
        mISOLATED_LEXER_RULE_REF(); if (state.failed) return ;

        }
    }
    // $ANTLR end synpred9_ActionTranslator

    // $ANTLR start synpred10_ActionTranslator
    public final void synpred10_ActionTranslator_fragment() throws RecognitionException {   
        // org/antlr/grammar/v3/ActionTranslator.g:1:224: ( SET_LOCAL_ATTR )
        // org/antlr/grammar/v3/ActionTranslator.g:1:224: SET_LOCAL_ATTR
        {
        mSET_LOCAL_ATTR(); if (state.failed) return ;

        }
    }
    // $ANTLR end synpred10_ActionTranslator

    // $ANTLR start synpred11_ActionTranslator
    public final void synpred11_ActionTranslator_fragment() throws RecognitionException {   
        // org/antlr/grammar/v3/ActionTranslator.g:1:239: ( LOCAL_ATTR )
        // org/antlr/grammar/v3/ActionTranslator.g:1:239: LOCAL_ATTR
        {
        mLOCAL_ATTR(); if (state.failed) return ;

        }
    }
    // $ANTLR end synpred11_ActionTranslator

    // $ANTLR start synpred12_ActionTranslator
    public final void synpred12_ActionTranslator_fragment() throws RecognitionException {   
        // org/antlr/grammar/v3/ActionTranslator.g:1:250: ( SET_DYNAMIC_SCOPE_ATTR )
        // org/antlr/grammar/v3/ActionTranslator.g:1:250: SET_DYNAMIC_SCOPE_ATTR
        {
        mSET_DYNAMIC_SCOPE_ATTR(); if (state.failed) return ;

        }
    }
    // $ANTLR end synpred12_ActionTranslator

    // $ANTLR start synpred13_ActionTranslator
    public final void synpred13_ActionTranslator_fragment() throws RecognitionException {   
        // org/antlr/grammar/v3/ActionTranslator.g:1:273: ( DYNAMIC_SCOPE_ATTR )
        // org/antlr/grammar/v3/ActionTranslator.g:1:273: DYNAMIC_SCOPE_ATTR
        {
        mDYNAMIC_SCOPE_ATTR(); if (state.failed) return ;

        }
    }
    // $ANTLR end synpred13_ActionTranslator

    // $ANTLR start synpred14_ActionTranslator
    public final void synpred14_ActionTranslator_fragment() throws RecognitionException {   
        // org/antlr/grammar/v3/ActionTranslator.g:1:292: ( ERROR_SCOPED_XY )
        // org/antlr/grammar/v3/ActionTranslator.g:1:292: ERROR_SCOPED_XY
        {
        mERROR_SCOPED_XY(); if (state.failed) return ;

        }
    }
    // $ANTLR end synpred14_ActionTranslator

    // $ANTLR start synpred15_ActionTranslator
    public final void synpred15_ActionTranslator_fragment() throws RecognitionException {   
        // org/antlr/grammar/v3/ActionTranslator.g:1:308: ( DYNAMIC_NEGATIVE_INDEXED_SCOPE_ATTR )
        // org/antlr/grammar/v3/ActionTranslator.g:1:308: DYNAMIC_NEGATIVE_INDEXED_SCOPE_ATTR
        {
        mDYNAMIC_NEGATIVE_INDEXED_SCOPE_ATTR(); if (state.failed) return ;

        }
    }
    // $ANTLR end synpred15_ActionTranslator

    // $ANTLR start synpred16_ActionTranslator
    public final void synpred16_ActionTranslator_fragment() throws RecognitionException {   
        // org/antlr/grammar/v3/ActionTranslator.g:1:344: ( DYNAMIC_ABSOLUTE_INDEXED_SCOPE_ATTR )
        // org/antlr/grammar/v3/ActionTranslator.g:1:344: DYNAMIC_ABSOLUTE_INDEXED_SCOPE_ATTR
        {
        mDYNAMIC_ABSOLUTE_INDEXED_SCOPE_ATTR(); if (state.failed) return ;

        }
    }
    // $ANTLR end synpred16_ActionTranslator

    // $ANTLR start synpred17_ActionTranslator
    public final void synpred17_ActionTranslator_fragment() throws RecognitionException {   
        // org/antlr/grammar/v3/ActionTranslator.g:1:380: ( ISOLATED_DYNAMIC_SCOPE )
        // org/antlr/grammar/v3/ActionTranslator.g:1:380: ISOLATED_DYNAMIC_SCOPE
        {
        mISOLATED_DYNAMIC_SCOPE(); if (state.failed) return ;

        }
    }
    // $ANTLR end synpred17_ActionTranslator

    // $ANTLR start synpred18_ActionTranslator
    public final void synpred18_ActionTranslator_fragment() throws RecognitionException {   
        // org/antlr/grammar/v3/ActionTranslator.g:1:403: ( TEMPLATE_INSTANCE )
        // org/antlr/grammar/v3/ActionTranslator.g:1:403: TEMPLATE_INSTANCE
        {
        mTEMPLATE_INSTANCE(); if (state.failed) return ;

        }
    }
    // $ANTLR end synpred18_ActionTranslator

    // $ANTLR start synpred19_ActionTranslator
    public final void synpred19_ActionTranslator_fragment() throws RecognitionException {   
        // org/antlr/grammar/v3/ActionTranslator.g:1:421: ( INDIRECT_TEMPLATE_INSTANCE )
        // org/antlr/grammar/v3/ActionTranslator.g:1:421: INDIRECT_TEMPLATE_INSTANCE
        {
        mINDIRECT_TEMPLATE_INSTANCE(); if (state.failed) return ;

        }
    }
    // $ANTLR end synpred19_ActionTranslator

    // $ANTLR start synpred20_ActionTranslator
    public final void synpred20_ActionTranslator_fragment() throws RecognitionException {   
        // org/antlr/grammar/v3/ActionTranslator.g:1:448: ( SET_EXPR_ATTRIBUTE )
        // org/antlr/grammar/v3/ActionTranslator.g:1:448: SET_EXPR_ATTRIBUTE
        {
        mSET_EXPR_ATTRIBUTE(); if (state.failed) return ;

        }
    }
    // $ANTLR end synpred20_ActionTranslator

    // $ANTLR start synpred21_ActionTranslator
    public final void synpred21_ActionTranslator_fragment() throws RecognitionException {   
        // org/antlr/grammar/v3/ActionTranslator.g:1:467: ( SET_ATTRIBUTE )
        // org/antlr/grammar/v3/ActionTranslator.g:1:467: SET_ATTRIBUTE
        {
        mSET_ATTRIBUTE(); if (state.failed) return ;

        }
    }
    // $ANTLR end synpred21_ActionTranslator

    // $ANTLR start synpred22_ActionTranslator
    public final void synpred22_ActionTranslator_fragment() throws RecognitionException {   
        // org/antlr/grammar/v3/ActionTranslator.g:1:481: ( TEMPLATE_EXPR )
        // org/antlr/grammar/v3/ActionTranslator.g:1:481: TEMPLATE_EXPR
        {
        mTEMPLATE_EXPR(); if (state.failed) return ;

        }
    }
    // $ANTLR end synpred22_ActionTranslator

    // $ANTLR start synpred24_ActionTranslator
    public final void synpred24_ActionTranslator_fragment() throws RecognitionException {   
        // org/antlr/grammar/v3/ActionTranslator.g:1:499: ( ERROR_XY )
        // org/antlr/grammar/v3/ActionTranslator.g:1:499: ERROR_XY
        {
        mERROR_XY(); if (state.failed) return ;

        }
    }
    // $ANTLR end synpred24_ActionTranslator

    // $ANTLR start synpred25_ActionTranslator
    public final void synpred25_ActionTranslator_fragment() throws RecognitionException {   
        // org/antlr/grammar/v3/ActionTranslator.g:1:508: ( ERROR_X )
        // org/antlr/grammar/v3/ActionTranslator.g:1:508: ERROR_X
        {
        mERROR_X(); if (state.failed) return ;

        }
    }
    // $ANTLR end synpred25_ActionTranslator

    // $ANTLR start synpred26_ActionTranslator
    public final void synpred26_ActionTranslator_fragment() throws RecognitionException {   
        // org/antlr/grammar/v3/ActionTranslator.g:1:516: ( UNKNOWN_SYNTAX )
        // org/antlr/grammar/v3/ActionTranslator.g:1:516: UNKNOWN_SYNTAX
        {
        mUNKNOWN_SYNTAX(); if (state.failed) return ;

        }
    }
    // $ANTLR end synpred26_ActionTranslator

    public final boolean synpred18_ActionTranslator() {
        state.backtracking++;
        int start = input.mark();
        try {
            synpred18_ActionTranslator_fragment(); // can never throw exception
        } catch (RecognitionException re) {
            System.err.println("impossible: "+re);
        }
        boolean success = !state.failed;
        input.rewind(start);
        state.backtracking--;
        state.failed=false;
        return success;
    }
    public final boolean synpred19_ActionTranslator() {
        state.backtracking++;
        int start = input.mark();
        try {
            synpred19_ActionTranslator_fragment(); // can never throw exception
        } catch (RecognitionException re) {
            System.err.println("impossible: "+re);
        }
        boolean success = !state.failed;
        input.rewind(start);
        state.backtracking--;
        state.failed=false;
        return success;
    }
    public final boolean synpred16_ActionTranslator() {
        state.backtracking++;
        int start = input.mark();
        try {
            synpred16_ActionTranslator_fragment(); // can never throw exception
        } catch (RecognitionException re) {
            System.err.println("impossible: "+re);
        }
        boolean success = !state.failed;
        input.rewind(start);
        state.backtracking--;
        state.failed=false;
        return success;
    }
    public final boolean synpred11_ActionTranslator() {
        state.backtracking++;
        int start = input.mark();
        try {
            synpred11_ActionTranslator_fragment(); // can never throw exception
        } catch (RecognitionException re) {
            System.err.println("impossible: "+re);
        }
        boolean success = !state.failed;
        input.rewind(start);
        state.backtracking--;
        state.failed=false;
        return success;
    }
    public final boolean synpred24_ActionTranslator() {
        state.backtracking++;
        int start = input.mark();
        try {
            synpred24_ActionTranslator_fragment(); // can never throw exception
        } catch (RecognitionException re) {
            System.err.println("impossible: "+re);
        }
        boolean success = !state.failed;
        input.rewind(start);
        state.backtracking--;
        state.failed=false;
        return success;
    }
    public final boolean synpred12_ActionTranslator() {
        state.backtracking++;
        int start = input.mark();
        try {
            synpred12_ActionTranslator_fragment(); // can never throw exception
        } catch (RecognitionException re) {
            System.err.println("impossible: "+re);
        }
        boolean success = !state.failed;
        input.rewind(start);
        state.backtracking--;
        state.failed=false;
        return success;
    }
    public final boolean synpred9_ActionTranslator() {
        state.backtracking++;
        int start = input.mark();
        try {
            synpred9_ActionTranslator_fragment(); // can never throw exception
        } catch (RecognitionException re) {
            System.err.println("impossible: "+re);
        }
        boolean success = !state.failed;
        input.rewind(start);
        state.backtracking--;
        state.failed=false;
        return success;
    }
    public final boolean synpred17_ActionTranslator() {
        state.backtracking++;
        int start = input.mark();
        try {
            synpred17_ActionTranslator_fragment(); // can never throw exception
        } catch (RecognitionException re) {
            System.err.println("impossible: "+re);
        }
        boolean success = !state.failed;
        input.rewind(start);
        state.backtracking--;
        state.failed=false;
        return success;
    }
    public final boolean synpred4_ActionTranslator() {
        state.backtracking++;
        int start = input.mark();
        try {
            synpred4_ActionTranslator_fragment(); // can never throw exception
        } catch (RecognitionException re) {
            System.err.println("impossible: "+re);
        }
        boolean success = !state.failed;
        input.rewind(start);
        state.backtracking--;
        state.failed=false;
        return success;
    }
    public final boolean synpred13_ActionTranslator() {
        state.backtracking++;
        int start = input.mark();
        try {
            synpred13_ActionTranslator_fragment(); // can never throw exception
        } catch (RecognitionException re) {
            System.err.println("impossible: "+re);
        }
        boolean success = !state.failed;
        input.rewind(start);
        state.backtracking--;
        state.failed=false;
        return success;
    }
    public final boolean synpred21_ActionTranslator() {
        state.backtracking++;
        int start = input.mark();
        try {
            synpred21_ActionTranslator_fragment(); // can never throw exception
        } catch (RecognitionException re) {
            System.err.println("impossible: "+re);
        }
        boolean success = !state.failed;
        input.rewind(start);
        state.backtracking--;
        state.failed=false;
        return success;
    }
    public final boolean synpred20_ActionTranslator() {
        state.backtracking++;
        int start = input.mark();
        try {
            synpred20_ActionTranslator_fragment(); // can never throw exception
        } catch (RecognitionException re) {
            System.err.println("impossible: "+re);
        }
        boolean success = !state.failed;
        input.rewind(start);
        state.backtracking--;
        state.failed=false;
        return success;
    }
    public final boolean synpred6_ActionTranslator() {
        state.backtracking++;
        int start = input.mark();
        try {
            synpred6_ActionTranslator_fragment(); // can never throw exception
        } catch (RecognitionException re) {
            System.err.println("impossible: "+re);
        }
        boolean success = !state.failed;
        input.rewind(start);
        state.backtracking--;
        state.failed=false;
        return success;
    }
    public final boolean synpred2_ActionTranslator() {
        state.backtracking++;
        int start = input.mark();
        try {
            synpred2_ActionTranslator_fragment(); // can never throw exception
        } catch (RecognitionException re) {
            System.err.println("impossible: "+re);
        }
        boolean success = !state.failed;
        input.rewind(start);
        state.backtracking--;
        state.failed=false;
        return success;
    }
    public final boolean synpred3_ActionTranslator() {
        state.backtracking++;
        int start = input.mark();
        try {
            synpred3_ActionTranslator_fragment(); // can never throw exception
        } catch (RecognitionException re) {
            System.err.println("impossible: "+re);
        }
        boolean success = !state.failed;
        input.rewind(start);
        state.backtracking--;
        state.failed=false;
        return success;
    }
    public final boolean synpred10_ActionTranslator() {
        state.backtracking++;
        int start = input.mark();
        try {
            synpred10_ActionTranslator_fragment(); // can never throw exception
        } catch (RecognitionException re) {
            System.err.println("impossible: "+re);
        }
        boolean success = !state.failed;
        input.rewind(start);
        state.backtracking--;
        state.failed=false;
        return success;
    }
    public final boolean synpred5_ActionTranslator() {
        state.backtracking++;
        int start = input.mark();
        try {
            synpred5_ActionTranslator_fragment(); // can never throw exception
        } catch (RecognitionException re) {
            System.err.println("impossible: "+re);
        }
        boolean success = !state.failed;
        input.rewind(start);
        state.backtracking--;
        state.failed=false;
        return success;
    }
    public final boolean synpred14_ActionTranslator() {
        state.backtracking++;
        int start = input.mark();
        try {
            synpred14_ActionTranslator_fragment(); // can never throw exception
        } catch (RecognitionException re) {
            System.err.println("impossible: "+re);
        }
        boolean success = !state.failed;
        input.rewind(start);
        state.backtracking--;
        state.failed=false;
        return success;
    }
    public final boolean synpred25_ActionTranslator() {
        state.backtracking++;
        int start = input.mark();
        try {
            synpred25_ActionTranslator_fragment(); // can never throw exception
        } catch (RecognitionException re) {
            System.err.println("impossible: "+re);
        }
        boolean success = !state.failed;
        input.rewind(start);
        state.backtracking--;
        state.failed=false;
        return success;
    }
    public final boolean synpred26_ActionTranslator() {
        state.backtracking++;
        int start = input.mark();
        try {
            synpred26_ActionTranslator_fragment(); // can never throw exception
        } catch (RecognitionException re) {
            System.err.println("impossible: "+re);
        }
        boolean success = !state.failed;
        input.rewind(start);
        state.backtracking--;
        state.failed=false;
        return success;
    }
    public final boolean synpred7_ActionTranslator() {
        state.backtracking++;
        int start = input.mark();
        try {
            synpred7_ActionTranslator_fragment(); // can never throw exception
        } catch (RecognitionException re) {
            System.err.println("impossible: "+re);
        }
        boolean success = !state.failed;
        input.rewind(start);
        state.backtracking--;
        state.failed=false;
        return success;
    }
    public final boolean synpred1_ActionTranslator() {
        state.backtracking++;
        int start = input.mark();
        try {
            synpred1_ActionTranslator_fragment(); // can never throw exception
        } catch (RecognitionException re) {
            System.err.println("impossible: "+re);
        }
        boolean success = !state.failed;
        input.rewind(start);
        state.backtracking--;
        state.failed=false;
        return success;
    }
    public final boolean synpred22_ActionTranslator() {
        state.backtracking++;
        int start = input.mark();
        try {
            synpred22_ActionTranslator_fragment(); // can never throw exception
        } catch (RecognitionException re) {
            System.err.println("impossible: "+re);
        }
        boolean success = !state.failed;
        input.rewind(start);
        state.backtracking--;
        state.failed=false;
        return success;
    }
    public final boolean synpred8_ActionTranslator() {
        state.backtracking++;
        int start = input.mark();
        try {
            synpred8_ActionTranslator_fragment(); // can never throw exception
        } catch (RecognitionException re) {
            System.err.println("impossible: "+re);
        }
        boolean success = !state.failed;
        input.rewind(start);
        state.backtracking--;
        state.failed=false;
        return success;
    }
    public final boolean synpred15_ActionTranslator() {
        state.backtracking++;
        int start = input.mark();
        try {
            synpred15_ActionTranslator_fragment(); // can never throw exception
        } catch (RecognitionException re) {
            System.err.println("impossible: "+re);
        }
        boolean success = !state.failed;
        input.rewind(start);
        state.backtracking--;
        state.failed=false;
        return success;
    }


    protected DFA22 dfa22 = new DFA22(this);
    protected DFA28 dfa28 = new DFA28(this);
    static final String DFA22_eotS =
        "\1\1\11\uffff";
    static final String DFA22_eofS =
        "\12\uffff";
    static final String DFA22_minS =
        "\1\42\11\uffff";
    static final String DFA22_maxS =
        "\1\175\11\uffff";
    static final String DFA22_acceptS =
        "\1\uffff\1\11\1\1\1\2\1\3\1\4\1\5\1\6\1\7\1\10";
    static final String DFA22_specialS =
        "\12\uffff}>";
    static final String[] DFA22_transitionS = {
            "\1\11\5\uffff\1\4\1\5\2\uffff\1\6\1\uffff\1\3\22\uffff\32\2\4\uffff"+
            "\1\2\1\uffff\32\2\1\7\1\uffff\1\10",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            ""
    };

    static final short[] DFA22_eot = DFA.unpackEncodedString(DFA22_eotS);
    static final short[] DFA22_eof = DFA.unpackEncodedString(DFA22_eofS);
    static final char[] DFA22_min = DFA.unpackEncodedStringToUnsignedChars(DFA22_minS);
    static final char[] DFA22_max = DFA.unpackEncodedStringToUnsignedChars(DFA22_maxS);
    static final short[] DFA22_accept = DFA.unpackEncodedString(DFA22_acceptS);
    static final short[] DFA22_special = DFA.unpackEncodedString(DFA22_specialS);
    static final short[][] DFA22_transition;

    static {
        int numStates = DFA22_transitionS.length;
        DFA22_transition = new short[numStates][];
        for (int i=0; i<numStates; i++) {
            DFA22_transition[i] = DFA.unpackEncodedString(DFA22_transitionS[i]);
        }
    }

    class DFA22 extends DFA {

        public DFA22(BaseRecognizer recognizer) {
            this.recognizer = recognizer;
            this.decisionNumber = 22;
            this.eot = DFA22_eot;
            this.eof = DFA22_eof;
            this.min = DFA22_min;
            this.max = DFA22_max;
            this.accept = DFA22_accept;
            this.special = DFA22_special;
            this.transition = DFA22_transition;
        }
        public String getDescription() {
            return "()* loopback of 786:8: ( ID | '.' | '(' | ')' | ',' | '{' | '}' | '\"' )*";
        }
    }
    static final String DFA28_eotS =
        "\36\uffff";
    static final String DFA28_eofS =
        "\36\uffff";
    static final String DFA28_minS =
        "\2\0\7\uffff\1\0\24\uffff";
    static final String DFA28_maxS =
        "\1\uffff\1\0\7\uffff\1\0\24\uffff";
    static final String DFA28_acceptS =
        "\2\uffff\1\22\1\23\1\24\1\25\1\26\1\32\1\33\1\uffff\1\1\1\2\1\3\1\4\1\5"+
        "\1\6\1\7\1\10\1\11\1\12\1\13\1\14\1\15\1\16\1\17\1\20\1\21\1\30\1\31\1\27";
    static final String DFA28_specialS =
        "\1\0\1\1\7\uffff\1\2\24\uffff}>";
    static final String[] DFA28_transitionS = {
            "\44\10\1\11\1\1\66\10\1\35\uffa3\10",
            "\1\uffff",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "\1\uffff",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            ""
    };

    static final short[] DFA28_eot = DFA.unpackEncodedString(DFA28_eotS);
    static final short[] DFA28_eof = DFA.unpackEncodedString(DFA28_eofS);
    static final char[] DFA28_min = DFA.unpackEncodedStringToUnsignedChars(DFA28_minS);
    static final char[] DFA28_max = DFA.unpackEncodedStringToUnsignedChars(DFA28_maxS);
    static final short[] DFA28_accept = DFA.unpackEncodedString(DFA28_acceptS);
    static final short[] DFA28_special = DFA.unpackEncodedString(DFA28_specialS);
    static final short[][] DFA28_transition;

    static {
        int numStates = DFA28_transitionS.length;
        DFA28_transition = new short[numStates][];
        for (int i=0; i<numStates; i++) {
            DFA28_transition[i] = DFA.unpackEncodedString(DFA28_transitionS[i]);
        }
    }

    class DFA28 extends DFA {

        public DFA28(BaseRecognizer recognizer) {
            this.recognizer = recognizer;
            this.decisionNumber = 28;
            this.eot = DFA28_eot;
            this.eof = DFA28_eof;
            this.min = DFA28_min;
            this.max = DFA28_max;
            this.accept = DFA28_accept;
            this.special = DFA28_special;
            this.transition = DFA28_transition;
        }
        public String getDescription() {
            return "1:1: Tokens options {k=1; backtrack=true; } : ( SET_ENCLOSING_RULE_SCOPE_ATTR | ENCLOSING_RULE_SCOPE_ATTR | SET_TOKEN_SCOPE_ATTR | TOKEN_SCOPE_ATTR | SET_RULE_SCOPE_ATTR | RULE_SCOPE_ATTR | LABEL_REF | ISOLATED_TOKEN_REF | ISOLATED_LEXER_RULE_REF | SET_LOCAL_ATTR | LOCAL_ATTR | SET_DYNAMIC_SCOPE_ATTR | DYNAMIC_SCOPE_ATTR | ERROR_SCOPED_XY | DYNAMIC_NEGATIVE_INDEXED_SCOPE_ATTR | DYNAMIC_ABSOLUTE_INDEXED_SCOPE_ATTR | ISOLATED_DYNAMIC_SCOPE | TEMPLATE_INSTANCE | INDIRECT_TEMPLATE_INSTANCE | SET_EXPR_ATTRIBUTE | SET_ATTRIBUTE | TEMPLATE_EXPR | ESC | ERROR_XY | ERROR_X | UNKNOWN_SYNTAX | TEXT );";
        }
        public int specialStateTransition(int s, IntStream _input) throws NoViableAltException {
            IntStream input = _input;
        	int _s = s;
            switch ( s ) {
                    case 0 : 
                        int LA28_0 = input.LA(1);

                        s = -1;
                        if ( (LA28_0=='%') ) {s = 1;}

                        else if ( ((LA28_0>='\u0000' && LA28_0<='#')||(LA28_0>='&' && LA28_0<='[')||(LA28_0>=']' && LA28_0<='\uFFFF')) ) {s = 8;}

                        else if ( (LA28_0=='$') ) {s = 9;}

                        else if ( (LA28_0=='\\') ) {s = 29;}

                        if ( s>=0 ) return s;
                        break;
                    case 1 : 
                        int LA28_1 = input.LA(1);

                         
                        int index28_1 = input.index();
                        input.rewind();
                        s = -1;
                        if ( (synpred18_ActionTranslator()) ) {s = 2;}

                        else if ( (synpred19_ActionTranslator()) ) {s = 3;}

                        else if ( (synpred20_ActionTranslator()) ) {s = 4;}

                        else if ( (synpred21_ActionTranslator()) ) {s = 5;}

                        else if ( (synpred22_ActionTranslator()) ) {s = 6;}

                        else if ( (synpred26_ActionTranslator()) ) {s = 7;}

                         
                        input.seek(index28_1);
                        if ( s>=0 ) return s;
                        break;
                    case 2 : 
                        int LA28_9 = input.LA(1);

                         
                        int index28_9 = input.index();
                        input.rewind();
                        s = -1;
                        if ( (synpred1_ActionTranslator()) ) {s = 10;}

                        else if ( (synpred2_ActionTranslator()) ) {s = 11;}

                        else if ( (synpred3_ActionTranslator()) ) {s = 12;}

                        else if ( (synpred4_ActionTranslator()) ) {s = 13;}

                        else if ( (synpred5_ActionTranslator()) ) {s = 14;}

                        else if ( (synpred6_ActionTranslator()) ) {s = 15;}

                        else if ( (synpred7_ActionTranslator()) ) {s = 16;}

                        else if ( (synpred8_ActionTranslator()) ) {s = 17;}

                        else if ( (synpred9_ActionTranslator()) ) {s = 18;}

                        else if ( (synpred10_ActionTranslator()) ) {s = 19;}

                        else if ( (synpred11_ActionTranslator()) ) {s = 20;}

                        else if ( (synpred12_ActionTranslator()) ) {s = 21;}

                        else if ( (synpred13_ActionTranslator()) ) {s = 22;}

                        else if ( (synpred14_ActionTranslator()) ) {s = 23;}

                        else if ( (synpred15_ActionTranslator()) ) {s = 24;}

                        else if ( (synpred16_ActionTranslator()) ) {s = 25;}

                        else if ( (synpred17_ActionTranslator()) ) {s = 26;}

                        else if ( (synpred24_ActionTranslator()) ) {s = 27;}

                        else if ( (synpred25_ActionTranslator()) ) {s = 28;}

                        else if ( (synpred26_ActionTranslator()) ) {s = 7;}

                         
                        input.seek(index28_9);
                        if ( s>=0 ) return s;
                        break;
            }
            if (state.backtracking>0) {state.failed=true; return -1;}
            NoViableAltException nvae =
                new NoViableAltException(getDescription(), 28, _s, input);
            error(nvae);
            throw nvae;
        }
    }
 

}