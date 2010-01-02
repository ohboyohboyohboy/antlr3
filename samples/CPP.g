grammar CPP;

options {
  language = Ruby;
  memoize = true;
  output = AST;
  backtrack = true;
}

tokens
{
    IFDEF;
    IFNDEF;
    IF;
    ELIF;
    ELSE;
    ENDIF;
    WARNING;
    ERROR;
    PRAGMA;
    EXPR;
    EXPR_DEF;
    EXPR_NDEF;
    UNARY_MINUS;
    UNARY_PLUS;
    REFERANCE;
    TYPECAST;
    SIZEOF_TYPE;
    INDEX_OP;
    POST_INC;
    POST_DEC;
    POINTER_AT;
    POINTER;
    EXPR_GROUP;
    METHOD_CALL;
    ARGS;
    TEXT_LINE;
    TEXT_GROUP;
    TEXT_END;
    EXPAND;
    EXP_ARGS;
    EXP_ARG;
    EXEC_MACRO;
    CONCATENATE;
    LINE;
    INCLUDE;
    INCLUDE_EXPAND;
    DEFINE;
    UNDEF;
    MAC_OBJECT;
    MAC_FUNCTION;
    MAC_FUNCTION_OBJECT;
    MACRO_DEFINE;
}

scope Expression {
  flavor;
}

@lexer::init {
        @in_directive = @in_define_mode = false
        @discard_space = true
        @ltoken = End
        @cpp = ?X
}

@lexer::members {
        def in_directive?
          @in_directive
        end
        
        def in_define_mode?
          @in_define_mode
        end
        
        def discard_space?
          @discard_space
        end
        
        attr_reader   :include_search_paths
        attr_accessor :cpp
        attr_accessor :ltoken
}

preprocess
    : proc_line+
    ;

proc_line
    :
    (       DIRECTIVE
    |       text_line
    |       diagnostics
    |       file_inclusion
    |       macro_define
    |       macro_undef
    |       conditional_compilation
    |       line_control
    |       macro_execution
    )?      End
    ;

file_inclusion
    :       INCLUDE         -> ^(INCLUDE)
    |       INCLUDE_EXPAND  -> ^(INCLUDE_EXPAND)
    ;

macro_define
    :  DEFINE     IDENTIFIER  LPAREN      WS?     RPAREN  macro_text? -> ^(MAC_FUNCTION_OBJECT IDENTIFIER macro_text?)
    |  DEFINE mac=IDENTIFIER  LPAREN WS? (arg+=macro_param WS? (COMMA WS* arg+=macro_param WS*)*)? RPAREN  macro_text? -> ^(MAC_FUNCTION  $mac $arg+ macro_text? )
    |  DEFINE     IDENTIFIER  macro_text?  -> ^(MAC_OBJECT IDENTIFIER macro_text?)
    ;

macro_param
    :       IDENTIFIER ELLIPSIS ->^(ELLIPSIS IDENTIFIER)
    |       ELLIPSIS
    |       IDENTIFIER
    ;

macro_execution
scope Expression;
    : EXEC_MACRO { $Expression::flavor = :exec} 
      ifexpression -> ^(EXEC_MACRO ifexpression)
    ;

macro_undef
    : UNDEF   mac=IDENTIFIER  -> ^(UNDEF IDENTIFIER)
    ;

conditional_compilation
scope Expression;
    : t=IF { $Expression::flavor = $t.text.to_sym }
      ifexp+=ifexpression  ifstmt+=statement
      (ELIF    ifexp+=ifexpression  ifstmt+=statement )* 
      (ELSE  elsestmt=statement)?
      ENDIF
      ->  ^(IF ($ifexp $ifstmt)+ (ELSE  $elsestmt)?)
    ;

line_control
    :       LINE    n=DECIMAL_LITERAL       (theFile=STRING_LITERAL)?  ->^(LINE $n ($theFile)? )
    ;

diagnostics
    :       WARNING -> ^(WARNING)
    |       ERROR   -> ^(ERROR)
    |       PRAGMA  -> ^(PRAGMA)
    ;

text_line
    : source_text+     -> ^(TEXT_LINE source_text+)
    ;


statement
    : proc_line+
    ;

type_name
    : IDENTIFIER
    ;

