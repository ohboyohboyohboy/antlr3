# $ANTLR 3.0.1 C.g 2009-04-20 18:27:33

from antlr3 import *
from antlr3.compat import set, frozenset


# for convenience in actions
HIDDEN = BaseRecognizer.HIDDEN

# token types
LINE_COMMENT=21
FloatTypeSuffix=16
IntegerTypeSuffix=14
LETTER=11
OCTAL_LITERAL=6
CHARACTER_LITERAL=8
Exponent=15
EOF=-1
HexDigit=13
STRING_LITERAL=9
WS=19
FLOATING_POINT_LITERAL=10
IDENTIFIER=4
UnicodeEscape=18
LINE_COMMAND=22
HEX_LITERAL=5
COMMENT=20
DECIMAL_LITERAL=7
EscapeSequence=12
OctalEscape=17

# token names
tokenNames = [
    "<invalid>", "<EOR>", "<DOWN>", "<UP>", 
    "IDENTIFIER", "HEX_LITERAL", "OCTAL_LITERAL", "DECIMAL_LITERAL", "CHARACTER_LITERAL", 
    "STRING_LITERAL", "FLOATING_POINT_LITERAL", "LETTER", "EscapeSequence", 
    "HexDigit", "IntegerTypeSuffix", "Exponent", "FloatTypeSuffix", "OctalEscape", 
    "UnicodeEscape", "WS", "COMMENT", "LINE_COMMENT", "LINE_COMMAND", "'typedef'", 
    "';'", "','", "'='", "'extern'", "'static'", "'auto'", "'register'", 
    "'void'", "'char'", "'short'", "'int'", "'long'", "'float'", "'double'", 
    "'signed'", "'unsigned'", "'{'", "'}'", "'struct'", "'union'", "':'", 
    "'enum'", "'const'", "'__const'", "'inline'", "'volatile'", "'('", "')'", 
    "'['", "']'", "'__attribute__'", "'*'", "'...'", "'+'", "'-'", "'/'", 
    "'%'", "'++'", "'--'", "'sizeof'", "'.'", "'->'", "'&'", "'~'", "'!'", 
    "'*='", "'/='", "'%='", "'+='", "'-='", "'<<='", "'>>='", "'&='", "'^='", 
    "'|='", "'?'", "'||'", "'&&'", "'|'", "'^'", "'=='", "'!='", "'<'", 
    "'>'", "'<='", "'>='", "'<<'", "'>>'", "'case'", "'default'", "'if'", 
    "'else'", "'switch'", "'while'", "'do'", "'for'", "'goto'", "'continue'", 
    "'break'", "'return'"
]

class symbols_scope(object):
    def __init__(self):
        self.types = None


class declaration_scope(object):
    def __init__(self):
        self.isTypedef = None


