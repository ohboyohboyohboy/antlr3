/*
 *  python3lexerutils.c
 *  CPP
 *
 *  Created by Ales Teska on 5.10.09.
 *
 */

#include "output/python3Lexer.h"
#include <assert.h>

////////////////////////////////////////

// helper function to create token in lexer
pANTLR3_COMMON_TOKEN python3Lexer_createLexerToken(pANTLR3_LEXER lexer, ANTLR3_UINT32 tokenType, pANTLR3_UINT8 text)
{
	pANTLR3_COMMON_TOKEN    newToken;
	newToken = lexer->rec->state->tokFactory->newToken(lexer->rec->state->tokFactory);

	if (newToken != NULL)
	{
		newToken->type = tokenType;
		newToken->input = lexer->rec->state->tokFactory->input;

		if (text != NULL)
		{
			newToken->textState = ANTLR3_TEXT_CHARP;
			newToken->tokText.chars = (pANTLR3_UCHAR)text;
		} else {
			newToken->textState = ANTLR3_TEXT_NONE;
		};
	}
	return  newToken;
}

////////////////////////////////////////

static char python3Lexer_emptyString[] = "                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                ";

////

char * python3Lexer_syntetizeEmptyString(int spaces)
{
	static char * endofemptystring = NULL;
	
	if (endofemptystring == NULL) endofemptystring = python3Lexer_emptyString + strlen(python3Lexer_emptyString);

	assert((endofemptystring-spaces) >= python3Lexer_emptyString);
	return endofemptystring-spaces;
}

////////////////////////////////////////

static ANTLR3_INT32 FIRST_CHAR_POSITION = 0;

static pANTLR3_COMMON_TOKEN python3Lexer_nextTokenLowerLevelImpl(ppython3Lexer ctx, pANTLR3_TOKEN_SOURCE toksource)
/*
This is another level of nextToken - this one handles setting of startPos and calling original handler
*/
{
	ctx->startPos = ctx->pLexer->getCharPositionInLine(ctx->pLexer);

	// This is workaround for bug in libantlr3c (3.1.3, 3.2)
	// See http://www.antlr.org/pipermail/antlr-interest/2009-October/036252.html (ANTLR mailing list, bug report)
	if (ctx->startPos == -1)
	{
		ctx->pLexer->input->charPositionInLine = 0;
		ctx->startPos = 0;
	}

	return ctx->origNextToken(toksource);
}

////

static pANTLR3_COMMON_TOKEN python3Lexer_createDedentIdentToken(ppython3Lexer ctx, ANTLR3_UINT32 toktype, ANTLR3_UINT32 tokline)
{
	pANTLR3_COMMON_TOKEN tok = ctx->pLexer->rec->state->tokFactory->newToken(ctx->pLexer->rec->state->tokFactory);
	tok->type = toktype;
	tok->input = ctx->pLexer->rec->state->tokFactory->input;
	tok->textState = ANTLR3_TEXT_NONE;
	tok->setCharPositionInLine(tok, 0);
	tok->setLine(tok, tokline);

	return tok;
}

////

static ANTLR3_INT32 python3Lexer_findPreviousIndent(ppython3Lexer ctx, ANTLR3_INT32 i)
//Return the index on stack of previous indent level == i else -1
{
	int j;

	for (j = ctx->identStack->size(ctx->identStack) - 1; j >= 0; j--)
	{
		ANTLR3_INT32 pos = (ANTLR3_INT32) ctx->identStack->get(ctx->identStack, j);
		if (pos == i) return j;
	}

	return FIRST_CHAR_POSITION;
}

////