ifexpression
@init {
  ntype =
    case ($Expression::flavor rescue nil)
    when :ifndef then EXPR_NDEF
    when :ifdef  then EXPR_DEF
    else EXPR
    end
}
    : assignment_expression -> ^({create_token(ntype)} assignment_expression)
    ;

assignment_expression
    : conditional_expression
      ( ( ASSIGNEQUAL^     | TIMESEQUAL^      |   DIVIDEEQUAL^     |
          MODEQUAL^        | PLUSEQUAL^       |   MINUSEQUAL^      |
          SHIFTLEFTEQUAL^  | SHIFTRIGHTEQUAL^ |   BITWISEANDEQUAL^ |
          BITWISEXOREQUAL^ | BITWISEOREQUAL^
        ) assignment_expression
      )?
    ;

conditional_expression
    :       logical_or_expression
            ( QUESTIONMARK^ assignment_expression COLON conditional_expression )?
    ;

logical_or_expression
    :       logical_and_expression (OR^ logical_and_expression)*
    ;

logical_and_expression
    :       inclusive_or_expression (AND^ inclusive_or_expression)*
    ;

inclusive_or_expression
    :       exclusive_or_expression (BITWISEOR^ exclusive_or_expression)*
    ;

exclusive_or_expression
    :       and_expression (BITWISEXOR^ and_expression)*
    ;

and_expression
    :       equality_expression (AMPERSAND^ equality_expression)*
    ;

equality_expression
    :       relational_expression ((NOTEQUAL^ | EQUAL^) relational_expression)*
    ;

relational_expression
    :       shift_expression
            (       (       (       LESSTHAN^
                |       GREATERTHAN^
                |       LESSTHANOREQUALTO^
                |       GREATERTHANOREQUALTO^
                )
        shift_expression
        )*
            )
    ;
shift_expression
    :       additive_expression ((SHIFTLEFT^ | SHIFTRIGHT^) additive_expression)*
    ;

additive_expression
    :       multiplicative_expression ((PLUS^ | MINUS^) multiplicative_expression)*
    ;

multiplicative_expression
    :       unary_expression ((STAR^ | DIVIDE^ | MOD^ ) unary_expression)*
    ;

unary_expression
    :       PLUSPLUS        unary_expression -> ^(PLUSPLUS unary_expression)
    |       MINUSMINUS      unary_expression -> ^(MINUSMINUS unary_expression)
    |       SIZEOF  unary_expression -> ^(SIZEOF unary_expression)
    |       SIZEOF  LPAREN type_name RPAREN ->      ^(SIZEOF_TYPE type_name)
    |       DEFINED type_name                       -> ^(DEFINED type_name)
    |       DEFINED LPAREN type_name  RPAREN        ->^(DEFINED type_name)
    |       unary_expression_not_plus_minus
    ;

unary_expression_not_plus_minus
    :       NOT             unary_expression ->      ^(NOT   unary_expression)
    |       TILDE           unary_expression ->      ^(TILDE         unary_expression)
    |       AMPERSAND       unary_expression ->      ^(REFERANCE     unary_expression)
    |       STAR            unary_expression ->      ^(POINTER_AT    unary_expression)
    |       MINUS  unary_expression  -> ^(UNARY_MINUS unary_expression)
    |       PLUS   unary_expression  -> ^(UNARY_PLUS unary_expression)
    |       LPAREN type_name RPAREN  unary_expression -> ^(TYPECAST type_name unary_expression)
    |       postfix_expression
    ;

postfix_expression
    :   primary_expression
    (   l=LSQUARE^ {l.type = INDEX_OP} assignment_expression RSQUARE!
    |   DOT^       IDENTIFIER
    |   s=STAR^    {s.type = POINTER}  IDENTIFIER
    |   POINTERTO^ IDENTIFIER
    |   p=PLUSPLUS^   {p.type = POST_INC}
    |   m=MINUSMINUS^ {m.type = POST_DEC}
    )*
    ;

primary_expression
    :   (IDENTIFIER LPAREN) => function_call
    |   IDENTIFIER
    |   constant
    |   LPAREN  assignment_expression RPAREN  -> ^(EXPR_GROUP assignment_expression)
    ;

function_call
    :  id=IDENTIFIER LPAREN arg_list? RPAREN  -> ^(METHOD_CALL $id arg_list?)
    ;