class CParser(Parser):
    grammarFileName = "C.g"
    tokenNames = tokenNames

    def __init__(self, input):
        Parser.__init__(self, input)
        self.ruleMemo = {}

        self.symbols_stack = []

	self.declaration_stack = []



                


              
    def isTypeName(self, name):
      for scope in self.symbols_stack:
    	if name in scope.types: 
    	  return True;
      return False;



    # $ANTLR start translation_unit
    # C.g:53:1: translation_unit : ( external_declaration )+ ;
    def translation_unit(self, ):
        self.symbols_stack.append(symbols_scope())

        translation_unit_StartIndex = self.input.index()
               
        self.symbols_stack[-1].types = set()

        try:
            try:
                if self.backtracking > 0 and self.alreadyParsedRule(self.input, 1):
                    return 

                # C.g:58:2: ( ( external_declaration )+ )
                # C.g:58:4: ( external_declaration )+
                # C.g:58:4: ( external_declaration )+
                cnt1 = 0
                while True: #loop1
                    alt1 = 2
                    LA1_0 = self.input.LA(1)

                    if (LA1_0 == IDENTIFIER or LA1_0 == 23 or (27 <= LA1_0 <= 39) or (42 <= LA1_0 <= 43) or (45 <= LA1_0 <= 50) or (54 <= LA1_0 <= 55)) :
                        alt1 = 1


                    if alt1 == 1:
                        # C.g:0:0: external_declaration
                        self.following.append(self.FOLLOW_external_declaration_in_translation_unit76)
                        self.external_declaration()
                        self.following.pop()
                        if self.failed:
                            return 


                    else:
                        if cnt1 >= 1:
                            break #loop1

                        if self.backtracking > 0:
                            self.failed = True
                            return 

                        eee = EarlyExitException(1, self.input)
                        raise eee

                    cnt1 += 1






            except RecognitionException, re:
                self.reportError(re)
                self.recover(self.input, re)
        finally:
            if self.backtracking > 0:
                self.memoize(self.input, 1, translation_unit_StartIndex)

            self.symbols_stack.pop()

            pass

        return 

    # $ANTLR end translation_unit


    # $ANTLR start external_declaration
    # C.g:61:1: external_declaration options {k=1; } : ( ( ( declaration_specifiers )? declarator ( declaration )* '{' )=> function_definition | declaration );
    def external_declaration(self, ):

        external_declaration_StartIndex = self.input.index()
        try:
            try:
                if self.backtracking > 0 and self.alreadyParsedRule(self.input, 2):
                    return 

                # C.g:77:2: ( ( ( declaration_specifiers )? declarator ( declaration )* '{' )=> function_definition | declaration )
                alt2 = 2
                LA2_0 = self.input.LA(1)

                if (LA2_0 == 54) :
                    LA2_1 = self.input.LA(2)

                    if (self.synpred4()) :
                        alt2 = 1
                    elif (True) :
                        alt2 = 2
                    else:
                        if self.backtracking > 0:
                            self.failed = True
                            return 

                        nvae = NoViableAltException("61:1: external_declaration options {k=1; } : ( ( ( declaration_specifiers )? declarator ( declaration )* '{' )=> function_definition | declaration );", 2, 1, self.input)

                        raise nvae

                elif ((27 <= LA2_0 <= 30)) :
                    LA2_2 = self.input.LA(2)

                    if (self.synpred4()) :
                        alt2 = 1
                    elif (True) :
                        alt2 = 2
                    else:
                        if self.backtracking > 0:
                            self.failed = True
                            return 

                        nvae = NoViableAltException("61:1: external_declaration options {k=1; } : ( ( ( declaration_specifiers )? declarator ( declaration )* '{' )=> function_definition | declaration );", 2, 2, self.input)

                        raise nvae

                elif (LA2_0 == 31) :
                    LA2_3 = self.input.LA(2)

                    if (self.synpred4()) :
                        alt2 = 1
                    elif (True) :
                        alt2 = 2
                    else:
                        if self.backtracking > 0:
                            self.failed = True
                            return 

                        nvae = NoViableAltException("61:1: external_declaration options {k=1; } : ( ( ( declaration_specifiers )? declarator ( declaration )* '{' )=> function_definition | declaration );", 2, 3, self.input)

                        raise nvae

                elif (LA2_0 == 32) :
                    LA2_4 = self.input.LA(2)

                    if (self.synpred4()) :
                        alt2 = 1
                    elif (True) :
                        alt2 = 2
                    else:
                        if self.backtracking > 0:
                            self.failed = True
                            return 

                        nvae = NoViableAltException("61:1: external_declaration options {k=1; } : ( ( ( declaration_specifiers )? declarator ( declaration )* '{' )=> function_definition | declaration );", 2, 4, self.input)

                        raise nvae

                elif (LA2_0 == 33) :
                    LA2_5 = self.input.LA(2)

                    if (self.synpred4()) :
                        alt2 = 1
                    elif (True) :
                        alt2 = 2
                    else:
                        if self.backtracking > 0:
                            self.failed = True
                            return 

                        nvae = NoViableAltException("61:1: external_declaration options {k=1; } : ( ( ( declaration_specifiers )? declarator ( declaration )* '{' )=> function_definition | declaration );", 2, 5, self.input)

                        raise nvae

                elif (LA2_0 == 34) :
                    LA2_6 = self.input.LA(2)

                    if (self.synpred4()) :
                        alt2 = 1
                    elif (True) :
                        alt2 = 2
                    else:
                        if self.backtracking > 0:
                            self.failed = True
                            return 

                        nvae = NoViableAltException("61:1: external_declaration options {k=1; } : ( ( ( declaration_specifiers )? declarator ( declaration )* '{' )=> function_definition | declaration );", 2, 6, self.input)

                        raise nvae

                elif (LA2_0 == 35) :
                    LA2_7 = self.input.LA(2)

                    if (self.synpred4()) :
                        alt2 = 1
                    elif (True) :
                        alt2 = 2
                    else:
                        if self.backtracking > 0:
                            self.failed = True
                            return 

                        nvae = NoViableAltException("61:1: external_declaration options {k=1; } : ( ( ( declaration_specifiers )? declarator ( declaration )* '{' )=> function_definition | declaration );", 2, 7, self.input)

                        raise nvae

                elif (LA2_0 == 36) :
                    LA2_8 = self.input.LA(2)

                    if (self.synpred4()) :
                        alt2 = 1
                    elif (True) :
                        alt2 = 2
                    else:
                        if self.backtracking > 0:
                            self.failed = True
                            return 

                        nvae = NoViableAltException("61:1: external_declaration options {k=1; } : ( ( ( declaration_specifiers )? declarator ( declaration )* '{' )=> function_definition | declaration );", 2, 8, self.input)

                        raise nvae

                elif (LA2_0 == 37) :
                    LA2_9 = self.input.LA(2)

                    if (self.synpred4()) :
                        alt2 = 1
                    elif (True) :
                        alt2 = 2
                    else:
                        if self.backtracking > 0:
                            self.failed = True
                            return 

                        nvae = NoViableAltException("61:1: external_declaration options {k=1; } : ( ( ( declaration_specifiers )? declarator ( declaration )* '{' )=> function_definition | declaration );", 2, 9, self.input)

                        raise nvae

                elif (LA2_0 == 38) :
                    LA2_10 = self.input.LA(2)

                    if (self.synpred4()) :
                        alt2 = 1
                    elif (True) :
                        alt2 = 2
                    else:
                        if self.backtracking > 0:
                            self.failed = True
                            return 

                        nvae = NoViableAltException("61:1: external_declaration options {k=1; } : ( ( ( declaration_specifiers )? declarator ( declaration )* '{' )=> function_definition | declaration );", 2, 10, self.input)

                        raise nvae

                elif (LA2_0 == 39) :
                    LA2_11 = self.input.LA(2)

                    if (self.synpred4()) :
                        alt2 = 1
                    elif (True) :
                        alt2 = 2
                    else:
                        if self.backtracking > 0:
                            self.failed = True
                            return 

                        nvae = NoViableAltException("61:1: external_declaration options {k=1; } : ( ( ( declaration_specifiers )? declarator ( declaration )* '{' )=> function_definition | declaration );", 2, 11, self.input)

                        raise nvae

                elif ((42 <= LA2_0 <= 43)) :
                    LA2_12 = self.input.LA(2)

                    if (self.synpred4()) :
                        alt2 = 1
                    elif (True) :
                        alt2 = 2
                    else:
                        if self.backtracking > 0:
                            self.failed = True
                            return 

                        nvae = NoViableAltException("61:1: external_declaration options {k=1; } : ( ( ( declaration_specifiers )? declarator ( declaration )* '{' )=> function_definition | declaration );", 2, 12, self.input)

                        raise nvae

                elif (LA2_0 == 45) :
                    LA2_13 = self.input.LA(2)

                    if (self.synpred4()) :
                        alt2 = 1
                    elif (True) :
                        alt2 = 2
                    else:
                        if self.backtracking > 0:
                            self.failed = True
                            return 

                        nvae = NoViableAltException("61:1: external_declaration options {k=1; } : ( ( ( declaration_specifiers )? declarator ( declaration )* '{' )=> function_definition | declaration );", 2, 13, self.input)

                        raise nvae

                elif (LA2_0 == IDENTIFIER) :
                    LA2_14 = self.input.LA(2)

                    if (((self.synpred4() and self.isTypeName(self.input.LT(1).getText()) ) or self.synpred4())) :
                        alt2 = 1
                    elif (self.isTypeName(self.input.LT(1).getText()) ) :
                        alt2 = 2
                    else:
                        if self.backtracking > 0:
                            self.failed = True
                            return 

                        nvae = NoViableAltException("61:1: external_declaration options {k=1; } : ( ( ( declaration_specifiers )? declarator ( declaration )* '{' )=> function_definition | declaration );", 2, 14, self.input)

                        raise nvae

                elif ((46 <= LA2_0 <= 49)) :
                    LA2_15 = self.input.LA(2)

                    if (self.synpred4()) :
                        alt2 = 1
                    elif (True) :
                        alt2 = 2
                    else:
                        if self.backtracking > 0:
                            self.failed = True
                            return 

                        nvae = NoViableAltException("61:1: external_declaration options {k=1; } : ( ( ( declaration_specifiers )? declarator ( declaration )* '{' )=> function_definition | declaration );", 2, 15, self.input)

                        raise nvae

                elif (LA2_0 == 55) and (self.synpred4()):
                    alt2 = 1
                elif (LA2_0 == 50) and (self.synpred4()):
                    alt2 = 1
                elif (LA2_0 == 23) :
                    alt2 = 2
                else:
                    if self.backtracking > 0:
                        self.failed = True
                        return 

                    nvae = NoViableAltException("61:1: external_declaration options {k=1; } : ( ( ( declaration_specifiers )? declarator ( declaration )* '{' )=> function_definition | declaration );", 2, 0, self.input)

                    raise nvae

                if alt2 == 1:
                    # C.g:77:4: ( ( declaration_specifiers )? declarator ( declaration )* '{' )=> function_definition
                    self.following.append(self.FOLLOW_function_definition_in_external_declaration112)
                    self.function_definition()
                    self.following.pop()
                    if self.failed:
                        return 


                elif alt2 == 2:
                    # C.g:78:4: declaration
                    self.following.append(self.FOLLOW_declaration_in_external_declaration117)
                    self.declaration()
                    self.following.pop()
                    if self.failed:
                        return 



            except RecognitionException, re:
                self.reportError(re)
                self.recover(self.input, re)
        finally:
            if self.backtracking > 0:
                self.memoize(self.input, 2, external_declaration_StartIndex)

            pass

        return 

    # $ANTLR end external_declaration


    # $ANTLR start function_definition
    # C.g:81:1: function_definition : ( declaration_specifiers )? declarator ( ( declaration )+ compound_statement | compound_statement ) ;
    def function_definition(self, ):
        self.symbols_stack.append(symbols_scope())

        function_definition_StartIndex = self.input.index()
               
        self.symbols_stack[-1].types = set()

        try:
            try:
                if self.backtracking > 0 and self.alreadyParsedRule(self.input, 3):
                    return 

                # C.g:86:2: ( ( declaration_specifiers )? declarator ( ( declaration )+ compound_statement | compound_statement ) )
                # C.g:86:4: ( declaration_specifiers )? declarator ( ( declaration )+ compound_statement | compound_statement )
                # C.g:86:4: ( declaration_specifiers )?
                alt3 = 2
                LA3 = self.input.LA(1)
                if LA3 == 54:
                    LA3_1 = self.input.LA(2)

                    if (LA3_1 == 50) :
                        LA3_18 = self.input.LA(3)

                        if (self.synpred5()) :
                            alt3 = 1
                elif LA3 == 27 or LA3 == 28 or LA3 == 29 or LA3 == 30 or LA3 == 31 or LA3 == 32 or LA3 == 33 or LA3 == 34 or LA3 == 35 or LA3 == 36 or LA3 == 37 or LA3 == 38 or LA3 == 39 or LA3 == 42 or LA3 == 43 or LA3 == 45 or LA3 == 46 or LA3 == 47 or LA3 == 48 or LA3 == 49:
                    alt3 = 1
                elif LA3 == IDENTIFIER:
                    LA3 = self.input.LA(2)
                    if LA3 == 54:
                        LA3_19 = self.input.LA(3)

                        if ((self.synpred5() and self.isTypeName(self.input.LT(1).getText()) )) :
                            alt3 = 1
                    elif LA3 == 55:
                        alt3 = 1
                    elif LA3 == IDENTIFIER:
                        LA3_21 = self.input.LA(3)

                        if ((self.synpred5() and self.isTypeName(self.input.LT(1).getText()) )) :
                            alt3 = 1
                    elif LA3 == 50:
                        LA3_22 = self.input.LA(3)

                        if ((self.synpred5() and self.isTypeName(self.input.LT(1).getText()) )) :
                            alt3 = 1
                    elif LA3 == 27 or LA3 == 28 or LA3 == 29 or LA3 == 30:
                        LA3_23 = self.input.LA(3)

                        if ((self.synpred5() and self.isTypeName(self.input.LT(1).getText()) )) :
                            alt3 = 1
                    elif LA3 == 31:
                        LA3_24 = self.input.LA(3)

                        if ((self.synpred5() and self.isTypeName(self.input.LT(1).getText()) )) :
                            alt3 = 1
                    elif LA3 == 32:
                        LA3_25 = self.input.LA(3)

                        if ((self.synpred5() and self.isTypeName(self.input.LT(1).getText()) )) :
                            alt3 = 1
                    elif LA3 == 33:
                        LA3_26 = self.input.LA(3)

                        if ((self.synpred5() and self.isTypeName(self.input.LT(1).getText()) )) :
                            alt3 = 1
                    elif LA3 == 34:
                        LA3_27 = self.input.LA(3)

                        if ((self.synpred5() and self.isTypeName(self.input.LT(1).getText()) )) :
                            alt3 = 1
                    elif LA3 == 35:
                        LA3_28 = self.input.LA(3)

                        if ((self.synpred5() and self.isTypeName(self.input.LT(1).getText()) )) :
                            alt3 = 1
                    elif LA3 == 36:
                        LA3_29 = self.input.LA(3)

                        if ((self.synpred5() and self.isTypeName(self.input.LT(1).getText()) )) :
                            alt3 = 1
                    elif LA3 == 37:
                        LA3_30 = self.input.LA(3)

                        if ((self.synpred5() and self.isTypeName(self.input.LT(1).getText()) )) :
                            alt3 = 1
                    elif LA3 == 38:
                        LA3_31 = self.input.LA(3)

                        if ((self.synpred5() and self.isTypeName(self.input.LT(1).getText()) )) :
                            alt3 = 1
                    elif LA3 == 39:
                        LA3_32 = self.input.LA(3)

                        if ((self.synpred5() and self.isTypeName(self.input.LT(1).getText()) )) :
                            alt3 = 1
                    elif LA3 == 42 or LA3 == 43:
                        LA3_33 = self.input.LA(3)

                        if ((self.synpred5() and self.isTypeName(self.input.LT(1).getText()) )) :
                            alt3 = 1
                    elif LA3 == 45:
                        LA3_34 = self.input.LA(3)

                        if ((self.synpred5() and self.isTypeName(self.input.LT(1).getText()) )) :
                            alt3 = 1
                    elif LA3 == 46 or LA3 == 47 or LA3 == 48 or LA3 == 49:
                        LA3_35 = self.input.LA(3)

                        if ((self.synpred5() and self.isTypeName(self.input.LT(1).getText()) )) :
                            alt3 = 1
                if alt3 == 1:
                    # C.g:0:0: declaration_specifiers
                    self.following.append(self.FOLLOW_declaration_specifiers_in_function_definition139)
                    self.declaration_specifiers()
                    self.following.pop()
                    if self.failed:
                        return 



                self.following.append(self.FOLLOW_declarator_in_function_definition142)
                self.declarator()
                self.following.pop()
                if self.failed:
                    return 
                # C.g:87:3: ( ( declaration )+ compound_statement | compound_statement )
                alt5 = 2
                LA5_0 = self.input.LA(1)

                if (LA5_0 == IDENTIFIER or LA5_0 == 23 or (27 <= LA5_0 <= 39) or (42 <= LA5_0 <= 43) or (45 <= LA5_0 <= 49) or LA5_0 == 54) :
                    alt5 = 1
                elif (LA5_0 == 40) :
                    alt5 = 2
                else:
                    if self.backtracking > 0:
                        self.failed = True
                        return 

                    nvae = NoViableAltException("87:3: ( ( declaration )+ compound_statement | compound_statement )", 5, 0, self.input)

                    raise nvae

                if alt5 == 1:
                    # C.g:87:5: ( declaration )+ compound_statement
                    # C.g:87:5: ( declaration )+
                    cnt4 = 0
                    while True: #loop4
                        alt4 = 2
                        LA4_0 = self.input.LA(1)

                        if (LA4_0 == IDENTIFIER or LA4_0 == 23 or (27 <= LA4_0 <= 39) or (42 <= LA4_0 <= 43) or (45 <= LA4_0 <= 49) or LA4_0 == 54) :
                            alt4 = 1


                        if alt4 == 1:
                            # C.g:0:0: declaration
                            self.following.append(self.FOLLOW_declaration_in_function_definition148)
                            self.declaration()
                            self.following.pop()
                            if self.failed:
                                return 


                        else:
                            if cnt4 >= 1:
                                break #loop4

                            if self.backtracking > 0:
                                self.failed = True
                                return 

                            eee = EarlyExitException(4, self.input)
                            raise eee

                        cnt4 += 1


                    self.following.append(self.FOLLOW_compound_statement_in_function_definition151)
                    self.compound_statement()
                    self.following.pop()
                    if self.failed:
                        return 


                elif alt5 == 2:
                    # C.g:88:5: compound_statement
                    self.following.append(self.FOLLOW_compound_statement_in_function_definition158)
                    self.compound_statement()
                    self.following.pop()
                    if self.failed:
                        return 







            except RecognitionException, re:
                self.reportError(re)
                self.recover(self.input, re)
        finally:
            if self.backtracking > 0:
                self.memoize(self.input, 3, function_definition_StartIndex)

            self.symbols_stack.pop()

            pass

        return 

    # $ANTLR end function_definition


    # $ANTLR start declaration
    # C.g:92:1: declaration : ( 'typedef' ( declaration_specifiers )? init_declarator_list ( attribute_specifier )* ';' | declaration_specifiers ( init_declarator_list )? ( attribute_specifier )* ';' );
    def declaration(self, ):
        self.declaration_stack.append(declaration_scope())
        declaration_StartIndex = self.input.index()
               
        self.declaration_stack[-1].isTypedef =  False

        try:
            try:
                if self.backtracking > 0 and self.alreadyParsedRule(self.input, 4):
                    return 

                # C.g:99:2: ( 'typedef' ( declaration_specifiers )? init_declarator_list ( attribute_specifier )* ';' | declaration_specifiers ( init_declarator_list )? ( attribute_specifier )* ';' )
                alt10 = 2
                LA10_0 = self.input.LA(1)

                if (LA10_0 == 23) :
                    alt10 = 1
                elif (LA10_0 == IDENTIFIER or (27 <= LA10_0 <= 39) or (42 <= LA10_0 <= 43) or (45 <= LA10_0 <= 49) or LA10_0 == 54) :
                    alt10 = 2
                else:
                    if self.backtracking > 0:
                        self.failed = True
                        return 

                    nvae = NoViableAltException("92:1: declaration : ( 'typedef' ( declaration_specifiers )? init_declarator_list ( attribute_specifier )* ';' | declaration_specifiers ( init_declarator_list )? ( attribute_specifier )* ';' );", 10, 0, self.input)

                    raise nvae

                if alt10 == 1:
                    # C.g:99:4: 'typedef' ( declaration_specifiers )? init_declarator_list ( attribute_specifier )* ';'
                    self.match(self.input, 23, self.FOLLOW_23_in_declaration186)
                    if self.failed:
                        return 
                    # C.g:99:14: ( declaration_specifiers )?
                    alt6 = 2
                    LA6 = self.input.LA(1)
                    if LA6 == 54:
                        LA6_1 = self.input.LA(2)

                        if (LA6_1 == 50) :
                            LA6_18 = self.input.LA(3)

                            if (self.synpred8()) :
                                alt6 = 1
                    elif LA6 == 27 or LA6 == 28 or LA6 == 29 or LA6 == 30 or LA6 == 31 or LA6 == 32 or LA6 == 33 or LA6 == 34 or LA6 == 35 or LA6 == 36 or LA6 == 37 or LA6 == 38 or LA6 == 39 or LA6 == 42 or LA6 == 43 or LA6 == 45 or LA6 == 46 or LA6 == 47 or LA6 == 48 or LA6 == 49:
                        alt6 = 1
                    elif LA6 == IDENTIFIER:
                        LA6 = self.input.LA(2)
                        if LA6 == 54:
                            LA6_19 = self.input.LA(3)

                            if ((self.synpred8() and self.isTypeName(self.input.LT(1).getText()) )) :
                                alt6 = 1
                        elif LA6 == IDENTIFIER or LA6 == 27 or LA6 == 28 or LA6 == 29 or LA6 == 30 or LA6 == 31 or LA6 == 32 or LA6 == 33 or LA6 == 34 or LA6 == 35 or LA6 == 36 or LA6 == 37 or LA6 == 38 or LA6 == 39 or LA6 == 42 or LA6 == 43 or LA6 == 45 or LA6 == 46 or LA6 == 47 or LA6 == 48 or LA6 == 49 or LA6 == 55:
                            alt6 = 1
                        elif LA6 == 50:
                            LA6_22 = self.input.LA(3)

                            if ((self.synpred8() and self.isTypeName(self.input.LT(1).getText()) )) :
                                alt6 = 1
                    if alt6 == 1:
                        # C.g:0:0: declaration_specifiers
                        self.following.append(self.FOLLOW_declaration_specifiers_in_declaration188)
                        self.declaration_specifiers()
                        self.following.pop()
                        if self.failed:
                            return 



                    if self.backtracking == 0:
                        self.declaration_stack[-1].isTypedef=True 

                    self.following.append(self.FOLLOW_init_declarator_list_in_declaration196)
                    self.init_declarator_list()
                    self.following.pop()
                    if self.failed:
                        return 
                    # C.g:100:25: ( attribute_specifier )*
                    while True: #loop7
                        alt7 = 2
                        LA7_0 = self.input.LA(1)

                        if (LA7_0 == 54) :
                            alt7 = 1


                        if alt7 == 1:
                            # C.g:0:0: attribute_specifier
                            self.following.append(self.FOLLOW_attribute_specifier_in_declaration198)
                            self.attribute_specifier()
                            self.following.pop()
                            if self.failed:
                                return 


                        else:
                            break #loop7


                    self.match(self.input, 24, self.FOLLOW_24_in_declaration201)
                    if self.failed:
                        return 


                elif alt10 == 2:
                    # C.g:101:4: declaration_specifiers ( init_declarator_list )? ( attribute_specifier )* ';'
                    self.following.append(self.FOLLOW_declaration_specifiers_in_declaration207)
                    self.declaration_specifiers()
                    self.following.pop()
                    if self.failed:
                        return 
                    # C.g:101:27: ( init_declarator_list )?
                    alt8 = 2
                    LA8_0 = self.input.LA(1)

                    if (LA8_0 == 54) :
                        LA8_1 = self.input.LA(2)

                        if (LA8_1 == 50) :
                            LA8_6 = self.input.LA(3)

                            if (self.synpred11()) :
                                alt8 = 1
                    elif (LA8_0 == IDENTIFIER or LA8_0 == 50 or LA8_0 == 55) :
                        alt8 = 1
                    if alt8 == 1:
                        # C.g:0:0: init_declarator_list
                        self.following.append(self.FOLLOW_init_declarator_list_in_declaration209)
                        self.init_declarator_list()
                        self.following.pop()
                        if self.failed:
                            return 



                    # C.g:101:49: ( attribute_specifier )*
                    while True: #loop9
                        alt9 = 2
                        LA9_0 = self.input.LA(1)

                        if (LA9_0 == 54) :
                            alt9 = 1


                        if alt9 == 1:
                            # C.g:0:0: attribute_specifier
                            self.following.append(self.FOLLOW_attribute_specifier_in_declaration212)
                            self.attribute_specifier()
                            self.following.pop()
                            if self.failed:
                                return 


                        else:
                            break #loop9


                    self.match(self.input, 24, self.FOLLOW_24_in_declaration214)
                    if self.failed:
                        return 



            except RecognitionException, re:
                self.reportError(re)
                self.recover(self.input, re)
        finally:
            if self.backtracking > 0:
                self.memoize(self.input, 4, declaration_StartIndex)

            self.declaration_stack.pop()
            pass

        return 

    # $ANTLR end declaration


    # $ANTLR start declaration_specifiers
    # C.g:104:1: declaration_specifiers : ( attribute_specifier )* ( storage_class_specifier | type_specifier | type_qualifier )+ ;
    def declaration_specifiers(self, ):

        declaration_specifiers_StartIndex = self.input.index()
        try:
            try:
                if self.backtracking > 0 and self.alreadyParsedRule(self.input, 5):
                    return 

                # C.g:105:2: ( ( attribute_specifier )* ( storage_class_specifier | type_specifier | type_qualifier )+ )
                # C.g:105:4: ( attribute_specifier )* ( storage_class_specifier | type_specifier | type_qualifier )+
                # C.g:105:4: ( attribute_specifier )*
                while True: #loop11
                    alt11 = 2
                    LA11_0 = self.input.LA(1)

                    if (LA11_0 == 54) :
                        alt11 = 1


                    if alt11 == 1:
                        # C.g:0:0: attribute_specifier
                        self.following.append(self.FOLLOW_attribute_specifier_in_declaration_specifiers225)
                        self.attribute_specifier()
                        self.following.pop()
                        if self.failed:
                            return 


                    else:
                        break #loop11


                # C.g:105:26: ( storage_class_specifier | type_specifier | type_qualifier )+
                cnt12 = 0
                while True: #loop12
                    alt12 = 4
                    LA12 = self.input.LA(1)
                    if LA12 == IDENTIFIER:
                        LA12_3 = self.input.LA(2)

                        if ((self.synpred15() and self.isTypeName(self.input.LT(1).getText()) )) :
                            alt12 = 2


                    elif LA12 == 27 or LA12 == 28 or LA12 == 29 or LA12 == 30:
                        alt12 = 1
                    elif LA12 == 31 or LA12 == 32 or LA12 == 33 or LA12 == 34 or LA12 == 35 or LA12 == 36 or LA12 == 37 or LA12 == 38 or LA12 == 39 or LA12 == 42 or LA12 == 43 or LA12 == 45:
                        alt12 = 2
                    elif LA12 == 46 or LA12 == 47 or LA12 == 48 or LA12 == 49:
                        alt12 = 3

                    if alt12 == 1:
                        # C.g:105:30: storage_class_specifier
                        self.following.append(self.FOLLOW_storage_class_specifier_in_declaration_specifiers233)
                        self.storage_class_specifier()
                        self.following.pop()
                        if self.failed:
                            return 


                    elif alt12 == 2:
                        # C.g:106:7: type_specifier
                        self.following.append(self.FOLLOW_type_specifier_in_declaration_specifiers241)
                        self.type_specifier()
                        self.following.pop()
                        if self.failed:
                            return 


                    elif alt12 == 3:
                        # C.g:107:13: type_qualifier
                        self.following.append(self.FOLLOW_type_qualifier_in_declaration_specifiers255)
                        self.type_qualifier()
                        self.following.pop()
                        if self.failed:
                            return 


                    else:
                        if cnt12 >= 1:
                            break #loop12

                        if self.backtracking > 0:
                            self.failed = True
                            return 

                        eee = EarlyExitException(12, self.input)
                        raise eee

                    cnt12 += 1






            except RecognitionException, re:
                self.reportError(re)
                self.recover(self.input, re)
        finally:
            if self.backtracking > 0:
                self.memoize(self.input, 5, declaration_specifiers_StartIndex)

            pass

        return 

    # $ANTLR end declaration_specifiers


    # $ANTLR start init_declarator_list
    # C.g:111:1: init_declarator_list : init_declarator ( ',' init_declarator )* ;
    def init_declarator_list(self, ):

        init_declarator_list_StartIndex = self.input.index()
        try:
            try:
                if self.backtracking > 0 and self.alreadyParsedRule(self.input, 6):
                    return 

                # C.g:112:2: ( init_declarator ( ',' init_declarator )* )
                # C.g:112:4: init_declarator ( ',' init_declarator )*
                self.following.append(self.FOLLOW_init_declarator_in_init_declarator_list277)
                self.init_declarator()
                self.following.pop()
                if self.failed:
                    return 
                # C.g:112:20: ( ',' init_declarator )*
                while True: #loop13
                    alt13 = 2
                    LA13_0 = self.input.LA(1)

                    if (LA13_0 == 25) :
                        alt13 = 1


                    if alt13 == 1:
                        # C.g:112:21: ',' init_declarator
                        self.match(self.input, 25, self.FOLLOW_25_in_init_declarator_list280)
                        if self.failed:
                            return 
                        self.following.append(self.FOLLOW_init_declarator_in_init_declarator_list282)
                        self.init_declarator()
                        self.following.pop()
                        if self.failed:
                            return 


                    else:
                        break #loop13






            except RecognitionException, re:
                self.reportError(re)
                self.recover(self.input, re)
        finally:
            if self.backtracking > 0:
                self.memoize(self.input, 6, init_declarator_list_StartIndex)

            pass

        return 

    # $ANTLR end init_declarator_list


    # $ANTLR start init_declarator
    # C.g:115:1: init_declarator : declarator ( '=' initializer )? ;
    def init_declarator(self, ):

        init_declarator_StartIndex = self.input.index()
        try:
            try:
                if self.backtracking > 0 and self.alreadyParsedRule(self.input, 7):
                    return 

                # C.g:116:2: ( declarator ( '=' initializer )? )
                # C.g:116:4: declarator ( '=' initializer )?
                self.following.append(self.FOLLOW_declarator_in_init_declarator295)
                self.declarator()
                self.following.pop()
                if self.failed:
                    return 
                # C.g:116:15: ( '=' initializer )?
                alt14 = 2
                LA14_0 = self.input.LA(1)

                if (LA14_0 == 26) :
                    alt14 = 1
                if alt14 == 1:
                    # C.g:116:16: '=' initializer
                    self.match(self.input, 26, self.FOLLOW_26_in_init_declarator298)
                    if self.failed:
                        return 
                    self.following.append(self.FOLLOW_initializer_in_init_declarator300)
                    self.initializer()
                    self.following.pop()
                    if self.failed:
                        return 







            except RecognitionException, re:
                self.reportError(re)
                self.recover(self.input, re)
        finally:
            if self.backtracking > 0:
                self.memoize(self.input, 7, init_declarator_StartIndex)

            pass

        return 

    # $ANTLR end init_declarator


    # $ANTLR start storage_class_specifier
    # C.g:119:1: storage_class_specifier : ( 'extern' | 'static' | 'auto' | 'register' );
    def storage_class_specifier(self, ):

        storage_class_specifier_StartIndex = self.input.index()
        try:
            try:
                if self.backtracking > 0 and self.alreadyParsedRule(self.input, 8):
                    return 

                # C.g:120:2: ( 'extern' | 'static' | 'auto' | 'register' )
                # C.g:
                if (27 <= self.input.LA(1) <= 30):
                    self.input.consume();
                    self.errorRecovery = False
                    self.failed = False

                else:
                    if self.backtracking > 0:
                        self.failed = True
                        return 

                    mse = MismatchedSetException(None, self.input)
                    self.recoverFromMismatchedSet(
                        self.input, mse, self.FOLLOW_set_in_storage_class_specifier0
                        )
                    raise mse






            except RecognitionException, re:
                self.reportError(re)
                self.recover(self.input, re)
        finally:
            if self.backtracking > 0:
                self.memoize(self.input, 8, storage_class_specifier_StartIndex)

            pass

        return 

    # $ANTLR end storage_class_specifier


    # $ANTLR start type_specifier
    # C.g:126:1: type_specifier : ( 'void' | 'char' | 'short' | 'int' | 'long' | 'float' | 'double' | 'signed' | 'unsigned' | struct_or_union_specifier | enum_specifier | type_id );
    def type_specifier(self, ):

        type_specifier_StartIndex = self.input.index()
        try:
            try:
                if self.backtracking > 0 and self.alreadyParsedRule(self.input, 9):
                    return 

                # C.g:127:2: ( 'void' | 'char' | 'short' | 'int' | 'long' | 'float' | 'double' | 'signed' | 'unsigned' | struct_or_union_specifier | enum_specifier | type_id )
                alt15 = 12
                LA15 = self.input.LA(1)
                if LA15 == 31:
                    alt15 = 1
                elif LA15 == 32:
                    alt15 = 2
                elif LA15 == 33:
                    alt15 = 3
                elif LA15 == 34:
                    alt15 = 4
                elif LA15 == 35:
                    alt15 = 5
                elif LA15 == 36:
                    alt15 = 6
                elif LA15 == 37:
                    alt15 = 7
                elif LA15 == 38:
                    alt15 = 8
                elif LA15 == 39:
                    alt15 = 9
                elif LA15 == 42 or LA15 == 43:
                    alt15 = 10
                elif LA15 == 45:
                    alt15 = 11
                elif LA15 == IDENTIFIER:
                    alt15 = 12
                else:
                    if self.backtracking > 0:
                        self.failed = True
                        return 

                    nvae = NoViableAltException("126:1: type_specifier : ( 'void' | 'char' | 'short' | 'int' | 'long' | 'float' | 'double' | 'signed' | 'unsigned' | struct_or_union_specifier | enum_specifier | type_id );", 15, 0, self.input)

                    raise nvae

                if alt15 == 1:
                    # C.g:127:4: 'void'
                    self.match(self.input, 31, self.FOLLOW_31_in_type_specifier339)
                    if self.failed:
                        return 


                elif alt15 == 2:
                    # C.g:128:4: 'char'
                    self.match(self.input, 32, self.FOLLOW_32_in_type_specifier344)
                    if self.failed:
                        return 


                elif alt15 == 3:
                    # C.g:129:4: 'short'
                    self.match(self.input, 33, self.FOLLOW_33_in_type_specifier349)
                    if self.failed:
                        return 


                elif alt15 == 4:
                    # C.g:130:4: 'int'
                    self.match(self.input, 34, self.FOLLOW_34_in_type_specifier354)
                    if self.failed:
                        return 


                elif alt15 == 5:
                    # C.g:131:4: 'long'
                    self.match(self.input, 35, self.FOLLOW_35_in_type_specifier359)
                    if self.failed:
                        return 


                elif alt15 == 6:
                    # C.g:132:4: 'float'
                    self.match(self.input, 36, self.FOLLOW_36_in_type_specifier364)
                    if self.failed:
                        return 


                elif alt15 == 7:
                    # C.g:133:4: 'double'
                    self.match(self.input, 37, self.FOLLOW_37_in_type_specifier369)
                    if self.failed:
                        return 


                elif alt15 == 8:
                    # C.g:134:4: 'signed'
                    self.match(self.input, 38, self.FOLLOW_38_in_type_specifier374)
                    if self.failed:
                        return 


                elif alt15 == 9:
                    # C.g:135:4: 'unsigned'
                    self.match(self.input, 39, self.FOLLOW_39_in_type_specifier379)
                    if self.failed:
                        return 


                elif alt15 == 10:
                    # C.g:136:4: struct_or_union_specifier
                    self.following.append(self.FOLLOW_struct_or_union_specifier_in_type_specifier384)
                    self.struct_or_union_specifier()
                    self.following.pop()
                    if self.failed:
                        return 


                elif alt15 == 11:
                    # C.g:137:4: enum_specifier
                    self.following.append(self.FOLLOW_enum_specifier_in_type_specifier389)
                    self.enum_specifier()
                    self.following.pop()
                    if self.failed:
                        return 


                elif alt15 == 12:
                    # C.g:138:4: type_id
                    self.following.append(self.FOLLOW_type_id_in_type_specifier394)
                    self.type_id()
                    self.following.pop()
                    if self.failed:
                        return 



            except RecognitionException, re:
                self.reportError(re)
                self.recover(self.input, re)
        finally:
            if self.backtracking > 0:
                self.memoize(self.input, 9, type_specifier_StartIndex)

            pass

        return 

    # $ANTLR end type_specifier


    # $ANTLR start type_id
    # C.g:141:1: type_id : {...}? IDENTIFIER ;
    def type_id(self, ):

        type_id_StartIndex = self.input.index()
        try:
            try:
                if self.backtracking > 0 and self.alreadyParsedRule(self.input, 10):
                    return 

                # C.g:142:5: ({...}? IDENTIFIER )
                # C.g:142:9: {...}? IDENTIFIER
                if not (self.isTypeName(self.input.LT(1).getText()) ):
                    if self.backtracking > 0:
                        self.failed = True
                        return 

                    raise FailedPredicateException(self.input, "type_id", " self.isTypeName(self.input.LT(1).getText()) ")

                self.match(self.input, IDENTIFIER, self.FOLLOW_IDENTIFIER_in_type_id412)
                if self.failed:
                    return 




            except RecognitionException, re:
                self.reportError(re)
                self.recover(self.input, re)
        finally:
            if self.backtracking > 0:
                self.memoize(self.input, 10, type_id_StartIndex)

            pass

        return 

    # $ANTLR end type_id


    # $ANTLR start struct_or_union_specifier
    # C.g:146:1: struct_or_union_specifier options {k=3; } : ( struct_or_union ( IDENTIFIER )? '{' struct_declaration_list '}' | struct_or_union IDENTIFIER );
    def struct_or_union_specifier(self, ):
        self.symbols_stack.append(symbols_scope())

        struct_or_union_specifier_StartIndex = self.input.index()
               
        self.symbols_stack[-1].types = set()

        try:
            try:
                if self.backtracking > 0 and self.alreadyParsedRule(self.input, 11):
                    return 

                # C.g:152:2: ( struct_or_union ( IDENTIFIER )? '{' struct_declaration_list '}' | struct_or_union IDENTIFIER )
                alt17 = 2
                LA17_0 = self.input.LA(1)

                if ((42 <= LA17_0 <= 43)) :
                    LA17_1 = self.input.LA(2)

                    if (LA17_1 == IDENTIFIER) :
                        LA17_2 = self.input.LA(3)

                        if (LA17_2 == EOF or LA17_2 == IDENTIFIER or (24 <= LA17_2 <= 25) or (27 <= LA17_2 <= 39) or (42 <= LA17_2 <= 52) or (54 <= LA17_2 <= 55)) :
                            alt17 = 2
                        elif (LA17_2 == 40) :
                            alt17 = 1
                        else:
                            if self.backtracking > 0:
                                self.failed = True
                                return 

                            nvae = NoViableAltException("146:1: struct_or_union_specifier options {k=3; } : ( struct_or_union ( IDENTIFIER )? '{' struct_declaration_list '}' | struct_or_union IDENTIFIER );", 17, 2, self.input)

                            raise nvae

                    elif (LA17_1 == 40) :
                        alt17 = 1
                    else:
                        if self.backtracking > 0:
                            self.failed = True
                            return 

                        nvae = NoViableAltException("146:1: struct_or_union_specifier options {k=3; } : ( struct_or_union ( IDENTIFIER )? '{' struct_declaration_list '}' | struct_or_union IDENTIFIER );", 17, 1, self.input)

                        raise nvae

                else:
                    if self.backtracking > 0:
                        self.failed = True
                        return 

                    nvae = NoViableAltException("146:1: struct_or_union_specifier options {k=3; } : ( struct_or_union ( IDENTIFIER )? '{' struct_declaration_list '}' | struct_or_union IDENTIFIER );", 17, 0, self.input)

                    raise nvae

                if alt17 == 1:
                    # C.g:152:4: struct_or_union ( IDENTIFIER )? '{' struct_declaration_list '}'
                    self.following.append(self.FOLLOW_struct_or_union_in_struct_or_union_specifier445)
                    self.struct_or_union()
                    self.following.pop()
                    if self.failed:
                        return 
                    # C.g:152:20: ( IDENTIFIER )?
                    alt16 = 2
                    LA16_0 = self.input.LA(1)

                    if (LA16_0 == IDENTIFIER) :
                        alt16 = 1
                    if alt16 == 1:
                        # C.g:0:0: IDENTIFIER
                        self.match(self.input, IDENTIFIER, self.FOLLOW_IDENTIFIER_in_struct_or_union_specifier447)
                        if self.failed:
                            return 



                    self.match(self.input, 40, self.FOLLOW_40_in_struct_or_union_specifier450)
                    if self.failed:
                        return 
                    self.following.append(self.FOLLOW_struct_declaration_list_in_struct_or_union_specifier452)
                    self.struct_declaration_list()
                    self.following.pop()
                    if self.failed:
                        return 
                    self.match(self.input, 41, self.FOLLOW_41_in_struct_or_union_specifier454)
                    if self.failed:
                        return 


                elif alt17 == 2:
                    # C.g:153:4: struct_or_union IDENTIFIER
                    self.following.append(self.FOLLOW_struct_or_union_in_struct_or_union_specifier459)
                    self.struct_or_union()
                    self.following.pop()
                    if self.failed:
                        return 
                    self.match(self.input, IDENTIFIER, self.FOLLOW_IDENTIFIER_in_struct_or_union_specifier461)
                    if self.failed:
                        return 



            except RecognitionException, re:
                self.reportError(re)
                self.recover(self.input, re)
        finally:
            if self.backtracking > 0:
                self.memoize(self.input, 11, struct_or_union_specifier_StartIndex)

            self.symbols_stack.pop()

            pass

        return 

    # $ANTLR end struct_or_union_specifier


    # $ANTLR start struct_or_union
    # C.g:156:1: struct_or_union : ( 'struct' | 'union' );
    def struct_or_union(self, ):

        struct_or_union_StartIndex = self.input.index()
        try:
            try:
                if self.backtracking > 0 and self.alreadyParsedRule(self.input, 12):
                    return 

                # C.g:157:2: ( 'struct' | 'union' )
                # C.g:
                if (42 <= self.input.LA(1) <= 43):
                    self.input.consume();
                    self.errorRecovery = False
                    self.failed = False

                else:
                    if self.backtracking > 0:
                        self.failed = True
                        return 

                    mse = MismatchedSetException(None, self.input)
                    self.recoverFromMismatchedSet(
                        self.input, mse, self.FOLLOW_set_in_struct_or_union0
                        )
                    raise mse






            except RecognitionException, re:
                self.reportError(re)
                self.recover(self.input, re)
        finally:
            if self.backtracking > 0:
                self.memoize(self.input, 12, struct_or_union_StartIndex)

            pass

        return 

    # $ANTLR end struct_or_union


    # $ANTLR start struct_declaration_list
    # C.g:161:1: struct_declaration_list : ( struct_declaration )+ ;
    def struct_declaration_list(self, ):

        struct_declaration_list_StartIndex = self.input.index()
        try:
            try:
                if self.backtracking > 0 and self.alreadyParsedRule(self.input, 13):
                    return 

                # C.g:162:2: ( ( struct_declaration )+ )
                # C.g:162:4: ( struct_declaration )+
                # C.g:162:4: ( struct_declaration )+
                cnt18 = 0
                while True: #loop18
                    alt18 = 2
                    LA18_0 = self.input.LA(1)

                    if (LA18_0 == IDENTIFIER or (31 <= LA18_0 <= 39) or (42 <= LA18_0 <= 43) or (45 <= LA18_0 <= 49)) :
                        alt18 = 1


                    if alt18 == 1:
                        # C.g:0:0: struct_declaration
                        self.following.append(self.FOLLOW_struct_declaration_in_struct_declaration_list488)
                        self.struct_declaration()
                        self.following.pop()
                        if self.failed:
                            return 


                    else:
                        if cnt18 >= 1:
                            break #loop18

                        if self.backtracking > 0:
                            self.failed = True
                            return 

                        eee = EarlyExitException(18, self.input)
                        raise eee

                    cnt18 += 1






            except RecognitionException, re:
                self.reportError(re)
                self.recover(self.input, re)
        finally:
            if self.backtracking > 0:
                self.memoize(self.input, 13, struct_declaration_list_StartIndex)

            pass

        return 

    # $ANTLR end struct_declaration_list


    # $ANTLR start struct_declaration
    # C.g:165:1: struct_declaration : specifier_qualifier_list struct_declarator_list ';' ;
    def struct_declaration(self, ):

        struct_declaration_StartIndex = self.input.index()
        try:
            try:
                if self.backtracking > 0 and self.alreadyParsedRule(self.input, 14):
                    return 

                # C.g:166:2: ( specifier_qualifier_list struct_declarator_list ';' )
                # C.g:166:4: specifier_qualifier_list struct_declarator_list ';'
                self.following.append(self.FOLLOW_specifier_qualifier_list_in_struct_declaration500)
                self.specifier_qualifier_list()
                self.following.pop()
                if self.failed:
                    return 
                self.following.append(self.FOLLOW_struct_declarator_list_in_struct_declaration502)
                self.struct_declarator_list()
                self.following.pop()
                if self.failed:
                    return 
                self.match(self.input, 24, self.FOLLOW_24_in_struct_declaration504)
                if self.failed:
                    return 




            except RecognitionException, re:
                self.reportError(re)
                self.recover(self.input, re)
        finally:
            if self.backtracking > 0:
                self.memoize(self.input, 14, struct_declaration_StartIndex)

            pass

        return 

    # $ANTLR end struct_declaration


    # $ANTLR start specifier_qualifier_list
    # C.g:169:1: specifier_qualifier_list : ( type_qualifier | type_specifier )+ ;
    def specifier_qualifier_list(self, ):

        specifier_qualifier_list_StartIndex = self.input.index()
        try:
            try:
                if self.backtracking > 0 and self.alreadyParsedRule(self.input, 15):
                    return 

                # C.g:170:2: ( ( type_qualifier | type_specifier )+ )
                # C.g:170:4: ( type_qualifier | type_specifier )+
                # C.g:170:4: ( type_qualifier | type_specifier )+
                cnt19 = 0
                while True: #loop19
                    alt19 = 3
                    LA19 = self.input.LA(1)
                    if LA19 == IDENTIFIER:
                        LA19 = self.input.LA(2)
                        if LA19 == 52:
                            LA19_20 = self.input.LA(3)

                            if ((self.synpred38() and self.isTypeName(self.input.LT(1).getText()) )) :
                                alt19 = 2


                        elif LA19 == 50:
                            LA19_21 = self.input.LA(3)

                            if ((self.synpred38() and self.isTypeName(self.input.LT(1).getText()) )) :
                                alt19 = 2


                        elif LA19 == 44:
                            LA19_22 = self.input.LA(3)

                            if ((self.synpred38() and self.isTypeName(self.input.LT(1).getText()) )) :
                                alt19 = 2


                        elif LA19 == IDENTIFIER or LA19 == 31 or LA19 == 32 or LA19 == 33 or LA19 == 34 or LA19 == 35 or LA19 == 36 or LA19 == 37 or LA19 == 38 or LA19 == 39 or LA19 == 42 or LA19 == 43 or LA19 == 45 or LA19 == 46 or LA19 == 47 or LA19 == 48 or LA19 == 49 or LA19 == 51 or LA19 == 54 or LA19 == 55:
                            alt19 = 2

                    elif LA19 == 46 or LA19 == 47 or LA19 == 48 or LA19 == 49:
                        alt19 = 1
                    elif LA19 == 31 or LA19 == 32 or LA19 == 33 or LA19 == 34 or LA19 == 35 or LA19 == 36 or LA19 == 37 or LA19 == 38 or LA19 == 39 or LA19 == 42 or LA19 == 43 or LA19 == 45:
                        alt19 = 2

                    if alt19 == 1:
                        # C.g:170:6: type_qualifier
                        self.following.append(self.FOLLOW_type_qualifier_in_specifier_qualifier_list517)
                        self.type_qualifier()
                        self.following.pop()
                        if self.failed:
                            return 


                    elif alt19 == 2:
                        # C.g:170:23: type_specifier
                        self.following.append(self.FOLLOW_type_specifier_in_specifier_qualifier_list521)
                        self.type_specifier()
                        self.following.pop()
                        if self.failed:
                            return 


                    else:
                        if cnt19 >= 1:
                            break #loop19

                        if self.backtracking > 0:
                            self.failed = True
                            return 

                        eee = EarlyExitException(19, self.input)
                        raise eee

                    cnt19 += 1






            except RecognitionException, re:
                self.reportError(re)
                self.recover(self.input, re)
        finally:
            if self.backtracking > 0:
                self.memoize(self.input, 15, specifier_qualifier_list_StartIndex)

            pass

        return 

    # $ANTLR end specifier_qualifier_list


    # $ANTLR start struct_declarator_list
    # C.g:173:1: struct_declarator_list : struct_declarator ( ',' struct_declarator )* ;
    def struct_declarator_list(self, ):

        struct_declarator_list_StartIndex = self.input.index()
        try:
            try:
                if self.backtracking > 0 and self.alreadyParsedRule(self.input, 16):
                    return 

                # C.g:174:2: ( struct_declarator ( ',' struct_declarator )* )
                # C.g:174:4: struct_declarator ( ',' struct_declarator )*
                self.following.append(self.FOLLOW_struct_declarator_in_struct_declarator_list535)
                self.struct_declarator()
                self.following.pop()
                if self.failed:
                    return 
                # C.g:174:22: ( ',' struct_declarator )*
                while True: #loop20
                    alt20 = 2
                    LA20_0 = self.input.LA(1)

                    if (LA20_0 == 25) :
                        alt20 = 1


                    if alt20 == 1:
                        # C.g:174:23: ',' struct_declarator
                        self.match(self.input, 25, self.FOLLOW_25_in_struct_declarator_list538)
                        if self.failed:
                            return 
                        self.following.append(self.FOLLOW_struct_declarator_in_struct_declarator_list540)
                        self.struct_declarator()
                        self.following.pop()
                        if self.failed:
                            return 


                    else:
                        break #loop20






            except RecognitionException, re:
                self.reportError(re)
                self.recover(self.input, re)
        finally:
            if self.backtracking > 0:
                self.memoize(self.input, 16, struct_declarator_list_StartIndex)

            pass

        return 

    # $ANTLR end struct_declarator_list


    # $ANTLR start struct_declarator
    # C.g:177:1: struct_declarator : ( declarator ( ':' constant_expression )? | ':' constant_expression );
    def struct_declarator(self, ):

        struct_declarator_StartIndex = self.input.index()
        try:
            try:
                if self.backtracking > 0 and self.alreadyParsedRule(self.input, 17):
                    return 

                # C.g:178:2: ( declarator ( ':' constant_expression )? | ':' constant_expression )
                alt22 = 2
                LA22_0 = self.input.LA(1)

                if (LA22_0 == IDENTIFIER or LA22_0 == 50 or (54 <= LA22_0 <= 55)) :
                    alt22 = 1
                elif (LA22_0 == 44) :
                    alt22 = 2
                else:
                    if self.backtracking > 0:
                        self.failed = True
                        return 

                    nvae = NoViableAltException("177:1: struct_declarator : ( declarator ( ':' constant_expression )? | ':' constant_expression );", 22, 0, self.input)

                    raise nvae

                if alt22 == 1:
                    # C.g:178:4: declarator ( ':' constant_expression )?
                    self.following.append(self.FOLLOW_declarator_in_struct_declarator553)
                    self.declarator()
                    self.following.pop()
                    if self.failed:
                        return 
                    # C.g:178:15: ( ':' constant_expression )?
                    alt21 = 2
                    LA21_0 = self.input.LA(1)

                    if (LA21_0 == 44) :
                        alt21 = 1
                    if alt21 == 1:
                        # C.g:178:16: ':' constant_expression
                        self.match(self.input, 44, self.FOLLOW_44_in_struct_declarator556)
                        if self.failed:
                            return 
                        self.following.append(self.FOLLOW_constant_expression_in_struct_declarator558)
                        self.constant_expression()
                        self.following.pop()
                        if self.failed:
                            return 





                elif alt22 == 2:
                    # C.g:179:4: ':' constant_expression
                    self.match(self.input, 44, self.FOLLOW_44_in_struct_declarator565)
                    if self.failed:
                        return 
                    self.following.append(self.FOLLOW_constant_expression_in_struct_declarator567)
                    self.constant_expression()
                    self.following.pop()
                    if self.failed:
                        return 



            except RecognitionException, re:
                self.reportError(re)
                self.recover(self.input, re)
        finally:
            if self.backtracking > 0:
                self.memoize(self.input, 17, struct_declarator_StartIndex)

            pass

        return 

    # $ANTLR end struct_declarator


    # $ANTLR start enum_specifier
    # C.g:182:1: enum_specifier options {k=3; } : ( 'enum' '{' enumerator_list '}' | 'enum' IDENTIFIER '{' enumerator_list '}' | 'enum' IDENTIFIER );
    def enum_specifier(self, ):

        enum_specifier_StartIndex = self.input.index()
        try:
            try:
                if self.backtracking > 0 and self.alreadyParsedRule(self.input, 18):
                    return 

                # C.g:184:2: ( 'enum' '{' enumerator_list '}' | 'enum' IDENTIFIER '{' enumerator_list '}' | 'enum' IDENTIFIER )
                alt23 = 3
                LA23_0 = self.input.LA(1)

                if (LA23_0 == 45) :
                    LA23_1 = self.input.LA(2)

                    if (LA23_1 == IDENTIFIER) :
                        LA23_2 = self.input.LA(3)

                        if (LA23_2 == 40) :
                            alt23 = 2
                        elif (LA23_2 == EOF or LA23_2 == IDENTIFIER or (24 <= LA23_2 <= 25) or (27 <= LA23_2 <= 39) or (42 <= LA23_2 <= 52) or (54 <= LA23_2 <= 55)) :
                            alt23 = 3
                        else:
                            if self.backtracking > 0:
                                self.failed = True
                                return 

                            nvae = NoViableAltException("182:1: enum_specifier options {k=3; } : ( 'enum' '{' enumerator_list '}' | 'enum' IDENTIFIER '{' enumerator_list '}' | 'enum' IDENTIFIER );", 23, 2, self.input)

                            raise nvae

                    elif (LA23_1 == 40) :
                        alt23 = 1
                    else:
                        if self.backtracking > 0:
                            self.failed = True
                            return 

                        nvae = NoViableAltException("182:1: enum_specifier options {k=3; } : ( 'enum' '{' enumerator_list '}' | 'enum' IDENTIFIER '{' enumerator_list '}' | 'enum' IDENTIFIER );", 23, 1, self.input)

                        raise nvae

                else:
                    if self.backtracking > 0:
                        self.failed = True
                        return 

                    nvae = NoViableAltException("182:1: enum_specifier options {k=3; } : ( 'enum' '{' enumerator_list '}' | 'enum' IDENTIFIER '{' enumerator_list '}' | 'enum' IDENTIFIER );", 23, 0, self.input)

                    raise nvae

                if alt23 == 1:
                    # C.g:184:4: 'enum' '{' enumerator_list '}'
                    self.match(self.input, 45, self.FOLLOW_45_in_enum_specifier585)
                    if self.failed:
                        return 
                    self.match(self.input, 40, self.FOLLOW_40_in_enum_specifier587)
                    if self.failed:
                        return 
                    self.following.append(self.FOLLOW_enumerator_list_in_enum_specifier589)
                    self.enumerator_list()
                    self.following.pop()
                    if self.failed:
                        return 
                    self.match(self.input, 41, self.FOLLOW_41_in_enum_specifier591)
                    if self.failed:
                        return 


                elif alt23 == 2:
                    # C.g:185:4: 'enum' IDENTIFIER '{' enumerator_list '}'
                    self.match(self.input, 45, self.FOLLOW_45_in_enum_specifier596)
                    if self.failed:
                        return 
                    self.match(self.input, IDENTIFIER, self.FOLLOW_IDENTIFIER_in_enum_specifier598)
                    if self.failed:
                        return 
                    self.match(self.input, 40, self.FOLLOW_40_in_enum_specifier600)
                    if self.failed:
                        return 
                    self.following.append(self.FOLLOW_enumerator_list_in_enum_specifier602)
                    self.enumerator_list()
                    self.following.pop()
                    if self.failed:
                        return 
                    self.match(self.input, 41, self.FOLLOW_41_in_enum_specifier604)
                    if self.failed:
                        return 


                elif alt23 == 3:
                    # C.g:186:4: 'enum' IDENTIFIER
                    self.match(self.input, 45, self.FOLLOW_45_in_enum_specifier609)
                    if self.failed:
                        return 
                    self.match(self.input, IDENTIFIER, self.FOLLOW_IDENTIFIER_in_enum_specifier611)
                    if self.failed:
                        return 



            except RecognitionException, re:
                self.reportError(re)
                self.recover(self.input, re)
        finally:
            if self.backtracking > 0:
                self.memoize(self.input, 18, enum_specifier_StartIndex)

            pass

        return 

    # $ANTLR end enum_specifier


    # $ANTLR start enumerator_list
    # C.g:189:1: enumerator_list : enumerator ( ',' enumerator )* ;
    def enumerator_list(self, ):

        enumerator_list_StartIndex = self.input.index()
        try:
            try:
                if self.backtracking > 0 and self.alreadyParsedRule(self.input, 19):
                    return 

                # C.g:190:2: ( enumerator ( ',' enumerator )* )
                # C.g:190:4: enumerator ( ',' enumerator )*
                self.following.append(self.FOLLOW_enumerator_in_enumerator_list622)
                self.enumerator()
                self.following.pop()
                if self.failed:
                    return 
                # C.g:190:15: ( ',' enumerator )*
                while True: #loop24
                    alt24 = 2
                    LA24_0 = self.input.LA(1)

                    if (LA24_0 == 25) :
                        alt24 = 1


                    if alt24 == 1:
                        # C.g:190:16: ',' enumerator
                        self.match(self.input, 25, self.FOLLOW_25_in_enumerator_list625)
                        if self.failed:
                            return 
                        self.following.append(self.FOLLOW_enumerator_in_enumerator_list627)
                        self.enumerator()
                        self.following.pop()
                        if self.failed:
                            return 


                    else:
                        break #loop24






            except RecognitionException, re:
                self.reportError(re)
                self.recover(self.input, re)
        finally:
            if self.backtracking > 0:
                self.memoize(self.input, 19, enumerator_list_StartIndex)

            pass

        return 

    # $ANTLR end enumerator_list


    # $ANTLR start enumerator
    # C.g:193:1: enumerator : IDENTIFIER ( '=' constant_expression )? ;
    def enumerator(self, ):

        enumerator_StartIndex = self.input.index()
        try:
            try:
                if self.backtracking > 0 and self.alreadyParsedRule(self.input, 20):
                    return 

                # C.g:194:2: ( IDENTIFIER ( '=' constant_expression )? )
                # C.g:194:4: IDENTIFIER ( '=' constant_expression )?
                self.match(self.input, IDENTIFIER, self.FOLLOW_IDENTIFIER_in_enumerator640)
                if self.failed:
                    return 
                # C.g:194:15: ( '=' constant_expression )?
                alt25 = 2
                LA25_0 = self.input.LA(1)

                if (LA25_0 == 26) :
                    alt25 = 1
                if alt25 == 1:
                    # C.g:194:16: '=' constant_expression
                    self.match(self.input, 26, self.FOLLOW_26_in_enumerator643)
                    if self.failed:
                        return 
                    self.following.append(self.FOLLOW_constant_expression_in_enumerator645)
                    self.constant_expression()
                    self.following.pop()
                    if self.failed:
                        return 







            except RecognitionException, re:
                self.reportError(re)
                self.recover(self.input, re)
        finally:
            if self.backtracking > 0:
                self.memoize(self.input, 20, enumerator_StartIndex)

            pass

        return 

    # $ANTLR end enumerator


    # $ANTLR start type_qualifier
    # C.g:197:1: type_qualifier : ( 'const' | '__const' | 'inline' | 'volatile' );
    def type_qualifier(self, ):

        type_qualifier_StartIndex = self.input.index()
        try:
            try:
                if self.backtracking > 0 and self.alreadyParsedRule(self.input, 21):
                    return 

                # C.g:198:2: ( 'const' | '__const' | 'inline' | 'volatile' )
                # C.g:
                if (46 <= self.input.LA(1) <= 49):
                    self.input.consume();
                    self.errorRecovery = False
                    self.failed = False

                else:
                    if self.backtracking > 0:
                        self.failed = True
                        return 

                    mse = MismatchedSetException(None, self.input)
                    self.recoverFromMismatchedSet(
                        self.input, mse, self.FOLLOW_set_in_type_qualifier0
                        )
                    raise mse






            except RecognitionException, re:
                self.reportError(re)
                self.recover(self.input, re)
        finally:
            if self.backtracking > 0:
                self.memoize(self.input, 21, type_qualifier_StartIndex)

            pass

        return 

    # $ANTLR end type_qualifier


    # $ANTLR start declarator
    # C.g:204:1: declarator : ( ( attribute_specifier )* ( pointer )? direct_declarator | ( attribute_specifier )* pointer );
    def declarator(self, ):

        declarator_StartIndex = self.input.index()
        try:
            try:
                if self.backtracking > 0 and self.alreadyParsedRule(self.input, 22):
                    return 

                # C.g:205:2: ( ( attribute_specifier )* ( pointer )? direct_declarator | ( attribute_specifier )* pointer )
                alt29 = 2
                LA29 = self.input.LA(1)
                if LA29 == 54:
                    LA29_1 = self.input.LA(2)

                    if (LA29_1 == 50) :
                        LA29_5 = self.input.LA(3)

                        if (self.synpred51()) :
                            alt29 = 1
                        elif (True) :
                            alt29 = 2
                        else:
                            if self.backtracking > 0:
                                self.failed = True
                                return 

                            nvae = NoViableAltException("204:1: declarator : ( ( attribute_specifier )* ( pointer )? direct_declarator | ( attribute_specifier )* pointer );", 29, 5, self.input)

                            raise nvae

                    else:
                        if self.backtracking > 0:
                            self.failed = True
                            return 

                        nvae = NoViableAltException("204:1: declarator : ( ( attribute_specifier )* ( pointer )? direct_declarator | ( attribute_specifier )* pointer );", 29, 1, self.input)

                        raise nvae

                elif LA29 == 55:
                    LA29_2 = self.input.LA(2)

                    if (self.synpred51()) :
                        alt29 = 1
                    elif (True) :
                        alt29 = 2
                    else:
                        if self.backtracking > 0:
                            self.failed = True
                            return 

                        nvae = NoViableAltException("204:1: declarator : ( ( attribute_specifier )* ( pointer )? direct_declarator | ( attribute_specifier )* pointer );", 29, 2, self.input)

                        raise nvae

                elif LA29 == IDENTIFIER or LA29 == 50:
                    alt29 = 1
                else:
                    if self.backtracking > 0:
                        self.failed = True
                        return 

                    nvae = NoViableAltException("204:1: declarator : ( ( attribute_specifier )* ( pointer )? direct_declarator | ( attribute_specifier )* pointer );", 29, 0, self.input)

                    raise nvae

                if alt29 == 1:
                    # C.g:205:4: ( attribute_specifier )* ( pointer )? direct_declarator
                    # C.g:205:4: ( attribute_specifier )*
                    while True: #loop26
                        alt26 = 2
                        LA26_0 = self.input.LA(1)

                        if (LA26_0 == 54) :
                            alt26 = 1


                        if alt26 == 1:
                            # C.g:0:0: attribute_specifier
                            self.following.append(self.FOLLOW_attribute_specifier_in_declarator690)
                            self.attribute_specifier()
                            self.following.pop()
                            if self.failed:
                                return 


                        else:
                            break #loop26


                    # C.g:205:25: ( pointer )?
                    alt27 = 2
                    LA27_0 = self.input.LA(1)

                    if (LA27_0 == 55) :
                        alt27 = 1
                    if alt27 == 1:
                        # C.g:0:0: pointer
                        self.following.append(self.FOLLOW_pointer_in_declarator693)
                        self.pointer()
                        self.following.pop()
                        if self.failed:
                            return 



                    self.following.append(self.FOLLOW_direct_declarator_in_declarator696)
                    self.direct_declarator()
                    self.following.pop()
                    if self.failed:
                        return 


                elif alt29 == 2:
                    # C.g:206:4: ( attribute_specifier )* pointer
                    # C.g:206:4: ( attribute_specifier )*
                    while True: #loop28
                        alt28 = 2
                        LA28_0 = self.input.LA(1)

                        if (LA28_0 == 54) :
                            alt28 = 1


                        if alt28 == 1:
                            # C.g:0:0: attribute_specifier
                            self.following.append(self.FOLLOW_attribute_specifier_in_declarator701)
                            self.attribute_specifier()
                            self.following.pop()
                            if self.failed:
                                return 


                        else:
                            break #loop28


                    self.following.append(self.FOLLOW_pointer_in_declarator704)
                    self.pointer()
                    self.following.pop()
                    if self.failed:
                        return 



            except RecognitionException, re:
                self.reportError(re)
                self.recover(self.input, re)
        finally:
            if self.backtracking > 0:
                self.memoize(self.input, 22, declarator_StartIndex)

            pass

        return 

    # $ANTLR end declarator


    # $ANTLR start direct_declarator
    # C.g:209:1: direct_declarator : ( IDENTIFIER | '(' declarator ')' ) ( declarator_suffix )* ;
    def direct_declarator(self, ):

        direct_declarator_StartIndex = self.input.index()
        IDENTIFIER1 = None

        try:
            try:
                if self.backtracking > 0 and self.alreadyParsedRule(self.input, 23):
                    return 

                # C.g:210:2: ( ( IDENTIFIER | '(' declarator ')' ) ( declarator_suffix )* )
                # C.g:210:6: ( IDENTIFIER | '(' declarator ')' ) ( declarator_suffix )*
                # C.g:210:6: ( IDENTIFIER | '(' declarator ')' )
                alt30 = 2
                LA30_0 = self.input.LA(1)

                if (LA30_0 == IDENTIFIER) :
                    alt30 = 1
                elif (LA30_0 == 50) :
                    alt30 = 2
                else:
                    if self.backtracking > 0:
                        self.failed = True
                        return 

                    nvae = NoViableAltException("210:6: ( IDENTIFIER | '(' declarator ')' )", 30, 0, self.input)

                    raise nvae

                if alt30 == 1:
                    # C.g:210:8: IDENTIFIER
                    IDENTIFIER1 = self.input.LT(1)
                    self.match(self.input, IDENTIFIER, self.FOLLOW_IDENTIFIER_in_direct_declarator719)
                    if self.failed:
                        return 
                    if self.backtracking == 0:
                            
                        if len(self.declaration_stack) > 0 and self.declaration_stack[-1].isTypedef:
                         self.symbols_stack[-1].types.add(IDENTIFIER1.text)
                         print("define type " + IDENTIFIER1.text)
                        			



                elif alt30 == 2:
                    # C.g:216:5: '(' declarator ')'
                    self.match(self.input, 50, self.FOLLOW_50_in_direct_declarator730)
                    if self.failed:
                        return 
                    self.following.append(self.FOLLOW_declarator_in_direct_declarator732)
                    self.declarator()
                    self.following.pop()
                    if self.failed:
                        return 
                    self.match(self.input, 51, self.FOLLOW_51_in_direct_declarator734)
                    if self.failed:
                        return 



                # C.g:218:9: ( declarator_suffix )*
                while True: #loop31
                    alt31 = 2
                    LA31_0 = self.input.LA(1)

                    if (LA31_0 == 50) :
                        LA31 = self.input.LA(2)
                        if LA31 == 51:
                            LA31_27 = self.input.LA(3)

                            if (self.synpred54()) :
                                alt31 = 1


                        elif LA31 == 54:
                            LA31_28 = self.input.LA(3)

                            if (self.synpred54()) :
                                alt31 = 1


                        elif LA31 == 27 or LA31 == 28 or LA31 == 29 or LA31 == 30:
                            LA31_29 = self.input.LA(3)

                            if (self.synpred54()) :
                                alt31 = 1


                        elif LA31 == 31:
                            LA31_30 = self.input.LA(3)

                            if (self.synpred54()) :
                                alt31 = 1


                        elif LA31 == 32:
                            LA31_31 = self.input.LA(3)

                            if (self.synpred54()) :
                                alt31 = 1


                        elif LA31 == 33:
                            LA31_32 = self.input.LA(3)

                            if (self.synpred54()) :
                                alt31 = 1


                        elif LA31 == 34:
                            LA31_33 = self.input.LA(3)

                            if (self.synpred54()) :
                                alt31 = 1


                        elif LA31 == 35:
                            LA31_34 = self.input.LA(3)

                            if (self.synpred54()) :
                                alt31 = 1


                        elif LA31 == 36:
                            LA31_35 = self.input.LA(3)

                            if (self.synpred54()) :
                                alt31 = 1


                        elif LA31 == 37:
                            LA31_36 = self.input.LA(3)

                            if (self.synpred54()) :
                                alt31 = 1


                        elif LA31 == 38:
                            LA31_37 = self.input.LA(3)

                            if (self.synpred54()) :
                                alt31 = 1


                        elif LA31 == 39:
                            LA31_38 = self.input.LA(3)

                            if (self.synpred54()) :
                                alt31 = 1


                        elif LA31 == 42 or LA31 == 43:
                            LA31_39 = self.input.LA(3)

                            if (self.synpred54()) :
                                alt31 = 1


                        elif LA31 == 45:
                            LA31_40 = self.input.LA(3)

                            if (self.synpred54()) :
                                alt31 = 1


                        elif LA31 == IDENTIFIER:
                            LA31_41 = self.input.LA(3)

                            if (self.synpred54()) :
                                alt31 = 1


                        elif LA31 == 46 or LA31 == 47 or LA31 == 48 or LA31 == 49:
                            LA31_42 = self.input.LA(3)

                            if (self.synpred54()) :
                                alt31 = 1



                    elif (LA31_0 == 52) :
                        LA31 = self.input.LA(2)
                        if LA31 == 53:
                            LA31_46 = self.input.LA(3)

                            if (self.synpred54()) :
                                alt31 = 1


                        elif LA31 == 50:
                            LA31_47 = self.input.LA(3)

                            if (self.synpred54()) :
                                alt31 = 1


                        elif LA31 == IDENTIFIER:
                            LA31_48 = self.input.LA(3)

                            if (self.synpred54()) :
                                alt31 = 1


                        elif LA31 == HEX_LITERAL or LA31 == OCTAL_LITERAL or LA31 == DECIMAL_LITERAL or LA31 == CHARACTER_LITERAL or LA31 == STRING_LITERAL or LA31 == FLOATING_POINT_LITERAL:
                            LA31_49 = self.input.LA(3)

                            if (self.synpred54()) :
                                alt31 = 1


                        elif LA31 == 61:
                            LA31_50 = self.input.LA(3)

                            if (self.synpred54()) :
                                alt31 = 1


                        elif LA31 == 62:
                            LA31_51 = self.input.LA(3)

                            if (self.synpred54()) :
                                alt31 = 1


                        elif LA31 == 55 or LA31 == 57 or LA31 == 58 or LA31 == 66 or LA31 == 67 or LA31 == 68:
                            LA31_52 = self.input.LA(3)

                            if (self.synpred54()) :
                                alt31 = 1


                        elif LA31 == 63:
                            LA31_53 = self.input.LA(3)

                            if (self.synpred54()) :
                                alt31 = 1





                    if alt31 == 1:
                        # C.g:0:0: declarator_suffix
                        self.following.append(self.FOLLOW_declarator_suffix_in_direct_declarator748)
                        self.declarator_suffix()
                        self.following.pop()
                        if self.failed:
                            return 


                    else:
                        break #loop31






            except RecognitionException, re:
                self.reportError(re)
                self.recover(self.input, re)
        finally:
            if self.backtracking > 0:
                self.memoize(self.input, 23, direct_declarator_StartIndex)

            pass

        return 

    # $ANTLR end direct_declarator


    # $ANTLR start declarator_suffix
    # C.g:221:1: declarator_suffix : ( '[' constant_expression ']' | '[' ']' | '(' parameter_type_list ')' ( attribute_specifier )* | '(' identifier_list ')' ( attribute_specifier )* | '(' ')' ( attribute_specifier )* );
    def declarator_suffix(self, ):

        declarator_suffix_StartIndex = self.input.index()
        try:
            try:
                if self.backtracking > 0 and self.alreadyParsedRule(self.input, 24):
                    return 

                # C.g:222:2: ( '[' constant_expression ']' | '[' ']' | '(' parameter_type_list ')' ( attribute_specifier )* | '(' identifier_list ')' ( attribute_specifier )* | '(' ')' ( attribute_specifier )* )
                alt35 = 5
                LA35_0 = self.input.LA(1)

                if (LA35_0 == 52) :
                    LA35_1 = self.input.LA(2)

                    if (LA35_1 == 53) :
                        alt35 = 2
                    elif ((IDENTIFIER <= LA35_1 <= FLOATING_POINT_LITERAL) or LA35_1 == 50 or LA35_1 == 55 or (57 <= LA35_1 <= 58) or (61 <= LA35_1 <= 63) or (66 <= LA35_1 <= 68)) :
                        alt35 = 1
                    else:
                        if self.backtracking > 0:
                            self.failed = True
                            return 

                        nvae = NoViableAltException("221:1: declarator_suffix : ( '[' constant_expression ']' | '[' ']' | '(' parameter_type_list ')' ( attribute_specifier )* | '(' identifier_list ')' ( attribute_specifier )* | '(' ')' ( attribute_specifier )* );", 35, 1, self.input)

                        raise nvae

                elif (LA35_0 == 50) :
                    LA35 = self.input.LA(2)
                    if LA35 == 51:
                        alt35 = 5
                    elif LA35 == IDENTIFIER:
                        LA35_12 = self.input.LA(3)

                        if (self.synpred58()) :
                            alt35 = 3
                        elif (self.synpred60()) :
                            alt35 = 4
                        else:
                            if self.backtracking > 0:
                                self.failed = True
                                return 

                            nvae = NoViableAltException("221:1: declarator_suffix : ( '[' constant_expression ']' | '[' ']' | '(' parameter_type_list ')' ( attribute_specifier )* | '(' identifier_list ')' ( attribute_specifier )* | '(' ')' ( attribute_specifier )* );", 35, 12, self.input)

                            raise nvae

                    elif LA35 == 27 or LA35 == 28 or LA35 == 29 or LA35 == 30 or LA35 == 31 or LA35 == 32 or LA35 == 33 or LA35 == 34 or LA35 == 35 or LA35 == 36 or LA35 == 37 or LA35 == 38 or LA35 == 39 or LA35 == 42 or LA35 == 43 or LA35 == 45 or LA35 == 46 or LA35 == 47 or LA35 == 48 or LA35 == 49 or LA35 == 54:
                        alt35 = 3
                    else:
                        if self.backtracking > 0:
                            self.failed = True
                            return 

                        nvae = NoViableAltException("221:1: declarator_suffix : ( '[' constant_expression ']' | '[' ']' | '(' parameter_type_list ')' ( attribute_specifier )* | '(' identifier_list ')' ( attribute_specifier )* | '(' ')' ( attribute_specifier )* );", 35, 2, self.input)

                        raise nvae

                else:
                    if self.backtracking > 0:
                        self.failed = True
                        return 

                    nvae = NoViableAltException("221:1: declarator_suffix : ( '[' constant_expression ']' | '[' ']' | '(' parameter_type_list ')' ( attribute_specifier )* | '(' identifier_list ')' ( attribute_specifier )* | '(' ')' ( attribute_specifier )* );", 35, 0, self.input)

                    raise nvae

                if alt35 == 1:
                    # C.g:222:6: '[' constant_expression ']'
                    self.match(self.input, 52, self.FOLLOW_52_in_declarator_suffix762)
                    if self.failed:
                        return 
                    self.following.append(self.FOLLOW_constant_expression_in_declarator_suffix764)
                    self.constant_expression()
                    self.following.pop()
                    if self.failed:
                        return 
                    self.match(self.input, 53, self.FOLLOW_53_in_declarator_suffix766)
                    if self.failed:
                        return 


                elif alt35 == 2:
                    # C.g:223:9: '[' ']'
                    self.match(self.input, 52, self.FOLLOW_52_in_declarator_suffix776)
                    if self.failed:
                        return 
                    self.match(self.input, 53, self.FOLLOW_53_in_declarator_suffix778)
                    if self.failed:
                        return 


                elif alt35 == 3:
                    # C.g:224:9: '(' parameter_type_list ')' ( attribute_specifier )*
                    self.match(self.input, 50, self.FOLLOW_50_in_declarator_suffix788)
                    if self.failed:
                        return 
                    self.following.append(self.FOLLOW_parameter_type_list_in_declarator_suffix790)
                    self.parameter_type_list()
                    self.following.pop()
                    if self.failed:
                        return 
                    self.match(self.input, 51, self.FOLLOW_51_in_declarator_suffix792)
                    if self.failed:
                        return 
                    # C.g:224:37: ( attribute_specifier )*
                    while True: #loop32
                        alt32 = 2
                        LA32_0 = self.input.LA(1)

                        if (LA32_0 == 54) :
                            LA32_2 = self.input.LA(2)

                            if (LA32_2 == 50) :
                                LA32_27 = self.input.LA(3)

                                if (self.synpred57()) :
                                    alt32 = 1






                        if alt32 == 1:
                            # C.g:0:0: attribute_specifier
                            self.following.append(self.FOLLOW_attribute_specifier_in_declarator_suffix794)
                            self.attribute_specifier()
                            self.following.pop()
                            if self.failed:
                                return 


                        else:
                            break #loop32




                elif alt35 == 4:
                    # C.g:225:9: '(' identifier_list ')' ( attribute_specifier )*
                    self.match(self.input, 50, self.FOLLOW_50_in_declarator_suffix805)
                    if self.failed:
                        return 
                    self.following.append(self.FOLLOW_identifier_list_in_declarator_suffix807)
                    self.identifier_list()
                    self.following.pop()
                    if self.failed:
                        return 
                    self.match(self.input, 51, self.FOLLOW_51_in_declarator_suffix809)
                    if self.failed:
                        return 
                    # C.g:225:33: ( attribute_specifier )*
                    while True: #loop33
                        alt33 = 2
                        LA33_0 = self.input.LA(1)

                        if (LA33_0 == 54) :
                            LA33_2 = self.input.LA(2)

                            if (LA33_2 == 50) :
                                LA33_27 = self.input.LA(3)

                                if (self.synpred59()) :
                                    alt33 = 1






                        if alt33 == 1:
                            # C.g:0:0: attribute_specifier
                            self.following.append(self.FOLLOW_attribute_specifier_in_declarator_suffix811)
                            self.attribute_specifier()
                            self.following.pop()
                            if self.failed:
                                return 


                        else:
                            break #loop33




                elif alt35 == 5:
                    # C.g:226:9: '(' ')' ( attribute_specifier )*
                    self.match(self.input, 50, self.FOLLOW_50_in_declarator_suffix822)
                    if self.failed:
                        return 
                    self.match(self.input, 51, self.FOLLOW_51_in_declarator_suffix824)
                    if self.failed:
                        return 
                    # C.g:226:17: ( attribute_specifier )*
                    while True: #loop34
                        alt34 = 2
                        LA34_0 = self.input.LA(1)

                        if (LA34_0 == 54) :
                            LA34_2 = self.input.LA(2)

                            if (LA34_2 == 50) :
                                LA34_27 = self.input.LA(3)

                                if (self.synpred61()) :
                                    alt34 = 1






                        if alt34 == 1:
                            # C.g:0:0: attribute_specifier
                            self.following.append(self.FOLLOW_attribute_specifier_in_declarator_suffix826)
                            self.attribute_specifier()
                            self.following.pop()
                            if self.failed:
                                return 


                        else:
                            break #loop34





            except RecognitionException, re:
                self.reportError(re)
                self.recover(self.input, re)
        finally:
            if self.backtracking > 0:
                self.memoize(self.input, 24, declarator_suffix_StartIndex)

            pass

        return 

    # $ANTLR end declarator_suffix


    # $ANTLR start attribute_specifier
    # C.g:229:1: attribute_specifier : '__attribute__' '(' '(' ( attribute_list )? ')' ')' ;
    def attribute_specifier(self, ):

        attribute_specifier_StartIndex = self.input.index()
        try:
            try:
                if self.backtracking > 0 and self.alreadyParsedRule(self.input, 25):
                    return 

                # C.g:230:5: ( '__attribute__' '(' '(' ( attribute_list )? ')' ')' )
                # C.g:230:8: '__attribute__' '(' '(' ( attribute_list )? ')' ')'
                self.match(self.input, 54, self.FOLLOW_54_in_attribute_specifier842)
                if self.failed:
                    return 
                self.match(self.input, 50, self.FOLLOW_50_in_attribute_specifier844)
                if self.failed:
                    return 
                self.match(self.input, 50, self.FOLLOW_50_in_attribute_specifier846)
                if self.failed:
                    return 
                # C.g:230:32: ( attribute_list )?
                alt36 = 2
                LA36_0 = self.input.LA(1)

                if (LA36_0 == IDENTIFIER) :
                    alt36 = 1
                if alt36 == 1:
                    # C.g:0:0: attribute_list
                    self.following.append(self.FOLLOW_attribute_list_in_attribute_specifier848)
                    self.attribute_list()
                    self.following.pop()
                    if self.failed:
                        return 



                self.match(self.input, 51, self.FOLLOW_51_in_attribute_specifier851)
                if self.failed:
                    return 
                self.match(self.input, 51, self.FOLLOW_51_in_attribute_specifier853)
                if self.failed:
                    return 




            except RecognitionException, re:
                self.reportError(re)
                self.recover(self.input, re)
        finally:
            if self.backtracking > 0:
                self.memoize(self.input, 25, attribute_specifier_StartIndex)

            pass

        return 

    # $ANTLR end attribute_specifier


    # $ANTLR start attribute_list
    # C.g:233:1: attribute_list : attribute ( ',' attribute )* ;
    def attribute_list(self, ):

        attribute_list_StartIndex = self.input.index()
        try:
            try:
                if self.backtracking > 0 and self.alreadyParsedRule(self.input, 26):
                    return 

                # C.g:234:5: ( attribute ( ',' attribute )* )
                # C.g:234:7: attribute ( ',' attribute )*
                self.following.append(self.FOLLOW_attribute_in_attribute_list870)
                self.attribute()
                self.following.pop()
                if self.failed:
                    return 
                # C.g:234:17: ( ',' attribute )*
                while True: #loop37
                    alt37 = 2
                    LA37_0 = self.input.LA(1)

                    if (LA37_0 == 25) :
                        alt37 = 1


                    if alt37 == 1:
                        # C.g:234:18: ',' attribute
                        self.match(self.input, 25, self.FOLLOW_25_in_attribute_list873)
                        if self.failed:
                            return 
                        self.following.append(self.FOLLOW_attribute_in_attribute_list875)
                        self.attribute()
                        self.following.pop()
                        if self.failed:
                            return 


                    else:
                        break #loop37






            except RecognitionException, re:
                self.reportError(re)
                self.recover(self.input, re)
        finally:
            if self.backtracking > 0:
                self.memoize(self.input, 26, attribute_list_StartIndex)

            pass

        return 

    # $ANTLR end attribute_list


    # $ANTLR start attribute
    # C.g:237:1: attribute : ( IDENTIFIER '(' IDENTIFIER ')' | IDENTIFIER '(' IDENTIFIER ',' attribute_parameter_list ')' | IDENTIFIER '(' ( attribute_parameter_list )? ')' | IDENTIFIER );
    def attribute(self, ):

        attribute_StartIndex = self.input.index()
        try:
            try:
                if self.backtracking > 0 and self.alreadyParsedRule(self.input, 27):
                    return 

                # C.g:238:5: ( IDENTIFIER '(' IDENTIFIER ')' | IDENTIFIER '(' IDENTIFIER ',' attribute_parameter_list ')' | IDENTIFIER '(' ( attribute_parameter_list )? ')' | IDENTIFIER )
                alt39 = 4
                LA39_0 = self.input.LA(1)

                if (LA39_0 == IDENTIFIER) :
                    LA39_1 = self.input.LA(2)

                    if (LA39_1 == 50) :
                        LA39_2 = self.input.LA(3)

                        if (self.synpred64()) :
                            alt39 = 1
                        elif (self.synpred65()) :
                            alt39 = 2
                        elif (self.synpred67()) :
                            alt39 = 3
                        else:
                            if self.backtracking > 0:
                                self.failed = True
                                return 

                            nvae = NoViableAltException("237:1: attribute : ( IDENTIFIER '(' IDENTIFIER ')' | IDENTIFIER '(' IDENTIFIER ',' attribute_parameter_list ')' | IDENTIFIER '(' ( attribute_parameter_list )? ')' | IDENTIFIER );", 39, 2, self.input)

                            raise nvae

                    elif (LA39_1 == EOF or LA39_1 == 25 or LA39_1 == 51) :
                        alt39 = 4
                    else:
                        if self.backtracking > 0:
                            self.failed = True
                            return 

                        nvae = NoViableAltException("237:1: attribute : ( IDENTIFIER '(' IDENTIFIER ')' | IDENTIFIER '(' IDENTIFIER ',' attribute_parameter_list ')' | IDENTIFIER '(' ( attribute_parameter_list )? ')' | IDENTIFIER );", 39, 1, self.input)

                        raise nvae

                else:
                    if self.backtracking > 0:
                        self.failed = True
                        return 

                    nvae = NoViableAltException("237:1: attribute : ( IDENTIFIER '(' IDENTIFIER ')' | IDENTIFIER '(' IDENTIFIER ',' attribute_parameter_list ')' | IDENTIFIER '(' ( attribute_parameter_list )? ')' | IDENTIFIER );", 39, 0, self.input)

                    raise nvae

                if alt39 == 1:
                    # C.g:238:7: IDENTIFIER '(' IDENTIFIER ')'
                    self.match(self.input, IDENTIFIER, self.FOLLOW_IDENTIFIER_in_attribute894)
                    if self.failed:
                        return 
                    self.match(self.input, 50, self.FOLLOW_50_in_attribute896)
                    if self.failed:
                        return 
                    self.match(self.input, IDENTIFIER, self.FOLLOW_IDENTIFIER_in_attribute898)
                    if self.failed:
                        return 
                    self.match(self.input, 51, self.FOLLOW_51_in_attribute900)
                    if self.failed:
                        return 


                elif alt39 == 2:
                    # C.g:239:7: IDENTIFIER '(' IDENTIFIER ',' attribute_parameter_list ')'
                    self.match(self.input, IDENTIFIER, self.FOLLOW_IDENTIFIER_in_attribute908)
                    if self.failed:
                        return 
                    self.match(self.input, 50, self.FOLLOW_50_in_attribute910)
                    if self.failed:
                        return 
                    self.match(self.input, IDENTIFIER, self.FOLLOW_IDENTIFIER_in_attribute912)
                    if self.failed:
                        return 
                    self.match(self.input, 25, self.FOLLOW_25_in_attribute914)
                    if self.failed:
                        return 
                    self.following.append(self.FOLLOW_attribute_parameter_list_in_attribute916)
                    self.attribute_parameter_list()
                    self.following.pop()
                    if self.failed:
                        return 
                    self.match(self.input, 51, self.FOLLOW_51_in_attribute918)
                    if self.failed:
                        return 


                elif alt39 == 3:
                    # C.g:240:7: IDENTIFIER '(' ( attribute_parameter_list )? ')'
                    self.match(self.input, IDENTIFIER, self.FOLLOW_IDENTIFIER_in_attribute926)
                    if self.failed:
                        return 
                    self.match(self.input, 50, self.FOLLOW_50_in_attribute928)
                    if self.failed:
                        return 
                    # C.g:240:22: ( attribute_parameter_list )?
                    alt38 = 2
                    LA38_0 = self.input.LA(1)

                    if ((IDENTIFIER <= LA38_0 <= FLOATING_POINT_LITERAL) or LA38_0 == 50 or LA38_0 == 55 or (57 <= LA38_0 <= 58) or (61 <= LA38_0 <= 63) or (66 <= LA38_0 <= 68)) :
                        alt38 = 1
                    if alt38 == 1:
                        # C.g:0:0: attribute_parameter_list
                        self.following.append(self.FOLLOW_attribute_parameter_list_in_attribute930)
                        self.attribute_parameter_list()
                        self.following.pop()
                        if self.failed:
                            return 



                    self.match(self.input, 51, self.FOLLOW_51_in_attribute933)
                    if self.failed:
                        return 


                elif alt39 == 4:
                    # C.g:241:7: IDENTIFIER
                    self.match(self.input, IDENTIFIER, self.FOLLOW_IDENTIFIER_in_attribute941)
                    if self.failed:
                        return 



            except RecognitionException, re:
                self.reportError(re)
                self.recover(self.input, re)
        finally:
            if self.backtracking > 0:
                self.memoize(self.input, 27, attribute_StartIndex)

            pass

        return 

    # $ANTLR end attribute


    # $ANTLR start attribute_parameter_list
    # C.g:244:1: attribute_parameter_list : expression ( ',' expression )* ;
    def attribute_parameter_list(self, ):

        attribute_parameter_list_StartIndex = self.input.index()
        try:
            try:
                if self.backtracking > 0 and self.alreadyParsedRule(self.input, 28):
                    return 

                # C.g:245:5: ( expression ( ',' expression )* )
                # C.g:245:7: expression ( ',' expression )*
                self.following.append(self.FOLLOW_expression_in_attribute_parameter_list958)
                self.expression()
                self.following.pop()
                if self.failed:
                    return 
                # C.g:245:18: ( ',' expression )*
                while True: #loop40
                    alt40 = 2
                    LA40_0 = self.input.LA(1)

                    if (LA40_0 == 25) :
                        alt40 = 1


                    if alt40 == 1:
                        # C.g:245:19: ',' expression
                        self.match(self.input, 25, self.FOLLOW_25_in_attribute_parameter_list961)
                        if self.failed:
                            return 
                        self.following.append(self.FOLLOW_expression_in_attribute_parameter_list963)
                        self.expression()
                        self.following.pop()
                        if self.failed:
                            return 


                    else:
                        break #loop40






            except RecognitionException, re:
                self.reportError(re)
                self.recover(self.input, re)
        finally:
            if self.backtracking > 0:
                self.memoize(self.input, 28, attribute_parameter_list_StartIndex)

            pass

        return 

    # $ANTLR end attribute_parameter_list


    # $ANTLR start pointer
    # C.g:248:1: pointer : ( '*' ( type_qualifier )+ ( pointer )? | '*' pointer | '*' );
    def pointer(self, ):

        pointer_StartIndex = self.input.index()
        try:
            try:
                if self.backtracking > 0 and self.alreadyParsedRule(self.input, 29):
                    return 

                # C.g:249:2: ( '*' ( type_qualifier )+ ( pointer )? | '*' pointer | '*' )
                alt43 = 3
                LA43_0 = self.input.LA(1)

                if (LA43_0 == 55) :
                    LA43 = self.input.LA(2)
                    if LA43 == 55:
                        LA43_2 = self.input.LA(3)

                        if (self.synpred72()) :
                            alt43 = 2
                        elif (True) :
                            alt43 = 3
                        else:
                            if self.backtracking > 0:
                                self.failed = True
                                return 

                            nvae = NoViableAltException("248:1: pointer : ( '*' ( type_qualifier )+ ( pointer )? | '*' pointer | '*' );", 43, 2, self.input)

                            raise nvae

                    elif LA43 == 46 or LA43 == 47 or LA43 == 48 or LA43 == 49:
                        LA43_3 = self.input.LA(3)

                        if (self.synpred71()) :
                            alt43 = 1
                        elif (True) :
                            alt43 = 3
                        else:
                            if self.backtracking > 0:
                                self.failed = True
                                return 

                            nvae = NoViableAltException("248:1: pointer : ( '*' ( type_qualifier )+ ( pointer )? | '*' pointer | '*' );", 43, 3, self.input)

                            raise nvae

                    elif LA43 == EOF or LA43 == IDENTIFIER or LA43 == 23 or LA43 == 24 or LA43 == 25 or LA43 == 26 or LA43 == 27 or LA43 == 28 or LA43 == 29 or LA43 == 30 or LA43 == 31 or LA43 == 32 or LA43 == 33 or LA43 == 34 or LA43 == 35 or LA43 == 36 or LA43 == 37 or LA43 == 38 or LA43 == 39 or LA43 == 40 or LA43 == 42 or LA43 == 43 or LA43 == 44 or LA43 == 45 or LA43 == 50 or LA43 == 51 or LA43 == 52 or LA43 == 54:
                        alt43 = 3
                    else:
                        if self.backtracking > 0:
                            self.failed = True
                            return 

                        nvae = NoViableAltException("248:1: pointer : ( '*' ( type_qualifier )+ ( pointer )? | '*' pointer | '*' );", 43, 1, self.input)

                        raise nvae

                else:
                    if self.backtracking > 0:
                        self.failed = True
                        return 

                    nvae = NoViableAltException("248:1: pointer : ( '*' ( type_qualifier )+ ( pointer )? | '*' pointer | '*' );", 43, 0, self.input)

                    raise nvae

                if alt43 == 1:
                    # C.g:249:4: '*' ( type_qualifier )+ ( pointer )?
                    self.match(self.input, 55, self.FOLLOW_55_in_pointer979)
                    if self.failed:
                        return 
                    # C.g:249:8: ( type_qualifier )+
                    cnt41 = 0
                    while True: #loop41
                        alt41 = 2
                        LA41_0 = self.input.LA(1)

                        if ((46 <= LA41_0 <= 49)) :
                            LA41_18 = self.input.LA(2)

                            if (self.synpred69()) :
                                alt41 = 1




                        if alt41 == 1:
                            # C.g:0:0: type_qualifier
                            self.following.append(self.FOLLOW_type_qualifier_in_pointer981)
                            self.type_qualifier()
                            self.following.pop()
                            if self.failed:
                                return 


                        else:
                            if cnt41 >= 1:
                                break #loop41

                            if self.backtracking > 0:
                                self.failed = True
                                return 

                            eee = EarlyExitException(41, self.input)
                            raise eee

                        cnt41 += 1


                    # C.g:249:24: ( pointer )?
                    alt42 = 2
                    LA42_0 = self.input.LA(1)

                    if (LA42_0 == 55) :
                        LA42_1 = self.input.LA(2)

                        if (self.synpred70()) :
                            alt42 = 1
                    if alt42 == 1:
                        # C.g:0:0: pointer
                        self.following.append(self.FOLLOW_pointer_in_pointer984)
                        self.pointer()
                        self.following.pop()
                        if self.failed:
                            return 





                elif alt43 == 2:
                    # C.g:250:4: '*' pointer
                    self.match(self.input, 55, self.FOLLOW_55_in_pointer990)
                    if self.failed:
                        return 
                    self.following.append(self.FOLLOW_pointer_in_pointer992)
                    self.pointer()
                    self.following.pop()
                    if self.failed:
                        return 


                elif alt43 == 3:
                    # C.g:251:4: '*'
                    self.match(self.input, 55, self.FOLLOW_55_in_pointer997)
                    if self.failed:
                        return 



            except RecognitionException, re:
                self.reportError(re)
                self.recover(self.input, re)
        finally:
            if self.backtracking > 0:
                self.memoize(self.input, 29, pointer_StartIndex)

            pass

        return 

    # $ANTLR end pointer


    # $ANTLR start parameter_type_list
    # C.g:254:1: parameter_type_list : parameter_list ( ',' '...' )? ;
    def parameter_type_list(self, ):

        parameter_type_list_StartIndex = self.input.index()
        try:
            try:
                if self.backtracking > 0 and self.alreadyParsedRule(self.input, 30):
                    return 

                # C.g:255:2: ( parameter_list ( ',' '...' )? )
                # C.g:255:4: parameter_list ( ',' '...' )?
                self.following.append(self.FOLLOW_parameter_list_in_parameter_type_list1008)
                self.parameter_list()
                self.following.pop()
                if self.failed:
                    return 
                # C.g:255:19: ( ',' '...' )?
                alt44 = 2
                LA44_0 = self.input.LA(1)

                if (LA44_0 == 25) :
                    alt44 = 1
                if alt44 == 1:
                    # C.g:255:20: ',' '...'
                    self.match(self.input, 25, self.FOLLOW_25_in_parameter_type_list1011)
                    if self.failed:
                        return 
                    self.match(self.input, 56, self.FOLLOW_56_in_parameter_type_list1013)
                    if self.failed:
                        return 







            except RecognitionException, re:
                self.reportError(re)
                self.recover(self.input, re)
        finally:
            if self.backtracking > 0:
                self.memoize(self.input, 30, parameter_type_list_StartIndex)

            pass

        return 

    # $ANTLR end parameter_type_list


    # $ANTLR start parameter_list
    # C.g:258:1: parameter_list : parameter_declaration ( ',' parameter_declaration )* ;
    def parameter_list(self, ):

        parameter_list_StartIndex = self.input.index()
        try:
            try:
                if self.backtracking > 0 and self.alreadyParsedRule(self.input, 31):
                    return 

                # C.g:259:2: ( parameter_declaration ( ',' parameter_declaration )* )
                # C.g:259:4: parameter_declaration ( ',' parameter_declaration )*
                self.following.append(self.FOLLOW_parameter_declaration_in_parameter_list1026)
                self.parameter_declaration()
                self.following.pop()
                if self.failed:
                    return 
                # C.g:259:26: ( ',' parameter_declaration )*
                while True: #loop45
                    alt45 = 2
                    LA45_0 = self.input.LA(1)

                    if (LA45_0 == 25) :
                        LA45_1 = self.input.LA(2)

                        if (LA45_1 == IDENTIFIER or (27 <= LA45_1 <= 39) or (42 <= LA45_1 <= 43) or (45 <= LA45_1 <= 49) or LA45_1 == 54) :
                            alt45 = 1




                    if alt45 == 1:
                        # C.g:259:27: ',' parameter_declaration
                        self.match(self.input, 25, self.FOLLOW_25_in_parameter_list1029)
                        if self.failed:
                            return 
                        self.following.append(self.FOLLOW_parameter_declaration_in_parameter_list1031)
                        self.parameter_declaration()
                        self.following.pop()
                        if self.failed:
                            return 


                    else:
                        break #loop45






            except RecognitionException, re:
                self.reportError(re)
                self.recover(self.input, re)
        finally:
            if self.backtracking > 0:
                self.memoize(self.input, 31, parameter_list_StartIndex)

            pass

        return 

    # $ANTLR end parameter_list


    # $ANTLR start parameter_declaration
    # C.g:262:1: parameter_declaration : declaration_specifiers ( declarator | abstract_declarator )* ;
    def parameter_declaration(self, ):

        parameter_declaration_StartIndex = self.input.index()
        try:
            try:
                if self.backtracking > 0 and self.alreadyParsedRule(self.input, 32):
                    return 

                # C.g:263:2: ( declaration_specifiers ( declarator | abstract_declarator )* )
                # C.g:263:4: declaration_specifiers ( declarator | abstract_declarator )*
                self.following.append(self.FOLLOW_declaration_specifiers_in_parameter_declaration1044)
                self.declaration_specifiers()
                self.following.pop()
                if self.failed:
                    return 
                # C.g:263:27: ( declarator | abstract_declarator )*
                while True: #loop46
                    alt46 = 3
                    LA46 = self.input.LA(1)
                    if LA46 == IDENTIFIER or LA46 == 54:
                        alt46 = 1
                    elif LA46 == 55:
                        LA46_5 = self.input.LA(2)

                        if (self.synpred75()) :
                            alt46 = 1
                        elif (self.synpred76()) :
                            alt46 = 2


                    elif LA46 == 50:
                        LA46 = self.input.LA(2)
                        if LA46 == 27 or LA46 == 28 or LA46 == 29 or LA46 == 30 or LA46 == 31 or LA46 == 32 or LA46 == 33 or LA46 == 34 or LA46 == 35 or LA46 == 36 or LA46 == 37 or LA46 == 38 or LA46 == 39 or LA46 == 42 or LA46 == 43 or LA46 == 45 or LA46 == 46 or LA46 == 47 or LA46 == 48 or LA46 == 49 or LA46 == 51 or LA46 == 52:
                            alt46 = 2
                        elif LA46 == 54:
                            LA46_19 = self.input.LA(3)

                            if (self.synpred75()) :
                                alt46 = 1
                            elif (self.synpred76()) :
                                alt46 = 2


                        elif LA46 == 55:
                            LA46_20 = self.input.LA(3)

                            if (self.synpred75()) :
                                alt46 = 1
                            elif (self.synpred76()) :
                                alt46 = 2


                        elif LA46 == IDENTIFIER:
                            LA46_21 = self.input.LA(3)

                            if (self.synpred75()) :
                                alt46 = 1
                            elif (self.synpred76()) :
                                alt46 = 2


                        elif LA46 == 50:
                            LA46_22 = self.input.LA(3)

                            if (self.synpred75()) :
                                alt46 = 1
                            elif (self.synpred76()) :
                                alt46 = 2



                    elif LA46 == 52:
                        alt46 = 2

                    if alt46 == 1:
                        # C.g:263:28: declarator
                        self.following.append(self.FOLLOW_declarator_in_parameter_declaration1047)
                        self.declarator()
                        self.following.pop()
                        if self.failed:
                            return 


                    elif alt46 == 2:
                        # C.g:263:39: abstract_declarator
                        self.following.append(self.FOLLOW_abstract_declarator_in_parameter_declaration1049)
                        self.abstract_declarator()
                        self.following.pop()
                        if self.failed:
                            return 


                    else:
                        break #loop46






            except RecognitionException, re:
                self.reportError(re)
                self.recover(self.input, re)
        finally:
            if self.backtracking > 0:
                self.memoize(self.input, 32, parameter_declaration_StartIndex)

            pass

        return 

    # $ANTLR end parameter_declaration


    # $ANTLR start identifier_list
    # C.g:266:1: identifier_list : IDENTIFIER ( ',' IDENTIFIER )* ;
    def identifier_list(self, ):

        identifier_list_StartIndex = self.input.index()
        try:
            try:
                if self.backtracking > 0 and self.alreadyParsedRule(self.input, 33):
                    return 

                # C.g:267:2: ( IDENTIFIER ( ',' IDENTIFIER )* )
                # C.g:267:4: IDENTIFIER ( ',' IDENTIFIER )*
                self.match(self.input, IDENTIFIER, self.FOLLOW_IDENTIFIER_in_identifier_list1062)
                if self.failed:
                    return 
                # C.g:267:15: ( ',' IDENTIFIER )*
                while True: #loop47
                    alt47 = 2
                    LA47_0 = self.input.LA(1)

                    if (LA47_0 == 25) :
                        alt47 = 1


                    if alt47 == 1:
                        # C.g:267:16: ',' IDENTIFIER
                        self.match(self.input, 25, self.FOLLOW_25_in_identifier_list1065)
                        if self.failed:
                            return 
                        self.match(self.input, IDENTIFIER, self.FOLLOW_IDENTIFIER_in_identifier_list1067)
                        if self.failed:
                            return 


                    else:
                        break #loop47






            except RecognitionException, re:
                self.reportError(re)
                self.recover(self.input, re)
        finally:
            if self.backtracking > 0:
                self.memoize(self.input, 33, identifier_list_StartIndex)

            pass

        return 

    # $ANTLR end identifier_list


    # $ANTLR start type_name
    # C.g:270:1: type_name : specifier_qualifier_list ( abstract_declarator )? ;
    def type_name(self, ):

        type_name_StartIndex = self.input.index()
        try:
            try:
                if self.backtracking > 0 and self.alreadyParsedRule(self.input, 34):
                    return 

                # C.g:271:2: ( specifier_qualifier_list ( abstract_declarator )? )
                # C.g:271:4: specifier_qualifier_list ( abstract_declarator )?
                self.following.append(self.FOLLOW_specifier_qualifier_list_in_type_name1080)
                self.specifier_qualifier_list()
                self.following.pop()
                if self.failed:
                    return 
                # C.g:271:29: ( abstract_declarator )?
                alt48 = 2
                LA48_0 = self.input.LA(1)

                if (LA48_0 == 50 or LA48_0 == 52 or LA48_0 == 55) :
                    alt48 = 1
                if alt48 == 1:
                    # C.g:0:0: abstract_declarator
                    self.following.append(self.FOLLOW_abstract_declarator_in_type_name1082)
                    self.abstract_declarator()
                    self.following.pop()
                    if self.failed:
                        return 







            except RecognitionException, re:
                self.reportError(re)
                self.recover(self.input, re)
        finally:
            if self.backtracking > 0:
                self.memoize(self.input, 34, type_name_StartIndex)

            pass

        return 

    # $ANTLR end type_name


    # $ANTLR start abstract_declarator
    # C.g:274:1: abstract_declarator : ( pointer ( direct_abstract_declarator )? | direct_abstract_declarator );
    def abstract_declarator(self, ):

        abstract_declarator_StartIndex = self.input.index()
        try:
            try:
                if self.backtracking > 0 and self.alreadyParsedRule(self.input, 35):
                    return 

                # C.g:275:2: ( pointer ( direct_abstract_declarator )? | direct_abstract_declarator )
                alt50 = 2
                LA50_0 = self.input.LA(1)

                if (LA50_0 == 55) :
                    alt50 = 1
                elif (LA50_0 == 50 or LA50_0 == 52) :
                    alt50 = 2
                else:
                    if self.backtracking > 0:
                        self.failed = True
                        return 

                    nvae = NoViableAltException("274:1: abstract_declarator : ( pointer ( direct_abstract_declarator )? | direct_abstract_declarator );", 50, 0, self.input)

                    raise nvae

                if alt50 == 1:
                    # C.g:275:4: pointer ( direct_abstract_declarator )?
                    self.following.append(self.FOLLOW_pointer_in_abstract_declarator1094)
                    self.pointer()
                    self.following.pop()
                    if self.failed:
                        return 
                    # C.g:275:12: ( direct_abstract_declarator )?
                    alt49 = 2
                    LA49_0 = self.input.LA(1)

                    if (LA49_0 == 50) :
                        LA49 = self.input.LA(2)
                        if LA49 == 51:
                            LA49_9 = self.input.LA(3)

                            if (self.synpred79()) :
                                alt49 = 1
                        elif LA49 == 55:
                            LA49_10 = self.input.LA(3)

                            if (self.synpred79()) :
                                alt49 = 1
                        elif LA49 == 50:
                            LA49_11 = self.input.LA(3)

                            if (self.synpred79()) :
                                alt49 = 1
                        elif LA49 == 52:
                            LA49_12 = self.input.LA(3)

                            if (self.synpred79()) :
                                alt49 = 1
                        elif LA49 == 54:
                            LA49_13 = self.input.LA(3)

                            if (self.synpred79()) :
                                alt49 = 1
                        elif LA49 == IDENTIFIER:
                            LA49_14 = self.input.LA(3)

                            if (self.synpred79()) :
                                alt49 = 1
                        elif LA49 == 27 or LA49 == 28 or LA49 == 29 or LA49 == 30:
                            LA49_15 = self.input.LA(3)

                            if (self.synpred79()) :
                                alt49 = 1
                        elif LA49 == 31:
                            LA49_16 = self.input.LA(3)

                            if (self.synpred79()) :
                                alt49 = 1
                        elif LA49 == 32:
                            LA49_17 = self.input.LA(3)

                            if (self.synpred79()) :
                                alt49 = 1
                        elif LA49 == 33:
                            LA49_18 = self.input.LA(3)

                            if (self.synpred79()) :
                                alt49 = 1
                        elif LA49 == 34:
                            LA49_19 = self.input.LA(3)

                            if (self.synpred79()) :
                                alt49 = 1
                        elif LA49 == 35:
                            LA49_20 = self.input.LA(3)

                            if (self.synpred79()) :
                                alt49 = 1
                        elif LA49 == 36:
                            LA49_21 = self.input.LA(3)

                            if (self.synpred79()) :
                                alt49 = 1
                        elif LA49 == 37:
                            LA49_22 = self.input.LA(3)

                            if (self.synpred79()) :
                                alt49 = 1
                        elif LA49 == 38:
                            LA49_23 = self.input.LA(3)

                            if (self.synpred79()) :
                                alt49 = 1
                        elif LA49 == 39:
                            LA49_24 = self.input.LA(3)

                            if (self.synpred79()) :
                                alt49 = 1
                        elif LA49 == 42 or LA49 == 43:
                            LA49_25 = self.input.LA(3)

                            if (self.synpred79()) :
                                alt49 = 1
                        elif LA49 == 45:
                            LA49_26 = self.input.LA(3)

                            if (self.synpred79()) :
                                alt49 = 1
                        elif LA49 == 46 or LA49 == 47 or LA49 == 48 or LA49 == 49:
                            LA49_27 = self.input.LA(3)

                            if (self.synpred79()) :
                                alt49 = 1
                    elif (LA49_0 == 52) :
                        LA49 = self.input.LA(2)
                        if LA49 == 53:
                            LA49_28 = self.input.LA(3)

                            if (self.synpred79()) :
                                alt49 = 1
                        elif LA49 == 50:
                            LA49_29 = self.input.LA(3)

                            if (self.synpred79()) :
                                alt49 = 1
                        elif LA49 == IDENTIFIER:
                            LA49_30 = self.input.LA(3)

                            if (self.synpred79()) :
                                alt49 = 1
                        elif LA49 == HEX_LITERAL or LA49 == OCTAL_LITERAL or LA49 == DECIMAL_LITERAL or LA49 == CHARACTER_LITERAL or LA49 == STRING_LITERAL or LA49 == FLOATING_POINT_LITERAL:
                            LA49_31 = self.input.LA(3)

                            if (self.synpred79()) :
                                alt49 = 1
                        elif LA49 == 61:
                            LA49_32 = self.input.LA(3)

                            if (self.synpred79()) :
                                alt49 = 1
                        elif LA49 == 62:
                            LA49_33 = self.input.LA(3)

                            if (self.synpred79()) :
                                alt49 = 1
                        elif LA49 == 55 or LA49 == 57 or LA49 == 58 or LA49 == 66 or LA49 == 67 or LA49 == 68:
                            LA49_34 = self.input.LA(3)

                            if (self.synpred79()) :
                                alt49 = 1
                        elif LA49 == 63:
                            LA49_35 = self.input.LA(3)

                            if (self.synpred79()) :
                                alt49 = 1
                    if alt49 == 1:
                        # C.g:0:0: direct_abstract_declarator
                        self.following.append(self.FOLLOW_direct_abstract_declarator_in_abstract_declarator1096)
                        self.direct_abstract_declarator()
                        self.following.pop()
                        if self.failed:
                            return 





                elif alt50 == 2:
                    # C.g:276:4: direct_abstract_declarator
                    self.following.append(self.FOLLOW_direct_abstract_declarator_in_abstract_declarator1102)
                    self.direct_abstract_declarator()
                    self.following.pop()
                    if self.failed:
                        return 



            except RecognitionException, re:
                self.reportError(re)
                self.recover(self.input, re)
        finally:
            if self.backtracking > 0:
                self.memoize(self.input, 35, abstract_declarator_StartIndex)

            pass

        return 

    # $ANTLR end abstract_declarator


    # $ANTLR start direct_abstract_declarator
    # C.g:279:1: direct_abstract_declarator : ( '(' abstract_declarator ')' | abstract_declarator_suffix ) ( abstract_declarator_suffix )* ;
    def direct_abstract_declarator(self, ):

        direct_abstract_declarator_StartIndex = self.input.index()
        try:
            try:
                if self.backtracking > 0 and self.alreadyParsedRule(self.input, 36):
                    return 

                # C.g:280:2: ( ( '(' abstract_declarator ')' | abstract_declarator_suffix ) ( abstract_declarator_suffix )* )
                # C.g:280:4: ( '(' abstract_declarator ')' | abstract_declarator_suffix ) ( abstract_declarator_suffix )*
                # C.g:280:4: ( '(' abstract_declarator ')' | abstract_declarator_suffix )
                alt51 = 2
                LA51_0 = self.input.LA(1)

                if (LA51_0 == 50) :
                    LA51_1 = self.input.LA(2)

                    if (LA51_1 == IDENTIFIER or (27 <= LA51_1 <= 39) or (42 <= LA51_1 <= 43) or (45 <= LA51_1 <= 49) or LA51_1 == 51 or LA51_1 == 54) :
                        alt51 = 2
                    elif (LA51_1 == 50 or LA51_1 == 52 or LA51_1 == 55) :
                        alt51 = 1
                    else:
                        if self.backtracking > 0:
                            self.failed = True
                            return 

                        nvae = NoViableAltException("280:4: ( '(' abstract_declarator ')' | abstract_declarator_suffix )", 51, 1, self.input)

                        raise nvae

                elif (LA51_0 == 52) :
                    alt51 = 2
                else:
                    if self.backtracking > 0:
                        self.failed = True
                        return 

                    nvae = NoViableAltException("280:4: ( '(' abstract_declarator ')' | abstract_declarator_suffix )", 51, 0, self.input)

                    raise nvae

                if alt51 == 1:
                    # C.g:280:6: '(' abstract_declarator ')'
                    self.match(self.input, 50, self.FOLLOW_50_in_direct_abstract_declarator1115)
                    if self.failed:
                        return 
                    self.following.append(self.FOLLOW_abstract_declarator_in_direct_abstract_declarator1117)
                    self.abstract_declarator()
                    self.following.pop()
                    if self.failed:
                        return 
                    self.match(self.input, 51, self.FOLLOW_51_in_direct_abstract_declarator1119)
                    if self.failed:
                        return 


                elif alt51 == 2:
                    # C.g:280:36: abstract_declarator_suffix
                    self.following.append(self.FOLLOW_abstract_declarator_suffix_in_direct_abstract_declarator1123)
                    self.abstract_declarator_suffix()
                    self.following.pop()
                    if self.failed:
                        return 



                # C.g:280:65: ( abstract_declarator_suffix )*
                while True: #loop52
                    alt52 = 2
                    LA52_0 = self.input.LA(1)

                    if (LA52_0 == 50) :
                        LA52 = self.input.LA(2)
                        if LA52 == 51:
                            LA52_9 = self.input.LA(3)

                            if (self.synpred82()) :
                                alt52 = 1


                        elif LA52 == 54:
                            LA52_10 = self.input.LA(3)

                            if (self.synpred82()) :
                                alt52 = 1


                        elif LA52 == 27 or LA52 == 28 or LA52 == 29 or LA52 == 30:
                            LA52_11 = self.input.LA(3)

                            if (self.synpred82()) :
                                alt52 = 1


                        elif LA52 == 31:
                            LA52_12 = self.input.LA(3)

                            if (self.synpred82()) :
                                alt52 = 1


                        elif LA52 == 32:
                            LA52_13 = self.input.LA(3)

                            if (self.synpred82()) :
                                alt52 = 1


                        elif LA52 == 33:
                            LA52_14 = self.input.LA(3)

                            if (self.synpred82()) :
                                alt52 = 1


                        elif LA52 == 34:
                            LA52_15 = self.input.LA(3)

                            if (self.synpred82()) :
                                alt52 = 1


                        elif LA52 == 35:
                            LA52_16 = self.input.LA(3)

                            if (self.synpred82()) :
                                alt52 = 1


                        elif LA52 == 36:
                            LA52_17 = self.input.LA(3)

                            if (self.synpred82()) :
                                alt52 = 1


                        elif LA52 == 37:
                            LA52_18 = self.input.LA(3)

                            if (self.synpred82()) :
                                alt52 = 1


                        elif LA52 == 38:
                            LA52_19 = self.input.LA(3)

                            if (self.synpred82()) :
                                alt52 = 1


                        elif LA52 == 39:
                            LA52_20 = self.input.LA(3)

                            if (self.synpred82()) :
                                alt52 = 1


                        elif LA52 == 42 or LA52 == 43:
                            LA52_21 = self.input.LA(3)

                            if (self.synpred82()) :
                                alt52 = 1


                        elif LA52 == 45:
                            LA52_22 = self.input.LA(3)

                            if (self.synpred82()) :
                                alt52 = 1


                        elif LA52 == IDENTIFIER:
                            LA52_23 = self.input.LA(3)

                            if (self.synpred82()) :
                                alt52 = 1


                        elif LA52 == 46 or LA52 == 47 or LA52 == 48 or LA52 == 49:
                            LA52_24 = self.input.LA(3)

                            if (self.synpred82()) :
                                alt52 = 1



                    elif (LA52_0 == 52) :
                        LA52 = self.input.LA(2)
                        if LA52 == 53:
                            LA52_28 = self.input.LA(3)

                            if (self.synpred82()) :
                                alt52 = 1


                        elif LA52 == 50:
                            LA52_29 = self.input.LA(3)

                            if (self.synpred82()) :
                                alt52 = 1


                        elif LA52 == IDENTIFIER:
                            LA52_30 = self.input.LA(3)

                            if (self.synpred82()) :
                                alt52 = 1


                        elif LA52 == HEX_LITERAL or LA52 == OCTAL_LITERAL or LA52 == DECIMAL_LITERAL or LA52 == CHARACTER_LITERAL or LA52 == STRING_LITERAL or LA52 == FLOATING_POINT_LITERAL:
                            LA52_31 = self.input.LA(3)

                            if (self.synpred82()) :
                                alt52 = 1


                        elif LA52 == 61:
                            LA52_32 = self.input.LA(3)

                            if (self.synpred82()) :
                                alt52 = 1


                        elif LA52 == 62:
                            LA52_33 = self.input.LA(3)

                            if (self.synpred82()) :
                                alt52 = 1


                        elif LA52 == 55 or LA52 == 57 or LA52 == 58 or LA52 == 66 or LA52 == 67 or LA52 == 68:
                            LA52_34 = self.input.LA(3)

                            if (self.synpred82()) :
                                alt52 = 1


                        elif LA52 == 63:
                            LA52_35 = self.input.LA(3)

                            if (self.synpred82()) :
                                alt52 = 1





                    if alt52 == 1:
                        # C.g:0:0: abstract_declarator_suffix
                        self.following.append(self.FOLLOW_abstract_declarator_suffix_in_direct_abstract_declarator1127)
                        self.abstract_declarator_suffix()
                        self.following.pop()
                        if self.failed:
                            return 


                    else:
                        break #loop52






            except RecognitionException, re:
                self.reportError(re)
                self.recover(self.input, re)
        finally:
            if self.backtracking > 0:
                self.memoize(self.input, 36, direct_abstract_declarator_StartIndex)

            pass

        return 

    # $ANTLR end direct_abstract_declarator


    # $ANTLR start abstract_declarator_suffix
    # C.g:283:1: abstract_declarator_suffix : ( '[' ']' | '[' constant_expression ']' | '(' ')' | '(' parameter_type_list ')' );
    def abstract_declarator_suffix(self, ):

        abstract_declarator_suffix_StartIndex = self.input.index()
        try:
            try:
                if self.backtracking > 0 and self.alreadyParsedRule(self.input, 37):
                    return 

                # C.g:284:2: ( '[' ']' | '[' constant_expression ']' | '(' ')' | '(' parameter_type_list ')' )
                alt53 = 4
                LA53_0 = self.input.LA(1)

                if (LA53_0 == 52) :
                    LA53_1 = self.input.LA(2)

                    if (LA53_1 == 53) :
                        alt53 = 1
                    elif ((IDENTIFIER <= LA53_1 <= FLOATING_POINT_LITERAL) or LA53_1 == 50 or LA53_1 == 55 or (57 <= LA53_1 <= 58) or (61 <= LA53_1 <= 63) or (66 <= LA53_1 <= 68)) :
                        alt53 = 2
                    else:
                        if self.backtracking > 0:
                            self.failed = True
                            return 

                        nvae = NoViableAltException("283:1: abstract_declarator_suffix : ( '[' ']' | '[' constant_expression ']' | '(' ')' | '(' parameter_type_list ')' );", 53, 1, self.input)

                        raise nvae

                elif (LA53_0 == 50) :
                    LA53_2 = self.input.LA(2)

                    if (LA53_2 == 51) :
                        alt53 = 3
                    elif (LA53_2 == IDENTIFIER or (27 <= LA53_2 <= 39) or (42 <= LA53_2 <= 43) or (45 <= LA53_2 <= 49) or LA53_2 == 54) :
                        alt53 = 4
                    else:
                        if self.backtracking > 0:
                            self.failed = True
                            return 

                        nvae = NoViableAltException("283:1: abstract_declarator_suffix : ( '[' ']' | '[' constant_expression ']' | '(' ')' | '(' parameter_type_list ')' );", 53, 2, self.input)

                        raise nvae

                else:
                    if self.backtracking > 0:
                        self.failed = True
                        return 

                    nvae = NoViableAltException("283:1: abstract_declarator_suffix : ( '[' ']' | '[' constant_expression ']' | '(' ')' | '(' parameter_type_list ')' );", 53, 0, self.input)

                    raise nvae

                if alt53 == 1:
                    # C.g:284:4: '[' ']'
                    self.match(self.input, 52, self.FOLLOW_52_in_abstract_declarator_suffix1139)
                    if self.failed:
                        return 
                    self.match(self.input, 53, self.FOLLOW_53_in_abstract_declarator_suffix1141)
                    if self.failed:
                        return 


                elif alt53 == 2:
                    # C.g:285:4: '[' constant_expression ']'
                    self.match(self.input, 52, self.FOLLOW_52_in_abstract_declarator_suffix1146)
                    if self.failed:
                        return 
                    self.following.append(self.FOLLOW_constant_expression_in_abstract_declarator_suffix1148)
                    self.constant_expression()
                    self.following.pop()
                    if self.failed:
                        return 
                    self.match(self.input, 53, self.FOLLOW_53_in_abstract_declarator_suffix1150)
                    if self.failed:
                        return 


                elif alt53 == 3:
                    # C.g:286:4: '(' ')'
                    self.match(self.input, 50, self.FOLLOW_50_in_abstract_declarator_suffix1155)
                    if self.failed:
                        return 
                    self.match(self.input, 51, self.FOLLOW_51_in_abstract_declarator_suffix1157)
                    if self.failed:
                        return 


                elif alt53 == 4:
                    # C.g:287:4: '(' parameter_type_list ')'
                    self.match(self.input, 50, self.FOLLOW_50_in_abstract_declarator_suffix1162)
                    if self.failed:
                        return 
                    self.following.append(self.FOLLOW_parameter_type_list_in_abstract_declarator_suffix1164)
                    self.parameter_type_list()
                    self.following.pop()
                    if self.failed:
                        return 
                    self.match(self.input, 51, self.FOLLOW_51_in_abstract_declarator_suffix1166)
                    if self.failed:
                        return 



            except RecognitionException, re:
                self.reportError(re)
                self.recover(self.input, re)
        finally:
            if self.backtracking > 0:
                self.memoize(self.input, 37, abstract_declarator_suffix_StartIndex)

            pass

        return 

    # $ANTLR end abstract_declarator_suffix


    # $ANTLR start initializer
    # C.g:290:1: initializer : ( assignment_expression | '{' initializer_list ( ',' )? '}' );
    def initializer(self, ):

        initializer_StartIndex = self.input.index()
        try:
            try:
                if self.backtracking > 0 and self.alreadyParsedRule(self.input, 38):
                    return 

                # C.g:291:2: ( assignment_expression | '{' initializer_list ( ',' )? '}' )
                alt55 = 2
                LA55_0 = self.input.LA(1)

                if ((IDENTIFIER <= LA55_0 <= FLOATING_POINT_LITERAL) or LA55_0 == 50 or LA55_0 == 55 or (57 <= LA55_0 <= 58) or (61 <= LA55_0 <= 63) or (66 <= LA55_0 <= 68)) :
                    alt55 = 1
                elif (LA55_0 == 40) :
                    alt55 = 2
                else:
                    if self.backtracking > 0:
                        self.failed = True
                        return 

                    nvae = NoViableAltException("290:1: initializer : ( assignment_expression | '{' initializer_list ( ',' )? '}' );", 55, 0, self.input)

                    raise nvae

                if alt55 == 1:
                    # C.g:291:4: assignment_expression
                    self.following.append(self.FOLLOW_assignment_expression_in_initializer1178)
                    self.assignment_expression()
                    self.following.pop()
                    if self.failed:
                        return 


                elif alt55 == 2:
                    # C.g:292:4: '{' initializer_list ( ',' )? '}'
                    self.match(self.input, 40, self.FOLLOW_40_in_initializer1183)
                    if self.failed:
                        return 
                    self.following.append(self.FOLLOW_initializer_list_in_initializer1185)
                    self.initializer_list()
                    self.following.pop()
                    if self.failed:
                        return 
                    # C.g:292:25: ( ',' )?
                    alt54 = 2
                    LA54_0 = self.input.LA(1)

                    if (LA54_0 == 25) :
                        alt54 = 1
                    if alt54 == 1:
                        # C.g:0:0: ','
                        self.match(self.input, 25, self.FOLLOW_25_in_initializer1187)
                        if self.failed:
                            return 



                    self.match(self.input, 41, self.FOLLOW_41_in_initializer1190)
                    if self.failed:
                        return 



            except RecognitionException, re:
                self.reportError(re)
                self.recover(self.input, re)
        finally:
            if self.backtracking > 0:
                self.memoize(self.input, 38, initializer_StartIndex)

            pass

        return 

    # $ANTLR end initializer


    # $ANTLR start initializer_list
    # C.g:295:1: initializer_list : initializer ( ',' initializer )* ;
    def initializer_list(self, ):

        initializer_list_StartIndex = self.input.index()
        try:
            try:
                if self.backtracking > 0 and self.alreadyParsedRule(self.input, 39):
                    return 

                # C.g:296:2: ( initializer ( ',' initializer )* )
                # C.g:296:4: initializer ( ',' initializer )*
                self.following.append(self.FOLLOW_initializer_in_initializer_list1201)
                self.initializer()
                self.following.pop()
                if self.failed:
                    return 
                # C.g:296:16: ( ',' initializer )*
                while True: #loop56
                    alt56 = 2
                    LA56_0 = self.input.LA(1)

                    if (LA56_0 == 25) :
                        LA56_1 = self.input.LA(2)

                        if ((IDENTIFIER <= LA56_1 <= FLOATING_POINT_LITERAL) or LA56_1 == 40 or LA56_1 == 50 or LA56_1 == 55 or (57 <= LA56_1 <= 58) or (61 <= LA56_1 <= 63) or (66 <= LA56_1 <= 68)) :
                            alt56 = 1




                    if alt56 == 1:
                        # C.g:296:17: ',' initializer
                        self.match(self.input, 25, self.FOLLOW_25_in_initializer_list1204)
                        if self.failed:
                            return 
                        self.following.append(self.FOLLOW_initializer_in_initializer_list1206)
                        self.initializer()
                        self.following.pop()
                        if self.failed:
                            return 


                    else:
                        break #loop56






            except RecognitionException, re:
                self.reportError(re)
                self.recover(self.input, re)
        finally:
            if self.backtracking > 0:
                self.memoize(self.input, 39, initializer_list_StartIndex)

            pass

        return 

    # $ANTLR end initializer_list


    # $ANTLR start argument_expression_list
    # C.g:301:1: argument_expression_list : assignment_expression ( ',' assignment_expression )* ;
    def argument_expression_list(self, ):

        argument_expression_list_StartIndex = self.input.index()
        try:
            try:
                if self.backtracking > 0 and self.alreadyParsedRule(self.input, 40):
                    return 

                # C.g:302:2: ( assignment_expression ( ',' assignment_expression )* )
                # C.g:302:6: assignment_expression ( ',' assignment_expression )*
                self.following.append(self.FOLLOW_assignment_expression_in_argument_expression_list1223)
                self.assignment_expression()
                self.following.pop()
                if self.failed:
                    return 
                # C.g:302:28: ( ',' assignment_expression )*
                while True: #loop57
                    alt57 = 2
                    LA57_0 = self.input.LA(1)

                    if (LA57_0 == 25) :
                        alt57 = 1


                    if alt57 == 1:
                        # C.g:302:29: ',' assignment_expression
                        self.match(self.input, 25, self.FOLLOW_25_in_argument_expression_list1226)
                        if self.failed:
                            return 
                        self.following.append(self.FOLLOW_assignment_expression_in_argument_expression_list1228)
                        self.assignment_expression()
                        self.following.pop()
                        if self.failed:
                            return 


                    else:
                        break #loop57






            except RecognitionException, re:
                self.reportError(re)
                self.recover(self.input, re)
        finally:
            if self.backtracking > 0:
                self.memoize(self.input, 40, argument_expression_list_StartIndex)

            pass

        return 

    # $ANTLR end argument_expression_list


    # $ANTLR start additive_expression
    # C.g:305:1: additive_expression : ( multiplicative_expression ) ( '+' multiplicative_expression | '-' multiplicative_expression )* ;
    def additive_expression(self, ):

        additive_expression_StartIndex = self.input.index()
        try:
            try:
                if self.backtracking > 0 and self.alreadyParsedRule(self.input, 41):
                    return 

                # C.g:306:2: ( ( multiplicative_expression ) ( '+' multiplicative_expression | '-' multiplicative_expression )* )
                # C.g:306:4: ( multiplicative_expression ) ( '+' multiplicative_expression | '-' multiplicative_expression )*
                # C.g:306:4: ( multiplicative_expression )
                # C.g:306:5: multiplicative_expression
                self.following.append(self.FOLLOW_multiplicative_expression_in_additive_expression1242)
                self.multiplicative_expression()
                self.following.pop()
                if self.failed:
                    return 



                # C.g:306:32: ( '+' multiplicative_expression | '-' multiplicative_expression )*
                while True: #loop58
                    alt58 = 3
                    LA58_0 = self.input.LA(1)

                    if (LA58_0 == 57) :
                        alt58 = 1
                    elif (LA58_0 == 58) :
                        alt58 = 2


                    if alt58 == 1:
                        # C.g:306:33: '+' multiplicative_expression
                        self.match(self.input, 57, self.FOLLOW_57_in_additive_expression1246)
                        if self.failed:
                            return 
                        self.following.append(self.FOLLOW_multiplicative_expression_in_additive_expression1248)
                        self.multiplicative_expression()
                        self.following.pop()
                        if self.failed:
                            return 


                    elif alt58 == 2:
                        # C.g:306:65: '-' multiplicative_expression
                        self.match(self.input, 58, self.FOLLOW_58_in_additive_expression1252)
                        if self.failed:
                            return 
                        self.following.append(self.FOLLOW_multiplicative_expression_in_additive_expression1254)
                        self.multiplicative_expression()
                        self.following.pop()
                        if self.failed:
                            return 


                    else:
                        break #loop58






            except RecognitionException, re:
                self.reportError(re)
                self.recover(self.input, re)
        finally:
            if self.backtracking > 0:
                self.memoize(self.input, 41, additive_expression_StartIndex)

            pass

        return 

    # $ANTLR end additive_expression


    # $ANTLR start multiplicative_expression
    # C.g:309:1: multiplicative_expression : ( cast_expression ) ( '*' cast_expression | '/' cast_expression | '%' cast_expression )* ;
    def multiplicative_expression(self, ):

        multiplicative_expression_StartIndex = self.input.index()
        try:
            try:
                if self.backtracking > 0 and self.alreadyParsedRule(self.input, 42):
                    return 

                # C.g:310:2: ( ( cast_expression ) ( '*' cast_expression | '/' cast_expression | '%' cast_expression )* )
                # C.g:310:4: ( cast_expression ) ( '*' cast_expression | '/' cast_expression | '%' cast_expression )*
                # C.g:310:4: ( cast_expression )
                # C.g:310:5: cast_expression
                self.following.append(self.FOLLOW_cast_expression_in_multiplicative_expression1268)
                self.cast_expression()
                self.following.pop()
                if self.failed:
                    return 



                # C.g:310:22: ( '*' cast_expression | '/' cast_expression | '%' cast_expression )*
                while True: #loop59
                    alt59 = 4
                    LA59 = self.input.LA(1)
                    if LA59 == 55:
                        alt59 = 1
                    elif LA59 == 59:
                        alt59 = 2
                    elif LA59 == 60:
                        alt59 = 3

                    if alt59 == 1:
                        # C.g:310:23: '*' cast_expression
                        self.match(self.input, 55, self.FOLLOW_55_in_multiplicative_expression1272)
                        if self.failed:
                            return 
                        self.following.append(self.FOLLOW_cast_expression_in_multiplicative_expression1274)
                        self.cast_expression()
                        self.following.pop()
                        if self.failed:
                            return 


                    elif alt59 == 2:
                        # C.g:310:45: '/' cast_expression
                        self.match(self.input, 59, self.FOLLOW_59_in_multiplicative_expression1278)
                        if self.failed:
                            return 
                        self.following.append(self.FOLLOW_cast_expression_in_multiplicative_expression1280)
                        self.cast_expression()
                        self.following.pop()
                        if self.failed:
                            return 


                    elif alt59 == 3:
                        # C.g:310:67: '%' cast_expression
                        self.match(self.input, 60, self.FOLLOW_60_in_multiplicative_expression1284)
                        if self.failed:
                            return 
                        self.following.append(self.FOLLOW_cast_expression_in_multiplicative_expression1286)
                        self.cast_expression()
                        self.following.pop()
                        if self.failed:
                            return 


                    else:
                        break #loop59






            except RecognitionException, re:
                self.reportError(re)
                self.recover(self.input, re)
        finally:
            if self.backtracking > 0:
                self.memoize(self.input, 42, multiplicative_expression_StartIndex)

            pass

        return 

    # $ANTLR end multiplicative_expression


    # $ANTLR start cast_expression
    # C.g:313:1: cast_expression : ( '(' type_name ')' cast_expression | unary_expression );
    def cast_expression(self, ):

        cast_expression_StartIndex = self.input.index()
        try:
            try:
                if self.backtracking > 0 and self.alreadyParsedRule(self.input, 43):
                    return 

                # C.g:314:2: ( '(' type_name ')' cast_expression | unary_expression )
                alt60 = 2
                LA60_0 = self.input.LA(1)

                if (LA60_0 == 50) :
                    LA60 = self.input.LA(2)
                    if LA60 == IDENTIFIER:
                        LA60_8 = self.input.LA(3)

                        if (self.synpred95()) :
                            alt60 = 1
                        elif (True) :
                            alt60 = 2
                        else:
                            if self.backtracking > 0:
                                self.failed = True
                                return 

                            nvae = NoViableAltException("313:1: cast_expression : ( '(' type_name ')' cast_expression | unary_expression );", 60, 8, self.input)

                            raise nvae

                    elif LA60 == HEX_LITERAL or LA60 == OCTAL_LITERAL or LA60 == DECIMAL_LITERAL or LA60 == CHARACTER_LITERAL or LA60 == STRING_LITERAL or LA60 == FLOATING_POINT_LITERAL or LA60 == 50 or LA60 == 55 or LA60 == 57 or LA60 == 58 or LA60 == 61 or LA60 == 62 or LA60 == 63 or LA60 == 66 or LA60 == 67 or LA60 == 68:
                        alt60 = 2
                    elif LA60 == 31 or LA60 == 32 or LA60 == 33 or LA60 == 34 or LA60 == 35 or LA60 == 36 or LA60 == 37 or LA60 == 38 or LA60 == 39 or LA60 == 42 or LA60 == 43 or LA60 == 45 or LA60 == 46 or LA60 == 47 or LA60 == 48 or LA60 == 49:
                        alt60 = 1
                    else:
                        if self.backtracking > 0:
                            self.failed = True
                            return 

                        nvae = NoViableAltException("313:1: cast_expression : ( '(' type_name ')' cast_expression | unary_expression );", 60, 1, self.input)

                        raise nvae

                elif ((IDENTIFIER <= LA60_0 <= FLOATING_POINT_LITERAL) or LA60_0 == 55 or (57 <= LA60_0 <= 58) or (61 <= LA60_0 <= 63) or (66 <= LA60_0 <= 68)) :
                    alt60 = 2
                else:
                    if self.backtracking > 0:
                        self.failed = True
                        return 

                    nvae = NoViableAltException("313:1: cast_expression : ( '(' type_name ')' cast_expression | unary_expression );", 60, 0, self.input)

                    raise nvae

                if alt60 == 1:
                    # C.g:314:4: '(' type_name ')' cast_expression
                    self.match(self.input, 50, self.FOLLOW_50_in_cast_expression1299)
                    if self.failed:
                        return 
                    self.following.append(self.FOLLOW_type_name_in_cast_expression1301)
                    self.type_name()
                    self.following.pop()
                    if self.failed:
                        return 
                    self.match(self.input, 51, self.FOLLOW_51_in_cast_expression1303)
                    if self.failed:
                        return 
                    self.following.append(self.FOLLOW_cast_expression_in_cast_expression1305)
                    self.cast_expression()
                    self.following.pop()
                    if self.failed:
                        return 


                elif alt60 == 2:
                    # C.g:315:4: unary_expression
                    self.following.append(self.FOLLOW_unary_expression_in_cast_expression1310)
                    self.unary_expression()
                    self.following.pop()
                    if self.failed:
                        return 



            except RecognitionException, re:
                self.reportError(re)
                self.recover(self.input, re)
        finally:
            if self.backtracking > 0:
                self.memoize(self.input, 43, cast_expression_StartIndex)

            pass

        return 

    # $ANTLR end cast_expression


    # $ANTLR start unary_expression
    # C.g:318:1: unary_expression : ( postfix_expression | '++' unary_expression | '--' unary_expression | unary_operator cast_expression | 'sizeof' unary_expression | 'sizeof' '(' type_name ')' );
    def unary_expression(self, ):

        unary_expression_StartIndex = self.input.index()
        try:
            try:
                if self.backtracking > 0 and self.alreadyParsedRule(self.input, 44):
                    return 

                # C.g:319:2: ( postfix_expression | '++' unary_expression | '--' unary_expression | unary_operator cast_expression | 'sizeof' unary_expression | 'sizeof' '(' type_name ')' )
                alt61 = 6
                LA61 = self.input.LA(1)
                if LA61 == IDENTIFIER or LA61 == HEX_LITERAL or LA61 == OCTAL_LITERAL or LA61 == DECIMAL_LITERAL or LA61 == CHARACTER_LITERAL or LA61 == STRING_LITERAL or LA61 == FLOATING_POINT_LITERAL or LA61 == 50:
                    alt61 = 1
                elif LA61 == 61:
                    alt61 = 2
                elif LA61 == 62:
                    alt61 = 3
                elif LA61 == 55 or LA61 == 57 or LA61 == 58 or LA61 == 66 or LA61 == 67 or LA61 == 68:
                    alt61 = 4
                elif LA61 == 63:
                    LA61_7 = self.input.LA(2)

                    if (LA61_7 == 50) :
                        LA61_8 = self.input.LA(3)

                        if (self.synpred100()) :
                            alt61 = 5
                        elif (True) :
                            alt61 = 6
                        else:
                            if self.backtracking > 0:
                                self.failed = True
                                return 

                            nvae = NoViableAltException("318:1: unary_expression : ( postfix_expression | '++' unary_expression | '--' unary_expression | unary_operator cast_expression | 'sizeof' unary_expression | 'sizeof' '(' type_name ')' );", 61, 8, self.input)

                            raise nvae

                    elif ((IDENTIFIER <= LA61_7 <= FLOATING_POINT_LITERAL) or LA61_7 == 55 or (57 <= LA61_7 <= 58) or (61 <= LA61_7 <= 63) or (66 <= LA61_7 <= 68)) :
                        alt61 = 5
                    else:
                        if self.backtracking > 0:
                            self.failed = True
                            return 

                        nvae = NoViableAltException("318:1: unary_expression : ( postfix_expression | '++' unary_expression | '--' unary_expression | unary_operator cast_expression | 'sizeof' unary_expression | 'sizeof' '(' type_name ')' );", 61, 7, self.input)

                        raise nvae

                else:
                    if self.backtracking > 0:
                        self.failed = True
                        return 

                    nvae = NoViableAltException("318:1: unary_expression : ( postfix_expression | '++' unary_expression | '--' unary_expression | unary_operator cast_expression | 'sizeof' unary_expression | 'sizeof' '(' type_name ')' );", 61, 0, self.input)

                    raise nvae

                if alt61 == 1:
                    # C.g:319:4: postfix_expression
                    self.following.append(self.FOLLOW_postfix_expression_in_unary_expression1321)
                    self.postfix_expression()
                    self.following.pop()
                    if self.failed:
                        return 


                elif alt61 == 2:
                    # C.g:320:4: '++' unary_expression
                    self.match(self.input, 61, self.FOLLOW_61_in_unary_expression1326)
                    if self.failed:
                        return 
                    self.following.append(self.FOLLOW_unary_expression_in_unary_expression1328)
                    self.unary_expression()
                    self.following.pop()
                    if self.failed:
                        return 


                elif alt61 == 3:
                    # C.g:321:4: '--' unary_expression
                    self.match(self.input, 62, self.FOLLOW_62_in_unary_expression1333)
                    if self.failed:
                        return 
                    self.following.append(self.FOLLOW_unary_expression_in_unary_expression1335)
                    self.unary_expression()
                    self.following.pop()
                    if self.failed:
                        return 


                elif alt61 == 4:
                    # C.g:322:4: unary_operator cast_expression
                    self.following.append(self.FOLLOW_unary_operator_in_unary_expression1340)
                    self.unary_operator()
                    self.following.pop()
                    if self.failed:
                        return 
                    self.following.append(self.FOLLOW_cast_expression_in_unary_expression1342)
                    self.cast_expression()
                    self.following.pop()
                    if self.failed:
                        return 


                elif alt61 == 5:
                    # C.g:323:4: 'sizeof' unary_expression
                    self.match(self.input, 63, self.FOLLOW_63_in_unary_expression1347)
                    if self.failed:
                        return 
                    self.following.append(self.FOLLOW_unary_expression_in_unary_expression1349)
                    self.unary_expression()
                    self.following.pop()
                    if self.failed:
                        return 


                elif alt61 == 6:
                    # C.g:324:4: 'sizeof' '(' type_name ')'
                    self.match(self.input, 63, self.FOLLOW_63_in_unary_expression1354)
                    if self.failed:
                        return 
                    self.match(self.input, 50, self.FOLLOW_50_in_unary_expression1356)
                    if self.failed:
                        return 
                    self.following.append(self.FOLLOW_type_name_in_unary_expression1358)
                    self.type_name()
                    self.following.pop()
                    if self.failed:
                        return 
                    self.match(self.input, 51, self.FOLLOW_51_in_unary_expression1360)
                    if self.failed:
                        return 



            except RecognitionException, re:
                self.reportError(re)
                self.recover(self.input, re)
        finally:
            if self.backtracking > 0:
                self.memoize(self.input, 44, unary_expression_StartIndex)

            pass

        return 

    # $ANTLR end unary_expression


    # $ANTLR start postfix_expression
    # C.g:327:1: postfix_expression : primary_expression ( '[' expression ']' | '(' ')' | '(' argument_expression_list ')' | '.' IDENTIFIER | '->' IDENTIFIER | '++' | '--' )* ;
    def postfix_expression(self, ):

        postfix_expression_StartIndex = self.input.index()
        try:
            try:
                if self.backtracking > 0 and self.alreadyParsedRule(self.input, 45):
                    return 

                # C.g:328:2: ( primary_expression ( '[' expression ']' | '(' ')' | '(' argument_expression_list ')' | '.' IDENTIFIER | '->' IDENTIFIER | '++' | '--' )* )
                # C.g:328:6: primary_expression ( '[' expression ']' | '(' ')' | '(' argument_expression_list ')' | '.' IDENTIFIER | '->' IDENTIFIER | '++' | '--' )*
                self.following.append(self.FOLLOW_primary_expression_in_postfix_expression1373)
                self.primary_expression()
                self.following.pop()
                if self.failed:
                    return 
                # C.g:329:9: ( '[' expression ']' | '(' ')' | '(' argument_expression_list ')' | '.' IDENTIFIER | '->' IDENTIFIER | '++' | '--' )*
                while True: #loop62
                    alt62 = 8
                    LA62 = self.input.LA(1)
                    if LA62 == 52:
                        alt62 = 1
                    elif LA62 == 50:
                        LA62_25 = self.input.LA(2)

                        if (LA62_25 == 51) :
                            alt62 = 2
                        elif ((IDENTIFIER <= LA62_25 <= FLOATING_POINT_LITERAL) or LA62_25 == 50 or LA62_25 == 55 or (57 <= LA62_25 <= 58) or (61 <= LA62_25 <= 63) or (66 <= LA62_25 <= 68)) :
                            alt62 = 3


                    elif LA62 == 64:
                        alt62 = 4
                    elif LA62 == 65:
                        alt62 = 5
                    elif LA62 == 61:
                        alt62 = 6
                    elif LA62 == 62:
                        alt62 = 7

                    if alt62 == 1:
                        # C.g:329:13: '[' expression ']'
                        self.match(self.input, 52, self.FOLLOW_52_in_postfix_expression1387)
                        if self.failed:
                            return 
                        self.following.append(self.FOLLOW_expression_in_postfix_expression1389)
                        self.expression()
                        self.following.pop()
                        if self.failed:
                            return 
                        self.match(self.input, 53, self.FOLLOW_53_in_postfix_expression1391)
                        if self.failed:
                            return 


                    elif alt62 == 2:
                        # C.g:330:13: '(' ')'
                        self.match(self.input, 50, self.FOLLOW_50_in_postfix_expression1405)
                        if self.failed:
                            return 
                        self.match(self.input, 51, self.FOLLOW_51_in_postfix_expression1407)
                        if self.failed:
                            return 


                    elif alt62 == 3:
                        # C.g:331:13: '(' argument_expression_list ')'
                        self.match(self.input, 50, self.FOLLOW_50_in_postfix_expression1421)
                        if self.failed:
                            return 
                        self.following.append(self.FOLLOW_argument_expression_list_in_postfix_expression1423)
                        self.argument_expression_list()
                        self.following.pop()
                        if self.failed:
                            return 
                        self.match(self.input, 51, self.FOLLOW_51_in_postfix_expression1425)
                        if self.failed:
                            return 


                    elif alt62 == 4:
                        # C.g:332:13: '.' IDENTIFIER
                        self.match(self.input, 64, self.FOLLOW_64_in_postfix_expression1439)
                        if self.failed:
                            return 
                        self.match(self.input, IDENTIFIER, self.FOLLOW_IDENTIFIER_in_postfix_expression1441)
                        if self.failed:
                            return 


                    elif alt62 == 5:
                        # C.g:333:13: '->' IDENTIFIER
                        self.match(self.input, 65, self.FOLLOW_65_in_postfix_expression1455)
                        if self.failed:
                            return 
                        self.match(self.input, IDENTIFIER, self.FOLLOW_IDENTIFIER_in_postfix_expression1457)
                        if self.failed:
                            return 


                    elif alt62 == 6:
                        # C.g:334:13: '++'
                        self.match(self.input, 61, self.FOLLOW_61_in_postfix_expression1471)
                        if self.failed:
                            return 


                    elif alt62 == 7:
                        # C.g:335:13: '--'
                        self.match(self.input, 62, self.FOLLOW_62_in_postfix_expression1485)
                        if self.failed:
                            return 


                    else:
                        break #loop62






            except RecognitionException, re:
                self.reportError(re)
                self.recover(self.input, re)
        finally:
            if self.backtracking > 0:
                self.memoize(self.input, 45, postfix_expression_StartIndex)

            pass

        return 

    # $ANTLR end postfix_expression


    # $ANTLR start unary_operator
    # C.g:339:1: unary_operator : ( '&' | '*' | '+' | '-' | '~' | '!' );
    def unary_operator(self, ):

        unary_operator_StartIndex = self.input.index()
        try:
            try:
                if self.backtracking > 0 and self.alreadyParsedRule(self.input, 46):
                    return 

                # C.g:340:2: ( '&' | '*' | '+' | '-' | '~' | '!' )
                # C.g:
                if self.input.LA(1) == 55 or (57 <= self.input.LA(1) <= 58) or (66 <= self.input.LA(1) <= 68):
                    self.input.consume();
                    self.errorRecovery = False
                    self.failed = False

                else:
                    if self.backtracking > 0:
                        self.failed = True
                        return 

                    mse = MismatchedSetException(None, self.input)
                    self.recoverFromMismatchedSet(
                        self.input, mse, self.FOLLOW_set_in_unary_operator0
                        )
                    raise mse






            except RecognitionException, re:
                self.reportError(re)
                self.recover(self.input, re)
        finally:
            if self.backtracking > 0:
                self.memoize(self.input, 46, unary_operator_StartIndex)

            pass

        return 

    # $ANTLR end unary_operator


    # $ANTLR start primary_expression
    # C.g:348:1: primary_expression : ( IDENTIFIER | constant | '(' expression ')' );
    def primary_expression(self, ):

        primary_expression_StartIndex = self.input.index()
        try:
            try:
                if self.backtracking > 0 and self.alreadyParsedRule(self.input, 47):
                    return 

                # C.g:349:2: ( IDENTIFIER | constant | '(' expression ')' )
                alt63 = 3
                LA63 = self.input.LA(1)
                if LA63 == IDENTIFIER:
                    alt63 = 1
                elif LA63 == HEX_LITERAL or LA63 == OCTAL_LITERAL or LA63 == DECIMAL_LITERAL or LA63 == CHARACTER_LITERAL or LA63 == STRING_LITERAL or LA63 == FLOATING_POINT_LITERAL:
                    alt63 = 2
                elif LA63 == 50:
                    alt63 = 3
                else:
                    if self.backtracking > 0:
                        self.failed = True
                        return 

                    nvae = NoViableAltException("348:1: primary_expression : ( IDENTIFIER | constant | '(' expression ')' );", 63, 0, self.input)

                    raise nvae

                if alt63 == 1:
                    # C.g:349:4: IDENTIFIER
                    self.match(self.input, IDENTIFIER, self.FOLLOW_IDENTIFIER_in_primary_expression1543)
                    if self.failed:
                        return 


                elif alt63 == 2:
                    # C.g:350:4: constant
                    self.following.append(self.FOLLOW_constant_in_primary_expression1548)
                    self.constant()
                    self.following.pop()
                    if self.failed:
                        return 


                elif alt63 == 3:
                    # C.g:351:4: '(' expression ')'
                    self.match(self.input, 50, self.FOLLOW_50_in_primary_expression1553)
                    if self.failed:
                        return 
                    self.following.append(self.FOLLOW_expression_in_primary_expression1555)
                    self.expression()
                    self.following.pop()
                    if self.failed:
                        return 
                    self.match(self.input, 51, self.FOLLOW_51_in_primary_expression1557)
                    if self.failed:
                        return 



            except RecognitionException, re:
                self.reportError(re)
                self.recover(self.input, re)
        finally:
            if self.backtracking > 0:
                self.memoize(self.input, 47, primary_expression_StartIndex)

            pass

        return 

    # $ANTLR end primary_expression


    # $ANTLR start constant
    # C.g:354:1: constant : ( HEX_LITERAL | OCTAL_LITERAL | DECIMAL_LITERAL | CHARACTER_LITERAL | STRING_LITERAL | FLOATING_POINT_LITERAL );
    def constant(self, ):

        constant_StartIndex = self.input.index()
        try:
            try:
                if self.backtracking > 0 and self.alreadyParsedRule(self.input, 48):
                    return 

                # C.g:355:5: ( HEX_LITERAL | OCTAL_LITERAL | DECIMAL_LITERAL | CHARACTER_LITERAL | STRING_LITERAL | FLOATING_POINT_LITERAL )
                # C.g:
                if (HEX_LITERAL <= self.input.LA(1) <= FLOATING_POINT_LITERAL):
                    self.input.consume();
                    self.errorRecovery = False
                    self.failed = False

                else:
                    if self.backtracking > 0:
                        self.failed = True
                        return 

                    mse = MismatchedSetException(None, self.input)
                    self.recoverFromMismatchedSet(
                        self.input, mse, self.FOLLOW_set_in_constant0
                        )
                    raise mse






            except RecognitionException, re:
                self.reportError(re)
                self.recover(self.input, re)
        finally:
            if self.backtracking > 0:
                self.memoize(self.input, 48, constant_StartIndex)

            pass

        return 

    # $ANTLR end constant


    # $ANTLR start expression
    # C.g:365:1: expression : assignment_expression ( ',' assignment_expression )* ;
    def expression(self, ):

        expression_StartIndex = self.input.index()
        try:
            try:
                if self.backtracking > 0 and self.alreadyParsedRule(self.input, 49):
                    return 

                # C.g:366:2: ( assignment_expression ( ',' assignment_expression )* )
                # C.g:366:4: assignment_expression ( ',' assignment_expression )*
                self.following.append(self.FOLLOW_assignment_expression_in_expression1632)
                self.assignment_expression()
                self.following.pop()
                if self.failed:
                    return 
                # C.g:366:26: ( ',' assignment_expression )*
                while True: #loop64
                    alt64 = 2
                    LA64_0 = self.input.LA(1)

                    if (LA64_0 == 25) :
                        LA64 = self.input.LA(2)
                        if LA64 == IDENTIFIER:
                            LA64_7 = self.input.LA(3)

                            if (self.synpred120()) :
                                alt64 = 1


                        elif LA64 == HEX_LITERAL or LA64 == OCTAL_LITERAL or LA64 == DECIMAL_LITERAL or LA64 == CHARACTER_LITERAL or LA64 == STRING_LITERAL or LA64 == FLOATING_POINT_LITERAL:
                            LA64_8 = self.input.LA(3)

                            if (self.synpred120()) :
                                alt64 = 1


                        elif LA64 == 50:
                            LA64_9 = self.input.LA(3)

                            if (self.synpred120()) :
                                alt64 = 1


                        elif LA64 == 61:
                            LA64_10 = self.input.LA(3)

                            if (self.synpred120()) :
                                alt64 = 1


                        elif LA64 == 62:
                            LA64_11 = self.input.LA(3)

                            if (self.synpred120()) :
                                alt64 = 1


                        elif LA64 == 55 or LA64 == 57 or LA64 == 58 or LA64 == 66 or LA64 == 67 or LA64 == 68:
                            LA64_12 = self.input.LA(3)

                            if (self.synpred120()) :
                                alt64 = 1


                        elif LA64 == 63:
                            LA64_13 = self.input.LA(3)

                            if (self.synpred120()) :
                                alt64 = 1





                    if alt64 == 1:
                        # C.g:366:27: ',' assignment_expression
                        self.match(self.input, 25, self.FOLLOW_25_in_expression1635)
                        if self.failed:
                            return 
                        self.following.append(self.FOLLOW_assignment_expression_in_expression1637)
                        self.assignment_expression()
                        self.following.pop()
                        if self.failed:
                            return 


                    else:
                        break #loop64






            except RecognitionException, re:
                self.reportError(re)
                self.recover(self.input, re)
        finally:
            if self.backtracking > 0:
                self.memoize(self.input, 49, expression_StartIndex)

            pass

        return 

    # $ANTLR end expression


    # $ANTLR start constant_expression
    # C.g:369:1: constant_expression : conditional_expression ;
    def constant_expression(self, ):

        constant_expression_StartIndex = self.input.index()
        try:
            try:
                if self.backtracking > 0 and self.alreadyParsedRule(self.input, 50):
                    return 

                # C.g:370:2: ( conditional_expression )
                # C.g:370:4: conditional_expression
                self.following.append(self.FOLLOW_conditional_expression_in_constant_expression1650)
                self.conditional_expression()
                self.following.pop()
                if self.failed:
                    return 




            except RecognitionException, re:
                self.reportError(re)
                self.recover(self.input, re)
        finally:
            if self.backtracking > 0:
                self.memoize(self.input, 50, constant_expression_StartIndex)

            pass

        return 

    # $ANTLR end constant_expression


    # $ANTLR start assignment_expression
    # C.g:373:1: assignment_expression : ( lvalue assignment_operator assignment_expression | conditional_expression );
    def assignment_expression(self, ):

        assignment_expression_StartIndex = self.input.index()
        try:
            try:
                if self.backtracking > 0 and self.alreadyParsedRule(self.input, 51):
                    return 

                # C.g:374:2: ( lvalue assignment_operator assignment_expression | conditional_expression )
                alt65 = 2
                LA65 = self.input.LA(1)
                if LA65 == IDENTIFIER:
                    LA65 = self.input.LA(2)
                    if LA65 == 52:
                        LA65_8 = self.input.LA(3)

                        if (self.synpred121()) :
                            alt65 = 1
                        elif (True) :
                            alt65 = 2
                        else:
                            if self.backtracking > 0:
                                self.failed = True
                                return 

                            nvae = NoViableAltException("373:1: assignment_expression : ( lvalue assignment_operator assignment_expression | conditional_expression );", 65, 8, self.input)

                            raise nvae

                    elif LA65 == 50:
                        LA65_9 = self.input.LA(3)

                        if (self.synpred121()) :
                            alt65 = 1
                        elif (True) :
                            alt65 = 2
                        else:
                            if self.backtracking > 0:
                                self.failed = True
                                return 

                            nvae = NoViableAltException("373:1: assignment_expression : ( lvalue assignment_operator assignment_expression | conditional_expression );", 65, 9, self.input)

                            raise nvae

                    elif LA65 == 64:
                        LA65_10 = self.input.LA(3)

                        if (self.synpred121()) :
                            alt65 = 1
                        elif (True) :
                            alt65 = 2
                        else:
                            if self.backtracking > 0:
                                self.failed = True
                                return 

                            nvae = NoViableAltException("373:1: assignment_expression : ( lvalue assignment_operator assignment_expression | conditional_expression );", 65, 10, self.input)

                            raise nvae

                    elif LA65 == 65:
                        LA65_11 = self.input.LA(3)

                        if (self.synpred121()) :
                            alt65 = 1
                        elif (True) :
                            alt65 = 2
                        else:
                            if self.backtracking > 0:
                                self.failed = True
                                return 

                            nvae = NoViableAltException("373:1: assignment_expression : ( lvalue assignment_operator assignment_expression | conditional_expression );", 65, 11, self.input)

                            raise nvae

                    elif LA65 == 61:
                        LA65_12 = self.input.LA(3)

                        if (self.synpred121()) :
                            alt65 = 1
                        elif (True) :
                            alt65 = 2
                        else:
                            if self.backtracking > 0:
                                self.failed = True
                                return 

                            nvae = NoViableAltException("373:1: assignment_expression : ( lvalue assignment_operator assignment_expression | conditional_expression );", 65, 12, self.input)

                            raise nvae

                    elif LA65 == 62:
                        LA65_13 = self.input.LA(3)

                        if (self.synpred121()) :
                            alt65 = 1
                        elif (True) :
                            alt65 = 2
                        else:
                            if self.backtracking > 0:
                                self.failed = True
                                return 

                            nvae = NoViableAltException("373:1: assignment_expression : ( lvalue assignment_operator assignment_expression | conditional_expression );", 65, 13, self.input)

                            raise nvae

                    elif LA65 == EOF or LA65 == 24 or LA65 == 25 or LA65 == 41 or LA65 == 44 or LA65 == 51 or LA65 == 53 or LA65 == 54 or LA65 == 55 or LA65 == 57 or LA65 == 58 or LA65 == 59 or LA65 == 60 or LA65 == 66 or LA65 == 79 or LA65 == 80 or LA65 == 81 or LA65 == 82 or LA65 == 83 or LA65 == 84 or LA65 == 85 or LA65 == 86 or LA65 == 87 or LA65 == 88 or LA65 == 89 or LA65 == 90 or LA65 == 91:
                        alt65 = 2
                    elif LA65 == 26 or LA65 == 69 or LA65 == 70 or LA65 == 71 or LA65 == 72 or LA65 == 73 or LA65 == 74 or LA65 == 75 or LA65 == 76 or LA65 == 77 or LA65 == 78:
                        alt65 = 1
                    else:
                        if self.backtracking > 0:
                            self.failed = True
                            return 

                        nvae = NoViableAltException("373:1: assignment_expression : ( lvalue assignment_operator assignment_expression | conditional_expression );", 65, 1, self.input)

                        raise nvae

                elif LA65 == HEX_LITERAL or LA65 == OCTAL_LITERAL or LA65 == DECIMAL_LITERAL or LA65 == CHARACTER_LITERAL or LA65 == STRING_LITERAL or LA65 == FLOATING_POINT_LITERAL:
                    LA65 = self.input.LA(2)
                    if LA65 == 52:
                        LA65_37 = self.input.LA(3)

                        if (self.synpred121()) :
                            alt65 = 1
                        elif (True) :
                            alt65 = 2
                        else:
                            if self.backtracking > 0:
                                self.failed = True
                                return 

                            nvae = NoViableAltException("373:1: assignment_expression : ( lvalue assignment_operator assignment_expression | conditional_expression );", 65, 37, self.input)

                            raise nvae

                    elif LA65 == 50:
                        LA65_38 = self.input.LA(3)

                        if (self.synpred121()) :
                            alt65 = 1
                        elif (True) :
                            alt65 = 2
                        else:
                            if self.backtracking > 0:
                                self.failed = True
                                return 

                            nvae = NoViableAltException("373:1: assignment_expression : ( lvalue assignment_operator assignment_expression | conditional_expression );", 65, 38, self.input)

                            raise nvae

                    elif LA65 == 64:
                        LA65_39 = self.input.LA(3)

                        if (self.synpred121()) :
                            alt65 = 1
                        elif (True) :
                            alt65 = 2
                        else:
                            if self.backtracking > 0:
                                self.failed = True
                                return 

                            nvae = NoViableAltException("373:1: assignment_expression : ( lvalue assignment_operator assignment_expression | conditional_expression );", 65, 39, self.input)

                            raise nvae

                    elif LA65 == 65:
                        LA65_40 = self.input.LA(3)

                        if (self.synpred121()) :
                            alt65 = 1
                        elif (True) :
                            alt65 = 2
                        else:
                            if self.backtracking > 0:
                                self.failed = True
                                return 

                            nvae = NoViableAltException("373:1: assignment_expression : ( lvalue assignment_operator assignment_expression | conditional_expression );", 65, 40, self.input)

                            raise nvae

                    elif LA65 == 61:
                        LA65_41 = self.input.LA(3)

                        if (self.synpred121()) :
                            alt65 = 1
                        elif (True) :
                            alt65 = 2
                        else:
                            if self.backtracking > 0:
                                self.failed = True
                                return 

                            nvae = NoViableAltException("373:1: assignment_expression : ( lvalue assignment_operator assignment_expression | conditional_expression );", 65, 41, self.input)

                            raise nvae

                    elif LA65 == 62:
                        LA65_42 = self.input.LA(3)

                        if (self.synpred121()) :
                            alt65 = 1
                        elif (True) :
                            alt65 = 2
                        else:
                            if self.backtracking > 0:
                                self.failed = True
                                return 

                            nvae = NoViableAltException("373:1: assignment_expression : ( lvalue assignment_operator assignment_expression | conditional_expression );", 65, 42, self.input)

                            raise nvae

                    elif LA65 == 26 or LA65 == 69 or LA65 == 70 or LA65 == 71 or LA65 == 72 or LA65 == 73 or LA65 == 74 or LA65 == 75 or LA65 == 76 or LA65 == 77 or LA65 == 78:
                        alt65 = 1
                    elif LA65 == EOF or LA65 == 24 or LA65 == 25 or LA65 == 41 or LA65 == 44 or LA65 == 51 or LA65 == 53 or LA65 == 54 or LA65 == 55 or LA65 == 57 or LA65 == 58 or LA65 == 59 or LA65 == 60 or LA65 == 66 or LA65 == 79 or LA65 == 80 or LA65 == 81 or LA65 == 82 or LA65 == 83 or LA65 == 84 or LA65 == 85 or LA65 == 86 or LA65 == 87 or LA65 == 88 or LA65 == 89 or LA65 == 90 or LA65 == 91:
                        alt65 = 2
                    else:
                        if self.backtracking > 0:
                            self.failed = True
                            return 

                        nvae = NoViableAltException("373:1: assignment_expression : ( lvalue assignment_operator assignment_expression | conditional_expression );", 65, 2, self.input)

                        raise nvae

                elif LA65 == 50:
                    LA65 = self.input.LA(2)
                    if LA65 == IDENTIFIER:
                        LA65_66 = self.input.LA(3)

                        if (self.synpred121()) :
                            alt65 = 1
                        elif (True) :
                            alt65 = 2
                        else:
                            if self.backtracking > 0:
                                self.failed = True
                                return 

                            nvae = NoViableAltException("373:1: assignment_expression : ( lvalue assignment_operator assignment_expression | conditional_expression );", 65, 66, self.input)

                            raise nvae

                    elif LA65 == HEX_LITERAL or LA65 == OCTAL_LITERAL or LA65 == DECIMAL_LITERAL or LA65 == CHARACTER_LITERAL or LA65 == STRING_LITERAL or LA65 == FLOATING_POINT_LITERAL:
                        LA65_67 = self.input.LA(3)

                        if (self.synpred121()) :
                            alt65 = 1
                        elif (True) :
                            alt65 = 2
                        else:
                            if self.backtracking > 0:
                                self.failed = True
                                return 

                            nvae = NoViableAltException("373:1: assignment_expression : ( lvalue assignment_operator assignment_expression | conditional_expression );", 65, 67, self.input)

                            raise nvae

                    elif LA65 == 50:
                        LA65_68 = self.input.LA(3)

                        if (self.synpred121()) :
                            alt65 = 1
                        elif (True) :
                            alt65 = 2
                        else:
                            if self.backtracking > 0:
                                self.failed = True
                                return 

                            nvae = NoViableAltException("373:1: assignment_expression : ( lvalue assignment_operator assignment_expression | conditional_expression );", 65, 68, self.input)

                            raise nvae

                    elif LA65 == 61:
                        LA65_69 = self.input.LA(3)

                        if (self.synpred121()) :
                            alt65 = 1
                        elif (True) :
                            alt65 = 2
                        else:
                            if self.backtracking > 0:
                                self.failed = True
                                return 

                            nvae = NoViableAltException("373:1: assignment_expression : ( lvalue assignment_operator assignment_expression | conditional_expression );", 65, 69, self.input)

                            raise nvae

                    elif LA65 == 62:
                        LA65_70 = self.input.LA(3)

                        if (self.synpred121()) :
                            alt65 = 1
                        elif (True) :
                            alt65 = 2
                        else:
                            if self.backtracking > 0:
                                self.failed = True
                                return 

                            nvae = NoViableAltException("373:1: assignment_expression : ( lvalue assignment_operator assignment_expression | conditional_expression );", 65, 70, self.input)

                            raise nvae

                    elif LA65 == 55 or LA65 == 57 or LA65 == 58 or LA65 == 66 or LA65 == 67 or LA65 == 68:
                        LA65_71 = self.input.LA(3)

                        if (self.synpred121()) :
                            alt65 = 1
                        elif (True) :
                            alt65 = 2
                        else:
                            if self.backtracking > 0:
                                self.failed = True
                                return 

                            nvae = NoViableAltException("373:1: assignment_expression : ( lvalue assignment_operator assignment_expression | conditional_expression );", 65, 71, self.input)

                            raise nvae

                    elif LA65 == 63:
                        LA65_72 = self.input.LA(3)

                        if (self.synpred121()) :
                            alt65 = 1
                        elif (True) :
                            alt65 = 2
                        else:
                            if self.backtracking > 0:
                                self.failed = True
                                return 

                            nvae = NoViableAltException("373:1: assignment_expression : ( lvalue assignment_operator assignment_expression | conditional_expression );", 65, 72, self.input)

                            raise nvae

                    elif LA65 == 31 or LA65 == 32 or LA65 == 33 or LA65 == 34 or LA65 == 35 or LA65 == 36 or LA65 == 37 or LA65 == 38 or LA65 == 39 or LA65 == 42 or LA65 == 43 or LA65 == 45 or LA65 == 46 or LA65 == 47 or LA65 == 48 or LA65 == 49:
                        alt65 = 2
                    else:
                        if self.backtracking > 0:
                            self.failed = True
                            return 

                        nvae = NoViableAltException("373:1: assignment_expression : ( lvalue assignment_operator assignment_expression | conditional_expression );", 65, 3, self.input)

                        raise nvae

                elif LA65 == 61:
                    LA65 = self.input.LA(2)
                    if LA65 == IDENTIFIER:
                        LA65_85 = self.input.LA(3)

                        if (self.synpred121()) :
                            alt65 = 1
                        elif (True) :
                            alt65 = 2
                        else:
                            if self.backtracking > 0:
                                self.failed = True
                                return 

                            nvae = NoViableAltException("373:1: assignment_expression : ( lvalue assignment_operator assignment_expression | conditional_expression );", 65, 85, self.input)

                            raise nvae

                    elif LA65 == HEX_LITERAL or LA65 == OCTAL_LITERAL or LA65 == DECIMAL_LITERAL or LA65 == CHARACTER_LITERAL or LA65 == STRING_LITERAL or LA65 == FLOATING_POINT_LITERAL:
                        LA65_86 = self.input.LA(3)

                        if (self.synpred121()) :
                            alt65 = 1
                        elif (True) :
                            alt65 = 2
                        else:
                            if self.backtracking > 0:
                                self.failed = True
                                return 

                            nvae = NoViableAltException("373:1: assignment_expression : ( lvalue assignment_operator assignment_expression | conditional_expression );", 65, 86, self.input)

                            raise nvae

                    elif LA65 == 50:
                        LA65_87 = self.input.LA(3)

                        if (self.synpred121()) :
                            alt65 = 1
                        elif (True) :
                            alt65 = 2
                        else:
                            if self.backtracking > 0:
                                self.failed = True
                                return 

                            nvae = NoViableAltException("373:1: assignment_expression : ( lvalue assignment_operator assignment_expression | conditional_expression );", 65, 87, self.input)

                            raise nvae

                    elif LA65 == 61:
                        LA65_88 = self.input.LA(3)

                        if (self.synpred121()) :
                            alt65 = 1
                        elif (True) :
                            alt65 = 2
                        else:
                            if self.backtracking > 0:
                                self.failed = True
                                return 

                            nvae = NoViableAltException("373:1: assignment_expression : ( lvalue assignment_operator assignment_expression | conditional_expression );", 65, 88, self.input)

                            raise nvae

                    elif LA65 == 62:
                        LA65_89 = self.input.LA(3)

                        if (self.synpred121()) :
                            alt65 = 1
                        elif (True) :
                            alt65 = 2
                        else:
                            if self.backtracking > 0:
                                self.failed = True
                                return 

                            nvae = NoViableAltException("373:1: assignment_expression : ( lvalue assignment_operator assignment_expression | conditional_expression );", 65, 89, self.input)

                            raise nvae

                    elif LA65 == 55 or LA65 == 57 or LA65 == 58 or LA65 == 66 or LA65 == 67 or LA65 == 68:
                        LA65_90 = self.input.LA(3)

                        if (self.synpred121()) :
                            alt65 = 1
                        elif (True) :
                            alt65 = 2
                        else:
                            if self.backtracking > 0:
                                self.failed = True
                                return 

                            nvae = NoViableAltException("373:1: assignment_expression : ( lvalue assignment_operator assignment_expression | conditional_expression );", 65, 90, self.input)

                            raise nvae

                    elif LA65 == 63:
                        LA65_91 = self.input.LA(3)

                        if (self.synpred121()) :
                            alt65 = 1
                        elif (True) :
                            alt65 = 2
                        else:
                            if self.backtracking > 0:
                                self.failed = True
                                return 

                            nvae = NoViableAltException("373:1: assignment_expression : ( lvalue assignment_operator assignment_expression | conditional_expression );", 65, 91, self.input)

                            raise nvae

                    else:
                        if self.backtracking > 0:
                            self.failed = True
                            return 

                        nvae = NoViableAltException("373:1: assignment_expression : ( lvalue assignment_operator assignment_expression | conditional_expression );", 65, 4, self.input)

                        raise nvae

                elif LA65 == 62:
                    LA65 = self.input.LA(2)
                    if LA65 == IDENTIFIER:
                        LA65_92 = self.input.LA(3)

                        if (self.synpred121()) :
                            alt65 = 1
                        elif (True) :
                            alt65 = 2
                        else:
                            if self.backtracking > 0:
                                self.failed = True
                                return 

                            nvae = NoViableAltException("373:1: assignment_expression : ( lvalue assignment_operator assignment_expression | conditional_expression );", 65, 92, self.input)

                            raise nvae

                    elif LA65 == HEX_LITERAL or LA65 == OCTAL_LITERAL or LA65 == DECIMAL_LITERAL or LA65 == CHARACTER_LITERAL or LA65 == STRING_LITERAL or LA65 == FLOATING_POINT_LITERAL:
                        LA65_93 = self.input.LA(3)

                        if (self.synpred121()) :
                            alt65 = 1
                        elif (True) :
                            alt65 = 2
                        else:
                            if self.backtracking > 0:
                                self.failed = True
                                return 

                            nvae = NoViableAltException("373:1: assignment_expression : ( lvalue assignment_operator assignment_expression | conditional_expression );", 65, 93, self.input)

                            raise nvae

                    elif LA65 == 50:
                        LA65_94 = self.input.LA(3)

                        if (self.synpred121()) :
                            alt65 = 1
                        elif (True) :
                            alt65 = 2
                        else:
                            if self.backtracking > 0:
                                self.failed = True
                                return 

                            nvae = NoViableAltException("373:1: assignment_expression : ( lvalue assignment_operator assignment_expression | conditional_expression );", 65, 94, self.input)

                            raise nvae

                    elif LA65 == 61:
                        LA65_95 = self.input.LA(3)

                        if (self.synpred121()) :
                            alt65 = 1
                        elif (True) :
                            alt65 = 2
                        else:
                            if self.backtracking > 0:
                                self.failed = True
                                return 

                            nvae = NoViableAltException("373:1: assignment_expression : ( lvalue assignment_operator assignment_expression | conditional_expression );", 65, 95, self.input)

                            raise nvae

                    elif LA65 == 62:
                        LA65_96 = self.input.LA(3)

                        if (self.synpred121()) :
                            alt65 = 1
                        elif (True) :
                            alt65 = 2
                        else:
                            if self.backtracking > 0:
                                self.failed = True
                                return 

                            nvae = NoViableAltException("373:1: assignment_expression : ( lvalue assignment_operator assignment_expression | conditional_expression );", 65, 96, self.input)

                            raise nvae

                    elif LA65 == 55 or LA65 == 57 or LA65 == 58 or LA65 == 66 or LA65 == 67 or LA65 == 68:
                        LA65_97 = self.input.LA(3)

                        if (self.synpred121()) :
                            alt65 = 1
                        elif (True) :
                            alt65 = 2
                        else:
                            if self.backtracking > 0:
                                self.failed = True
                                return 

                            nvae = NoViableAltException("373:1: assignment_expression : ( lvalue assignment_operator assignment_expression | conditional_expression );", 65, 97, self.input)

                            raise nvae

                    elif LA65 == 63:
                        LA65_98 = self.input.LA(3)

                        if (self.synpred121()) :
                            alt65 = 1
                        elif (True) :
                            alt65 = 2
                        else:
                            if self.backtracking > 0:
                                self.failed = True
                                return 

                            nvae = NoViableAltException("373:1: assignment_expression : ( lvalue assignment_operator assignment_expression | conditional_expression );", 65, 98, self.input)

                            raise nvae

                    else:
                        if self.backtracking > 0:
                            self.failed = True
                            return 

                        nvae = NoViableAltException("373:1: assignment_expression : ( lvalue assignment_operator assignment_expression | conditional_expression );", 65, 5, self.input)

                        raise nvae

                elif LA65 == 55 or LA65 == 57 or LA65 == 58 or LA65 == 66 or LA65 == 67 or LA65 == 68:
                    LA65 = self.input.LA(2)
                    if LA65 == 50:
                        LA65_99 = self.input.LA(3)

                        if (self.synpred121()) :
                            alt65 = 1
                        elif (True) :
                            alt65 = 2
                        else:
                            if self.backtracking > 0:
                                self.failed = True
                                return 

                            nvae = NoViableAltException("373:1: assignment_expression : ( lvalue assignment_operator assignment_expression | conditional_expression );", 65, 99, self.input)

                            raise nvae

                    elif LA65 == IDENTIFIER:
                        LA65_100 = self.input.LA(3)

                        if (self.synpred121()) :
                            alt65 = 1
                        elif (True) :
                            alt65 = 2
                        else:
                            if self.backtracking > 0:
                                self.failed = True
                                return 

                            nvae = NoViableAltException("373:1: assignment_expression : ( lvalue assignment_operator assignment_expression | conditional_expression );", 65, 100, self.input)

                            raise nvae

                    elif LA65 == HEX_LITERAL or LA65 == OCTAL_LITERAL or LA65 == DECIMAL_LITERAL or LA65 == CHARACTER_LITERAL or LA65 == STRING_LITERAL or LA65 == FLOATING_POINT_LITERAL:
                        LA65_101 = self.input.LA(3)

                        if (self.synpred121()) :
                            alt65 = 1
                        elif (True) :
                            alt65 = 2
                        else:
                            if self.backtracking > 0:
                                self.failed = True
                                return 

                            nvae = NoViableAltException("373:1: assignment_expression : ( lvalue assignment_operator assignment_expression | conditional_expression );", 65, 101, self.input)

                            raise nvae

                    elif LA65 == 61:
                        LA65_102 = self.input.LA(3)

                        if (self.synpred121()) :
                            alt65 = 1
                        elif (True) :
                            alt65 = 2
                        else:
                            if self.backtracking > 0:
                                self.failed = True
                                return 

                            nvae = NoViableAltException("373:1: assignment_expression : ( lvalue assignment_operator assignment_expression | conditional_expression );", 65, 102, self.input)

                            raise nvae

                    elif LA65 == 62:
                        LA65_103 = self.input.LA(3)

                        if (self.synpred121()) :
                            alt65 = 1
                        elif (True) :
                            alt65 = 2
                        else:
                            if self.backtracking > 0:
                                self.failed = True
                                return 

                            nvae = NoViableAltException("373:1: assignment_expression : ( lvalue assignment_operator assignment_expression | conditional_expression );", 65, 103, self.input)

                            raise nvae

                    elif LA65 == 55 or LA65 == 57 or LA65 == 58 or LA65 == 66 or LA65 == 67 or LA65 == 68:
                        LA65_104 = self.input.LA(3)

                        if (self.synpred121()) :
                            alt65 = 1
                        elif (True) :
                            alt65 = 2
                        else:
                            if self.backtracking > 0:
                                self.failed = True
                                return 

                            nvae = NoViableAltException("373:1: assignment_expression : ( lvalue assignment_operator assignment_expression | conditional_expression );", 65, 104, self.input)

                            raise nvae

                    elif LA65 == 63:
                        LA65_105 = self.input.LA(3)

                        if (self.synpred121()) :
                            alt65 = 1
                        elif (True) :
                            alt65 = 2
                        else:
                            if self.backtracking > 0:
                                self.failed = True
                                return 

                            nvae = NoViableAltException("373:1: assignment_expression : ( lvalue assignment_operator assignment_expression | conditional_expression );", 65, 105, self.input)

                            raise nvae

                    else:
                        if self.backtracking > 0:
                            self.failed = True
                            return 

                        nvae = NoViableAltException("373:1: assignment_expression : ( lvalue assignment_operator assignment_expression | conditional_expression );", 65, 6, self.input)

                        raise nvae

                elif LA65 == 63:
                    LA65 = self.input.LA(2)
                    if LA65 == 50:
                        LA65_106 = self.input.LA(3)

                        if (self.synpred121()) :
                            alt65 = 1
                        elif (True) :
                            alt65 = 2
                        else:
                            if self.backtracking > 0:
                                self.failed = True
                                return 

                            nvae = NoViableAltException("373:1: assignment_expression : ( lvalue assignment_operator assignment_expression | conditional_expression );", 65, 106, self.input)

                            raise nvae

                    elif LA65 == IDENTIFIER:
                        LA65_107 = self.input.LA(3)

                        if (self.synpred121()) :
                            alt65 = 1
                        elif (True) :
                            alt65 = 2
                        else:
                            if self.backtracking > 0:
                                self.failed = True
                                return 

                            nvae = NoViableAltException("373:1: assignment_expression : ( lvalue assignment_operator assignment_expression | conditional_expression );", 65, 107, self.input)

                            raise nvae

                    elif LA65 == HEX_LITERAL or LA65 == OCTAL_LITERAL or LA65 == DECIMAL_LITERAL or LA65 == CHARACTER_LITERAL or LA65 == STRING_LITERAL or LA65 == FLOATING_POINT_LITERAL:
                        LA65_108 = self.input.LA(3)

                        if (self.synpred121()) :
                            alt65 = 1
                        elif (True) :
                            alt65 = 2
                        else:
                            if self.backtracking > 0:
                                self.failed = True
                                return 

                            nvae = NoViableAltException("373:1: assignment_expression : ( lvalue assignment_operator assignment_expression | conditional_expression );", 65, 108, self.input)

                            raise nvae

                    elif LA65 == 61:
                        LA65_109 = self.input.LA(3)

                        if (self.synpred121()) :
                            alt65 = 1
                        elif (True) :
                            alt65 = 2
                        else:
                            if self.backtracking > 0:
                                self.failed = True
                                return 

                            nvae = NoViableAltException("373:1: assignment_expression : ( lvalue assignment_operator assignment_expression | conditional_expression );", 65, 109, self.input)

                            raise nvae

                    elif LA65 == 62:
                        LA65_110 = self.input.LA(3)

                        if (self.synpred121()) :
                            alt65 = 1
                        elif (True) :
                            alt65 = 2
                        else:
                            if self.backtracking > 0:
                                self.failed = True
                                return 

                            nvae = NoViableAltException("373:1: assignment_expression : ( lvalue assignment_operator assignment_expression | conditional_expression );", 65, 110, self.input)

                            raise nvae

                    elif LA65 == 55 or LA65 == 57 or LA65 == 58 or LA65 == 66 or LA65 == 67 or LA65 == 68:
                        LA65_111 = self.input.LA(3)

                        if (self.synpred121()) :
                            alt65 = 1
                        elif (True) :
                            alt65 = 2
                        else:
                            if self.backtracking > 0:
                                self.failed = True
                                return 

                            nvae = NoViableAltException("373:1: assignment_expression : ( lvalue assignment_operator assignment_expression | conditional_expression );", 65, 111, self.input)

                            raise nvae

                    elif LA65 == 63:
                        LA65_112 = self.input.LA(3)

                        if (self.synpred121()) :
                            alt65 = 1
                        elif (True) :
                            alt65 = 2
                        else:
                            if self.backtracking > 0:
                                self.failed = True
                                return 

                            nvae = NoViableAltException("373:1: assignment_expression : ( lvalue assignment_operator assignment_expression | conditional_expression );", 65, 112, self.input)

                            raise nvae

                    else:
                        if self.backtracking > 0:
                            self.failed = True
                            return 

                        nvae = NoViableAltException("373:1: assignment_expression : ( lvalue assignment_operator assignment_expression | conditional_expression );", 65, 7, self.input)

                        raise nvae

                else:
                    if self.backtracking > 0:
                        self.failed = True
                        return 

                    nvae = NoViableAltException("373:1: assignment_expression : ( lvalue assignment_operator assignment_expression | conditional_expression );", 65, 0, self.input)

                    raise nvae

                if alt65 == 1:
                    # C.g:374:4: lvalue assignment_operator assignment_expression
                    self.following.append(self.FOLLOW_lvalue_in_assignment_expression1661)
                    self.lvalue()
                    self.following.pop()
                    if self.failed:
                        return 
                    self.following.append(self.FOLLOW_assignment_operator_in_assignment_expression1663)
                    self.assignment_operator()
                    self.following.pop()
                    if self.failed:
                        return 
                    self.following.append(self.FOLLOW_assignment_expression_in_assignment_expression1665)
                    self.assignment_expression()
                    self.following.pop()
                    if self.failed:
                        return 


                elif alt65 == 2:
                    # C.g:375:4: conditional_expression
                    self.following.append(self.FOLLOW_conditional_expression_in_assignment_expression1670)
                    self.conditional_expression()
                    self.following.pop()
                    if self.failed:
                        return 



            except RecognitionException, re:
                self.reportError(re)
                self.recover(self.input, re)
        finally:
            if self.backtracking > 0:
                self.memoize(self.input, 51, assignment_expression_StartIndex)

            pass

        return 

    # $ANTLR end assignment_expression


    # $ANTLR start lvalue
    # C.g:378:1: lvalue : unary_expression ;
    def lvalue(self, ):

        lvalue_StartIndex = self.input.index()
        try:
            try:
                if self.backtracking > 0 and self.alreadyParsedRule(self.input, 52):
                    return 

                # C.g:379:2: ( unary_expression )
                # C.g:379:4: unary_expression
                self.following.append(self.FOLLOW_unary_expression_in_lvalue1682)
                self.unary_expression()
                self.following.pop()
                if self.failed:
                    return 




            except RecognitionException, re:
                self.reportError(re)
                self.recover(self.input, re)
        finally:
            if self.backtracking > 0:
                self.memoize(self.input, 52, lvalue_StartIndex)

            pass

        return 

    # $ANTLR end lvalue


    # $ANTLR start assignment_operator
    # C.g:382:1: assignment_operator : ( '=' | '*=' | '/=' | '%=' | '+=' | '-=' | '<<=' | '>>=' | '&=' | '^=' | '|=' );
    def assignment_operator(self, ):

        assignment_operator_StartIndex = self.input.index()
        try:
            try:
                if self.backtracking > 0 and self.alreadyParsedRule(self.input, 53):
                    return 

                # C.g:383:2: ( '=' | '*=' | '/=' | '%=' | '+=' | '-=' | '<<=' | '>>=' | '&=' | '^=' | '|=' )
                # C.g:
                if self.input.LA(1) == 26 or (69 <= self.input.LA(1) <= 78):
                    self.input.consume();
                    self.errorRecovery = False
                    self.failed = False

                else:
                    if self.backtracking > 0:
                        self.failed = True
                        return 

                    mse = MismatchedSetException(None, self.input)
                    self.recoverFromMismatchedSet(
                        self.input, mse, self.FOLLOW_set_in_assignment_operator0
                        )
                    raise mse






            except RecognitionException, re:
                self.reportError(re)
                self.recover(self.input, re)
        finally:
            if self.backtracking > 0:
                self.memoize(self.input, 53, assignment_operator_StartIndex)

            pass

        return 

    # $ANTLR end assignment_operator


    # $ANTLR start conditional_expression
    # C.g:396:1: conditional_expression : logical_or_expression ( '?' expression ':' conditional_expression )? ;
    def conditional_expression(self, ):

        conditional_expression_StartIndex = self.input.index()
        try:
            try:
                if self.backtracking > 0 and self.alreadyParsedRule(self.input, 54):
                    return 

                # C.g:397:2: ( logical_or_expression ( '?' expression ':' conditional_expression )? )
                # C.g:397:4: logical_or_expression ( '?' expression ':' conditional_expression )?
                self.following.append(self.FOLLOW_logical_or_expression_in_conditional_expression1754)
                self.logical_or_expression()
                self.following.pop()
                if self.failed:
                    return 
                # C.g:397:26: ( '?' expression ':' conditional_expression )?
                alt66 = 2
                LA66_0 = self.input.LA(1)

                if (LA66_0 == 79) :
                    alt66 = 1
                if alt66 == 1:
                    # C.g:397:27: '?' expression ':' conditional_expression
                    self.match(self.input, 79, self.FOLLOW_79_in_conditional_expression1757)
                    if self.failed:
                        return 
                    self.following.append(self.FOLLOW_expression_in_conditional_expression1759)
                    self.expression()
                    self.following.pop()
                    if self.failed:
                        return 
                    self.match(self.input, 44, self.FOLLOW_44_in_conditional_expression1761)
                    if self.failed:
                        return 
                    self.following.append(self.FOLLOW_conditional_expression_in_conditional_expression1763)
                    self.conditional_expression()
                    self.following.pop()
                    if self.failed:
                        return 







            except RecognitionException, re:
                self.reportError(re)
                self.recover(self.input, re)
        finally:
            if self.backtracking > 0:
                self.memoize(self.input, 54, conditional_expression_StartIndex)

            pass

        return 

    # $ANTLR end conditional_expression


    # $ANTLR start logical_or_expression
    # C.g:400:1: logical_or_expression : logical_and_expression ( '||' logical_and_expression )* ;
    def logical_or_expression(self, ):

        logical_or_expression_StartIndex = self.input.index()
        try:
            try:
                if self.backtracking > 0 and self.alreadyParsedRule(self.input, 55):
                    return 

                # C.g:401:2: ( logical_and_expression ( '||' logical_and_expression )* )
                # C.g:401:4: logical_and_expression ( '||' logical_and_expression )*
                self.following.append(self.FOLLOW_logical_and_expression_in_logical_or_expression1776)
                self.logical_and_expression()
                self.following.pop()
                if self.failed:
                    return 
                # C.g:401:27: ( '||' logical_and_expression )*
                while True: #loop67
                    alt67 = 2
                    LA67_0 = self.input.LA(1)

                    if (LA67_0 == 80) :
                        alt67 = 1


                    if alt67 == 1:
                        # C.g:401:28: '||' logical_and_expression
                        self.match(self.input, 80, self.FOLLOW_80_in_logical_or_expression1779)
                        if self.failed:
                            return 
                        self.following.append(self.FOLLOW_logical_and_expression_in_logical_or_expression1781)
                        self.logical_and_expression()
                        self.following.pop()
                        if self.failed:
                            return 


                    else:
                        break #loop67






            except RecognitionException, re:
                self.reportError(re)
                self.recover(self.input, re)
        finally:
            if self.backtracking > 0:
                self.memoize(self.input, 55, logical_or_expression_StartIndex)

            pass

        return 

    # $ANTLR end logical_or_expression


    # $ANTLR start logical_and_expression
    # C.g:404:1: logical_and_expression : inclusive_or_expression ( '&&' inclusive_or_expression )* ;
    def logical_and_expression(self, ):

        logical_and_expression_StartIndex = self.input.index()
        try:
            try:
                if self.backtracking > 0 and self.alreadyParsedRule(self.input, 56):
                    return 

                # C.g:405:2: ( inclusive_or_expression ( '&&' inclusive_or_expression )* )
                # C.g:405:4: inclusive_or_expression ( '&&' inclusive_or_expression )*
                self.following.append(self.FOLLOW_inclusive_or_expression_in_logical_and_expression1794)
                self.inclusive_or_expression()
                self.following.pop()
                if self.failed:
                    return 
                # C.g:405:28: ( '&&' inclusive_or_expression )*
                while True: #loop68
                    alt68 = 2
                    LA68_0 = self.input.LA(1)

                    if (LA68_0 == 81) :
                        alt68 = 1


                    if alt68 == 1:
                        # C.g:405:29: '&&' inclusive_or_expression
                        self.match(self.input, 81, self.FOLLOW_81_in_logical_and_expression1797)
                        if self.failed:
                            return 
                        self.following.append(self.FOLLOW_inclusive_or_expression_in_logical_and_expression1799)
                        self.inclusive_or_expression()
                        self.following.pop()
                        if self.failed:
                            return 


                    else:
                        break #loop68






            except RecognitionException, re:
                self.reportError(re)
                self.recover(self.input, re)
        finally:
            if self.backtracking > 0:
                self.memoize(self.input, 56, logical_and_expression_StartIndex)

            pass

        return 

    # $ANTLR end logical_and_expression


    # $ANTLR start inclusive_or_expression
    # C.g:408:1: inclusive_or_expression : exclusive_or_expression ( '|' exclusive_or_expression )* ;
    def inclusive_or_expression(self, ):

        inclusive_or_expression_StartIndex = self.input.index()
        try:
            try:
                if self.backtracking > 0 and self.alreadyParsedRule(self.input, 57):
                    return 

                # C.g:409:2: ( exclusive_or_expression ( '|' exclusive_or_expression )* )
                # C.g:409:4: exclusive_or_expression ( '|' exclusive_or_expression )*
                self.following.append(self.FOLLOW_exclusive_or_expression_in_inclusive_or_expression1812)
                self.exclusive_or_expression()
                self.following.pop()
                if self.failed:
                    return 
                # C.g:409:28: ( '|' exclusive_or_expression )*
                while True: #loop69
                    alt69 = 2
                    LA69_0 = self.input.LA(1)

                    if (LA69_0 == 82) :
                        alt69 = 1


                    if alt69 == 1:
                        # C.g:409:29: '|' exclusive_or_expression
                        self.match(self.input, 82, self.FOLLOW_82_in_inclusive_or_expression1815)
                        if self.failed:
                            return 
                        self.following.append(self.FOLLOW_exclusive_or_expression_in_inclusive_or_expression1817)
                        self.exclusive_or_expression()
                        self.following.pop()
                        if self.failed:
                            return 


                    else:
                        break #loop69






            except RecognitionException, re:
                self.reportError(re)
                self.recover(self.input, re)
        finally:
            if self.backtracking > 0:
                self.memoize(self.input, 57, inclusive_or_expression_StartIndex)

            pass

        return 

    # $ANTLR end inclusive_or_expression


    # $ANTLR start exclusive_or_expression
    # C.g:412:1: exclusive_or_expression : and_expression ( '^' and_expression )* ;
    def exclusive_or_expression(self, ):

        exclusive_or_expression_StartIndex = self.input.index()
        try:
            try:
                if self.backtracking > 0 and self.alreadyParsedRule(self.input, 58):
                    return 

                # C.g:413:2: ( and_expression ( '^' and_expression )* )
                # C.g:413:4: and_expression ( '^' and_expression )*
                self.following.append(self.FOLLOW_and_expression_in_exclusive_or_expression1830)
                self.and_expression()
                self.following.pop()
                if self.failed:
                    return 
                # C.g:413:19: ( '^' and_expression )*
                while True: #loop70
                    alt70 = 2
                    LA70_0 = self.input.LA(1)

                    if (LA70_0 == 83) :
                        alt70 = 1


                    if alt70 == 1:
                        # C.g:413:20: '^' and_expression
                        self.match(self.input, 83, self.FOLLOW_83_in_exclusive_or_expression1833)
                        if self.failed:
                            return 
                        self.following.append(self.FOLLOW_and_expression_in_exclusive_or_expression1835)
                        self.and_expression()
                        self.following.pop()
                        if self.failed:
                            return 


                    else:
                        break #loop70






            except RecognitionException, re:
                self.reportError(re)
                self.recover(self.input, re)
        finally:
            if self.backtracking > 0:
                self.memoize(self.input, 58, exclusive_or_expression_StartIndex)

            pass

        return 

    # $ANTLR end exclusive_or_expression


    # $ANTLR start and_expression
    # C.g:416:1: and_expression : equality_expression ( '&' equality_expression )* ;
    def and_expression(self, ):

        and_expression_StartIndex = self.input.index()
        try:
            try:
                if self.backtracking > 0 and self.alreadyParsedRule(self.input, 59):
                    return 

                # C.g:417:2: ( equality_expression ( '&' equality_expression )* )
                # C.g:417:4: equality_expression ( '&' equality_expression )*
                self.following.append(self.FOLLOW_equality_expression_in_and_expression1848)
                self.equality_expression()
                self.following.pop()
                if self.failed:
                    return 
                # C.g:417:24: ( '&' equality_expression )*
                while True: #loop71
                    alt71 = 2
                    LA71_0 = self.input.LA(1)

                    if (LA71_0 == 66) :
                        alt71 = 1


                    if alt71 == 1:
                        # C.g:417:25: '&' equality_expression
                        self.match(self.input, 66, self.FOLLOW_66_in_and_expression1851)
                        if self.failed:
                            return 
                        self.following.append(self.FOLLOW_equality_expression_in_and_expression1853)
                        self.equality_expression()
                        self.following.pop()
                        if self.failed:
                            return 


                    else:
                        break #loop71






            except RecognitionException, re:
                self.reportError(re)
                self.recover(self.input, re)
        finally:
            if self.backtracking > 0:
                self.memoize(self.input, 59, and_expression_StartIndex)

            pass

        return 

    # $ANTLR end and_expression


    # $ANTLR start equality_expression
    # C.g:419:1: equality_expression : relational_expression ( ( '==' | '!=' ) relational_expression )* ;
    def equality_expression(self, ):

        equality_expression_StartIndex = self.input.index()
        try:
            try:
                if self.backtracking > 0 and self.alreadyParsedRule(self.input, 60):
                    return 

                # C.g:420:2: ( relational_expression ( ( '==' | '!=' ) relational_expression )* )
                # C.g:420:4: relational_expression ( ( '==' | '!=' ) relational_expression )*
                self.following.append(self.FOLLOW_relational_expression_in_equality_expression1865)
                self.relational_expression()
                self.following.pop()
                if self.failed:
                    return 
                # C.g:420:26: ( ( '==' | '!=' ) relational_expression )*
                while True: #loop72
                    alt72 = 2
                    LA72_0 = self.input.LA(1)

                    if ((84 <= LA72_0 <= 85)) :
                        alt72 = 1


                    if alt72 == 1:
                        # C.g:420:27: ( '==' | '!=' ) relational_expression
                        if (84 <= self.input.LA(1) <= 85):
                            self.input.consume();
                            self.errorRecovery = False
                            self.failed = False

                        else:
                            if self.backtracking > 0:
                                self.failed = True
                                return 

                            mse = MismatchedSetException(None, self.input)
                            self.recoverFromMismatchedSet(
                                self.input, mse, self.FOLLOW_set_in_equality_expression1868
                                )
                            raise mse


                        self.following.append(self.FOLLOW_relational_expression_in_equality_expression1874)
                        self.relational_expression()
                        self.following.pop()
                        if self.failed:
                            return 


                    else:
                        break #loop72






            except RecognitionException, re:
                self.reportError(re)
                self.recover(self.input, re)
        finally:
            if self.backtracking > 0:
                self.memoize(self.input, 60, equality_expression_StartIndex)

            pass

        return 

    # $ANTLR end equality_expression


    # $ANTLR start relational_expression
    # C.g:423:1: relational_expression : shift_expression ( ( '<' | '>' | '<=' | '>=' ) shift_expression )* ;
    def relational_expression(self, ):

        relational_expression_StartIndex = self.input.index()
        try:
            try:
                if self.backtracking > 0 and self.alreadyParsedRule(self.input, 61):
                    return 

                # C.g:424:2: ( shift_expression ( ( '<' | '>' | '<=' | '>=' ) shift_expression )* )
                # C.g:424:4: shift_expression ( ( '<' | '>' | '<=' | '>=' ) shift_expression )*
                self.following.append(self.FOLLOW_shift_expression_in_relational_expression1887)
                self.shift_expression()
                self.following.pop()
                if self.failed:
                    return 
                # C.g:424:21: ( ( '<' | '>' | '<=' | '>=' ) shift_expression )*
                while True: #loop73
                    alt73 = 2
                    LA73_0 = self.input.LA(1)

                    if ((86 <= LA73_0 <= 89)) :
                        alt73 = 1


                    if alt73 == 1:
                        # C.g:424:22: ( '<' | '>' | '<=' | '>=' ) shift_expression
                        if (86 <= self.input.LA(1) <= 89):
                            self.input.consume();
                            self.errorRecovery = False
                            self.failed = False

                        else:
                            if self.backtracking > 0:
                                self.failed = True
                                return 

                            mse = MismatchedSetException(None, self.input)
                            self.recoverFromMismatchedSet(
                                self.input, mse, self.FOLLOW_set_in_relational_expression1890
                                )
                            raise mse


                        self.following.append(self.FOLLOW_shift_expression_in_relational_expression1900)
                        self.shift_expression()
                        self.following.pop()
                        if self.failed:
                            return 


                    else:
                        break #loop73






            except RecognitionException, re:
                self.reportError(re)
                self.recover(self.input, re)
        finally:
            if self.backtracking > 0:
                self.memoize(self.input, 61, relational_expression_StartIndex)

            pass

        return 

    # $ANTLR end relational_expression


    # $ANTLR start shift_expression
    # C.g:427:1: shift_expression : additive_expression ( ( '<<' | '>>' ) additive_expression )* ;
    def shift_expression(self, ):

        shift_expression_StartIndex = self.input.index()
        try:
            try:
                if self.backtracking > 0 and self.alreadyParsedRule(self.input, 62):
                    return 

                # C.g:428:2: ( additive_expression ( ( '<<' | '>>' ) additive_expression )* )
                # C.g:428:4: additive_expression ( ( '<<' | '>>' ) additive_expression )*
                self.following.append(self.FOLLOW_additive_expression_in_shift_expression1913)
                self.additive_expression()
                self.following.pop()
                if self.failed:
                    return 
                # C.g:428:24: ( ( '<<' | '>>' ) additive_expression )*
                while True: #loop74
                    alt74 = 2
                    LA74_0 = self.input.LA(1)

                    if ((90 <= LA74_0 <= 91)) :
                        alt74 = 1


                    if alt74 == 1:
                        # C.g:428:25: ( '<<' | '>>' ) additive_expression
                        if (90 <= self.input.LA(1) <= 91):
                            self.input.consume();
                            self.errorRecovery = False
                            self.failed = False

                        else:
                            if self.backtracking > 0:
                                self.failed = True
                                return 

                            mse = MismatchedSetException(None, self.input)
                            self.recoverFromMismatchedSet(
                                self.input, mse, self.FOLLOW_set_in_shift_expression1916
                                )
                            raise mse


                        self.following.append(self.FOLLOW_additive_expression_in_shift_expression1922)
                        self.additive_expression()
                        self.following.pop()
                        if self.failed:
                            return 


                    else:
                        break #loop74






            except RecognitionException, re:
                self.reportError(re)
                self.recover(self.input, re)
        finally:
            if self.backtracking > 0:
                self.memoize(self.input, 62, shift_expression_StartIndex)

            pass

        return 

    # $ANTLR end shift_expression


    # $ANTLR start statement
    # C.g:433:1: statement : ( labeled_statement | compound_statement | expression_statement | selection_statement | iteration_statement | jump_statement );
    def statement(self, ):

        statement_StartIndex = self.input.index()
        try:
            try:
                if self.backtracking > 0 and self.alreadyParsedRule(self.input, 63):
                    return 

                # C.g:434:2: ( labeled_statement | compound_statement | expression_statement | selection_statement | iteration_statement | jump_statement )
                alt75 = 6
                LA75 = self.input.LA(1)
                if LA75 == IDENTIFIER:
                    LA75_1 = self.input.LA(2)

                    if (LA75_1 == 44) :
                        alt75 = 1
                    elif ((24 <= LA75_1 <= 26) or LA75_1 == 50 or LA75_1 == 52 or LA75_1 == 55 or (57 <= LA75_1 <= 62) or (64 <= LA75_1 <= 66) or (69 <= LA75_1 <= 91)) :
                        alt75 = 3
                    else:
                        if self.backtracking > 0:
                            self.failed = True
                            return 

                        nvae = NoViableAltException("433:1: statement : ( labeled_statement | compound_statement | expression_statement | selection_statement | iteration_statement | jump_statement );", 75, 1, self.input)

                        raise nvae

                elif LA75 == 92 or LA75 == 93:
                    alt75 = 1
                elif LA75 == 40:
                    alt75 = 2
                elif LA75 == HEX_LITERAL or LA75 == OCTAL_LITERAL or LA75 == DECIMAL_LITERAL or LA75 == CHARACTER_LITERAL or LA75 == STRING_LITERAL or LA75 == FLOATING_POINT_LITERAL or LA75 == 24 or LA75 == 50 or LA75 == 55 or LA75 == 57 or LA75 == 58 or LA75 == 61 or LA75 == 62 or LA75 == 63 or LA75 == 66 or LA75 == 67 or LA75 == 68:
                    alt75 = 3
                elif LA75 == 94 or LA75 == 96:
                    alt75 = 4
                elif LA75 == 97 or LA75 == 98 or LA75 == 99:
                    alt75 = 5
                elif LA75 == 100 or LA75 == 101 or LA75 == 102 or LA75 == 103:
                    alt75 = 6
                else:
                    if self.backtracking > 0:
                        self.failed = True
                        return 

                    nvae = NoViableAltException("433:1: statement : ( labeled_statement | compound_statement | expression_statement | selection_statement | iteration_statement | jump_statement );", 75, 0, self.input)

                    raise nvae

                if alt75 == 1:
                    # C.g:434:4: labeled_statement
                    self.following.append(self.FOLLOW_labeled_statement_in_statement1937)
                    self.labeled_statement()
                    self.following.pop()
                    if self.failed:
                        return 


                elif alt75 == 2:
                    # C.g:435:4: compound_statement
                    self.following.append(self.FOLLOW_compound_statement_in_statement1942)
                    self.compound_statement()
                    self.following.pop()
                    if self.failed:
                        return 


                elif alt75 == 3:
                    # C.g:436:4: expression_statement
                    self.following.append(self.FOLLOW_expression_statement_in_statement1947)
                    self.expression_statement()
                    self.following.pop()
                    if self.failed:
                        return 


                elif alt75 == 4:
                    # C.g:437:4: selection_statement
                    self.following.append(self.FOLLOW_selection_statement_in_statement1952)
                    self.selection_statement()
                    self.following.pop()
                    if self.failed:
                        return 


                elif alt75 == 5:
                    # C.g:438:4: iteration_statement
                    self.following.append(self.FOLLOW_iteration_statement_in_statement1957)
                    self.iteration_statement()
                    self.following.pop()
                    if self.failed:
                        return 


                elif alt75 == 6:
                    # C.g:439:4: jump_statement
                    self.following.append(self.FOLLOW_jump_statement_in_statement1962)
                    self.jump_statement()
                    self.following.pop()
                    if self.failed:
                        return 



            except RecognitionException, re:
                self.reportError(re)
                self.recover(self.input, re)
        finally:
            if self.backtracking > 0:
                self.memoize(self.input, 63, statement_StartIndex)

            pass

        return 

    # $ANTLR end statement


    # $ANTLR start labeled_statement
    # C.g:442:1: labeled_statement : ( IDENTIFIER ':' statement | 'case' constant_expression ':' statement | 'default' ':' statement );
    def labeled_statement(self, ):

        labeled_statement_StartIndex = self.input.index()
        try:
            try:
                if self.backtracking > 0 and self.alreadyParsedRule(self.input, 64):
                    return 

                # C.g:443:2: ( IDENTIFIER ':' statement | 'case' constant_expression ':' statement | 'default' ':' statement )
                alt76 = 3
                LA76 = self.input.LA(1)
                if LA76 == IDENTIFIER:
                    alt76 = 1
                elif LA76 == 92:
                    alt76 = 2
                elif LA76 == 93:
                    alt76 = 3
                else:
                    if self.backtracking > 0:
                        self.failed = True
                        return 

                    nvae = NoViableAltException("442:1: labeled_statement : ( IDENTIFIER ':' statement | 'case' constant_expression ':' statement | 'default' ':' statement );", 76, 0, self.input)

                    raise nvae

                if alt76 == 1:
                    # C.g:443:4: IDENTIFIER ':' statement
                    self.match(self.input, IDENTIFIER, self.FOLLOW_IDENTIFIER_in_labeled_statement1973)
                    if self.failed:
                        return 
                    self.match(self.input, 44, self.FOLLOW_44_in_labeled_statement1975)
                    if self.failed:
                        return 
                    self.following.append(self.FOLLOW_statement_in_labeled_statement1977)
                    self.statement()
                    self.following.pop()
                    if self.failed:
                        return 


                elif alt76 == 2:
                    # C.g:444:4: 'case' constant_expression ':' statement
                    self.match(self.input, 92, self.FOLLOW_92_in_labeled_statement1982)
                    if self.failed:
                        return 
                    self.following.append(self.FOLLOW_constant_expression_in_labeled_statement1984)
                    self.constant_expression()
                    self.following.pop()
                    if self.failed:
                        return 
                    self.match(self.input, 44, self.FOLLOW_44_in_labeled_statement1986)
                    if self.failed:
                        return 
                    self.following.append(self.FOLLOW_statement_in_labeled_statement1988)
                    self.statement()
                    self.following.pop()
                    if self.failed:
                        return 


                elif alt76 == 3:
                    # C.g:445:4: 'default' ':' statement
                    self.match(self.input, 93, self.FOLLOW_93_in_labeled_statement1993)
                    if self.failed:
                        return 
                    self.match(self.input, 44, self.FOLLOW_44_in_labeled_statement1995)
                    if self.failed:
                        return 
                    self.following.append(self.FOLLOW_statement_in_labeled_statement1997)
                    self.statement()
                    self.following.pop()
                    if self.failed:
                        return 



            except RecognitionException, re:
                self.reportError(re)
                self.recover(self.input, re)
        finally:
            if self.backtracking > 0:
                self.memoize(self.input, 64, labeled_statement_StartIndex)

            pass

        return 

    # $ANTLR end labeled_statement


    # $ANTLR start compound_statement
    # C.g:448:1: compound_statement : '{' ( declaration )* ( statement_list )? '}' ;
    def compound_statement(self, ):
        self.symbols_stack.append(symbols_scope())

        compound_statement_StartIndex = self.input.index()
               
        self.symbols_stack[-1].types = set()

        try:
            try:
                if self.backtracking > 0 and self.alreadyParsedRule(self.input, 65):
                    return 

                # C.g:453:2: ( '{' ( declaration )* ( statement_list )? '}' )
                # C.g:453:4: '{' ( declaration )* ( statement_list )? '}'
                self.match(self.input, 40, self.FOLLOW_40_in_compound_statement2019)
                if self.failed:
                    return 
                # C.g:453:8: ( declaration )*
                while True: #loop77
                    alt77 = 2
                    LA77_0 = self.input.LA(1)

                    if (LA77_0 == IDENTIFIER) :
                        LA77 = self.input.LA(2)
                        if LA77 == IDENTIFIER or LA77 == 27 or LA77 == 28 or LA77 == 29 or LA77 == 30 or LA77 == 31 or LA77 == 32 or LA77 == 33 or LA77 == 34 or LA77 == 35 or LA77 == 36 or LA77 == 37 or LA77 == 38 or LA77 == 39 or LA77 == 42 or LA77 == 43 or LA77 == 45 or LA77 == 46 or LA77 == 47 or LA77 == 48 or LA77 == 49 or LA77 == 54:
                            alt77 = 1
                        elif LA77 == 55:
                            LA77_39 = self.input.LA(3)

                            if ((self.synpred153() and self.isTypeName(self.input.LT(1).getText()) )) :
                                alt77 = 1


                        elif LA77 == 50:
                            LA77_41 = self.input.LA(3)

                            if ((self.synpred153() and self.isTypeName(self.input.LT(1).getText()) )) :
                                alt77 = 1


                        elif LA77 == 24:
                            LA77_42 = self.input.LA(3)

                            if ((self.synpred153() and self.isTypeName(self.input.LT(1).getText()) )) :
                                alt77 = 1



                    elif (LA77_0 == 23 or (27 <= LA77_0 <= 39) or (42 <= LA77_0 <= 43) or (45 <= LA77_0 <= 49) or LA77_0 == 54) :
                        alt77 = 1


                    if alt77 == 1:
                        # C.g:0:0: declaration
                        self.following.append(self.FOLLOW_declaration_in_compound_statement2021)
                        self.declaration()
                        self.following.pop()
                        if self.failed:
                            return 


                    else:
                        break #loop77


                # C.g:453:21: ( statement_list )?
                alt78 = 2
                LA78_0 = self.input.LA(1)

                if ((IDENTIFIER <= LA78_0 <= FLOATING_POINT_LITERAL) or LA78_0 == 24 or LA78_0 == 40 or LA78_0 == 50 or LA78_0 == 55 or (57 <= LA78_0 <= 58) or (61 <= LA78_0 <= 63) or (66 <= LA78_0 <= 68) or (92 <= LA78_0 <= 94) or (96 <= LA78_0 <= 103)) :
                    alt78 = 1
                if alt78 == 1:
                    # C.g:0:0: statement_list
                    self.following.append(self.FOLLOW_statement_list_in_compound_statement2024)
                    self.statement_list()
                    self.following.pop()
                    if self.failed:
                        return 



                self.match(self.input, 41, self.FOLLOW_41_in_compound_statement2027)
                if self.failed:
                    return 




            except RecognitionException, re:
                self.reportError(re)
                self.recover(self.input, re)
        finally:
            if self.backtracking > 0:
                self.memoize(self.input, 65, compound_statement_StartIndex)

            self.symbols_stack.pop()

            pass

        return 

    # $ANTLR end compound_statement


    # $ANTLR start statement_list
    # C.g:456:1: statement_list : ( statement )+ ;
    def statement_list(self, ):

        statement_list_StartIndex = self.input.index()
        try:
            try:
                if self.backtracking > 0 and self.alreadyParsedRule(self.input, 66):
                    return 

                # C.g:457:2: ( ( statement )+ )
                # C.g:457:4: ( statement )+
                # C.g:457:4: ( statement )+
                cnt79 = 0
                while True: #loop79
                    alt79 = 2
                    LA79_0 = self.input.LA(1)

                    if ((IDENTIFIER <= LA79_0 <= FLOATING_POINT_LITERAL) or LA79_0 == 24 or LA79_0 == 40 or LA79_0 == 50 or LA79_0 == 55 or (57 <= LA79_0 <= 58) or (61 <= LA79_0 <= 63) or (66 <= LA79_0 <= 68) or (92 <= LA79_0 <= 94) or (96 <= LA79_0 <= 103)) :
                        alt79 = 1


                    if alt79 == 1:
                        # C.g:0:0: statement
                        self.following.append(self.FOLLOW_statement_in_statement_list2038)
                        self.statement()
                        self.following.pop()
                        if self.failed:
                            return 


                    else:
                        if cnt79 >= 1:
                            break #loop79

                        if self.backtracking > 0:
                            self.failed = True
                            return 

                        eee = EarlyExitException(79, self.input)
                        raise eee

                    cnt79 += 1






            except RecognitionException, re:
                self.reportError(re)
                self.recover(self.input, re)
        finally:
            if self.backtracking > 0:
                self.memoize(self.input, 66, statement_list_StartIndex)

            pass

        return 

    # $ANTLR end statement_list


    # $ANTLR start expression_statement
    # C.g:460:1: expression_statement : ( ';' | expression ';' );
    def expression_statement(self, ):

        expression_statement_StartIndex = self.input.index()
        try:
            try:
                if self.backtracking > 0 and self.alreadyParsedRule(self.input, 67):
                    return 

                # C.g:461:2: ( ';' | expression ';' )
                alt80 = 2
                LA80_0 = self.input.LA(1)

                if (LA80_0 == 24) :
                    alt80 = 1
                elif ((IDENTIFIER <= LA80_0 <= FLOATING_POINT_LITERAL) or LA80_0 == 50 or LA80_0 == 55 or (57 <= LA80_0 <= 58) or (61 <= LA80_0 <= 63) or (66 <= LA80_0 <= 68)) :
                    alt80 = 2
                else:
                    if self.backtracking > 0:
                        self.failed = True
                        return 

                    nvae = NoViableAltException("460:1: expression_statement : ( ';' | expression ';' );", 80, 0, self.input)

                    raise nvae

                if alt80 == 1:
                    # C.g:461:4: ';'
                    self.match(self.input, 24, self.FOLLOW_24_in_expression_statement2050)
                    if self.failed:
                        return 


                elif alt80 == 2:
                    # C.g:462:4: expression ';'
                    self.following.append(self.FOLLOW_expression_in_expression_statement2055)
                    self.expression()
                    self.following.pop()
                    if self.failed:
                        return 
                    self.match(self.input, 24, self.FOLLOW_24_in_expression_statement2057)
                    if self.failed:
                        return 



            except RecognitionException, re:
                self.reportError(re)
                self.recover(self.input, re)
        finally:
            if self.backtracking > 0:
                self.memoize(self.input, 67, expression_statement_StartIndex)

            pass

        return 

    # $ANTLR end expression_statement


    # $ANTLR start selection_statement
    # C.g:465:1: selection_statement : ( 'if' '(' expression ')' statement ( options {k=1; backtrack=false; } : 'else' statement )? | 'switch' '(' expression ')' statement );
    def selection_statement(self, ):

        selection_statement_StartIndex = self.input.index()
        try:
            try:
                if self.backtracking > 0 and self.alreadyParsedRule(self.input, 68):
                    return 

                # C.g:466:2: ( 'if' '(' expression ')' statement ( options {k=1; backtrack=false; } : 'else' statement )? | 'switch' '(' expression ')' statement )
                alt82 = 2
                LA82_0 = self.input.LA(1)

                if (LA82_0 == 94) :
                    alt82 = 1
                elif (LA82_0 == 96) :
                    alt82 = 2
                else:
                    if self.backtracking > 0:
                        self.failed = True
                        return 

                    nvae = NoViableAltException("465:1: selection_statement : ( 'if' '(' expression ')' statement ( options {k=1; backtrack=false; } : 'else' statement )? | 'switch' '(' expression ')' statement );", 82, 0, self.input)

                    raise nvae

                if alt82 == 1:
                    # C.g:466:4: 'if' '(' expression ')' statement ( options {k=1; backtrack=false; } : 'else' statement )?
                    self.match(self.input, 94, self.FOLLOW_94_in_selection_statement2068)
                    if self.failed:
                        return 
                    self.match(self.input, 50, self.FOLLOW_50_in_selection_statement2070)
                    if self.failed:
                        return 
                    self.following.append(self.FOLLOW_expression_in_selection_statement2072)
                    self.expression()
                    self.following.pop()
                    if self.failed:
                        return 
                    self.match(self.input, 51, self.FOLLOW_51_in_selection_statement2074)
                    if self.failed:
                        return 
                    self.following.append(self.FOLLOW_statement_in_selection_statement2076)
                    self.statement()
                    self.following.pop()
                    if self.failed:
                        return 
                    # C.g:466:38: ( options {k=1; backtrack=false; } : 'else' statement )?
                    alt81 = 2
                    LA81_0 = self.input.LA(1)

                    if (LA81_0 == 95) :
                        alt81 = 1
                    if alt81 == 1:
                        # C.g:466:71: 'else' statement
                        self.match(self.input, 95, self.FOLLOW_95_in_selection_statement2091)
                        if self.failed:
                            return 
                        self.following.append(self.FOLLOW_statement_in_selection_statement2093)
                        self.statement()
                        self.following.pop()
                        if self.failed:
                            return 





                elif alt82 == 2:
                    # C.g:467:4: 'switch' '(' expression ')' statement
                    self.match(self.input, 96, self.FOLLOW_96_in_selection_statement2100)
                    if self.failed:
                        return 
                    self.match(self.input, 50, self.FOLLOW_50_in_selection_statement2102)
                    if self.failed:
                        return 
                    self.following.append(self.FOLLOW_expression_in_selection_statement2104)
                    self.expression()
                    self.following.pop()
                    if self.failed:
                        return 
                    self.match(self.input, 51, self.FOLLOW_51_in_selection_statement2106)
                    if self.failed:
                        return 
                    self.following.append(self.FOLLOW_statement_in_selection_statement2108)
                    self.statement()
                    self.following.pop()
                    if self.failed:
                        return 



            except RecognitionException, re:
                self.reportError(re)
                self.recover(self.input, re)
        finally:
            if self.backtracking > 0:
                self.memoize(self.input, 68, selection_statement_StartIndex)

            pass

        return 

    # $ANTLR end selection_statement


    # $ANTLR start iteration_statement
    # C.g:470:1: iteration_statement : ( 'while' '(' expression ')' statement | 'do' statement 'while' '(' expression ')' ';' | 'for' '(' expression_statement expression_statement ( expression )? ')' statement );
    def iteration_statement(self, ):

        iteration_statement_StartIndex = self.input.index()
        try:
            try:
                if self.backtracking > 0 and self.alreadyParsedRule(self.input, 69):
                    return 

                # C.g:471:2: ( 'while' '(' expression ')' statement | 'do' statement 'while' '(' expression ')' ';' | 'for' '(' expression_statement expression_statement ( expression )? ')' statement )
                alt84 = 3
                LA84 = self.input.LA(1)
                if LA84 == 97:
                    alt84 = 1
                elif LA84 == 98:
                    alt84 = 2
                elif LA84 == 99:
                    alt84 = 3
                else:
                    if self.backtracking > 0:
                        self.failed = True
                        return 

                    nvae = NoViableAltException("470:1: iteration_statement : ( 'while' '(' expression ')' statement | 'do' statement 'while' '(' expression ')' ';' | 'for' '(' expression_statement expression_statement ( expression )? ')' statement );", 84, 0, self.input)

                    raise nvae

                if alt84 == 1:
                    # C.g:471:4: 'while' '(' expression ')' statement
                    self.match(self.input, 97, self.FOLLOW_97_in_iteration_statement2119)
                    if self.failed:
                        return 
                    self.match(self.input, 50, self.FOLLOW_50_in_iteration_statement2121)
                    if self.failed:
                        return 
                    self.following.append(self.FOLLOW_expression_in_iteration_statement2123)
                    self.expression()
                    self.following.pop()
                    if self.failed:
                        return 
                    self.match(self.input, 51, self.FOLLOW_51_in_iteration_statement2125)
                    if self.failed:
                        return 
                    self.following.append(self.FOLLOW_statement_in_iteration_statement2127)
                    self.statement()
                    self.following.pop()
                    if self.failed:
                        return 


                elif alt84 == 2:
                    # C.g:472:4: 'do' statement 'while' '(' expression ')' ';'
                    self.match(self.input, 98, self.FOLLOW_98_in_iteration_statement2132)
                    if self.failed:
                        return 
                    self.following.append(self.FOLLOW_statement_in_iteration_statement2134)
                    self.statement()
                    self.following.pop()
                    if self.failed:
                        return 
                    self.match(self.input, 97, self.FOLLOW_97_in_iteration_statement2136)
                    if self.failed:
                        return 
                    self.match(self.input, 50, self.FOLLOW_50_in_iteration_statement2138)
                    if self.failed:
                        return 
                    self.following.append(self.FOLLOW_expression_in_iteration_statement2140)
                    self.expression()
                    self.following.pop()
                    if self.failed:
                        return 
                    self.match(self.input, 51, self.FOLLOW_51_in_iteration_statement2142)
                    if self.failed:
                        return 
                    self.match(self.input, 24, self.FOLLOW_24_in_iteration_statement2144)
                    if self.failed:
                        return 


                elif alt84 == 3:
                    # C.g:473:4: 'for' '(' expression_statement expression_statement ( expression )? ')' statement
                    self.match(self.input, 99, self.FOLLOW_99_in_iteration_statement2149)
                    if self.failed:
                        return 
                    self.match(self.input, 50, self.FOLLOW_50_in_iteration_statement2151)
                    if self.failed:
                        return 
                    self.following.append(self.FOLLOW_expression_statement_in_iteration_statement2153)
                    self.expression_statement()
                    self.following.pop()
                    if self.failed:
                        return 
                    self.following.append(self.FOLLOW_expression_statement_in_iteration_statement2155)
                    self.expression_statement()
                    self.following.pop()
                    if self.failed:
                        return 
                    # C.g:473:56: ( expression )?
                    alt83 = 2
                    LA83_0 = self.input.LA(1)

                    if ((IDENTIFIER <= LA83_0 <= FLOATING_POINT_LITERAL) or LA83_0 == 50 or LA83_0 == 55 or (57 <= LA83_0 <= 58) or (61 <= LA83_0 <= 63) or (66 <= LA83_0 <= 68)) :
                        alt83 = 1
                    if alt83 == 1:
                        # C.g:0:0: expression
                        self.following.append(self.FOLLOW_expression_in_iteration_statement2157)
                        self.expression()
                        self.following.pop()
                        if self.failed:
                            return 



                    self.match(self.input, 51, self.FOLLOW_51_in_iteration_statement2160)
                    if self.failed:
                        return 
                    self.following.append(self.FOLLOW_statement_in_iteration_statement2162)
                    self.statement()
                    self.following.pop()
                    if self.failed:
                        return 



            except RecognitionException, re:
                self.reportError(re)
                self.recover(self.input, re)
        finally:
            if self.backtracking > 0:
                self.memoize(self.input, 69, iteration_statement_StartIndex)

            pass

        return 

    # $ANTLR end iteration_statement


    # $ANTLR start jump_statement
    # C.g:476:1: jump_statement : ( 'goto' IDENTIFIER ';' | 'continue' ';' | 'break' ';' | 'return' ';' | 'return' expression ';' );
    def jump_statement(self, ):

        jump_statement_StartIndex = self.input.index()
        try:
            try:
                if self.backtracking > 0 and self.alreadyParsedRule(self.input, 70):
                    return 

                # C.g:477:2: ( 'goto' IDENTIFIER ';' | 'continue' ';' | 'break' ';' | 'return' ';' | 'return' expression ';' )
                alt85 = 5
                LA85 = self.input.LA(1)
                if LA85 == 100:
                    alt85 = 1
                elif LA85 == 101:
                    alt85 = 2
                elif LA85 == 102:
                    alt85 = 3
                elif LA85 == 103:
                    LA85_4 = self.input.LA(2)

                    if (LA85_4 == 24) :
                        alt85 = 4
                    elif ((IDENTIFIER <= LA85_4 <= FLOATING_POINT_LITERAL) or LA85_4 == 50 or LA85_4 == 55 or (57 <= LA85_4 <= 58) or (61 <= LA85_4 <= 63) or (66 <= LA85_4 <= 68)) :
                        alt85 = 5
                    else:
                        if self.backtracking > 0:
                            self.failed = True
                            return 

                        nvae = NoViableAltException("476:1: jump_statement : ( 'goto' IDENTIFIER ';' | 'continue' ';' | 'break' ';' | 'return' ';' | 'return' expression ';' );", 85, 4, self.input)

                        raise nvae

                else:
                    if self.backtracking > 0:
                        self.failed = True
                        return 

                    nvae = NoViableAltException("476:1: jump_statement : ( 'goto' IDENTIFIER ';' | 'continue' ';' | 'break' ';' | 'return' ';' | 'return' expression ';' );", 85, 0, self.input)

                    raise nvae

                if alt85 == 1:
                    # C.g:477:4: 'goto' IDENTIFIER ';'
                    self.match(self.input, 100, self.FOLLOW_100_in_jump_statement2173)
                    if self.failed:
                        return 
                    self.match(self.input, IDENTIFIER, self.FOLLOW_IDENTIFIER_in_jump_statement2175)
                    if self.failed:
                        return 
                    self.match(self.input, 24, self.FOLLOW_24_in_jump_statement2177)
                    if self.failed:
                        return 


                elif alt85 == 2:
                    # C.g:478:4: 'continue' ';'
                    self.match(self.input, 101, self.FOLLOW_101_in_jump_statement2182)
                    if self.failed:
                        return 
                    self.match(self.input, 24, self.FOLLOW_24_in_jump_statement2184)
                    if self.failed:
                        return 


                elif alt85 == 3:
                    # C.g:479:4: 'break' ';'
                    self.match(self.input, 102, self.FOLLOW_102_in_jump_statement2189)
                    if self.failed:
                        return 
                    self.match(self.input, 24, self.FOLLOW_24_in_jump_statement2191)
                    if self.failed:
                        return 


                elif alt85 == 4:
                    # C.g:480:4: 'return' ';'
                    self.match(self.input, 103, self.FOLLOW_103_in_jump_statement2196)
                    if self.failed:
                        return 
                    self.match(self.input, 24, self.FOLLOW_24_in_jump_statement2198)
                    if self.failed:
                        return 


                elif alt85 == 5:
                    # C.g:481:4: 'return' expression ';'
                    self.match(self.input, 103, self.FOLLOW_103_in_jump_statement2203)
                    if self.failed:
                        return 
                    self.following.append(self.FOLLOW_expression_in_jump_statement2205)
                    self.expression()
                    self.following.pop()
                    if self.failed:
                        return 
                    self.match(self.input, 24, self.FOLLOW_24_in_jump_statement2207)
                    if self.failed:
                        return 



            except RecognitionException, re:
                self.reportError(re)
                self.recover(self.input, re)
        finally:
            if self.backtracking > 0:
                self.memoize(self.input, 70, jump_statement_StartIndex)

            pass

        return 

    # $ANTLR end jump_statement

    # $ANTLR start synpred2
    def synpred2_fragment(self, ):
        # C.g:77:6: ( declaration_specifiers )
        # C.g:77:6: declaration_specifiers
        self.following.append(self.FOLLOW_declaration_specifiers_in_synpred299)
        self.declaration_specifiers()
        self.following.pop()
        if self.failed:
            return 


    # $ANTLR end synpred2



    # $ANTLR start synpred4
    def synpred4_fragment(self, ):
        # C.g:77:4: ( ( declaration_specifiers )? declarator ( declaration )* '{' )
        # C.g:77:6: ( declaration_specifiers )? declarator ( declaration )* '{'
        # C.g:77:6: ( declaration_specifiers )?
        alt86 = 2
        LA86 = self.input.LA(1)
        if LA86 == 54:
            LA86_1 = self.input.LA(2)

            if (LA86_1 == 50) :
                LA86_18 = self.input.LA(3)

                if (self.synpred2()) :
                    alt86 = 1
        elif LA86 == 27 or LA86 == 28 or LA86 == 29 or LA86 == 30 or LA86 == 31 or LA86 == 32 or LA86 == 33 or LA86 == 34 or LA86 == 35 or LA86 == 36 or LA86 == 37 or LA86 == 38 or LA86 == 39 or LA86 == 42 or LA86 == 43 or LA86 == 45 or LA86 == 46 or LA86 == 47 or LA86 == 48 or LA86 == 49:
            alt86 = 1
        elif LA86 == IDENTIFIER:
            LA86 = self.input.LA(2)
            if LA86 == 54:
                LA86_19 = self.input.LA(3)

                if ((self.synpred2() and self.isTypeName(self.input.LT(1).getText()) )) :
                    alt86 = 1
            elif LA86 == 55:
                alt86 = 1
            elif LA86 == IDENTIFIER:
                LA86_21 = self.input.LA(3)

                if ((self.synpred2() and self.isTypeName(self.input.LT(1).getText()) )) :
                    alt86 = 1
            elif LA86 == 50:
                LA86_22 = self.input.LA(3)

                if ((self.synpred2() and self.isTypeName(self.input.LT(1).getText()) )) :
                    alt86 = 1
            elif LA86 == 27 or LA86 == 28 or LA86 == 29 or LA86 == 30:
                LA86_23 = self.input.LA(3)

                if ((self.synpred2() and self.isTypeName(self.input.LT(1).getText()) )) :
                    alt86 = 1
            elif LA86 == 31:
                LA86_24 = self.input.LA(3)

                if ((self.synpred2() and self.isTypeName(self.input.LT(1).getText()) )) :
                    alt86 = 1
            elif LA86 == 32:
                LA86_25 = self.input.LA(3)

                if ((self.synpred2() and self.isTypeName(self.input.LT(1).getText()) )) :
                    alt86 = 1
            elif LA86 == 33:
                LA86_26 = self.input.LA(3)

                if ((self.synpred2() and self.isTypeName(self.input.LT(1).getText()) )) :
                    alt86 = 1
            elif LA86 == 34:
                LA86_27 = self.input.LA(3)

                if ((self.synpred2() and self.isTypeName(self.input.LT(1).getText()) )) :
                    alt86 = 1
            elif LA86 == 35:
                LA86_28 = self.input.LA(3)

                if ((self.synpred2() and self.isTypeName(self.input.LT(1).getText()) )) :
                    alt86 = 1
            elif LA86 == 36:
                LA86_29 = self.input.LA(3)

                if ((self.synpred2() and self.isTypeName(self.input.LT(1).getText()) )) :
                    alt86 = 1
            elif LA86 == 37:
                LA86_30 = self.input.LA(3)

                if ((self.synpred2() and self.isTypeName(self.input.LT(1).getText()) )) :
                    alt86 = 1
            elif LA86 == 38:
                LA86_31 = self.input.LA(3)

                if ((self.synpred2() and self.isTypeName(self.input.LT(1).getText()) )) :
                    alt86 = 1
            elif LA86 == 39:
                LA86_32 = self.input.LA(3)

                if ((self.synpred2() and self.isTypeName(self.input.LT(1).getText()) )) :
                    alt86 = 1
            elif LA86 == 42 or LA86 == 43:
                LA86_33 = self.input.LA(3)

                if ((self.synpred2() and self.isTypeName(self.input.LT(1).getText()) )) :
                    alt86 = 1
            elif LA86 == 45:
                LA86_34 = self.input.LA(3)

                if ((self.synpred2() and self.isTypeName(self.input.LT(1).getText()) )) :
                    alt86 = 1
            elif LA86 == 46 or LA86 == 47 or LA86 == 48 or LA86 == 49:
                LA86_35 = self.input.LA(3)

                if ((self.synpred2() and self.isTypeName(self.input.LT(1).getText()) )) :
                    alt86 = 1
        if alt86 == 1:
            # C.g:0:0: declaration_specifiers
            self.following.append(self.FOLLOW_declaration_specifiers_in_synpred499)
            self.declaration_specifiers()
            self.following.pop()
            if self.failed:
                return 



        self.following.append(self.FOLLOW_declarator_in_synpred4102)
        self.declarator()
        self.following.pop()
        if self.failed:
            return 
        # C.g:77:41: ( declaration )*
        while True: #loop87
            alt87 = 2
            LA87_0 = self.input.LA(1)

            if (LA87_0 == IDENTIFIER or LA87_0 == 23 or (27 <= LA87_0 <= 39) or (42 <= LA87_0 <= 43) or (45 <= LA87_0 <= 49) or LA87_0 == 54) :
                alt87 = 1


            if alt87 == 1:
                # C.g:0:0: declaration
                self.following.append(self.FOLLOW_declaration_in_synpred4104)
                self.declaration()
                self.following.pop()
                if self.failed:
                    return 


            else:
                break #loop87


        self.match(self.input, 40, self.FOLLOW_40_in_synpred4107)
        if self.failed:
            return 


    # $ANTLR end synpred4



    # $ANTLR start synpred5
    def synpred5_fragment(self, ):
        # C.g:86:4: ( declaration_specifiers )
        # C.g:86:4: declaration_specifiers
        self.following.append(self.FOLLOW_declaration_specifiers_in_synpred5139)
        self.declaration_specifiers()
        self.following.pop()
        if self.failed:
            return 


    # $ANTLR end synpred5



    # $ANTLR start synpred8
    def synpred8_fragment(self, ):
        # C.g:99:14: ( declaration_specifiers )
        # C.g:99:14: declaration_specifiers
        self.following.append(self.FOLLOW_declaration_specifiers_in_synpred8188)
        self.declaration_specifiers()
        self.following.pop()
        if self.failed:
            return 


    # $ANTLR end synpred8



    # $ANTLR start synpred11
    def synpred11_fragment(self, ):
        # C.g:101:27: ( init_declarator_list )
        # C.g:101:27: init_declarator_list
        self.following.append(self.FOLLOW_init_declarator_list_in_synpred11209)
        self.init_declarator_list()
        self.following.pop()
        if self.failed:
            return 


    # $ANTLR end synpred11



    # $ANTLR start synpred15
    def synpred15_fragment(self, ):
        # C.g:106:7: ( type_specifier )
        # C.g:106:7: type_specifier
        self.following.append(self.FOLLOW_type_specifier_in_synpred15241)
        self.type_specifier()
        self.following.pop()
        if self.failed:
            return 


    # $ANTLR end synpred15



    # $ANTLR start synpred38
    def synpred38_fragment(self, ):
        # C.g:170:23: ( type_specifier )
        # C.g:170:23: type_specifier
        self.following.append(self.FOLLOW_type_specifier_in_synpred38521)
        self.type_specifier()
        self.following.pop()
        if self.failed:
            return 


    # $ANTLR end synpred38



    # $ANTLR start synpred51
    def synpred51_fragment(self, ):
        # C.g:205:4: ( ( attribute_specifier )* ( pointer )? direct_declarator )
        # C.g:205:4: ( attribute_specifier )* ( pointer )? direct_declarator
        # C.g:205:4: ( attribute_specifier )*
        while True: #loop93
            alt93 = 2
            LA93_0 = self.input.LA(1)

            if (LA93_0 == 54) :
                alt93 = 1


            if alt93 == 1:
                # C.g:0:0: attribute_specifier
                self.following.append(self.FOLLOW_attribute_specifier_in_synpred51690)
                self.attribute_specifier()
                self.following.pop()
                if self.failed:
                    return 


            else:
                break #loop93


        # C.g:205:25: ( pointer )?
        alt94 = 2
        LA94_0 = self.input.LA(1)

        if (LA94_0 == 55) :
            alt94 = 1
        if alt94 == 1:
            # C.g:0:0: pointer
            self.following.append(self.FOLLOW_pointer_in_synpred51693)
            self.pointer()
            self.following.pop()
            if self.failed:
                return 



        self.following.append(self.FOLLOW_direct_declarator_in_synpred51696)
        self.direct_declarator()
        self.following.pop()
        if self.failed:
            return 


    # $ANTLR end synpred51



    # $ANTLR start synpred54
    def synpred54_fragment(self, ):
        # C.g:218:9: ( declarator_suffix )
        # C.g:218:9: declarator_suffix
        self.following.append(self.FOLLOW_declarator_suffix_in_synpred54748)
        self.declarator_suffix()
        self.following.pop()
        if self.failed:
            return 


    # $ANTLR end synpred54



    # $ANTLR start synpred57
    def synpred57_fragment(self, ):
        # C.g:224:37: ( attribute_specifier )
        # C.g:224:37: attribute_specifier
        self.following.append(self.FOLLOW_attribute_specifier_in_synpred57794)
        self.attribute_specifier()
        self.following.pop()
        if self.failed:
            return 


    # $ANTLR end synpred57



    # $ANTLR start synpred58
    def synpred58_fragment(self, ):
        # C.g:224:9: ( '(' parameter_type_list ')' ( attribute_specifier )* )
        # C.g:224:9: '(' parameter_type_list ')' ( attribute_specifier )*
        self.match(self.input, 50, self.FOLLOW_50_in_synpred58788)
        if self.failed:
            return 
        self.following.append(self.FOLLOW_parameter_type_list_in_synpred58790)
        self.parameter_type_list()
        self.following.pop()
        if self.failed:
            return 
        self.match(self.input, 51, self.FOLLOW_51_in_synpred58792)
        if self.failed:
            return 
        # C.g:224:37: ( attribute_specifier )*
        while True: #loop95
            alt95 = 2
            LA95_0 = self.input.LA(1)

            if (LA95_0 == 54) :
                alt95 = 1


            if alt95 == 1:
                # C.g:0:0: attribute_specifier
                self.following.append(self.FOLLOW_attribute_specifier_in_synpred58794)
                self.attribute_specifier()
                self.following.pop()
                if self.failed:
                    return 


            else:
                break #loop95




    # $ANTLR end synpred58



    # $ANTLR start synpred59
    def synpred59_fragment(self, ):
        # C.g:225:33: ( attribute_specifier )
        # C.g:225:33: attribute_specifier
        self.following.append(self.FOLLOW_attribute_specifier_in_synpred59811)
        self.attribute_specifier()
        self.following.pop()
        if self.failed:
            return 


    # $ANTLR end synpred59



    # $ANTLR start synpred60
    def synpred60_fragment(self, ):
        # C.g:225:9: ( '(' identifier_list ')' ( attribute_specifier )* )
        # C.g:225:9: '(' identifier_list ')' ( attribute_specifier )*
        self.match(self.input, 50, self.FOLLOW_50_in_synpred60805)
        if self.failed:
            return 
        self.following.append(self.FOLLOW_identifier_list_in_synpred60807)
        self.identifier_list()
        self.following.pop()
        if self.failed:
            return 
        self.match(self.input, 51, self.FOLLOW_51_in_synpred60809)
        if self.failed:
            return 
        # C.g:225:33: ( attribute_specifier )*
        while True: #loop96
            alt96 = 2
            LA96_0 = self.input.LA(1)

            if (LA96_0 == 54) :
                alt96 = 1


            if alt96 == 1:
                # C.g:0:0: attribute_specifier
                self.following.append(self.FOLLOW_attribute_specifier_in_synpred60811)
                self.attribute_specifier()
                self.following.pop()
                if self.failed:
                    return 


            else:
                break #loop96




    # $ANTLR end synpred60



    # $ANTLR start synpred61
    def synpred61_fragment(self, ):
        # C.g:226:17: ( attribute_specifier )
        # C.g:226:17: attribute_specifier
        self.following.append(self.FOLLOW_attribute_specifier_in_synpred61826)
        self.attribute_specifier()
        self.following.pop()
        if self.failed:
            return 


    # $ANTLR end synpred61



    # $ANTLR start synpred64
    def synpred64_fragment(self, ):
        # C.g:238:7: ( IDENTIFIER '(' IDENTIFIER ')' )
        # C.g:238:7: IDENTIFIER '(' IDENTIFIER ')'
        self.match(self.input, IDENTIFIER, self.FOLLOW_IDENTIFIER_in_synpred64894)
        if self.failed:
            return 
        self.match(self.input, 50, self.FOLLOW_50_in_synpred64896)
        if self.failed:
            return 
        self.match(self.input, IDENTIFIER, self.FOLLOW_IDENTIFIER_in_synpred64898)
        if self.failed:
            return 
        self.match(self.input, 51, self.FOLLOW_51_in_synpred64900)
        if self.failed:
            return 


    # $ANTLR end synpred64



    # $ANTLR start synpred65
    def synpred65_fragment(self, ):
        # C.g:239:7: ( IDENTIFIER '(' IDENTIFIER ',' attribute_parameter_list ')' )
        # C.g:239:7: IDENTIFIER '(' IDENTIFIER ',' attribute_parameter_list ')'
        self.match(self.input, IDENTIFIER, self.FOLLOW_IDENTIFIER_in_synpred65908)
        if self.failed:
            return 
        self.match(self.input, 50, self.FOLLOW_50_in_synpred65910)
        if self.failed:
            return 
        self.match(self.input, IDENTIFIER, self.FOLLOW_IDENTIFIER_in_synpred65912)
        if self.failed:
            return 
        self.match(self.input, 25, self.FOLLOW_25_in_synpred65914)
        if self.failed:
            return 
        self.following.append(self.FOLLOW_attribute_parameter_list_in_synpred65916)
        self.attribute_parameter_list()
        self.following.pop()
        if self.failed:
            return 
        self.match(self.input, 51, self.FOLLOW_51_in_synpred65918)
        if self.failed:
            return 


    # $ANTLR end synpred65



    # $ANTLR start synpred67
    def synpred67_fragment(self, ):
        # C.g:240:7: ( IDENTIFIER '(' ( attribute_parameter_list )? ')' )
        # C.g:240:7: IDENTIFIER '(' ( attribute_parameter_list )? ')'
        self.match(self.input, IDENTIFIER, self.FOLLOW_IDENTIFIER_in_synpred67926)
        if self.failed:
            return 
        self.match(self.input, 50, self.FOLLOW_50_in_synpred67928)
        if self.failed:
            return 
        # C.g:240:22: ( attribute_parameter_list )?
        alt97 = 2
        LA97_0 = self.input.LA(1)

        if ((IDENTIFIER <= LA97_0 <= FLOATING_POINT_LITERAL) or LA97_0 == 50 or LA97_0 == 55 or (57 <= LA97_0 <= 58) or (61 <= LA97_0 <= 63) or (66 <= LA97_0 <= 68)) :
            alt97 = 1
        if alt97 == 1:
            # C.g:0:0: attribute_parameter_list
            self.following.append(self.FOLLOW_attribute_parameter_list_in_synpred67930)
            self.attribute_parameter_list()
            self.following.pop()
            if self.failed:
                return 



        self.match(self.input, 51, self.FOLLOW_51_in_synpred67933)
        if self.failed:
            return 


    # $ANTLR end synpred67



    # $ANTLR start synpred69
    def synpred69_fragment(self, ):
        # C.g:249:8: ( type_qualifier )
        # C.g:249:8: type_qualifier
        self.following.append(self.FOLLOW_type_qualifier_in_synpred69981)
        self.type_qualifier()
        self.following.pop()
        if self.failed:
            return 


    # $ANTLR end synpred69



    # $ANTLR start synpred70
    def synpred70_fragment(self, ):
        # C.g:249:24: ( pointer )
        # C.g:249:24: pointer
        self.following.append(self.FOLLOW_pointer_in_synpred70984)
        self.pointer()
        self.following.pop()
        if self.failed:
            return 


    # $ANTLR end synpred70



    # $ANTLR start synpred71
    def synpred71_fragment(self, ):
        # C.g:249:4: ( '*' ( type_qualifier )+ ( pointer )? )
        # C.g:249:4: '*' ( type_qualifier )+ ( pointer )?
        self.match(self.input, 55, self.FOLLOW_55_in_synpred71979)
        if self.failed:
            return 
        # C.g:249:8: ( type_qualifier )+
        cnt98 = 0
        while True: #loop98
            alt98 = 2
            LA98_0 = self.input.LA(1)

            if ((46 <= LA98_0 <= 49)) :
                alt98 = 1


            if alt98 == 1:
                # C.g:0:0: type_qualifier
                self.following.append(self.FOLLOW_type_qualifier_in_synpred71981)
                self.type_qualifier()
                self.following.pop()
                if self.failed:
                    return 


            else:
                if cnt98 >= 1:
                    break #loop98

                if self.backtracking > 0:
                    self.failed = True
                    return 

                eee = EarlyExitException(98, self.input)
                raise eee

            cnt98 += 1


        # C.g:249:24: ( pointer )?
        alt99 = 2
        LA99_0 = self.input.LA(1)

        if (LA99_0 == 55) :
            alt99 = 1
        if alt99 == 1:
            # C.g:0:0: pointer
            self.following.append(self.FOLLOW_pointer_in_synpred71984)
            self.pointer()
            self.following.pop()
            if self.failed:
                return 





    # $ANTLR end synpred71



    # $ANTLR start synpred72
    def synpred72_fragment(self, ):
        # C.g:250:4: ( '*' pointer )
        # C.g:250:4: '*' pointer
        self.match(self.input, 55, self.FOLLOW_55_in_synpred72990)
        if self.failed:
            return 
        self.following.append(self.FOLLOW_pointer_in_synpred72992)
        self.pointer()
        self.following.pop()
        if self.failed:
            return 


    # $ANTLR end synpred72



    # $ANTLR start synpred75
    def synpred75_fragment(self, ):
        # C.g:263:28: ( declarator )
        # C.g:263:28: declarator
        self.following.append(self.FOLLOW_declarator_in_synpred751047)
        self.declarator()
        self.following.pop()
        if self.failed:
            return 


    # $ANTLR end synpred75



    # $ANTLR start synpred76
    def synpred76_fragment(self, ):
        # C.g:263:39: ( abstract_declarator )
        # C.g:263:39: abstract_declarator
        self.following.append(self.FOLLOW_abstract_declarator_in_synpred761049)
        self.abstract_declarator()
        self.following.pop()
        if self.failed:
            return 


    # $ANTLR end synpred76



    # $ANTLR start synpred79
    def synpred79_fragment(self, ):
        # C.g:275:12: ( direct_abstract_declarator )
        # C.g:275:12: direct_abstract_declarator
        self.following.append(self.FOLLOW_direct_abstract_declarator_in_synpred791096)
        self.direct_abstract_declarator()
        self.following.pop()
        if self.failed:
            return 


    # $ANTLR end synpred79



    # $ANTLR start synpred82
    def synpred82_fragment(self, ):
        # C.g:280:65: ( abstract_declarator_suffix )
        # C.g:280:65: abstract_declarator_suffix
        self.following.append(self.FOLLOW_abstract_declarator_suffix_in_synpred821127)
        self.abstract_declarator_suffix()
        self.following.pop()
        if self.failed:
            return 


    # $ANTLR end synpred82



    # $ANTLR start synpred95
    def synpred95_fragment(self, ):
        # C.g:314:4: ( '(' type_name ')' cast_expression )
        # C.g:314:4: '(' type_name ')' cast_expression
        self.match(self.input, 50, self.FOLLOW_50_in_synpred951299)
        if self.failed:
            return 
        self.following.append(self.FOLLOW_type_name_in_synpred951301)
        self.type_name()
        self.following.pop()
        if self.failed:
            return 
        self.match(self.input, 51, self.FOLLOW_51_in_synpred951303)
        if self.failed:
            return 
        self.following.append(self.FOLLOW_cast_expression_in_synpred951305)
        self.cast_expression()
        self.following.pop()
        if self.failed:
            return 


    # $ANTLR end synpred95



    # $ANTLR start synpred100
    def synpred100_fragment(self, ):
        # C.g:323:4: ( 'sizeof' unary_expression )
        # C.g:323:4: 'sizeof' unary_expression
        self.match(self.input, 63, self.FOLLOW_63_in_synpred1001347)
        if self.failed:
            return 
        self.following.append(self.FOLLOW_unary_expression_in_synpred1001349)
        self.unary_expression()
        self.following.pop()
        if self.failed:
            return 


    # $ANTLR end synpred100



    # $ANTLR start synpred120
    def synpred120_fragment(self, ):
        # C.g:366:27: ( ',' assignment_expression )
        # C.g:366:27: ',' assignment_expression
        self.match(self.input, 25, self.FOLLOW_25_in_synpred1201635)
        if self.failed:
            return 
        self.following.append(self.FOLLOW_assignment_expression_in_synpred1201637)
        self.assignment_expression()
        self.following.pop()
        if self.failed:
            return 


    # $ANTLR end synpred120



    # $ANTLR start synpred121
    def synpred121_fragment(self, ):
        # C.g:374:4: ( lvalue assignment_operator assignment_expression )
        # C.g:374:4: lvalue assignment_operator assignment_expression
        self.following.append(self.FOLLOW_lvalue_in_synpred1211661)
        self.lvalue()
        self.following.pop()
        if self.failed:
            return 
        self.following.append(self.FOLLOW_assignment_operator_in_synpred1211663)
        self.assignment_operator()
        self.following.pop()
        if self.failed:
            return 
        self.following.append(self.FOLLOW_assignment_expression_in_synpred1211665)
        self.assignment_expression()
        self.following.pop()
        if self.failed:
            return 


    # $ANTLR end synpred121



    # $ANTLR start synpred153
    def synpred153_fragment(self, ):
        # C.g:453:8: ( declaration )
        # C.g:453:8: declaration
        self.following.append(self.FOLLOW_declaration_in_synpred1532021)
        self.declaration()
        self.following.pop()
        if self.failed:
            return 


    # $ANTLR end synpred153



    def synpred69(self):
        self.backtracking += 1
        start = self.input.mark()
        self.synpred69_fragment()
        success = not self.failed
        self.input.rewind(start)
        self.backtracking -= 1
        self.failed = False
        return success

    def synpred82(self):
        self.backtracking += 1
        start = self.input.mark()
        self.synpred82_fragment()
        success = not self.failed
        self.input.rewind(start)
        self.backtracking -= 1
        self.failed = False
        return success

    def synpred65(self):
        self.backtracking += 1
        start = self.input.mark()
        self.synpred65_fragment()
        success = not self.failed
        self.input.rewind(start)
        self.backtracking -= 1
        self.failed = False
        return success

    def synpred67(self):
        self.backtracking += 1
        start = self.input.mark()
        self.synpred67_fragment()
        success = not self.failed
        self.input.rewind(start)
        self.backtracking -= 1
        self.failed = False
        return success

    def synpred100(self):
        self.backtracking += 1
        start = self.input.mark()
        self.synpred100_fragment()
        success = not self.failed
        self.input.rewind(start)
        self.backtracking -= 1
        self.failed = False
        return success

    def synpred61(self):
        self.backtracking += 1
        start = self.input.mark()
        self.synpred61_fragment()
        success = not self.failed
        self.input.rewind(start)
        self.backtracking -= 1
        self.failed = False
        return success

    def synpred120(self):
        self.backtracking += 1
        start = self.input.mark()
        self.synpred120_fragment()
        success = not self.failed
        self.input.rewind(start)
        self.backtracking -= 1
        self.failed = False
        return success

    def synpred64(self):
        self.backtracking += 1
        start = self.input.mark()
        self.synpred64_fragment()
        success = not self.failed
        self.input.rewind(start)
        self.backtracking -= 1
        self.failed = False
        return success

    def synpred121(self):
        self.backtracking += 1
        start = self.input.mark()
        self.synpred121_fragment()
        success = not self.failed
        self.input.rewind(start)
        self.backtracking -= 1
        self.failed = False
        return success

    def synpred60(self):
        self.backtracking += 1
        start = self.input.mark()
        self.synpred60_fragment()
        success = not self.failed
        self.input.rewind(start)
        self.backtracking -= 1
        self.failed = False
        return success

    def synpred70(self):
        self.backtracking += 1
        start = self.input.mark()
        self.synpred70_fragment()
        success = not self.failed
        self.input.rewind(start)
        self.backtracking -= 1
        self.failed = False
        return success

    def synpred71(self):
        self.backtracking += 1
        start = self.input.mark()
        self.synpred71_fragment()
        success = not self.failed
        self.input.rewind(start)
        self.backtracking -= 1
        self.failed = False
        return success

    def synpred59(self):
        self.backtracking += 1
        start = self.input.mark()
        self.synpred59_fragment()
        success = not self.failed
        self.input.rewind(start)
        self.backtracking -= 1
        self.failed = False
        return success

    def synpred58(self):
        self.backtracking += 1
        start = self.input.mark()
        self.synpred58_fragment()
        success = not self.failed
        self.input.rewind(start)
        self.backtracking -= 1
        self.failed = False
        return success

    def synpred95(self):
        self.backtracking += 1
        start = self.input.mark()
        self.synpred95_fragment()
        success = not self.failed
        self.input.rewind(start)
        self.backtracking -= 1
        self.failed = False
        return success

    def synpred57(self):
        self.backtracking += 1
        start = self.input.mark()
        self.synpred57_fragment()
        success = not self.failed
        self.input.rewind(start)
        self.backtracking -= 1
        self.failed = False
        return success

    def synpred38(self):
        self.backtracking += 1
        start = self.input.mark()
        self.synpred38_fragment()
        success = not self.failed
        self.input.rewind(start)
        self.backtracking -= 1
        self.failed = False
        return success

    def synpred75(self):
        self.backtracking += 1
        start = self.input.mark()
        self.synpred75_fragment()
        success = not self.failed
        self.input.rewind(start)
        self.backtracking -= 1
        self.failed = False
        return success

    def synpred72(self):
        self.backtracking += 1
        start = self.input.mark()
        self.synpred72_fragment()
        success = not self.failed
        self.input.rewind(start)
        self.backtracking -= 1
        self.failed = False
        return success

    def synpred54(self):
        self.backtracking += 1
        start = self.input.mark()
        self.synpred54_fragment()
        success = not self.failed
        self.input.rewind(start)
        self.backtracking -= 1
        self.failed = False
        return success

    def synpred5(self):
        self.backtracking += 1
        start = self.input.mark()
        self.synpred5_fragment()
        success = not self.failed
        self.input.rewind(start)
        self.backtracking -= 1
        self.failed = False
        return success

    def synpred79(self):
        self.backtracking += 1
        start = self.input.mark()
        self.synpred79_fragment()
        success = not self.failed
        self.input.rewind(start)
        self.backtracking -= 1
        self.failed = False
        return success

    def synpred51(self):
        self.backtracking += 1
        start = self.input.mark()
        self.synpred51_fragment()
        success = not self.failed
        self.input.rewind(start)
        self.backtracking -= 1
        self.failed = False
        return success

    def synpred76(self):
        self.backtracking += 1
        start = self.input.mark()
        self.synpred76_fragment()
        success = not self.failed
        self.input.rewind(start)
        self.backtracking -= 1
        self.failed = False
        return success

    def synpred8(self):
        self.backtracking += 1
        start = self.input.mark()
        self.synpred8_fragment()
        success = not self.failed
        self.input.rewind(start)
        self.backtracking -= 1
        self.failed = False
        return success

    def synpred2(self):
        self.backtracking += 1
        start = self.input.mark()
        self.synpred2_fragment()
        success = not self.failed
        self.input.rewind(start)
        self.backtracking -= 1
        self.failed = False
        return success

    def synpred4(self):
        self.backtracking += 1
        start = self.input.mark()
        self.synpred4_fragment()
        success = not self.failed
        self.input.rewind(start)
        self.backtracking -= 1
        self.failed = False
        return success

    def synpred153(self):
        self.backtracking += 1
        start = self.input.mark()
        self.synpred153_fragment()
        success = not self.failed
        self.input.rewind(start)
        self.backtracking -= 1
        self.failed = False
        return success

    def synpred15(self):
        self.backtracking += 1
        start = self.input.mark()
        self.synpred15_fragment()
        success = not self.failed
        self.input.rewind(start)
        self.backtracking -= 1
        self.failed = False
        return success

    def synpred11(self):
        self.backtracking += 1
        start = self.input.mark()
        self.synpred11_fragment()
        success = not self.failed
        self.input.rewind(start)
        self.backtracking -= 1
        self.failed = False
        return success



 

    FOLLOW_external_declaration_in_translation_unit76 = frozenset([1, 4, 23, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 42, 43, 45, 46, 47, 48, 49, 50, 54, 55])
    FOLLOW_function_definition_in_external_declaration112 = frozenset([1])
    FOLLOW_declaration_in_external_declaration117 = frozenset([1])
    FOLLOW_declaration_specifiers_in_function_definition139 = frozenset([4, 50, 54, 55])
    FOLLOW_declarator_in_function_definition142 = frozenset([4, 23, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 42, 43, 45, 46, 47, 48, 49, 54])
    FOLLOW_declaration_in_function_definition148 = frozenset([4, 23, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 42, 43, 45, 46, 47, 48, 49, 54])
    FOLLOW_compound_statement_in_function_definition151 = frozenset([1])
    FOLLOW_compound_statement_in_function_definition158 = frozenset([1])
    FOLLOW_23_in_declaration186 = frozenset([4, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 42, 43, 45, 46, 47, 48, 49, 50, 54, 55])
    FOLLOW_declaration_specifiers_in_declaration188 = frozenset([4, 50, 54, 55])
    FOLLOW_init_declarator_list_in_declaration196 = frozenset([24, 54])
    FOLLOW_attribute_specifier_in_declaration198 = frozenset([24, 54])
    FOLLOW_24_in_declaration201 = frozenset([1])
    FOLLOW_declaration_specifiers_in_declaration207 = frozenset([4, 24, 50, 54, 55])
    FOLLOW_init_declarator_list_in_declaration209 = frozenset([24, 54])
    FOLLOW_attribute_specifier_in_declaration212 = frozenset([24, 54])
    FOLLOW_24_in_declaration214 = frozenset([1])
    FOLLOW_attribute_specifier_in_declaration_specifiers225 = frozenset([4, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 42, 43, 45, 46, 47, 48, 49, 54])
    FOLLOW_storage_class_specifier_in_declaration_specifiers233 = frozenset([1, 4, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 42, 43, 45, 46, 47, 48, 49])
    FOLLOW_type_specifier_in_declaration_specifiers241 = frozenset([1, 4, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 42, 43, 45, 46, 47, 48, 49])
    FOLLOW_type_qualifier_in_declaration_specifiers255 = frozenset([1, 4, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 42, 43, 45, 46, 47, 48, 49])
    FOLLOW_init_declarator_in_init_declarator_list277 = frozenset([1, 25])
    FOLLOW_25_in_init_declarator_list280 = frozenset([4, 50, 54, 55])
    FOLLOW_init_declarator_in_init_declarator_list282 = frozenset([1, 25])
    FOLLOW_declarator_in_init_declarator295 = frozenset([1, 26])
    FOLLOW_26_in_init_declarator298 = frozenset([4, 5, 6, 7, 8, 9, 10, 40, 50, 55, 57, 58, 61, 62, 63, 66, 67, 68])
    FOLLOW_initializer_in_init_declarator300 = frozenset([1])
    FOLLOW_set_in_storage_class_specifier0 = frozenset([1])
    FOLLOW_31_in_type_specifier339 = frozenset([1])
    FOLLOW_32_in_type_specifier344 = frozenset([1])
    FOLLOW_33_in_type_specifier349 = frozenset([1])
    FOLLOW_34_in_type_specifier354 = frozenset([1])
    FOLLOW_35_in_type_specifier359 = frozenset([1])
    FOLLOW_36_in_type_specifier364 = frozenset([1])
    FOLLOW_37_in_type_specifier369 = frozenset([1])
    FOLLOW_38_in_type_specifier374 = frozenset([1])
    FOLLOW_39_in_type_specifier379 = frozenset([1])
    FOLLOW_struct_or_union_specifier_in_type_specifier384 = frozenset([1])
    FOLLOW_enum_specifier_in_type_specifier389 = frozenset([1])
    FOLLOW_type_id_in_type_specifier394 = frozenset([1])
    FOLLOW_IDENTIFIER_in_type_id412 = frozenset([1])
    FOLLOW_struct_or_union_in_struct_or_union_specifier445 = frozenset([4, 40])
    FOLLOW_IDENTIFIER_in_struct_or_union_specifier447 = frozenset([40])
    FOLLOW_40_in_struct_or_union_specifier450 = frozenset([4, 31, 32, 33, 34, 35, 36, 37, 38, 39, 42, 43, 45, 46, 47, 48, 49])
    FOLLOW_struct_declaration_list_in_struct_or_union_specifier452 = frozenset([41])
    FOLLOW_41_in_struct_or_union_specifier454 = frozenset([1])
    FOLLOW_struct_or_union_in_struct_or_union_specifier459 = frozenset([4])
    FOLLOW_IDENTIFIER_in_struct_or_union_specifier461 = frozenset([1])
    FOLLOW_set_in_struct_or_union0 = frozenset([1])
    FOLLOW_struct_declaration_in_struct_declaration_list488 = frozenset([1, 4, 31, 32, 33, 34, 35, 36, 37, 38, 39, 42, 43, 45, 46, 47, 48, 49])
    FOLLOW_specifier_qualifier_list_in_struct_declaration500 = frozenset([4, 44, 50, 54, 55])
    FOLLOW_struct_declarator_list_in_struct_declaration502 = frozenset([24])
    FOLLOW_24_in_struct_declaration504 = frozenset([1])
    FOLLOW_type_qualifier_in_specifier_qualifier_list517 = frozenset([1, 4, 31, 32, 33, 34, 35, 36, 37, 38, 39, 42, 43, 45, 46, 47, 48, 49])
    FOLLOW_type_specifier_in_specifier_qualifier_list521 = frozenset([1, 4, 31, 32, 33, 34, 35, 36, 37, 38, 39, 42, 43, 45, 46, 47, 48, 49])
    FOLLOW_struct_declarator_in_struct_declarator_list535 = frozenset([1, 25])
    FOLLOW_25_in_struct_declarator_list538 = frozenset([4, 44, 50, 54, 55])
    FOLLOW_struct_declarator_in_struct_declarator_list540 = frozenset([1, 25])
    FOLLOW_declarator_in_struct_declarator553 = frozenset([1, 44])
    FOLLOW_44_in_struct_declarator556 = frozenset([4, 5, 6, 7, 8, 9, 10, 50, 55, 57, 58, 61, 62, 63, 66, 67, 68])
    FOLLOW_constant_expression_in_struct_declarator558 = frozenset([1])
    FOLLOW_44_in_struct_declarator565 = frozenset([4, 5, 6, 7, 8, 9, 10, 50, 55, 57, 58, 61, 62, 63, 66, 67, 68])
    FOLLOW_constant_expression_in_struct_declarator567 = frozenset([1])
    FOLLOW_45_in_enum_specifier585 = frozenset([40])
    FOLLOW_40_in_enum_specifier587 = frozenset([4])
    FOLLOW_enumerator_list_in_enum_specifier589 = frozenset([41])
    FOLLOW_41_in_enum_specifier591 = frozenset([1])
    FOLLOW_45_in_enum_specifier596 = frozenset([4])
    FOLLOW_IDENTIFIER_in_enum_specifier598 = frozenset([40])
    FOLLOW_40_in_enum_specifier600 = frozenset([4])
    FOLLOW_enumerator_list_in_enum_specifier602 = frozenset([41])
    FOLLOW_41_in_enum_specifier604 = frozenset([1])
    FOLLOW_45_in_enum_specifier609 = frozenset([4])
    FOLLOW_IDENTIFIER_in_enum_specifier611 = frozenset([1])
    FOLLOW_enumerator_in_enumerator_list622 = frozenset([1, 25])
    FOLLOW_25_in_enumerator_list625 = frozenset([4])
    FOLLOW_enumerator_in_enumerator_list627 = frozenset([1, 25])
    FOLLOW_IDENTIFIER_in_enumerator640 = frozenset([1, 26])
    FOLLOW_26_in_enumerator643 = frozenset([4, 5, 6, 7, 8, 9, 10, 50, 55, 57, 58, 61, 62, 63, 66, 67, 68])
    FOLLOW_constant_expression_in_enumerator645 = frozenset([1])
    FOLLOW_set_in_type_qualifier0 = frozenset([1])
    FOLLOW_attribute_specifier_in_declarator690 = frozenset([4, 50, 54, 55])
    FOLLOW_pointer_in_declarator693 = frozenset([4, 50])
    FOLLOW_direct_declarator_in_declarator696 = frozenset([1])
    FOLLOW_attribute_specifier_in_declarator701 = frozenset([54, 55])
    FOLLOW_pointer_in_declarator704 = frozenset([1])
    FOLLOW_IDENTIFIER_in_direct_declarator719 = frozenset([1, 50, 52])
    FOLLOW_50_in_direct_declarator730 = frozenset([4, 50, 54, 55])
    FOLLOW_declarator_in_direct_declarator732 = frozenset([51])
    FOLLOW_51_in_direct_declarator734 = frozenset([1, 50, 52])
    FOLLOW_declarator_suffix_in_direct_declarator748 = frozenset([1, 50, 52])
    FOLLOW_52_in_declarator_suffix762 = frozenset([4, 5, 6, 7, 8, 9, 10, 50, 55, 57, 58, 61, 62, 63, 66, 67, 68])
    FOLLOW_constant_expression_in_declarator_suffix764 = frozenset([53])
    FOLLOW_53_in_declarator_suffix766 = frozenset([1])
    FOLLOW_52_in_declarator_suffix776 = frozenset([53])
    FOLLOW_53_in_declarator_suffix778 = frozenset([1])
    FOLLOW_50_in_declarator_suffix788 = frozenset([4, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 42, 43, 45, 46, 47, 48, 49, 54])
    FOLLOW_parameter_type_list_in_declarator_suffix790 = frozenset([51])
    FOLLOW_51_in_declarator_suffix792 = frozenset([1, 54])
    FOLLOW_attribute_specifier_in_declarator_suffix794 = frozenset([1, 54])
    FOLLOW_50_in_declarator_suffix805 = frozenset([4])
    FOLLOW_identifier_list_in_declarator_suffix807 = frozenset([51])
    FOLLOW_51_in_declarator_suffix809 = frozenset([1, 54])
    FOLLOW_attribute_specifier_in_declarator_suffix811 = frozenset([1, 54])
    FOLLOW_50_in_declarator_suffix822 = frozenset([51])
    FOLLOW_51_in_declarator_suffix824 = frozenset([1, 54])
    FOLLOW_attribute_specifier_in_declarator_suffix826 = frozenset([1, 54])
    FOLLOW_54_in_attribute_specifier842 = frozenset([50])
    FOLLOW_50_in_attribute_specifier844 = frozenset([50])
    FOLLOW_50_in_attribute_specifier846 = frozenset([4, 51])
    FOLLOW_attribute_list_in_attribute_specifier848 = frozenset([51])
    FOLLOW_51_in_attribute_specifier851 = frozenset([51])
    FOLLOW_51_in_attribute_specifier853 = frozenset([1])
    FOLLOW_attribute_in_attribute_list870 = frozenset([1, 25])
    FOLLOW_25_in_attribute_list873 = frozenset([4])
    FOLLOW_attribute_in_attribute_list875 = frozenset([1, 25])
    FOLLOW_IDENTIFIER_in_attribute894 = frozenset([50])
    FOLLOW_50_in_attribute896 = frozenset([4])
    FOLLOW_IDENTIFIER_in_attribute898 = frozenset([51])
    FOLLOW_51_in_attribute900 = frozenset([1])
    FOLLOW_IDENTIFIER_in_attribute908 = frozenset([50])
    FOLLOW_50_in_attribute910 = frozenset([4])
    FOLLOW_IDENTIFIER_in_attribute912 = frozenset([25])
    FOLLOW_25_in_attribute914 = frozenset([4, 5, 6, 7, 8, 9, 10, 50, 55, 57, 58, 61, 62, 63, 66, 67, 68])
    FOLLOW_attribute_parameter_list_in_attribute916 = frozenset([51])
    FOLLOW_51_in_attribute918 = frozenset([1])
    FOLLOW_IDENTIFIER_in_attribute926 = frozenset([50])
    FOLLOW_50_in_attribute928 = frozenset([4, 5, 6, 7, 8, 9, 10, 50, 51, 55, 57, 58, 61, 62, 63, 66, 67, 68])
    FOLLOW_attribute_parameter_list_in_attribute930 = frozenset([51])
    FOLLOW_51_in_attribute933 = frozenset([1])
    FOLLOW_IDENTIFIER_in_attribute941 = frozenset([1])
    FOLLOW_expression_in_attribute_parameter_list958 = frozenset([1, 25])
    FOLLOW_25_in_attribute_parameter_list961 = frozenset([4, 5, 6, 7, 8, 9, 10, 50, 55, 57, 58, 61, 62, 63, 66, 67, 68])
    FOLLOW_expression_in_attribute_parameter_list963 = frozenset([1, 25])
    FOLLOW_55_in_pointer979 = frozenset([46, 47, 48, 49])
    FOLLOW_type_qualifier_in_pointer981 = frozenset([1, 46, 47, 48, 49, 55])
    FOLLOW_pointer_in_pointer984 = frozenset([1])
    FOLLOW_55_in_pointer990 = frozenset([55])
    FOLLOW_pointer_in_pointer992 = frozenset([1])
    FOLLOW_55_in_pointer997 = frozenset([1])
    FOLLOW_parameter_list_in_parameter_type_list1008 = frozenset([1, 25])
    FOLLOW_25_in_parameter_type_list1011 = frozenset([56])
    FOLLOW_56_in_parameter_type_list1013 = frozenset([1])
    FOLLOW_parameter_declaration_in_parameter_list1026 = frozenset([1, 25])
    FOLLOW_25_in_parameter_list1029 = frozenset([4, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 42, 43, 45, 46, 47, 48, 49, 54])
    FOLLOW_parameter_declaration_in_parameter_list1031 = frozenset([1, 25])
    FOLLOW_declaration_specifiers_in_parameter_declaration1044 = frozenset([1, 4, 50, 52, 54, 55])
    FOLLOW_declarator_in_parameter_declaration1047 = frozenset([1, 4, 50, 52, 54, 55])
    FOLLOW_abstract_declarator_in_parameter_declaration1049 = frozenset([1, 4, 50, 52, 54, 55])
    FOLLOW_IDENTIFIER_in_identifier_list1062 = frozenset([1, 25])
    FOLLOW_25_in_identifier_list1065 = frozenset([4])
    FOLLOW_IDENTIFIER_in_identifier_list1067 = frozenset([1, 25])
    FOLLOW_specifier_qualifier_list_in_type_name1080 = frozenset([1, 50, 52, 55])
    FOLLOW_abstract_declarator_in_type_name1082 = frozenset([1])
    FOLLOW_pointer_in_abstract_declarator1094 = frozenset([1, 50, 52])
    FOLLOW_direct_abstract_declarator_in_abstract_declarator1096 = frozenset([1])
    FOLLOW_direct_abstract_declarator_in_abstract_declarator1102 = frozenset([1])
    FOLLOW_50_in_direct_abstract_declarator1115 = frozenset([50, 52, 55])
    FOLLOW_abstract_declarator_in_direct_abstract_declarator1117 = frozenset([51])
    FOLLOW_51_in_direct_abstract_declarator1119 = frozenset([1, 50, 52])
    FOLLOW_abstract_declarator_suffix_in_direct_abstract_declarator1123 = frozenset([1, 50, 52])
    FOLLOW_abstract_declarator_suffix_in_direct_abstract_declarator1127 = frozenset([1, 50, 52])
    FOLLOW_52_in_abstract_declarator_suffix1139 = frozenset([53])
    FOLLOW_53_in_abstract_declarator_suffix1141 = frozenset([1])
    FOLLOW_52_in_abstract_declarator_suffix1146 = frozenset([4, 5, 6, 7, 8, 9, 10, 50, 55, 57, 58, 61, 62, 63, 66, 67, 68])
    FOLLOW_constant_expression_in_abstract_declarator_suffix1148 = frozenset([53])
    FOLLOW_53_in_abstract_declarator_suffix1150 = frozenset([1])
    FOLLOW_50_in_abstract_declarator_suffix1155 = frozenset([51])
    FOLLOW_51_in_abstract_declarator_suffix1157 = frozenset([1])
    FOLLOW_50_in_abstract_declarator_suffix1162 = frozenset([4, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 42, 43, 45, 46, 47, 48, 49, 54])
    FOLLOW_parameter_type_list_in_abstract_declarator_suffix1164 = frozenset([51])
    FOLLOW_51_in_abstract_declarator_suffix1166 = frozenset([1])
    FOLLOW_assignment_expression_in_initializer1178 = frozenset([1])
    FOLLOW_40_in_initializer1183 = frozenset([4, 5, 6, 7, 8, 9, 10, 40, 50, 55, 57, 58, 61, 62, 63, 66, 67, 68])
    FOLLOW_initializer_list_in_initializer1185 = frozenset([25, 41])
    FOLLOW_25_in_initializer1187 = frozenset([41])
    FOLLOW_41_in_initializer1190 = frozenset([1])
    FOLLOW_initializer_in_initializer_list1201 = frozenset([1, 25])
    FOLLOW_25_in_initializer_list1204 = frozenset([4, 5, 6, 7, 8, 9, 10, 40, 50, 55, 57, 58, 61, 62, 63, 66, 67, 68])
    FOLLOW_initializer_in_initializer_list1206 = frozenset([1, 25])
    FOLLOW_assignment_expression_in_argument_expression_list1223 = frozenset([1, 25])
    FOLLOW_25_in_argument_expression_list1226 = frozenset([4, 5, 6, 7, 8, 9, 10, 50, 55, 57, 58, 61, 62, 63, 66, 67, 68])
    FOLLOW_assignment_expression_in_argument_expression_list1228 = frozenset([1, 25])
    FOLLOW_multiplicative_expression_in_additive_expression1242 = frozenset([1, 57, 58])
    FOLLOW_57_in_additive_expression1246 = frozenset([4, 5, 6, 7, 8, 9, 10, 50, 55, 57, 58, 61, 62, 63, 66, 67, 68])
    FOLLOW_multiplicative_expression_in_additive_expression1248 = frozenset([1, 57, 58])
    FOLLOW_58_in_additive_expression1252 = frozenset([4, 5, 6, 7, 8, 9, 10, 50, 55, 57, 58, 61, 62, 63, 66, 67, 68])
    FOLLOW_multiplicative_expression_in_additive_expression1254 = frozenset([1, 57, 58])
    FOLLOW_cast_expression_in_multiplicative_expression1268 = frozenset([1, 55, 59, 60])
    FOLLOW_55_in_multiplicative_expression1272 = frozenset([4, 5, 6, 7, 8, 9, 10, 50, 55, 57, 58, 61, 62, 63, 66, 67, 68])
    FOLLOW_cast_expression_in_multiplicative_expression1274 = frozenset([1, 55, 59, 60])
    FOLLOW_59_in_multiplicative_expression1278 = frozenset([4, 5, 6, 7, 8, 9, 10, 50, 55, 57, 58, 61, 62, 63, 66, 67, 68])
    FOLLOW_cast_expression_in_multiplicative_expression1280 = frozenset([1, 55, 59, 60])
    FOLLOW_60_in_multiplicative_expression1284 = frozenset([4, 5, 6, 7, 8, 9, 10, 50, 55, 57, 58, 61, 62, 63, 66, 67, 68])
    FOLLOW_cast_expression_in_multiplicative_expression1286 = frozenset([1, 55, 59, 60])
    FOLLOW_50_in_cast_expression1299 = frozenset([4, 31, 32, 33, 34, 35, 36, 37, 38, 39, 42, 43, 45, 46, 47, 48, 49])
    FOLLOW_type_name_in_cast_expression1301 = frozenset([51])
    FOLLOW_51_in_cast_expression1303 = frozenset([4, 5, 6, 7, 8, 9, 10, 50, 55, 57, 58, 61, 62, 63, 66, 67, 68])
    FOLLOW_cast_expression_in_cast_expression1305 = frozenset([1])
    FOLLOW_unary_expression_in_cast_expression1310 = frozenset([1])
    FOLLOW_postfix_expression_in_unary_expression1321 = frozenset([1])
    FOLLOW_61_in_unary_expression1326 = frozenset([4, 5, 6, 7, 8, 9, 10, 50, 55, 57, 58, 61, 62, 63, 66, 67, 68])
    FOLLOW_unary_expression_in_unary_expression1328 = frozenset([1])
    FOLLOW_62_in_unary_expression1333 = frozenset([4, 5, 6, 7, 8, 9, 10, 50, 55, 57, 58, 61, 62, 63, 66, 67, 68])
    FOLLOW_unary_expression_in_unary_expression1335 = frozenset([1])
    FOLLOW_unary_operator_in_unary_expression1340 = frozenset([4, 5, 6, 7, 8, 9, 10, 50, 55, 57, 58, 61, 62, 63, 66, 67, 68])
    FOLLOW_cast_expression_in_unary_expression1342 = frozenset([1])
    FOLLOW_63_in_unary_expression1347 = frozenset([4, 5, 6, 7, 8, 9, 10, 50, 55, 57, 58, 61, 62, 63, 66, 67, 68])
    FOLLOW_unary_expression_in_unary_expression1349 = frozenset([1])
    FOLLOW_63_in_unary_expression1354 = frozenset([50])
    FOLLOW_50_in_unary_expression1356 = frozenset([4, 31, 32, 33, 34, 35, 36, 37, 38, 39, 42, 43, 45, 46, 47, 48, 49])
    FOLLOW_type_name_in_unary_expression1358 = frozenset([51])
    FOLLOW_51_in_unary_expression1360 = frozenset([1])
    FOLLOW_primary_expression_in_postfix_expression1373 = frozenset([1, 50, 52, 61, 62, 64, 65])
    FOLLOW_52_in_postfix_expression1387 = frozenset([4, 5, 6, 7, 8, 9, 10, 50, 55, 57, 58, 61, 62, 63, 66, 67, 68])
    FOLLOW_expression_in_postfix_expression1389 = frozenset([53])
    FOLLOW_53_in_postfix_expression1391 = frozenset([1, 50, 52, 61, 62, 64, 65])
    FOLLOW_50_in_postfix_expression1405 = frozenset([51])
    FOLLOW_51_in_postfix_expression1407 = frozenset([1, 50, 52, 61, 62, 64, 65])
    FOLLOW_50_in_postfix_expression1421 = frozenset([4, 5, 6, 7, 8, 9, 10, 50, 55, 57, 58, 61, 62, 63, 66, 67, 68])
    FOLLOW_argument_expression_list_in_postfix_expression1423 = frozenset([51])
    FOLLOW_51_in_postfix_expression1425 = frozenset([1, 50, 52, 61, 62, 64, 65])
    FOLLOW_64_in_postfix_expression1439 = frozenset([4])
    FOLLOW_IDENTIFIER_in_postfix_expression1441 = frozenset([1, 50, 52, 61, 62, 64, 65])
    FOLLOW_65_in_postfix_expression1455 = frozenset([4])
    FOLLOW_IDENTIFIER_in_postfix_expression1457 = frozenset([1, 50, 52, 61, 62, 64, 65])
    FOLLOW_61_in_postfix_expression1471 = frozenset([1, 50, 52, 61, 62, 64, 65])
    FOLLOW_62_in_postfix_expression1485 = frozenset([1, 50, 52, 61, 62, 64, 65])
    FOLLOW_set_in_unary_operator0 = frozenset([1])
    FOLLOW_IDENTIFIER_in_primary_expression1543 = frozenset([1])
    FOLLOW_constant_in_primary_expression1548 = frozenset([1])
    FOLLOW_50_in_primary_expression1553 = frozenset([4, 5, 6, 7, 8, 9, 10, 50, 55, 57, 58, 61, 62, 63, 66, 67, 68])
    FOLLOW_expression_in_primary_expression1555 = frozenset([51])
    FOLLOW_51_in_primary_expression1557 = frozenset([1])
    FOLLOW_set_in_constant0 = frozenset([1])
    FOLLOW_assignment_expression_in_expression1632 = frozenset([1, 25])
    FOLLOW_25_in_expression1635 = frozenset([4, 5, 6, 7, 8, 9, 10, 50, 55, 57, 58, 61, 62, 63, 66, 67, 68])
    FOLLOW_assignment_expression_in_expression1637 = frozenset([1, 25])
    FOLLOW_conditional_expression_in_constant_expression1650 = frozenset([1])
    FOLLOW_lvalue_in_assignment_expression1661 = frozenset([26, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78])
    FOLLOW_assignment_operator_in_assignment_expression1663 = frozenset([4, 5, 6, 7, 8, 9, 10, 50, 55, 57, 58, 61, 62, 63, 66, 67, 68])
    FOLLOW_assignment_expression_in_assignment_expression1665 = frozenset([1])
    FOLLOW_conditional_expression_in_assignment_expression1670 = frozenset([1])
    FOLLOW_unary_expression_in_lvalue1682 = frozenset([1])
    FOLLOW_set_in_assignment_operator0 = frozenset([1])
    FOLLOW_logical_or_expression_in_conditional_expression1754 = frozenset([1, 79])
    FOLLOW_79_in_conditional_expression1757 = frozenset([4, 5, 6, 7, 8, 9, 10, 50, 55, 57, 58, 61, 62, 63, 66, 67, 68])
    FOLLOW_expression_in_conditional_expression1759 = frozenset([44])
    FOLLOW_44_in_conditional_expression1761 = frozenset([4, 5, 6, 7, 8, 9, 10, 50, 55, 57, 58, 61, 62, 63, 66, 67, 68])
    FOLLOW_conditional_expression_in_conditional_expression1763 = frozenset([1])
    FOLLOW_logical_and_expression_in_logical_or_expression1776 = frozenset([1, 80])
    FOLLOW_80_in_logical_or_expression1779 = frozenset([4, 5, 6, 7, 8, 9, 10, 50, 55, 57, 58, 61, 62, 63, 66, 67, 68])
    FOLLOW_logical_and_expression_in_logical_or_expression1781 = frozenset([1, 80])
    FOLLOW_inclusive_or_expression_in_logical_and_expression1794 = frozenset([1, 81])
    FOLLOW_81_in_logical_and_expression1797 = frozenset([4, 5, 6, 7, 8, 9, 10, 50, 55, 57, 58, 61, 62, 63, 66, 67, 68])
    FOLLOW_inclusive_or_expression_in_logical_and_expression1799 = frozenset([1, 81])
    FOLLOW_exclusive_or_expression_in_inclusive_or_expression1812 = frozenset([1, 82])
    FOLLOW_82_in_inclusive_or_expression1815 = frozenset([4, 5, 6, 7, 8, 9, 10, 50, 55, 57, 58, 61, 62, 63, 66, 67, 68])
    FOLLOW_exclusive_or_expression_in_inclusive_or_expression1817 = frozenset([1, 82])
    FOLLOW_and_expression_in_exclusive_or_expression1830 = frozenset([1, 83])
    FOLLOW_83_in_exclusive_or_expression1833 = frozenset([4, 5, 6, 7, 8, 9, 10, 50, 55, 57, 58, 61, 62, 63, 66, 67, 68])
    FOLLOW_and_expression_in_exclusive_or_expression1835 = frozenset([1, 83])
    FOLLOW_equality_expression_in_and_expression1848 = frozenset([1, 66])
    FOLLOW_66_in_and_expression1851 = frozenset([4, 5, 6, 7, 8, 9, 10, 50, 55, 57, 58, 61, 62, 63, 66, 67, 68])
    FOLLOW_equality_expression_in_and_expression1853 = frozenset([1, 66])
    FOLLOW_relational_expression_in_equality_expression1865 = frozenset([1, 84, 85])
    FOLLOW_set_in_equality_expression1868 = frozenset([4, 5, 6, 7, 8, 9, 10, 50, 55, 57, 58, 61, 62, 63, 66, 67, 68])
    FOLLOW_relational_expression_in_equality_expression1874 = frozenset([1, 84, 85])
    FOLLOW_shift_expression_in_relational_expression1887 = frozenset([1, 86, 87, 88, 89])
    FOLLOW_set_in_relational_expression1890 = frozenset([4, 5, 6, 7, 8, 9, 10, 50, 55, 57, 58, 61, 62, 63, 66, 67, 68])
    FOLLOW_shift_expression_in_relational_expression1900 = frozenset([1, 86, 87, 88, 89])
    FOLLOW_additive_expression_in_shift_expression1913 = frozenset([1, 90, 91])
    FOLLOW_set_in_shift_expression1916 = frozenset([4, 5, 6, 7, 8, 9, 10, 50, 55, 57, 58, 61, 62, 63, 66, 67, 68])
    FOLLOW_additive_expression_in_shift_expression1922 = frozenset([1, 90, 91])
    FOLLOW_labeled_statement_in_statement1937 = frozenset([1])
    FOLLOW_compound_statement_in_statement1942 = frozenset([1])
    FOLLOW_expression_statement_in_statement1947 = frozenset([1])
    FOLLOW_selection_statement_in_statement1952 = frozenset([1])
    FOLLOW_iteration_statement_in_statement1957 = frozenset([1])
    FOLLOW_jump_statement_in_statement1962 = frozenset([1])
    FOLLOW_IDENTIFIER_in_labeled_statement1973 = frozenset([44])
    FOLLOW_44_in_labeled_statement1975 = frozenset([4, 5, 6, 7, 8, 9, 10, 24, 40, 50, 55, 57, 58, 61, 62, 63, 66, 67, 68, 92, 93, 94, 96, 97, 98, 99, 100, 101, 102, 103])
    FOLLOW_statement_in_labeled_statement1977 = frozenset([1])
    FOLLOW_92_in_labeled_statement1982 = frozenset([4, 5, 6, 7, 8, 9, 10, 50, 55, 57, 58, 61, 62, 63, 66, 67, 68])
    FOLLOW_constant_expression_in_labeled_statement1984 = frozenset([44])
    FOLLOW_44_in_labeled_statement1986 = frozenset([4, 5, 6, 7, 8, 9, 10, 24, 40, 50, 55, 57, 58, 61, 62, 63, 66, 67, 68, 92, 93, 94, 96, 97, 98, 99, 100, 101, 102, 103])
    FOLLOW_statement_in_labeled_statement1988 = frozenset([1])
    FOLLOW_93_in_labeled_statement1993 = frozenset([44])
    FOLLOW_44_in_labeled_statement1995 = frozenset([4, 5, 6, 7, 8, 9, 10, 24, 40, 50, 55, 57, 58, 61, 62, 63, 66, 67, 68, 92, 93, 94, 96, 97, 98, 99, 100, 101, 102, 103])
    FOLLOW_statement_in_labeled_statement1997 = frozenset([1])
    FOLLOW_40_in_compound_statement2019 = frozenset([4, 5, 6, 7, 8, 9, 10, 23, 24, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 45, 46, 47, 48, 49, 50, 54, 55, 57, 58, 61, 62, 63, 66, 67, 68, 92, 93, 94, 96, 97, 98, 99, 100, 101, 102, 103])
    FOLLOW_declaration_in_compound_statement2021 = frozenset([4, 5, 6, 7, 8, 9, 10, 23, 24, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 45, 46, 47, 48, 49, 50, 54, 55, 57, 58, 61, 62, 63, 66, 67, 68, 92, 93, 94, 96, 97, 98, 99, 100, 101, 102, 103])
    FOLLOW_statement_list_in_compound_statement2024 = frozenset([41])
    FOLLOW_41_in_compound_statement2027 = frozenset([1])
    FOLLOW_statement_in_statement_list2038 = frozenset([1, 4, 5, 6, 7, 8, 9, 10, 24, 40, 50, 55, 57, 58, 61, 62, 63, 66, 67, 68, 92, 93, 94, 96, 97, 98, 99, 100, 101, 102, 103])
    FOLLOW_24_in_expression_statement2050 = frozenset([1])
    FOLLOW_expression_in_expression_statement2055 = frozenset([24])
    FOLLOW_24_in_expression_statement2057 = frozenset([1])
    FOLLOW_94_in_selection_statement2068 = frozenset([50])
    FOLLOW_50_in_selection_statement2070 = frozenset([4, 5, 6, 7, 8, 9, 10, 50, 55, 57, 58, 61, 62, 63, 66, 67, 68])
    FOLLOW_expression_in_selection_statement2072 = frozenset([51])
    FOLLOW_51_in_selection_statement2074 = frozenset([4, 5, 6, 7, 8, 9, 10, 24, 40, 50, 55, 57, 58, 61, 62, 63, 66, 67, 68, 92, 93, 94, 96, 97, 98, 99, 100, 101, 102, 103])
    FOLLOW_statement_in_selection_statement2076 = frozenset([1, 95])
    FOLLOW_95_in_selection_statement2091 = frozenset([4, 5, 6, 7, 8, 9, 10, 24, 40, 50, 55, 57, 58, 61, 62, 63, 66, 67, 68, 92, 93, 94, 96, 97, 98, 99, 100, 101, 102, 103])
    FOLLOW_statement_in_selection_statement2093 = frozenset([1])
    FOLLOW_96_in_selection_statement2100 = frozenset([50])
    FOLLOW_50_in_selection_statement2102 = frozenset([4, 5, 6, 7, 8, 9, 10, 50, 55, 57, 58, 61, 62, 63, 66, 67, 68])
    FOLLOW_expression_in_selection_statement2104 = frozenset([51])
    FOLLOW_51_in_selection_statement2106 = frozenset([4, 5, 6, 7, 8, 9, 10, 24, 40, 50, 55, 57, 58, 61, 62, 63, 66, 67, 68, 92, 93, 94, 96, 97, 98, 99, 100, 101, 102, 103])
    FOLLOW_statement_in_selection_statement2108 = frozenset([1])
    FOLLOW_97_in_iteration_statement2119 = frozenset([50])
    FOLLOW_50_in_iteration_statement2121 = frozenset([4, 5, 6, 7, 8, 9, 10, 50, 55, 57, 58, 61, 62, 63, 66, 67, 68])
    FOLLOW_expression_in_iteration_statement2123 = frozenset([51])
    FOLLOW_51_in_iteration_statement2125 = frozenset([4, 5, 6, 7, 8, 9, 10, 24, 40, 50, 55, 57, 58, 61, 62, 63, 66, 67, 68, 92, 93, 94, 96, 97, 98, 99, 100, 101, 102, 103])
    FOLLOW_statement_in_iteration_statement2127 = frozenset([1])
    FOLLOW_98_in_iteration_statement2132 = frozenset([4, 5, 6, 7, 8, 9, 10, 24, 40, 50, 55, 57, 58, 61, 62, 63, 66, 67, 68, 92, 93, 94, 96, 97, 98, 99, 100, 101, 102, 103])
    FOLLOW_statement_in_iteration_statement2134 = frozenset([97])
    FOLLOW_97_in_iteration_statement2136 = frozenset([50])
    FOLLOW_50_in_iteration_statement2138 = frozenset([4, 5, 6, 7, 8, 9, 10, 50, 55, 57, 58, 61, 62, 63, 66, 67, 68])
    FOLLOW_expression_in_iteration_statement2140 = frozenset([51])
    FOLLOW_51_in_iteration_statement2142 = frozenset([24])
    FOLLOW_24_in_iteration_statement2144 = frozenset([1])
    FOLLOW_99_in_iteration_statement2149 = frozenset([50])
    FOLLOW_50_in_iteration_statement2151 = frozenset([4, 5, 6, 7, 8, 9, 10, 24, 50, 55, 57, 58, 61, 62, 63, 66, 67, 68])
    FOLLOW_expression_statement_in_iteration_statement2153 = frozenset([4, 5, 6, 7, 8, 9, 10, 24, 50, 55, 57, 58, 61, 62, 63, 66, 67, 68])
    FOLLOW_expression_statement_in_iteration_statement2155 = frozenset([4, 5, 6, 7, 8, 9, 10, 50, 51, 55, 57, 58, 61, 62, 63, 66, 67, 68])
    FOLLOW_expression_in_iteration_statement2157 = frozenset([51])
    FOLLOW_51_in_iteration_statement2160 = frozenset([4, 5, 6, 7, 8, 9, 10, 24, 40, 50, 55, 57, 58, 61, 62, 63, 66, 67, 68, 92, 93, 94, 96, 97, 98, 99, 100, 101, 102, 103])
    FOLLOW_statement_in_iteration_statement2162 = frozenset([1])
    FOLLOW_100_in_jump_statement2173 = frozenset([4])
    FOLLOW_IDENTIFIER_in_jump_statement2175 = frozenset([24])
    FOLLOW_24_in_jump_statement2177 = frozenset([1])
    FOLLOW_101_in_jump_statement2182 = frozenset([24])
    FOLLOW_24_in_jump_statement2184 = frozenset([1])
    FOLLOW_102_in_jump_statement2189 = frozenset([24])
    FOLLOW_24_in_jump_statement2191 = frozenset([1])
    FOLLOW_103_in_jump_statement2196 = frozenset([24])
    FOLLOW_24_in_jump_statement2198 = frozenset([1])
    FOLLOW_103_in_jump_statement2203 = frozenset([4, 5, 6, 7, 8, 9, 10, 50, 55, 57, 58, 61, 62, 63, 66, 67, 68])
    FOLLOW_expression_in_jump_statement2205 = frozenset([24])
    FOLLOW_24_in_jump_statement2207 = frozenset([1])
    FOLLOW_declaration_specifiers_in_synpred299 = frozenset([1])
    FOLLOW_declaration_specifiers_in_synpred499 = frozenset([4, 50, 54, 55])
    FOLLOW_declarator_in_synpred4102 = frozenset([4, 23, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 42, 43, 45, 46, 47, 48, 49, 54])
    FOLLOW_declaration_in_synpred4104 = frozenset([4, 23, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 42, 43, 45, 46, 47, 48, 49, 54])
    FOLLOW_40_in_synpred4107 = frozenset([1])
    FOLLOW_declaration_specifiers_in_synpred5139 = frozenset([1])
    FOLLOW_declaration_specifiers_in_synpred8188 = frozenset([1])
    FOLLOW_init_declarator_list_in_synpred11209 = frozenset([1])
    FOLLOW_type_specifier_in_synpred15241 = frozenset([1])
    FOLLOW_type_specifier_in_synpred38521 = frozenset([1])
    FOLLOW_attribute_specifier_in_synpred51690 = frozenset([4, 50, 54, 55])
    FOLLOW_pointer_in_synpred51693 = frozenset([4, 50])
    FOLLOW_direct_declarator_in_synpred51696 = frozenset([1])
    FOLLOW_declarator_suffix_in_synpred54748 = frozenset([1])
    FOLLOW_attribute_specifier_in_synpred57794 = frozenset([1])
    FOLLOW_50_in_synpred58788 = frozenset([4, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 42, 43, 45, 46, 47, 48, 49, 54])
    FOLLOW_parameter_type_list_in_synpred58790 = frozenset([51])
    FOLLOW_51_in_synpred58792 = frozenset([1, 54])
    FOLLOW_attribute_specifier_in_synpred58794 = frozenset([1, 54])
    FOLLOW_attribute_specifier_in_synpred59811 = frozenset([1])
    FOLLOW_50_in_synpred60805 = frozenset([4])
    FOLLOW_identifier_list_in_synpred60807 = frozenset([51])
    FOLLOW_51_in_synpred60809 = frozenset([1, 54])
    FOLLOW_attribute_specifier_in_synpred60811 = frozenset([1, 54])
    FOLLOW_attribute_specifier_in_synpred61826 = frozenset([1])
    FOLLOW_IDENTIFIER_in_synpred64894 = frozenset([50])
    FOLLOW_50_in_synpred64896 = frozenset([4])
    FOLLOW_IDENTIFIER_in_synpred64898 = frozenset([51])
    FOLLOW_51_in_synpred64900 = frozenset([1])
    FOLLOW_IDENTIFIER_in_synpred65908 = frozenset([50])
    FOLLOW_50_in_synpred65910 = frozenset([4])
    FOLLOW_IDENTIFIER_in_synpred65912 = frozenset([25])
    FOLLOW_25_in_synpred65914 = frozenset([4, 5, 6, 7, 8, 9, 10, 50, 55, 57, 58, 61, 62, 63, 66, 67, 68])
    FOLLOW_attribute_parameter_list_in_synpred65916 = frozenset([51])
    FOLLOW_51_in_synpred65918 = frozenset([1])
    FOLLOW_IDENTIFIER_in_synpred67926 = frozenset([50])
    FOLLOW_50_in_synpred67928 = frozenset([4, 5, 6, 7, 8, 9, 10, 50, 51, 55, 57, 58, 61, 62, 63, 66, 67, 68])
    FOLLOW_attribute_parameter_list_in_synpred67930 = frozenset([51])
    FOLLOW_51_in_synpred67933 = frozenset([1])
    FOLLOW_type_qualifier_in_synpred69981 = frozenset([1])
    FOLLOW_pointer_in_synpred70984 = frozenset([1])
    FOLLOW_55_in_synpred71979 = frozenset([46, 47, 48, 49])
    FOLLOW_type_qualifier_in_synpred71981 = frozenset([1, 46, 47, 48, 49, 55])
    FOLLOW_pointer_in_synpred71984 = frozenset([1])
    FOLLOW_55_in_synpred72990 = frozenset([55])
    FOLLOW_pointer_in_synpred72992 = frozenset([1])
    FOLLOW_declarator_in_synpred751047 = frozenset([1])
    FOLLOW_abstract_declarator_in_synpred761049 = frozenset([1])
    FOLLOW_direct_abstract_declarator_in_synpred791096 = frozenset([1])
    FOLLOW_abstract_declarator_suffix_in_synpred821127 = frozenset([1])
    FOLLOW_50_in_synpred951299 = frozenset([4, 31, 32, 33, 34, 35, 36, 37, 38, 39, 42, 43, 45, 46, 47, 48, 49])
    FOLLOW_type_name_in_synpred951301 = frozenset([51])
    FOLLOW_51_in_synpred951303 = frozenset([4, 5, 6, 7, 8, 9, 10, 50, 55, 57, 58, 61, 62, 63, 66, 67, 68])
    FOLLOW_cast_expression_in_synpred951305 = frozenset([1])
    FOLLOW_63_in_synpred1001347 = frozenset([4, 5, 6, 7, 8, 9, 10, 50, 55, 57, 58, 61, 62, 63, 66, 67, 68])
    FOLLOW_unary_expression_in_synpred1001349 = frozenset([1])
    FOLLOW_25_in_synpred1201635 = frozenset([4, 5, 6, 7, 8, 9, 10, 50, 55, 57, 58, 61, 62, 63, 66, 67, 68])
    FOLLOW_assignment_expression_in_synpred1201637 = frozenset([1])
    FOLLOW_lvalue_in_synpred1211661 = frozenset([26, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78])
    FOLLOW_assignment_operator_in_synpred1211663 = frozenset([4, 5, 6, 7, 8, 9, 10, 50, 55, 57, 58, 61, 62, 63, 66, 67, 68])
    FOLLOW_assignment_expression_in_synpred1211665 = frozenset([1])
    FOLLOW_declaration_in_synpred1532021 = frozenset([1])

