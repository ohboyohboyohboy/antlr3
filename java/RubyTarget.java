/*
 [The "BSD licence"]
 Copyright (c) 2005 Martin Traverso
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

package org.antlr.codegen;

import java.io.IOException;
import java.util.*;

import org.antlr.Tool;
import org.antlr.stringtemplate.*;
import org.antlr.tool.Grammar;

public class RubyTarget
extends Target
{
	public static final Set rubyKeywords =
		new HashSet() {
		{
			add("alias");    add("end");     add("retry"); 
			add("and");      add("ensure");  add("return");
			add("BEGIN");    add("false");   add("self");  
			add("begin");    add("for");     add("super"); 
			add("break");    add("if");      add("then");  
			add("case");     add("in");      add("true");  
			add("class");    add("module");  add("undef"); 
			add("def");      add("next");    add("unless");
			add("defined");  add("nil");     add("until"); 
			add("do");       add("not");     add("when");  
			add("else");     add("or");      add("while"); 
			add("elsif");    add("redo");    add("yield"); 
			add("END");      add("rescue");
		}
	};

	public class RubyRenderer 
	implements AttributeRenderer 
	{
		public String toString(Object o) {
			return o.toString();
		}
		public String toString(Object o, String formatName) {
			String idString = o.toString();

			if (idString.isEmpty()) return idString;

			if (formatName.equals("snakecase")) {
				return snakecase(idString);
			} else if (formatName.equals("camelcase")) {
				return camelcase(idString);
			} else if (formatName.equals("subcamelcase")) {
				return subcamelcase(idString);
			} else if (formatName.equals("constant")) {
				return constantcase(idString);
			} else if (formatName.equals("platform")) {
				return platform(idString);
			} else if (formatName.equals("lexerRule")) {
				return lexerRule(idString);
			} else if (formatName.equals("constantPath")) {
				return constantPath(idString);
			} else if (formatName.equals("label")) {
				return label(idString);
			} else if (formatName.equals("symbol")) {
				return symbol(idString);
			} else {
				throw new IllegalArgumentException("Unsupported format name");
			}
		}
		/** given an input string, which is presumed
		 * to contain a word, which may potentially be camelcased,
		 * and convert it to snake_case underscore style.
		 *
		 * algorithm --
		 *   iterate through the string with a sliding window 3 chars wide
		 *
		 * example -- aGUIWhatNot
		 *   c   c+1 c+2  action
		 *   a   G        << 'a' << '_'  // a lower-upper word edge
		 *   G   U   I    << 'g'
		 *   U   I   W    << 'w'
		 *   I   W   h    << 'i' << '_'  // the last character in an acronym run of uppers
		 *   W   h        << 'w'
		 *   ... and so on
		 */
		private String snakecase(String value) {
			StringBuilder output_buffer = new StringBuilder();
			int l = value.length();
			int cliff = l - 1;
			char cur;
			char next;
			char peek;

			if (value.isEmpty()) return value;
			if (l == 1) return value.toLowerCase();

			for (int i = 0; i < cliff; i++) {
				cur  = value.charAt(i);
				next = value.charAt(i + 1);

				if ( Character.isLetter( cur ) ) {
					output_buffer.append( Character.toLowerCase( cur ) );

					if ( Character.isDigit( next ) || Character.isWhitespace( next ) ) {
						output_buffer.append( '_' );
					} else if ( Character.isLowerCase( cur ) && Character.isUpperCase( next ) ) {
						// at camelcase word edge
						output_buffer.append( '_' );
					} else if ( (i < cliff - 1) && Character.isUpperCase( cur ) && Character.isUpperCase( next ) ) {
						// cur is part of an acronym

						peek = value.charAt(i + 2);
						if ( Character.isLowerCase( peek ) ) {
							/* if next is the start of word (indicated when peek is lowercase)
                                         then the acronym must be completed by appending an underscore */ 
							output_buffer.append('_');
						}
					}
				} else if( Character.isDigit( cur ) ) {
					output_buffer.append( cur );
					if ( Character.isLetter( next ) ) {
						output_buffer.append('_');
					}
				} else if (Character.isWhitespace( cur )) {
					// do nothing
				} else {
					output_buffer.append( cur );
				}

			}

			cur  = value.charAt(cliff);
			if (! Character.isWhitespace(cur) ) {
				output_buffer.append( Character.toLowerCase( cur ) );
			}

			return output_buffer.toString();
		}
		private String constantcase(String value) {
			return snakecase(value).toUpperCase();
		}
		private String platform(String value) {
			return ("__" + value + "__");
		}
		private String symbol(String value) {
			if (value.matches("[a-zA-Z_]\\w*[\\?\\!\\=]?")) {
				return (":" + value);
			} else {
				return ("%s(" + value + ")");
			}
		}
		private String lexerRule(String value) {
			if (value.equals("Tokens")) {
				return "token!";
			} else {
				return (snakecase(value) + "!");
			}
		}
		private String constantPath(String value) {
			return value.replaceAll("\\.", "::");
		}
		private String camelcase(String value) {
			StringBuilder output_buffer = new StringBuilder();
			int cliff = value.length();
			char cur;
			char next;
			boolean at_edge = true;

			if (value.isEmpty()) return value;
			if (cliff == 1) return value.toUpperCase();

			for (int i = 0; i < cliff; i++) {
				cur  = value.charAt(i);

				if ( Character.isWhitespace( cur ) ) {
					at_edge = true;
					continue;
				} else if ( cur == '_' ) {
					at_edge = true;
					continue;
				} else if ( Character.isDigit( cur ) ) {
					output_buffer.append( cur );
					at_edge = true;
					continue;
				}

				if (at_edge) {
					output_buffer.append( Character.toUpperCase( cur ) );
					if ( Character.isLetter( cur ) ) at_edge = false;
				} else {
					output_buffer.append( cur );
				}
			}

			return output_buffer.toString();
		}
		private String label(String value) {
			if (rubyKeywords.contains(value)) {
				return platform(value);
			} else if (Character.isUpperCase(value.charAt(0)) && 
					(!value.equals("FILE")) && 
					(!value.equals("LINE"))) {
				return platform(value);
			} else if (value.equals("FILE")) {
				return "_FILE_";
			} else if (value.equals("LINE")) {
				return "_LINE_";
			} else {
				return value;
			}
		}
		private String subcamelcase(String value) {
			value = camelcase(value);
			if (value.isEmpty())
				return value;
			Character head = Character.toLowerCase( value.charAt(0) );
			String tail = value.substring(1);
			return head.toString().concat(tail);
		}
	}

	protected void genRecognizerFile(Tool tool,
			CodeGenerator generator,
			Grammar grammar,
			StringTemplate outputFileST)
	throws IOException
	{
		StringTemplateGroup group = generator.getTemplates();
		RubyRenderer renderer = new RubyRenderer();
		try {
			group.registerRenderer(Class.forName("java.lang.String"), renderer);
		} catch (ClassNotFoundException e) {
			// this shouldn't happen
			System.err.println("ClassNotFoundException: " + e.getMessage());
			e.printStackTrace(System.err);
		}
		String fileName =
			generator.getRecognizerFileName(grammar.name, grammar.type);
		generator.write(outputFileST, fileName);
	}
	public String getTargetCharLiteralFromANTLRCharLiteral(
			CodeGenerator generator,
			String literal)
	{
		literal = literal.substring(1, literal.length() - 1);

		String result = "?";

		if (literal.equals("\\")) {
			result += "\\\\";
		}
		else if (literal.equals(" ")) {
			result += "\\s";
		}
		else if (literal.startsWith("\\u")) {
			result = "0x" + literal.substring(2);
		}
		else {
			result += literal;
		}

		return result;
	}
	public int getMaxCharValue(CodeGenerator generator)
	{
		// we don't support unicode, yet.
		return 0xFF;
	}
	public String getTokenTypeAsTargetLabel(CodeGenerator generator, int ttype)
	{
		String name = generator.grammar.getTokenDisplayName(ttype);
		// If name is a literal, return the token type instead
		if ( name.charAt(0)=='\'' ) {
			return generator.grammar.computeTokenNameFromLiteral(ttype, name);
		}
		return name;
	}
	/** Is scope in @scope::name {action} valid for this kind of grammar?
	 *  Targets like C++ may want to allow new scopes like headerfile or
	 *  some such.  The action names themselves are not policed at the
	 *  moment so targets can add template actions w/o having to recompile
	 *  ANTLR.
	 */
	public boolean isValidActionScope(int grammarType, String scope) {
		switch (grammarType) {
		case Grammar.LEXER:
			if (scope.equals("lexer")) {
				return true;
			}
			if (scope.equals("token")) {
				return true;
			}
			if (scope.equals("module")) {
				return true;
			}
			if (scope.equals("overrides")) {
				return true;
			}
			break;
		case Grammar.PARSER:
			if (scope.equals("parser")) {
				return true;
			}
			if (scope.equals("token")) {
				return true;
			}
			if (scope.equals("module")) {
				return true;
			}
			if (scope.equals("overrides")) {
				return true;
			}
			break;
		case Grammar.COMBINED:
			if (scope.equals("parser")) {
				return true;
			}
			if (scope.equals("lexer")) {
				return true;
			}
			if (scope.equals("token")) {
				return true;
			}
			if (scope.equals("module")) {
				return true;
			}
			if (scope.equals("overrides")) {
				return true;
			}
			break;
		case Grammar.TREE_PARSER:
			if (scope.equals("treeparser")) {
				return true;
			}
			if (scope.equals("token")) {
				return true;
			}
			if (scope.equals("module")) {
				return true;
			}
			if (scope.equals("overrides")) {
				return true;
			}
			break;
		}
		return false;
	}
	/*
    public String getTargetStringLiteralFromString(String s)
    {
        System.out.print(s + "\n");
        return super.getTargetStringLiteralFromString(s);
    }

    public String getTargetStringLiteralFromString(String s, boolean quoted)
    {
        // System.out.print(s + "\n");
        String ret_value = super.getTargetStringLiteralFromString(s, quoted);
        System.out.print(ret_value + "\n");
        return(ret_value);
    }

    public String getTarget64BitStringFromValue(long word)
    {
        System.out.print(((Long)word).toString() + "\n");
        String result = super.getTarget64BitStringFromValue(word);
        System.out.print(result + "\n");
        return result;
    }
	 */
	public String encodeIntAsCharEscape(final int v) {
		final int intValue;

		if (v == 65535) {
			intValue = -1;
		} else {
			intValue = v;
		}

		return String.valueOf(intValue);
	}