arg_list
    :  assignment_expression (COMMA assignment_expression)* -> ^(ARGS assignment_expression+)
    ;

constant
    : HEX_LITERAL
    | OCTAL_LITERAL
    | DECIMAL_LITERAL
    | CHARACTER_LITERAL
    | STRING_LITERAL
    | FLOATING_POINT_LITERAL
    ;


//              |       (IDENTIFIER { self.input.LT(1).getText() == '('  }?) => IDENTIFIER
source_text
    :   source_expression
    |   COMMA
    |   LPAREN
    |   RPAREN
    |   WS
    ;

macro_expansion
    : id=IDENTIFIER WS? LPAREN WS? RPAREN -> ^(EXPAND $id)
    | id=IDENTIFIER WS? LPAREN WS? mac_args WS? RPAREN -> ^(EXPAND $id mac_args?)
    ;

mac_args :       marg+=m_arg ( WS? COMMA WS? marg+=m_arg)*  -> ^(EXP_ARGS $marg+)
    ;

m_arg    :       source_expression+       -> ^(EXP_ARG source_expression+)
    |       -> ^(EXP_ARG)
    ;

source_expression
    :       (IDENTIFIER WS? LPAREN) => macro_expansion
    |       (primary_source  WS? SHARPSHARP ) =>  concatenate
    |       STRINGIFICATION IDENTIFIER ->      ^(STRINGIFICATION IDENTIFIER)
    |       primary_source
    |       STRING_OP
    |       SIZEOF
    |       LPAREN mac_args? RPAREN -> ^(TEXT_GROUP mac_args?)
    |       SEMICOLON
    |       TEXT_END
    |       WS
    ;

concatenate
    :       prim+=primary_source (WS? SHARPSHARP  WS? prim+=primary_source)+  -> ^(CONCATENATE $prim+)
    ;

primary_source
    :       SHARPSHARP WS?  IDENTIFIER -> ^(SHARPSHARP IDENTIFIER)
    |       IDENTIFIER
    |       constant
    |       CKEYWORD
    |       COPERATOR
    ;

STRING_OP: { @in_define_mode }? '#' WS?  id=IDENTIFIER
           { self.text = $id.text}
         ;

DIRECTIVE
    :    { !@in_directive && !@in_define_mode }? '#'
         {
            @in_directive = true
            @cpp = ?X
            @discard_space = false
         } WS?
    ( 'ifdef' 
       { 
           $type = IF
           @discard_space = true
           $text = "ifdef"
         }
    | 'ifndef'
       {
           $type = IF
           @discard_space = true
           $text = "ifndef"
         }
    | 'if'
       {
            $type = IF
            @discard_space = true
            $text = "if"
         }
    | 'elif'
       {
            $type = ELIF
            @discard_space = true
         }
    | 'else'
      { 
            $type = ELSE
            @discard_space = true
       }
    | 'endif'
      {
            $type = ENDIF
            @discard_space = true
       }
    | 'line'
      { 
            $type = LINE
            @discard_space = true
        }
    | 'undef' WS
      { 
            $type = UNDEF
            @discard_space = true
        }
    | 'define' WS
      {
            $type = DEFINE
            @cpp = ?D
            @discard_space = false
      }
    | 'exec_macro_expression'
      { 
            $type = EXEC_MACRO
            @discard_space = true
      }
    | ('include'|'include_next') WS f=IDENTIFIER 
      {
            $type = INCLUDE_EXPAND
            $text = $f.text
            @discard_space = true
      }
    | ('include'|'include_next') WS   f=INCLUDE_FILE
      {
          $type = INCLUDE
          $text = $f.text
          @discard_space = true
      }
    | 'warning' { $type = WARNING } m=MACRO_TEXT { $text = $m.text }
    | 'error'   { $type = ERROR   } (m=MACRO_TEXT { $text = $m.text })?
    | 'pragma'  { $type = PRAGMA  } m=MACRO_TEXT { $text = $m.text }
    )
    ;

fragment MACRO_TEXT
        :   ( ('/*' ) => '/*' .* '*/'
            | ('\\\n') => ('\\\n')
            | ('\\\r\n') => ('\\\n')
            | ~'\n'
            ) +
        ;

SIZEOF  :  'sizeof'
        ;

DEFINED :  'defined'
          { $type = CKEYWORD unless @in_directive }
        ;