static void python3Lexer_insertImaginaryIndentDedentTokens(ppython3Lexer ctx, pANTLR3_TOKEN_SOURCE toksource)
{
	pANTLR3_COMMON_TOKEN t = python3Lexer_nextTokenLowerLevelImpl(ctx, toksource);
	ctx->tokens->add(ctx->tokens, t, NULL);

	//if not a NEWLINE, doesn't signal indent/dedent work; just enqueue
	if (t->getType(t) != NEWLINE) return;

	//Ignore newlines on hidden channel
	if (t->getChannel(t) == HIDDEN) return;

	ANTLR3_INT32 newlineno = t->getLine(t) + 1;

	//grab first token of next line (skip COMMENT tokens)
	for(;;)
	{
		t = python3Lexer_nextTokenLowerLevelImpl(ctx, toksource);

		if (t->getType(t) == COMMENT)	// Pass comments to output stream (= skip processing here)
		{	
			ctx->tokens->add(ctx->tokens, t, NULL);
			continue;
		}
		
		//Ignore LEADING_WS on HIDDEN channel - these are emited by empty line with some whitespaces on it
		if ((t->getType(t) == LEADING_WS) && (t->getChannel(t) == HIDDEN)) continue; 

		break;
	};

	//compute cpos as the char pos of next non-WS token in line
	ANTLR3_INT32 cpos;
	switch (t->getType(t))
	{

		case EOF:
			cpos = -1; //pretend EOF always happens at left edge
			break;

		case LEADING_WS:
			cpos = t->getText(t)->len;
			break;

		default:
			cpos = t->getCharPositionInLine(t);
			break;
	}

	ANTLR3_INT32 lastIndent = (ANTLR3_INT32) ctx->identStack->peek(ctx->identStack);
	ANTLR3_INT32 lineno = t->getLine(t);
	if (lineno <= 0) lineno = newlineno;

	if (cpos > lastIndent)
	{
		ctx->identStack->push(ctx->identStack, (void *)cpos, NULL);
		ctx->tokens->add(ctx->tokens, python3Lexer_createDedentIdentToken(ctx, INDENT, lineno), NULL);
	} else if (cpos < lastIndent)
	{
		ANTLR3_INT32 prevIndex = python3Lexer_findPreviousIndent(ctx, cpos);
		// generate DEDENTs for each indent level we backed up over
		while (ctx->identStack->size(ctx->identStack) > (prevIndex + 1))
		{
			ctx->tokens->add(ctx->tokens, python3Lexer_createDedentIdentToken(ctx, DEDENT, lineno), NULL);
			ctx->identStack->pop(ctx->identStack);
		}

	}

	// Filter out LEADING_WS tokens
	if (t->getType(t) != LEADING_WS)
		ctx->tokens->add(ctx->tokens, t, NULL);
}

////

static pANTLR3_COMMON_TOKEN python3Lexer_nextTokenImpl(pANTLR3_TOKEN_SOURCE toksource)
{
	pANTLR3_LEXER lexer = (pANTLR3_LEXER)(toksource->super);
	ppython3Lexer ctx = (ppython3Lexer) lexer->ctx;

	for (;;)
	{
		if (ctx->tokens->size(ctx->tokens) > 0)
		{
			return (pANTLR3_COMMON_TOKEN) ctx->tokens->remove(ctx->tokens, 0);
		}

		python3Lexer_insertImaginaryIndentDedentTokens(ctx, toksource);
	}

	assert(0==1); // This part of code should be never reached
}

////

static void python3Lexer_FreeImpl(struct python3Lexer_Ctx_struct * ctx)
{
	ctx->tokens->free(ctx->tokens);
	ctx->identStack->free(ctx->identStack);

	ctx->origFree(ctx);
}

////

void python3Lexer_initLexer(ppython3Lexer ctx)
{
	ctx->implicitLineJoiningLevel = 0;
	ctx->startPos = -1;

	ctx->tokens = antlr3VectorNew(ANTLR3_LIST_SIZE_HINT);
	ctx->identStack = antlr3StackNew(ANTLR3_LIST_SIZE_HINT);
	ctx->identStack->push(ctx->identStack, (void *)FIRST_CHAR_POSITION, NULL);

	// Override nextToken implementation by Python specific
	ctx->origNextToken = ctx->pLexer->rec->state->tokSource->nextToken;
	ctx->pLexer->rec->state->tokSource->nextToken = python3Lexer_nextTokenImpl;	

	ctx->origFree = ctx->free;
	ctx->free = python3Lexer_FreeImpl;
}