//    public List postProcessAction(List chunks, antlr.Token actionToken) {
//		List nChunks = new ArrayList();
//		
//		for (int i = 0; i < chunks.size(); i++) {
//			Object chunk = chunks.get(i);
//
//			if ( chunk instanceof String ) {
//				String text = (String)chunks.get(i);
//				if ( nChunks.size() == 0 && actionToken.getColumn() > 0 ) {
//					// first chunk and some 'virtual' WS at beginning
//					// prepend to this chunk
//
//					String ws = "";
//					for ( int j = 0 ; j < actionToken.getColumn() ; j++ ) {
//						ws += " ";
//					}
//					text = ws + text;
//				}
//
//				String[] parts = text.split("\r?\n");
//				for ( String line : parts  ) {
//					nChunks.add(line);
//				}
//			}
//			else {
//				if ( nChunks.size() == 0 && actionToken.getColumn() > 0 ) {
//					// first chunk and some 'virtual' WS at beginning
//					// add as a chunk of its own
//
//					String ws = "";
//					for ( int j = 0 ; j < actionToken.getColumn() ; j++ ) {
//						ws += " ";
//					}
//					nChunks.add(ws);
//				}
//
//				nChunks.add(chunk);
//			}
//		}
//
//		int lineNo = actionToken.getLine();
//		int col = 0;
//
//		// strip trailing empty lines
//		int lastChunk = nChunks.size() - 1;
//		while ( lastChunk > 0
//				&& nChunks.get(lastChunk) instanceof String
//				&& ((String)nChunks.get(lastChunk)).trim().length() == 0 )
//			lastChunk--;
//
//		// string leading empty lines
//		int firstChunk = 0;
//		while ( firstChunk <= lastChunk
//				&& nChunks.get(firstChunk) instanceof String
//				&& ((String)nChunks.get(firstChunk)).trim().length() == 0
//				&& ((String)nChunks.get(firstChunk)).endsWith("\n") ) {
//			lineNo++;
//			firstChunk++;
//		}
//
//		int indent = -1;
//		for ( int i = firstChunk ; i <= lastChunk ; i++ ) {
//			Object chunk = nChunks.get(i);
//
//			//System.out.println(lineNo + ":" + col + " " + quote(chunk.toString()));
//
//			if ( chunk instanceof String ) {
//				String text = (String)chunk;
//
//				if ( col == 0 ) {
//					if ( indent == -1 ) {
//						// first non-blank line
//						// count number of leading whitespaces
//
//						indent = 0;
//						for ( int j = 0; j < text.length(); j++ ) {
//							if ( !Character.isWhitespace(text.charAt(j)) )
//								break;
//			
//							indent++;
//						}
//					}
//
//					if ( text.length() >= indent ) {
//						int j;
//						for ( j = 0; j < indent ; j++ ) {
//							if ( !Character.isWhitespace(text.charAt(j)) ) {
//								// should do real error reporting here...
//								System.err.println("Warning: badly indented line " + lineNo + " in action:");
//								System.err.println(text);
//								break;
//							}
//						}
//
//						nChunks.set(i, text.substring(j));
//					}
//					else if ( text.trim().length() > 0 ) {
//						// should do real error reporting here...
//						System.err.println("Warning: badly indented line " + lineNo + " in action:");
//						System.err.println(text);
//					}
//				}
//
//				if ( text.endsWith("\n") ) {
//					lineNo++;
//					col = 0;
//				}
//				else {
//					col += text.length();
//				}
//			}
//			else {
//				// not really correct, but all I need is col to increment...
//				col += 1;
//			}
//		}
//
//		return nChunks;
//    }
}
