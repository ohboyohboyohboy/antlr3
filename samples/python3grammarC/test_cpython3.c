/*
 *  cpythontest.c
 *  CPP
 *
 *  Created by Ales Teska on 6.10.09.
 *  Copyright 2009 Exidius. All rights reserved.
 *
 */

#include <assert.h>
#include "output/python3Lexer.h"
#include "output/python3Parser.h"

/////////////////////////////////////////

int main(int argc, char *argv[])
{
	assert(argc == 2);

	pANTLR3_INPUT_STREAM input = antlr3AsciiFileStreamNew((pANTLR3_UINT8)argv[1]);
	assert(input != NULL);

	// Create lexer
	ppython3Lexer lxr = python3LexerNew(input);
	assert(lxr != NULL);

	// Create token stream
	pANTLR3_COMMON_TOKEN_STREAM tstream = antlr3CommonTokenStreamSourceNew(ANTLR3_SIZE_HINT, TOKENSOURCE(lxr));
	assert(tstream != NULL);
	tstream->discardOffChannelToks(tstream, ANTLR3_TRUE);

	// Create parser
	ppython3Parser psr = python3ParserNew(tstream);
	assert(psr != NULL);

	// Parse ...
	psr->file_input(psr);

    // Clean up /////////////////////////////////////////
	psr->free(psr);
	psr = NULL;

	tstream->free(tstream);
	tstream = NULL;

	lxr->free(lxr);
	lxr = NULL;

	input->close(input);
	input = NULL;
 
	return(0);
}