IDENTIFIER
        :  LETTER (LETTER|'0'..'9')*
           {
              if @in_directive and @cpp == ?D
                if @input.peek == ?(
                  @cpp = ?(
                else
                  @in_define_mode = true
                  @in_directive = false
                  @cpp = ?X
                end
              end
            }
        ;

fragment
LETTER  :   '$'
        |   'A'..'Z'
        |   'a'..'z'
        |   '_'
        ;

/* Operators: */

STRINGIFICATION :       '#_#_'
                ;

SHARPSHARP      :       '##';

ASSIGNEQUAL     :       '='     ;

COLON           :       ':' ;

COMMA           :       ',' ;

QUESTIONMARK    :       '?' ;

SEMICOLON       :       ';' ;

POINTERTO       :       '->' ;

LPAREN          :       '(' ;

RPAREN          :       ')'
    {
            if @cpp == ?( and @input.peek != ?\n
              @in_define_mode = true
              @in_directive = false
              @cpp = ?X
            end
    }
    ;

LSQUARE                 : '[' ;

RSQUARE                 : ']' ;

LCURLY                  : '{' ;

RCURLY                  : '}' ;

EQUAL                   : '==';

NOTEQUAL                : '!=';

LESSTHANOREQUALTO       : '<=';

LESSTHAN                : '<' ;

GREATERTHANOREQUALTO    : '>=';

GREATERTHAN             : '>' ;

DIVIDE                  : '/' ;

DIVIDEEQUAL             : '/=';

PLUS                    : '+' ;

PLUSEQUAL               : '+=';

PLUSPLUS                : '++';

MINUS                   : '-' ;

MINUSEQUAL              : '-=';

MINUSMINUS              : '--';

STAR                    : '*' ;

TIMESEQUAL              : '*=';

MOD                     : '%' ;

MODEQUAL                : '%=';

SHIFTRIGHT              : '>>';

SHIFTRIGHTEQUAL         : '>>=';

SHIFTLEFT               : '<<';

SHIFTLEFTEQUAL          : '<<=';

AND                     : '&&';

NOT                     : '!' ;

OR                      : '||';

AMPERSAND               : '&' ;

BITWISEANDEQUAL         : '&=';

TILDE                   : '~' ;

BITWISEOR               : '|' ;

BITWISEOREQUAL          : '|=';

BITWISEXOR              : '^' ;

BITWISEXOREQUAL         : '^=';

DOT                     : '.' ;

POINTERTOMBR            : '->*' ;

DOTMBR                  : '.*' ;

SCOPE                   : '::' ;

ELLIPSIS                : '...' ;

fragment
INCLUDE_FILE
        : '<' ( ' ' | '!' | '#' ..';' | '=' | '?' .. '[' | ']' .. '\u00FF')+ '>'
        |   '"' ( ' ' | '!' | '#' ..';' | '=' | '?' .. '[' | ']' .. '\u00FF')+ '"'
        ;

CHARACTER_LITERAL
    :       ('L')? '\'' ( EscapeSequence | ~('\''|'\\') ) '\''
    ;

//STRING_LITERAL:       '"' (options {greedy=false;} : EscapeSequence | ~('"'))* '"'
STRING_LITERAL
    :       '"' (EscapeSequence | ~('"'))* '"'
    ;

HEX_LITERAL
    :       '0' ('x'|'X') HexDigit+ IntegerTypeSuffix?
    ;

DECIMAL_LITERAL
    :       ('0' | '1'..'9' '0'..'9'*) IntegerTypeSuffix?
    ;

OCTAL_LITERAL
    :       '0' ('0'..'7')+ IntegerTypeSuffix?
    ;

fragment HexDigit
    :       ('0'..'9'|'a'..'f'|'A'..'F')
    ;

fragment IntegerTypeSuffix
    :       'u' | 'ul' | 'U' | 'UL' | 'l' | 'L'
    ;

FLOATING_POINT_LITERAL
    :       ('0'..'9')+ '.' ('0'..'9')* Exponent? FloatTypeSuffix?
    |       '.' ('0'..'9')+ Exponent? FloatTypeSuffix?
    |       ('0'..'9')+ Exponent FloatTypeSuffix?
    |       ('0'..'9')+ FloatTypeSuffix
    ;

fragment Exponent
    :       ('e'|'E') ('+'|'-')? ('0'..'9')+
    ;

fragment FloatTypeSuffix
    :       ('f'|'F'|'d'|'D')
    ;

fragment EscapeSequence
    :       '\\' ('b'|'t'|'n'|'f'|'r'|'v'|'\"'|'\''|'\\')
    |       '\\' 'x' HexDigit+
    |   OctalEscape
    ;

fragment OctalEscape
    :       '\\' ('0'..'3') ('0'..'7') ('0'..'7')
    |       '\\' ('0'..'7') ('0'..'7')
    |       '\\' ('0'..'7')
    ;

fragment UnicodeEscape
    :       '\\' 'u' HexDigit HexDigit HexDigit HexDigit
    ;

COMMENT
    :   '/*'  .* '*/' { $channel = HIDDEN }
    |   '/' '\\' '\n' '*' .* '*/' { $channel = HIDDEN }
    ;

LINE_COMMENT
    :  '//' ~('\n'|'\r')* '\r'? '\n'
      {
          if @in_directive
            $type = End
          else
            case (@input.peek rescue nil)
            when ?#, -1
              $type = TEXT_END
            else
              $type = End
            end
          end
          @in_define_mode = @in_directive = false
          @discard_space = true
      }
    ;

WS   :  {
           c = @input.peek(-1) rescue End
           c ||= End
           @ltoken = c == ?\n ? End : c
        }
        (' '|'\r'|'\t'|'\f')+
        {
          if @in_directive
            if @discard_space
              $channel = HIDDEN
            else
              $type = WS
            end
          else
            unless @in_define_mode
              begin
                c = @input.peek or $channel = HIDDEN
                if c != EOF && c != ?# && @ltoken == End
                  $type = End
                end
              rescue
                $channel = HIDDEN
              end
            end
          end
      }
     ;

macro_text
    : source_text+ -> ^(MACRO_DEFINE source_text+)
    ;

End : WS? '\n'
      {
        if @in_directive
          $type = End
        else
          if @in_define_mode
             $type = End
          else
            begin
              if c = @input.peek(1) and c != ?# and c != -1
                $type = TEXT_END
              elsif c.nil?
                $type = End
              end
            rescue
              $type = End
            end
          end
        end
        
        @ltoken = End
        @in_directive = @in_define_mode = false
        @discard_space = true
    }
            ;

ESCAPED_NEWLINE
    : ('\\\n' | '\\\r\n') { $channel = HIDDEN }
    ;

COPERATOR
        : {!@in_directive}?
        ( COLON                | QUESTIONMARK
        | POINTERTO            | LCURLY           | RCURLY
        | LSQUARE              | RSQUARE          | STAR
        | EQUAL                | NOTEQUAL         | LESSTHANOREQUALTO   | LESSTHAN
        | GREATERTHANOREQUALTO | GREATERTHAN      | DIVIDE              | PLUSPLUS
        | MINUSMINUS           | MOD              | SHIFTRIGHT          | SHIFTLEFT
        | AND                  | OR               | BITWISEOR           | BITWISEXOR
        | DOT                  | POINTERTOMBR     | DOTMBR              | SCOPE
        | AMPERSAND            | PLUS             | MINUS
        | TILDE                | ASSIGNEQUAL      | TIMESEQUAL          | DIVIDEEQUAL
        | MODEQUAL             | PLUSEQUAL        | MINUSEQUAL          | SHIFTLEFTEQUAL
        | SHIFTRIGHTEQUAL      | BITWISEANDEQUAL  | BITWISEXOREQUAL     | BITWISEOREQUAL
        | NOT                  | ELLIPSIS
        )
        ;

CKEYWORD: {!@in_directive}?
          'typedef' | '__va_list__' | 'extern'   | 'static'   | 'auto'      | 'register'
        | 'void'    | 'char'        | 'short'    | 'int'      | 'long'      | 'float'
        | 'double'  | 'signed'      | 'unsigned' | '__fpreg'  | '__float80' | 'struct'
        | 'union'   | 'enum'        | 'const'    | 'volatile' | 'case'      | 'default'
        | 'switch'  | 'while'       | 'do'       | 'for'      | 'goto'      | 'continue'
        | 'break'   | 'return'      | 'if'       | 'else'
        ;
