// $ANTLR 2.7.7 (20060906): "antlr.g" -> "ANTLRLexer.java"$

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

public interface ANTLRTokenTypes {
	int EOF = 1;
	int NULL_TREE_LOOKAHEAD = 3;
	int OPTIONS = 4;
	int TOKENS = 5;
	int PARSER = 6;
	int LEXER = 7;
	int RULE = 8;
	int BLOCK = 9;
	int OPTIONAL = 10;
	int CLOSURE = 11;
	int POSITIVE_CLOSURE = 12;
	int SYNPRED = 13;
	int RANGE = 14;
	int CHAR_RANGE = 15;
	int EPSILON = 16;
	int ALT = 17;
	int EOR = 18;
	int EOB = 19;
	int EOA = 20;
	int ID = 21;
	int ARG = 22;
	int ARGLIST = 23;
	int RET = 24;
	int LEXER_GRAMMAR = 25;
	int PARSER_GRAMMAR = 26;
	int TREE_GRAMMAR = 27;
	int COMBINED_GRAMMAR = 28;
	int INITACTION = 29;
	int FORCED_ACTION = 30;
	int LABEL = 31;
	int TEMPLATE = 32;
	int SCOPE = 33;
	int IMPORT = 34;
	int GATED_SEMPRED = 35;
	int SYN_SEMPRED = 36;
	int BACKTRACK_SEMPRED = 37;
	int FRAGMENT = 38;
	int DOT = 39;
	int ACTION = 40;
	int DOC_COMMENT = 41;
	int SEMI = 42;
	int LITERAL_lexer = 43;
	int LITERAL_tree = 44;
	int LITERAL_grammar = 45;
	int AMPERSAND = 46;
	int COLON = 47;
	int RCURLY = 48;
	int ASSIGN = 49;
	int STRING_LITERAL = 50;
	int CHAR_LITERAL = 51;
	int INT = 52;
	int STAR = 53;
	int COMMA = 54;
	int TOKEN_REF = 55;
	int LITERAL_protected = 56;
	int LITERAL_public = 57;
	int LITERAL_private = 58;
	int BANG = 59;
	int ARG_ACTION = 60;
	int LITERAL_returns = 61;
	int LITERAL_throws = 62;
	int LPAREN = 63;
	int OR = 64;
	int RPAREN = 65;
	int LITERAL_catch = 66;
	int LITERAL_finally = 67;
	int PLUS_ASSIGN = 68;
	int SEMPRED = 69;
	int IMPLIES = 70;
	int ROOT = 71;
	int WILDCARD = 72;
	int RULE_REF = 73;
	int NOT = 74;
	int TREE_BEGIN = 75;
	int QUESTION = 76;
	int PLUS = 77;
	int OPEN_ELEMENT_OPTION = 78;
	int CLOSE_ELEMENT_OPTION = 79;
	int REWRITE = 80;
	int ETC = 81;
	int DOLLAR = 82;
	int DOUBLE_QUOTE_STRING_LITERAL = 83;
	int DOUBLE_ANGLE_STRING_LITERAL = 84;
	int WS = 85;
	int COMMENT = 86;
	int SL_COMMENT = 87;
	int ML_COMMENT = 88;
	int STRAY_BRACKET = 89;
	int ESC = 90;
	int DIGIT = 91;
	int XDIGIT = 92;
	int NESTED_ARG_ACTION = 93;
	int NESTED_ACTION = 94;
	int ACTION_CHAR_LITERAL = 95;
	int ACTION_STRING_LITERAL = 96;
	int ACTION_ESC = 97;
	int WS_LOOP = 98;
	int INTERNAL_RULE_REF = 99;
	int WS_OPT = 100;
	int SRC = 101;
}
