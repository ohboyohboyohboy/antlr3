// $ANTLR 3.1.3 Oct 07, 2009 18:36:49 org/antlr/grammar/v3/ANTLRv3.g 2009-11-04 19:38:54

    package org.antlr.grammar.v3;


import org.antlr.runtime.*;
import java.util.Stack;
import java.util.List;
import java.util.ArrayList;
import java.util.Map;
import java.util.HashMap;

import org.antlr.runtime.tree.*;

/** ANTLR v3 grammar written in ANTLR v3 with AST construction */
public class ANTLRv3Parser extends Parser {
    public static final String[] tokenNames = new String[] {
        "<invalid>", "<EOR>", "<DOWN>", "<UP>", "DOC_COMMENT", "PARSER", "LEXER", "RULE", "BLOCK", "OPTIONAL", "CLOSURE", "POSITIVE_CLOSURE", "SYNPRED", "RANGE", "CHAR_RANGE", "EPSILON", "ALT", "EOR", "EOB", "EOA", "ID", "ARG", "ARGLIST", "RET", "LEXER_GRAMMAR", "PARSER_GRAMMAR", "TREE_GRAMMAR", "COMBINED_GRAMMAR", "LABEL", "TEMPLATE", "SCOPE", "SEMPRED", "GATED_SEMPRED", "SYN_SEMPRED", "BACKTRACK_SEMPRED", "FRAGMENT", "TREE_BEGIN", "ROOT", "BANG", "REWRITE", "AT", "LABEL_ASSIGN", "LIST_LABEL_ASSIGN", "TOKENS", "TOKEN_REF", "STRING_LITERAL", "CHAR_LITERAL", "ACTION", "OPTIONS", "INT", "ARG_ACTION", "RULE_REF", "DOUBLE_QUOTE_STRING_LITERAL", "DOUBLE_ANGLE_STRING_LITERAL", "SRC", "SL_COMMENT", "ML_COMMENT", "LITERAL_CHAR", "ESC", "XDIGIT", "NESTED_ARG_ACTION", "ACTION_STRING_LITERAL", "ACTION_CHAR_LITERAL", "NESTED_ACTION", "ACTION_ESC", "WS_LOOP", "WS", "'lexer'", "'parser'", "'tree'", "'grammar'", "';'", "'}'", "'::'", "'*'", "'protected'", "'public'", "'private'", "':'", "'throws'", "','", "'('", "'|'", "')'", "'catch'", "'finally'", "'=>'", "'~'", "'<'", "'>'", "'.'", "'?'", "'+'", "'$'"
    };
    public static final int BACKTRACK_SEMPRED=34;
    public static final int DOUBLE_ANGLE_STRING_LITERAL=53;
    public static final int LEXER_GRAMMAR=24;
    public static final int EOA=19;
    public static final int ARGLIST=22;
    public static final int EOF=-1;
    public static final int SEMPRED=31;
    public static final int ACTION=47;
    public static final int EOB=18;
    public static final int TOKEN_REF=44;
    public static final int T__93=93;
    public static final int T__91=91;
    public static final int RET=23;
    public static final int T__92=92;
    public static final int STRING_LITERAL=45;
    public static final int T__90=90;
    public static final int ARG=21;
    public static final int EOR=17;
    public static final int ARG_ACTION=50;
    public static final int DOUBLE_QUOTE_STRING_LITERAL=52;
    public static final int NESTED_ARG_ACTION=60;
    public static final int ACTION_CHAR_LITERAL=62;
    public static final int T__80=80;
    public static final int T__81=81;
    public static final int RULE=7;
    public static final int T__82=82;
    public static final int T__83=83;
    public static final int ACTION_ESC=64;
    public static final int PARSER_GRAMMAR=25;
    public static final int SRC=54;
    public static final int CHAR_RANGE=14;
    public static final int INT=49;
    public static final int EPSILON=15;
    public static final int T__85=85;
    public static final int T__84=84;
    public static final int T__87=87;
    public static final int T__86=86;
    public static final int T__89=89;
    public static final int REWRITE=39;
    public static final int T__88=88;
    public static final int WS=66;
    public static final int T__71=71;
    public static final int T__72=72;
    public static final int COMBINED_GRAMMAR=27;
    public static final int T__70=70;
    public static final int LEXER=6;
    public static final int SL_COMMENT=55;
    public static final int TREE_GRAMMAR=26;
    public static final int T__76=76;
    public static final int CLOSURE=10;
    public static final int T__75=75;
    public static final int PARSER=5;
    public static final int T__74=74;
    public static final int T__73=73;
    public static final int T__79=79;
    public static final int T__78=78;
    public static final int T__77=77;
    public static final int T__68=68;
    public static final int T__69=69;
    public static final int T__67=67;
    public static final int NESTED_ACTION=63;
    public static final int ESC=58;
    public static final int FRAGMENT=35;
    public static final int ID=20;
    public static final int TREE_BEGIN=36;
    public static final int AT=40;
    public static final int ML_COMMENT=56;
    public static final int ALT=16;
    public static final int SCOPE=30;
    public static final int LABEL_ASSIGN=41;
    public static final int DOC_COMMENT=4;
    public static final int WS_LOOP=65;
    public static final int RANGE=13;
    public static final int TOKENS=43;
    public static final int GATED_SEMPRED=32;
    public static final int LITERAL_CHAR=57;
    public static final int BANG=38;
    public static final int LIST_LABEL_ASSIGN=42;
    public static final int ACTION_STRING_LITERAL=61;
    public static final int ROOT=37;
    public static final int RULE_REF=51;
    public static final int SYNPRED=12;
    public static final int OPTIONAL=9;
    public static final int CHAR_LITERAL=46;
    public static final int LABEL=28;
    public static final int TEMPLATE=29;
    public static final int SYN_SEMPRED=33;
    public static final int XDIGIT=59;
    public static final int BLOCK=8;
    public static final int POSITIVE_CLOSURE=11;
    public static final int OPTIONS=48;

    // delegates
    // delegators


        public ANTLRv3Parser(TokenStream input) {
            this(input, new RecognizerSharedState());
        }
        public ANTLRv3Parser(TokenStream input, RecognizerSharedState state) {
            super(input, state);
             
        }
        
    protected TreeAdaptor adaptor = new CommonTreeAdaptor();

    public void setTreeAdaptor(TreeAdaptor adaptor) {
        this.adaptor = adaptor;
    }
    public TreeAdaptor getTreeAdaptor() {
        return adaptor;
    }

    public String[] getTokenNames() { return ANTLRv3Parser.tokenNames; }
    public String getGrammarFileName() { return "org/antlr/grammar/v3/ANTLRv3.g"; }


    	int gtype;


    public static class grammarDef_return extends ParserRuleReturnScope {
        CommonTree tree;
        public Object getTree() { return tree; }
    };

    // $ANTLR start "grammarDef"
    // org/antlr/grammar/v3/ANTLRv3.g:93:1: grammarDef : ( DOC_COMMENT )? ( 'lexer' | 'parser' | 'tree' | ) g= 'grammar' id ';' ( optionsSpec )? ( tokensSpec )? ( attrScope )* ( action )* ( rule )+ EOF -> ^( id ( DOC_COMMENT )? ( optionsSpec )? ( tokensSpec )? ( attrScope )* ( action )* ( rule )+ ) ;
    public final ANTLRv3Parser.grammarDef_return grammarDef() throws RecognitionException {
        ANTLRv3Parser.grammarDef_return retval = new ANTLRv3Parser.grammarDef_return();
        retval.start = input.LT(1);

        CommonTree root_0 = null;

        Token g=null;
        Token DOC_COMMENT1=null;
        Token string_literal2=null;
        Token string_literal3=null;
        Token string_literal4=null;
        Token char_literal6=null;
        Token EOF12=null;
        ANTLRv3Parser.id_return id5 = null;

        ANTLRv3Parser.optionsSpec_return optionsSpec7 = null;

        ANTLRv3Parser.tokensSpec_return tokensSpec8 = null;

        ANTLRv3Parser.attrScope_return attrScope9 = null;

        ANTLRv3Parser.action_return action10 = null;

        ANTLRv3Parser.rule_return rule11 = null;


        CommonTree g_tree=null;
        CommonTree DOC_COMMENT1_tree=null;
        CommonTree string_literal2_tree=null;
        CommonTree string_literal3_tree=null;
        CommonTree string_literal4_tree=null;
        CommonTree char_literal6_tree=null;
        CommonTree EOF12_tree=null;
        RewriteRuleTokenStream stream_67=new RewriteRuleTokenStream(adaptor,"token 67");
        RewriteRuleTokenStream stream_DOC_COMMENT=new RewriteRuleTokenStream(adaptor,"token DOC_COMMENT");
        RewriteRuleTokenStream stream_69=new RewriteRuleTokenStream(adaptor,"token 69");
        RewriteRuleTokenStream stream_68=new RewriteRuleTokenStream(adaptor,"token 68");
        RewriteRuleTokenStream stream_EOF=new RewriteRuleTokenStream(adaptor,"token EOF");
        RewriteRuleTokenStream stream_70=new RewriteRuleTokenStream(adaptor,"token 70");
        RewriteRuleTokenStream stream_71=new RewriteRuleTokenStream(adaptor,"token 71");
        RewriteRuleSubtreeStream stream_id=new RewriteRuleSubtreeStream(adaptor,"rule id");
        RewriteRuleSubtreeStream stream_tokensSpec=new RewriteRuleSubtreeStream(adaptor,"rule tokensSpec");
        RewriteRuleSubtreeStream stream_attrScope=new RewriteRuleSubtreeStream(adaptor,"rule attrScope");
        RewriteRuleSubtreeStream stream_rule=new RewriteRuleSubtreeStream(adaptor,"rule rule");
        RewriteRuleSubtreeStream stream_action=new RewriteRuleSubtreeStream(adaptor,"rule action");
        RewriteRuleSubtreeStream stream_optionsSpec=new RewriteRuleSubtreeStream(adaptor,"rule optionsSpec");
        try {
            // org/antlr/grammar/v3/ANTLRv3.g:94:5: ( ( DOC_COMMENT )? ( 'lexer' | 'parser' | 'tree' | ) g= 'grammar' id ';' ( optionsSpec )? ( tokensSpec )? ( attrScope )* ( action )* ( rule )+ EOF -> ^( id ( DOC_COMMENT )? ( optionsSpec )? ( tokensSpec )? ( attrScope )* ( action )* ( rule )+ ) )
            // org/antlr/grammar/v3/ANTLRv3.g:94:9: ( DOC_COMMENT )? ( 'lexer' | 'parser' | 'tree' | ) g= 'grammar' id ';' ( optionsSpec )? ( tokensSpec )? ( attrScope )* ( action )* ( rule )+ EOF
            {
            // org/antlr/grammar/v3/ANTLRv3.g:94:9: ( DOC_COMMENT )?
            int alt1=2;
            int LA1_0 = input.LA(1);

            if ( (LA1_0==DOC_COMMENT) ) {
                alt1=1;
            }
            switch (alt1) {
                case 1 :
                    // org/antlr/grammar/v3/ANTLRv3.g:94:9: DOC_COMMENT
                    {
                    DOC_COMMENT1=(Token)match(input,DOC_COMMENT,FOLLOW_DOC_COMMENT_in_grammarDef368); if (state.failed) return retval; 
                    if ( state.backtracking==0 ) stream_DOC_COMMENT.add(DOC_COMMENT1);


                    }
                    break;

            }

            // org/antlr/grammar/v3/ANTLRv3.g:95:6: ( 'lexer' | 'parser' | 'tree' | )
            int alt2=4;
            switch ( input.LA(1) ) {
            case 67:
                {
                alt2=1;
                }
                break;
            case 68:
                {
                alt2=2;
                }
                break;
            case 69:
                {
                alt2=3;
                }
                break;
            case 70:
                {
                alt2=4;
                }
                break;
            default:
                if (state.backtracking>0) {state.failed=true; return retval;}
                NoViableAltException nvae =
                    new NoViableAltException("", 2, 0, input);

                throw nvae;
            }

            switch (alt2) {
                case 1 :
                    // org/antlr/grammar/v3/ANTLRv3.g:95:8: 'lexer'
                    {
                    string_literal2=(Token)match(input,67,FOLLOW_67_in_grammarDef378); if (state.failed) return retval; 
                    if ( state.backtracking==0 ) stream_67.add(string_literal2);

                    if ( state.backtracking==0 ) {
                      gtype=LEXER_GRAMMAR;
                    }

                    }
                    break;
                case 2 :
                    // org/antlr/grammar/v3/ANTLRv3.g:96:10: 'parser'
                    {
                    string_literal3=(Token)match(input,68,FOLLOW_68_in_grammarDef396); if (state.failed) return retval; 
                    if ( state.backtracking==0 ) stream_68.add(string_literal3);

                    if ( state.backtracking==0 ) {
                      gtype=PARSER_GRAMMAR;
                    }

                    }
                    break;
                case 3 :
                    // org/antlr/grammar/v3/ANTLRv3.g:97:10: 'tree'
                    {
                    string_literal4=(Token)match(input,69,FOLLOW_69_in_grammarDef412); if (state.failed) return retval; 
                    if ( state.backtracking==0 ) stream_69.add(string_literal4);

                    if ( state.backtracking==0 ) {
                      gtype=TREE_GRAMMAR;
                    }

                    }
                    break;
                case 4 :
                    // org/antlr/grammar/v3/ANTLRv3.g:98:14: 
                    {
                    if ( state.backtracking==0 ) {
                      gtype=COMBINED_GRAMMAR;
                    }

                    }
                    break;

            }

            g=(Token)match(input,70,FOLLOW_70_in_grammarDef453); if (state.failed) return retval; 
            if ( state.backtracking==0 ) stream_70.add(g);

            pushFollow(FOLLOW_id_in_grammarDef455);
            id5=id();

            state._fsp--;
            if (state.failed) return retval;
            if ( state.backtracking==0 ) stream_id.add(id5.getTree());
            char_literal6=(Token)match(input,71,FOLLOW_71_in_grammarDef457); if (state.failed) return retval; 
            if ( state.backtracking==0 ) stream_71.add(char_literal6);

            // org/antlr/grammar/v3/ANTLRv3.g:100:25: ( optionsSpec )?
            int alt3=2;
            int LA3_0 = input.LA(1);

            if ( (LA3_0==OPTIONS) ) {
                alt3=1;
            }
            switch (alt3) {
                case 1 :
                    // org/antlr/grammar/v3/ANTLRv3.g:100:25: optionsSpec
                    {
                    pushFollow(FOLLOW_optionsSpec_in_grammarDef459);
                    optionsSpec7=optionsSpec();

                    state._fsp--;
                    if (state.failed) return retval;
                    if ( state.backtracking==0 ) stream_optionsSpec.add(optionsSpec7.getTree());

                    }
                    break;

            }

            // org/antlr/grammar/v3/ANTLRv3.g:100:38: ( tokensSpec )?
            int alt4=2;
            int LA4_0 = input.LA(1);

            if ( (LA4_0==TOKENS) ) {
                alt4=1;
            }
            switch (alt4) {
                case 1 :
                    // org/antlr/grammar/v3/ANTLRv3.g:100:38: tokensSpec
                    {
                    pushFollow(FOLLOW_tokensSpec_in_grammarDef462);
                    tokensSpec8=tokensSpec();

                    state._fsp--;
                    if (state.failed) return retval;
                    if ( state.backtracking==0 ) stream_tokensSpec.add(tokensSpec8.getTree());

                    }
                    break;

            }

            // org/antlr/grammar/v3/ANTLRv3.g:100:50: ( attrScope )*
            loop5:
            do {
                int alt5=2;
                int LA5_0 = input.LA(1);

                if ( (LA5_0==SCOPE) ) {
                    alt5=1;
                }


                switch (alt5) {
            	case 1 :
            	    // org/antlr/grammar/v3/ANTLRv3.g:100:50: attrScope
            	    {
            	    pushFollow(FOLLOW_attrScope_in_grammarDef465);
            	    attrScope9=attrScope();

            	    state._fsp--;
            	    if (state.failed) return retval;
            	    if ( state.backtracking==0 ) stream_attrScope.add(attrScope9.getTree());

            	    }
            	    break;

            	default :
            	    break loop5;
                }
            } while (true);

            // org/antlr/grammar/v3/ANTLRv3.g:100:61: ( action )*
            loop6:
            do {
                int alt6=2;
                int LA6_0 = input.LA(1);

                if ( (LA6_0==AT) ) {
                    alt6=1;
                }


                switch (alt6) {
            	case 1 :
            	    // org/antlr/grammar/v3/ANTLRv3.g:100:61: action
            	    {
            	    pushFollow(FOLLOW_action_in_grammarDef468);
            	    action10=action();

            	    state._fsp--;
            	    if (state.failed) return retval;
            	    if ( state.backtracking==0 ) stream_action.add(action10.getTree());

            	    }
            	    break;

            	default :
            	    break loop6;
                }
            } while (true);

            // org/antlr/grammar/v3/ANTLRv3.g:101:6: ( rule )+
            int cnt7=0;
            loop7:
            do {
                int alt7=2;
                int LA7_0 = input.LA(1);

                if ( (LA7_0==DOC_COMMENT||LA7_0==FRAGMENT||LA7_0==TOKEN_REF||LA7_0==RULE_REF||(LA7_0>=75 && LA7_0<=77)) ) {
                    alt7=1;
                }


                switch (alt7) {
            	case 1 :
            	    // org/antlr/grammar/v3/ANTLRv3.g:101:6: rule
            	    {
            	    pushFollow(FOLLOW_rule_in_grammarDef476);
            	    rule11=rule();

            	    state._fsp--;
            	    if (state.failed) return retval;
            	    if ( state.backtracking==0 ) stream_rule.add(rule11.getTree());

            	    }
            	    break;

            	default :
            	    if ( cnt7 >= 1 ) break loop7;
            	    if (state.backtracking>0) {state.failed=true; return retval;}
                        EarlyExitException eee =
                            new EarlyExitException(7, input);
                        throw eee;
                }
                cnt7++;
            } while (true);

            EOF12=(Token)match(input,EOF,FOLLOW_EOF_in_grammarDef484); if (state.failed) return retval; 
            if ( state.backtracking==0 ) stream_EOF.add(EOF12);



            // AST REWRITE
            // elements: action, tokensSpec, id, optionsSpec, attrScope, rule, DOC_COMMENT
            // token labels: 
            // rule labels: retval
            // token list labels: 
            // rule list labels: 
            // wildcard labels: 
            if ( state.backtracking==0 ) {
            retval.tree = root_0;
            RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

            root_0 = (CommonTree)adaptor.nil();
            // 103:6: -> ^( id ( DOC_COMMENT )? ( optionsSpec )? ( tokensSpec )? ( attrScope )* ( action )* ( rule )+ )
            {
                // org/antlr/grammar/v3/ANTLRv3.g:103:9: ^( id ( DOC_COMMENT )? ( optionsSpec )? ( tokensSpec )? ( attrScope )* ( action )* ( rule )+ )
                {
                CommonTree root_1 = (CommonTree)adaptor.nil();
                root_1 = (CommonTree)adaptor.becomeRoot(adaptor.create(gtype,g), root_1);

                adaptor.addChild(root_1, stream_id.nextTree());
                // org/antlr/grammar/v3/ANTLRv3.g:104:12: ( DOC_COMMENT )?
                if ( stream_DOC_COMMENT.hasNext() ) {
                    adaptor.addChild(root_1, stream_DOC_COMMENT.nextNode());

                }
                stream_DOC_COMMENT.reset();
                // org/antlr/grammar/v3/ANTLRv3.g:104:25: ( optionsSpec )?
                if ( stream_optionsSpec.hasNext() ) {
                    adaptor.addChild(root_1, stream_optionsSpec.nextTree());

                }
                stream_optionsSpec.reset();
                // org/antlr/grammar/v3/ANTLRv3.g:104:38: ( tokensSpec )?
                if ( stream_tokensSpec.hasNext() ) {
                    adaptor.addChild(root_1, stream_tokensSpec.nextTree());

                }
                stream_tokensSpec.reset();
                // org/antlr/grammar/v3/ANTLRv3.g:104:50: ( attrScope )*
                while ( stream_attrScope.hasNext() ) {
                    adaptor.addChild(root_1, stream_attrScope.nextTree());

                }
                stream_attrScope.reset();
                // org/antlr/grammar/v3/ANTLRv3.g:104:61: ( action )*
                while ( stream_action.hasNext() ) {
                    adaptor.addChild(root_1, stream_action.nextTree());

                }
                stream_action.reset();
                if ( !(stream_rule.hasNext()) ) {
                    throw new RewriteEarlyExitException();
                }
                while ( stream_rule.hasNext() ) {
                    adaptor.addChild(root_1, stream_rule.nextTree());

                }
                stream_rule.reset();

                adaptor.addChild(root_0, root_1);
                }

            }

            retval.tree = root_0;}
            }

            retval.stop = input.LT(-1);

            if ( state.backtracking==0 ) {

            retval.tree = (CommonTree)adaptor.rulePostProcessing(root_0);
            adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
    	retval.tree = (CommonTree)adaptor.errorNode(input, retval.start, input.LT(-1), re);

        }
        finally {
        }
        return retval;
    }
    // $ANTLR end "grammarDef"

    public static class tokensSpec_return extends ParserRuleReturnScope {
        CommonTree tree;
        public Object getTree() { return tree; }
    };

    // $ANTLR start "tokensSpec"
    // org/antlr/grammar/v3/ANTLRv3.g:108:1: tokensSpec : TOKENS ( tokenSpec )+ '}' -> ^( TOKENS ( tokenSpec )+ ) ;
    public final ANTLRv3Parser.tokensSpec_return tokensSpec() throws RecognitionException {
        ANTLRv3Parser.tokensSpec_return retval = new ANTLRv3Parser.tokensSpec_return();
        retval.start = input.LT(1);

        CommonTree root_0 = null;

        Token TOKENS13=null;
        Token char_literal15=null;
        ANTLRv3Parser.tokenSpec_return tokenSpec14 = null;


        CommonTree TOKENS13_tree=null;
        CommonTree char_literal15_tree=null;
        RewriteRuleTokenStream stream_TOKENS=new RewriteRuleTokenStream(adaptor,"token TOKENS");
        RewriteRuleTokenStream stream_72=new RewriteRuleTokenStream(adaptor,"token 72");
        RewriteRuleSubtreeStream stream_tokenSpec=new RewriteRuleSubtreeStream(adaptor,"rule tokenSpec");
        try {
            // org/antlr/grammar/v3/ANTLRv3.g:109:2: ( TOKENS ( tokenSpec )+ '}' -> ^( TOKENS ( tokenSpec )+ ) )
            // org/antlr/grammar/v3/ANTLRv3.g:109:4: TOKENS ( tokenSpec )+ '}'
            {
            TOKENS13=(Token)match(input,TOKENS,FOLLOW_TOKENS_in_tokensSpec545); if (state.failed) return retval; 
            if ( state.backtracking==0 ) stream_TOKENS.add(TOKENS13);

            // org/antlr/grammar/v3/ANTLRv3.g:109:11: ( tokenSpec )+
            int cnt8=0;
            loop8:
            do {
                int alt8=2;
                int LA8_0 = input.LA(1);

                if ( (LA8_0==TOKEN_REF) ) {
                    alt8=1;
                }


                switch (alt8) {
            	case 1 :
            	    // org/antlr/grammar/v3/ANTLRv3.g:109:11: tokenSpec
            	    {
            	    pushFollow(FOLLOW_tokenSpec_in_tokensSpec547);
            	    tokenSpec14=tokenSpec();

            	    state._fsp--;
            	    if (state.failed) return retval;
            	    if ( state.backtracking==0 ) stream_tokenSpec.add(tokenSpec14.getTree());

            	    }
            	    break;

            	default :
            	    if ( cnt8 >= 1 ) break loop8;
            	    if (state.backtracking>0) {state.failed=true; return retval;}
                        EarlyExitException eee =
                            new EarlyExitException(8, input);
                        throw eee;
                }
                cnt8++;
            } while (true);

            char_literal15=(Token)match(input,72,FOLLOW_72_in_tokensSpec550); if (state.failed) return retval; 
            if ( state.backtracking==0 ) stream_72.add(char_literal15);



            // AST REWRITE
            // elements: tokenSpec, TOKENS
            // token labels: 
            // rule labels: retval
            // token list labels: 
            // rule list labels: 
            // wildcard labels: 
            if ( state.backtracking==0 ) {
            retval.tree = root_0;
            RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

            root_0 = (CommonTree)adaptor.nil();
            // 109:26: -> ^( TOKENS ( tokenSpec )+ )
            {
                // org/antlr/grammar/v3/ANTLRv3.g:109:29: ^( TOKENS ( tokenSpec )+ )
                {
                CommonTree root_1 = (CommonTree)adaptor.nil();
                root_1 = (CommonTree)adaptor.becomeRoot(stream_TOKENS.nextNode(), root_1);

                if ( !(stream_tokenSpec.hasNext()) ) {
                    throw new RewriteEarlyExitException();
                }
                while ( stream_tokenSpec.hasNext() ) {
                    adaptor.addChild(root_1, stream_tokenSpec.nextTree());

                }
                stream_tokenSpec.reset();

                adaptor.addChild(root_0, root_1);
                }

            }

            retval.tree = root_0;}
            }

            retval.stop = input.LT(-1);

            if ( state.backtracking==0 ) {

            retval.tree = (CommonTree)adaptor.rulePostProcessing(root_0);
            adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
    	retval.tree = (CommonTree)adaptor.errorNode(input, retval.start, input.LT(-1), re);

        }
        finally {
        }
        return retval;
    }
    // $ANTLR end "tokensSpec"

    public static class tokenSpec_return extends ParserRuleReturnScope {
        CommonTree tree;
        public Object getTree() { return tree; }
    };

    // $ANTLR start "tokenSpec"
    // org/antlr/grammar/v3/ANTLRv3.g:112:1: tokenSpec : TOKEN_REF ( '=' (lit= STRING_LITERAL | lit= CHAR_LITERAL ) -> ^( '=' TOKEN_REF $lit) | -> TOKEN_REF ) ';' ;
    public final ANTLRv3Parser.tokenSpec_return tokenSpec() throws RecognitionException {
        ANTLRv3Parser.tokenSpec_return retval = new ANTLRv3Parser.tokenSpec_return();
        retval.start = input.LT(1);

        CommonTree root_0 = null;

        Token lit=null;
        Token TOKEN_REF16=null;
        Token char_literal17=null;
        Token char_literal18=null;

        CommonTree lit_tree=null;
        CommonTree TOKEN_REF16_tree=null;
        CommonTree char_literal17_tree=null;
        CommonTree char_literal18_tree=null;
        RewriteRuleTokenStream stream_STRING_LITERAL=new RewriteRuleTokenStream(adaptor,"token STRING_LITERAL");
        RewriteRuleTokenStream stream_CHAR_LITERAL=new RewriteRuleTokenStream(adaptor,"token CHAR_LITERAL");
        RewriteRuleTokenStream stream_LABEL_ASSIGN=new RewriteRuleTokenStream(adaptor,"token LABEL_ASSIGN");
        RewriteRuleTokenStream stream_71=new RewriteRuleTokenStream(adaptor,"token 71");
        RewriteRuleTokenStream stream_TOKEN_REF=new RewriteRuleTokenStream(adaptor,"token TOKEN_REF");

        try {
            // org/antlr/grammar/v3/ANTLRv3.g:113:2: ( TOKEN_REF ( '=' (lit= STRING_LITERAL | lit= CHAR_LITERAL ) -> ^( '=' TOKEN_REF $lit) | -> TOKEN_REF ) ';' )
            // org/antlr/grammar/v3/ANTLRv3.g:113:4: TOKEN_REF ( '=' (lit= STRING_LITERAL | lit= CHAR_LITERAL ) -> ^( '=' TOKEN_REF $lit) | -> TOKEN_REF ) ';'
            {
            TOKEN_REF16=(Token)match(input,TOKEN_REF,FOLLOW_TOKEN_REF_in_tokenSpec570); if (state.failed) return retval; 
            if ( state.backtracking==0 ) stream_TOKEN_REF.add(TOKEN_REF16);

            // org/antlr/grammar/v3/ANTLRv3.g:114:3: ( '=' (lit= STRING_LITERAL | lit= CHAR_LITERAL ) -> ^( '=' TOKEN_REF $lit) | -> TOKEN_REF )
            int alt10=2;
            int LA10_0 = input.LA(1);

            if ( (LA10_0==LABEL_ASSIGN) ) {
                alt10=1;
            }
            else if ( (LA10_0==71) ) {
                alt10=2;
            }
            else {
                if (state.backtracking>0) {state.failed=true; return retval;}
                NoViableAltException nvae =
                    new NoViableAltException("", 10, 0, input);

                throw nvae;
            }
            switch (alt10) {
                case 1 :
                    // org/antlr/grammar/v3/ANTLRv3.g:114:5: '=' (lit= STRING_LITERAL | lit= CHAR_LITERAL )
                    {
                    char_literal17=(Token)match(input,LABEL_ASSIGN,FOLLOW_LABEL_ASSIGN_in_tokenSpec576); if (state.failed) return retval; 
                    if ( state.backtracking==0 ) stream_LABEL_ASSIGN.add(char_literal17);

                    // org/antlr/grammar/v3/ANTLRv3.g:114:9: (lit= STRING_LITERAL | lit= CHAR_LITERAL )
                    int alt9=2;
                    int LA9_0 = input.LA(1);

                    if ( (LA9_0==STRING_LITERAL) ) {
                        alt9=1;
                    }
                    else if ( (LA9_0==CHAR_LITERAL) ) {
                        alt9=2;
                    }
                    else {
                        if (state.backtracking>0) {state.failed=true; return retval;}
                        NoViableAltException nvae =
                            new NoViableAltException("", 9, 0, input);

                        throw nvae;
                    }
                    switch (alt9) {
                        case 1 :
                            // org/antlr/grammar/v3/ANTLRv3.g:114:10: lit= STRING_LITERAL
                            {
                            lit=(Token)match(input,STRING_LITERAL,FOLLOW_STRING_LITERAL_in_tokenSpec581); if (state.failed) return retval; 
                            if ( state.backtracking==0 ) stream_STRING_LITERAL.add(lit);


                            }
                            break;
                        case 2 :
                            // org/antlr/grammar/v3/ANTLRv3.g:114:29: lit= CHAR_LITERAL
                            {
                            lit=(Token)match(input,CHAR_LITERAL,FOLLOW_CHAR_LITERAL_in_tokenSpec585); if (state.failed) return retval; 
                            if ( state.backtracking==0 ) stream_CHAR_LITERAL.add(lit);


                            }
                            break;

                    }



                    // AST REWRITE
                    // elements: lit, TOKEN_REF, LABEL_ASSIGN
                    // token labels: lit
                    // rule labels: retval
                    // token list labels: 
                    // rule list labels: 
                    // wildcard labels: 
                    if ( state.backtracking==0 ) {
                    retval.tree = root_0;
                    RewriteRuleTokenStream stream_lit=new RewriteRuleTokenStream(adaptor,"token lit",lit);
                    RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                    root_0 = (CommonTree)adaptor.nil();
                    // 114:47: -> ^( '=' TOKEN_REF $lit)
                    {
                        // org/antlr/grammar/v3/ANTLRv3.g:114:50: ^( '=' TOKEN_REF $lit)
                        {
                        CommonTree root_1 = (CommonTree)adaptor.nil();
                        root_1 = (CommonTree)adaptor.becomeRoot(stream_LABEL_ASSIGN.nextNode(), root_1);

                        adaptor.addChild(root_1, stream_TOKEN_REF.nextNode());
                        adaptor.addChild(root_1, stream_lit.nextNode());

                        adaptor.addChild(root_0, root_1);
                        }

                    }

                    retval.tree = root_0;}
                    }
                    break;
                case 2 :
                    // org/antlr/grammar/v3/ANTLRv3.g:115:16: 
                    {

                    // AST REWRITE
                    // elements: TOKEN_REF
                    // token labels: 
                    // rule labels: retval
                    // token list labels: 
                    // rule list labels: 
                    // wildcard labels: 
                    if ( state.backtracking==0 ) {
                    retval.tree = root_0;
                    RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                    root_0 = (CommonTree)adaptor.nil();
                    // 115:16: -> TOKEN_REF
                    {
                        adaptor.addChild(root_0, stream_TOKEN_REF.nextNode());

                    }

                    retval.tree = root_0;}
                    }
                    break;

            }

            char_literal18=(Token)match(input,71,FOLLOW_71_in_tokenSpec624); if (state.failed) return retval; 
            if ( state.backtracking==0 ) stream_71.add(char_literal18);


            }

            retval.stop = input.LT(-1);

            if ( state.backtracking==0 ) {

            retval.tree = (CommonTree)adaptor.rulePostProcessing(root_0);
            adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
    	retval.tree = (CommonTree)adaptor.errorNode(input, retval.start, input.LT(-1), re);

        }
        finally {
        }
        return retval;
    }
    // $ANTLR end "tokenSpec"

    public static class attrScope_return extends ParserRuleReturnScope {
        CommonTree tree;
        public Object getTree() { return tree; }
    };

    // $ANTLR start "attrScope"
    // org/antlr/grammar/v3/ANTLRv3.g:120:1: attrScope : 'scope' id ACTION -> ^( 'scope' id ACTION ) ;
    public final ANTLRv3Parser.attrScope_return attrScope() throws RecognitionException {
        ANTLRv3Parser.attrScope_return retval = new ANTLRv3Parser.attrScope_return();
        retval.start = input.LT(1);

        CommonTree root_0 = null;

        Token string_literal19=null;
        Token ACTION21=null;
        ANTLRv3Parser.id_return id20 = null;


        CommonTree string_literal19_tree=null;
        CommonTree ACTION21_tree=null;
        RewriteRuleTokenStream stream_SCOPE=new RewriteRuleTokenStream(adaptor,"token SCOPE");
        RewriteRuleTokenStream stream_ACTION=new RewriteRuleTokenStream(adaptor,"token ACTION");
        RewriteRuleSubtreeStream stream_id=new RewriteRuleSubtreeStream(adaptor,"rule id");
        try {
            // org/antlr/grammar/v3/ANTLRv3.g:121:2: ( 'scope' id ACTION -> ^( 'scope' id ACTION ) )
            // org/antlr/grammar/v3/ANTLRv3.g:121:4: 'scope' id ACTION
            {
            string_literal19=(Token)match(input,SCOPE,FOLLOW_SCOPE_in_attrScope635); if (state.failed) return retval; 
            if ( state.backtracking==0 ) stream_SCOPE.add(string_literal19);

            pushFollow(FOLLOW_id_in_attrScope637);
            id20=id();

            state._fsp--;
            if (state.failed) return retval;
            if ( state.backtracking==0 ) stream_id.add(id20.getTree());
            ACTION21=(Token)match(input,ACTION,FOLLOW_ACTION_in_attrScope639); if (state.failed) return retval; 
            if ( state.backtracking==0 ) stream_ACTION.add(ACTION21);



            // AST REWRITE
            // elements: id, SCOPE, ACTION
            // token labels: 
            // rule labels: retval
            // token list labels: 
            // rule list labels: 
            // wildcard labels: 
            if ( state.backtracking==0 ) {
            retval.tree = root_0;
            RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

            root_0 = (CommonTree)adaptor.nil();
            // 121:22: -> ^( 'scope' id ACTION )
            {
                // org/antlr/grammar/v3/ANTLRv3.g:121:25: ^( 'scope' id ACTION )
                {
                CommonTree root_1 = (CommonTree)adaptor.nil();
                root_1 = (CommonTree)adaptor.becomeRoot(stream_SCOPE.nextNode(), root_1);

                adaptor.addChild(root_1, stream_id.nextTree());
                adaptor.addChild(root_1, stream_ACTION.nextNode());

                adaptor.addChild(root_0, root_1);
                }

            }

            retval.tree = root_0;}
            }

            retval.stop = input.LT(-1);

            if ( state.backtracking==0 ) {

            retval.tree = (CommonTree)adaptor.rulePostProcessing(root_0);
            adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
    	retval.tree = (CommonTree)adaptor.errorNode(input, retval.start, input.LT(-1), re);

        }
        finally {
        }
        return retval;
    }
    // $ANTLR end "attrScope"

    public static class action_return extends ParserRuleReturnScope {
        CommonTree tree;
        public Object getTree() { return tree; }
    };

    // $ANTLR start "action"
    // org/antlr/grammar/v3/ANTLRv3.g:124:1: action : '@' ( actionScopeName '::' )? id ACTION -> ^( '@' ( actionScopeName )? id ACTION ) ;
    public final ANTLRv3Parser.action_return action() throws RecognitionException {
        ANTLRv3Parser.action_return retval = new ANTLRv3Parser.action_return();
        retval.start = input.LT(1);

        CommonTree root_0 = null;

        Token char_literal22=null;
        Token string_literal24=null;
        Token ACTION26=null;
        ANTLRv3Parser.actionScopeName_return actionScopeName23 = null;

        ANTLRv3Parser.id_return id25 = null;


        CommonTree char_literal22_tree=null;
        CommonTree string_literal24_tree=null;
        CommonTree ACTION26_tree=null;
        RewriteRuleTokenStream stream_AT=new RewriteRuleTokenStream(adaptor,"token AT");
        RewriteRuleTokenStream stream_ACTION=new RewriteRuleTokenStream(adaptor,"token ACTION");
        RewriteRuleTokenStream stream_73=new RewriteRuleTokenStream(adaptor,"token 73");
        RewriteRuleSubtreeStream stream_id=new RewriteRuleSubtreeStream(adaptor,"rule id");
        RewriteRuleSubtreeStream stream_actionScopeName=new RewriteRuleSubtreeStream(adaptor,"rule actionScopeName");
        try {
            // org/antlr/grammar/v3/ANTLRv3.g:126:2: ( '@' ( actionScopeName '::' )? id ACTION -> ^( '@' ( actionScopeName )? id ACTION ) )
            // org/antlr/grammar/v3/ANTLRv3.g:126:4: '@' ( actionScopeName '::' )? id ACTION
            {
            char_literal22=(Token)match(input,AT,FOLLOW_AT_in_action662); if (state.failed) return retval; 
            if ( state.backtracking==0 ) stream_AT.add(char_literal22);

            // org/antlr/grammar/v3/ANTLRv3.g:126:8: ( actionScopeName '::' )?
            int alt11=2;
            switch ( input.LA(1) ) {
                case TOKEN_REF:
                    {
                    int LA11_1 = input.LA(2);

                    if ( (LA11_1==73) ) {
                        alt11=1;
                    }
                    }
                    break;
                case RULE_REF:
                    {
                    int LA11_2 = input.LA(2);

                    if ( (LA11_2==73) ) {
                        alt11=1;
                    }
                    }
                    break;
                case 67:
                case 68:
                    {
                    alt11=1;
                    }
                    break;
            }

            switch (alt11) {
                case 1 :
                    // org/antlr/grammar/v3/ANTLRv3.g:126:9: actionScopeName '::'
                    {
                    pushFollow(FOLLOW_actionScopeName_in_action665);
                    actionScopeName23=actionScopeName();

                    state._fsp--;
                    if (state.failed) return retval;
                    if ( state.backtracking==0 ) stream_actionScopeName.add(actionScopeName23.getTree());
                    string_literal24=(Token)match(input,73,FOLLOW_73_in_action667); if (state.failed) return retval; 
                    if ( state.backtracking==0 ) stream_73.add(string_literal24);


                    }
                    break;

            }

            pushFollow(FOLLOW_id_in_action671);
            id25=id();

            state._fsp--;
            if (state.failed) return retval;
            if ( state.backtracking==0 ) stream_id.add(id25.getTree());
            ACTION26=(Token)match(input,ACTION,FOLLOW_ACTION_in_action673); if (state.failed) return retval; 
            if ( state.backtracking==0 ) stream_ACTION.add(ACTION26);



            // AST REWRITE
            // elements: actionScopeName, ACTION, id, AT
            // token labels: 
            // rule labels: retval
            // token list labels: 
            // rule list labels: 
            // wildcard labels: 
            if ( state.backtracking==0 ) {
            retval.tree = root_0;
            RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

            root_0 = (CommonTree)adaptor.nil();
            // 126:42: -> ^( '@' ( actionScopeName )? id ACTION )
            {
                // org/antlr/grammar/v3/ANTLRv3.g:126:45: ^( '@' ( actionScopeName )? id ACTION )
                {
                CommonTree root_1 = (CommonTree)adaptor.nil();
                root_1 = (CommonTree)adaptor.becomeRoot(stream_AT.nextNode(), root_1);

                // org/antlr/grammar/v3/ANTLRv3.g:126:51: ( actionScopeName )?
                if ( stream_actionScopeName.hasNext() ) {
                    adaptor.addChild(root_1, stream_actionScopeName.nextTree());

                }
                stream_actionScopeName.reset();
                adaptor.addChild(root_1, stream_id.nextTree());
                adaptor.addChild(root_1, stream_ACTION.nextNode());

                adaptor.addChild(root_0, root_1);
                }

            }

            retval.tree = root_0;}
            }

            retval.stop = input.LT(-1);

            if ( state.backtracking==0 ) {

            retval.tree = (CommonTree)adaptor.rulePostProcessing(root_0);
            adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
    	retval.tree = (CommonTree)adaptor.errorNode(input, retval.start, input.LT(-1), re);

        }
        finally {
        }
        return retval;
    }
    // $ANTLR end "action"

    public static class actionScopeName_return extends ParserRuleReturnScope {
        CommonTree tree;
        public Object getTree() { return tree; }
    };

    // $ANTLR start "actionScopeName"
    // org/antlr/grammar/v3/ANTLRv3.g:129:1: actionScopeName : ( id | l= 'lexer' -> ID[$l] | p= 'parser' -> ID[$p] );
    public final ANTLRv3Parser.actionScopeName_return actionScopeName() throws RecognitionException {
        ANTLRv3Parser.actionScopeName_return retval = new ANTLRv3Parser.actionScopeName_return();
        retval.start = input.LT(1);

        CommonTree root_0 = null;

        Token l=null;
        Token p=null;
        ANTLRv3Parser.id_return id27 = null;


        CommonTree l_tree=null;
        CommonTree p_tree=null;
        RewriteRuleTokenStream stream_67=new RewriteRuleTokenStream(adaptor,"token 67");
        RewriteRuleTokenStream stream_68=new RewriteRuleTokenStream(adaptor,"token 68");

        try {
            // org/antlr/grammar/v3/ANTLRv3.g:133:2: ( id | l= 'lexer' -> ID[$l] | p= 'parser' -> ID[$p] )
            int alt12=3;
            switch ( input.LA(1) ) {
            case TOKEN_REF:
            case RULE_REF:
                {
                alt12=1;
                }
                break;
            case 67:
                {
                alt12=2;
                }
                break;
            case 68:
                {
                alt12=3;
                }
                break;
            default:
                if (state.backtracking>0) {state.failed=true; return retval;}
                NoViableAltException nvae =
                    new NoViableAltException("", 12, 0, input);

                throw nvae;
            }

            switch (alt12) {
                case 1 :
                    // org/antlr/grammar/v3/ANTLRv3.g:133:4: id
                    {
                    root_0 = (CommonTree)adaptor.nil();

                    pushFollow(FOLLOW_id_in_actionScopeName699);
                    id27=id();

                    state._fsp--;
                    if (state.failed) return retval;
                    if ( state.backtracking==0 ) adaptor.addChild(root_0, id27.getTree());

                    }
                    break;
                case 2 :
                    // org/antlr/grammar/v3/ANTLRv3.g:134:4: l= 'lexer'
                    {
                    l=(Token)match(input,67,FOLLOW_67_in_actionScopeName706); if (state.failed) return retval; 
                    if ( state.backtracking==0 ) stream_67.add(l);



                    // AST REWRITE
                    // elements: 
                    // token labels: 
                    // rule labels: retval
                    // token list labels: 
                    // rule list labels: 
                    // wildcard labels: 
                    if ( state.backtracking==0 ) {
                    retval.tree = root_0;
                    RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                    root_0 = (CommonTree)adaptor.nil();
                    // 134:14: -> ID[$l]
                    {
                        adaptor.addChild(root_0, (CommonTree)adaptor.create(ID, l));

                    }

                    retval.tree = root_0;}
                    }
                    break;
                case 3 :
                    // org/antlr/grammar/v3/ANTLRv3.g:135:9: p= 'parser'
                    {
                    p=(Token)match(input,68,FOLLOW_68_in_actionScopeName723); if (state.failed) return retval; 
                    if ( state.backtracking==0 ) stream_68.add(p);



                    // AST REWRITE
                    // elements: 
                    // token labels: 
                    // rule labels: retval
                    // token list labels: 
                    // rule list labels: 
                    // wildcard labels: 
                    if ( state.backtracking==0 ) {
                    retval.tree = root_0;
                    RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                    root_0 = (CommonTree)adaptor.nil();
                    // 135:20: -> ID[$p]
                    {
                        adaptor.addChild(root_0, (CommonTree)adaptor.create(ID, p));

                    }

                    retval.tree = root_0;}
                    }
                    break;

            }
            retval.stop = input.LT(-1);

            if ( state.backtracking==0 ) {

            retval.tree = (CommonTree)adaptor.rulePostProcessing(root_0);
            adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
    	retval.tree = (CommonTree)adaptor.errorNode(input, retval.start, input.LT(-1), re);

        }
        finally {
        }
        return retval;
    }
    // $ANTLR end "actionScopeName"

    public static class optionsSpec_return extends ParserRuleReturnScope {
        CommonTree tree;
        public Object getTree() { return tree; }
    };

    // $ANTLR start "optionsSpec"
    // org/antlr/grammar/v3/ANTLRv3.g:138:1: optionsSpec : OPTIONS ( option ';' )+ '}' -> ^( OPTIONS ( option )+ ) ;
    public final ANTLRv3Parser.optionsSpec_return optionsSpec() throws RecognitionException {
        ANTLRv3Parser.optionsSpec_return retval = new ANTLRv3Parser.optionsSpec_return();
        retval.start = input.LT(1);

        CommonTree root_0 = null;

        Token OPTIONS28=null;
        Token char_literal30=null;
        Token char_literal31=null;
        ANTLRv3Parser.option_return option29 = null;


        CommonTree OPTIONS28_tree=null;
        CommonTree char_literal30_tree=null;
        CommonTree char_literal31_tree=null;
        RewriteRuleTokenStream stream_71=new RewriteRuleTokenStream(adaptor,"token 71");
        RewriteRuleTokenStream stream_72=new RewriteRuleTokenStream(adaptor,"token 72");
        RewriteRuleTokenStream stream_OPTIONS=new RewriteRuleTokenStream(adaptor,"token OPTIONS");
        RewriteRuleSubtreeStream stream_option=new RewriteRuleSubtreeStream(adaptor,"rule option");
        try {
            // org/antlr/grammar/v3/ANTLRv3.g:139:2: ( OPTIONS ( option ';' )+ '}' -> ^( OPTIONS ( option )+ ) )
            // org/antlr/grammar/v3/ANTLRv3.g:139:4: OPTIONS ( option ';' )+ '}'
            {
            OPTIONS28=(Token)match(input,OPTIONS,FOLLOW_OPTIONS_in_optionsSpec739); if (state.failed) return retval; 
            if ( state.backtracking==0 ) stream_OPTIONS.add(OPTIONS28);

            // org/antlr/grammar/v3/ANTLRv3.g:139:12: ( option ';' )+
            int cnt13=0;
            loop13:
            do {
                int alt13=2;
                int LA13_0 = input.LA(1);

                if ( (LA13_0==TOKEN_REF||LA13_0==RULE_REF) ) {
                    alt13=1;
                }


                switch (alt13) {
            	case 1 :
            	    // org/antlr/grammar/v3/ANTLRv3.g:139:13: option ';'
            	    {
            	    pushFollow(FOLLOW_option_in_optionsSpec742);
            	    option29=option();

            	    state._fsp--;
            	    if (state.failed) return retval;
            	    if ( state.backtracking==0 ) stream_option.add(option29.getTree());
            	    char_literal30=(Token)match(input,71,FOLLOW_71_in_optionsSpec744); if (state.failed) return retval; 
            	    if ( state.backtracking==0 ) stream_71.add(char_literal30);


            	    }
            	    break;

            	default :
            	    if ( cnt13 >= 1 ) break loop13;
            	    if (state.backtracking>0) {state.failed=true; return retval;}
                        EarlyExitException eee =
                            new EarlyExitException(13, input);
                        throw eee;
                }
                cnt13++;
            } while (true);

            char_literal31=(Token)match(input,72,FOLLOW_72_in_optionsSpec748); if (state.failed) return retval; 
            if ( state.backtracking==0 ) stream_72.add(char_literal31);



            // AST REWRITE
            // elements: option, OPTIONS
            // token labels: 
            // rule labels: retval
            // token list labels: 
            // rule list labels: 
            // wildcard labels: 
            if ( state.backtracking==0 ) {
            retval.tree = root_0;
            RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

            root_0 = (CommonTree)adaptor.nil();
            // 139:30: -> ^( OPTIONS ( option )+ )
            {
                // org/antlr/grammar/v3/ANTLRv3.g:139:33: ^( OPTIONS ( option )+ )
                {
                CommonTree root_1 = (CommonTree)adaptor.nil();
                root_1 = (CommonTree)adaptor.becomeRoot(stream_OPTIONS.nextNode(), root_1);

                if ( !(stream_option.hasNext()) ) {
                    throw new RewriteEarlyExitException();
                }
                while ( stream_option.hasNext() ) {
                    adaptor.addChild(root_1, stream_option.nextTree());

                }
                stream_option.reset();

                adaptor.addChild(root_0, root_1);
                }

            }

            retval.tree = root_0;}
            }

            retval.stop = input.LT(-1);

            if ( state.backtracking==0 ) {

            retval.tree = (CommonTree)adaptor.rulePostProcessing(root_0);
            adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
    	retval.tree = (CommonTree)adaptor.errorNode(input, retval.start, input.LT(-1), re);

        }
        finally {
        }
        return retval;
    }
    // $ANTLR end "optionsSpec"

    public static class option_return extends ParserRuleReturnScope {
        CommonTree tree;
        public Object getTree() { return tree; }
    };

    // $ANTLR start "option"
    // org/antlr/grammar/v3/ANTLRv3.g:142:1: option : id '=' optionValue -> ^( '=' id optionValue ) ;
    public final ANTLRv3Parser.option_return option() throws RecognitionException {
        ANTLRv3Parser.option_return retval = new ANTLRv3Parser.option_return();
        retval.start = input.LT(1);

        CommonTree root_0 = null;

        Token char_literal33=null;
        ANTLRv3Parser.id_return id32 = null;

        ANTLRv3Parser.optionValue_return optionValue34 = null;


        CommonTree char_literal33_tree=null;
        RewriteRuleTokenStream stream_LABEL_ASSIGN=new RewriteRuleTokenStream(adaptor,"token LABEL_ASSIGN");
        RewriteRuleSubtreeStream stream_id=new RewriteRuleSubtreeStream(adaptor,"rule id");
        RewriteRuleSubtreeStream stream_optionValue=new RewriteRuleSubtreeStream(adaptor,"rule optionValue");
        try {
            // org/antlr/grammar/v3/ANTLRv3.g:143:5: ( id '=' optionValue -> ^( '=' id optionValue ) )
            // org/antlr/grammar/v3/ANTLRv3.g:143:9: id '=' optionValue
            {
            pushFollow(FOLLOW_id_in_option773);
            id32=id();

            state._fsp--;
            if (state.failed) return retval;
            if ( state.backtracking==0 ) stream_id.add(id32.getTree());
            char_literal33=(Token)match(input,LABEL_ASSIGN,FOLLOW_LABEL_ASSIGN_in_option775); if (state.failed) return retval; 
            if ( state.backtracking==0 ) stream_LABEL_ASSIGN.add(char_literal33);

            pushFollow(FOLLOW_optionValue_in_option777);
            optionValue34=optionValue();

            state._fsp--;
            if (state.failed) return retval;
            if ( state.backtracking==0 ) stream_optionValue.add(optionValue34.getTree());


            // AST REWRITE
            // elements: id, optionValue, LABEL_ASSIGN
            // token labels: 
            // rule labels: retval
            // token list labels: 
            // rule list labels: 
            // wildcard labels: 
            if ( state.backtracking==0 ) {
            retval.tree = root_0;
            RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

            root_0 = (CommonTree)adaptor.nil();
            // 143:28: -> ^( '=' id optionValue )
            {
                // org/antlr/grammar/v3/ANTLRv3.g:143:31: ^( '=' id optionValue )
                {
                CommonTree root_1 = (CommonTree)adaptor.nil();
                root_1 = (CommonTree)adaptor.becomeRoot(stream_LABEL_ASSIGN.nextNode(), root_1);

                adaptor.addChild(root_1, stream_id.nextTree());
                adaptor.addChild(root_1, stream_optionValue.nextTree());

                adaptor.addChild(root_0, root_1);
                }

            }

            retval.tree = root_0;}
            }

            retval.stop = input.LT(-1);

            if ( state.backtracking==0 ) {

            retval.tree = (CommonTree)adaptor.rulePostProcessing(root_0);
            adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
    	retval.tree = (CommonTree)adaptor.errorNode(input, retval.start, input.LT(-1), re);

        }
        finally {
        }
        return retval;
    }
    // $ANTLR end "option"

    public static class optionValue_return extends ParserRuleReturnScope {
        CommonTree tree;
        public Object getTree() { return tree; }
    };

    // $ANTLR start "optionValue"
    // org/antlr/grammar/v3/ANTLRv3.g:146:1: optionValue : ( qid | STRING_LITERAL | CHAR_LITERAL | INT | s= '*' -> STRING_LITERAL[$s] );
    public final ANTLRv3Parser.optionValue_return optionValue() throws RecognitionException {
        ANTLRv3Parser.optionValue_return retval = new ANTLRv3Parser.optionValue_return();
        retval.start = input.LT(1);

        CommonTree root_0 = null;

        Token s=null;
        Token STRING_LITERAL36=null;
        Token CHAR_LITERAL37=null;
        Token INT38=null;
        ANTLRv3Parser.qid_return qid35 = null;


        CommonTree s_tree=null;
        CommonTree STRING_LITERAL36_tree=null;
        CommonTree CHAR_LITERAL37_tree=null;
        CommonTree INT38_tree=null;
        RewriteRuleTokenStream stream_74=new RewriteRuleTokenStream(adaptor,"token 74");

        try {
            // org/antlr/grammar/v3/ANTLRv3.g:147:5: ( qid | STRING_LITERAL | CHAR_LITERAL | INT | s= '*' -> STRING_LITERAL[$s] )
            int alt14=5;
            switch ( input.LA(1) ) {
            case TOKEN_REF:
            case RULE_REF:
                {
                alt14=1;
                }
                break;
            case STRING_LITERAL:
                {
                alt14=2;
                }
                break;
            case CHAR_LITERAL:
                {
                alt14=3;
                }
                break;
            case INT:
                {
                alt14=4;
                }
                break;
            case 74:
                {
                alt14=5;
                }
                break;
            default:
                if (state.backtracking>0) {state.failed=true; return retval;}
                NoViableAltException nvae =
                    new NoViableAltException("", 14, 0, input);

                throw nvae;
            }

            switch (alt14) {
                case 1 :
                    // org/antlr/grammar/v3/ANTLRv3.g:147:9: qid
                    {
                    root_0 = (CommonTree)adaptor.nil();

                    pushFollow(FOLLOW_qid_in_optionValue806);
                    qid35=qid();

                    state._fsp--;
                    if (state.failed) return retval;
                    if ( state.backtracking==0 ) adaptor.addChild(root_0, qid35.getTree());

                    }
                    break;
                case 2 :
                    // org/antlr/grammar/v3/ANTLRv3.g:148:9: STRING_LITERAL
                    {
                    root_0 = (CommonTree)adaptor.nil();

                    STRING_LITERAL36=(Token)match(input,STRING_LITERAL,FOLLOW_STRING_LITERAL_in_optionValue816); if (state.failed) return retval;
                    if ( state.backtracking==0 ) {
                    STRING_LITERAL36_tree = (CommonTree)adaptor.create(STRING_LITERAL36);
                    adaptor.addChild(root_0, STRING_LITERAL36_tree);
                    }

                    }
                    break;
                case 3 :
                    // org/antlr/grammar/v3/ANTLRv3.g:149:9: CHAR_LITERAL
                    {
                    root_0 = (CommonTree)adaptor.nil();

                    CHAR_LITERAL37=(Token)match(input,CHAR_LITERAL,FOLLOW_CHAR_LITERAL_in_optionValue826); if (state.failed) return retval;
                    if ( state.backtracking==0 ) {
                    CHAR_LITERAL37_tree = (CommonTree)adaptor.create(CHAR_LITERAL37);
                    adaptor.addChild(root_0, CHAR_LITERAL37_tree);
                    }

                    }
                    break;
                case 4 :
                    // org/antlr/grammar/v3/ANTLRv3.g:150:9: INT
                    {
                    root_0 = (CommonTree)adaptor.nil();

                    INT38=(Token)match(input,INT,FOLLOW_INT_in_optionValue836); if (state.failed) return retval;
                    if ( state.backtracking==0 ) {
                    INT38_tree = (CommonTree)adaptor.create(INT38);
                    adaptor.addChild(root_0, INT38_tree);
                    }

                    }
                    break;
                case 5 :
                    // org/antlr/grammar/v3/ANTLRv3.g:151:7: s= '*'
                    {
                    s=(Token)match(input,74,FOLLOW_74_in_optionValue846); if (state.failed) return retval; 
                    if ( state.backtracking==0 ) stream_74.add(s);



                    // AST REWRITE
                    // elements: 
                    // token labels: 
                    // rule labels: retval
                    // token list labels: 
                    // rule list labels: 
                    // wildcard labels: 
                    if ( state.backtracking==0 ) {
                    retval.tree = root_0;
                    RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                    root_0 = (CommonTree)adaptor.nil();
                    // 151:13: -> STRING_LITERAL[$s]
                    {
                        adaptor.addChild(root_0, (CommonTree)adaptor.create(STRING_LITERAL, s));

                    }

                    retval.tree = root_0;}
                    }
                    break;

            }
            retval.stop = input.LT(-1);

            if ( state.backtracking==0 ) {

            retval.tree = (CommonTree)adaptor.rulePostProcessing(root_0);
            adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
    	retval.tree = (CommonTree)adaptor.errorNode(input, retval.start, input.LT(-1), re);

        }
        finally {
        }
        return retval;
    }
    // $ANTLR end "optionValue"

    protected static class rule_scope {
        String name;
    }
    protected Stack rule_stack = new Stack();

    public static class rule_return extends ParserRuleReturnScope {
        CommonTree tree;
        public Object getTree() { return tree; }
    };

    // $ANTLR start "rule"
    // org/antlr/grammar/v3/ANTLRv3.g:154:1: rule : ( DOC_COMMENT )? (modifier= ( 'protected' | 'public' | 'private' | 'fragment' ) )? id ( '!' )? (arg= ARG_ACTION )? ( 'returns' rt= ARG_ACTION )? ( throwsSpec )? ( optionsSpec )? ( ruleScopeSpec )? ( ruleAction )* ':' altList ';' ( exceptionGroup )? -> ^( RULE id ( ^( ARG[$arg] $arg) )? ( ^( 'returns' $rt) )? ( throwsSpec )? ( optionsSpec )? ( ruleScopeSpec )? ( ruleAction )* altList ( exceptionGroup )? EOR[\"EOR\"] ) ;
    public final ANTLRv3Parser.rule_return rule() throws RecognitionException {
        rule_stack.push(new rule_scope());
        ANTLRv3Parser.rule_return retval = new ANTLRv3Parser.rule_return();
        retval.start = input.LT(1);

        CommonTree root_0 = null;

        Token modifier=null;
        Token arg=null;
        Token rt=null;
        Token DOC_COMMENT39=null;
        Token string_literal40=null;
        Token string_literal41=null;
        Token string_literal42=null;
        Token string_literal43=null;
        Token char_literal45=null;
        Token string_literal46=null;
        Token char_literal51=null;
        Token char_literal53=null;
        ANTLRv3Parser.id_return id44 = null;

        ANTLRv3Parser.throwsSpec_return throwsSpec47 = null;

        ANTLRv3Parser.optionsSpec_return optionsSpec48 = null;

        ANTLRv3Parser.ruleScopeSpec_return ruleScopeSpec49 = null;

        ANTLRv3Parser.ruleAction_return ruleAction50 = null;

        ANTLRv3Parser.altList_return altList52 = null;

        ANTLRv3Parser.exceptionGroup_return exceptionGroup54 = null;


        CommonTree modifier_tree=null;
        CommonTree arg_tree=null;
        CommonTree rt_tree=null;
        CommonTree DOC_COMMENT39_tree=null;
        CommonTree string_literal40_tree=null;
        CommonTree string_literal41_tree=null;
        CommonTree string_literal42_tree=null;
        CommonTree string_literal43_tree=null;
        CommonTree char_literal45_tree=null;
        CommonTree string_literal46_tree=null;
        CommonTree char_literal51_tree=null;
        CommonTree char_literal53_tree=null;
        RewriteRuleTokenStream stream_DOC_COMMENT=new RewriteRuleTokenStream(adaptor,"token DOC_COMMENT");
        RewriteRuleTokenStream stream_78=new RewriteRuleTokenStream(adaptor,"token 78");
        RewriteRuleTokenStream stream_RET=new RewriteRuleTokenStream(adaptor,"token RET");
        RewriteRuleTokenStream stream_77=new RewriteRuleTokenStream(adaptor,"token 77");
        RewriteRuleTokenStream stream_BANG=new RewriteRuleTokenStream(adaptor,"token BANG");
        RewriteRuleTokenStream stream_71=new RewriteRuleTokenStream(adaptor,"token 71");
        RewriteRuleTokenStream stream_FRAGMENT=new RewriteRuleTokenStream(adaptor,"token FRAGMENT");
        RewriteRuleTokenStream stream_75=new RewriteRuleTokenStream(adaptor,"token 75");
        RewriteRuleTokenStream stream_ARG_ACTION=new RewriteRuleTokenStream(adaptor,"token ARG_ACTION");
        RewriteRuleTokenStream stream_76=new RewriteRuleTokenStream(adaptor,"token 76");
        RewriteRuleSubtreeStream stream_id=new RewriteRuleSubtreeStream(adaptor,"rule id");
        RewriteRuleSubtreeStream stream_exceptionGroup=new RewriteRuleSubtreeStream(adaptor,"rule exceptionGroup");
        RewriteRuleSubtreeStream stream_throwsSpec=new RewriteRuleSubtreeStream(adaptor,"rule throwsSpec");
        RewriteRuleSubtreeStream stream_ruleScopeSpec=new RewriteRuleSubtreeStream(adaptor,"rule ruleScopeSpec");
        RewriteRuleSubtreeStream stream_optionsSpec=new RewriteRuleSubtreeStream(adaptor,"rule optionsSpec");
        RewriteRuleSubtreeStream stream_altList=new RewriteRuleSubtreeStream(adaptor,"rule altList");
        RewriteRuleSubtreeStream stream_ruleAction=new RewriteRuleSubtreeStream(adaptor,"rule ruleAction");
        try {
            // org/antlr/grammar/v3/ANTLRv3.g:158:2: ( ( DOC_COMMENT )? (modifier= ( 'protected' | 'public' | 'private' | 'fragment' ) )? id ( '!' )? (arg= ARG_ACTION )? ( 'returns' rt= ARG_ACTION )? ( throwsSpec )? ( optionsSpec )? ( ruleScopeSpec )? ( ruleAction )* ':' altList ';' ( exceptionGroup )? -> ^( RULE id ( ^( ARG[$arg] $arg) )? ( ^( 'returns' $rt) )? ( throwsSpec )? ( optionsSpec )? ( ruleScopeSpec )? ( ruleAction )* altList ( exceptionGroup )? EOR[\"EOR\"] ) )
            // org/antlr/grammar/v3/ANTLRv3.g:158:4: ( DOC_COMMENT )? (modifier= ( 'protected' | 'public' | 'private' | 'fragment' ) )? id ( '!' )? (arg= ARG_ACTION )? ( 'returns' rt= ARG_ACTION )? ( throwsSpec )? ( optionsSpec )? ( ruleScopeSpec )? ( ruleAction )* ':' altList ';' ( exceptionGroup )?
            {
            // org/antlr/grammar/v3/ANTLRv3.g:158:4: ( DOC_COMMENT )?
            int alt15=2;
            int LA15_0 = input.LA(1);

            if ( (LA15_0==DOC_COMMENT) ) {
                alt15=1;
            }
            switch (alt15) {
                case 1 :
                    // org/antlr/grammar/v3/ANTLRv3.g:158:4: DOC_COMMENT
                    {
                    DOC_COMMENT39=(Token)match(input,DOC_COMMENT,FOLLOW_DOC_COMMENT_in_rule871); if (state.failed) return retval; 
                    if ( state.backtracking==0 ) stream_DOC_COMMENT.add(DOC_COMMENT39);


                    }
                    break;

            }

            // org/antlr/grammar/v3/ANTLRv3.g:159:3: (modifier= ( 'protected' | 'public' | 'private' | 'fragment' ) )?
            int alt17=2;
            int LA17_0 = input.LA(1);

            if ( (LA17_0==FRAGMENT||(LA17_0>=75 && LA17_0<=77)) ) {
                alt17=1;
            }
            switch (alt17) {
                case 1 :
                    // org/antlr/grammar/v3/ANTLRv3.g:159:5: modifier= ( 'protected' | 'public' | 'private' | 'fragment' )
                    {
                    // org/antlr/grammar/v3/ANTLRv3.g:159:14: ( 'protected' | 'public' | 'private' | 'fragment' )
                    int alt16=4;
                    switch ( input.LA(1) ) {
                    case 75:
                        {
                        alt16=1;
                        }
                        break;
                    case 76:
                        {
                        alt16=2;
                        }
                        break;
                    case 77:
                        {
                        alt16=3;
                        }
                        break;
                    case FRAGMENT:
                        {
                        alt16=4;
                        }
                        break;
                    default:
                        if (state.backtracking>0) {state.failed=true; return retval;}
                        NoViableAltException nvae =
                            new NoViableAltException("", 16, 0, input);

                        throw nvae;
                    }

                    switch (alt16) {
                        case 1 :
                            // org/antlr/grammar/v3/ANTLRv3.g:159:15: 'protected'
                            {
                            string_literal40=(Token)match(input,75,FOLLOW_75_in_rule881); if (state.failed) return retval; 
                            if ( state.backtracking==0 ) stream_75.add(string_literal40);


                            }
                            break;
                        case 2 :
                            // org/antlr/grammar/v3/ANTLRv3.g:159:27: 'public'
                            {
                            string_literal41=(Token)match(input,76,FOLLOW_76_in_rule883); if (state.failed) return retval; 
                            if ( state.backtracking==0 ) stream_76.add(string_literal41);


                            }
                            break;
                        case 3 :
                            // org/antlr/grammar/v3/ANTLRv3.g:159:36: 'private'
                            {
                            string_literal42=(Token)match(input,77,FOLLOW_77_in_rule885); if (state.failed) return retval; 
                            if ( state.backtracking==0 ) stream_77.add(string_literal42);


                            }
                            break;
                        case 4 :
                            // org/antlr/grammar/v3/ANTLRv3.g:159:46: 'fragment'
                            {
                            string_literal43=(Token)match(input,FRAGMENT,FOLLOW_FRAGMENT_in_rule887); if (state.failed) return retval; 
                            if ( state.backtracking==0 ) stream_FRAGMENT.add(string_literal43);


                            }
                            break;

                    }


                    }
                    break;

            }

            pushFollow(FOLLOW_id_in_rule895);
            id44=id();

            state._fsp--;
            if (state.failed) return retval;
            if ( state.backtracking==0 ) stream_id.add(id44.getTree());
            if ( state.backtracking==0 ) {
              ((rule_scope)rule_stack.peek()).name = (id44!=null?input.toString(id44.start,id44.stop):null);
            }
            // org/antlr/grammar/v3/ANTLRv3.g:161:3: ( '!' )?
            int alt18=2;
            int LA18_0 = input.LA(1);

            if ( (LA18_0==BANG) ) {
                alt18=1;
            }
            switch (alt18) {
                case 1 :
                    // org/antlr/grammar/v3/ANTLRv3.g:161:3: '!'
                    {
                    char_literal45=(Token)match(input,BANG,FOLLOW_BANG_in_rule901); if (state.failed) return retval; 
                    if ( state.backtracking==0 ) stream_BANG.add(char_literal45);


                    }
                    break;

            }

            // org/antlr/grammar/v3/ANTLRv3.g:162:3: (arg= ARG_ACTION )?
            int alt19=2;
            int LA19_0 = input.LA(1);

            if ( (LA19_0==ARG_ACTION) ) {
                alt19=1;
            }
            switch (alt19) {
                case 1 :
                    // org/antlr/grammar/v3/ANTLRv3.g:162:5: arg= ARG_ACTION
                    {
                    arg=(Token)match(input,ARG_ACTION,FOLLOW_ARG_ACTION_in_rule910); if (state.failed) return retval; 
                    if ( state.backtracking==0 ) stream_ARG_ACTION.add(arg);


                    }
                    break;

            }

            // org/antlr/grammar/v3/ANTLRv3.g:163:3: ( 'returns' rt= ARG_ACTION )?
            int alt20=2;
            int LA20_0 = input.LA(1);

            if ( (LA20_0==RET) ) {
                alt20=1;
            }
            switch (alt20) {
                case 1 :
                    // org/antlr/grammar/v3/ANTLRv3.g:163:5: 'returns' rt= ARG_ACTION
                    {
                    string_literal46=(Token)match(input,RET,FOLLOW_RET_in_rule919); if (state.failed) return retval; 
                    if ( state.backtracking==0 ) stream_RET.add(string_literal46);

                    rt=(Token)match(input,ARG_ACTION,FOLLOW_ARG_ACTION_in_rule923); if (state.failed) return retval; 
                    if ( state.backtracking==0 ) stream_ARG_ACTION.add(rt);


                    }
                    break;

            }

            // org/antlr/grammar/v3/ANTLRv3.g:164:3: ( throwsSpec )?
            int alt21=2;
            int LA21_0 = input.LA(1);

            if ( (LA21_0==79) ) {
                alt21=1;
            }
            switch (alt21) {
                case 1 :
                    // org/antlr/grammar/v3/ANTLRv3.g:164:3: throwsSpec
                    {
                    pushFollow(FOLLOW_throwsSpec_in_rule931);
                    throwsSpec47=throwsSpec();

                    state._fsp--;
                    if (state.failed) return retval;
                    if ( state.backtracking==0 ) stream_throwsSpec.add(throwsSpec47.getTree());

                    }
                    break;

            }

            // org/antlr/grammar/v3/ANTLRv3.g:164:15: ( optionsSpec )?
            int alt22=2;
            int LA22_0 = input.LA(1);

            if ( (LA22_0==OPTIONS) ) {
                alt22=1;
            }
            switch (alt22) {
                case 1 :
                    // org/antlr/grammar/v3/ANTLRv3.g:164:15: optionsSpec
                    {
                    pushFollow(FOLLOW_optionsSpec_in_rule934);
                    optionsSpec48=optionsSpec();

                    state._fsp--;
                    if (state.failed) return retval;
                    if ( state.backtracking==0 ) stream_optionsSpec.add(optionsSpec48.getTree());

                    }
                    break;

            }

            // org/antlr/grammar/v3/ANTLRv3.g:164:28: ( ruleScopeSpec )?
            int alt23=2;
            int LA23_0 = input.LA(1);

            if ( (LA23_0==SCOPE) ) {
                alt23=1;
            }
            switch (alt23) {
                case 1 :
                    // org/antlr/grammar/v3/ANTLRv3.g:164:28: ruleScopeSpec
                    {
                    pushFollow(FOLLOW_ruleScopeSpec_in_rule937);
                    ruleScopeSpec49=ruleScopeSpec();

                    state._fsp--;
                    if (state.failed) return retval;
                    if ( state.backtracking==0 ) stream_ruleScopeSpec.add(ruleScopeSpec49.getTree());

                    }
                    break;

            }

            // org/antlr/grammar/v3/ANTLRv3.g:164:43: ( ruleAction )*
            loop24:
            do {
                int alt24=2;
                int LA24_0 = input.LA(1);

                if ( (LA24_0==AT) ) {
                    alt24=1;
                }


                switch (alt24) {
            	case 1 :
            	    // org/antlr/grammar/v3/ANTLRv3.g:164:43: ruleAction
            	    {
            	    pushFollow(FOLLOW_ruleAction_in_rule940);
            	    ruleAction50=ruleAction();

            	    state._fsp--;
            	    if (state.failed) return retval;
            	    if ( state.backtracking==0 ) stream_ruleAction.add(ruleAction50.getTree());

            	    }
            	    break;

            	default :
            	    break loop24;
                }
            } while (true);

            char_literal51=(Token)match(input,78,FOLLOW_78_in_rule945); if (state.failed) return retval; 
            if ( state.backtracking==0 ) stream_78.add(char_literal51);

            pushFollow(FOLLOW_altList_in_rule947);
            altList52=altList();

            state._fsp--;
            if (state.failed) return retval;
            if ( state.backtracking==0 ) stream_altList.add(altList52.getTree());
            char_literal53=(Token)match(input,71,FOLLOW_71_in_rule949); if (state.failed) return retval; 
            if ( state.backtracking==0 ) stream_71.add(char_literal53);

            // org/antlr/grammar/v3/ANTLRv3.g:166:3: ( exceptionGroup )?
            int alt25=2;
            int LA25_0 = input.LA(1);

            if ( ((LA25_0>=84 && LA25_0<=85)) ) {
                alt25=1;
            }
            switch (alt25) {
                case 1 :
                    // org/antlr/grammar/v3/ANTLRv3.g:166:3: exceptionGroup
                    {
                    pushFollow(FOLLOW_exceptionGroup_in_rule953);
                    exceptionGroup54=exceptionGroup();

                    state._fsp--;
                    if (state.failed) return retval;
                    if ( state.backtracking==0 ) stream_exceptionGroup.add(exceptionGroup54.getTree());

                    }
                    break;

            }



            // AST REWRITE
            // elements: altList, arg, exceptionGroup, ruleScopeSpec, ruleAction, RET, rt, optionsSpec, throwsSpec, id
            // token labels: arg, rt
            // rule labels: retval
            // token list labels: 
            // rule list labels: 
            // wildcard labels: 
            if ( state.backtracking==0 ) {
            retval.tree = root_0;
            RewriteRuleTokenStream stream_arg=new RewriteRuleTokenStream(adaptor,"token arg",arg);
            RewriteRuleTokenStream stream_rt=new RewriteRuleTokenStream(adaptor,"token rt",rt);
            RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

            root_0 = (CommonTree)adaptor.nil();
            // 167:6: -> ^( RULE id ( ^( ARG[$arg] $arg) )? ( ^( 'returns' $rt) )? ( throwsSpec )? ( optionsSpec )? ( ruleScopeSpec )? ( ruleAction )* altList ( exceptionGroup )? EOR[\"EOR\"] )
            {
                // org/antlr/grammar/v3/ANTLRv3.g:167:9: ^( RULE id ( ^( ARG[$arg] $arg) )? ( ^( 'returns' $rt) )? ( throwsSpec )? ( optionsSpec )? ( ruleScopeSpec )? ( ruleAction )* altList ( exceptionGroup )? EOR[\"EOR\"] )
                {
                CommonTree root_1 = (CommonTree)adaptor.nil();
                root_1 = (CommonTree)adaptor.becomeRoot((CommonTree)adaptor.create(RULE, "RULE"), root_1);

                adaptor.addChild(root_1, stream_id.nextTree());
                adaptor.addChild(root_1, modifier!=null?adaptor.create(modifier):null);
                // org/antlr/grammar/v3/ANTLRv3.g:167:67: ( ^( ARG[$arg] $arg) )?
                if ( stream_arg.hasNext() ) {
                    // org/antlr/grammar/v3/ANTLRv3.g:167:67: ^( ARG[$arg] $arg)
                    {
                    CommonTree root_2 = (CommonTree)adaptor.nil();
                    root_2 = (CommonTree)adaptor.becomeRoot((CommonTree)adaptor.create(ARG, arg), root_2);

                    adaptor.addChild(root_2, stream_arg.nextNode());

                    adaptor.addChild(root_1, root_2);
                    }

                }
                stream_arg.reset();
                // org/antlr/grammar/v3/ANTLRv3.g:167:86: ( ^( 'returns' $rt) )?
                if ( stream_RET.hasNext()||stream_rt.hasNext() ) {
                    // org/antlr/grammar/v3/ANTLRv3.g:167:86: ^( 'returns' $rt)
                    {
                    CommonTree root_2 = (CommonTree)adaptor.nil();
                    root_2 = (CommonTree)adaptor.becomeRoot(stream_RET.nextNode(), root_2);

                    adaptor.addChild(root_2, stream_rt.nextNode());

                    adaptor.addChild(root_1, root_2);
                    }

                }
                stream_RET.reset();
                stream_rt.reset();
                // org/antlr/grammar/v3/ANTLRv3.g:168:9: ( throwsSpec )?
                if ( stream_throwsSpec.hasNext() ) {
                    adaptor.addChild(root_1, stream_throwsSpec.nextTree());

                }
                stream_throwsSpec.reset();
                // org/antlr/grammar/v3/ANTLRv3.g:168:21: ( optionsSpec )?
                if ( stream_optionsSpec.hasNext() ) {
                    adaptor.addChild(root_1, stream_optionsSpec.nextTree());

                }
                stream_optionsSpec.reset();
                // org/antlr/grammar/v3/ANTLRv3.g:168:34: ( ruleScopeSpec )?
                if ( stream_ruleScopeSpec.hasNext() ) {
                    adaptor.addChild(root_1, stream_ruleScopeSpec.nextTree());

                }
                stream_ruleScopeSpec.reset();
                // org/antlr/grammar/v3/ANTLRv3.g:168:49: ( ruleAction )*
                while ( stream_ruleAction.hasNext() ) {
                    adaptor.addChild(root_1, stream_ruleAction.nextTree());

                }
                stream_ruleAction.reset();
                adaptor.addChild(root_1, stream_altList.nextTree());
                // org/antlr/grammar/v3/ANTLRv3.g:170:9: ( exceptionGroup )?
                if ( stream_exceptionGroup.hasNext() ) {
                    adaptor.addChild(root_1, stream_exceptionGroup.nextTree());

                }
                stream_exceptionGroup.reset();
                adaptor.addChild(root_1, (CommonTree)adaptor.create(EOR, "EOR"));

                adaptor.addChild(root_0, root_1);
                }

            }

            retval.tree = root_0;}
            }

            retval.stop = input.LT(-1);

            if ( state.backtracking==0 ) {

            retval.tree = (CommonTree)adaptor.rulePostProcessing(root_0);
            adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
    	retval.tree = (CommonTree)adaptor.errorNode(input, retval.start, input.LT(-1), re);

        }
        finally {
            rule_stack.pop();
        }
        return retval;
    }
    // $ANTLR end "rule"

    public static class ruleAction_return extends ParserRuleReturnScope {
        CommonTree tree;
        public Object getTree() { return tree; }
    };

    // $ANTLR start "ruleAction"
    // org/antlr/grammar/v3/ANTLRv3.g:175:1: ruleAction : '@' id ACTION -> ^( '@' id ACTION ) ;
    public final ANTLRv3Parser.ruleAction_return ruleAction() throws RecognitionException {
        ANTLRv3Parser.ruleAction_return retval = new ANTLRv3Parser.ruleAction_return();
        retval.start = input.LT(1);

        CommonTree root_0 = null;

        Token char_literal55=null;
        Token ACTION57=null;
        ANTLRv3Parser.id_return id56 = null;


        CommonTree char_literal55_tree=null;
        CommonTree ACTION57_tree=null;
        RewriteRuleTokenStream stream_AT=new RewriteRuleTokenStream(adaptor,"token AT");
        RewriteRuleTokenStream stream_ACTION=new RewriteRuleTokenStream(adaptor,"token ACTION");
        RewriteRuleSubtreeStream stream_id=new RewriteRuleSubtreeStream(adaptor,"rule id");
        try {
            // org/antlr/grammar/v3/ANTLRv3.g:177:2: ( '@' id ACTION -> ^( '@' id ACTION ) )
            // org/antlr/grammar/v3/ANTLRv3.g:177:4: '@' id ACTION
            {
            char_literal55=(Token)match(input,AT,FOLLOW_AT_in_ruleAction1059); if (state.failed) return retval; 
            if ( state.backtracking==0 ) stream_AT.add(char_literal55);

            pushFollow(FOLLOW_id_in_ruleAction1061);
            id56=id();

            state._fsp--;
            if (state.failed) return retval;
            if ( state.backtracking==0 ) stream_id.add(id56.getTree());
            ACTION57=(Token)match(input,ACTION,FOLLOW_ACTION_in_ruleAction1063); if (state.failed) return retval; 
            if ( state.backtracking==0 ) stream_ACTION.add(ACTION57);



            // AST REWRITE
            // elements: ACTION, AT, id
            // token labels: 
            // rule labels: retval
            // token list labels: 
            // rule list labels: 
            // wildcard labels: 
            if ( state.backtracking==0 ) {
            retval.tree = root_0;
            RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

            root_0 = (CommonTree)adaptor.nil();
            // 177:18: -> ^( '@' id ACTION )
            {
                // org/antlr/grammar/v3/ANTLRv3.g:177:21: ^( '@' id ACTION )
                {
                CommonTree root_1 = (CommonTree)adaptor.nil();
                root_1 = (CommonTree)adaptor.becomeRoot(stream_AT.nextNode(), root_1);

                adaptor.addChild(root_1, stream_id.nextTree());
                adaptor.addChild(root_1, stream_ACTION.nextNode());

                adaptor.addChild(root_0, root_1);
                }

            }

            retval.tree = root_0;}
            }

            retval.stop = input.LT(-1);

            if ( state.backtracking==0 ) {

            retval.tree = (CommonTree)adaptor.rulePostProcessing(root_0);
            adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
    	retval.tree = (CommonTree)adaptor.errorNode(input, retval.start, input.LT(-1), re);

        }
        finally {
        }
        return retval;
    }
    // $ANTLR end "ruleAction"

    public static class throwsSpec_return extends ParserRuleReturnScope {
        CommonTree tree;
        public Object getTree() { return tree; }
    };

    // $ANTLR start "throwsSpec"
    // org/antlr/grammar/v3/ANTLRv3.g:180:1: throwsSpec : 'throws' id ( ',' id )* -> ^( 'throws' ( id )+ ) ;
    public final ANTLRv3Parser.throwsSpec_return throwsSpec() throws RecognitionException {
        ANTLRv3Parser.throwsSpec_return retval = new ANTLRv3Parser.throwsSpec_return();
        retval.start = input.LT(1);

        CommonTree root_0 = null;

        Token string_literal58=null;
        Token char_literal60=null;
        ANTLRv3Parser.id_return id59 = null;

        ANTLRv3Parser.id_return id61 = null;


        CommonTree string_literal58_tree=null;
        CommonTree char_literal60_tree=null;
        RewriteRuleTokenStream stream_79=new RewriteRuleTokenStream(adaptor,"token 79");
        RewriteRuleTokenStream stream_80=new RewriteRuleTokenStream(adaptor,"token 80");
        RewriteRuleSubtreeStream stream_id=new RewriteRuleSubtreeStream(adaptor,"rule id");
        try {
            // org/antlr/grammar/v3/ANTLRv3.g:181:2: ( 'throws' id ( ',' id )* -> ^( 'throws' ( id )+ ) )
            // org/antlr/grammar/v3/ANTLRv3.g:181:4: 'throws' id ( ',' id )*
            {
            string_literal58=(Token)match(input,79,FOLLOW_79_in_throwsSpec1084); if (state.failed) return retval; 
            if ( state.backtracking==0 ) stream_79.add(string_literal58);

            pushFollow(FOLLOW_id_in_throwsSpec1086);
            id59=id();

            state._fsp--;
            if (state.failed) return retval;
            if ( state.backtracking==0 ) stream_id.add(id59.getTree());
            // org/antlr/grammar/v3/ANTLRv3.g:181:16: ( ',' id )*
            loop26:
            do {
                int alt26=2;
                int LA26_0 = input.LA(1);

                if ( (LA26_0==80) ) {
                    alt26=1;
                }


                switch (alt26) {
            	case 1 :
            	    // org/antlr/grammar/v3/ANTLRv3.g:181:18: ',' id
            	    {
            	    char_literal60=(Token)match(input,80,FOLLOW_80_in_throwsSpec1090); if (state.failed) return retval; 
            	    if ( state.backtracking==0 ) stream_80.add(char_literal60);

            	    pushFollow(FOLLOW_id_in_throwsSpec1092);
            	    id61=id();

            	    state._fsp--;
            	    if (state.failed) return retval;
            	    if ( state.backtracking==0 ) stream_id.add(id61.getTree());

            	    }
            	    break;

            	default :
            	    break loop26;
                }
            } while (true);



            // AST REWRITE
            // elements: id, 79
            // token labels: 
            // rule labels: retval
            // token list labels: 
            // rule list labels: 
            // wildcard labels: 
            if ( state.backtracking==0 ) {
            retval.tree = root_0;
            RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

            root_0 = (CommonTree)adaptor.nil();
            // 181:28: -> ^( 'throws' ( id )+ )
            {
                // org/antlr/grammar/v3/ANTLRv3.g:181:31: ^( 'throws' ( id )+ )
                {
                CommonTree root_1 = (CommonTree)adaptor.nil();
                root_1 = (CommonTree)adaptor.becomeRoot(stream_79.nextNode(), root_1);

                if ( !(stream_id.hasNext()) ) {
                    throw new RewriteEarlyExitException();
                }
                while ( stream_id.hasNext() ) {
                    adaptor.addChild(root_1, stream_id.nextTree());

                }
                stream_id.reset();

                adaptor.addChild(root_0, root_1);
                }

            }

            retval.tree = root_0;}
            }

            retval.stop = input.LT(-1);

            if ( state.backtracking==0 ) {

            retval.tree = (CommonTree)adaptor.rulePostProcessing(root_0);
            adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
    	retval.tree = (CommonTree)adaptor.errorNode(input, retval.start, input.LT(-1), re);

        }
        finally {
        }
        return retval;
    }
    // $ANTLR end "throwsSpec"

    public static class ruleScopeSpec_return extends ParserRuleReturnScope {
        CommonTree tree;
        public Object getTree() { return tree; }
    };

    // $ANTLR start "ruleScopeSpec"
    // org/antlr/grammar/v3/ANTLRv3.g:184:1: ruleScopeSpec : ( 'scope' ACTION -> ^( 'scope' ACTION ) | 'scope' id ( ',' id )* ';' -> ^( 'scope' ( id )+ ) | 'scope' ACTION 'scope' id ( ',' id )* ';' -> ^( 'scope' ACTION ( id )+ ) );
    public final ANTLRv3Parser.ruleScopeSpec_return ruleScopeSpec() throws RecognitionException {
        ANTLRv3Parser.ruleScopeSpec_return retval = new ANTLRv3Parser.ruleScopeSpec_return();
        retval.start = input.LT(1);

        CommonTree root_0 = null;

        Token string_literal62=null;
        Token ACTION63=null;
        Token string_literal64=null;
        Token char_literal66=null;
        Token char_literal68=null;
        Token string_literal69=null;
        Token ACTION70=null;
        Token string_literal71=null;
        Token char_literal73=null;
        Token char_literal75=null;
        ANTLRv3Parser.id_return id65 = null;

        ANTLRv3Parser.id_return id67 = null;

        ANTLRv3Parser.id_return id72 = null;

        ANTLRv3Parser.id_return id74 = null;


        CommonTree string_literal62_tree=null;
        CommonTree ACTION63_tree=null;
        CommonTree string_literal64_tree=null;
        CommonTree char_literal66_tree=null;
        CommonTree char_literal68_tree=null;
        CommonTree string_literal69_tree=null;
        CommonTree ACTION70_tree=null;
        CommonTree string_literal71_tree=null;
        CommonTree char_literal73_tree=null;
        CommonTree char_literal75_tree=null;
        RewriteRuleTokenStream stream_SCOPE=new RewriteRuleTokenStream(adaptor,"token SCOPE");
        RewriteRuleTokenStream stream_80=new RewriteRuleTokenStream(adaptor,"token 80");
        RewriteRuleTokenStream stream_71=new RewriteRuleTokenStream(adaptor,"token 71");
        RewriteRuleTokenStream stream_ACTION=new RewriteRuleTokenStream(adaptor,"token ACTION");
        RewriteRuleSubtreeStream stream_id=new RewriteRuleSubtreeStream(adaptor,"rule id");
        try {
            // org/antlr/grammar/v3/ANTLRv3.g:185:2: ( 'scope' ACTION -> ^( 'scope' ACTION ) | 'scope' id ( ',' id )* ';' -> ^( 'scope' ( id )+ ) | 'scope' ACTION 'scope' id ( ',' id )* ';' -> ^( 'scope' ACTION ( id )+ ) )
            int alt29=3;
            int LA29_0 = input.LA(1);

            if ( (LA29_0==SCOPE) ) {
                int LA29_1 = input.LA(2);

                if ( (LA29_1==ACTION) ) {
                    int LA29_2 = input.LA(3);

                    if ( (LA29_2==SCOPE) ) {
                        alt29=3;
                    }
                    else if ( (LA29_2==AT||LA29_2==78) ) {
                        alt29=1;
                    }
                    else {
                        if (state.backtracking>0) {state.failed=true; return retval;}
                        NoViableAltException nvae =
                            new NoViableAltException("", 29, 2, input);

                        throw nvae;
                    }
                }
                else if ( (LA29_1==TOKEN_REF||LA29_1==RULE_REF) ) {
                    alt29=2;
                }
                else {
                    if (state.backtracking>0) {state.failed=true; return retval;}
                    NoViableAltException nvae =
                        new NoViableAltException("", 29, 1, input);

                    throw nvae;
                }
            }
            else {
                if (state.backtracking>0) {state.failed=true; return retval;}
                NoViableAltException nvae =
                    new NoViableAltException("", 29, 0, input);

                throw nvae;
            }
            switch (alt29) {
                case 1 :
                    // org/antlr/grammar/v3/ANTLRv3.g:185:4: 'scope' ACTION
                    {
                    string_literal62=(Token)match(input,SCOPE,FOLLOW_SCOPE_in_ruleScopeSpec1115); if (state.failed) return retval; 
                    if ( state.backtracking==0 ) stream_SCOPE.add(string_literal62);

                    ACTION63=(Token)match(input,ACTION,FOLLOW_ACTION_in_ruleScopeSpec1117); if (state.failed) return retval; 
                    if ( state.backtracking==0 ) stream_ACTION.add(ACTION63);



                    // AST REWRITE
                    // elements: ACTION, SCOPE
                    // token labels: 
                    // rule labels: retval
                    // token list labels: 
                    // rule list labels: 
                    // wildcard labels: 
                    if ( state.backtracking==0 ) {
                    retval.tree = root_0;
                    RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                    root_0 = (CommonTree)adaptor.nil();
                    // 185:19: -> ^( 'scope' ACTION )
                    {
                        // org/antlr/grammar/v3/ANTLRv3.g:185:22: ^( 'scope' ACTION )
                        {
                        CommonTree root_1 = (CommonTree)adaptor.nil();
                        root_1 = (CommonTree)adaptor.becomeRoot(stream_SCOPE.nextNode(), root_1);

                        adaptor.addChild(root_1, stream_ACTION.nextNode());

                        adaptor.addChild(root_0, root_1);
                        }

                    }

                    retval.tree = root_0;}
                    }
                    break;
                case 2 :
                    // org/antlr/grammar/v3/ANTLRv3.g:186:4: 'scope' id ( ',' id )* ';'
                    {
                    string_literal64=(Token)match(input,SCOPE,FOLLOW_SCOPE_in_ruleScopeSpec1130); if (state.failed) return retval; 
                    if ( state.backtracking==0 ) stream_SCOPE.add(string_literal64);

                    pushFollow(FOLLOW_id_in_ruleScopeSpec1132);
                    id65=id();

                    state._fsp--;
                    if (state.failed) return retval;
                    if ( state.backtracking==0 ) stream_id.add(id65.getTree());
                    // org/antlr/grammar/v3/ANTLRv3.g:186:15: ( ',' id )*
                    loop27:
                    do {
                        int alt27=2;
                        int LA27_0 = input.LA(1);

                        if ( (LA27_0==80) ) {
                            alt27=1;
                        }


                        switch (alt27) {
                    	case 1 :
                    	    // org/antlr/grammar/v3/ANTLRv3.g:186:16: ',' id
                    	    {
                    	    char_literal66=(Token)match(input,80,FOLLOW_80_in_ruleScopeSpec1135); if (state.failed) return retval; 
                    	    if ( state.backtracking==0 ) stream_80.add(char_literal66);

                    	    pushFollow(FOLLOW_id_in_ruleScopeSpec1137);
                    	    id67=id();

                    	    state._fsp--;
                    	    if (state.failed) return retval;
                    	    if ( state.backtracking==0 ) stream_id.add(id67.getTree());

                    	    }
                    	    break;

                    	default :
                    	    break loop27;
                        }
                    } while (true);

                    char_literal68=(Token)match(input,71,FOLLOW_71_in_ruleScopeSpec1141); if (state.failed) return retval; 
                    if ( state.backtracking==0 ) stream_71.add(char_literal68);



                    // AST REWRITE
                    // elements: SCOPE, id
                    // token labels: 
                    // rule labels: retval
                    // token list labels: 
                    // rule list labels: 
                    // wildcard labels: 
                    if ( state.backtracking==0 ) {
                    retval.tree = root_0;
                    RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                    root_0 = (CommonTree)adaptor.nil();
                    // 186:29: -> ^( 'scope' ( id )+ )
                    {
                        // org/antlr/grammar/v3/ANTLRv3.g:186:32: ^( 'scope' ( id )+ )
                        {
                        CommonTree root_1 = (CommonTree)adaptor.nil();
                        root_1 = (CommonTree)adaptor.becomeRoot(stream_SCOPE.nextNode(), root_1);

                        if ( !(stream_id.hasNext()) ) {
                            throw new RewriteEarlyExitException();
                        }
                        while ( stream_id.hasNext() ) {
                            adaptor.addChild(root_1, stream_id.nextTree());

                        }
                        stream_id.reset();

                        adaptor.addChild(root_0, root_1);
                        }

                    }

                    retval.tree = root_0;}
                    }
                    break;
                case 3 :
                    // org/antlr/grammar/v3/ANTLRv3.g:187:4: 'scope' ACTION 'scope' id ( ',' id )* ';'
                    {
                    string_literal69=(Token)match(input,SCOPE,FOLLOW_SCOPE_in_ruleScopeSpec1155); if (state.failed) return retval; 
                    if ( state.backtracking==0 ) stream_SCOPE.add(string_literal69);

                    ACTION70=(Token)match(input,ACTION,FOLLOW_ACTION_in_ruleScopeSpec1157); if (state.failed) return retval; 
                    if ( state.backtracking==0 ) stream_ACTION.add(ACTION70);

                    string_literal71=(Token)match(input,SCOPE,FOLLOW_SCOPE_in_ruleScopeSpec1161); if (state.failed) return retval; 
                    if ( state.backtracking==0 ) stream_SCOPE.add(string_literal71);

                    pushFollow(FOLLOW_id_in_ruleScopeSpec1163);
                    id72=id();

                    state._fsp--;
                    if (state.failed) return retval;
                    if ( state.backtracking==0 ) stream_id.add(id72.getTree());
                    // org/antlr/grammar/v3/ANTLRv3.g:188:14: ( ',' id )*
                    loop28:
                    do {
                        int alt28=2;
                        int LA28_0 = input.LA(1);

                        if ( (LA28_0==80) ) {
                            alt28=1;
                        }


                        switch (alt28) {
                    	case 1 :
                    	    // org/antlr/grammar/v3/ANTLRv3.g:188:15: ',' id
                    	    {
                    	    char_literal73=(Token)match(input,80,FOLLOW_80_in_ruleScopeSpec1166); if (state.failed) return retval; 
                    	    if ( state.backtracking==0 ) stream_80.add(char_literal73);

                    	    pushFollow(FOLLOW_id_in_ruleScopeSpec1168);
                    	    id74=id();

                    	    state._fsp--;
                    	    if (state.failed) return retval;
                    	    if ( state.backtracking==0 ) stream_id.add(id74.getTree());

                    	    }
                    	    break;

                    	default :
                    	    break loop28;
                        }
                    } while (true);

                    char_literal75=(Token)match(input,71,FOLLOW_71_in_ruleScopeSpec1172); if (state.failed) return retval; 
                    if ( state.backtracking==0 ) stream_71.add(char_literal75);



                    // AST REWRITE
                    // elements: SCOPE, ACTION, id
                    // token labels: 
                    // rule labels: retval
                    // token list labels: 
                    // rule list labels: 
                    // wildcard labels: 
                    if ( state.backtracking==0 ) {
                    retval.tree = root_0;
                    RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                    root_0 = (CommonTree)adaptor.nil();
                    // 189:3: -> ^( 'scope' ACTION ( id )+ )
                    {
                        // org/antlr/grammar/v3/ANTLRv3.g:189:6: ^( 'scope' ACTION ( id )+ )
                        {
                        CommonTree root_1 = (CommonTree)adaptor.nil();
                        root_1 = (CommonTree)adaptor.becomeRoot(stream_SCOPE.nextNode(), root_1);

                        adaptor.addChild(root_1, stream_ACTION.nextNode());
                        if ( !(stream_id.hasNext()) ) {
                            throw new RewriteEarlyExitException();
                        }
                        while ( stream_id.hasNext() ) {
                            adaptor.addChild(root_1, stream_id.nextTree());

                        }
                        stream_id.reset();

                        adaptor.addChild(root_0, root_1);
                        }

                    }

                    retval.tree = root_0;}
                    }
                    break;

            }
            retval.stop = input.LT(-1);

            if ( state.backtracking==0 ) {

            retval.tree = (CommonTree)adaptor.rulePostProcessing(root_0);
            adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
    	retval.tree = (CommonTree)adaptor.errorNode(input, retval.start, input.LT(-1), re);

        }
        finally {
        }
        return retval;
    }
    // $ANTLR end "ruleScopeSpec"

    public static class block_return extends ParserRuleReturnScope {
        CommonTree tree;
        public Object getTree() { return tree; }
    };

    // $ANTLR start "block"
    // org/antlr/grammar/v3/ANTLRv3.g:192:1: block : lp= '(' ( (opts= optionsSpec )? ':' )? altpair ( '|' altpair )* rp= ')' -> ^( BLOCK[$lp,\"BLOCK\"] ( optionsSpec )? ( altpair )+ EOB[$rp,\"EOB\"] ) ;
    public final ANTLRv3Parser.block_return block() throws RecognitionException {
        ANTLRv3Parser.block_return retval = new ANTLRv3Parser.block_return();
        retval.start = input.LT(1);

        CommonTree root_0 = null;

        Token lp=null;
        Token rp=null;
        Token char_literal76=null;
        Token char_literal78=null;
        ANTLRv3Parser.optionsSpec_return opts = null;

        ANTLRv3Parser.altpair_return altpair77 = null;

        ANTLRv3Parser.altpair_return altpair79 = null;


        CommonTree lp_tree=null;
        CommonTree rp_tree=null;
        CommonTree char_literal76_tree=null;
        CommonTree char_literal78_tree=null;
        RewriteRuleTokenStream stream_78=new RewriteRuleTokenStream(adaptor,"token 78");
        RewriteRuleTokenStream stream_82=new RewriteRuleTokenStream(adaptor,"token 82");
        RewriteRuleTokenStream stream_83=new RewriteRuleTokenStream(adaptor,"token 83");
        RewriteRuleTokenStream stream_81=new RewriteRuleTokenStream(adaptor,"token 81");
        RewriteRuleSubtreeStream stream_altpair=new RewriteRuleSubtreeStream(adaptor,"rule altpair");
        RewriteRuleSubtreeStream stream_optionsSpec=new RewriteRuleSubtreeStream(adaptor,"rule optionsSpec");
        try {
            // org/antlr/grammar/v3/ANTLRv3.g:193:5: (lp= '(' ( (opts= optionsSpec )? ':' )? altpair ( '|' altpair )* rp= ')' -> ^( BLOCK[$lp,\"BLOCK\"] ( optionsSpec )? ( altpair )+ EOB[$rp,\"EOB\"] ) )
            // org/antlr/grammar/v3/ANTLRv3.g:193:9: lp= '(' ( (opts= optionsSpec )? ':' )? altpair ( '|' altpair )* rp= ')'
            {
            lp=(Token)match(input,81,FOLLOW_81_in_block1204); if (state.failed) return retval; 
            if ( state.backtracking==0 ) stream_81.add(lp);

            // org/antlr/grammar/v3/ANTLRv3.g:194:3: ( (opts= optionsSpec )? ':' )?
            int alt31=2;
            int LA31_0 = input.LA(1);

            if ( (LA31_0==OPTIONS||LA31_0==78) ) {
                alt31=1;
            }
            switch (alt31) {
                case 1 :
                    // org/antlr/grammar/v3/ANTLRv3.g:194:5: (opts= optionsSpec )? ':'
                    {
                    // org/antlr/grammar/v3/ANTLRv3.g:194:5: (opts= optionsSpec )?
                    int alt30=2;
                    int LA30_0 = input.LA(1);

                    if ( (LA30_0==OPTIONS) ) {
                        alt30=1;
                    }
                    switch (alt30) {
                        case 1 :
                            // org/antlr/grammar/v3/ANTLRv3.g:194:6: opts= optionsSpec
                            {
                            pushFollow(FOLLOW_optionsSpec_in_block1213);
                            opts=optionsSpec();

                            state._fsp--;
                            if (state.failed) return retval;
                            if ( state.backtracking==0 ) stream_optionsSpec.add(opts.getTree());

                            }
                            break;

                    }

                    char_literal76=(Token)match(input,78,FOLLOW_78_in_block1217); if (state.failed) return retval; 
                    if ( state.backtracking==0 ) stream_78.add(char_literal76);


                    }
                    break;

            }

            pushFollow(FOLLOW_altpair_in_block1224);
            altpair77=altpair();

            state._fsp--;
            if (state.failed) return retval;
            if ( state.backtracking==0 ) stream_altpair.add(altpair77.getTree());
            // org/antlr/grammar/v3/ANTLRv3.g:195:11: ( '|' altpair )*
            loop32:
            do {
                int alt32=2;
                int LA32_0 = input.LA(1);

                if ( (LA32_0==82) ) {
                    alt32=1;
                }


                switch (alt32) {
            	case 1 :
            	    // org/antlr/grammar/v3/ANTLRv3.g:195:13: '|' altpair
            	    {
            	    char_literal78=(Token)match(input,82,FOLLOW_82_in_block1228); if (state.failed) return retval; 
            	    if ( state.backtracking==0 ) stream_82.add(char_literal78);

            	    pushFollow(FOLLOW_altpair_in_block1230);
            	    altpair79=altpair();

            	    state._fsp--;
            	    if (state.failed) return retval;
            	    if ( state.backtracking==0 ) stream_altpair.add(altpair79.getTree());

            	    }
            	    break;

            	default :
            	    break loop32;
                }
            } while (true);

            rp=(Token)match(input,83,FOLLOW_83_in_block1245); if (state.failed) return retval; 
            if ( state.backtracking==0 ) stream_83.add(rp);



            // AST REWRITE
            // elements: optionsSpec, altpair
            // token labels: 
            // rule labels: retval
            // token list labels: 
            // rule list labels: 
            // wildcard labels: 
            if ( state.backtracking==0 ) {
            retval.tree = root_0;
            RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

            root_0 = (CommonTree)adaptor.nil();
            // 197:9: -> ^( BLOCK[$lp,\"BLOCK\"] ( optionsSpec )? ( altpair )+ EOB[$rp,\"EOB\"] )
            {
                // org/antlr/grammar/v3/ANTLRv3.g:197:12: ^( BLOCK[$lp,\"BLOCK\"] ( optionsSpec )? ( altpair )+ EOB[$rp,\"EOB\"] )
                {
                CommonTree root_1 = (CommonTree)adaptor.nil();
                root_1 = (CommonTree)adaptor.becomeRoot((CommonTree)adaptor.create(BLOCK, lp, "BLOCK"), root_1);

                // org/antlr/grammar/v3/ANTLRv3.g:197:34: ( optionsSpec )?
                if ( stream_optionsSpec.hasNext() ) {
                    adaptor.addChild(root_1, stream_optionsSpec.nextTree());

                }
                stream_optionsSpec.reset();
                if ( !(stream_altpair.hasNext()) ) {
                    throw new RewriteEarlyExitException();
                }
                while ( stream_altpair.hasNext() ) {
                    adaptor.addChild(root_1, stream_altpair.nextTree());

                }
                stream_altpair.reset();
                adaptor.addChild(root_1, (CommonTree)adaptor.create(EOB, rp, "EOB"));

                adaptor.addChild(root_0, root_1);
                }

            }

            retval.tree = root_0;}
            }

            retval.stop = input.LT(-1);

            if ( state.backtracking==0 ) {

            retval.tree = (CommonTree)adaptor.rulePostProcessing(root_0);
            adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
    	retval.tree = (CommonTree)adaptor.errorNode(input, retval.start, input.LT(-1), re);

        }
        finally {
        }
        return retval;
    }
    // $ANTLR end "block"

    public static class altpair_return extends ParserRuleReturnScope {
        CommonTree tree;
        public Object getTree() { return tree; }
    };

    // $ANTLR start "altpair"
    // org/antlr/grammar/v3/ANTLRv3.g:200:1: altpair : alternative rewrite ;
    public final ANTLRv3Parser.altpair_return altpair() throws RecognitionException {
        ANTLRv3Parser.altpair_return retval = new ANTLRv3Parser.altpair_return();
        retval.start = input.LT(1);

        CommonTree root_0 = null;

        ANTLRv3Parser.alternative_return alternative80 = null;

        ANTLRv3Parser.rewrite_return rewrite81 = null;



        try {
            // org/antlr/grammar/v3/ANTLRv3.g:200:9: ( alternative rewrite )
            // org/antlr/grammar/v3/ANTLRv3.g:200:11: alternative rewrite
            {
            root_0 = (CommonTree)adaptor.nil();

            pushFollow(FOLLOW_alternative_in_altpair1284);
            alternative80=alternative();

            state._fsp--;
            if (state.failed) return retval;
            if ( state.backtracking==0 ) adaptor.addChild(root_0, alternative80.getTree());
            pushFollow(FOLLOW_rewrite_in_altpair1286);
            rewrite81=rewrite();

            state._fsp--;
            if (state.failed) return retval;
            if ( state.backtracking==0 ) adaptor.addChild(root_0, rewrite81.getTree());

            }

            retval.stop = input.LT(-1);

            if ( state.backtracking==0 ) {

            retval.tree = (CommonTree)adaptor.rulePostProcessing(root_0);
            adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
    	retval.tree = (CommonTree)adaptor.errorNode(input, retval.start, input.LT(-1), re);

        }
        finally {
        }
        return retval;
    }
    // $ANTLR end "altpair"

    public static class altList_return extends ParserRuleReturnScope {
        CommonTree tree;
        public Object getTree() { return tree; }
    };

    // $ANTLR start "altList"
    // org/antlr/grammar/v3/ANTLRv3.g:202:1: altList : altpair ( '|' altpair )* -> ^( ( altpair )+ EOB[\"EOB\"] ) ;
    public final ANTLRv3Parser.altList_return altList() throws RecognitionException {
        ANTLRv3Parser.altList_return retval = new ANTLRv3Parser.altList_return();
        retval.start = input.LT(1);

        CommonTree root_0 = null;

        Token char_literal83=null;
        ANTLRv3Parser.altpair_return altpair82 = null;

        ANTLRv3Parser.altpair_return altpair84 = null;


        CommonTree char_literal83_tree=null;
        RewriteRuleTokenStream stream_82=new RewriteRuleTokenStream(adaptor,"token 82");
        RewriteRuleSubtreeStream stream_altpair=new RewriteRuleSubtreeStream(adaptor,"rule altpair");

        	// must create root manually as it's used by invoked rules in real antlr tool.
        	// leave here to demonstrate use of {...} in rewrite rule
        	// it's really BLOCK[firstToken,"BLOCK"]; set line/col to previous ( or : token.
            CommonTree blkRoot = (CommonTree)adaptor.create(BLOCK,input.LT(-1),"BLOCK");

        try {
            // org/antlr/grammar/v3/ANTLRv3.g:209:5: ( altpair ( '|' altpair )* -> ^( ( altpair )+ EOB[\"EOB\"] ) )
            // org/antlr/grammar/v3/ANTLRv3.g:209:9: altpair ( '|' altpair )*
            {
            pushFollow(FOLLOW_altpair_in_altList1306);
            altpair82=altpair();

            state._fsp--;
            if (state.failed) return retval;
            if ( state.backtracking==0 ) stream_altpair.add(altpair82.getTree());
            // org/antlr/grammar/v3/ANTLRv3.g:209:17: ( '|' altpair )*
            loop33:
            do {
                int alt33=2;
                int LA33_0 = input.LA(1);

                if ( (LA33_0==82) ) {
                    alt33=1;
                }


                switch (alt33) {
            	case 1 :
            	    // org/antlr/grammar/v3/ANTLRv3.g:209:19: '|' altpair
            	    {
            	    char_literal83=(Token)match(input,82,FOLLOW_82_in_altList1310); if (state.failed) return retval; 
            	    if ( state.backtracking==0 ) stream_82.add(char_literal83);

            	    pushFollow(FOLLOW_altpair_in_altList1312);
            	    altpair84=altpair();

            	    state._fsp--;
            	    if (state.failed) return retval;
            	    if ( state.backtracking==0 ) stream_altpair.add(altpair84.getTree());

            	    }
            	    break;

            	default :
            	    break loop33;
                }
            } while (true);



            // AST REWRITE
            // elements: altpair
            // token labels: 
            // rule labels: retval
            // token list labels: 
            // rule list labels: 
            // wildcard labels: 
            if ( state.backtracking==0 ) {
            retval.tree = root_0;
            RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

            root_0 = (CommonTree)adaptor.nil();
            // 209:34: -> ^( ( altpair )+ EOB[\"EOB\"] )
            {
                // org/antlr/grammar/v3/ANTLRv3.g:209:37: ^( ( altpair )+ EOB[\"EOB\"] )
                {
                CommonTree root_1 = (CommonTree)adaptor.nil();
                root_1 = (CommonTree)adaptor.becomeRoot(blkRoot, root_1);

                if ( !(stream_altpair.hasNext()) ) {
                    throw new RewriteEarlyExitException();
                }
                while ( stream_altpair.hasNext() ) {
                    adaptor.addChild(root_1, stream_altpair.nextTree());

                }
                stream_altpair.reset();
                adaptor.addChild(root_1, (CommonTree)adaptor.create(EOB, "EOB"));

                adaptor.addChild(root_0, root_1);
                }

            }

            retval.tree = root_0;}
            }

            retval.stop = input.LT(-1);

            if ( state.backtracking==0 ) {

            retval.tree = (CommonTree)adaptor.rulePostProcessing(root_0);
            adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
    	retval.tree = (CommonTree)adaptor.errorNode(input, retval.start, input.LT(-1), re);

        }
        finally {
        }
        return retval;
    }
    // $ANTLR end "altList"

    public static class alternative_return extends ParserRuleReturnScope {
        CommonTree tree;
        public Object getTree() { return tree; }
    };

    // $ANTLR start "alternative"
    // org/antlr/grammar/v3/ANTLRv3.g:212:1: alternative : ( ( element )+ -> ^( ALT[firstToken,\"ALT\"] ( element )+ EOA[\"EOA\"] ) | -> ^( ALT[prevToken,\"ALT\"] EPSILON[prevToken,\"EPSILON\"] EOA[\"EOA\"] ) );
    public final ANTLRv3Parser.alternative_return alternative() throws RecognitionException {
        ANTLRv3Parser.alternative_return retval = new ANTLRv3Parser.alternative_return();
        retval.start = input.LT(1);

        CommonTree root_0 = null;

        ANTLRv3Parser.element_return element85 = null;


        RewriteRuleSubtreeStream stream_element=new RewriteRuleSubtreeStream(adaptor,"rule element");

        	Token firstToken = input.LT(1);
        	Token prevToken = input.LT(-1); // either : or | I think

        try {
            // org/antlr/grammar/v3/ANTLRv3.g:217:5: ( ( element )+ -> ^( ALT[firstToken,\"ALT\"] ( element )+ EOA[\"EOA\"] ) | -> ^( ALT[prevToken,\"ALT\"] EPSILON[prevToken,\"EPSILON\"] EOA[\"EOA\"] ) )
            int alt35=2;
            int LA35_0 = input.LA(1);

            if ( (LA35_0==SEMPRED||LA35_0==TREE_BEGIN||(LA35_0>=TOKEN_REF && LA35_0<=ACTION)||LA35_0==RULE_REF||LA35_0==81||LA35_0==87||LA35_0==90) ) {
                alt35=1;
            }
            else if ( (LA35_0==REWRITE||LA35_0==71||(LA35_0>=82 && LA35_0<=83)) ) {
                alt35=2;
            }
            else {
                if (state.backtracking>0) {state.failed=true; return retval;}
                NoViableAltException nvae =
                    new NoViableAltException("", 35, 0, input);

                throw nvae;
            }
            switch (alt35) {
                case 1 :
                    // org/antlr/grammar/v3/ANTLRv3.g:217:9: ( element )+
                    {
                    // org/antlr/grammar/v3/ANTLRv3.g:217:9: ( element )+
                    int cnt34=0;
                    loop34:
                    do {
                        int alt34=2;
                        int LA34_0 = input.LA(1);

                        if ( (LA34_0==SEMPRED||LA34_0==TREE_BEGIN||(LA34_0>=TOKEN_REF && LA34_0<=ACTION)||LA34_0==RULE_REF||LA34_0==81||LA34_0==87||LA34_0==90) ) {
                            alt34=1;
                        }


                        switch (alt34) {
                    	case 1 :
                    	    // org/antlr/grammar/v3/ANTLRv3.g:217:9: element
                    	    {
                    	    pushFollow(FOLLOW_element_in_alternative1353);
                    	    element85=element();

                    	    state._fsp--;
                    	    if (state.failed) return retval;
                    	    if ( state.backtracking==0 ) stream_element.add(element85.getTree());

                    	    }
                    	    break;

                    	default :
                    	    if ( cnt34 >= 1 ) break loop34;
                    	    if (state.backtracking>0) {state.failed=true; return retval;}
                                EarlyExitException eee =
                                    new EarlyExitException(34, input);
                                throw eee;
                        }
                        cnt34++;
                    } while (true);



                    // AST REWRITE
                    // elements: element
                    // token labels: 
                    // rule labels: retval
                    // token list labels: 
                    // rule list labels: 
                    // wildcard labels: 
                    if ( state.backtracking==0 ) {
                    retval.tree = root_0;
                    RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                    root_0 = (CommonTree)adaptor.nil();
                    // 217:18: -> ^( ALT[firstToken,\"ALT\"] ( element )+ EOA[\"EOA\"] )
                    {
                        // org/antlr/grammar/v3/ANTLRv3.g:217:21: ^( ALT[firstToken,\"ALT\"] ( element )+ EOA[\"EOA\"] )
                        {
                        CommonTree root_1 = (CommonTree)adaptor.nil();
                        root_1 = (CommonTree)adaptor.becomeRoot((CommonTree)adaptor.create(ALT, firstToken, "ALT"), root_1);

                        if ( !(stream_element.hasNext()) ) {
                            throw new RewriteEarlyExitException();
                        }
                        while ( stream_element.hasNext() ) {
                            adaptor.addChild(root_1, stream_element.nextTree());

                        }
                        stream_element.reset();
                        adaptor.addChild(root_1, (CommonTree)adaptor.create(EOA, "EOA"));

                        adaptor.addChild(root_0, root_1);
                        }

                    }

                    retval.tree = root_0;}
                    }
                    break;
                case 2 :
                    // org/antlr/grammar/v3/ANTLRv3.g:218:9: 
                    {

                    // AST REWRITE
                    // elements: 
                    // token labels: 
                    // rule labels: retval
                    // token list labels: 
                    // rule list labels: 
                    // wildcard labels: 
                    if ( state.backtracking==0 ) {
                    retval.tree = root_0;
                    RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                    root_0 = (CommonTree)adaptor.nil();
                    // 218:9: -> ^( ALT[prevToken,\"ALT\"] EPSILON[prevToken,\"EPSILON\"] EOA[\"EOA\"] )
                    {
                        // org/antlr/grammar/v3/ANTLRv3.g:218:12: ^( ALT[prevToken,\"ALT\"] EPSILON[prevToken,\"EPSILON\"] EOA[\"EOA\"] )
                        {
                        CommonTree root_1 = (CommonTree)adaptor.nil();
                        root_1 = (CommonTree)adaptor.becomeRoot((CommonTree)adaptor.create(ALT, prevToken, "ALT"), root_1);

                        adaptor.addChild(root_1, (CommonTree)adaptor.create(EPSILON, prevToken, "EPSILON"));
                        adaptor.addChild(root_1, (CommonTree)adaptor.create(EOA, "EOA"));

                        adaptor.addChild(root_0, root_1);
                        }

                    }

                    retval.tree = root_0;}
                    }
                    break;

            }
            retval.stop = input.LT(-1);

            if ( state.backtracking==0 ) {

            retval.tree = (CommonTree)adaptor.rulePostProcessing(root_0);
            adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
    	retval.tree = (CommonTree)adaptor.errorNode(input, retval.start, input.LT(-1), re);

        }
        finally {
        }
        return retval;
    }
    // $ANTLR end "alternative"

    public static class exceptionGroup_return extends ParserRuleReturnScope {
        CommonTree tree;
        public Object getTree() { return tree; }
    };

    // $ANTLR start "exceptionGroup"
    // org/antlr/grammar/v3/ANTLRv3.g:221:1: exceptionGroup : ( ( exceptionHandler )+ ( finallyClause )? | finallyClause );
    public final ANTLRv3Parser.exceptionGroup_return exceptionGroup() throws RecognitionException {
        ANTLRv3Parser.exceptionGroup_return retval = new ANTLRv3Parser.exceptionGroup_return();
        retval.start = input.LT(1);

        CommonTree root_0 = null;

        ANTLRv3Parser.exceptionHandler_return exceptionHandler86 = null;

        ANTLRv3Parser.finallyClause_return finallyClause87 = null;

        ANTLRv3Parser.finallyClause_return finallyClause88 = null;



        try {
            // org/antlr/grammar/v3/ANTLRv3.g:222:2: ( ( exceptionHandler )+ ( finallyClause )? | finallyClause )
            int alt38=2;
            int LA38_0 = input.LA(1);

            if ( (LA38_0==84) ) {
                alt38=1;
            }
            else if ( (LA38_0==85) ) {
                alt38=2;
            }
            else {
                if (state.backtracking>0) {state.failed=true; return retval;}
                NoViableAltException nvae =
                    new NoViableAltException("", 38, 0, input);

                throw nvae;
            }
            switch (alt38) {
                case 1 :
                    // org/antlr/grammar/v3/ANTLRv3.g:222:4: ( exceptionHandler )+ ( finallyClause )?
                    {
                    root_0 = (CommonTree)adaptor.nil();

                    // org/antlr/grammar/v3/ANTLRv3.g:222:4: ( exceptionHandler )+
                    int cnt36=0;
                    loop36:
                    do {
                        int alt36=2;
                        int LA36_0 = input.LA(1);

                        if ( (LA36_0==84) ) {
                            alt36=1;
                        }


                        switch (alt36) {
                    	case 1 :
                    	    // org/antlr/grammar/v3/ANTLRv3.g:222:6: exceptionHandler
                    	    {
                    	    pushFollow(FOLLOW_exceptionHandler_in_exceptionGroup1404);
                    	    exceptionHandler86=exceptionHandler();

                    	    state._fsp--;
                    	    if (state.failed) return retval;
                    	    if ( state.backtracking==0 ) adaptor.addChild(root_0, exceptionHandler86.getTree());

                    	    }
                    	    break;

                    	default :
                    	    if ( cnt36 >= 1 ) break loop36;
                    	    if (state.backtracking>0) {state.failed=true; return retval;}
                                EarlyExitException eee =
                                    new EarlyExitException(36, input);
                                throw eee;
                        }
                        cnt36++;
                    } while (true);

                    // org/antlr/grammar/v3/ANTLRv3.g:222:26: ( finallyClause )?
                    int alt37=2;
                    int LA37_0 = input.LA(1);

                    if ( (LA37_0==85) ) {
                        alt37=1;
                    }
                    switch (alt37) {
                        case 1 :
                            // org/antlr/grammar/v3/ANTLRv3.g:222:28: finallyClause
                            {
                            pushFollow(FOLLOW_finallyClause_in_exceptionGroup1411);
                            finallyClause87=finallyClause();

                            state._fsp--;
                            if (state.failed) return retval;
                            if ( state.backtracking==0 ) adaptor.addChild(root_0, finallyClause87.getTree());

                            }
                            break;

                    }


                    }
                    break;
                case 2 :
                    // org/antlr/grammar/v3/ANTLRv3.g:223:4: finallyClause
                    {
                    root_0 = (CommonTree)adaptor.nil();

                    pushFollow(FOLLOW_finallyClause_in_exceptionGroup1419);
                    finallyClause88=finallyClause();

                    state._fsp--;
                    if (state.failed) return retval;
                    if ( state.backtracking==0 ) adaptor.addChild(root_0, finallyClause88.getTree());

                    }
                    break;

            }
            retval.stop = input.LT(-1);

            if ( state.backtracking==0 ) {

            retval.tree = (CommonTree)adaptor.rulePostProcessing(root_0);
            adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
    	retval.tree = (CommonTree)adaptor.errorNode(input, retval.start, input.LT(-1), re);

        }
        finally {
        }
        return retval;
    }
    // $ANTLR end "exceptionGroup"

    public static class exceptionHandler_return extends ParserRuleReturnScope {
        CommonTree tree;
        public Object getTree() { return tree; }
    };

    // $ANTLR start "exceptionHandler"
    // org/antlr/grammar/v3/ANTLRv3.g:226:1: exceptionHandler : 'catch' ARG_ACTION ACTION -> ^( 'catch' ARG_ACTION ACTION ) ;
    public final ANTLRv3Parser.exceptionHandler_return exceptionHandler() throws RecognitionException {
        ANTLRv3Parser.exceptionHandler_return retval = new ANTLRv3Parser.exceptionHandler_return();
        retval.start = input.LT(1);

        CommonTree root_0 = null;

        Token string_literal89=null;
        Token ARG_ACTION90=null;
        Token ACTION91=null;

        CommonTree string_literal89_tree=null;
        CommonTree ARG_ACTION90_tree=null;
        CommonTree ACTION91_tree=null;
        RewriteRuleTokenStream stream_ACTION=new RewriteRuleTokenStream(adaptor,"token ACTION");
        RewriteRuleTokenStream stream_84=new RewriteRuleTokenStream(adaptor,"token 84");
        RewriteRuleTokenStream stream_ARG_ACTION=new RewriteRuleTokenStream(adaptor,"token ARG_ACTION");

        try {
            // org/antlr/grammar/v3/ANTLRv3.g:227:5: ( 'catch' ARG_ACTION ACTION -> ^( 'catch' ARG_ACTION ACTION ) )
            // org/antlr/grammar/v3/ANTLRv3.g:227:10: 'catch' ARG_ACTION ACTION
            {
            string_literal89=(Token)match(input,84,FOLLOW_84_in_exceptionHandler1439); if (state.failed) return retval; 
            if ( state.backtracking==0 ) stream_84.add(string_literal89);

            ARG_ACTION90=(Token)match(input,ARG_ACTION,FOLLOW_ARG_ACTION_in_exceptionHandler1441); if (state.failed) return retval; 
            if ( state.backtracking==0 ) stream_ARG_ACTION.add(ARG_ACTION90);

            ACTION91=(Token)match(input,ACTION,FOLLOW_ACTION_in_exceptionHandler1443); if (state.failed) return retval; 
            if ( state.backtracking==0 ) stream_ACTION.add(ACTION91);



            // AST REWRITE
            // elements: ACTION, 84, ARG_ACTION
            // token labels: 
            // rule labels: retval
            // token list labels: 
            // rule list labels: 
            // wildcard labels: 
            if ( state.backtracking==0 ) {
            retval.tree = root_0;
            RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

            root_0 = (CommonTree)adaptor.nil();
            // 227:36: -> ^( 'catch' ARG_ACTION ACTION )
            {
                // org/antlr/grammar/v3/ANTLRv3.g:227:39: ^( 'catch' ARG_ACTION ACTION )
                {
                CommonTree root_1 = (CommonTree)adaptor.nil();
                root_1 = (CommonTree)adaptor.becomeRoot(stream_84.nextNode(), root_1);

                adaptor.addChild(root_1, stream_ARG_ACTION.nextNode());
                adaptor.addChild(root_1, stream_ACTION.nextNode());

                adaptor.addChild(root_0, root_1);
                }

            }

            retval.tree = root_0;}
            }

            retval.stop = input.LT(-1);

            if ( state.backtracking==0 ) {

            retval.tree = (CommonTree)adaptor.rulePostProcessing(root_0);
            adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
    	retval.tree = (CommonTree)adaptor.errorNode(input, retval.start, input.LT(-1), re);

        }
        finally {
        }
        return retval;
    }
    // $ANTLR end "exceptionHandler"

    public static class finallyClause_return extends ParserRuleReturnScope {
        CommonTree tree;
        public Object getTree() { return tree; }
    };

    // $ANTLR start "finallyClause"
    // org/antlr/grammar/v3/ANTLRv3.g:230:1: finallyClause : 'finally' ACTION -> ^( 'finally' ACTION ) ;
    public final ANTLRv3Parser.finallyClause_return finallyClause() throws RecognitionException {
        ANTLRv3Parser.finallyClause_return retval = new ANTLRv3Parser.finallyClause_return();
        retval.start = input.LT(1);

        CommonTree root_0 = null;

        Token string_literal92=null;
        Token ACTION93=null;

        CommonTree string_literal92_tree=null;
        CommonTree ACTION93_tree=null;
        RewriteRuleTokenStream stream_ACTION=new RewriteRuleTokenStream(adaptor,"token ACTION");
        RewriteRuleTokenStream stream_85=new RewriteRuleTokenStream(adaptor,"token 85");

        try {
            // org/antlr/grammar/v3/ANTLRv3.g:231:5: ( 'finally' ACTION -> ^( 'finally' ACTION ) )
            // org/antlr/grammar/v3/ANTLRv3.g:231:10: 'finally' ACTION
            {
            string_literal92=(Token)match(input,85,FOLLOW_85_in_finallyClause1473); if (state.failed) return retval; 
            if ( state.backtracking==0 ) stream_85.add(string_literal92);

            ACTION93=(Token)match(input,ACTION,FOLLOW_ACTION_in_finallyClause1475); if (state.failed) return retval; 
            if ( state.backtracking==0 ) stream_ACTION.add(ACTION93);



            // AST REWRITE
            // elements: ACTION, 85
            // token labels: 
            // rule labels: retval
            // token list labels: 
            // rule list labels: 
            // wildcard labels: 
            if ( state.backtracking==0 ) {
            retval.tree = root_0;
            RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

            root_0 = (CommonTree)adaptor.nil();
            // 231:27: -> ^( 'finally' ACTION )
            {
                // org/antlr/grammar/v3/ANTLRv3.g:231:30: ^( 'finally' ACTION )
                {
                CommonTree root_1 = (CommonTree)adaptor.nil();
                root_1 = (CommonTree)adaptor.becomeRoot(stream_85.nextNode(), root_1);

                adaptor.addChild(root_1, stream_ACTION.nextNode());

                adaptor.addChild(root_0, root_1);
                }

            }

            retval.tree = root_0;}
            }

            retval.stop = input.LT(-1);

            if ( state.backtracking==0 ) {

            retval.tree = (CommonTree)adaptor.rulePostProcessing(root_0);
            adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
    	retval.tree = (CommonTree)adaptor.errorNode(input, retval.start, input.LT(-1), re);

        }
        finally {
        }
        return retval;
    }
    // $ANTLR end "finallyClause"

    public static class element_return extends ParserRuleReturnScope {
        CommonTree tree;
        public Object getTree() { return tree; }
    };

    // $ANTLR start "element"
    // org/antlr/grammar/v3/ANTLRv3.g:234:1: element : ( id (labelOp= '=' | labelOp= '+=' ) atom ( ebnfSuffix -> ^( ebnfSuffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] ^( $labelOp id atom ) EOA[\"EOA\"] ) EOB[\"EOB\"] ) ) | -> ^( $labelOp id atom ) ) | id (labelOp= '=' | labelOp= '+=' ) block ( ebnfSuffix -> ^( ebnfSuffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] ^( $labelOp id block ) EOA[\"EOA\"] ) EOB[\"EOB\"] ) ) | -> ^( $labelOp id block ) ) | atom ( ebnfSuffix -> ^( ebnfSuffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] atom EOA[\"EOA\"] ) EOB[\"EOB\"] ) ) | -> atom ) | ebnf | ACTION | SEMPRED (g= '=>' -> GATED_SEMPRED[$g] | -> SEMPRED ) | treeSpec ( ebnfSuffix -> ^( ebnfSuffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] treeSpec EOA[\"EOA\"] ) EOB[\"EOB\"] ) ) | -> treeSpec ) );
    public final ANTLRv3Parser.element_return element() throws RecognitionException {
        ANTLRv3Parser.element_return retval = new ANTLRv3Parser.element_return();
        retval.start = input.LT(1);

        CommonTree root_0 = null;

        Token labelOp=null;
        Token g=null;
        Token ACTION103=null;
        Token SEMPRED104=null;
        ANTLRv3Parser.id_return id94 = null;

        ANTLRv3Parser.atom_return atom95 = null;

        ANTLRv3Parser.ebnfSuffix_return ebnfSuffix96 = null;

        ANTLRv3Parser.id_return id97 = null;

        ANTLRv3Parser.block_return block98 = null;

        ANTLRv3Parser.ebnfSuffix_return ebnfSuffix99 = null;

        ANTLRv3Parser.atom_return atom100 = null;

        ANTLRv3Parser.ebnfSuffix_return ebnfSuffix101 = null;

        ANTLRv3Parser.ebnf_return ebnf102 = null;

        ANTLRv3Parser.treeSpec_return treeSpec105 = null;

        ANTLRv3Parser.ebnfSuffix_return ebnfSuffix106 = null;


        CommonTree labelOp_tree=null;
        CommonTree g_tree=null;
        CommonTree ACTION103_tree=null;
        CommonTree SEMPRED104_tree=null;
        RewriteRuleTokenStream stream_LIST_LABEL_ASSIGN=new RewriteRuleTokenStream(adaptor,"token LIST_LABEL_ASSIGN");
        RewriteRuleTokenStream stream_LABEL_ASSIGN=new RewriteRuleTokenStream(adaptor,"token LABEL_ASSIGN");
        RewriteRuleTokenStream stream_SEMPRED=new RewriteRuleTokenStream(adaptor,"token SEMPRED");
        RewriteRuleTokenStream stream_86=new RewriteRuleTokenStream(adaptor,"token 86");
        RewriteRuleSubtreeStream stream_id=new RewriteRuleSubtreeStream(adaptor,"rule id");
        RewriteRuleSubtreeStream stream_atom=new RewriteRuleSubtreeStream(adaptor,"rule atom");
        RewriteRuleSubtreeStream stream_ebnfSuffix=new RewriteRuleSubtreeStream(adaptor,"rule ebnfSuffix");
        RewriteRuleSubtreeStream stream_block=new RewriteRuleSubtreeStream(adaptor,"rule block");
        RewriteRuleSubtreeStream stream_treeSpec=new RewriteRuleSubtreeStream(adaptor,"rule treeSpec");
        try {
            // org/antlr/grammar/v3/ANTLRv3.g:235:2: ( id (labelOp= '=' | labelOp= '+=' ) atom ( ebnfSuffix -> ^( ebnfSuffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] ^( $labelOp id atom ) EOA[\"EOA\"] ) EOB[\"EOB\"] ) ) | -> ^( $labelOp id atom ) ) | id (labelOp= '=' | labelOp= '+=' ) block ( ebnfSuffix -> ^( ebnfSuffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] ^( $labelOp id block ) EOA[\"EOA\"] ) EOB[\"EOB\"] ) ) | -> ^( $labelOp id block ) ) | atom ( ebnfSuffix -> ^( ebnfSuffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] atom EOA[\"EOA\"] ) EOB[\"EOB\"] ) ) | -> atom ) | ebnf | ACTION | SEMPRED (g= '=>' -> GATED_SEMPRED[$g] | -> SEMPRED ) | treeSpec ( ebnfSuffix -> ^( ebnfSuffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] treeSpec EOA[\"EOA\"] ) EOB[\"EOB\"] ) ) | -> treeSpec ) )
            int alt46=7;
            alt46 = dfa46.predict(input);
            switch (alt46) {
                case 1 :
                    // org/antlr/grammar/v3/ANTLRv3.g:235:4: id (labelOp= '=' | labelOp= '+=' ) atom ( ebnfSuffix -> ^( ebnfSuffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] ^( $labelOp id atom ) EOA[\"EOA\"] ) EOB[\"EOB\"] ) ) | -> ^( $labelOp id atom ) )
                    {
                    pushFollow(FOLLOW_id_in_element1497);
                    id94=id();

                    state._fsp--;
                    if (state.failed) return retval;
                    if ( state.backtracking==0 ) stream_id.add(id94.getTree());
                    // org/antlr/grammar/v3/ANTLRv3.g:235:7: (labelOp= '=' | labelOp= '+=' )
                    int alt39=2;
                    int LA39_0 = input.LA(1);

                    if ( (LA39_0==LABEL_ASSIGN) ) {
                        alt39=1;
                    }
                    else if ( (LA39_0==LIST_LABEL_ASSIGN) ) {
                        alt39=2;
                    }
                    else {
                        if (state.backtracking>0) {state.failed=true; return retval;}
                        NoViableAltException nvae =
                            new NoViableAltException("", 39, 0, input);

                        throw nvae;
                    }
                    switch (alt39) {
                        case 1 :
                            // org/antlr/grammar/v3/ANTLRv3.g:235:8: labelOp= '='
                            {
                            labelOp=(Token)match(input,LABEL_ASSIGN,FOLLOW_LABEL_ASSIGN_in_element1502); if (state.failed) return retval; 
                            if ( state.backtracking==0 ) stream_LABEL_ASSIGN.add(labelOp);


                            }
                            break;
                        case 2 :
                            // org/antlr/grammar/v3/ANTLRv3.g:235:20: labelOp= '+='
                            {
                            labelOp=(Token)match(input,LIST_LABEL_ASSIGN,FOLLOW_LIST_LABEL_ASSIGN_in_element1506); if (state.failed) return retval; 
                            if ( state.backtracking==0 ) stream_LIST_LABEL_ASSIGN.add(labelOp);


                            }
                            break;

                    }

                    pushFollow(FOLLOW_atom_in_element1509);
                    atom95=atom();

                    state._fsp--;
                    if (state.failed) return retval;
                    if ( state.backtracking==0 ) stream_atom.add(atom95.getTree());
                    // org/antlr/grammar/v3/ANTLRv3.g:236:3: ( ebnfSuffix -> ^( ebnfSuffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] ^( $labelOp id atom ) EOA[\"EOA\"] ) EOB[\"EOB\"] ) ) | -> ^( $labelOp id atom ) )
                    int alt40=2;
                    int LA40_0 = input.LA(1);

                    if ( (LA40_0==74||(LA40_0>=91 && LA40_0<=92)) ) {
                        alt40=1;
                    }
                    else if ( (LA40_0==SEMPRED||LA40_0==TREE_BEGIN||LA40_0==REWRITE||(LA40_0>=TOKEN_REF && LA40_0<=ACTION)||LA40_0==RULE_REF||LA40_0==71||(LA40_0>=81 && LA40_0<=83)||LA40_0==87||LA40_0==90) ) {
                        alt40=2;
                    }
                    else {
                        if (state.backtracking>0) {state.failed=true; return retval;}
                        NoViableAltException nvae =
                            new NoViableAltException("", 40, 0, input);

                        throw nvae;
                    }
                    switch (alt40) {
                        case 1 :
                            // org/antlr/grammar/v3/ANTLRv3.g:236:5: ebnfSuffix
                            {
                            pushFollow(FOLLOW_ebnfSuffix_in_element1515);
                            ebnfSuffix96=ebnfSuffix();

                            state._fsp--;
                            if (state.failed) return retval;
                            if ( state.backtracking==0 ) stream_ebnfSuffix.add(ebnfSuffix96.getTree());


                            // AST REWRITE
                            // elements: id, labelOp, atom, ebnfSuffix
                            // token labels: labelOp
                            // rule labels: retval
                            // token list labels: 
                            // rule list labels: 
                            // wildcard labels: 
                            if ( state.backtracking==0 ) {
                            retval.tree = root_0;
                            RewriteRuleTokenStream stream_labelOp=new RewriteRuleTokenStream(adaptor,"token labelOp",labelOp);
                            RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                            root_0 = (CommonTree)adaptor.nil();
                            // 236:16: -> ^( ebnfSuffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] ^( $labelOp id atom ) EOA[\"EOA\"] ) EOB[\"EOB\"] ) )
                            {
                                // org/antlr/grammar/v3/ANTLRv3.g:236:19: ^( ebnfSuffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] ^( $labelOp id atom ) EOA[\"EOA\"] ) EOB[\"EOB\"] ) )
                                {
                                CommonTree root_1 = (CommonTree)adaptor.nil();
                                root_1 = (CommonTree)adaptor.becomeRoot(stream_ebnfSuffix.nextNode(), root_1);

                                // org/antlr/grammar/v3/ANTLRv3.g:236:33: ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] ^( $labelOp id atom ) EOA[\"EOA\"] ) EOB[\"EOB\"] )
                                {
                                CommonTree root_2 = (CommonTree)adaptor.nil();
                                root_2 = (CommonTree)adaptor.becomeRoot((CommonTree)adaptor.create(BLOCK, "BLOCK"), root_2);

                                // org/antlr/grammar/v3/ANTLRv3.g:236:50: ^( ALT[\"ALT\"] ^( $labelOp id atom ) EOA[\"EOA\"] )
                                {
                                CommonTree root_3 = (CommonTree)adaptor.nil();
                                root_3 = (CommonTree)adaptor.becomeRoot((CommonTree)adaptor.create(ALT, "ALT"), root_3);

                                // org/antlr/grammar/v3/ANTLRv3.g:236:63: ^( $labelOp id atom )
                                {
                                CommonTree root_4 = (CommonTree)adaptor.nil();
                                root_4 = (CommonTree)adaptor.becomeRoot(stream_labelOp.nextNode(), root_4);

                                adaptor.addChild(root_4, stream_id.nextTree());
                                adaptor.addChild(root_4, stream_atom.nextTree());

                                adaptor.addChild(root_3, root_4);
                                }
                                adaptor.addChild(root_3, (CommonTree)adaptor.create(EOA, "EOA"));

                                adaptor.addChild(root_2, root_3);
                                }
                                adaptor.addChild(root_2, (CommonTree)adaptor.create(EOB, "EOB"));

                                adaptor.addChild(root_1, root_2);
                                }

                                adaptor.addChild(root_0, root_1);
                                }

                            }

                            retval.tree = root_0;}
                            }
                            break;
                        case 2 :
                            // org/antlr/grammar/v3/ANTLRv3.g:237:8: 
                            {

                            // AST REWRITE
                            // elements: id, atom, labelOp
                            // token labels: labelOp
                            // rule labels: retval
                            // token list labels: 
                            // rule list labels: 
                            // wildcard labels: 
                            if ( state.backtracking==0 ) {
                            retval.tree = root_0;
                            RewriteRuleTokenStream stream_labelOp=new RewriteRuleTokenStream(adaptor,"token labelOp",labelOp);
                            RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                            root_0 = (CommonTree)adaptor.nil();
                            // 237:8: -> ^( $labelOp id atom )
                            {
                                // org/antlr/grammar/v3/ANTLRv3.g:237:11: ^( $labelOp id atom )
                                {
                                CommonTree root_1 = (CommonTree)adaptor.nil();
                                root_1 = (CommonTree)adaptor.becomeRoot(stream_labelOp.nextNode(), root_1);

                                adaptor.addChild(root_1, stream_id.nextTree());
                                adaptor.addChild(root_1, stream_atom.nextTree());

                                adaptor.addChild(root_0, root_1);
                                }

                            }

                            retval.tree = root_0;}
                            }
                            break;

                    }


                    }
                    break;
                case 2 :
                    // org/antlr/grammar/v3/ANTLRv3.g:239:4: id (labelOp= '=' | labelOp= '+=' ) block ( ebnfSuffix -> ^( ebnfSuffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] ^( $labelOp id block ) EOA[\"EOA\"] ) EOB[\"EOB\"] ) ) | -> ^( $labelOp id block ) )
                    {
                    pushFollow(FOLLOW_id_in_element1574);
                    id97=id();

                    state._fsp--;
                    if (state.failed) return retval;
                    if ( state.backtracking==0 ) stream_id.add(id97.getTree());
                    // org/antlr/grammar/v3/ANTLRv3.g:239:7: (labelOp= '=' | labelOp= '+=' )
                    int alt41=2;
                    int LA41_0 = input.LA(1);

                    if ( (LA41_0==LABEL_ASSIGN) ) {
                        alt41=1;
                    }
                    else if ( (LA41_0==LIST_LABEL_ASSIGN) ) {
                        alt41=2;
                    }
                    else {
                        if (state.backtracking>0) {state.failed=true; return retval;}
                        NoViableAltException nvae =
                            new NoViableAltException("", 41, 0, input);

                        throw nvae;
                    }
                    switch (alt41) {
                        case 1 :
                            // org/antlr/grammar/v3/ANTLRv3.g:239:8: labelOp= '='
                            {
                            labelOp=(Token)match(input,LABEL_ASSIGN,FOLLOW_LABEL_ASSIGN_in_element1579); if (state.failed) return retval; 
                            if ( state.backtracking==0 ) stream_LABEL_ASSIGN.add(labelOp);


                            }
                            break;
                        case 2 :
                            // org/antlr/grammar/v3/ANTLRv3.g:239:20: labelOp= '+='
                            {
                            labelOp=(Token)match(input,LIST_LABEL_ASSIGN,FOLLOW_LIST_LABEL_ASSIGN_in_element1583); if (state.failed) return retval; 
                            if ( state.backtracking==0 ) stream_LIST_LABEL_ASSIGN.add(labelOp);


                            }
                            break;

                    }

                    pushFollow(FOLLOW_block_in_element1586);
                    block98=block();

                    state._fsp--;
                    if (state.failed) return retval;
                    if ( state.backtracking==0 ) stream_block.add(block98.getTree());
                    // org/antlr/grammar/v3/ANTLRv3.g:240:3: ( ebnfSuffix -> ^( ebnfSuffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] ^( $labelOp id block ) EOA[\"EOA\"] ) EOB[\"EOB\"] ) ) | -> ^( $labelOp id block ) )
                    int alt42=2;
                    int LA42_0 = input.LA(1);

                    if ( (LA42_0==74||(LA42_0>=91 && LA42_0<=92)) ) {
                        alt42=1;
                    }
                    else if ( (LA42_0==SEMPRED||LA42_0==TREE_BEGIN||LA42_0==REWRITE||(LA42_0>=TOKEN_REF && LA42_0<=ACTION)||LA42_0==RULE_REF||LA42_0==71||(LA42_0>=81 && LA42_0<=83)||LA42_0==87||LA42_0==90) ) {
                        alt42=2;
                    }
                    else {
                        if (state.backtracking>0) {state.failed=true; return retval;}
                        NoViableAltException nvae =
                            new NoViableAltException("", 42, 0, input);

                        throw nvae;
                    }
                    switch (alt42) {
                        case 1 :
                            // org/antlr/grammar/v3/ANTLRv3.g:240:5: ebnfSuffix
                            {
                            pushFollow(FOLLOW_ebnfSuffix_in_element1592);
                            ebnfSuffix99=ebnfSuffix();

                            state._fsp--;
                            if (state.failed) return retval;
                            if ( state.backtracking==0 ) stream_ebnfSuffix.add(ebnfSuffix99.getTree());


                            // AST REWRITE
                            // elements: labelOp, block, id, ebnfSuffix
                            // token labels: labelOp
                            // rule labels: retval
                            // token list labels: 
                            // rule list labels: 
                            // wildcard labels: 
                            if ( state.backtracking==0 ) {
                            retval.tree = root_0;
                            RewriteRuleTokenStream stream_labelOp=new RewriteRuleTokenStream(adaptor,"token labelOp",labelOp);
                            RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                            root_0 = (CommonTree)adaptor.nil();
                            // 240:16: -> ^( ebnfSuffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] ^( $labelOp id block ) EOA[\"EOA\"] ) EOB[\"EOB\"] ) )
                            {
                                // org/antlr/grammar/v3/ANTLRv3.g:240:19: ^( ebnfSuffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] ^( $labelOp id block ) EOA[\"EOA\"] ) EOB[\"EOB\"] ) )
                                {
                                CommonTree root_1 = (CommonTree)adaptor.nil();
                                root_1 = (CommonTree)adaptor.becomeRoot(stream_ebnfSuffix.nextNode(), root_1);

                                // org/antlr/grammar/v3/ANTLRv3.g:240:33: ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] ^( $labelOp id block ) EOA[\"EOA\"] ) EOB[\"EOB\"] )
                                {
                                CommonTree root_2 = (CommonTree)adaptor.nil();
                                root_2 = (CommonTree)adaptor.becomeRoot((CommonTree)adaptor.create(BLOCK, "BLOCK"), root_2);

                                // org/antlr/grammar/v3/ANTLRv3.g:240:50: ^( ALT[\"ALT\"] ^( $labelOp id block ) EOA[\"EOA\"] )
                                {
                                CommonTree root_3 = (CommonTree)adaptor.nil();
                                root_3 = (CommonTree)adaptor.becomeRoot((CommonTree)adaptor.create(ALT, "ALT"), root_3);

                                // org/antlr/grammar/v3/ANTLRv3.g:240:63: ^( $labelOp id block )
                                {
                                CommonTree root_4 = (CommonTree)adaptor.nil();
                                root_4 = (CommonTree)adaptor.becomeRoot(stream_labelOp.nextNode(), root_4);

                                adaptor.addChild(root_4, stream_id.nextTree());
                                adaptor.addChild(root_4, stream_block.nextTree());

                                adaptor.addChild(root_3, root_4);
                                }
                                adaptor.addChild(root_3, (CommonTree)adaptor.create(EOA, "EOA"));

                                adaptor.addChild(root_2, root_3);
                                }
                                adaptor.addChild(root_2, (CommonTree)adaptor.create(EOB, "EOB"));

                                adaptor.addChild(root_1, root_2);
                                }

                                adaptor.addChild(root_0, root_1);
                                }

                            }

                            retval.tree = root_0;}
                            }
                            break;
                        case 2 :
                            // org/antlr/grammar/v3/ANTLRv3.g:241:8: 
                            {

                            // AST REWRITE
                            // elements: id, labelOp, block
                            // token labels: labelOp
                            // rule labels: retval
                            // token list labels: 
                            // rule list labels: 
                            // wildcard labels: 
                            if ( state.backtracking==0 ) {
                            retval.tree = root_0;
                            RewriteRuleTokenStream stream_labelOp=new RewriteRuleTokenStream(adaptor,"token labelOp",labelOp);
                            RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                            root_0 = (CommonTree)adaptor.nil();
                            // 241:8: -> ^( $labelOp id block )
                            {
                                // org/antlr/grammar/v3/ANTLRv3.g:241:11: ^( $labelOp id block )
                                {
                                CommonTree root_1 = (CommonTree)adaptor.nil();
                                root_1 = (CommonTree)adaptor.becomeRoot(stream_labelOp.nextNode(), root_1);

                                adaptor.addChild(root_1, stream_id.nextTree());
                                adaptor.addChild(root_1, stream_block.nextTree());

                                adaptor.addChild(root_0, root_1);
                                }

                            }

                            retval.tree = root_0;}
                            }
                            break;

                    }


                    }
                    break;
                case 3 :
                    // org/antlr/grammar/v3/ANTLRv3.g:243:4: atom ( ebnfSuffix -> ^( ebnfSuffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] atom EOA[\"EOA\"] ) EOB[\"EOB\"] ) ) | -> atom )
                    {
                    pushFollow(FOLLOW_atom_in_element1651);
                    atom100=atom();

                    state._fsp--;
                    if (state.failed) return retval;
                    if ( state.backtracking==0 ) stream_atom.add(atom100.getTree());
                    // org/antlr/grammar/v3/ANTLRv3.g:244:3: ( ebnfSuffix -> ^( ebnfSuffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] atom EOA[\"EOA\"] ) EOB[\"EOB\"] ) ) | -> atom )
                    int alt43=2;
                    int LA43_0 = input.LA(1);

                    if ( (LA43_0==74||(LA43_0>=91 && LA43_0<=92)) ) {
                        alt43=1;
                    }
                    else if ( (LA43_0==SEMPRED||LA43_0==TREE_BEGIN||LA43_0==REWRITE||(LA43_0>=TOKEN_REF && LA43_0<=ACTION)||LA43_0==RULE_REF||LA43_0==71||(LA43_0>=81 && LA43_0<=83)||LA43_0==87||LA43_0==90) ) {
                        alt43=2;
                    }
                    else {
                        if (state.backtracking>0) {state.failed=true; return retval;}
                        NoViableAltException nvae =
                            new NoViableAltException("", 43, 0, input);

                        throw nvae;
                    }
                    switch (alt43) {
                        case 1 :
                            // org/antlr/grammar/v3/ANTLRv3.g:244:5: ebnfSuffix
                            {
                            pushFollow(FOLLOW_ebnfSuffix_in_element1657);
                            ebnfSuffix101=ebnfSuffix();

                            state._fsp--;
                            if (state.failed) return retval;
                            if ( state.backtracking==0 ) stream_ebnfSuffix.add(ebnfSuffix101.getTree());


                            // AST REWRITE
                            // elements: atom, ebnfSuffix
                            // token labels: 
                            // rule labels: retval
                            // token list labels: 
                            // rule list labels: 
                            // wildcard labels: 
                            if ( state.backtracking==0 ) {
                            retval.tree = root_0;
                            RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                            root_0 = (CommonTree)adaptor.nil();
                            // 244:16: -> ^( ebnfSuffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] atom EOA[\"EOA\"] ) EOB[\"EOB\"] ) )
                            {
                                // org/antlr/grammar/v3/ANTLRv3.g:244:19: ^( ebnfSuffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] atom EOA[\"EOA\"] ) EOB[\"EOB\"] ) )
                                {
                                CommonTree root_1 = (CommonTree)adaptor.nil();
                                root_1 = (CommonTree)adaptor.becomeRoot(stream_ebnfSuffix.nextNode(), root_1);

                                // org/antlr/grammar/v3/ANTLRv3.g:244:33: ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] atom EOA[\"EOA\"] ) EOB[\"EOB\"] )
                                {
                                CommonTree root_2 = (CommonTree)adaptor.nil();
                                root_2 = (CommonTree)adaptor.becomeRoot((CommonTree)adaptor.create(BLOCK, "BLOCK"), root_2);

                                // org/antlr/grammar/v3/ANTLRv3.g:244:50: ^( ALT[\"ALT\"] atom EOA[\"EOA\"] )
                                {
                                CommonTree root_3 = (CommonTree)adaptor.nil();
                                root_3 = (CommonTree)adaptor.becomeRoot((CommonTree)adaptor.create(ALT, "ALT"), root_3);

                                adaptor.addChild(root_3, stream_atom.nextTree());
                                adaptor.addChild(root_3, (CommonTree)adaptor.create(EOA, "EOA"));

                                adaptor.addChild(root_2, root_3);
                                }
                                adaptor.addChild(root_2, (CommonTree)adaptor.create(EOB, "EOB"));

                                adaptor.addChild(root_1, root_2);
                                }

                                adaptor.addChild(root_0, root_1);
                                }

                            }

                            retval.tree = root_0;}
                            }
                            break;
                        case 2 :
                            // org/antlr/grammar/v3/ANTLRv3.g:245:8: 
                            {

                            // AST REWRITE
                            // elements: atom
                            // token labels: 
                            // rule labels: retval
                            // token list labels: 
                            // rule list labels: 
                            // wildcard labels: 
                            if ( state.backtracking==0 ) {
                            retval.tree = root_0;
                            RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                            root_0 = (CommonTree)adaptor.nil();
                            // 245:8: -> atom
                            {
                                adaptor.addChild(root_0, stream_atom.nextTree());

                            }

                            retval.tree = root_0;}
                            }
                            break;

                    }


                    }
                    break;
                case 4 :
                    // org/antlr/grammar/v3/ANTLRv3.g:247:4: ebnf
                    {
                    root_0 = (CommonTree)adaptor.nil();

                    pushFollow(FOLLOW_ebnf_in_element1703);
                    ebnf102=ebnf();

                    state._fsp--;
                    if (state.failed) return retval;
                    if ( state.backtracking==0 ) adaptor.addChild(root_0, ebnf102.getTree());

                    }
                    break;
                case 5 :
                    // org/antlr/grammar/v3/ANTLRv3.g:248:6: ACTION
                    {
                    root_0 = (CommonTree)adaptor.nil();

                    ACTION103=(Token)match(input,ACTION,FOLLOW_ACTION_in_element1710); if (state.failed) return retval;
                    if ( state.backtracking==0 ) {
                    ACTION103_tree = (CommonTree)adaptor.create(ACTION103);
                    adaptor.addChild(root_0, ACTION103_tree);
                    }

                    }
                    break;
                case 6 :
                    // org/antlr/grammar/v3/ANTLRv3.g:249:6: SEMPRED (g= '=>' -> GATED_SEMPRED[$g] | -> SEMPRED )
                    {
                    SEMPRED104=(Token)match(input,SEMPRED,FOLLOW_SEMPRED_in_element1717); if (state.failed) return retval; 
                    if ( state.backtracking==0 ) stream_SEMPRED.add(SEMPRED104);

                    // org/antlr/grammar/v3/ANTLRv3.g:249:14: (g= '=>' -> GATED_SEMPRED[$g] | -> SEMPRED )
                    int alt44=2;
                    int LA44_0 = input.LA(1);

                    if ( (LA44_0==86) ) {
                        alt44=1;
                    }
                    else if ( (LA44_0==SEMPRED||LA44_0==TREE_BEGIN||LA44_0==REWRITE||(LA44_0>=TOKEN_REF && LA44_0<=ACTION)||LA44_0==RULE_REF||LA44_0==71||(LA44_0>=81 && LA44_0<=83)||LA44_0==87||LA44_0==90) ) {
                        alt44=2;
                    }
                    else {
                        if (state.backtracking>0) {state.failed=true; return retval;}
                        NoViableAltException nvae =
                            new NoViableAltException("", 44, 0, input);

                        throw nvae;
                    }
                    switch (alt44) {
                        case 1 :
                            // org/antlr/grammar/v3/ANTLRv3.g:249:16: g= '=>'
                            {
                            g=(Token)match(input,86,FOLLOW_86_in_element1723); if (state.failed) return retval; 
                            if ( state.backtracking==0 ) stream_86.add(g);



                            // AST REWRITE
                            // elements: 
                            // token labels: 
                            // rule labels: retval
                            // token list labels: 
                            // rule list labels: 
                            // wildcard labels: 
                            if ( state.backtracking==0 ) {
                            retval.tree = root_0;
                            RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                            root_0 = (CommonTree)adaptor.nil();
                            // 249:23: -> GATED_SEMPRED[$g]
                            {
                                adaptor.addChild(root_0, (CommonTree)adaptor.create(GATED_SEMPRED, g));

                            }

                            retval.tree = root_0;}
                            }
                            break;
                        case 2 :
                            // org/antlr/grammar/v3/ANTLRv3.g:249:46: 
                            {

                            // AST REWRITE
                            // elements: SEMPRED
                            // token labels: 
                            // rule labels: retval
                            // token list labels: 
                            // rule list labels: 
                            // wildcard labels: 
                            if ( state.backtracking==0 ) {
                            retval.tree = root_0;
                            RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                            root_0 = (CommonTree)adaptor.nil();
                            // 249:46: -> SEMPRED
                            {
                                adaptor.addChild(root_0, stream_SEMPRED.nextNode());

                            }

                            retval.tree = root_0;}
                            }
                            break;

                    }


                    }
                    break;
                case 7 :
                    // org/antlr/grammar/v3/ANTLRv3.g:250:6: treeSpec ( ebnfSuffix -> ^( ebnfSuffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] treeSpec EOA[\"EOA\"] ) EOB[\"EOB\"] ) ) | -> treeSpec )
                    {
                    pushFollow(FOLLOW_treeSpec_in_element1743);
                    treeSpec105=treeSpec();

                    state._fsp--;
                    if (state.failed) return retval;
                    if ( state.backtracking==0 ) stream_treeSpec.add(treeSpec105.getTree());
                    // org/antlr/grammar/v3/ANTLRv3.g:251:3: ( ebnfSuffix -> ^( ebnfSuffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] treeSpec EOA[\"EOA\"] ) EOB[\"EOB\"] ) ) | -> treeSpec )
                    int alt45=2;
                    int LA45_0 = input.LA(1);

                    if ( (LA45_0==74||(LA45_0>=91 && LA45_0<=92)) ) {
                        alt45=1;
                    }
                    else if ( (LA45_0==SEMPRED||LA45_0==TREE_BEGIN||LA45_0==REWRITE||(LA45_0>=TOKEN_REF && LA45_0<=ACTION)||LA45_0==RULE_REF||LA45_0==71||(LA45_0>=81 && LA45_0<=83)||LA45_0==87||LA45_0==90) ) {
                        alt45=2;
                    }
                    else {
                        if (state.backtracking>0) {state.failed=true; return retval;}
                        NoViableAltException nvae =
                            new NoViableAltException("", 45, 0, input);

                        throw nvae;
                    }
                    switch (alt45) {
                        case 1 :
                            // org/antlr/grammar/v3/ANTLRv3.g:251:5: ebnfSuffix
                            {
                            pushFollow(FOLLOW_ebnfSuffix_in_element1749);
                            ebnfSuffix106=ebnfSuffix();

                            state._fsp--;
                            if (state.failed) return retval;
                            if ( state.backtracking==0 ) stream_ebnfSuffix.add(ebnfSuffix106.getTree());


                            // AST REWRITE
                            // elements: ebnfSuffix, treeSpec
                            // token labels: 
                            // rule labels: retval
                            // token list labels: 
                            // rule list labels: 
                            // wildcard labels: 
                            if ( state.backtracking==0 ) {
                            retval.tree = root_0;
                            RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                            root_0 = (CommonTree)adaptor.nil();
                            // 251:16: -> ^( ebnfSuffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] treeSpec EOA[\"EOA\"] ) EOB[\"EOB\"] ) )
                            {
                                // org/antlr/grammar/v3/ANTLRv3.g:251:19: ^( ebnfSuffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] treeSpec EOA[\"EOA\"] ) EOB[\"EOB\"] ) )
                                {
                                CommonTree root_1 = (CommonTree)adaptor.nil();
                                root_1 = (CommonTree)adaptor.becomeRoot(stream_ebnfSuffix.nextNode(), root_1);

                                // org/antlr/grammar/v3/ANTLRv3.g:251:33: ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] treeSpec EOA[\"EOA\"] ) EOB[\"EOB\"] )
                                {
                                CommonTree root_2 = (CommonTree)adaptor.nil();
                                root_2 = (CommonTree)adaptor.becomeRoot((CommonTree)adaptor.create(BLOCK, "BLOCK"), root_2);

                                // org/antlr/grammar/v3/ANTLRv3.g:251:50: ^( ALT[\"ALT\"] treeSpec EOA[\"EOA\"] )
                                {
                                CommonTree root_3 = (CommonTree)adaptor.nil();
                                root_3 = (CommonTree)adaptor.becomeRoot((CommonTree)adaptor.create(ALT, "ALT"), root_3);

                                adaptor.addChild(root_3, stream_treeSpec.nextTree());
                                adaptor.addChild(root_3, (CommonTree)adaptor.create(EOA, "EOA"));

                                adaptor.addChild(root_2, root_3);
                                }
                                adaptor.addChild(root_2, (CommonTree)adaptor.create(EOB, "EOB"));

                                adaptor.addChild(root_1, root_2);
                                }

                                adaptor.addChild(root_0, root_1);
                                }

                            }

                            retval.tree = root_0;}
                            }
                            break;
                        case 2 :
                            // org/antlr/grammar/v3/ANTLRv3.g:252:8: 
                            {

                            // AST REWRITE
                            // elements: treeSpec
                            // token labels: 
                            // rule labels: retval
                            // token list labels: 
                            // rule list labels: 
                            // wildcard labels: 
                            if ( state.backtracking==0 ) {
                            retval.tree = root_0;
                            RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                            root_0 = (CommonTree)adaptor.nil();
                            // 252:8: -> treeSpec
                            {
                                adaptor.addChild(root_0, stream_treeSpec.nextTree());

                            }

                            retval.tree = root_0;}
                            }
                            break;

                    }


                    }
                    break;

            }
            retval.stop = input.LT(-1);

            if ( state.backtracking==0 ) {

            retval.tree = (CommonTree)adaptor.rulePostProcessing(root_0);
            adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
    	retval.tree = (CommonTree)adaptor.errorNode(input, retval.start, input.LT(-1), re);

        }
        finally {
        }
        return retval;
    }
    // $ANTLR end "element"

    public static class atom_return extends ParserRuleReturnScope {
        CommonTree tree;
        public Object getTree() { return tree; }
    };

    // $ANTLR start "atom"
    // org/antlr/grammar/v3/ANTLRv3.g:256:1: atom : ( terminal | range ( (op= '^' | op= '!' ) -> ^( $op range ) | -> range ) | notSet ( (op= '^' | op= '!' ) -> ^( $op notSet ) | -> notSet ) | RULE_REF ( ARG_ACTION )? ( (op= '^' | op= '!' ) -> ^( $op RULE_REF ( ARG_ACTION )? ) | -> ^( RULE_REF ( ARG_ACTION )? ) ) );
    public final ANTLRv3Parser.atom_return atom() throws RecognitionException {
        ANTLRv3Parser.atom_return retval = new ANTLRv3Parser.atom_return();
        retval.start = input.LT(1);

        CommonTree root_0 = null;

        Token op=null;
        Token RULE_REF110=null;
        Token ARG_ACTION111=null;
        ANTLRv3Parser.terminal_return terminal107 = null;

        ANTLRv3Parser.range_return range108 = null;

        ANTLRv3Parser.notSet_return notSet109 = null;


        CommonTree op_tree=null;
        CommonTree RULE_REF110_tree=null;
        CommonTree ARG_ACTION111_tree=null;
        RewriteRuleTokenStream stream_BANG=new RewriteRuleTokenStream(adaptor,"token BANG");
        RewriteRuleTokenStream stream_ROOT=new RewriteRuleTokenStream(adaptor,"token ROOT");
        RewriteRuleTokenStream stream_RULE_REF=new RewriteRuleTokenStream(adaptor,"token RULE_REF");
        RewriteRuleTokenStream stream_ARG_ACTION=new RewriteRuleTokenStream(adaptor,"token ARG_ACTION");
        RewriteRuleSubtreeStream stream_range=new RewriteRuleSubtreeStream(adaptor,"rule range");
        RewriteRuleSubtreeStream stream_notSet=new RewriteRuleSubtreeStream(adaptor,"rule notSet");
        try {
            // org/antlr/grammar/v3/ANTLRv3.g:256:5: ( terminal | range ( (op= '^' | op= '!' ) -> ^( $op range ) | -> range ) | notSet ( (op= '^' | op= '!' ) -> ^( $op notSet ) | -> notSet ) | RULE_REF ( ARG_ACTION )? ( (op= '^' | op= '!' ) -> ^( $op RULE_REF ( ARG_ACTION )? ) | -> ^( RULE_REF ( ARG_ACTION )? ) ) )
            int alt54=4;
            switch ( input.LA(1) ) {
            case CHAR_LITERAL:
                {
                int LA54_1 = input.LA(2);

                if ( (LA54_1==RANGE) ) {
                    alt54=2;
                }
                else if ( (LA54_1==SEMPRED||(LA54_1>=TREE_BEGIN && LA54_1<=REWRITE)||(LA54_1>=TOKEN_REF && LA54_1<=ACTION)||LA54_1==RULE_REF||LA54_1==71||LA54_1==74||(LA54_1>=81 && LA54_1<=83)||(LA54_1>=87 && LA54_1<=88)||(LA54_1>=90 && LA54_1<=92)) ) {
                    alt54=1;
                }
                else {
                    if (state.backtracking>0) {state.failed=true; return retval;}
                    NoViableAltException nvae =
                        new NoViableAltException("", 54, 1, input);

                    throw nvae;
                }
                }
                break;
            case TOKEN_REF:
            case STRING_LITERAL:
            case 90:
                {
                alt54=1;
                }
                break;
            case 87:
                {
                alt54=3;
                }
                break;
            case RULE_REF:
                {
                alt54=4;
                }
                break;
            default:
                if (state.backtracking>0) {state.failed=true; return retval;}
                NoViableAltException nvae =
                    new NoViableAltException("", 54, 0, input);

                throw nvae;
            }

            switch (alt54) {
                case 1 :
                    // org/antlr/grammar/v3/ANTLRv3.g:256:9: terminal
                    {
                    root_0 = (CommonTree)adaptor.nil();

                    pushFollow(FOLLOW_terminal_in_atom1801);
                    terminal107=terminal();

                    state._fsp--;
                    if (state.failed) return retval;
                    if ( state.backtracking==0 ) adaptor.addChild(root_0, terminal107.getTree());

                    }
                    break;
                case 2 :
                    // org/antlr/grammar/v3/ANTLRv3.g:257:4: range ( (op= '^' | op= '!' ) -> ^( $op range ) | -> range )
                    {
                    pushFollow(FOLLOW_range_in_atom1806);
                    range108=range();

                    state._fsp--;
                    if (state.failed) return retval;
                    if ( state.backtracking==0 ) stream_range.add(range108.getTree());
                    // org/antlr/grammar/v3/ANTLRv3.g:258:3: ( (op= '^' | op= '!' ) -> ^( $op range ) | -> range )
                    int alt48=2;
                    int LA48_0 = input.LA(1);

                    if ( ((LA48_0>=ROOT && LA48_0<=BANG)) ) {
                        alt48=1;
                    }
                    else if ( (LA48_0==SEMPRED||LA48_0==TREE_BEGIN||LA48_0==REWRITE||(LA48_0>=TOKEN_REF && LA48_0<=ACTION)||LA48_0==RULE_REF||LA48_0==71||LA48_0==74||(LA48_0>=81 && LA48_0<=83)||LA48_0==87||(LA48_0>=90 && LA48_0<=92)) ) {
                        alt48=2;
                    }
                    else {
                        if (state.backtracking>0) {state.failed=true; return retval;}
                        NoViableAltException nvae =
                            new NoViableAltException("", 48, 0, input);

                        throw nvae;
                    }
                    switch (alt48) {
                        case 1 :
                            // org/antlr/grammar/v3/ANTLRv3.g:258:5: (op= '^' | op= '!' )
                            {
                            // org/antlr/grammar/v3/ANTLRv3.g:258:5: (op= '^' | op= '!' )
                            int alt47=2;
                            int LA47_0 = input.LA(1);

                            if ( (LA47_0==ROOT) ) {
                                alt47=1;
                            }
                            else if ( (LA47_0==BANG) ) {
                                alt47=2;
                            }
                            else {
                                if (state.backtracking>0) {state.failed=true; return retval;}
                                NoViableAltException nvae =
                                    new NoViableAltException("", 47, 0, input);

                                throw nvae;
                            }
                            switch (alt47) {
                                case 1 :
                                    // org/antlr/grammar/v3/ANTLRv3.g:258:6: op= '^'
                                    {
                                    op=(Token)match(input,ROOT,FOLLOW_ROOT_in_atom1816); if (state.failed) return retval; 
                                    if ( state.backtracking==0 ) stream_ROOT.add(op);


                                    }
                                    break;
                                case 2 :
                                    // org/antlr/grammar/v3/ANTLRv3.g:258:13: op= '!'
                                    {
                                    op=(Token)match(input,BANG,FOLLOW_BANG_in_atom1820); if (state.failed) return retval; 
                                    if ( state.backtracking==0 ) stream_BANG.add(op);


                                    }
                                    break;

                            }



                            // AST REWRITE
                            // elements: op, range
                            // token labels: op
                            // rule labels: retval
                            // token list labels: 
                            // rule list labels: 
                            // wildcard labels: 
                            if ( state.backtracking==0 ) {
                            retval.tree = root_0;
                            RewriteRuleTokenStream stream_op=new RewriteRuleTokenStream(adaptor,"token op",op);
                            RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                            root_0 = (CommonTree)adaptor.nil();
                            // 258:21: -> ^( $op range )
                            {
                                // org/antlr/grammar/v3/ANTLRv3.g:258:24: ^( $op range )
                                {
                                CommonTree root_1 = (CommonTree)adaptor.nil();
                                root_1 = (CommonTree)adaptor.becomeRoot(stream_op.nextNode(), root_1);

                                adaptor.addChild(root_1, stream_range.nextTree());

                                adaptor.addChild(root_0, root_1);
                                }

                            }

                            retval.tree = root_0;}
                            }
                            break;
                        case 2 :
                            // org/antlr/grammar/v3/ANTLRv3.g:259:9: 
                            {

                            // AST REWRITE
                            // elements: range
                            // token labels: 
                            // rule labels: retval
                            // token list labels: 
                            // rule list labels: 
                            // wildcard labels: 
                            if ( state.backtracking==0 ) {
                            retval.tree = root_0;
                            RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                            root_0 = (CommonTree)adaptor.nil();
                            // 259:9: -> range
                            {
                                adaptor.addChild(root_0, stream_range.nextTree());

                            }

                            retval.tree = root_0;}
                            }
                            break;

                    }


                    }
                    break;
                case 3 :
                    // org/antlr/grammar/v3/ANTLRv3.g:261:7: notSet ( (op= '^' | op= '!' ) -> ^( $op notSet ) | -> notSet )
                    {
                    pushFollow(FOLLOW_notSet_in_atom1854);
                    notSet109=notSet();

                    state._fsp--;
                    if (state.failed) return retval;
                    if ( state.backtracking==0 ) stream_notSet.add(notSet109.getTree());
                    // org/antlr/grammar/v3/ANTLRv3.g:262:3: ( (op= '^' | op= '!' ) -> ^( $op notSet ) | -> notSet )
                    int alt50=2;
                    int LA50_0 = input.LA(1);

                    if ( ((LA50_0>=ROOT && LA50_0<=BANG)) ) {
                        alt50=1;
                    }
                    else if ( (LA50_0==SEMPRED||LA50_0==TREE_BEGIN||LA50_0==REWRITE||(LA50_0>=TOKEN_REF && LA50_0<=ACTION)||LA50_0==RULE_REF||LA50_0==71||LA50_0==74||(LA50_0>=81 && LA50_0<=83)||LA50_0==87||(LA50_0>=90 && LA50_0<=92)) ) {
                        alt50=2;
                    }
                    else {
                        if (state.backtracking>0) {state.failed=true; return retval;}
                        NoViableAltException nvae =
                            new NoViableAltException("", 50, 0, input);

                        throw nvae;
                    }
                    switch (alt50) {
                        case 1 :
                            // org/antlr/grammar/v3/ANTLRv3.g:262:5: (op= '^' | op= '!' )
                            {
                            // org/antlr/grammar/v3/ANTLRv3.g:262:5: (op= '^' | op= '!' )
                            int alt49=2;
                            int LA49_0 = input.LA(1);

                            if ( (LA49_0==ROOT) ) {
                                alt49=1;
                            }
                            else if ( (LA49_0==BANG) ) {
                                alt49=2;
                            }
                            else {
                                if (state.backtracking>0) {state.failed=true; return retval;}
                                NoViableAltException nvae =
                                    new NoViableAltException("", 49, 0, input);

                                throw nvae;
                            }
                            switch (alt49) {
                                case 1 :
                                    // org/antlr/grammar/v3/ANTLRv3.g:262:6: op= '^'
                                    {
                                    op=(Token)match(input,ROOT,FOLLOW_ROOT_in_atom1863); if (state.failed) return retval; 
                                    if ( state.backtracking==0 ) stream_ROOT.add(op);


                                    }
                                    break;
                                case 2 :
                                    // org/antlr/grammar/v3/ANTLRv3.g:262:13: op= '!'
                                    {
                                    op=(Token)match(input,BANG,FOLLOW_BANG_in_atom1867); if (state.failed) return retval; 
                                    if ( state.backtracking==0 ) stream_BANG.add(op);


                                    }
                                    break;

                            }



                            // AST REWRITE
                            // elements: notSet, op
                            // token labels: op
                            // rule labels: retval
                            // token list labels: 
                            // rule list labels: 
                            // wildcard labels: 
                            if ( state.backtracking==0 ) {
                            retval.tree = root_0;
                            RewriteRuleTokenStream stream_op=new RewriteRuleTokenStream(adaptor,"token op",op);
                            RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                            root_0 = (CommonTree)adaptor.nil();
                            // 262:21: -> ^( $op notSet )
                            {
                                // org/antlr/grammar/v3/ANTLRv3.g:262:24: ^( $op notSet )
                                {
                                CommonTree root_1 = (CommonTree)adaptor.nil();
                                root_1 = (CommonTree)adaptor.becomeRoot(stream_op.nextNode(), root_1);

                                adaptor.addChild(root_1, stream_notSet.nextTree());

                                adaptor.addChild(root_0, root_1);
                                }

                            }

                            retval.tree = root_0;}
                            }
                            break;
                        case 2 :
                            // org/antlr/grammar/v3/ANTLRv3.g:263:9: 
                            {

                            // AST REWRITE
                            // elements: notSet
                            // token labels: 
                            // rule labels: retval
                            // token list labels: 
                            // rule list labels: 
                            // wildcard labels: 
                            if ( state.backtracking==0 ) {
                            retval.tree = root_0;
                            RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                            root_0 = (CommonTree)adaptor.nil();
                            // 263:9: -> notSet
                            {
                                adaptor.addChild(root_0, stream_notSet.nextTree());

                            }

                            retval.tree = root_0;}
                            }
                            break;

                    }


                    }
                    break;
                case 4 :
                    // org/antlr/grammar/v3/ANTLRv3.g:265:9: RULE_REF ( ARG_ACTION )? ( (op= '^' | op= '!' ) -> ^( $op RULE_REF ( ARG_ACTION )? ) | -> ^( RULE_REF ( ARG_ACTION )? ) )
                    {
                    RULE_REF110=(Token)match(input,RULE_REF,FOLLOW_RULE_REF_in_atom1903); if (state.failed) return retval; 
                    if ( state.backtracking==0 ) stream_RULE_REF.add(RULE_REF110);

                    // org/antlr/grammar/v3/ANTLRv3.g:265:18: ( ARG_ACTION )?
                    int alt51=2;
                    int LA51_0 = input.LA(1);

                    if ( (LA51_0==ARG_ACTION) ) {
                        alt51=1;
                    }
                    switch (alt51) {
                        case 1 :
                            // org/antlr/grammar/v3/ANTLRv3.g:265:18: ARG_ACTION
                            {
                            ARG_ACTION111=(Token)match(input,ARG_ACTION,FOLLOW_ARG_ACTION_in_atom1905); if (state.failed) return retval; 
                            if ( state.backtracking==0 ) stream_ARG_ACTION.add(ARG_ACTION111);


                            }
                            break;

                    }

                    // org/antlr/grammar/v3/ANTLRv3.g:266:3: ( (op= '^' | op= '!' ) -> ^( $op RULE_REF ( ARG_ACTION )? ) | -> ^( RULE_REF ( ARG_ACTION )? ) )
                    int alt53=2;
                    int LA53_0 = input.LA(1);

                    if ( ((LA53_0>=ROOT && LA53_0<=BANG)) ) {
                        alt53=1;
                    }
                    else if ( (LA53_0==SEMPRED||LA53_0==TREE_BEGIN||LA53_0==REWRITE||(LA53_0>=TOKEN_REF && LA53_0<=ACTION)||LA53_0==RULE_REF||LA53_0==71||LA53_0==74||(LA53_0>=81 && LA53_0<=83)||LA53_0==87||(LA53_0>=90 && LA53_0<=92)) ) {
                        alt53=2;
                    }
                    else {
                        if (state.backtracking>0) {state.failed=true; return retval;}
                        NoViableAltException nvae =
                            new NoViableAltException("", 53, 0, input);

                        throw nvae;
                    }
                    switch (alt53) {
                        case 1 :
                            // org/antlr/grammar/v3/ANTLRv3.g:266:5: (op= '^' | op= '!' )
                            {
                            // org/antlr/grammar/v3/ANTLRv3.g:266:5: (op= '^' | op= '!' )
                            int alt52=2;
                            int LA52_0 = input.LA(1);

                            if ( (LA52_0==ROOT) ) {
                                alt52=1;
                            }
                            else if ( (LA52_0==BANG) ) {
                                alt52=2;
                            }
                            else {
                                if (state.backtracking>0) {state.failed=true; return retval;}
                                NoViableAltException nvae =
                                    new NoViableAltException("", 52, 0, input);

                                throw nvae;
                            }
                            switch (alt52) {
                                case 1 :
                                    // org/antlr/grammar/v3/ANTLRv3.g:266:6: op= '^'
                                    {
                                    op=(Token)match(input,ROOT,FOLLOW_ROOT_in_atom1915); if (state.failed) return retval; 
                                    if ( state.backtracking==0 ) stream_ROOT.add(op);


                                    }
                                    break;
                                case 2 :
                                    // org/antlr/grammar/v3/ANTLRv3.g:266:13: op= '!'
                                    {
                                    op=(Token)match(input,BANG,FOLLOW_BANG_in_atom1919); if (state.failed) return retval; 
                                    if ( state.backtracking==0 ) stream_BANG.add(op);


                                    }
                                    break;

                            }



                            // AST REWRITE
                            // elements: op, RULE_REF, ARG_ACTION
                            // token labels: op
                            // rule labels: retval
                            // token list labels: 
                            // rule list labels: 
                            // wildcard labels: 
                            if ( state.backtracking==0 ) {
                            retval.tree = root_0;
                            RewriteRuleTokenStream stream_op=new RewriteRuleTokenStream(adaptor,"token op",op);
                            RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                            root_0 = (CommonTree)adaptor.nil();
                            // 266:21: -> ^( $op RULE_REF ( ARG_ACTION )? )
                            {
                                // org/antlr/grammar/v3/ANTLRv3.g:266:24: ^( $op RULE_REF ( ARG_ACTION )? )
                                {
                                CommonTree root_1 = (CommonTree)adaptor.nil();
                                root_1 = (CommonTree)adaptor.becomeRoot(stream_op.nextNode(), root_1);

                                adaptor.addChild(root_1, stream_RULE_REF.nextNode());
                                // org/antlr/grammar/v3/ANTLRv3.g:266:39: ( ARG_ACTION )?
                                if ( stream_ARG_ACTION.hasNext() ) {
                                    adaptor.addChild(root_1, stream_ARG_ACTION.nextNode());

                                }
                                stream_ARG_ACTION.reset();

                                adaptor.addChild(root_0, root_1);
                                }

                            }

                            retval.tree = root_0;}
                            }
                            break;
                        case 2 :
                            // org/antlr/grammar/v3/ANTLRv3.g:267:9: 
                            {

                            // AST REWRITE
                            // elements: RULE_REF, ARG_ACTION
                            // token labels: 
                            // rule labels: retval
                            // token list labels: 
                            // rule list labels: 
                            // wildcard labels: 
                            if ( state.backtracking==0 ) {
                            retval.tree = root_0;
                            RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                            root_0 = (CommonTree)adaptor.nil();
                            // 267:9: -> ^( RULE_REF ( ARG_ACTION )? )
                            {
                                // org/antlr/grammar/v3/ANTLRv3.g:267:12: ^( RULE_REF ( ARG_ACTION )? )
                                {
                                CommonTree root_1 = (CommonTree)adaptor.nil();
                                root_1 = (CommonTree)adaptor.becomeRoot(stream_RULE_REF.nextNode(), root_1);

                                // org/antlr/grammar/v3/ANTLRv3.g:267:23: ( ARG_ACTION )?
                                if ( stream_ARG_ACTION.hasNext() ) {
                                    adaptor.addChild(root_1, stream_ARG_ACTION.nextNode());

                                }
                                stream_ARG_ACTION.reset();

                                adaptor.addChild(root_0, root_1);
                                }

                            }

                            retval.tree = root_0;}
                            }
                            break;

                    }


                    }
                    break;

            }
            retval.stop = input.LT(-1);

            if ( state.backtracking==0 ) {

            retval.tree = (CommonTree)adaptor.rulePostProcessing(root_0);
            adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
    	retval.tree = (CommonTree)adaptor.errorNode(input, retval.start, input.LT(-1), re);

        }
        finally {
        }
        return retval;
    }
    // $ANTLR end "atom"

    public static class notSet_return extends ParserRuleReturnScope {
        CommonTree tree;
        public Object getTree() { return tree; }
    };

    // $ANTLR start "notSet"
    // org/antlr/grammar/v3/ANTLRv3.g:271:1: notSet : '~' ( notTerminal ( elementOptions )? -> ^( '~' notTerminal ( elementOptions )? ) | block ( elementOptions )? -> ^( '~' block ( elementOptions )? ) ) ;
    public final ANTLRv3Parser.notSet_return notSet() throws RecognitionException {
        ANTLRv3Parser.notSet_return retval = new ANTLRv3Parser.notSet_return();
        retval.start = input.LT(1);

        CommonTree root_0 = null;

        Token char_literal112=null;
        ANTLRv3Parser.notTerminal_return notTerminal113 = null;

        ANTLRv3Parser.elementOptions_return elementOptions114 = null;

        ANTLRv3Parser.block_return block115 = null;

        ANTLRv3Parser.elementOptions_return elementOptions116 = null;


        CommonTree char_literal112_tree=null;
        RewriteRuleTokenStream stream_87=new RewriteRuleTokenStream(adaptor,"token 87");
        RewriteRuleSubtreeStream stream_notTerminal=new RewriteRuleSubtreeStream(adaptor,"rule notTerminal");
        RewriteRuleSubtreeStream stream_elementOptions=new RewriteRuleSubtreeStream(adaptor,"rule elementOptions");
        RewriteRuleSubtreeStream stream_block=new RewriteRuleSubtreeStream(adaptor,"rule block");
        try {
            // org/antlr/grammar/v3/ANTLRv3.g:272:2: ( '~' ( notTerminal ( elementOptions )? -> ^( '~' notTerminal ( elementOptions )? ) | block ( elementOptions )? -> ^( '~' block ( elementOptions )? ) ) )
            // org/antlr/grammar/v3/ANTLRv3.g:272:4: '~' ( notTerminal ( elementOptions )? -> ^( '~' notTerminal ( elementOptions )? ) | block ( elementOptions )? -> ^( '~' block ( elementOptions )? ) )
            {
            char_literal112=(Token)match(input,87,FOLLOW_87_in_notSet1967); if (state.failed) return retval; 
            if ( state.backtracking==0 ) stream_87.add(char_literal112);

            // org/antlr/grammar/v3/ANTLRv3.g:273:3: ( notTerminal ( elementOptions )? -> ^( '~' notTerminal ( elementOptions )? ) | block ( elementOptions )? -> ^( '~' block ( elementOptions )? ) )
            int alt57=2;
            int LA57_0 = input.LA(1);

            if ( ((LA57_0>=TOKEN_REF && LA57_0<=CHAR_LITERAL)) ) {
                alt57=1;
            }
            else if ( (LA57_0==81) ) {
                alt57=2;
            }
            else {
                if (state.backtracking>0) {state.failed=true; return retval;}
                NoViableAltException nvae =
                    new NoViableAltException("", 57, 0, input);

                throw nvae;
            }
            switch (alt57) {
                case 1 :
                    // org/antlr/grammar/v3/ANTLRv3.g:273:5: notTerminal ( elementOptions )?
                    {
                    pushFollow(FOLLOW_notTerminal_in_notSet1973);
                    notTerminal113=notTerminal();

                    state._fsp--;
                    if (state.failed) return retval;
                    if ( state.backtracking==0 ) stream_notTerminal.add(notTerminal113.getTree());
                    // org/antlr/grammar/v3/ANTLRv3.g:273:17: ( elementOptions )?
                    int alt55=2;
                    int LA55_0 = input.LA(1);

                    if ( (LA55_0==88) ) {
                        alt55=1;
                    }
                    switch (alt55) {
                        case 1 :
                            // org/antlr/grammar/v3/ANTLRv3.g:273:17: elementOptions
                            {
                            pushFollow(FOLLOW_elementOptions_in_notSet1975);
                            elementOptions114=elementOptions();

                            state._fsp--;
                            if (state.failed) return retval;
                            if ( state.backtracking==0 ) stream_elementOptions.add(elementOptions114.getTree());

                            }
                            break;

                    }



                    // AST REWRITE
                    // elements: 87, elementOptions, notTerminal
                    // token labels: 
                    // rule labels: retval
                    // token list labels: 
                    // rule list labels: 
                    // wildcard labels: 
                    if ( state.backtracking==0 ) {
                    retval.tree = root_0;
                    RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                    root_0 = (CommonTree)adaptor.nil();
                    // 273:33: -> ^( '~' notTerminal ( elementOptions )? )
                    {
                        // org/antlr/grammar/v3/ANTLRv3.g:273:36: ^( '~' notTerminal ( elementOptions )? )
                        {
                        CommonTree root_1 = (CommonTree)adaptor.nil();
                        root_1 = (CommonTree)adaptor.becomeRoot(stream_87.nextNode(), root_1);

                        adaptor.addChild(root_1, stream_notTerminal.nextTree());
                        // org/antlr/grammar/v3/ANTLRv3.g:273:54: ( elementOptions )?
                        if ( stream_elementOptions.hasNext() ) {
                            adaptor.addChild(root_1, stream_elementOptions.nextTree());

                        }
                        stream_elementOptions.reset();

                        adaptor.addChild(root_0, root_1);
                        }

                    }

                    retval.tree = root_0;}
                    }
                    break;
                case 2 :
                    // org/antlr/grammar/v3/ANTLRv3.g:274:5: block ( elementOptions )?
                    {
                    pushFollow(FOLLOW_block_in_notSet1993);
                    block115=block();

                    state._fsp--;
                    if (state.failed) return retval;
                    if ( state.backtracking==0 ) stream_block.add(block115.getTree());
                    // org/antlr/grammar/v3/ANTLRv3.g:274:11: ( elementOptions )?
                    int alt56=2;
                    int LA56_0 = input.LA(1);

                    if ( (LA56_0==88) ) {
                        alt56=1;
                    }
                    switch (alt56) {
                        case 1 :
                            // org/antlr/grammar/v3/ANTLRv3.g:274:11: elementOptions
                            {
                            pushFollow(FOLLOW_elementOptions_in_notSet1995);
                            elementOptions116=elementOptions();

                            state._fsp--;
                            if (state.failed) return retval;
                            if ( state.backtracking==0 ) stream_elementOptions.add(elementOptions116.getTree());

                            }
                            break;

                    }



                    // AST REWRITE
                    // elements: block, 87, elementOptions
                    // token labels: 
                    // rule labels: retval
                    // token list labels: 
                    // rule list labels: 
                    // wildcard labels: 
                    if ( state.backtracking==0 ) {
                    retval.tree = root_0;
                    RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                    root_0 = (CommonTree)adaptor.nil();
                    // 274:28: -> ^( '~' block ( elementOptions )? )
                    {
                        // org/antlr/grammar/v3/ANTLRv3.g:274:31: ^( '~' block ( elementOptions )? )
                        {
                        CommonTree root_1 = (CommonTree)adaptor.nil();
                        root_1 = (CommonTree)adaptor.becomeRoot(stream_87.nextNode(), root_1);

                        adaptor.addChild(root_1, stream_block.nextTree());
                        // org/antlr/grammar/v3/ANTLRv3.g:274:43: ( elementOptions )?
                        if ( stream_elementOptions.hasNext() ) {
                            adaptor.addChild(root_1, stream_elementOptions.nextTree());

                        }
                        stream_elementOptions.reset();

                        adaptor.addChild(root_0, root_1);
                        }

                    }

                    retval.tree = root_0;}
                    }
                    break;

            }


            }

            retval.stop = input.LT(-1);

            if ( state.backtracking==0 ) {

            retval.tree = (CommonTree)adaptor.rulePostProcessing(root_0);
            adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
    	retval.tree = (CommonTree)adaptor.errorNode(input, retval.start, input.LT(-1), re);

        }
        finally {
        }
        return retval;
    }
    // $ANTLR end "notSet"

    public static class notTerminal_return extends ParserRuleReturnScope {
        CommonTree tree;
        public Object getTree() { return tree; }
    };

    // $ANTLR start "notTerminal"
    // org/antlr/grammar/v3/ANTLRv3.g:278:1: notTerminal : ( CHAR_LITERAL | TOKEN_REF | STRING_LITERAL );
    public final ANTLRv3Parser.notTerminal_return notTerminal() throws RecognitionException {
        ANTLRv3Parser.notTerminal_return retval = new ANTLRv3Parser.notTerminal_return();
        retval.start = input.LT(1);

        CommonTree root_0 = null;

        Token set117=null;

        CommonTree set117_tree=null;

        try {
            // org/antlr/grammar/v3/ANTLRv3.g:279:2: ( CHAR_LITERAL | TOKEN_REF | STRING_LITERAL )
            // org/antlr/grammar/v3/ANTLRv3.g:
            {
            root_0 = (CommonTree)adaptor.nil();

            set117=(Token)input.LT(1);
            if ( (input.LA(1)>=TOKEN_REF && input.LA(1)<=CHAR_LITERAL) ) {
                input.consume();
                if ( state.backtracking==0 ) adaptor.addChild(root_0, (CommonTree)adaptor.create(set117));
                state.errorRecovery=false;state.failed=false;
            }
            else {
                if (state.backtracking>0) {state.failed=true; return retval;}
                MismatchedSetException mse = new MismatchedSetException(null,input);
                throw mse;
            }


            }

            retval.stop = input.LT(-1);

            if ( state.backtracking==0 ) {

            retval.tree = (CommonTree)adaptor.rulePostProcessing(root_0);
            adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
    	retval.tree = (CommonTree)adaptor.errorNode(input, retval.start, input.LT(-1), re);

        }
        finally {
        }
        return retval;
    }
    // $ANTLR end "notTerminal"

    public static class elementOptions_return extends ParserRuleReturnScope {
        CommonTree tree;
        public Object getTree() { return tree; }
    };

    // $ANTLR start "elementOptions"
    // org/antlr/grammar/v3/ANTLRv3.g:284:1: elementOptions : ( '<' qid '>' -> ^( OPTIONS qid ) | '<' option ( ';' option )* '>' -> ^( OPTIONS ( option )+ ) );
    public final ANTLRv3Parser.elementOptions_return elementOptions() throws RecognitionException {
        ANTLRv3Parser.elementOptions_return retval = new ANTLRv3Parser.elementOptions_return();
        retval.start = input.LT(1);

        CommonTree root_0 = null;

        Token char_literal118=null;
        Token char_literal120=null;
        Token char_literal121=null;
        Token char_literal123=null;
        Token char_literal125=null;
        ANTLRv3Parser.qid_return qid119 = null;

        ANTLRv3Parser.option_return option122 = null;

        ANTLRv3Parser.option_return option124 = null;


        CommonTree char_literal118_tree=null;
        CommonTree char_literal120_tree=null;
        CommonTree char_literal121_tree=null;
        CommonTree char_literal123_tree=null;
        CommonTree char_literal125_tree=null;
        RewriteRuleTokenStream stream_71=new RewriteRuleTokenStream(adaptor,"token 71");
        RewriteRuleTokenStream stream_88=new RewriteRuleTokenStream(adaptor,"token 88");
        RewriteRuleTokenStream stream_89=new RewriteRuleTokenStream(adaptor,"token 89");
        RewriteRuleSubtreeStream stream_qid=new RewriteRuleSubtreeStream(adaptor,"rule qid");
        RewriteRuleSubtreeStream stream_option=new RewriteRuleSubtreeStream(adaptor,"rule option");
        try {
            // org/antlr/grammar/v3/ANTLRv3.g:285:2: ( '<' qid '>' -> ^( OPTIONS qid ) | '<' option ( ';' option )* '>' -> ^( OPTIONS ( option )+ ) )
            int alt59=2;
            int LA59_0 = input.LA(1);

            if ( (LA59_0==88) ) {
                int LA59_1 = input.LA(2);

                if ( (LA59_1==TOKEN_REF) ) {
                    int LA59_2 = input.LA(3);

                    if ( ((LA59_2>=89 && LA59_2<=90)) ) {
                        alt59=1;
                    }
                    else if ( (LA59_2==LABEL_ASSIGN) ) {
                        alt59=2;
                    }
                    else {
                        if (state.backtracking>0) {state.failed=true; return retval;}
                        NoViableAltException nvae =
                            new NoViableAltException("", 59, 2, input);

                        throw nvae;
                    }
                }
                else if ( (LA59_1==RULE_REF) ) {
                    int LA59_3 = input.LA(3);

                    if ( ((LA59_3>=89 && LA59_3<=90)) ) {
                        alt59=1;
                    }
                    else if ( (LA59_3==LABEL_ASSIGN) ) {
                        alt59=2;
                    }
                    else {
                        if (state.backtracking>0) {state.failed=true; return retval;}
                        NoViableAltException nvae =
                            new NoViableAltException("", 59, 3, input);

                        throw nvae;
                    }
                }
                else {
                    if (state.backtracking>0) {state.failed=true; return retval;}
                    NoViableAltException nvae =
                        new NoViableAltException("", 59, 1, input);

                    throw nvae;
                }
            }
            else {
                if (state.backtracking>0) {state.failed=true; return retval;}
                NoViableAltException nvae =
                    new NoViableAltException("", 59, 0, input);

                throw nvae;
            }
            switch (alt59) {
                case 1 :
                    // org/antlr/grammar/v3/ANTLRv3.g:285:4: '<' qid '>'
                    {
                    char_literal118=(Token)match(input,88,FOLLOW_88_in_elementOptions2047); if (state.failed) return retval; 
                    if ( state.backtracking==0 ) stream_88.add(char_literal118);

                    pushFollow(FOLLOW_qid_in_elementOptions2049);
                    qid119=qid();

                    state._fsp--;
                    if (state.failed) return retval;
                    if ( state.backtracking==0 ) stream_qid.add(qid119.getTree());
                    char_literal120=(Token)match(input,89,FOLLOW_89_in_elementOptions2051); if (state.failed) return retval; 
                    if ( state.backtracking==0 ) stream_89.add(char_literal120);



                    // AST REWRITE
                    // elements: qid
                    // token labels: 
                    // rule labels: retval
                    // token list labels: 
                    // rule list labels: 
                    // wildcard labels: 
                    if ( state.backtracking==0 ) {
                    retval.tree = root_0;
                    RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                    root_0 = (CommonTree)adaptor.nil();
                    // 285:21: -> ^( OPTIONS qid )
                    {
                        // org/antlr/grammar/v3/ANTLRv3.g:285:24: ^( OPTIONS qid )
                        {
                        CommonTree root_1 = (CommonTree)adaptor.nil();
                        root_1 = (CommonTree)adaptor.becomeRoot((CommonTree)adaptor.create(OPTIONS, "OPTIONS"), root_1);

                        adaptor.addChild(root_1, stream_qid.nextTree());

                        adaptor.addChild(root_0, root_1);
                        }

                    }

                    retval.tree = root_0;}
                    }
                    break;
                case 2 :
                    // org/antlr/grammar/v3/ANTLRv3.g:286:4: '<' option ( ';' option )* '>'
                    {
                    char_literal121=(Token)match(input,88,FOLLOW_88_in_elementOptions2069); if (state.failed) return retval; 
                    if ( state.backtracking==0 ) stream_88.add(char_literal121);

                    pushFollow(FOLLOW_option_in_elementOptions2071);
                    option122=option();

                    state._fsp--;
                    if (state.failed) return retval;
                    if ( state.backtracking==0 ) stream_option.add(option122.getTree());
                    // org/antlr/grammar/v3/ANTLRv3.g:286:15: ( ';' option )*
                    loop58:
                    do {
                        int alt58=2;
                        int LA58_0 = input.LA(1);

                        if ( (LA58_0==71) ) {
                            alt58=1;
                        }


                        switch (alt58) {
                    	case 1 :
                    	    // org/antlr/grammar/v3/ANTLRv3.g:286:16: ';' option
                    	    {
                    	    char_literal123=(Token)match(input,71,FOLLOW_71_in_elementOptions2074); if (state.failed) return retval; 
                    	    if ( state.backtracking==0 ) stream_71.add(char_literal123);

                    	    pushFollow(FOLLOW_option_in_elementOptions2076);
                    	    option124=option();

                    	    state._fsp--;
                    	    if (state.failed) return retval;
                    	    if ( state.backtracking==0 ) stream_option.add(option124.getTree());

                    	    }
                    	    break;

                    	default :
                    	    break loop58;
                        }
                    } while (true);

                    char_literal125=(Token)match(input,89,FOLLOW_89_in_elementOptions2080); if (state.failed) return retval; 
                    if ( state.backtracking==0 ) stream_89.add(char_literal125);



                    // AST REWRITE
                    // elements: option
                    // token labels: 
                    // rule labels: retval
                    // token list labels: 
                    // rule list labels: 
                    // wildcard labels: 
                    if ( state.backtracking==0 ) {
                    retval.tree = root_0;
                    RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                    root_0 = (CommonTree)adaptor.nil();
                    // 286:33: -> ^( OPTIONS ( option )+ )
                    {
                        // org/antlr/grammar/v3/ANTLRv3.g:286:36: ^( OPTIONS ( option )+ )
                        {
                        CommonTree root_1 = (CommonTree)adaptor.nil();
                        root_1 = (CommonTree)adaptor.becomeRoot((CommonTree)adaptor.create(OPTIONS, "OPTIONS"), root_1);

                        if ( !(stream_option.hasNext()) ) {
                            throw new RewriteEarlyExitException();
                        }
                        while ( stream_option.hasNext() ) {
                            adaptor.addChild(root_1, stream_option.nextTree());

                        }
                        stream_option.reset();

                        adaptor.addChild(root_0, root_1);
                        }

                    }

                    retval.tree = root_0;}
                    }
                    break;

            }
            retval.stop = input.LT(-1);

            if ( state.backtracking==0 ) {

            retval.tree = (CommonTree)adaptor.rulePostProcessing(root_0);
            adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
    	retval.tree = (CommonTree)adaptor.errorNode(input, retval.start, input.LT(-1), re);

        }
        finally {
        }
        return retval;
    }
    // $ANTLR end "elementOptions"

    public static class elementOption_return extends ParserRuleReturnScope {
        CommonTree tree;
        public Object getTree() { return tree; }
    };

    // $ANTLR start "elementOption"
    // org/antlr/grammar/v3/ANTLRv3.g:289:1: elementOption : id '=' optionValue -> ^( '=' id optionValue ) ;
    public final ANTLRv3Parser.elementOption_return elementOption() throws RecognitionException {
        ANTLRv3Parser.elementOption_return retval = new ANTLRv3Parser.elementOption_return();
        retval.start = input.LT(1);

        CommonTree root_0 = null;

        Token char_literal127=null;
        ANTLRv3Parser.id_return id126 = null;

        ANTLRv3Parser.optionValue_return optionValue128 = null;


        CommonTree char_literal127_tree=null;
        RewriteRuleTokenStream stream_LABEL_ASSIGN=new RewriteRuleTokenStream(adaptor,"token LABEL_ASSIGN");
        RewriteRuleSubtreeStream stream_id=new RewriteRuleSubtreeStream(adaptor,"rule id");
        RewriteRuleSubtreeStream stream_optionValue=new RewriteRuleSubtreeStream(adaptor,"rule optionValue");
        try {
            // org/antlr/grammar/v3/ANTLRv3.g:290:2: ( id '=' optionValue -> ^( '=' id optionValue ) )
            // org/antlr/grammar/v3/ANTLRv3.g:290:4: id '=' optionValue
            {
            pushFollow(FOLLOW_id_in_elementOption2100);
            id126=id();

            state._fsp--;
            if (state.failed) return retval;
            if ( state.backtracking==0 ) stream_id.add(id126.getTree());
            char_literal127=(Token)match(input,LABEL_ASSIGN,FOLLOW_LABEL_ASSIGN_in_elementOption2102); if (state.failed) return retval; 
            if ( state.backtracking==0 ) stream_LABEL_ASSIGN.add(char_literal127);

            pushFollow(FOLLOW_optionValue_in_elementOption2104);
            optionValue128=optionValue();

            state._fsp--;
            if (state.failed) return retval;
            if ( state.backtracking==0 ) stream_optionValue.add(optionValue128.getTree());


            // AST REWRITE
            // elements: id, LABEL_ASSIGN, optionValue
            // token labels: 
            // rule labels: retval
            // token list labels: 
            // rule list labels: 
            // wildcard labels: 
            if ( state.backtracking==0 ) {
            retval.tree = root_0;
            RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

            root_0 = (CommonTree)adaptor.nil();
            // 290:23: -> ^( '=' id optionValue )
            {
                // org/antlr/grammar/v3/ANTLRv3.g:290:26: ^( '=' id optionValue )
                {
                CommonTree root_1 = (CommonTree)adaptor.nil();
                root_1 = (CommonTree)adaptor.becomeRoot(stream_LABEL_ASSIGN.nextNode(), root_1);

                adaptor.addChild(root_1, stream_id.nextTree());
                adaptor.addChild(root_1, stream_optionValue.nextTree());

                adaptor.addChild(root_0, root_1);
                }

            }

            retval.tree = root_0;}
            }

            retval.stop = input.LT(-1);

            if ( state.backtracking==0 ) {

            retval.tree = (CommonTree)adaptor.rulePostProcessing(root_0);
            adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
    	retval.tree = (CommonTree)adaptor.errorNode(input, retval.start, input.LT(-1), re);

        }
        finally {
        }
        return retval;
    }
    // $ANTLR end "elementOption"

    public static class treeSpec_return extends ParserRuleReturnScope {
        CommonTree tree;
        public Object getTree() { return tree; }
    };

    // $ANTLR start "treeSpec"
    // org/antlr/grammar/v3/ANTLRv3.g:293:1: treeSpec : '^(' element ( element )+ ')' -> ^( TREE_BEGIN ( element )+ ) ;
    public final ANTLRv3Parser.treeSpec_return treeSpec() throws RecognitionException {
        ANTLRv3Parser.treeSpec_return retval = new ANTLRv3Parser.treeSpec_return();
        retval.start = input.LT(1);

        CommonTree root_0 = null;

        Token string_literal129=null;
        Token char_literal132=null;
        ANTLRv3Parser.element_return element130 = null;

        ANTLRv3Parser.element_return element131 = null;


        CommonTree string_literal129_tree=null;
        CommonTree char_literal132_tree=null;
        RewriteRuleTokenStream stream_83=new RewriteRuleTokenStream(adaptor,"token 83");
        RewriteRuleTokenStream stream_TREE_BEGIN=new RewriteRuleTokenStream(adaptor,"token TREE_BEGIN");
        RewriteRuleSubtreeStream stream_element=new RewriteRuleSubtreeStream(adaptor,"rule element");
        try {
            // org/antlr/grammar/v3/ANTLRv3.g:294:2: ( '^(' element ( element )+ ')' -> ^( TREE_BEGIN ( element )+ ) )
            // org/antlr/grammar/v3/ANTLRv3.g:294:4: '^(' element ( element )+ ')'
            {
            string_literal129=(Token)match(input,TREE_BEGIN,FOLLOW_TREE_BEGIN_in_treeSpec2126); if (state.failed) return retval; 
            if ( state.backtracking==0 ) stream_TREE_BEGIN.add(string_literal129);

            pushFollow(FOLLOW_element_in_treeSpec2128);
            element130=element();

            state._fsp--;
            if (state.failed) return retval;
            if ( state.backtracking==0 ) stream_element.add(element130.getTree());
            // org/antlr/grammar/v3/ANTLRv3.g:294:17: ( element )+
            int cnt60=0;
            loop60:
            do {
                int alt60=2;
                int LA60_0 = input.LA(1);

                if ( (LA60_0==SEMPRED||LA60_0==TREE_BEGIN||(LA60_0>=TOKEN_REF && LA60_0<=ACTION)||LA60_0==RULE_REF||LA60_0==81||LA60_0==87||LA60_0==90) ) {
                    alt60=1;
                }


                switch (alt60) {
            	case 1 :
            	    // org/antlr/grammar/v3/ANTLRv3.g:294:19: element
            	    {
            	    pushFollow(FOLLOW_element_in_treeSpec2132);
            	    element131=element();

            	    state._fsp--;
            	    if (state.failed) return retval;
            	    if ( state.backtracking==0 ) stream_element.add(element131.getTree());

            	    }
            	    break;

            	default :
            	    if ( cnt60 >= 1 ) break loop60;
            	    if (state.backtracking>0) {state.failed=true; return retval;}
                        EarlyExitException eee =
                            new EarlyExitException(60, input);
                        throw eee;
                }
                cnt60++;
            } while (true);

            char_literal132=(Token)match(input,83,FOLLOW_83_in_treeSpec2137); if (state.failed) return retval; 
            if ( state.backtracking==0 ) stream_83.add(char_literal132);



            // AST REWRITE
            // elements: element
            // token labels: 
            // rule labels: retval
            // token list labels: 
            // rule list labels: 
            // wildcard labels: 
            if ( state.backtracking==0 ) {
            retval.tree = root_0;
            RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

            root_0 = (CommonTree)adaptor.nil();
            // 294:34: -> ^( TREE_BEGIN ( element )+ )
            {
                // org/antlr/grammar/v3/ANTLRv3.g:294:37: ^( TREE_BEGIN ( element )+ )
                {
                CommonTree root_1 = (CommonTree)adaptor.nil();
                root_1 = (CommonTree)adaptor.becomeRoot((CommonTree)adaptor.create(TREE_BEGIN, "TREE_BEGIN"), root_1);

                if ( !(stream_element.hasNext()) ) {
                    throw new RewriteEarlyExitException();
                }
                while ( stream_element.hasNext() ) {
                    adaptor.addChild(root_1, stream_element.nextTree());

                }
                stream_element.reset();

                adaptor.addChild(root_0, root_1);
                }

            }

            retval.tree = root_0;}
            }

            retval.stop = input.LT(-1);

            if ( state.backtracking==0 ) {

            retval.tree = (CommonTree)adaptor.rulePostProcessing(root_0);
            adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
    	retval.tree = (CommonTree)adaptor.errorNode(input, retval.start, input.LT(-1), re);

        }
        finally {
        }
        return retval;
    }
    // $ANTLR end "treeSpec"

    public static class range_return extends ParserRuleReturnScope {
        CommonTree tree;
        public Object getTree() { return tree; }
    };

    // $ANTLR start "range"
    // org/antlr/grammar/v3/ANTLRv3.g:297:1: range : c1= CHAR_LITERAL RANGE c2= CHAR_LITERAL ( elementOptions )? -> ^( CHAR_RANGE[$c1,\"..\"] $c1 $c2 ( elementOptions )? ) ;
    public final ANTLRv3Parser.range_return range() throws RecognitionException {
        ANTLRv3Parser.range_return retval = new ANTLRv3Parser.range_return();
        retval.start = input.LT(1);

        CommonTree root_0 = null;

        Token c1=null;
        Token c2=null;
        Token RANGE133=null;
        ANTLRv3Parser.elementOptions_return elementOptions134 = null;


        CommonTree c1_tree=null;
        CommonTree c2_tree=null;
        CommonTree RANGE133_tree=null;
        RewriteRuleTokenStream stream_RANGE=new RewriteRuleTokenStream(adaptor,"token RANGE");
        RewriteRuleTokenStream stream_CHAR_LITERAL=new RewriteRuleTokenStream(adaptor,"token CHAR_LITERAL");
        RewriteRuleSubtreeStream stream_elementOptions=new RewriteRuleSubtreeStream(adaptor,"rule elementOptions");
        try {
            // org/antlr/grammar/v3/ANTLRv3.g:298:2: (c1= CHAR_LITERAL RANGE c2= CHAR_LITERAL ( elementOptions )? -> ^( CHAR_RANGE[$c1,\"..\"] $c1 $c2 ( elementOptions )? ) )
            // org/antlr/grammar/v3/ANTLRv3.g:298:4: c1= CHAR_LITERAL RANGE c2= CHAR_LITERAL ( elementOptions )?
            {
            c1=(Token)match(input,CHAR_LITERAL,FOLLOW_CHAR_LITERAL_in_range2160); if (state.failed) return retval; 
            if ( state.backtracking==0 ) stream_CHAR_LITERAL.add(c1);

            RANGE133=(Token)match(input,RANGE,FOLLOW_RANGE_in_range2162); if (state.failed) return retval; 
            if ( state.backtracking==0 ) stream_RANGE.add(RANGE133);

            c2=(Token)match(input,CHAR_LITERAL,FOLLOW_CHAR_LITERAL_in_range2166); if (state.failed) return retval; 
            if ( state.backtracking==0 ) stream_CHAR_LITERAL.add(c2);

            // org/antlr/grammar/v3/ANTLRv3.g:298:42: ( elementOptions )?
            int alt61=2;
            int LA61_0 = input.LA(1);

            if ( (LA61_0==88) ) {
                alt61=1;
            }
            switch (alt61) {
                case 1 :
                    // org/antlr/grammar/v3/ANTLRv3.g:298:42: elementOptions
                    {
                    pushFollow(FOLLOW_elementOptions_in_range2168);
                    elementOptions134=elementOptions();

                    state._fsp--;
                    if (state.failed) return retval;
                    if ( state.backtracking==0 ) stream_elementOptions.add(elementOptions134.getTree());

                    }
                    break;

            }



            // AST REWRITE
            // elements: c2, elementOptions, c1
            // token labels: c1, c2
            // rule labels: retval
            // token list labels: 
            // rule list labels: 
            // wildcard labels: 
            if ( state.backtracking==0 ) {
            retval.tree = root_0;
            RewriteRuleTokenStream stream_c1=new RewriteRuleTokenStream(adaptor,"token c1",c1);
            RewriteRuleTokenStream stream_c2=new RewriteRuleTokenStream(adaptor,"token c2",c2);
            RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

            root_0 = (CommonTree)adaptor.nil();
            // 299:3: -> ^( CHAR_RANGE[$c1,\"..\"] $c1 $c2 ( elementOptions )? )
            {
                // org/antlr/grammar/v3/ANTLRv3.g:299:6: ^( CHAR_RANGE[$c1,\"..\"] $c1 $c2 ( elementOptions )? )
                {
                CommonTree root_1 = (CommonTree)adaptor.nil();
                root_1 = (CommonTree)adaptor.becomeRoot((CommonTree)adaptor.create(CHAR_RANGE, c1, ".."), root_1);

                adaptor.addChild(root_1, stream_c1.nextNode());
                adaptor.addChild(root_1, stream_c2.nextNode());
                // org/antlr/grammar/v3/ANTLRv3.g:299:37: ( elementOptions )?
                if ( stream_elementOptions.hasNext() ) {
                    adaptor.addChild(root_1, stream_elementOptions.nextTree());

                }
                stream_elementOptions.reset();

                adaptor.addChild(root_0, root_1);
                }

            }

            retval.tree = root_0;}
            }

            retval.stop = input.LT(-1);

            if ( state.backtracking==0 ) {

            retval.tree = (CommonTree)adaptor.rulePostProcessing(root_0);
            adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
    	retval.tree = (CommonTree)adaptor.errorNode(input, retval.start, input.LT(-1), re);

        }
        finally {
        }
        return retval;
    }
    // $ANTLR end "range"

    public static class terminal_return extends ParserRuleReturnScope {
        CommonTree tree;
        public Object getTree() { return tree; }
    };

    // $ANTLR start "terminal"
    // org/antlr/grammar/v3/ANTLRv3.g:302:1: terminal : ( CHAR_LITERAL ( elementOptions )? -> ^( CHAR_LITERAL ( elementOptions )? ) | TOKEN_REF ( ARG_ACTION )? ( elementOptions )? -> ^( TOKEN_REF ( ARG_ACTION )? ( elementOptions )? ) | STRING_LITERAL ( elementOptions )? -> ^( STRING_LITERAL ( elementOptions )? ) | '.' ( elementOptions )? -> ^( '.' ( elementOptions )? ) ) ( '^' -> ^( '^' $terminal) | '!' -> ^( '!' $terminal) )? ;
    public final ANTLRv3Parser.terminal_return terminal() throws RecognitionException {
        ANTLRv3Parser.terminal_return retval = new ANTLRv3Parser.terminal_return();
        retval.start = input.LT(1);

        CommonTree root_0 = null;

        Token CHAR_LITERAL135=null;
        Token TOKEN_REF137=null;
        Token ARG_ACTION138=null;
        Token STRING_LITERAL140=null;
        Token char_literal142=null;
        Token char_literal144=null;
        Token char_literal145=null;
        ANTLRv3Parser.elementOptions_return elementOptions136 = null;

        ANTLRv3Parser.elementOptions_return elementOptions139 = null;

        ANTLRv3Parser.elementOptions_return elementOptions141 = null;

        ANTLRv3Parser.elementOptions_return elementOptions143 = null;


        CommonTree CHAR_LITERAL135_tree=null;
        CommonTree TOKEN_REF137_tree=null;
        CommonTree ARG_ACTION138_tree=null;
        CommonTree STRING_LITERAL140_tree=null;
        CommonTree char_literal142_tree=null;
        CommonTree char_literal144_tree=null;
        CommonTree char_literal145_tree=null;
        RewriteRuleTokenStream stream_STRING_LITERAL=new RewriteRuleTokenStream(adaptor,"token STRING_LITERAL");
        RewriteRuleTokenStream stream_BANG=new RewriteRuleTokenStream(adaptor,"token BANG");
        RewriteRuleTokenStream stream_CHAR_LITERAL=new RewriteRuleTokenStream(adaptor,"token CHAR_LITERAL");
        RewriteRuleTokenStream stream_90=new RewriteRuleTokenStream(adaptor,"token 90");
        RewriteRuleTokenStream stream_ROOT=new RewriteRuleTokenStream(adaptor,"token ROOT");
        RewriteRuleTokenStream stream_TOKEN_REF=new RewriteRuleTokenStream(adaptor,"token TOKEN_REF");
        RewriteRuleTokenStream stream_ARG_ACTION=new RewriteRuleTokenStream(adaptor,"token ARG_ACTION");
        RewriteRuleSubtreeStream stream_elementOptions=new RewriteRuleSubtreeStream(adaptor,"rule elementOptions");
        try {
            // org/antlr/grammar/v3/ANTLRv3.g:303:5: ( ( CHAR_LITERAL ( elementOptions )? -> ^( CHAR_LITERAL ( elementOptions )? ) | TOKEN_REF ( ARG_ACTION )? ( elementOptions )? -> ^( TOKEN_REF ( ARG_ACTION )? ( elementOptions )? ) | STRING_LITERAL ( elementOptions )? -> ^( STRING_LITERAL ( elementOptions )? ) | '.' ( elementOptions )? -> ^( '.' ( elementOptions )? ) ) ( '^' -> ^( '^' $terminal) | '!' -> ^( '!' $terminal) )? )
            // org/antlr/grammar/v3/ANTLRv3.g:303:9: ( CHAR_LITERAL ( elementOptions )? -> ^( CHAR_LITERAL ( elementOptions )? ) | TOKEN_REF ( ARG_ACTION )? ( elementOptions )? -> ^( TOKEN_REF ( ARG_ACTION )? ( elementOptions )? ) | STRING_LITERAL ( elementOptions )? -> ^( STRING_LITERAL ( elementOptions )? ) | '.' ( elementOptions )? -> ^( '.' ( elementOptions )? ) ) ( '^' -> ^( '^' $terminal) | '!' -> ^( '!' $terminal) )?
            {
            // org/antlr/grammar/v3/ANTLRv3.g:303:9: ( CHAR_LITERAL ( elementOptions )? -> ^( CHAR_LITERAL ( elementOptions )? ) | TOKEN_REF ( ARG_ACTION )? ( elementOptions )? -> ^( TOKEN_REF ( ARG_ACTION )? ( elementOptions )? ) | STRING_LITERAL ( elementOptions )? -> ^( STRING_LITERAL ( elementOptions )? ) | '.' ( elementOptions )? -> ^( '.' ( elementOptions )? ) )
            int alt67=4;
            switch ( input.LA(1) ) {
            case CHAR_LITERAL:
                {
                alt67=1;
                }
                break;
            case TOKEN_REF:
                {
                alt67=2;
                }
                break;
            case STRING_LITERAL:
                {
                alt67=3;
                }
                break;
            case 90:
                {
                alt67=4;
                }
                break;
            default:
                if (state.backtracking>0) {state.failed=true; return retval;}
                NoViableAltException nvae =
                    new NoViableAltException("", 67, 0, input);

                throw nvae;
            }

            switch (alt67) {
                case 1 :
                    // org/antlr/grammar/v3/ANTLRv3.g:303:11: CHAR_LITERAL ( elementOptions )?
                    {
                    CHAR_LITERAL135=(Token)match(input,CHAR_LITERAL,FOLLOW_CHAR_LITERAL_in_terminal2205); if (state.failed) return retval; 
                    if ( state.backtracking==0 ) stream_CHAR_LITERAL.add(CHAR_LITERAL135);

                    // org/antlr/grammar/v3/ANTLRv3.g:303:24: ( elementOptions )?
                    int alt62=2;
                    int LA62_0 = input.LA(1);

                    if ( (LA62_0==88) ) {
                        alt62=1;
                    }
                    switch (alt62) {
                        case 1 :
                            // org/antlr/grammar/v3/ANTLRv3.g:303:24: elementOptions
                            {
                            pushFollow(FOLLOW_elementOptions_in_terminal2207);
                            elementOptions136=elementOptions();

                            state._fsp--;
                            if (state.failed) return retval;
                            if ( state.backtracking==0 ) stream_elementOptions.add(elementOptions136.getTree());

                            }
                            break;

                    }



                    // AST REWRITE
                    // elements: elementOptions, CHAR_LITERAL
                    // token labels: 
                    // rule labels: retval
                    // token list labels: 
                    // rule list labels: 
                    // wildcard labels: 
                    if ( state.backtracking==0 ) {
                    retval.tree = root_0;
                    RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                    root_0 = (CommonTree)adaptor.nil();
                    // 303:46: -> ^( CHAR_LITERAL ( elementOptions )? )
                    {
                        // org/antlr/grammar/v3/ANTLRv3.g:303:49: ^( CHAR_LITERAL ( elementOptions )? )
                        {
                        CommonTree root_1 = (CommonTree)adaptor.nil();
                        root_1 = (CommonTree)adaptor.becomeRoot(stream_CHAR_LITERAL.nextNode(), root_1);

                        // org/antlr/grammar/v3/ANTLRv3.g:303:64: ( elementOptions )?
                        if ( stream_elementOptions.hasNext() ) {
                            adaptor.addChild(root_1, stream_elementOptions.nextTree());

                        }
                        stream_elementOptions.reset();

                        adaptor.addChild(root_0, root_1);
                        }

                    }

                    retval.tree = root_0;}
                    }
                    break;
                case 2 :
                    // org/antlr/grammar/v3/ANTLRv3.g:305:7: TOKEN_REF ( ARG_ACTION )? ( elementOptions )?
                    {
                    TOKEN_REF137=(Token)match(input,TOKEN_REF,FOLLOW_TOKEN_REF_in_terminal2238); if (state.failed) return retval; 
                    if ( state.backtracking==0 ) stream_TOKEN_REF.add(TOKEN_REF137);

                    // org/antlr/grammar/v3/ANTLRv3.g:305:17: ( ARG_ACTION )?
                    int alt63=2;
                    int LA63_0 = input.LA(1);

                    if ( (LA63_0==ARG_ACTION) ) {
                        alt63=1;
                    }
                    switch (alt63) {
                        case 1 :
                            // org/antlr/grammar/v3/ANTLRv3.g:305:17: ARG_ACTION
                            {
                            ARG_ACTION138=(Token)match(input,ARG_ACTION,FOLLOW_ARG_ACTION_in_terminal2240); if (state.failed) return retval; 
                            if ( state.backtracking==0 ) stream_ARG_ACTION.add(ARG_ACTION138);


                            }
                            break;

                    }

                    // org/antlr/grammar/v3/ANTLRv3.g:305:29: ( elementOptions )?
                    int alt64=2;
                    int LA64_0 = input.LA(1);

                    if ( (LA64_0==88) ) {
                        alt64=1;
                    }
                    switch (alt64) {
                        case 1 :
                            // org/antlr/grammar/v3/ANTLRv3.g:305:29: elementOptions
                            {
                            pushFollow(FOLLOW_elementOptions_in_terminal2243);
                            elementOptions139=elementOptions();

                            state._fsp--;
                            if (state.failed) return retval;
                            if ( state.backtracking==0 ) stream_elementOptions.add(elementOptions139.getTree());

                            }
                            break;

                    }



                    // AST REWRITE
                    // elements: elementOptions, ARG_ACTION, TOKEN_REF
                    // token labels: 
                    // rule labels: retval
                    // token list labels: 
                    // rule list labels: 
                    // wildcard labels: 
                    if ( state.backtracking==0 ) {
                    retval.tree = root_0;
                    RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                    root_0 = (CommonTree)adaptor.nil();
                    // 305:45: -> ^( TOKEN_REF ( ARG_ACTION )? ( elementOptions )? )
                    {
                        // org/antlr/grammar/v3/ANTLRv3.g:305:48: ^( TOKEN_REF ( ARG_ACTION )? ( elementOptions )? )
                        {
                        CommonTree root_1 = (CommonTree)adaptor.nil();
                        root_1 = (CommonTree)adaptor.becomeRoot(stream_TOKEN_REF.nextNode(), root_1);

                        // org/antlr/grammar/v3/ANTLRv3.g:305:60: ( ARG_ACTION )?
                        if ( stream_ARG_ACTION.hasNext() ) {
                            adaptor.addChild(root_1, stream_ARG_ACTION.nextNode());

                        }
                        stream_ARG_ACTION.reset();
                        // org/antlr/grammar/v3/ANTLRv3.g:305:72: ( elementOptions )?
                        if ( stream_elementOptions.hasNext() ) {
                            adaptor.addChild(root_1, stream_elementOptions.nextTree());

                        }
                        stream_elementOptions.reset();

                        adaptor.addChild(root_0, root_1);
                        }

                    }

                    retval.tree = root_0;}
                    }
                    break;
                case 3 :
                    // org/antlr/grammar/v3/ANTLRv3.g:306:7: STRING_LITERAL ( elementOptions )?
                    {
                    STRING_LITERAL140=(Token)match(input,STRING_LITERAL,FOLLOW_STRING_LITERAL_in_terminal2264); if (state.failed) return retval; 
                    if ( state.backtracking==0 ) stream_STRING_LITERAL.add(STRING_LITERAL140);

                    // org/antlr/grammar/v3/ANTLRv3.g:306:22: ( elementOptions )?
                    int alt65=2;
                    int LA65_0 = input.LA(1);

                    if ( (LA65_0==88) ) {
                        alt65=1;
                    }
                    switch (alt65) {
                        case 1 :
                            // org/antlr/grammar/v3/ANTLRv3.g:306:22: elementOptions
                            {
                            pushFollow(FOLLOW_elementOptions_in_terminal2266);
                            elementOptions141=elementOptions();

                            state._fsp--;
                            if (state.failed) return retval;
                            if ( state.backtracking==0 ) stream_elementOptions.add(elementOptions141.getTree());

                            }
                            break;

                    }



                    // AST REWRITE
                    // elements: STRING_LITERAL, elementOptions
                    // token labels: 
                    // rule labels: retval
                    // token list labels: 
                    // rule list labels: 
                    // wildcard labels: 
                    if ( state.backtracking==0 ) {
                    retval.tree = root_0;
                    RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                    root_0 = (CommonTree)adaptor.nil();
                    // 306:41: -> ^( STRING_LITERAL ( elementOptions )? )
                    {
                        // org/antlr/grammar/v3/ANTLRv3.g:306:44: ^( STRING_LITERAL ( elementOptions )? )
                        {
                        CommonTree root_1 = (CommonTree)adaptor.nil();
                        root_1 = (CommonTree)adaptor.becomeRoot(stream_STRING_LITERAL.nextNode(), root_1);

                        // org/antlr/grammar/v3/ANTLRv3.g:306:61: ( elementOptions )?
                        if ( stream_elementOptions.hasNext() ) {
                            adaptor.addChild(root_1, stream_elementOptions.nextTree());

                        }
                        stream_elementOptions.reset();

                        adaptor.addChild(root_0, root_1);
                        }

                    }

                    retval.tree = root_0;}
                    }
                    break;
                case 4 :
                    // org/antlr/grammar/v3/ANTLRv3.g:307:7: '.' ( elementOptions )?
                    {
                    char_literal142=(Token)match(input,90,FOLLOW_90_in_terminal2287); if (state.failed) return retval; 
                    if ( state.backtracking==0 ) stream_90.add(char_literal142);

                    // org/antlr/grammar/v3/ANTLRv3.g:307:11: ( elementOptions )?
                    int alt66=2;
                    int LA66_0 = input.LA(1);

                    if ( (LA66_0==88) ) {
                        alt66=1;
                    }
                    switch (alt66) {
                        case 1 :
                            // org/antlr/grammar/v3/ANTLRv3.g:307:11: elementOptions
                            {
                            pushFollow(FOLLOW_elementOptions_in_terminal2289);
                            elementOptions143=elementOptions();

                            state._fsp--;
                            if (state.failed) return retval;
                            if ( state.backtracking==0 ) stream_elementOptions.add(elementOptions143.getTree());

                            }
                            break;

                    }



                    // AST REWRITE
                    // elements: 90, elementOptions
                    // token labels: 
                    // rule labels: retval
                    // token list labels: 
                    // rule list labels: 
                    // wildcard labels: 
                    if ( state.backtracking==0 ) {
                    retval.tree = root_0;
                    RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                    root_0 = (CommonTree)adaptor.nil();
                    // 307:34: -> ^( '.' ( elementOptions )? )
                    {
                        // org/antlr/grammar/v3/ANTLRv3.g:307:37: ^( '.' ( elementOptions )? )
                        {
                        CommonTree root_1 = (CommonTree)adaptor.nil();
                        root_1 = (CommonTree)adaptor.becomeRoot(stream_90.nextNode(), root_1);

                        // org/antlr/grammar/v3/ANTLRv3.g:307:43: ( elementOptions )?
                        if ( stream_elementOptions.hasNext() ) {
                            adaptor.addChild(root_1, stream_elementOptions.nextTree());

                        }
                        stream_elementOptions.reset();

                        adaptor.addChild(root_0, root_1);
                        }

                    }

                    retval.tree = root_0;}
                    }
                    break;

            }

            // org/antlr/grammar/v3/ANTLRv3.g:309:3: ( '^' -> ^( '^' $terminal) | '!' -> ^( '!' $terminal) )?
            int alt68=3;
            int LA68_0 = input.LA(1);

            if ( (LA68_0==ROOT) ) {
                alt68=1;
            }
            else if ( (LA68_0==BANG) ) {
                alt68=2;
            }
            switch (alt68) {
                case 1 :
                    // org/antlr/grammar/v3/ANTLRv3.g:309:5: '^'
                    {
                    char_literal144=(Token)match(input,ROOT,FOLLOW_ROOT_in_terminal2316); if (state.failed) return retval; 
                    if ( state.backtracking==0 ) stream_ROOT.add(char_literal144);



                    // AST REWRITE
                    // elements: ROOT, terminal
                    // token labels: 
                    // rule labels: retval
                    // token list labels: 
                    // rule list labels: 
                    // wildcard labels: 
                    if ( state.backtracking==0 ) {
                    retval.tree = root_0;
                    RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                    root_0 = (CommonTree)adaptor.nil();
                    // 309:15: -> ^( '^' $terminal)
                    {
                        // org/antlr/grammar/v3/ANTLRv3.g:309:18: ^( '^' $terminal)
                        {
                        CommonTree root_1 = (CommonTree)adaptor.nil();
                        root_1 = (CommonTree)adaptor.becomeRoot(stream_ROOT.nextNode(), root_1);

                        adaptor.addChild(root_1, stream_retval.nextTree());

                        adaptor.addChild(root_0, root_1);
                        }

                    }

                    retval.tree = root_0;}
                    }
                    break;
                case 2 :
                    // org/antlr/grammar/v3/ANTLRv3.g:310:5: '!'
                    {
                    char_literal145=(Token)match(input,BANG,FOLLOW_BANG_in_terminal2337); if (state.failed) return retval; 
                    if ( state.backtracking==0 ) stream_BANG.add(char_literal145);



                    // AST REWRITE
                    // elements: BANG, terminal
                    // token labels: 
                    // rule labels: retval
                    // token list labels: 
                    // rule list labels: 
                    // wildcard labels: 
                    if ( state.backtracking==0 ) {
                    retval.tree = root_0;
                    RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                    root_0 = (CommonTree)adaptor.nil();
                    // 310:15: -> ^( '!' $terminal)
                    {
                        // org/antlr/grammar/v3/ANTLRv3.g:310:18: ^( '!' $terminal)
                        {
                        CommonTree root_1 = (CommonTree)adaptor.nil();
                        root_1 = (CommonTree)adaptor.becomeRoot(stream_BANG.nextNode(), root_1);

                        adaptor.addChild(root_1, stream_retval.nextTree());

                        adaptor.addChild(root_0, root_1);
                        }

                    }

                    retval.tree = root_0;}
                    }
                    break;

            }


            }

            retval.stop = input.LT(-1);

            if ( state.backtracking==0 ) {

            retval.tree = (CommonTree)adaptor.rulePostProcessing(root_0);
            adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
    	retval.tree = (CommonTree)adaptor.errorNode(input, retval.start, input.LT(-1), re);

        }
        finally {
        }
        return retval;
    }
    // $ANTLR end "terminal"

    public static class ebnf_return extends ParserRuleReturnScope {
        CommonTree tree;
        public Object getTree() { return tree; }
    };

    // $ANTLR start "ebnf"
    // org/antlr/grammar/v3/ANTLRv3.g:314:1: ebnf : block (op= '?' -> ^( OPTIONAL[op] block ) | op= '*' -> ^( CLOSURE[op] block ) | op= '+' -> ^( POSITIVE_CLOSURE[op] block ) | '=>' -> {gtype==COMBINED_GRAMMAR &&\n\t\t\t\t\t Character.isUpperCase($rule::name.charAt(0))}? ^( SYNPRED[\"=>\"] block ) -> SYN_SEMPRED | -> block ) ;
    public final ANTLRv3Parser.ebnf_return ebnf() throws RecognitionException {
        ANTLRv3Parser.ebnf_return retval = new ANTLRv3Parser.ebnf_return();
        retval.start = input.LT(1);

        CommonTree root_0 = null;

        Token op=null;
        Token string_literal147=null;
        ANTLRv3Parser.block_return block146 = null;


        CommonTree op_tree=null;
        CommonTree string_literal147_tree=null;
        RewriteRuleTokenStream stream_92=new RewriteRuleTokenStream(adaptor,"token 92");
        RewriteRuleTokenStream stream_91=new RewriteRuleTokenStream(adaptor,"token 91");
        RewriteRuleTokenStream stream_86=new RewriteRuleTokenStream(adaptor,"token 86");
        RewriteRuleTokenStream stream_74=new RewriteRuleTokenStream(adaptor,"token 74");
        RewriteRuleSubtreeStream stream_block=new RewriteRuleSubtreeStream(adaptor,"rule block");

            Token firstToken = input.LT(1);

        try {
            // org/antlr/grammar/v3/ANTLRv3.g:323:2: ( block (op= '?' -> ^( OPTIONAL[op] block ) | op= '*' -> ^( CLOSURE[op] block ) | op= '+' -> ^( POSITIVE_CLOSURE[op] block ) | '=>' -> {gtype==COMBINED_GRAMMAR &&\n\t\t\t\t\t Character.isUpperCase($rule::name.charAt(0))}? ^( SYNPRED[\"=>\"] block ) -> SYN_SEMPRED | -> block ) )
            // org/antlr/grammar/v3/ANTLRv3.g:323:4: block (op= '?' -> ^( OPTIONAL[op] block ) | op= '*' -> ^( CLOSURE[op] block ) | op= '+' -> ^( POSITIVE_CLOSURE[op] block ) | '=>' -> {gtype==COMBINED_GRAMMAR &&\n\t\t\t\t\t Character.isUpperCase($rule::name.charAt(0))}? ^( SYNPRED[\"=>\"] block ) -> SYN_SEMPRED | -> block )
            {
            pushFollow(FOLLOW_block_in_ebnf2380);
            block146=block();

            state._fsp--;
            if (state.failed) return retval;
            if ( state.backtracking==0 ) stream_block.add(block146.getTree());
            // org/antlr/grammar/v3/ANTLRv3.g:324:3: (op= '?' -> ^( OPTIONAL[op] block ) | op= '*' -> ^( CLOSURE[op] block ) | op= '+' -> ^( POSITIVE_CLOSURE[op] block ) | '=>' -> {gtype==COMBINED_GRAMMAR &&\n\t\t\t\t\t Character.isUpperCase($rule::name.charAt(0))}? ^( SYNPRED[\"=>\"] block ) -> SYN_SEMPRED | -> block )
            int alt69=5;
            switch ( input.LA(1) ) {
            case 91:
                {
                alt69=1;
                }
                break;
            case 74:
                {
                alt69=2;
                }
                break;
            case 92:
                {
                alt69=3;
                }
                break;
            case 86:
                {
                alt69=4;
                }
                break;
            case SEMPRED:
            case TREE_BEGIN:
            case REWRITE:
            case TOKEN_REF:
            case STRING_LITERAL:
            case CHAR_LITERAL:
            case ACTION:
            case RULE_REF:
            case 71:
            case 81:
            case 82:
            case 83:
            case 87:
            case 90:
                {
                alt69=5;
                }
                break;
            default:
                if (state.backtracking>0) {state.failed=true; return retval;}
                NoViableAltException nvae =
                    new NoViableAltException("", 69, 0, input);

                throw nvae;
            }

            switch (alt69) {
                case 1 :
                    // org/antlr/grammar/v3/ANTLRv3.g:324:5: op= '?'
                    {
                    op=(Token)match(input,91,FOLLOW_91_in_ebnf2388); if (state.failed) return retval; 
                    if ( state.backtracking==0 ) stream_91.add(op);



                    // AST REWRITE
                    // elements: block
                    // token labels: 
                    // rule labels: retval
                    // token list labels: 
                    // rule list labels: 
                    // wildcard labels: 
                    if ( state.backtracking==0 ) {
                    retval.tree = root_0;
                    RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                    root_0 = (CommonTree)adaptor.nil();
                    // 324:12: -> ^( OPTIONAL[op] block )
                    {
                        // org/antlr/grammar/v3/ANTLRv3.g:324:15: ^( OPTIONAL[op] block )
                        {
                        CommonTree root_1 = (CommonTree)adaptor.nil();
                        root_1 = (CommonTree)adaptor.becomeRoot((CommonTree)adaptor.create(OPTIONAL, op), root_1);

                        adaptor.addChild(root_1, stream_block.nextTree());

                        adaptor.addChild(root_0, root_1);
                        }

                    }

                    retval.tree = root_0;}
                    }
                    break;
                case 2 :
                    // org/antlr/grammar/v3/ANTLRv3.g:325:5: op= '*'
                    {
                    op=(Token)match(input,74,FOLLOW_74_in_ebnf2405); if (state.failed) return retval; 
                    if ( state.backtracking==0 ) stream_74.add(op);



                    // AST REWRITE
                    // elements: block
                    // token labels: 
                    // rule labels: retval
                    // token list labels: 
                    // rule list labels: 
                    // wildcard labels: 
                    if ( state.backtracking==0 ) {
                    retval.tree = root_0;
                    RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                    root_0 = (CommonTree)adaptor.nil();
                    // 325:12: -> ^( CLOSURE[op] block )
                    {
                        // org/antlr/grammar/v3/ANTLRv3.g:325:15: ^( CLOSURE[op] block )
                        {
                        CommonTree root_1 = (CommonTree)adaptor.nil();
                        root_1 = (CommonTree)adaptor.becomeRoot((CommonTree)adaptor.create(CLOSURE, op), root_1);

                        adaptor.addChild(root_1, stream_block.nextTree());

                        adaptor.addChild(root_0, root_1);
                        }

                    }

                    retval.tree = root_0;}
                    }
                    break;
                case 3 :
                    // org/antlr/grammar/v3/ANTLRv3.g:326:5: op= '+'
                    {
                    op=(Token)match(input,92,FOLLOW_92_in_ebnf2422); if (state.failed) return retval; 
                    if ( state.backtracking==0 ) stream_92.add(op);



                    // AST REWRITE
                    // elements: block
                    // token labels: 
                    // rule labels: retval
                    // token list labels: 
                    // rule list labels: 
                    // wildcard labels: 
                    if ( state.backtracking==0 ) {
                    retval.tree = root_0;
                    RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                    root_0 = (CommonTree)adaptor.nil();
                    // 326:12: -> ^( POSITIVE_CLOSURE[op] block )
                    {
                        // org/antlr/grammar/v3/ANTLRv3.g:326:15: ^( POSITIVE_CLOSURE[op] block )
                        {
                        CommonTree root_1 = (CommonTree)adaptor.nil();
                        root_1 = (CommonTree)adaptor.becomeRoot((CommonTree)adaptor.create(POSITIVE_CLOSURE, op), root_1);

                        adaptor.addChild(root_1, stream_block.nextTree());

                        adaptor.addChild(root_0, root_1);
                        }

                    }

                    retval.tree = root_0;}
                    }
                    break;
                case 4 :
                    // org/antlr/grammar/v3/ANTLRv3.g:327:7: '=>'
                    {
                    string_literal147=(Token)match(input,86,FOLLOW_86_in_ebnf2439); if (state.failed) return retval; 
                    if ( state.backtracking==0 ) stream_86.add(string_literal147);



                    // AST REWRITE
                    // elements: block
                    // token labels: 
                    // rule labels: retval
                    // token list labels: 
                    // rule list labels: 
                    // wildcard labels: 
                    if ( state.backtracking==0 ) {
                    retval.tree = root_0;
                    RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                    root_0 = (CommonTree)adaptor.nil();
                    // 328:6: -> {gtype==COMBINED_GRAMMAR &&\n\t\t\t\t\t Character.isUpperCase($rule::name.charAt(0))}? ^( SYNPRED[\"=>\"] block )
                    if (gtype==COMBINED_GRAMMAR &&
                    					    Character.isUpperCase(((rule_scope)rule_stack.peek()).name.charAt(0))) {
                        // org/antlr/grammar/v3/ANTLRv3.g:331:9: ^( SYNPRED[\"=>\"] block )
                        {
                        CommonTree root_1 = (CommonTree)adaptor.nil();
                        root_1 = (CommonTree)adaptor.becomeRoot((CommonTree)adaptor.create(SYNPRED, "=>"), root_1);

                        adaptor.addChild(root_1, stream_block.nextTree());

                        adaptor.addChild(root_0, root_1);
                        }

                    }
                    else // 333:6: -> SYN_SEMPRED
                    {
                        adaptor.addChild(root_0, (CommonTree)adaptor.create(SYN_SEMPRED, "SYN_SEMPRED"));

                    }

                    retval.tree = root_0;}
                    }
                    break;
                case 5 :
                    // org/antlr/grammar/v3/ANTLRv3.g:334:13: 
                    {

                    // AST REWRITE
                    // elements: block
                    // token labels: 
                    // rule labels: retval
                    // token list labels: 
                    // rule list labels: 
                    // wildcard labels: 
                    if ( state.backtracking==0 ) {
                    retval.tree = root_0;
                    RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                    root_0 = (CommonTree)adaptor.nil();
                    // 334:13: -> block
                    {
                        adaptor.addChild(root_0, stream_block.nextTree());

                    }

                    retval.tree = root_0;}
                    }
                    break;

            }


            }

            retval.stop = input.LT(-1);

            if ( state.backtracking==0 ) {

            retval.tree = (CommonTree)adaptor.rulePostProcessing(root_0);
            adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
            if ( state.backtracking==0 ) {

              	((CommonTree)retval.tree).getToken().setLine(firstToken.getLine());
              	((CommonTree)retval.tree).getToken().setCharPositionInLine(firstToken.getCharPositionInLine());

            }
        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
    	retval.tree = (CommonTree)adaptor.errorNode(input, retval.start, input.LT(-1), re);

        }
        finally {
        }
        return retval;
    }
    // $ANTLR end "ebnf"

    public static class ebnfSuffix_return extends ParserRuleReturnScope {
        CommonTree tree;
        public Object getTree() { return tree; }
    };

    // $ANTLR start "ebnfSuffix"
    // org/antlr/grammar/v3/ANTLRv3.g:338:1: ebnfSuffix : ( '?' -> OPTIONAL[op] | '*' -> CLOSURE[op] | '+' -> POSITIVE_CLOSURE[op] );
    public final ANTLRv3Parser.ebnfSuffix_return ebnfSuffix() throws RecognitionException {
        ANTLRv3Parser.ebnfSuffix_return retval = new ANTLRv3Parser.ebnfSuffix_return();
        retval.start = input.LT(1);

        CommonTree root_0 = null;

        Token char_literal148=null;
        Token char_literal149=null;
        Token char_literal150=null;

        CommonTree char_literal148_tree=null;
        CommonTree char_literal149_tree=null;
        CommonTree char_literal150_tree=null;
        RewriteRuleTokenStream stream_92=new RewriteRuleTokenStream(adaptor,"token 92");
        RewriteRuleTokenStream stream_91=new RewriteRuleTokenStream(adaptor,"token 91");
        RewriteRuleTokenStream stream_74=new RewriteRuleTokenStream(adaptor,"token 74");


        	Token op = input.LT(1);

        try {
            // org/antlr/grammar/v3/ANTLRv3.g:342:2: ( '?' -> OPTIONAL[op] | '*' -> CLOSURE[op] | '+' -> POSITIVE_CLOSURE[op] )
            int alt70=3;
            switch ( input.LA(1) ) {
            case 91:
                {
                alt70=1;
                }
                break;
            case 74:
                {
                alt70=2;
                }
                break;
            case 92:
                {
                alt70=3;
                }
                break;
            default:
                if (state.backtracking>0) {state.failed=true; return retval;}
                NoViableAltException nvae =
                    new NoViableAltException("", 70, 0, input);

                throw nvae;
            }

            switch (alt70) {
                case 1 :
                    // org/antlr/grammar/v3/ANTLRv3.g:342:4: '?'
                    {
                    char_literal148=(Token)match(input,91,FOLLOW_91_in_ebnfSuffix2524); if (state.failed) return retval; 
                    if ( state.backtracking==0 ) stream_91.add(char_literal148);



                    // AST REWRITE
                    // elements: 
                    // token labels: 
                    // rule labels: retval
                    // token list labels: 
                    // rule list labels: 
                    // wildcard labels: 
                    if ( state.backtracking==0 ) {
                    retval.tree = root_0;
                    RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                    root_0 = (CommonTree)adaptor.nil();
                    // 342:8: -> OPTIONAL[op]
                    {
                        adaptor.addChild(root_0, (CommonTree)adaptor.create(OPTIONAL, op));

                    }

                    retval.tree = root_0;}
                    }
                    break;
                case 2 :
                    // org/antlr/grammar/v3/ANTLRv3.g:343:6: '*'
                    {
                    char_literal149=(Token)match(input,74,FOLLOW_74_in_ebnfSuffix2536); if (state.failed) return retval; 
                    if ( state.backtracking==0 ) stream_74.add(char_literal149);



                    // AST REWRITE
                    // elements: 
                    // token labels: 
                    // rule labels: retval
                    // token list labels: 
                    // rule list labels: 
                    // wildcard labels: 
                    if ( state.backtracking==0 ) {
                    retval.tree = root_0;
                    RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                    root_0 = (CommonTree)adaptor.nil();
                    // 343:10: -> CLOSURE[op]
                    {
                        adaptor.addChild(root_0, (CommonTree)adaptor.create(CLOSURE, op));

                    }

                    retval.tree = root_0;}
                    }
                    break;
                case 3 :
                    // org/antlr/grammar/v3/ANTLRv3.g:344:7: '+'
                    {
                    char_literal150=(Token)match(input,92,FOLLOW_92_in_ebnfSuffix2549); if (state.failed) return retval; 
                    if ( state.backtracking==0 ) stream_92.add(char_literal150);



                    // AST REWRITE
                    // elements: 
                    // token labels: 
                    // rule labels: retval
                    // token list labels: 
                    // rule list labels: 
                    // wildcard labels: 
                    if ( state.backtracking==0 ) {
                    retval.tree = root_0;
                    RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                    root_0 = (CommonTree)adaptor.nil();
                    // 344:11: -> POSITIVE_CLOSURE[op]
                    {
                        adaptor.addChild(root_0, (CommonTree)adaptor.create(POSITIVE_CLOSURE, op));

                    }

                    retval.tree = root_0;}
                    }
                    break;

            }
            retval.stop = input.LT(-1);

            if ( state.backtracking==0 ) {

            retval.tree = (CommonTree)adaptor.rulePostProcessing(root_0);
            adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
    	retval.tree = (CommonTree)adaptor.errorNode(input, retval.start, input.LT(-1), re);

        }
        finally {
        }
        return retval;
    }
    // $ANTLR end "ebnfSuffix"

    public static class rewrite_return extends ParserRuleReturnScope {
        CommonTree tree;
        public Object getTree() { return tree; }
    };

    // $ANTLR start "rewrite"
    // org/antlr/grammar/v3/ANTLRv3.g:351:1: rewrite : ( (rew+= '->' preds+= SEMPRED predicated+= rewrite_alternative )* rew2= '->' last= rewrite_alternative -> ( ^( $rew $preds $predicated) )* ^( $rew2 $last) | );
    public final ANTLRv3Parser.rewrite_return rewrite() throws RecognitionException {
        ANTLRv3Parser.rewrite_return retval = new ANTLRv3Parser.rewrite_return();
        retval.start = input.LT(1);

        CommonTree root_0 = null;

        Token rew2=null;
        Token rew=null;
        Token preds=null;
        List list_rew=null;
        List list_preds=null;
        List list_predicated=null;
        ANTLRv3Parser.rewrite_alternative_return last = null;

        ANTLRv3Parser.rewrite_alternative_return predicated = null;
         predicated = null;
        CommonTree rew2_tree=null;
        CommonTree rew_tree=null;
        CommonTree preds_tree=null;
        RewriteRuleTokenStream stream_SEMPRED=new RewriteRuleTokenStream(adaptor,"token SEMPRED");
        RewriteRuleTokenStream stream_REWRITE=new RewriteRuleTokenStream(adaptor,"token REWRITE");
        RewriteRuleSubtreeStream stream_rewrite_alternative=new RewriteRuleSubtreeStream(adaptor,"rule rewrite_alternative");

        	Token firstToken = input.LT(1);

        try {
            // org/antlr/grammar/v3/ANTLRv3.g:355:2: ( (rew+= '->' preds+= SEMPRED predicated+= rewrite_alternative )* rew2= '->' last= rewrite_alternative -> ( ^( $rew $preds $predicated) )* ^( $rew2 $last) | )
            int alt72=2;
            int LA72_0 = input.LA(1);

            if ( (LA72_0==REWRITE) ) {
                alt72=1;
            }
            else if ( (LA72_0==71||(LA72_0>=82 && LA72_0<=83)) ) {
                alt72=2;
            }
            else {
                if (state.backtracking>0) {state.failed=true; return retval;}
                NoViableAltException nvae =
                    new NoViableAltException("", 72, 0, input);

                throw nvae;
            }
            switch (alt72) {
                case 1 :
                    // org/antlr/grammar/v3/ANTLRv3.g:355:4: (rew+= '->' preds+= SEMPRED predicated+= rewrite_alternative )* rew2= '->' last= rewrite_alternative
                    {
                    // org/antlr/grammar/v3/ANTLRv3.g:355:4: (rew+= '->' preds+= SEMPRED predicated+= rewrite_alternative )*
                    loop71:
                    do {
                        int alt71=2;
                        int LA71_0 = input.LA(1);

                        if ( (LA71_0==REWRITE) ) {
                            int LA71_1 = input.LA(2);

                            if ( (LA71_1==SEMPRED) ) {
                                alt71=1;
                            }


                        }


                        switch (alt71) {
                    	case 1 :
                    	    // org/antlr/grammar/v3/ANTLRv3.g:355:5: rew+= '->' preds+= SEMPRED predicated+= rewrite_alternative
                    	    {
                    	    rew=(Token)match(input,REWRITE,FOLLOW_REWRITE_in_rewrite2578); if (state.failed) return retval; 
                    	    if ( state.backtracking==0 ) stream_REWRITE.add(rew);

                    	    if (list_rew==null) list_rew=new ArrayList();
                    	    list_rew.add(rew);

                    	    preds=(Token)match(input,SEMPRED,FOLLOW_SEMPRED_in_rewrite2582); if (state.failed) return retval; 
                    	    if ( state.backtracking==0 ) stream_SEMPRED.add(preds);

                    	    if (list_preds==null) list_preds=new ArrayList();
                    	    list_preds.add(preds);

                    	    pushFollow(FOLLOW_rewrite_alternative_in_rewrite2586);
                    	    predicated=rewrite_alternative();

                    	    state._fsp--;
                    	    if (state.failed) return retval;
                    	    if ( state.backtracking==0 ) stream_rewrite_alternative.add(predicated.getTree());
                    	    if (list_predicated==null) list_predicated=new ArrayList();
                    	    list_predicated.add(predicated.getTree());


                    	    }
                    	    break;

                    	default :
                    	    break loop71;
                        }
                    } while (true);

                    rew2=(Token)match(input,REWRITE,FOLLOW_REWRITE_in_rewrite2594); if (state.failed) return retval; 
                    if ( state.backtracking==0 ) stream_REWRITE.add(rew2);

                    pushFollow(FOLLOW_rewrite_alternative_in_rewrite2598);
                    last=rewrite_alternative();

                    state._fsp--;
                    if (state.failed) return retval;
                    if ( state.backtracking==0 ) stream_rewrite_alternative.add(last.getTree());


                    // AST REWRITE
                    // elements: last, preds, rew, rew2, predicated
                    // token labels: rew2
                    // rule labels: retval, last
                    // token list labels: rew, preds
                    // rule list labels: predicated
                    // wildcard labels: 
                    if ( state.backtracking==0 ) {
                    retval.tree = root_0;
                    RewriteRuleTokenStream stream_rew2=new RewriteRuleTokenStream(adaptor,"token rew2",rew2);
                    RewriteRuleTokenStream stream_rew=new RewriteRuleTokenStream(adaptor,"token rew", list_rew);
                    RewriteRuleTokenStream stream_preds=new RewriteRuleTokenStream(adaptor,"token preds", list_preds);
                    RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);
                    RewriteRuleSubtreeStream stream_last=new RewriteRuleSubtreeStream(adaptor,"rule last",last!=null?last.tree:null);
                    RewriteRuleSubtreeStream stream_predicated=new RewriteRuleSubtreeStream(adaptor,"token predicated",list_predicated);
                    root_0 = (CommonTree)adaptor.nil();
                    // 357:9: -> ( ^( $rew $preds $predicated) )* ^( $rew2 $last)
                    {
                        // org/antlr/grammar/v3/ANTLRv3.g:357:12: ( ^( $rew $preds $predicated) )*
                        while ( stream_preds.hasNext()||stream_rew.hasNext()||stream_predicated.hasNext() ) {
                            // org/antlr/grammar/v3/ANTLRv3.g:357:12: ^( $rew $preds $predicated)
                            {
                            CommonTree root_1 = (CommonTree)adaptor.nil();
                            root_1 = (CommonTree)adaptor.becomeRoot(stream_rew.nextNode(), root_1);

                            adaptor.addChild(root_1, stream_preds.nextNode());
                            adaptor.addChild(root_1, stream_predicated.nextTree());

                            adaptor.addChild(root_0, root_1);
                            }

                        }
                        stream_preds.reset();
                        stream_rew.reset();
                        stream_predicated.reset();
                        // org/antlr/grammar/v3/ANTLRv3.g:357:40: ^( $rew2 $last)
                        {
                        CommonTree root_1 = (CommonTree)adaptor.nil();
                        root_1 = (CommonTree)adaptor.becomeRoot(stream_rew2.nextNode(), root_1);

                        adaptor.addChild(root_1, stream_last.nextTree());

                        adaptor.addChild(root_0, root_1);
                        }

                    }

                    retval.tree = root_0;}
                    }
                    break;
                case 2 :
                    // org/antlr/grammar/v3/ANTLRv3.g:359:2: 
                    {
                    root_0 = (CommonTree)adaptor.nil();

                    }
                    break;

            }
            retval.stop = input.LT(-1);

            if ( state.backtracking==0 ) {

            retval.tree = (CommonTree)adaptor.rulePostProcessing(root_0);
            adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
    	retval.tree = (CommonTree)adaptor.errorNode(input, retval.start, input.LT(-1), re);

        }
        finally {
        }
        return retval;
    }
    // $ANTLR end "rewrite"

    public static class rewrite_alternative_return extends ParserRuleReturnScope {
        CommonTree tree;
        public Object getTree() { return tree; }
    };

    // $ANTLR start "rewrite_alternative"
    // org/antlr/grammar/v3/ANTLRv3.g:361:1: rewrite_alternative options {backtrack=true; } : ( rewrite_template | rewrite_tree_alternative | -> ^( ALT[\"ALT\"] EPSILON[\"EPSILON\"] EOA[\"EOA\"] ) );
    public final ANTLRv3Parser.rewrite_alternative_return rewrite_alternative() throws RecognitionException {
        ANTLRv3Parser.rewrite_alternative_return retval = new ANTLRv3Parser.rewrite_alternative_return();
        retval.start = input.LT(1);

        CommonTree root_0 = null;

        ANTLRv3Parser.rewrite_template_return rewrite_template151 = null;

        ANTLRv3Parser.rewrite_tree_alternative_return rewrite_tree_alternative152 = null;



        try {
            // org/antlr/grammar/v3/ANTLRv3.g:363:2: ( rewrite_template | rewrite_tree_alternative | -> ^( ALT[\"ALT\"] EPSILON[\"EPSILON\"] EOA[\"EOA\"] ) )
            int alt73=3;
            alt73 = dfa73.predict(input);
            switch (alt73) {
                case 1 :
                    // org/antlr/grammar/v3/ANTLRv3.g:363:4: rewrite_template
                    {
                    root_0 = (CommonTree)adaptor.nil();

                    pushFollow(FOLLOW_rewrite_template_in_rewrite_alternative2649);
                    rewrite_template151=rewrite_template();

                    state._fsp--;
                    if (state.failed) return retval;
                    if ( state.backtracking==0 ) adaptor.addChild(root_0, rewrite_template151.getTree());

                    }
                    break;
                case 2 :
                    // org/antlr/grammar/v3/ANTLRv3.g:364:4: rewrite_tree_alternative
                    {
                    root_0 = (CommonTree)adaptor.nil();

                    pushFollow(FOLLOW_rewrite_tree_alternative_in_rewrite_alternative2654);
                    rewrite_tree_alternative152=rewrite_tree_alternative();

                    state._fsp--;
                    if (state.failed) return retval;
                    if ( state.backtracking==0 ) adaptor.addChild(root_0, rewrite_tree_alternative152.getTree());

                    }
                    break;
                case 3 :
                    // org/antlr/grammar/v3/ANTLRv3.g:365:29: 
                    {

                    // AST REWRITE
                    // elements: 
                    // token labels: 
                    // rule labels: retval
                    // token list labels: 
                    // rule list labels: 
                    // wildcard labels: 
                    if ( state.backtracking==0 ) {
                    retval.tree = root_0;
                    RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                    root_0 = (CommonTree)adaptor.nil();
                    // 365:29: -> ^( ALT[\"ALT\"] EPSILON[\"EPSILON\"] EOA[\"EOA\"] )
                    {
                        // org/antlr/grammar/v3/ANTLRv3.g:365:32: ^( ALT[\"ALT\"] EPSILON[\"EPSILON\"] EOA[\"EOA\"] )
                        {
                        CommonTree root_1 = (CommonTree)adaptor.nil();
                        root_1 = (CommonTree)adaptor.becomeRoot((CommonTree)adaptor.create(ALT, "ALT"), root_1);

                        adaptor.addChild(root_1, (CommonTree)adaptor.create(EPSILON, "EPSILON"));
                        adaptor.addChild(root_1, (CommonTree)adaptor.create(EOA, "EOA"));

                        adaptor.addChild(root_0, root_1);
                        }

                    }

                    retval.tree = root_0;}
                    }
                    break;

            }
            retval.stop = input.LT(-1);

            if ( state.backtracking==0 ) {

            retval.tree = (CommonTree)adaptor.rulePostProcessing(root_0);
            adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
    	retval.tree = (CommonTree)adaptor.errorNode(input, retval.start, input.LT(-1), re);

        }
        finally {
        }
        return retval;
    }
    // $ANTLR end "rewrite_alternative"

    public static class rewrite_tree_block_return extends ParserRuleReturnScope {
        CommonTree tree;
        public Object getTree() { return tree; }
    };

    // $ANTLR start "rewrite_tree_block"
    // org/antlr/grammar/v3/ANTLRv3.g:368:1: rewrite_tree_block : lp= '(' rewrite_tree_alternative ')' -> ^( BLOCK[$lp,\"BLOCK\"] rewrite_tree_alternative EOB[$lp,\"EOB\"] ) ;
    public final ANTLRv3Parser.rewrite_tree_block_return rewrite_tree_block() throws RecognitionException {
        ANTLRv3Parser.rewrite_tree_block_return retval = new ANTLRv3Parser.rewrite_tree_block_return();
        retval.start = input.LT(1);

        CommonTree root_0 = null;

        Token lp=null;
        Token char_literal154=null;
        ANTLRv3Parser.rewrite_tree_alternative_return rewrite_tree_alternative153 = null;


        CommonTree lp_tree=null;
        CommonTree char_literal154_tree=null;
        RewriteRuleTokenStream stream_83=new RewriteRuleTokenStream(adaptor,"token 83");
        RewriteRuleTokenStream stream_81=new RewriteRuleTokenStream(adaptor,"token 81");
        RewriteRuleSubtreeStream stream_rewrite_tree_alternative=new RewriteRuleSubtreeStream(adaptor,"rule rewrite_tree_alternative");
        try {
            // org/antlr/grammar/v3/ANTLRv3.g:369:5: (lp= '(' rewrite_tree_alternative ')' -> ^( BLOCK[$lp,\"BLOCK\"] rewrite_tree_alternative EOB[$lp,\"EOB\"] ) )
            // org/antlr/grammar/v3/ANTLRv3.g:369:9: lp= '(' rewrite_tree_alternative ')'
            {
            lp=(Token)match(input,81,FOLLOW_81_in_rewrite_tree_block2696); if (state.failed) return retval; 
            if ( state.backtracking==0 ) stream_81.add(lp);

            pushFollow(FOLLOW_rewrite_tree_alternative_in_rewrite_tree_block2698);
            rewrite_tree_alternative153=rewrite_tree_alternative();

            state._fsp--;
            if (state.failed) return retval;
            if ( state.backtracking==0 ) stream_rewrite_tree_alternative.add(rewrite_tree_alternative153.getTree());
            char_literal154=(Token)match(input,83,FOLLOW_83_in_rewrite_tree_block2700); if (state.failed) return retval; 
            if ( state.backtracking==0 ) stream_83.add(char_literal154);



            // AST REWRITE
            // elements: rewrite_tree_alternative
            // token labels: 
            // rule labels: retval
            // token list labels: 
            // rule list labels: 
            // wildcard labels: 
            if ( state.backtracking==0 ) {
            retval.tree = root_0;
            RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

            root_0 = (CommonTree)adaptor.nil();
            // 370:6: -> ^( BLOCK[$lp,\"BLOCK\"] rewrite_tree_alternative EOB[$lp,\"EOB\"] )
            {
                // org/antlr/grammar/v3/ANTLRv3.g:370:9: ^( BLOCK[$lp,\"BLOCK\"] rewrite_tree_alternative EOB[$lp,\"EOB\"] )
                {
                CommonTree root_1 = (CommonTree)adaptor.nil();
                root_1 = (CommonTree)adaptor.becomeRoot((CommonTree)adaptor.create(BLOCK, lp, "BLOCK"), root_1);

                adaptor.addChild(root_1, stream_rewrite_tree_alternative.nextTree());
                adaptor.addChild(root_1, (CommonTree)adaptor.create(EOB, lp, "EOB"));

                adaptor.addChild(root_0, root_1);
                }

            }

            retval.tree = root_0;}
            }

            retval.stop = input.LT(-1);

            if ( state.backtracking==0 ) {

            retval.tree = (CommonTree)adaptor.rulePostProcessing(root_0);
            adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
    	retval.tree = (CommonTree)adaptor.errorNode(input, retval.start, input.LT(-1), re);

        }
        finally {
        }
        return retval;
    }
    // $ANTLR end "rewrite_tree_block"

    public static class rewrite_tree_alternative_return extends ParserRuleReturnScope {
        CommonTree tree;
        public Object getTree() { return tree; }
    };

    // $ANTLR start "rewrite_tree_alternative"
    // org/antlr/grammar/v3/ANTLRv3.g:373:1: rewrite_tree_alternative : ( rewrite_tree_element )+ -> ^( ALT[\"ALT\"] ( rewrite_tree_element )+ EOA[\"EOA\"] ) ;
    public final ANTLRv3Parser.rewrite_tree_alternative_return rewrite_tree_alternative() throws RecognitionException {
        ANTLRv3Parser.rewrite_tree_alternative_return retval = new ANTLRv3Parser.rewrite_tree_alternative_return();
        retval.start = input.LT(1);

        CommonTree root_0 = null;

        ANTLRv3Parser.rewrite_tree_element_return rewrite_tree_element155 = null;


        RewriteRuleSubtreeStream stream_rewrite_tree_element=new RewriteRuleSubtreeStream(adaptor,"rule rewrite_tree_element");
        try {
            // org/antlr/grammar/v3/ANTLRv3.g:374:5: ( ( rewrite_tree_element )+ -> ^( ALT[\"ALT\"] ( rewrite_tree_element )+ EOA[\"EOA\"] ) )
            // org/antlr/grammar/v3/ANTLRv3.g:374:7: ( rewrite_tree_element )+
            {
            // org/antlr/grammar/v3/ANTLRv3.g:374:7: ( rewrite_tree_element )+
            int cnt74=0;
            loop74:
            do {
                int alt74=2;
                int LA74_0 = input.LA(1);

                if ( (LA74_0==TREE_BEGIN||(LA74_0>=TOKEN_REF && LA74_0<=ACTION)||LA74_0==RULE_REF||LA74_0==81||LA74_0==93) ) {
                    alt74=1;
                }


                switch (alt74) {
            	case 1 :
            	    // org/antlr/grammar/v3/ANTLRv3.g:374:7: rewrite_tree_element
            	    {
            	    pushFollow(FOLLOW_rewrite_tree_element_in_rewrite_tree_alternative2734);
            	    rewrite_tree_element155=rewrite_tree_element();

            	    state._fsp--;
            	    if (state.failed) return retval;
            	    if ( state.backtracking==0 ) stream_rewrite_tree_element.add(rewrite_tree_element155.getTree());

            	    }
            	    break;

            	default :
            	    if ( cnt74 >= 1 ) break loop74;
            	    if (state.backtracking>0) {state.failed=true; return retval;}
                        EarlyExitException eee =
                            new EarlyExitException(74, input);
                        throw eee;
                }
                cnt74++;
            } while (true);



            // AST REWRITE
            // elements: rewrite_tree_element
            // token labels: 
            // rule labels: retval
            // token list labels: 
            // rule list labels: 
            // wildcard labels: 
            if ( state.backtracking==0 ) {
            retval.tree = root_0;
            RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

            root_0 = (CommonTree)adaptor.nil();
            // 374:29: -> ^( ALT[\"ALT\"] ( rewrite_tree_element )+ EOA[\"EOA\"] )
            {
                // org/antlr/grammar/v3/ANTLRv3.g:374:32: ^( ALT[\"ALT\"] ( rewrite_tree_element )+ EOA[\"EOA\"] )
                {
                CommonTree root_1 = (CommonTree)adaptor.nil();
                root_1 = (CommonTree)adaptor.becomeRoot((CommonTree)adaptor.create(ALT, "ALT"), root_1);

                if ( !(stream_rewrite_tree_element.hasNext()) ) {
                    throw new RewriteEarlyExitException();
                }
                while ( stream_rewrite_tree_element.hasNext() ) {
                    adaptor.addChild(root_1, stream_rewrite_tree_element.nextTree());

                }
                stream_rewrite_tree_element.reset();
                adaptor.addChild(root_1, (CommonTree)adaptor.create(EOA, "EOA"));

                adaptor.addChild(root_0, root_1);
                }

            }

            retval.tree = root_0;}
            }

            retval.stop = input.LT(-1);

            if ( state.backtracking==0 ) {

            retval.tree = (CommonTree)adaptor.rulePostProcessing(root_0);
            adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
    	retval.tree = (CommonTree)adaptor.errorNode(input, retval.start, input.LT(-1), re);

        }
        finally {
        }
        return retval;
    }
    // $ANTLR end "rewrite_tree_alternative"

    public static class rewrite_tree_element_return extends ParserRuleReturnScope {
        CommonTree tree;
        public Object getTree() { return tree; }
    };

    // $ANTLR start "rewrite_tree_element"
    // org/antlr/grammar/v3/ANTLRv3.g:377:1: rewrite_tree_element : ( rewrite_tree_atom | rewrite_tree_atom ebnfSuffix -> ^( ebnfSuffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] rewrite_tree_atom EOA[\"EOA\"] ) EOB[\"EOB\"] ) ) | rewrite_tree ( ebnfSuffix -> ^( ebnfSuffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] rewrite_tree EOA[\"EOA\"] ) EOB[\"EOB\"] ) ) | -> rewrite_tree ) | rewrite_tree_ebnf );
    public final ANTLRv3Parser.rewrite_tree_element_return rewrite_tree_element() throws RecognitionException {
        ANTLRv3Parser.rewrite_tree_element_return retval = new ANTLRv3Parser.rewrite_tree_element_return();
        retval.start = input.LT(1);

        CommonTree root_0 = null;

        ANTLRv3Parser.rewrite_tree_atom_return rewrite_tree_atom156 = null;

        ANTLRv3Parser.rewrite_tree_atom_return rewrite_tree_atom157 = null;

        ANTLRv3Parser.ebnfSuffix_return ebnfSuffix158 = null;

        ANTLRv3Parser.rewrite_tree_return rewrite_tree159 = null;

        ANTLRv3Parser.ebnfSuffix_return ebnfSuffix160 = null;

        ANTLRv3Parser.rewrite_tree_ebnf_return rewrite_tree_ebnf161 = null;


        RewriteRuleSubtreeStream stream_rewrite_tree=new RewriteRuleSubtreeStream(adaptor,"rule rewrite_tree");
        RewriteRuleSubtreeStream stream_ebnfSuffix=new RewriteRuleSubtreeStream(adaptor,"rule ebnfSuffix");
        RewriteRuleSubtreeStream stream_rewrite_tree_atom=new RewriteRuleSubtreeStream(adaptor,"rule rewrite_tree_atom");
        try {
            // org/antlr/grammar/v3/ANTLRv3.g:378:2: ( rewrite_tree_atom | rewrite_tree_atom ebnfSuffix -> ^( ebnfSuffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] rewrite_tree_atom EOA[\"EOA\"] ) EOB[\"EOB\"] ) ) | rewrite_tree ( ebnfSuffix -> ^( ebnfSuffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] rewrite_tree EOA[\"EOA\"] ) EOB[\"EOB\"] ) ) | -> rewrite_tree ) | rewrite_tree_ebnf )
            int alt76=4;
            alt76 = dfa76.predict(input);
            switch (alt76) {
                case 1 :
                    // org/antlr/grammar/v3/ANTLRv3.g:378:4: rewrite_tree_atom
                    {
                    root_0 = (CommonTree)adaptor.nil();

                    pushFollow(FOLLOW_rewrite_tree_atom_in_rewrite_tree_element2762);
                    rewrite_tree_atom156=rewrite_tree_atom();

                    state._fsp--;
                    if (state.failed) return retval;
                    if ( state.backtracking==0 ) adaptor.addChild(root_0, rewrite_tree_atom156.getTree());

                    }
                    break;
                case 2 :
                    // org/antlr/grammar/v3/ANTLRv3.g:379:4: rewrite_tree_atom ebnfSuffix
                    {
                    pushFollow(FOLLOW_rewrite_tree_atom_in_rewrite_tree_element2767);
                    rewrite_tree_atom157=rewrite_tree_atom();

                    state._fsp--;
                    if (state.failed) return retval;
                    if ( state.backtracking==0 ) stream_rewrite_tree_atom.add(rewrite_tree_atom157.getTree());
                    pushFollow(FOLLOW_ebnfSuffix_in_rewrite_tree_element2769);
                    ebnfSuffix158=ebnfSuffix();

                    state._fsp--;
                    if (state.failed) return retval;
                    if ( state.backtracking==0 ) stream_ebnfSuffix.add(ebnfSuffix158.getTree());


                    // AST REWRITE
                    // elements: ebnfSuffix, rewrite_tree_atom
                    // token labels: 
                    // rule labels: retval
                    // token list labels: 
                    // rule list labels: 
                    // wildcard labels: 
                    if ( state.backtracking==0 ) {
                    retval.tree = root_0;
                    RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                    root_0 = (CommonTree)adaptor.nil();
                    // 380:3: -> ^( ebnfSuffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] rewrite_tree_atom EOA[\"EOA\"] ) EOB[\"EOB\"] ) )
                    {
                        // org/antlr/grammar/v3/ANTLRv3.g:380:6: ^( ebnfSuffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] rewrite_tree_atom EOA[\"EOA\"] ) EOB[\"EOB\"] ) )
                        {
                        CommonTree root_1 = (CommonTree)adaptor.nil();
                        root_1 = (CommonTree)adaptor.becomeRoot(stream_ebnfSuffix.nextNode(), root_1);

                        // org/antlr/grammar/v3/ANTLRv3.g:380:20: ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] rewrite_tree_atom EOA[\"EOA\"] ) EOB[\"EOB\"] )
                        {
                        CommonTree root_2 = (CommonTree)adaptor.nil();
                        root_2 = (CommonTree)adaptor.becomeRoot((CommonTree)adaptor.create(BLOCK, "BLOCK"), root_2);

                        // org/antlr/grammar/v3/ANTLRv3.g:380:37: ^( ALT[\"ALT\"] rewrite_tree_atom EOA[\"EOA\"] )
                        {
                        CommonTree root_3 = (CommonTree)adaptor.nil();
                        root_3 = (CommonTree)adaptor.becomeRoot((CommonTree)adaptor.create(ALT, "ALT"), root_3);

                        adaptor.addChild(root_3, stream_rewrite_tree_atom.nextTree());
                        adaptor.addChild(root_3, (CommonTree)adaptor.create(EOA, "EOA"));

                        adaptor.addChild(root_2, root_3);
                        }
                        adaptor.addChild(root_2, (CommonTree)adaptor.create(EOB, "EOB"));

                        adaptor.addChild(root_1, root_2);
                        }

                        adaptor.addChild(root_0, root_1);
                        }

                    }

                    retval.tree = root_0;}
                    }
                    break;
                case 3 :
                    // org/antlr/grammar/v3/ANTLRv3.g:381:6: rewrite_tree ( ebnfSuffix -> ^( ebnfSuffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] rewrite_tree EOA[\"EOA\"] ) EOB[\"EOB\"] ) ) | -> rewrite_tree )
                    {
                    pushFollow(FOLLOW_rewrite_tree_in_rewrite_tree_element2803);
                    rewrite_tree159=rewrite_tree();

                    state._fsp--;
                    if (state.failed) return retval;
                    if ( state.backtracking==0 ) stream_rewrite_tree.add(rewrite_tree159.getTree());
                    // org/antlr/grammar/v3/ANTLRv3.g:382:3: ( ebnfSuffix -> ^( ebnfSuffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] rewrite_tree EOA[\"EOA\"] ) EOB[\"EOB\"] ) ) | -> rewrite_tree )
                    int alt75=2;
                    int LA75_0 = input.LA(1);

                    if ( (LA75_0==74||(LA75_0>=91 && LA75_0<=92)) ) {
                        alt75=1;
                    }
                    else if ( (LA75_0==EOF||LA75_0==TREE_BEGIN||LA75_0==REWRITE||(LA75_0>=TOKEN_REF && LA75_0<=ACTION)||LA75_0==RULE_REF||LA75_0==71||(LA75_0>=81 && LA75_0<=83)||LA75_0==93) ) {
                        alt75=2;
                    }
                    else {
                        if (state.backtracking>0) {state.failed=true; return retval;}
                        NoViableAltException nvae =
                            new NoViableAltException("", 75, 0, input);

                        throw nvae;
                    }
                    switch (alt75) {
                        case 1 :
                            // org/antlr/grammar/v3/ANTLRv3.g:382:5: ebnfSuffix
                            {
                            pushFollow(FOLLOW_ebnfSuffix_in_rewrite_tree_element2809);
                            ebnfSuffix160=ebnfSuffix();

                            state._fsp--;
                            if (state.failed) return retval;
                            if ( state.backtracking==0 ) stream_ebnfSuffix.add(ebnfSuffix160.getTree());


                            // AST REWRITE
                            // elements: ebnfSuffix, rewrite_tree
                            // token labels: 
                            // rule labels: retval
                            // token list labels: 
                            // rule list labels: 
                            // wildcard labels: 
                            if ( state.backtracking==0 ) {
                            retval.tree = root_0;
                            RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                            root_0 = (CommonTree)adaptor.nil();
                            // 383:4: -> ^( ebnfSuffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] rewrite_tree EOA[\"EOA\"] ) EOB[\"EOB\"] ) )
                            {
                                // org/antlr/grammar/v3/ANTLRv3.g:383:7: ^( ebnfSuffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] rewrite_tree EOA[\"EOA\"] ) EOB[\"EOB\"] ) )
                                {
                                CommonTree root_1 = (CommonTree)adaptor.nil();
                                root_1 = (CommonTree)adaptor.becomeRoot(stream_ebnfSuffix.nextNode(), root_1);

                                // org/antlr/grammar/v3/ANTLRv3.g:383:20: ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] rewrite_tree EOA[\"EOA\"] ) EOB[\"EOB\"] )
                                {
                                CommonTree root_2 = (CommonTree)adaptor.nil();
                                root_2 = (CommonTree)adaptor.becomeRoot((CommonTree)adaptor.create(BLOCK, "BLOCK"), root_2);

                                // org/antlr/grammar/v3/ANTLRv3.g:383:37: ^( ALT[\"ALT\"] rewrite_tree EOA[\"EOA\"] )
                                {
                                CommonTree root_3 = (CommonTree)adaptor.nil();
                                root_3 = (CommonTree)adaptor.becomeRoot((CommonTree)adaptor.create(ALT, "ALT"), root_3);

                                adaptor.addChild(root_3, stream_rewrite_tree.nextTree());
                                adaptor.addChild(root_3, (CommonTree)adaptor.create(EOA, "EOA"));

                                adaptor.addChild(root_2, root_3);
                                }
                                adaptor.addChild(root_2, (CommonTree)adaptor.create(EOB, "EOB"));

                                adaptor.addChild(root_1, root_2);
                                }

                                adaptor.addChild(root_0, root_1);
                                }

                            }

                            retval.tree = root_0;}
                            }
                            break;
                        case 2 :
                            // org/antlr/grammar/v3/ANTLRv3.g:384:5: 
                            {

                            // AST REWRITE
                            // elements: rewrite_tree
                            // token labels: 
                            // rule labels: retval
                            // token list labels: 
                            // rule list labels: 
                            // wildcard labels: 
                            if ( state.backtracking==0 ) {
                            retval.tree = root_0;
                            RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                            root_0 = (CommonTree)adaptor.nil();
                            // 384:5: -> rewrite_tree
                            {
                                adaptor.addChild(root_0, stream_rewrite_tree.nextTree());

                            }

                            retval.tree = root_0;}
                            }
                            break;

                    }


                    }
                    break;
                case 4 :
                    // org/antlr/grammar/v3/ANTLRv3.g:386:6: rewrite_tree_ebnf
                    {
                    root_0 = (CommonTree)adaptor.nil();

                    pushFollow(FOLLOW_rewrite_tree_ebnf_in_rewrite_tree_element2855);
                    rewrite_tree_ebnf161=rewrite_tree_ebnf();

                    state._fsp--;
                    if (state.failed) return retval;
                    if ( state.backtracking==0 ) adaptor.addChild(root_0, rewrite_tree_ebnf161.getTree());

                    }
                    break;

            }
            retval.stop = input.LT(-1);

            if ( state.backtracking==0 ) {

            retval.tree = (CommonTree)adaptor.rulePostProcessing(root_0);
            adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
    	retval.tree = (CommonTree)adaptor.errorNode(input, retval.start, input.LT(-1), re);

        }
        finally {
        }
        return retval;
    }
    // $ANTLR end "rewrite_tree_element"

    public static class rewrite_tree_atom_return extends ParserRuleReturnScope {
        CommonTree tree;
        public Object getTree() { return tree; }
    };

    // $ANTLR start "rewrite_tree_atom"
    // org/antlr/grammar/v3/ANTLRv3.g:389:1: rewrite_tree_atom : ( CHAR_LITERAL | TOKEN_REF ( ARG_ACTION )? -> ^( TOKEN_REF ( ARG_ACTION )? ) | RULE_REF | STRING_LITERAL | d= '$' id -> LABEL[$d,$id.text] | ACTION );
    public final ANTLRv3Parser.rewrite_tree_atom_return rewrite_tree_atom() throws RecognitionException {
        ANTLRv3Parser.rewrite_tree_atom_return retval = new ANTLRv3Parser.rewrite_tree_atom_return();
        retval.start = input.LT(1);

        CommonTree root_0 = null;

        Token d=null;
        Token CHAR_LITERAL162=null;
        Token TOKEN_REF163=null;
        Token ARG_ACTION164=null;
        Token RULE_REF165=null;
        Token STRING_LITERAL166=null;
        Token ACTION168=null;
        ANTLRv3Parser.id_return id167 = null;


        CommonTree d_tree=null;
        CommonTree CHAR_LITERAL162_tree=null;
        CommonTree TOKEN_REF163_tree=null;
        CommonTree ARG_ACTION164_tree=null;
        CommonTree RULE_REF165_tree=null;
        CommonTree STRING_LITERAL166_tree=null;
        CommonTree ACTION168_tree=null;
        RewriteRuleTokenStream stream_93=new RewriteRuleTokenStream(adaptor,"token 93");
        RewriteRuleTokenStream stream_TOKEN_REF=new RewriteRuleTokenStream(adaptor,"token TOKEN_REF");
        RewriteRuleTokenStream stream_ARG_ACTION=new RewriteRuleTokenStream(adaptor,"token ARG_ACTION");
        RewriteRuleSubtreeStream stream_id=new RewriteRuleSubtreeStream(adaptor,"rule id");
        try {
            // org/antlr/grammar/v3/ANTLRv3.g:390:5: ( CHAR_LITERAL | TOKEN_REF ( ARG_ACTION )? -> ^( TOKEN_REF ( ARG_ACTION )? ) | RULE_REF | STRING_LITERAL | d= '$' id -> LABEL[$d,$id.text] | ACTION )
            int alt78=6;
            switch ( input.LA(1) ) {
            case CHAR_LITERAL:
                {
                alt78=1;
                }
                break;
            case TOKEN_REF:
                {
                alt78=2;
                }
                break;
            case RULE_REF:
                {
                alt78=3;
                }
                break;
            case STRING_LITERAL:
                {
                alt78=4;
                }
                break;
            case 93:
                {
                alt78=5;
                }
                break;
            case ACTION:
                {
                alt78=6;
                }
                break;
            default:
                if (state.backtracking>0) {state.failed=true; return retval;}
                NoViableAltException nvae =
                    new NoViableAltException("", 78, 0, input);

                throw nvae;
            }

            switch (alt78) {
                case 1 :
                    // org/antlr/grammar/v3/ANTLRv3.g:390:9: CHAR_LITERAL
                    {
                    root_0 = (CommonTree)adaptor.nil();

                    CHAR_LITERAL162=(Token)match(input,CHAR_LITERAL,FOLLOW_CHAR_LITERAL_in_rewrite_tree_atom2871); if (state.failed) return retval;
                    if ( state.backtracking==0 ) {
                    CHAR_LITERAL162_tree = (CommonTree)adaptor.create(CHAR_LITERAL162);
                    adaptor.addChild(root_0, CHAR_LITERAL162_tree);
                    }

                    }
                    break;
                case 2 :
                    // org/antlr/grammar/v3/ANTLRv3.g:391:6: TOKEN_REF ( ARG_ACTION )?
                    {
                    TOKEN_REF163=(Token)match(input,TOKEN_REF,FOLLOW_TOKEN_REF_in_rewrite_tree_atom2878); if (state.failed) return retval; 
                    if ( state.backtracking==0 ) stream_TOKEN_REF.add(TOKEN_REF163);

                    // org/antlr/grammar/v3/ANTLRv3.g:391:16: ( ARG_ACTION )?
                    int alt77=2;
                    int LA77_0 = input.LA(1);

                    if ( (LA77_0==ARG_ACTION) ) {
                        alt77=1;
                    }
                    switch (alt77) {
                        case 1 :
                            // org/antlr/grammar/v3/ANTLRv3.g:391:16: ARG_ACTION
                            {
                            ARG_ACTION164=(Token)match(input,ARG_ACTION,FOLLOW_ARG_ACTION_in_rewrite_tree_atom2880); if (state.failed) return retval; 
                            if ( state.backtracking==0 ) stream_ARG_ACTION.add(ARG_ACTION164);


                            }
                            break;

                    }



                    // AST REWRITE
                    // elements: TOKEN_REF, ARG_ACTION
                    // token labels: 
                    // rule labels: retval
                    // token list labels: 
                    // rule list labels: 
                    // wildcard labels: 
                    if ( state.backtracking==0 ) {
                    retval.tree = root_0;
                    RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                    root_0 = (CommonTree)adaptor.nil();
                    // 391:28: -> ^( TOKEN_REF ( ARG_ACTION )? )
                    {
                        // org/antlr/grammar/v3/ANTLRv3.g:391:31: ^( TOKEN_REF ( ARG_ACTION )? )
                        {
                        CommonTree root_1 = (CommonTree)adaptor.nil();
                        root_1 = (CommonTree)adaptor.becomeRoot(stream_TOKEN_REF.nextNode(), root_1);

                        // org/antlr/grammar/v3/ANTLRv3.g:391:43: ( ARG_ACTION )?
                        if ( stream_ARG_ACTION.hasNext() ) {
                            adaptor.addChild(root_1, stream_ARG_ACTION.nextNode());

                        }
                        stream_ARG_ACTION.reset();

                        adaptor.addChild(root_0, root_1);
                        }

                    }

                    retval.tree = root_0;}
                    }
                    break;
                case 3 :
                    // org/antlr/grammar/v3/ANTLRv3.g:392:9: RULE_REF
                    {
                    root_0 = (CommonTree)adaptor.nil();

                    RULE_REF165=(Token)match(input,RULE_REF,FOLLOW_RULE_REF_in_rewrite_tree_atom2901); if (state.failed) return retval;
                    if ( state.backtracking==0 ) {
                    RULE_REF165_tree = (CommonTree)adaptor.create(RULE_REF165);
                    adaptor.addChild(root_0, RULE_REF165_tree);
                    }

                    }
                    break;
                case 4 :
                    // org/antlr/grammar/v3/ANTLRv3.g:393:6: STRING_LITERAL
                    {
                    root_0 = (CommonTree)adaptor.nil();

                    STRING_LITERAL166=(Token)match(input,STRING_LITERAL,FOLLOW_STRING_LITERAL_in_rewrite_tree_atom2908); if (state.failed) return retval;
                    if ( state.backtracking==0 ) {
                    STRING_LITERAL166_tree = (CommonTree)adaptor.create(STRING_LITERAL166);
                    adaptor.addChild(root_0, STRING_LITERAL166_tree);
                    }

                    }
                    break;
                case 5 :
                    // org/antlr/grammar/v3/ANTLRv3.g:394:6: d= '$' id
                    {
                    d=(Token)match(input,93,FOLLOW_93_in_rewrite_tree_atom2917); if (state.failed) return retval; 
                    if ( state.backtracking==0 ) stream_93.add(d);

                    pushFollow(FOLLOW_id_in_rewrite_tree_atom2919);
                    id167=id();

                    state._fsp--;
                    if (state.failed) return retval;
                    if ( state.backtracking==0 ) stream_id.add(id167.getTree());


                    // AST REWRITE
                    // elements: 
                    // token labels: 
                    // rule labels: retval
                    // token list labels: 
                    // rule list labels: 
                    // wildcard labels: 
                    if ( state.backtracking==0 ) {
                    retval.tree = root_0;
                    RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                    root_0 = (CommonTree)adaptor.nil();
                    // 394:15: -> LABEL[$d,$id.text]
                    {
                        adaptor.addChild(root_0, (CommonTree)adaptor.create(LABEL, d, (id167!=null?input.toString(id167.start,id167.stop):null)));

                    }

                    retval.tree = root_0;}
                    }
                    break;
                case 6 :
                    // org/antlr/grammar/v3/ANTLRv3.g:395:4: ACTION
                    {
                    root_0 = (CommonTree)adaptor.nil();

                    ACTION168=(Token)match(input,ACTION,FOLLOW_ACTION_in_rewrite_tree_atom2930); if (state.failed) return retval;
                    if ( state.backtracking==0 ) {
                    ACTION168_tree = (CommonTree)adaptor.create(ACTION168);
                    adaptor.addChild(root_0, ACTION168_tree);
                    }

                    }
                    break;

            }
            retval.stop = input.LT(-1);

            if ( state.backtracking==0 ) {

            retval.tree = (CommonTree)adaptor.rulePostProcessing(root_0);
            adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
    	retval.tree = (CommonTree)adaptor.errorNode(input, retval.start, input.LT(-1), re);

        }
        finally {
        }
        return retval;
    }
    // $ANTLR end "rewrite_tree_atom"

    public static class rewrite_tree_ebnf_return extends ParserRuleReturnScope {
        CommonTree tree;
        public Object getTree() { return tree; }
    };

    // $ANTLR start "rewrite_tree_ebnf"
    // org/antlr/grammar/v3/ANTLRv3.g:398:1: rewrite_tree_ebnf : rewrite_tree_block ebnfSuffix -> ^( ebnfSuffix rewrite_tree_block ) ;
    public final ANTLRv3Parser.rewrite_tree_ebnf_return rewrite_tree_ebnf() throws RecognitionException {
        ANTLRv3Parser.rewrite_tree_ebnf_return retval = new ANTLRv3Parser.rewrite_tree_ebnf_return();
        retval.start = input.LT(1);

        CommonTree root_0 = null;

        ANTLRv3Parser.rewrite_tree_block_return rewrite_tree_block169 = null;

        ANTLRv3Parser.ebnfSuffix_return ebnfSuffix170 = null;


        RewriteRuleSubtreeStream stream_ebnfSuffix=new RewriteRuleSubtreeStream(adaptor,"rule ebnfSuffix");
        RewriteRuleSubtreeStream stream_rewrite_tree_block=new RewriteRuleSubtreeStream(adaptor,"rule rewrite_tree_block");

            Token firstToken = input.LT(1);

        try {
            // org/antlr/grammar/v3/ANTLRv3.g:406:2: ( rewrite_tree_block ebnfSuffix -> ^( ebnfSuffix rewrite_tree_block ) )
            // org/antlr/grammar/v3/ANTLRv3.g:406:4: rewrite_tree_block ebnfSuffix
            {
            pushFollow(FOLLOW_rewrite_tree_block_in_rewrite_tree_ebnf2951);
            rewrite_tree_block169=rewrite_tree_block();

            state._fsp--;
            if (state.failed) return retval;
            if ( state.backtracking==0 ) stream_rewrite_tree_block.add(rewrite_tree_block169.getTree());
            pushFollow(FOLLOW_ebnfSuffix_in_rewrite_tree_ebnf2953);
            ebnfSuffix170=ebnfSuffix();

            state._fsp--;
            if (state.failed) return retval;
            if ( state.backtracking==0 ) stream_ebnfSuffix.add(ebnfSuffix170.getTree());


            // AST REWRITE
            // elements: ebnfSuffix, rewrite_tree_block
            // token labels: 
            // rule labels: retval
            // token list labels: 
            // rule list labels: 
            // wildcard labels: 
            if ( state.backtracking==0 ) {
            retval.tree = root_0;
            RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

            root_0 = (CommonTree)adaptor.nil();
            // 406:34: -> ^( ebnfSuffix rewrite_tree_block )
            {
                // org/antlr/grammar/v3/ANTLRv3.g:406:37: ^( ebnfSuffix rewrite_tree_block )
                {
                CommonTree root_1 = (CommonTree)adaptor.nil();
                root_1 = (CommonTree)adaptor.becomeRoot(stream_ebnfSuffix.nextNode(), root_1);

                adaptor.addChild(root_1, stream_rewrite_tree_block.nextTree());

                adaptor.addChild(root_0, root_1);
                }

            }

            retval.tree = root_0;}
            }

            retval.stop = input.LT(-1);

            if ( state.backtracking==0 ) {

            retval.tree = (CommonTree)adaptor.rulePostProcessing(root_0);
            adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
            if ( state.backtracking==0 ) {

              	((CommonTree)retval.tree).getToken().setLine(firstToken.getLine());
              	((CommonTree)retval.tree).getToken().setCharPositionInLine(firstToken.getCharPositionInLine());

            }
        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
    	retval.tree = (CommonTree)adaptor.errorNode(input, retval.start, input.LT(-1), re);

        }
        finally {
        }
        return retval;
    }
    // $ANTLR end "rewrite_tree_ebnf"

    public static class rewrite_tree_return extends ParserRuleReturnScope {
        CommonTree tree;
        public Object getTree() { return tree; }
    };

    // $ANTLR start "rewrite_tree"
    // org/antlr/grammar/v3/ANTLRv3.g:409:1: rewrite_tree : '^(' rewrite_tree_atom ( rewrite_tree_element )* ')' -> ^( TREE_BEGIN rewrite_tree_atom ( rewrite_tree_element )* ) ;
    public final ANTLRv3Parser.rewrite_tree_return rewrite_tree() throws RecognitionException {
        ANTLRv3Parser.rewrite_tree_return retval = new ANTLRv3Parser.rewrite_tree_return();
        retval.start = input.LT(1);

        CommonTree root_0 = null;

        Token string_literal171=null;
        Token char_literal174=null;
        ANTLRv3Parser.rewrite_tree_atom_return rewrite_tree_atom172 = null;

        ANTLRv3Parser.rewrite_tree_element_return rewrite_tree_element173 = null;


        CommonTree string_literal171_tree=null;
        CommonTree char_literal174_tree=null;
        RewriteRuleTokenStream stream_83=new RewriteRuleTokenStream(adaptor,"token 83");
        RewriteRuleTokenStream stream_TREE_BEGIN=new RewriteRuleTokenStream(adaptor,"token TREE_BEGIN");
        RewriteRuleSubtreeStream stream_rewrite_tree_element=new RewriteRuleSubtreeStream(adaptor,"rule rewrite_tree_element");
        RewriteRuleSubtreeStream stream_rewrite_tree_atom=new RewriteRuleSubtreeStream(adaptor,"rule rewrite_tree_atom");
        try {
            // org/antlr/grammar/v3/ANTLRv3.g:410:2: ( '^(' rewrite_tree_atom ( rewrite_tree_element )* ')' -> ^( TREE_BEGIN rewrite_tree_atom ( rewrite_tree_element )* ) )
            // org/antlr/grammar/v3/ANTLRv3.g:410:4: '^(' rewrite_tree_atom ( rewrite_tree_element )* ')'
            {
            string_literal171=(Token)match(input,TREE_BEGIN,FOLLOW_TREE_BEGIN_in_rewrite_tree2973); if (state.failed) return retval; 
            if ( state.backtracking==0 ) stream_TREE_BEGIN.add(string_literal171);

            pushFollow(FOLLOW_rewrite_tree_atom_in_rewrite_tree2975);
            rewrite_tree_atom172=rewrite_tree_atom();

            state._fsp--;
            if (state.failed) return retval;
            if ( state.backtracking==0 ) stream_rewrite_tree_atom.add(rewrite_tree_atom172.getTree());
            // org/antlr/grammar/v3/ANTLRv3.g:410:27: ( rewrite_tree_element )*
            loop79:
            do {
                int alt79=2;
                int LA79_0 = input.LA(1);

                if ( (LA79_0==TREE_BEGIN||(LA79_0>=TOKEN_REF && LA79_0<=ACTION)||LA79_0==RULE_REF||LA79_0==81||LA79_0==93) ) {
                    alt79=1;
                }


                switch (alt79) {
            	case 1 :
            	    // org/antlr/grammar/v3/ANTLRv3.g:410:27: rewrite_tree_element
            	    {
            	    pushFollow(FOLLOW_rewrite_tree_element_in_rewrite_tree2977);
            	    rewrite_tree_element173=rewrite_tree_element();

            	    state._fsp--;
            	    if (state.failed) return retval;
            	    if ( state.backtracking==0 ) stream_rewrite_tree_element.add(rewrite_tree_element173.getTree());

            	    }
            	    break;

            	default :
            	    break loop79;
                }
            } while (true);

            char_literal174=(Token)match(input,83,FOLLOW_83_in_rewrite_tree2980); if (state.failed) return retval; 
            if ( state.backtracking==0 ) stream_83.add(char_literal174);



            // AST REWRITE
            // elements: rewrite_tree_element, rewrite_tree_atom
            // token labels: 
            // rule labels: retval
            // token list labels: 
            // rule list labels: 
            // wildcard labels: 
            if ( state.backtracking==0 ) {
            retval.tree = root_0;
            RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

            root_0 = (CommonTree)adaptor.nil();
            // 411:3: -> ^( TREE_BEGIN rewrite_tree_atom ( rewrite_tree_element )* )
            {
                // org/antlr/grammar/v3/ANTLRv3.g:411:6: ^( TREE_BEGIN rewrite_tree_atom ( rewrite_tree_element )* )
                {
                CommonTree root_1 = (CommonTree)adaptor.nil();
                root_1 = (CommonTree)adaptor.becomeRoot((CommonTree)adaptor.create(TREE_BEGIN, "TREE_BEGIN"), root_1);

                adaptor.addChild(root_1, stream_rewrite_tree_atom.nextTree());
                // org/antlr/grammar/v3/ANTLRv3.g:411:37: ( rewrite_tree_element )*
                while ( stream_rewrite_tree_element.hasNext() ) {
                    adaptor.addChild(root_1, stream_rewrite_tree_element.nextTree());

                }
                stream_rewrite_tree_element.reset();

                adaptor.addChild(root_0, root_1);
                }

            }

            retval.tree = root_0;}
            }

            retval.stop = input.LT(-1);

            if ( state.backtracking==0 ) {

            retval.tree = (CommonTree)adaptor.rulePostProcessing(root_0);
            adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
    	retval.tree = (CommonTree)adaptor.errorNode(input, retval.start, input.LT(-1), re);

        }
        finally {
        }
        return retval;
    }
    // $ANTLR end "rewrite_tree"

    public static class rewrite_template_return extends ParserRuleReturnScope {
        CommonTree tree;
        public Object getTree() { return tree; }
    };

    // $ANTLR start "rewrite_template"
    // org/antlr/grammar/v3/ANTLRv3.g:414:1: rewrite_template : ( id lp= '(' rewrite_template_args ')' (str= DOUBLE_QUOTE_STRING_LITERAL | str= DOUBLE_ANGLE_STRING_LITERAL ) -> ^( TEMPLATE[$lp,\"TEMPLATE\"] id rewrite_template_args $str) | rewrite_template_ref | rewrite_indirect_template_head | ACTION );
    public final ANTLRv3Parser.rewrite_template_return rewrite_template() throws RecognitionException {
        ANTLRv3Parser.rewrite_template_return retval = new ANTLRv3Parser.rewrite_template_return();
        retval.start = input.LT(1);

        CommonTree root_0 = null;

        Token lp=null;
        Token str=null;
        Token char_literal177=null;
        Token ACTION180=null;
        ANTLRv3Parser.id_return id175 = null;

        ANTLRv3Parser.rewrite_template_args_return rewrite_template_args176 = null;

        ANTLRv3Parser.rewrite_template_ref_return rewrite_template_ref178 = null;

        ANTLRv3Parser.rewrite_indirect_template_head_return rewrite_indirect_template_head179 = null;


        CommonTree lp_tree=null;
        CommonTree str_tree=null;
        CommonTree char_literal177_tree=null;
        CommonTree ACTION180_tree=null;
        RewriteRuleTokenStream stream_DOUBLE_QUOTE_STRING_LITERAL=new RewriteRuleTokenStream(adaptor,"token DOUBLE_QUOTE_STRING_LITERAL");
        RewriteRuleTokenStream stream_83=new RewriteRuleTokenStream(adaptor,"token 83");
        RewriteRuleTokenStream stream_DOUBLE_ANGLE_STRING_LITERAL=new RewriteRuleTokenStream(adaptor,"token DOUBLE_ANGLE_STRING_LITERAL");
        RewriteRuleTokenStream stream_81=new RewriteRuleTokenStream(adaptor,"token 81");
        RewriteRuleSubtreeStream stream_id=new RewriteRuleSubtreeStream(adaptor,"rule id");
        RewriteRuleSubtreeStream stream_rewrite_template_args=new RewriteRuleSubtreeStream(adaptor,"rule rewrite_template_args");
        try {
            // org/antlr/grammar/v3/ANTLRv3.g:426:2: ( id lp= '(' rewrite_template_args ')' (str= DOUBLE_QUOTE_STRING_LITERAL | str= DOUBLE_ANGLE_STRING_LITERAL ) -> ^( TEMPLATE[$lp,\"TEMPLATE\"] id rewrite_template_args $str) | rewrite_template_ref | rewrite_indirect_template_head | ACTION )
            int alt81=4;
            alt81 = dfa81.predict(input);
            switch (alt81) {
                case 1 :
                    // org/antlr/grammar/v3/ANTLRv3.g:427:3: id lp= '(' rewrite_template_args ')' (str= DOUBLE_QUOTE_STRING_LITERAL | str= DOUBLE_ANGLE_STRING_LITERAL )
                    {
                    pushFollow(FOLLOW_id_in_rewrite_template3012);
                    id175=id();

                    state._fsp--;
                    if (state.failed) return retval;
                    if ( state.backtracking==0 ) stream_id.add(id175.getTree());
                    lp=(Token)match(input,81,FOLLOW_81_in_rewrite_template3016); if (state.failed) return retval; 
                    if ( state.backtracking==0 ) stream_81.add(lp);

                    pushFollow(FOLLOW_rewrite_template_args_in_rewrite_template3018);
                    rewrite_template_args176=rewrite_template_args();

                    state._fsp--;
                    if (state.failed) return retval;
                    if ( state.backtracking==0 ) stream_rewrite_template_args.add(rewrite_template_args176.getTree());
                    char_literal177=(Token)match(input,83,FOLLOW_83_in_rewrite_template3020); if (state.failed) return retval; 
                    if ( state.backtracking==0 ) stream_83.add(char_literal177);

                    // org/antlr/grammar/v3/ANTLRv3.g:428:3: (str= DOUBLE_QUOTE_STRING_LITERAL | str= DOUBLE_ANGLE_STRING_LITERAL )
                    int alt80=2;
                    int LA80_0 = input.LA(1);

                    if ( (LA80_0==DOUBLE_QUOTE_STRING_LITERAL) ) {
                        alt80=1;
                    }
                    else if ( (LA80_0==DOUBLE_ANGLE_STRING_LITERAL) ) {
                        alt80=2;
                    }
                    else {
                        if (state.backtracking>0) {state.failed=true; return retval;}
                        NoViableAltException nvae =
                            new NoViableAltException("", 80, 0, input);

                        throw nvae;
                    }
                    switch (alt80) {
                        case 1 :
                            // org/antlr/grammar/v3/ANTLRv3.g:428:5: str= DOUBLE_QUOTE_STRING_LITERAL
                            {
                            str=(Token)match(input,DOUBLE_QUOTE_STRING_LITERAL,FOLLOW_DOUBLE_QUOTE_STRING_LITERAL_in_rewrite_template3028); if (state.failed) return retval; 
                            if ( state.backtracking==0 ) stream_DOUBLE_QUOTE_STRING_LITERAL.add(str);


                            }
                            break;
                        case 2 :
                            // org/antlr/grammar/v3/ANTLRv3.g:428:39: str= DOUBLE_ANGLE_STRING_LITERAL
                            {
                            str=(Token)match(input,DOUBLE_ANGLE_STRING_LITERAL,FOLLOW_DOUBLE_ANGLE_STRING_LITERAL_in_rewrite_template3034); if (state.failed) return retval; 
                            if ( state.backtracking==0 ) stream_DOUBLE_ANGLE_STRING_LITERAL.add(str);


                            }
                            break;

                    }



                    // AST REWRITE
                    // elements: str, id, rewrite_template_args
                    // token labels: str
                    // rule labels: retval
                    // token list labels: 
                    // rule list labels: 
                    // wildcard labels: 
                    if ( state.backtracking==0 ) {
                    retval.tree = root_0;
                    RewriteRuleTokenStream stream_str=new RewriteRuleTokenStream(adaptor,"token str",str);
                    RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                    root_0 = (CommonTree)adaptor.nil();
                    // 429:3: -> ^( TEMPLATE[$lp,\"TEMPLATE\"] id rewrite_template_args $str)
                    {
                        // org/antlr/grammar/v3/ANTLRv3.g:429:6: ^( TEMPLATE[$lp,\"TEMPLATE\"] id rewrite_template_args $str)
                        {
                        CommonTree root_1 = (CommonTree)adaptor.nil();
                        root_1 = (CommonTree)adaptor.becomeRoot((CommonTree)adaptor.create(TEMPLATE, lp, "TEMPLATE"), root_1);

                        adaptor.addChild(root_1, stream_id.nextTree());
                        adaptor.addChild(root_1, stream_rewrite_template_args.nextTree());
                        adaptor.addChild(root_1, stream_str.nextNode());

                        adaptor.addChild(root_0, root_1);
                        }

                    }

                    retval.tree = root_0;}
                    }
                    break;
                case 2 :
                    // org/antlr/grammar/v3/ANTLRv3.g:432:3: rewrite_template_ref
                    {
                    root_0 = (CommonTree)adaptor.nil();

                    pushFollow(FOLLOW_rewrite_template_ref_in_rewrite_template3061);
                    rewrite_template_ref178=rewrite_template_ref();

                    state._fsp--;
                    if (state.failed) return retval;
                    if ( state.backtracking==0 ) adaptor.addChild(root_0, rewrite_template_ref178.getTree());

                    }
                    break;
                case 3 :
                    // org/antlr/grammar/v3/ANTLRv3.g:435:3: rewrite_indirect_template_head
                    {
                    root_0 = (CommonTree)adaptor.nil();

                    pushFollow(FOLLOW_rewrite_indirect_template_head_in_rewrite_template3070);
                    rewrite_indirect_template_head179=rewrite_indirect_template_head();

                    state._fsp--;
                    if (state.failed) return retval;
                    if ( state.backtracking==0 ) adaptor.addChild(root_0, rewrite_indirect_template_head179.getTree());

                    }
                    break;
                case 4 :
                    // org/antlr/grammar/v3/ANTLRv3.g:438:3: ACTION
                    {
                    root_0 = (CommonTree)adaptor.nil();

                    ACTION180=(Token)match(input,ACTION,FOLLOW_ACTION_in_rewrite_template3079); if (state.failed) return retval;
                    if ( state.backtracking==0 ) {
                    ACTION180_tree = (CommonTree)adaptor.create(ACTION180);
                    adaptor.addChild(root_0, ACTION180_tree);
                    }

                    }
                    break;

            }
            retval.stop = input.LT(-1);

            if ( state.backtracking==0 ) {

            retval.tree = (CommonTree)adaptor.rulePostProcessing(root_0);
            adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
    	retval.tree = (CommonTree)adaptor.errorNode(input, retval.start, input.LT(-1), re);

        }
        finally {
        }
        return retval;
    }
    // $ANTLR end "rewrite_template"

    public static class rewrite_template_ref_return extends ParserRuleReturnScope {
        CommonTree tree;
        public Object getTree() { return tree; }
    };

    // $ANTLR start "rewrite_template_ref"
    // org/antlr/grammar/v3/ANTLRv3.g:441:1: rewrite_template_ref : id lp= '(' rewrite_template_args ')' -> ^( TEMPLATE[$lp,\"TEMPLATE\"] id rewrite_template_args ) ;
    public final ANTLRv3Parser.rewrite_template_ref_return rewrite_template_ref() throws RecognitionException {
        ANTLRv3Parser.rewrite_template_ref_return retval = new ANTLRv3Parser.rewrite_template_ref_return();
        retval.start = input.LT(1);

        CommonTree root_0 = null;

        Token lp=null;
        Token char_literal183=null;
        ANTLRv3Parser.id_return id181 = null;

        ANTLRv3Parser.rewrite_template_args_return rewrite_template_args182 = null;


        CommonTree lp_tree=null;
        CommonTree char_literal183_tree=null;
        RewriteRuleTokenStream stream_83=new RewriteRuleTokenStream(adaptor,"token 83");
        RewriteRuleTokenStream stream_81=new RewriteRuleTokenStream(adaptor,"token 81");
        RewriteRuleSubtreeStream stream_id=new RewriteRuleSubtreeStream(adaptor,"rule id");
        RewriteRuleSubtreeStream stream_rewrite_template_args=new RewriteRuleSubtreeStream(adaptor,"rule rewrite_template_args");
        try {
            // org/antlr/grammar/v3/ANTLRv3.g:443:2: ( id lp= '(' rewrite_template_args ')' -> ^( TEMPLATE[$lp,\"TEMPLATE\"] id rewrite_template_args ) )
            // org/antlr/grammar/v3/ANTLRv3.g:443:4: id lp= '(' rewrite_template_args ')'
            {
            pushFollow(FOLLOW_id_in_rewrite_template_ref3092);
            id181=id();

            state._fsp--;
            if (state.failed) return retval;
            if ( state.backtracking==0 ) stream_id.add(id181.getTree());
            lp=(Token)match(input,81,FOLLOW_81_in_rewrite_template_ref3096); if (state.failed) return retval; 
            if ( state.backtracking==0 ) stream_81.add(lp);

            pushFollow(FOLLOW_rewrite_template_args_in_rewrite_template_ref3098);
            rewrite_template_args182=rewrite_template_args();

            state._fsp--;
            if (state.failed) return retval;
            if ( state.backtracking==0 ) stream_rewrite_template_args.add(rewrite_template_args182.getTree());
            char_literal183=(Token)match(input,83,FOLLOW_83_in_rewrite_template_ref3100); if (state.failed) return retval; 
            if ( state.backtracking==0 ) stream_83.add(char_literal183);



            // AST REWRITE
            // elements: id, rewrite_template_args
            // token labels: 
            // rule labels: retval
            // token list labels: 
            // rule list labels: 
            // wildcard labels: 
            if ( state.backtracking==0 ) {
            retval.tree = root_0;
            RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

            root_0 = (CommonTree)adaptor.nil();
            // 444:3: -> ^( TEMPLATE[$lp,\"TEMPLATE\"] id rewrite_template_args )
            {
                // org/antlr/grammar/v3/ANTLRv3.g:444:6: ^( TEMPLATE[$lp,\"TEMPLATE\"] id rewrite_template_args )
                {
                CommonTree root_1 = (CommonTree)adaptor.nil();
                root_1 = (CommonTree)adaptor.becomeRoot((CommonTree)adaptor.create(TEMPLATE, lp, "TEMPLATE"), root_1);

                adaptor.addChild(root_1, stream_id.nextTree());
                adaptor.addChild(root_1, stream_rewrite_template_args.nextTree());

                adaptor.addChild(root_0, root_1);
                }

            }

            retval.tree = root_0;}
            }

            retval.stop = input.LT(-1);

            if ( state.backtracking==0 ) {

            retval.tree = (CommonTree)adaptor.rulePostProcessing(root_0);
            adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
    	retval.tree = (CommonTree)adaptor.errorNode(input, retval.start, input.LT(-1), re);

        }
        finally {
        }
        return retval;
    }
    // $ANTLR end "rewrite_template_ref"

    public static class rewrite_indirect_template_head_return extends ParserRuleReturnScope {
        CommonTree tree;
        public Object getTree() { return tree; }
    };

    // $ANTLR start "rewrite_indirect_template_head"
    // org/antlr/grammar/v3/ANTLRv3.g:447:1: rewrite_indirect_template_head : lp= '(' ACTION ')' '(' rewrite_template_args ')' -> ^( TEMPLATE[$lp,\"TEMPLATE\"] ACTION rewrite_template_args ) ;
    public final ANTLRv3Parser.rewrite_indirect_template_head_return rewrite_indirect_template_head() throws RecognitionException {
        ANTLRv3Parser.rewrite_indirect_template_head_return retval = new ANTLRv3Parser.rewrite_indirect_template_head_return();
        retval.start = input.LT(1);

        CommonTree root_0 = null;

        Token lp=null;
        Token ACTION184=null;
        Token char_literal185=null;
        Token char_literal186=null;
        Token char_literal188=null;
        ANTLRv3Parser.rewrite_template_args_return rewrite_template_args187 = null;


        CommonTree lp_tree=null;
        CommonTree ACTION184_tree=null;
        CommonTree char_literal185_tree=null;
        CommonTree char_literal186_tree=null;
        CommonTree char_literal188_tree=null;
        RewriteRuleTokenStream stream_83=new RewriteRuleTokenStream(adaptor,"token 83");
        RewriteRuleTokenStream stream_81=new RewriteRuleTokenStream(adaptor,"token 81");
        RewriteRuleTokenStream stream_ACTION=new RewriteRuleTokenStream(adaptor,"token ACTION");
        RewriteRuleSubtreeStream stream_rewrite_template_args=new RewriteRuleSubtreeStream(adaptor,"rule rewrite_template_args");
        try {
            // org/antlr/grammar/v3/ANTLRv3.g:449:2: (lp= '(' ACTION ')' '(' rewrite_template_args ')' -> ^( TEMPLATE[$lp,\"TEMPLATE\"] ACTION rewrite_template_args ) )
            // org/antlr/grammar/v3/ANTLRv3.g:449:4: lp= '(' ACTION ')' '(' rewrite_template_args ')'
            {
            lp=(Token)match(input,81,FOLLOW_81_in_rewrite_indirect_template_head3128); if (state.failed) return retval; 
            if ( state.backtracking==0 ) stream_81.add(lp);

            ACTION184=(Token)match(input,ACTION,FOLLOW_ACTION_in_rewrite_indirect_template_head3130); if (state.failed) return retval; 
            if ( state.backtracking==0 ) stream_ACTION.add(ACTION184);

            char_literal185=(Token)match(input,83,FOLLOW_83_in_rewrite_indirect_template_head3132); if (state.failed) return retval; 
            if ( state.backtracking==0 ) stream_83.add(char_literal185);

            char_literal186=(Token)match(input,81,FOLLOW_81_in_rewrite_indirect_template_head3134); if (state.failed) return retval; 
            if ( state.backtracking==0 ) stream_81.add(char_literal186);

            pushFollow(FOLLOW_rewrite_template_args_in_rewrite_indirect_template_head3136);
            rewrite_template_args187=rewrite_template_args();

            state._fsp--;
            if (state.failed) return retval;
            if ( state.backtracking==0 ) stream_rewrite_template_args.add(rewrite_template_args187.getTree());
            char_literal188=(Token)match(input,83,FOLLOW_83_in_rewrite_indirect_template_head3138); if (state.failed) return retval; 
            if ( state.backtracking==0 ) stream_83.add(char_literal188);



            // AST REWRITE
            // elements: ACTION, rewrite_template_args
            // token labels: 
            // rule labels: retval
            // token list labels: 
            // rule list labels: 
            // wildcard labels: 
            if ( state.backtracking==0 ) {
            retval.tree = root_0;
            RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

            root_0 = (CommonTree)adaptor.nil();
            // 450:3: -> ^( TEMPLATE[$lp,\"TEMPLATE\"] ACTION rewrite_template_args )
            {
                // org/antlr/grammar/v3/ANTLRv3.g:450:6: ^( TEMPLATE[$lp,\"TEMPLATE\"] ACTION rewrite_template_args )
                {
                CommonTree root_1 = (CommonTree)adaptor.nil();
                root_1 = (CommonTree)adaptor.becomeRoot((CommonTree)adaptor.create(TEMPLATE, lp, "TEMPLATE"), root_1);

                adaptor.addChild(root_1, stream_ACTION.nextNode());
                adaptor.addChild(root_1, stream_rewrite_template_args.nextTree());

                adaptor.addChild(root_0, root_1);
                }

            }

            retval.tree = root_0;}
            }

            retval.stop = input.LT(-1);

            if ( state.backtracking==0 ) {

            retval.tree = (CommonTree)adaptor.rulePostProcessing(root_0);
            adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
    	retval.tree = (CommonTree)adaptor.errorNode(input, retval.start, input.LT(-1), re);

        }
        finally {
        }
        return retval;
    }
    // $ANTLR end "rewrite_indirect_template_head"

    public static class rewrite_template_args_return extends ParserRuleReturnScope {
        CommonTree tree;
        public Object getTree() { return tree; }
    };

    // $ANTLR start "rewrite_template_args"
    // org/antlr/grammar/v3/ANTLRv3.g:453:1: rewrite_template_args : ( rewrite_template_arg ( ',' rewrite_template_arg )* -> ^( ARGLIST ( rewrite_template_arg )+ ) | -> ARGLIST );
    public final ANTLRv3Parser.rewrite_template_args_return rewrite_template_args() throws RecognitionException {
        ANTLRv3Parser.rewrite_template_args_return retval = new ANTLRv3Parser.rewrite_template_args_return();
        retval.start = input.LT(1);

        CommonTree root_0 = null;

        Token char_literal190=null;
        ANTLRv3Parser.rewrite_template_arg_return rewrite_template_arg189 = null;

        ANTLRv3Parser.rewrite_template_arg_return rewrite_template_arg191 = null;


        CommonTree char_literal190_tree=null;
        RewriteRuleTokenStream stream_80=new RewriteRuleTokenStream(adaptor,"token 80");
        RewriteRuleSubtreeStream stream_rewrite_template_arg=new RewriteRuleSubtreeStream(adaptor,"rule rewrite_template_arg");
        try {
            // org/antlr/grammar/v3/ANTLRv3.g:454:2: ( rewrite_template_arg ( ',' rewrite_template_arg )* -> ^( ARGLIST ( rewrite_template_arg )+ ) | -> ARGLIST )
            int alt83=2;
            int LA83_0 = input.LA(1);

            if ( (LA83_0==TOKEN_REF||LA83_0==RULE_REF) ) {
                alt83=1;
            }
            else if ( (LA83_0==83) ) {
                alt83=2;
            }
            else {
                if (state.backtracking>0) {state.failed=true; return retval;}
                NoViableAltException nvae =
                    new NoViableAltException("", 83, 0, input);

                throw nvae;
            }
            switch (alt83) {
                case 1 :
                    // org/antlr/grammar/v3/ANTLRv3.g:454:4: rewrite_template_arg ( ',' rewrite_template_arg )*
                    {
                    pushFollow(FOLLOW_rewrite_template_arg_in_rewrite_template_args3162);
                    rewrite_template_arg189=rewrite_template_arg();

                    state._fsp--;
                    if (state.failed) return retval;
                    if ( state.backtracking==0 ) stream_rewrite_template_arg.add(rewrite_template_arg189.getTree());
                    // org/antlr/grammar/v3/ANTLRv3.g:454:25: ( ',' rewrite_template_arg )*
                    loop82:
                    do {
                        int alt82=2;
                        int LA82_0 = input.LA(1);

                        if ( (LA82_0==80) ) {
                            alt82=1;
                        }


                        switch (alt82) {
                    	case 1 :
                    	    // org/antlr/grammar/v3/ANTLRv3.g:454:26: ',' rewrite_template_arg
                    	    {
                    	    char_literal190=(Token)match(input,80,FOLLOW_80_in_rewrite_template_args3165); if (state.failed) return retval; 
                    	    if ( state.backtracking==0 ) stream_80.add(char_literal190);

                    	    pushFollow(FOLLOW_rewrite_template_arg_in_rewrite_template_args3167);
                    	    rewrite_template_arg191=rewrite_template_arg();

                    	    state._fsp--;
                    	    if (state.failed) return retval;
                    	    if ( state.backtracking==0 ) stream_rewrite_template_arg.add(rewrite_template_arg191.getTree());

                    	    }
                    	    break;

                    	default :
                    	    break loop82;
                        }
                    } while (true);



                    // AST REWRITE
                    // elements: rewrite_template_arg
                    // token labels: 
                    // rule labels: retval
                    // token list labels: 
                    // rule list labels: 
                    // wildcard labels: 
                    if ( state.backtracking==0 ) {
                    retval.tree = root_0;
                    RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                    root_0 = (CommonTree)adaptor.nil();
                    // 455:3: -> ^( ARGLIST ( rewrite_template_arg )+ )
                    {
                        // org/antlr/grammar/v3/ANTLRv3.g:455:6: ^( ARGLIST ( rewrite_template_arg )+ )
                        {
                        CommonTree root_1 = (CommonTree)adaptor.nil();
                        root_1 = (CommonTree)adaptor.becomeRoot((CommonTree)adaptor.create(ARGLIST, "ARGLIST"), root_1);

                        if ( !(stream_rewrite_template_arg.hasNext()) ) {
                            throw new RewriteEarlyExitException();
                        }
                        while ( stream_rewrite_template_arg.hasNext() ) {
                            adaptor.addChild(root_1, stream_rewrite_template_arg.nextTree());

                        }
                        stream_rewrite_template_arg.reset();

                        adaptor.addChild(root_0, root_1);
                        }

                    }

                    retval.tree = root_0;}
                    }
                    break;
                case 2 :
                    // org/antlr/grammar/v3/ANTLRv3.g:456:4: 
                    {

                    // AST REWRITE
                    // elements: 
                    // token labels: 
                    // rule labels: retval
                    // token list labels: 
                    // rule list labels: 
                    // wildcard labels: 
                    if ( state.backtracking==0 ) {
                    retval.tree = root_0;
                    RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                    root_0 = (CommonTree)adaptor.nil();
                    // 456:4: -> ARGLIST
                    {
                        adaptor.addChild(root_0, (CommonTree)adaptor.create(ARGLIST, "ARGLIST"));

                    }

                    retval.tree = root_0;}
                    }
                    break;

            }
            retval.stop = input.LT(-1);

            if ( state.backtracking==0 ) {

            retval.tree = (CommonTree)adaptor.rulePostProcessing(root_0);
            adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
    	retval.tree = (CommonTree)adaptor.errorNode(input, retval.start, input.LT(-1), re);

        }
        finally {
        }
        return retval;
    }
    // $ANTLR end "rewrite_template_args"

    public static class rewrite_template_arg_return extends ParserRuleReturnScope {
        CommonTree tree;
        public Object getTree() { return tree; }
    };

    // $ANTLR start "rewrite_template_arg"
    // org/antlr/grammar/v3/ANTLRv3.g:459:1: rewrite_template_arg : id '=' ACTION -> ^( ARG[$id.start] id ACTION ) ;
    public final ANTLRv3Parser.rewrite_template_arg_return rewrite_template_arg() throws RecognitionException {
        ANTLRv3Parser.rewrite_template_arg_return retval = new ANTLRv3Parser.rewrite_template_arg_return();
        retval.start = input.LT(1);

        CommonTree root_0 = null;

        Token char_literal193=null;
        Token ACTION194=null;
        ANTLRv3Parser.id_return id192 = null;


        CommonTree char_literal193_tree=null;
        CommonTree ACTION194_tree=null;
        RewriteRuleTokenStream stream_LABEL_ASSIGN=new RewriteRuleTokenStream(adaptor,"token LABEL_ASSIGN");
        RewriteRuleTokenStream stream_ACTION=new RewriteRuleTokenStream(adaptor,"token ACTION");
        RewriteRuleSubtreeStream stream_id=new RewriteRuleSubtreeStream(adaptor,"rule id");
        try {
            // org/antlr/grammar/v3/ANTLRv3.g:460:2: ( id '=' ACTION -> ^( ARG[$id.start] id ACTION ) )
            // org/antlr/grammar/v3/ANTLRv3.g:460:6: id '=' ACTION
            {
            pushFollow(FOLLOW_id_in_rewrite_template_arg3200);
            id192=id();

            state._fsp--;
            if (state.failed) return retval;
            if ( state.backtracking==0 ) stream_id.add(id192.getTree());
            char_literal193=(Token)match(input,LABEL_ASSIGN,FOLLOW_LABEL_ASSIGN_in_rewrite_template_arg3202); if (state.failed) return retval; 
            if ( state.backtracking==0 ) stream_LABEL_ASSIGN.add(char_literal193);

            ACTION194=(Token)match(input,ACTION,FOLLOW_ACTION_in_rewrite_template_arg3204); if (state.failed) return retval; 
            if ( state.backtracking==0 ) stream_ACTION.add(ACTION194);



            // AST REWRITE
            // elements: ACTION, id
            // token labels: 
            // rule labels: retval
            // token list labels: 
            // rule list labels: 
            // wildcard labels: 
            if ( state.backtracking==0 ) {
            retval.tree = root_0;
            RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

            root_0 = (CommonTree)adaptor.nil();
            // 460:20: -> ^( ARG[$id.start] id ACTION )
            {
                // org/antlr/grammar/v3/ANTLRv3.g:460:23: ^( ARG[$id.start] id ACTION )
                {
                CommonTree root_1 = (CommonTree)adaptor.nil();
                root_1 = (CommonTree)adaptor.becomeRoot((CommonTree)adaptor.create(ARG, (id192!=null?((Token)id192.start):null)), root_1);

                adaptor.addChild(root_1, stream_id.nextTree());
                adaptor.addChild(root_1, stream_ACTION.nextNode());

                adaptor.addChild(root_0, root_1);
                }

            }

            retval.tree = root_0;}
            }

            retval.stop = input.LT(-1);

            if ( state.backtracking==0 ) {

            retval.tree = (CommonTree)adaptor.rulePostProcessing(root_0);
            adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
    	retval.tree = (CommonTree)adaptor.errorNode(input, retval.start, input.LT(-1), re);

        }
        finally {
        }
        return retval;
    }
    // $ANTLR end "rewrite_template_arg"

    public static class qid_return extends ParserRuleReturnScope {
        CommonTree tree;
        public Object getTree() { return tree; }
    };

    // $ANTLR start "qid"
    // org/antlr/grammar/v3/ANTLRv3.g:463:1: qid : id ( '.' id )* ;
    public final ANTLRv3Parser.qid_return qid() throws RecognitionException {
        ANTLRv3Parser.qid_return retval = new ANTLRv3Parser.qid_return();
        retval.start = input.LT(1);

        CommonTree root_0 = null;

        Token char_literal196=null;
        ANTLRv3Parser.id_return id195 = null;

        ANTLRv3Parser.id_return id197 = null;


        CommonTree char_literal196_tree=null;

        try {
            // org/antlr/grammar/v3/ANTLRv3.g:463:5: ( id ( '.' id )* )
            // org/antlr/grammar/v3/ANTLRv3.g:463:7: id ( '.' id )*
            {
            root_0 = (CommonTree)adaptor.nil();

            pushFollow(FOLLOW_id_in_qid3225);
            id195=id();

            state._fsp--;
            if (state.failed) return retval;
            if ( state.backtracking==0 ) adaptor.addChild(root_0, id195.getTree());
            // org/antlr/grammar/v3/ANTLRv3.g:463:10: ( '.' id )*
            loop84:
            do {
                int alt84=2;
                int LA84_0 = input.LA(1);

                if ( (LA84_0==90) ) {
                    alt84=1;
                }


                switch (alt84) {
            	case 1 :
            	    // org/antlr/grammar/v3/ANTLRv3.g:463:11: '.' id
            	    {
            	    char_literal196=(Token)match(input,90,FOLLOW_90_in_qid3228); if (state.failed) return retval;
            	    if ( state.backtracking==0 ) {
            	    char_literal196_tree = (CommonTree)adaptor.create(char_literal196);
            	    adaptor.addChild(root_0, char_literal196_tree);
            	    }
            	    pushFollow(FOLLOW_id_in_qid3230);
            	    id197=id();

            	    state._fsp--;
            	    if (state.failed) return retval;
            	    if ( state.backtracking==0 ) adaptor.addChild(root_0, id197.getTree());

            	    }
            	    break;

            	default :
            	    break loop84;
                }
            } while (true);


            }

            retval.stop = input.LT(-1);

            if ( state.backtracking==0 ) {

            retval.tree = (CommonTree)adaptor.rulePostProcessing(root_0);
            adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
    	retval.tree = (CommonTree)adaptor.errorNode(input, retval.start, input.LT(-1), re);

        }
        finally {
        }
        return retval;
    }
    // $ANTLR end "qid"

    public static class id_return extends ParserRuleReturnScope {
        CommonTree tree;
        public Object getTree() { return tree; }
    };

    // $ANTLR start "id"
    // org/antlr/grammar/v3/ANTLRv3.g:465:1: id : ( TOKEN_REF -> ID[$TOKEN_REF] | RULE_REF -> ID[$RULE_REF] );
    public final ANTLRv3Parser.id_return id() throws RecognitionException {
        ANTLRv3Parser.id_return retval = new ANTLRv3Parser.id_return();
        retval.start = input.LT(1);

        CommonTree root_0 = null;

        Token TOKEN_REF198=null;
        Token RULE_REF199=null;

        CommonTree TOKEN_REF198_tree=null;
        CommonTree RULE_REF199_tree=null;
        RewriteRuleTokenStream stream_RULE_REF=new RewriteRuleTokenStream(adaptor,"token RULE_REF");
        RewriteRuleTokenStream stream_TOKEN_REF=new RewriteRuleTokenStream(adaptor,"token TOKEN_REF");

        try {
            // org/antlr/grammar/v3/ANTLRv3.g:465:4: ( TOKEN_REF -> ID[$TOKEN_REF] | RULE_REF -> ID[$RULE_REF] )
            int alt85=2;
            int LA85_0 = input.LA(1);

            if ( (LA85_0==TOKEN_REF) ) {
                alt85=1;
            }
            else if ( (LA85_0==RULE_REF) ) {
                alt85=2;
            }
            else {
                if (state.backtracking>0) {state.failed=true; return retval;}
                NoViableAltException nvae =
                    new NoViableAltException("", 85, 0, input);

                throw nvae;
            }
            switch (alt85) {
                case 1 :
                    // org/antlr/grammar/v3/ANTLRv3.g:465:6: TOKEN_REF
                    {
                    TOKEN_REF198=(Token)match(input,TOKEN_REF,FOLLOW_TOKEN_REF_in_id3242); if (state.failed) return retval; 
                    if ( state.backtracking==0 ) stream_TOKEN_REF.add(TOKEN_REF198);



                    // AST REWRITE
                    // elements: 
                    // token labels: 
                    // rule labels: retval
                    // token list labels: 
                    // rule list labels: 
                    // wildcard labels: 
                    if ( state.backtracking==0 ) {
                    retval.tree = root_0;
                    RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                    root_0 = (CommonTree)adaptor.nil();
                    // 465:16: -> ID[$TOKEN_REF]
                    {
                        adaptor.addChild(root_0, (CommonTree)adaptor.create(ID, TOKEN_REF198));

                    }

                    retval.tree = root_0;}
                    }
                    break;
                case 2 :
                    // org/antlr/grammar/v3/ANTLRv3.g:466:4: RULE_REF
                    {
                    RULE_REF199=(Token)match(input,RULE_REF,FOLLOW_RULE_REF_in_id3252); if (state.failed) return retval; 
                    if ( state.backtracking==0 ) stream_RULE_REF.add(RULE_REF199);



                    // AST REWRITE
                    // elements: 
                    // token labels: 
                    // rule labels: retval
                    // token list labels: 
                    // rule list labels: 
                    // wildcard labels: 
                    if ( state.backtracking==0 ) {
                    retval.tree = root_0;
                    RewriteRuleSubtreeStream stream_retval=new RewriteRuleSubtreeStream(adaptor,"rule retval",retval!=null?retval.tree:null);

                    root_0 = (CommonTree)adaptor.nil();
                    // 466:14: -> ID[$RULE_REF]
                    {
                        adaptor.addChild(root_0, (CommonTree)adaptor.create(ID, RULE_REF199));

                    }

                    retval.tree = root_0;}
                    }
                    break;

            }
            retval.stop = input.LT(-1);

            if ( state.backtracking==0 ) {

            retval.tree = (CommonTree)adaptor.rulePostProcessing(root_0);
            adaptor.setTokenBoundaries(retval.tree, retval.start, retval.stop);
            }
        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
    	retval.tree = (CommonTree)adaptor.errorNode(input, retval.start, input.LT(-1), re);

        }
        finally {
        }
        return retval;
    }
    // $ANTLR end "id"

    // $ANTLR start synpred1_ANTLRv3
    public final void synpred1_ANTLRv3_fragment() throws RecognitionException {   
        // org/antlr/grammar/v3/ANTLRv3.g:363:4: ( rewrite_template )
        // org/antlr/grammar/v3/ANTLRv3.g:363:4: rewrite_template
        {
        pushFollow(FOLLOW_rewrite_template_in_synpred1_ANTLRv32649);
        rewrite_template();

        state._fsp--;
        if (state.failed) return ;

        }
    }
    // $ANTLR end synpred1_ANTLRv3

    // $ANTLR start synpred2_ANTLRv3
    public final void synpred2_ANTLRv3_fragment() throws RecognitionException {   
        // org/antlr/grammar/v3/ANTLRv3.g:364:4: ( rewrite_tree_alternative )
        // org/antlr/grammar/v3/ANTLRv3.g:364:4: rewrite_tree_alternative
        {
        pushFollow(FOLLOW_rewrite_tree_alternative_in_synpred2_ANTLRv32654);
        rewrite_tree_alternative();

        state._fsp--;
        if (state.failed) return ;

        }
    }
    // $ANTLR end synpred2_ANTLRv3

    // Delegated rules

    public final boolean synpred2_ANTLRv3() {
        state.backtracking++;
        int start = input.mark();
        try {
            synpred2_ANTLRv3_fragment(); // can never throw exception
        } catch (RecognitionException re) {
            System.err.println("impossible: "+re);
        }
        boolean success = !state.failed;
        input.rewind(start);
        state.backtracking--;
        state.failed=false;
        return success;
    }
    public final boolean synpred1_ANTLRv3() {
        state.backtracking++;
        int start = input.mark();
        try {
            synpred1_ANTLRv3_fragment(); // can never throw exception
        } catch (RecognitionException re) {
            System.err.println("impossible: "+re);
        }
        boolean success = !state.failed;
        input.rewind(start);
        state.backtracking--;
        state.failed=false;
        return success;
    }


    protected DFA46 dfa46 = new DFA46(this);
    protected DFA73 dfa73 = new DFA73(this);
    protected DFA76 dfa76 = new DFA76(this);
    protected DFA81 dfa81 = new DFA81(this);
    static final String DFA46_eotS =
        "\14\uffff";
    static final String DFA46_eofS =
        "\14\uffff";
    static final String DFA46_minS =
        "\3\37\5\uffff\2\54\2\uffff";
    static final String DFA46_maxS =
        "\1\132\2\134\5\uffff\2\132\2\uffff";
    static final String DFA46_acceptS =
        "\3\uffff\1\3\1\4\1\5\1\6\1\7\2\uffff\1\2\1\1";
    static final String DFA46_specialS =
        "\14\uffff}>";
    static final String[] DFA46_transitionS = {
            "\1\6\4\uffff\1\7\7\uffff\1\1\2\3\1\5\3\uffff\1\2\35\uffff\1\4\5\uffff"+
            "\1\3\2\uffff\1\3",
            "\1\3\4\uffff\4\3\1\uffff\1\10\1\11\1\uffff\4\3\2\uffff\2\3\23\uffff"+
            "\1\3\2\uffff\1\3\6\uffff\3\3\3\uffff\2\3\1\uffff\3\3",
            "\1\3\4\uffff\4\3\1\uffff\1\10\1\11\1\uffff\4\3\2\uffff\2\3\23\uffff"+
            "\1\3\2\uffff\1\3\6\uffff\3\3\3\uffff\1\3\2\uffff\3\3",
            "",
            "",
            "",
            "",
            "",
            "\3\13\4\uffff\1\13\35\uffff\1\12\5\uffff\1\13\2\uffff\1\13",
            "\3\13\4\uffff\1\13\35\uffff\1\12\5\uffff\1\13\2\uffff\1\13",
            "",
            ""
    };

    static final short[] DFA46_eot = DFA.unpackEncodedString(DFA46_eotS);
    static final short[] DFA46_eof = DFA.unpackEncodedString(DFA46_eofS);
    static final char[] DFA46_min = DFA.unpackEncodedStringToUnsignedChars(DFA46_minS);
    static final char[] DFA46_max = DFA.unpackEncodedStringToUnsignedChars(DFA46_maxS);
    static final short[] DFA46_accept = DFA.unpackEncodedString(DFA46_acceptS);
    static final short[] DFA46_special = DFA.unpackEncodedString(DFA46_specialS);
    static final short[][] DFA46_transition;

    static {
        int numStates = DFA46_transitionS.length;
        DFA46_transition = new short[numStates][];
        for (int i=0; i<numStates; i++) {
            DFA46_transition[i] = DFA.unpackEncodedString(DFA46_transitionS[i]);
        }
    }

    class DFA46 extends DFA {

        public DFA46(BaseRecognizer recognizer) {
            this.recognizer = recognizer;
            this.decisionNumber = 46;
            this.eot = DFA46_eot;
            this.eof = DFA46_eof;
            this.min = DFA46_min;
            this.max = DFA46_max;
            this.accept = DFA46_accept;
            this.special = DFA46_special;
            this.transition = DFA46_transition;
        }
        public String getDescription() {
            return "234:1: element : ( id (labelOp= '=' | labelOp= '+=' ) atom ( ebnfSuffix -> ^( ebnfSuffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] ^( $labelOp id atom ) EOA[\"EOA\"] ) EOB[\"EOB\"] ) ) | -> ^( $labelOp id atom ) ) | id (labelOp= '=' | labelOp= '+=' ) block ( ebnfSuffix -> ^( ebnfSuffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] ^( $labelOp id block ) EOA[\"EOA\"] ) EOB[\"EOB\"] ) ) | -> ^( $labelOp id block ) ) | atom ( ebnfSuffix -> ^( ebnfSuffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] atom EOA[\"EOA\"] ) EOB[\"EOB\"] ) ) | -> atom ) | ebnf | ACTION | SEMPRED (g= '=>' -> GATED_SEMPRED[$g] | -> SEMPRED ) | treeSpec ( ebnfSuffix -> ^( ebnfSuffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] treeSpec EOA[\"EOA\"] ) EOB[\"EOB\"] ) ) | -> treeSpec ) );";
        }
    }
    static final String DFA73_eotS =
        "\15\uffff";
    static final String DFA73_eofS =
        "\15\uffff";
    static final String DFA73_minS =
        "\4\44\1\0\2\uffff\2\44\1\uffff\2\44\1\112";
    static final String DFA73_maxS =
        "\4\135\1\0\2\uffff\2\135\1\uffff\2\135\1\134";
    static final String DFA73_acceptS =
        "\5\uffff\1\2\1\3\2\uffff\1\1\3\uffff";
    static final String DFA73_specialS =
        "\4\uffff\1\0\10\uffff}>";
    static final String[] DFA73_transitionS = {
            "\1\5\2\uffff\1\6\4\uffff\1\1\2\5\1\4\3\uffff\1\2\23\uffff\1\6\11\uffff"+
            "\1\3\2\6\11\uffff\1\5",
            "\1\5\2\uffff\1\5\4\uffff\4\5\2\uffff\2\5\23\uffff\1\5\2\uffff\1\5\6"+
            "\uffff\1\7\2\5\7\uffff\3\5",
            "\1\5\2\uffff\1\5\4\uffff\4\5\3\uffff\1\5\23\uffff\1\5\2\uffff\1\5\6"+
            "\uffff\1\7\2\5\7\uffff\3\5",
            "\1\5\7\uffff\3\5\1\10\3\uffff\1\5\35\uffff\1\5\13\uffff\1\5",
            "\1\uffff",
            "",
            "",
            "\1\5\7\uffff\1\12\3\5\3\uffff\1\13\35\uffff\1\5\1\uffff\1\11\11\uffff"+
            "\1\5",
            "\1\5\7\uffff\4\5\3\uffff\1\5\26\uffff\1\5\6\uffff\1\5\1\uffff\1\14"+
            "\7\uffff\3\5",
            "",
            "\1\5\4\uffff\1\11\2\uffff\4\5\2\uffff\2\5\26\uffff\1\5\6\uffff\1\5"+
            "\1\uffff\1\5\7\uffff\3\5",
            "\1\5\4\uffff\1\11\2\uffff\4\5\3\uffff\1\5\26\uffff\1\5\6\uffff\1\5"+
            "\1\uffff\1\5\7\uffff\3\5",
            "\1\5\6\uffff\1\11\11\uffff\2\5"
    };

    static final short[] DFA73_eot = DFA.unpackEncodedString(DFA73_eotS);
    static final short[] DFA73_eof = DFA.unpackEncodedString(DFA73_eofS);
    static final char[] DFA73_min = DFA.unpackEncodedStringToUnsignedChars(DFA73_minS);
    static final char[] DFA73_max = DFA.unpackEncodedStringToUnsignedChars(DFA73_maxS);
    static final short[] DFA73_accept = DFA.unpackEncodedString(DFA73_acceptS);
    static final short[] DFA73_special = DFA.unpackEncodedString(DFA73_specialS);
    static final short[][] DFA73_transition;

    static {
        int numStates = DFA73_transitionS.length;
        DFA73_transition = new short[numStates][];
        for (int i=0; i<numStates; i++) {
            DFA73_transition[i] = DFA.unpackEncodedString(DFA73_transitionS[i]);
        }
    }

    class DFA73 extends DFA {

        public DFA73(BaseRecognizer recognizer) {
            this.recognizer = recognizer;
            this.decisionNumber = 73;
            this.eot = DFA73_eot;
            this.eof = DFA73_eof;
            this.min = DFA73_min;
            this.max = DFA73_max;
            this.accept = DFA73_accept;
            this.special = DFA73_special;
            this.transition = DFA73_transition;
        }
        public String getDescription() {
            return "361:1: rewrite_alternative options {backtrack=true; } : ( rewrite_template | rewrite_tree_alternative | -> ^( ALT[\"ALT\"] EPSILON[\"EPSILON\"] EOA[\"EOA\"] ) );";
        }
        public int specialStateTransition(int s, IntStream _input) throws NoViableAltException {
            TokenStream input = (TokenStream)_input;
        	int _s = s;
            switch ( s ) {
                    case 0 : 
                        int LA73_4 = input.LA(1);

                         
                        int index73_4 = input.index();
                        input.rewind();
                        s = -1;
                        if ( (synpred1_ANTLRv3()) ) {s = 9;}

                        else if ( (synpred2_ANTLRv3()) ) {s = 5;}

                         
                        input.seek(index73_4);
                        if ( s>=0 ) return s;
                        break;
            }
            if (state.backtracking>0) {state.failed=true; return -1;}
            NoViableAltException nvae =
                new NoViableAltException(getDescription(), 73, _s, input);
            error(nvae);
            throw nvae;
        }
    }
    static final String DFA76_eotS =
        "\16\uffff";
    static final String DFA76_eofS =
        "\1\uffff\4\12\1\uffff\1\12\4\uffff\3\12";
    static final String DFA76_minS =
        "\5\44\1\54\1\44\4\uffff\3\44";
    static final String DFA76_maxS =
        "\5\135\1\63\1\135\4\uffff\3\135";
    static final String DFA76_acceptS =
        "\7\uffff\1\3\1\4\1\2\1\1\3\uffff";
    static final String DFA76_specialS =
        "\16\uffff}>";
    static final String[] DFA76_transitionS = {
            "\1\7\7\uffff\1\2\1\4\1\1\1\6\3\uffff\1\3\35\uffff\1\10\13\uffff\1\5",
            "\1\12\2\uffff\1\12\4\uffff\4\12\3\uffff\1\12\23\uffff\1\12\2\uffff"+
            "\1\11\6\uffff\3\12\7\uffff\2\11\1\12",
            "\1\12\2\uffff\1\12\4\uffff\4\12\2\uffff\1\13\1\12\23\uffff\1\12\2\uffff"+
            "\1\11\6\uffff\3\12\7\uffff\2\11\1\12",
            "\1\12\2\uffff\1\12\4\uffff\4\12\3\uffff\1\12\23\uffff\1\12\2\uffff"+
            "\1\11\6\uffff\3\12\7\uffff\2\11\1\12",
            "\1\12\2\uffff\1\12\4\uffff\4\12\3\uffff\1\12\23\uffff\1\12\2\uffff"+
            "\1\11\6\uffff\3\12\7\uffff\2\11\1\12",
            "\1\14\6\uffff\1\15",
            "\1\12\2\uffff\1\12\4\uffff\4\12\3\uffff\1\12\23\uffff\1\12\2\uffff"+
            "\1\11\6\uffff\3\12\7\uffff\2\11\1\12",
            "",
            "",
            "",
            "",
            "\1\12\2\uffff\1\12\4\uffff\4\12\3\uffff\1\12\23\uffff\1\12\2\uffff"+
            "\1\11\6\uffff\3\12\7\uffff\2\11\1\12",
            "\1\12\2\uffff\1\12\4\uffff\4\12\3\uffff\1\12\23\uffff\1\12\2\uffff"+
            "\1\11\6\uffff\3\12\7\uffff\2\11\1\12",
            "\1\12\2\uffff\1\12\4\uffff\4\12\3\uffff\1\12\23\uffff\1\12\2\uffff"+
            "\1\11\6\uffff\3\12\7\uffff\2\11\1\12"
    };

    static final short[] DFA76_eot = DFA.unpackEncodedString(DFA76_eotS);
    static final short[] DFA76_eof = DFA.unpackEncodedString(DFA76_eofS);
    static final char[] DFA76_min = DFA.unpackEncodedStringToUnsignedChars(DFA76_minS);
    static final char[] DFA76_max = DFA.unpackEncodedStringToUnsignedChars(DFA76_maxS);
    static final short[] DFA76_accept = DFA.unpackEncodedString(DFA76_acceptS);
    static final short[] DFA76_special = DFA.unpackEncodedString(DFA76_specialS);
    static final short[][] DFA76_transition;

    static {
        int numStates = DFA76_transitionS.length;
        DFA76_transition = new short[numStates][];
        for (int i=0; i<numStates; i++) {
            DFA76_transition[i] = DFA.unpackEncodedString(DFA76_transitionS[i]);
        }
    }

    class DFA76 extends DFA {

        public DFA76(BaseRecognizer recognizer) {
            this.recognizer = recognizer;
            this.decisionNumber = 76;
            this.eot = DFA76_eot;
            this.eof = DFA76_eof;
            this.min = DFA76_min;
            this.max = DFA76_max;
            this.accept = DFA76_accept;
            this.special = DFA76_special;
            this.transition = DFA76_transition;
        }
        public String getDescription() {
            return "377:1: rewrite_tree_element : ( rewrite_tree_atom | rewrite_tree_atom ebnfSuffix -> ^( ebnfSuffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] rewrite_tree_atom EOA[\"EOA\"] ) EOB[\"EOB\"] ) ) | rewrite_tree ( ebnfSuffix -> ^( ebnfSuffix ^( BLOCK[\"BLOCK\"] ^( ALT[\"ALT\"] rewrite_tree EOA[\"EOA\"] ) EOB[\"EOB\"] ) ) | -> rewrite_tree ) | rewrite_tree_ebnf );";
        }
    }
    static final String DFA81_eotS =
        "\22\uffff";
    static final String DFA81_eofS =
        "\10\uffff\1\12\11\uffff";
    static final String DFA81_minS =
        "\1\54\2\121\2\uffff\1\54\2\51\1\47\1\57\2\uffff\1\120\1\54\2\51\1\57\1\120";
    static final String DFA81_maxS =
        "\3\121\2\uffff\1\123\2\51\1\123\1\57\2\uffff\1\123\1\63\2\51\1\57\1\123";
    static final String DFA81_acceptS =
        "\3\uffff\1\3\1\4\5\uffff\1\2\1\1\6\uffff";
    static final String DFA81_specialS =
        "\22\uffff}>";
    static final String[] DFA81_transitionS = {
            "\1\1\2\uffff\1\4\3\uffff\1\2\35\uffff\1\3",
            "\1\5",
            "\1\5",
            "",
            "",
            "\1\6\6\uffff\1\7\37\uffff\1\10",
            "\1\11",
            "\1\11",
            "\1\12\14\uffff\2\13\21\uffff\1\12\12\uffff\2\12",
            "\1\14",
            "",
            "",
            "\1\15\2\uffff\1\10",
            "\1\16\6\uffff\1\17",
            "\1\20",
            "\1\20",
            "\1\21",
            "\1\15\2\uffff\1\10"
    };

    static final short[] DFA81_eot = DFA.unpackEncodedString(DFA81_eotS);
    static final short[] DFA81_eof = DFA.unpackEncodedString(DFA81_eofS);
    static final char[] DFA81_min = DFA.unpackEncodedStringToUnsignedChars(DFA81_minS);
    static final char[] DFA81_max = DFA.unpackEncodedStringToUnsignedChars(DFA81_maxS);
    static final short[] DFA81_accept = DFA.unpackEncodedString(DFA81_acceptS);
    static final short[] DFA81_special = DFA.unpackEncodedString(DFA81_specialS);
    static final short[][] DFA81_transition;

    static {
        int numStates = DFA81_transitionS.length;
        DFA81_transition = new short[numStates][];
        for (int i=0; i<numStates; i++) {
            DFA81_transition[i] = DFA.unpackEncodedString(DFA81_transitionS[i]);
        }
    }

    class DFA81 extends DFA {

        public DFA81(BaseRecognizer recognizer) {
            this.recognizer = recognizer;
            this.decisionNumber = 81;
            this.eot = DFA81_eot;
            this.eof = DFA81_eof;
            this.min = DFA81_min;
            this.max = DFA81_max;
            this.accept = DFA81_accept;
            this.special = DFA81_special;
            this.transition = DFA81_transition;
        }
        public String getDescription() {
            return "414:1: rewrite_template : ( id lp= '(' rewrite_template_args ')' (str= DOUBLE_QUOTE_STRING_LITERAL | str= DOUBLE_ANGLE_STRING_LITERAL ) -> ^( TEMPLATE[$lp,\"TEMPLATE\"] id rewrite_template_args $str) | rewrite_template_ref | rewrite_indirect_template_head | ACTION );";
        }
    }
 

    public static final BitSet FOLLOW_DOC_COMMENT_in_grammarDef368 = new BitSet(new long[]{0x0000000000000000L,0x0000000000000078L});
    public static final BitSet FOLLOW_67_in_grammarDef378 = new BitSet(new long[]{0x0000000000000000L,0x0000000000000040L});
    public static final BitSet FOLLOW_68_in_grammarDef396 = new BitSet(new long[]{0x0000000000000000L,0x0000000000000040L});
    public static final BitSet FOLLOW_69_in_grammarDef412 = new BitSet(new long[]{0x0000000000000000L,0x0000000000000040L});
    public static final BitSet FOLLOW_70_in_grammarDef453 = new BitSet(new long[]{0x0008100000000000L});
    public static final BitSet FOLLOW_id_in_grammarDef455 = new BitSet(new long[]{0x0000000000000000L,0x0000000000000080L});
    public static final BitSet FOLLOW_71_in_grammarDef457 = new BitSet(new long[]{0x0009190840000010L,0x0000000000003800L});
    public static final BitSet FOLLOW_optionsSpec_in_grammarDef459 = new BitSet(new long[]{0x0009190840000010L,0x0000000000003800L});
    public static final BitSet FOLLOW_tokensSpec_in_grammarDef462 = new BitSet(new long[]{0x0009190840000010L,0x0000000000003800L});
    public static final BitSet FOLLOW_attrScope_in_grammarDef465 = new BitSet(new long[]{0x0009190840000010L,0x0000000000003800L});
    public static final BitSet FOLLOW_action_in_grammarDef468 = new BitSet(new long[]{0x0009190840000010L,0x0000000000003800L});
    public static final BitSet FOLLOW_rule_in_grammarDef476 = new BitSet(new long[]{0x0009190840000010L,0x0000000000003800L});
    public static final BitSet FOLLOW_EOF_in_grammarDef484 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_TOKENS_in_tokensSpec545 = new BitSet(new long[]{0x0000100000000000L});
    public static final BitSet FOLLOW_tokenSpec_in_tokensSpec547 = new BitSet(new long[]{0x0000100000000000L,0x0000000000000100L});
    public static final BitSet FOLLOW_72_in_tokensSpec550 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_TOKEN_REF_in_tokenSpec570 = new BitSet(new long[]{0x0000020000000000L,0x0000000000000080L});
    public static final BitSet FOLLOW_LABEL_ASSIGN_in_tokenSpec576 = new BitSet(new long[]{0x0000600000000000L});
    public static final BitSet FOLLOW_STRING_LITERAL_in_tokenSpec581 = new BitSet(new long[]{0x0000000000000000L,0x0000000000000080L});
    public static final BitSet FOLLOW_CHAR_LITERAL_in_tokenSpec585 = new BitSet(new long[]{0x0000000000000000L,0x0000000000000080L});
    public static final BitSet FOLLOW_71_in_tokenSpec624 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_SCOPE_in_attrScope635 = new BitSet(new long[]{0x0008100000000000L});
    public static final BitSet FOLLOW_id_in_attrScope637 = new BitSet(new long[]{0x0000800000000000L});
    public static final BitSet FOLLOW_ACTION_in_attrScope639 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_AT_in_action662 = new BitSet(new long[]{0x0008100000000000L,0x0000000000000018L});
    public static final BitSet FOLLOW_actionScopeName_in_action665 = new BitSet(new long[]{0x0000000000000000L,0x0000000000000200L});
    public static final BitSet FOLLOW_73_in_action667 = new BitSet(new long[]{0x0008100000000000L});
    public static final BitSet FOLLOW_id_in_action671 = new BitSet(new long[]{0x0000800000000000L});
    public static final BitSet FOLLOW_ACTION_in_action673 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_id_in_actionScopeName699 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_67_in_actionScopeName706 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_68_in_actionScopeName723 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_OPTIONS_in_optionsSpec739 = new BitSet(new long[]{0x0008100000000000L});
    public static final BitSet FOLLOW_option_in_optionsSpec742 = new BitSet(new long[]{0x0000000000000000L,0x0000000000000080L});
    public static final BitSet FOLLOW_71_in_optionsSpec744 = new BitSet(new long[]{0x0008100000000000L,0x0000000000000100L});
    public static final BitSet FOLLOW_72_in_optionsSpec748 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_id_in_option773 = new BitSet(new long[]{0x0000020000000000L});
    public static final BitSet FOLLOW_LABEL_ASSIGN_in_option775 = new BitSet(new long[]{0x000A700000000000L,0x0000000000000400L});
    public static final BitSet FOLLOW_optionValue_in_option777 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_qid_in_optionValue806 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_STRING_LITERAL_in_optionValue816 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_CHAR_LITERAL_in_optionValue826 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_INT_in_optionValue836 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_74_in_optionValue846 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_DOC_COMMENT_in_rule871 = new BitSet(new long[]{0x0008100800000000L,0x0000000000003800L});
    public static final BitSet FOLLOW_75_in_rule881 = new BitSet(new long[]{0x0008100000000000L});
    public static final BitSet FOLLOW_76_in_rule883 = new BitSet(new long[]{0x0008100000000000L});
    public static final BitSet FOLLOW_77_in_rule885 = new BitSet(new long[]{0x0008100000000000L});
    public static final BitSet FOLLOW_FRAGMENT_in_rule887 = new BitSet(new long[]{0x0008100000000000L});
    public static final BitSet FOLLOW_id_in_rule895 = new BitSet(new long[]{0x0005014040800000L,0x000000000000C000L});
    public static final BitSet FOLLOW_BANG_in_rule901 = new BitSet(new long[]{0x0005010040800000L,0x000000000000C000L});
    public static final BitSet FOLLOW_ARG_ACTION_in_rule910 = new BitSet(new long[]{0x0001010040800000L,0x000000000000C000L});
    public static final BitSet FOLLOW_RET_in_rule919 = new BitSet(new long[]{0x0004000000000000L});
    public static final BitSet FOLLOW_ARG_ACTION_in_rule923 = new BitSet(new long[]{0x0001010040000000L,0x000000000000C000L});
    public static final BitSet FOLLOW_throwsSpec_in_rule931 = new BitSet(new long[]{0x0001010040000000L,0x0000000000004000L});
    public static final BitSet FOLLOW_optionsSpec_in_rule934 = new BitSet(new long[]{0x0000010040000000L,0x0000000000004000L});
    public static final BitSet FOLLOW_ruleScopeSpec_in_rule937 = new BitSet(new long[]{0x0000010000000000L,0x0000000000004000L});
    public static final BitSet FOLLOW_ruleAction_in_rule940 = new BitSet(new long[]{0x0000010000000000L,0x0000000000004000L});
    public static final BitSet FOLLOW_78_in_rule945 = new BitSet(new long[]{0x0008F09080000000L,0x0000000004820000L});
    public static final BitSet FOLLOW_altList_in_rule947 = new BitSet(new long[]{0x0000000000000000L,0x0000000000000080L});
    public static final BitSet FOLLOW_71_in_rule949 = new BitSet(new long[]{0x0000000000000002L,0x0000000000300000L});
    public static final BitSet FOLLOW_exceptionGroup_in_rule953 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_AT_in_ruleAction1059 = new BitSet(new long[]{0x0008100000000000L});
    public static final BitSet FOLLOW_id_in_ruleAction1061 = new BitSet(new long[]{0x0000800000000000L});
    public static final BitSet FOLLOW_ACTION_in_ruleAction1063 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_79_in_throwsSpec1084 = new BitSet(new long[]{0x0008100000000000L});
    public static final BitSet FOLLOW_id_in_throwsSpec1086 = new BitSet(new long[]{0x0000000000000002L,0x0000000000010000L});
    public static final BitSet FOLLOW_80_in_throwsSpec1090 = new BitSet(new long[]{0x0008100000000000L});
    public static final BitSet FOLLOW_id_in_throwsSpec1092 = new BitSet(new long[]{0x0000000000000002L,0x0000000000010000L});
    public static final BitSet FOLLOW_SCOPE_in_ruleScopeSpec1115 = new BitSet(new long[]{0x0000800000000000L});
    public static final BitSet FOLLOW_ACTION_in_ruleScopeSpec1117 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_SCOPE_in_ruleScopeSpec1130 = new BitSet(new long[]{0x0008100000000000L});
    public static final BitSet FOLLOW_id_in_ruleScopeSpec1132 = new BitSet(new long[]{0x0000000000000000L,0x0000000000010080L});
    public static final BitSet FOLLOW_80_in_ruleScopeSpec1135 = new BitSet(new long[]{0x0008100000000000L});
    public static final BitSet FOLLOW_id_in_ruleScopeSpec1137 = new BitSet(new long[]{0x0000000000000000L,0x0000000000010080L});
    public static final BitSet FOLLOW_71_in_ruleScopeSpec1141 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_SCOPE_in_ruleScopeSpec1155 = new BitSet(new long[]{0x0000800000000000L});
    public static final BitSet FOLLOW_ACTION_in_ruleScopeSpec1157 = new BitSet(new long[]{0x0000000040000000L});
    public static final BitSet FOLLOW_SCOPE_in_ruleScopeSpec1161 = new BitSet(new long[]{0x0008100000000000L});
    public static final BitSet FOLLOW_id_in_ruleScopeSpec1163 = new BitSet(new long[]{0x0000000000000000L,0x0000000000010080L});
    public static final BitSet FOLLOW_80_in_ruleScopeSpec1166 = new BitSet(new long[]{0x0008100000000000L});
    public static final BitSet FOLLOW_id_in_ruleScopeSpec1168 = new BitSet(new long[]{0x0000000000000000L,0x0000000000010080L});
    public static final BitSet FOLLOW_71_in_ruleScopeSpec1172 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_81_in_block1204 = new BitSet(new long[]{0x0009F09080000000L,0x0000000004824000L});
    public static final BitSet FOLLOW_optionsSpec_in_block1213 = new BitSet(new long[]{0x0000000000000000L,0x0000000000004000L});
    public static final BitSet FOLLOW_78_in_block1217 = new BitSet(new long[]{0x0008F09080000000L,0x0000000004820000L});
    public static final BitSet FOLLOW_altpair_in_block1224 = new BitSet(new long[]{0x0000000000000000L,0x00000000000C0000L});
    public static final BitSet FOLLOW_82_in_block1228 = new BitSet(new long[]{0x0008F09080000000L,0x0000000004820000L});
    public static final BitSet FOLLOW_altpair_in_block1230 = new BitSet(new long[]{0x0000000000000000L,0x00000000000C0000L});
    public static final BitSet FOLLOW_83_in_block1245 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_alternative_in_altpair1284 = new BitSet(new long[]{0x0000008000000000L});
    public static final BitSet FOLLOW_rewrite_in_altpair1286 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_altpair_in_altList1306 = new BitSet(new long[]{0x0000000000000002L,0x0000000000040000L});
    public static final BitSet FOLLOW_82_in_altList1310 = new BitSet(new long[]{0x0008F09080000000L,0x0000000004820000L});
    public static final BitSet FOLLOW_altpair_in_altList1312 = new BitSet(new long[]{0x0000000000000002L,0x0000000000040000L});
    public static final BitSet FOLLOW_element_in_alternative1353 = new BitSet(new long[]{0x0008F01080000002L,0x0000000004820000L});
    public static final BitSet FOLLOW_exceptionHandler_in_exceptionGroup1404 = new BitSet(new long[]{0x0000000000000002L,0x0000000000300000L});
    public static final BitSet FOLLOW_finallyClause_in_exceptionGroup1411 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_finallyClause_in_exceptionGroup1419 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_84_in_exceptionHandler1439 = new BitSet(new long[]{0x0004000000000000L});
    public static final BitSet FOLLOW_ARG_ACTION_in_exceptionHandler1441 = new BitSet(new long[]{0x0000800000000000L});
    public static final BitSet FOLLOW_ACTION_in_exceptionHandler1443 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_85_in_finallyClause1473 = new BitSet(new long[]{0x0000800000000000L});
    public static final BitSet FOLLOW_ACTION_in_finallyClause1475 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_id_in_element1497 = new BitSet(new long[]{0x0000060000000000L});
    public static final BitSet FOLLOW_LABEL_ASSIGN_in_element1502 = new BitSet(new long[]{0x0008700000000000L,0x0000000004800000L});
    public static final BitSet FOLLOW_LIST_LABEL_ASSIGN_in_element1506 = new BitSet(new long[]{0x0008700000000000L,0x0000000004800000L});
    public static final BitSet FOLLOW_atom_in_element1509 = new BitSet(new long[]{0x0000000000000002L,0x0000000018000400L});
    public static final BitSet FOLLOW_ebnfSuffix_in_element1515 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_id_in_element1574 = new BitSet(new long[]{0x0000060000000000L});
    public static final BitSet FOLLOW_LABEL_ASSIGN_in_element1579 = new BitSet(new long[]{0x0000000000000000L,0x0000000000020000L});
    public static final BitSet FOLLOW_LIST_LABEL_ASSIGN_in_element1583 = new BitSet(new long[]{0x0000000000000000L,0x0000000000020000L});
    public static final BitSet FOLLOW_block_in_element1586 = new BitSet(new long[]{0x0000000000000002L,0x0000000018000400L});
    public static final BitSet FOLLOW_ebnfSuffix_in_element1592 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_atom_in_element1651 = new BitSet(new long[]{0x0000000000000002L,0x0000000018000400L});
    public static final BitSet FOLLOW_ebnfSuffix_in_element1657 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ebnf_in_element1703 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ACTION_in_element1710 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_SEMPRED_in_element1717 = new BitSet(new long[]{0x0000000000000002L,0x0000000000400000L});
    public static final BitSet FOLLOW_86_in_element1723 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_treeSpec_in_element1743 = new BitSet(new long[]{0x0000000000000002L,0x0000000018000400L});
    public static final BitSet FOLLOW_ebnfSuffix_in_element1749 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_terminal_in_atom1801 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_range_in_atom1806 = new BitSet(new long[]{0x0000006000000002L});
    public static final BitSet FOLLOW_ROOT_in_atom1816 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_BANG_in_atom1820 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_notSet_in_atom1854 = new BitSet(new long[]{0x0000006000000002L});
    public static final BitSet FOLLOW_ROOT_in_atom1863 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_BANG_in_atom1867 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_RULE_REF_in_atom1903 = new BitSet(new long[]{0x0004006000000002L});
    public static final BitSet FOLLOW_ARG_ACTION_in_atom1905 = new BitSet(new long[]{0x0000006000000002L});
    public static final BitSet FOLLOW_ROOT_in_atom1915 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_BANG_in_atom1919 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_87_in_notSet1967 = new BitSet(new long[]{0x0000700000000000L,0x0000000000020000L});
    public static final BitSet FOLLOW_notTerminal_in_notSet1973 = new BitSet(new long[]{0x0000000000000002L,0x0000000001000000L});
    public static final BitSet FOLLOW_elementOptions_in_notSet1975 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_block_in_notSet1993 = new BitSet(new long[]{0x0000000000000002L,0x0000000001000000L});
    public static final BitSet FOLLOW_elementOptions_in_notSet1995 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_set_in_notTerminal0 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_88_in_elementOptions2047 = new BitSet(new long[]{0x0008100000000000L});
    public static final BitSet FOLLOW_qid_in_elementOptions2049 = new BitSet(new long[]{0x0000000000000000L,0x0000000002000000L});
    public static final BitSet FOLLOW_89_in_elementOptions2051 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_88_in_elementOptions2069 = new BitSet(new long[]{0x0008100000000000L});
    public static final BitSet FOLLOW_option_in_elementOptions2071 = new BitSet(new long[]{0x0000000000000000L,0x0000000002000080L});
    public static final BitSet FOLLOW_71_in_elementOptions2074 = new BitSet(new long[]{0x0008100000000000L});
    public static final BitSet FOLLOW_option_in_elementOptions2076 = new BitSet(new long[]{0x0000000000000000L,0x0000000002000080L});
    public static final BitSet FOLLOW_89_in_elementOptions2080 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_id_in_elementOption2100 = new BitSet(new long[]{0x0000020000000000L});
    public static final BitSet FOLLOW_LABEL_ASSIGN_in_elementOption2102 = new BitSet(new long[]{0x000A700000000000L,0x0000000000000400L});
    public static final BitSet FOLLOW_optionValue_in_elementOption2104 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_TREE_BEGIN_in_treeSpec2126 = new BitSet(new long[]{0x0008F01080000000L,0x0000000004820000L});
    public static final BitSet FOLLOW_element_in_treeSpec2128 = new BitSet(new long[]{0x0008F01080000000L,0x0000000004820000L});
    public static final BitSet FOLLOW_element_in_treeSpec2132 = new BitSet(new long[]{0x0008F01080000000L,0x00000000048A0000L});
    public static final BitSet FOLLOW_83_in_treeSpec2137 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_CHAR_LITERAL_in_range2160 = new BitSet(new long[]{0x0000000000002000L});
    public static final BitSet FOLLOW_RANGE_in_range2162 = new BitSet(new long[]{0x0000400000000000L});
    public static final BitSet FOLLOW_CHAR_LITERAL_in_range2166 = new BitSet(new long[]{0x0000000000000002L,0x0000000001000000L});
    public static final BitSet FOLLOW_elementOptions_in_range2168 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_CHAR_LITERAL_in_terminal2205 = new BitSet(new long[]{0x0000006000000002L,0x0000000001000000L});
    public static final BitSet FOLLOW_elementOptions_in_terminal2207 = new BitSet(new long[]{0x0000006000000002L});
    public static final BitSet FOLLOW_TOKEN_REF_in_terminal2238 = new BitSet(new long[]{0x0004006000000002L,0x0000000001000000L});
    public static final BitSet FOLLOW_ARG_ACTION_in_terminal2240 = new BitSet(new long[]{0x0000006000000002L,0x0000000001000000L});
    public static final BitSet FOLLOW_elementOptions_in_terminal2243 = new BitSet(new long[]{0x0000006000000002L});
    public static final BitSet FOLLOW_STRING_LITERAL_in_terminal2264 = new BitSet(new long[]{0x0000006000000002L,0x0000000001000000L});
    public static final BitSet FOLLOW_elementOptions_in_terminal2266 = new BitSet(new long[]{0x0000006000000002L});
    public static final BitSet FOLLOW_90_in_terminal2287 = new BitSet(new long[]{0x0000006000000002L,0x0000000001000000L});
    public static final BitSet FOLLOW_elementOptions_in_terminal2289 = new BitSet(new long[]{0x0000006000000002L});
    public static final BitSet FOLLOW_ROOT_in_terminal2316 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_BANG_in_terminal2337 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_block_in_ebnf2380 = new BitSet(new long[]{0x0000000000000002L,0x0000000018400400L});
    public static final BitSet FOLLOW_91_in_ebnf2388 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_74_in_ebnf2405 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_92_in_ebnf2422 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_86_in_ebnf2439 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_91_in_ebnfSuffix2524 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_74_in_ebnfSuffix2536 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_92_in_ebnfSuffix2549 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_REWRITE_in_rewrite2578 = new BitSet(new long[]{0x0000000080000000L});
    public static final BitSet FOLLOW_SEMPRED_in_rewrite2582 = new BitSet(new long[]{0x0008F09000000000L,0x0000000020020000L});
    public static final BitSet FOLLOW_rewrite_alternative_in_rewrite2586 = new BitSet(new long[]{0x0000008000000000L});
    public static final BitSet FOLLOW_REWRITE_in_rewrite2594 = new BitSet(new long[]{0x0008F01000000000L,0x0000000020020000L});
    public static final BitSet FOLLOW_rewrite_alternative_in_rewrite2598 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rewrite_template_in_rewrite_alternative2649 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rewrite_tree_alternative_in_rewrite_alternative2654 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_81_in_rewrite_tree_block2696 = new BitSet(new long[]{0x0008F01000000000L,0x0000000020020000L});
    public static final BitSet FOLLOW_rewrite_tree_alternative_in_rewrite_tree_block2698 = new BitSet(new long[]{0x0000000000000000L,0x0000000000080000L});
    public static final BitSet FOLLOW_83_in_rewrite_tree_block2700 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rewrite_tree_element_in_rewrite_tree_alternative2734 = new BitSet(new long[]{0x0008F01000000002L,0x0000000020020000L});
    public static final BitSet FOLLOW_rewrite_tree_atom_in_rewrite_tree_element2762 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rewrite_tree_atom_in_rewrite_tree_element2767 = new BitSet(new long[]{0x0000000000000000L,0x0000000018000400L});
    public static final BitSet FOLLOW_ebnfSuffix_in_rewrite_tree_element2769 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rewrite_tree_in_rewrite_tree_element2803 = new BitSet(new long[]{0x0000000000000002L,0x0000000018000400L});
    public static final BitSet FOLLOW_ebnfSuffix_in_rewrite_tree_element2809 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rewrite_tree_ebnf_in_rewrite_tree_element2855 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_CHAR_LITERAL_in_rewrite_tree_atom2871 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_TOKEN_REF_in_rewrite_tree_atom2878 = new BitSet(new long[]{0x0004000000000002L});
    public static final BitSet FOLLOW_ARG_ACTION_in_rewrite_tree_atom2880 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_RULE_REF_in_rewrite_tree_atom2901 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_STRING_LITERAL_in_rewrite_tree_atom2908 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_93_in_rewrite_tree_atom2917 = new BitSet(new long[]{0x0008100000000000L});
    public static final BitSet FOLLOW_id_in_rewrite_tree_atom2919 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ACTION_in_rewrite_tree_atom2930 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rewrite_tree_block_in_rewrite_tree_ebnf2951 = new BitSet(new long[]{0x0000000000000000L,0x0000000018000400L});
    public static final BitSet FOLLOW_ebnfSuffix_in_rewrite_tree_ebnf2953 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_TREE_BEGIN_in_rewrite_tree2973 = new BitSet(new long[]{0x0008F00000000000L,0x0000000020000000L});
    public static final BitSet FOLLOW_rewrite_tree_atom_in_rewrite_tree2975 = new BitSet(new long[]{0x0008F01000000000L,0x00000000200A0000L});
    public static final BitSet FOLLOW_rewrite_tree_element_in_rewrite_tree2977 = new BitSet(new long[]{0x0008F01000000000L,0x00000000200A0000L});
    public static final BitSet FOLLOW_83_in_rewrite_tree2980 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_id_in_rewrite_template3012 = new BitSet(new long[]{0x0000000000000000L,0x0000000000020000L});
    public static final BitSet FOLLOW_81_in_rewrite_template3016 = new BitSet(new long[]{0x0008100000000000L,0x0000000000080000L});
    public static final BitSet FOLLOW_rewrite_template_args_in_rewrite_template3018 = new BitSet(new long[]{0x0000000000000000L,0x0000000000080000L});
    public static final BitSet FOLLOW_83_in_rewrite_template3020 = new BitSet(new long[]{0x0030000000000000L});
    public static final BitSet FOLLOW_DOUBLE_QUOTE_STRING_LITERAL_in_rewrite_template3028 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_DOUBLE_ANGLE_STRING_LITERAL_in_rewrite_template3034 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rewrite_template_ref_in_rewrite_template3061 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rewrite_indirect_template_head_in_rewrite_template3070 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_ACTION_in_rewrite_template3079 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_id_in_rewrite_template_ref3092 = new BitSet(new long[]{0x0000000000000000L,0x0000000000020000L});
    public static final BitSet FOLLOW_81_in_rewrite_template_ref3096 = new BitSet(new long[]{0x0008100000000000L,0x0000000000080000L});
    public static final BitSet FOLLOW_rewrite_template_args_in_rewrite_template_ref3098 = new BitSet(new long[]{0x0000000000000000L,0x0000000000080000L});
    public static final BitSet FOLLOW_83_in_rewrite_template_ref3100 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_81_in_rewrite_indirect_template_head3128 = new BitSet(new long[]{0x0000800000000000L});
    public static final BitSet FOLLOW_ACTION_in_rewrite_indirect_template_head3130 = new BitSet(new long[]{0x0000000000000000L,0x0000000000080000L});
    public static final BitSet FOLLOW_83_in_rewrite_indirect_template_head3132 = new BitSet(new long[]{0x0000000000000000L,0x0000000000020000L});
    public static final BitSet FOLLOW_81_in_rewrite_indirect_template_head3134 = new BitSet(new long[]{0x0008100000000000L,0x0000000000080000L});
    public static final BitSet FOLLOW_rewrite_template_args_in_rewrite_indirect_template_head3136 = new BitSet(new long[]{0x0000000000000000L,0x0000000000080000L});
    public static final BitSet FOLLOW_83_in_rewrite_indirect_template_head3138 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rewrite_template_arg_in_rewrite_template_args3162 = new BitSet(new long[]{0x0000000000000002L,0x0000000000010000L});
    public static final BitSet FOLLOW_80_in_rewrite_template_args3165 = new BitSet(new long[]{0x0008100000000000L});
    public static final BitSet FOLLOW_rewrite_template_arg_in_rewrite_template_args3167 = new BitSet(new long[]{0x0000000000000002L,0x0000000000010000L});
    public static final BitSet FOLLOW_id_in_rewrite_template_arg3200 = new BitSet(new long[]{0x0000020000000000L});
    public static final BitSet FOLLOW_LABEL_ASSIGN_in_rewrite_template_arg3202 = new BitSet(new long[]{0x0000800000000000L});
    public static final BitSet FOLLOW_ACTION_in_rewrite_template_arg3204 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_id_in_qid3225 = new BitSet(new long[]{0x0000000000000002L,0x0000000004000000L});
    public static final BitSet FOLLOW_90_in_qid3228 = new BitSet(new long[]{0x0008100000000000L});
    public static final BitSet FOLLOW_id_in_qid3230 = new BitSet(new long[]{0x0000000000000002L,0x0000000004000000L});
    public static final BitSet FOLLOW_TOKEN_REF_in_id3242 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_RULE_REF_in_id3252 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rewrite_template_in_synpred1_ANTLRv32649 = new BitSet(new long[]{0x0000000000000002L});
    public static final BitSet FOLLOW_rewrite_tree_alternative_in_synpred2_ANTLRv32654 = new BitSet(new long[]{0x0000000000000002L});

}