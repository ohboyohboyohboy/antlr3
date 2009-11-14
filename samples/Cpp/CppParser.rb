<Ruby.outputFile>#!/usr/bin/env ruby
# 
# generated using ANTLR Version: 3.2 Nov 04, 2009 19:38:44
# input grammar file: Cpp.g
# generated at: 2009-11-14 09:45:14

this_directory = File.expand_path( File.dirname( __FILE__ ) )
$:.unshift( this_directory ) unless $:.include?( this_directory )

begin
  require 'rubygems'
  gem 'antlr3'
rescue LoadError
  # ignore load error and assume antlr3.rb is in the load path already
end

require 'antlr3'

<Ruby.placeAction></Ruby.placeAction>
<if(recognizer.grammar.grammarIsRoot)_subtemplate><Ruby.rootGrammarOutputFile>module Cpp
  <Ruby.placeAction></Ruby.placeAction><Ruby.tokenDataModule># TokenData defines all of the token type integer values
  # as constants, which will be included in all 
  # ANTLR-generated recognizers.
  const_defined?(:TokenData) or TokenData = ANTLR3::TokenScheme.new

  module TokenData
  <if(tokens)_subtemplate>
    # define the token constants
    define_tokens(<ASTParser.anonymous>:STAR => 84</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:LSQUARE => 93</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:FloatTypeSuffix => 119</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:LETTER => 109</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:MOD => 86</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:TYPECAST => 19</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:POINTER => 25</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:BITWISEXOR => 72</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:MINUSMINUS => 88</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:ASSIGNEQUAL => 56</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:NOT => 91</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:EOF => -1</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:UNARY_PLUS => 17</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:NOTEQUAL => 74</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:COPERATOR => 106</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:MINUSEQUAL => 61</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:RPAREN => 51</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:MAC_FUNCTION => 43</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:STRING_LITERAL => 55</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:FLOATING_POINT_LITERAL => 100</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:DOTMBR => 113</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:INCLUDE => 38</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:ENDIF => 9</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:ARGS => 28</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:COMMENT => 122</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:REFERANCE => 18</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:DIVIDE => 85</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:TEXT_END => 31</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:GREATERTHAN => 77</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:LINE_COMMENT => 123</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:MAC_FUNCTION_OBJECT => 44</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:IntegerTypeSuffix => 117</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:POINTERTOMBR => 112</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:DEFINED => 90</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:ELSE => 8</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:CHARACTER_LITERAL => 99</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:ELLIPSIS => 53</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:LCURLY => 110</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:EXPR_DEF => 14</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:UNARY_MINUS => 16</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:SEMICOLON => 103</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:BITWISEXOREQUAL => 65</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:ERROR => 11</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:METHOD_CALL => 27</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:ELIF => 7</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:WS => 50</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:CKEYWORD => 105</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:SHARPSHARP => 104</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:SHIFTLEFTEQUAL => 62</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:OR => 69</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:SIZEOF => 89</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:INDEX_OP => 21</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:EXPR_GROUP => 26</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:DIVIDEEQUAL => 58</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:LESSTHANOREQUALTO => 78</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:INCLUDE_FILE => 107</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:WARNING => 10</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:EscapeSequence => 115</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:DECIMAL_LITERAL => 54</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:EXP_ARGS => 33</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:STRING_OP => 102</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:End => 47</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:ESCAPED_NEWLINE => 124</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:MAC_OBJECT => 42</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:PLUSPLUS => 87</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:PRAGMA => 12</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:INCLUDE_EXPAND => 39</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:SHIFTLEFT => 80</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:Exponent => 118</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:STRINGIFICATION => 101</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:AND => 70</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:DEFINE => 40</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:EXPAND => 32</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:POINTER_AT => 24</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:POST_DEC => 23</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:DIRECTIVE => 46</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:HexDigit => 116</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:LPAREN => 49</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:IF => 6</ASTParser.anonymous>, <ASTParser.anonymous>:PLUSEQUAL => 60</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:GREATERTHANOREQUALTO => 79</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:EXPR => 13</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:MODEQUAL => 59</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:SCOPE => 114</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:COMMA => 52</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:IDENTIFIER => 48</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:EQUAL => 75</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:SHIFTRIGHT => 81</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:QUESTIONMARK => 67</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:TILDE => 92</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:PLUS => 82</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:HEX_LITERAL => 97</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:EXP_ARG => 34</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:SHIFTRIGHTEQUAL => 63</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:UNDEF => 41</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:DOT => 95</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:MACRO_DEFINE => 45</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:LESSTHAN => 76</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:EXEC_MACRO => 35</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:IFNDEF => 5</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:TEXT_GROUP => 30</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:TIMESEQUAL => 57</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:OCTAL_LITERAL => 98</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:AMPERSAND => 73</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:IFDEF => 4</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:BITWISEANDEQUAL => 64</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:RSQUARE => 94</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:MINUS => 83</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:LINE => 37</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:TEXT_LINE => 29</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:BITWISEOR => 71</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:CONCATENATE => 36</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:MACRO_TEXT => 108</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:COLON => 68</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:UnicodeEscape => 121</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:RCURLY => 111</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:EXPR_NDEF => 15</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:POST_INC => 22</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:POINTERTO => 96</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:OctalEscape => 120</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:SIZEOF_TYPE => 20</ASTParser.anonymous>, 
                  <ASTParser.anonymous>:BITWISEOREQUAL => 66</ASTParser.anonymous>)
  </if(tokens)_subtemplate><if(tokenNames)_subtemplate>
    # register the proper human-readable name or literal value
    # for each token type
    #
    # this is necessary because anonymous tokens, which are
    # created from literal values in the grammar, do not
    # have descriptive names
    register_names(<ASTParser.anonymous>"IFDEF"</ASTParser.anonymous>, <ASTParser.anonymous>"IFNDEF"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"IF"</ASTParser.anonymous>, <ASTParser.anonymous>"ELIF"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"ELSE"</ASTParser.anonymous>, <ASTParser.anonymous>"ENDIF"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"WARNING"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"ERROR"</ASTParser.anonymous>, <ASTParser.anonymous>"PRAGMA"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"EXPR"</ASTParser.anonymous>, <ASTParser.anonymous>"EXPR_DEF"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"EXPR_NDEF"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"UNARY_MINUS"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"UNARY_PLUS"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"REFERANCE"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"TYPECAST"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"SIZEOF_TYPE"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"INDEX_OP"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"POST_INC"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"POST_DEC"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"POINTER_AT"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"POINTER"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"EXPR_GROUP"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"METHOD_CALL"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"ARGS"</ASTParser.anonymous>, <ASTParser.anonymous>"TEXT_LINE"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"TEXT_GROUP"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"TEXT_END"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"EXPAND"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"EXP_ARGS"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"EXP_ARG"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"EXEC_MACRO"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"CONCATENATE"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"LINE"</ASTParser.anonymous>, <ASTParser.anonymous>"INCLUDE"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"INCLUDE_EXPAND"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"DEFINE"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"UNDEF"</ASTParser.anonymous>, <ASTParser.anonymous>"MAC_OBJECT"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"MAC_FUNCTION"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"MAC_FUNCTION_OBJECT"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"MACRO_DEFINE"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"DIRECTIVE"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"End"</ASTParser.anonymous>, <ASTParser.anonymous>"IDENTIFIER"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"LPAREN"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"WS"</ASTParser.anonymous>, <ASTParser.anonymous>"RPAREN"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"COMMA"</ASTParser.anonymous>, <ASTParser.anonymous>"ELLIPSIS"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"DECIMAL_LITERAL"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"STRING_LITERAL"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"ASSIGNEQUAL"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"TIMESEQUAL"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"DIVIDEEQUAL"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"MODEQUAL"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"PLUSEQUAL"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"MINUSEQUAL"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"SHIFTLEFTEQUAL"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"SHIFTRIGHTEQUAL"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"BITWISEANDEQUAL"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"BITWISEXOREQUAL"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"BITWISEOREQUAL"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"QUESTIONMARK"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"COLON"</ASTParser.anonymous>, <ASTParser.anonymous>"OR"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"AND"</ASTParser.anonymous>, <ASTParser.anonymous>"BITWISEOR"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"BITWISEXOR"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"AMPERSAND"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"NOTEQUAL"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"EQUAL"</ASTParser.anonymous>, <ASTParser.anonymous>"LESSTHAN"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"GREATERTHAN"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"LESSTHANOREQUALTO"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"GREATERTHANOREQUALTO"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"SHIFTLEFT"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"SHIFTRIGHT"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"PLUS"</ASTParser.anonymous>, <ASTParser.anonymous>"MINUS"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"STAR"</ASTParser.anonymous>, <ASTParser.anonymous>"DIVIDE"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"MOD"</ASTParser.anonymous>, <ASTParser.anonymous>"PLUSPLUS"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"MINUSMINUS"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"SIZEOF"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"DEFINED"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"NOT"</ASTParser.anonymous>, <ASTParser.anonymous>"TILDE"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"LSQUARE"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"RSQUARE"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"DOT"</ASTParser.anonymous>, <ASTParser.anonymous>"POINTERTO"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"HEX_LITERAL"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"OCTAL_LITERAL"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"CHARACTER_LITERAL"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"FLOATING_POINT_LITERAL"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"STRINGIFICATION"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"STRING_OP"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"SEMICOLON"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"SHARPSHARP"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"CKEYWORD"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"COPERATOR"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"INCLUDE_FILE"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"MACRO_TEXT"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"LETTER"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"LCURLY"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"RCURLY"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"POINTERTOMBR"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"DOTMBR"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"SCOPE"</ASTParser.anonymous>, <ASTParser.anonymous>"EscapeSequence"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"HexDigit"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"IntegerTypeSuffix"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"Exponent"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"FloatTypeSuffix"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"OctalEscape"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"UnicodeEscape"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"COMMENT"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"LINE_COMMENT"</ASTParser.anonymous>, 
                   <ASTParser.anonymous>"ESCAPED_NEWLINE"</ASTParser.anonymous>)
  </if(tokenNames)_subtemplate>end
  </Ruby.tokenDataModule>
  <Ruby.parser><if(grammar.grammarIsRoot)_subtemplate><Ruby.autoloadDelegates></Ruby.autoloadDelegates></if(grammar.grammarIsRoot)_subtemplate>
  class <if(grammar.grammarIsRoot)_subtemplate>Parser</if(grammar.grammarIsRoot)_subtemplate> < ANTLR3::Parser
    <Ruby.parserBody>@grammar_home = Cpp
    <AST.region__parserBody__mixins><Ruby.region__parserBody__mixins></Ruby.region__parserBody__mixins>include ANTLR3::ASTBuilder</AST.region__parserBody__mixins>

    RULE_METHODS = [<ASTParser.anonymous>:preprocess</ASTParser.anonymous>, 
                    <ASTParser.anonymous>:proc_line</ASTParser.anonymous>, 
                    <ASTParser.anonymous>:file_inclusion</ASTParser.anonymous>, 
                    <ASTParser.anonymous>:macro_define</ASTParser.anonymous>, 
                    <ASTParser.anonymous>:macro_param</ASTParser.anonymous>, 
                    <ASTParser.anonymous>:macro_execution</ASTParser.anonymous>, 
                    <ASTParser.anonymous>:macro_undef</ASTParser.anonymous>, 
                    <ASTParser.anonymous>:conditional_compilation</ASTParser.anonymous>, 
                    <ASTParser.anonymous>:line_control</ASTParser.anonymous>, 
                    <ASTParser.anonymous>:diagnostics</ASTParser.anonymous>, 
                    <ASTParser.anonymous>:text_line</ASTParser.anonymous>, 
                    <ASTParser.anonymous>:statement</ASTParser.anonymous>, 
                    <ASTParser.anonymous>:type_name</ASTParser.anonymous>, 
                    <ASTParser.anonymous>:ifexpression</ASTParser.anonymous>, 
                    <ASTParser.anonymous>:assignment_expression</ASTParser.anonymous>, 
                    <ASTParser.anonymous>:conditional_expression</ASTParser.anonymous>, 
                    <ASTParser.anonymous>:logical_or_expression</ASTParser.anonymous>, 
                    <ASTParser.anonymous>:logical_and_expression</ASTParser.anonymous>, 
                    <ASTParser.anonymous>:inclusive_or_expression</ASTParser.anonymous>, 
                    <ASTParser.anonymous>:exclusive_or_expression</ASTParser.anonymous>, 
                    <ASTParser.anonymous>:and_expression</ASTParser.anonymous>, 
                    <ASTParser.anonymous>:equality_expression</ASTParser.anonymous>, 
                    <ASTParser.anonymous>:relational_expression</ASTParser.anonymous>, 
                    <ASTParser.anonymous>:shift_expression</ASTParser.anonymous>, 
                    <ASTParser.anonymous>:additive_expression</ASTParser.anonymous>, 
                    <ASTParser.anonymous>:multiplicative_expression</ASTParser.anonymous>, 
                    <ASTParser.anonymous>:unary_expression</ASTParser.anonymous>, 
                    <ASTParser.anonymous>:unary_expression_not_plus_minus</ASTParser.anonymous>, 
                    <ASTParser.anonymous>:postfix_expression</ASTParser.anonymous>, 
                    <ASTParser.anonymous>:primary_expression</ASTParser.anonymous>, 
                    <ASTParser.anonymous>:function_call</ASTParser.anonymous>, 
                    <ASTParser.anonymous>:arg_list</ASTParser.anonymous>, 
                    <ASTParser.anonymous>:constant</ASTParser.anonymous>, 
                    <ASTParser.anonymous>:source_text</ASTParser.anonymous>, 
                    <ASTParser.anonymous>:macro_expansion</ASTParser.anonymous>, 
                    <ASTParser.anonymous>:mac_args</ASTParser.anonymous>, 
                    <ASTParser.anonymous>:m_arg</ASTParser.anonymous>, <ASTParser.anonymous>:source_expression</ASTParser.anonymous>, 
                    <ASTParser.anonymous>:concatenate</ASTParser.anonymous>, 
                    <ASTParser.anonymous>:primary_source</ASTParser.anonymous>, 
                    <ASTParser.anonymous>:macro_text</ASTParser.anonymous>, 
                    <ASTParser.anonymous>:synpred14_Cpp</ASTParser.anonymous>, 
                    <ASTParser.anonymous>:synpred22_Cpp</ASTParser.anonymous>, 
                    <ASTParser.anonymous>:synpred65_Cpp</ASTParser.anonymous>, 
                    <ASTParser.anonymous>:synpred66_Cpp</ASTParser.anonymous>, 
                    <ASTParser.anonymous>:synpred75_Cpp</ASTParser.anonymous>, 
                    <ASTParser.anonymous>:synpred78_Cpp</ASTParser.anonymous>, 
                    <ASTParser.anonymous>:synpred82_Cpp</ASTParser.anonymous>, 
                    <ASTParser.anonymous>:synpred83_Cpp</ASTParser.anonymous>, 
                    <ASTParser.anonymous>:synpred92_Cpp</ASTParser.anonymous>, 
                    <ASTParser.anonymous>:synpred94_Cpp</ASTParser.anonymous>, 
                    <ASTParser.anonymous>:synpred98_Cpp</ASTParser.anonymous>, 
                    <ASTParser.anonymous>:synpred100_Cpp</ASTParser.anonymous>, 
                    <ASTParser.anonymous>:synpred103_Cpp</ASTParser.anonymous>, 
                    <ASTParser.anonymous>:synpred105_Cpp</ASTParser.anonymous>, 
                    <ASTParser.anonymous>:synpred106_Cpp</ASTParser.anonymous>, 
                    <ASTParser.anonymous>:synpred108_Cpp</ASTParser.anonymous>, 
                    <ASTParser.anonymous>:synpred110_Cpp</ASTParser.anonymous>, 
                    <ASTParser.anonymous>:synpred112_Cpp</ASTParser.anonymous>, 
                    <ASTParser.anonymous>:synpred115_Cpp</ASTParser.anonymous>, 
                    <ASTParser.anonymous>:synpred121_Cpp</ASTParser.anonymous>].freeze

    <ASTParser.anonymous><if(it.isDynamicGlobalScope)_subtemplate><Ruby.globalAttributeScopeClass><if(scope.attributes)_subtemplate>ScopeExpression = Struct.new(<ASTParser.anonymous>:flavor</ASTParser.anonymous>)</if(scope.attributes)_subtemplate></Ruby.globalAttributeScopeClass>
    </if(it.isDynamicGlobalScope)_subtemplate></ASTParser.anonymous>
    <ASTParser.anonymous><Ruby.ruleAttributeScopeClass></Ruby.ruleAttributeScopeClass></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeClass></Ruby.ruleAttributeScopeClass></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeClass></Ruby.ruleAttributeScopeClass></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeClass></Ruby.ruleAttributeScopeClass></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeClass></Ruby.ruleAttributeScopeClass></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeClass></Ruby.ruleAttributeScopeClass></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeClass></Ruby.ruleAttributeScopeClass></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeClass></Ruby.ruleAttributeScopeClass></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeClass></Ruby.ruleAttributeScopeClass></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeClass></Ruby.ruleAttributeScopeClass></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeClass></Ruby.ruleAttributeScopeClass></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeClass></Ruby.ruleAttributeScopeClass></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeClass></Ruby.ruleAttributeScopeClass></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeClass></Ruby.ruleAttributeScopeClass></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeClass></Ruby.ruleAttributeScopeClass></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeClass></Ruby.ruleAttributeScopeClass></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeClass></Ruby.ruleAttributeScopeClass></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeClass></Ruby.ruleAttributeScopeClass></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeClass></Ruby.ruleAttributeScopeClass></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeClass></Ruby.ruleAttributeScopeClass></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeClass></Ruby.ruleAttributeScopeClass></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeClass></Ruby.ruleAttributeScopeClass></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeClass></Ruby.ruleAttributeScopeClass></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeClass></Ruby.ruleAttributeScopeClass></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeClass></Ruby.ruleAttributeScopeClass></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeClass></Ruby.ruleAttributeScopeClass></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeClass></Ruby.ruleAttributeScopeClass></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeClass></Ruby.ruleAttributeScopeClass></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeClass></Ruby.ruleAttributeScopeClass></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeClass></Ruby.ruleAttributeScopeClass></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeClass></Ruby.ruleAttributeScopeClass></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeClass></Ruby.ruleAttributeScopeClass></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeClass></Ruby.ruleAttributeScopeClass></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeClass></Ruby.ruleAttributeScopeClass></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeClass></Ruby.ruleAttributeScopeClass></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeClass></Ruby.ruleAttributeScopeClass></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeClass></Ruby.ruleAttributeScopeClass></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeClass></Ruby.ruleAttributeScopeClass></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeClass></Ruby.ruleAttributeScopeClass></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeClass></Ruby.ruleAttributeScopeClass></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeClass></Ruby.ruleAttributeScopeClass></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeClass></Ruby.ruleAttributeScopeClass></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeClass></Ruby.ruleAttributeScopeClass></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeClass></Ruby.ruleAttributeScopeClass></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeClass></Ruby.ruleAttributeScopeClass></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeClass></Ruby.ruleAttributeScopeClass></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeClass></Ruby.ruleAttributeScopeClass></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeClass></Ruby.ruleAttributeScopeClass></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeClass></Ruby.ruleAttributeScopeClass></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeClass></Ruby.ruleAttributeScopeClass></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeClass></Ruby.ruleAttributeScopeClass></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeClass></Ruby.ruleAttributeScopeClass></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeClass></Ruby.ruleAttributeScopeClass></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeClass></Ruby.ruleAttributeScopeClass></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeClass></Ruby.ruleAttributeScopeClass></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeClass></Ruby.ruleAttributeScopeClass></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeClass></Ruby.ruleAttributeScopeClass></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeClass></Ruby.ruleAttributeScopeClass></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeClass></Ruby.ruleAttributeScopeClass></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeClass></Ruby.ruleAttributeScopeClass></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeClass></Ruby.ruleAttributeScopeClass></ASTParser.anonymous>
    include TokenData

    generated_using("Cpp.g", "3.2 Nov 04, 2009 19:38:44")

    <Ruby.parserConstructor>def initialize(input, options = {})
      super(input, options)
    <if(memoize)_subtemplate><if(grammar.grammarIsRoot)_subtemplate>  @state.rule_memory = {}</if(grammar.grammarIsRoot)_subtemplate></if(memoize)_subtemplate>
      <ASTParser.anonymous><if(it.isDynamicGlobalScope)_subtemplate><Ruby.globalAttributeScopeStack><if(scope.attributes)_subtemplate>@Expression_stack = []</if(scope.attributes)_subtemplate></Ruby.globalAttributeScopeStack>
      </if(it.isDynamicGlobalScope)_subtemplate></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeStack></Ruby.ruleAttributeScopeStack></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeStack></Ruby.ruleAttributeScopeStack></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeStack></Ruby.ruleAttributeScopeStack></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeStack></Ruby.ruleAttributeScopeStack></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeStack></Ruby.ruleAttributeScopeStack></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeStack></Ruby.ruleAttributeScopeStack></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeStack></Ruby.ruleAttributeScopeStack></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeStack></Ruby.ruleAttributeScopeStack></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeStack></Ruby.ruleAttributeScopeStack></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeStack></Ruby.ruleAttributeScopeStack></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeStack></Ruby.ruleAttributeScopeStack></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeStack></Ruby.ruleAttributeScopeStack></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeStack></Ruby.ruleAttributeScopeStack></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeStack></Ruby.ruleAttributeScopeStack></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeStack></Ruby.ruleAttributeScopeStack></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeStack></Ruby.ruleAttributeScopeStack></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeStack></Ruby.ruleAttributeScopeStack></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeStack></Ruby.ruleAttributeScopeStack></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeStack></Ruby.ruleAttributeScopeStack></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeStack></Ruby.ruleAttributeScopeStack></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeStack></Ruby.ruleAttributeScopeStack></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeStack></Ruby.ruleAttributeScopeStack></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeStack></Ruby.ruleAttributeScopeStack></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeStack></Ruby.ruleAttributeScopeStack></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeStack></Ruby.ruleAttributeScopeStack></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeStack></Ruby.ruleAttributeScopeStack></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeStack></Ruby.ruleAttributeScopeStack></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeStack></Ruby.ruleAttributeScopeStack></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeStack></Ruby.ruleAttributeScopeStack></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeStack></Ruby.ruleAttributeScopeStack></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeStack></Ruby.ruleAttributeScopeStack></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeStack></Ruby.ruleAttributeScopeStack></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeStack></Ruby.ruleAttributeScopeStack></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeStack></Ruby.ruleAttributeScopeStack></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeStack></Ruby.ruleAttributeScopeStack></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeStack></Ruby.ruleAttributeScopeStack></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeStack></Ruby.ruleAttributeScopeStack></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeStack></Ruby.ruleAttributeScopeStack></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeStack></Ruby.ruleAttributeScopeStack></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeStack></Ruby.ruleAttributeScopeStack></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeStack></Ruby.ruleAttributeScopeStack></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeStack></Ruby.ruleAttributeScopeStack></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeStack></Ruby.ruleAttributeScopeStack></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeStack></Ruby.ruleAttributeScopeStack></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeStack></Ruby.ruleAttributeScopeStack></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeStack></Ruby.ruleAttributeScopeStack></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeStack></Ruby.ruleAttributeScopeStack></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeStack></Ruby.ruleAttributeScopeStack></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeStack></Ruby.ruleAttributeScopeStack></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeStack></Ruby.ruleAttributeScopeStack></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeStack></Ruby.ruleAttributeScopeStack></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeStack></Ruby.ruleAttributeScopeStack></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeStack></Ruby.ruleAttributeScopeStack></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeStack></Ruby.ruleAttributeScopeStack></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeStack></Ruby.ruleAttributeScopeStack></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeStack></Ruby.ruleAttributeScopeStack></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeStack></Ruby.ruleAttributeScopeStack></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeStack></Ruby.ruleAttributeScopeStack></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeStack></Ruby.ruleAttributeScopeStack></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeStack></Ruby.ruleAttributeScopeStack></ASTParser.anonymous><ASTParser.anonymous><Ruby.ruleAttributeScopeStack></Ruby.ruleAttributeScopeStack></ASTParser.anonymous>
      <Ruby.placeAction></Ruby.placeAction><Ruby.region__parserConstructor__init></Ruby.region__parserConstructor__init>
    end</Ruby.parserConstructor>
    <Ruby.region__parserBody__additionalMembers></Ruby.region__parserBody__additionalMembers># - - - - - - - - - - - - Rules - - - - - - - - - - - - -
    <ASTParser.anonymous><Ruby.rule><Ruby.returnScope><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><Ruby.returnStructName>PreprocessReturnValue</Ruby.returnStructName> = define_return_scope </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.returnScope>

    # parser rule preprocess
    # 
    # (in Cpp.g)
    # 85:1: preprocess : ( proc_line )+ ;
    def preprocess
      <Ruby.traceIn><else_subtemplate># -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 1)
      </else_subtemplate></Ruby.traceIn><Ruby.ruleScopeSetUp></Ruby.ruleScopeSetUp><AST.ruleDeclarations><Ruby.ruleDeclarations><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate>return_value = <Ruby.returnStructName>PreprocessReturnValue</Ruby.returnStructName>.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(memoize)_subtemplate>preprocess_start_index = @input.index
      </if(memoize)_subtemplate></Ruby.ruleDeclarations>
      root_0 = nil
      </AST.ruleDeclarations><AST.ruleLabelDefs><Ruby.ruleLabelDefs><Ruby.ruleLabelDef>proc_line1 = nil
      </Ruby.ruleLabelDef></Ruby.ruleLabelDefs>
      </AST.ruleLabelDefs><Ruby.action></Ruby.action>
      <Ruby.region__rule__body><Ruby.ruleBody><if(memoize)_subtemplate><if(backtracking)_subtemplate>success = false # flag used for memoization
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      begin
        <Ruby.ruleMemoization><if(memoize)_subtemplate># rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
        end
        </if(memoize)_subtemplate></Ruby.ruleMemoization><Ruby.ruleBlockSingleAlt><Ruby.region__ruleBlockSingleAlt__prealt></Ruby.region__ruleBlockSingleAlt__prealt><AST.alt><if(autoAST)_subtemplate><if(outerAlt)_subtemplate><if(!rewriteMode)_subtemplate>root_0 = @adaptor.create_flat_list!

        </if(!rewriteMode)_subtemplate></if(outerAlt)_subtemplate></if(autoAST)_subtemplate>
        # at line 86:7: ( proc_line )+
        <Ruby.element><Ruby.positiveClosureBlock># at file 86:7: ( proc_line )+
        <Ruby.region__positiveClosureBlock__loopBody><Ruby.positiveClosureBlockLoop>match_count_1 = 0
        loop do
          alt_1 = 2
          <Ruby.region__positiveClosureBlockLoop__decisionBody><Ruby.dfaLoopbackState>look_1_0 = @input.peek(1)

          <Ruby.dfaEdge>if (<Ruby.setTest><Ruby.lookaheadTest>look_1_0 == IF</Ruby.lookaheadTest> || <Ruby.lookaheadRangeTest>look_1_0.between?(WARNING, PRAGMA)</Ruby.lookaheadRangeTest> || <Ruby.lookaheadTest>look_1_0 == TEXT_END</Ruby.lookaheadTest> || <Ruby.lookaheadTest>look_1_0 == EXEC_MACRO</Ruby.lookaheadTest> || <Ruby.lookaheadRangeTest>look_1_0.between?(LINE, UNDEF)</Ruby.lookaheadRangeTest> || <Ruby.lookaheadRangeTest>look_1_0.between?(DIRECTIVE, COMMA)</Ruby.lookaheadRangeTest> || <Ruby.lookaheadRangeTest>look_1_0.between?(DECIMAL_LITERAL, STRING_LITERAL)</Ruby.lookaheadRangeTest> || <Ruby.lookaheadTest>look_1_0 == SIZEOF</Ruby.lookaheadTest> || <Ruby.lookaheadRangeTest>look_1_0.between?(HEX_LITERAL, COPERATOR)</Ruby.lookaheadRangeTest></Ruby.setTest>) 
            <Ruby.dfaAcceptState>alt_1 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>

          end</Ruby.dfaLoopbackState></Ruby.region__positiveClosureBlockLoop__decisionBody>
          case alt_1
          <Ruby.altSwitchCase>when 1
            <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate></if(autoAST)_subtemplate># at line 0:0: proc_line
            <Ruby.element><ASTParser.ruleRef><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_proc_line_IN_preprocess_379)
            <if(label)_subtemplate>proc_line1 = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>proc_line</ASTParser.<anonymous template argument>></Ruby.methodCall>
            @state.following.pop</Ruby.ruleRef>
            <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
              <ASTParser.<anonymous template argument>>@adaptor.add_child(root_0, proc_line1.tree)</ASTParser.<anonymous template argument>>
            end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleRef>
            </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
          else
            match_count_1 > 0 and break
            <Ruby.ruleBacktrackFailure><if(backtracking)_subtemplate>@state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
            </if(backtracking)_subtemplate></Ruby.ruleBacktrackFailure>
            eee = EarlyExit(1)
            <Ruby.region__positiveClosureBlockLoop__earlyExitException></Ruby.region__positiveClosureBlockLoop__earlyExitException>

            raise eee
          end
          match_count_1 += 1
        end
        </Ruby.positiveClosureBlockLoop></Ruby.region__positiveClosureBlock__loopBody></Ruby.positiveClosureBlock>
        </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.ruleBlockSingleAlt><ASTParser.ruleCleanUp><Ruby.ruleCleanUp><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(!TREE_PARSER)_subtemplate># - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)
        </if(!TREE_PARSER)_subtemplate></if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.ruleCleanUp>
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>
          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)
          </ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleCleanUp>
      <if(memoize)_subtemplate><if(backtracking)_subtemplate>  success = true
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      <else_subtemplate><if(!emptyRule)_subtemplate><else_subtemplate>rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        <ASTParser.region__ruleBody__setErrorReturnValue>return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)
        </ASTParser.region__ruleBody__setErrorReturnValue></else_subtemplate></if(!emptyRule)_subtemplate></else_subtemplate>
      ensure
        <Ruby.traceOut><else_subtemplate># -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 1)
        </else_subtemplate></Ruby.traceOut><Ruby.memoize><if(memoize)_subtemplate><if(backtracking)_subtemplate>memoize(__method__, preprocess_start_index, success) if @state.backtracking > 0
        </if(backtracking)_subtemplate></if(memoize)_subtemplate></Ruby.memoize><Ruby.ruleScopeCleanUp></Ruby.ruleScopeCleanUp>
      end</Ruby.ruleBody></Ruby.region__rule__body>
      
      return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
    end
    </Ruby.rule>
    </ASTParser.anonymous><ASTParser.anonymous><Ruby.rule><Ruby.returnScope><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><Ruby.returnStructName>ProcLineReturnValue</Ruby.returnStructName> = define_return_scope </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.returnScope>

    # parser rule proc_line
    # 
    # (in Cpp.g)
    # 89:1: proc_line : ( DIRECTIVE | text_line | diagnostics | file_inclusion | macro_define | macro_undef | conditional_compilation | line_control | macro_execution )? End ;
    def proc_line
      <Ruby.traceIn><else_subtemplate># -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 2)
      </else_subtemplate></Ruby.traceIn><Ruby.ruleScopeSetUp></Ruby.ruleScopeSetUp><AST.ruleDeclarations><Ruby.ruleDeclarations><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate>return_value = <Ruby.returnStructName>ProcLineReturnValue</Ruby.returnStructName>.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(memoize)_subtemplate>proc_line_start_index = @input.index
      </if(memoize)_subtemplate></Ruby.ruleDeclarations>
      root_0 = nil
      </AST.ruleDeclarations><AST.ruleLabelDefs><Ruby.ruleLabelDefs><ASTParser.anonymous>__DIRECTIVE2__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__End11__ = nil
      </ASTParser.anonymous><Ruby.ruleLabelDef>text_line3 = nil
      </Ruby.ruleLabelDef><Ruby.ruleLabelDef>diagnostics4 = nil
      </Ruby.ruleLabelDef><Ruby.ruleLabelDef>file_inclusion5 = nil
      </Ruby.ruleLabelDef><Ruby.ruleLabelDef>macro_define6 = nil
      </Ruby.ruleLabelDef><Ruby.ruleLabelDef>macro_undef7 = nil
      </Ruby.ruleLabelDef><Ruby.ruleLabelDef>conditional_compilation8 = nil
      </Ruby.ruleLabelDef><Ruby.ruleLabelDef>line_control9 = nil
      </Ruby.ruleLabelDef><Ruby.ruleLabelDef>macro_execution10 = nil
      </Ruby.ruleLabelDef></Ruby.ruleLabelDefs>
      <ASTParser.anonymous>tree_for_DIRECTIVE2 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_End11 = nil</ASTParser.anonymous>
      </AST.ruleLabelDefs><Ruby.action></Ruby.action>
      <Ruby.region__rule__body><Ruby.ruleBody><if(memoize)_subtemplate><if(backtracking)_subtemplate>success = false # flag used for memoization
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      begin
        <Ruby.ruleMemoization><if(memoize)_subtemplate># rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
        end
        </if(memoize)_subtemplate></Ruby.ruleMemoization><Ruby.ruleBlockSingleAlt><Ruby.region__ruleBlockSingleAlt__prealt></Ruby.region__ruleBlockSingleAlt__prealt><AST.alt><if(autoAST)_subtemplate><if(outerAlt)_subtemplate><if(!rewriteMode)_subtemplate>root_0 = @adaptor.create_flat_list!

        </if(!rewriteMode)_subtemplate></if(outerAlt)_subtemplate></if(autoAST)_subtemplate>
        # at line 91:5: ( DIRECTIVE | text_line | diagnostics | file_inclusion | macro_define | macro_undef | conditional_compilation | line_control | macro_execution )? End
        <Ruby.element><Ruby.block># at line 91:5: ( DIRECTIVE | text_line | diagnostics | file_inclusion | macro_define | macro_undef | conditional_compilation | line_control | macro_execution )?
        alt_2 = 10
        <Ruby.region__block__body><Ruby.blockBody><Ruby.region__blockBody__decision><Ruby.dfaDecision>alt_2 = @dfa2.predict(@input)</Ruby.dfaDecision></Ruby.region__blockBody__decision>
        case alt_2
        <Ruby.altSwitchCase>when 1
          <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate></if(autoAST)_subtemplate># at line 91:13: DIRECTIVE
          <Ruby.element><ASTParser.tokenRef><Ruby.tokenRef><if(label)_subtemplate>__DIRECTIVE2__ = </if(label)_subtemplate>match(DIRECTIVE, TOKENS_FOLLOWING_DIRECTIVE_IN_proc_line_409)</Ruby.tokenRef>
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>
            tree_for_DIRECTIVE2 = <ASTParser.createNodeFromToken><else_subtemplate>@adaptor.create_with_payload!(__DIRECTIVE2__)</else_subtemplate></ASTParser.createNodeFromToken>
            @adaptor.add_child(root_0, tree_for_DIRECTIVE2)
            </ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.tokenRef>
          </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
        <Ruby.altSwitchCase>when 2
          <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate></if(autoAST)_subtemplate># at line 92:13: text_line
          <Ruby.element><ASTParser.ruleRef><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_text_line_IN_proc_line_423)
          <if(label)_subtemplate>text_line3 = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>text_line</ASTParser.<anonymous template argument>></Ruby.methodCall>
          @state.following.pop</Ruby.ruleRef>
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>@adaptor.add_child(root_0, text_line3.tree)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleRef>
          </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
        <Ruby.altSwitchCase>when 3
          <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate></if(autoAST)_subtemplate># at line 93:13: diagnostics
          <Ruby.element><ASTParser.ruleRef><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_diagnostics_IN_proc_line_437)
          <if(label)_subtemplate>diagnostics4 = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>diagnostics</ASTParser.<anonymous template argument>></Ruby.methodCall>
          @state.following.pop</Ruby.ruleRef>
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>@adaptor.add_child(root_0, diagnostics4.tree)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleRef>
          </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
        <Ruby.altSwitchCase>when 4
          <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate></if(autoAST)_subtemplate># at line 94:13: file_inclusion
          <Ruby.element><ASTParser.ruleRef><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_file_inclusion_IN_proc_line_451)
          <if(label)_subtemplate>file_inclusion5 = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>file_inclusion</ASTParser.<anonymous template argument>></Ruby.methodCall>
          @state.following.pop</Ruby.ruleRef>
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>@adaptor.add_child(root_0, file_inclusion5.tree)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleRef>
          </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
        <Ruby.altSwitchCase>when 5
          <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate></if(autoAST)_subtemplate># at line 95:13: macro_define
          <Ruby.element><ASTParser.ruleRef><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_macro_define_IN_proc_line_465)
          <if(label)_subtemplate>macro_define6 = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>macro_define</ASTParser.<anonymous template argument>></Ruby.methodCall>
          @state.following.pop</Ruby.ruleRef>
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>@adaptor.add_child(root_0, macro_define6.tree)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleRef>
          </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
        <Ruby.altSwitchCase>when 6
          <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate></if(autoAST)_subtemplate># at line 96:13: macro_undef
          <Ruby.element><ASTParser.ruleRef><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_macro_undef_IN_proc_line_479)
          <if(label)_subtemplate>macro_undef7 = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>macro_undef</ASTParser.<anonymous template argument>></Ruby.methodCall>
          @state.following.pop</Ruby.ruleRef>
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>@adaptor.add_child(root_0, macro_undef7.tree)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleRef>
          </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
        <Ruby.altSwitchCase>when 7
          <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate></if(autoAST)_subtemplate># at line 97:13: conditional_compilation
          <Ruby.element><ASTParser.ruleRef><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_conditional_compilation_IN_proc_line_493)
          <if(label)_subtemplate>conditional_compilation8 = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>conditional_compilation</ASTParser.<anonymous template argument>></Ruby.methodCall>
          @state.following.pop</Ruby.ruleRef>
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>@adaptor.add_child(root_0, conditional_compilation8.tree)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleRef>
          </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
        <Ruby.altSwitchCase>when 8
          <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate></if(autoAST)_subtemplate># at line 98:13: line_control
          <Ruby.element><ASTParser.ruleRef><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_line_control_IN_proc_line_507)
          <if(label)_subtemplate>line_control9 = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>line_control</ASTParser.<anonymous template argument>></Ruby.methodCall>
          @state.following.pop</Ruby.ruleRef>
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>@adaptor.add_child(root_0, line_control9.tree)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleRef>
          </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
        <Ruby.altSwitchCase>when 9
          <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate></if(autoAST)_subtemplate># at line 99:13: macro_execution
          <Ruby.element><ASTParser.ruleRef><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_macro_execution_IN_proc_line_521)
          <if(label)_subtemplate>macro_execution10 = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>macro_execution</ASTParser.<anonymous template argument>></Ruby.methodCall>
          @state.following.pop</Ruby.ruleRef>
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>@adaptor.add_child(root_0, macro_execution10.tree)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleRef>
          </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
        end</Ruby.blockBody></Ruby.region__block__body></Ruby.block>
        </Ruby.element><Ruby.element><ASTParser.tokenRef><Ruby.tokenRef><if(label)_subtemplate>__End11__ = </if(label)_subtemplate>match(End, TOKENS_FOLLOWING_End_IN_proc_line_535)</Ruby.tokenRef>
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>
          tree_for_End11 = <ASTParser.createNodeFromToken><else_subtemplate>@adaptor.create_with_payload!(__End11__)</else_subtemplate></ASTParser.createNodeFromToken>
          @adaptor.add_child(root_0, tree_for_End11)
          </ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.tokenRef>
        </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.ruleBlockSingleAlt><ASTParser.ruleCleanUp><Ruby.ruleCleanUp><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(!TREE_PARSER)_subtemplate># - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)
        </if(!TREE_PARSER)_subtemplate></if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.ruleCleanUp>
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>
          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)
          </ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleCleanUp>
      <if(memoize)_subtemplate><if(backtracking)_subtemplate>  success = true
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      <else_subtemplate><if(!emptyRule)_subtemplate><else_subtemplate>rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        <ASTParser.region__ruleBody__setErrorReturnValue>return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)
        </ASTParser.region__ruleBody__setErrorReturnValue></else_subtemplate></if(!emptyRule)_subtemplate></else_subtemplate>
      ensure
        <Ruby.traceOut><else_subtemplate># -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 2)
        </else_subtemplate></Ruby.traceOut><Ruby.memoize><if(memoize)_subtemplate><if(backtracking)_subtemplate>memoize(__method__, proc_line_start_index, success) if @state.backtracking > 0
        </if(backtracking)_subtemplate></if(memoize)_subtemplate></Ruby.memoize><Ruby.ruleScopeCleanUp></Ruby.ruleScopeCleanUp>
      end</Ruby.ruleBody></Ruby.region__rule__body>
      
      return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
    end
    </Ruby.rule>
    </ASTParser.anonymous><ASTParser.anonymous><Ruby.rule><Ruby.returnScope><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><Ruby.returnStructName>FileInclusionReturnValue</Ruby.returnStructName> = define_return_scope </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.returnScope>

    # parser rule file_inclusion
    # 
    # (in Cpp.g)
    # 103:1: file_inclusion : ( INCLUDE -> ^( INCLUDE ) | INCLUDE_EXPAND -> ^( INCLUDE_EXPAND ) );
    def file_inclusion
      <Ruby.traceIn><else_subtemplate># -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 3)
      </else_subtemplate></Ruby.traceIn><Ruby.ruleScopeSetUp></Ruby.ruleScopeSetUp><AST.ruleDeclarations><Ruby.ruleDeclarations><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate>return_value = <Ruby.returnStructName>FileInclusionReturnValue</Ruby.returnStructName>.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(memoize)_subtemplate>file_inclusion_start_index = @input.index
      </if(memoize)_subtemplate></Ruby.ruleDeclarations>
      root_0 = nil
      </AST.ruleDeclarations><AST.ruleLabelDefs><Ruby.ruleLabelDefs><ASTParser.anonymous>__INCLUDE12__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__INCLUDE_EXPAND13__ = nil
      </ASTParser.anonymous></Ruby.ruleLabelDefs>
      <ASTParser.anonymous>tree_for_INCLUDE12 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_INCLUDE_EXPAND13 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>stream_INCLUDE_EXPAND = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token INCLUDE_EXPAND")</ASTParser.anonymous>
      <ASTParser.anonymous>stream_INCLUDE = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token INCLUDE")</ASTParser.anonymous>
      </AST.ruleLabelDefs><Ruby.action></Ruby.action>
      <Ruby.region__rule__body><Ruby.ruleBody><if(memoize)_subtemplate><if(backtracking)_subtemplate>success = false # flag used for memoization
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      begin
        <Ruby.ruleMemoization><if(memoize)_subtemplate># rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
        end
        </if(memoize)_subtemplate></Ruby.ruleMemoization><Ruby.ruleBlock># at line 104:5: ( INCLUDE -> ^( INCLUDE ) | INCLUDE_EXPAND -> ^( INCLUDE_EXPAND ) )
        alt_3 = 2
        <Ruby.region__ruleBlock__decision><Ruby.dfaState>look_3_0 = @input.peek(1)

        <Ruby.dfaEdge>if (<Ruby.lookaheadTest>look_3_0 == INCLUDE</Ruby.lookaheadTest>) 
          <Ruby.dfaAcceptState>alt_3 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>
        els<Ruby.dfaEdge>if (<Ruby.lookaheadTest>look_3_0 == INCLUDE_EXPAND</Ruby.lookaheadTest>) 
          <Ruby.dfaAcceptState>alt_3 = 2</Ruby.dfaAcceptState></Ruby.dfaEdge>
        else
        <else_subtemplate><Ruby.ruleBacktrackFailure><if(backtracking)_subtemplate>@state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
          </if(backtracking)_subtemplate></Ruby.ruleBacktrackFailure>nvae = NoViableAlternative("", 3, 0)
          <Ruby.region__dfaState__noViableAltException>raise nvae</Ruby.region__dfaState__noViableAltException>
        </else_subtemplate>end</Ruby.dfaState></Ruby.region__ruleBlock__decision>
        case alt_3
        <Ruby.altSwitchCase>when 1
          <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt># at line 104:13: INCLUDE
          <Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>__INCLUDE12__ = </if(label)_subtemplate>match(INCLUDE, TOKENS_FOLLOWING_INCLUDE_IN_file_inclusion_558)</Ruby.tokenRef></ASTParser.tokenRefBang> 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>stream_INCLUDE.add(__INCLUDE12__)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
          </Ruby.element><AST.rewriteCode># AST Rewrite
          # elements: INCLUDE
          # token labels: 
          # rule labels: <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>
            <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
            <AST.rewriteCodeLabels><ASTParser.anonymous>stream_<AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> = <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> ? subtree_stream("rule <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>", <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree) : subtree_stream("token <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>")</ASTParser.anonymous>
            </AST.rewriteCodeLabels>
            root_0 = @adaptor.create_flat_list!
            <AST.rewriteAltFirst><else_subtemplate># 104:29: -> ^( INCLUDE )
            <AST.rewriteElementList><AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteTree># at line 104:32: ^( INCLUDE )
            root_1 = @adaptor.create_flat_list!
            <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteTokenRefRoot>root_1 = @adaptor.become_root(<AST.createRewriteNodeFromElement><else_subtemplate><else_subtemplate>stream_INCLUDE.next_node</else_subtemplate></else_subtemplate></AST.createRewriteNodeFromElement>, root_1)
            </AST.rewriteTokenRefRoot></AST.rewriteElement>
            @adaptor.add_child(root_0, root_1)
            </AST.rewriteTree></AST.rewriteElement></AST.rewriteElementList></else_subtemplate></AST.rewriteAltFirst>


            <if(!TREE_PARSER)_subtemplate><AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
            </if(!TREE_PARSER)_subtemplate></ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.rewriteCode></AST.alt></Ruby.altSwitchCase>
        <Ruby.altSwitchCase>when 2
          <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt># at line 105:13: INCLUDE_EXPAND
          <Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>__INCLUDE_EXPAND13__ = </if(label)_subtemplate>match(INCLUDE_EXPAND, TOKENS_FOLLOWING_INCLUDE_EXPAND_IN_file_inclusion_586)</Ruby.tokenRef></ASTParser.tokenRefBang> 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>stream_INCLUDE_EXPAND.add(__INCLUDE_EXPAND13__)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
          </Ruby.element><AST.rewriteCode># AST Rewrite
          # elements: INCLUDE_EXPAND
          # token labels: 
          # rule labels: <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>
            <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
            <AST.rewriteCodeLabels><ASTParser.anonymous>stream_<AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> = <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> ? subtree_stream("rule <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>", <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree) : subtree_stream("token <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>")</ASTParser.anonymous>
            </AST.rewriteCodeLabels>
            root_0 = @adaptor.create_flat_list!
            <AST.rewriteAltFirst><else_subtemplate># 105:29: -> ^( INCLUDE_EXPAND )
            <AST.rewriteElementList><AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteTree># at line 105:32: ^( INCLUDE_EXPAND )
            root_1 = @adaptor.create_flat_list!
            <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteTokenRefRoot>root_1 = @adaptor.become_root(<AST.createRewriteNodeFromElement><else_subtemplate><else_subtemplate>stream_INCLUDE_EXPAND.next_node</else_subtemplate></else_subtemplate></AST.createRewriteNodeFromElement>, root_1)
            </AST.rewriteTokenRefRoot></AST.rewriteElement>
            @adaptor.add_child(root_0, root_1)
            </AST.rewriteTree></AST.rewriteElement></AST.rewriteElementList></else_subtemplate></AST.rewriteAltFirst>


            <if(!TREE_PARSER)_subtemplate><AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
            </if(!TREE_PARSER)_subtemplate></ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.rewriteCode></AST.alt></Ruby.altSwitchCase>
        end</Ruby.ruleBlock><ASTParser.ruleCleanUp><Ruby.ruleCleanUp><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(!TREE_PARSER)_subtemplate># - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)
        </if(!TREE_PARSER)_subtemplate></if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.ruleCleanUp>
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>
          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)
          </ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleCleanUp>
      <if(memoize)_subtemplate><if(backtracking)_subtemplate>  success = true
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      <else_subtemplate><if(!emptyRule)_subtemplate><else_subtemplate>rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        <ASTParser.region__ruleBody__setErrorReturnValue>return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)
        </ASTParser.region__ruleBody__setErrorReturnValue></else_subtemplate></if(!emptyRule)_subtemplate></else_subtemplate>
      ensure
        <Ruby.traceOut><else_subtemplate># -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 3)
        </else_subtemplate></Ruby.traceOut><Ruby.memoize><if(memoize)_subtemplate><if(backtracking)_subtemplate>memoize(__method__, file_inclusion_start_index, success) if @state.backtracking > 0
        </if(backtracking)_subtemplate></if(memoize)_subtemplate></Ruby.memoize><Ruby.ruleScopeCleanUp></Ruby.ruleScopeCleanUp>
      end</Ruby.ruleBody></Ruby.region__rule__body>
      
      return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
    end
    </Ruby.rule>
    </ASTParser.anonymous><ASTParser.anonymous><Ruby.rule><Ruby.returnScope><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><Ruby.returnStructName>MacroDefineReturnValue</Ruby.returnStructName> = define_return_scope </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.returnScope>

    # parser rule macro_define
    # 
    # (in Cpp.g)
    # 108:1: macro_define : ( DEFINE IDENTIFIER LPAREN ( WS )? RPAREN ( macro_text )? -> ^( MAC_FUNCTION_OBJECT IDENTIFIER ( macro_text )? ) | DEFINE mac= IDENTIFIER LPAREN ( WS )? (arg+= macro_param ( WS )? ( COMMA ( WS )* arg+= macro_param ( WS )* )* )? RPAREN ( macro_text )? -> ^( MAC_FUNCTION $mac ( $arg)+ ( macro_text )? ) | DEFINE IDENTIFIER ( macro_text )? -> ^( MAC_OBJECT IDENTIFIER ( macro_text )? ) );
    def macro_define
      <Ruby.traceIn><else_subtemplate># -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 4)
      </else_subtemplate></Ruby.traceIn><Ruby.ruleScopeSetUp></Ruby.ruleScopeSetUp><AST.ruleDeclarations><Ruby.ruleDeclarations><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate>return_value = <Ruby.returnStructName>MacroDefineReturnValue</Ruby.returnStructName>.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(memoize)_subtemplate>macro_define_start_index = @input.index
      </if(memoize)_subtemplate></Ruby.ruleDeclarations>
      root_0 = nil
      </AST.ruleDeclarations><AST.ruleLabelDefs><Ruby.ruleLabelDefs><ASTParser.anonymous>mac = nil
      </ASTParser.anonymous><ASTParser.anonymous>__DEFINE14__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__IDENTIFIER15__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__LPAREN16__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__WS17__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__RPAREN18__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__DEFINE20__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__LPAREN21__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__WS22__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__WS23__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__COMMA24__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__WS25__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__WS26__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__RPAREN27__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__DEFINE29__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__IDENTIFIER30__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>list_of_arg = []
      </ASTParser.anonymous><Ruby.ruleLabelDef>macro_text19 = nil
      </Ruby.ruleLabelDef><Ruby.ruleLabelDef>macro_text28 = nil
      </Ruby.ruleLabelDef><Ruby.ruleLabelDef>macro_text31 = nil
      </Ruby.ruleLabelDef><Ruby.ruleLabelDef>arg = nil
      </Ruby.ruleLabelDef><ASTParser.anonymous>arg = nil
      </ASTParser.anonymous></Ruby.ruleLabelDefs>
      <ASTParser.anonymous>tree_for_mac = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_DEFINE14 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_IDENTIFIER15 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_LPAREN16 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_WS17 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_RPAREN18 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_DEFINE20 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_LPAREN21 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_WS22 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_WS23 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_COMMA24 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_WS25 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_WS26 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_RPAREN27 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_DEFINE29 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_IDENTIFIER30 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>stream_RPAREN = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token RPAREN")</ASTParser.anonymous>
      <ASTParser.anonymous>stream_WS = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token WS")</ASTParser.anonymous>
      <ASTParser.anonymous>stream_COMMA = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token COMMA")</ASTParser.anonymous>
      <ASTParser.anonymous>stream_DEFINE = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token DEFINE")</ASTParser.anonymous>
      <ASTParser.anonymous>stream_IDENTIFIER = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token IDENTIFIER")</ASTParser.anonymous>
      <ASTParser.anonymous>stream_LPAREN = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token LPAREN")</ASTParser.anonymous>
      <ASTParser.anonymous>stream_macro_param = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule macro_param")</ASTParser.anonymous>
      <ASTParser.anonymous>stream_macro_text = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule macro_text")</ASTParser.anonymous></AST.ruleLabelDefs><Ruby.action></Ruby.action>
      <Ruby.region__rule__body><Ruby.ruleBody><if(memoize)_subtemplate><if(backtracking)_subtemplate>success = false # flag used for memoization
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      begin
        <Ruby.ruleMemoization><if(memoize)_subtemplate># rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
        end
        </if(memoize)_subtemplate></Ruby.ruleMemoization><Ruby.ruleBlock># at line 109:5: ( DEFINE IDENTIFIER LPAREN ( WS )? RPAREN ( macro_text )? -> ^( MAC_FUNCTION_OBJECT IDENTIFIER ( macro_text )? ) | DEFINE mac= IDENTIFIER LPAREN ( WS )? (arg+= macro_param ( WS )? ( COMMA ( WS )* arg+= macro_param ( WS )* )* )? RPAREN ( macro_text )? -> ^( MAC_FUNCTION $mac ( $arg)+ ( macro_text )? ) | DEFINE IDENTIFIER ( macro_text )? -> ^( MAC_OBJECT IDENTIFIER ( macro_text )? ) )
        alt_14 = 3
        <Ruby.region__ruleBlock__decision><Ruby.dfaDecision>alt_14 = @dfa14.predict(@input)</Ruby.dfaDecision></Ruby.region__ruleBlock__decision>
        case alt_14
        <Ruby.altSwitchCase>when 1
          <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt># at line 109:8: DEFINE IDENTIFIER LPAREN ( WS )? RPAREN ( macro_text )?
          <Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>__DEFINE14__ = </if(label)_subtemplate>match(DEFINE, TOKENS_FOLLOWING_DEFINE_IN_macro_define_611)</Ruby.tokenRef></ASTParser.tokenRefBang> 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>stream_DEFINE.add(__DEFINE14__)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
          </Ruby.element><Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>__IDENTIFIER15__ = </if(label)_subtemplate>match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_macro_define_617)</Ruby.tokenRef></ASTParser.tokenRefBang> 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>stream_IDENTIFIER.add(__IDENTIFIER15__)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
          </Ruby.element><Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>__LPAREN16__ = </if(label)_subtemplate>match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_macro_define_620)</Ruby.tokenRef></ASTParser.tokenRefBang> 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>stream_LPAREN.add(__LPAREN16__)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
          </Ruby.element><Ruby.element><Ruby.block># at line 109:43: ( WS )?
          alt_4 = 2
          <Ruby.region__block__body><Ruby.blockBody><Ruby.region__blockBody__decision><Ruby.dfaOptionalBlockState>look_4_0 = @input.peek(1)

          <Ruby.dfaEdge>if (<Ruby.lookaheadTest>look_4_0 == WS</Ruby.lookaheadTest>) 
            <Ruby.dfaAcceptState>alt_4 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>
          end</Ruby.dfaOptionalBlockState></Ruby.region__blockBody__decision>
          case alt_4
          <Ruby.altSwitchCase>when 1
            <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt># at line 0:0: WS
            <Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>__WS17__ = </if(label)_subtemplate>match(WS, TOKENS_FOLLOWING_WS_IN_macro_define_627)</Ruby.tokenRef></ASTParser.tokenRefBang> 
            <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
              <ASTParser.<anonymous template argument>>stream_WS.add(__WS17__)</ASTParser.<anonymous template argument>>
            end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
            </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
          end</Ruby.blockBody></Ruby.region__block__body></Ruby.block>
          </Ruby.element><Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>__RPAREN18__ = </if(label)_subtemplate>match(RPAREN, TOKENS_FOLLOWING_RPAREN_IN_macro_define_634)</Ruby.tokenRef></ASTParser.tokenRefBang> 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>stream_RPAREN.add(__RPAREN18__)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
          </Ruby.element><Ruby.element><Ruby.block># at line 109:59: ( macro_text )?
          alt_5 = 2
          <Ruby.region__block__body><Ruby.blockBody><Ruby.region__blockBody__decision><Ruby.dfaOptionalBlockState>look_5_0 = @input.peek(1)

          <Ruby.dfaEdge>if (<Ruby.setTest><Ruby.lookaheadTest>look_5_0 == TEXT_END</Ruby.lookaheadTest> || <Ruby.lookaheadRangeTest>look_5_0.between?(IDENTIFIER, COMMA)</Ruby.lookaheadRangeTest> || <Ruby.lookaheadRangeTest>look_5_0.between?(DECIMAL_LITERAL, STRING_LITERAL)</Ruby.lookaheadRangeTest> || <Ruby.lookaheadTest>look_5_0 == SIZEOF</Ruby.lookaheadTest> || <Ruby.lookaheadRangeTest>look_5_0.between?(HEX_LITERAL, COPERATOR)</Ruby.lookaheadRangeTest></Ruby.setTest>) 
            <Ruby.dfaAcceptState>alt_5 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>
          end</Ruby.dfaOptionalBlockState></Ruby.region__blockBody__decision>
          case alt_5
          <Ruby.altSwitchCase>when 1
            <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt># at line 0:0: macro_text
            <Ruby.element><AST.ruleRefTrack><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_macro_text_IN_macro_define_637)
            <if(label)_subtemplate>macro_text19 = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>macro_text</ASTParser.<anonymous template argument>></Ruby.methodCall>
            @state.following.pop</Ruby.ruleRef>
            <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
              <ASTParser.<anonymous template argument>>stream_macro_text.add(macro_text19.tree)</ASTParser.<anonymous template argument>>
            end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.ruleRefTrack>
            </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
          end</Ruby.blockBody></Ruby.region__block__body></Ruby.block>
          </Ruby.element><AST.rewriteCode># AST Rewrite
          # elements: macro_text, IDENTIFIER
          # token labels: 
          # rule labels: <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>
            <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
            <AST.rewriteCodeLabels><ASTParser.anonymous>stream_<AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> = <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> ? subtree_stream("rule <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>", <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree) : subtree_stream("token <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>")</ASTParser.anonymous>
            </AST.rewriteCodeLabels>
            root_0 = @adaptor.create_flat_list!
            <AST.rewriteAltFirst><else_subtemplate># 109:71: -> ^( MAC_FUNCTION_OBJECT IDENTIFIER ( macro_text )? )
            <AST.rewriteElementList><AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteTree># at line 109:74: ^( MAC_FUNCTION_OBJECT IDENTIFIER ( macro_text )? )
            root_1 = @adaptor.create_flat_list!
            <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteImaginaryTokenRefRoot>root_1 = @adaptor.become_root(<AST.createImaginaryNode><else_subtemplate><if(!args)_subtemplate>@adaptor.create_from_type!(MAC_FUNCTION_OBJECT, "MAC_FUNCTION_OBJECT")</if(!args)_subtemplate></else_subtemplate></AST.createImaginaryNode>, root_1)
            </AST.rewriteImaginaryTokenRefRoot></AST.rewriteElement>
            <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteTokenRef>@adaptor.add_child(root_1, <AST.createRewriteNodeFromElement><else_subtemplate><else_subtemplate>stream_IDENTIFIER.next_node</else_subtemplate></else_subtemplate></AST.createRewriteNodeFromElement>)
            </AST.rewriteTokenRef></AST.rewriteElement><AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteOptionalBlock># at line 109:107: ( macro_text )?
            if <ASTParser.anonymous>stream_macro_text.has_next?</ASTParser.anonymous>
              <AST.rewriteElementList><AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteRuleRef>@adaptor.add_child(root_1, stream_macro_text.next_tree)
              </AST.rewriteRuleRef></AST.rewriteElement></AST.rewriteElementList>
            end

            <ASTParser.anonymous>stream_macro_text.reset();
            </ASTParser.anonymous></AST.rewriteOptionalBlock></AST.rewriteElement>
            @adaptor.add_child(root_0, root_1)
            </AST.rewriteTree></AST.rewriteElement></AST.rewriteElementList></else_subtemplate></AST.rewriteAltFirst>


            <if(!TREE_PARSER)_subtemplate><AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
            </if(!TREE_PARSER)_subtemplate></ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.rewriteCode></AST.alt></Ruby.altSwitchCase>
        <Ruby.altSwitchCase>when 2
          <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt># at line 110:8: DEFINE mac= IDENTIFIER LPAREN ( WS )? (arg+= macro_param ( WS )? ( COMMA ( WS )* arg+= macro_param ( WS )* )* )? RPAREN ( macro_text )?
          <Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>__DEFINE20__ = </if(label)_subtemplate>match(DEFINE, TOKENS_FOLLOWING_DEFINE_IN_macro_define_658)</Ruby.tokenRef></ASTParser.tokenRefBang> 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>stream_DEFINE.add(__DEFINE20__)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
          </Ruby.element><Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>mac = </if(label)_subtemplate>match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_macro_define_662)</Ruby.tokenRef></ASTParser.tokenRefBang> 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>stream_IDENTIFIER.add(mac)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
          </Ruby.element><Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>__LPAREN21__ = </if(label)_subtemplate>match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_macro_define_665)</Ruby.tokenRef></ASTParser.tokenRefBang> 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>stream_LPAREN.add(__LPAREN21__)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
          </Ruby.element><Ruby.element><Ruby.block># at line 110:38: ( WS )?
          alt_6 = 2
          <Ruby.region__block__body><Ruby.blockBody><Ruby.region__blockBody__decision><Ruby.dfaOptionalBlockState>look_6_0 = @input.peek(1)

          <Ruby.dfaEdge>if (<Ruby.lookaheadTest>look_6_0 == WS</Ruby.lookaheadTest>) 
            <Ruby.dfaAcceptState>alt_6 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>
          end</Ruby.dfaOptionalBlockState></Ruby.region__blockBody__decision>
          case alt_6
          <Ruby.altSwitchCase>when 1
            <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt># at line 0:0: WS
            <Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>__WS22__ = </if(label)_subtemplate>match(WS, TOKENS_FOLLOWING_WS_IN_macro_define_667)</Ruby.tokenRef></ASTParser.tokenRefBang> 
            <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
              <ASTParser.<anonymous template argument>>stream_WS.add(__WS22__)</ASTParser.<anonymous template argument>>
            end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
            </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
          end</Ruby.blockBody></Ruby.region__block__body></Ruby.block>
          </Ruby.element><Ruby.element><Ruby.block># at line 110:42: (arg+= macro_param ( WS )? ( COMMA ( WS )* arg+= macro_param ( WS )* )* )?
          alt_11 = 2
          <Ruby.region__block__body><Ruby.blockBody><Ruby.region__blockBody__decision><Ruby.dfaOptionalBlockState>look_11_0 = @input.peek(1)

          <Ruby.dfaEdge>if (<Ruby.setTest><Ruby.lookaheadTest>look_11_0 == IDENTIFIER</Ruby.lookaheadTest> || <Ruby.lookaheadTest>look_11_0 == ELLIPSIS</Ruby.lookaheadTest></Ruby.setTest>) 
            <Ruby.dfaAcceptState>alt_11 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>
          end</Ruby.dfaOptionalBlockState></Ruby.region__blockBody__decision>
          case alt_11
          <Ruby.altSwitchCase>when 1
            <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt># at line 110:43: arg+= macro_param ( WS )? ( COMMA ( WS )* arg+= macro_param ( WS )* )*
            <Ruby.element><AST.ruleRefTrackAndListLabel><AST.ruleRefTrack><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_macro_param_IN_macro_define_673)
            <if(label)_subtemplate>arg = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>macro_param</ASTParser.<anonymous template argument>></Ruby.methodCall>
            @state.following.pop</Ruby.ruleRef>
            <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
              <ASTParser.<anonymous template argument>>stream_macro_param.add(arg.tree)</ASTParser.<anonymous template argument>>
            end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.ruleRefTrack>
            <Ruby.addToList>list_of_arg << <ASTParser.<anonymous template argument>>arg.tree</ASTParser.<anonymous template argument>>
            </Ruby.addToList></AST.ruleRefTrackAndListLabel>
            </Ruby.element><Ruby.element><Ruby.block># at line 110:60: ( WS )?
            alt_7 = 2
            <Ruby.region__block__body><Ruby.blockBody><Ruby.region__blockBody__decision><Ruby.dfaOptionalBlockState>look_7_0 = @input.peek(1)

            <Ruby.dfaEdge>if (<Ruby.lookaheadTest>look_7_0 == WS</Ruby.lookaheadTest>) 
              <Ruby.dfaAcceptState>alt_7 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>
            end</Ruby.dfaOptionalBlockState></Ruby.region__blockBody__decision>
            case alt_7
            <Ruby.altSwitchCase>when 1
              <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt># at line 0:0: WS
              <Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>__WS23__ = </if(label)_subtemplate>match(WS, TOKENS_FOLLOWING_WS_IN_macro_define_675)</Ruby.tokenRef></ASTParser.tokenRefBang> 
              <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
                <ASTParser.<anonymous template argument>>stream_WS.add(__WS23__)</ASTParser.<anonymous template argument>>
              end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
              </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
            end</Ruby.blockBody></Ruby.region__block__body></Ruby.block>
            </Ruby.element><Ruby.element><Ruby.closureBlock># at line 110:64: ( COMMA ( WS )* arg+= macro_param ( WS )* )*
            <Ruby.region__closureBlock__loopBody><Ruby.closureBlockLoop>loop do  #loop 10
              alt_10 = 2
              <Ruby.region__closureBlockLoop__decisionBody><Ruby.dfaLoopbackState>look_10_0 = @input.peek(1)

              <Ruby.dfaEdge>if (<Ruby.lookaheadTest>look_10_0 == COMMA</Ruby.lookaheadTest>) 
                <Ruby.dfaAcceptState>alt_10 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>

              end</Ruby.dfaLoopbackState></Ruby.region__closureBlockLoop__decisionBody>
              case alt_10
              <Ruby.altSwitchCase>when 1
                <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt># at line 110:65: COMMA ( WS )* arg+= macro_param ( WS )*
                <Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>__COMMA24__ = </if(label)_subtemplate>match(COMMA, TOKENS_FOLLOWING_COMMA_IN_macro_define_679)</Ruby.tokenRef></ASTParser.tokenRefBang> 
                <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
                  <ASTParser.<anonymous template argument>>stream_COMMA.add(__COMMA24__)</ASTParser.<anonymous template argument>>
                end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
                </Ruby.element><Ruby.element><Ruby.closureBlock># at line 110:71: ( WS )*
                <Ruby.region__closureBlock__loopBody><Ruby.closureBlockLoop>loop do  #loop 8
                  alt_8 = 2
                  <Ruby.region__closureBlockLoop__decisionBody><Ruby.dfaLoopbackState>look_8_0 = @input.peek(1)

                  <Ruby.dfaEdge>if (<Ruby.lookaheadTest>look_8_0 == WS</Ruby.lookaheadTest>) 
                    <Ruby.dfaAcceptState>alt_8 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>

                  end</Ruby.dfaLoopbackState></Ruby.region__closureBlockLoop__decisionBody>
                  case alt_8
                  <Ruby.altSwitchCase>when 1
                    <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt># at line 0:0: WS
                    <Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>__WS25__ = </if(label)_subtemplate>match(WS, TOKENS_FOLLOWING_WS_IN_macro_define_681)</Ruby.tokenRef></ASTParser.tokenRefBang> 
                    <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
                      <ASTParser.<anonymous template argument>>stream_WS.add(__WS25__)</ASTParser.<anonymous template argument>>
                    end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
                    </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
                  else
                    break #loop 8
                  end
                end</Ruby.closureBlockLoop></Ruby.region__closureBlock__loopBody></Ruby.closureBlock>
                </Ruby.element><Ruby.element><AST.ruleRefTrackAndListLabel><AST.ruleRefTrack><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_macro_param_IN_macro_define_686)
                <if(label)_subtemplate>arg = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>macro_param</ASTParser.<anonymous template argument>></Ruby.methodCall>
                @state.following.pop</Ruby.ruleRef>
                <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
                  <ASTParser.<anonymous template argument>>stream_macro_param.add(arg.tree)</ASTParser.<anonymous template argument>>
                end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.ruleRefTrack>
                <Ruby.addToList>list_of_arg << <ASTParser.<anonymous template argument>>arg.tree</ASTParser.<anonymous template argument>>
                </Ruby.addToList></AST.ruleRefTrackAndListLabel>
                </Ruby.element><Ruby.element><Ruby.closureBlock># at line 110:92: ( WS )*
                <Ruby.region__closureBlock__loopBody><Ruby.closureBlockLoop>loop do  #loop 9
                  alt_9 = 2
                  <Ruby.region__closureBlockLoop__decisionBody><Ruby.dfaLoopbackState>look_9_0 = @input.peek(1)

                  <Ruby.dfaEdge>if (<Ruby.lookaheadTest>look_9_0 == WS</Ruby.lookaheadTest>) 
                    <Ruby.dfaAcceptState>alt_9 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>

                  end</Ruby.dfaLoopbackState></Ruby.region__closureBlockLoop__decisionBody>
                  case alt_9
                  <Ruby.altSwitchCase>when 1
                    <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt># at line 0:0: WS
                    <Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>__WS26__ = </if(label)_subtemplate>match(WS, TOKENS_FOLLOWING_WS_IN_macro_define_688)</Ruby.tokenRef></ASTParser.tokenRefBang> 
                    <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
                      <ASTParser.<anonymous template argument>>stream_WS.add(__WS26__)</ASTParser.<anonymous template argument>>
                    end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
                    </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
                  else
                    break #loop 9
                  end
                end</Ruby.closureBlockLoop></Ruby.region__closureBlock__loopBody></Ruby.closureBlock>
                </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
              else
                break #loop 10
              end
            end</Ruby.closureBlockLoop></Ruby.region__closureBlock__loopBody></Ruby.closureBlock>
            </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
          end</Ruby.blockBody></Ruby.region__block__body></Ruby.block>
          </Ruby.element><Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>__RPAREN27__ = </if(label)_subtemplate>match(RPAREN, TOKENS_FOLLOWING_RPAREN_IN_macro_define_695)</Ruby.tokenRef></ASTParser.tokenRefBang> 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>stream_RPAREN.add(__RPAREN27__)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
          </Ruby.element><Ruby.element><Ruby.block># at line 110:108: ( macro_text )?
          alt_12 = 2
          <Ruby.region__block__body><Ruby.blockBody><Ruby.region__blockBody__decision><Ruby.dfaOptionalBlockState>look_12_0 = @input.peek(1)

          <Ruby.dfaEdge>if (<Ruby.setTest><Ruby.lookaheadTest>look_12_0 == TEXT_END</Ruby.lookaheadTest> || <Ruby.lookaheadRangeTest>look_12_0.between?(IDENTIFIER, COMMA)</Ruby.lookaheadRangeTest> || <Ruby.lookaheadRangeTest>look_12_0.between?(DECIMAL_LITERAL, STRING_LITERAL)</Ruby.lookaheadRangeTest> || <Ruby.lookaheadTest>look_12_0 == SIZEOF</Ruby.lookaheadTest> || <Ruby.lookaheadRangeTest>look_12_0.between?(HEX_LITERAL, COPERATOR)</Ruby.lookaheadRangeTest></Ruby.setTest>) 
            <Ruby.dfaAcceptState>alt_12 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>
          end</Ruby.dfaOptionalBlockState></Ruby.region__blockBody__decision>
          case alt_12
          <Ruby.altSwitchCase>when 1
            <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt># at line 0:0: macro_text
            <Ruby.element><AST.ruleRefTrack><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_macro_text_IN_macro_define_698)
            <if(label)_subtemplate>macro_text28 = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>macro_text</ASTParser.<anonymous template argument>></Ruby.methodCall>
            @state.following.pop</Ruby.ruleRef>
            <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
              <ASTParser.<anonymous template argument>>stream_macro_text.add(macro_text28.tree)</ASTParser.<anonymous template argument>>
            end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.ruleRefTrack>
            </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
          end</Ruby.blockBody></Ruby.region__block__body></Ruby.block>
          </Ruby.element><AST.rewriteCode># AST Rewrite
          # elements: arg, macro_text, mac
          # token labels: mac
          # rule labels: <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>
          # token list labels: 
          # rule list labels: arg
          # wildcard labels: 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>
            <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
            <AST.rewriteCodeLabels><ASTParser.anonymous>stream_mac = token_stream("token mac", mac)</ASTParser.anonymous>
            <ASTParser.anonymous>stream_<AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> = <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> ? subtree_stream("rule <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>", <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree) : subtree_stream("token <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>")</ASTParser.anonymous>
            <ASTParser.anonymous>stream_arg = subtree_stream("token arg", list_of_arg)</ASTParser.anonymous></AST.rewriteCodeLabels>
            root_0 = @adaptor.create_flat_list!
            <AST.rewriteAltFirst><else_subtemplate># 110:120: -> ^( MAC_FUNCTION $mac ( $arg)+ ( macro_text )? )
            <AST.rewriteElementList><AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteTree># at line 110:123: ^( MAC_FUNCTION $mac ( $arg)+ ( macro_text )? )
            root_1 = @adaptor.create_flat_list!
            <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteImaginaryTokenRefRoot>root_1 = @adaptor.become_root(<AST.createImaginaryNode><else_subtemplate><if(!args)_subtemplate>@adaptor.create_from_type!(MAC_FUNCTION, "MAC_FUNCTION")</if(!args)_subtemplate></else_subtemplate></AST.createImaginaryNode>, root_1)
            </AST.rewriteImaginaryTokenRefRoot></AST.rewriteElement>
            <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteTokenLabelRef>@adaptor.add_child(root_1, stream_mac.next_node)
            </AST.rewriteTokenLabelRef></AST.rewriteElement><AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewritePositiveClosureBlock># at line 110:144: ( $arg)+
            unless <ASTParser.anonymous>stream_arg.has_next?</ASTParser.anonymous>
              raise ANTLR3::RewriteEarlyExit
            end

            while <ASTParser.anonymous>stream_arg.has_next?</ASTParser.anonymous>
              <AST.rewriteElementList><AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteRuleListLabelRef>@adaptor.add_child(root_1, stream_arg.next_tree)
              </AST.rewriteRuleListLabelRef></AST.rewriteElement></AST.rewriteElementList>
            end

            <ASTParser.anonymous>stream_arg.reset
            </ASTParser.anonymous></AST.rewritePositiveClosureBlock></AST.rewriteElement><AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteOptionalBlock># at line 110:150: ( macro_text )?
            if <ASTParser.anonymous>stream_macro_text.has_next?</ASTParser.anonymous>
              <AST.rewriteElementList><AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteRuleRef>@adaptor.add_child(root_1, stream_macro_text.next_tree)
              </AST.rewriteRuleRef></AST.rewriteElement></AST.rewriteElementList>
            end

            <ASTParser.anonymous>stream_macro_text.reset();
            </ASTParser.anonymous></AST.rewriteOptionalBlock></AST.rewriteElement>
            @adaptor.add_child(root_0, root_1)
            </AST.rewriteTree></AST.rewriteElement></AST.rewriteElementList></else_subtemplate></AST.rewriteAltFirst>


            <if(!TREE_PARSER)_subtemplate><AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
            </if(!TREE_PARSER)_subtemplate></ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.rewriteCode></AST.alt></Ruby.altSwitchCase>
        <Ruby.altSwitchCase>when 3
          <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt># at line 111:8: DEFINE IDENTIFIER ( macro_text )?
          <Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>__DEFINE29__ = </if(label)_subtemplate>match(DEFINE, TOKENS_FOLLOWING_DEFINE_IN_macro_define_726)</Ruby.tokenRef></ASTParser.tokenRefBang> 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>stream_DEFINE.add(__DEFINE29__)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
          </Ruby.element><Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>__IDENTIFIER30__ = </if(label)_subtemplate>match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_macro_define_732)</Ruby.tokenRef></ASTParser.tokenRefBang> 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>stream_IDENTIFIER.add(__IDENTIFIER30__)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
          </Ruby.element><Ruby.element><Ruby.block># at line 111:31: ( macro_text )?
          alt_13 = 2
          <Ruby.region__block__body><Ruby.blockBody><Ruby.region__blockBody__decision><Ruby.dfaOptionalBlockState>look_13_0 = @input.peek(1)

          <Ruby.dfaEdge>if (<Ruby.setTest><Ruby.lookaheadTest>look_13_0 == TEXT_END</Ruby.lookaheadTest> || <Ruby.lookaheadRangeTest>look_13_0.between?(IDENTIFIER, COMMA)</Ruby.lookaheadRangeTest> || <Ruby.lookaheadRangeTest>look_13_0.between?(DECIMAL_LITERAL, STRING_LITERAL)</Ruby.lookaheadRangeTest> || <Ruby.lookaheadTest>look_13_0 == SIZEOF</Ruby.lookaheadTest> || <Ruby.lookaheadRangeTest>look_13_0.between?(HEX_LITERAL, COPERATOR)</Ruby.lookaheadRangeTest></Ruby.setTest>) 
            <Ruby.dfaAcceptState>alt_13 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>
          end</Ruby.dfaOptionalBlockState></Ruby.region__blockBody__decision>
          case alt_13
          <Ruby.altSwitchCase>when 1
            <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt># at line 0:0: macro_text
            <Ruby.element><AST.ruleRefTrack><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_macro_text_IN_macro_define_735)
            <if(label)_subtemplate>macro_text31 = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>macro_text</ASTParser.<anonymous template argument>></Ruby.methodCall>
            @state.following.pop</Ruby.ruleRef>
            <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
              <ASTParser.<anonymous template argument>>stream_macro_text.add(macro_text31.tree)</ASTParser.<anonymous template argument>>
            end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.ruleRefTrack>
            </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
          end</Ruby.blockBody></Ruby.region__block__body></Ruby.block>
          </Ruby.element><AST.rewriteCode># AST Rewrite
          # elements: macro_text, IDENTIFIER
          # token labels: 
          # rule labels: <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>
            <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
            <AST.rewriteCodeLabels><ASTParser.anonymous>stream_<AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> = <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> ? subtree_stream("rule <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>", <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree) : subtree_stream("token <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>")</ASTParser.anonymous>
            </AST.rewriteCodeLabels>
            root_0 = @adaptor.create_flat_list!
            <AST.rewriteAltFirst><else_subtemplate># 111:44: -> ^( MAC_OBJECT IDENTIFIER ( macro_text )? )
            <AST.rewriteElementList><AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteTree># at line 111:47: ^( MAC_OBJECT IDENTIFIER ( macro_text )? )
            root_1 = @adaptor.create_flat_list!
            <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteImaginaryTokenRefRoot>root_1 = @adaptor.become_root(<AST.createImaginaryNode><else_subtemplate><if(!args)_subtemplate>@adaptor.create_from_type!(MAC_OBJECT, "MAC_OBJECT")</if(!args)_subtemplate></else_subtemplate></AST.createImaginaryNode>, root_1)
            </AST.rewriteImaginaryTokenRefRoot></AST.rewriteElement>
            <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteTokenRef>@adaptor.add_child(root_1, <AST.createRewriteNodeFromElement><else_subtemplate><else_subtemplate>stream_IDENTIFIER.next_node</else_subtemplate></else_subtemplate></AST.createRewriteNodeFromElement>)
            </AST.rewriteTokenRef></AST.rewriteElement><AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteOptionalBlock># at line 111:71: ( macro_text )?
            if <ASTParser.anonymous>stream_macro_text.has_next?</ASTParser.anonymous>
              <AST.rewriteElementList><AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteRuleRef>@adaptor.add_child(root_1, stream_macro_text.next_tree)
              </AST.rewriteRuleRef></AST.rewriteElement></AST.rewriteElementList>
            end

            <ASTParser.anonymous>stream_macro_text.reset();
            </ASTParser.anonymous></AST.rewriteOptionalBlock></AST.rewriteElement>
            @adaptor.add_child(root_0, root_1)
            </AST.rewriteTree></AST.rewriteElement></AST.rewriteElementList></else_subtemplate></AST.rewriteAltFirst>


            <if(!TREE_PARSER)_subtemplate><AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
            </if(!TREE_PARSER)_subtemplate></ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.rewriteCode></AST.alt></Ruby.altSwitchCase>
        end</Ruby.ruleBlock><ASTParser.ruleCleanUp><Ruby.ruleCleanUp><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(!TREE_PARSER)_subtemplate># - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)
        </if(!TREE_PARSER)_subtemplate></if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.ruleCleanUp>
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>
          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)
          </ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleCleanUp>
      <if(memoize)_subtemplate><if(backtracking)_subtemplate>  success = true
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      <else_subtemplate><if(!emptyRule)_subtemplate><else_subtemplate>rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        <ASTParser.region__ruleBody__setErrorReturnValue>return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)
        </ASTParser.region__ruleBody__setErrorReturnValue></else_subtemplate></if(!emptyRule)_subtemplate></else_subtemplate>
      ensure
        <Ruby.traceOut><else_subtemplate># -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 4)
        </else_subtemplate></Ruby.traceOut><Ruby.memoize><if(memoize)_subtemplate><if(backtracking)_subtemplate>memoize(__method__, macro_define_start_index, success) if @state.backtracking > 0
        </if(backtracking)_subtemplate></if(memoize)_subtemplate></Ruby.memoize><Ruby.ruleScopeCleanUp></Ruby.ruleScopeCleanUp>
      end</Ruby.ruleBody></Ruby.region__rule__body>
      
      return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
    end
    </Ruby.rule>
    </ASTParser.anonymous><ASTParser.anonymous><Ruby.rule><Ruby.returnScope><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><Ruby.returnStructName>MacroParamReturnValue</Ruby.returnStructName> = define_return_scope </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.returnScope>

    # parser rule macro_param
    # 
    # (in Cpp.g)
    # 114:1: macro_param : ( IDENTIFIER ELLIPSIS -> ^( ELLIPSIS IDENTIFIER ) | ELLIPSIS | IDENTIFIER );
    def macro_param
      <Ruby.traceIn><else_subtemplate># -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 5)
      </else_subtemplate></Ruby.traceIn><Ruby.ruleScopeSetUp></Ruby.ruleScopeSetUp><AST.ruleDeclarations><Ruby.ruleDeclarations><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate>return_value = <Ruby.returnStructName>MacroParamReturnValue</Ruby.returnStructName>.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(memoize)_subtemplate>macro_param_start_index = @input.index
      </if(memoize)_subtemplate></Ruby.ruleDeclarations>
      root_0 = nil
      </AST.ruleDeclarations><AST.ruleLabelDefs><Ruby.ruleLabelDefs><ASTParser.anonymous>__IDENTIFIER32__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__ELLIPSIS33__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__ELLIPSIS34__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__IDENTIFIER35__ = nil
      </ASTParser.anonymous></Ruby.ruleLabelDefs>
      <ASTParser.anonymous>tree_for_IDENTIFIER32 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_ELLIPSIS33 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_ELLIPSIS34 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_IDENTIFIER35 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>stream_ELLIPSIS = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token ELLIPSIS")</ASTParser.anonymous>
      <ASTParser.anonymous>stream_IDENTIFIER = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token IDENTIFIER")</ASTParser.anonymous>
      </AST.ruleLabelDefs><Ruby.action></Ruby.action>
      <Ruby.region__rule__body><Ruby.ruleBody><if(memoize)_subtemplate><if(backtracking)_subtemplate>success = false # flag used for memoization
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      begin
        <Ruby.ruleMemoization><if(memoize)_subtemplate># rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
        end
        </if(memoize)_subtemplate></Ruby.ruleMemoization><Ruby.ruleBlock># at line 115:5: ( IDENTIFIER ELLIPSIS -> ^( ELLIPSIS IDENTIFIER ) | ELLIPSIS | IDENTIFIER )
        alt_15 = 3
        <Ruby.region__ruleBlock__decision><Ruby.dfaState>look_15_0 = @input.peek(1)

        <Ruby.dfaEdge>if (<Ruby.lookaheadTest>look_15_0 == IDENTIFIER</Ruby.lookaheadTest>) 
          <Ruby.dfaState>look_15_1 = @input.peek(2)

          <Ruby.dfaEdge>if (<Ruby.lookaheadTest>look_15_1 == ELLIPSIS</Ruby.lookaheadTest>) 
            <Ruby.dfaAcceptState>alt_15 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>
          els<Ruby.dfaEdge>if (<Ruby.setTest><Ruby.lookaheadTest>look_15_1 == EOF</Ruby.lookaheadTest> || <Ruby.lookaheadRangeTest>look_15_1.between?(WS, COMMA)</Ruby.lookaheadRangeTest></Ruby.setTest>) 
            <Ruby.dfaAcceptState>alt_15 = 3</Ruby.dfaAcceptState></Ruby.dfaEdge>
          else
          <else_subtemplate><Ruby.ruleBacktrackFailure><if(backtracking)_subtemplate>@state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
            </if(backtracking)_subtemplate></Ruby.ruleBacktrackFailure>nvae = NoViableAlternative("", 15, 1)
            <Ruby.region__dfaState__noViableAltException>raise nvae</Ruby.region__dfaState__noViableAltException>
          </else_subtemplate>end</Ruby.dfaState></Ruby.dfaEdge>
        els<Ruby.dfaEdge>if (<Ruby.lookaheadTest>look_15_0 == ELLIPSIS</Ruby.lookaheadTest>) 
          <Ruby.dfaAcceptState>alt_15 = 2</Ruby.dfaAcceptState></Ruby.dfaEdge>
        else
        <else_subtemplate><Ruby.ruleBacktrackFailure><if(backtracking)_subtemplate>@state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
          </if(backtracking)_subtemplate></Ruby.ruleBacktrackFailure>nvae = NoViableAlternative("", 15, 0)
          <Ruby.region__dfaState__noViableAltException>raise nvae</Ruby.region__dfaState__noViableAltException>
        </else_subtemplate>end</Ruby.dfaState></Ruby.region__ruleBlock__decision>
        case alt_15
        <Ruby.altSwitchCase>when 1
          <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt># at line 115:13: IDENTIFIER ELLIPSIS
          <Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>__IDENTIFIER32__ = </if(label)_subtemplate>match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_macro_param_771)</Ruby.tokenRef></ASTParser.tokenRefBang> 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>stream_IDENTIFIER.add(__IDENTIFIER32__)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
          </Ruby.element><Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>__ELLIPSIS33__ = </if(label)_subtemplate>match(ELLIPSIS, TOKENS_FOLLOWING_ELLIPSIS_IN_macro_param_773)</Ruby.tokenRef></ASTParser.tokenRefBang> 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>stream_ELLIPSIS.add(__ELLIPSIS33__)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
          </Ruby.element><AST.rewriteCode># AST Rewrite
          # elements: IDENTIFIER, ELLIPSIS
          # token labels: 
          # rule labels: <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>
            <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
            <AST.rewriteCodeLabels><ASTParser.anonymous>stream_<AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> = <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> ? subtree_stream("rule <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>", <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree) : subtree_stream("token <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>")</ASTParser.anonymous>
            </AST.rewriteCodeLabels>
            root_0 = @adaptor.create_flat_list!
            <AST.rewriteAltFirst><else_subtemplate># 115:33: -> ^( ELLIPSIS IDENTIFIER )
            <AST.rewriteElementList><AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteTree># at line 115:35: ^( ELLIPSIS IDENTIFIER )
            root_1 = @adaptor.create_flat_list!
            <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteTokenRefRoot>root_1 = @adaptor.become_root(<AST.createRewriteNodeFromElement><else_subtemplate><else_subtemplate>stream_ELLIPSIS.next_node</else_subtemplate></else_subtemplate></AST.createRewriteNodeFromElement>, root_1)
            </AST.rewriteTokenRefRoot></AST.rewriteElement>
            <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteTokenRef>@adaptor.add_child(root_1, <AST.createRewriteNodeFromElement><else_subtemplate><else_subtemplate>stream_IDENTIFIER.next_node</else_subtemplate></else_subtemplate></AST.createRewriteNodeFromElement>)
            </AST.rewriteTokenRef></AST.rewriteElement>
            @adaptor.add_child(root_0, root_1)
            </AST.rewriteTree></AST.rewriteElement></AST.rewriteElementList></else_subtemplate></AST.rewriteAltFirst>


            <if(!TREE_PARSER)_subtemplate><AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
            </if(!TREE_PARSER)_subtemplate></ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.rewriteCode></AST.alt></Ruby.altSwitchCase>
        <Ruby.altSwitchCase>when 2
          <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate><if(outerAlt)_subtemplate><if(!rewriteMode)_subtemplate>root_0 = @adaptor.create_flat_list!

          </if(!rewriteMode)_subtemplate></if(outerAlt)_subtemplate></if(autoAST)_subtemplate>
          # at line 116:13: ELLIPSIS
          <Ruby.element><ASTParser.tokenRef><Ruby.tokenRef><if(label)_subtemplate>__ELLIPSIS34__ = </if(label)_subtemplate>match(ELLIPSIS, TOKENS_FOLLOWING_ELLIPSIS_IN_macro_param_794)</Ruby.tokenRef>
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>
            tree_for_ELLIPSIS34 = <ASTParser.createNodeFromToken><else_subtemplate>@adaptor.create_with_payload!(__ELLIPSIS34__)</else_subtemplate></ASTParser.createNodeFromToken>
            @adaptor.add_child(root_0, tree_for_ELLIPSIS34)
            </ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.tokenRef>
          </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
        <Ruby.altSwitchCase>when 3
          <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate><if(outerAlt)_subtemplate><if(!rewriteMode)_subtemplate>root_0 = @adaptor.create_flat_list!

          </if(!rewriteMode)_subtemplate></if(outerAlt)_subtemplate></if(autoAST)_subtemplate>
          # at line 117:13: IDENTIFIER
          <Ruby.element><ASTParser.tokenRef><Ruby.tokenRef><if(label)_subtemplate>__IDENTIFIER35__ = </if(label)_subtemplate>match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_macro_param_808)</Ruby.tokenRef>
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>
            tree_for_IDENTIFIER35 = <ASTParser.createNodeFromToken><else_subtemplate>@adaptor.create_with_payload!(__IDENTIFIER35__)</else_subtemplate></ASTParser.createNodeFromToken>
            @adaptor.add_child(root_0, tree_for_IDENTIFIER35)
            </ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.tokenRef>
          </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
        end</Ruby.ruleBlock><ASTParser.ruleCleanUp><Ruby.ruleCleanUp><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(!TREE_PARSER)_subtemplate># - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)
        </if(!TREE_PARSER)_subtemplate></if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.ruleCleanUp>
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>
          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)
          </ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleCleanUp>
      <if(memoize)_subtemplate><if(backtracking)_subtemplate>  success = true
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      <else_subtemplate><if(!emptyRule)_subtemplate><else_subtemplate>rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        <ASTParser.region__ruleBody__setErrorReturnValue>return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)
        </ASTParser.region__ruleBody__setErrorReturnValue></else_subtemplate></if(!emptyRule)_subtemplate></else_subtemplate>
      ensure
        <Ruby.traceOut><else_subtemplate># -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 5)
        </else_subtemplate></Ruby.traceOut><Ruby.memoize><if(memoize)_subtemplate><if(backtracking)_subtemplate>memoize(__method__, macro_param_start_index, success) if @state.backtracking > 0
        </if(backtracking)_subtemplate></if(memoize)_subtemplate></Ruby.memoize><Ruby.ruleScopeCleanUp></Ruby.ruleScopeCleanUp>
      end</Ruby.ruleBody></Ruby.region__rule__body>
      
      return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
    end
    </Ruby.rule>
    </ASTParser.anonymous><ASTParser.anonymous><Ruby.rule><Ruby.returnScope><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><Ruby.returnStructName>MacroExecutionReturnValue</Ruby.returnStructName> = define_return_scope </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.returnScope>

    # parser rule macro_execution
    # 
    # (in Cpp.g)
    # 120:1: macro_execution : EXEC_MACRO ifexpression -> ^( EXEC_MACRO ifexpression ) ;
    def macro_execution
      <Ruby.traceIn><else_subtemplate># -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 6)
      </else_subtemplate></Ruby.traceIn><Ruby.ruleScopeSetUp><ASTParser.anonymous>@Expression_stack.push(ScopeExpression.new)
      </ASTParser.anonymous></Ruby.ruleScopeSetUp><AST.ruleDeclarations><Ruby.ruleDeclarations><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate>return_value = <Ruby.returnStructName>MacroExecutionReturnValue</Ruby.returnStructName>.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(memoize)_subtemplate>macro_execution_start_index = @input.index
      </if(memoize)_subtemplate></Ruby.ruleDeclarations>
      root_0 = nil
      </AST.ruleDeclarations><AST.ruleLabelDefs><Ruby.ruleLabelDefs><ASTParser.anonymous>__EXEC_MACRO36__ = nil
      </ASTParser.anonymous><Ruby.ruleLabelDef>ifexpression37 = nil
      </Ruby.ruleLabelDef></Ruby.ruleLabelDefs>
      <ASTParser.anonymous>tree_for_EXEC_MACRO36 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>stream_EXEC_MACRO = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token EXEC_MACRO")</ASTParser.anonymous>
      <ASTParser.anonymous>stream_ifexpression = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule ifexpression")</ASTParser.anonymous></AST.ruleLabelDefs><Ruby.action></Ruby.action>
      <Ruby.region__rule__body><Ruby.ruleBody><if(memoize)_subtemplate><if(backtracking)_subtemplate>success = false # flag used for memoization
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      begin
        <Ruby.ruleMemoization><if(memoize)_subtemplate># rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
        end
        </if(memoize)_subtemplate></Ruby.ruleMemoization><Ruby.ruleBlockSingleAlt><Ruby.region__ruleBlockSingleAlt__prealt></Ruby.region__ruleBlockSingleAlt__prealt><AST.alt># at line 122:7: EXEC_MACRO ifexpression
        <Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>__EXEC_MACRO36__ = </if(label)_subtemplate>match(EXEC_MACRO, TOKENS_FOLLOWING_EXEC_MACRO_IN_macro_execution_830)</Ruby.tokenRef></ASTParser.tokenRefBang> 
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>stream_EXEC_MACRO.add(__EXEC_MACRO36__)</ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
        </Ruby.element><Ruby.element><Ruby.execAction><if(backtracking)_subtemplate># syntactic predicate action gate test
        if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          # --> action
           <Ruby.scopeAttributeRef><else_subtemplate><else_subtemplate>@Expression_stack[-1].flavor</else_subtemplate></else_subtemplate></Ruby.scopeAttributeRef> = :exec
          # <-- action
        end</if(backtracking)_subtemplate></Ruby.execAction>
        </Ruby.element><Ruby.element><AST.ruleRefTrack><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_ifexpression_IN_macro_execution_841)
        <if(label)_subtemplate>ifexpression37 = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>ifexpression</ASTParser.<anonymous template argument>></Ruby.methodCall>
        @state.following.pop</Ruby.ruleRef>
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>stream_ifexpression.add(ifexpression37.tree)</ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.ruleRefTrack>
        </Ruby.element><AST.rewriteCode># AST Rewrite
        # elements: ifexpression, EXEC_MACRO
        # token labels: 
        # rule labels: <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>
          <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
          <AST.rewriteCodeLabels><ASTParser.anonymous>stream_<AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> = <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> ? subtree_stream("rule <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>", <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree) : subtree_stream("token <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>")</ASTParser.anonymous>
          </AST.rewriteCodeLabels>
          root_0 = @adaptor.create_flat_list!
          <AST.rewriteAltFirst><else_subtemplate># 123:20: -> ^( EXEC_MACRO ifexpression )
          <AST.rewriteElementList><AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteTree># at line 123:23: ^( EXEC_MACRO ifexpression )
          root_1 = @adaptor.create_flat_list!
          <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteTokenRefRoot>root_1 = @adaptor.become_root(<AST.createRewriteNodeFromElement><else_subtemplate><else_subtemplate>stream_EXEC_MACRO.next_node</else_subtemplate></else_subtemplate></AST.createRewriteNodeFromElement>, root_1)
          </AST.rewriteTokenRefRoot></AST.rewriteElement>
          <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteRuleRef>@adaptor.add_child(root_1, stream_ifexpression.next_tree)
          </AST.rewriteRuleRef></AST.rewriteElement>
          @adaptor.add_child(root_0, root_1)
          </AST.rewriteTree></AST.rewriteElement></AST.rewriteElementList></else_subtemplate></AST.rewriteAltFirst>


          <if(!TREE_PARSER)_subtemplate><AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
          </if(!TREE_PARSER)_subtemplate></ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.rewriteCode></AST.alt></Ruby.ruleBlockSingleAlt><ASTParser.ruleCleanUp><Ruby.ruleCleanUp><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(!TREE_PARSER)_subtemplate># - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)
        </if(!TREE_PARSER)_subtemplate></if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.ruleCleanUp>
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>
          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)
          </ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleCleanUp>
      <if(memoize)_subtemplate><if(backtracking)_subtemplate>  success = true
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      <else_subtemplate><if(!emptyRule)_subtemplate><else_subtemplate>rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        <ASTParser.region__ruleBody__setErrorReturnValue>return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)
        </ASTParser.region__ruleBody__setErrorReturnValue></else_subtemplate></if(!emptyRule)_subtemplate></else_subtemplate>
      ensure
        <Ruby.traceOut><else_subtemplate># -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 6)
        </else_subtemplate></Ruby.traceOut><Ruby.memoize><if(memoize)_subtemplate><if(backtracking)_subtemplate>memoize(__method__, macro_execution_start_index, success) if @state.backtracking > 0
        </if(backtracking)_subtemplate></if(memoize)_subtemplate></Ruby.memoize><Ruby.ruleScopeCleanUp><ASTParser.anonymous>@Expression_stack.pop
        </ASTParser.anonymous></Ruby.ruleScopeCleanUp>
      end</Ruby.ruleBody></Ruby.region__rule__body>
      
      return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
    end
    </Ruby.rule>
    </ASTParser.anonymous><ASTParser.anonymous><Ruby.rule><Ruby.returnScope><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><Ruby.returnStructName>MacroUndefReturnValue</Ruby.returnStructName> = define_return_scope </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.returnScope>

    # parser rule macro_undef
    # 
    # (in Cpp.g)
    # 126:1: macro_undef : UNDEF mac= IDENTIFIER -> ^( UNDEF IDENTIFIER ) ;
    def macro_undef
      <Ruby.traceIn><else_subtemplate># -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 7)
      </else_subtemplate></Ruby.traceIn><Ruby.ruleScopeSetUp></Ruby.ruleScopeSetUp><AST.ruleDeclarations><Ruby.ruleDeclarations><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate>return_value = <Ruby.returnStructName>MacroUndefReturnValue</Ruby.returnStructName>.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(memoize)_subtemplate>macro_undef_start_index = @input.index
      </if(memoize)_subtemplate></Ruby.ruleDeclarations>
      root_0 = nil
      </AST.ruleDeclarations><AST.ruleLabelDefs><Ruby.ruleLabelDefs><ASTParser.anonymous>mac = nil
      </ASTParser.anonymous><ASTParser.anonymous>__UNDEF38__ = nil
      </ASTParser.anonymous></Ruby.ruleLabelDefs>
      <ASTParser.anonymous>tree_for_mac = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_UNDEF38 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>stream_UNDEF = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token UNDEF")</ASTParser.anonymous>
      <ASTParser.anonymous>stream_IDENTIFIER = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token IDENTIFIER")</ASTParser.anonymous>
      </AST.ruleLabelDefs><Ruby.action></Ruby.action>
      <Ruby.region__rule__body><Ruby.ruleBody><if(memoize)_subtemplate><if(backtracking)_subtemplate>success = false # flag used for memoization
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      begin
        <Ruby.ruleMemoization><if(memoize)_subtemplate># rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
        end
        </if(memoize)_subtemplate></Ruby.ruleMemoization><Ruby.ruleBlockSingleAlt><Ruby.region__ruleBlockSingleAlt__prealt></Ruby.region__ruleBlockSingleAlt__prealt><AST.alt># at line 127:7: UNDEF mac= IDENTIFIER
        <Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>__UNDEF38__ = </if(label)_subtemplate>match(UNDEF, TOKENS_FOLLOWING_UNDEF_IN_macro_undef_866)</Ruby.tokenRef></ASTParser.tokenRefBang> 
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>stream_UNDEF.add(__UNDEF38__)</ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
        </Ruby.element><Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>mac = </if(label)_subtemplate>match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_macro_undef_872)</Ruby.tokenRef></ASTParser.tokenRefBang> 
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>stream_IDENTIFIER.add(mac)</ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
        </Ruby.element><AST.rewriteCode># AST Rewrite
        # elements: IDENTIFIER, UNDEF
        # token labels: 
        # rule labels: <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>
          <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
          <AST.rewriteCodeLabels><ASTParser.anonymous>stream_<AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> = <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> ? subtree_stream("rule <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>", <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree) : subtree_stream("token <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>")</ASTParser.anonymous>
          </AST.rewriteCodeLabels>
          root_0 = @adaptor.create_flat_list!
          <AST.rewriteAltFirst><else_subtemplate># 127:31: -> ^( UNDEF IDENTIFIER )
          <AST.rewriteElementList><AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteTree># at line 127:34: ^( UNDEF IDENTIFIER )
          root_1 = @adaptor.create_flat_list!
          <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteTokenRefRoot>root_1 = @adaptor.become_root(<AST.createRewriteNodeFromElement><else_subtemplate><else_subtemplate>stream_UNDEF.next_node</else_subtemplate></else_subtemplate></AST.createRewriteNodeFromElement>, root_1)
          </AST.rewriteTokenRefRoot></AST.rewriteElement>
          <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteTokenRef>@adaptor.add_child(root_1, <AST.createRewriteNodeFromElement><else_subtemplate><else_subtemplate>stream_IDENTIFIER.next_node</else_subtemplate></else_subtemplate></AST.createRewriteNodeFromElement>)
          </AST.rewriteTokenRef></AST.rewriteElement>
          @adaptor.add_child(root_0, root_1)
          </AST.rewriteTree></AST.rewriteElement></AST.rewriteElementList></else_subtemplate></AST.rewriteAltFirst>


          <if(!TREE_PARSER)_subtemplate><AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
          </if(!TREE_PARSER)_subtemplate></ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.rewriteCode></AST.alt></Ruby.ruleBlockSingleAlt><ASTParser.ruleCleanUp><Ruby.ruleCleanUp><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(!TREE_PARSER)_subtemplate># - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)
        </if(!TREE_PARSER)_subtemplate></if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.ruleCleanUp>
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>
          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)
          </ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleCleanUp>
      <if(memoize)_subtemplate><if(backtracking)_subtemplate>  success = true
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      <else_subtemplate><if(!emptyRule)_subtemplate><else_subtemplate>rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        <ASTParser.region__ruleBody__setErrorReturnValue>return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)
        </ASTParser.region__ruleBody__setErrorReturnValue></else_subtemplate></if(!emptyRule)_subtemplate></else_subtemplate>
      ensure
        <Ruby.traceOut><else_subtemplate># -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 7)
        </else_subtemplate></Ruby.traceOut><Ruby.memoize><if(memoize)_subtemplate><if(backtracking)_subtemplate>memoize(__method__, macro_undef_start_index, success) if @state.backtracking > 0
        </if(backtracking)_subtemplate></if(memoize)_subtemplate></Ruby.memoize><Ruby.ruleScopeCleanUp></Ruby.ruleScopeCleanUp>
      end</Ruby.ruleBody></Ruby.region__rule__body>
      
      return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
    end
    </Ruby.rule>
    </ASTParser.anonymous><ASTParser.anonymous><Ruby.rule><Ruby.returnScope><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><Ruby.returnStructName>ConditionalCompilationReturnValue</Ruby.returnStructName> = define_return_scope </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.returnScope>

    # parser rule conditional_compilation
    # 
    # (in Cpp.g)
    # 130:1: conditional_compilation : t= IF ifexp+= ifexpression ifstmt+= statement ( ELIF ifexp+= ifexpression ifstmt+= statement )* ( ELSE elsestmt= statement )? ENDIF -> ^( IF ( $ifexp $ifstmt)+ ( ELSE $elsestmt)? ) ;
    def conditional_compilation
      <Ruby.traceIn><else_subtemplate># -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 8)
      </else_subtemplate></Ruby.traceIn><Ruby.ruleScopeSetUp><ASTParser.anonymous>@Expression_stack.push(ScopeExpression.new)
      </ASTParser.anonymous></Ruby.ruleScopeSetUp><AST.ruleDeclarations><Ruby.ruleDeclarations><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate>return_value = <Ruby.returnStructName>ConditionalCompilationReturnValue</Ruby.returnStructName>.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(memoize)_subtemplate>conditional_compilation_start_index = @input.index
      </if(memoize)_subtemplate></Ruby.ruleDeclarations>
      root_0 = nil
      </AST.ruleDeclarations><AST.ruleLabelDefs><Ruby.ruleLabelDefs><ASTParser.anonymous>t = nil
      </ASTParser.anonymous><ASTParser.anonymous>__ELIF39__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__ELSE40__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__ENDIF41__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>list_of_ifexp = []
      </ASTParser.anonymous><ASTParser.anonymous>list_of_ifstmt = []
      </ASTParser.anonymous><Ruby.ruleLabelDef>elsestmt = nil
      </Ruby.ruleLabelDef><Ruby.ruleLabelDef>ifexp = nil
      </Ruby.ruleLabelDef><Ruby.ruleLabelDef>ifstmt = nil
      </Ruby.ruleLabelDef><ASTParser.anonymous>ifexp = nil
      </ASTParser.anonymous><ASTParser.anonymous>ifstmt = nil
      </ASTParser.anonymous></Ruby.ruleLabelDefs>
      <ASTParser.anonymous>tree_for_t = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_ELIF39 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_ELSE40 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_ENDIF41 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>stream_ENDIF = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token ENDIF")</ASTParser.anonymous>
      <ASTParser.anonymous>stream_ELIF = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token ELIF")</ASTParser.anonymous>
      <ASTParser.anonymous>stream_IF = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token IF")</ASTParser.anonymous>
      <ASTParser.anonymous>stream_ELSE = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token ELSE")</ASTParser.anonymous>
      <ASTParser.anonymous>stream_statement = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule statement")</ASTParser.anonymous>
      <ASTParser.anonymous>stream_ifexpression = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule ifexpression")</ASTParser.anonymous></AST.ruleLabelDefs><Ruby.action></Ruby.action>
      <Ruby.region__rule__body><Ruby.ruleBody><if(memoize)_subtemplate><if(backtracking)_subtemplate>success = false # flag used for memoization
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      begin
        <Ruby.ruleMemoization><if(memoize)_subtemplate># rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
        end
        </if(memoize)_subtemplate></Ruby.ruleMemoization><Ruby.ruleBlockSingleAlt><Ruby.region__ruleBlockSingleAlt__prealt></Ruby.region__ruleBlockSingleAlt__prealt><AST.alt># at line 132:7: t= IF ifexp+= ifexpression ifstmt+= statement ( ELIF ifexp+= ifexpression ifstmt+= statement )* ( ELSE elsestmt= statement )? ENDIF
        <Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>t = </if(label)_subtemplate>match(IF, TOKENS_FOLLOWING_IF_IN_conditional_compilation_905)</Ruby.tokenRef></ASTParser.tokenRefBang> 
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>stream_IF.add(t)</ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
        </Ruby.element><Ruby.element><Ruby.execAction><if(backtracking)_subtemplate># syntactic predicate action gate test
        if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          # --> action
           <Ruby.scopeAttributeRef><else_subtemplate><else_subtemplate>@Expression_stack[-1].flavor</else_subtemplate></else_subtemplate></Ruby.scopeAttributeRef> = <Ruby.tokenLabelPropertyRef_text>t.text</Ruby.tokenLabelPropertyRef_text>.to_sym 
          # <-- action
        end</if(backtracking)_subtemplate></Ruby.execAction>
        </Ruby.element><Ruby.element><AST.ruleRefTrackAndListLabel><AST.ruleRefTrack><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_ifexpression_IN_conditional_compilation_917)
        <if(label)_subtemplate>ifexp = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>ifexpression</ASTParser.<anonymous template argument>></Ruby.methodCall>
        @state.following.pop</Ruby.ruleRef>
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>stream_ifexpression.add(ifexp.tree)</ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.ruleRefTrack>
        <Ruby.addToList>list_of_ifexp << <ASTParser.<anonymous template argument>>ifexp.tree</ASTParser.<anonymous template argument>>
        </Ruby.addToList></AST.ruleRefTrackAndListLabel>
        </Ruby.element><Ruby.element><AST.ruleRefTrackAndListLabel><AST.ruleRefTrack><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_statement_IN_conditional_compilation_922)
        <if(label)_subtemplate>ifstmt = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>statement</ASTParser.<anonymous template argument>></Ruby.methodCall>
        @state.following.pop</Ruby.ruleRef>
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>stream_statement.add(ifstmt.tree)</ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.ruleRefTrack>
        <Ruby.addToList>list_of_ifstmt << <ASTParser.<anonymous template argument>>ifstmt.tree</ASTParser.<anonymous template argument>>
        </Ruby.addToList></AST.ruleRefTrackAndListLabel>
        </Ruby.element><Ruby.element><Ruby.closureBlock># at line 134:7: ( ELIF ifexp+= ifexpression ifstmt+= statement )*
        <Ruby.region__closureBlock__loopBody><Ruby.closureBlockLoop>loop do  #loop 16
          alt_16 = 2
          <Ruby.region__closureBlockLoop__decisionBody><Ruby.dfaLoopbackState>look_16_0 = @input.peek(1)

          <Ruby.dfaEdge>if (<Ruby.lookaheadTest>look_16_0 == ELIF</Ruby.lookaheadTest>) 
            <Ruby.dfaAcceptState>alt_16 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>

          end</Ruby.dfaLoopbackState></Ruby.region__closureBlockLoop__decisionBody>
          case alt_16
          <Ruby.altSwitchCase>when 1
            <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt># at line 134:8: ELIF ifexp+= ifexpression ifstmt+= statement
            <Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>__ELIF39__ = </if(label)_subtemplate>match(ELIF, TOKENS_FOLLOWING_ELIF_IN_conditional_compilation_931)</Ruby.tokenRef></ASTParser.tokenRefBang> 
            <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
              <ASTParser.<anonymous template argument>>stream_ELIF.add(__ELIF39__)</ASTParser.<anonymous template argument>>
            end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
            </Ruby.element><Ruby.element><AST.ruleRefTrackAndListLabel><AST.ruleRefTrack><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_ifexpression_IN_conditional_compilation_938)
            <if(label)_subtemplate>ifexp = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>ifexpression</ASTParser.<anonymous template argument>></Ruby.methodCall>
            @state.following.pop</Ruby.ruleRef>
            <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
              <ASTParser.<anonymous template argument>>stream_ifexpression.add(ifexp.tree)</ASTParser.<anonymous template argument>>
            end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.ruleRefTrack>
            <Ruby.addToList>list_of_ifexp << <ASTParser.<anonymous template argument>>ifexp.tree</ASTParser.<anonymous template argument>>
            </Ruby.addToList></AST.ruleRefTrackAndListLabel>
            </Ruby.element><Ruby.element><AST.ruleRefTrackAndListLabel><AST.ruleRefTrack><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_statement_IN_conditional_compilation_943)
            <if(label)_subtemplate>ifstmt = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>statement</ASTParser.<anonymous template argument>></Ruby.methodCall>
            @state.following.pop</Ruby.ruleRef>
            <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
              <ASTParser.<anonymous template argument>>stream_statement.add(ifstmt.tree)</ASTParser.<anonymous template argument>>
            end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.ruleRefTrack>
            <Ruby.addToList>list_of_ifstmt << <ASTParser.<anonymous template argument>>ifstmt.tree</ASTParser.<anonymous template argument>>
            </Ruby.addToList></AST.ruleRefTrackAndListLabel>
            </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
          else
            break #loop 16
          end
        end</Ruby.closureBlockLoop></Ruby.region__closureBlock__loopBody></Ruby.closureBlock>
        </Ruby.element><Ruby.element><Ruby.block># at line 135:7: ( ELSE elsestmt= statement )?
        alt_17 = 2
        <Ruby.region__block__body><Ruby.blockBody><Ruby.region__blockBody__decision><Ruby.dfaOptionalBlockState>look_17_0 = @input.peek(1)

        <Ruby.dfaEdge>if (<Ruby.lookaheadTest>look_17_0 == ELSE</Ruby.lookaheadTest>) 
          <Ruby.dfaAcceptState>alt_17 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>
        end</Ruby.dfaOptionalBlockState></Ruby.region__blockBody__decision>
        case alt_17
        <Ruby.altSwitchCase>when 1
          <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt># at line 135:8: ELSE elsestmt= statement
          <Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>__ELSE40__ = </if(label)_subtemplate>match(ELSE, TOKENS_FOLLOWING_ELSE_IN_conditional_compilation_956)</Ruby.tokenRef></ASTParser.tokenRefBang> 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>stream_ELSE.add(__ELSE40__)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
          </Ruby.element><Ruby.element><AST.ruleRefTrack><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_statement_IN_conditional_compilation_961)
          <if(label)_subtemplate>elsestmt = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>statement</ASTParser.<anonymous template argument>></Ruby.methodCall>
          @state.following.pop</Ruby.ruleRef>
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>stream_statement.add(elsestmt.tree)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.ruleRefTrack>
          </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
        end</Ruby.blockBody></Ruby.region__block__body></Ruby.block>
        </Ruby.element><Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>__ENDIF41__ = </if(label)_subtemplate>match(ENDIF, TOKENS_FOLLOWING_ENDIF_IN_conditional_compilation_971)</Ruby.tokenRef></ASTParser.tokenRefBang> 
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>stream_ENDIF.add(__ENDIF41__)</ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
        </Ruby.element><AST.rewriteCode># AST Rewrite
        # elements: IF, ifstmt, ELSE, ifexp, elsestmt
        # token labels: 
        # rule labels: elsestmt, <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>
        # token list labels: 
        # rule list labels: ifexp, ifstmt
        # wildcard labels: 
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>
          <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
          <AST.rewriteCodeLabels><ASTParser.anonymous>stream_elsestmt = elsestmt ? subtree_stream("rule elsestmt", elsestmt.tree) : subtree_stream("token elsestmt")</ASTParser.anonymous>
          <ASTParser.anonymous>stream_<AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> = <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> ? subtree_stream("rule <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>", <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree) : subtree_stream("token <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>")</ASTParser.anonymous>
          <ASTParser.anonymous>stream_ifexp = subtree_stream("token ifexp", list_of_ifexp)</ASTParser.anonymous>
          <ASTParser.anonymous>stream_ifstmt = subtree_stream("token ifstmt", list_of_ifstmt)</ASTParser.anonymous></AST.rewriteCodeLabels>
          root_0 = @adaptor.create_flat_list!
          <AST.rewriteAltFirst><else_subtemplate># 137:7: -> ^( IF ( $ifexp $ifstmt)+ ( ELSE $elsestmt)? )
          <AST.rewriteElementList><AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteTree># at line 137:11: ^( IF ( $ifexp $ifstmt)+ ( ELSE $elsestmt)? )
          root_1 = @adaptor.create_flat_list!
          <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteTokenRefRoot>root_1 = @adaptor.become_root(<AST.createRewriteNodeFromElement><else_subtemplate><else_subtemplate>stream_IF.next_node</else_subtemplate></else_subtemplate></AST.createRewriteNodeFromElement>, root_1)
          </AST.rewriteTokenRefRoot></AST.rewriteElement>
          <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewritePositiveClosureBlock># at line 137:16: ( $ifexp $ifstmt)+
          unless <ASTParser.anonymous>stream_ifstmt.has_next?</ASTParser.anonymous> || <ASTParser.anonymous>stream_ifexp.has_next?</ASTParser.anonymous>
            raise ANTLR3::RewriteEarlyExit
          end

          while <ASTParser.anonymous>stream_ifstmt.has_next?</ASTParser.anonymous> || <ASTParser.anonymous>stream_ifexp.has_next?</ASTParser.anonymous>
            <AST.rewriteElementList><AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteRuleListLabelRef>@adaptor.add_child(root_1, stream_ifexp.next_tree)
            </AST.rewriteRuleListLabelRef></AST.rewriteElement><AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteRuleListLabelRef>@adaptor.add_child(root_1, stream_ifstmt.next_tree)
            </AST.rewriteRuleListLabelRef></AST.rewriteElement></AST.rewriteElementList>
          end

          <ASTParser.anonymous>stream_ifstmt.reset
          </ASTParser.anonymous><ASTParser.anonymous>stream_ifexp.reset
          </ASTParser.anonymous></AST.rewritePositiveClosureBlock></AST.rewriteElement><AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteOptionalBlock># at line 137:34: ( ELSE $elsestmt)?
          if <ASTParser.anonymous>stream_ELSE.has_next?</ASTParser.anonymous> || <ASTParser.anonymous>stream_elsestmt.has_next?</ASTParser.anonymous>
            <AST.rewriteElementList><AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteTokenRef>@adaptor.add_child(root_1, <AST.createRewriteNodeFromElement><else_subtemplate><else_subtemplate>stream_ELSE.next_node</else_subtemplate></else_subtemplate></AST.createRewriteNodeFromElement>)
            </AST.rewriteTokenRef></AST.rewriteElement><AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteRuleLabelRef>@adaptor.add_child(root_1, stream_elsestmt.next_tree)
            </AST.rewriteRuleLabelRef></AST.rewriteElement></AST.rewriteElementList>
          end

          <ASTParser.anonymous>stream_ELSE.reset();
          </ASTParser.anonymous><ASTParser.anonymous>stream_elsestmt.reset();
          </ASTParser.anonymous></AST.rewriteOptionalBlock></AST.rewriteElement>
          @adaptor.add_child(root_0, root_1)
          </AST.rewriteTree></AST.rewriteElement></AST.rewriteElementList></else_subtemplate></AST.rewriteAltFirst>


          <if(!TREE_PARSER)_subtemplate><AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
          </if(!TREE_PARSER)_subtemplate></ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.rewriteCode></AST.alt></Ruby.ruleBlockSingleAlt><ASTParser.ruleCleanUp><Ruby.ruleCleanUp><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(!TREE_PARSER)_subtemplate># - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)
        </if(!TREE_PARSER)_subtemplate></if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.ruleCleanUp>
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>
          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)
          </ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleCleanUp>
      <if(memoize)_subtemplate><if(backtracking)_subtemplate>  success = true
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      <else_subtemplate><if(!emptyRule)_subtemplate><else_subtemplate>rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        <ASTParser.region__ruleBody__setErrorReturnValue>return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)
        </ASTParser.region__ruleBody__setErrorReturnValue></else_subtemplate></if(!emptyRule)_subtemplate></else_subtemplate>
      ensure
        <Ruby.traceOut><else_subtemplate># -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 8)
        </else_subtemplate></Ruby.traceOut><Ruby.memoize><if(memoize)_subtemplate><if(backtracking)_subtemplate>memoize(__method__, conditional_compilation_start_index, success) if @state.backtracking > 0
        </if(backtracking)_subtemplate></if(memoize)_subtemplate></Ruby.memoize><Ruby.ruleScopeCleanUp><ASTParser.anonymous>@Expression_stack.pop
        </ASTParser.anonymous></Ruby.ruleScopeCleanUp>
      end</Ruby.ruleBody></Ruby.region__rule__body>
      
      return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
    end
    </Ruby.rule>
    </ASTParser.anonymous><ASTParser.anonymous><Ruby.rule><Ruby.returnScope><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><Ruby.returnStructName>LineControlReturnValue</Ruby.returnStructName> = define_return_scope </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.returnScope>

    # parser rule line_control
    # 
    # (in Cpp.g)
    # 140:1: line_control : LINE n= DECIMAL_LITERAL (theFile= STRING_LITERAL )? -> ^( LINE $n ( $theFile)? ) ;
    def line_control
      <Ruby.traceIn><else_subtemplate># -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 9)
      </else_subtemplate></Ruby.traceIn><Ruby.ruleScopeSetUp></Ruby.ruleScopeSetUp><AST.ruleDeclarations><Ruby.ruleDeclarations><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate>return_value = <Ruby.returnStructName>LineControlReturnValue</Ruby.returnStructName>.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(memoize)_subtemplate>line_control_start_index = @input.index
      </if(memoize)_subtemplate></Ruby.ruleDeclarations>
      root_0 = nil
      </AST.ruleDeclarations><AST.ruleLabelDefs><Ruby.ruleLabelDefs><ASTParser.anonymous>n = nil
      </ASTParser.anonymous><ASTParser.anonymous>theFile = nil
      </ASTParser.anonymous><ASTParser.anonymous>__LINE42__ = nil
      </ASTParser.anonymous></Ruby.ruleLabelDefs>
      <ASTParser.anonymous>tree_for_n = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_theFile = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_LINE42 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>stream_STRING_LITERAL = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token STRING_LITERAL")</ASTParser.anonymous>
      <ASTParser.anonymous>stream_LINE = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token LINE")</ASTParser.anonymous>
      <ASTParser.anonymous>stream_DECIMAL_LITERAL = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token DECIMAL_LITERAL")</ASTParser.anonymous>
      </AST.ruleLabelDefs><Ruby.action></Ruby.action>
      <Ruby.region__rule__body><Ruby.ruleBody><if(memoize)_subtemplate><if(backtracking)_subtemplate>success = false # flag used for memoization
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      begin
        <Ruby.ruleMemoization><if(memoize)_subtemplate># rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
        end
        </if(memoize)_subtemplate></Ruby.ruleMemoization><Ruby.ruleBlockSingleAlt><Ruby.region__ruleBlockSingleAlt__prealt></Ruby.region__ruleBlockSingleAlt__prealt><AST.alt># at line 141:13: LINE n= DECIMAL_LITERAL (theFile= STRING_LITERAL )?
        <Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>__LINE42__ = </if(label)_subtemplate>match(LINE, TOKENS_FOLLOWING_LINE_IN_line_control_1025)</Ruby.tokenRef></ASTParser.tokenRefBang> 
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>stream_LINE.add(__LINE42__)</ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
        </Ruby.element><Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>n = </if(label)_subtemplate>match(DECIMAL_LITERAL, TOKENS_FOLLOWING_DECIMAL_LITERAL_IN_line_control_1032)</Ruby.tokenRef></ASTParser.tokenRefBang> 
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>stream_DECIMAL_LITERAL.add(n)</ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
        </Ruby.element><Ruby.element><Ruby.block># at line 141:45: (theFile= STRING_LITERAL )?
        alt_18 = 2
        <Ruby.region__block__body><Ruby.blockBody><Ruby.region__blockBody__decision><Ruby.dfaOptionalBlockState>look_18_0 = @input.peek(1)

        <Ruby.dfaEdge>if (<Ruby.lookaheadTest>look_18_0 == STRING_LITERAL</Ruby.lookaheadTest>) 
          <Ruby.dfaAcceptState>alt_18 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>
        end</Ruby.dfaOptionalBlockState></Ruby.region__blockBody__decision>
        case alt_18
        <Ruby.altSwitchCase>when 1
          <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt># at line 141:46: theFile= STRING_LITERAL
          <Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>theFile = </if(label)_subtemplate>match(STRING_LITERAL, TOKENS_FOLLOWING_STRING_LITERAL_IN_line_control_1043)</Ruby.tokenRef></ASTParser.tokenRefBang> 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>stream_STRING_LITERAL.add(theFile)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
          </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
        end</Ruby.blockBody></Ruby.region__block__body></Ruby.block>
        </Ruby.element><AST.rewriteCode># AST Rewrite
        # elements: theFile, LINE, n
        # token labels: theFile, n
        # rule labels: <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>
          <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
          <AST.rewriteCodeLabels><ASTParser.anonymous>stream_theFile = token_stream("token theFile", theFile)</ASTParser.anonymous>
          <ASTParser.anonymous>stream_n = token_stream("token n", n)</ASTParser.anonymous>
          <ASTParser.anonymous>stream_<AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> = <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> ? subtree_stream("rule <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>", <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree) : subtree_stream("token <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>")</ASTParser.anonymous>
          </AST.rewriteCodeLabels>
          root_0 = @adaptor.create_flat_list!
          <AST.rewriteAltFirst><else_subtemplate># 141:72: -> ^( LINE $n ( $theFile)? )
          <AST.rewriteElementList><AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteTree># at line 141:74: ^( LINE $n ( $theFile)? )
          root_1 = @adaptor.create_flat_list!
          <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteTokenRefRoot>root_1 = @adaptor.become_root(<AST.createRewriteNodeFromElement><else_subtemplate><else_subtemplate>stream_LINE.next_node</else_subtemplate></else_subtemplate></AST.createRewriteNodeFromElement>, root_1)
          </AST.rewriteTokenRefRoot></AST.rewriteElement>
          <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteTokenLabelRef>@adaptor.add_child(root_1, stream_n.next_node)
          </AST.rewriteTokenLabelRef></AST.rewriteElement><AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteOptionalBlock># at line 141:84: ( $theFile)?
          if <ASTParser.anonymous>stream_theFile.has_next?</ASTParser.anonymous>
            <AST.rewriteElementList><AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteTokenLabelRef>@adaptor.add_child(root_1, stream_theFile.next_node)
            </AST.rewriteTokenLabelRef></AST.rewriteElement></AST.rewriteElementList>
          end

          <ASTParser.anonymous>stream_theFile.reset();
          </ASTParser.anonymous></AST.rewriteOptionalBlock></AST.rewriteElement>
          @adaptor.add_child(root_0, root_1)
          </AST.rewriteTree></AST.rewriteElement></AST.rewriteElementList></else_subtemplate></AST.rewriteAltFirst>


          <if(!TREE_PARSER)_subtemplate><AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
          </if(!TREE_PARSER)_subtemplate></ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.rewriteCode></AST.alt></Ruby.ruleBlockSingleAlt><ASTParser.ruleCleanUp><Ruby.ruleCleanUp><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(!TREE_PARSER)_subtemplate># - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)
        </if(!TREE_PARSER)_subtemplate></if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.ruleCleanUp>
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>
          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)
          </ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleCleanUp>
      <if(memoize)_subtemplate><if(backtracking)_subtemplate>  success = true
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      <else_subtemplate><if(!emptyRule)_subtemplate><else_subtemplate>rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        <ASTParser.region__ruleBody__setErrorReturnValue>return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)
        </ASTParser.region__ruleBody__setErrorReturnValue></else_subtemplate></if(!emptyRule)_subtemplate></else_subtemplate>
      ensure
        <Ruby.traceOut><else_subtemplate># -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 9)
        </else_subtemplate></Ruby.traceOut><Ruby.memoize><if(memoize)_subtemplate><if(backtracking)_subtemplate>memoize(__method__, line_control_start_index, success) if @state.backtracking > 0
        </if(backtracking)_subtemplate></if(memoize)_subtemplate></Ruby.memoize><Ruby.ruleScopeCleanUp></Ruby.ruleScopeCleanUp>
      end</Ruby.ruleBody></Ruby.region__rule__body>
      
      return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
    end
    </Ruby.rule>
    </ASTParser.anonymous><ASTParser.anonymous><Ruby.rule><Ruby.returnScope><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><Ruby.returnStructName>DiagnosticsReturnValue</Ruby.returnStructName> = define_return_scope </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.returnScope>

    # parser rule diagnostics
    # 
    # (in Cpp.g)
    # 144:1: diagnostics : ( WARNING -> ^( WARNING ) | ERROR -> ^( ERROR ) | PRAGMA -> ^( PRAGMA ) );
    def diagnostics
      <Ruby.traceIn><else_subtemplate># -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 10)
      </else_subtemplate></Ruby.traceIn><Ruby.ruleScopeSetUp></Ruby.ruleScopeSetUp><AST.ruleDeclarations><Ruby.ruleDeclarations><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate>return_value = <Ruby.returnStructName>DiagnosticsReturnValue</Ruby.returnStructName>.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(memoize)_subtemplate>diagnostics_start_index = @input.index
      </if(memoize)_subtemplate></Ruby.ruleDeclarations>
      root_0 = nil
      </AST.ruleDeclarations><AST.ruleLabelDefs><Ruby.ruleLabelDefs><ASTParser.anonymous>__WARNING43__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__ERROR44__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__PRAGMA45__ = nil
      </ASTParser.anonymous></Ruby.ruleLabelDefs>
      <ASTParser.anonymous>tree_for_WARNING43 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_ERROR44 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_PRAGMA45 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>stream_ERROR = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token ERROR")</ASTParser.anonymous>
      <ASTParser.anonymous>stream_WARNING = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token WARNING")</ASTParser.anonymous>
      <ASTParser.anonymous>stream_PRAGMA = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token PRAGMA")</ASTParser.anonymous>
      </AST.ruleLabelDefs><Ruby.action></Ruby.action>
      <Ruby.region__rule__body><Ruby.ruleBody><if(memoize)_subtemplate><if(backtracking)_subtemplate>success = false # flag used for memoization
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      begin
        <Ruby.ruleMemoization><if(memoize)_subtemplate># rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
        end
        </if(memoize)_subtemplate></Ruby.ruleMemoization><Ruby.ruleBlock># at line 145:5: ( WARNING -> ^( WARNING ) | ERROR -> ^( ERROR ) | PRAGMA -> ^( PRAGMA ) )
        alt_19 = 3
        <Ruby.region__ruleBlock__decision><Ruby.dfaStateSwitch>case look_19 = @input.peek(1)
        <Ruby.dfaEdgeSwitch>when <ASTParser.anonymous>WARNING</ASTParser.anonymous> then <Ruby.dfaAcceptState>alt_19 = 1</Ruby.dfaAcceptState></Ruby.dfaEdgeSwitch>
        <Ruby.dfaEdgeSwitch>when <ASTParser.anonymous>ERROR</ASTParser.anonymous> then <Ruby.dfaAcceptState>alt_19 = 2</Ruby.dfaAcceptState></Ruby.dfaEdgeSwitch>
        <Ruby.dfaEdgeSwitch>when <ASTParser.anonymous>PRAGMA</ASTParser.anonymous> then <Ruby.dfaAcceptState>alt_19 = 3</Ruby.dfaAcceptState></Ruby.dfaEdgeSwitch>
        else
        <else_subtemplate><Ruby.ruleBacktrackFailure><if(backtracking)_subtemplate>@state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
          </if(backtracking)_subtemplate></Ruby.ruleBacktrackFailure>
          nvae = NoViableAlternative("", 19, 0)
          <Ruby.region__dfaStateSwitch__noViableAltException>raise nvae</Ruby.region__dfaStateSwitch__noViableAltException>
        </else_subtemplate>end</Ruby.dfaStateSwitch></Ruby.region__ruleBlock__decision>
        case alt_19
        <Ruby.altSwitchCase>when 1
          <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt># at line 145:13: WARNING
          <Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>__WARNING43__ = </if(label)_subtemplate>match(WARNING, TOKENS_FOLLOWING_WARNING_IN_diagnostics_1084)</Ruby.tokenRef></ASTParser.tokenRefBang> 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>stream_WARNING.add(__WARNING43__)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
          </Ruby.element><AST.rewriteCode># AST Rewrite
          # elements: WARNING
          # token labels: 
          # rule labels: <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>
            <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
            <AST.rewriteCodeLabels><ASTParser.anonymous>stream_<AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> = <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> ? subtree_stream("rule <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>", <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree) : subtree_stream("token <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>")</ASTParser.anonymous>
            </AST.rewriteCodeLabels>
            root_0 = @adaptor.create_flat_list!
            <AST.rewriteAltFirst><else_subtemplate># 145:21: -> ^( WARNING )
            <AST.rewriteElementList><AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteTree># at line 145:24: ^( WARNING )
            root_1 = @adaptor.create_flat_list!
            <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteTokenRefRoot>root_1 = @adaptor.become_root(<AST.createRewriteNodeFromElement><else_subtemplate><else_subtemplate>stream_WARNING.next_node</else_subtemplate></else_subtemplate></AST.createRewriteNodeFromElement>, root_1)
            </AST.rewriteTokenRefRoot></AST.rewriteElement>
            @adaptor.add_child(root_0, root_1)
            </AST.rewriteTree></AST.rewriteElement></AST.rewriteElementList></else_subtemplate></AST.rewriteAltFirst>


            <if(!TREE_PARSER)_subtemplate><AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
            </if(!TREE_PARSER)_subtemplate></ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.rewriteCode></AST.alt></Ruby.altSwitchCase>
        <Ruby.altSwitchCase>when 2
          <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt># at line 146:13: ERROR
          <Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>__ERROR44__ = </if(label)_subtemplate>match(ERROR, TOKENS_FOLLOWING_ERROR_IN_diagnostics_1104)</Ruby.tokenRef></ASTParser.tokenRefBang> 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>stream_ERROR.add(__ERROR44__)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
          </Ruby.element><AST.rewriteCode># AST Rewrite
          # elements: ERROR
          # token labels: 
          # rule labels: <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>
            <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
            <AST.rewriteCodeLabels><ASTParser.anonymous>stream_<AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> = <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> ? subtree_stream("rule <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>", <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree) : subtree_stream("token <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>")</ASTParser.anonymous>
            </AST.rewriteCodeLabels>
            root_0 = @adaptor.create_flat_list!
            <AST.rewriteAltFirst><else_subtemplate># 146:21: -> ^( ERROR )
            <AST.rewriteElementList><AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteTree># at line 146:24: ^( ERROR )
            root_1 = @adaptor.create_flat_list!
            <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteTokenRefRoot>root_1 = @adaptor.become_root(<AST.createRewriteNodeFromElement><else_subtemplate><else_subtemplate>stream_ERROR.next_node</else_subtemplate></else_subtemplate></AST.createRewriteNodeFromElement>, root_1)
            </AST.rewriteTokenRefRoot></AST.rewriteElement>
            @adaptor.add_child(root_0, root_1)
            </AST.rewriteTree></AST.rewriteElement></AST.rewriteElementList></else_subtemplate></AST.rewriteAltFirst>


            <if(!TREE_PARSER)_subtemplate><AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
            </if(!TREE_PARSER)_subtemplate></ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.rewriteCode></AST.alt></Ruby.altSwitchCase>
        <Ruby.altSwitchCase>when 3
          <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt># at line 147:13: PRAGMA
          <Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>__PRAGMA45__ = </if(label)_subtemplate>match(PRAGMA, TOKENS_FOLLOWING_PRAGMA_IN_diagnostics_1126)</Ruby.tokenRef></ASTParser.tokenRefBang> 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>stream_PRAGMA.add(__PRAGMA45__)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
          </Ruby.element><AST.rewriteCode># AST Rewrite
          # elements: PRAGMA
          # token labels: 
          # rule labels: <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>
            <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
            <AST.rewriteCodeLabels><ASTParser.anonymous>stream_<AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> = <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> ? subtree_stream("rule <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>", <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree) : subtree_stream("token <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>")</ASTParser.anonymous>
            </AST.rewriteCodeLabels>
            root_0 = @adaptor.create_flat_list!
            <AST.rewriteAltFirst><else_subtemplate># 147:21: -> ^( PRAGMA )
            <AST.rewriteElementList><AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteTree># at line 147:24: ^( PRAGMA )
            root_1 = @adaptor.create_flat_list!
            <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteTokenRefRoot>root_1 = @adaptor.become_root(<AST.createRewriteNodeFromElement><else_subtemplate><else_subtemplate>stream_PRAGMA.next_node</else_subtemplate></else_subtemplate></AST.createRewriteNodeFromElement>, root_1)
            </AST.rewriteTokenRefRoot></AST.rewriteElement>
            @adaptor.add_child(root_0, root_1)
            </AST.rewriteTree></AST.rewriteElement></AST.rewriteElementList></else_subtemplate></AST.rewriteAltFirst>


            <if(!TREE_PARSER)_subtemplate><AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
            </if(!TREE_PARSER)_subtemplate></ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.rewriteCode></AST.alt></Ruby.altSwitchCase>
        end</Ruby.ruleBlock><ASTParser.ruleCleanUp><Ruby.ruleCleanUp><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(!TREE_PARSER)_subtemplate># - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)
        </if(!TREE_PARSER)_subtemplate></if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.ruleCleanUp>
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>
          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)
          </ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleCleanUp>
      <if(memoize)_subtemplate><if(backtracking)_subtemplate>  success = true
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      <else_subtemplate><if(!emptyRule)_subtemplate><else_subtemplate>rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        <ASTParser.region__ruleBody__setErrorReturnValue>return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)
        </ASTParser.region__ruleBody__setErrorReturnValue></else_subtemplate></if(!emptyRule)_subtemplate></else_subtemplate>
      ensure
        <Ruby.traceOut><else_subtemplate># -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 10)
        </else_subtemplate></Ruby.traceOut><Ruby.memoize><if(memoize)_subtemplate><if(backtracking)_subtemplate>memoize(__method__, diagnostics_start_index, success) if @state.backtracking > 0
        </if(backtracking)_subtemplate></if(memoize)_subtemplate></Ruby.memoize><Ruby.ruleScopeCleanUp></Ruby.ruleScopeCleanUp>
      end</Ruby.ruleBody></Ruby.region__rule__body>
      
      return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
    end
    </Ruby.rule>
    </ASTParser.anonymous><ASTParser.anonymous><Ruby.rule><Ruby.returnScope><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><Ruby.returnStructName>TextLineReturnValue</Ruby.returnStructName> = define_return_scope </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.returnScope>

    # parser rule text_line
    # 
    # (in Cpp.g)
    # 150:1: text_line : ( source_text )+ -> ^( TEXT_LINE ( source_text )+ ) ;
    def text_line
      <Ruby.traceIn><else_subtemplate># -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 11)
      </else_subtemplate></Ruby.traceIn><Ruby.ruleScopeSetUp></Ruby.ruleScopeSetUp><AST.ruleDeclarations><Ruby.ruleDeclarations><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate>return_value = <Ruby.returnStructName>TextLineReturnValue</Ruby.returnStructName>.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(memoize)_subtemplate>text_line_start_index = @input.index
      </if(memoize)_subtemplate></Ruby.ruleDeclarations>
      root_0 = nil
      </AST.ruleDeclarations><AST.ruleLabelDefs><Ruby.ruleLabelDefs><Ruby.ruleLabelDef>source_text46 = nil
      </Ruby.ruleLabelDef></Ruby.ruleLabelDefs>
      <ASTParser.anonymous>stream_source_text = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule source_text")</ASTParser.anonymous></AST.ruleLabelDefs><Ruby.action></Ruby.action>
      <Ruby.region__rule__body><Ruby.ruleBody><if(memoize)_subtemplate><if(backtracking)_subtemplate>success = false # flag used for memoization
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      begin
        <Ruby.ruleMemoization><if(memoize)_subtemplate># rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
        end
        </if(memoize)_subtemplate></Ruby.ruleMemoization><Ruby.ruleBlockSingleAlt><Ruby.region__ruleBlockSingleAlt__prealt></Ruby.region__ruleBlockSingleAlt__prealt><AST.alt># at line 151:7: ( source_text )+
        <Ruby.element><Ruby.positiveClosureBlock># at file 151:7: ( source_text )+
        <Ruby.region__positiveClosureBlock__loopBody><Ruby.positiveClosureBlockLoop>match_count_20 = 0
        loop do
          alt_20 = 2
          <Ruby.region__positiveClosureBlockLoop__decisionBody><Ruby.dfaLoopbackState>look_20_0 = @input.peek(1)

          <Ruby.dfaEdge>if (<Ruby.setTest><Ruby.lookaheadTest>look_20_0 == TEXT_END</Ruby.lookaheadTest> || <Ruby.lookaheadRangeTest>look_20_0.between?(IDENTIFIER, COMMA)</Ruby.lookaheadRangeTest> || <Ruby.lookaheadRangeTest>look_20_0.between?(DECIMAL_LITERAL, STRING_LITERAL)</Ruby.lookaheadRangeTest> || <Ruby.lookaheadTest>look_20_0 == SIZEOF</Ruby.lookaheadTest> || <Ruby.lookaheadRangeTest>look_20_0.between?(HEX_LITERAL, COPERATOR)</Ruby.lookaheadRangeTest></Ruby.setTest>) 
            <Ruby.dfaAcceptState>alt_20 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>

          end</Ruby.dfaLoopbackState></Ruby.region__positiveClosureBlockLoop__decisionBody>
          case alt_20
          <Ruby.altSwitchCase>when 1
            <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt># at line 0:0: source_text
            <Ruby.element><AST.ruleRefTrack><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_source_text_IN_text_line_1150)
            <if(label)_subtemplate>source_text46 = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>source_text</ASTParser.<anonymous template argument>></Ruby.methodCall>
            @state.following.pop</Ruby.ruleRef>
            <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
              <ASTParser.<anonymous template argument>>stream_source_text.add(source_text46.tree)</ASTParser.<anonymous template argument>>
            end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.ruleRefTrack>
            </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
          else
            match_count_20 > 0 and break
            <Ruby.ruleBacktrackFailure><if(backtracking)_subtemplate>@state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
            </if(backtracking)_subtemplate></Ruby.ruleBacktrackFailure>
            eee = EarlyExit(20)
            <Ruby.region__positiveClosureBlockLoop__earlyExitException></Ruby.region__positiveClosureBlockLoop__earlyExitException>

            raise eee
          end
          match_count_20 += 1
        end
        </Ruby.positiveClosureBlockLoop></Ruby.region__positiveClosureBlock__loopBody></Ruby.positiveClosureBlock>
        </Ruby.element><AST.rewriteCode># AST Rewrite
        # elements: source_text
        # token labels: 
        # rule labels: <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>
          <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
          <AST.rewriteCodeLabels><ASTParser.anonymous>stream_<AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> = <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> ? subtree_stream("rule <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>", <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree) : subtree_stream("token <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>")</ASTParser.anonymous>
          </AST.rewriteCodeLabels>
          root_0 = @adaptor.create_flat_list!
          <AST.rewriteAltFirst><else_subtemplate># 151:24: -> ^( TEXT_LINE ( source_text )+ )
          <AST.rewriteElementList><AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteTree># at line 151:27: ^( TEXT_LINE ( source_text )+ )
          root_1 = @adaptor.create_flat_list!
          <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteImaginaryTokenRefRoot>root_1 = @adaptor.become_root(<AST.createImaginaryNode><else_subtemplate><if(!args)_subtemplate>@adaptor.create_from_type!(TEXT_LINE, "TEXT_LINE")</if(!args)_subtemplate></else_subtemplate></AST.createImaginaryNode>, root_1)
          </AST.rewriteImaginaryTokenRefRoot></AST.rewriteElement>
          <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewritePositiveClosureBlock># at line 151:39: ( source_text )+
          unless <ASTParser.anonymous>stream_source_text.has_next?</ASTParser.anonymous>
            raise ANTLR3::RewriteEarlyExit
          end

          while <ASTParser.anonymous>stream_source_text.has_next?</ASTParser.anonymous>
            <AST.rewriteElementList><AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteRuleRef>@adaptor.add_child(root_1, stream_source_text.next_tree)
            </AST.rewriteRuleRef></AST.rewriteElement></AST.rewriteElementList>
          end

          <ASTParser.anonymous>stream_source_text.reset
          </ASTParser.anonymous></AST.rewritePositiveClosureBlock></AST.rewriteElement>
          @adaptor.add_child(root_0, root_1)
          </AST.rewriteTree></AST.rewriteElement></AST.rewriteElementList></else_subtemplate></AST.rewriteAltFirst>


          <if(!TREE_PARSER)_subtemplate><AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
          </if(!TREE_PARSER)_subtemplate></ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.rewriteCode></AST.alt></Ruby.ruleBlockSingleAlt><ASTParser.ruleCleanUp><Ruby.ruleCleanUp><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(!TREE_PARSER)_subtemplate># - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)
        </if(!TREE_PARSER)_subtemplate></if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.ruleCleanUp>
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>
          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)
          </ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleCleanUp>
      <if(memoize)_subtemplate><if(backtracking)_subtemplate>  success = true
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      <else_subtemplate><if(!emptyRule)_subtemplate><else_subtemplate>rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        <ASTParser.region__ruleBody__setErrorReturnValue>return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)
        </ASTParser.region__ruleBody__setErrorReturnValue></else_subtemplate></if(!emptyRule)_subtemplate></else_subtemplate>
      ensure
        <Ruby.traceOut><else_subtemplate># -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 11)
        </else_subtemplate></Ruby.traceOut><Ruby.memoize><if(memoize)_subtemplate><if(backtracking)_subtemplate>memoize(__method__, text_line_start_index, success) if @state.backtracking > 0
        </if(backtracking)_subtemplate></if(memoize)_subtemplate></Ruby.memoize><Ruby.ruleScopeCleanUp></Ruby.ruleScopeCleanUp>
      end</Ruby.ruleBody></Ruby.region__rule__body>
      
      return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
    end
    </Ruby.rule>
    </ASTParser.anonymous><ASTParser.anonymous><Ruby.rule><Ruby.returnScope><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><Ruby.returnStructName>StatementReturnValue</Ruby.returnStructName> = define_return_scope </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.returnScope>

    # parser rule statement
    # 
    # (in Cpp.g)
    # 155:1: statement : ( proc_line )+ ;
    def statement
      <Ruby.traceIn><else_subtemplate># -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 12)
      </else_subtemplate></Ruby.traceIn><Ruby.ruleScopeSetUp></Ruby.ruleScopeSetUp><AST.ruleDeclarations><Ruby.ruleDeclarations><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate>return_value = <Ruby.returnStructName>StatementReturnValue</Ruby.returnStructName>.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(memoize)_subtemplate>statement_start_index = @input.index
      </if(memoize)_subtemplate></Ruby.ruleDeclarations>
      root_0 = nil
      </AST.ruleDeclarations><AST.ruleLabelDefs><Ruby.ruleLabelDefs><Ruby.ruleLabelDef>proc_line47 = nil
      </Ruby.ruleLabelDef></Ruby.ruleLabelDefs>
      </AST.ruleLabelDefs><Ruby.action></Ruby.action>
      <Ruby.region__rule__body><Ruby.ruleBody><if(memoize)_subtemplate><if(backtracking)_subtemplate>success = false # flag used for memoization
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      begin
        <Ruby.ruleMemoization><if(memoize)_subtemplate># rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
        end
        </if(memoize)_subtemplate></Ruby.ruleMemoization><Ruby.ruleBlockSingleAlt><Ruby.region__ruleBlockSingleAlt__prealt></Ruby.region__ruleBlockSingleAlt__prealt><AST.alt><if(autoAST)_subtemplate><if(outerAlt)_subtemplate><if(!rewriteMode)_subtemplate>root_0 = @adaptor.create_flat_list!

        </if(!rewriteMode)_subtemplate></if(outerAlt)_subtemplate></if(autoAST)_subtemplate>
        # at line 156:7: ( proc_line )+
        <Ruby.element><Ruby.positiveClosureBlock># at file 156:7: ( proc_line )+
        <Ruby.region__positiveClosureBlock__loopBody><Ruby.positiveClosureBlockLoop>match_count_21 = 0
        loop do
          alt_21 = 2
          <Ruby.region__positiveClosureBlockLoop__decisionBody><Ruby.dfaLoopbackState>look_21_0 = @input.peek(1)

          <Ruby.dfaEdge>if (<Ruby.setTest><Ruby.lookaheadTest>look_21_0 == IF</Ruby.lookaheadTest> || <Ruby.lookaheadRangeTest>look_21_0.between?(WARNING, PRAGMA)</Ruby.lookaheadRangeTest> || <Ruby.lookaheadTest>look_21_0 == TEXT_END</Ruby.lookaheadTest> || <Ruby.lookaheadTest>look_21_0 == EXEC_MACRO</Ruby.lookaheadTest> || <Ruby.lookaheadRangeTest>look_21_0.between?(LINE, UNDEF)</Ruby.lookaheadRangeTest> || <Ruby.lookaheadRangeTest>look_21_0.between?(DIRECTIVE, COMMA)</Ruby.lookaheadRangeTest> || <Ruby.lookaheadRangeTest>look_21_0.between?(DECIMAL_LITERAL, STRING_LITERAL)</Ruby.lookaheadRangeTest> || <Ruby.lookaheadTest>look_21_0 == SIZEOF</Ruby.lookaheadTest> || <Ruby.lookaheadRangeTest>look_21_0.between?(HEX_LITERAL, COPERATOR)</Ruby.lookaheadRangeTest></Ruby.setTest>) 
            <Ruby.dfaAcceptState>alt_21 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>

          end</Ruby.dfaLoopbackState></Ruby.region__positiveClosureBlockLoop__decisionBody>
          case alt_21
          <Ruby.altSwitchCase>when 1
            <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate></if(autoAST)_subtemplate># at line 0:0: proc_line
            <Ruby.element><ASTParser.ruleRef><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_proc_line_IN_statement_1182)
            <if(label)_subtemplate>proc_line47 = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>proc_line</ASTParser.<anonymous template argument>></Ruby.methodCall>
            @state.following.pop</Ruby.ruleRef>
            <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
              <ASTParser.<anonymous template argument>>@adaptor.add_child(root_0, proc_line47.tree)</ASTParser.<anonymous template argument>>
            end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleRef>
            </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
          else
            match_count_21 > 0 and break
            <Ruby.ruleBacktrackFailure><if(backtracking)_subtemplate>@state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
            </if(backtracking)_subtemplate></Ruby.ruleBacktrackFailure>
            eee = EarlyExit(21)
            <Ruby.region__positiveClosureBlockLoop__earlyExitException></Ruby.region__positiveClosureBlockLoop__earlyExitException>

            raise eee
          end
          match_count_21 += 1
        end
        </Ruby.positiveClosureBlockLoop></Ruby.region__positiveClosureBlock__loopBody></Ruby.positiveClosureBlock>
        </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.ruleBlockSingleAlt><ASTParser.ruleCleanUp><Ruby.ruleCleanUp><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(!TREE_PARSER)_subtemplate># - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)
        </if(!TREE_PARSER)_subtemplate></if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.ruleCleanUp>
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>
          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)
          </ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleCleanUp>
      <if(memoize)_subtemplate><if(backtracking)_subtemplate>  success = true
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      <else_subtemplate><if(!emptyRule)_subtemplate><else_subtemplate>rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        <ASTParser.region__ruleBody__setErrorReturnValue>return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)
        </ASTParser.region__ruleBody__setErrorReturnValue></else_subtemplate></if(!emptyRule)_subtemplate></else_subtemplate>
      ensure
        <Ruby.traceOut><else_subtemplate># -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 12)
        </else_subtemplate></Ruby.traceOut><Ruby.memoize><if(memoize)_subtemplate><if(backtracking)_subtemplate>memoize(__method__, statement_start_index, success) if @state.backtracking > 0
        </if(backtracking)_subtemplate></if(memoize)_subtemplate></Ruby.memoize><Ruby.ruleScopeCleanUp></Ruby.ruleScopeCleanUp>
      end</Ruby.ruleBody></Ruby.region__rule__body>
      
      return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
    end
    </Ruby.rule>
    </ASTParser.anonymous><ASTParser.anonymous><Ruby.rule><Ruby.returnScope><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><Ruby.returnStructName>TypeNameReturnValue</Ruby.returnStructName> = define_return_scope </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.returnScope>

    # parser rule type_name
    # 
    # (in Cpp.g)
    # 159:1: type_name : IDENTIFIER ;
    def type_name
      <Ruby.traceIn><else_subtemplate># -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 13)
      </else_subtemplate></Ruby.traceIn><Ruby.ruleScopeSetUp></Ruby.ruleScopeSetUp><AST.ruleDeclarations><Ruby.ruleDeclarations><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate>return_value = <Ruby.returnStructName>TypeNameReturnValue</Ruby.returnStructName>.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(memoize)_subtemplate>type_name_start_index = @input.index
      </if(memoize)_subtemplate></Ruby.ruleDeclarations>
      root_0 = nil
      </AST.ruleDeclarations><AST.ruleLabelDefs><Ruby.ruleLabelDefs><ASTParser.anonymous>__IDENTIFIER48__ = nil
      </ASTParser.anonymous></Ruby.ruleLabelDefs>
      <ASTParser.anonymous>tree_for_IDENTIFIER48 = nil</ASTParser.anonymous>
      </AST.ruleLabelDefs><Ruby.action></Ruby.action>
      <Ruby.region__rule__body><Ruby.ruleBody><if(memoize)_subtemplate><if(backtracking)_subtemplate>success = false # flag used for memoization
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      begin
        <Ruby.ruleMemoization><if(memoize)_subtemplate># rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
        end
        </if(memoize)_subtemplate></Ruby.ruleMemoization><Ruby.ruleBlockSingleAlt><Ruby.region__ruleBlockSingleAlt__prealt></Ruby.region__ruleBlockSingleAlt__prealt><AST.alt><if(autoAST)_subtemplate><if(outerAlt)_subtemplate><if(!rewriteMode)_subtemplate>root_0 = @adaptor.create_flat_list!

        </if(!rewriteMode)_subtemplate></if(outerAlt)_subtemplate></if(autoAST)_subtemplate>
        # at line 160:7: IDENTIFIER
        <Ruby.element><ASTParser.tokenRef><Ruby.tokenRef><if(label)_subtemplate>__IDENTIFIER48__ = </if(label)_subtemplate>match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_type_name_1200)</Ruby.tokenRef>
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>
          tree_for_IDENTIFIER48 = <ASTParser.createNodeFromToken><else_subtemplate>@adaptor.create_with_payload!(__IDENTIFIER48__)</else_subtemplate></ASTParser.createNodeFromToken>
          @adaptor.add_child(root_0, tree_for_IDENTIFIER48)
          </ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.tokenRef>
        </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.ruleBlockSingleAlt><ASTParser.ruleCleanUp><Ruby.ruleCleanUp><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(!TREE_PARSER)_subtemplate># - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)
        </if(!TREE_PARSER)_subtemplate></if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.ruleCleanUp>
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>
          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)
          </ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleCleanUp>
      <if(memoize)_subtemplate><if(backtracking)_subtemplate>  success = true
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      <else_subtemplate><if(!emptyRule)_subtemplate><else_subtemplate>rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        <ASTParser.region__ruleBody__setErrorReturnValue>return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)
        </ASTParser.region__ruleBody__setErrorReturnValue></else_subtemplate></if(!emptyRule)_subtemplate></else_subtemplate>
      ensure
        <Ruby.traceOut><else_subtemplate># -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 13)
        </else_subtemplate></Ruby.traceOut><Ruby.memoize><if(memoize)_subtemplate><if(backtracking)_subtemplate>memoize(__method__, type_name_start_index, success) if @state.backtracking > 0
        </if(backtracking)_subtemplate></if(memoize)_subtemplate></Ruby.memoize><Ruby.ruleScopeCleanUp></Ruby.ruleScopeCleanUp>
      end</Ruby.ruleBody></Ruby.region__rule__body>
      
      return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
    end
    </Ruby.rule>
    </ASTParser.anonymous><ASTParser.anonymous><Ruby.rule><Ruby.returnScope><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><Ruby.returnStructName>IfexpressionReturnValue</Ruby.returnStructName> = define_return_scope </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.returnScope>

    # parser rule ifexpression
    # 
    # (in Cpp.g)
    # 163:1: ifexpression : assignment_expression -> ^( assignment_expression ) ;
    def ifexpression
      <Ruby.traceIn><else_subtemplate># -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 14)
      </else_subtemplate></Ruby.traceIn><Ruby.ruleScopeSetUp></Ruby.ruleScopeSetUp><AST.ruleDeclarations><Ruby.ruleDeclarations><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate>return_value = <Ruby.returnStructName>IfexpressionReturnValue</Ruby.returnStructName>.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(memoize)_subtemplate>ifexpression_start_index = @input.index
      </if(memoize)_subtemplate></Ruby.ruleDeclarations>
      root_0 = nil
      </AST.ruleDeclarations><AST.ruleLabelDefs><Ruby.ruleLabelDefs><Ruby.ruleLabelDef>assignment_expression49 = nil
      </Ruby.ruleLabelDef></Ruby.ruleLabelDefs>
      <ASTParser.anonymous>stream_assignment_expression = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule assignment_expression")</ASTParser.anonymous></AST.ruleLabelDefs><Ruby.action><if(code)_subtemplate># - - - - @init action - - - -

        ntype =
          case (<Ruby.scopeAttributeRef><else_subtemplate><else_subtemplate>@Expression_stack[-1].flavor</else_subtemplate></else_subtemplate></Ruby.scopeAttributeRef> rescue nil)
          when :ifndef then EXPR_NDEF
          when :ifdef  then EXPR_DEF
          else EXPR
          end

      </if(code)_subtemplate></Ruby.action>
      <Ruby.region__rule__body><Ruby.ruleBody><if(memoize)_subtemplate><if(backtracking)_subtemplate>success = false # flag used for memoization
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      begin
        <Ruby.ruleMemoization><if(memoize)_subtemplate># rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
        end
        </if(memoize)_subtemplate></Ruby.ruleMemoization><Ruby.ruleBlockSingleAlt><Ruby.region__ruleBlockSingleAlt__prealt></Ruby.region__ruleBlockSingleAlt__prealt><AST.alt># at line 172:7: assignment_expression
        <Ruby.element><AST.ruleRefTrack><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_assignment_expression_IN_ifexpression_1222)
        <if(label)_subtemplate>assignment_expression49 = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>assignment_expression</ASTParser.<anonymous template argument>></Ruby.methodCall>
        @state.following.pop</Ruby.ruleRef>
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>stream_assignment_expression.add(assignment_expression49.tree)</ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.ruleRefTrack>
        </Ruby.element><AST.rewriteCode># AST Rewrite
        # elements: assignment_expression
        # token labels: 
        # rule labels: <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>
          <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
          <AST.rewriteCodeLabels><ASTParser.anonymous>stream_<AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> = <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> ? subtree_stream("rule <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>", <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree) : subtree_stream("token <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>")</ASTParser.anonymous>
          </AST.rewriteCodeLabels>
          root_0 = @adaptor.create_flat_list!
          <AST.rewriteAltFirst><else_subtemplate># 172:29: -> ^( assignment_expression )
          <AST.rewriteElementList><AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteTree># at line 172:32: ^( assignment_expression )
          root_1 = @adaptor.create_flat_list!
          <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteNodeActionRoot>root_1 = @adaptor.become_root(create_token(ntype), root_1)
          </AST.rewriteNodeActionRoot></AST.rewriteElement>
          <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteRuleRef>@adaptor.add_child(root_1, stream_assignment_expression.next_tree)
          </AST.rewriteRuleRef></AST.rewriteElement>
          @adaptor.add_child(root_0, root_1)
          </AST.rewriteTree></AST.rewriteElement></AST.rewriteElementList></else_subtemplate></AST.rewriteAltFirst>


          <if(!TREE_PARSER)_subtemplate><AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
          </if(!TREE_PARSER)_subtemplate></ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.rewriteCode></AST.alt></Ruby.ruleBlockSingleAlt><ASTParser.ruleCleanUp><Ruby.ruleCleanUp><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(!TREE_PARSER)_subtemplate># - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)
        </if(!TREE_PARSER)_subtemplate></if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.ruleCleanUp>
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>
          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)
          </ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleCleanUp>
      <if(memoize)_subtemplate><if(backtracking)_subtemplate>  success = true
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      <else_subtemplate><if(!emptyRule)_subtemplate><else_subtemplate>rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        <ASTParser.region__ruleBody__setErrorReturnValue>return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)
        </ASTParser.region__ruleBody__setErrorReturnValue></else_subtemplate></if(!emptyRule)_subtemplate></else_subtemplate>
      ensure
        <Ruby.traceOut><else_subtemplate># -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 14)
        </else_subtemplate></Ruby.traceOut><Ruby.memoize><if(memoize)_subtemplate><if(backtracking)_subtemplate>memoize(__method__, ifexpression_start_index, success) if @state.backtracking > 0
        </if(backtracking)_subtemplate></if(memoize)_subtemplate></Ruby.memoize><Ruby.ruleScopeCleanUp></Ruby.ruleScopeCleanUp>
      end</Ruby.ruleBody></Ruby.region__rule__body>
      
      return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
    end
    </Ruby.rule>
    </ASTParser.anonymous><ASTParser.anonymous><Ruby.rule><Ruby.returnScope><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><Ruby.returnStructName>AssignmentExpressionReturnValue</Ruby.returnStructName> = define_return_scope </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.returnScope>

    # parser rule assignment_expression
    # 
    # (in Cpp.g)
    # 175:1: assignment_expression : conditional_expression ( ( ASSIGNEQUAL | TIMESEQUAL | DIVIDEEQUAL | MODEQUAL | PLUSEQUAL | MINUSEQUAL | SHIFTLEFTEQUAL | SHIFTRIGHTEQUAL | BITWISEANDEQUAL | BITWISEXOREQUAL | BITWISEOREQUAL ) assignment_expression )? ;
    def assignment_expression
      <Ruby.traceIn><else_subtemplate># -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 15)
      </else_subtemplate></Ruby.traceIn><Ruby.ruleScopeSetUp></Ruby.ruleScopeSetUp><AST.ruleDeclarations><Ruby.ruleDeclarations><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate>return_value = <Ruby.returnStructName>AssignmentExpressionReturnValue</Ruby.returnStructName>.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(memoize)_subtemplate>assignment_expression_start_index = @input.index
      </if(memoize)_subtemplate></Ruby.ruleDeclarations>
      root_0 = nil
      </AST.ruleDeclarations><AST.ruleLabelDefs><Ruby.ruleLabelDefs><ASTParser.anonymous>__ASSIGNEQUAL51__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__TIMESEQUAL52__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__DIVIDEEQUAL53__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__MODEQUAL54__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__PLUSEQUAL55__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__MINUSEQUAL56__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__SHIFTLEFTEQUAL57__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__SHIFTRIGHTEQUAL58__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__BITWISEANDEQUAL59__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__BITWISEXOREQUAL60__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__BITWISEOREQUAL61__ = nil
      </ASTParser.anonymous><Ruby.ruleLabelDef>conditional_expression50 = nil
      </Ruby.ruleLabelDef><Ruby.ruleLabelDef>assignment_expression62 = nil
      </Ruby.ruleLabelDef></Ruby.ruleLabelDefs>
      <ASTParser.anonymous>tree_for_ASSIGNEQUAL51 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_TIMESEQUAL52 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_DIVIDEEQUAL53 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_MODEQUAL54 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_PLUSEQUAL55 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_MINUSEQUAL56 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_SHIFTLEFTEQUAL57 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_SHIFTRIGHTEQUAL58 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_BITWISEANDEQUAL59 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_BITWISEXOREQUAL60 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_BITWISEOREQUAL61 = nil</ASTParser.anonymous>
      </AST.ruleLabelDefs><Ruby.action></Ruby.action>
      <Ruby.region__rule__body><Ruby.ruleBody><if(memoize)_subtemplate><if(backtracking)_subtemplate>success = false # flag used for memoization
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      begin
        <Ruby.ruleMemoization><if(memoize)_subtemplate># rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
        end
        </if(memoize)_subtemplate></Ruby.ruleMemoization><Ruby.ruleBlockSingleAlt><Ruby.region__ruleBlockSingleAlt__prealt></Ruby.region__ruleBlockSingleAlt__prealt><AST.alt><if(autoAST)_subtemplate><if(outerAlt)_subtemplate><if(!rewriteMode)_subtemplate>root_0 = @adaptor.create_flat_list!

        </if(!rewriteMode)_subtemplate></if(outerAlt)_subtemplate></if(autoAST)_subtemplate>
        # at line 176:7: conditional_expression ( ( ASSIGNEQUAL | TIMESEQUAL | DIVIDEEQUAL | MODEQUAL | PLUSEQUAL | MINUSEQUAL | SHIFTLEFTEQUAL | SHIFTRIGHTEQUAL | BITWISEANDEQUAL | BITWISEXOREQUAL | BITWISEOREQUAL ) assignment_expression )?
        <Ruby.element><ASTParser.ruleRef><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_conditional_expression_IN_assignment_expression_1247)
        <if(label)_subtemplate>conditional_expression50 = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>conditional_expression</ASTParser.<anonymous template argument>></Ruby.methodCall>
        @state.following.pop</Ruby.ruleRef>
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>@adaptor.add_child(root_0, conditional_expression50.tree)</ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleRef>
        </Ruby.element><Ruby.element><Ruby.block># at line 177:7: ( ( ASSIGNEQUAL | TIMESEQUAL | DIVIDEEQUAL | MODEQUAL | PLUSEQUAL | MINUSEQUAL | SHIFTLEFTEQUAL | SHIFTRIGHTEQUAL | BITWISEANDEQUAL | BITWISEXOREQUAL | BITWISEOREQUAL ) assignment_expression )?
        alt_23 = 2
        <Ruby.region__block__body><Ruby.blockBody><Ruby.region__blockBody__decision><Ruby.dfaOptionalBlockState>look_23_0 = @input.peek(1)

        <Ruby.dfaEdge>if (<Ruby.setTest><Ruby.lookaheadRangeTest>look_23_0.between?(ASSIGNEQUAL, BITWISEOREQUAL)</Ruby.lookaheadRangeTest></Ruby.setTest>) 
          <Ruby.dfaAcceptState>alt_23 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>
        end</Ruby.dfaOptionalBlockState></Ruby.region__blockBody__decision>
        case alt_23
        <Ruby.altSwitchCase>when 1
          <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate></if(autoAST)_subtemplate># at line 177:9: ( ASSIGNEQUAL | TIMESEQUAL | DIVIDEEQUAL | MODEQUAL | PLUSEQUAL | MINUSEQUAL | SHIFTLEFTEQUAL | SHIFTRIGHTEQUAL | BITWISEANDEQUAL | BITWISEXOREQUAL | BITWISEOREQUAL ) assignment_expression
          <Ruby.element><Ruby.block># at line 177:9: ( ASSIGNEQUAL | TIMESEQUAL | DIVIDEEQUAL | MODEQUAL | PLUSEQUAL | MINUSEQUAL | SHIFTLEFTEQUAL | SHIFTRIGHTEQUAL | BITWISEANDEQUAL | BITWISEXOREQUAL | BITWISEOREQUAL )
          alt_22 = 11
          <Ruby.region__block__body><Ruby.blockBody><Ruby.region__blockBody__decision><Ruby.dfaStateSwitch>case look_22 = @input.peek(1)
          <Ruby.dfaEdgeSwitch>when <ASTParser.anonymous>ASSIGNEQUAL</ASTParser.anonymous> then <Ruby.dfaAcceptState>alt_22 = 1</Ruby.dfaAcceptState></Ruby.dfaEdgeSwitch>
          <Ruby.dfaEdgeSwitch>when <ASTParser.anonymous>TIMESEQUAL</ASTParser.anonymous> then <Ruby.dfaAcceptState>alt_22 = 2</Ruby.dfaAcceptState></Ruby.dfaEdgeSwitch>
          <Ruby.dfaEdgeSwitch>when <ASTParser.anonymous>DIVIDEEQUAL</ASTParser.anonymous> then <Ruby.dfaAcceptState>alt_22 = 3</Ruby.dfaAcceptState></Ruby.dfaEdgeSwitch>
          <Ruby.dfaEdgeSwitch>when <ASTParser.anonymous>MODEQUAL</ASTParser.anonymous> then <Ruby.dfaAcceptState>alt_22 = 4</Ruby.dfaAcceptState></Ruby.dfaEdgeSwitch>
          <Ruby.dfaEdgeSwitch>when <ASTParser.anonymous>PLUSEQUAL</ASTParser.anonymous> then <Ruby.dfaAcceptState>alt_22 = 5</Ruby.dfaAcceptState></Ruby.dfaEdgeSwitch>
          <Ruby.dfaEdgeSwitch>when <ASTParser.anonymous>MINUSEQUAL</ASTParser.anonymous> then <Ruby.dfaAcceptState>alt_22 = 6</Ruby.dfaAcceptState></Ruby.dfaEdgeSwitch>
          <Ruby.dfaEdgeSwitch>when <ASTParser.anonymous>SHIFTLEFTEQUAL</ASTParser.anonymous> then <Ruby.dfaAcceptState>alt_22 = 7</Ruby.dfaAcceptState></Ruby.dfaEdgeSwitch>
          <Ruby.dfaEdgeSwitch>when <ASTParser.anonymous>SHIFTRIGHTEQUAL</ASTParser.anonymous> then <Ruby.dfaAcceptState>alt_22 = 8</Ruby.dfaAcceptState></Ruby.dfaEdgeSwitch>
          <Ruby.dfaEdgeSwitch>when <ASTParser.anonymous>BITWISEANDEQUAL</ASTParser.anonymous> then <Ruby.dfaAcceptState>alt_22 = 9</Ruby.dfaAcceptState></Ruby.dfaEdgeSwitch>
          <Ruby.dfaEdgeSwitch>when <ASTParser.anonymous>BITWISEXOREQUAL</ASTParser.anonymous> then <Ruby.dfaAcceptState>alt_22 = 10</Ruby.dfaAcceptState></Ruby.dfaEdgeSwitch>
          <Ruby.dfaEdgeSwitch>when <ASTParser.anonymous>BITWISEOREQUAL</ASTParser.anonymous> then <Ruby.dfaAcceptState>alt_22 = 11</Ruby.dfaAcceptState></Ruby.dfaEdgeSwitch>
          else
          <else_subtemplate><Ruby.ruleBacktrackFailure><if(backtracking)_subtemplate>@state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
            </if(backtracking)_subtemplate></Ruby.ruleBacktrackFailure>
            nvae = NoViableAlternative("", 22, 0)
            <Ruby.region__dfaStateSwitch__noViableAltException>raise nvae</Ruby.region__dfaStateSwitch__noViableAltException>
          </else_subtemplate>end</Ruby.dfaStateSwitch></Ruby.region__blockBody__decision>
          case alt_22
          <Ruby.altSwitchCase>when 1
            <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate></if(autoAST)_subtemplate># at line 177:11: ASSIGNEQUAL
            <Ruby.element><ASTParser.tokenRefRuleRoot><Ruby.tokenRef><if(label)_subtemplate>__ASSIGNEQUAL51__ = </if(label)_subtemplate>match(ASSIGNEQUAL, TOKENS_FOLLOWING_ASSIGNEQUAL_IN_assignment_expression_1259)</Ruby.tokenRef>
            <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
              <ASTParser.<anonymous template argument>>
              tree_for_ASSIGNEQUAL51 = <ASTParser.createNodeFromToken><else_subtemplate>@adaptor.create_with_payload!(__ASSIGNEQUAL51__)</else_subtemplate></ASTParser.createNodeFromToken>
              root_0 = @adaptor.become_root(tree_for_ASSIGNEQUAL51, root_0)
              </ASTParser.<anonymous template argument>>
            end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.tokenRefRuleRoot>
            </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
          <Ruby.altSwitchCase>when 2
            <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate></if(autoAST)_subtemplate># at line 177:30: TIMESEQUAL
            <Ruby.element><ASTParser.tokenRefRuleRoot><Ruby.tokenRef><if(label)_subtemplate>__TIMESEQUAL52__ = </if(label)_subtemplate>match(TIMESEQUAL, TOKENS_FOLLOWING_TIMESEQUAL_IN_assignment_expression_1268)</Ruby.tokenRef>
            <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
              <ASTParser.<anonymous template argument>>
              tree_for_TIMESEQUAL52 = <ASTParser.createNodeFromToken><else_subtemplate>@adaptor.create_with_payload!(__TIMESEQUAL52__)</else_subtemplate></ASTParser.createNodeFromToken>
              root_0 = @adaptor.become_root(tree_for_TIMESEQUAL52, root_0)
              </ASTParser.<anonymous template argument>>
            end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.tokenRefRuleRoot>
            </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
          <Ruby.altSwitchCase>when 3
            <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate></if(autoAST)_subtemplate># at line 177:51: DIVIDEEQUAL
            <Ruby.element><ASTParser.tokenRefRuleRoot><Ruby.tokenRef><if(label)_subtemplate>__DIVIDEEQUAL53__ = </if(label)_subtemplate>match(DIVIDEEQUAL, TOKENS_FOLLOWING_DIVIDEEQUAL_IN_assignment_expression_1280)</Ruby.tokenRef>
            <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
              <ASTParser.<anonymous template argument>>
              tree_for_DIVIDEEQUAL53 = <ASTParser.createNodeFromToken><else_subtemplate>@adaptor.create_with_payload!(__DIVIDEEQUAL53__)</else_subtemplate></ASTParser.createNodeFromToken>
              root_0 = @adaptor.become_root(tree_for_DIVIDEEQUAL53, root_0)
              </ASTParser.<anonymous template argument>>
            end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.tokenRefRuleRoot>
            </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
          <Ruby.altSwitchCase>when 4
            <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate></if(autoAST)_subtemplate># at line 178:11: MODEQUAL
            <Ruby.element><ASTParser.tokenRefRuleRoot><Ruby.tokenRef><if(label)_subtemplate>__MODEQUAL54__ = </if(label)_subtemplate>match(MODEQUAL, TOKENS_FOLLOWING_MODEQUAL_IN_assignment_expression_1299)</Ruby.tokenRef>
            <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
              <ASTParser.<anonymous template argument>>
              tree_for_MODEQUAL54 = <ASTParser.createNodeFromToken><else_subtemplate>@adaptor.create_with_payload!(__MODEQUAL54__)</else_subtemplate></ASTParser.createNodeFromToken>
              root_0 = @adaptor.become_root(tree_for_MODEQUAL54, root_0)
              </ASTParser.<anonymous template argument>>
            end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.tokenRefRuleRoot>
            </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
          <Ruby.altSwitchCase>when 5
            <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate></if(autoAST)_subtemplate># at line 178:30: PLUSEQUAL
            <Ruby.element><ASTParser.tokenRefRuleRoot><Ruby.tokenRef><if(label)_subtemplate>__PLUSEQUAL55__ = </if(label)_subtemplate>match(PLUSEQUAL, TOKENS_FOLLOWING_PLUSEQUAL_IN_assignment_expression_1311)</Ruby.tokenRef>
            <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
              <ASTParser.<anonymous template argument>>
              tree_for_PLUSEQUAL55 = <ASTParser.createNodeFromToken><else_subtemplate>@adaptor.create_with_payload!(__PLUSEQUAL55__)</else_subtemplate></ASTParser.createNodeFromToken>
              root_0 = @adaptor.become_root(tree_for_PLUSEQUAL55, root_0)
              </ASTParser.<anonymous template argument>>
            end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.tokenRefRuleRoot>
            </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
          <Ruby.altSwitchCase>when 6
            <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate></if(autoAST)_subtemplate># at line 178:51: MINUSEQUAL
            <Ruby.element><ASTParser.tokenRefRuleRoot><Ruby.tokenRef><if(label)_subtemplate>__MINUSEQUAL56__ = </if(label)_subtemplate>match(MINUSEQUAL, TOKENS_FOLLOWING_MINUSEQUAL_IN_assignment_expression_1324)</Ruby.tokenRef>
            <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
              <ASTParser.<anonymous template argument>>
              tree_for_MINUSEQUAL56 = <ASTParser.createNodeFromToken><else_subtemplate>@adaptor.create_with_payload!(__MINUSEQUAL56__)</else_subtemplate></ASTParser.createNodeFromToken>
              root_0 = @adaptor.become_root(tree_for_MINUSEQUAL56, root_0)
              </ASTParser.<anonymous template argument>>
            end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.tokenRefRuleRoot>
            </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
          <Ruby.altSwitchCase>when 7
            <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate></if(autoAST)_subtemplate># at line 179:11: SHIFTLEFTEQUAL
            <Ruby.element><ASTParser.tokenRefRuleRoot><Ruby.tokenRef><if(label)_subtemplate>__SHIFTLEFTEQUAL57__ = </if(label)_subtemplate>match(SHIFTLEFTEQUAL, TOKENS_FOLLOWING_SHIFTLEFTEQUAL_IN_assignment_expression_1344)</Ruby.tokenRef>
            <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
              <ASTParser.<anonymous template argument>>
              tree_for_SHIFTLEFTEQUAL57 = <ASTParser.createNodeFromToken><else_subtemplate>@adaptor.create_with_payload!(__SHIFTLEFTEQUAL57__)</else_subtemplate></ASTParser.createNodeFromToken>
              root_0 = @adaptor.become_root(tree_for_SHIFTLEFTEQUAL57, root_0)
              </ASTParser.<anonymous template argument>>
            end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.tokenRefRuleRoot>
            </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
          <Ruby.altSwitchCase>when 8
            <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate></if(autoAST)_subtemplate># at line 179:30: SHIFTRIGHTEQUAL
            <Ruby.element><ASTParser.tokenRefRuleRoot><Ruby.tokenRef><if(label)_subtemplate>__SHIFTRIGHTEQUAL58__ = </if(label)_subtemplate>match(SHIFTRIGHTEQUAL, TOKENS_FOLLOWING_SHIFTRIGHTEQUAL_IN_assignment_expression_1350)</Ruby.tokenRef>
            <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
              <ASTParser.<anonymous template argument>>
              tree_for_SHIFTRIGHTEQUAL58 = <ASTParser.createNodeFromToken><else_subtemplate>@adaptor.create_with_payload!(__SHIFTRIGHTEQUAL58__)</else_subtemplate></ASTParser.createNodeFromToken>
              root_0 = @adaptor.become_root(tree_for_SHIFTRIGHTEQUAL58, root_0)
              </ASTParser.<anonymous template argument>>
            end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.tokenRefRuleRoot>
            </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
          <Ruby.altSwitchCase>when 9
            <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate></if(autoAST)_subtemplate># at line 179:51: BITWISEANDEQUAL
            <Ruby.element><ASTParser.tokenRefRuleRoot><Ruby.tokenRef><if(label)_subtemplate>__BITWISEANDEQUAL59__ = </if(label)_subtemplate>match(BITWISEANDEQUAL, TOKENS_FOLLOWING_BITWISEANDEQUAL_IN_assignment_expression_1357)</Ruby.tokenRef>
            <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
              <ASTParser.<anonymous template argument>>
              tree_for_BITWISEANDEQUAL59 = <ASTParser.createNodeFromToken><else_subtemplate>@adaptor.create_with_payload!(__BITWISEANDEQUAL59__)</else_subtemplate></ASTParser.createNodeFromToken>
              root_0 = @adaptor.become_root(tree_for_BITWISEANDEQUAL59, root_0)
              </ASTParser.<anonymous template argument>>
            end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.tokenRefRuleRoot>
            </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
          <Ruby.altSwitchCase>when 10
            <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate></if(autoAST)_subtemplate># at line 180:11: BITWISEXOREQUAL
            <Ruby.element><ASTParser.tokenRefRuleRoot><Ruby.tokenRef><if(label)_subtemplate>__BITWISEXOREQUAL60__ = </if(label)_subtemplate>match(BITWISEXOREQUAL, TOKENS_FOLLOWING_BITWISEXOREQUAL_IN_assignment_expression_1372)</Ruby.tokenRef>
            <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
              <ASTParser.<anonymous template argument>>
              tree_for_BITWISEXOREQUAL60 = <ASTParser.createNodeFromToken><else_subtemplate>@adaptor.create_with_payload!(__BITWISEXOREQUAL60__)</else_subtemplate></ASTParser.createNodeFromToken>
              root_0 = @adaptor.become_root(tree_for_BITWISEXOREQUAL60, root_0)
              </ASTParser.<anonymous template argument>>
            end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.tokenRefRuleRoot>
            </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
          <Ruby.altSwitchCase>when 11
            <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate></if(autoAST)_subtemplate># at line 180:30: BITWISEOREQUAL
            <Ruby.element><ASTParser.tokenRefRuleRoot><Ruby.tokenRef><if(label)_subtemplate>__BITWISEOREQUAL61__ = </if(label)_subtemplate>match(BITWISEOREQUAL, TOKENS_FOLLOWING_BITWISEOREQUAL_IN_assignment_expression_1377)</Ruby.tokenRef>
            <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
              <ASTParser.<anonymous template argument>>
              tree_for_BITWISEOREQUAL61 = <ASTParser.createNodeFromToken><else_subtemplate>@adaptor.create_with_payload!(__BITWISEOREQUAL61__)</else_subtemplate></ASTParser.createNodeFromToken>
              root_0 = @adaptor.become_root(tree_for_BITWISEOREQUAL61, root_0)
              </ASTParser.<anonymous template argument>>
            end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.tokenRefRuleRoot>
            </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
          end</Ruby.blockBody></Ruby.region__block__body></Ruby.block>
          </Ruby.element><Ruby.element><ASTParser.ruleRef><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_assignment_expression_IN_assignment_expression_1390)
          <if(label)_subtemplate>assignment_expression62 = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>assignment_expression</ASTParser.<anonymous template argument>></Ruby.methodCall>
          @state.following.pop</Ruby.ruleRef>
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>@adaptor.add_child(root_0, assignment_expression62.tree)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleRef>
          </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
        end</Ruby.blockBody></Ruby.region__block__body></Ruby.block>
        </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.ruleBlockSingleAlt><ASTParser.ruleCleanUp><Ruby.ruleCleanUp><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(!TREE_PARSER)_subtemplate># - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)
        </if(!TREE_PARSER)_subtemplate></if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.ruleCleanUp>
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>
          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)
          </ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleCleanUp>
      <if(memoize)_subtemplate><if(backtracking)_subtemplate>  success = true
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      <else_subtemplate><if(!emptyRule)_subtemplate><else_subtemplate>rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        <ASTParser.region__ruleBody__setErrorReturnValue>return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)
        </ASTParser.region__ruleBody__setErrorReturnValue></else_subtemplate></if(!emptyRule)_subtemplate></else_subtemplate>
      ensure
        <Ruby.traceOut><else_subtemplate># -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 15)
        </else_subtemplate></Ruby.traceOut><Ruby.memoize><if(memoize)_subtemplate><if(backtracking)_subtemplate>memoize(__method__, assignment_expression_start_index, success) if @state.backtracking > 0
        </if(backtracking)_subtemplate></if(memoize)_subtemplate></Ruby.memoize><Ruby.ruleScopeCleanUp></Ruby.ruleScopeCleanUp>
      end</Ruby.ruleBody></Ruby.region__rule__body>
      
      return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
    end
    </Ruby.rule>
    </ASTParser.anonymous><ASTParser.anonymous><Ruby.rule><Ruby.returnScope><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><Ruby.returnStructName>ConditionalExpressionReturnValue</Ruby.returnStructName> = define_return_scope </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.returnScope>

    # parser rule conditional_expression
    # 
    # (in Cpp.g)
    # 185:1: conditional_expression : logical_or_expression ( QUESTIONMARK assignment_expression COLON conditional_expression )? ;
    def conditional_expression
      <Ruby.traceIn><else_subtemplate># -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 16)
      </else_subtemplate></Ruby.traceIn><Ruby.ruleScopeSetUp></Ruby.ruleScopeSetUp><AST.ruleDeclarations><Ruby.ruleDeclarations><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate>return_value = <Ruby.returnStructName>ConditionalExpressionReturnValue</Ruby.returnStructName>.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(memoize)_subtemplate>conditional_expression_start_index = @input.index
      </if(memoize)_subtemplate></Ruby.ruleDeclarations>
      root_0 = nil
      </AST.ruleDeclarations><AST.ruleLabelDefs><Ruby.ruleLabelDefs><ASTParser.anonymous>__QUESTIONMARK64__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__COLON66__ = nil
      </ASTParser.anonymous><Ruby.ruleLabelDef>logical_or_expression63 = nil
      </Ruby.ruleLabelDef><Ruby.ruleLabelDef>assignment_expression65 = nil
      </Ruby.ruleLabelDef><Ruby.ruleLabelDef>conditional_expression67 = nil
      </Ruby.ruleLabelDef></Ruby.ruleLabelDefs>
      <ASTParser.anonymous>tree_for_QUESTIONMARK64 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_COLON66 = nil</ASTParser.anonymous>
      </AST.ruleLabelDefs><Ruby.action></Ruby.action>
      <Ruby.region__rule__body><Ruby.ruleBody><if(memoize)_subtemplate><if(backtracking)_subtemplate>success = false # flag used for memoization
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      begin
        <Ruby.ruleMemoization><if(memoize)_subtemplate># rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
        end
        </if(memoize)_subtemplate></Ruby.ruleMemoization><Ruby.ruleBlockSingleAlt><Ruby.region__ruleBlockSingleAlt__prealt></Ruby.region__ruleBlockSingleAlt__prealt><AST.alt><if(autoAST)_subtemplate><if(outerAlt)_subtemplate><if(!rewriteMode)_subtemplate>root_0 = @adaptor.create_flat_list!

        </if(!rewriteMode)_subtemplate></if(outerAlt)_subtemplate></if(autoAST)_subtemplate>
        # at line 186:13: logical_or_expression ( QUESTIONMARK assignment_expression COLON conditional_expression )?
        <Ruby.element><ASTParser.ruleRef><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_logical_or_expression_IN_conditional_expression_1422)
        <if(label)_subtemplate>logical_or_expression63 = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>logical_or_expression</ASTParser.<anonymous template argument>></Ruby.methodCall>
        @state.following.pop</Ruby.ruleRef>
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>@adaptor.add_child(root_0, logical_or_expression63.tree)</ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleRef>
        </Ruby.element><Ruby.element><Ruby.block># at line 187:13: ( QUESTIONMARK assignment_expression COLON conditional_expression )?
        alt_24 = 2
        <Ruby.region__block__body><Ruby.blockBody><Ruby.region__blockBody__decision><Ruby.dfaOptionalBlockState>look_24_0 = @input.peek(1)

        <Ruby.dfaEdge>if (<Ruby.lookaheadTest>look_24_0 == QUESTIONMARK</Ruby.lookaheadTest>) 
          <Ruby.dfaAcceptState>alt_24 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>
        end</Ruby.dfaOptionalBlockState></Ruby.region__blockBody__decision>
        case alt_24
        <Ruby.altSwitchCase>when 1
          <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate></if(autoAST)_subtemplate># at line 187:15: QUESTIONMARK assignment_expression COLON conditional_expression
          <Ruby.element><ASTParser.tokenRefRuleRoot><Ruby.tokenRef><if(label)_subtemplate>__QUESTIONMARK64__ = </if(label)_subtemplate>match(QUESTIONMARK, TOKENS_FOLLOWING_QUESTIONMARK_IN_conditional_expression_1438)</Ruby.tokenRef>
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>
            tree_for_QUESTIONMARK64 = <ASTParser.createNodeFromToken><else_subtemplate>@adaptor.create_with_payload!(__QUESTIONMARK64__)</else_subtemplate></ASTParser.createNodeFromToken>
            root_0 = @adaptor.become_root(tree_for_QUESTIONMARK64, root_0)
            </ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.tokenRefRuleRoot>
          </Ruby.element><Ruby.element><ASTParser.ruleRef><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_assignment_expression_IN_conditional_expression_1441)
          <if(label)_subtemplate>assignment_expression65 = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>assignment_expression</ASTParser.<anonymous template argument>></Ruby.methodCall>
          @state.following.pop</Ruby.ruleRef>
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>@adaptor.add_child(root_0, assignment_expression65.tree)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleRef>
          </Ruby.element><Ruby.element><ASTParser.tokenRef><Ruby.tokenRef><if(label)_subtemplate>__COLON66__ = </if(label)_subtemplate>match(COLON, TOKENS_FOLLOWING_COLON_IN_conditional_expression_1443)</Ruby.tokenRef>
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>
            tree_for_COLON66 = <ASTParser.createNodeFromToken><else_subtemplate>@adaptor.create_with_payload!(__COLON66__)</else_subtemplate></ASTParser.createNodeFromToken>
            @adaptor.add_child(root_0, tree_for_COLON66)
            </ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.tokenRef>
          </Ruby.element><Ruby.element><ASTParser.ruleRef><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_conditional_expression_IN_conditional_expression_1445)
          <if(label)_subtemplate>conditional_expression67 = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>conditional_expression</ASTParser.<anonymous template argument>></Ruby.methodCall>
          @state.following.pop</Ruby.ruleRef>
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>@adaptor.add_child(root_0, conditional_expression67.tree)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleRef>
          </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
        end</Ruby.blockBody></Ruby.region__block__body></Ruby.block>
        </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.ruleBlockSingleAlt><ASTParser.ruleCleanUp><Ruby.ruleCleanUp><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(!TREE_PARSER)_subtemplate># - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)
        </if(!TREE_PARSER)_subtemplate></if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.ruleCleanUp>
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>
          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)
          </ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleCleanUp>
      <if(memoize)_subtemplate><if(backtracking)_subtemplate>  success = true
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      <else_subtemplate><if(!emptyRule)_subtemplate><else_subtemplate>rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        <ASTParser.region__ruleBody__setErrorReturnValue>return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)
        </ASTParser.region__ruleBody__setErrorReturnValue></else_subtemplate></if(!emptyRule)_subtemplate></else_subtemplate>
      ensure
        <Ruby.traceOut><else_subtemplate># -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 16)
        </else_subtemplate></Ruby.traceOut><Ruby.memoize><if(memoize)_subtemplate><if(backtracking)_subtemplate>memoize(__method__, conditional_expression_start_index, success) if @state.backtracking > 0
        </if(backtracking)_subtemplate></if(memoize)_subtemplate></Ruby.memoize><Ruby.ruleScopeCleanUp></Ruby.ruleScopeCleanUp>
      end</Ruby.ruleBody></Ruby.region__rule__body>
      
      return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
    end
    </Ruby.rule>
    </ASTParser.anonymous><ASTParser.anonymous><Ruby.rule><Ruby.returnScope><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><Ruby.returnStructName>LogicalOrExpressionReturnValue</Ruby.returnStructName> = define_return_scope </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.returnScope>

    # parser rule logical_or_expression
    # 
    # (in Cpp.g)
    # 190:1: logical_or_expression : logical_and_expression ( OR logical_and_expression )* ;
    def logical_or_expression
      <Ruby.traceIn><else_subtemplate># -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 17)
      </else_subtemplate></Ruby.traceIn><Ruby.ruleScopeSetUp></Ruby.ruleScopeSetUp><AST.ruleDeclarations><Ruby.ruleDeclarations><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate>return_value = <Ruby.returnStructName>LogicalOrExpressionReturnValue</Ruby.returnStructName>.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(memoize)_subtemplate>logical_or_expression_start_index = @input.index
      </if(memoize)_subtemplate></Ruby.ruleDeclarations>
      root_0 = nil
      </AST.ruleDeclarations><AST.ruleLabelDefs><Ruby.ruleLabelDefs><ASTParser.anonymous>__OR69__ = nil
      </ASTParser.anonymous><Ruby.ruleLabelDef>logical_and_expression68 = nil
      </Ruby.ruleLabelDef><Ruby.ruleLabelDef>logical_and_expression70 = nil
      </Ruby.ruleLabelDef></Ruby.ruleLabelDefs>
      <ASTParser.anonymous>tree_for_OR69 = nil</ASTParser.anonymous>
      </AST.ruleLabelDefs><Ruby.action></Ruby.action>
      <Ruby.region__rule__body><Ruby.ruleBody><if(memoize)_subtemplate><if(backtracking)_subtemplate>success = false # flag used for memoization
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      begin
        <Ruby.ruleMemoization><if(memoize)_subtemplate># rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
        end
        </if(memoize)_subtemplate></Ruby.ruleMemoization><Ruby.ruleBlockSingleAlt><Ruby.region__ruleBlockSingleAlt__prealt></Ruby.region__ruleBlockSingleAlt__prealt><AST.alt><if(autoAST)_subtemplate><if(outerAlt)_subtemplate><if(!rewriteMode)_subtemplate>root_0 = @adaptor.create_flat_list!

        </if(!rewriteMode)_subtemplate></if(outerAlt)_subtemplate></if(autoAST)_subtemplate>
        # at line 191:13: logical_and_expression ( OR logical_and_expression )*
        <Ruby.element><ASTParser.ruleRef><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_logical_and_expression_IN_logical_or_expression_1471)
        <if(label)_subtemplate>logical_and_expression68 = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>logical_and_expression</ASTParser.<anonymous template argument>></Ruby.methodCall>
        @state.following.pop</Ruby.ruleRef>
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>@adaptor.add_child(root_0, logical_and_expression68.tree)</ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleRef>
        </Ruby.element><Ruby.element><Ruby.closureBlock># at line 191:36: ( OR logical_and_expression )*
        <Ruby.region__closureBlock__loopBody><Ruby.closureBlockLoop>loop do  #loop 25
          alt_25 = 2
          <Ruby.region__closureBlockLoop__decisionBody><Ruby.dfaLoopbackState>look_25_0 = @input.peek(1)

          <Ruby.dfaEdge>if (<Ruby.lookaheadTest>look_25_0 == OR</Ruby.lookaheadTest>) 
            <Ruby.dfaAcceptState>alt_25 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>

          end</Ruby.dfaLoopbackState></Ruby.region__closureBlockLoop__decisionBody>
          case alt_25
          <Ruby.altSwitchCase>when 1
            <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate></if(autoAST)_subtemplate># at line 191:37: OR logical_and_expression
            <Ruby.element><ASTParser.tokenRefRuleRoot><Ruby.tokenRef><if(label)_subtemplate>__OR69__ = </if(label)_subtemplate>match(OR, TOKENS_FOLLOWING_OR_IN_logical_or_expression_1474)</Ruby.tokenRef>
            <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
              <ASTParser.<anonymous template argument>>
              tree_for_OR69 = <ASTParser.createNodeFromToken><else_subtemplate>@adaptor.create_with_payload!(__OR69__)</else_subtemplate></ASTParser.createNodeFromToken>
              root_0 = @adaptor.become_root(tree_for_OR69, root_0)
              </ASTParser.<anonymous template argument>>
            end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.tokenRefRuleRoot>
            </Ruby.element><Ruby.element><ASTParser.ruleRef><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_logical_and_expression_IN_logical_or_expression_1477)
            <if(label)_subtemplate>logical_and_expression70 = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>logical_and_expression</ASTParser.<anonymous template argument>></Ruby.methodCall>
            @state.following.pop</Ruby.ruleRef>
            <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
              <ASTParser.<anonymous template argument>>@adaptor.add_child(root_0, logical_and_expression70.tree)</ASTParser.<anonymous template argument>>
            end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleRef>
            </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
          else
            break #loop 25
          end
        end</Ruby.closureBlockLoop></Ruby.region__closureBlock__loopBody></Ruby.closureBlock>
        </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.ruleBlockSingleAlt><ASTParser.ruleCleanUp><Ruby.ruleCleanUp><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(!TREE_PARSER)_subtemplate># - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)
        </if(!TREE_PARSER)_subtemplate></if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.ruleCleanUp>
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>
          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)
          </ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleCleanUp>
      <if(memoize)_subtemplate><if(backtracking)_subtemplate>  success = true
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      <else_subtemplate><if(!emptyRule)_subtemplate><else_subtemplate>rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        <ASTParser.region__ruleBody__setErrorReturnValue>return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)
        </ASTParser.region__ruleBody__setErrorReturnValue></else_subtemplate></if(!emptyRule)_subtemplate></else_subtemplate>
      ensure
        <Ruby.traceOut><else_subtemplate># -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 17)
        </else_subtemplate></Ruby.traceOut><Ruby.memoize><if(memoize)_subtemplate><if(backtracking)_subtemplate>memoize(__method__, logical_or_expression_start_index, success) if @state.backtracking > 0
        </if(backtracking)_subtemplate></if(memoize)_subtemplate></Ruby.memoize><Ruby.ruleScopeCleanUp></Ruby.ruleScopeCleanUp>
      end</Ruby.ruleBody></Ruby.region__rule__body>
      
      return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
    end
    </Ruby.rule>
    </ASTParser.anonymous><ASTParser.anonymous><Ruby.rule><Ruby.returnScope><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><Ruby.returnStructName>LogicalAndExpressionReturnValue</Ruby.returnStructName> = define_return_scope </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.returnScope>

    # parser rule logical_and_expression
    # 
    # (in Cpp.g)
    # 194:1: logical_and_expression : inclusive_or_expression ( AND inclusive_or_expression )* ;
    def logical_and_expression
      <Ruby.traceIn><else_subtemplate># -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 18)
      </else_subtemplate></Ruby.traceIn><Ruby.ruleScopeSetUp></Ruby.ruleScopeSetUp><AST.ruleDeclarations><Ruby.ruleDeclarations><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate>return_value = <Ruby.returnStructName>LogicalAndExpressionReturnValue</Ruby.returnStructName>.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(memoize)_subtemplate>logical_and_expression_start_index = @input.index
      </if(memoize)_subtemplate></Ruby.ruleDeclarations>
      root_0 = nil
      </AST.ruleDeclarations><AST.ruleLabelDefs><Ruby.ruleLabelDefs><ASTParser.anonymous>__AND72__ = nil
      </ASTParser.anonymous><Ruby.ruleLabelDef>inclusive_or_expression71 = nil
      </Ruby.ruleLabelDef><Ruby.ruleLabelDef>inclusive_or_expression73 = nil
      </Ruby.ruleLabelDef></Ruby.ruleLabelDefs>
      <ASTParser.anonymous>tree_for_AND72 = nil</ASTParser.anonymous>
      </AST.ruleLabelDefs><Ruby.action></Ruby.action>
      <Ruby.region__rule__body><Ruby.ruleBody><if(memoize)_subtemplate><if(backtracking)_subtemplate>success = false # flag used for memoization
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      begin
        <Ruby.ruleMemoization><if(memoize)_subtemplate># rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
        end
        </if(memoize)_subtemplate></Ruby.ruleMemoization><Ruby.ruleBlockSingleAlt><Ruby.region__ruleBlockSingleAlt__prealt></Ruby.region__ruleBlockSingleAlt__prealt><AST.alt><if(autoAST)_subtemplate><if(outerAlt)_subtemplate><if(!rewriteMode)_subtemplate>root_0 = @adaptor.create_flat_list!

        </if(!rewriteMode)_subtemplate></if(outerAlt)_subtemplate></if(autoAST)_subtemplate>
        # at line 195:13: inclusive_or_expression ( AND inclusive_or_expression )*
        <Ruby.element><ASTParser.ruleRef><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_inclusive_or_expression_IN_logical_and_expression_1502)
        <if(label)_subtemplate>inclusive_or_expression71 = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>inclusive_or_expression</ASTParser.<anonymous template argument>></Ruby.methodCall>
        @state.following.pop</Ruby.ruleRef>
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>@adaptor.add_child(root_0, inclusive_or_expression71.tree)</ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleRef>
        </Ruby.element><Ruby.element><Ruby.closureBlock># at line 195:37: ( AND inclusive_or_expression )*
        <Ruby.region__closureBlock__loopBody><Ruby.closureBlockLoop>loop do  #loop 26
          alt_26 = 2
          <Ruby.region__closureBlockLoop__decisionBody><Ruby.dfaLoopbackState>look_26_0 = @input.peek(1)

          <Ruby.dfaEdge>if (<Ruby.lookaheadTest>look_26_0 == AND</Ruby.lookaheadTest>) 
            <Ruby.dfaAcceptState>alt_26 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>

          end</Ruby.dfaLoopbackState></Ruby.region__closureBlockLoop__decisionBody>
          case alt_26
          <Ruby.altSwitchCase>when 1
            <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate></if(autoAST)_subtemplate># at line 195:38: AND inclusive_or_expression
            <Ruby.element><ASTParser.tokenRefRuleRoot><Ruby.tokenRef><if(label)_subtemplate>__AND72__ = </if(label)_subtemplate>match(AND, TOKENS_FOLLOWING_AND_IN_logical_and_expression_1505)</Ruby.tokenRef>
            <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
              <ASTParser.<anonymous template argument>>
              tree_for_AND72 = <ASTParser.createNodeFromToken><else_subtemplate>@adaptor.create_with_payload!(__AND72__)</else_subtemplate></ASTParser.createNodeFromToken>
              root_0 = @adaptor.become_root(tree_for_AND72, root_0)
              </ASTParser.<anonymous template argument>>
            end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.tokenRefRuleRoot>
            </Ruby.element><Ruby.element><ASTParser.ruleRef><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_inclusive_or_expression_IN_logical_and_expression_1508)
            <if(label)_subtemplate>inclusive_or_expression73 = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>inclusive_or_expression</ASTParser.<anonymous template argument>></Ruby.methodCall>
            @state.following.pop</Ruby.ruleRef>
            <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
              <ASTParser.<anonymous template argument>>@adaptor.add_child(root_0, inclusive_or_expression73.tree)</ASTParser.<anonymous template argument>>
            end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleRef>
            </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
          else
            break #loop 26
          end
        end</Ruby.closureBlockLoop></Ruby.region__closureBlock__loopBody></Ruby.closureBlock>
        </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.ruleBlockSingleAlt><ASTParser.ruleCleanUp><Ruby.ruleCleanUp><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(!TREE_PARSER)_subtemplate># - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)
        </if(!TREE_PARSER)_subtemplate></if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.ruleCleanUp>
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>
          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)
          </ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleCleanUp>
      <if(memoize)_subtemplate><if(backtracking)_subtemplate>  success = true
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      <else_subtemplate><if(!emptyRule)_subtemplate><else_subtemplate>rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        <ASTParser.region__ruleBody__setErrorReturnValue>return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)
        </ASTParser.region__ruleBody__setErrorReturnValue></else_subtemplate></if(!emptyRule)_subtemplate></else_subtemplate>
      ensure
        <Ruby.traceOut><else_subtemplate># -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 18)
        </else_subtemplate></Ruby.traceOut><Ruby.memoize><if(memoize)_subtemplate><if(backtracking)_subtemplate>memoize(__method__, logical_and_expression_start_index, success) if @state.backtracking > 0
        </if(backtracking)_subtemplate></if(memoize)_subtemplate></Ruby.memoize><Ruby.ruleScopeCleanUp></Ruby.ruleScopeCleanUp>
      end</Ruby.ruleBody></Ruby.region__rule__body>
      
      return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
    end
    </Ruby.rule>
    </ASTParser.anonymous><ASTParser.anonymous><Ruby.rule><Ruby.returnScope><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><Ruby.returnStructName>InclusiveOrExpressionReturnValue</Ruby.returnStructName> = define_return_scope </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.returnScope>

    # parser rule inclusive_or_expression
    # 
    # (in Cpp.g)
    # 198:1: inclusive_or_expression : exclusive_or_expression ( BITWISEOR exclusive_or_expression )* ;
    def inclusive_or_expression
      <Ruby.traceIn><else_subtemplate># -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 19)
      </else_subtemplate></Ruby.traceIn><Ruby.ruleScopeSetUp></Ruby.ruleScopeSetUp><AST.ruleDeclarations><Ruby.ruleDeclarations><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate>return_value = <Ruby.returnStructName>InclusiveOrExpressionReturnValue</Ruby.returnStructName>.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(memoize)_subtemplate>inclusive_or_expression_start_index = @input.index
      </if(memoize)_subtemplate></Ruby.ruleDeclarations>
      root_0 = nil
      </AST.ruleDeclarations><AST.ruleLabelDefs><Ruby.ruleLabelDefs><ASTParser.anonymous>__BITWISEOR75__ = nil
      </ASTParser.anonymous><Ruby.ruleLabelDef>exclusive_or_expression74 = nil
      </Ruby.ruleLabelDef><Ruby.ruleLabelDef>exclusive_or_expression76 = nil
      </Ruby.ruleLabelDef></Ruby.ruleLabelDefs>
      <ASTParser.anonymous>tree_for_BITWISEOR75 = nil</ASTParser.anonymous>
      </AST.ruleLabelDefs><Ruby.action></Ruby.action>
      <Ruby.region__rule__body><Ruby.ruleBody><if(memoize)_subtemplate><if(backtracking)_subtemplate>success = false # flag used for memoization
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      begin
        <Ruby.ruleMemoization><if(memoize)_subtemplate># rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
        end
        </if(memoize)_subtemplate></Ruby.ruleMemoization><Ruby.ruleBlockSingleAlt><Ruby.region__ruleBlockSingleAlt__prealt></Ruby.region__ruleBlockSingleAlt__prealt><AST.alt><if(autoAST)_subtemplate><if(outerAlt)_subtemplate><if(!rewriteMode)_subtemplate>root_0 = @adaptor.create_flat_list!

        </if(!rewriteMode)_subtemplate></if(outerAlt)_subtemplate></if(autoAST)_subtemplate>
        # at line 199:13: exclusive_or_expression ( BITWISEOR exclusive_or_expression )*
        <Ruby.element><ASTParser.ruleRef><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_exclusive_or_expression_IN_inclusive_or_expression_1533)
        <if(label)_subtemplate>exclusive_or_expression74 = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>exclusive_or_expression</ASTParser.<anonymous template argument>></Ruby.methodCall>
        @state.following.pop</Ruby.ruleRef>
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>@adaptor.add_child(root_0, exclusive_or_expression74.tree)</ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleRef>
        </Ruby.element><Ruby.element><Ruby.closureBlock># at line 199:37: ( BITWISEOR exclusive_or_expression )*
        <Ruby.region__closureBlock__loopBody><Ruby.closureBlockLoop>loop do  #loop 27
          alt_27 = 2
          <Ruby.region__closureBlockLoop__decisionBody><Ruby.dfaLoopbackState>look_27_0 = @input.peek(1)

          <Ruby.dfaEdge>if (<Ruby.lookaheadTest>look_27_0 == BITWISEOR</Ruby.lookaheadTest>) 
            <Ruby.dfaAcceptState>alt_27 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>

          end</Ruby.dfaLoopbackState></Ruby.region__closureBlockLoop__decisionBody>
          case alt_27
          <Ruby.altSwitchCase>when 1
            <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate></if(autoAST)_subtemplate># at line 199:38: BITWISEOR exclusive_or_expression
            <Ruby.element><ASTParser.tokenRefRuleRoot><Ruby.tokenRef><if(label)_subtemplate>__BITWISEOR75__ = </if(label)_subtemplate>match(BITWISEOR, TOKENS_FOLLOWING_BITWISEOR_IN_inclusive_or_expression_1536)</Ruby.tokenRef>
            <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
              <ASTParser.<anonymous template argument>>
              tree_for_BITWISEOR75 = <ASTParser.createNodeFromToken><else_subtemplate>@adaptor.create_with_payload!(__BITWISEOR75__)</else_subtemplate></ASTParser.createNodeFromToken>
              root_0 = @adaptor.become_root(tree_for_BITWISEOR75, root_0)
              </ASTParser.<anonymous template argument>>
            end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.tokenRefRuleRoot>
            </Ruby.element><Ruby.element><ASTParser.ruleRef><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_exclusive_or_expression_IN_inclusive_or_expression_1539)
            <if(label)_subtemplate>exclusive_or_expression76 = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>exclusive_or_expression</ASTParser.<anonymous template argument>></Ruby.methodCall>
            @state.following.pop</Ruby.ruleRef>
            <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
              <ASTParser.<anonymous template argument>>@adaptor.add_child(root_0, exclusive_or_expression76.tree)</ASTParser.<anonymous template argument>>
            end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleRef>
            </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
          else
            break #loop 27
          end
        end</Ruby.closureBlockLoop></Ruby.region__closureBlock__loopBody></Ruby.closureBlock>
        </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.ruleBlockSingleAlt><ASTParser.ruleCleanUp><Ruby.ruleCleanUp><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(!TREE_PARSER)_subtemplate># - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)
        </if(!TREE_PARSER)_subtemplate></if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.ruleCleanUp>
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>
          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)
          </ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleCleanUp>
      <if(memoize)_subtemplate><if(backtracking)_subtemplate>  success = true
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      <else_subtemplate><if(!emptyRule)_subtemplate><else_subtemplate>rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        <ASTParser.region__ruleBody__setErrorReturnValue>return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)
        </ASTParser.region__ruleBody__setErrorReturnValue></else_subtemplate></if(!emptyRule)_subtemplate></else_subtemplate>
      ensure
        <Ruby.traceOut><else_subtemplate># -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 19)
        </else_subtemplate></Ruby.traceOut><Ruby.memoize><if(memoize)_subtemplate><if(backtracking)_subtemplate>memoize(__method__, inclusive_or_expression_start_index, success) if @state.backtracking > 0
        </if(backtracking)_subtemplate></if(memoize)_subtemplate></Ruby.memoize><Ruby.ruleScopeCleanUp></Ruby.ruleScopeCleanUp>
      end</Ruby.ruleBody></Ruby.region__rule__body>
      
      return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
    end
    </Ruby.rule>
    </ASTParser.anonymous><ASTParser.anonymous><Ruby.rule><Ruby.returnScope><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><Ruby.returnStructName>ExclusiveOrExpressionReturnValue</Ruby.returnStructName> = define_return_scope </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.returnScope>

    # parser rule exclusive_or_expression
    # 
    # (in Cpp.g)
    # 202:1: exclusive_or_expression : and_expression ( BITWISEXOR and_expression )* ;
    def exclusive_or_expression
      <Ruby.traceIn><else_subtemplate># -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 20)
      </else_subtemplate></Ruby.traceIn><Ruby.ruleScopeSetUp></Ruby.ruleScopeSetUp><AST.ruleDeclarations><Ruby.ruleDeclarations><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate>return_value = <Ruby.returnStructName>ExclusiveOrExpressionReturnValue</Ruby.returnStructName>.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(memoize)_subtemplate>exclusive_or_expression_start_index = @input.index
      </if(memoize)_subtemplate></Ruby.ruleDeclarations>
      root_0 = nil
      </AST.ruleDeclarations><AST.ruleLabelDefs><Ruby.ruleLabelDefs><ASTParser.anonymous>__BITWISEXOR78__ = nil
      </ASTParser.anonymous><Ruby.ruleLabelDef>and_expression77 = nil
      </Ruby.ruleLabelDef><Ruby.ruleLabelDef>and_expression79 = nil
      </Ruby.ruleLabelDef></Ruby.ruleLabelDefs>
      <ASTParser.anonymous>tree_for_BITWISEXOR78 = nil</ASTParser.anonymous>
      </AST.ruleLabelDefs><Ruby.action></Ruby.action>
      <Ruby.region__rule__body><Ruby.ruleBody><if(memoize)_subtemplate><if(backtracking)_subtemplate>success = false # flag used for memoization
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      begin
        <Ruby.ruleMemoization><if(memoize)_subtemplate># rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
        end
        </if(memoize)_subtemplate></Ruby.ruleMemoization><Ruby.ruleBlockSingleAlt><Ruby.region__ruleBlockSingleAlt__prealt></Ruby.region__ruleBlockSingleAlt__prealt><AST.alt><if(autoAST)_subtemplate><if(outerAlt)_subtemplate><if(!rewriteMode)_subtemplate>root_0 = @adaptor.create_flat_list!

        </if(!rewriteMode)_subtemplate></if(outerAlt)_subtemplate></if(autoAST)_subtemplate>
        # at line 203:13: and_expression ( BITWISEXOR and_expression )*
        <Ruby.element><ASTParser.ruleRef><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_and_expression_IN_exclusive_or_expression_1564)
        <if(label)_subtemplate>and_expression77 = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>and_expression</ASTParser.<anonymous template argument>></Ruby.methodCall>
        @state.following.pop</Ruby.ruleRef>
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>@adaptor.add_child(root_0, and_expression77.tree)</ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleRef>
        </Ruby.element><Ruby.element><Ruby.closureBlock># at line 203:28: ( BITWISEXOR and_expression )*
        <Ruby.region__closureBlock__loopBody><Ruby.closureBlockLoop>loop do  #loop 28
          alt_28 = 2
          <Ruby.region__closureBlockLoop__decisionBody><Ruby.dfaLoopbackState>look_28_0 = @input.peek(1)

          <Ruby.dfaEdge>if (<Ruby.lookaheadTest>look_28_0 == BITWISEXOR</Ruby.lookaheadTest>) 
            <Ruby.dfaAcceptState>alt_28 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>

          end</Ruby.dfaLoopbackState></Ruby.region__closureBlockLoop__decisionBody>
          case alt_28
          <Ruby.altSwitchCase>when 1
            <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate></if(autoAST)_subtemplate># at line 203:29: BITWISEXOR and_expression
            <Ruby.element><ASTParser.tokenRefRuleRoot><Ruby.tokenRef><if(label)_subtemplate>__BITWISEXOR78__ = </if(label)_subtemplate>match(BITWISEXOR, TOKENS_FOLLOWING_BITWISEXOR_IN_exclusive_or_expression_1567)</Ruby.tokenRef>
            <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
              <ASTParser.<anonymous template argument>>
              tree_for_BITWISEXOR78 = <ASTParser.createNodeFromToken><else_subtemplate>@adaptor.create_with_payload!(__BITWISEXOR78__)</else_subtemplate></ASTParser.createNodeFromToken>
              root_0 = @adaptor.become_root(tree_for_BITWISEXOR78, root_0)
              </ASTParser.<anonymous template argument>>
            end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.tokenRefRuleRoot>
            </Ruby.element><Ruby.element><ASTParser.ruleRef><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_and_expression_IN_exclusive_or_expression_1570)
            <if(label)_subtemplate>and_expression79 = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>and_expression</ASTParser.<anonymous template argument>></Ruby.methodCall>
            @state.following.pop</Ruby.ruleRef>
            <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
              <ASTParser.<anonymous template argument>>@adaptor.add_child(root_0, and_expression79.tree)</ASTParser.<anonymous template argument>>
            end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleRef>
            </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
          else
            break #loop 28
          end
        end</Ruby.closureBlockLoop></Ruby.region__closureBlock__loopBody></Ruby.closureBlock>
        </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.ruleBlockSingleAlt><ASTParser.ruleCleanUp><Ruby.ruleCleanUp><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(!TREE_PARSER)_subtemplate># - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)
        </if(!TREE_PARSER)_subtemplate></if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.ruleCleanUp>
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>
          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)
          </ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleCleanUp>
      <if(memoize)_subtemplate><if(backtracking)_subtemplate>  success = true
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      <else_subtemplate><if(!emptyRule)_subtemplate><else_subtemplate>rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        <ASTParser.region__ruleBody__setErrorReturnValue>return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)
        </ASTParser.region__ruleBody__setErrorReturnValue></else_subtemplate></if(!emptyRule)_subtemplate></else_subtemplate>
      ensure
        <Ruby.traceOut><else_subtemplate># -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 20)
        </else_subtemplate></Ruby.traceOut><Ruby.memoize><if(memoize)_subtemplate><if(backtracking)_subtemplate>memoize(__method__, exclusive_or_expression_start_index, success) if @state.backtracking > 0
        </if(backtracking)_subtemplate></if(memoize)_subtemplate></Ruby.memoize><Ruby.ruleScopeCleanUp></Ruby.ruleScopeCleanUp>
      end</Ruby.ruleBody></Ruby.region__rule__body>
      
      return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
    end
    </Ruby.rule>
    </ASTParser.anonymous><ASTParser.anonymous><Ruby.rule><Ruby.returnScope><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><Ruby.returnStructName>AndExpressionReturnValue</Ruby.returnStructName> = define_return_scope </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.returnScope>

    # parser rule and_expression
    # 
    # (in Cpp.g)
    # 206:1: and_expression : equality_expression ( AMPERSAND equality_expression )* ;
    def and_expression
      <Ruby.traceIn><else_subtemplate># -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 21)
      </else_subtemplate></Ruby.traceIn><Ruby.ruleScopeSetUp></Ruby.ruleScopeSetUp><AST.ruleDeclarations><Ruby.ruleDeclarations><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate>return_value = <Ruby.returnStructName>AndExpressionReturnValue</Ruby.returnStructName>.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(memoize)_subtemplate>and_expression_start_index = @input.index
      </if(memoize)_subtemplate></Ruby.ruleDeclarations>
      root_0 = nil
      </AST.ruleDeclarations><AST.ruleLabelDefs><Ruby.ruleLabelDefs><ASTParser.anonymous>__AMPERSAND81__ = nil
      </ASTParser.anonymous><Ruby.ruleLabelDef>equality_expression80 = nil
      </Ruby.ruleLabelDef><Ruby.ruleLabelDef>equality_expression82 = nil
      </Ruby.ruleLabelDef></Ruby.ruleLabelDefs>
      <ASTParser.anonymous>tree_for_AMPERSAND81 = nil</ASTParser.anonymous>
      </AST.ruleLabelDefs><Ruby.action></Ruby.action>
      <Ruby.region__rule__body><Ruby.ruleBody><if(memoize)_subtemplate><if(backtracking)_subtemplate>success = false # flag used for memoization
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      begin
        <Ruby.ruleMemoization><if(memoize)_subtemplate># rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
        end
        </if(memoize)_subtemplate></Ruby.ruleMemoization><Ruby.ruleBlockSingleAlt><Ruby.region__ruleBlockSingleAlt__prealt></Ruby.region__ruleBlockSingleAlt__prealt><AST.alt><if(autoAST)_subtemplate><if(outerAlt)_subtemplate><if(!rewriteMode)_subtemplate>root_0 = @adaptor.create_flat_list!

        </if(!rewriteMode)_subtemplate></if(outerAlt)_subtemplate></if(autoAST)_subtemplate>
        # at line 207:13: equality_expression ( AMPERSAND equality_expression )*
        <Ruby.element><ASTParser.ruleRef><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_equality_expression_IN_and_expression_1595)
        <if(label)_subtemplate>equality_expression80 = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>equality_expression</ASTParser.<anonymous template argument>></Ruby.methodCall>
        @state.following.pop</Ruby.ruleRef>
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>@adaptor.add_child(root_0, equality_expression80.tree)</ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleRef>
        </Ruby.element><Ruby.element><Ruby.closureBlock># at line 207:33: ( AMPERSAND equality_expression )*
        <Ruby.region__closureBlock__loopBody><Ruby.closureBlockLoop>loop do  #loop 29
          alt_29 = 2
          <Ruby.region__closureBlockLoop__decisionBody><Ruby.dfaLoopbackState>look_29_0 = @input.peek(1)

          <Ruby.dfaEdge>if (<Ruby.lookaheadTest>look_29_0 == AMPERSAND</Ruby.lookaheadTest>) 
            <Ruby.dfaAcceptState>alt_29 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>

          end</Ruby.dfaLoopbackState></Ruby.region__closureBlockLoop__decisionBody>
          case alt_29
          <Ruby.altSwitchCase>when 1
            <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate></if(autoAST)_subtemplate># at line 207:34: AMPERSAND equality_expression
            <Ruby.element><ASTParser.tokenRefRuleRoot><Ruby.tokenRef><if(label)_subtemplate>__AMPERSAND81__ = </if(label)_subtemplate>match(AMPERSAND, TOKENS_FOLLOWING_AMPERSAND_IN_and_expression_1598)</Ruby.tokenRef>
            <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
              <ASTParser.<anonymous template argument>>
              tree_for_AMPERSAND81 = <ASTParser.createNodeFromToken><else_subtemplate>@adaptor.create_with_payload!(__AMPERSAND81__)</else_subtemplate></ASTParser.createNodeFromToken>
              root_0 = @adaptor.become_root(tree_for_AMPERSAND81, root_0)
              </ASTParser.<anonymous template argument>>
            end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.tokenRefRuleRoot>
            </Ruby.element><Ruby.element><ASTParser.ruleRef><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_equality_expression_IN_and_expression_1601)
            <if(label)_subtemplate>equality_expression82 = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>equality_expression</ASTParser.<anonymous template argument>></Ruby.methodCall>
            @state.following.pop</Ruby.ruleRef>
            <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
              <ASTParser.<anonymous template argument>>@adaptor.add_child(root_0, equality_expression82.tree)</ASTParser.<anonymous template argument>>
            end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleRef>
            </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
          else
            break #loop 29
          end
        end</Ruby.closureBlockLoop></Ruby.region__closureBlock__loopBody></Ruby.closureBlock>
        </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.ruleBlockSingleAlt><ASTParser.ruleCleanUp><Ruby.ruleCleanUp><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(!TREE_PARSER)_subtemplate># - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)
        </if(!TREE_PARSER)_subtemplate></if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.ruleCleanUp>
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>
          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)
          </ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleCleanUp>
      <if(memoize)_subtemplate><if(backtracking)_subtemplate>  success = true
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      <else_subtemplate><if(!emptyRule)_subtemplate><else_subtemplate>rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        <ASTParser.region__ruleBody__setErrorReturnValue>return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)
        </ASTParser.region__ruleBody__setErrorReturnValue></else_subtemplate></if(!emptyRule)_subtemplate></else_subtemplate>
      ensure
        <Ruby.traceOut><else_subtemplate># -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 21)
        </else_subtemplate></Ruby.traceOut><Ruby.memoize><if(memoize)_subtemplate><if(backtracking)_subtemplate>memoize(__method__, and_expression_start_index, success) if @state.backtracking > 0
        </if(backtracking)_subtemplate></if(memoize)_subtemplate></Ruby.memoize><Ruby.ruleScopeCleanUp></Ruby.ruleScopeCleanUp>
      end</Ruby.ruleBody></Ruby.region__rule__body>
      
      return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
    end
    </Ruby.rule>
    </ASTParser.anonymous><ASTParser.anonymous><Ruby.rule><Ruby.returnScope><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><Ruby.returnStructName>EqualityExpressionReturnValue</Ruby.returnStructName> = define_return_scope </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.returnScope>

    # parser rule equality_expression
    # 
    # (in Cpp.g)
    # 210:1: equality_expression : relational_expression ( ( NOTEQUAL | EQUAL ) relational_expression )* ;
    def equality_expression
      <Ruby.traceIn><else_subtemplate># -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 22)
      </else_subtemplate></Ruby.traceIn><Ruby.ruleScopeSetUp></Ruby.ruleScopeSetUp><AST.ruleDeclarations><Ruby.ruleDeclarations><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate>return_value = <Ruby.returnStructName>EqualityExpressionReturnValue</Ruby.returnStructName>.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(memoize)_subtemplate>equality_expression_start_index = @input.index
      </if(memoize)_subtemplate></Ruby.ruleDeclarations>
      root_0 = nil
      </AST.ruleDeclarations><AST.ruleLabelDefs><Ruby.ruleLabelDefs><ASTParser.anonymous>__NOTEQUAL84__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__EQUAL85__ = nil
      </ASTParser.anonymous><Ruby.ruleLabelDef>relational_expression83 = nil
      </Ruby.ruleLabelDef><Ruby.ruleLabelDef>relational_expression86 = nil
      </Ruby.ruleLabelDef></Ruby.ruleLabelDefs>
      <ASTParser.anonymous>tree_for_NOTEQUAL84 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_EQUAL85 = nil</ASTParser.anonymous>
      </AST.ruleLabelDefs><Ruby.action></Ruby.action>
      <Ruby.region__rule__body><Ruby.ruleBody><if(memoize)_subtemplate><if(backtracking)_subtemplate>success = false # flag used for memoization
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      begin
        <Ruby.ruleMemoization><if(memoize)_subtemplate># rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
        end
        </if(memoize)_subtemplate></Ruby.ruleMemoization><Ruby.ruleBlockSingleAlt><Ruby.region__ruleBlockSingleAlt__prealt></Ruby.region__ruleBlockSingleAlt__prealt><AST.alt><if(autoAST)_subtemplate><if(outerAlt)_subtemplate><if(!rewriteMode)_subtemplate>root_0 = @adaptor.create_flat_list!

        </if(!rewriteMode)_subtemplate></if(outerAlt)_subtemplate></if(autoAST)_subtemplate>
        # at line 211:13: relational_expression ( ( NOTEQUAL | EQUAL ) relational_expression )*
        <Ruby.element><ASTParser.ruleRef><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_relational_expression_IN_equality_expression_1626)
        <if(label)_subtemplate>relational_expression83 = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>relational_expression</ASTParser.<anonymous template argument>></Ruby.methodCall>
        @state.following.pop</Ruby.ruleRef>
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>@adaptor.add_child(root_0, relational_expression83.tree)</ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleRef>
        </Ruby.element><Ruby.element><Ruby.closureBlock># at line 211:35: ( ( NOTEQUAL | EQUAL ) relational_expression )*
        <Ruby.region__closureBlock__loopBody><Ruby.closureBlockLoop>loop do  #loop 31
          alt_31 = 2
          <Ruby.region__closureBlockLoop__decisionBody><Ruby.dfaLoopbackState>look_31_0 = @input.peek(1)

          <Ruby.dfaEdge>if (<Ruby.setTest><Ruby.lookaheadRangeTest>look_31_0.between?(NOTEQUAL, EQUAL)</Ruby.lookaheadRangeTest></Ruby.setTest>) 
            <Ruby.dfaAcceptState>alt_31 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>

          end</Ruby.dfaLoopbackState></Ruby.region__closureBlockLoop__decisionBody>
          case alt_31
          <Ruby.altSwitchCase>when 1
            <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate></if(autoAST)_subtemplate># at line 211:36: ( NOTEQUAL | EQUAL ) relational_expression
            <Ruby.element><Ruby.block># at line 211:36: ( NOTEQUAL | EQUAL )
            alt_30 = 2
            <Ruby.region__block__body><Ruby.blockBody><Ruby.region__blockBody__decision><Ruby.dfaState>look_30_0 = @input.peek(1)

            <Ruby.dfaEdge>if (<Ruby.lookaheadTest>look_30_0 == NOTEQUAL</Ruby.lookaheadTest>) 
              <Ruby.dfaAcceptState>alt_30 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>
            els<Ruby.dfaEdge>if (<Ruby.lookaheadTest>look_30_0 == EQUAL</Ruby.lookaheadTest>) 
              <Ruby.dfaAcceptState>alt_30 = 2</Ruby.dfaAcceptState></Ruby.dfaEdge>
            else
            <else_subtemplate><Ruby.ruleBacktrackFailure><if(backtracking)_subtemplate>@state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
              </if(backtracking)_subtemplate></Ruby.ruleBacktrackFailure>nvae = NoViableAlternative("", 30, 0)
              <Ruby.region__dfaState__noViableAltException>raise nvae</Ruby.region__dfaState__noViableAltException>
            </else_subtemplate>end</Ruby.dfaState></Ruby.region__blockBody__decision>
            case alt_30
            <Ruby.altSwitchCase>when 1
              <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate></if(autoAST)_subtemplate># at line 211:37: NOTEQUAL
              <Ruby.element><ASTParser.tokenRefRuleRoot><Ruby.tokenRef><if(label)_subtemplate>__NOTEQUAL84__ = </if(label)_subtemplate>match(NOTEQUAL, TOKENS_FOLLOWING_NOTEQUAL_IN_equality_expression_1630)</Ruby.tokenRef>
              <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
                <ASTParser.<anonymous template argument>>
                tree_for_NOTEQUAL84 = <ASTParser.createNodeFromToken><else_subtemplate>@adaptor.create_with_payload!(__NOTEQUAL84__)</else_subtemplate></ASTParser.createNodeFromToken>
                root_0 = @adaptor.become_root(tree_for_NOTEQUAL84, root_0)
                </ASTParser.<anonymous template argument>>
              end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.tokenRefRuleRoot>
              </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
            <Ruby.altSwitchCase>when 2
              <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate></if(autoAST)_subtemplate># at line 211:49: EQUAL
              <Ruby.element><ASTParser.tokenRefRuleRoot><Ruby.tokenRef><if(label)_subtemplate>__EQUAL85__ = </if(label)_subtemplate>match(EQUAL, TOKENS_FOLLOWING_EQUAL_IN_equality_expression_1635)</Ruby.tokenRef>
              <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
                <ASTParser.<anonymous template argument>>
                tree_for_EQUAL85 = <ASTParser.createNodeFromToken><else_subtemplate>@adaptor.create_with_payload!(__EQUAL85__)</else_subtemplate></ASTParser.createNodeFromToken>
                root_0 = @adaptor.become_root(tree_for_EQUAL85, root_0)
                </ASTParser.<anonymous template argument>>
              end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.tokenRefRuleRoot>
              </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
            end</Ruby.blockBody></Ruby.region__block__body></Ruby.block>
            </Ruby.element><Ruby.element><ASTParser.ruleRef><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_relational_expression_IN_equality_expression_1639)
            <if(label)_subtemplate>relational_expression86 = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>relational_expression</ASTParser.<anonymous template argument>></Ruby.methodCall>
            @state.following.pop</Ruby.ruleRef>
            <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
              <ASTParser.<anonymous template argument>>@adaptor.add_child(root_0, relational_expression86.tree)</ASTParser.<anonymous template argument>>
            end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleRef>
            </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
          else
            break #loop 31
          end
        end</Ruby.closureBlockLoop></Ruby.region__closureBlock__loopBody></Ruby.closureBlock>
        </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.ruleBlockSingleAlt><ASTParser.ruleCleanUp><Ruby.ruleCleanUp><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(!TREE_PARSER)_subtemplate># - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)
        </if(!TREE_PARSER)_subtemplate></if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.ruleCleanUp>
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>
          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)
          </ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleCleanUp>
      <if(memoize)_subtemplate><if(backtracking)_subtemplate>  success = true
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      <else_subtemplate><if(!emptyRule)_subtemplate><else_subtemplate>rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        <ASTParser.region__ruleBody__setErrorReturnValue>return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)
        </ASTParser.region__ruleBody__setErrorReturnValue></else_subtemplate></if(!emptyRule)_subtemplate></else_subtemplate>
      ensure
        <Ruby.traceOut><else_subtemplate># -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 22)
        </else_subtemplate></Ruby.traceOut><Ruby.memoize><if(memoize)_subtemplate><if(backtracking)_subtemplate>memoize(__method__, equality_expression_start_index, success) if @state.backtracking > 0
        </if(backtracking)_subtemplate></if(memoize)_subtemplate></Ruby.memoize><Ruby.ruleScopeCleanUp></Ruby.ruleScopeCleanUp>
      end</Ruby.ruleBody></Ruby.region__rule__body>
      
      return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
    end
    </Ruby.rule>
    </ASTParser.anonymous><ASTParser.anonymous><Ruby.rule><Ruby.returnScope><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><Ruby.returnStructName>RelationalExpressionReturnValue</Ruby.returnStructName> = define_return_scope </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.returnScope>

    # parser rule relational_expression
    # 
    # (in Cpp.g)
    # 214:1: relational_expression : shift_expression ( ( ( LESSTHAN | GREATERTHAN | LESSTHANOREQUALTO | GREATERTHANOREQUALTO ) shift_expression )* ) ;
    def relational_expression
      <Ruby.traceIn><else_subtemplate># -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 23)
      </else_subtemplate></Ruby.traceIn><Ruby.ruleScopeSetUp></Ruby.ruleScopeSetUp><AST.ruleDeclarations><Ruby.ruleDeclarations><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate>return_value = <Ruby.returnStructName>RelationalExpressionReturnValue</Ruby.returnStructName>.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(memoize)_subtemplate>relational_expression_start_index = @input.index
      </if(memoize)_subtemplate></Ruby.ruleDeclarations>
      root_0 = nil
      </AST.ruleDeclarations><AST.ruleLabelDefs><Ruby.ruleLabelDefs><ASTParser.anonymous>__LESSTHAN88__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__GREATERTHAN89__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__LESSTHANOREQUALTO90__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__GREATERTHANOREQUALTO91__ = nil
      </ASTParser.anonymous><Ruby.ruleLabelDef>shift_expression87 = nil
      </Ruby.ruleLabelDef><Ruby.ruleLabelDef>shift_expression92 = nil
      </Ruby.ruleLabelDef></Ruby.ruleLabelDefs>
      <ASTParser.anonymous>tree_for_LESSTHAN88 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_GREATERTHAN89 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_LESSTHANOREQUALTO90 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_GREATERTHANOREQUALTO91 = nil</ASTParser.anonymous>
      </AST.ruleLabelDefs><Ruby.action></Ruby.action>
      <Ruby.region__rule__body><Ruby.ruleBody><if(memoize)_subtemplate><if(backtracking)_subtemplate>success = false # flag used for memoization
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      begin
        <Ruby.ruleMemoization><if(memoize)_subtemplate># rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
        end
        </if(memoize)_subtemplate></Ruby.ruleMemoization><Ruby.ruleBlockSingleAlt><Ruby.region__ruleBlockSingleAlt__prealt></Ruby.region__ruleBlockSingleAlt__prealt><AST.alt><if(autoAST)_subtemplate><if(outerAlt)_subtemplate><if(!rewriteMode)_subtemplate>root_0 = @adaptor.create_flat_list!

        </if(!rewriteMode)_subtemplate></if(outerAlt)_subtemplate></if(autoAST)_subtemplate>
        # at line 215:13: shift_expression ( ( ( LESSTHAN | GREATERTHAN | LESSTHANOREQUALTO | GREATERTHANOREQUALTO ) shift_expression )* )
        <Ruby.element><ASTParser.ruleRef><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_shift_expression_IN_relational_expression_1664)
        <if(label)_subtemplate>shift_expression87 = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>shift_expression</ASTParser.<anonymous template argument>></Ruby.methodCall>
        @state.following.pop</Ruby.ruleRef>
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>@adaptor.add_child(root_0, shift_expression87.tree)</ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleRef>
        </Ruby.element><Ruby.element><Ruby.blockSingleAlt># at line 216:13: ( ( ( LESSTHAN | GREATERTHAN | LESSTHANOREQUALTO | GREATERTHANOREQUALTO ) shift_expression )* )
        <Ruby.region__blockSingleAlt__prealt></Ruby.region__blockSingleAlt__prealt><AST.alt><if(autoAST)_subtemplate></if(autoAST)_subtemplate># at line 216:21: ( ( LESSTHAN | GREATERTHAN | LESSTHANOREQUALTO | GREATERTHANOREQUALTO ) shift_expression )*
        <Ruby.element><Ruby.closureBlock># at line 216:21: ( ( LESSTHAN | GREATERTHAN | LESSTHANOREQUALTO | GREATERTHANOREQUALTO ) shift_expression )*
        <Ruby.region__closureBlock__loopBody><Ruby.closureBlockLoop>loop do  #loop 33
          alt_33 = 2
          <Ruby.region__closureBlockLoop__decisionBody><Ruby.dfaLoopbackState>look_33_0 = @input.peek(1)

          <Ruby.dfaEdge>if (<Ruby.setTest><Ruby.lookaheadRangeTest>look_33_0.between?(LESSTHAN, GREATERTHANOREQUALTO)</Ruby.lookaheadRangeTest></Ruby.setTest>) 
            <Ruby.dfaAcceptState>alt_33 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>

          end</Ruby.dfaLoopbackState></Ruby.region__closureBlockLoop__decisionBody>
          case alt_33
          <Ruby.altSwitchCase>when 1
            <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate></if(autoAST)_subtemplate># at line 216:29: ( LESSTHAN | GREATERTHAN | LESSTHANOREQUALTO | GREATERTHANOREQUALTO ) shift_expression
            <Ruby.element><Ruby.block># at line 216:29: ( LESSTHAN | GREATERTHAN | LESSTHANOREQUALTO | GREATERTHANOREQUALTO )
            alt_32 = 4
            <Ruby.region__block__body><Ruby.blockBody><Ruby.region__blockBody__decision><Ruby.dfaStateSwitch>case look_32 = @input.peek(1)
            <Ruby.dfaEdgeSwitch>when <ASTParser.anonymous>LESSTHAN</ASTParser.anonymous> then <Ruby.dfaAcceptState>alt_32 = 1</Ruby.dfaAcceptState></Ruby.dfaEdgeSwitch>
            <Ruby.dfaEdgeSwitch>when <ASTParser.anonymous>GREATERTHAN</ASTParser.anonymous> then <Ruby.dfaAcceptState>alt_32 = 2</Ruby.dfaAcceptState></Ruby.dfaEdgeSwitch>
            <Ruby.dfaEdgeSwitch>when <ASTParser.anonymous>LESSTHANOREQUALTO</ASTParser.anonymous> then <Ruby.dfaAcceptState>alt_32 = 3</Ruby.dfaAcceptState></Ruby.dfaEdgeSwitch>
            <Ruby.dfaEdgeSwitch>when <ASTParser.anonymous>GREATERTHANOREQUALTO</ASTParser.anonymous> then <Ruby.dfaAcceptState>alt_32 = 4</Ruby.dfaAcceptState></Ruby.dfaEdgeSwitch>
            else
            <else_subtemplate><Ruby.ruleBacktrackFailure><if(backtracking)_subtemplate>@state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
              </if(backtracking)_subtemplate></Ruby.ruleBacktrackFailure>
              nvae = NoViableAlternative("", 32, 0)
              <Ruby.region__dfaStateSwitch__noViableAltException>raise nvae</Ruby.region__dfaStateSwitch__noViableAltException>
            </else_subtemplate>end</Ruby.dfaStateSwitch></Ruby.region__blockBody__decision>
            case alt_32
            <Ruby.altSwitchCase>when 1
              <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate></if(autoAST)_subtemplate># at line 216:37: LESSTHAN
              <Ruby.element><ASTParser.tokenRefRuleRoot><Ruby.tokenRef><if(label)_subtemplate>__LESSTHAN88__ = </if(label)_subtemplate>match(LESSTHAN, TOKENS_FOLLOWING_LESSTHAN_IN_relational_expression_1702)</Ruby.tokenRef>
              <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
                <ASTParser.<anonymous template argument>>
                tree_for_LESSTHAN88 = <ASTParser.createNodeFromToken><else_subtemplate>@adaptor.create_with_payload!(__LESSTHAN88__)</else_subtemplate></ASTParser.createNodeFromToken>
                root_0 = @adaptor.become_root(tree_for_LESSTHAN88, root_0)
                </ASTParser.<anonymous template argument>>
              end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.tokenRefRuleRoot>
              </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
            <Ruby.altSwitchCase>when 2
              <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate></if(autoAST)_subtemplate># at line 217:25: GREATERTHAN
              <Ruby.element><ASTParser.tokenRefRuleRoot><Ruby.tokenRef><if(label)_subtemplate>__GREATERTHAN89__ = </if(label)_subtemplate>match(GREATERTHAN, TOKENS_FOLLOWING_GREATERTHAN_IN_relational_expression_1729)</Ruby.tokenRef>
              <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
                <ASTParser.<anonymous template argument>>
                tree_for_GREATERTHAN89 = <ASTParser.createNodeFromToken><else_subtemplate>@adaptor.create_with_payload!(__GREATERTHAN89__)</else_subtemplate></ASTParser.createNodeFromToken>
                root_0 = @adaptor.become_root(tree_for_GREATERTHAN89, root_0)
                </ASTParser.<anonymous template argument>>
              end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.tokenRefRuleRoot>
              </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
            <Ruby.altSwitchCase>when 3
              <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate></if(autoAST)_subtemplate># at line 218:25: LESSTHANOREQUALTO
              <Ruby.element><ASTParser.tokenRefRuleRoot><Ruby.tokenRef><if(label)_subtemplate>__LESSTHANOREQUALTO90__ = </if(label)_subtemplate>match(LESSTHANOREQUALTO, TOKENS_FOLLOWING_LESSTHANOREQUALTO_IN_relational_expression_1756)</Ruby.tokenRef>
              <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
                <ASTParser.<anonymous template argument>>
                tree_for_LESSTHANOREQUALTO90 = <ASTParser.createNodeFromToken><else_subtemplate>@adaptor.create_with_payload!(__LESSTHANOREQUALTO90__)</else_subtemplate></ASTParser.createNodeFromToken>
                root_0 = @adaptor.become_root(tree_for_LESSTHANOREQUALTO90, root_0)
                </ASTParser.<anonymous template argument>>
              end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.tokenRefRuleRoot>
              </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
            <Ruby.altSwitchCase>when 4
              <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate></if(autoAST)_subtemplate># at line 219:25: GREATERTHANOREQUALTO
              <Ruby.element><ASTParser.tokenRefRuleRoot><Ruby.tokenRef><if(label)_subtemplate>__GREATERTHANOREQUALTO91__ = </if(label)_subtemplate>match(GREATERTHANOREQUALTO, TOKENS_FOLLOWING_GREATERTHANOREQUALTO_IN_relational_expression_1783)</Ruby.tokenRef>
              <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
                <ASTParser.<anonymous template argument>>
                tree_for_GREATERTHANOREQUALTO91 = <ASTParser.createNodeFromToken><else_subtemplate>@adaptor.create_with_payload!(__GREATERTHANOREQUALTO91__)</else_subtemplate></ASTParser.createNodeFromToken>
                root_0 = @adaptor.become_root(tree_for_GREATERTHANOREQUALTO91, root_0)
                </ASTParser.<anonymous template argument>>
              end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.tokenRefRuleRoot>
              </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
            end</Ruby.blockBody></Ruby.region__block__body></Ruby.block>
            </Ruby.element><Ruby.element><ASTParser.ruleRef><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_shift_expression_IN_relational_expression_1812)
            <if(label)_subtemplate>shift_expression92 = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>shift_expression</ASTParser.<anonymous template argument>></Ruby.methodCall>
            @state.following.pop</Ruby.ruleRef>
            <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
              <ASTParser.<anonymous template argument>>@adaptor.add_child(root_0, shift_expression92.tree)</ASTParser.<anonymous template argument>>
            end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleRef>
            </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
          else
            break #loop 33
          end
        end</Ruby.closureBlockLoop></Ruby.region__closureBlock__loopBody></Ruby.closureBlock>
        </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.blockSingleAlt>
        </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.ruleBlockSingleAlt><ASTParser.ruleCleanUp><Ruby.ruleCleanUp><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(!TREE_PARSER)_subtemplate># - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)
        </if(!TREE_PARSER)_subtemplate></if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.ruleCleanUp>
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>
          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)
          </ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleCleanUp>
      <if(memoize)_subtemplate><if(backtracking)_subtemplate>  success = true
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      <else_subtemplate><if(!emptyRule)_subtemplate><else_subtemplate>rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        <ASTParser.region__ruleBody__setErrorReturnValue>return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)
        </ASTParser.region__ruleBody__setErrorReturnValue></else_subtemplate></if(!emptyRule)_subtemplate></else_subtemplate>
      ensure
        <Ruby.traceOut><else_subtemplate># -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 23)
        </else_subtemplate></Ruby.traceOut><Ruby.memoize><if(memoize)_subtemplate><if(backtracking)_subtemplate>memoize(__method__, relational_expression_start_index, success) if @state.backtracking > 0
        </if(backtracking)_subtemplate></if(memoize)_subtemplate></Ruby.memoize><Ruby.ruleScopeCleanUp></Ruby.ruleScopeCleanUp>
      end</Ruby.ruleBody></Ruby.region__rule__body>
      
      return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
    end
    </Ruby.rule>
    </ASTParser.anonymous><ASTParser.anonymous><Ruby.rule><Ruby.returnScope><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><Ruby.returnStructName>ShiftExpressionReturnValue</Ruby.returnStructName> = define_return_scope </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.returnScope>

    # parser rule shift_expression
    # 
    # (in Cpp.g)
    # 225:1: shift_expression : additive_expression ( ( SHIFTLEFT | SHIFTRIGHT ) additive_expression )* ;
    def shift_expression
      <Ruby.traceIn><else_subtemplate># -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 24)
      </else_subtemplate></Ruby.traceIn><Ruby.ruleScopeSetUp></Ruby.ruleScopeSetUp><AST.ruleDeclarations><Ruby.ruleDeclarations><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate>return_value = <Ruby.returnStructName>ShiftExpressionReturnValue</Ruby.returnStructName>.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(memoize)_subtemplate>shift_expression_start_index = @input.index
      </if(memoize)_subtemplate></Ruby.ruleDeclarations>
      root_0 = nil
      </AST.ruleDeclarations><AST.ruleLabelDefs><Ruby.ruleLabelDefs><ASTParser.anonymous>__SHIFTLEFT94__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__SHIFTRIGHT95__ = nil
      </ASTParser.anonymous><Ruby.ruleLabelDef>additive_expression93 = nil
      </Ruby.ruleLabelDef><Ruby.ruleLabelDef>additive_expression96 = nil
      </Ruby.ruleLabelDef></Ruby.ruleLabelDefs>
      <ASTParser.anonymous>tree_for_SHIFTLEFT94 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_SHIFTRIGHT95 = nil</ASTParser.anonymous>
      </AST.ruleLabelDefs><Ruby.action></Ruby.action>
      <Ruby.region__rule__body><Ruby.ruleBody><if(memoize)_subtemplate><if(backtracking)_subtemplate>success = false # flag used for memoization
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      begin
        <Ruby.ruleMemoization><if(memoize)_subtemplate># rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
        end
        </if(memoize)_subtemplate></Ruby.ruleMemoization><Ruby.ruleBlockSingleAlt><Ruby.region__ruleBlockSingleAlt__prealt></Ruby.region__ruleBlockSingleAlt__prealt><AST.alt><if(autoAST)_subtemplate><if(outerAlt)_subtemplate><if(!rewriteMode)_subtemplate>root_0 = @adaptor.create_flat_list!

        </if(!rewriteMode)_subtemplate></if(outerAlt)_subtemplate></if(autoAST)_subtemplate>
        # at line 226:13: additive_expression ( ( SHIFTLEFT | SHIFTRIGHT ) additive_expression )*
        <Ruby.element><ASTParser.ruleRef><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_additive_expression_IN_shift_expression_1859)
        <if(label)_subtemplate>additive_expression93 = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>additive_expression</ASTParser.<anonymous template argument>></Ruby.methodCall>
        @state.following.pop</Ruby.ruleRef>
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>@adaptor.add_child(root_0, additive_expression93.tree)</ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleRef>
        </Ruby.element><Ruby.element><Ruby.closureBlock># at line 226:33: ( ( SHIFTLEFT | SHIFTRIGHT ) additive_expression )*
        <Ruby.region__closureBlock__loopBody><Ruby.closureBlockLoop>loop do  #loop 35
          alt_35 = 2
          <Ruby.region__closureBlockLoop__decisionBody><Ruby.dfaLoopbackState>look_35_0 = @input.peek(1)

          <Ruby.dfaEdge>if (<Ruby.setTest><Ruby.lookaheadRangeTest>look_35_0.between?(SHIFTLEFT, SHIFTRIGHT)</Ruby.lookaheadRangeTest></Ruby.setTest>) 
            <Ruby.dfaAcceptState>alt_35 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>

          end</Ruby.dfaLoopbackState></Ruby.region__closureBlockLoop__decisionBody>
          case alt_35
          <Ruby.altSwitchCase>when 1
            <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate></if(autoAST)_subtemplate># at line 226:34: ( SHIFTLEFT | SHIFTRIGHT ) additive_expression
            <Ruby.element><Ruby.block># at line 226:34: ( SHIFTLEFT | SHIFTRIGHT )
            alt_34 = 2
            <Ruby.region__block__body><Ruby.blockBody><Ruby.region__blockBody__decision><Ruby.dfaState>look_34_0 = @input.peek(1)

            <Ruby.dfaEdge>if (<Ruby.lookaheadTest>look_34_0 == SHIFTLEFT</Ruby.lookaheadTest>) 
              <Ruby.dfaAcceptState>alt_34 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>
            els<Ruby.dfaEdge>if (<Ruby.lookaheadTest>look_34_0 == SHIFTRIGHT</Ruby.lookaheadTest>) 
              <Ruby.dfaAcceptState>alt_34 = 2</Ruby.dfaAcceptState></Ruby.dfaEdge>
            else
            <else_subtemplate><Ruby.ruleBacktrackFailure><if(backtracking)_subtemplate>@state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
              </if(backtracking)_subtemplate></Ruby.ruleBacktrackFailure>nvae = NoViableAlternative("", 34, 0)
              <Ruby.region__dfaState__noViableAltException>raise nvae</Ruby.region__dfaState__noViableAltException>
            </else_subtemplate>end</Ruby.dfaState></Ruby.region__blockBody__decision>
            case alt_34
            <Ruby.altSwitchCase>when 1
              <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate></if(autoAST)_subtemplate># at line 226:35: SHIFTLEFT
              <Ruby.element><ASTParser.tokenRefRuleRoot><Ruby.tokenRef><if(label)_subtemplate>__SHIFTLEFT94__ = </if(label)_subtemplate>match(SHIFTLEFT, TOKENS_FOLLOWING_SHIFTLEFT_IN_shift_expression_1863)</Ruby.tokenRef>
              <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
                <ASTParser.<anonymous template argument>>
                tree_for_SHIFTLEFT94 = <ASTParser.createNodeFromToken><else_subtemplate>@adaptor.create_with_payload!(__SHIFTLEFT94__)</else_subtemplate></ASTParser.createNodeFromToken>
                root_0 = @adaptor.become_root(tree_for_SHIFTLEFT94, root_0)
                </ASTParser.<anonymous template argument>>
              end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.tokenRefRuleRoot>
              </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
            <Ruby.altSwitchCase>when 2
              <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate></if(autoAST)_subtemplate># at line 226:48: SHIFTRIGHT
              <Ruby.element><ASTParser.tokenRefRuleRoot><Ruby.tokenRef><if(label)_subtemplate>__SHIFTRIGHT95__ = </if(label)_subtemplate>match(SHIFTRIGHT, TOKENS_FOLLOWING_SHIFTRIGHT_IN_shift_expression_1868)</Ruby.tokenRef>
              <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
                <ASTParser.<anonymous template argument>>
                tree_for_SHIFTRIGHT95 = <ASTParser.createNodeFromToken><else_subtemplate>@adaptor.create_with_payload!(__SHIFTRIGHT95__)</else_subtemplate></ASTParser.createNodeFromToken>
                root_0 = @adaptor.become_root(tree_for_SHIFTRIGHT95, root_0)
                </ASTParser.<anonymous template argument>>
              end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.tokenRefRuleRoot>
              </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
            end</Ruby.blockBody></Ruby.region__block__body></Ruby.block>
            </Ruby.element><Ruby.element><ASTParser.ruleRef><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_additive_expression_IN_shift_expression_1872)
            <if(label)_subtemplate>additive_expression96 = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>additive_expression</ASTParser.<anonymous template argument>></Ruby.methodCall>
            @state.following.pop</Ruby.ruleRef>
            <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
              <ASTParser.<anonymous template argument>>@adaptor.add_child(root_0, additive_expression96.tree)</ASTParser.<anonymous template argument>>
            end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleRef>
            </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
          else
            break #loop 35
          end
        end</Ruby.closureBlockLoop></Ruby.region__closureBlock__loopBody></Ruby.closureBlock>
        </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.ruleBlockSingleAlt><ASTParser.ruleCleanUp><Ruby.ruleCleanUp><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(!TREE_PARSER)_subtemplate># - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)
        </if(!TREE_PARSER)_subtemplate></if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.ruleCleanUp>
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>
          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)
          </ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleCleanUp>
      <if(memoize)_subtemplate><if(backtracking)_subtemplate>  success = true
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      <else_subtemplate><if(!emptyRule)_subtemplate><else_subtemplate>rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        <ASTParser.region__ruleBody__setErrorReturnValue>return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)
        </ASTParser.region__ruleBody__setErrorReturnValue></else_subtemplate></if(!emptyRule)_subtemplate></else_subtemplate>
      ensure
        <Ruby.traceOut><else_subtemplate># -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 24)
        </else_subtemplate></Ruby.traceOut><Ruby.memoize><if(memoize)_subtemplate><if(backtracking)_subtemplate>memoize(__method__, shift_expression_start_index, success) if @state.backtracking > 0
        </if(backtracking)_subtemplate></if(memoize)_subtemplate></Ruby.memoize><Ruby.ruleScopeCleanUp></Ruby.ruleScopeCleanUp>
      end</Ruby.ruleBody></Ruby.region__rule__body>
      
      return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
    end
    </Ruby.rule>
    </ASTParser.anonymous><ASTParser.anonymous><Ruby.rule><Ruby.returnScope><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><Ruby.returnStructName>AdditiveExpressionReturnValue</Ruby.returnStructName> = define_return_scope </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.returnScope>

    # parser rule additive_expression
    # 
    # (in Cpp.g)
    # 229:1: additive_expression : multiplicative_expression ( ( PLUS | MINUS ) multiplicative_expression )* ;
    def additive_expression
      <Ruby.traceIn><else_subtemplate># -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 25)
      </else_subtemplate></Ruby.traceIn><Ruby.ruleScopeSetUp></Ruby.ruleScopeSetUp><AST.ruleDeclarations><Ruby.ruleDeclarations><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate>return_value = <Ruby.returnStructName>AdditiveExpressionReturnValue</Ruby.returnStructName>.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(memoize)_subtemplate>additive_expression_start_index = @input.index
      </if(memoize)_subtemplate></Ruby.ruleDeclarations>
      root_0 = nil
      </AST.ruleDeclarations><AST.ruleLabelDefs><Ruby.ruleLabelDefs><ASTParser.anonymous>__PLUS98__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__MINUS99__ = nil
      </ASTParser.anonymous><Ruby.ruleLabelDef>multiplicative_expression97 = nil
      </Ruby.ruleLabelDef><Ruby.ruleLabelDef>multiplicative_expression100 = nil
      </Ruby.ruleLabelDef></Ruby.ruleLabelDefs>
      <ASTParser.anonymous>tree_for_PLUS98 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_MINUS99 = nil</ASTParser.anonymous>
      </AST.ruleLabelDefs><Ruby.action></Ruby.action>
      <Ruby.region__rule__body><Ruby.ruleBody><if(memoize)_subtemplate><if(backtracking)_subtemplate>success = false # flag used for memoization
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      begin
        <Ruby.ruleMemoization><if(memoize)_subtemplate># rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
        end
        </if(memoize)_subtemplate></Ruby.ruleMemoization><Ruby.ruleBlockSingleAlt><Ruby.region__ruleBlockSingleAlt__prealt></Ruby.region__ruleBlockSingleAlt__prealt><AST.alt><if(autoAST)_subtemplate><if(outerAlt)_subtemplate><if(!rewriteMode)_subtemplate>root_0 = @adaptor.create_flat_list!

        </if(!rewriteMode)_subtemplate></if(outerAlt)_subtemplate></if(autoAST)_subtemplate>
        # at line 230:13: multiplicative_expression ( ( PLUS | MINUS ) multiplicative_expression )*
        <Ruby.element><ASTParser.ruleRef><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_multiplicative_expression_IN_additive_expression_1897)
        <if(label)_subtemplate>multiplicative_expression97 = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>multiplicative_expression</ASTParser.<anonymous template argument>></Ruby.methodCall>
        @state.following.pop</Ruby.ruleRef>
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>@adaptor.add_child(root_0, multiplicative_expression97.tree)</ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleRef>
        </Ruby.element><Ruby.element><Ruby.closureBlock># at line 230:39: ( ( PLUS | MINUS ) multiplicative_expression )*
        <Ruby.region__closureBlock__loopBody><Ruby.closureBlockLoop>loop do  #loop 37
          alt_37 = 2
          <Ruby.region__closureBlockLoop__decisionBody><Ruby.dfaLoopbackState>look_37_0 = @input.peek(1)

          <Ruby.dfaEdge>if (<Ruby.setTest><Ruby.lookaheadRangeTest>look_37_0.between?(PLUS, MINUS)</Ruby.lookaheadRangeTest></Ruby.setTest>) 
            <Ruby.dfaAcceptState>alt_37 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>

          end</Ruby.dfaLoopbackState></Ruby.region__closureBlockLoop__decisionBody>
          case alt_37
          <Ruby.altSwitchCase>when 1
            <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate></if(autoAST)_subtemplate># at line 230:40: ( PLUS | MINUS ) multiplicative_expression
            <Ruby.element><Ruby.block># at line 230:40: ( PLUS | MINUS )
            alt_36 = 2
            <Ruby.region__block__body><Ruby.blockBody><Ruby.region__blockBody__decision><Ruby.dfaState>look_36_0 = @input.peek(1)

            <Ruby.dfaEdge>if (<Ruby.lookaheadTest>look_36_0 == PLUS</Ruby.lookaheadTest>) 
              <Ruby.dfaAcceptState>alt_36 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>
            els<Ruby.dfaEdge>if (<Ruby.lookaheadTest>look_36_0 == MINUS</Ruby.lookaheadTest>) 
              <Ruby.dfaAcceptState>alt_36 = 2</Ruby.dfaAcceptState></Ruby.dfaEdge>
            else
            <else_subtemplate><Ruby.ruleBacktrackFailure><if(backtracking)_subtemplate>@state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
              </if(backtracking)_subtemplate></Ruby.ruleBacktrackFailure>nvae = NoViableAlternative("", 36, 0)
              <Ruby.region__dfaState__noViableAltException>raise nvae</Ruby.region__dfaState__noViableAltException>
            </else_subtemplate>end</Ruby.dfaState></Ruby.region__blockBody__decision>
            case alt_36
            <Ruby.altSwitchCase>when 1
              <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate></if(autoAST)_subtemplate># at line 230:41: PLUS
              <Ruby.element><ASTParser.tokenRefRuleRoot><Ruby.tokenRef><if(label)_subtemplate>__PLUS98__ = </if(label)_subtemplate>match(PLUS, TOKENS_FOLLOWING_PLUS_IN_additive_expression_1901)</Ruby.tokenRef>
              <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
                <ASTParser.<anonymous template argument>>
                tree_for_PLUS98 = <ASTParser.createNodeFromToken><else_subtemplate>@adaptor.create_with_payload!(__PLUS98__)</else_subtemplate></ASTParser.createNodeFromToken>
                root_0 = @adaptor.become_root(tree_for_PLUS98, root_0)
                </ASTParser.<anonymous template argument>>
              end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.tokenRefRuleRoot>
              </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
            <Ruby.altSwitchCase>when 2
              <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate></if(autoAST)_subtemplate># at line 230:49: MINUS
              <Ruby.element><ASTParser.tokenRefRuleRoot><Ruby.tokenRef><if(label)_subtemplate>__MINUS99__ = </if(label)_subtemplate>match(MINUS, TOKENS_FOLLOWING_MINUS_IN_additive_expression_1906)</Ruby.tokenRef>
              <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
                <ASTParser.<anonymous template argument>>
                tree_for_MINUS99 = <ASTParser.createNodeFromToken><else_subtemplate>@adaptor.create_with_payload!(__MINUS99__)</else_subtemplate></ASTParser.createNodeFromToken>
                root_0 = @adaptor.become_root(tree_for_MINUS99, root_0)
                </ASTParser.<anonymous template argument>>
              end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.tokenRefRuleRoot>
              </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
            end</Ruby.blockBody></Ruby.region__block__body></Ruby.block>
            </Ruby.element><Ruby.element><ASTParser.ruleRef><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_multiplicative_expression_IN_additive_expression_1910)
            <if(label)_subtemplate>multiplicative_expression100 = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>multiplicative_expression</ASTParser.<anonymous template argument>></Ruby.methodCall>
            @state.following.pop</Ruby.ruleRef>
            <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
              <ASTParser.<anonymous template argument>>@adaptor.add_child(root_0, multiplicative_expression100.tree)</ASTParser.<anonymous template argument>>
            end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleRef>
            </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
          else
            break #loop 37
          end
        end</Ruby.closureBlockLoop></Ruby.region__closureBlock__loopBody></Ruby.closureBlock>
        </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.ruleBlockSingleAlt><ASTParser.ruleCleanUp><Ruby.ruleCleanUp><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(!TREE_PARSER)_subtemplate># - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)
        </if(!TREE_PARSER)_subtemplate></if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.ruleCleanUp>
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>
          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)
          </ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleCleanUp>
      <if(memoize)_subtemplate><if(backtracking)_subtemplate>  success = true
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      <else_subtemplate><if(!emptyRule)_subtemplate><else_subtemplate>rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        <ASTParser.region__ruleBody__setErrorReturnValue>return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)
        </ASTParser.region__ruleBody__setErrorReturnValue></else_subtemplate></if(!emptyRule)_subtemplate></else_subtemplate>
      ensure
        <Ruby.traceOut><else_subtemplate># -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 25)
        </else_subtemplate></Ruby.traceOut><Ruby.memoize><if(memoize)_subtemplate><if(backtracking)_subtemplate>memoize(__method__, additive_expression_start_index, success) if @state.backtracking > 0
        </if(backtracking)_subtemplate></if(memoize)_subtemplate></Ruby.memoize><Ruby.ruleScopeCleanUp></Ruby.ruleScopeCleanUp>
      end</Ruby.ruleBody></Ruby.region__rule__body>
      
      return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
    end
    </Ruby.rule>
    </ASTParser.anonymous><ASTParser.anonymous><Ruby.rule><Ruby.returnScope><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><Ruby.returnStructName>MultiplicativeExpressionReturnValue</Ruby.returnStructName> = define_return_scope </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.returnScope>

    # parser rule multiplicative_expression
    # 
    # (in Cpp.g)
    # 233:1: multiplicative_expression : unary_expression ( ( STAR | DIVIDE | MOD ) unary_expression )* ;
    def multiplicative_expression
      <Ruby.traceIn><else_subtemplate># -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 26)
      </else_subtemplate></Ruby.traceIn><Ruby.ruleScopeSetUp></Ruby.ruleScopeSetUp><AST.ruleDeclarations><Ruby.ruleDeclarations><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate>return_value = <Ruby.returnStructName>MultiplicativeExpressionReturnValue</Ruby.returnStructName>.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(memoize)_subtemplate>multiplicative_expression_start_index = @input.index
      </if(memoize)_subtemplate></Ruby.ruleDeclarations>
      root_0 = nil
      </AST.ruleDeclarations><AST.ruleLabelDefs><Ruby.ruleLabelDefs><ASTParser.anonymous>__STAR102__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__DIVIDE103__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__MOD104__ = nil
      </ASTParser.anonymous><Ruby.ruleLabelDef>unary_expression101 = nil
      </Ruby.ruleLabelDef><Ruby.ruleLabelDef>unary_expression105 = nil
      </Ruby.ruleLabelDef></Ruby.ruleLabelDefs>
      <ASTParser.anonymous>tree_for_STAR102 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_DIVIDE103 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_MOD104 = nil</ASTParser.anonymous>
      </AST.ruleLabelDefs><Ruby.action></Ruby.action>
      <Ruby.region__rule__body><Ruby.ruleBody><if(memoize)_subtemplate><if(backtracking)_subtemplate>success = false # flag used for memoization
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      begin
        <Ruby.ruleMemoization><if(memoize)_subtemplate># rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
        end
        </if(memoize)_subtemplate></Ruby.ruleMemoization><Ruby.ruleBlockSingleAlt><Ruby.region__ruleBlockSingleAlt__prealt></Ruby.region__ruleBlockSingleAlt__prealt><AST.alt><if(autoAST)_subtemplate><if(outerAlt)_subtemplate><if(!rewriteMode)_subtemplate>root_0 = @adaptor.create_flat_list!

        </if(!rewriteMode)_subtemplate></if(outerAlt)_subtemplate></if(autoAST)_subtemplate>
        # at line 234:13: unary_expression ( ( STAR | DIVIDE | MOD ) unary_expression )*
        <Ruby.element><ASTParser.ruleRef><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_unary_expression_IN_multiplicative_expression_1935)
        <if(label)_subtemplate>unary_expression101 = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>unary_expression</ASTParser.<anonymous template argument>></Ruby.methodCall>
        @state.following.pop</Ruby.ruleRef>
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>@adaptor.add_child(root_0, unary_expression101.tree)</ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleRef>
        </Ruby.element><Ruby.element><Ruby.closureBlock># at line 234:30: ( ( STAR | DIVIDE | MOD ) unary_expression )*
        <Ruby.region__closureBlock__loopBody><Ruby.closureBlockLoop>loop do  #loop 39
          alt_39 = 2
          <Ruby.region__closureBlockLoop__decisionBody><Ruby.dfaLoopbackState>look_39_0 = @input.peek(1)

          <Ruby.dfaEdge>if (<Ruby.setTest><Ruby.lookaheadRangeTest>look_39_0.between?(STAR, MOD)</Ruby.lookaheadRangeTest></Ruby.setTest>) 
            <Ruby.dfaAcceptState>alt_39 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>

          end</Ruby.dfaLoopbackState></Ruby.region__closureBlockLoop__decisionBody>
          case alt_39
          <Ruby.altSwitchCase>when 1
            <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate></if(autoAST)_subtemplate># at line 234:31: ( STAR | DIVIDE | MOD ) unary_expression
            <Ruby.element><Ruby.block># at line 234:31: ( STAR | DIVIDE | MOD )
            alt_38 = 3
            <Ruby.region__block__body><Ruby.blockBody><Ruby.region__blockBody__decision><Ruby.dfaStateSwitch>case look_38 = @input.peek(1)
            <Ruby.dfaEdgeSwitch>when <ASTParser.anonymous>STAR</ASTParser.anonymous> then <Ruby.dfaAcceptState>alt_38 = 1</Ruby.dfaAcceptState></Ruby.dfaEdgeSwitch>
            <Ruby.dfaEdgeSwitch>when <ASTParser.anonymous>DIVIDE</ASTParser.anonymous> then <Ruby.dfaAcceptState>alt_38 = 2</Ruby.dfaAcceptState></Ruby.dfaEdgeSwitch>
            <Ruby.dfaEdgeSwitch>when <ASTParser.anonymous>MOD</ASTParser.anonymous> then <Ruby.dfaAcceptState>alt_38 = 3</Ruby.dfaAcceptState></Ruby.dfaEdgeSwitch>
            else
            <else_subtemplate><Ruby.ruleBacktrackFailure><if(backtracking)_subtemplate>@state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
              </if(backtracking)_subtemplate></Ruby.ruleBacktrackFailure>
              nvae = NoViableAlternative("", 38, 0)
              <Ruby.region__dfaStateSwitch__noViableAltException>raise nvae</Ruby.region__dfaStateSwitch__noViableAltException>
            </else_subtemplate>end</Ruby.dfaStateSwitch></Ruby.region__blockBody__decision>
            case alt_38
            <Ruby.altSwitchCase>when 1
              <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate></if(autoAST)_subtemplate># at line 234:32: STAR
              <Ruby.element><ASTParser.tokenRefRuleRoot><Ruby.tokenRef><if(label)_subtemplate>__STAR102__ = </if(label)_subtemplate>match(STAR, TOKENS_FOLLOWING_STAR_IN_multiplicative_expression_1939)</Ruby.tokenRef>
              <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
                <ASTParser.<anonymous template argument>>
                tree_for_STAR102 = <ASTParser.createNodeFromToken><else_subtemplate>@adaptor.create_with_payload!(__STAR102__)</else_subtemplate></ASTParser.createNodeFromToken>
                root_0 = @adaptor.become_root(tree_for_STAR102, root_0)
                </ASTParser.<anonymous template argument>>
              end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.tokenRefRuleRoot>
              </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
            <Ruby.altSwitchCase>when 2
              <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate></if(autoAST)_subtemplate># at line 234:40: DIVIDE
              <Ruby.element><ASTParser.tokenRefRuleRoot><Ruby.tokenRef><if(label)_subtemplate>__DIVIDE103__ = </if(label)_subtemplate>match(DIVIDE, TOKENS_FOLLOWING_DIVIDE_IN_multiplicative_expression_1944)</Ruby.tokenRef>
              <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
                <ASTParser.<anonymous template argument>>
                tree_for_DIVIDE103 = <ASTParser.createNodeFromToken><else_subtemplate>@adaptor.create_with_payload!(__DIVIDE103__)</else_subtemplate></ASTParser.createNodeFromToken>
                root_0 = @adaptor.become_root(tree_for_DIVIDE103, root_0)
                </ASTParser.<anonymous template argument>>
              end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.tokenRefRuleRoot>
              </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
            <Ruby.altSwitchCase>when 3
              <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate></if(autoAST)_subtemplate># at line 234:50: MOD
              <Ruby.element><ASTParser.tokenRefRuleRoot><Ruby.tokenRef><if(label)_subtemplate>__MOD104__ = </if(label)_subtemplate>match(MOD, TOKENS_FOLLOWING_MOD_IN_multiplicative_expression_1949)</Ruby.tokenRef>
              <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
                <ASTParser.<anonymous template argument>>
                tree_for_MOD104 = <ASTParser.createNodeFromToken><else_subtemplate>@adaptor.create_with_payload!(__MOD104__)</else_subtemplate></ASTParser.createNodeFromToken>
                root_0 = @adaptor.become_root(tree_for_MOD104, root_0)
                </ASTParser.<anonymous template argument>>
              end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.tokenRefRuleRoot>
              </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
            end</Ruby.blockBody></Ruby.region__block__body></Ruby.block>
            </Ruby.element><Ruby.element><ASTParser.ruleRef><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_unary_expression_IN_multiplicative_expression_1954)
            <if(label)_subtemplate>unary_expression105 = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>unary_expression</ASTParser.<anonymous template argument>></Ruby.methodCall>
            @state.following.pop</Ruby.ruleRef>
            <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
              <ASTParser.<anonymous template argument>>@adaptor.add_child(root_0, unary_expression105.tree)</ASTParser.<anonymous template argument>>
            end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleRef>
            </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
          else
            break #loop 39
          end
        end</Ruby.closureBlockLoop></Ruby.region__closureBlock__loopBody></Ruby.closureBlock>
        </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.ruleBlockSingleAlt><ASTParser.ruleCleanUp><Ruby.ruleCleanUp><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(!TREE_PARSER)_subtemplate># - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)
        </if(!TREE_PARSER)_subtemplate></if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.ruleCleanUp>
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>
          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)
          </ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleCleanUp>
      <if(memoize)_subtemplate><if(backtracking)_subtemplate>  success = true
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      <else_subtemplate><if(!emptyRule)_subtemplate><else_subtemplate>rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        <ASTParser.region__ruleBody__setErrorReturnValue>return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)
        </ASTParser.region__ruleBody__setErrorReturnValue></else_subtemplate></if(!emptyRule)_subtemplate></else_subtemplate>
      ensure
        <Ruby.traceOut><else_subtemplate># -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 26)
        </else_subtemplate></Ruby.traceOut><Ruby.memoize><if(memoize)_subtemplate><if(backtracking)_subtemplate>memoize(__method__, multiplicative_expression_start_index, success) if @state.backtracking > 0
        </if(backtracking)_subtemplate></if(memoize)_subtemplate></Ruby.memoize><Ruby.ruleScopeCleanUp></Ruby.ruleScopeCleanUp>
      end</Ruby.ruleBody></Ruby.region__rule__body>
      
      return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
    end
    </Ruby.rule>
    </ASTParser.anonymous><ASTParser.anonymous><Ruby.rule><Ruby.returnScope><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><Ruby.returnStructName>UnaryExpressionReturnValue</Ruby.returnStructName> = define_return_scope </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.returnScope>

    # parser rule unary_expression
    # 
    # (in Cpp.g)
    # 237:1: unary_expression : ( PLUSPLUS unary_expression -> ^( PLUSPLUS unary_expression ) | MINUSMINUS unary_expression -> ^( MINUSMINUS unary_expression ) | SIZEOF unary_expression -> ^( SIZEOF unary_expression ) | SIZEOF LPAREN type_name RPAREN -> ^( SIZEOF_TYPE type_name ) | DEFINED type_name -> ^( DEFINED type_name ) | DEFINED LPAREN type_name RPAREN -> ^( DEFINED type_name ) | unary_expression_not_plus_minus );
    def unary_expression
      <Ruby.traceIn><else_subtemplate># -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 27)
      </else_subtemplate></Ruby.traceIn><Ruby.ruleScopeSetUp></Ruby.ruleScopeSetUp><AST.ruleDeclarations><Ruby.ruleDeclarations><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate>return_value = <Ruby.returnStructName>UnaryExpressionReturnValue</Ruby.returnStructName>.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(memoize)_subtemplate>unary_expression_start_index = @input.index
      </if(memoize)_subtemplate></Ruby.ruleDeclarations>
      root_0 = nil
      </AST.ruleDeclarations><AST.ruleLabelDefs><Ruby.ruleLabelDefs><ASTParser.anonymous>__PLUSPLUS106__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__MINUSMINUS108__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__SIZEOF110__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__SIZEOF112__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__LPAREN113__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__RPAREN115__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__DEFINED116__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__DEFINED118__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__LPAREN119__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__RPAREN121__ = nil
      </ASTParser.anonymous><Ruby.ruleLabelDef>unary_expression107 = nil
      </Ruby.ruleLabelDef><Ruby.ruleLabelDef>unary_expression109 = nil
      </Ruby.ruleLabelDef><Ruby.ruleLabelDef>unary_expression111 = nil
      </Ruby.ruleLabelDef><Ruby.ruleLabelDef>type_name114 = nil
      </Ruby.ruleLabelDef><Ruby.ruleLabelDef>type_name117 = nil
      </Ruby.ruleLabelDef><Ruby.ruleLabelDef>type_name120 = nil
      </Ruby.ruleLabelDef><Ruby.ruleLabelDef>unary_expression_not_plus_minus122 = nil
      </Ruby.ruleLabelDef></Ruby.ruleLabelDefs>
      <ASTParser.anonymous>tree_for_PLUSPLUS106 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_MINUSMINUS108 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_SIZEOF110 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_SIZEOF112 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_LPAREN113 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_RPAREN115 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_DEFINED116 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_DEFINED118 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_LPAREN119 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_RPAREN121 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>stream_SIZEOF = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token SIZEOF")</ASTParser.anonymous>
      <ASTParser.anonymous>stream_RPAREN = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token RPAREN")</ASTParser.anonymous>
      <ASTParser.anonymous>stream_MINUSMINUS = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token MINUSMINUS")</ASTParser.anonymous>
      <ASTParser.anonymous>stream_PLUSPLUS = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token PLUSPLUS")</ASTParser.anonymous>
      <ASTParser.anonymous>stream_DEFINED = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token DEFINED")</ASTParser.anonymous>
      <ASTParser.anonymous>stream_LPAREN = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token LPAREN")</ASTParser.anonymous>
      <ASTParser.anonymous>stream_unary_expression = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule unary_expression")</ASTParser.anonymous>
      <ASTParser.anonymous>stream_type_name = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule type_name")</ASTParser.anonymous></AST.ruleLabelDefs><Ruby.action></Ruby.action>
      <Ruby.region__rule__body><Ruby.ruleBody><if(memoize)_subtemplate><if(backtracking)_subtemplate>success = false # flag used for memoization
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      begin
        <Ruby.ruleMemoization><if(memoize)_subtemplate># rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
        end
        </if(memoize)_subtemplate></Ruby.ruleMemoization><Ruby.ruleBlock># at line 238:5: ( PLUSPLUS unary_expression -> ^( PLUSPLUS unary_expression ) | MINUSMINUS unary_expression -> ^( MINUSMINUS unary_expression ) | SIZEOF unary_expression -> ^( SIZEOF unary_expression ) | SIZEOF LPAREN type_name RPAREN -> ^( SIZEOF_TYPE type_name ) | DEFINED type_name -> ^( DEFINED type_name ) | DEFINED LPAREN type_name RPAREN -> ^( DEFINED type_name ) | unary_expression_not_plus_minus )
        alt_40 = 7
        <Ruby.region__ruleBlock__decision><Ruby.dfaDecision>alt_40 = @dfa40.predict(@input)</Ruby.dfaDecision></Ruby.region__ruleBlock__decision>
        case alt_40
        <Ruby.altSwitchCase>when 1
          <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt># at line 238:13: PLUSPLUS unary_expression
          <Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>__PLUSPLUS106__ = </if(label)_subtemplate>match(PLUSPLUS, TOKENS_FOLLOWING_PLUSPLUS_IN_unary_expression_1979)</Ruby.tokenRef></ASTParser.tokenRefBang> 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>stream_PLUSPLUS.add(__PLUSPLUS106__)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
          </Ruby.element><Ruby.element><AST.ruleRefTrack><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_unary_expression_IN_unary_expression_1988)
          <if(label)_subtemplate>unary_expression107 = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>unary_expression</ASTParser.<anonymous template argument>></Ruby.methodCall>
          @state.following.pop</Ruby.ruleRef>
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>stream_unary_expression.add(unary_expression107.tree)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.ruleRefTrack>
          </Ruby.element><AST.rewriteCode># AST Rewrite
          # elements: PLUSPLUS, unary_expression
          # token labels: 
          # rule labels: <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>
            <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
            <AST.rewriteCodeLabels><ASTParser.anonymous>stream_<AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> = <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> ? subtree_stream("rule <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>", <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree) : subtree_stream("token <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>")</ASTParser.anonymous>
            </AST.rewriteCodeLabels>
            root_0 = @adaptor.create_flat_list!
            <AST.rewriteAltFirst><else_subtemplate># 238:46: -> ^( PLUSPLUS unary_expression )
            <AST.rewriteElementList><AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteTree># at line 238:49: ^( PLUSPLUS unary_expression )
            root_1 = @adaptor.create_flat_list!
            <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteTokenRefRoot>root_1 = @adaptor.become_root(<AST.createRewriteNodeFromElement><else_subtemplate><else_subtemplate>stream_PLUSPLUS.next_node</else_subtemplate></else_subtemplate></AST.createRewriteNodeFromElement>, root_1)
            </AST.rewriteTokenRefRoot></AST.rewriteElement>
            <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteRuleRef>@adaptor.add_child(root_1, stream_unary_expression.next_tree)
            </AST.rewriteRuleRef></AST.rewriteElement>
            @adaptor.add_child(root_0, root_1)
            </AST.rewriteTree></AST.rewriteElement></AST.rewriteElementList></else_subtemplate></AST.rewriteAltFirst>


            <if(!TREE_PARSER)_subtemplate><AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
            </if(!TREE_PARSER)_subtemplate></ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.rewriteCode></AST.alt></Ruby.altSwitchCase>
        <Ruby.altSwitchCase>when 2
          <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt># at line 239:13: MINUSMINUS unary_expression
          <Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>__MINUSMINUS108__ = </if(label)_subtemplate>match(MINUSMINUS, TOKENS_FOLLOWING_MINUSMINUS_IN_unary_expression_2010)</Ruby.tokenRef></ASTParser.tokenRefBang> 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>stream_MINUSMINUS.add(__MINUSMINUS108__)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
          </Ruby.element><Ruby.element><AST.ruleRefTrack><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_unary_expression_IN_unary_expression_2017)
          <if(label)_subtemplate>unary_expression109 = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>unary_expression</ASTParser.<anonymous template argument>></Ruby.methodCall>
          @state.following.pop</Ruby.ruleRef>
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>stream_unary_expression.add(unary_expression109.tree)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.ruleRefTrack>
          </Ruby.element><AST.rewriteCode># AST Rewrite
          # elements: unary_expression, MINUSMINUS
          # token labels: 
          # rule labels: <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>
            <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
            <AST.rewriteCodeLabels><ASTParser.anonymous>stream_<AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> = <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> ? subtree_stream("rule <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>", <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree) : subtree_stream("token <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>")</ASTParser.anonymous>
            </AST.rewriteCodeLabels>
            root_0 = @adaptor.create_flat_list!
            <AST.rewriteAltFirst><else_subtemplate># 239:46: -> ^( MINUSMINUS unary_expression )
            <AST.rewriteElementList><AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteTree># at line 239:49: ^( MINUSMINUS unary_expression )
            root_1 = @adaptor.create_flat_list!
            <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteTokenRefRoot>root_1 = @adaptor.become_root(<AST.createRewriteNodeFromElement><else_subtemplate><else_subtemplate>stream_MINUSMINUS.next_node</else_subtemplate></else_subtemplate></AST.createRewriteNodeFromElement>, root_1)
            </AST.rewriteTokenRefRoot></AST.rewriteElement>
            <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteRuleRef>@adaptor.add_child(root_1, stream_unary_expression.next_tree)
            </AST.rewriteRuleRef></AST.rewriteElement>
            @adaptor.add_child(root_0, root_1)
            </AST.rewriteTree></AST.rewriteElement></AST.rewriteElementList></else_subtemplate></AST.rewriteAltFirst>


            <if(!TREE_PARSER)_subtemplate><AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
            </if(!TREE_PARSER)_subtemplate></ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.rewriteCode></AST.alt></Ruby.altSwitchCase>
        <Ruby.altSwitchCase>when 3
          <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt># at line 240:13: SIZEOF unary_expression
          <Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>__SIZEOF110__ = </if(label)_subtemplate>match(SIZEOF, TOKENS_FOLLOWING_SIZEOF_IN_unary_expression_2039)</Ruby.tokenRef></ASTParser.tokenRefBang> 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>stream_SIZEOF.add(__SIZEOF110__)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
          </Ruby.element><Ruby.element><AST.ruleRefTrack><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_unary_expression_IN_unary_expression_2042)
          <if(label)_subtemplate>unary_expression111 = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>unary_expression</ASTParser.<anonymous template argument>></Ruby.methodCall>
          @state.following.pop</Ruby.ruleRef>
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>stream_unary_expression.add(unary_expression111.tree)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.ruleRefTrack>
          </Ruby.element><AST.rewriteCode># AST Rewrite
          # elements: unary_expression, SIZEOF
          # token labels: 
          # rule labels: <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>
            <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
            <AST.rewriteCodeLabels><ASTParser.anonymous>stream_<AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> = <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> ? subtree_stream("rule <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>", <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree) : subtree_stream("token <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>")</ASTParser.anonymous>
            </AST.rewriteCodeLabels>
            root_0 = @adaptor.create_flat_list!
            <AST.rewriteAltFirst><else_subtemplate># 240:38: -> ^( SIZEOF unary_expression )
            <AST.rewriteElementList><AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteTree># at line 240:41: ^( SIZEOF unary_expression )
            root_1 = @adaptor.create_flat_list!
            <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteTokenRefRoot>root_1 = @adaptor.become_root(<AST.createRewriteNodeFromElement><else_subtemplate><else_subtemplate>stream_SIZEOF.next_node</else_subtemplate></else_subtemplate></AST.createRewriteNodeFromElement>, root_1)
            </AST.rewriteTokenRefRoot></AST.rewriteElement>
            <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteRuleRef>@adaptor.add_child(root_1, stream_unary_expression.next_tree)
            </AST.rewriteRuleRef></AST.rewriteElement>
            @adaptor.add_child(root_0, root_1)
            </AST.rewriteTree></AST.rewriteElement></AST.rewriteElementList></else_subtemplate></AST.rewriteAltFirst>


            <if(!TREE_PARSER)_subtemplate><AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
            </if(!TREE_PARSER)_subtemplate></ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.rewriteCode></AST.alt></Ruby.altSwitchCase>
        <Ruby.altSwitchCase>when 4
          <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt># at line 241:13: SIZEOF LPAREN type_name RPAREN
          <Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>__SIZEOF112__ = </if(label)_subtemplate>match(SIZEOF, TOKENS_FOLLOWING_SIZEOF_IN_unary_expression_2064)</Ruby.tokenRef></ASTParser.tokenRefBang> 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>stream_SIZEOF.add(__SIZEOF112__)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
          </Ruby.element><Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>__LPAREN113__ = </if(label)_subtemplate>match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_unary_expression_2067)</Ruby.tokenRef></ASTParser.tokenRefBang> 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>stream_LPAREN.add(__LPAREN113__)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
          </Ruby.element><Ruby.element><AST.ruleRefTrack><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_type_name_IN_unary_expression_2069)
          <if(label)_subtemplate>type_name114 = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>type_name</ASTParser.<anonymous template argument>></Ruby.methodCall>
          @state.following.pop</Ruby.ruleRef>
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>stream_type_name.add(type_name114.tree)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.ruleRefTrack>
          </Ruby.element><Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>__RPAREN115__ = </if(label)_subtemplate>match(RPAREN, TOKENS_FOLLOWING_RPAREN_IN_unary_expression_2071)</Ruby.tokenRef></ASTParser.tokenRefBang> 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>stream_RPAREN.add(__RPAREN115__)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
          </Ruby.element><AST.rewriteCode># AST Rewrite
          # elements: type_name
          # token labels: 
          # rule labels: <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>
            <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
            <AST.rewriteCodeLabels><ASTParser.anonymous>stream_<AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> = <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> ? subtree_stream("rule <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>", <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree) : subtree_stream("token <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>")</ASTParser.anonymous>
            </AST.rewriteCodeLabels>
            root_0 = @adaptor.create_flat_list!
            <AST.rewriteAltFirst><else_subtemplate># 241:45: -> ^( SIZEOF_TYPE type_name )
            <AST.rewriteElementList><AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteTree># at line 241:53: ^( SIZEOF_TYPE type_name )
            root_1 = @adaptor.create_flat_list!
            <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteImaginaryTokenRefRoot>root_1 = @adaptor.become_root(<AST.createImaginaryNode><else_subtemplate><if(!args)_subtemplate>@adaptor.create_from_type!(SIZEOF_TYPE, "SIZEOF_TYPE")</if(!args)_subtemplate></else_subtemplate></AST.createImaginaryNode>, root_1)
            </AST.rewriteImaginaryTokenRefRoot></AST.rewriteElement>
            <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteRuleRef>@adaptor.add_child(root_1, stream_type_name.next_tree)
            </AST.rewriteRuleRef></AST.rewriteElement>
            @adaptor.add_child(root_0, root_1)
            </AST.rewriteTree></AST.rewriteElement></AST.rewriteElementList></else_subtemplate></AST.rewriteAltFirst>


            <if(!TREE_PARSER)_subtemplate><AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
            </if(!TREE_PARSER)_subtemplate></ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.rewriteCode></AST.alt></Ruby.altSwitchCase>
        <Ruby.altSwitchCase>when 5
          <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt># at line 242:13: DEFINED type_name
          <Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>__DEFINED116__ = </if(label)_subtemplate>match(DEFINED, TOKENS_FOLLOWING_DEFINED_IN_unary_expression_2098)</Ruby.tokenRef></ASTParser.tokenRefBang> 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>stream_DEFINED.add(__DEFINED116__)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
          </Ruby.element><Ruby.element><AST.ruleRefTrack><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_type_name_IN_unary_expression_2100)
          <if(label)_subtemplate>type_name117 = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>type_name</ASTParser.<anonymous template argument>></Ruby.methodCall>
          @state.following.pop</Ruby.ruleRef>
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>stream_type_name.add(type_name117.tree)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.ruleRefTrack>
          </Ruby.element><AST.rewriteCode># AST Rewrite
          # elements: DEFINED, type_name
          # token labels: 
          # rule labels: <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>
            <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
            <AST.rewriteCodeLabels><ASTParser.anonymous>stream_<AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> = <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> ? subtree_stream("rule <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>", <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree) : subtree_stream("token <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>")</ASTParser.anonymous>
            </AST.rewriteCodeLabels>
            root_0 = @adaptor.create_flat_list!
            <AST.rewriteAltFirst><else_subtemplate># 242:53: -> ^( DEFINED type_name )
            <AST.rewriteElementList><AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteTree># at line 242:56: ^( DEFINED type_name )
            root_1 = @adaptor.create_flat_list!
            <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteTokenRefRoot>root_1 = @adaptor.become_root(<AST.createRewriteNodeFromElement><else_subtemplate><else_subtemplate>stream_DEFINED.next_node</else_subtemplate></else_subtemplate></AST.createRewriteNodeFromElement>, root_1)
            </AST.rewriteTokenRefRoot></AST.rewriteElement>
            <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteRuleRef>@adaptor.add_child(root_1, stream_type_name.next_tree)
            </AST.rewriteRuleRef></AST.rewriteElement>
            @adaptor.add_child(root_0, root_1)
            </AST.rewriteTree></AST.rewriteElement></AST.rewriteElementList></else_subtemplate></AST.rewriteAltFirst>


            <if(!TREE_PARSER)_subtemplate><AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
            </if(!TREE_PARSER)_subtemplate></ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.rewriteCode></AST.alt></Ruby.altSwitchCase>
        <Ruby.altSwitchCase>when 6
          <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt># at line 243:13: DEFINED LPAREN type_name RPAREN
          <Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>__DEFINED118__ = </if(label)_subtemplate>match(DEFINED, TOKENS_FOLLOWING_DEFINED_IN_unary_expression_2144)</Ruby.tokenRef></ASTParser.tokenRefBang> 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>stream_DEFINED.add(__DEFINED118__)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
          </Ruby.element><Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>__LPAREN119__ = </if(label)_subtemplate>match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_unary_expression_2146)</Ruby.tokenRef></ASTParser.tokenRefBang> 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>stream_LPAREN.add(__LPAREN119__)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
          </Ruby.element><Ruby.element><AST.ruleRefTrack><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_type_name_IN_unary_expression_2148)
          <if(label)_subtemplate>type_name120 = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>type_name</ASTParser.<anonymous template argument>></Ruby.methodCall>
          @state.following.pop</Ruby.ruleRef>
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>stream_type_name.add(type_name120.tree)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.ruleRefTrack>
          </Ruby.element><Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>__RPAREN121__ = </if(label)_subtemplate>match(RPAREN, TOKENS_FOLLOWING_RPAREN_IN_unary_expression_2151)</Ruby.tokenRef></ASTParser.tokenRefBang> 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>stream_RPAREN.add(__RPAREN121__)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
          </Ruby.element><AST.rewriteCode># AST Rewrite
          # elements: DEFINED, type_name
          # token labels: 
          # rule labels: <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>
            <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
            <AST.rewriteCodeLabels><ASTParser.anonymous>stream_<AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> = <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> ? subtree_stream("rule <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>", <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree) : subtree_stream("token <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>")</ASTParser.anonymous>
            </AST.rewriteCodeLabels>
            root_0 = @adaptor.create_flat_list!
            <AST.rewriteAltFirst><else_subtemplate># 243:53: -> ^( DEFINED type_name )
            <AST.rewriteElementList><AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteTree># at line 243:55: ^( DEFINED type_name )
            root_1 = @adaptor.create_flat_list!
            <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteTokenRefRoot>root_1 = @adaptor.become_root(<AST.createRewriteNodeFromElement><else_subtemplate><else_subtemplate>stream_DEFINED.next_node</else_subtemplate></else_subtemplate></AST.createRewriteNodeFromElement>, root_1)
            </AST.rewriteTokenRefRoot></AST.rewriteElement>
            <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteRuleRef>@adaptor.add_child(root_1, stream_type_name.next_tree)
            </AST.rewriteRuleRef></AST.rewriteElement>
            @adaptor.add_child(root_0, root_1)
            </AST.rewriteTree></AST.rewriteElement></AST.rewriteElementList></else_subtemplate></AST.rewriteAltFirst>


            <if(!TREE_PARSER)_subtemplate><AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
            </if(!TREE_PARSER)_subtemplate></ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.rewriteCode></AST.alt></Ruby.altSwitchCase>
        <Ruby.altSwitchCase>when 7
          <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate><if(outerAlt)_subtemplate><if(!rewriteMode)_subtemplate>root_0 = @adaptor.create_flat_list!

          </if(!rewriteMode)_subtemplate></if(outerAlt)_subtemplate></if(autoAST)_subtemplate>
          # at line 244:13: unary_expression_not_plus_minus
          <Ruby.element><ASTParser.ruleRef><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_unary_expression_not_plus_minus_IN_unary_expression_2179)
          <if(label)_subtemplate>unary_expression_not_plus_minus122 = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>unary_expression_not_plus_minus</ASTParser.<anonymous template argument>></Ruby.methodCall>
          @state.following.pop</Ruby.ruleRef>
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>@adaptor.add_child(root_0, unary_expression_not_plus_minus122.tree)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleRef>
          </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
        end</Ruby.ruleBlock><ASTParser.ruleCleanUp><Ruby.ruleCleanUp><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(!TREE_PARSER)_subtemplate># - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)
        </if(!TREE_PARSER)_subtemplate></if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.ruleCleanUp>
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>
          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)
          </ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleCleanUp>
      <if(memoize)_subtemplate><if(backtracking)_subtemplate>  success = true
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      <else_subtemplate><if(!emptyRule)_subtemplate><else_subtemplate>rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        <ASTParser.region__ruleBody__setErrorReturnValue>return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)
        </ASTParser.region__ruleBody__setErrorReturnValue></else_subtemplate></if(!emptyRule)_subtemplate></else_subtemplate>
      ensure
        <Ruby.traceOut><else_subtemplate># -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 27)
        </else_subtemplate></Ruby.traceOut><Ruby.memoize><if(memoize)_subtemplate><if(backtracking)_subtemplate>memoize(__method__, unary_expression_start_index, success) if @state.backtracking > 0
        </if(backtracking)_subtemplate></if(memoize)_subtemplate></Ruby.memoize><Ruby.ruleScopeCleanUp></Ruby.ruleScopeCleanUp>
      end</Ruby.ruleBody></Ruby.region__rule__body>
      
      return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
    end
    </Ruby.rule>
    </ASTParser.anonymous><ASTParser.anonymous><Ruby.rule><Ruby.returnScope><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><Ruby.returnStructName>UnaryExpressionNotPlusMinusReturnValue</Ruby.returnStructName> = define_return_scope </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.returnScope>

    # parser rule unary_expression_not_plus_minus
    # 
    # (in Cpp.g)
    # 247:1: unary_expression_not_plus_minus : ( NOT unary_expression -> ^( NOT unary_expression ) | TILDE unary_expression -> ^( TILDE unary_expression ) | AMPERSAND unary_expression -> ^( REFERANCE unary_expression ) | STAR unary_expression -> ^( POINTER_AT unary_expression ) | MINUS unary_expression -> ^( UNARY_MINUS unary_expression ) | PLUS unary_expression -> ^( UNARY_PLUS unary_expression ) | LPAREN type_name RPAREN unary_expression -> ^( TYPECAST type_name unary_expression ) | postfix_expression );
    def unary_expression_not_plus_minus
      <Ruby.traceIn><else_subtemplate># -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 28)
      </else_subtemplate></Ruby.traceIn><Ruby.ruleScopeSetUp></Ruby.ruleScopeSetUp><AST.ruleDeclarations><Ruby.ruleDeclarations><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate>return_value = <Ruby.returnStructName>UnaryExpressionNotPlusMinusReturnValue</Ruby.returnStructName>.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(memoize)_subtemplate>unary_expression_not_plus_minus_start_index = @input.index
      </if(memoize)_subtemplate></Ruby.ruleDeclarations>
      root_0 = nil
      </AST.ruleDeclarations><AST.ruleLabelDefs><Ruby.ruleLabelDefs><ASTParser.anonymous>__NOT123__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__TILDE125__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__AMPERSAND127__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__STAR129__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__MINUS131__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__PLUS133__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__LPAREN135__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__RPAREN137__ = nil
      </ASTParser.anonymous><Ruby.ruleLabelDef>unary_expression124 = nil
      </Ruby.ruleLabelDef><Ruby.ruleLabelDef>unary_expression126 = nil
      </Ruby.ruleLabelDef><Ruby.ruleLabelDef>unary_expression128 = nil
      </Ruby.ruleLabelDef><Ruby.ruleLabelDef>unary_expression130 = nil
      </Ruby.ruleLabelDef><Ruby.ruleLabelDef>unary_expression132 = nil
      </Ruby.ruleLabelDef><Ruby.ruleLabelDef>unary_expression134 = nil
      </Ruby.ruleLabelDef><Ruby.ruleLabelDef>type_name136 = nil
      </Ruby.ruleLabelDef><Ruby.ruleLabelDef>unary_expression138 = nil
      </Ruby.ruleLabelDef><Ruby.ruleLabelDef>postfix_expression139 = nil
      </Ruby.ruleLabelDef></Ruby.ruleLabelDefs>
      <ASTParser.anonymous>tree_for_NOT123 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_TILDE125 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_AMPERSAND127 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_STAR129 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_MINUS131 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_PLUS133 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_LPAREN135 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_RPAREN137 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>stream_AMPERSAND = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token AMPERSAND")</ASTParser.anonymous>
      <ASTParser.anonymous>stream_RPAREN = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token RPAREN")</ASTParser.anonymous>
      <ASTParser.anonymous>stream_PLUS = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token PLUS")</ASTParser.anonymous>
      <ASTParser.anonymous>stream_STAR = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token STAR")</ASTParser.anonymous>
      <ASTParser.anonymous>stream_NOT = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token NOT")</ASTParser.anonymous>
      <ASTParser.anonymous>stream_MINUS = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token MINUS")</ASTParser.anonymous>
      <ASTParser.anonymous>stream_LPAREN = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token LPAREN")</ASTParser.anonymous>
      <ASTParser.anonymous>stream_TILDE = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token TILDE")</ASTParser.anonymous>
      <ASTParser.anonymous>stream_unary_expression = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule unary_expression")</ASTParser.anonymous>
      <ASTParser.anonymous>stream_type_name = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule type_name")</ASTParser.anonymous></AST.ruleLabelDefs><Ruby.action></Ruby.action>
      <Ruby.region__rule__body><Ruby.ruleBody><if(memoize)_subtemplate><if(backtracking)_subtemplate>success = false # flag used for memoization
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      begin
        <Ruby.ruleMemoization><if(memoize)_subtemplate># rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
        end
        </if(memoize)_subtemplate></Ruby.ruleMemoization><Ruby.ruleBlock># at line 248:5: ( NOT unary_expression -> ^( NOT unary_expression ) | TILDE unary_expression -> ^( TILDE unary_expression ) | AMPERSAND unary_expression -> ^( REFERANCE unary_expression ) | STAR unary_expression -> ^( POINTER_AT unary_expression ) | MINUS unary_expression -> ^( UNARY_MINUS unary_expression ) | PLUS unary_expression -> ^( UNARY_PLUS unary_expression ) | LPAREN type_name RPAREN unary_expression -> ^( TYPECAST type_name unary_expression ) | postfix_expression )
        alt_41 = 8
        <Ruby.region__ruleBlock__decision><Ruby.dfaDecision>alt_41 = @dfa41.predict(@input)</Ruby.dfaDecision></Ruby.region__ruleBlock__decision>
        case alt_41
        <Ruby.altSwitchCase>when 1
          <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt># at line 248:13: NOT unary_expression
          <Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>__NOT123__ = </if(label)_subtemplate>match(NOT, TOKENS_FOLLOWING_NOT_IN_unary_expression_not_plus_minus_2202)</Ruby.tokenRef></ASTParser.tokenRefBang> 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>stream_NOT.add(__NOT123__)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
          </Ruby.element><Ruby.element><AST.ruleRefTrack><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_unary_expression_IN_unary_expression_not_plus_minus_2216)
          <if(label)_subtemplate>unary_expression124 = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>unary_expression</ASTParser.<anonymous template argument>></Ruby.methodCall>
          @state.following.pop</Ruby.ruleRef>
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>stream_unary_expression.add(unary_expression124.tree)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.ruleRefTrack>
          </Ruby.element><AST.rewriteCode># AST Rewrite
          # elements: unary_expression, NOT
          # token labels: 
          # rule labels: <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>
            <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
            <AST.rewriteCodeLabels><ASTParser.anonymous>stream_<AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> = <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> ? subtree_stream("rule <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>", <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree) : subtree_stream("token <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>")</ASTParser.anonymous>
            </AST.rewriteCodeLabels>
            root_0 = @adaptor.create_flat_list!
            <AST.rewriteAltFirst><else_subtemplate># 248:46: -> ^( NOT unary_expression )
            <AST.rewriteElementList><AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteTree># at line 248:54: ^( NOT unary_expression )
            root_1 = @adaptor.create_flat_list!
            <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteTokenRefRoot>root_1 = @adaptor.become_root(<AST.createRewriteNodeFromElement><else_subtemplate><else_subtemplate>stream_NOT.next_node</else_subtemplate></else_subtemplate></AST.createRewriteNodeFromElement>, root_1)
            </AST.rewriteTokenRefRoot></AST.rewriteElement>
            <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteRuleRef>@adaptor.add_child(root_1, stream_unary_expression.next_tree)
            </AST.rewriteRuleRef></AST.rewriteElement>
            @adaptor.add_child(root_0, root_1)
            </AST.rewriteTree></AST.rewriteElement></AST.rewriteElementList></else_subtemplate></AST.rewriteAltFirst>


            <if(!TREE_PARSER)_subtemplate><AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
            </if(!TREE_PARSER)_subtemplate></ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.rewriteCode></AST.alt></Ruby.altSwitchCase>
        <Ruby.altSwitchCase>when 2
          <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt># at line 249:13: TILDE unary_expression
          <Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>__TILDE125__ = </if(label)_subtemplate>match(TILDE, TOKENS_FOLLOWING_TILDE_IN_unary_expression_not_plus_minus_2245)</Ruby.tokenRef></ASTParser.tokenRefBang> 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>stream_TILDE.add(__TILDE125__)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
          </Ruby.element><Ruby.element><AST.ruleRefTrack><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_unary_expression_IN_unary_expression_not_plus_minus_2257)
          <if(label)_subtemplate>unary_expression126 = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>unary_expression</ASTParser.<anonymous template argument>></Ruby.methodCall>
          @state.following.pop</Ruby.ruleRef>
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>stream_unary_expression.add(unary_expression126.tree)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.ruleRefTrack>
          </Ruby.element><AST.rewriteCode># AST Rewrite
          # elements: TILDE, unary_expression
          # token labels: 
          # rule labels: <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>
            <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
            <AST.rewriteCodeLabels><ASTParser.anonymous>stream_<AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> = <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> ? subtree_stream("rule <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>", <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree) : subtree_stream("token <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>")</ASTParser.anonymous>
            </AST.rewriteCodeLabels>
            root_0 = @adaptor.create_flat_list!
            <AST.rewriteAltFirst><else_subtemplate># 249:46: -> ^( TILDE unary_expression )
            <AST.rewriteElementList><AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteTree># at line 249:54: ^( TILDE unary_expression )
            root_1 = @adaptor.create_flat_list!
            <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteTokenRefRoot>root_1 = @adaptor.become_root(<AST.createRewriteNodeFromElement><else_subtemplate><else_subtemplate>stream_TILDE.next_node</else_subtemplate></else_subtemplate></AST.createRewriteNodeFromElement>, root_1)
            </AST.rewriteTokenRefRoot></AST.rewriteElement>
            <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteRuleRef>@adaptor.add_child(root_1, stream_unary_expression.next_tree)
            </AST.rewriteRuleRef></AST.rewriteElement>
            @adaptor.add_child(root_0, root_1)
            </AST.rewriteTree></AST.rewriteElement></AST.rewriteElementList></else_subtemplate></AST.rewriteAltFirst>


            <if(!TREE_PARSER)_subtemplate><AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
            </if(!TREE_PARSER)_subtemplate></ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.rewriteCode></AST.alt></Ruby.altSwitchCase>
        <Ruby.altSwitchCase>when 3
          <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt># at line 250:13: AMPERSAND unary_expression
          <Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>__AMPERSAND127__ = </if(label)_subtemplate>match(AMPERSAND, TOKENS_FOLLOWING_AMPERSAND_IN_unary_expression_not_plus_minus_2292)</Ruby.tokenRef></ASTParser.tokenRefBang> 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>stream_AMPERSAND.add(__AMPERSAND127__)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
          </Ruby.element><Ruby.element><AST.ruleRefTrack><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_unary_expression_IN_unary_expression_not_plus_minus_2300)
          <if(label)_subtemplate>unary_expression128 = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>unary_expression</ASTParser.<anonymous template argument>></Ruby.methodCall>
          @state.following.pop</Ruby.ruleRef>
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>stream_unary_expression.add(unary_expression128.tree)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.ruleRefTrack>
          </Ruby.element><AST.rewriteCode># AST Rewrite
          # elements: unary_expression
          # token labels: 
          # rule labels: <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>
            <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
            <AST.rewriteCodeLabels><ASTParser.anonymous>stream_<AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> = <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> ? subtree_stream("rule <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>", <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree) : subtree_stream("token <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>")</ASTParser.anonymous>
            </AST.rewriteCodeLabels>
            root_0 = @adaptor.create_flat_list!
            <AST.rewriteAltFirst><else_subtemplate># 250:46: -> ^( REFERANCE unary_expression )
            <AST.rewriteElementList><AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteTree># at line 250:54: ^( REFERANCE unary_expression )
            root_1 = @adaptor.create_flat_list!
            <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteImaginaryTokenRefRoot>root_1 = @adaptor.become_root(<AST.createImaginaryNode><else_subtemplate><if(!args)_subtemplate>@adaptor.create_from_type!(REFERANCE, "REFERANCE")</if(!args)_subtemplate></else_subtemplate></AST.createImaginaryNode>, root_1)
            </AST.rewriteImaginaryTokenRefRoot></AST.rewriteElement>
            <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteRuleRef>@adaptor.add_child(root_1, stream_unary_expression.next_tree)
            </AST.rewriteRuleRef></AST.rewriteElement>
            @adaptor.add_child(root_0, root_1)
            </AST.rewriteTree></AST.rewriteElement></AST.rewriteElementList></else_subtemplate></AST.rewriteAltFirst>


            <if(!TREE_PARSER)_subtemplate><AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
            </if(!TREE_PARSER)_subtemplate></ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.rewriteCode></AST.alt></Ruby.altSwitchCase>
        <Ruby.altSwitchCase>when 4
          <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt># at line 251:13: STAR unary_expression
          <Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>__STAR129__ = </if(label)_subtemplate>match(STAR, TOKENS_FOLLOWING_STAR_IN_unary_expression_not_plus_minus_2331)</Ruby.tokenRef></ASTParser.tokenRefBang> 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>stream_STAR.add(__STAR129__)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
          </Ruby.element><Ruby.element><AST.ruleRefTrack><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_unary_expression_IN_unary_expression_not_plus_minus_2344)
          <if(label)_subtemplate>unary_expression130 = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>unary_expression</ASTParser.<anonymous template argument>></Ruby.methodCall>
          @state.following.pop</Ruby.ruleRef>
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>stream_unary_expression.add(unary_expression130.tree)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.ruleRefTrack>
          </Ruby.element><AST.rewriteCode># AST Rewrite
          # elements: unary_expression
          # token labels: 
          # rule labels: <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>
            <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
            <AST.rewriteCodeLabels><ASTParser.anonymous>stream_<AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> = <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> ? subtree_stream("rule <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>", <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree) : subtree_stream("token <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>")</ASTParser.anonymous>
            </AST.rewriteCodeLabels>
            root_0 = @adaptor.create_flat_list!
            <AST.rewriteAltFirst><else_subtemplate># 251:46: -> ^( POINTER_AT unary_expression )
            <AST.rewriteElementList><AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteTree># at line 251:54: ^( POINTER_AT unary_expression )
            root_1 = @adaptor.create_flat_list!
            <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteImaginaryTokenRefRoot>root_1 = @adaptor.become_root(<AST.createImaginaryNode><else_subtemplate><if(!args)_subtemplate>@adaptor.create_from_type!(POINTER_AT, "POINTER_AT")</if(!args)_subtemplate></else_subtemplate></AST.createImaginaryNode>, root_1)
            </AST.rewriteImaginaryTokenRefRoot></AST.rewriteElement>
            <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteRuleRef>@adaptor.add_child(root_1, stream_unary_expression.next_tree)
            </AST.rewriteRuleRef></AST.rewriteElement>
            @adaptor.add_child(root_0, root_1)
            </AST.rewriteTree></AST.rewriteElement></AST.rewriteElementList></else_subtemplate></AST.rewriteAltFirst>


            <if(!TREE_PARSER)_subtemplate><AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
            </if(!TREE_PARSER)_subtemplate></ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.rewriteCode></AST.alt></Ruby.altSwitchCase>
        <Ruby.altSwitchCase>when 5
          <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt># at line 252:13: MINUS unary_expression
          <Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>__MINUS131__ = </if(label)_subtemplate>match(MINUS, TOKENS_FOLLOWING_MINUS_IN_unary_expression_not_plus_minus_2374)</Ruby.tokenRef></ASTParser.tokenRefBang> 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>stream_MINUS.add(__MINUS131__)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
          </Ruby.element><Ruby.element><AST.ruleRefTrack><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_unary_expression_IN_unary_expression_not_plus_minus_2377)
          <if(label)_subtemplate>unary_expression132 = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>unary_expression</ASTParser.<anonymous template argument>></Ruby.methodCall>
          @state.following.pop</Ruby.ruleRef>
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>stream_unary_expression.add(unary_expression132.tree)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.ruleRefTrack>
          </Ruby.element><AST.rewriteCode># AST Rewrite
          # elements: unary_expression
          # token labels: 
          # rule labels: <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>
            <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
            <AST.rewriteCodeLabels><ASTParser.anonymous>stream_<AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> = <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> ? subtree_stream("rule <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>", <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree) : subtree_stream("token <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>")</ASTParser.anonymous>
            </AST.rewriteCodeLabels>
            root_0 = @adaptor.create_flat_list!
            <AST.rewriteAltFirst><else_subtemplate># 252:38: -> ^( UNARY_MINUS unary_expression )
            <AST.rewriteElementList><AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteTree># at line 252:41: ^( UNARY_MINUS unary_expression )
            root_1 = @adaptor.create_flat_list!
            <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteImaginaryTokenRefRoot>root_1 = @adaptor.become_root(<AST.createImaginaryNode><else_subtemplate><if(!args)_subtemplate>@adaptor.create_from_type!(UNARY_MINUS, "UNARY_MINUS")</if(!args)_subtemplate></else_subtemplate></AST.createImaginaryNode>, root_1)
            </AST.rewriteImaginaryTokenRefRoot></AST.rewriteElement>
            <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteRuleRef>@adaptor.add_child(root_1, stream_unary_expression.next_tree)
            </AST.rewriteRuleRef></AST.rewriteElement>
            @adaptor.add_child(root_0, root_1)
            </AST.rewriteTree></AST.rewriteElement></AST.rewriteElementList></else_subtemplate></AST.rewriteAltFirst>


            <if(!TREE_PARSER)_subtemplate><AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
            </if(!TREE_PARSER)_subtemplate></ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.rewriteCode></AST.alt></Ruby.altSwitchCase>
        <Ruby.altSwitchCase>when 6
          <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt># at line 253:13: PLUS unary_expression
          <Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>__PLUS133__ = </if(label)_subtemplate>match(PLUS, TOKENS_FOLLOWING_PLUS_IN_unary_expression_not_plus_minus_2400)</Ruby.tokenRef></ASTParser.tokenRefBang> 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>stream_PLUS.add(__PLUS133__)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
          </Ruby.element><Ruby.element><AST.ruleRefTrack><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_unary_expression_IN_unary_expression_not_plus_minus_2404)
          <if(label)_subtemplate>unary_expression134 = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>unary_expression</ASTParser.<anonymous template argument>></Ruby.methodCall>
          @state.following.pop</Ruby.ruleRef>
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>stream_unary_expression.add(unary_expression134.tree)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.ruleRefTrack>
          </Ruby.element><AST.rewriteCode># AST Rewrite
          # elements: unary_expression
          # token labels: 
          # rule labels: <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>
            <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
            <AST.rewriteCodeLabels><ASTParser.anonymous>stream_<AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> = <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> ? subtree_stream("rule <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>", <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree) : subtree_stream("token <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>")</ASTParser.anonymous>
            </AST.rewriteCodeLabels>
            root_0 = @adaptor.create_flat_list!
            <AST.rewriteAltFirst><else_subtemplate># 253:38: -> ^( UNARY_PLUS unary_expression )
            <AST.rewriteElementList><AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteTree># at line 253:41: ^( UNARY_PLUS unary_expression )
            root_1 = @adaptor.create_flat_list!
            <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteImaginaryTokenRefRoot>root_1 = @adaptor.become_root(<AST.createImaginaryNode><else_subtemplate><if(!args)_subtemplate>@adaptor.create_from_type!(UNARY_PLUS, "UNARY_PLUS")</if(!args)_subtemplate></else_subtemplate></AST.createImaginaryNode>, root_1)
            </AST.rewriteImaginaryTokenRefRoot></AST.rewriteElement>
            <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteRuleRef>@adaptor.add_child(root_1, stream_unary_expression.next_tree)
            </AST.rewriteRuleRef></AST.rewriteElement>
            @adaptor.add_child(root_0, root_1)
            </AST.rewriteTree></AST.rewriteElement></AST.rewriteElementList></else_subtemplate></AST.rewriteAltFirst>


            <if(!TREE_PARSER)_subtemplate><AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
            </if(!TREE_PARSER)_subtemplate></ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.rewriteCode></AST.alt></Ruby.altSwitchCase>
        <Ruby.altSwitchCase>when 7
          <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt># at line 254:13: LPAREN type_name RPAREN unary_expression
          <Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>__LPAREN135__ = </if(label)_subtemplate>match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_unary_expression_not_plus_minus_2427)</Ruby.tokenRef></ASTParser.tokenRefBang> 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>stream_LPAREN.add(__LPAREN135__)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
          </Ruby.element><Ruby.element><AST.ruleRefTrack><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_type_name_IN_unary_expression_not_plus_minus_2429)
          <if(label)_subtemplate>type_name136 = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>type_name</ASTParser.<anonymous template argument>></Ruby.methodCall>
          @state.following.pop</Ruby.ruleRef>
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>stream_type_name.add(type_name136.tree)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.ruleRefTrack>
          </Ruby.element><Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>__RPAREN137__ = </if(label)_subtemplate>match(RPAREN, TOKENS_FOLLOWING_RPAREN_IN_unary_expression_not_plus_minus_2431)</Ruby.tokenRef></ASTParser.tokenRefBang> 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>stream_RPAREN.add(__RPAREN137__)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
          </Ruby.element><Ruby.element><AST.ruleRefTrack><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_unary_expression_IN_unary_expression_not_plus_minus_2434)
          <if(label)_subtemplate>unary_expression138 = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>unary_expression</ASTParser.<anonymous template argument>></Ruby.methodCall>
          @state.following.pop</Ruby.ruleRef>
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>stream_unary_expression.add(unary_expression138.tree)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.ruleRefTrack>
          </Ruby.element><AST.rewriteCode># AST Rewrite
          # elements: unary_expression, type_name
          # token labels: 
          # rule labels: <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>
            <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
            <AST.rewriteCodeLabels><ASTParser.anonymous>stream_<AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> = <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> ? subtree_stream("rule <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>", <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree) : subtree_stream("token <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>")</ASTParser.anonymous>
            </AST.rewriteCodeLabels>
            root_0 = @adaptor.create_flat_list!
            <AST.rewriteAltFirst><else_subtemplate># 254:55: -> ^( TYPECAST type_name unary_expression )
            <AST.rewriteElementList><AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteTree># at line 254:58: ^( TYPECAST type_name unary_expression )
            root_1 = @adaptor.create_flat_list!
            <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteImaginaryTokenRefRoot>root_1 = @adaptor.become_root(<AST.createImaginaryNode><else_subtemplate><if(!args)_subtemplate>@adaptor.create_from_type!(TYPECAST, "TYPECAST")</if(!args)_subtemplate></else_subtemplate></AST.createImaginaryNode>, root_1)
            </AST.rewriteImaginaryTokenRefRoot></AST.rewriteElement>
            <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteRuleRef>@adaptor.add_child(root_1, stream_type_name.next_tree)
            </AST.rewriteRuleRef></AST.rewriteElement><AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteRuleRef>@adaptor.add_child(root_1, stream_unary_expression.next_tree)
            </AST.rewriteRuleRef></AST.rewriteElement>
            @adaptor.add_child(root_0, root_1)
            </AST.rewriteTree></AST.rewriteElement></AST.rewriteElementList></else_subtemplate></AST.rewriteAltFirst>


            <if(!TREE_PARSER)_subtemplate><AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
            </if(!TREE_PARSER)_subtemplate></ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.rewriteCode></AST.alt></Ruby.altSwitchCase>
        <Ruby.altSwitchCase>when 8
          <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate><if(outerAlt)_subtemplate><if(!rewriteMode)_subtemplate>root_0 = @adaptor.create_flat_list!

          </if(!rewriteMode)_subtemplate></if(outerAlt)_subtemplate></if(autoAST)_subtemplate>
          # at line 255:13: postfix_expression
          <Ruby.element><ASTParser.ruleRef><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_postfix_expression_IN_unary_expression_not_plus_minus_2458)
          <if(label)_subtemplate>postfix_expression139 = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>postfix_expression</ASTParser.<anonymous template argument>></Ruby.methodCall>
          @state.following.pop</Ruby.ruleRef>
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>@adaptor.add_child(root_0, postfix_expression139.tree)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleRef>
          </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
        end</Ruby.ruleBlock><ASTParser.ruleCleanUp><Ruby.ruleCleanUp><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(!TREE_PARSER)_subtemplate># - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)
        </if(!TREE_PARSER)_subtemplate></if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.ruleCleanUp>
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>
          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)
          </ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleCleanUp>
      <if(memoize)_subtemplate><if(backtracking)_subtemplate>  success = true
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      <else_subtemplate><if(!emptyRule)_subtemplate><else_subtemplate>rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        <ASTParser.region__ruleBody__setErrorReturnValue>return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)
        </ASTParser.region__ruleBody__setErrorReturnValue></else_subtemplate></if(!emptyRule)_subtemplate></else_subtemplate>
      ensure
        <Ruby.traceOut><else_subtemplate># -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 28)
        </else_subtemplate></Ruby.traceOut><Ruby.memoize><if(memoize)_subtemplate><if(backtracking)_subtemplate>memoize(__method__, unary_expression_not_plus_minus_start_index, success) if @state.backtracking > 0
        </if(backtracking)_subtemplate></if(memoize)_subtemplate></Ruby.memoize><Ruby.ruleScopeCleanUp></Ruby.ruleScopeCleanUp>
      end</Ruby.ruleBody></Ruby.region__rule__body>
      
      return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
    end
    </Ruby.rule>
    </ASTParser.anonymous><ASTParser.anonymous><Ruby.rule><Ruby.returnScope><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><Ruby.returnStructName>PostfixExpressionReturnValue</Ruby.returnStructName> = define_return_scope </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.returnScope>

    # parser rule postfix_expression
    # 
    # (in Cpp.g)
    # 258:1: postfix_expression : primary_expression (l= LSQUARE assignment_expression RSQUARE | DOT IDENTIFIER | s= STAR IDENTIFIER | POINTERTO IDENTIFIER | p= PLUSPLUS | m= MINUSMINUS )* ;
    def postfix_expression
      <Ruby.traceIn><else_subtemplate># -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 29)
      </else_subtemplate></Ruby.traceIn><Ruby.ruleScopeSetUp></Ruby.ruleScopeSetUp><AST.ruleDeclarations><Ruby.ruleDeclarations><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate>return_value = <Ruby.returnStructName>PostfixExpressionReturnValue</Ruby.returnStructName>.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(memoize)_subtemplate>postfix_expression_start_index = @input.index
      </if(memoize)_subtemplate></Ruby.ruleDeclarations>
      root_0 = nil
      </AST.ruleDeclarations><AST.ruleLabelDefs><Ruby.ruleLabelDefs><ASTParser.anonymous>l = nil
      </ASTParser.anonymous><ASTParser.anonymous>s = nil
      </ASTParser.anonymous><ASTParser.anonymous>p = nil
      </ASTParser.anonymous><ASTParser.anonymous>m = nil
      </ASTParser.anonymous><ASTParser.anonymous>__RSQUARE142__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__DOT143__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__IDENTIFIER144__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__IDENTIFIER145__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__POINTERTO146__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__IDENTIFIER147__ = nil
      </ASTParser.anonymous><Ruby.ruleLabelDef>primary_expression140 = nil
      </Ruby.ruleLabelDef><Ruby.ruleLabelDef>assignment_expression141 = nil
      </Ruby.ruleLabelDef></Ruby.ruleLabelDefs>
      <ASTParser.anonymous>tree_for_l = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_s = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_p = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_m = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_RSQUARE142 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_DOT143 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_IDENTIFIER144 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_IDENTIFIER145 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_POINTERTO146 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_IDENTIFIER147 = nil</ASTParser.anonymous>
      </AST.ruleLabelDefs><Ruby.action></Ruby.action>
      <Ruby.region__rule__body><Ruby.ruleBody><if(memoize)_subtemplate><if(backtracking)_subtemplate>success = false # flag used for memoization
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      begin
        <Ruby.ruleMemoization><if(memoize)_subtemplate># rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
        end
        </if(memoize)_subtemplate></Ruby.ruleMemoization><Ruby.ruleBlockSingleAlt><Ruby.region__ruleBlockSingleAlt__prealt></Ruby.region__ruleBlockSingleAlt__prealt><AST.alt><if(autoAST)_subtemplate><if(outerAlt)_subtemplate><if(!rewriteMode)_subtemplate>root_0 = @adaptor.create_flat_list!

        </if(!rewriteMode)_subtemplate></if(outerAlt)_subtemplate></if(autoAST)_subtemplate>
        # at line 259:9: primary_expression (l= LSQUARE assignment_expression RSQUARE | DOT IDENTIFIER | s= STAR IDENTIFIER | POINTERTO IDENTIFIER | p= PLUSPLUS | m= MINUSMINUS )*
        <Ruby.element><ASTParser.ruleRef><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_primary_expression_IN_postfix_expression_2477)
        <if(label)_subtemplate>primary_expression140 = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>primary_expression</ASTParser.<anonymous template argument>></Ruby.methodCall>
        @state.following.pop</Ruby.ruleRef>
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>@adaptor.add_child(root_0, primary_expression140.tree)</ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleRef>
        </Ruby.element><Ruby.element><Ruby.closureBlock># at line 260:5: (l= LSQUARE assignment_expression RSQUARE | DOT IDENTIFIER | s= STAR IDENTIFIER | POINTERTO IDENTIFIER | p= PLUSPLUS | m= MINUSMINUS )*
        <Ruby.region__closureBlock__loopBody><Ruby.closureBlockLoop>loop do  #loop 42
          alt_42 = 7
          <Ruby.region__closureBlockLoop__decisionBody><Ruby.dfaDecision>alt_42 = @dfa42.predict(@input)</Ruby.dfaDecision></Ruby.region__closureBlockLoop__decisionBody>
          case alt_42
          <Ruby.altSwitchCase>when 1
            <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate></if(autoAST)_subtemplate># at line 260:9: l= LSQUARE assignment_expression RSQUARE
            <Ruby.element><ASTParser.tokenRefRuleRoot><Ruby.tokenRef><if(label)_subtemplate>l = </if(label)_subtemplate>match(LSQUARE, TOKENS_FOLLOWING_LSQUARE_IN_postfix_expression_2489)</Ruby.tokenRef>
            <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
              <ASTParser.<anonymous template argument>>
              tree_for_l = <ASTParser.createNodeFromToken><else_subtemplate>@adaptor.create_with_payload!(l)</else_subtemplate></ASTParser.createNodeFromToken>
              root_0 = @adaptor.become_root(tree_for_l, root_0)
              </ASTParser.<anonymous template argument>>
            end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.tokenRefRuleRoot>
            </Ruby.element><Ruby.element><Ruby.execAction><if(backtracking)_subtemplate># syntactic predicate action gate test
            if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
              # --> action
              l.type = INDEX_OP
              # <-- action
            end</if(backtracking)_subtemplate></Ruby.execAction>
            </Ruby.element><Ruby.element><ASTParser.ruleRef><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_assignment_expression_IN_postfix_expression_2494)
            <if(label)_subtemplate>assignment_expression141 = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>assignment_expression</ASTParser.<anonymous template argument>></Ruby.methodCall>
            @state.following.pop</Ruby.ruleRef>
            <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
              <ASTParser.<anonymous template argument>>@adaptor.add_child(root_0, assignment_expression141.tree)</ASTParser.<anonymous template argument>>
            end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleRef>
            </Ruby.element><Ruby.element><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>__RSQUARE142__ = </if(label)_subtemplate>match(RSQUARE, TOKENS_FOLLOWING_RSQUARE_IN_postfix_expression_2496)</Ruby.tokenRef></ASTParser.tokenRefBang>
            </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
          <Ruby.altSwitchCase>when 2
            <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate></if(autoAST)_subtemplate># at line 261:9: DOT IDENTIFIER
            <Ruby.element><ASTParser.tokenRefRuleRoot><Ruby.tokenRef><if(label)_subtemplate>__DOT143__ = </if(label)_subtemplate>match(DOT, TOKENS_FOLLOWING_DOT_IN_postfix_expression_2507)</Ruby.tokenRef>
            <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
              <ASTParser.<anonymous template argument>>
              tree_for_DOT143 = <ASTParser.createNodeFromToken><else_subtemplate>@adaptor.create_with_payload!(__DOT143__)</else_subtemplate></ASTParser.createNodeFromToken>
              root_0 = @adaptor.become_root(tree_for_DOT143, root_0)
              </ASTParser.<anonymous template argument>>
            end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.tokenRefRuleRoot>
            </Ruby.element><Ruby.element><ASTParser.tokenRef><Ruby.tokenRef><if(label)_subtemplate>__IDENTIFIER144__ = </if(label)_subtemplate>match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_postfix_expression_2516)</Ruby.tokenRef>
            <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
              <ASTParser.<anonymous template argument>>
              tree_for_IDENTIFIER144 = <ASTParser.createNodeFromToken><else_subtemplate>@adaptor.create_with_payload!(__IDENTIFIER144__)</else_subtemplate></ASTParser.createNodeFromToken>
              @adaptor.add_child(root_0, tree_for_IDENTIFIER144)
              </ASTParser.<anonymous template argument>>
            end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.tokenRef>
            </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
          <Ruby.altSwitchCase>when 3
            <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate></if(autoAST)_subtemplate># at line 262:9: s= STAR IDENTIFIER
            <Ruby.element><ASTParser.tokenRefRuleRoot><Ruby.tokenRef><if(label)_subtemplate>s = </if(label)_subtemplate>match(STAR, TOKENS_FOLLOWING_STAR_IN_postfix_expression_2528)</Ruby.tokenRef>
            <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
              <ASTParser.<anonymous template argument>>
              tree_for_s = <ASTParser.createNodeFromToken><else_subtemplate>@adaptor.create_with_payload!(s)</else_subtemplate></ASTParser.createNodeFromToken>
              root_0 = @adaptor.become_root(tree_for_s, root_0)
              </ASTParser.<anonymous template argument>>
            end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.tokenRefRuleRoot>
            </Ruby.element><Ruby.element><Ruby.execAction><if(backtracking)_subtemplate># syntactic predicate action gate test
            if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
              # --> action
              s.type = POINTER
              # <-- action
            end</if(backtracking)_subtemplate></Ruby.execAction>
            </Ruby.element><Ruby.element><ASTParser.tokenRef><Ruby.tokenRef><if(label)_subtemplate>__IDENTIFIER145__ = </if(label)_subtemplate>match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_postfix_expression_2537)</Ruby.tokenRef>
            <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
              <ASTParser.<anonymous template argument>>
              tree_for_IDENTIFIER145 = <ASTParser.createNodeFromToken><else_subtemplate>@adaptor.create_with_payload!(__IDENTIFIER145__)</else_subtemplate></ASTParser.createNodeFromToken>
              @adaptor.add_child(root_0, tree_for_IDENTIFIER145)
              </ASTParser.<anonymous template argument>>
            end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.tokenRef>
            </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
          <Ruby.altSwitchCase>when 4
            <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate></if(autoAST)_subtemplate># at line 263:9: POINTERTO IDENTIFIER
            <Ruby.element><ASTParser.tokenRefRuleRoot><Ruby.tokenRef><if(label)_subtemplate>__POINTERTO146__ = </if(label)_subtemplate>match(POINTERTO, TOKENS_FOLLOWING_POINTERTO_IN_postfix_expression_2547)</Ruby.tokenRef>
            <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
              <ASTParser.<anonymous template argument>>
              tree_for_POINTERTO146 = <ASTParser.createNodeFromToken><else_subtemplate>@adaptor.create_with_payload!(__POINTERTO146__)</else_subtemplate></ASTParser.createNodeFromToken>
              root_0 = @adaptor.become_root(tree_for_POINTERTO146, root_0)
              </ASTParser.<anonymous template argument>>
            end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.tokenRefRuleRoot>
            </Ruby.element><Ruby.element><ASTParser.tokenRef><Ruby.tokenRef><if(label)_subtemplate>__IDENTIFIER147__ = </if(label)_subtemplate>match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_postfix_expression_2550)</Ruby.tokenRef>
            <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
              <ASTParser.<anonymous template argument>>
              tree_for_IDENTIFIER147 = <ASTParser.createNodeFromToken><else_subtemplate>@adaptor.create_with_payload!(__IDENTIFIER147__)</else_subtemplate></ASTParser.createNodeFromToken>
              @adaptor.add_child(root_0, tree_for_IDENTIFIER147)
              </ASTParser.<anonymous template argument>>
            end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.tokenRef>
            </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
          <Ruby.altSwitchCase>when 5
            <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate></if(autoAST)_subtemplate># at line 264:9: p= PLUSPLUS
            <Ruby.element><ASTParser.tokenRefRuleRoot><Ruby.tokenRef><if(label)_subtemplate>p = </if(label)_subtemplate>match(PLUSPLUS, TOKENS_FOLLOWING_PLUSPLUS_IN_postfix_expression_2562)</Ruby.tokenRef>
            <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
              <ASTParser.<anonymous template argument>>
              tree_for_p = <ASTParser.createNodeFromToken><else_subtemplate>@adaptor.create_with_payload!(p)</else_subtemplate></ASTParser.createNodeFromToken>
              root_0 = @adaptor.become_root(tree_for_p, root_0)
              </ASTParser.<anonymous template argument>>
            end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.tokenRefRuleRoot>
            </Ruby.element><Ruby.element><Ruby.execAction><if(backtracking)_subtemplate># syntactic predicate action gate test
            if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
              # --> action
              p.type = POST_INC
              # <-- action
            end</if(backtracking)_subtemplate></Ruby.execAction>
            </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
          <Ruby.altSwitchCase>when 6
            <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate></if(autoAST)_subtemplate># at line 265:9: m= MINUSMINUS
            <Ruby.element><ASTParser.tokenRefRuleRoot><Ruby.tokenRef><if(label)_subtemplate>m = </if(label)_subtemplate>match(MINUSMINUS, TOKENS_FOLLOWING_MINUSMINUS_IN_postfix_expression_2579)</Ruby.tokenRef>
            <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
              <ASTParser.<anonymous template argument>>
              tree_for_m = <ASTParser.createNodeFromToken><else_subtemplate>@adaptor.create_with_payload!(m)</else_subtemplate></ASTParser.createNodeFromToken>
              root_0 = @adaptor.become_root(tree_for_m, root_0)
              </ASTParser.<anonymous template argument>>
            end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.tokenRefRuleRoot>
            </Ruby.element><Ruby.element><Ruby.execAction><if(backtracking)_subtemplate># syntactic predicate action gate test
            if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
              # --> action
              m.type = POST_DEC
              # <-- action
            end</if(backtracking)_subtemplate></Ruby.execAction>
            </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
          else
            break #loop 42
          end
        end</Ruby.closureBlockLoop></Ruby.region__closureBlock__loopBody></Ruby.closureBlock>
        </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.ruleBlockSingleAlt><ASTParser.ruleCleanUp><Ruby.ruleCleanUp><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(!TREE_PARSER)_subtemplate># - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)
        </if(!TREE_PARSER)_subtemplate></if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.ruleCleanUp>
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>
          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)
          </ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleCleanUp>
      <if(memoize)_subtemplate><if(backtracking)_subtemplate>  success = true
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      <else_subtemplate><if(!emptyRule)_subtemplate><else_subtemplate>rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        <ASTParser.region__ruleBody__setErrorReturnValue>return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)
        </ASTParser.region__ruleBody__setErrorReturnValue></else_subtemplate></if(!emptyRule)_subtemplate></else_subtemplate>
      ensure
        <Ruby.traceOut><else_subtemplate># -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 29)
        </else_subtemplate></Ruby.traceOut><Ruby.memoize><if(memoize)_subtemplate><if(backtracking)_subtemplate>memoize(__method__, postfix_expression_start_index, success) if @state.backtracking > 0
        </if(backtracking)_subtemplate></if(memoize)_subtemplate></Ruby.memoize><Ruby.ruleScopeCleanUp></Ruby.ruleScopeCleanUp>
      end</Ruby.ruleBody></Ruby.region__rule__body>
      
      return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
    end
    </Ruby.rule>
    </ASTParser.anonymous><ASTParser.anonymous><Ruby.rule><Ruby.returnScope><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><Ruby.returnStructName>PrimaryExpressionReturnValue</Ruby.returnStructName> = define_return_scope </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.returnScope>

    # parser rule primary_expression
    # 
    # (in Cpp.g)
    # 269:1: primary_expression : ( ( IDENTIFIER LPAREN )=> function_call | IDENTIFIER | constant | LPAREN assignment_expression RPAREN -> ^( EXPR_GROUP assignment_expression ) );
    def primary_expression
      <Ruby.traceIn><else_subtemplate># -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 30)
      </else_subtemplate></Ruby.traceIn><Ruby.ruleScopeSetUp></Ruby.ruleScopeSetUp><AST.ruleDeclarations><Ruby.ruleDeclarations><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate>return_value = <Ruby.returnStructName>PrimaryExpressionReturnValue</Ruby.returnStructName>.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(memoize)_subtemplate>primary_expression_start_index = @input.index
      </if(memoize)_subtemplate></Ruby.ruleDeclarations>
      root_0 = nil
      </AST.ruleDeclarations><AST.ruleLabelDefs><Ruby.ruleLabelDefs><ASTParser.anonymous>__IDENTIFIER149__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__LPAREN151__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__RPAREN153__ = nil
      </ASTParser.anonymous><Ruby.ruleLabelDef>function_call148 = nil
      </Ruby.ruleLabelDef><Ruby.ruleLabelDef>constant150 = nil
      </Ruby.ruleLabelDef><Ruby.ruleLabelDef>assignment_expression152 = nil
      </Ruby.ruleLabelDef></Ruby.ruleLabelDefs>
      <ASTParser.anonymous>tree_for_IDENTIFIER149 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_LPAREN151 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_RPAREN153 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>stream_RPAREN = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token RPAREN")</ASTParser.anonymous>
      <ASTParser.anonymous>stream_LPAREN = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token LPAREN")</ASTParser.anonymous>
      <ASTParser.anonymous>stream_assignment_expression = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule assignment_expression")</ASTParser.anonymous></AST.ruleLabelDefs><Ruby.action></Ruby.action>
      <Ruby.region__rule__body><Ruby.ruleBody><if(memoize)_subtemplate><if(backtracking)_subtemplate>success = false # flag used for memoization
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      begin
        <Ruby.ruleMemoization><if(memoize)_subtemplate># rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
        end
        </if(memoize)_subtemplate></Ruby.ruleMemoization><Ruby.ruleBlock># at line 270:5: ( ( IDENTIFIER LPAREN )=> function_call | IDENTIFIER | constant | LPAREN assignment_expression RPAREN -> ^( EXPR_GROUP assignment_expression ) )
        alt_43 = 4
        <Ruby.region__ruleBlock__decision><Ruby.dfaStateSwitch>case look_43 = @input.peek(1)
        <Ruby.dfaEdgeSwitch>when <ASTParser.anonymous>IDENTIFIER</ASTParser.anonymous> then <Ruby.dfaState>look_43_1 = @input.peek(2)

        <Ruby.dfaEdge>if (<Ruby.evalSynPredicate>syntactic_predicate?(%s(<ASTParser.anonymous>synpred_82_cpp!</ASTParser.anonymous>))</Ruby.evalSynPredicate>) 
          <Ruby.dfaAcceptState>alt_43 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>
        els<Ruby.dfaEdge>if (<Ruby.evalSynPredicate>syntactic_predicate?(%s(<ASTParser.anonymous>synpred_83_cpp!</ASTParser.anonymous>))</Ruby.evalSynPredicate>) 
          <Ruby.dfaAcceptState>alt_43 = 2</Ruby.dfaAcceptState></Ruby.dfaEdge>
        else
        <else_subtemplate><Ruby.ruleBacktrackFailure><if(backtracking)_subtemplate>@state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
          </if(backtracking)_subtemplate></Ruby.ruleBacktrackFailure>nvae = NoViableAlternative("", 43, 1)
          <Ruby.region__dfaState__noViableAltException>raise nvae</Ruby.region__dfaState__noViableAltException>
        </else_subtemplate>end</Ruby.dfaState></Ruby.dfaEdgeSwitch>
        <Ruby.dfaEdgeSwitch>when <ASTParser.anonymous>DECIMAL_LITERAL</ASTParser.anonymous>, <ASTParser.anonymous>STRING_LITERAL</ASTParser.anonymous>, <ASTParser.anonymous>HEX_LITERAL</ASTParser.anonymous>, <ASTParser.anonymous>OCTAL_LITERAL</ASTParser.anonymous>, <ASTParser.anonymous>CHARACTER_LITERAL</ASTParser.anonymous>, <ASTParser.anonymous>FLOATING_POINT_LITERAL</ASTParser.anonymous> then <Ruby.dfaAcceptState>alt_43 = 3</Ruby.dfaAcceptState></Ruby.dfaEdgeSwitch>
        <Ruby.dfaEdgeSwitch>when <ASTParser.anonymous>LPAREN</ASTParser.anonymous> then <Ruby.dfaAcceptState>alt_43 = 4</Ruby.dfaAcceptState></Ruby.dfaEdgeSwitch>
        else
        <else_subtemplate><Ruby.ruleBacktrackFailure><if(backtracking)_subtemplate>@state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
          </if(backtracking)_subtemplate></Ruby.ruleBacktrackFailure>
          nvae = NoViableAlternative("", 43, 0)
          <Ruby.region__dfaStateSwitch__noViableAltException>raise nvae</Ruby.region__dfaStateSwitch__noViableAltException>
        </else_subtemplate>end</Ruby.dfaStateSwitch></Ruby.region__ruleBlock__decision>
        case alt_43
        <Ruby.altSwitchCase>when 1
          <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate><if(outerAlt)_subtemplate><if(!rewriteMode)_subtemplate>root_0 = @adaptor.create_flat_list!

          </if(!rewriteMode)_subtemplate></if(outerAlt)_subtemplate></if(autoAST)_subtemplate>
          # at line 270:9: ( IDENTIFIER LPAREN )=> function_call
          <Ruby.element><ASTParser.ruleRef><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_function_call_IN_primary_expression_2616)
          <if(label)_subtemplate>function_call148 = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>function_call</ASTParser.<anonymous template argument>></Ruby.methodCall>
          @state.following.pop</Ruby.ruleRef>
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>@adaptor.add_child(root_0, function_call148.tree)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleRef>
          </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
        <Ruby.altSwitchCase>when 2
          <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate><if(outerAlt)_subtemplate><if(!rewriteMode)_subtemplate>root_0 = @adaptor.create_flat_list!

          </if(!rewriteMode)_subtemplate></if(outerAlt)_subtemplate></if(autoAST)_subtemplate>
          # at line 271:9: IDENTIFIER
          <Ruby.element><ASTParser.tokenRef><Ruby.tokenRef><if(label)_subtemplate>__IDENTIFIER149__ = </if(label)_subtemplate>match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_primary_expression_2626)</Ruby.tokenRef>
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>
            tree_for_IDENTIFIER149 = <ASTParser.createNodeFromToken><else_subtemplate>@adaptor.create_with_payload!(__IDENTIFIER149__)</else_subtemplate></ASTParser.createNodeFromToken>
            @adaptor.add_child(root_0, tree_for_IDENTIFIER149)
            </ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.tokenRef>
          </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
        <Ruby.altSwitchCase>when 3
          <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate><if(outerAlt)_subtemplate><if(!rewriteMode)_subtemplate>root_0 = @adaptor.create_flat_list!

          </if(!rewriteMode)_subtemplate></if(outerAlt)_subtemplate></if(autoAST)_subtemplate>
          # at line 272:9: constant
          <Ruby.element><ASTParser.ruleRef><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_constant_IN_primary_expression_2636)
          <if(label)_subtemplate>constant150 = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>constant</ASTParser.<anonymous template argument>></Ruby.methodCall>
          @state.following.pop</Ruby.ruleRef>
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>@adaptor.add_child(root_0, constant150.tree)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleRef>
          </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
        <Ruby.altSwitchCase>when 4
          <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt># at line 273:9: LPAREN assignment_expression RPAREN
          <Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>__LPAREN151__ = </if(label)_subtemplate>match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_primary_expression_2646)</Ruby.tokenRef></ASTParser.tokenRefBang> 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>stream_LPAREN.add(__LPAREN151__)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
          </Ruby.element><Ruby.element><AST.ruleRefTrack><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_assignment_expression_IN_primary_expression_2649)
          <if(label)_subtemplate>assignment_expression152 = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>assignment_expression</ASTParser.<anonymous template argument>></Ruby.methodCall>
          @state.following.pop</Ruby.ruleRef>
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>stream_assignment_expression.add(assignment_expression152.tree)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.ruleRefTrack>
          </Ruby.element><Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>__RPAREN153__ = </if(label)_subtemplate>match(RPAREN, TOKENS_FOLLOWING_RPAREN_IN_primary_expression_2651)</Ruby.tokenRef></ASTParser.tokenRefBang> 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>stream_RPAREN.add(__RPAREN153__)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
          </Ruby.element><AST.rewriteCode># AST Rewrite
          # elements: assignment_expression
          # token labels: 
          # rule labels: <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>
            <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
            <AST.rewriteCodeLabels><ASTParser.anonymous>stream_<AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> = <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> ? subtree_stream("rule <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>", <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree) : subtree_stream("token <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>")</ASTParser.anonymous>
            </AST.rewriteCodeLabels>
            root_0 = @adaptor.create_flat_list!
            <AST.rewriteAltFirst><else_subtemplate># 273:47: -> ^( EXPR_GROUP assignment_expression )
            <AST.rewriteElementList><AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteTree># at line 273:50: ^( EXPR_GROUP assignment_expression )
            root_1 = @adaptor.create_flat_list!
            <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteImaginaryTokenRefRoot>root_1 = @adaptor.become_root(<AST.createImaginaryNode><else_subtemplate><if(!args)_subtemplate>@adaptor.create_from_type!(EXPR_GROUP, "EXPR_GROUP")</if(!args)_subtemplate></else_subtemplate></AST.createImaginaryNode>, root_1)
            </AST.rewriteImaginaryTokenRefRoot></AST.rewriteElement>
            <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteRuleRef>@adaptor.add_child(root_1, stream_assignment_expression.next_tree)
            </AST.rewriteRuleRef></AST.rewriteElement>
            @adaptor.add_child(root_0, root_1)
            </AST.rewriteTree></AST.rewriteElement></AST.rewriteElementList></else_subtemplate></AST.rewriteAltFirst>


            <if(!TREE_PARSER)_subtemplate><AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
            </if(!TREE_PARSER)_subtemplate></ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.rewriteCode></AST.alt></Ruby.altSwitchCase>
        end</Ruby.ruleBlock><ASTParser.ruleCleanUp><Ruby.ruleCleanUp><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(!TREE_PARSER)_subtemplate># - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)
        </if(!TREE_PARSER)_subtemplate></if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.ruleCleanUp>
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>
          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)
          </ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleCleanUp>
      <if(memoize)_subtemplate><if(backtracking)_subtemplate>  success = true
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      <else_subtemplate><if(!emptyRule)_subtemplate><else_subtemplate>rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        <ASTParser.region__ruleBody__setErrorReturnValue>return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)
        </ASTParser.region__ruleBody__setErrorReturnValue></else_subtemplate></if(!emptyRule)_subtemplate></else_subtemplate>
      ensure
        <Ruby.traceOut><else_subtemplate># -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 30)
        </else_subtemplate></Ruby.traceOut><Ruby.memoize><if(memoize)_subtemplate><if(backtracking)_subtemplate>memoize(__method__, primary_expression_start_index, success) if @state.backtracking > 0
        </if(backtracking)_subtemplate></if(memoize)_subtemplate></Ruby.memoize><Ruby.ruleScopeCleanUp></Ruby.ruleScopeCleanUp>
      end</Ruby.ruleBody></Ruby.region__rule__body>
      
      return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
    end
    </Ruby.rule>
    </ASTParser.anonymous><ASTParser.anonymous><Ruby.rule><Ruby.returnScope><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><Ruby.returnStructName>FunctionCallReturnValue</Ruby.returnStructName> = define_return_scope </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.returnScope>

    # parser rule function_call
    # 
    # (in Cpp.g)
    # 276:1: function_call : id= IDENTIFIER LPAREN ( arg_list )? RPAREN -> ^( METHOD_CALL $id ( arg_list )? ) ;
    def function_call
      <Ruby.traceIn><else_subtemplate># -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 31)
      </else_subtemplate></Ruby.traceIn><Ruby.ruleScopeSetUp></Ruby.ruleScopeSetUp><AST.ruleDeclarations><Ruby.ruleDeclarations><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate>return_value = <Ruby.returnStructName>FunctionCallReturnValue</Ruby.returnStructName>.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(memoize)_subtemplate>function_call_start_index = @input.index
      </if(memoize)_subtemplate></Ruby.ruleDeclarations>
      root_0 = nil
      </AST.ruleDeclarations><AST.ruleLabelDefs><Ruby.ruleLabelDefs><ASTParser.anonymous>id = nil
      </ASTParser.anonymous><ASTParser.anonymous>__LPAREN154__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__RPAREN156__ = nil
      </ASTParser.anonymous><Ruby.ruleLabelDef>arg_list155 = nil
      </Ruby.ruleLabelDef></Ruby.ruleLabelDefs>
      <ASTParser.anonymous>tree_for_id = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_LPAREN154 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_RPAREN156 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>stream_RPAREN = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token RPAREN")</ASTParser.anonymous>
      <ASTParser.anonymous>stream_IDENTIFIER = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token IDENTIFIER")</ASTParser.anonymous>
      <ASTParser.anonymous>stream_LPAREN = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token LPAREN")</ASTParser.anonymous>
      <ASTParser.anonymous>stream_arg_list = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule arg_list")</ASTParser.anonymous></AST.ruleLabelDefs><Ruby.action></Ruby.action>
      <Ruby.region__rule__body><Ruby.ruleBody><if(memoize)_subtemplate><if(backtracking)_subtemplate>success = false # flag used for memoization
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      begin
        <Ruby.ruleMemoization><if(memoize)_subtemplate># rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
        end
        </if(memoize)_subtemplate></Ruby.ruleMemoization><Ruby.ruleBlockSingleAlt><Ruby.region__ruleBlockSingleAlt__prealt></Ruby.region__ruleBlockSingleAlt__prealt><AST.alt># at line 277:8: id= IDENTIFIER LPAREN ( arg_list )? RPAREN
        <Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>id = </if(label)_subtemplate>match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_function_call_2680)</Ruby.tokenRef></ASTParser.tokenRefBang> 
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>stream_IDENTIFIER.add(id)</ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
        </Ruby.element><Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>__LPAREN154__ = </if(label)_subtemplate>match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_function_call_2682)</Ruby.tokenRef></ASTParser.tokenRefBang> 
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>stream_LPAREN.add(__LPAREN154__)</ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
        </Ruby.element><Ruby.element><Ruby.block># at line 277:29: ( arg_list )?
        alt_44 = 2
        <Ruby.region__block__body><Ruby.blockBody><Ruby.region__blockBody__decision><Ruby.dfaOptionalBlockState>look_44_0 = @input.peek(1)

        <Ruby.dfaEdge>if (<Ruby.setTest><Ruby.lookaheadRangeTest>look_44_0.between?(IDENTIFIER, LPAREN)</Ruby.lookaheadRangeTest> || <Ruby.lookaheadRangeTest>look_44_0.between?(DECIMAL_LITERAL, STRING_LITERAL)</Ruby.lookaheadRangeTest> || <Ruby.lookaheadTest>look_44_0 == AMPERSAND</Ruby.lookaheadTest> || <Ruby.lookaheadRangeTest>look_44_0.between?(PLUS, STAR)</Ruby.lookaheadRangeTest> || <Ruby.lookaheadRangeTest>look_44_0.between?(PLUSPLUS, TILDE)</Ruby.lookaheadRangeTest> || <Ruby.lookaheadRangeTest>look_44_0.between?(HEX_LITERAL, FLOATING_POINT_LITERAL)</Ruby.lookaheadRangeTest></Ruby.setTest>) 
          <Ruby.dfaAcceptState>alt_44 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>
        end</Ruby.dfaOptionalBlockState></Ruby.region__blockBody__decision>
        case alt_44
        <Ruby.altSwitchCase>when 1
          <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt># at line 0:0: arg_list
          <Ruby.element><AST.ruleRefTrack><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_arg_list_IN_function_call_2684)
          <if(label)_subtemplate>arg_list155 = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>arg_list</ASTParser.<anonymous template argument>></Ruby.methodCall>
          @state.following.pop</Ruby.ruleRef>
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>stream_arg_list.add(arg_list155.tree)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.ruleRefTrack>
          </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
        end</Ruby.blockBody></Ruby.region__block__body></Ruby.block>
        </Ruby.element><Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>__RPAREN156__ = </if(label)_subtemplate>match(RPAREN, TOKENS_FOLLOWING_RPAREN_IN_function_call_2687)</Ruby.tokenRef></ASTParser.tokenRefBang> 
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>stream_RPAREN.add(__RPAREN156__)</ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
        </Ruby.element><AST.rewriteCode># AST Rewrite
        # elements: arg_list, id
        # token labels: id
        # rule labels: <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>
          <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
          <AST.rewriteCodeLabels><ASTParser.anonymous>stream_id = token_stream("token id", id)</ASTParser.anonymous>
          <ASTParser.anonymous>stream_<AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> = <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> ? subtree_stream("rule <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>", <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree) : subtree_stream("token <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>")</ASTParser.anonymous>
          </AST.rewriteCodeLabels>
          root_0 = @adaptor.create_flat_list!
          <AST.rewriteAltFirst><else_subtemplate># 277:47: -> ^( METHOD_CALL $id ( arg_list )? )
          <AST.rewriteElementList><AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteTree># at line 277:50: ^( METHOD_CALL $id ( arg_list )? )
          root_1 = @adaptor.create_flat_list!
          <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteImaginaryTokenRefRoot>root_1 = @adaptor.become_root(<AST.createImaginaryNode><else_subtemplate><if(!args)_subtemplate>@adaptor.create_from_type!(METHOD_CALL, "METHOD_CALL")</if(!args)_subtemplate></else_subtemplate></AST.createImaginaryNode>, root_1)
          </AST.rewriteImaginaryTokenRefRoot></AST.rewriteElement>
          <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteTokenLabelRef>@adaptor.add_child(root_1, stream_id.next_node)
          </AST.rewriteTokenLabelRef></AST.rewriteElement><AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteOptionalBlock># at line 277:68: ( arg_list )?
          if <ASTParser.anonymous>stream_arg_list.has_next?</ASTParser.anonymous>
            <AST.rewriteElementList><AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteRuleRef>@adaptor.add_child(root_1, stream_arg_list.next_tree)
            </AST.rewriteRuleRef></AST.rewriteElement></AST.rewriteElementList>
          end

          <ASTParser.anonymous>stream_arg_list.reset();
          </ASTParser.anonymous></AST.rewriteOptionalBlock></AST.rewriteElement>
          @adaptor.add_child(root_0, root_1)
          </AST.rewriteTree></AST.rewriteElement></AST.rewriteElementList></else_subtemplate></AST.rewriteAltFirst>


          <if(!TREE_PARSER)_subtemplate><AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
          </if(!TREE_PARSER)_subtemplate></ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.rewriteCode></AST.alt></Ruby.ruleBlockSingleAlt><ASTParser.ruleCleanUp><Ruby.ruleCleanUp><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(!TREE_PARSER)_subtemplate># - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)
        </if(!TREE_PARSER)_subtemplate></if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.ruleCleanUp>
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>
          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)
          </ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleCleanUp>
      <if(memoize)_subtemplate><if(backtracking)_subtemplate>  success = true
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      <else_subtemplate><if(!emptyRule)_subtemplate><else_subtemplate>rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        <ASTParser.region__ruleBody__setErrorReturnValue>return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)
        </ASTParser.region__ruleBody__setErrorReturnValue></else_subtemplate></if(!emptyRule)_subtemplate></else_subtemplate>
      ensure
        <Ruby.traceOut><else_subtemplate># -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 31)
        </else_subtemplate></Ruby.traceOut><Ruby.memoize><if(memoize)_subtemplate><if(backtracking)_subtemplate>memoize(__method__, function_call_start_index, success) if @state.backtracking > 0
        </if(backtracking)_subtemplate></if(memoize)_subtemplate></Ruby.memoize><Ruby.ruleScopeCleanUp></Ruby.ruleScopeCleanUp>
      end</Ruby.ruleBody></Ruby.region__rule__body>
      
      return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
    end
    </Ruby.rule>
    </ASTParser.anonymous><ASTParser.anonymous><Ruby.rule><Ruby.returnScope><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><Ruby.returnStructName>ArgListReturnValue</Ruby.returnStructName> = define_return_scope </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.returnScope>

    # parser rule arg_list
    # 
    # (in Cpp.g)
    # 280:1: arg_list : assignment_expression ( COMMA assignment_expression )* -> ^( ARGS ( assignment_expression )+ ) ;
    def arg_list
      <Ruby.traceIn><else_subtemplate># -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 32)
      </else_subtemplate></Ruby.traceIn><Ruby.ruleScopeSetUp></Ruby.ruleScopeSetUp><AST.ruleDeclarations><Ruby.ruleDeclarations><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate>return_value = <Ruby.returnStructName>ArgListReturnValue</Ruby.returnStructName>.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(memoize)_subtemplate>arg_list_start_index = @input.index
      </if(memoize)_subtemplate></Ruby.ruleDeclarations>
      root_0 = nil
      </AST.ruleDeclarations><AST.ruleLabelDefs><Ruby.ruleLabelDefs><ASTParser.anonymous>__COMMA158__ = nil
      </ASTParser.anonymous><Ruby.ruleLabelDef>assignment_expression157 = nil
      </Ruby.ruleLabelDef><Ruby.ruleLabelDef>assignment_expression159 = nil
      </Ruby.ruleLabelDef></Ruby.ruleLabelDefs>
      <ASTParser.anonymous>tree_for_COMMA158 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>stream_COMMA = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token COMMA")</ASTParser.anonymous>
      <ASTParser.anonymous>stream_assignment_expression = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule assignment_expression")</ASTParser.anonymous></AST.ruleLabelDefs><Ruby.action></Ruby.action>
      <Ruby.region__rule__body><Ruby.ruleBody><if(memoize)_subtemplate><if(backtracking)_subtemplate>success = false # flag used for memoization
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      begin
        <Ruby.ruleMemoization><if(memoize)_subtemplate># rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
        end
        </if(memoize)_subtemplate></Ruby.ruleMemoization><Ruby.ruleBlockSingleAlt><Ruby.region__ruleBlockSingleAlt__prealt></Ruby.region__ruleBlockSingleAlt__prealt><AST.alt># at line 281:8: assignment_expression ( COMMA assignment_expression )*
        <Ruby.element><AST.ruleRefTrack><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_assignment_expression_IN_arg_list_2718)
        <if(label)_subtemplate>assignment_expression157 = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>assignment_expression</ASTParser.<anonymous template argument>></Ruby.methodCall>
        @state.following.pop</Ruby.ruleRef>
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>stream_assignment_expression.add(assignment_expression157.tree)</ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.ruleRefTrack>
        </Ruby.element><Ruby.element><Ruby.closureBlock># at line 281:30: ( COMMA assignment_expression )*
        <Ruby.region__closureBlock__loopBody><Ruby.closureBlockLoop>loop do  #loop 45
          alt_45 = 2
          <Ruby.region__closureBlockLoop__decisionBody><Ruby.dfaLoopbackState>look_45_0 = @input.peek(1)

          <Ruby.dfaEdge>if (<Ruby.lookaheadTest>look_45_0 == COMMA</Ruby.lookaheadTest>) 
            <Ruby.dfaAcceptState>alt_45 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>

          end</Ruby.dfaLoopbackState></Ruby.region__closureBlockLoop__decisionBody>
          case alt_45
          <Ruby.altSwitchCase>when 1
            <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt># at line 281:31: COMMA assignment_expression
            <Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>__COMMA158__ = </if(label)_subtemplate>match(COMMA, TOKENS_FOLLOWING_COMMA_IN_arg_list_2721)</Ruby.tokenRef></ASTParser.tokenRefBang> 
            <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
              <ASTParser.<anonymous template argument>>stream_COMMA.add(__COMMA158__)</ASTParser.<anonymous template argument>>
            end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
            </Ruby.element><Ruby.element><AST.ruleRefTrack><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_assignment_expression_IN_arg_list_2723)
            <if(label)_subtemplate>assignment_expression159 = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>assignment_expression</ASTParser.<anonymous template argument>></Ruby.methodCall>
            @state.following.pop</Ruby.ruleRef>
            <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
              <ASTParser.<anonymous template argument>>stream_assignment_expression.add(assignment_expression159.tree)</ASTParser.<anonymous template argument>>
            end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.ruleRefTrack>
            </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
          else
            break #loop 45
          end
        end</Ruby.closureBlockLoop></Ruby.region__closureBlock__loopBody></Ruby.closureBlock>
        </Ruby.element><AST.rewriteCode># AST Rewrite
        # elements: assignment_expression
        # token labels: 
        # rule labels: <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>
          <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
          <AST.rewriteCodeLabels><ASTParser.anonymous>stream_<AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> = <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> ? subtree_stream("rule <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>", <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree) : subtree_stream("token <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>")</ASTParser.anonymous>
          </AST.rewriteCodeLabels>
          root_0 = @adaptor.create_flat_list!
          <AST.rewriteAltFirst><else_subtemplate># 281:61: -> ^( ARGS ( assignment_expression )+ )
          <AST.rewriteElementList><AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteTree># at line 281:64: ^( ARGS ( assignment_expression )+ )
          root_1 = @adaptor.create_flat_list!
          <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteImaginaryTokenRefRoot>root_1 = @adaptor.become_root(<AST.createImaginaryNode><else_subtemplate><if(!args)_subtemplate>@adaptor.create_from_type!(ARGS, "ARGS")</if(!args)_subtemplate></else_subtemplate></AST.createImaginaryNode>, root_1)
          </AST.rewriteImaginaryTokenRefRoot></AST.rewriteElement>
          <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewritePositiveClosureBlock># at line 281:71: ( assignment_expression )+
          unless <ASTParser.anonymous>stream_assignment_expression.has_next?</ASTParser.anonymous>
            raise ANTLR3::RewriteEarlyExit
          end

          while <ASTParser.anonymous>stream_assignment_expression.has_next?</ASTParser.anonymous>
            <AST.rewriteElementList><AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteRuleRef>@adaptor.add_child(root_1, stream_assignment_expression.next_tree)
            </AST.rewriteRuleRef></AST.rewriteElement></AST.rewriteElementList>
          end

          <ASTParser.anonymous>stream_assignment_expression.reset
          </ASTParser.anonymous></AST.rewritePositiveClosureBlock></AST.rewriteElement>
          @adaptor.add_child(root_0, root_1)
          </AST.rewriteTree></AST.rewriteElement></AST.rewriteElementList></else_subtemplate></AST.rewriteAltFirst>


          <if(!TREE_PARSER)_subtemplate><AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
          </if(!TREE_PARSER)_subtemplate></ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.rewriteCode></AST.alt></Ruby.ruleBlockSingleAlt><ASTParser.ruleCleanUp><Ruby.ruleCleanUp><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(!TREE_PARSER)_subtemplate># - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)
        </if(!TREE_PARSER)_subtemplate></if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.ruleCleanUp>
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>
          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)
          </ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleCleanUp>
      <if(memoize)_subtemplate><if(backtracking)_subtemplate>  success = true
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      <else_subtemplate><if(!emptyRule)_subtemplate><else_subtemplate>rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        <ASTParser.region__ruleBody__setErrorReturnValue>return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)
        </ASTParser.region__ruleBody__setErrorReturnValue></else_subtemplate></if(!emptyRule)_subtemplate></else_subtemplate>
      ensure
        <Ruby.traceOut><else_subtemplate># -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 32)
        </else_subtemplate></Ruby.traceOut><Ruby.memoize><if(memoize)_subtemplate><if(backtracking)_subtemplate>memoize(__method__, arg_list_start_index, success) if @state.backtracking > 0
        </if(backtracking)_subtemplate></if(memoize)_subtemplate></Ruby.memoize><Ruby.ruleScopeCleanUp></Ruby.ruleScopeCleanUp>
      end</Ruby.ruleBody></Ruby.region__rule__body>
      
      return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
    end
    </Ruby.rule>
    </ASTParser.anonymous><ASTParser.anonymous><Ruby.rule><Ruby.returnScope><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><Ruby.returnStructName>ConstantReturnValue</Ruby.returnStructName> = define_return_scope </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.returnScope>

    # parser rule constant
    # 
    # (in Cpp.g)
    # 284:1: constant : ( HEX_LITERAL | OCTAL_LITERAL | DECIMAL_LITERAL | CHARACTER_LITERAL | STRING_LITERAL | FLOATING_POINT_LITERAL );
    def constant
      <Ruby.traceIn><else_subtemplate># -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 33)
      </else_subtemplate></Ruby.traceIn><Ruby.ruleScopeSetUp></Ruby.ruleScopeSetUp><AST.ruleDeclarations><Ruby.ruleDeclarations><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate>return_value = <Ruby.returnStructName>ConstantReturnValue</Ruby.returnStructName>.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(memoize)_subtemplate>constant_start_index = @input.index
      </if(memoize)_subtemplate></Ruby.ruleDeclarations>
      root_0 = nil
      </AST.ruleDeclarations><AST.ruleLabelDefs><Ruby.ruleLabelDefs><ASTParser.anonymous>set160 = nil
      </ASTParser.anonymous></Ruby.ruleLabelDefs>
      <ASTParser.anonymous>tree_for_set160 = nil</ASTParser.anonymous>
      </AST.ruleLabelDefs><Ruby.action></Ruby.action>
      <Ruby.region__rule__body><Ruby.ruleBody><if(memoize)_subtemplate><if(backtracking)_subtemplate>success = false # flag used for memoization
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      begin
        <Ruby.ruleMemoization><if(memoize)_subtemplate># rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
        end
        </if(memoize)_subtemplate></Ruby.ruleMemoization><Ruby.ruleBlockSingleAlt><Ruby.region__ruleBlockSingleAlt__prealt></Ruby.region__ruleBlockSingleAlt__prealt><AST.alt><if(autoAST)_subtemplate><if(outerAlt)_subtemplate><if(!rewriteMode)_subtemplate>root_0 = @adaptor.create_flat_list!

        </if(!rewriteMode)_subtemplate></if(outerAlt)_subtemplate></if(autoAST)_subtemplate>
        # at line 
        <Ruby.element><ASTParser.matchRuleBlockSet><ASTParser.matchSet><Ruby.matchSet><if(label)_subtemplate>set160 = @input.look
        </if(label)_subtemplate>if <Ruby.setTest><Ruby.isolatedLookaheadRangeTest>@input.peek(1).between?(DECIMAL_LITERAL, STRING_LITERAL)</Ruby.isolatedLookaheadRangeTest> || <Ruby.isolatedLookaheadRangeTest>@input.peek(1).between?(HEX_LITERAL, FLOATING_POINT_LITERAL)</Ruby.isolatedLookaheadRangeTest></Ruby.setTest>
          @input.consume
          <ASTParser.<anonymous template argument>><ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>@adaptor.add_child(root_0, <ASTParser.createNodeFromToken><else_subtemplate>@adaptor.create_with_payload!(set160)</else_subtemplate></ASTParser.createNodeFromToken>)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.<anonymous template argument>>
        <if(!LEXER)_subtemplate>  @state.error_recovery = false
        </if(!LEXER)_subtemplate>else
          <Ruby.ruleBacktrackFailure><if(backtracking)_subtemplate>@state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
          </if(backtracking)_subtemplate></Ruby.ruleBacktrackFailure>
          mse = MismatchedSet(nil)
          <Ruby.region__matchSet__mismatchedSetException></Ruby.region__matchSet__mismatchedSetException><else_subtemplate>  raise mse
        </else_subtemplate>end

        </Ruby.matchSet></ASTParser.matchSet></ASTParser.matchRuleBlockSet>
        </Ruby.element></AST.alt></Ruby.ruleBlockSingleAlt><ASTParser.ruleCleanUp><Ruby.ruleCleanUp><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(!TREE_PARSER)_subtemplate># - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)
        </if(!TREE_PARSER)_subtemplate></if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.ruleCleanUp>
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>
          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)
          </ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleCleanUp>
      <if(memoize)_subtemplate><if(backtracking)_subtemplate>  success = true
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      <else_subtemplate><if(!emptyRule)_subtemplate><else_subtemplate>rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        <ASTParser.region__ruleBody__setErrorReturnValue>return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)
        </ASTParser.region__ruleBody__setErrorReturnValue></else_subtemplate></if(!emptyRule)_subtemplate></else_subtemplate>
      ensure
        <Ruby.traceOut><else_subtemplate># -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 33)
        </else_subtemplate></Ruby.traceOut><Ruby.memoize><if(memoize)_subtemplate><if(backtracking)_subtemplate>memoize(__method__, constant_start_index, success) if @state.backtracking > 0
        </if(backtracking)_subtemplate></if(memoize)_subtemplate></Ruby.memoize><Ruby.ruleScopeCleanUp></Ruby.ruleScopeCleanUp>
      end</Ruby.ruleBody></Ruby.region__rule__body>
      
      return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
    end
    </Ruby.rule>
    </ASTParser.anonymous><ASTParser.anonymous><Ruby.rule><Ruby.returnScope><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><Ruby.returnStructName>SourceTextReturnValue</Ruby.returnStructName> = define_return_scope </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.returnScope>

    # parser rule source_text
    # 
    # (in Cpp.g)
    # 295:1: source_text : ( source_expression | COMMA | LPAREN | RPAREN | WS );
    def source_text
      <Ruby.traceIn><else_subtemplate># -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 34)
      </else_subtemplate></Ruby.traceIn><Ruby.ruleScopeSetUp></Ruby.ruleScopeSetUp><AST.ruleDeclarations><Ruby.ruleDeclarations><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate>return_value = <Ruby.returnStructName>SourceTextReturnValue</Ruby.returnStructName>.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(memoize)_subtemplate>source_text_start_index = @input.index
      </if(memoize)_subtemplate></Ruby.ruleDeclarations>
      root_0 = nil
      </AST.ruleDeclarations><AST.ruleLabelDefs><Ruby.ruleLabelDefs><ASTParser.anonymous>__COMMA162__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__LPAREN163__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__RPAREN164__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__WS165__ = nil
      </ASTParser.anonymous><Ruby.ruleLabelDef>source_expression161 = nil
      </Ruby.ruleLabelDef></Ruby.ruleLabelDefs>
      <ASTParser.anonymous>tree_for_COMMA162 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_LPAREN163 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_RPAREN164 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_WS165 = nil</ASTParser.anonymous>
      </AST.ruleLabelDefs><Ruby.action></Ruby.action>
      <Ruby.region__rule__body><Ruby.ruleBody><if(memoize)_subtemplate><if(backtracking)_subtemplate>success = false # flag used for memoization
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      begin
        <Ruby.ruleMemoization><if(memoize)_subtemplate># rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
        end
        </if(memoize)_subtemplate></Ruby.ruleMemoization><Ruby.ruleBlock># at line 296:5: ( source_expression | COMMA | LPAREN | RPAREN | WS )
        alt_46 = 5
        <Ruby.region__ruleBlock__decision><Ruby.dfaDecision>alt_46 = @dfa46.predict(@input)</Ruby.dfaDecision></Ruby.region__ruleBlock__decision>
        case alt_46
        <Ruby.altSwitchCase>when 1
          <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate><if(outerAlt)_subtemplate><if(!rewriteMode)_subtemplate>root_0 = @adaptor.create_flat_list!

          </if(!rewriteMode)_subtemplate></if(outerAlt)_subtemplate></if(autoAST)_subtemplate>
          # at line 296:9: source_expression
          <Ruby.element><ASTParser.ruleRef><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_source_expression_IN_source_text_2812)
          <if(label)_subtemplate>source_expression161 = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>source_expression</ASTParser.<anonymous template argument>></Ruby.methodCall>
          @state.following.pop</Ruby.ruleRef>
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>@adaptor.add_child(root_0, source_expression161.tree)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleRef>
          </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
        <Ruby.altSwitchCase>when 2
          <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate><if(outerAlt)_subtemplate><if(!rewriteMode)_subtemplate>root_0 = @adaptor.create_flat_list!

          </if(!rewriteMode)_subtemplate></if(outerAlt)_subtemplate></if(autoAST)_subtemplate>
          # at line 297:9: COMMA
          <Ruby.element><ASTParser.tokenRef><Ruby.tokenRef><if(label)_subtemplate>__COMMA162__ = </if(label)_subtemplate>match(COMMA, TOKENS_FOLLOWING_COMMA_IN_source_text_2822)</Ruby.tokenRef>
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>
            tree_for_COMMA162 = <ASTParser.createNodeFromToken><else_subtemplate>@adaptor.create_with_payload!(__COMMA162__)</else_subtemplate></ASTParser.createNodeFromToken>
            @adaptor.add_child(root_0, tree_for_COMMA162)
            </ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.tokenRef>
          </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
        <Ruby.altSwitchCase>when 3
          <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate><if(outerAlt)_subtemplate><if(!rewriteMode)_subtemplate>root_0 = @adaptor.create_flat_list!

          </if(!rewriteMode)_subtemplate></if(outerAlt)_subtemplate></if(autoAST)_subtemplate>
          # at line 298:9: LPAREN
          <Ruby.element><ASTParser.tokenRef><Ruby.tokenRef><if(label)_subtemplate>__LPAREN163__ = </if(label)_subtemplate>match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_source_text_2832)</Ruby.tokenRef>
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>
            tree_for_LPAREN163 = <ASTParser.createNodeFromToken><else_subtemplate>@adaptor.create_with_payload!(__LPAREN163__)</else_subtemplate></ASTParser.createNodeFromToken>
            @adaptor.add_child(root_0, tree_for_LPAREN163)
            </ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.tokenRef>
          </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
        <Ruby.altSwitchCase>when 4
          <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate><if(outerAlt)_subtemplate><if(!rewriteMode)_subtemplate>root_0 = @adaptor.create_flat_list!

          </if(!rewriteMode)_subtemplate></if(outerAlt)_subtemplate></if(autoAST)_subtemplate>
          # at line 299:9: RPAREN
          <Ruby.element><ASTParser.tokenRef><Ruby.tokenRef><if(label)_subtemplate>__RPAREN164__ = </if(label)_subtemplate>match(RPAREN, TOKENS_FOLLOWING_RPAREN_IN_source_text_2842)</Ruby.tokenRef>
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>
            tree_for_RPAREN164 = <ASTParser.createNodeFromToken><else_subtemplate>@adaptor.create_with_payload!(__RPAREN164__)</else_subtemplate></ASTParser.createNodeFromToken>
            @adaptor.add_child(root_0, tree_for_RPAREN164)
            </ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.tokenRef>
          </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
        <Ruby.altSwitchCase>when 5
          <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate><if(outerAlt)_subtemplate><if(!rewriteMode)_subtemplate>root_0 = @adaptor.create_flat_list!

          </if(!rewriteMode)_subtemplate></if(outerAlt)_subtemplate></if(autoAST)_subtemplate>
          # at line 300:9: WS
          <Ruby.element><ASTParser.tokenRef><Ruby.tokenRef><if(label)_subtemplate>__WS165__ = </if(label)_subtemplate>match(WS, TOKENS_FOLLOWING_WS_IN_source_text_2852)</Ruby.tokenRef>
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>
            tree_for_WS165 = <ASTParser.createNodeFromToken><else_subtemplate>@adaptor.create_with_payload!(__WS165__)</else_subtemplate></ASTParser.createNodeFromToken>
            @adaptor.add_child(root_0, tree_for_WS165)
            </ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.tokenRef>
          </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
        end</Ruby.ruleBlock><ASTParser.ruleCleanUp><Ruby.ruleCleanUp><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(!TREE_PARSER)_subtemplate># - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)
        </if(!TREE_PARSER)_subtemplate></if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.ruleCleanUp>
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>
          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)
          </ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleCleanUp>
      <if(memoize)_subtemplate><if(backtracking)_subtemplate>  success = true
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      <else_subtemplate><if(!emptyRule)_subtemplate><else_subtemplate>rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        <ASTParser.region__ruleBody__setErrorReturnValue>return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)
        </ASTParser.region__ruleBody__setErrorReturnValue></else_subtemplate></if(!emptyRule)_subtemplate></else_subtemplate>
      ensure
        <Ruby.traceOut><else_subtemplate># -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 34)
        </else_subtemplate></Ruby.traceOut><Ruby.memoize><if(memoize)_subtemplate><if(backtracking)_subtemplate>memoize(__method__, source_text_start_index, success) if @state.backtracking > 0
        </if(backtracking)_subtemplate></if(memoize)_subtemplate></Ruby.memoize><Ruby.ruleScopeCleanUp></Ruby.ruleScopeCleanUp>
      end</Ruby.ruleBody></Ruby.region__rule__body>
      
      return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
    end
    </Ruby.rule>
    </ASTParser.anonymous><ASTParser.anonymous><Ruby.rule><Ruby.returnScope><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><Ruby.returnStructName>MacroExpansionReturnValue</Ruby.returnStructName> = define_return_scope </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.returnScope>

    # parser rule macro_expansion
    # 
    # (in Cpp.g)
    # 303:1: macro_expansion : (id= IDENTIFIER ( WS )? LPAREN ( WS )? RPAREN -> ^( EXPAND $id) | id= IDENTIFIER ( WS )? LPAREN ( WS )? mac_args ( WS )? RPAREN -> ^( EXPAND $id ( mac_args )? ) );
    def macro_expansion
      <Ruby.traceIn><else_subtemplate># -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 35)
      </else_subtemplate></Ruby.traceIn><Ruby.ruleScopeSetUp></Ruby.ruleScopeSetUp><AST.ruleDeclarations><Ruby.ruleDeclarations><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate>return_value = <Ruby.returnStructName>MacroExpansionReturnValue</Ruby.returnStructName>.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(memoize)_subtemplate>macro_expansion_start_index = @input.index
      </if(memoize)_subtemplate></Ruby.ruleDeclarations>
      root_0 = nil
      </AST.ruleDeclarations><AST.ruleLabelDefs><Ruby.ruleLabelDefs><ASTParser.anonymous>id = nil
      </ASTParser.anonymous><ASTParser.anonymous>__WS166__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__LPAREN167__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__WS168__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__RPAREN169__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__WS170__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__LPAREN171__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__WS172__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__WS174__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__RPAREN175__ = nil
      </ASTParser.anonymous><Ruby.ruleLabelDef>mac_args173 = nil
      </Ruby.ruleLabelDef></Ruby.ruleLabelDefs>
      <ASTParser.anonymous>tree_for_id = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_WS166 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_LPAREN167 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_WS168 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_RPAREN169 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_WS170 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_LPAREN171 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_WS172 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_WS174 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_RPAREN175 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>stream_RPAREN = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token RPAREN")</ASTParser.anonymous>
      <ASTParser.anonymous>stream_WS = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token WS")</ASTParser.anonymous>
      <ASTParser.anonymous>stream_IDENTIFIER = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token IDENTIFIER")</ASTParser.anonymous>
      <ASTParser.anonymous>stream_LPAREN = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token LPAREN")</ASTParser.anonymous>
      <ASTParser.anonymous>stream_mac_args = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule mac_args")</ASTParser.anonymous></AST.ruleLabelDefs><Ruby.action></Ruby.action>
      <Ruby.region__rule__body><Ruby.ruleBody><if(memoize)_subtemplate><if(backtracking)_subtemplate>success = false # flag used for memoization
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      begin
        <Ruby.ruleMemoization><if(memoize)_subtemplate># rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
        end
        </if(memoize)_subtemplate></Ruby.ruleMemoization><Ruby.ruleBlock># at line 304:5: (id= IDENTIFIER ( WS )? LPAREN ( WS )? RPAREN -> ^( EXPAND $id) | id= IDENTIFIER ( WS )? LPAREN ( WS )? mac_args ( WS )? RPAREN -> ^( EXPAND $id ( mac_args )? ) )
        alt_52 = 2
        <Ruby.region__ruleBlock__decision><Ruby.dfaState>look_52_0 = @input.peek(1)

        <Ruby.dfaEdge>if (<Ruby.lookaheadTest>look_52_0 == IDENTIFIER</Ruby.lookaheadTest>) 
          <Ruby.dfaState>look_52_1 = @input.peek(2)

          <Ruby.dfaEdge>if (<Ruby.lookaheadTest>look_52_1 == WS</Ruby.lookaheadTest>) 
            <Ruby.dfaState>look_52_2 = @input.peek(3)

            <Ruby.dfaEdge>if (<Ruby.lookaheadTest>look_52_2 == LPAREN</Ruby.lookaheadTest>) 
              <Ruby.dfaStateSwitch>case look_52 = @input.peek(4)
              <Ruby.dfaEdgeSwitch>when <ASTParser.anonymous>WS</ASTParser.anonymous> then <Ruby.dfaState>look_52_4 = @input.peek(5)

              <Ruby.dfaEdge>if (<Ruby.setTest><Ruby.lookaheadTest>look_52_4 == TEXT_END</Ruby.lookaheadTest> || <Ruby.lookaheadRangeTest>look_52_4.between?(IDENTIFIER, WS)</Ruby.lookaheadRangeTest> || <Ruby.lookaheadTest>look_52_4 == COMMA</Ruby.lookaheadTest> || <Ruby.lookaheadRangeTest>look_52_4.between?(DECIMAL_LITERAL, STRING_LITERAL)</Ruby.lookaheadRangeTest> || <Ruby.lookaheadTest>look_52_4 == SIZEOF</Ruby.lookaheadTest> || <Ruby.lookaheadRangeTest>look_52_4.between?(HEX_LITERAL, COPERATOR)</Ruby.lookaheadRangeTest></Ruby.setTest>) 
                <Ruby.dfaAcceptState>alt_52 = 2</Ruby.dfaAcceptState></Ruby.dfaEdge>
              els<Ruby.dfaEdge>if (<Ruby.lookaheadTest>look_52_4 == RPAREN</Ruby.lookaheadTest>) 
                <Ruby.dfaState>look_52_5 = @input.peek(6)

                <Ruby.dfaEdge>if (<Ruby.evalSynPredicate>syntactic_predicate?(%s(<ASTParser.anonymous>synpred_98_cpp!</ASTParser.anonymous>))</Ruby.evalSynPredicate>) 
                  <Ruby.dfaAcceptState>alt_52 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>
                els<Ruby.dfaEdge>if (<Ruby.true>true</Ruby.true>) 
                  <Ruby.dfaAcceptState>alt_52 = 2</Ruby.dfaAcceptState></Ruby.dfaEdge>
                else
                <else_subtemplate><Ruby.ruleBacktrackFailure><if(backtracking)_subtemplate>@state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
                  </if(backtracking)_subtemplate></Ruby.ruleBacktrackFailure>nvae = NoViableAlternative("", 52, 5)
                  <Ruby.region__dfaState__noViableAltException>raise nvae</Ruby.region__dfaState__noViableAltException>
                </else_subtemplate>end</Ruby.dfaState></Ruby.dfaEdge>
              else
              <else_subtemplate><Ruby.ruleBacktrackFailure><if(backtracking)_subtemplate>@state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
                </if(backtracking)_subtemplate></Ruby.ruleBacktrackFailure>nvae = NoViableAlternative("", 52, 4)
                <Ruby.region__dfaState__noViableAltException>raise nvae</Ruby.region__dfaState__noViableAltException>
              </else_subtemplate>end</Ruby.dfaState></Ruby.dfaEdgeSwitch>
              <Ruby.dfaEdgeSwitch>when <ASTParser.anonymous>RPAREN</ASTParser.anonymous> then <Ruby.dfaState>look_52_5 = @input.peek(5)

              <Ruby.dfaEdge>if (<Ruby.evalSynPredicate>syntactic_predicate?(%s(<ASTParser.anonymous>synpred_98_cpp!</ASTParser.anonymous>))</Ruby.evalSynPredicate>) 
                <Ruby.dfaAcceptState>alt_52 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>
              els<Ruby.dfaEdge>if (<Ruby.true>true</Ruby.true>) 
                <Ruby.dfaAcceptState>alt_52 = 2</Ruby.dfaAcceptState></Ruby.dfaEdge>
              else
              <else_subtemplate><Ruby.ruleBacktrackFailure><if(backtracking)_subtemplate>@state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
                </if(backtracking)_subtemplate></Ruby.ruleBacktrackFailure>nvae = NoViableAlternative("", 52, 5)
                <Ruby.region__dfaState__noViableAltException>raise nvae</Ruby.region__dfaState__noViableAltException>
              </else_subtemplate>end</Ruby.dfaState></Ruby.dfaEdgeSwitch>
              <Ruby.dfaEdgeSwitch>when <ASTParser.anonymous>TEXT_END</ASTParser.anonymous>, <ASTParser.anonymous>IDENTIFIER</ASTParser.anonymous>, <ASTParser.anonymous>LPAREN</ASTParser.anonymous>, <ASTParser.anonymous>COMMA</ASTParser.anonymous>, <ASTParser.anonymous>DECIMAL_LITERAL</ASTParser.anonymous>, <ASTParser.anonymous>STRING_LITERAL</ASTParser.anonymous>, <ASTParser.anonymous>SIZEOF</ASTParser.anonymous>, <ASTParser.anonymous>HEX_LITERAL</ASTParser.anonymous>, <ASTParser.anonymous>OCTAL_LITERAL</ASTParser.anonymous>, <ASTParser.anonymous>CHARACTER_LITERAL</ASTParser.anonymous>, <ASTParser.anonymous>FLOATING_POINT_LITERAL</ASTParser.anonymous>, <ASTParser.anonymous>STRINGIFICATION</ASTParser.anonymous>, <ASTParser.anonymous>STRING_OP</ASTParser.anonymous>, <ASTParser.anonymous>SEMICOLON</ASTParser.anonymous>, <ASTParser.anonymous>SHARPSHARP</ASTParser.anonymous>, <ASTParser.anonymous>CKEYWORD</ASTParser.anonymous>, <ASTParser.anonymous>COPERATOR</ASTParser.anonymous> then <Ruby.dfaAcceptState>alt_52 = 2</Ruby.dfaAcceptState></Ruby.dfaEdgeSwitch>
              else
              <else_subtemplate><Ruby.ruleBacktrackFailure><if(backtracking)_subtemplate>@state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
                </if(backtracking)_subtemplate></Ruby.ruleBacktrackFailure>
                nvae = NoViableAlternative("", 52, 3)
                <Ruby.region__dfaStateSwitch__noViableAltException>raise nvae</Ruby.region__dfaStateSwitch__noViableAltException>
              </else_subtemplate>end</Ruby.dfaStateSwitch></Ruby.dfaEdge>
            else
            <else_subtemplate><Ruby.ruleBacktrackFailure><if(backtracking)_subtemplate>@state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
              </if(backtracking)_subtemplate></Ruby.ruleBacktrackFailure>nvae = NoViableAlternative("", 52, 2)
              <Ruby.region__dfaState__noViableAltException>raise nvae</Ruby.region__dfaState__noViableAltException>
            </else_subtemplate>end</Ruby.dfaState></Ruby.dfaEdge>
          els<Ruby.dfaEdge>if (<Ruby.lookaheadTest>look_52_1 == LPAREN</Ruby.lookaheadTest>) 
            <Ruby.dfaStateSwitch>case look_52 = @input.peek(3)
            <Ruby.dfaEdgeSwitch>when <ASTParser.anonymous>WS</ASTParser.anonymous> then <Ruby.dfaState>look_52_4 = @input.peek(4)

            <Ruby.dfaEdge>if (<Ruby.setTest><Ruby.lookaheadTest>look_52_4 == TEXT_END</Ruby.lookaheadTest> || <Ruby.lookaheadRangeTest>look_52_4.between?(IDENTIFIER, WS)</Ruby.lookaheadRangeTest> || <Ruby.lookaheadTest>look_52_4 == COMMA</Ruby.lookaheadTest> || <Ruby.lookaheadRangeTest>look_52_4.between?(DECIMAL_LITERAL, STRING_LITERAL)</Ruby.lookaheadRangeTest> || <Ruby.lookaheadTest>look_52_4 == SIZEOF</Ruby.lookaheadTest> || <Ruby.lookaheadRangeTest>look_52_4.between?(HEX_LITERAL, COPERATOR)</Ruby.lookaheadRangeTest></Ruby.setTest>) 
              <Ruby.dfaAcceptState>alt_52 = 2</Ruby.dfaAcceptState></Ruby.dfaEdge>
            els<Ruby.dfaEdge>if (<Ruby.lookaheadTest>look_52_4 == RPAREN</Ruby.lookaheadTest>) 
              <Ruby.dfaState>look_52_5 = @input.peek(5)

              <Ruby.dfaEdge>if (<Ruby.evalSynPredicate>syntactic_predicate?(%s(<ASTParser.anonymous>synpred_98_cpp!</ASTParser.anonymous>))</Ruby.evalSynPredicate>) 
                <Ruby.dfaAcceptState>alt_52 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>
              els<Ruby.dfaEdge>if (<Ruby.true>true</Ruby.true>) 
                <Ruby.dfaAcceptState>alt_52 = 2</Ruby.dfaAcceptState></Ruby.dfaEdge>
              else
              <else_subtemplate><Ruby.ruleBacktrackFailure><if(backtracking)_subtemplate>@state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
                </if(backtracking)_subtemplate></Ruby.ruleBacktrackFailure>nvae = NoViableAlternative("", 52, 5)
                <Ruby.region__dfaState__noViableAltException>raise nvae</Ruby.region__dfaState__noViableAltException>
              </else_subtemplate>end</Ruby.dfaState></Ruby.dfaEdge>
            else
            <else_subtemplate><Ruby.ruleBacktrackFailure><if(backtracking)_subtemplate>@state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
              </if(backtracking)_subtemplate></Ruby.ruleBacktrackFailure>nvae = NoViableAlternative("", 52, 4)
              <Ruby.region__dfaState__noViableAltException>raise nvae</Ruby.region__dfaState__noViableAltException>
            </else_subtemplate>end</Ruby.dfaState></Ruby.dfaEdgeSwitch>
            <Ruby.dfaEdgeSwitch>when <ASTParser.anonymous>RPAREN</ASTParser.anonymous> then <Ruby.dfaState>look_52_5 = @input.peek(4)

            <Ruby.dfaEdge>if (<Ruby.evalSynPredicate>syntactic_predicate?(%s(<ASTParser.anonymous>synpred_98_cpp!</ASTParser.anonymous>))</Ruby.evalSynPredicate>) 
              <Ruby.dfaAcceptState>alt_52 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>
            els<Ruby.dfaEdge>if (<Ruby.true>true</Ruby.true>) 
              <Ruby.dfaAcceptState>alt_52 = 2</Ruby.dfaAcceptState></Ruby.dfaEdge>
            else
            <else_subtemplate><Ruby.ruleBacktrackFailure><if(backtracking)_subtemplate>@state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
              </if(backtracking)_subtemplate></Ruby.ruleBacktrackFailure>nvae = NoViableAlternative("", 52, 5)
              <Ruby.region__dfaState__noViableAltException>raise nvae</Ruby.region__dfaState__noViableAltException>
            </else_subtemplate>end</Ruby.dfaState></Ruby.dfaEdgeSwitch>
            <Ruby.dfaEdgeSwitch>when <ASTParser.anonymous>TEXT_END</ASTParser.anonymous>, <ASTParser.anonymous>IDENTIFIER</ASTParser.anonymous>, <ASTParser.anonymous>LPAREN</ASTParser.anonymous>, <ASTParser.anonymous>COMMA</ASTParser.anonymous>, <ASTParser.anonymous>DECIMAL_LITERAL</ASTParser.anonymous>, <ASTParser.anonymous>STRING_LITERAL</ASTParser.anonymous>, <ASTParser.anonymous>SIZEOF</ASTParser.anonymous>, <ASTParser.anonymous>HEX_LITERAL</ASTParser.anonymous>, <ASTParser.anonymous>OCTAL_LITERAL</ASTParser.anonymous>, <ASTParser.anonymous>CHARACTER_LITERAL</ASTParser.anonymous>, <ASTParser.anonymous>FLOATING_POINT_LITERAL</ASTParser.anonymous>, <ASTParser.anonymous>STRINGIFICATION</ASTParser.anonymous>, <ASTParser.anonymous>STRING_OP</ASTParser.anonymous>, <ASTParser.anonymous>SEMICOLON</ASTParser.anonymous>, <ASTParser.anonymous>SHARPSHARP</ASTParser.anonymous>, <ASTParser.anonymous>CKEYWORD</ASTParser.anonymous>, <ASTParser.anonymous>COPERATOR</ASTParser.anonymous> then <Ruby.dfaAcceptState>alt_52 = 2</Ruby.dfaAcceptState></Ruby.dfaEdgeSwitch>
            else
            <else_subtemplate><Ruby.ruleBacktrackFailure><if(backtracking)_subtemplate>@state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
              </if(backtracking)_subtemplate></Ruby.ruleBacktrackFailure>
              nvae = NoViableAlternative("", 52, 3)
              <Ruby.region__dfaStateSwitch__noViableAltException>raise nvae</Ruby.region__dfaStateSwitch__noViableAltException>
            </else_subtemplate>end</Ruby.dfaStateSwitch></Ruby.dfaEdge>
          else
          <else_subtemplate><Ruby.ruleBacktrackFailure><if(backtracking)_subtemplate>@state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
            </if(backtracking)_subtemplate></Ruby.ruleBacktrackFailure>nvae = NoViableAlternative("", 52, 1)
            <Ruby.region__dfaState__noViableAltException>raise nvae</Ruby.region__dfaState__noViableAltException>
          </else_subtemplate>end</Ruby.dfaState></Ruby.dfaEdge>
        else
        <else_subtemplate><Ruby.ruleBacktrackFailure><if(backtracking)_subtemplate>@state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
          </if(backtracking)_subtemplate></Ruby.ruleBacktrackFailure>nvae = NoViableAlternative("", 52, 0)
          <Ruby.region__dfaState__noViableAltException>raise nvae</Ruby.region__dfaState__noViableAltException>
        </else_subtemplate>end</Ruby.dfaState></Ruby.region__ruleBlock__decision>
        case alt_52
        <Ruby.altSwitchCase>when 1
          <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt># at line 304:7: id= IDENTIFIER ( WS )? LPAREN ( WS )? RPAREN
          <Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>id = </if(label)_subtemplate>match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_macro_expansion_2871)</Ruby.tokenRef></ASTParser.tokenRefBang> 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>stream_IDENTIFIER.add(id)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
          </Ruby.element><Ruby.element><Ruby.block># at line 304:21: ( WS )?
          alt_47 = 2
          <Ruby.region__block__body><Ruby.blockBody><Ruby.region__blockBody__decision><Ruby.dfaOptionalBlockState>look_47_0 = @input.peek(1)

          <Ruby.dfaEdge>if (<Ruby.lookaheadTest>look_47_0 == WS</Ruby.lookaheadTest>) 
            <Ruby.dfaAcceptState>alt_47 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>
          end</Ruby.dfaOptionalBlockState></Ruby.region__blockBody__decision>
          case alt_47
          <Ruby.altSwitchCase>when 1
            <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt># at line 0:0: WS
            <Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>__WS166__ = </if(label)_subtemplate>match(WS, TOKENS_FOLLOWING_WS_IN_macro_expansion_2873)</Ruby.tokenRef></ASTParser.tokenRefBang> 
            <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
              <ASTParser.<anonymous template argument>>stream_WS.add(__WS166__)</ASTParser.<anonymous template argument>>
            end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
            </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
          end</Ruby.blockBody></Ruby.region__block__body></Ruby.block>
          </Ruby.element><Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>__LPAREN167__ = </if(label)_subtemplate>match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_macro_expansion_2876)</Ruby.tokenRef></ASTParser.tokenRefBang> 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>stream_LPAREN.add(__LPAREN167__)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
          </Ruby.element><Ruby.element><Ruby.block># at line 304:32: ( WS )?
          alt_48 = 2
          <Ruby.region__block__body><Ruby.blockBody><Ruby.region__blockBody__decision><Ruby.dfaOptionalBlockState>look_48_0 = @input.peek(1)

          <Ruby.dfaEdge>if (<Ruby.lookaheadTest>look_48_0 == WS</Ruby.lookaheadTest>) 
            <Ruby.dfaAcceptState>alt_48 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>
          end</Ruby.dfaOptionalBlockState></Ruby.region__blockBody__decision>
          case alt_48
          <Ruby.altSwitchCase>when 1
            <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt># at line 0:0: WS
            <Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>__WS168__ = </if(label)_subtemplate>match(WS, TOKENS_FOLLOWING_WS_IN_macro_expansion_2878)</Ruby.tokenRef></ASTParser.tokenRefBang> 
            <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
              <ASTParser.<anonymous template argument>>stream_WS.add(__WS168__)</ASTParser.<anonymous template argument>>
            end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
            </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
          end</Ruby.blockBody></Ruby.region__block__body></Ruby.block>
          </Ruby.element><Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>__RPAREN169__ = </if(label)_subtemplate>match(RPAREN, TOKENS_FOLLOWING_RPAREN_IN_macro_expansion_2881)</Ruby.tokenRef></ASTParser.tokenRefBang> 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>stream_RPAREN.add(__RPAREN169__)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
          </Ruby.element><AST.rewriteCode># AST Rewrite
          # elements: id
          # token labels: id
          # rule labels: <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>
            <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
            <AST.rewriteCodeLabels><ASTParser.anonymous>stream_id = token_stream("token id", id)</ASTParser.anonymous>
            <ASTParser.anonymous>stream_<AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> = <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> ? subtree_stream("rule <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>", <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree) : subtree_stream("token <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>")</ASTParser.anonymous>
            </AST.rewriteCodeLabels>
            root_0 = @adaptor.create_flat_list!
            <AST.rewriteAltFirst><else_subtemplate># 304:43: -> ^( EXPAND $id)
            <AST.rewriteElementList><AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteTree># at line 304:46: ^( EXPAND $id)
            root_1 = @adaptor.create_flat_list!
            <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteImaginaryTokenRefRoot>root_1 = @adaptor.become_root(<AST.createImaginaryNode><else_subtemplate><if(!args)_subtemplate>@adaptor.create_from_type!(EXPAND, "EXPAND")</if(!args)_subtemplate></else_subtemplate></AST.createImaginaryNode>, root_1)
            </AST.rewriteImaginaryTokenRefRoot></AST.rewriteElement>
            <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteTokenLabelRef>@adaptor.add_child(root_1, stream_id.next_node)
            </AST.rewriteTokenLabelRef></AST.rewriteElement>
            @adaptor.add_child(root_0, root_1)
            </AST.rewriteTree></AST.rewriteElement></AST.rewriteElementList></else_subtemplate></AST.rewriteAltFirst>


            <if(!TREE_PARSER)_subtemplate><AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
            </if(!TREE_PARSER)_subtemplate></ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.rewriteCode></AST.alt></Ruby.altSwitchCase>
        <Ruby.altSwitchCase>when 2
          <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt># at line 305:7: id= IDENTIFIER ( WS )? LPAREN ( WS )? mac_args ( WS )? RPAREN
          <Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>id = </if(label)_subtemplate>match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_macro_expansion_2900)</Ruby.tokenRef></ASTParser.tokenRefBang> 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>stream_IDENTIFIER.add(id)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
          </Ruby.element><Ruby.element><Ruby.block># at line 305:21: ( WS )?
          alt_49 = 2
          <Ruby.region__block__body><Ruby.blockBody><Ruby.region__blockBody__decision><Ruby.dfaOptionalBlockState>look_49_0 = @input.peek(1)

          <Ruby.dfaEdge>if (<Ruby.lookaheadTest>look_49_0 == WS</Ruby.lookaheadTest>) 
            <Ruby.dfaAcceptState>alt_49 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>
          end</Ruby.dfaOptionalBlockState></Ruby.region__blockBody__decision>
          case alt_49
          <Ruby.altSwitchCase>when 1
            <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt># at line 0:0: WS
            <Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>__WS170__ = </if(label)_subtemplate>match(WS, TOKENS_FOLLOWING_WS_IN_macro_expansion_2902)</Ruby.tokenRef></ASTParser.tokenRefBang> 
            <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
              <ASTParser.<anonymous template argument>>stream_WS.add(__WS170__)</ASTParser.<anonymous template argument>>
            end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
            </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
          end</Ruby.blockBody></Ruby.region__block__body></Ruby.block>
          </Ruby.element><Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>__LPAREN171__ = </if(label)_subtemplate>match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_macro_expansion_2905)</Ruby.tokenRef></ASTParser.tokenRefBang> 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>stream_LPAREN.add(__LPAREN171__)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
          </Ruby.element><Ruby.element><Ruby.block># at line 305:32: ( WS )?
          alt_50 = 2
          <Ruby.region__block__body><Ruby.blockBody><Ruby.region__blockBody__decision><Ruby.dfaOptionalBlockState>look_50_0 = @input.peek(1)

          <Ruby.dfaEdge>if (<Ruby.lookaheadTest>look_50_0 == WS</Ruby.lookaheadTest>) 
            <Ruby.dfaOptionalBlockState>look_50_1 = @input.peek(2)

            <Ruby.dfaEdge>if (<Ruby.evalSynPredicate>syntactic_predicate?(%s(<ASTParser.anonymous>synpred_100_cpp!</ASTParser.anonymous>))</Ruby.evalSynPredicate>) 
              <Ruby.dfaAcceptState>alt_50 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>
            end</Ruby.dfaOptionalBlockState></Ruby.dfaEdge>
          end</Ruby.dfaOptionalBlockState></Ruby.region__blockBody__decision>
          case alt_50
          <Ruby.altSwitchCase>when 1
            <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt># at line 0:0: WS
            <Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>__WS172__ = </if(label)_subtemplate>match(WS, TOKENS_FOLLOWING_WS_IN_macro_expansion_2907)</Ruby.tokenRef></ASTParser.tokenRefBang> 
            <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
              <ASTParser.<anonymous template argument>>stream_WS.add(__WS172__)</ASTParser.<anonymous template argument>>
            end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
            </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
          end</Ruby.blockBody></Ruby.region__block__body></Ruby.block>
          </Ruby.element><Ruby.element><AST.ruleRefTrack><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_mac_args_IN_macro_expansion_2910)
          <if(label)_subtemplate>mac_args173 = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>mac_args</ASTParser.<anonymous template argument>></Ruby.methodCall>
          @state.following.pop</Ruby.ruleRef>
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>stream_mac_args.add(mac_args173.tree)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.ruleRefTrack>
          </Ruby.element><Ruby.element><Ruby.block># at line 305:45: ( WS )?
          alt_51 = 2
          <Ruby.region__block__body><Ruby.blockBody><Ruby.region__blockBody__decision><Ruby.dfaOptionalBlockState>look_51_0 = @input.peek(1)

          <Ruby.dfaEdge>if (<Ruby.lookaheadTest>look_51_0 == WS</Ruby.lookaheadTest>) 
            <Ruby.dfaAcceptState>alt_51 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>
          end</Ruby.dfaOptionalBlockState></Ruby.region__blockBody__decision>
          case alt_51
          <Ruby.altSwitchCase>when 1
            <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt># at line 0:0: WS
            <Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>__WS174__ = </if(label)_subtemplate>match(WS, TOKENS_FOLLOWING_WS_IN_macro_expansion_2912)</Ruby.tokenRef></ASTParser.tokenRefBang> 
            <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
              <ASTParser.<anonymous template argument>>stream_WS.add(__WS174__)</ASTParser.<anonymous template argument>>
            end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
            </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
          end</Ruby.blockBody></Ruby.region__block__body></Ruby.block>
          </Ruby.element><Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>__RPAREN175__ = </if(label)_subtemplate>match(RPAREN, TOKENS_FOLLOWING_RPAREN_IN_macro_expansion_2915)</Ruby.tokenRef></ASTParser.tokenRefBang> 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>stream_RPAREN.add(__RPAREN175__)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
          </Ruby.element><AST.rewriteCode># AST Rewrite
          # elements: mac_args, id
          # token labels: id
          # rule labels: <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>
            <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
            <AST.rewriteCodeLabels><ASTParser.anonymous>stream_id = token_stream("token id", id)</ASTParser.anonymous>
            <ASTParser.anonymous>stream_<AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> = <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> ? subtree_stream("rule <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>", <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree) : subtree_stream("token <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>")</ASTParser.anonymous>
            </AST.rewriteCodeLabels>
            root_0 = @adaptor.create_flat_list!
            <AST.rewriteAltFirst><else_subtemplate># 305:56: -> ^( EXPAND $id ( mac_args )? )
            <AST.rewriteElementList><AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteTree># at line 305:59: ^( EXPAND $id ( mac_args )? )
            root_1 = @adaptor.create_flat_list!
            <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteImaginaryTokenRefRoot>root_1 = @adaptor.become_root(<AST.createImaginaryNode><else_subtemplate><if(!args)_subtemplate>@adaptor.create_from_type!(EXPAND, "EXPAND")</if(!args)_subtemplate></else_subtemplate></AST.createImaginaryNode>, root_1)
            </AST.rewriteImaginaryTokenRefRoot></AST.rewriteElement>
            <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteTokenLabelRef>@adaptor.add_child(root_1, stream_id.next_node)
            </AST.rewriteTokenLabelRef></AST.rewriteElement><AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteOptionalBlock># at line 305:72: ( mac_args )?
            if <ASTParser.anonymous>stream_mac_args.has_next?</ASTParser.anonymous>
              <AST.rewriteElementList><AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteRuleRef>@adaptor.add_child(root_1, stream_mac_args.next_tree)
              </AST.rewriteRuleRef></AST.rewriteElement></AST.rewriteElementList>
            end

            <ASTParser.anonymous>stream_mac_args.reset();
            </ASTParser.anonymous></AST.rewriteOptionalBlock></AST.rewriteElement>
            @adaptor.add_child(root_0, root_1)
            </AST.rewriteTree></AST.rewriteElement></AST.rewriteElementList></else_subtemplate></AST.rewriteAltFirst>


            <if(!TREE_PARSER)_subtemplate><AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
            </if(!TREE_PARSER)_subtemplate></ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.rewriteCode></AST.alt></Ruby.altSwitchCase>
        end</Ruby.ruleBlock><ASTParser.ruleCleanUp><Ruby.ruleCleanUp><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(!TREE_PARSER)_subtemplate># - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)
        </if(!TREE_PARSER)_subtemplate></if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.ruleCleanUp>
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>
          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)
          </ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleCleanUp>
      <if(memoize)_subtemplate><if(backtracking)_subtemplate>  success = true
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      <else_subtemplate><if(!emptyRule)_subtemplate><else_subtemplate>rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        <ASTParser.region__ruleBody__setErrorReturnValue>return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)
        </ASTParser.region__ruleBody__setErrorReturnValue></else_subtemplate></if(!emptyRule)_subtemplate></else_subtemplate>
      ensure
        <Ruby.traceOut><else_subtemplate># -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 35)
        </else_subtemplate></Ruby.traceOut><Ruby.memoize><if(memoize)_subtemplate><if(backtracking)_subtemplate>memoize(__method__, macro_expansion_start_index, success) if @state.backtracking > 0
        </if(backtracking)_subtemplate></if(memoize)_subtemplate></Ruby.memoize><Ruby.ruleScopeCleanUp></Ruby.ruleScopeCleanUp>
      end</Ruby.ruleBody></Ruby.region__rule__body>
      
      return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
    end
    </Ruby.rule>
    </ASTParser.anonymous><ASTParser.anonymous><Ruby.rule><Ruby.returnScope><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><Ruby.returnStructName>MacArgsReturnValue</Ruby.returnStructName> = define_return_scope </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.returnScope>

    # parser rule mac_args
    # 
    # (in Cpp.g)
    # 308:1: mac_args : marg+= m_arg ( ( WS )? COMMA ( WS )? marg+= m_arg )* -> ^( EXP_ARGS ( $marg)+ ) ;
    def mac_args
      <Ruby.traceIn><else_subtemplate># -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 36)
      </else_subtemplate></Ruby.traceIn><Ruby.ruleScopeSetUp></Ruby.ruleScopeSetUp><AST.ruleDeclarations><Ruby.ruleDeclarations><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate>return_value = <Ruby.returnStructName>MacArgsReturnValue</Ruby.returnStructName>.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(memoize)_subtemplate>mac_args_start_index = @input.index
      </if(memoize)_subtemplate></Ruby.ruleDeclarations>
      root_0 = nil
      </AST.ruleDeclarations><AST.ruleLabelDefs><Ruby.ruleLabelDefs><ASTParser.anonymous>__WS176__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__COMMA177__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__WS178__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>list_of_marg = []
      </ASTParser.anonymous><Ruby.ruleLabelDef>marg = nil
      </Ruby.ruleLabelDef><ASTParser.anonymous>marg = nil
      </ASTParser.anonymous></Ruby.ruleLabelDefs>
      <ASTParser.anonymous>tree_for_WS176 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_COMMA177 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_WS178 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>stream_WS = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token WS")</ASTParser.anonymous>
      <ASTParser.anonymous>stream_COMMA = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token COMMA")</ASTParser.anonymous>
      <ASTParser.anonymous>stream_m_arg = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule m_arg")</ASTParser.anonymous></AST.ruleLabelDefs><Ruby.action></Ruby.action>
      <Ruby.region__rule__body><Ruby.ruleBody><if(memoize)_subtemplate><if(backtracking)_subtemplate>success = false # flag used for memoization
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      begin
        <Ruby.ruleMemoization><if(memoize)_subtemplate># rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
        end
        </if(memoize)_subtemplate></Ruby.ruleMemoization><Ruby.ruleBlockSingleAlt><Ruby.region__ruleBlockSingleAlt__prealt></Ruby.region__ruleBlockSingleAlt__prealt><AST.alt># at line 308:18: marg+= m_arg ( ( WS )? COMMA ( WS )? marg+= m_arg )*
        <Ruby.element><AST.ruleRefTrackAndListLabel><AST.ruleRefTrack><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_m_arg_IN_mac_args_2948)
        <if(label)_subtemplate>marg = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>m_arg</ASTParser.<anonymous template argument>></Ruby.methodCall>
        @state.following.pop</Ruby.ruleRef>
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>stream_m_arg.add(marg.tree)</ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.ruleRefTrack>
        <Ruby.addToList>list_of_marg << <ASTParser.<anonymous template argument>>marg.tree</ASTParser.<anonymous template argument>>
        </Ruby.addToList></AST.ruleRefTrackAndListLabel>
        </Ruby.element><Ruby.element><Ruby.closureBlock># at line 308:30: ( ( WS )? COMMA ( WS )? marg+= m_arg )*
        <Ruby.region__closureBlock__loopBody><Ruby.closureBlockLoop>loop do  #loop 55
          alt_55 = 2
          <Ruby.region__closureBlockLoop__decisionBody><Ruby.dfaLoopbackState>look_55_0 = @input.peek(1)

          <Ruby.dfaEdge>if (<Ruby.lookaheadTest>look_55_0 == WS</Ruby.lookaheadTest>) 
            <Ruby.dfaLoopbackState>look_55_1 = @input.peek(2)

            <Ruby.dfaEdge>if (<Ruby.lookaheadTest>look_55_1 == COMMA</Ruby.lookaheadTest>) 
              <Ruby.dfaAcceptState>alt_55 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>

            end</Ruby.dfaLoopbackState></Ruby.dfaEdge>
          els<Ruby.dfaEdge>if (<Ruby.lookaheadTest>look_55_0 == COMMA</Ruby.lookaheadTest>) 
            <Ruby.dfaAcceptState>alt_55 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>

          end</Ruby.dfaLoopbackState></Ruby.region__closureBlockLoop__decisionBody>
          case alt_55
          <Ruby.altSwitchCase>when 1
            <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt># at line 308:32: ( WS )? COMMA ( WS )? marg+= m_arg
            <Ruby.element><Ruby.block># at line 308:32: ( WS )?
            alt_53 = 2
            <Ruby.region__block__body><Ruby.blockBody><Ruby.region__blockBody__decision><Ruby.dfaOptionalBlockState>look_53_0 = @input.peek(1)

            <Ruby.dfaEdge>if (<Ruby.lookaheadTest>look_53_0 == WS</Ruby.lookaheadTest>) 
              <Ruby.dfaAcceptState>alt_53 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>
            end</Ruby.dfaOptionalBlockState></Ruby.region__blockBody__decision>
            case alt_53
            <Ruby.altSwitchCase>when 1
              <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt># at line 0:0: WS
              <Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>__WS176__ = </if(label)_subtemplate>match(WS, TOKENS_FOLLOWING_WS_IN_mac_args_2952)</Ruby.tokenRef></ASTParser.tokenRefBang> 
              <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
                <ASTParser.<anonymous template argument>>stream_WS.add(__WS176__)</ASTParser.<anonymous template argument>>
              end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
              </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
            end</Ruby.blockBody></Ruby.region__block__body></Ruby.block>
            </Ruby.element><Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>__COMMA177__ = </if(label)_subtemplate>match(COMMA, TOKENS_FOLLOWING_COMMA_IN_mac_args_2955)</Ruby.tokenRef></ASTParser.tokenRefBang> 
            <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
              <ASTParser.<anonymous template argument>>stream_COMMA.add(__COMMA177__)</ASTParser.<anonymous template argument>>
            end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
            </Ruby.element><Ruby.element><Ruby.block># at line 308:42: ( WS )?
            alt_54 = 2
            <Ruby.region__block__body><Ruby.blockBody><Ruby.region__blockBody__decision><Ruby.dfaOptionalBlockState>look_54_0 = @input.peek(1)

            <Ruby.dfaEdge>if (<Ruby.lookaheadTest>look_54_0 == WS</Ruby.lookaheadTest>) 
              <Ruby.dfaOptionalBlockState>look_54_1 = @input.peek(2)

              <Ruby.dfaEdge>if (<Ruby.evalSynPredicate>syntactic_predicate?(%s(<ASTParser.anonymous>synpred_103_cpp!</ASTParser.anonymous>))</Ruby.evalSynPredicate>) 
                <Ruby.dfaAcceptState>alt_54 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>
              end</Ruby.dfaOptionalBlockState></Ruby.dfaEdge>
            end</Ruby.dfaOptionalBlockState></Ruby.region__blockBody__decision>
            case alt_54
            <Ruby.altSwitchCase>when 1
              <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt># at line 0:0: WS
              <Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>__WS178__ = </if(label)_subtemplate>match(WS, TOKENS_FOLLOWING_WS_IN_mac_args_2957)</Ruby.tokenRef></ASTParser.tokenRefBang> 
              <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
                <ASTParser.<anonymous template argument>>stream_WS.add(__WS178__)</ASTParser.<anonymous template argument>>
              end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
              </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
            end</Ruby.blockBody></Ruby.region__block__body></Ruby.block>
            </Ruby.element><Ruby.element><AST.ruleRefTrackAndListLabel><AST.ruleRefTrack><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_m_arg_IN_mac_args_2962)
            <if(label)_subtemplate>marg = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>m_arg</ASTParser.<anonymous template argument>></Ruby.methodCall>
            @state.following.pop</Ruby.ruleRef>
            <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
              <ASTParser.<anonymous template argument>>stream_m_arg.add(marg.tree)</ASTParser.<anonymous template argument>>
            end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.ruleRefTrack>
            <Ruby.addToList>list_of_marg << <ASTParser.<anonymous template argument>>marg.tree</ASTParser.<anonymous template argument>>
            </Ruby.addToList></AST.ruleRefTrackAndListLabel>
            </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
          else
            break #loop 55
          end
        end</Ruby.closureBlockLoop></Ruby.region__closureBlock__loopBody></Ruby.closureBlock>
        </Ruby.element><AST.rewriteCode># AST Rewrite
        # elements: marg
        # token labels: 
        # rule labels: <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>
        # token list labels: 
        # rule list labels: marg
        # wildcard labels: 
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>
          <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
          <AST.rewriteCodeLabels><ASTParser.anonymous>stream_<AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> = <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> ? subtree_stream("rule <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>", <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree) : subtree_stream("token <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>")</ASTParser.anonymous>
          <ASTParser.anonymous>stream_marg = subtree_stream("token marg", list_of_marg)</ASTParser.anonymous></AST.rewriteCodeLabels>
          root_0 = @adaptor.create_flat_list!
          <AST.rewriteAltFirst><else_subtemplate># 308:61: -> ^( EXP_ARGS ( $marg)+ )
          <AST.rewriteElementList><AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteTree># at line 308:64: ^( EXP_ARGS ( $marg)+ )
          root_1 = @adaptor.create_flat_list!
          <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteImaginaryTokenRefRoot>root_1 = @adaptor.become_root(<AST.createImaginaryNode><else_subtemplate><if(!args)_subtemplate>@adaptor.create_from_type!(EXP_ARGS, "EXP_ARGS")</if(!args)_subtemplate></else_subtemplate></AST.createImaginaryNode>, root_1)
          </AST.rewriteImaginaryTokenRefRoot></AST.rewriteElement>
          <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewritePositiveClosureBlock># at line 308:75: ( $marg)+
          unless <ASTParser.anonymous>stream_marg.has_next?</ASTParser.anonymous>
            raise ANTLR3::RewriteEarlyExit
          end

          while <ASTParser.anonymous>stream_marg.has_next?</ASTParser.anonymous>
            <AST.rewriteElementList><AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteRuleListLabelRef>@adaptor.add_child(root_1, stream_marg.next_tree)
            </AST.rewriteRuleListLabelRef></AST.rewriteElement></AST.rewriteElementList>
          end

          <ASTParser.anonymous>stream_marg.reset
          </ASTParser.anonymous></AST.rewritePositiveClosureBlock></AST.rewriteElement>
          @adaptor.add_child(root_0, root_1)
          </AST.rewriteTree></AST.rewriteElement></AST.rewriteElementList></else_subtemplate></AST.rewriteAltFirst>


          <if(!TREE_PARSER)_subtemplate><AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
          </if(!TREE_PARSER)_subtemplate></ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.rewriteCode></AST.alt></Ruby.ruleBlockSingleAlt><ASTParser.ruleCleanUp><Ruby.ruleCleanUp><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(!TREE_PARSER)_subtemplate># - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)
        </if(!TREE_PARSER)_subtemplate></if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.ruleCleanUp>
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>
          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)
          </ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleCleanUp>
      <if(memoize)_subtemplate><if(backtracking)_subtemplate>  success = true
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      <else_subtemplate><if(!emptyRule)_subtemplate><else_subtemplate>rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        <ASTParser.region__ruleBody__setErrorReturnValue>return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)
        </ASTParser.region__ruleBody__setErrorReturnValue></else_subtemplate></if(!emptyRule)_subtemplate></else_subtemplate>
      ensure
        <Ruby.traceOut><else_subtemplate># -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 36)
        </else_subtemplate></Ruby.traceOut><Ruby.memoize><if(memoize)_subtemplate><if(backtracking)_subtemplate>memoize(__method__, mac_args_start_index, success) if @state.backtracking > 0
        </if(backtracking)_subtemplate></if(memoize)_subtemplate></Ruby.memoize><Ruby.ruleScopeCleanUp></Ruby.ruleScopeCleanUp>
      end</Ruby.ruleBody></Ruby.region__rule__body>
      
      return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
    end
    </Ruby.rule>
    </ASTParser.anonymous><ASTParser.anonymous><Ruby.rule><Ruby.returnScope><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><Ruby.returnStructName>MArgReturnValue</Ruby.returnStructName> = define_return_scope </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.returnScope>

    # parser rule m_arg
    # 
    # (in Cpp.g)
    # 311:1: m_arg : ( ( source_expression )+ -> ^( EXP_ARG ( source_expression )+ ) | -> ^( EXP_ARG ) );
    def m_arg
      <Ruby.traceIn><else_subtemplate># -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 37)
      </else_subtemplate></Ruby.traceIn><Ruby.ruleScopeSetUp></Ruby.ruleScopeSetUp><AST.ruleDeclarations><Ruby.ruleDeclarations><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate>return_value = <Ruby.returnStructName>MArgReturnValue</Ruby.returnStructName>.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(memoize)_subtemplate>m_arg_start_index = @input.index
      </if(memoize)_subtemplate></Ruby.ruleDeclarations>
      root_0 = nil
      </AST.ruleDeclarations><AST.ruleLabelDefs><Ruby.ruleLabelDefs><Ruby.ruleLabelDef>source_expression179 = nil
      </Ruby.ruleLabelDef></Ruby.ruleLabelDefs>
      <ASTParser.anonymous>stream_source_expression = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule source_expression")</ASTParser.anonymous></AST.ruleLabelDefs><Ruby.action></Ruby.action>
      <Ruby.region__rule__body><Ruby.ruleBody><if(memoize)_subtemplate><if(backtracking)_subtemplate>success = false # flag used for memoization
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      begin
        <Ruby.ruleMemoization><if(memoize)_subtemplate># rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
        end
        </if(memoize)_subtemplate></Ruby.ruleMemoization><Ruby.ruleBlock># at line 311:10: ( ( source_expression )+ -> ^( EXP_ARG ( source_expression )+ ) | -> ^( EXP_ARG ) )
        alt_57 = 2
        <Ruby.region__ruleBlock__decision><Ruby.dfaStateSwitch>case look_57 = @input.peek(1)
        <Ruby.dfaEdgeSwitch>when <ASTParser.anonymous>TEXT_END</ASTParser.anonymous>, <ASTParser.anonymous>IDENTIFIER</ASTParser.anonymous>, <ASTParser.anonymous>LPAREN</ASTParser.anonymous>, <ASTParser.anonymous>DECIMAL_LITERAL</ASTParser.anonymous>, <ASTParser.anonymous>STRING_LITERAL</ASTParser.anonymous>, <ASTParser.anonymous>SIZEOF</ASTParser.anonymous>, <ASTParser.anonymous>HEX_LITERAL</ASTParser.anonymous>, <ASTParser.anonymous>OCTAL_LITERAL</ASTParser.anonymous>, <ASTParser.anonymous>CHARACTER_LITERAL</ASTParser.anonymous>, <ASTParser.anonymous>FLOATING_POINT_LITERAL</ASTParser.anonymous>, <ASTParser.anonymous>STRINGIFICATION</ASTParser.anonymous>, <ASTParser.anonymous>STRING_OP</ASTParser.anonymous>, <ASTParser.anonymous>SEMICOLON</ASTParser.anonymous>, <ASTParser.anonymous>SHARPSHARP</ASTParser.anonymous>, <ASTParser.anonymous>CKEYWORD</ASTParser.anonymous>, <ASTParser.anonymous>COPERATOR</ASTParser.anonymous> then <Ruby.dfaAcceptState>alt_57 = 1</Ruby.dfaAcceptState></Ruby.dfaEdgeSwitch>
        <Ruby.dfaEdgeSwitch>when <ASTParser.anonymous>WS</ASTParser.anonymous> then <Ruby.dfaState>look_57_2 = @input.peek(2)

        <Ruby.dfaEdge>if (<Ruby.evalSynPredicate>syntactic_predicate?(%s(<ASTParser.anonymous>synpred_106_cpp!</ASTParser.anonymous>))</Ruby.evalSynPredicate>) 
          <Ruby.dfaAcceptState>alt_57 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>
        els<Ruby.dfaEdge>if (<Ruby.true>true</Ruby.true>) 
          <Ruby.dfaAcceptState>alt_57 = 2</Ruby.dfaAcceptState></Ruby.dfaEdge>
        else
        <else_subtemplate><Ruby.ruleBacktrackFailure><if(backtracking)_subtemplate>@state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
          </if(backtracking)_subtemplate></Ruby.ruleBacktrackFailure>nvae = NoViableAlternative("", 57, 2)
          <Ruby.region__dfaState__noViableAltException>raise nvae</Ruby.region__dfaState__noViableAltException>
        </else_subtemplate>end</Ruby.dfaState></Ruby.dfaEdgeSwitch>
        <Ruby.dfaEdgeSwitch>when <ASTParser.anonymous>EOF</ASTParser.anonymous>, <ASTParser.anonymous>RPAREN</ASTParser.anonymous>, <ASTParser.anonymous>COMMA</ASTParser.anonymous> then <Ruby.dfaAcceptState>alt_57 = 2</Ruby.dfaAcceptState></Ruby.dfaEdgeSwitch>
        else
        <else_subtemplate><Ruby.ruleBacktrackFailure><if(backtracking)_subtemplate>@state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
          </if(backtracking)_subtemplate></Ruby.ruleBacktrackFailure>
          nvae = NoViableAlternative("", 57, 0)
          <Ruby.region__dfaStateSwitch__noViableAltException>raise nvae</Ruby.region__dfaStateSwitch__noViableAltException>
        </else_subtemplate>end</Ruby.dfaStateSwitch></Ruby.region__ruleBlock__decision>
        case alt_57
        <Ruby.altSwitchCase>when 1
          <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt># at line 311:18: ( source_expression )+
          <Ruby.element><Ruby.positiveClosureBlock># at file 311:18: ( source_expression )+
          <Ruby.region__positiveClosureBlock__loopBody><Ruby.positiveClosureBlockLoop>match_count_56 = 0
          loop do
            alt_56 = 2
            <Ruby.region__positiveClosureBlockLoop__decisionBody><Ruby.dfaLoopbackState>look_56_0 = @input.peek(1)

            <Ruby.dfaEdge>if (<Ruby.lookaheadTest>look_56_0 == WS</Ruby.lookaheadTest>) 
              <Ruby.dfaLoopbackState>look_56_1 = @input.peek(2)

              <Ruby.dfaEdge>if (<Ruby.evalSynPredicate>syntactic_predicate?(%s(<ASTParser.anonymous>synpred_105_cpp!</ASTParser.anonymous>))</Ruby.evalSynPredicate>) 
                <Ruby.dfaAcceptState>alt_56 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>

              end</Ruby.dfaLoopbackState></Ruby.dfaEdge>
            els<Ruby.dfaEdge>if (<Ruby.setTest><Ruby.lookaheadTest>look_56_0 == TEXT_END</Ruby.lookaheadTest> || <Ruby.lookaheadRangeTest>look_56_0.between?(IDENTIFIER, LPAREN)</Ruby.lookaheadRangeTest> || <Ruby.lookaheadRangeTest>look_56_0.between?(DECIMAL_LITERAL, STRING_LITERAL)</Ruby.lookaheadRangeTest> || <Ruby.lookaheadTest>look_56_0 == SIZEOF</Ruby.lookaheadTest> || <Ruby.lookaheadRangeTest>look_56_0.between?(HEX_LITERAL, COPERATOR)</Ruby.lookaheadRangeTest></Ruby.setTest>) 
              <Ruby.dfaAcceptState>alt_56 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>

            end</Ruby.dfaLoopbackState></Ruby.region__positiveClosureBlockLoop__decisionBody>
            case alt_56
            <Ruby.altSwitchCase>when 1
              <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt># at line 0:0: source_expression
              <Ruby.element><AST.ruleRefTrack><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_source_expression_IN_m_arg_2997)
              <if(label)_subtemplate>source_expression179 = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>source_expression</ASTParser.<anonymous template argument>></Ruby.methodCall>
              @state.following.pop</Ruby.ruleRef>
              <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
                <ASTParser.<anonymous template argument>>stream_source_expression.add(source_expression179.tree)</ASTParser.<anonymous template argument>>
              end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.ruleRefTrack>
              </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
            else
              match_count_56 > 0 and break
              <Ruby.ruleBacktrackFailure><if(backtracking)_subtemplate>@state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
              </if(backtracking)_subtemplate></Ruby.ruleBacktrackFailure>
              eee = EarlyExit(56)
              <Ruby.region__positiveClosureBlockLoop__earlyExitException></Ruby.region__positiveClosureBlockLoop__earlyExitException>

              raise eee
            end
            match_count_56 += 1
          end
          </Ruby.positiveClosureBlockLoop></Ruby.region__positiveClosureBlock__loopBody></Ruby.positiveClosureBlock>
          </Ruby.element><AST.rewriteCode># AST Rewrite
          # elements: source_expression
          # token labels: 
          # rule labels: <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>
            <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
            <AST.rewriteCodeLabels><ASTParser.anonymous>stream_<AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> = <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> ? subtree_stream("rule <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>", <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree) : subtree_stream("token <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>")</ASTParser.anonymous>
            </AST.rewriteCodeLabels>
            root_0 = @adaptor.create_flat_list!
            <AST.rewriteAltFirst><else_subtemplate># 311:43: -> ^( EXP_ARG ( source_expression )+ )
            <AST.rewriteElementList><AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteTree># at line 311:46: ^( EXP_ARG ( source_expression )+ )
            root_1 = @adaptor.create_flat_list!
            <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteImaginaryTokenRefRoot>root_1 = @adaptor.become_root(<AST.createImaginaryNode><else_subtemplate><if(!args)_subtemplate>@adaptor.create_from_type!(EXP_ARG, "EXP_ARG")</if(!args)_subtemplate></else_subtemplate></AST.createImaginaryNode>, root_1)
            </AST.rewriteImaginaryTokenRefRoot></AST.rewriteElement>
            <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewritePositiveClosureBlock># at line 311:56: ( source_expression )+
            unless <ASTParser.anonymous>stream_source_expression.has_next?</ASTParser.anonymous>
              raise ANTLR3::RewriteEarlyExit
            end

            while <ASTParser.anonymous>stream_source_expression.has_next?</ASTParser.anonymous>
              <AST.rewriteElementList><AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteRuleRef>@adaptor.add_child(root_1, stream_source_expression.next_tree)
              </AST.rewriteRuleRef></AST.rewriteElement></AST.rewriteElementList>
            end

            <ASTParser.anonymous>stream_source_expression.reset
            </ASTParser.anonymous></AST.rewritePositiveClosureBlock></AST.rewriteElement>
            @adaptor.add_child(root_0, root_1)
            </AST.rewriteTree></AST.rewriteElement></AST.rewriteElementList></else_subtemplate></AST.rewriteAltFirst>


            <if(!TREE_PARSER)_subtemplate><AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
            </if(!TREE_PARSER)_subtemplate></ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.rewriteCode></AST.alt></Ruby.altSwitchCase>
        <Ruby.altSwitchCase>when 2
          <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt># at line 312:13: 
          <AST.rewriteCode># AST Rewrite
          # elements: 
          # token labels: 
          # rule labels: <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>
            <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
            <AST.rewriteCodeLabels><ASTParser.anonymous>stream_<AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> = <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> ? subtree_stream("rule <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>", <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree) : subtree_stream("token <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>")</ASTParser.anonymous>
            </AST.rewriteCodeLabels>
            root_0 = @adaptor.create_flat_list!
            <AST.rewriteAltFirst><else_subtemplate># 312:13: -> ^( EXP_ARG )
            <AST.rewriteElementList><AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteTree># at line 312:16: ^( EXP_ARG )
            root_1 = @adaptor.create_flat_list!
            <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteImaginaryTokenRefRoot>root_1 = @adaptor.become_root(<AST.createImaginaryNode><else_subtemplate><if(!args)_subtemplate>@adaptor.create_from_type!(EXP_ARG, "EXP_ARG")</if(!args)_subtemplate></else_subtemplate></AST.createImaginaryNode>, root_1)
            </AST.rewriteImaginaryTokenRefRoot></AST.rewriteElement>
            @adaptor.add_child(root_0, root_1)
            </AST.rewriteTree></AST.rewriteElement></AST.rewriteElementList></else_subtemplate></AST.rewriteAltFirst>


            <if(!TREE_PARSER)_subtemplate><AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
            </if(!TREE_PARSER)_subtemplate></ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.rewriteCode></AST.alt></Ruby.altSwitchCase>
        end</Ruby.ruleBlock><ASTParser.ruleCleanUp><Ruby.ruleCleanUp><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(!TREE_PARSER)_subtemplate># - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)
        </if(!TREE_PARSER)_subtemplate></if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.ruleCleanUp>
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>
          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)
          </ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleCleanUp>
      <if(memoize)_subtemplate><if(backtracking)_subtemplate>  success = true
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      <else_subtemplate><if(!emptyRule)_subtemplate><else_subtemplate>rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        <ASTParser.region__ruleBody__setErrorReturnValue>return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)
        </ASTParser.region__ruleBody__setErrorReturnValue></else_subtemplate></if(!emptyRule)_subtemplate></else_subtemplate>
      ensure
        <Ruby.traceOut><else_subtemplate># -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 37)
        </else_subtemplate></Ruby.traceOut><Ruby.memoize><if(memoize)_subtemplate><if(backtracking)_subtemplate>memoize(__method__, m_arg_start_index, success) if @state.backtracking > 0
        </if(backtracking)_subtemplate></if(memoize)_subtemplate></Ruby.memoize><Ruby.ruleScopeCleanUp></Ruby.ruleScopeCleanUp>
      end</Ruby.ruleBody></Ruby.region__rule__body>
      
      return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
    end
    </Ruby.rule>
    </ASTParser.anonymous><ASTParser.anonymous><Ruby.rule><Ruby.returnScope><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><Ruby.returnStructName>SourceExpressionReturnValue</Ruby.returnStructName> = define_return_scope </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.returnScope>

    # parser rule source_expression
    # 
    # (in Cpp.g)
    # 315:1: source_expression : ( ( IDENTIFIER ( WS )? LPAREN )=> macro_expansion | ( primary_source ( WS )? SHARPSHARP )=> concatenate | STRINGIFICATION IDENTIFIER -> ^( STRINGIFICATION IDENTIFIER ) | primary_source | STRING_OP | SIZEOF | LPAREN ( mac_args )? RPAREN -> ^( TEXT_GROUP ( mac_args )? ) | SEMICOLON | TEXT_END | WS );
    def source_expression
      <Ruby.traceIn><else_subtemplate># -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 38)
      </else_subtemplate></Ruby.traceIn><Ruby.ruleScopeSetUp></Ruby.ruleScopeSetUp><AST.ruleDeclarations><Ruby.ruleDeclarations><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate>return_value = <Ruby.returnStructName>SourceExpressionReturnValue</Ruby.returnStructName>.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(memoize)_subtemplate>source_expression_start_index = @input.index
      </if(memoize)_subtemplate></Ruby.ruleDeclarations>
      root_0 = nil
      </AST.ruleDeclarations><AST.ruleLabelDefs><Ruby.ruleLabelDefs><ASTParser.anonymous>__STRINGIFICATION182__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__IDENTIFIER183__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__STRING_OP185__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__SIZEOF186__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__LPAREN187__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__RPAREN189__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__SEMICOLON190__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__TEXT_END191__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__WS192__ = nil
      </ASTParser.anonymous><Ruby.ruleLabelDef>macro_expansion180 = nil
      </Ruby.ruleLabelDef><Ruby.ruleLabelDef>concatenate181 = nil
      </Ruby.ruleLabelDef><Ruby.ruleLabelDef>primary_source184 = nil
      </Ruby.ruleLabelDef><Ruby.ruleLabelDef>mac_args188 = nil
      </Ruby.ruleLabelDef></Ruby.ruleLabelDefs>
      <ASTParser.anonymous>tree_for_STRINGIFICATION182 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_IDENTIFIER183 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_STRING_OP185 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_SIZEOF186 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_LPAREN187 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_RPAREN189 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_SEMICOLON190 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_TEXT_END191 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_WS192 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>stream_RPAREN = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token RPAREN")</ASTParser.anonymous>
      <ASTParser.anonymous>stream_STRINGIFICATION = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token STRINGIFICATION")</ASTParser.anonymous>
      <ASTParser.anonymous>stream_IDENTIFIER = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token IDENTIFIER")</ASTParser.anonymous>
      <ASTParser.anonymous>stream_LPAREN = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token LPAREN")</ASTParser.anonymous>
      <ASTParser.anonymous>stream_mac_args = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule mac_args")</ASTParser.anonymous></AST.ruleLabelDefs><Ruby.action></Ruby.action>
      <Ruby.region__rule__body><Ruby.ruleBody><if(memoize)_subtemplate><if(backtracking)_subtemplate>success = false # flag used for memoization
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      begin
        <Ruby.ruleMemoization><if(memoize)_subtemplate># rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
        end
        </if(memoize)_subtemplate></Ruby.ruleMemoization><Ruby.ruleBlock># at line 316:5: ( ( IDENTIFIER ( WS )? LPAREN )=> macro_expansion | ( primary_source ( WS )? SHARPSHARP )=> concatenate | STRINGIFICATION IDENTIFIER -> ^( STRINGIFICATION IDENTIFIER ) | primary_source | STRING_OP | SIZEOF | LPAREN ( mac_args )? RPAREN -> ^( TEXT_GROUP ( mac_args )? ) | SEMICOLON | TEXT_END | WS )
        alt_59 = 10
        <Ruby.region__ruleBlock__decision><Ruby.dfaDecision>alt_59 = @dfa59.predict(@input)</Ruby.dfaDecision></Ruby.region__ruleBlock__decision>
        case alt_59
        <Ruby.altSwitchCase>when 1
          <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate><if(outerAlt)_subtemplate><if(!rewriteMode)_subtemplate>root_0 = @adaptor.create_flat_list!

          </if(!rewriteMode)_subtemplate></if(outerAlt)_subtemplate></if(autoAST)_subtemplate>
          # at line 316:13: ( IDENTIFIER ( WS )? LPAREN )=> macro_expansion
          <Ruby.element><ASTParser.ruleRef><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_macro_expansion_IN_source_expression_3065)
          <if(label)_subtemplate>macro_expansion180 = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>macro_expansion</ASTParser.<anonymous template argument>></Ruby.methodCall>
          @state.following.pop</Ruby.ruleRef>
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>@adaptor.add_child(root_0, macro_expansion180.tree)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleRef>
          </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
        <Ruby.altSwitchCase>when 2
          <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate><if(outerAlt)_subtemplate><if(!rewriteMode)_subtemplate>root_0 = @adaptor.create_flat_list!

          </if(!rewriteMode)_subtemplate></if(outerAlt)_subtemplate></if(autoAST)_subtemplate>
          # at line 317:13: ( primary_source ( WS )? SHARPSHARP )=> concatenate
          <Ruby.element><ASTParser.ruleRef><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_concatenate_IN_source_expression_3093)
          <if(label)_subtemplate>concatenate181 = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>concatenate</ASTParser.<anonymous template argument>></Ruby.methodCall>
          @state.following.pop</Ruby.ruleRef>
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>@adaptor.add_child(root_0, concatenate181.tree)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleRef>
          </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
        <Ruby.altSwitchCase>when 3
          <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt># at line 318:13: STRINGIFICATION IDENTIFIER
          <Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>__STRINGIFICATION182__ = </if(label)_subtemplate>match(STRINGIFICATION, TOKENS_FOLLOWING_STRINGIFICATION_IN_source_expression_3107)</Ruby.tokenRef></ASTParser.tokenRefBang> 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>stream_STRINGIFICATION.add(__STRINGIFICATION182__)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
          </Ruby.element><Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>__IDENTIFIER183__ = </if(label)_subtemplate>match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_source_expression_3109)</Ruby.tokenRef></ASTParser.tokenRefBang> 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>stream_IDENTIFIER.add(__IDENTIFIER183__)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
          </Ruby.element><AST.rewriteCode># AST Rewrite
          # elements: STRINGIFICATION, IDENTIFIER
          # token labels: 
          # rule labels: <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>
            <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
            <AST.rewriteCodeLabels><ASTParser.anonymous>stream_<AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> = <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> ? subtree_stream("rule <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>", <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree) : subtree_stream("token <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>")</ASTParser.anonymous>
            </AST.rewriteCodeLabels>
            root_0 = @adaptor.create_flat_list!
            <AST.rewriteAltFirst><else_subtemplate># 318:40: -> ^( STRINGIFICATION IDENTIFIER )
            <AST.rewriteElementList><AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteTree># at line 318:48: ^( STRINGIFICATION IDENTIFIER )
            root_1 = @adaptor.create_flat_list!
            <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteTokenRefRoot>root_1 = @adaptor.become_root(<AST.createRewriteNodeFromElement><else_subtemplate><else_subtemplate>stream_STRINGIFICATION.next_node</else_subtemplate></else_subtemplate></AST.createRewriteNodeFromElement>, root_1)
            </AST.rewriteTokenRefRoot></AST.rewriteElement>
            <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteTokenRef>@adaptor.add_child(root_1, <AST.createRewriteNodeFromElement><else_subtemplate><else_subtemplate>stream_IDENTIFIER.next_node</else_subtemplate></else_subtemplate></AST.createRewriteNodeFromElement>)
            </AST.rewriteTokenRef></AST.rewriteElement>
            @adaptor.add_child(root_0, root_1)
            </AST.rewriteTree></AST.rewriteElement></AST.rewriteElementList></else_subtemplate></AST.rewriteAltFirst>


            <if(!TREE_PARSER)_subtemplate><AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
            </if(!TREE_PARSER)_subtemplate></ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.rewriteCode></AST.alt></Ruby.altSwitchCase>
        <Ruby.altSwitchCase>when 4
          <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate><if(outerAlt)_subtemplate><if(!rewriteMode)_subtemplate>root_0 = @adaptor.create_flat_list!

          </if(!rewriteMode)_subtemplate></if(outerAlt)_subtemplate></if(autoAST)_subtemplate>
          # at line 319:13: primary_source
          <Ruby.element><ASTParser.ruleRef><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_primary_source_IN_source_expression_3136)
          <if(label)_subtemplate>primary_source184 = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>primary_source</ASTParser.<anonymous template argument>></Ruby.methodCall>
          @state.following.pop</Ruby.ruleRef>
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>@adaptor.add_child(root_0, primary_source184.tree)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleRef>
          </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
        <Ruby.altSwitchCase>when 5
          <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate><if(outerAlt)_subtemplate><if(!rewriteMode)_subtemplate>root_0 = @adaptor.create_flat_list!

          </if(!rewriteMode)_subtemplate></if(outerAlt)_subtemplate></if(autoAST)_subtemplate>
          # at line 320:13: STRING_OP
          <Ruby.element><ASTParser.tokenRef><Ruby.tokenRef><if(label)_subtemplate>__STRING_OP185__ = </if(label)_subtemplate>match(STRING_OP, TOKENS_FOLLOWING_STRING_OP_IN_source_expression_3150)</Ruby.tokenRef>
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>
            tree_for_STRING_OP185 = <ASTParser.createNodeFromToken><else_subtemplate>@adaptor.create_with_payload!(__STRING_OP185__)</else_subtemplate></ASTParser.createNodeFromToken>
            @adaptor.add_child(root_0, tree_for_STRING_OP185)
            </ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.tokenRef>
          </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
        <Ruby.altSwitchCase>when 6
          <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate><if(outerAlt)_subtemplate><if(!rewriteMode)_subtemplate>root_0 = @adaptor.create_flat_list!

          </if(!rewriteMode)_subtemplate></if(outerAlt)_subtemplate></if(autoAST)_subtemplate>
          # at line 321:13: SIZEOF
          <Ruby.element><ASTParser.tokenRef><Ruby.tokenRef><if(label)_subtemplate>__SIZEOF186__ = </if(label)_subtemplate>match(SIZEOF, TOKENS_FOLLOWING_SIZEOF_IN_source_expression_3164)</Ruby.tokenRef>
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>
            tree_for_SIZEOF186 = <ASTParser.createNodeFromToken><else_subtemplate>@adaptor.create_with_payload!(__SIZEOF186__)</else_subtemplate></ASTParser.createNodeFromToken>
            @adaptor.add_child(root_0, tree_for_SIZEOF186)
            </ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.tokenRef>
          </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
        <Ruby.altSwitchCase>when 7
          <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt># at line 322:13: LPAREN ( mac_args )? RPAREN
          <Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>__LPAREN187__ = </if(label)_subtemplate>match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_source_expression_3178)</Ruby.tokenRef></ASTParser.tokenRefBang> 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>stream_LPAREN.add(__LPAREN187__)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
          </Ruby.element><Ruby.element><Ruby.block># at line 322:20: ( mac_args )?
          alt_58 = 2
          <Ruby.region__block__body><Ruby.blockBody><Ruby.region__blockBody__decision><Ruby.dfaOptionalBlockState>look_58_0 = @input.peek(1)

          <Ruby.dfaEdge>if (<Ruby.setTest><Ruby.lookaheadTest>look_58_0 == TEXT_END</Ruby.lookaheadTest> || <Ruby.lookaheadRangeTest>look_58_0.between?(IDENTIFIER, WS)</Ruby.lookaheadRangeTest> || <Ruby.lookaheadTest>look_58_0 == COMMA</Ruby.lookaheadTest> || <Ruby.lookaheadRangeTest>look_58_0.between?(DECIMAL_LITERAL, STRING_LITERAL)</Ruby.lookaheadRangeTest> || <Ruby.lookaheadTest>look_58_0 == SIZEOF</Ruby.lookaheadTest> || <Ruby.lookaheadRangeTest>look_58_0.between?(HEX_LITERAL, COPERATOR)</Ruby.lookaheadRangeTest></Ruby.setTest>) 
            <Ruby.dfaAcceptState>alt_58 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>
          els<Ruby.dfaEdge>if (<Ruby.lookaheadTest>look_58_0 == RPAREN</Ruby.lookaheadTest>) 
            <Ruby.dfaOptionalBlockState>look_58_2 = @input.peek(2)

            <Ruby.dfaEdge>if (<Ruby.evalSynPredicate>syntactic_predicate?(%s(<ASTParser.anonymous>synpred_115_cpp!</ASTParser.anonymous>))</Ruby.evalSynPredicate>) 
              <Ruby.dfaAcceptState>alt_58 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>
            end</Ruby.dfaOptionalBlockState></Ruby.dfaEdge>
          end</Ruby.dfaOptionalBlockState></Ruby.region__blockBody__decision>
          case alt_58
          <Ruby.altSwitchCase>when 1
            <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt># at line 0:0: mac_args
            <Ruby.element><AST.ruleRefTrack><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_mac_args_IN_source_expression_3180)
            <if(label)_subtemplate>mac_args188 = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>mac_args</ASTParser.<anonymous template argument>></Ruby.methodCall>
            @state.following.pop</Ruby.ruleRef>
            <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
              <ASTParser.<anonymous template argument>>stream_mac_args.add(mac_args188.tree)</ASTParser.<anonymous template argument>>
            end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.ruleRefTrack>
            </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
          end</Ruby.blockBody></Ruby.region__block__body></Ruby.block>
          </Ruby.element><Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>__RPAREN189__ = </if(label)_subtemplate>match(RPAREN, TOKENS_FOLLOWING_RPAREN_IN_source_expression_3183)</Ruby.tokenRef></ASTParser.tokenRefBang> 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>stream_RPAREN.add(__RPAREN189__)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
          </Ruby.element><AST.rewriteCode># AST Rewrite
          # elements: mac_args
          # token labels: 
          # rule labels: <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>
            <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
            <AST.rewriteCodeLabels><ASTParser.anonymous>stream_<AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> = <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> ? subtree_stream("rule <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>", <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree) : subtree_stream("token <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>")</ASTParser.anonymous>
            </AST.rewriteCodeLabels>
            root_0 = @adaptor.create_flat_list!
            <AST.rewriteAltFirst><else_subtemplate># 322:37: -> ^( TEXT_GROUP ( mac_args )? )
            <AST.rewriteElementList><AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteTree># at line 322:40: ^( TEXT_GROUP ( mac_args )? )
            root_1 = @adaptor.create_flat_list!
            <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteImaginaryTokenRefRoot>root_1 = @adaptor.become_root(<AST.createImaginaryNode><else_subtemplate><if(!args)_subtemplate>@adaptor.create_from_type!(TEXT_GROUP, "TEXT_GROUP")</if(!args)_subtemplate></else_subtemplate></AST.createImaginaryNode>, root_1)
            </AST.rewriteImaginaryTokenRefRoot></AST.rewriteElement>
            <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteOptionalBlock># at line 322:53: ( mac_args )?
            if <ASTParser.anonymous>stream_mac_args.has_next?</ASTParser.anonymous>
              <AST.rewriteElementList><AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteRuleRef>@adaptor.add_child(root_1, stream_mac_args.next_tree)
              </AST.rewriteRuleRef></AST.rewriteElement></AST.rewriteElementList>
            end

            <ASTParser.anonymous>stream_mac_args.reset();
            </ASTParser.anonymous></AST.rewriteOptionalBlock></AST.rewriteElement>
            @adaptor.add_child(root_0, root_1)
            </AST.rewriteTree></AST.rewriteElement></AST.rewriteElementList></else_subtemplate></AST.rewriteAltFirst>


            <if(!TREE_PARSER)_subtemplate><AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
            </if(!TREE_PARSER)_subtemplate></ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.rewriteCode></AST.alt></Ruby.altSwitchCase>
        <Ruby.altSwitchCase>when 8
          <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate><if(outerAlt)_subtemplate><if(!rewriteMode)_subtemplate>root_0 = @adaptor.create_flat_list!

          </if(!rewriteMode)_subtemplate></if(outerAlt)_subtemplate></if(autoAST)_subtemplate>
          # at line 323:13: SEMICOLON
          <Ruby.element><ASTParser.tokenRef><Ruby.tokenRef><if(label)_subtemplate>__SEMICOLON190__ = </if(label)_subtemplate>match(SEMICOLON, TOKENS_FOLLOWING_SEMICOLON_IN_source_expression_3206)</Ruby.tokenRef>
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>
            tree_for_SEMICOLON190 = <ASTParser.createNodeFromToken><else_subtemplate>@adaptor.create_with_payload!(__SEMICOLON190__)</else_subtemplate></ASTParser.createNodeFromToken>
            @adaptor.add_child(root_0, tree_for_SEMICOLON190)
            </ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.tokenRef>
          </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
        <Ruby.altSwitchCase>when 9
          <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate><if(outerAlt)_subtemplate><if(!rewriteMode)_subtemplate>root_0 = @adaptor.create_flat_list!

          </if(!rewriteMode)_subtemplate></if(outerAlt)_subtemplate></if(autoAST)_subtemplate>
          # at line 324:13: TEXT_END
          <Ruby.element><ASTParser.tokenRef><Ruby.tokenRef><if(label)_subtemplate>__TEXT_END191__ = </if(label)_subtemplate>match(TEXT_END, TOKENS_FOLLOWING_TEXT_END_IN_source_expression_3220)</Ruby.tokenRef>
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>
            tree_for_TEXT_END191 = <ASTParser.createNodeFromToken><else_subtemplate>@adaptor.create_with_payload!(__TEXT_END191__)</else_subtemplate></ASTParser.createNodeFromToken>
            @adaptor.add_child(root_0, tree_for_TEXT_END191)
            </ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.tokenRef>
          </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
        <Ruby.altSwitchCase>when 10
          <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate><if(outerAlt)_subtemplate><if(!rewriteMode)_subtemplate>root_0 = @adaptor.create_flat_list!

          </if(!rewriteMode)_subtemplate></if(outerAlt)_subtemplate></if(autoAST)_subtemplate>
          # at line 325:13: WS
          <Ruby.element><ASTParser.tokenRef><Ruby.tokenRef><if(label)_subtemplate>__WS192__ = </if(label)_subtemplate>match(WS, TOKENS_FOLLOWING_WS_IN_source_expression_3234)</Ruby.tokenRef>
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>
            tree_for_WS192 = <ASTParser.createNodeFromToken><else_subtemplate>@adaptor.create_with_payload!(__WS192__)</else_subtemplate></ASTParser.createNodeFromToken>
            @adaptor.add_child(root_0, tree_for_WS192)
            </ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.tokenRef>
          </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
        end</Ruby.ruleBlock><ASTParser.ruleCleanUp><Ruby.ruleCleanUp><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(!TREE_PARSER)_subtemplate># - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)
        </if(!TREE_PARSER)_subtemplate></if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.ruleCleanUp>
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>
          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)
          </ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleCleanUp>
      <if(memoize)_subtemplate><if(backtracking)_subtemplate>  success = true
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      <else_subtemplate><if(!emptyRule)_subtemplate><else_subtemplate>rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        <ASTParser.region__ruleBody__setErrorReturnValue>return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)
        </ASTParser.region__ruleBody__setErrorReturnValue></else_subtemplate></if(!emptyRule)_subtemplate></else_subtemplate>
      ensure
        <Ruby.traceOut><else_subtemplate># -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 38)
        </else_subtemplate></Ruby.traceOut><Ruby.memoize><if(memoize)_subtemplate><if(backtracking)_subtemplate>memoize(__method__, source_expression_start_index, success) if @state.backtracking > 0
        </if(backtracking)_subtemplate></if(memoize)_subtemplate></Ruby.memoize><Ruby.ruleScopeCleanUp></Ruby.ruleScopeCleanUp>
      end</Ruby.ruleBody></Ruby.region__rule__body>
      
      return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
    end
    </Ruby.rule>
    </ASTParser.anonymous><ASTParser.anonymous><Ruby.rule><Ruby.returnScope><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><Ruby.returnStructName>ConcatenateReturnValue</Ruby.returnStructName> = define_return_scope </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.returnScope>

    # parser rule concatenate
    # 
    # (in Cpp.g)
    # 328:1: concatenate : prim+= primary_source ( ( WS )? SHARPSHARP ( WS )? prim+= primary_source )+ -> ^( CONCATENATE ( $prim)+ ) ;
    def concatenate
      <Ruby.traceIn><else_subtemplate># -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 39)
      </else_subtemplate></Ruby.traceIn><Ruby.ruleScopeSetUp></Ruby.ruleScopeSetUp><AST.ruleDeclarations><Ruby.ruleDeclarations><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate>return_value = <Ruby.returnStructName>ConcatenateReturnValue</Ruby.returnStructName>.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(memoize)_subtemplate>concatenate_start_index = @input.index
      </if(memoize)_subtemplate></Ruby.ruleDeclarations>
      root_0 = nil
      </AST.ruleDeclarations><AST.ruleLabelDefs><Ruby.ruleLabelDefs><ASTParser.anonymous>__WS193__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__SHARPSHARP194__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__WS195__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>list_of_prim = []
      </ASTParser.anonymous><Ruby.ruleLabelDef>prim = nil
      </Ruby.ruleLabelDef><ASTParser.anonymous>prim = nil
      </ASTParser.anonymous></Ruby.ruleLabelDefs>
      <ASTParser.anonymous>tree_for_WS193 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_SHARPSHARP194 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_WS195 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>stream_WS = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token WS")</ASTParser.anonymous>
      <ASTParser.anonymous>stream_SHARPSHARP = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token SHARPSHARP")</ASTParser.anonymous>
      <ASTParser.anonymous>stream_primary_source = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule primary_source")</ASTParser.anonymous></AST.ruleLabelDefs><Ruby.action></Ruby.action>
      <Ruby.region__rule__body><Ruby.ruleBody><if(memoize)_subtemplate><if(backtracking)_subtemplate>success = false # flag used for memoization
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      begin
        <Ruby.ruleMemoization><if(memoize)_subtemplate># rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
        end
        </if(memoize)_subtemplate></Ruby.ruleMemoization><Ruby.ruleBlockSingleAlt><Ruby.region__ruleBlockSingleAlt__prealt></Ruby.region__ruleBlockSingleAlt__prealt><AST.alt># at line 329:13: prim+= primary_source ( ( WS )? SHARPSHARP ( WS )? prim+= primary_source )+
        <Ruby.element><AST.ruleRefTrackAndListLabel><AST.ruleRefTrack><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_primary_source_IN_concatenate_3259)
        <if(label)_subtemplate>prim = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>primary_source</ASTParser.<anonymous template argument>></Ruby.methodCall>
        @state.following.pop</Ruby.ruleRef>
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>stream_primary_source.add(prim.tree)</ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.ruleRefTrack>
        <Ruby.addToList>list_of_prim << <ASTParser.<anonymous template argument>>prim.tree</ASTParser.<anonymous template argument>>
        </Ruby.addToList></AST.ruleRefTrackAndListLabel>
        </Ruby.element><Ruby.element><Ruby.positiveClosureBlock># at file 329:34: ( ( WS )? SHARPSHARP ( WS )? prim+= primary_source )+
        <Ruby.region__positiveClosureBlock__loopBody><Ruby.positiveClosureBlockLoop>match_count_62 = 0
        loop do
          alt_62 = 2
          <Ruby.region__positiveClosureBlockLoop__decisionBody><Ruby.dfaLoopbackState>look_62_0 = @input.peek(1)

          <Ruby.dfaEdge>if (<Ruby.lookaheadTest>look_62_0 == SHARPSHARP</Ruby.lookaheadTest>) 
            <Ruby.dfaLoopbackStateSwitch>case look_62 = @input.peek(2)
            <Ruby.dfaEdgeSwitch>when <ASTParser.anonymous>WS</ASTParser.anonymous> then <Ruby.dfaLoopbackState>look_62_4 = @input.peek(3)

            <Ruby.dfaEdge>if (<Ruby.lookaheadTest>look_62_4 == IDENTIFIER</Ruby.lookaheadTest>) 
              <Ruby.dfaLoopbackState>look_62_5 = @input.peek(4)

              <Ruby.dfaEdge>if (<Ruby.evalSynPredicate>syntactic_predicate?(%s(<ASTParser.anonymous>synpred_121_cpp!</ASTParser.anonymous>))</Ruby.evalSynPredicate>) 
                <Ruby.dfaAcceptState>alt_62 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>

              end</Ruby.dfaLoopbackState></Ruby.dfaEdge>
            els<Ruby.dfaEdge>if (<Ruby.setTest><Ruby.lookaheadRangeTest>look_62_4.between?(DECIMAL_LITERAL, STRING_LITERAL)</Ruby.lookaheadRangeTest> || <Ruby.lookaheadRangeTest>look_62_4.between?(HEX_LITERAL, FLOATING_POINT_LITERAL)</Ruby.lookaheadRangeTest> || <Ruby.lookaheadRangeTest>look_62_4.between?(SHARPSHARP, COPERATOR)</Ruby.lookaheadRangeTest></Ruby.setTest>) 
              <Ruby.dfaAcceptState>alt_62 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>

            end</Ruby.dfaLoopbackState></Ruby.dfaEdgeSwitch>
            <Ruby.dfaEdgeSwitch>when <ASTParser.anonymous>IDENTIFIER</ASTParser.anonymous> then <Ruby.dfaLoopbackState>look_62_5 = @input.peek(3)

            <Ruby.dfaEdge>if (<Ruby.evalSynPredicate>syntactic_predicate?(%s(<ASTParser.anonymous>synpred_121_cpp!</ASTParser.anonymous>))</Ruby.evalSynPredicate>) 
              <Ruby.dfaAcceptState>alt_62 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>

            end</Ruby.dfaLoopbackState></Ruby.dfaEdgeSwitch>
            <Ruby.dfaEdgeSwitch>when <ASTParser.anonymous>DECIMAL_LITERAL</ASTParser.anonymous>, <ASTParser.anonymous>STRING_LITERAL</ASTParser.anonymous>, <ASTParser.anonymous>HEX_LITERAL</ASTParser.anonymous>, <ASTParser.anonymous>OCTAL_LITERAL</ASTParser.anonymous>, <ASTParser.anonymous>CHARACTER_LITERAL</ASTParser.anonymous>, <ASTParser.anonymous>FLOATING_POINT_LITERAL</ASTParser.anonymous>, <ASTParser.anonymous>SHARPSHARP</ASTParser.anonymous>, <ASTParser.anonymous>CKEYWORD</ASTParser.anonymous>, <ASTParser.anonymous>COPERATOR</ASTParser.anonymous> then <Ruby.dfaAcceptState>alt_62 = 1</Ruby.dfaAcceptState></Ruby.dfaEdgeSwitch>
            end</Ruby.dfaLoopbackStateSwitch></Ruby.dfaEdge>
          els<Ruby.dfaEdge>if (<Ruby.lookaheadTest>look_62_0 == WS</Ruby.lookaheadTest>) 
            <Ruby.dfaLoopbackState>look_62_3 = @input.peek(2)

            <Ruby.dfaEdge>if (<Ruby.lookaheadTest>look_62_3 == SHARPSHARP</Ruby.lookaheadTest>) 
              <Ruby.dfaLoopbackStateSwitch>case look_62 = @input.peek(3)
              <Ruby.dfaEdgeSwitch>when <ASTParser.anonymous>WS</ASTParser.anonymous> then <Ruby.dfaLoopbackState>look_62_4 = @input.peek(4)

              <Ruby.dfaEdge>if (<Ruby.lookaheadTest>look_62_4 == IDENTIFIER</Ruby.lookaheadTest>) 
                <Ruby.dfaLoopbackState>look_62_5 = @input.peek(5)

                <Ruby.dfaEdge>if (<Ruby.evalSynPredicate>syntactic_predicate?(%s(<ASTParser.anonymous>synpred_121_cpp!</ASTParser.anonymous>))</Ruby.evalSynPredicate>) 
                  <Ruby.dfaAcceptState>alt_62 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>

                end</Ruby.dfaLoopbackState></Ruby.dfaEdge>
              els<Ruby.dfaEdge>if (<Ruby.setTest><Ruby.lookaheadRangeTest>look_62_4.between?(DECIMAL_LITERAL, STRING_LITERAL)</Ruby.lookaheadRangeTest> || <Ruby.lookaheadRangeTest>look_62_4.between?(HEX_LITERAL, FLOATING_POINT_LITERAL)</Ruby.lookaheadRangeTest> || <Ruby.lookaheadRangeTest>look_62_4.between?(SHARPSHARP, COPERATOR)</Ruby.lookaheadRangeTest></Ruby.setTest>) 
                <Ruby.dfaAcceptState>alt_62 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>

              end</Ruby.dfaLoopbackState></Ruby.dfaEdgeSwitch>
              <Ruby.dfaEdgeSwitch>when <ASTParser.anonymous>IDENTIFIER</ASTParser.anonymous> then <Ruby.dfaLoopbackState>look_62_5 = @input.peek(4)

              <Ruby.dfaEdge>if (<Ruby.evalSynPredicate>syntactic_predicate?(%s(<ASTParser.anonymous>synpred_121_cpp!</ASTParser.anonymous>))</Ruby.evalSynPredicate>) 
                <Ruby.dfaAcceptState>alt_62 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>

              end</Ruby.dfaLoopbackState></Ruby.dfaEdgeSwitch>
              <Ruby.dfaEdgeSwitch>when <ASTParser.anonymous>DECIMAL_LITERAL</ASTParser.anonymous>, <ASTParser.anonymous>STRING_LITERAL</ASTParser.anonymous>, <ASTParser.anonymous>HEX_LITERAL</ASTParser.anonymous>, <ASTParser.anonymous>OCTAL_LITERAL</ASTParser.anonymous>, <ASTParser.anonymous>CHARACTER_LITERAL</ASTParser.anonymous>, <ASTParser.anonymous>FLOATING_POINT_LITERAL</ASTParser.anonymous>, <ASTParser.anonymous>SHARPSHARP</ASTParser.anonymous>, <ASTParser.anonymous>CKEYWORD</ASTParser.anonymous>, <ASTParser.anonymous>COPERATOR</ASTParser.anonymous> then <Ruby.dfaAcceptState>alt_62 = 1</Ruby.dfaAcceptState></Ruby.dfaEdgeSwitch>
              end</Ruby.dfaLoopbackStateSwitch></Ruby.dfaEdge>

            end</Ruby.dfaLoopbackState></Ruby.dfaEdge>

          end</Ruby.dfaLoopbackState></Ruby.region__positiveClosureBlockLoop__decisionBody>
          case alt_62
          <Ruby.altSwitchCase>when 1
            <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt># at line 329:35: ( WS )? SHARPSHARP ( WS )? prim+= primary_source
            <Ruby.element><Ruby.block># at line 329:35: ( WS )?
            alt_60 = 2
            <Ruby.region__block__body><Ruby.blockBody><Ruby.region__blockBody__decision><Ruby.dfaOptionalBlockState>look_60_0 = @input.peek(1)

            <Ruby.dfaEdge>if (<Ruby.lookaheadTest>look_60_0 == WS</Ruby.lookaheadTest>) 
              <Ruby.dfaAcceptState>alt_60 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>
            end</Ruby.dfaOptionalBlockState></Ruby.region__blockBody__decision>
            case alt_60
            <Ruby.altSwitchCase>when 1
              <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt># at line 0:0: WS
              <Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>__WS193__ = </if(label)_subtemplate>match(WS, TOKENS_FOLLOWING_WS_IN_concatenate_3262)</Ruby.tokenRef></ASTParser.tokenRefBang> 
              <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
                <ASTParser.<anonymous template argument>>stream_WS.add(__WS193__)</ASTParser.<anonymous template argument>>
              end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
              </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
            end</Ruby.blockBody></Ruby.region__block__body></Ruby.block>
            </Ruby.element><Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>__SHARPSHARP194__ = </if(label)_subtemplate>match(SHARPSHARP, TOKENS_FOLLOWING_SHARPSHARP_IN_concatenate_3265)</Ruby.tokenRef></ASTParser.tokenRefBang> 
            <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
              <ASTParser.<anonymous template argument>>stream_SHARPSHARP.add(__SHARPSHARP194__)</ASTParser.<anonymous template argument>>
            end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
            </Ruby.element><Ruby.element><Ruby.block># at line 329:51: ( WS )?
            alt_61 = 2
            <Ruby.region__block__body><Ruby.blockBody><Ruby.region__blockBody__decision><Ruby.dfaOptionalBlockState>look_61_0 = @input.peek(1)

            <Ruby.dfaEdge>if (<Ruby.lookaheadTest>look_61_0 == WS</Ruby.lookaheadTest>) 
              <Ruby.dfaAcceptState>alt_61 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>
            end</Ruby.dfaOptionalBlockState></Ruby.region__blockBody__decision>
            case alt_61
            <Ruby.altSwitchCase>when 1
              <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt># at line 0:0: WS
              <Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>__WS195__ = </if(label)_subtemplate>match(WS, TOKENS_FOLLOWING_WS_IN_concatenate_3268)</Ruby.tokenRef></ASTParser.tokenRefBang> 
              <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
                <ASTParser.<anonymous template argument>>stream_WS.add(__WS195__)</ASTParser.<anonymous template argument>>
              end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
              </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
            end</Ruby.blockBody></Ruby.region__block__body></Ruby.block>
            </Ruby.element><Ruby.element><AST.ruleRefTrackAndListLabel><AST.ruleRefTrack><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_primary_source_IN_concatenate_3273)
            <if(label)_subtemplate>prim = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>primary_source</ASTParser.<anonymous template argument>></Ruby.methodCall>
            @state.following.pop</Ruby.ruleRef>
            <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
              <ASTParser.<anonymous template argument>>stream_primary_source.add(prim.tree)</ASTParser.<anonymous template argument>>
            end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.ruleRefTrack>
            <Ruby.addToList>list_of_prim << <ASTParser.<anonymous template argument>>prim.tree</ASTParser.<anonymous template argument>>
            </Ruby.addToList></AST.ruleRefTrackAndListLabel>
            </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
          else
            match_count_62 > 0 and break
            <Ruby.ruleBacktrackFailure><if(backtracking)_subtemplate>@state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
            </if(backtracking)_subtemplate></Ruby.ruleBacktrackFailure>
            eee = EarlyExit(62)
            <Ruby.region__positiveClosureBlockLoop__earlyExitException></Ruby.region__positiveClosureBlockLoop__earlyExitException>

            raise eee
          end
          match_count_62 += 1
        end
        </Ruby.positiveClosureBlockLoop></Ruby.region__positiveClosureBlock__loopBody></Ruby.positiveClosureBlock>
        </Ruby.element><AST.rewriteCode># AST Rewrite
        # elements: prim
        # token labels: 
        # rule labels: <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>
        # token list labels: 
        # rule list labels: prim
        # wildcard labels: 
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>
          <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
          <AST.rewriteCodeLabels><ASTParser.anonymous>stream_<AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> = <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> ? subtree_stream("rule <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>", <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree) : subtree_stream("token <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>")</ASTParser.anonymous>
          <ASTParser.anonymous>stream_prim = subtree_stream("token prim", list_of_prim)</ASTParser.anonymous></AST.rewriteCodeLabels>
          root_0 = @adaptor.create_flat_list!
          <AST.rewriteAltFirst><else_subtemplate># 329:79: -> ^( CONCATENATE ( $prim)+ )
          <AST.rewriteElementList><AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteTree># at line 329:82: ^( CONCATENATE ( $prim)+ )
          root_1 = @adaptor.create_flat_list!
          <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteImaginaryTokenRefRoot>root_1 = @adaptor.become_root(<AST.createImaginaryNode><else_subtemplate><if(!args)_subtemplate>@adaptor.create_from_type!(CONCATENATE, "CONCATENATE")</if(!args)_subtemplate></else_subtemplate></AST.createImaginaryNode>, root_1)
          </AST.rewriteImaginaryTokenRefRoot></AST.rewriteElement>
          <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewritePositiveClosureBlock># at line 329:96: ( $prim)+
          unless <ASTParser.anonymous>stream_prim.has_next?</ASTParser.anonymous>
            raise ANTLR3::RewriteEarlyExit
          end

          while <ASTParser.anonymous>stream_prim.has_next?</ASTParser.anonymous>
            <AST.rewriteElementList><AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteRuleListLabelRef>@adaptor.add_child(root_1, stream_prim.next_tree)
            </AST.rewriteRuleListLabelRef></AST.rewriteElement></AST.rewriteElementList>
          end

          <ASTParser.anonymous>stream_prim.reset
          </ASTParser.anonymous></AST.rewritePositiveClosureBlock></AST.rewriteElement>
          @adaptor.add_child(root_0, root_1)
          </AST.rewriteTree></AST.rewriteElement></AST.rewriteElementList></else_subtemplate></AST.rewriteAltFirst>


          <if(!TREE_PARSER)_subtemplate><AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
          </if(!TREE_PARSER)_subtemplate></ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.rewriteCode></AST.alt></Ruby.ruleBlockSingleAlt><ASTParser.ruleCleanUp><Ruby.ruleCleanUp><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(!TREE_PARSER)_subtemplate># - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)
        </if(!TREE_PARSER)_subtemplate></if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.ruleCleanUp>
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>
          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)
          </ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleCleanUp>
      <if(memoize)_subtemplate><if(backtracking)_subtemplate>  success = true
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      <else_subtemplate><if(!emptyRule)_subtemplate><else_subtemplate>rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        <ASTParser.region__ruleBody__setErrorReturnValue>return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)
        </ASTParser.region__ruleBody__setErrorReturnValue></else_subtemplate></if(!emptyRule)_subtemplate></else_subtemplate>
      ensure
        <Ruby.traceOut><else_subtemplate># -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 39)
        </else_subtemplate></Ruby.traceOut><Ruby.memoize><if(memoize)_subtemplate><if(backtracking)_subtemplate>memoize(__method__, concatenate_start_index, success) if @state.backtracking > 0
        </if(backtracking)_subtemplate></if(memoize)_subtemplate></Ruby.memoize><Ruby.ruleScopeCleanUp></Ruby.ruleScopeCleanUp>
      end</Ruby.ruleBody></Ruby.region__rule__body>
      
      return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
    end
    </Ruby.rule>
    </ASTParser.anonymous><ASTParser.anonymous><Ruby.rule><Ruby.returnScope><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><Ruby.returnStructName>PrimarySourceReturnValue</Ruby.returnStructName> = define_return_scope </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.returnScope>

    # parser rule primary_source
    # 
    # (in Cpp.g)
    # 332:1: primary_source : ( SHARPSHARP ( WS )? IDENTIFIER -> ^( SHARPSHARP IDENTIFIER ) | IDENTIFIER | constant | CKEYWORD | COPERATOR );
    def primary_source
      <Ruby.traceIn><else_subtemplate># -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 40)
      </else_subtemplate></Ruby.traceIn><Ruby.ruleScopeSetUp></Ruby.ruleScopeSetUp><AST.ruleDeclarations><Ruby.ruleDeclarations><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate>return_value = <Ruby.returnStructName>PrimarySourceReturnValue</Ruby.returnStructName>.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(memoize)_subtemplate>primary_source_start_index = @input.index
      </if(memoize)_subtemplate></Ruby.ruleDeclarations>
      root_0 = nil
      </AST.ruleDeclarations><AST.ruleLabelDefs><Ruby.ruleLabelDefs><ASTParser.anonymous>__SHARPSHARP196__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__WS197__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__IDENTIFIER198__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__IDENTIFIER199__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__CKEYWORD201__ = nil
      </ASTParser.anonymous><ASTParser.anonymous>__COPERATOR202__ = nil
      </ASTParser.anonymous><Ruby.ruleLabelDef>constant200 = nil
      </Ruby.ruleLabelDef></Ruby.ruleLabelDefs>
      <ASTParser.anonymous>tree_for_SHARPSHARP196 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_WS197 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_IDENTIFIER198 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_IDENTIFIER199 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_CKEYWORD201 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>tree_for_COPERATOR202 = nil</ASTParser.anonymous>
      <ASTParser.anonymous>stream_WS = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token WS")</ASTParser.anonymous>
      <ASTParser.anonymous>stream_SHARPSHARP = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token SHARPSHARP")</ASTParser.anonymous>
      <ASTParser.anonymous>stream_IDENTIFIER = ANTLR3::AST::RewriteRuleTokenStream.new(@adaptor, "token IDENTIFIER")</ASTParser.anonymous>
      </AST.ruleLabelDefs><Ruby.action></Ruby.action>
      <Ruby.region__rule__body><Ruby.ruleBody><if(memoize)_subtemplate><if(backtracking)_subtemplate>success = false # flag used for memoization
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      begin
        <Ruby.ruleMemoization><if(memoize)_subtemplate># rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
        end
        </if(memoize)_subtemplate></Ruby.ruleMemoization><Ruby.ruleBlock># at line 333:5: ( SHARPSHARP ( WS )? IDENTIFIER -> ^( SHARPSHARP IDENTIFIER ) | IDENTIFIER | constant | CKEYWORD | COPERATOR )
        alt_64 = 5
        <Ruby.region__ruleBlock__decision><Ruby.dfaStateSwitch>case look_64 = @input.peek(1)
        <Ruby.dfaEdgeSwitch>when <ASTParser.anonymous>SHARPSHARP</ASTParser.anonymous> then <Ruby.dfaAcceptState>alt_64 = 1</Ruby.dfaAcceptState></Ruby.dfaEdgeSwitch>
        <Ruby.dfaEdgeSwitch>when <ASTParser.anonymous>IDENTIFIER</ASTParser.anonymous> then <Ruby.dfaAcceptState>alt_64 = 2</Ruby.dfaAcceptState></Ruby.dfaEdgeSwitch>
        <Ruby.dfaEdgeSwitch>when <ASTParser.anonymous>DECIMAL_LITERAL</ASTParser.anonymous>, <ASTParser.anonymous>STRING_LITERAL</ASTParser.anonymous>, <ASTParser.anonymous>HEX_LITERAL</ASTParser.anonymous>, <ASTParser.anonymous>OCTAL_LITERAL</ASTParser.anonymous>, <ASTParser.anonymous>CHARACTER_LITERAL</ASTParser.anonymous>, <ASTParser.anonymous>FLOATING_POINT_LITERAL</ASTParser.anonymous> then <Ruby.dfaAcceptState>alt_64 = 3</Ruby.dfaAcceptState></Ruby.dfaEdgeSwitch>
        <Ruby.dfaEdgeSwitch>when <ASTParser.anonymous>CKEYWORD</ASTParser.anonymous> then <Ruby.dfaAcceptState>alt_64 = 4</Ruby.dfaAcceptState></Ruby.dfaEdgeSwitch>
        <Ruby.dfaEdgeSwitch>when <ASTParser.anonymous>COPERATOR</ASTParser.anonymous> then <Ruby.dfaAcceptState>alt_64 = 5</Ruby.dfaAcceptState></Ruby.dfaEdgeSwitch>
        else
        <else_subtemplate><Ruby.ruleBacktrackFailure><if(backtracking)_subtemplate>@state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
          </if(backtracking)_subtemplate></Ruby.ruleBacktrackFailure>
          nvae = NoViableAlternative("", 64, 0)
          <Ruby.region__dfaStateSwitch__noViableAltException>raise nvae</Ruby.region__dfaStateSwitch__noViableAltException>
        </else_subtemplate>end</Ruby.dfaStateSwitch></Ruby.region__ruleBlock__decision>
        case alt_64
        <Ruby.altSwitchCase>when 1
          <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt># at line 333:13: SHARPSHARP ( WS )? IDENTIFIER
          <Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>__SHARPSHARP196__ = </if(label)_subtemplate>match(SHARPSHARP, TOKENS_FOLLOWING_SHARPSHARP_IN_primary_source_3309)</Ruby.tokenRef></ASTParser.tokenRefBang> 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>stream_SHARPSHARP.add(__SHARPSHARP196__)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
          </Ruby.element><Ruby.element><Ruby.block># at line 333:24: ( WS )?
          alt_63 = 2
          <Ruby.region__block__body><Ruby.blockBody><Ruby.region__blockBody__decision><Ruby.dfaOptionalBlockState>look_63_0 = @input.peek(1)

          <Ruby.dfaEdge>if (<Ruby.lookaheadTest>look_63_0 == WS</Ruby.lookaheadTest>) 
            <Ruby.dfaAcceptState>alt_63 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>
          end</Ruby.dfaOptionalBlockState></Ruby.region__blockBody__decision>
          case alt_63
          <Ruby.altSwitchCase>when 1
            <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt># at line 0:0: WS
            <Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>__WS197__ = </if(label)_subtemplate>match(WS, TOKENS_FOLLOWING_WS_IN_primary_source_3311)</Ruby.tokenRef></ASTParser.tokenRefBang> 
            <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
              <ASTParser.<anonymous template argument>>stream_WS.add(__WS197__)</ASTParser.<anonymous template argument>>
            end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
            </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
          end</Ruby.blockBody></Ruby.region__block__body></Ruby.block>
          </Ruby.element><Ruby.element><AST.tokenRefTrack><ASTParser.tokenRefBang><Ruby.tokenRef><if(label)_subtemplate>__IDENTIFIER198__ = </if(label)_subtemplate>match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_primary_source_3315)</Ruby.tokenRef></ASTParser.tokenRefBang> 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>stream_IDENTIFIER.add(__IDENTIFIER198__)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.tokenRefTrack>
          </Ruby.element><AST.rewriteCode># AST Rewrite
          # elements: IDENTIFIER, SHARPSHARP
          # token labels: 
          # rule labels: <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>
          # token list labels: 
          # rule list labels: 
          # wildcard labels: 
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>
            <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
            <AST.rewriteCodeLabels><ASTParser.anonymous>stream_<AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> = <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> ? subtree_stream("rule <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>", <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree) : subtree_stream("token <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>")</ASTParser.anonymous>
            </AST.rewriteCodeLabels>
            root_0 = @adaptor.create_flat_list!
            <AST.rewriteAltFirst><else_subtemplate># 333:40: -> ^( SHARPSHARP IDENTIFIER )
            <AST.rewriteElementList><AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteTree># at line 333:43: ^( SHARPSHARP IDENTIFIER )
            root_1 = @adaptor.create_flat_list!
            <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteTokenRefRoot>root_1 = @adaptor.become_root(<AST.createRewriteNodeFromElement><else_subtemplate><else_subtemplate>stream_SHARPSHARP.next_node</else_subtemplate></else_subtemplate></AST.createRewriteNodeFromElement>, root_1)
            </AST.rewriteTokenRefRoot></AST.rewriteElement>
            <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteTokenRef>@adaptor.add_child(root_1, <AST.createRewriteNodeFromElement><else_subtemplate><else_subtemplate>stream_IDENTIFIER.next_node</else_subtemplate></else_subtemplate></AST.createRewriteNodeFromElement>)
            </AST.rewriteTokenRef></AST.rewriteElement>
            @adaptor.add_child(root_0, root_1)
            </AST.rewriteTree></AST.rewriteElement></AST.rewriteElementList></else_subtemplate></AST.rewriteAltFirst>


            <if(!TREE_PARSER)_subtemplate><AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
            </if(!TREE_PARSER)_subtemplate></ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.rewriteCode></AST.alt></Ruby.altSwitchCase>
        <Ruby.altSwitchCase>when 2
          <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate><if(outerAlt)_subtemplate><if(!rewriteMode)_subtemplate>root_0 = @adaptor.create_flat_list!

          </if(!rewriteMode)_subtemplate></if(outerAlt)_subtemplate></if(autoAST)_subtemplate>
          # at line 334:13: IDENTIFIER
          <Ruby.element><ASTParser.tokenRef><Ruby.tokenRef><if(label)_subtemplate>__IDENTIFIER199__ = </if(label)_subtemplate>match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_primary_source_3337)</Ruby.tokenRef>
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>
            tree_for_IDENTIFIER199 = <ASTParser.createNodeFromToken><else_subtemplate>@adaptor.create_with_payload!(__IDENTIFIER199__)</else_subtemplate></ASTParser.createNodeFromToken>
            @adaptor.add_child(root_0, tree_for_IDENTIFIER199)
            </ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.tokenRef>
          </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
        <Ruby.altSwitchCase>when 3
          <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate><if(outerAlt)_subtemplate><if(!rewriteMode)_subtemplate>root_0 = @adaptor.create_flat_list!

          </if(!rewriteMode)_subtemplate></if(outerAlt)_subtemplate></if(autoAST)_subtemplate>
          # at line 335:13: constant
          <Ruby.element><ASTParser.ruleRef><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_constant_IN_primary_source_3351)
          <if(label)_subtemplate>constant200 = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>constant</ASTParser.<anonymous template argument>></Ruby.methodCall>
          @state.following.pop</Ruby.ruleRef>
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>@adaptor.add_child(root_0, constant200.tree)</ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleRef>
          </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
        <Ruby.altSwitchCase>when 4
          <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate><if(outerAlt)_subtemplate><if(!rewriteMode)_subtemplate>root_0 = @adaptor.create_flat_list!

          </if(!rewriteMode)_subtemplate></if(outerAlt)_subtemplate></if(autoAST)_subtemplate>
          # at line 336:13: CKEYWORD
          <Ruby.element><ASTParser.tokenRef><Ruby.tokenRef><if(label)_subtemplate>__CKEYWORD201__ = </if(label)_subtemplate>match(CKEYWORD, TOKENS_FOLLOWING_CKEYWORD_IN_primary_source_3365)</Ruby.tokenRef>
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>
            tree_for_CKEYWORD201 = <ASTParser.createNodeFromToken><else_subtemplate>@adaptor.create_with_payload!(__CKEYWORD201__)</else_subtemplate></ASTParser.createNodeFromToken>
            @adaptor.add_child(root_0, tree_for_CKEYWORD201)
            </ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.tokenRef>
          </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
        <Ruby.altSwitchCase>when 5
          <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt><if(autoAST)_subtemplate><if(outerAlt)_subtemplate><if(!rewriteMode)_subtemplate>root_0 = @adaptor.create_flat_list!

          </if(!rewriteMode)_subtemplate></if(outerAlt)_subtemplate></if(autoAST)_subtemplate>
          # at line 337:13: COPERATOR
          <Ruby.element><ASTParser.tokenRef><Ruby.tokenRef><if(label)_subtemplate>__COPERATOR202__ = </if(label)_subtemplate>match(COPERATOR, TOKENS_FOLLOWING_COPERATOR_IN_primary_source_3379)</Ruby.tokenRef>
          <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
            <ASTParser.<anonymous template argument>>
            tree_for_COPERATOR202 = <ASTParser.createNodeFromToken><else_subtemplate>@adaptor.create_with_payload!(__COPERATOR202__)</else_subtemplate></ASTParser.createNodeFromToken>
            @adaptor.add_child(root_0, tree_for_COPERATOR202)
            </ASTParser.<anonymous template argument>>
          end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.tokenRef>
          </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
        end</Ruby.ruleBlock><ASTParser.ruleCleanUp><Ruby.ruleCleanUp><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(!TREE_PARSER)_subtemplate># - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)
        </if(!TREE_PARSER)_subtemplate></if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.ruleCleanUp>
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>
          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)
          </ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleCleanUp>
      <if(memoize)_subtemplate><if(backtracking)_subtemplate>  success = true
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      <else_subtemplate><if(!emptyRule)_subtemplate><else_subtemplate>rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        <ASTParser.region__ruleBody__setErrorReturnValue>return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)
        </ASTParser.region__ruleBody__setErrorReturnValue></else_subtemplate></if(!emptyRule)_subtemplate></else_subtemplate>
      ensure
        <Ruby.traceOut><else_subtemplate># -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 40)
        </else_subtemplate></Ruby.traceOut><Ruby.memoize><if(memoize)_subtemplate><if(backtracking)_subtemplate>memoize(__method__, primary_source_start_index, success) if @state.backtracking > 0
        </if(backtracking)_subtemplate></if(memoize)_subtemplate></Ruby.memoize><Ruby.ruleScopeCleanUp></Ruby.ruleScopeCleanUp>
      end</Ruby.ruleBody></Ruby.region__rule__body>
      
      return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
    end
    </Ruby.rule>
    </ASTParser.anonymous><ASTParser.anonymous><Ruby.rule><Ruby.returnScope><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><Ruby.returnStructName>MacroTextReturnValue</Ruby.returnStructName> = define_return_scope </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.returnScope>

    # parser rule macro_text
    # 
    # (in Cpp.g)
    # 690:1: macro_text : ( source_text )+ -> ^( MACRO_DEFINE ( source_text )+ ) ;
    def macro_text
      <Ruby.traceIn><else_subtemplate># -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 41)
      </else_subtemplate></Ruby.traceIn><Ruby.ruleScopeSetUp></Ruby.ruleScopeSetUp><AST.ruleDeclarations><Ruby.ruleDeclarations><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate>return_value = <Ruby.returnStructName>MacroTextReturnValue</Ruby.returnStructName>.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look
      </if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(memoize)_subtemplate>macro_text_start_index = @input.index
      </if(memoize)_subtemplate></Ruby.ruleDeclarations>
      root_0 = nil
      </AST.ruleDeclarations><AST.ruleLabelDefs><Ruby.ruleLabelDefs><Ruby.ruleLabelDef>source_text203 = nil
      </Ruby.ruleLabelDef></Ruby.ruleLabelDefs>
      <ASTParser.anonymous>stream_source_text = ANTLR3::AST::RewriteRuleSubtreeStream.new(@adaptor, "rule source_text")</ASTParser.anonymous></AST.ruleLabelDefs><Ruby.action></Ruby.action>
      <Ruby.region__rule__body><Ruby.ruleBody><if(memoize)_subtemplate><if(backtracking)_subtemplate>success = false # flag used for memoization
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      begin
        <Ruby.ruleMemoization><if(memoize)_subtemplate># rule memoization
        if @state.backtracking > 0 and already_parsed_rule?(__method__)
          success = true
          return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
        end
        </if(memoize)_subtemplate></Ruby.ruleMemoization><Ruby.ruleBlockSingleAlt><Ruby.region__ruleBlockSingleAlt__prealt></Ruby.region__ruleBlockSingleAlt__prealt><AST.alt># at line 691:7: ( source_text )+
        <Ruby.element><Ruby.positiveClosureBlock># at file 691:7: ( source_text )+
        <Ruby.region__positiveClosureBlock__loopBody><Ruby.positiveClosureBlockLoop>match_count_65 = 0
        loop do
          alt_65 = 2
          <Ruby.region__positiveClosureBlockLoop__decisionBody><Ruby.dfaLoopbackState>look_65_0 = @input.peek(1)

          <Ruby.dfaEdge>if (<Ruby.setTest><Ruby.lookaheadTest>look_65_0 == TEXT_END</Ruby.lookaheadTest> || <Ruby.lookaheadRangeTest>look_65_0.between?(IDENTIFIER, COMMA)</Ruby.lookaheadRangeTest> || <Ruby.lookaheadRangeTest>look_65_0.between?(DECIMAL_LITERAL, STRING_LITERAL)</Ruby.lookaheadRangeTest> || <Ruby.lookaheadTest>look_65_0 == SIZEOF</Ruby.lookaheadTest> || <Ruby.lookaheadRangeTest>look_65_0.between?(HEX_LITERAL, COPERATOR)</Ruby.lookaheadRangeTest></Ruby.setTest>) 
            <Ruby.dfaAcceptState>alt_65 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>

          end</Ruby.dfaLoopbackState></Ruby.region__positiveClosureBlockLoop__decisionBody>
          case alt_65
          <Ruby.altSwitchCase>when 1
            <Ruby.region__altSwitchCase__prealt></Ruby.region__altSwitchCase__prealt><AST.alt># at line 0:0: source_text
            <Ruby.element><AST.ruleRefTrack><Ruby.ruleRef>@state.following.push(TOKENS_FOLLOWING_source_text_IN_macro_text_6146)
            <if(label)_subtemplate>source_text203 = </if(label)_subtemplate><Ruby.methodCall><ASTParser.<anonymous template argument>>source_text</ASTParser.<anonymous template argument>></Ruby.methodCall>
            @state.following.pop</Ruby.ruleRef>
            <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
              <ASTParser.<anonymous template argument>>stream_source_text.add(source_text203.tree)</ASTParser.<anonymous template argument>>
            end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.ruleRefTrack>
            </Ruby.element><Ruby.noRewrite></Ruby.noRewrite></AST.alt></Ruby.altSwitchCase>
          else
            match_count_65 > 0 and break
            <Ruby.ruleBacktrackFailure><if(backtracking)_subtemplate>@state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)
            </if(backtracking)_subtemplate></Ruby.ruleBacktrackFailure>
            eee = EarlyExit(65)
            <Ruby.region__positiveClosureBlockLoop__earlyExitException></Ruby.region__positiveClosureBlockLoop__earlyExitException>

            raise eee
          end
          match_count_65 += 1
        end
        </Ruby.positiveClosureBlockLoop></Ruby.region__positiveClosureBlock__loopBody></Ruby.positiveClosureBlock>
        </Ruby.element><AST.rewriteCode># AST Rewrite
        # elements: source_text
        # token labels: 
        # rule labels: <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>
        # token list labels: 
        # rule list labels: 
        # wildcard labels: 
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>
          <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
          <AST.rewriteCodeLabels><ASTParser.anonymous>stream_<AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> = <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef> ? subtree_stream("rule <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>", <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree) : subtree_stream("token <AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>")</ASTParser.anonymous>
          </AST.rewriteCodeLabels>
          root_0 = @adaptor.create_flat_list!
          <AST.rewriteAltFirst><else_subtemplate># 691:20: -> ^( MACRO_DEFINE ( source_text )+ )
          <AST.rewriteElementList><AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteTree># at line 691:23: ^( MACRO_DEFINE ( source_text )+ )
          root_1 = @adaptor.create_flat_list!
          <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteImaginaryTokenRefRoot>root_1 = @adaptor.become_root(<AST.createImaginaryNode><else_subtemplate><if(!args)_subtemplate>@adaptor.create_from_type!(MACRO_DEFINE, "MACRO_DEFINE")</if(!args)_subtemplate></else_subtemplate></AST.createImaginaryNode>, root_1)
          </AST.rewriteImaginaryTokenRefRoot></AST.rewriteElement>
          <AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewritePositiveClosureBlock># at line 691:38: ( source_text )+
          unless <ASTParser.anonymous>stream_source_text.has_next?</ASTParser.anonymous>
            raise ANTLR3::RewriteEarlyExit
          end

          while <ASTParser.anonymous>stream_source_text.has_next?</ASTParser.anonymous>
            <AST.rewriteElementList><AST.rewriteElement><AST.region__rewriteElement__pregen></AST.region__rewriteElement__pregen><AST.rewriteRuleRef>@adaptor.add_child(root_1, stream_source_text.next_tree)
            </AST.rewriteRuleRef></AST.rewriteElement></AST.rewriteElementList>
          end

          <ASTParser.anonymous>stream_source_text.reset
          </ASTParser.anonymous></AST.rewritePositiveClosureBlock></AST.rewriteElement>
          @adaptor.add_child(root_0, root_1)
          </AST.rewriteTree></AST.rewriteElement></AST.rewriteElementList></else_subtemplate></AST.rewriteAltFirst>


          <if(!TREE_PARSER)_subtemplate><AST.prevRuleRootRef>return_value</AST.prevRuleRootRef>.tree = root_0
          </if(!TREE_PARSER)_subtemplate></ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></AST.rewriteCode></AST.alt></Ruby.ruleBlockSingleAlt><ASTParser.ruleCleanUp><Ruby.ruleCleanUp><if(ruleDescriptor.hasMultipleReturnValues)_subtemplate><if(!TREE_PARSER)_subtemplate># - - - - - - - rule clean up - - - - - - - -
        return_value.stop = @input.look(-1)
        </if(!TREE_PARSER)_subtemplate></if(ruleDescriptor.hasMultipleReturnValues)_subtemplate></Ruby.ruleCleanUp>
        <ASTParser.gatedAction><if(backtracking)_subtemplate>if <Ruby.actionGate>@state.backtracking == 0</Ruby.actionGate>
          <ASTParser.<anonymous template argument>>
          return_value.tree = @adaptor.rule_post_processing(root_0)
          @adaptor.set_token_boundaries(return_value.tree, return_value.start, return_value.stop)
          </ASTParser.<anonymous template argument>>
        end</if(backtracking)_subtemplate></ASTParser.gatedAction></ASTParser.ruleCleanUp>
      <if(memoize)_subtemplate><if(backtracking)_subtemplate>  success = true
      </if(backtracking)_subtemplate></if(memoize)_subtemplate>
      <else_subtemplate><if(!emptyRule)_subtemplate><else_subtemplate>rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)
        <ASTParser.region__ruleBody__setErrorReturnValue>return_value.tree = @adaptor.create_error_node!(@input, return_value.start, @input.look(-1), re)
        </ASTParser.region__ruleBody__setErrorReturnValue></else_subtemplate></if(!emptyRule)_subtemplate></else_subtemplate>
      ensure
        <Ruby.traceOut><else_subtemplate># -> uncomment the next line to manually enable rule tracing
        # trace_out(__method__, 41)
        </else_subtemplate></Ruby.traceOut><Ruby.memoize><if(memoize)_subtemplate><if(backtracking)_subtemplate>memoize(__method__, macro_text_start_index, success) if @state.backtracking > 0
        </if(backtracking)_subtemplate></if(memoize)_subtemplate></Ruby.memoize><Ruby.ruleScopeCleanUp></Ruby.ruleScopeCleanUp>
      end</Ruby.ruleBody></Ruby.region__rule__body>
      
      return <Ruby.ruleReturnValue><if(!ruleDescriptor.isSynPred)_subtemplate><if(ruleDescriptor.hasReturnValue)_subtemplate><else_subtemplate>return_value</else_subtemplate></if(ruleDescriptor.hasReturnValue)_subtemplate></if(!ruleDescriptor.isSynPred)_subtemplate></Ruby.ruleReturnValue>
    end
    </Ruby.rule>
    </ASTParser.anonymous><ASTParser.anonymous># parser rule synpred_14_cpp! (synpred14_Cpp)
    # 
    # (in Cpp.g)
    # 109:8: synpred14_Cpp : DEFINE IDENTIFIER LPAREN ( WS )? RPAREN ( macro_text )? ;
    def synpred_14_cpp!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 55)

      # at line 109:8: DEFINE IDENTIFIER LPAREN ( WS )? RPAREN ( macro_text )?
      match(DEFINE, TOKENS_FOLLOWING_DEFINE_IN_synpred14_Cpp_611)
      match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_synpred14_Cpp_617)
      match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_synpred14_Cpp_620)
      # at line 109:43: ( WS )?
      alt_66 = 2
      <Ruby.dfaOptionalBlockState>look_66_0 = @input.peek(1)

      <Ruby.dfaEdge>if (<Ruby.lookaheadTest>look_66_0 == WS</Ruby.lookaheadTest>) 
        <Ruby.dfaAcceptState>alt_66 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>
      end</Ruby.dfaOptionalBlockState>
      case alt_66
      when 1
        # at line 0:0: WS
        match(WS, TOKENS_FOLLOWING_WS_IN_synpred14_Cpp_627)

      end
      match(RPAREN, TOKENS_FOLLOWING_RPAREN_IN_synpred14_Cpp_634)
      # at line 109:59: ( macro_text )?
      alt_67 = 2
      <Ruby.dfaOptionalBlockState>look_67_0 = @input.peek(1)

      <Ruby.dfaEdge>if (<Ruby.setTest><Ruby.lookaheadTest>look_67_0 == TEXT_END</Ruby.lookaheadTest> || <Ruby.lookaheadRangeTest>look_67_0.between?(IDENTIFIER, COMMA)</Ruby.lookaheadRangeTest> || <Ruby.lookaheadRangeTest>look_67_0.between?(DECIMAL_LITERAL, STRING_LITERAL)</Ruby.lookaheadRangeTest> || <Ruby.lookaheadTest>look_67_0 == SIZEOF</Ruby.lookaheadTest> || <Ruby.lookaheadRangeTest>look_67_0.between?(HEX_LITERAL, COPERATOR)</Ruby.lookaheadRangeTest></Ruby.setTest>) 
        <Ruby.dfaAcceptState>alt_67 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>
      end</Ruby.dfaOptionalBlockState>
      case alt_67
      when 1
        # at line 0:0: macro_text
        @state.following.push(TOKENS_FOLLOWING_macro_text_IN_synpred14_Cpp_637)
        macro_text
        @state.following.pop

      end

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 55)

    end
    </ASTParser.anonymous><ASTParser.anonymous># parser rule synpred_22_cpp! (synpred22_Cpp)
    # 
    # (in Cpp.g)
    # 110:8: synpred22_Cpp : DEFINE mac= IDENTIFIER LPAREN ( WS )? (arg+= macro_param ( WS )? ( COMMA ( WS )* arg+= macro_param ( WS )* )* )? RPAREN ( macro_text )? ;
    def synpred_22_cpp!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 63)
      mac = nil
      list_of_arg = []
      arg = nil
      arg = nil

      # at line 110:8: DEFINE mac= IDENTIFIER LPAREN ( WS )? (arg+= macro_param ( WS )? ( COMMA ( WS )* arg+= macro_param ( WS )* )* )? RPAREN ( macro_text )?
      match(DEFINE, TOKENS_FOLLOWING_DEFINE_IN_synpred22_Cpp_658)
      mac = match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_synpred22_Cpp_662)
      match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_synpred22_Cpp_665)
      # at line 110:38: ( WS )?
      alt_74 = 2
      <Ruby.dfaOptionalBlockState>look_74_0 = @input.peek(1)

      <Ruby.dfaEdge>if (<Ruby.lookaheadTest>look_74_0 == WS</Ruby.lookaheadTest>) 
        <Ruby.dfaAcceptState>alt_74 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>
      end</Ruby.dfaOptionalBlockState>
      case alt_74
      when 1
        # at line 0:0: WS
        match(WS, TOKENS_FOLLOWING_WS_IN_synpred22_Cpp_667)

      end
      # at line 110:42: (arg+= macro_param ( WS )? ( COMMA ( WS )* arg+= macro_param ( WS )* )* )?
      alt_79 = 2
      <Ruby.dfaOptionalBlockState>look_79_0 = @input.peek(1)

      <Ruby.dfaEdge>if (<Ruby.setTest><Ruby.lookaheadTest>look_79_0 == IDENTIFIER</Ruby.lookaheadTest> || <Ruby.lookaheadTest>look_79_0 == ELLIPSIS</Ruby.lookaheadTest></Ruby.setTest>) 
        <Ruby.dfaAcceptState>alt_79 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>
      end</Ruby.dfaOptionalBlockState>
      case alt_79
      when 1
        # at line 110:43: arg+= macro_param ( WS )? ( COMMA ( WS )* arg+= macro_param ( WS )* )*
        @state.following.push(TOKENS_FOLLOWING_macro_param_IN_synpred22_Cpp_673)
        arg = macro_param
        @state.following.pop
        list_of_arg << arg

        # at line 110:60: ( WS )?
        alt_75 = 2
        <Ruby.dfaOptionalBlockState>look_75_0 = @input.peek(1)

        <Ruby.dfaEdge>if (<Ruby.lookaheadTest>look_75_0 == WS</Ruby.lookaheadTest>) 
          <Ruby.dfaAcceptState>alt_75 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>
        end</Ruby.dfaOptionalBlockState>
        case alt_75
        when 1
          # at line 0:0: WS
          match(WS, TOKENS_FOLLOWING_WS_IN_synpred22_Cpp_675)

        end
        # at line 110:64: ( COMMA ( WS )* arg+= macro_param ( WS )* )*
        loop do  #loop 78
          alt_78 = 2
          <Ruby.dfaLoopbackState>look_78_0 = @input.peek(1)

          <Ruby.dfaEdge>if (<Ruby.lookaheadTest>look_78_0 == COMMA</Ruby.lookaheadTest>) 
            <Ruby.dfaAcceptState>alt_78 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>

          end</Ruby.dfaLoopbackState>
          case alt_78
          when 1
            # at line 110:65: COMMA ( WS )* arg+= macro_param ( WS )*
            match(COMMA, TOKENS_FOLLOWING_COMMA_IN_synpred22_Cpp_679)
            # at line 110:71: ( WS )*
            loop do  #loop 76
              alt_76 = 2
              <Ruby.dfaLoopbackState>look_76_0 = @input.peek(1)

              <Ruby.dfaEdge>if (<Ruby.lookaheadTest>look_76_0 == WS</Ruby.lookaheadTest>) 
                <Ruby.dfaAcceptState>alt_76 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>

              end</Ruby.dfaLoopbackState>
              case alt_76
              when 1
                # at line 0:0: WS
                match(WS, TOKENS_FOLLOWING_WS_IN_synpred22_Cpp_681)

              else
                break #loop 76
              end
            end
            @state.following.push(TOKENS_FOLLOWING_macro_param_IN_synpred22_Cpp_686)
            arg = macro_param
            @state.following.pop
            list_of_arg << arg

            # at line 110:92: ( WS )*
            loop do  #loop 77
              alt_77 = 2
              <Ruby.dfaLoopbackState>look_77_0 = @input.peek(1)

              <Ruby.dfaEdge>if (<Ruby.lookaheadTest>look_77_0 == WS</Ruby.lookaheadTest>) 
                <Ruby.dfaAcceptState>alt_77 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>

              end</Ruby.dfaLoopbackState>
              case alt_77
              when 1
                # at line 0:0: WS
                match(WS, TOKENS_FOLLOWING_WS_IN_synpred22_Cpp_688)

              else
                break #loop 77
              end
            end

          else
            break #loop 78
          end
        end

      end
      match(RPAREN, TOKENS_FOLLOWING_RPAREN_IN_synpred22_Cpp_695)
      # at line 110:108: ( macro_text )?
      alt_80 = 2
      <Ruby.dfaOptionalBlockState>look_80_0 = @input.peek(1)

      <Ruby.dfaEdge>if (<Ruby.setTest><Ruby.lookaheadTest>look_80_0 == TEXT_END</Ruby.lookaheadTest> || <Ruby.lookaheadRangeTest>look_80_0.between?(IDENTIFIER, COMMA)</Ruby.lookaheadRangeTest> || <Ruby.lookaheadRangeTest>look_80_0.between?(DECIMAL_LITERAL, STRING_LITERAL)</Ruby.lookaheadRangeTest> || <Ruby.lookaheadTest>look_80_0 == SIZEOF</Ruby.lookaheadTest> || <Ruby.lookaheadRangeTest>look_80_0.between?(HEX_LITERAL, COPERATOR)</Ruby.lookaheadRangeTest></Ruby.setTest>) 
        <Ruby.dfaAcceptState>alt_80 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>
      end</Ruby.dfaOptionalBlockState>
      case alt_80
      when 1
        # at line 0:0: macro_text
        @state.following.push(TOKENS_FOLLOWING_macro_text_IN_synpred22_Cpp_698)
        macro_text
        @state.following.pop

      end

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 63)

    end
    </ASTParser.anonymous><ASTParser.anonymous># parser rule synpred_65_cpp! (synpred65_Cpp)
    # 
    # (in Cpp.g)
    # 240:13: synpred65_Cpp : SIZEOF unary_expression ;
    def synpred_65_cpp!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 106)

      # at line 240:13: SIZEOF unary_expression
      match(SIZEOF, TOKENS_FOLLOWING_SIZEOF_IN_synpred65_Cpp_2039)
      @state.following.push(TOKENS_FOLLOWING_unary_expression_IN_synpred65_Cpp_2042)
      unary_expression
      @state.following.pop

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 106)

    end
    </ASTParser.anonymous><ASTParser.anonymous># parser rule synpred_66_cpp! (synpred66_Cpp)
    # 
    # (in Cpp.g)
    # 241:13: synpred66_Cpp : SIZEOF LPAREN type_name RPAREN ;
    def synpred_66_cpp!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 107)

      # at line 241:13: SIZEOF LPAREN type_name RPAREN
      match(SIZEOF, TOKENS_FOLLOWING_SIZEOF_IN_synpred66_Cpp_2064)
      match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_synpred66_Cpp_2067)
      @state.following.push(TOKENS_FOLLOWING_type_name_IN_synpred66_Cpp_2069)
      type_name
      @state.following.pop
      match(RPAREN, TOKENS_FOLLOWING_RPAREN_IN_synpred66_Cpp_2071)

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 107)

    end
    </ASTParser.anonymous><ASTParser.anonymous># parser rule synpred_75_cpp! (synpred75_Cpp)
    # 
    # (in Cpp.g)
    # 254:13: synpred75_Cpp : LPAREN type_name RPAREN unary_expression ;
    def synpred_75_cpp!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 116)

      # at line 254:13: LPAREN type_name RPAREN unary_expression
      match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_synpred75_Cpp_2427)
      @state.following.push(TOKENS_FOLLOWING_type_name_IN_synpred75_Cpp_2429)
      type_name
      @state.following.pop
      match(RPAREN, TOKENS_FOLLOWING_RPAREN_IN_synpred75_Cpp_2431)
      @state.following.push(TOKENS_FOLLOWING_unary_expression_IN_synpred75_Cpp_2434)
      unary_expression
      @state.following.pop

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 116)

    end
    </ASTParser.anonymous><ASTParser.anonymous># parser rule synpred_78_cpp! (synpred78_Cpp)
    # 
    # (in Cpp.g)
    # 262:9: synpred78_Cpp : s= STAR IDENTIFIER ;
    def synpred_78_cpp!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 119)
      s = nil

      # at line 262:9: s= STAR IDENTIFIER
      s = match(STAR, TOKENS_FOLLOWING_STAR_IN_synpred78_Cpp_2528)
      match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_synpred78_Cpp_2537)

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 119)

    end
    </ASTParser.anonymous><ASTParser.anonymous># parser rule synpred_82_cpp! (synpred82_Cpp)
    # 
    # (in Cpp.g)
    # 270:9: synpred82_Cpp : IDENTIFIER LPAREN ;
    def synpred_82_cpp!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 123)

      # at line 270:10: IDENTIFIER LPAREN
      match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_synpred82_Cpp_2609)
      match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_synpred82_Cpp_2611)

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 123)

    end
    </ASTParser.anonymous><ASTParser.anonymous># parser rule synpred_83_cpp! (synpred83_Cpp)
    # 
    # (in Cpp.g)
    # 271:9: synpred83_Cpp : IDENTIFIER ;
    def synpred_83_cpp!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 124)

      # at line 271:9: IDENTIFIER
      match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_synpred83_Cpp_2626)

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 124)

    end
    </ASTParser.anonymous><ASTParser.anonymous># parser rule synpred_92_cpp! (synpred92_Cpp)
    # 
    # (in Cpp.g)
    # 296:9: synpred92_Cpp : source_expression ;
    def synpred_92_cpp!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 133)

      # at line 296:9: source_expression
      @state.following.push(TOKENS_FOLLOWING_source_expression_IN_synpred92_Cpp_2812)
      source_expression
      @state.following.pop

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 133)

    end
    </ASTParser.anonymous><ASTParser.anonymous># parser rule synpred_94_cpp! (synpred94_Cpp)
    # 
    # (in Cpp.g)
    # 298:9: synpred94_Cpp : LPAREN ;
    def synpred_94_cpp!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 135)

      # at line 298:9: LPAREN
      match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_synpred94_Cpp_2832)

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 135)

    end
    </ASTParser.anonymous><ASTParser.anonymous># parser rule synpred_98_cpp! (synpred98_Cpp)
    # 
    # (in Cpp.g)
    # 304:7: synpred98_Cpp : id= IDENTIFIER ( WS )? LPAREN ( WS )? RPAREN ;
    def synpred_98_cpp!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 139)
      id = nil

      # at line 304:7: id= IDENTIFIER ( WS )? LPAREN ( WS )? RPAREN
      id = match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_synpred98_Cpp_2871)
      # at line 304:21: ( WS )?
      alt_81 = 2
      <Ruby.dfaOptionalBlockState>look_81_0 = @input.peek(1)

      <Ruby.dfaEdge>if (<Ruby.lookaheadTest>look_81_0 == WS</Ruby.lookaheadTest>) 
        <Ruby.dfaAcceptState>alt_81 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>
      end</Ruby.dfaOptionalBlockState>
      case alt_81
      when 1
        # at line 0:0: WS
        match(WS, TOKENS_FOLLOWING_WS_IN_synpred98_Cpp_2873)

      end
      match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_synpred98_Cpp_2876)
      # at line 304:32: ( WS )?
      alt_82 = 2
      <Ruby.dfaOptionalBlockState>look_82_0 = @input.peek(1)

      <Ruby.dfaEdge>if (<Ruby.lookaheadTest>look_82_0 == WS</Ruby.lookaheadTest>) 
        <Ruby.dfaAcceptState>alt_82 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>
      end</Ruby.dfaOptionalBlockState>
      case alt_82
      when 1
        # at line 0:0: WS
        match(WS, TOKENS_FOLLOWING_WS_IN_synpred98_Cpp_2878)

      end
      match(RPAREN, TOKENS_FOLLOWING_RPAREN_IN_synpred98_Cpp_2881)

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 139)

    end
    </ASTParser.anonymous><ASTParser.anonymous># parser rule synpred_100_cpp! (synpred100_Cpp)
    # 
    # (in Cpp.g)
    # 305:32: synpred100_Cpp : WS ;
    def synpred_100_cpp!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 141)

      # at line 305:32: WS
      match(WS, TOKENS_FOLLOWING_WS_IN_synpred100_Cpp_2907)

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 141)

    end
    </ASTParser.anonymous><ASTParser.anonymous># parser rule synpred_103_cpp! (synpred103_Cpp)
    # 
    # (in Cpp.g)
    # 308:42: synpred103_Cpp : WS ;
    def synpred_103_cpp!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 144)

      # at line 308:42: WS
      match(WS, TOKENS_FOLLOWING_WS_IN_synpred103_Cpp_2957)

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 144)

    end
    </ASTParser.anonymous><ASTParser.anonymous># parser rule synpred_105_cpp! (synpred105_Cpp)
    # 
    # (in Cpp.g)
    # 311:18: synpred105_Cpp : source_expression ;
    def synpred_105_cpp!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 146)

      # at line 311:18: source_expression
      @state.following.push(TOKENS_FOLLOWING_source_expression_IN_synpred105_Cpp_2997)
      source_expression
      @state.following.pop

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 146)

    end
    </ASTParser.anonymous><ASTParser.anonymous># parser rule synpred_106_cpp! (synpred106_Cpp)
    # 
    # (in Cpp.g)
    # 311:18: synpred106_Cpp : ( source_expression )+ ;
    def synpred_106_cpp!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 147)

      # at line 311:18: ( source_expression )+
      # at file 311:18: ( source_expression )+
      match_count_85 = 0
      loop do
        alt_85 = 2
        <Ruby.dfaLoopbackState>look_85_0 = @input.peek(1)

        <Ruby.dfaEdge>if (<Ruby.setTest><Ruby.lookaheadTest>look_85_0 == TEXT_END</Ruby.lookaheadTest> || <Ruby.lookaheadRangeTest>look_85_0.between?(IDENTIFIER, WS)</Ruby.lookaheadRangeTest> || <Ruby.lookaheadRangeTest>look_85_0.between?(DECIMAL_LITERAL, STRING_LITERAL)</Ruby.lookaheadRangeTest> || <Ruby.lookaheadTest>look_85_0 == SIZEOF</Ruby.lookaheadTest> || <Ruby.lookaheadRangeTest>look_85_0.between?(HEX_LITERAL, COPERATOR)</Ruby.lookaheadRangeTest></Ruby.setTest>) 
          <Ruby.dfaAcceptState>alt_85 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>

        end</Ruby.dfaLoopbackState>
        case alt_85
        when 1
          # at line 0:0: source_expression
          @state.following.push(TOKENS_FOLLOWING_source_expression_IN_synpred106_Cpp_2997)
          source_expression
          @state.following.pop

        else
          match_count_85 > 0 and break
          @state.backtracking > 0 and raise(ANTLR3::Error::BacktrackingFailed)

          eee = EarlyExit(85)


          raise eee
        end
        match_count_85 += 1
      end


    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 147)

    end
    </ASTParser.anonymous><ASTParser.anonymous># parser rule synpred_108_cpp! (synpred108_Cpp)
    # 
    # (in Cpp.g)
    # 316:13: synpred108_Cpp : IDENTIFIER ( WS )? LPAREN ;
    def synpred_108_cpp!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 149)

      # at line 316:14: IDENTIFIER ( WS )? LPAREN
      match(IDENTIFIER, TOKENS_FOLLOWING_IDENTIFIER_IN_synpred108_Cpp_3055)
      # at line 316:25: ( WS )?
      alt_86 = 2
      <Ruby.dfaOptionalBlockState>look_86_0 = @input.peek(1)

      <Ruby.dfaEdge>if (<Ruby.lookaheadTest>look_86_0 == WS</Ruby.lookaheadTest>) 
        <Ruby.dfaAcceptState>alt_86 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>
      end</Ruby.dfaOptionalBlockState>
      case alt_86
      when 1
        # at line 0:0: WS
        match(WS, TOKENS_FOLLOWING_WS_IN_synpred108_Cpp_3057)

      end
      match(LPAREN, TOKENS_FOLLOWING_LPAREN_IN_synpred108_Cpp_3060)

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 149)

    end
    </ASTParser.anonymous><ASTParser.anonymous># parser rule synpred_110_cpp! (synpred110_Cpp)
    # 
    # (in Cpp.g)
    # 317:13: synpred110_Cpp : primary_source ( WS )? SHARPSHARP ;
    def synpred_110_cpp!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 151)

      # at line 317:14: primary_source ( WS )? SHARPSHARP
      @state.following.push(TOKENS_FOLLOWING_primary_source_IN_synpred110_Cpp_3080)
      primary_source
      @state.following.pop
      # at line 317:30: ( WS )?
      alt_87 = 2
      <Ruby.dfaOptionalBlockState>look_87_0 = @input.peek(1)

      <Ruby.dfaEdge>if (<Ruby.lookaheadTest>look_87_0 == WS</Ruby.lookaheadTest>) 
        <Ruby.dfaAcceptState>alt_87 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>
      end</Ruby.dfaOptionalBlockState>
      case alt_87
      when 1
        # at line 0:0: WS
        match(WS, TOKENS_FOLLOWING_WS_IN_synpred110_Cpp_3083)

      end
      match(SHARPSHARP, TOKENS_FOLLOWING_SHARPSHARP_IN_synpred110_Cpp_3086)

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 151)

    end
    </ASTParser.anonymous><ASTParser.anonymous># parser rule synpred_112_cpp! (synpred112_Cpp)
    # 
    # (in Cpp.g)
    # 319:13: synpred112_Cpp : primary_source ;
    def synpred_112_cpp!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 153)

      # at line 319:13: primary_source
      @state.following.push(TOKENS_FOLLOWING_primary_source_IN_synpred112_Cpp_3136)
      primary_source
      @state.following.pop

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 153)

    end
    </ASTParser.anonymous><ASTParser.anonymous># parser rule synpred_115_cpp! (synpred115_Cpp)
    # 
    # (in Cpp.g)
    # 322:20: synpred115_Cpp : mac_args ;
    def synpred_115_cpp!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 156)

      # at line 322:20: mac_args
      @state.following.push(TOKENS_FOLLOWING_mac_args_IN_synpred115_Cpp_3180)
      mac_args
      @state.following.pop

    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 156)

    end
    </ASTParser.anonymous><ASTParser.anonymous># parser rule synpred_121_cpp! (synpred121_Cpp)
    # 
    # (in Cpp.g)
    # 329:35: synpred121_Cpp : ( WS )? SHARPSHARP ( WS )? prim+= primary_source ;
    def synpred_121_cpp!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in(__method__, 162)
      list_of_prim = []
      prim = nil
      prim = nil

      # at line 329:35: ( WS )? SHARPSHARP ( WS )? prim+= primary_source
      # at line 329:35: ( WS )?
      alt_89 = 2
      <Ruby.dfaOptionalBlockState>look_89_0 = @input.peek(1)

      <Ruby.dfaEdge>if (<Ruby.lookaheadTest>look_89_0 == WS</Ruby.lookaheadTest>) 
        <Ruby.dfaAcceptState>alt_89 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>
      end</Ruby.dfaOptionalBlockState>
      case alt_89
      when 1
        # at line 0:0: WS
        match(WS, TOKENS_FOLLOWING_WS_IN_synpred121_Cpp_3262)

      end
      match(SHARPSHARP, TOKENS_FOLLOWING_SHARPSHARP_IN_synpred121_Cpp_3265)
      # at line 329:51: ( WS )?
      alt_90 = 2
      <Ruby.dfaOptionalBlockState>look_90_0 = @input.peek(1)

      <Ruby.dfaEdge>if (<Ruby.lookaheadTest>look_90_0 == WS</Ruby.lookaheadTest>) 
        <Ruby.dfaAcceptState>alt_90 = 1</Ruby.dfaAcceptState></Ruby.dfaEdge>
      end</Ruby.dfaOptionalBlockState>
      case alt_90
      when 1
        # at line 0:0: WS
        match(WS, TOKENS_FOLLOWING_WS_IN_synpred121_Cpp_3268)

      end
      @state.following.push(TOKENS_FOLLOWING_primary_source_IN_synpred121_Cpp_3273)
      prim = primary_source
      @state.following.pop
      list_of_prim << prim


    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out(__method__, 162)

    end
    </ASTParser.anonymous>

    <if(cyclicDFAs)_subtemplate># - - - - - - - - - - DFA definitions - - - - - - - - - - -
    <ASTParser.anonymous><Ruby.cyclicDFA>class DFA2 < ANTLR3::DFA
      EOT = unpack(11, -1)
      EOF = unpack(11, -1)
      MIN = unpack(1, 6, 10, -1)
      MAX = unpack(1, 106, 10, -1)
      ACCEPT = unpack(1, -1, 1, 1, 1, 2, 1, 3, 1, 4, 1, 5, 1, 6, 1, 7, 1, 
                      8, 1, 9, 1, 10)
      SPECIAL = unpack(11, -1)
      TRANSITION = [
        <ASTParser.anonymous>unpack(1, 7, 3, -1, 3, 3, 18, -1, 1, 2, 3, 
                                    -1, 1, 9, 1, -1, 1, 8, 2, 4, 1, 5, 1, 
                                    6, 4, -1, 1, 1, 1, 10, 5, 2, 1, -1, 
                                    2, 2, 33, -1, 1, 2, 7, -1, 10, 2)</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack()</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack()</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack()</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack()</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack()</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack()</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack()</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack()</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack()</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack()</ASTParser.anonymous>
      ].freeze
      
      @decision = 2
      
      <Ruby.region__cyclicDFA__errorMethod></Ruby.region__cyclicDFA__errorMethod><if(dfa.description)_subtemplate>
      def description
        <<-'__dfa_description__'.strip!
          91:5: ( DIRECTIVE | text_line | diagnostics | file_inclusion | macro_define | macro_undef | conditional_compilation | line_control | macro_execution )?
        __dfa_description__
      end
    </if(dfa.description)_subtemplate>end
    </Ruby.cyclicDFA></ASTParser.anonymous><ASTParser.anonymous><Ruby.cyclicDFA>class DFA14 < ANTLR3::DFA
      EOT = unpack(18, -1)
      EOF = unpack(2, -1, 2, 4, 1, -1, 1, 4, 1, -1, 1, 4, 2, -1, 2, 4, 1, 
                   -1, 5, 4)
      MIN = unpack(1, 40, 1, 48, 2, 31, 1, -1, 1, 31, 1, 0, 1, 31, 2, -1, 
                   2, 31, 1, 0, 5, 31)
      MAX = unpack(1, 40, 1, 48, 2, 106, 1, -1, 1, 106, 1, 0, 1, 106, 2, 
                   -1, 2, 106, 1, 0, 5, 106)
      ACCEPT = unpack(4, -1, 1, 3, 3, -1, 1, 2, 1, 1, 8, -1)
      SPECIAL = unpack(6, -1, 1, 0, 5, -1, 1, 1, 5, -1)
      TRANSITION = [
        <ASTParser.anonymous>unpack(1, 1)</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack(1, 2)</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack(1, 4, 15, -1, 2, 4, 1, 3, 3, 4, 1, 
                                     -1, 2, 4, 33, -1, 1, 4, 7, -1, 10, 
                                     4)</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack(1, 4, 15, -1, 1, 4, 1, 7, 1, 4, 1, 
                                     5, 1, 6, 1, 4, 1, 8, 2, 4, 33, -1, 
                                     1, 4, 7, -1, 10, 4)</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack()</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack(1, 4, 15, -1, 1, 4, 1, 7, 2, 4, 1, 
                                     6, 1, 4, 1, 8, 2, 4, 33, -1, 1, 4, 
                                     7, -1, 10, 4)</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack(1, -1)</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack(1, 4, 15, -1, 3, 4, 1, 10, 1, 12, 1, 
                                     11, 1, 8, 2, 4, 33, -1, 1, 4, 7, -1, 
                                     10, 4)</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack()</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack()</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack(1, 4, 15, -1, 4, 4, 1, 12, 1, 11, 1, 
                                     -1, 2, 4, 33, -1, 1, 4, 7, -1, 10, 
                                     4)</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack(1, 4, 15, -1, 1, 4, 1, 14, 1, 4, 1, 
                                     13, 2, 4, 1, 8, 2, 4, 33, -1, 1, 4, 
                                     7, -1, 10, 4)</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack(1, -1)</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack(1, 4, 15, -1, 1, 4, 1, 14, 1, 4, 1, 
                                     15, 2, 4, 1, 8, 2, 4, 33, -1, 1, 4, 
                                     7, -1, 10, 4)</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack(1, 4, 15, -1, 3, 4, 1, 16, 1, 12, 1, 
                                     11, 1, 8, 2, 4, 33, -1, 1, 4, 7, -1, 
                                     10, 4)</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack(1, 4, 15, -1, 1, 4, 1, 14, 1, 4, 1, 
                                     15, 2, 4, 1, 8, 2, 4, 33, -1, 1, 4, 
                                     7, -1, 10, 4)</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack(1, 4, 15, -1, 3, 4, 1, 17, 1, 12, 1, 
                                     11, 1, -1, 2, 4, 33, -1, 1, 4, 7, -1, 
                                     10, 4)</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack(1, 4, 15, -1, 3, 4, 1, 17, 1, 12, 1, 
                                     11, 1, -1, 2, 4, 33, -1, 1, 4, 7, -1, 
                                     10, 4)</ASTParser.anonymous>
      ].freeze
      
      @decision = 14
      
      <Ruby.region__cyclicDFA__errorMethod></Ruby.region__cyclicDFA__errorMethod><if(dfa.description)_subtemplate>
      def description
        <<-'__dfa_description__'.strip!
          108:1: macro_define : ( DEFINE IDENTIFIER LPAREN ( WS )? RPAREN ( macro_text )? -> ^( MAC_FUNCTION_OBJECT IDENTIFIER ( macro_text )? ) | DEFINE mac= IDENTIFIER LPAREN ( WS )? (arg+= macro_param ( WS )? ( COMMA ( WS )* arg+= macro_param ( WS )* )* )? RPAREN ( macro_text )? -> ^( MAC_FUNCTION $mac ( $arg)+ ( macro_text )? ) | DEFINE IDENTIFIER ( macro_text )? -> ^( MAC_OBJECT IDENTIFIER ( macro_text )? ) );
        __dfa_description__
      end
    </if(dfa.description)_subtemplate>end
    </Ruby.cyclicDFA></ASTParser.anonymous><ASTParser.anonymous><Ruby.cyclicDFA>class DFA40 < ANTLR3::DFA
      EOT = unpack(13, -1)
      EOF = unpack(13, -1)
      MIN = unpack(1, 48, 2, -1, 2, 48, 1, -1, 1, 48, 3, -1, 1, 49, 1, 0, 
                   1, -1)
      MAX = unpack(1, 100, 2, -1, 1, 100, 1, 49, 1, -1, 1, 100, 3, -1, 1, 
                   96, 1, 0, 1, -1)
      ACCEPT = unpack(1, -1, 1, 1, 1, 2, 2, -1, 1, 7, 1, -1, 1, 3, 1, 6, 
                      1, 5, 2, -1, 1, 4)
      SPECIAL = unpack(11, -1, 1, 0, 1, -1)
      TRANSITION = [
        <ASTParser.anonymous>unpack(2, 5, 4, -1, 2, 5, 17, -1, 1, 5, 8, 
                                    -1, 3, 5, 2, -1, 1, 1, 1, 2, 1, 3, 1, 
                                    4, 2, 5, 4, -1, 4, 5)</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack()</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack()</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack(1, 7, 1, 6, 4, -1, 2, 7, 17, -1, 1, 
                                     7, 8, -1, 3, 7, 2, -1, 6, 7, 4, -1, 
                                     4, 7)</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack(1, 9, 1, 8)</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack()</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack(1, 10, 1, 7, 4, -1, 2, 7, 17, -1, 1, 
                                     7, 8, -1, 3, 7, 2, -1, 6, 7, 4, -1, 
                                     4, 7)</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack()</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack()</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack()</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack(1, 7, 1, -1, 1, 11, 4, -1, 12, 7, 1, 
                                     -1, 20, 7, 4, -1, 1, 7, 1, -1, 2, 7)</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack(1, -1)</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack()</ASTParser.anonymous>
      ].freeze
      
      @decision = 40
      
      <Ruby.region__cyclicDFA__errorMethod></Ruby.region__cyclicDFA__errorMethod><if(dfa.description)_subtemplate>
      def description
        <<-'__dfa_description__'.strip!
          237:1: unary_expression : ( PLUSPLUS unary_expression -> ^( PLUSPLUS unary_expression ) | MINUSMINUS unary_expression -> ^( MINUSMINUS unary_expression ) | SIZEOF unary_expression -> ^( SIZEOF unary_expression ) | SIZEOF LPAREN type_name RPAREN -> ^( SIZEOF_TYPE type_name ) | DEFINED type_name -> ^( DEFINED type_name ) | DEFINED LPAREN type_name RPAREN -> ^( DEFINED type_name ) | unary_expression_not_plus_minus );
        __dfa_description__
      end
    </if(dfa.description)_subtemplate>end
    </Ruby.cyclicDFA></ASTParser.anonymous><ASTParser.anonymous><Ruby.cyclicDFA>class DFA41 < ANTLR3::DFA
      EOT = unpack(11, -1)
      EOF = unpack(11, -1)
      MIN = unpack(1, 48, 6, -1, 1, 0, 3, -1)
      MAX = unpack(1, 100, 6, -1, 1, 0, 3, -1)
      ACCEPT = unpack(1, -1, 1, 1, 1, 2, 1, 3, 1, 4, 1, 5, 1, 6, 1, -1, 
                      1, 8, 1, -1, 1, 7)
      SPECIAL = unpack(7, -1, 1, 0, 3, -1)
      TRANSITION = [
        <ASTParser.anonymous>unpack(1, 8, 1, 7, 4, -1, 2, 8, 17, -1, 1, 
                                    3, 8, -1, 1, 6, 1, 5, 1, 4, 6, -1, 1, 
                                    1, 1, 2, 4, -1, 4, 8)</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack()</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack()</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack()</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack()</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack()</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack()</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack(1, -1)</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack()</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack()</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack()</ASTParser.anonymous>
      ].freeze
      
      @decision = 41
      
      <Ruby.region__cyclicDFA__errorMethod></Ruby.region__cyclicDFA__errorMethod><if(dfa.description)_subtemplate>
      def description
        <<-'__dfa_description__'.strip!
          247:1: unary_expression_not_plus_minus : ( NOT unary_expression -> ^( NOT unary_expression ) | TILDE unary_expression -> ^( TILDE unary_expression ) | AMPERSAND unary_expression -> ^( REFERANCE unary_expression ) | STAR unary_expression -> ^( POINTER_AT unary_expression ) | MINUS unary_expression -> ^( UNARY_MINUS unary_expression ) | PLUS unary_expression -> ^( UNARY_PLUS unary_expression ) | LPAREN type_name RPAREN unary_expression -> ^( TYPECAST type_name unary_expression ) | postfix_expression );
        __dfa_description__
      end
    </if(dfa.description)_subtemplate>end
    </Ruby.cyclicDFA></ASTParser.anonymous><ASTParser.anonymous><Ruby.cyclicDFA>class DFA42 < ANTLR3::DFA
      EOT = unpack(10, -1)
      EOF = unpack(1, 2, 9, -1)
      MIN = unpack(1, 6, 1, 48, 6, -1, 1, 0, 1, -1)
      MAX = unpack(1, 106, 1, 100, 6, -1, 1, 0, 1, -1)
      ACCEPT = unpack(2, -1, 1, 7, 1, 1, 1, 2, 1, 4, 1, 5, 1, 6, 1, -1, 
                      1, 3)
      SPECIAL = unpack(8, -1, 1, 0, 1, -1)
      TRANSITION = [
        <ASTParser.anonymous>unpack(1, 2, 3, -1, 3, 2, 18, -1, 1, 2, 3, 
                                    -1, 1, 2, 1, -1, 5, 2, 4, -1, 7, 2, 
                                    1, -1, 30, 2, 1, 1, 2, 2, 1, 6, 1, 7, 
                                    1, 2, 3, -1, 1, 3, 1, 2, 1, 4, 1, 5, 
                                    10, 2)</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack(1, 8, 1, 2, 4, -1, 2, 2, 17, -1, 1, 
                                     2, 8, -1, 3, 2, 2, -1, 6, 2, 4, -1, 
                                     4, 2)</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack()</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack()</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack()</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack()</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack()</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack()</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack(1, -1)</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack()</ASTParser.anonymous>
      ].freeze
      
      @decision = 42
      
      <Ruby.region__cyclicDFA__errorMethod></Ruby.region__cyclicDFA__errorMethod><if(dfa.description)_subtemplate>
      def description
        <<-'__dfa_description__'.strip!
          ()* loopback of 260:5: (l= LSQUARE assignment_expression RSQUARE | DOT IDENTIFIER | s= STAR IDENTIFIER | POINTERTO IDENTIFIER | p= PLUSPLUS | m= MINUSMINUS )*
        __dfa_description__
      end
    </if(dfa.description)_subtemplate>end
    </Ruby.cyclicDFA></ASTParser.anonymous><ASTParser.anonymous><Ruby.cyclicDFA>class DFA46 < ANTLR3::DFA
      EOT = unpack(17, -1)
      EOF = unpack(17, -1)
      MIN = unpack(1, 31, 8, -1, 1, 0, 2, -1, 1, 0, 4, -1)
      MAX = unpack(1, 106, 8, -1, 1, 0, 2, -1, 1, 0, 4, -1)
      ACCEPT = unpack(1, -1, 1, 1, 11, -1, 1, 2, 1, 4, 1, 3, 1, 5)
      SPECIAL = unpack(9, -1, 1, 0, 2, -1, 1, 1, 4, -1)
      TRANSITION = [
        <ASTParser.anonymous>unpack(1, 1, 16, -1, 1, 1, 1, 9, 1, 12, 1, 
                                    14, 1, 13, 1, -1, 2, 1, 33, -1, 1, 1, 
                                    7, -1, 10, 1)</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack()</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack()</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack()</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack()</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack()</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack()</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack()</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack()</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack(1, -1)</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack()</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack()</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack(1, -1)</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack()</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack()</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack()</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack()</ASTParser.anonymous>
      ].freeze
      
      @decision = 46
      
      <Ruby.region__cyclicDFA__errorMethod></Ruby.region__cyclicDFA__errorMethod><if(dfa.description)_subtemplate>
      def description
        <<-'__dfa_description__'.strip!
          295:1: source_text : ( source_expression | COMMA | LPAREN | RPAREN | WS );
        __dfa_description__
      end
    </if(dfa.description)_subtemplate>end
    </Ruby.cyclicDFA></ASTParser.anonymous><ASTParser.anonymous><Ruby.cyclicDFA>class DFA59 < ANTLR3::DFA
      EOT = unpack(16, -1)
      EOF = unpack(16, -1)
      MIN = unpack(1, 31, 5, 0, 10, -1)
      MAX = unpack(1, 106, 5, 0, 10, -1)
      ACCEPT = unpack(6, -1, 1, 3, 1, 5, 1, 6, 1, 7, 1, 8, 1, 9, 1, 10, 
                      1, 1, 1, 2, 1, 4)
      SPECIAL = unpack(1, -1, 1, 0, 1, 1, 1, 2, 1, 3, 1, 4, 10, -1)
      TRANSITION = [
        <ASTParser.anonymous>unpack(1, 11, 16, -1, 1, 1, 1, 9, 1, 12, 3, 
                                    -1, 2, 3, 33, -1, 1, 8, 7, -1, 4, 3, 
                                    1, 6, 1, 7, 1, 10, 1, 2, 1, 4, 1, 5)</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack(1, -1)</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack(1, -1)</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack(1, -1)</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack(1, -1)</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack(1, -1)</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack()</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack()</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack()</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack()</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack()</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack()</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack()</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack()</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack()</ASTParser.anonymous>,
        <ASTParser.anonymous>unpack()</ASTParser.anonymous>
      ].freeze
      
      @decision = 59
      
      <Ruby.region__cyclicDFA__errorMethod></Ruby.region__cyclicDFA__errorMethod><if(dfa.description)_subtemplate>
      def description
        <<-'__dfa_description__'.strip!
          315:1: source_expression : ( ( IDENTIFIER ( WS )? LPAREN )=> macro_expansion | ( primary_source ( WS )? SHARPSHARP )=> concatenate | STRINGIFICATION IDENTIFIER -> ^( STRINGIFICATION IDENTIFIER ) | primary_source | STRING_OP | SIZEOF | LPAREN ( mac_args )? RPAREN -> ^( TEXT_GROUP ( mac_args )? ) | SEMICOLON | TEXT_END | WS );
        __dfa_description__
      end
    </if(dfa.description)_subtemplate>end
    </Ruby.cyclicDFA></ASTParser.anonymous>

    private

    def initialize_dfas
      super rescue nil
      <ASTParser.anonymous><Ruby.cyclicDFAInit><else_subtemplate>@dfa2 = DFA2.new(self, 2)
      </else_subtemplate></Ruby.cyclicDFAInit></ASTParser.anonymous><ASTParser.anonymous><Ruby.cyclicDFAInit><if(dfa.specialStateSTs)_subtemplate>@dfa14 = DFA14.new(self, 14) do |s|
        case s
        <ASTParser.anonymous>when 0
          <Ruby.cyclicDFAState>look_14_6 = @input.peek
          <if(semPredState)_subtemplate>index_14_6 = @input.index
          @input.rewind(@input.last_marker, false)
          </if(semPredState)_subtemplate>s = -1
          <Ruby.cyclicDFAEdge>if (<Ruby.evalSynPredicate>syntactic_predicate?(%s(<ASTParser.anonymous>synpred_14_cpp!</ASTParser.anonymous>))</Ruby.evalSynPredicate>)
            s = 9
          </Ruby.cyclicDFAEdge>els<Ruby.cyclicDFAEdge>if (<Ruby.evalSynPredicate>syntactic_predicate?(%s(<ASTParser.anonymous>synpred_22_cpp!</ASTParser.anonymous>))</Ruby.evalSynPredicate>)
            s = 8
          </Ruby.cyclicDFAEdge>els<Ruby.cyclicDFAEdge>if (<Ruby.true>true</Ruby.true>)
            s = 4
          </Ruby.cyclicDFAEdge>end
          <if(semPredState)_subtemplate> 
          @input.seek(index_14_6)
          </if(semPredState)_subtemplate></Ruby.cyclicDFAState></ASTParser.anonymous>
        <ASTParser.anonymous>when 1
          <Ruby.cyclicDFAState>look_14_12 = @input.peek
          <if(semPredState)_subtemplate>index_14_12 = @input.index
          @input.rewind(@input.last_marker, false)
          </if(semPredState)_subtemplate>s = -1
          <Ruby.cyclicDFAEdge>if (<Ruby.evalSynPredicate>syntactic_predicate?(%s(<ASTParser.anonymous>synpred_22_cpp!</ASTParser.anonymous>))</Ruby.evalSynPredicate>)
            s = 8
          </Ruby.cyclicDFAEdge>els<Ruby.cyclicDFAEdge>if (<Ruby.true>true</Ruby.true>)
            s = 4
          </Ruby.cyclicDFAEdge>end
          <if(semPredState)_subtemplate> 
          @input.seek(index_14_12)
          </if(semPredState)_subtemplate></Ruby.cyclicDFAState></ASTParser.anonymous>
        end
        
        if s < 0
      <if(backtracking)_subtemplate>    @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
      </if(backtracking)_subtemplate>    nva = ANTLR3::Error::NoViableAlternative.new(@dfa14.description, 14, s, input)
          @dfa14.error(nva)
          raise nva
        end
        
        s
      end
      </if(dfa.specialStateSTs)_subtemplate></Ruby.cyclicDFAInit></ASTParser.anonymous><ASTParser.anonymous><Ruby.cyclicDFAInit><if(dfa.specialStateSTs)_subtemplate>@dfa40 = DFA40.new(self, 40) do |s|
        case s
        <ASTParser.anonymous>when 0
          <Ruby.cyclicDFAState>look_40_11 = @input.peek
          <if(semPredState)_subtemplate>index_40_11 = @input.index
          @input.rewind(@input.last_marker, false)
          </if(semPredState)_subtemplate>s = -1
          <Ruby.cyclicDFAEdge>if (<Ruby.evalSynPredicate>syntactic_predicate?(%s(<ASTParser.anonymous>synpred_65_cpp!</ASTParser.anonymous>))</Ruby.evalSynPredicate>)
            s = 7
          </Ruby.cyclicDFAEdge>els<Ruby.cyclicDFAEdge>if (<Ruby.evalSynPredicate>syntactic_predicate?(%s(<ASTParser.anonymous>synpred_66_cpp!</ASTParser.anonymous>))</Ruby.evalSynPredicate>)
            s = 12
          </Ruby.cyclicDFAEdge>end
          <if(semPredState)_subtemplate> 
          @input.seek(index_40_11)
          </if(semPredState)_subtemplate></Ruby.cyclicDFAState></ASTParser.anonymous>
        end
        
        if s < 0
      <if(backtracking)_subtemplate>    @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
      </if(backtracking)_subtemplate>    nva = ANTLR3::Error::NoViableAlternative.new(@dfa40.description, 40, s, input)
          @dfa40.error(nva)
          raise nva
        end
        
        s
      end
      </if(dfa.specialStateSTs)_subtemplate></Ruby.cyclicDFAInit></ASTParser.anonymous><ASTParser.anonymous><Ruby.cyclicDFAInit><if(dfa.specialStateSTs)_subtemplate>@dfa41 = DFA41.new(self, 41) do |s|
        case s
        <ASTParser.anonymous>when 0
          <Ruby.cyclicDFAState>look_41_7 = @input.peek
          <if(semPredState)_subtemplate>index_41_7 = @input.index
          @input.rewind(@input.last_marker, false)
          </if(semPredState)_subtemplate>s = -1
          <Ruby.cyclicDFAEdge>if (<Ruby.evalSynPredicate>syntactic_predicate?(%s(<ASTParser.anonymous>synpred_75_cpp!</ASTParser.anonymous>))</Ruby.evalSynPredicate>)
            s = 10
          </Ruby.cyclicDFAEdge>els<Ruby.cyclicDFAEdge>if (<Ruby.true>true</Ruby.true>)
            s = 8
          </Ruby.cyclicDFAEdge>end
          <if(semPredState)_subtemplate> 
          @input.seek(index_41_7)
          </if(semPredState)_subtemplate></Ruby.cyclicDFAState></ASTParser.anonymous>
        end
        
        if s < 0
      <if(backtracking)_subtemplate>    @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
      </if(backtracking)_subtemplate>    nva = ANTLR3::Error::NoViableAlternative.new(@dfa41.description, 41, s, input)
          @dfa41.error(nva)
          raise nva
        end
        
        s
      end
      </if(dfa.specialStateSTs)_subtemplate></Ruby.cyclicDFAInit></ASTParser.anonymous><ASTParser.anonymous><Ruby.cyclicDFAInit><if(dfa.specialStateSTs)_subtemplate>@dfa42 = DFA42.new(self, 42) do |s|
        case s
        <ASTParser.anonymous>when 0
          <Ruby.cyclicDFAState>look_42_8 = @input.peek
          <if(semPredState)_subtemplate>index_42_8 = @input.index
          @input.rewind(@input.last_marker, false)
          </if(semPredState)_subtemplate>s = -1
          <Ruby.cyclicDFAEdge>if (<Ruby.evalSynPredicate>syntactic_predicate?(%s(<ASTParser.anonymous>synpred_78_cpp!</ASTParser.anonymous>))</Ruby.evalSynPredicate>)
            s = 9
          </Ruby.cyclicDFAEdge>els<Ruby.cyclicDFAEdge>if (<Ruby.true>true</Ruby.true>)
            s = 2
          </Ruby.cyclicDFAEdge>end
          <if(semPredState)_subtemplate> 
          @input.seek(index_42_8)
          </if(semPredState)_subtemplate></Ruby.cyclicDFAState></ASTParser.anonymous>
        end
        
        if s < 0
      <if(backtracking)_subtemplate>    @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
      </if(backtracking)_subtemplate>    nva = ANTLR3::Error::NoViableAlternative.new(@dfa42.description, 42, s, input)
          @dfa42.error(nva)
          raise nva
        end
        
        s
      end
      </if(dfa.specialStateSTs)_subtemplate></Ruby.cyclicDFAInit></ASTParser.anonymous><ASTParser.anonymous><Ruby.cyclicDFAInit><if(dfa.specialStateSTs)_subtemplate>@dfa46 = DFA46.new(self, 46) do |s|
        case s
        <ASTParser.anonymous>when 0
          <Ruby.cyclicDFAState>look_46_9 = @input.peek
          <if(semPredState)_subtemplate>index_46_9 = @input.index
          @input.rewind(@input.last_marker, false)
          </if(semPredState)_subtemplate>s = -1
          <Ruby.cyclicDFAEdge>if (<Ruby.evalSynPredicate>syntactic_predicate?(%s(<ASTParser.anonymous>synpred_92_cpp!</ASTParser.anonymous>))</Ruby.evalSynPredicate>)
            s = 1
          </Ruby.cyclicDFAEdge>els<Ruby.cyclicDFAEdge>if (<Ruby.evalSynPredicate>syntactic_predicate?(%s(<ASTParser.anonymous>synpred_94_cpp!</ASTParser.anonymous>))</Ruby.evalSynPredicate>)
            s = 15
          </Ruby.cyclicDFAEdge>end
          <if(semPredState)_subtemplate> 
          @input.seek(index_46_9)
          </if(semPredState)_subtemplate></Ruby.cyclicDFAState></ASTParser.anonymous>
        <ASTParser.anonymous>when 1
          <Ruby.cyclicDFAState>look_46_12 = @input.peek
          <if(semPredState)_subtemplate>index_46_12 = @input.index
          @input.rewind(@input.last_marker, false)
          </if(semPredState)_subtemplate>s = -1
          <Ruby.cyclicDFAEdge>if (<Ruby.evalSynPredicate>syntactic_predicate?(%s(<ASTParser.anonymous>synpred_92_cpp!</ASTParser.anonymous>))</Ruby.evalSynPredicate>)
            s = 1
          </Ruby.cyclicDFAEdge>els<Ruby.cyclicDFAEdge>if (<Ruby.true>true</Ruby.true>)
            s = 16
          </Ruby.cyclicDFAEdge>end
          <if(semPredState)_subtemplate> 
          @input.seek(index_46_12)
          </if(semPredState)_subtemplate></Ruby.cyclicDFAState></ASTParser.anonymous>
        end
        
        if s < 0
      <if(backtracking)_subtemplate>    @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
      </if(backtracking)_subtemplate>    nva = ANTLR3::Error::NoViableAlternative.new(@dfa46.description, 46, s, input)
          @dfa46.error(nva)
          raise nva
        end
        
        s
      end
      </if(dfa.specialStateSTs)_subtemplate></Ruby.cyclicDFAInit></ASTParser.anonymous><ASTParser.anonymous><Ruby.cyclicDFAInit><if(dfa.specialStateSTs)_subtemplate>@dfa59 = DFA59.new(self, 59) do |s|
        case s
        <ASTParser.anonymous>when 0
          <Ruby.cyclicDFAState>look_59_1 = @input.peek
          <if(semPredState)_subtemplate>index_59_1 = @input.index
          @input.rewind(@input.last_marker, false)
          </if(semPredState)_subtemplate>s = -1
          <Ruby.cyclicDFAEdge>if (<Ruby.evalSynPredicate>syntactic_predicate?(%s(<ASTParser.anonymous>synpred_108_cpp!</ASTParser.anonymous>))</Ruby.evalSynPredicate>)
            s = 13
          </Ruby.cyclicDFAEdge>els<Ruby.cyclicDFAEdge>if (<Ruby.evalSynPredicate>syntactic_predicate?(%s(<ASTParser.anonymous>synpred_110_cpp!</ASTParser.anonymous>))</Ruby.evalSynPredicate>)
            s = 14
          </Ruby.cyclicDFAEdge>els<Ruby.cyclicDFAEdge>if (<Ruby.evalSynPredicate>syntactic_predicate?(%s(<ASTParser.anonymous>synpred_112_cpp!</ASTParser.anonymous>))</Ruby.evalSynPredicate>)
            s = 15
          </Ruby.cyclicDFAEdge>end
          <if(semPredState)_subtemplate> 
          @input.seek(index_59_1)
          </if(semPredState)_subtemplate></Ruby.cyclicDFAState></ASTParser.anonymous>
        <ASTParser.anonymous>when 1
          <Ruby.cyclicDFAState>look_59_2 = @input.peek
          <if(semPredState)_subtemplate>index_59_2 = @input.index
          @input.rewind(@input.last_marker, false)
          </if(semPredState)_subtemplate>s = -1
          <Ruby.cyclicDFAEdge>if (<Ruby.evalSynPredicate>syntactic_predicate?(%s(<ASTParser.anonymous>synpred_110_cpp!</ASTParser.anonymous>))</Ruby.evalSynPredicate>)
            s = 14
          </Ruby.cyclicDFAEdge>els<Ruby.cyclicDFAEdge>if (<Ruby.evalSynPredicate>syntactic_predicate?(%s(<ASTParser.anonymous>synpred_112_cpp!</ASTParser.anonymous>))</Ruby.evalSynPredicate>)
            s = 15
          </Ruby.cyclicDFAEdge>end
          <if(semPredState)_subtemplate> 
          @input.seek(index_59_2)
          </if(semPredState)_subtemplate></Ruby.cyclicDFAState></ASTParser.anonymous>
        <ASTParser.anonymous>when 2
          <Ruby.cyclicDFAState>look_59_3 = @input.peek
          <if(semPredState)_subtemplate>index_59_3 = @input.index
          @input.rewind(@input.last_marker, false)
          </if(semPredState)_subtemplate>s = -1
          <Ruby.cyclicDFAEdge>if (<Ruby.evalSynPredicate>syntactic_predicate?(%s(<ASTParser.anonymous>synpred_110_cpp!</ASTParser.anonymous>))</Ruby.evalSynPredicate>)
            s = 14
          </Ruby.cyclicDFAEdge>els<Ruby.cyclicDFAEdge>if (<Ruby.evalSynPredicate>syntactic_predicate?(%s(<ASTParser.anonymous>synpred_112_cpp!</ASTParser.anonymous>))</Ruby.evalSynPredicate>)
            s = 15
          </Ruby.cyclicDFAEdge>end
          <if(semPredState)_subtemplate> 
          @input.seek(index_59_3)
          </if(semPredState)_subtemplate></Ruby.cyclicDFAState></ASTParser.anonymous>
        <ASTParser.anonymous>when 3
          <Ruby.cyclicDFAState>look_59_4 = @input.peek
          <if(semPredState)_subtemplate>index_59_4 = @input.index
          @input.rewind(@input.last_marker, false)
          </if(semPredState)_subtemplate>s = -1
          <Ruby.cyclicDFAEdge>if (<Ruby.evalSynPredicate>syntactic_predicate?(%s(<ASTParser.anonymous>synpred_110_cpp!</ASTParser.anonymous>))</Ruby.evalSynPredicate>)
            s = 14
          </Ruby.cyclicDFAEdge>els<Ruby.cyclicDFAEdge>if (<Ruby.evalSynPredicate>syntactic_predicate?(%s(<ASTParser.anonymous>synpred_112_cpp!</ASTParser.anonymous>))</Ruby.evalSynPredicate>)
            s = 15
          </Ruby.cyclicDFAEdge>end
          <if(semPredState)_subtemplate> 
          @input.seek(index_59_4)
          </if(semPredState)_subtemplate></Ruby.cyclicDFAState></ASTParser.anonymous>
        <ASTParser.anonymous>when 4
          <Ruby.cyclicDFAState>look_59_5 = @input.peek
          <if(semPredState)_subtemplate>index_59_5 = @input.index
          @input.rewind(@input.last_marker, false)
          </if(semPredState)_subtemplate>s = -1
          <Ruby.cyclicDFAEdge>if (<Ruby.evalSynPredicate>syntactic_predicate?(%s(<ASTParser.anonymous>synpred_110_cpp!</ASTParser.anonymous>))</Ruby.evalSynPredicate>)
            s = 14
          </Ruby.cyclicDFAEdge>els<Ruby.cyclicDFAEdge>if (<Ruby.evalSynPredicate>syntactic_predicate?(%s(<ASTParser.anonymous>synpred_112_cpp!</ASTParser.anonymous>))</Ruby.evalSynPredicate>)
            s = 15
          </Ruby.cyclicDFAEdge>end
          <if(semPredState)_subtemplate> 
          @input.seek(index_59_5)
          </if(semPredState)_subtemplate></Ruby.cyclicDFAState></ASTParser.anonymous>
        end
        
        if s < 0
      <if(backtracking)_subtemplate>    @state.backtracking > 0 and raise ANTLR3::Error::BacktrackingFailed
      </if(backtracking)_subtemplate>    nva = ANTLR3::Error::NoViableAlternative.new(@dfa59.description, 59, s, input)
          @dfa59.error(nva)
          raise nva
        end
        
        s
      end
      </if(dfa.specialStateSTs)_subtemplate></Ruby.cyclicDFAInit></ASTParser.anonymous>
    end
    </if(cyclicDFAs)_subtemplate><ASTParser.anonymous>TOKENS_FOLLOWING_proc_line_IN_preprocess_379 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>, <ASTParser.anonymous>6</ASTParser.anonymous>, <ASTParser.anonymous>10</ASTParser.anonymous>, <ASTParser.anonymous>11</ASTParser.anonymous>, <ASTParser.anonymous>12</ASTParser.anonymous>, <ASTParser.anonymous>31</ASTParser.anonymous>, <ASTParser.anonymous>35</ASTParser.anonymous>, <ASTParser.anonymous>37</ASTParser.anonymous>, <ASTParser.anonymous>38</ASTParser.anonymous>, <ASTParser.anonymous>39</ASTParser.anonymous>, <ASTParser.anonymous>40</ASTParser.anonymous>, <ASTParser.anonymous>41</ASTParser.anonymous>, <ASTParser.anonymous>46</ASTParser.anonymous>, <ASTParser.anonymous>47</ASTParser.anonymous>, <ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>49</ASTParser.anonymous>, <ASTParser.anonymous>50</ASTParser.anonymous>, <ASTParser.anonymous>51</ASTParser.anonymous>, <ASTParser.anonymous>52</ASTParser.anonymous>, <ASTParser.anonymous>54</ASTParser.anonymous>, <ASTParser.anonymous>55</ASTParser.anonymous>, <ASTParser.anonymous>89</ASTParser.anonymous>, <ASTParser.anonymous>97</ASTParser.anonymous>, <ASTParser.anonymous>98</ASTParser.anonymous>, <ASTParser.anonymous>99</ASTParser.anonymous>, <ASTParser.anonymous>100</ASTParser.anonymous>, <ASTParser.anonymous>101</ASTParser.anonymous>, <ASTParser.anonymous>102</ASTParser.anonymous>, <ASTParser.anonymous>103</ASTParser.anonymous>, <ASTParser.anonymous>104</ASTParser.anonymous>, <ASTParser.anonymous>105</ASTParser.anonymous>, <ASTParser.anonymous>106</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_DIRECTIVE_IN_proc_line_409 = Set[<ASTParser.anonymous>47</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_text_line_IN_proc_line_423 = Set[<ASTParser.anonymous>47</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_diagnostics_IN_proc_line_437 = Set[<ASTParser.anonymous>47</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_file_inclusion_IN_proc_line_451 = Set[<ASTParser.anonymous>47</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_macro_define_IN_proc_line_465 = Set[<ASTParser.anonymous>47</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_macro_undef_IN_proc_line_479 = Set[<ASTParser.anonymous>47</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_conditional_compilation_IN_proc_line_493 = Set[<ASTParser.anonymous>47</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_line_control_IN_proc_line_507 = Set[<ASTParser.anonymous>47</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_macro_execution_IN_proc_line_521 = Set[<ASTParser.anonymous>47</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_End_IN_proc_line_535 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_INCLUDE_IN_file_inclusion_558 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_INCLUDE_EXPAND_IN_file_inclusion_586 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_DEFINE_IN_macro_define_611 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_IDENTIFIER_IN_macro_define_617 = Set[<ASTParser.anonymous>49</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_LPAREN_IN_macro_define_620 = Set[<ASTParser.anonymous>50</ASTParser.anonymous>, <ASTParser.anonymous>51</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_WS_IN_macro_define_627 = Set[<ASTParser.anonymous>51</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_RPAREN_IN_macro_define_634 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>, <ASTParser.anonymous>31</ASTParser.anonymous>, <ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>49</ASTParser.anonymous>, <ASTParser.anonymous>50</ASTParser.anonymous>, <ASTParser.anonymous>51</ASTParser.anonymous>, <ASTParser.anonymous>52</ASTParser.anonymous>, <ASTParser.anonymous>54</ASTParser.anonymous>, <ASTParser.anonymous>55</ASTParser.anonymous>, <ASTParser.anonymous>89</ASTParser.anonymous>, <ASTParser.anonymous>97</ASTParser.anonymous>, <ASTParser.anonymous>98</ASTParser.anonymous>, <ASTParser.anonymous>99</ASTParser.anonymous>, <ASTParser.anonymous>100</ASTParser.anonymous>, <ASTParser.anonymous>101</ASTParser.anonymous>, <ASTParser.anonymous>102</ASTParser.anonymous>, <ASTParser.anonymous>103</ASTParser.anonymous>, <ASTParser.anonymous>104</ASTParser.anonymous>, <ASTParser.anonymous>105</ASTParser.anonymous>, <ASTParser.anonymous>106</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_macro_text_IN_macro_define_637 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_DEFINE_IN_macro_define_658 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_IDENTIFIER_IN_macro_define_662 = Set[<ASTParser.anonymous>49</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_LPAREN_IN_macro_define_665 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>50</ASTParser.anonymous>, <ASTParser.anonymous>51</ASTParser.anonymous>, <ASTParser.anonymous>53</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_WS_IN_macro_define_667 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>51</ASTParser.anonymous>, <ASTParser.anonymous>53</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_macro_param_IN_macro_define_673 = Set[<ASTParser.anonymous>50</ASTParser.anonymous>, <ASTParser.anonymous>51</ASTParser.anonymous>, <ASTParser.anonymous>52</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_WS_IN_macro_define_675 = Set[<ASTParser.anonymous>51</ASTParser.anonymous>, <ASTParser.anonymous>52</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_COMMA_IN_macro_define_679 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>50</ASTParser.anonymous>, <ASTParser.anonymous>53</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_WS_IN_macro_define_681 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>50</ASTParser.anonymous>, <ASTParser.anonymous>53</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_macro_param_IN_macro_define_686 = Set[<ASTParser.anonymous>50</ASTParser.anonymous>, <ASTParser.anonymous>51</ASTParser.anonymous>, <ASTParser.anonymous>52</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_WS_IN_macro_define_688 = Set[<ASTParser.anonymous>50</ASTParser.anonymous>, <ASTParser.anonymous>51</ASTParser.anonymous>, <ASTParser.anonymous>52</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_RPAREN_IN_macro_define_695 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>, <ASTParser.anonymous>31</ASTParser.anonymous>, <ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>49</ASTParser.anonymous>, <ASTParser.anonymous>50</ASTParser.anonymous>, <ASTParser.anonymous>51</ASTParser.anonymous>, <ASTParser.anonymous>52</ASTParser.anonymous>, <ASTParser.anonymous>54</ASTParser.anonymous>, <ASTParser.anonymous>55</ASTParser.anonymous>, <ASTParser.anonymous>89</ASTParser.anonymous>, <ASTParser.anonymous>97</ASTParser.anonymous>, <ASTParser.anonymous>98</ASTParser.anonymous>, <ASTParser.anonymous>99</ASTParser.anonymous>, <ASTParser.anonymous>100</ASTParser.anonymous>, <ASTParser.anonymous>101</ASTParser.anonymous>, <ASTParser.anonymous>102</ASTParser.anonymous>, <ASTParser.anonymous>103</ASTParser.anonymous>, <ASTParser.anonymous>104</ASTParser.anonymous>, <ASTParser.anonymous>105</ASTParser.anonymous>, <ASTParser.anonymous>106</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_macro_text_IN_macro_define_698 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_DEFINE_IN_macro_define_726 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_IDENTIFIER_IN_macro_define_732 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>, <ASTParser.anonymous>31</ASTParser.anonymous>, <ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>49</ASTParser.anonymous>, <ASTParser.anonymous>50</ASTParser.anonymous>, <ASTParser.anonymous>51</ASTParser.anonymous>, <ASTParser.anonymous>52</ASTParser.anonymous>, <ASTParser.anonymous>54</ASTParser.anonymous>, <ASTParser.anonymous>55</ASTParser.anonymous>, <ASTParser.anonymous>89</ASTParser.anonymous>, <ASTParser.anonymous>97</ASTParser.anonymous>, <ASTParser.anonymous>98</ASTParser.anonymous>, <ASTParser.anonymous>99</ASTParser.anonymous>, <ASTParser.anonymous>100</ASTParser.anonymous>, <ASTParser.anonymous>101</ASTParser.anonymous>, <ASTParser.anonymous>102</ASTParser.anonymous>, <ASTParser.anonymous>103</ASTParser.anonymous>, <ASTParser.anonymous>104</ASTParser.anonymous>, <ASTParser.anonymous>105</ASTParser.anonymous>, <ASTParser.anonymous>106</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_macro_text_IN_macro_define_735 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_IDENTIFIER_IN_macro_param_771 = Set[<ASTParser.anonymous>53</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_ELLIPSIS_IN_macro_param_773 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_ELLIPSIS_IN_macro_param_794 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_IDENTIFIER_IN_macro_param_808 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_EXEC_MACRO_IN_macro_execution_830 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>49</ASTParser.anonymous>, <ASTParser.anonymous>54</ASTParser.anonymous>, <ASTParser.anonymous>55</ASTParser.anonymous>, <ASTParser.anonymous>73</ASTParser.anonymous>, <ASTParser.anonymous>82</ASTParser.anonymous>, <ASTParser.anonymous>83</ASTParser.anonymous>, <ASTParser.anonymous>84</ASTParser.anonymous>, <ASTParser.anonymous>87</ASTParser.anonymous>, <ASTParser.anonymous>88</ASTParser.anonymous>, <ASTParser.anonymous>89</ASTParser.anonymous>, <ASTParser.anonymous>90</ASTParser.anonymous>, <ASTParser.anonymous>91</ASTParser.anonymous>, <ASTParser.anonymous>92</ASTParser.anonymous>, <ASTParser.anonymous>97</ASTParser.anonymous>, <ASTParser.anonymous>98</ASTParser.anonymous>, <ASTParser.anonymous>99</ASTParser.anonymous>, <ASTParser.anonymous>100</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_ifexpression_IN_macro_execution_841 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_UNDEF_IN_macro_undef_866 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_IDENTIFIER_IN_macro_undef_872 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_IF_IN_conditional_compilation_905 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>49</ASTParser.anonymous>, <ASTParser.anonymous>54</ASTParser.anonymous>, <ASTParser.anonymous>55</ASTParser.anonymous>, <ASTParser.anonymous>73</ASTParser.anonymous>, <ASTParser.anonymous>82</ASTParser.anonymous>, <ASTParser.anonymous>83</ASTParser.anonymous>, <ASTParser.anonymous>84</ASTParser.anonymous>, <ASTParser.anonymous>87</ASTParser.anonymous>, <ASTParser.anonymous>88</ASTParser.anonymous>, <ASTParser.anonymous>89</ASTParser.anonymous>, <ASTParser.anonymous>90</ASTParser.anonymous>, <ASTParser.anonymous>91</ASTParser.anonymous>, <ASTParser.anonymous>92</ASTParser.anonymous>, <ASTParser.anonymous>97</ASTParser.anonymous>, <ASTParser.anonymous>98</ASTParser.anonymous>, <ASTParser.anonymous>99</ASTParser.anonymous>, <ASTParser.anonymous>100</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_ifexpression_IN_conditional_compilation_917 = Set[<ASTParser.anonymous>6</ASTParser.anonymous>, <ASTParser.anonymous>10</ASTParser.anonymous>, <ASTParser.anonymous>11</ASTParser.anonymous>, <ASTParser.anonymous>12</ASTParser.anonymous>, <ASTParser.anonymous>31</ASTParser.anonymous>, <ASTParser.anonymous>35</ASTParser.anonymous>, <ASTParser.anonymous>37</ASTParser.anonymous>, <ASTParser.anonymous>38</ASTParser.anonymous>, <ASTParser.anonymous>39</ASTParser.anonymous>, <ASTParser.anonymous>40</ASTParser.anonymous>, <ASTParser.anonymous>41</ASTParser.anonymous>, <ASTParser.anonymous>46</ASTParser.anonymous>, <ASTParser.anonymous>47</ASTParser.anonymous>, <ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>49</ASTParser.anonymous>, <ASTParser.anonymous>50</ASTParser.anonymous>, <ASTParser.anonymous>51</ASTParser.anonymous>, <ASTParser.anonymous>52</ASTParser.anonymous>, <ASTParser.anonymous>54</ASTParser.anonymous>, <ASTParser.anonymous>55</ASTParser.anonymous>, <ASTParser.anonymous>89</ASTParser.anonymous>, <ASTParser.anonymous>97</ASTParser.anonymous>, <ASTParser.anonymous>98</ASTParser.anonymous>, <ASTParser.anonymous>99</ASTParser.anonymous>, <ASTParser.anonymous>100</ASTParser.anonymous>, <ASTParser.anonymous>101</ASTParser.anonymous>, <ASTParser.anonymous>102</ASTParser.anonymous>, <ASTParser.anonymous>103</ASTParser.anonymous>, <ASTParser.anonymous>104</ASTParser.anonymous>, <ASTParser.anonymous>105</ASTParser.anonymous>, <ASTParser.anonymous>106</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_statement_IN_conditional_compilation_922 = Set[<ASTParser.anonymous>7</ASTParser.anonymous>, <ASTParser.anonymous>8</ASTParser.anonymous>, <ASTParser.anonymous>9</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_ELIF_IN_conditional_compilation_931 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>49</ASTParser.anonymous>, <ASTParser.anonymous>54</ASTParser.anonymous>, <ASTParser.anonymous>55</ASTParser.anonymous>, <ASTParser.anonymous>73</ASTParser.anonymous>, <ASTParser.anonymous>82</ASTParser.anonymous>, <ASTParser.anonymous>83</ASTParser.anonymous>, <ASTParser.anonymous>84</ASTParser.anonymous>, <ASTParser.anonymous>87</ASTParser.anonymous>, <ASTParser.anonymous>88</ASTParser.anonymous>, <ASTParser.anonymous>89</ASTParser.anonymous>, <ASTParser.anonymous>90</ASTParser.anonymous>, <ASTParser.anonymous>91</ASTParser.anonymous>, <ASTParser.anonymous>92</ASTParser.anonymous>, <ASTParser.anonymous>97</ASTParser.anonymous>, <ASTParser.anonymous>98</ASTParser.anonymous>, <ASTParser.anonymous>99</ASTParser.anonymous>, <ASTParser.anonymous>100</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_ifexpression_IN_conditional_compilation_938 = Set[<ASTParser.anonymous>6</ASTParser.anonymous>, <ASTParser.anonymous>10</ASTParser.anonymous>, <ASTParser.anonymous>11</ASTParser.anonymous>, <ASTParser.anonymous>12</ASTParser.anonymous>, <ASTParser.anonymous>31</ASTParser.anonymous>, <ASTParser.anonymous>35</ASTParser.anonymous>, <ASTParser.anonymous>37</ASTParser.anonymous>, <ASTParser.anonymous>38</ASTParser.anonymous>, <ASTParser.anonymous>39</ASTParser.anonymous>, <ASTParser.anonymous>40</ASTParser.anonymous>, <ASTParser.anonymous>41</ASTParser.anonymous>, <ASTParser.anonymous>46</ASTParser.anonymous>, <ASTParser.anonymous>47</ASTParser.anonymous>, <ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>49</ASTParser.anonymous>, <ASTParser.anonymous>50</ASTParser.anonymous>, <ASTParser.anonymous>51</ASTParser.anonymous>, <ASTParser.anonymous>52</ASTParser.anonymous>, <ASTParser.anonymous>54</ASTParser.anonymous>, <ASTParser.anonymous>55</ASTParser.anonymous>, <ASTParser.anonymous>89</ASTParser.anonymous>, <ASTParser.anonymous>97</ASTParser.anonymous>, <ASTParser.anonymous>98</ASTParser.anonymous>, <ASTParser.anonymous>99</ASTParser.anonymous>, <ASTParser.anonymous>100</ASTParser.anonymous>, <ASTParser.anonymous>101</ASTParser.anonymous>, <ASTParser.anonymous>102</ASTParser.anonymous>, <ASTParser.anonymous>103</ASTParser.anonymous>, <ASTParser.anonymous>104</ASTParser.anonymous>, <ASTParser.anonymous>105</ASTParser.anonymous>, <ASTParser.anonymous>106</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_statement_IN_conditional_compilation_943 = Set[<ASTParser.anonymous>7</ASTParser.anonymous>, <ASTParser.anonymous>8</ASTParser.anonymous>, <ASTParser.anonymous>9</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_ELSE_IN_conditional_compilation_956 = Set[<ASTParser.anonymous>6</ASTParser.anonymous>, <ASTParser.anonymous>10</ASTParser.anonymous>, <ASTParser.anonymous>11</ASTParser.anonymous>, <ASTParser.anonymous>12</ASTParser.anonymous>, <ASTParser.anonymous>31</ASTParser.anonymous>, <ASTParser.anonymous>35</ASTParser.anonymous>, <ASTParser.anonymous>37</ASTParser.anonymous>, <ASTParser.anonymous>38</ASTParser.anonymous>, <ASTParser.anonymous>39</ASTParser.anonymous>, <ASTParser.anonymous>40</ASTParser.anonymous>, <ASTParser.anonymous>41</ASTParser.anonymous>, <ASTParser.anonymous>46</ASTParser.anonymous>, <ASTParser.anonymous>47</ASTParser.anonymous>, <ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>49</ASTParser.anonymous>, <ASTParser.anonymous>50</ASTParser.anonymous>, <ASTParser.anonymous>51</ASTParser.anonymous>, <ASTParser.anonymous>52</ASTParser.anonymous>, <ASTParser.anonymous>54</ASTParser.anonymous>, <ASTParser.anonymous>55</ASTParser.anonymous>, <ASTParser.anonymous>89</ASTParser.anonymous>, <ASTParser.anonymous>97</ASTParser.anonymous>, <ASTParser.anonymous>98</ASTParser.anonymous>, <ASTParser.anonymous>99</ASTParser.anonymous>, <ASTParser.anonymous>100</ASTParser.anonymous>, <ASTParser.anonymous>101</ASTParser.anonymous>, <ASTParser.anonymous>102</ASTParser.anonymous>, <ASTParser.anonymous>103</ASTParser.anonymous>, <ASTParser.anonymous>104</ASTParser.anonymous>, <ASTParser.anonymous>105</ASTParser.anonymous>, <ASTParser.anonymous>106</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_statement_IN_conditional_compilation_961 = Set[<ASTParser.anonymous>9</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_ENDIF_IN_conditional_compilation_971 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_LINE_IN_line_control_1025 = Set[<ASTParser.anonymous>54</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_DECIMAL_LITERAL_IN_line_control_1032 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>, <ASTParser.anonymous>55</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_STRING_LITERAL_IN_line_control_1043 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_WARNING_IN_diagnostics_1084 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_ERROR_IN_diagnostics_1104 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_PRAGMA_IN_diagnostics_1126 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_source_text_IN_text_line_1150 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>, <ASTParser.anonymous>31</ASTParser.anonymous>, <ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>49</ASTParser.anonymous>, <ASTParser.anonymous>50</ASTParser.anonymous>, <ASTParser.anonymous>51</ASTParser.anonymous>, <ASTParser.anonymous>52</ASTParser.anonymous>, <ASTParser.anonymous>54</ASTParser.anonymous>, <ASTParser.anonymous>55</ASTParser.anonymous>, <ASTParser.anonymous>89</ASTParser.anonymous>, <ASTParser.anonymous>97</ASTParser.anonymous>, <ASTParser.anonymous>98</ASTParser.anonymous>, <ASTParser.anonymous>99</ASTParser.anonymous>, <ASTParser.anonymous>100</ASTParser.anonymous>, <ASTParser.anonymous>101</ASTParser.anonymous>, <ASTParser.anonymous>102</ASTParser.anonymous>, <ASTParser.anonymous>103</ASTParser.anonymous>, <ASTParser.anonymous>104</ASTParser.anonymous>, <ASTParser.anonymous>105</ASTParser.anonymous>, <ASTParser.anonymous>106</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_proc_line_IN_statement_1182 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>, <ASTParser.anonymous>6</ASTParser.anonymous>, <ASTParser.anonymous>10</ASTParser.anonymous>, <ASTParser.anonymous>11</ASTParser.anonymous>, <ASTParser.anonymous>12</ASTParser.anonymous>, <ASTParser.anonymous>31</ASTParser.anonymous>, <ASTParser.anonymous>35</ASTParser.anonymous>, <ASTParser.anonymous>37</ASTParser.anonymous>, <ASTParser.anonymous>38</ASTParser.anonymous>, <ASTParser.anonymous>39</ASTParser.anonymous>, <ASTParser.anonymous>40</ASTParser.anonymous>, <ASTParser.anonymous>41</ASTParser.anonymous>, <ASTParser.anonymous>46</ASTParser.anonymous>, <ASTParser.anonymous>47</ASTParser.anonymous>, <ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>49</ASTParser.anonymous>, <ASTParser.anonymous>50</ASTParser.anonymous>, <ASTParser.anonymous>51</ASTParser.anonymous>, <ASTParser.anonymous>52</ASTParser.anonymous>, <ASTParser.anonymous>54</ASTParser.anonymous>, <ASTParser.anonymous>55</ASTParser.anonymous>, <ASTParser.anonymous>89</ASTParser.anonymous>, <ASTParser.anonymous>97</ASTParser.anonymous>, <ASTParser.anonymous>98</ASTParser.anonymous>, <ASTParser.anonymous>99</ASTParser.anonymous>, <ASTParser.anonymous>100</ASTParser.anonymous>, <ASTParser.anonymous>101</ASTParser.anonymous>, <ASTParser.anonymous>102</ASTParser.anonymous>, <ASTParser.anonymous>103</ASTParser.anonymous>, <ASTParser.anonymous>104</ASTParser.anonymous>, <ASTParser.anonymous>105</ASTParser.anonymous>, <ASTParser.anonymous>106</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_IDENTIFIER_IN_type_name_1200 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_assignment_expression_IN_ifexpression_1222 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_conditional_expression_IN_assignment_expression_1247 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>, <ASTParser.anonymous>56</ASTParser.anonymous>, <ASTParser.anonymous>57</ASTParser.anonymous>, <ASTParser.anonymous>58</ASTParser.anonymous>, <ASTParser.anonymous>59</ASTParser.anonymous>, <ASTParser.anonymous>60</ASTParser.anonymous>, <ASTParser.anonymous>61</ASTParser.anonymous>, <ASTParser.anonymous>62</ASTParser.anonymous>, <ASTParser.anonymous>63</ASTParser.anonymous>, <ASTParser.anonymous>64</ASTParser.anonymous>, <ASTParser.anonymous>65</ASTParser.anonymous>, <ASTParser.anonymous>66</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_ASSIGNEQUAL_IN_assignment_expression_1259 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>49</ASTParser.anonymous>, <ASTParser.anonymous>54</ASTParser.anonymous>, <ASTParser.anonymous>55</ASTParser.anonymous>, <ASTParser.anonymous>73</ASTParser.anonymous>, <ASTParser.anonymous>82</ASTParser.anonymous>, <ASTParser.anonymous>83</ASTParser.anonymous>, <ASTParser.anonymous>84</ASTParser.anonymous>, <ASTParser.anonymous>87</ASTParser.anonymous>, <ASTParser.anonymous>88</ASTParser.anonymous>, <ASTParser.anonymous>89</ASTParser.anonymous>, <ASTParser.anonymous>90</ASTParser.anonymous>, <ASTParser.anonymous>91</ASTParser.anonymous>, <ASTParser.anonymous>92</ASTParser.anonymous>, <ASTParser.anonymous>97</ASTParser.anonymous>, <ASTParser.anonymous>98</ASTParser.anonymous>, <ASTParser.anonymous>99</ASTParser.anonymous>, <ASTParser.anonymous>100</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_TIMESEQUAL_IN_assignment_expression_1268 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>49</ASTParser.anonymous>, <ASTParser.anonymous>54</ASTParser.anonymous>, <ASTParser.anonymous>55</ASTParser.anonymous>, <ASTParser.anonymous>73</ASTParser.anonymous>, <ASTParser.anonymous>82</ASTParser.anonymous>, <ASTParser.anonymous>83</ASTParser.anonymous>, <ASTParser.anonymous>84</ASTParser.anonymous>, <ASTParser.anonymous>87</ASTParser.anonymous>, <ASTParser.anonymous>88</ASTParser.anonymous>, <ASTParser.anonymous>89</ASTParser.anonymous>, <ASTParser.anonymous>90</ASTParser.anonymous>, <ASTParser.anonymous>91</ASTParser.anonymous>, <ASTParser.anonymous>92</ASTParser.anonymous>, <ASTParser.anonymous>97</ASTParser.anonymous>, <ASTParser.anonymous>98</ASTParser.anonymous>, <ASTParser.anonymous>99</ASTParser.anonymous>, <ASTParser.anonymous>100</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_DIVIDEEQUAL_IN_assignment_expression_1280 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>49</ASTParser.anonymous>, <ASTParser.anonymous>54</ASTParser.anonymous>, <ASTParser.anonymous>55</ASTParser.anonymous>, <ASTParser.anonymous>73</ASTParser.anonymous>, <ASTParser.anonymous>82</ASTParser.anonymous>, <ASTParser.anonymous>83</ASTParser.anonymous>, <ASTParser.anonymous>84</ASTParser.anonymous>, <ASTParser.anonymous>87</ASTParser.anonymous>, <ASTParser.anonymous>88</ASTParser.anonymous>, <ASTParser.anonymous>89</ASTParser.anonymous>, <ASTParser.anonymous>90</ASTParser.anonymous>, <ASTParser.anonymous>91</ASTParser.anonymous>, <ASTParser.anonymous>92</ASTParser.anonymous>, <ASTParser.anonymous>97</ASTParser.anonymous>, <ASTParser.anonymous>98</ASTParser.anonymous>, <ASTParser.anonymous>99</ASTParser.anonymous>, <ASTParser.anonymous>100</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_MODEQUAL_IN_assignment_expression_1299 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>49</ASTParser.anonymous>, <ASTParser.anonymous>54</ASTParser.anonymous>, <ASTParser.anonymous>55</ASTParser.anonymous>, <ASTParser.anonymous>73</ASTParser.anonymous>, <ASTParser.anonymous>82</ASTParser.anonymous>, <ASTParser.anonymous>83</ASTParser.anonymous>, <ASTParser.anonymous>84</ASTParser.anonymous>, <ASTParser.anonymous>87</ASTParser.anonymous>, <ASTParser.anonymous>88</ASTParser.anonymous>, <ASTParser.anonymous>89</ASTParser.anonymous>, <ASTParser.anonymous>90</ASTParser.anonymous>, <ASTParser.anonymous>91</ASTParser.anonymous>, <ASTParser.anonymous>92</ASTParser.anonymous>, <ASTParser.anonymous>97</ASTParser.anonymous>, <ASTParser.anonymous>98</ASTParser.anonymous>, <ASTParser.anonymous>99</ASTParser.anonymous>, <ASTParser.anonymous>100</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_PLUSEQUAL_IN_assignment_expression_1311 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>49</ASTParser.anonymous>, <ASTParser.anonymous>54</ASTParser.anonymous>, <ASTParser.anonymous>55</ASTParser.anonymous>, <ASTParser.anonymous>73</ASTParser.anonymous>, <ASTParser.anonymous>82</ASTParser.anonymous>, <ASTParser.anonymous>83</ASTParser.anonymous>, <ASTParser.anonymous>84</ASTParser.anonymous>, <ASTParser.anonymous>87</ASTParser.anonymous>, <ASTParser.anonymous>88</ASTParser.anonymous>, <ASTParser.anonymous>89</ASTParser.anonymous>, <ASTParser.anonymous>90</ASTParser.anonymous>, <ASTParser.anonymous>91</ASTParser.anonymous>, <ASTParser.anonymous>92</ASTParser.anonymous>, <ASTParser.anonymous>97</ASTParser.anonymous>, <ASTParser.anonymous>98</ASTParser.anonymous>, <ASTParser.anonymous>99</ASTParser.anonymous>, <ASTParser.anonymous>100</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_MINUSEQUAL_IN_assignment_expression_1324 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>49</ASTParser.anonymous>, <ASTParser.anonymous>54</ASTParser.anonymous>, <ASTParser.anonymous>55</ASTParser.anonymous>, <ASTParser.anonymous>73</ASTParser.anonymous>, <ASTParser.anonymous>82</ASTParser.anonymous>, <ASTParser.anonymous>83</ASTParser.anonymous>, <ASTParser.anonymous>84</ASTParser.anonymous>, <ASTParser.anonymous>87</ASTParser.anonymous>, <ASTParser.anonymous>88</ASTParser.anonymous>, <ASTParser.anonymous>89</ASTParser.anonymous>, <ASTParser.anonymous>90</ASTParser.anonymous>, <ASTParser.anonymous>91</ASTParser.anonymous>, <ASTParser.anonymous>92</ASTParser.anonymous>, <ASTParser.anonymous>97</ASTParser.anonymous>, <ASTParser.anonymous>98</ASTParser.anonymous>, <ASTParser.anonymous>99</ASTParser.anonymous>, <ASTParser.anonymous>100</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_SHIFTLEFTEQUAL_IN_assignment_expression_1344 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>49</ASTParser.anonymous>, <ASTParser.anonymous>54</ASTParser.anonymous>, <ASTParser.anonymous>55</ASTParser.anonymous>, <ASTParser.anonymous>73</ASTParser.anonymous>, <ASTParser.anonymous>82</ASTParser.anonymous>, <ASTParser.anonymous>83</ASTParser.anonymous>, <ASTParser.anonymous>84</ASTParser.anonymous>, <ASTParser.anonymous>87</ASTParser.anonymous>, <ASTParser.anonymous>88</ASTParser.anonymous>, <ASTParser.anonymous>89</ASTParser.anonymous>, <ASTParser.anonymous>90</ASTParser.anonymous>, <ASTParser.anonymous>91</ASTParser.anonymous>, <ASTParser.anonymous>92</ASTParser.anonymous>, <ASTParser.anonymous>97</ASTParser.anonymous>, <ASTParser.anonymous>98</ASTParser.anonymous>, <ASTParser.anonymous>99</ASTParser.anonymous>, <ASTParser.anonymous>100</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_SHIFTRIGHTEQUAL_IN_assignment_expression_1350 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>49</ASTParser.anonymous>, <ASTParser.anonymous>54</ASTParser.anonymous>, <ASTParser.anonymous>55</ASTParser.anonymous>, <ASTParser.anonymous>73</ASTParser.anonymous>, <ASTParser.anonymous>82</ASTParser.anonymous>, <ASTParser.anonymous>83</ASTParser.anonymous>, <ASTParser.anonymous>84</ASTParser.anonymous>, <ASTParser.anonymous>87</ASTParser.anonymous>, <ASTParser.anonymous>88</ASTParser.anonymous>, <ASTParser.anonymous>89</ASTParser.anonymous>, <ASTParser.anonymous>90</ASTParser.anonymous>, <ASTParser.anonymous>91</ASTParser.anonymous>, <ASTParser.anonymous>92</ASTParser.anonymous>, <ASTParser.anonymous>97</ASTParser.anonymous>, <ASTParser.anonymous>98</ASTParser.anonymous>, <ASTParser.anonymous>99</ASTParser.anonymous>, <ASTParser.anonymous>100</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_BITWISEANDEQUAL_IN_assignment_expression_1357 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>49</ASTParser.anonymous>, <ASTParser.anonymous>54</ASTParser.anonymous>, <ASTParser.anonymous>55</ASTParser.anonymous>, <ASTParser.anonymous>73</ASTParser.anonymous>, <ASTParser.anonymous>82</ASTParser.anonymous>, <ASTParser.anonymous>83</ASTParser.anonymous>, <ASTParser.anonymous>84</ASTParser.anonymous>, <ASTParser.anonymous>87</ASTParser.anonymous>, <ASTParser.anonymous>88</ASTParser.anonymous>, <ASTParser.anonymous>89</ASTParser.anonymous>, <ASTParser.anonymous>90</ASTParser.anonymous>, <ASTParser.anonymous>91</ASTParser.anonymous>, <ASTParser.anonymous>92</ASTParser.anonymous>, <ASTParser.anonymous>97</ASTParser.anonymous>, <ASTParser.anonymous>98</ASTParser.anonymous>, <ASTParser.anonymous>99</ASTParser.anonymous>, <ASTParser.anonymous>100</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_BITWISEXOREQUAL_IN_assignment_expression_1372 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>49</ASTParser.anonymous>, <ASTParser.anonymous>54</ASTParser.anonymous>, <ASTParser.anonymous>55</ASTParser.anonymous>, <ASTParser.anonymous>73</ASTParser.anonymous>, <ASTParser.anonymous>82</ASTParser.anonymous>, <ASTParser.anonymous>83</ASTParser.anonymous>, <ASTParser.anonymous>84</ASTParser.anonymous>, <ASTParser.anonymous>87</ASTParser.anonymous>, <ASTParser.anonymous>88</ASTParser.anonymous>, <ASTParser.anonymous>89</ASTParser.anonymous>, <ASTParser.anonymous>90</ASTParser.anonymous>, <ASTParser.anonymous>91</ASTParser.anonymous>, <ASTParser.anonymous>92</ASTParser.anonymous>, <ASTParser.anonymous>97</ASTParser.anonymous>, <ASTParser.anonymous>98</ASTParser.anonymous>, <ASTParser.anonymous>99</ASTParser.anonymous>, <ASTParser.anonymous>100</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_BITWISEOREQUAL_IN_assignment_expression_1377 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>49</ASTParser.anonymous>, <ASTParser.anonymous>54</ASTParser.anonymous>, <ASTParser.anonymous>55</ASTParser.anonymous>, <ASTParser.anonymous>73</ASTParser.anonymous>, <ASTParser.anonymous>82</ASTParser.anonymous>, <ASTParser.anonymous>83</ASTParser.anonymous>, <ASTParser.anonymous>84</ASTParser.anonymous>, <ASTParser.anonymous>87</ASTParser.anonymous>, <ASTParser.anonymous>88</ASTParser.anonymous>, <ASTParser.anonymous>89</ASTParser.anonymous>, <ASTParser.anonymous>90</ASTParser.anonymous>, <ASTParser.anonymous>91</ASTParser.anonymous>, <ASTParser.anonymous>92</ASTParser.anonymous>, <ASTParser.anonymous>97</ASTParser.anonymous>, <ASTParser.anonymous>98</ASTParser.anonymous>, <ASTParser.anonymous>99</ASTParser.anonymous>, <ASTParser.anonymous>100</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_assignment_expression_IN_assignment_expression_1390 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_logical_or_expression_IN_conditional_expression_1422 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>, <ASTParser.anonymous>67</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_QUESTIONMARK_IN_conditional_expression_1438 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>49</ASTParser.anonymous>, <ASTParser.anonymous>54</ASTParser.anonymous>, <ASTParser.anonymous>55</ASTParser.anonymous>, <ASTParser.anonymous>73</ASTParser.anonymous>, <ASTParser.anonymous>82</ASTParser.anonymous>, <ASTParser.anonymous>83</ASTParser.anonymous>, <ASTParser.anonymous>84</ASTParser.anonymous>, <ASTParser.anonymous>87</ASTParser.anonymous>, <ASTParser.anonymous>88</ASTParser.anonymous>, <ASTParser.anonymous>89</ASTParser.anonymous>, <ASTParser.anonymous>90</ASTParser.anonymous>, <ASTParser.anonymous>91</ASTParser.anonymous>, <ASTParser.anonymous>92</ASTParser.anonymous>, <ASTParser.anonymous>97</ASTParser.anonymous>, <ASTParser.anonymous>98</ASTParser.anonymous>, <ASTParser.anonymous>99</ASTParser.anonymous>, <ASTParser.anonymous>100</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_assignment_expression_IN_conditional_expression_1441 = Set[<ASTParser.anonymous>68</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_COLON_IN_conditional_expression_1443 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>49</ASTParser.anonymous>, <ASTParser.anonymous>54</ASTParser.anonymous>, <ASTParser.anonymous>55</ASTParser.anonymous>, <ASTParser.anonymous>73</ASTParser.anonymous>, <ASTParser.anonymous>82</ASTParser.anonymous>, <ASTParser.anonymous>83</ASTParser.anonymous>, <ASTParser.anonymous>84</ASTParser.anonymous>, <ASTParser.anonymous>87</ASTParser.anonymous>, <ASTParser.anonymous>88</ASTParser.anonymous>, <ASTParser.anonymous>89</ASTParser.anonymous>, <ASTParser.anonymous>90</ASTParser.anonymous>, <ASTParser.anonymous>91</ASTParser.anonymous>, <ASTParser.anonymous>92</ASTParser.anonymous>, <ASTParser.anonymous>97</ASTParser.anonymous>, <ASTParser.anonymous>98</ASTParser.anonymous>, <ASTParser.anonymous>99</ASTParser.anonymous>, <ASTParser.anonymous>100</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_conditional_expression_IN_conditional_expression_1445 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_logical_and_expression_IN_logical_or_expression_1471 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>, <ASTParser.anonymous>69</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_OR_IN_logical_or_expression_1474 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>49</ASTParser.anonymous>, <ASTParser.anonymous>54</ASTParser.anonymous>, <ASTParser.anonymous>55</ASTParser.anonymous>, <ASTParser.anonymous>73</ASTParser.anonymous>, <ASTParser.anonymous>82</ASTParser.anonymous>, <ASTParser.anonymous>83</ASTParser.anonymous>, <ASTParser.anonymous>84</ASTParser.anonymous>, <ASTParser.anonymous>87</ASTParser.anonymous>, <ASTParser.anonymous>88</ASTParser.anonymous>, <ASTParser.anonymous>89</ASTParser.anonymous>, <ASTParser.anonymous>90</ASTParser.anonymous>, <ASTParser.anonymous>91</ASTParser.anonymous>, <ASTParser.anonymous>92</ASTParser.anonymous>, <ASTParser.anonymous>97</ASTParser.anonymous>, <ASTParser.anonymous>98</ASTParser.anonymous>, <ASTParser.anonymous>99</ASTParser.anonymous>, <ASTParser.anonymous>100</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_logical_and_expression_IN_logical_or_expression_1477 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>, <ASTParser.anonymous>69</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_inclusive_or_expression_IN_logical_and_expression_1502 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>, <ASTParser.anonymous>70</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_AND_IN_logical_and_expression_1505 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>49</ASTParser.anonymous>, <ASTParser.anonymous>54</ASTParser.anonymous>, <ASTParser.anonymous>55</ASTParser.anonymous>, <ASTParser.anonymous>73</ASTParser.anonymous>, <ASTParser.anonymous>82</ASTParser.anonymous>, <ASTParser.anonymous>83</ASTParser.anonymous>, <ASTParser.anonymous>84</ASTParser.anonymous>, <ASTParser.anonymous>87</ASTParser.anonymous>, <ASTParser.anonymous>88</ASTParser.anonymous>, <ASTParser.anonymous>89</ASTParser.anonymous>, <ASTParser.anonymous>90</ASTParser.anonymous>, <ASTParser.anonymous>91</ASTParser.anonymous>, <ASTParser.anonymous>92</ASTParser.anonymous>, <ASTParser.anonymous>97</ASTParser.anonymous>, <ASTParser.anonymous>98</ASTParser.anonymous>, <ASTParser.anonymous>99</ASTParser.anonymous>, <ASTParser.anonymous>100</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_inclusive_or_expression_IN_logical_and_expression_1508 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>, <ASTParser.anonymous>70</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_exclusive_or_expression_IN_inclusive_or_expression_1533 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>, <ASTParser.anonymous>71</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_BITWISEOR_IN_inclusive_or_expression_1536 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>49</ASTParser.anonymous>, <ASTParser.anonymous>54</ASTParser.anonymous>, <ASTParser.anonymous>55</ASTParser.anonymous>, <ASTParser.anonymous>73</ASTParser.anonymous>, <ASTParser.anonymous>82</ASTParser.anonymous>, <ASTParser.anonymous>83</ASTParser.anonymous>, <ASTParser.anonymous>84</ASTParser.anonymous>, <ASTParser.anonymous>87</ASTParser.anonymous>, <ASTParser.anonymous>88</ASTParser.anonymous>, <ASTParser.anonymous>89</ASTParser.anonymous>, <ASTParser.anonymous>90</ASTParser.anonymous>, <ASTParser.anonymous>91</ASTParser.anonymous>, <ASTParser.anonymous>92</ASTParser.anonymous>, <ASTParser.anonymous>97</ASTParser.anonymous>, <ASTParser.anonymous>98</ASTParser.anonymous>, <ASTParser.anonymous>99</ASTParser.anonymous>, <ASTParser.anonymous>100</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_exclusive_or_expression_IN_inclusive_or_expression_1539 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>, <ASTParser.anonymous>71</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_and_expression_IN_exclusive_or_expression_1564 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>, <ASTParser.anonymous>72</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_BITWISEXOR_IN_exclusive_or_expression_1567 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>49</ASTParser.anonymous>, <ASTParser.anonymous>54</ASTParser.anonymous>, <ASTParser.anonymous>55</ASTParser.anonymous>, <ASTParser.anonymous>73</ASTParser.anonymous>, <ASTParser.anonymous>82</ASTParser.anonymous>, <ASTParser.anonymous>83</ASTParser.anonymous>, <ASTParser.anonymous>84</ASTParser.anonymous>, <ASTParser.anonymous>87</ASTParser.anonymous>, <ASTParser.anonymous>88</ASTParser.anonymous>, <ASTParser.anonymous>89</ASTParser.anonymous>, <ASTParser.anonymous>90</ASTParser.anonymous>, <ASTParser.anonymous>91</ASTParser.anonymous>, <ASTParser.anonymous>92</ASTParser.anonymous>, <ASTParser.anonymous>97</ASTParser.anonymous>, <ASTParser.anonymous>98</ASTParser.anonymous>, <ASTParser.anonymous>99</ASTParser.anonymous>, <ASTParser.anonymous>100</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_and_expression_IN_exclusive_or_expression_1570 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>, <ASTParser.anonymous>72</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_equality_expression_IN_and_expression_1595 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>, <ASTParser.anonymous>73</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_AMPERSAND_IN_and_expression_1598 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>49</ASTParser.anonymous>, <ASTParser.anonymous>54</ASTParser.anonymous>, <ASTParser.anonymous>55</ASTParser.anonymous>, <ASTParser.anonymous>73</ASTParser.anonymous>, <ASTParser.anonymous>82</ASTParser.anonymous>, <ASTParser.anonymous>83</ASTParser.anonymous>, <ASTParser.anonymous>84</ASTParser.anonymous>, <ASTParser.anonymous>87</ASTParser.anonymous>, <ASTParser.anonymous>88</ASTParser.anonymous>, <ASTParser.anonymous>89</ASTParser.anonymous>, <ASTParser.anonymous>90</ASTParser.anonymous>, <ASTParser.anonymous>91</ASTParser.anonymous>, <ASTParser.anonymous>92</ASTParser.anonymous>, <ASTParser.anonymous>97</ASTParser.anonymous>, <ASTParser.anonymous>98</ASTParser.anonymous>, <ASTParser.anonymous>99</ASTParser.anonymous>, <ASTParser.anonymous>100</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_equality_expression_IN_and_expression_1601 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>, <ASTParser.anonymous>73</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_relational_expression_IN_equality_expression_1626 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>, <ASTParser.anonymous>74</ASTParser.anonymous>, <ASTParser.anonymous>75</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_NOTEQUAL_IN_equality_expression_1630 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>49</ASTParser.anonymous>, <ASTParser.anonymous>54</ASTParser.anonymous>, <ASTParser.anonymous>55</ASTParser.anonymous>, <ASTParser.anonymous>73</ASTParser.anonymous>, <ASTParser.anonymous>82</ASTParser.anonymous>, <ASTParser.anonymous>83</ASTParser.anonymous>, <ASTParser.anonymous>84</ASTParser.anonymous>, <ASTParser.anonymous>87</ASTParser.anonymous>, <ASTParser.anonymous>88</ASTParser.anonymous>, <ASTParser.anonymous>89</ASTParser.anonymous>, <ASTParser.anonymous>90</ASTParser.anonymous>, <ASTParser.anonymous>91</ASTParser.anonymous>, <ASTParser.anonymous>92</ASTParser.anonymous>, <ASTParser.anonymous>97</ASTParser.anonymous>, <ASTParser.anonymous>98</ASTParser.anonymous>, <ASTParser.anonymous>99</ASTParser.anonymous>, <ASTParser.anonymous>100</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_EQUAL_IN_equality_expression_1635 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>49</ASTParser.anonymous>, <ASTParser.anonymous>54</ASTParser.anonymous>, <ASTParser.anonymous>55</ASTParser.anonymous>, <ASTParser.anonymous>73</ASTParser.anonymous>, <ASTParser.anonymous>82</ASTParser.anonymous>, <ASTParser.anonymous>83</ASTParser.anonymous>, <ASTParser.anonymous>84</ASTParser.anonymous>, <ASTParser.anonymous>87</ASTParser.anonymous>, <ASTParser.anonymous>88</ASTParser.anonymous>, <ASTParser.anonymous>89</ASTParser.anonymous>, <ASTParser.anonymous>90</ASTParser.anonymous>, <ASTParser.anonymous>91</ASTParser.anonymous>, <ASTParser.anonymous>92</ASTParser.anonymous>, <ASTParser.anonymous>97</ASTParser.anonymous>, <ASTParser.anonymous>98</ASTParser.anonymous>, <ASTParser.anonymous>99</ASTParser.anonymous>, <ASTParser.anonymous>100</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_relational_expression_IN_equality_expression_1639 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>, <ASTParser.anonymous>74</ASTParser.anonymous>, <ASTParser.anonymous>75</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_shift_expression_IN_relational_expression_1664 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>, <ASTParser.anonymous>76</ASTParser.anonymous>, <ASTParser.anonymous>77</ASTParser.anonymous>, <ASTParser.anonymous>78</ASTParser.anonymous>, <ASTParser.anonymous>79</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_LESSTHAN_IN_relational_expression_1702 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>49</ASTParser.anonymous>, <ASTParser.anonymous>54</ASTParser.anonymous>, <ASTParser.anonymous>55</ASTParser.anonymous>, <ASTParser.anonymous>73</ASTParser.anonymous>, <ASTParser.anonymous>82</ASTParser.anonymous>, <ASTParser.anonymous>83</ASTParser.anonymous>, <ASTParser.anonymous>84</ASTParser.anonymous>, <ASTParser.anonymous>87</ASTParser.anonymous>, <ASTParser.anonymous>88</ASTParser.anonymous>, <ASTParser.anonymous>89</ASTParser.anonymous>, <ASTParser.anonymous>90</ASTParser.anonymous>, <ASTParser.anonymous>91</ASTParser.anonymous>, <ASTParser.anonymous>92</ASTParser.anonymous>, <ASTParser.anonymous>97</ASTParser.anonymous>, <ASTParser.anonymous>98</ASTParser.anonymous>, <ASTParser.anonymous>99</ASTParser.anonymous>, <ASTParser.anonymous>100</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_GREATERTHAN_IN_relational_expression_1729 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>49</ASTParser.anonymous>, <ASTParser.anonymous>54</ASTParser.anonymous>, <ASTParser.anonymous>55</ASTParser.anonymous>, <ASTParser.anonymous>73</ASTParser.anonymous>, <ASTParser.anonymous>82</ASTParser.anonymous>, <ASTParser.anonymous>83</ASTParser.anonymous>, <ASTParser.anonymous>84</ASTParser.anonymous>, <ASTParser.anonymous>87</ASTParser.anonymous>, <ASTParser.anonymous>88</ASTParser.anonymous>, <ASTParser.anonymous>89</ASTParser.anonymous>, <ASTParser.anonymous>90</ASTParser.anonymous>, <ASTParser.anonymous>91</ASTParser.anonymous>, <ASTParser.anonymous>92</ASTParser.anonymous>, <ASTParser.anonymous>97</ASTParser.anonymous>, <ASTParser.anonymous>98</ASTParser.anonymous>, <ASTParser.anonymous>99</ASTParser.anonymous>, <ASTParser.anonymous>100</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_LESSTHANOREQUALTO_IN_relational_expression_1756 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>49</ASTParser.anonymous>, <ASTParser.anonymous>54</ASTParser.anonymous>, <ASTParser.anonymous>55</ASTParser.anonymous>, <ASTParser.anonymous>73</ASTParser.anonymous>, <ASTParser.anonymous>82</ASTParser.anonymous>, <ASTParser.anonymous>83</ASTParser.anonymous>, <ASTParser.anonymous>84</ASTParser.anonymous>, <ASTParser.anonymous>87</ASTParser.anonymous>, <ASTParser.anonymous>88</ASTParser.anonymous>, <ASTParser.anonymous>89</ASTParser.anonymous>, <ASTParser.anonymous>90</ASTParser.anonymous>, <ASTParser.anonymous>91</ASTParser.anonymous>, <ASTParser.anonymous>92</ASTParser.anonymous>, <ASTParser.anonymous>97</ASTParser.anonymous>, <ASTParser.anonymous>98</ASTParser.anonymous>, <ASTParser.anonymous>99</ASTParser.anonymous>, <ASTParser.anonymous>100</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_GREATERTHANOREQUALTO_IN_relational_expression_1783 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>49</ASTParser.anonymous>, <ASTParser.anonymous>54</ASTParser.anonymous>, <ASTParser.anonymous>55</ASTParser.anonymous>, <ASTParser.anonymous>73</ASTParser.anonymous>, <ASTParser.anonymous>82</ASTParser.anonymous>, <ASTParser.anonymous>83</ASTParser.anonymous>, <ASTParser.anonymous>84</ASTParser.anonymous>, <ASTParser.anonymous>87</ASTParser.anonymous>, <ASTParser.anonymous>88</ASTParser.anonymous>, <ASTParser.anonymous>89</ASTParser.anonymous>, <ASTParser.anonymous>90</ASTParser.anonymous>, <ASTParser.anonymous>91</ASTParser.anonymous>, <ASTParser.anonymous>92</ASTParser.anonymous>, <ASTParser.anonymous>97</ASTParser.anonymous>, <ASTParser.anonymous>98</ASTParser.anonymous>, <ASTParser.anonymous>99</ASTParser.anonymous>, <ASTParser.anonymous>100</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_shift_expression_IN_relational_expression_1812 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>, <ASTParser.anonymous>76</ASTParser.anonymous>, <ASTParser.anonymous>77</ASTParser.anonymous>, <ASTParser.anonymous>78</ASTParser.anonymous>, <ASTParser.anonymous>79</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_additive_expression_IN_shift_expression_1859 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>, <ASTParser.anonymous>80</ASTParser.anonymous>, <ASTParser.anonymous>81</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_SHIFTLEFT_IN_shift_expression_1863 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>49</ASTParser.anonymous>, <ASTParser.anonymous>54</ASTParser.anonymous>, <ASTParser.anonymous>55</ASTParser.anonymous>, <ASTParser.anonymous>73</ASTParser.anonymous>, <ASTParser.anonymous>82</ASTParser.anonymous>, <ASTParser.anonymous>83</ASTParser.anonymous>, <ASTParser.anonymous>84</ASTParser.anonymous>, <ASTParser.anonymous>87</ASTParser.anonymous>, <ASTParser.anonymous>88</ASTParser.anonymous>, <ASTParser.anonymous>89</ASTParser.anonymous>, <ASTParser.anonymous>90</ASTParser.anonymous>, <ASTParser.anonymous>91</ASTParser.anonymous>, <ASTParser.anonymous>92</ASTParser.anonymous>, <ASTParser.anonymous>97</ASTParser.anonymous>, <ASTParser.anonymous>98</ASTParser.anonymous>, <ASTParser.anonymous>99</ASTParser.anonymous>, <ASTParser.anonymous>100</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_SHIFTRIGHT_IN_shift_expression_1868 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>49</ASTParser.anonymous>, <ASTParser.anonymous>54</ASTParser.anonymous>, <ASTParser.anonymous>55</ASTParser.anonymous>, <ASTParser.anonymous>73</ASTParser.anonymous>, <ASTParser.anonymous>82</ASTParser.anonymous>, <ASTParser.anonymous>83</ASTParser.anonymous>, <ASTParser.anonymous>84</ASTParser.anonymous>, <ASTParser.anonymous>87</ASTParser.anonymous>, <ASTParser.anonymous>88</ASTParser.anonymous>, <ASTParser.anonymous>89</ASTParser.anonymous>, <ASTParser.anonymous>90</ASTParser.anonymous>, <ASTParser.anonymous>91</ASTParser.anonymous>, <ASTParser.anonymous>92</ASTParser.anonymous>, <ASTParser.anonymous>97</ASTParser.anonymous>, <ASTParser.anonymous>98</ASTParser.anonymous>, <ASTParser.anonymous>99</ASTParser.anonymous>, <ASTParser.anonymous>100</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_additive_expression_IN_shift_expression_1872 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>, <ASTParser.anonymous>80</ASTParser.anonymous>, <ASTParser.anonymous>81</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_multiplicative_expression_IN_additive_expression_1897 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>, <ASTParser.anonymous>82</ASTParser.anonymous>, <ASTParser.anonymous>83</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_PLUS_IN_additive_expression_1901 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>49</ASTParser.anonymous>, <ASTParser.anonymous>54</ASTParser.anonymous>, <ASTParser.anonymous>55</ASTParser.anonymous>, <ASTParser.anonymous>73</ASTParser.anonymous>, <ASTParser.anonymous>82</ASTParser.anonymous>, <ASTParser.anonymous>83</ASTParser.anonymous>, <ASTParser.anonymous>84</ASTParser.anonymous>, <ASTParser.anonymous>87</ASTParser.anonymous>, <ASTParser.anonymous>88</ASTParser.anonymous>, <ASTParser.anonymous>89</ASTParser.anonymous>, <ASTParser.anonymous>90</ASTParser.anonymous>, <ASTParser.anonymous>91</ASTParser.anonymous>, <ASTParser.anonymous>92</ASTParser.anonymous>, <ASTParser.anonymous>97</ASTParser.anonymous>, <ASTParser.anonymous>98</ASTParser.anonymous>, <ASTParser.anonymous>99</ASTParser.anonymous>, <ASTParser.anonymous>100</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_MINUS_IN_additive_expression_1906 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>49</ASTParser.anonymous>, <ASTParser.anonymous>54</ASTParser.anonymous>, <ASTParser.anonymous>55</ASTParser.anonymous>, <ASTParser.anonymous>73</ASTParser.anonymous>, <ASTParser.anonymous>82</ASTParser.anonymous>, <ASTParser.anonymous>83</ASTParser.anonymous>, <ASTParser.anonymous>84</ASTParser.anonymous>, <ASTParser.anonymous>87</ASTParser.anonymous>, <ASTParser.anonymous>88</ASTParser.anonymous>, <ASTParser.anonymous>89</ASTParser.anonymous>, <ASTParser.anonymous>90</ASTParser.anonymous>, <ASTParser.anonymous>91</ASTParser.anonymous>, <ASTParser.anonymous>92</ASTParser.anonymous>, <ASTParser.anonymous>97</ASTParser.anonymous>, <ASTParser.anonymous>98</ASTParser.anonymous>, <ASTParser.anonymous>99</ASTParser.anonymous>, <ASTParser.anonymous>100</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_multiplicative_expression_IN_additive_expression_1910 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>, <ASTParser.anonymous>82</ASTParser.anonymous>, <ASTParser.anonymous>83</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_unary_expression_IN_multiplicative_expression_1935 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>, <ASTParser.anonymous>84</ASTParser.anonymous>, <ASTParser.anonymous>85</ASTParser.anonymous>, <ASTParser.anonymous>86</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_STAR_IN_multiplicative_expression_1939 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>49</ASTParser.anonymous>, <ASTParser.anonymous>54</ASTParser.anonymous>, <ASTParser.anonymous>55</ASTParser.anonymous>, <ASTParser.anonymous>73</ASTParser.anonymous>, <ASTParser.anonymous>82</ASTParser.anonymous>, <ASTParser.anonymous>83</ASTParser.anonymous>, <ASTParser.anonymous>84</ASTParser.anonymous>, <ASTParser.anonymous>87</ASTParser.anonymous>, <ASTParser.anonymous>88</ASTParser.anonymous>, <ASTParser.anonymous>89</ASTParser.anonymous>, <ASTParser.anonymous>90</ASTParser.anonymous>, <ASTParser.anonymous>91</ASTParser.anonymous>, <ASTParser.anonymous>92</ASTParser.anonymous>, <ASTParser.anonymous>97</ASTParser.anonymous>, <ASTParser.anonymous>98</ASTParser.anonymous>, <ASTParser.anonymous>99</ASTParser.anonymous>, <ASTParser.anonymous>100</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_DIVIDE_IN_multiplicative_expression_1944 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>49</ASTParser.anonymous>, <ASTParser.anonymous>54</ASTParser.anonymous>, <ASTParser.anonymous>55</ASTParser.anonymous>, <ASTParser.anonymous>73</ASTParser.anonymous>, <ASTParser.anonymous>82</ASTParser.anonymous>, <ASTParser.anonymous>83</ASTParser.anonymous>, <ASTParser.anonymous>84</ASTParser.anonymous>, <ASTParser.anonymous>87</ASTParser.anonymous>, <ASTParser.anonymous>88</ASTParser.anonymous>, <ASTParser.anonymous>89</ASTParser.anonymous>, <ASTParser.anonymous>90</ASTParser.anonymous>, <ASTParser.anonymous>91</ASTParser.anonymous>, <ASTParser.anonymous>92</ASTParser.anonymous>, <ASTParser.anonymous>97</ASTParser.anonymous>, <ASTParser.anonymous>98</ASTParser.anonymous>, <ASTParser.anonymous>99</ASTParser.anonymous>, <ASTParser.anonymous>100</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_MOD_IN_multiplicative_expression_1949 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>49</ASTParser.anonymous>, <ASTParser.anonymous>54</ASTParser.anonymous>, <ASTParser.anonymous>55</ASTParser.anonymous>, <ASTParser.anonymous>73</ASTParser.anonymous>, <ASTParser.anonymous>82</ASTParser.anonymous>, <ASTParser.anonymous>83</ASTParser.anonymous>, <ASTParser.anonymous>84</ASTParser.anonymous>, <ASTParser.anonymous>87</ASTParser.anonymous>, <ASTParser.anonymous>88</ASTParser.anonymous>, <ASTParser.anonymous>89</ASTParser.anonymous>, <ASTParser.anonymous>90</ASTParser.anonymous>, <ASTParser.anonymous>91</ASTParser.anonymous>, <ASTParser.anonymous>92</ASTParser.anonymous>, <ASTParser.anonymous>97</ASTParser.anonymous>, <ASTParser.anonymous>98</ASTParser.anonymous>, <ASTParser.anonymous>99</ASTParser.anonymous>, <ASTParser.anonymous>100</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_unary_expression_IN_multiplicative_expression_1954 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>, <ASTParser.anonymous>84</ASTParser.anonymous>, <ASTParser.anonymous>85</ASTParser.anonymous>, <ASTParser.anonymous>86</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_PLUSPLUS_IN_unary_expression_1979 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>49</ASTParser.anonymous>, <ASTParser.anonymous>54</ASTParser.anonymous>, <ASTParser.anonymous>55</ASTParser.anonymous>, <ASTParser.anonymous>73</ASTParser.anonymous>, <ASTParser.anonymous>82</ASTParser.anonymous>, <ASTParser.anonymous>83</ASTParser.anonymous>, <ASTParser.anonymous>84</ASTParser.anonymous>, <ASTParser.anonymous>87</ASTParser.anonymous>, <ASTParser.anonymous>88</ASTParser.anonymous>, <ASTParser.anonymous>89</ASTParser.anonymous>, <ASTParser.anonymous>90</ASTParser.anonymous>, <ASTParser.anonymous>91</ASTParser.anonymous>, <ASTParser.anonymous>92</ASTParser.anonymous>, <ASTParser.anonymous>97</ASTParser.anonymous>, <ASTParser.anonymous>98</ASTParser.anonymous>, <ASTParser.anonymous>99</ASTParser.anonymous>, <ASTParser.anonymous>100</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_unary_expression_IN_unary_expression_1988 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_MINUSMINUS_IN_unary_expression_2010 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>49</ASTParser.anonymous>, <ASTParser.anonymous>54</ASTParser.anonymous>, <ASTParser.anonymous>55</ASTParser.anonymous>, <ASTParser.anonymous>73</ASTParser.anonymous>, <ASTParser.anonymous>82</ASTParser.anonymous>, <ASTParser.anonymous>83</ASTParser.anonymous>, <ASTParser.anonymous>84</ASTParser.anonymous>, <ASTParser.anonymous>87</ASTParser.anonymous>, <ASTParser.anonymous>88</ASTParser.anonymous>, <ASTParser.anonymous>89</ASTParser.anonymous>, <ASTParser.anonymous>90</ASTParser.anonymous>, <ASTParser.anonymous>91</ASTParser.anonymous>, <ASTParser.anonymous>92</ASTParser.anonymous>, <ASTParser.anonymous>97</ASTParser.anonymous>, <ASTParser.anonymous>98</ASTParser.anonymous>, <ASTParser.anonymous>99</ASTParser.anonymous>, <ASTParser.anonymous>100</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_unary_expression_IN_unary_expression_2017 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_SIZEOF_IN_unary_expression_2039 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>49</ASTParser.anonymous>, <ASTParser.anonymous>54</ASTParser.anonymous>, <ASTParser.anonymous>55</ASTParser.anonymous>, <ASTParser.anonymous>73</ASTParser.anonymous>, <ASTParser.anonymous>82</ASTParser.anonymous>, <ASTParser.anonymous>83</ASTParser.anonymous>, <ASTParser.anonymous>84</ASTParser.anonymous>, <ASTParser.anonymous>87</ASTParser.anonymous>, <ASTParser.anonymous>88</ASTParser.anonymous>, <ASTParser.anonymous>89</ASTParser.anonymous>, <ASTParser.anonymous>90</ASTParser.anonymous>, <ASTParser.anonymous>91</ASTParser.anonymous>, <ASTParser.anonymous>92</ASTParser.anonymous>, <ASTParser.anonymous>97</ASTParser.anonymous>, <ASTParser.anonymous>98</ASTParser.anonymous>, <ASTParser.anonymous>99</ASTParser.anonymous>, <ASTParser.anonymous>100</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_unary_expression_IN_unary_expression_2042 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_SIZEOF_IN_unary_expression_2064 = Set[<ASTParser.anonymous>49</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_LPAREN_IN_unary_expression_2067 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_type_name_IN_unary_expression_2069 = Set[<ASTParser.anonymous>51</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_RPAREN_IN_unary_expression_2071 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_DEFINED_IN_unary_expression_2098 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_type_name_IN_unary_expression_2100 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_DEFINED_IN_unary_expression_2144 = Set[<ASTParser.anonymous>49</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_LPAREN_IN_unary_expression_2146 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_type_name_IN_unary_expression_2148 = Set[<ASTParser.anonymous>51</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_RPAREN_IN_unary_expression_2151 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_unary_expression_not_plus_minus_IN_unary_expression_2179 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_NOT_IN_unary_expression_not_plus_minus_2202 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>49</ASTParser.anonymous>, <ASTParser.anonymous>54</ASTParser.anonymous>, <ASTParser.anonymous>55</ASTParser.anonymous>, <ASTParser.anonymous>73</ASTParser.anonymous>, <ASTParser.anonymous>82</ASTParser.anonymous>, <ASTParser.anonymous>83</ASTParser.anonymous>, <ASTParser.anonymous>84</ASTParser.anonymous>, <ASTParser.anonymous>87</ASTParser.anonymous>, <ASTParser.anonymous>88</ASTParser.anonymous>, <ASTParser.anonymous>89</ASTParser.anonymous>, <ASTParser.anonymous>90</ASTParser.anonymous>, <ASTParser.anonymous>91</ASTParser.anonymous>, <ASTParser.anonymous>92</ASTParser.anonymous>, <ASTParser.anonymous>97</ASTParser.anonymous>, <ASTParser.anonymous>98</ASTParser.anonymous>, <ASTParser.anonymous>99</ASTParser.anonymous>, <ASTParser.anonymous>100</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_unary_expression_IN_unary_expression_not_plus_minus_2216 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_TILDE_IN_unary_expression_not_plus_minus_2245 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>49</ASTParser.anonymous>, <ASTParser.anonymous>54</ASTParser.anonymous>, <ASTParser.anonymous>55</ASTParser.anonymous>, <ASTParser.anonymous>73</ASTParser.anonymous>, <ASTParser.anonymous>82</ASTParser.anonymous>, <ASTParser.anonymous>83</ASTParser.anonymous>, <ASTParser.anonymous>84</ASTParser.anonymous>, <ASTParser.anonymous>87</ASTParser.anonymous>, <ASTParser.anonymous>88</ASTParser.anonymous>, <ASTParser.anonymous>89</ASTParser.anonymous>, <ASTParser.anonymous>90</ASTParser.anonymous>, <ASTParser.anonymous>91</ASTParser.anonymous>, <ASTParser.anonymous>92</ASTParser.anonymous>, <ASTParser.anonymous>97</ASTParser.anonymous>, <ASTParser.anonymous>98</ASTParser.anonymous>, <ASTParser.anonymous>99</ASTParser.anonymous>, <ASTParser.anonymous>100</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_unary_expression_IN_unary_expression_not_plus_minus_2257 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_AMPERSAND_IN_unary_expression_not_plus_minus_2292 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>49</ASTParser.anonymous>, <ASTParser.anonymous>54</ASTParser.anonymous>, <ASTParser.anonymous>55</ASTParser.anonymous>, <ASTParser.anonymous>73</ASTParser.anonymous>, <ASTParser.anonymous>82</ASTParser.anonymous>, <ASTParser.anonymous>83</ASTParser.anonymous>, <ASTParser.anonymous>84</ASTParser.anonymous>, <ASTParser.anonymous>87</ASTParser.anonymous>, <ASTParser.anonymous>88</ASTParser.anonymous>, <ASTParser.anonymous>89</ASTParser.anonymous>, <ASTParser.anonymous>90</ASTParser.anonymous>, <ASTParser.anonymous>91</ASTParser.anonymous>, <ASTParser.anonymous>92</ASTParser.anonymous>, <ASTParser.anonymous>97</ASTParser.anonymous>, <ASTParser.anonymous>98</ASTParser.anonymous>, <ASTParser.anonymous>99</ASTParser.anonymous>, <ASTParser.anonymous>100</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_unary_expression_IN_unary_expression_not_plus_minus_2300 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_STAR_IN_unary_expression_not_plus_minus_2331 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>49</ASTParser.anonymous>, <ASTParser.anonymous>54</ASTParser.anonymous>, <ASTParser.anonymous>55</ASTParser.anonymous>, <ASTParser.anonymous>73</ASTParser.anonymous>, <ASTParser.anonymous>82</ASTParser.anonymous>, <ASTParser.anonymous>83</ASTParser.anonymous>, <ASTParser.anonymous>84</ASTParser.anonymous>, <ASTParser.anonymous>87</ASTParser.anonymous>, <ASTParser.anonymous>88</ASTParser.anonymous>, <ASTParser.anonymous>89</ASTParser.anonymous>, <ASTParser.anonymous>90</ASTParser.anonymous>, <ASTParser.anonymous>91</ASTParser.anonymous>, <ASTParser.anonymous>92</ASTParser.anonymous>, <ASTParser.anonymous>97</ASTParser.anonymous>, <ASTParser.anonymous>98</ASTParser.anonymous>, <ASTParser.anonymous>99</ASTParser.anonymous>, <ASTParser.anonymous>100</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_unary_expression_IN_unary_expression_not_plus_minus_2344 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_MINUS_IN_unary_expression_not_plus_minus_2374 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>49</ASTParser.anonymous>, <ASTParser.anonymous>54</ASTParser.anonymous>, <ASTParser.anonymous>55</ASTParser.anonymous>, <ASTParser.anonymous>73</ASTParser.anonymous>, <ASTParser.anonymous>82</ASTParser.anonymous>, <ASTParser.anonymous>83</ASTParser.anonymous>, <ASTParser.anonymous>84</ASTParser.anonymous>, <ASTParser.anonymous>87</ASTParser.anonymous>, <ASTParser.anonymous>88</ASTParser.anonymous>, <ASTParser.anonymous>89</ASTParser.anonymous>, <ASTParser.anonymous>90</ASTParser.anonymous>, <ASTParser.anonymous>91</ASTParser.anonymous>, <ASTParser.anonymous>92</ASTParser.anonymous>, <ASTParser.anonymous>97</ASTParser.anonymous>, <ASTParser.anonymous>98</ASTParser.anonymous>, <ASTParser.anonymous>99</ASTParser.anonymous>, <ASTParser.anonymous>100</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_unary_expression_IN_unary_expression_not_plus_minus_2377 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_PLUS_IN_unary_expression_not_plus_minus_2400 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>49</ASTParser.anonymous>, <ASTParser.anonymous>54</ASTParser.anonymous>, <ASTParser.anonymous>55</ASTParser.anonymous>, <ASTParser.anonymous>73</ASTParser.anonymous>, <ASTParser.anonymous>82</ASTParser.anonymous>, <ASTParser.anonymous>83</ASTParser.anonymous>, <ASTParser.anonymous>84</ASTParser.anonymous>, <ASTParser.anonymous>87</ASTParser.anonymous>, <ASTParser.anonymous>88</ASTParser.anonymous>, <ASTParser.anonymous>89</ASTParser.anonymous>, <ASTParser.anonymous>90</ASTParser.anonymous>, <ASTParser.anonymous>91</ASTParser.anonymous>, <ASTParser.anonymous>92</ASTParser.anonymous>, <ASTParser.anonymous>97</ASTParser.anonymous>, <ASTParser.anonymous>98</ASTParser.anonymous>, <ASTParser.anonymous>99</ASTParser.anonymous>, <ASTParser.anonymous>100</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_unary_expression_IN_unary_expression_not_plus_minus_2404 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_LPAREN_IN_unary_expression_not_plus_minus_2427 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_type_name_IN_unary_expression_not_plus_minus_2429 = Set[<ASTParser.anonymous>51</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_RPAREN_IN_unary_expression_not_plus_minus_2431 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>49</ASTParser.anonymous>, <ASTParser.anonymous>54</ASTParser.anonymous>, <ASTParser.anonymous>55</ASTParser.anonymous>, <ASTParser.anonymous>73</ASTParser.anonymous>, <ASTParser.anonymous>82</ASTParser.anonymous>, <ASTParser.anonymous>83</ASTParser.anonymous>, <ASTParser.anonymous>84</ASTParser.anonymous>, <ASTParser.anonymous>87</ASTParser.anonymous>, <ASTParser.anonymous>88</ASTParser.anonymous>, <ASTParser.anonymous>89</ASTParser.anonymous>, <ASTParser.anonymous>90</ASTParser.anonymous>, <ASTParser.anonymous>91</ASTParser.anonymous>, <ASTParser.anonymous>92</ASTParser.anonymous>, <ASTParser.anonymous>97</ASTParser.anonymous>, <ASTParser.anonymous>98</ASTParser.anonymous>, <ASTParser.anonymous>99</ASTParser.anonymous>, <ASTParser.anonymous>100</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_unary_expression_IN_unary_expression_not_plus_minus_2434 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_postfix_expression_IN_unary_expression_not_plus_minus_2458 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_primary_expression_IN_postfix_expression_2477 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>, <ASTParser.anonymous>84</ASTParser.anonymous>, <ASTParser.anonymous>87</ASTParser.anonymous>, <ASTParser.anonymous>88</ASTParser.anonymous>, <ASTParser.anonymous>93</ASTParser.anonymous>, <ASTParser.anonymous>95</ASTParser.anonymous>, <ASTParser.anonymous>96</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_LSQUARE_IN_postfix_expression_2489 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>49</ASTParser.anonymous>, <ASTParser.anonymous>54</ASTParser.anonymous>, <ASTParser.anonymous>55</ASTParser.anonymous>, <ASTParser.anonymous>73</ASTParser.anonymous>, <ASTParser.anonymous>82</ASTParser.anonymous>, <ASTParser.anonymous>83</ASTParser.anonymous>, <ASTParser.anonymous>84</ASTParser.anonymous>, <ASTParser.anonymous>87</ASTParser.anonymous>, <ASTParser.anonymous>88</ASTParser.anonymous>, <ASTParser.anonymous>89</ASTParser.anonymous>, <ASTParser.anonymous>90</ASTParser.anonymous>, <ASTParser.anonymous>91</ASTParser.anonymous>, <ASTParser.anonymous>92</ASTParser.anonymous>, <ASTParser.anonymous>97</ASTParser.anonymous>, <ASTParser.anonymous>98</ASTParser.anonymous>, <ASTParser.anonymous>99</ASTParser.anonymous>, <ASTParser.anonymous>100</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_assignment_expression_IN_postfix_expression_2494 = Set[<ASTParser.anonymous>94</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_RSQUARE_IN_postfix_expression_2496 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>, <ASTParser.anonymous>84</ASTParser.anonymous>, <ASTParser.anonymous>87</ASTParser.anonymous>, <ASTParser.anonymous>88</ASTParser.anonymous>, <ASTParser.anonymous>93</ASTParser.anonymous>, <ASTParser.anonymous>95</ASTParser.anonymous>, <ASTParser.anonymous>96</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_DOT_IN_postfix_expression_2507 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_IDENTIFIER_IN_postfix_expression_2516 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>, <ASTParser.anonymous>84</ASTParser.anonymous>, <ASTParser.anonymous>87</ASTParser.anonymous>, <ASTParser.anonymous>88</ASTParser.anonymous>, <ASTParser.anonymous>93</ASTParser.anonymous>, <ASTParser.anonymous>95</ASTParser.anonymous>, <ASTParser.anonymous>96</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_STAR_IN_postfix_expression_2528 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_IDENTIFIER_IN_postfix_expression_2537 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>, <ASTParser.anonymous>84</ASTParser.anonymous>, <ASTParser.anonymous>87</ASTParser.anonymous>, <ASTParser.anonymous>88</ASTParser.anonymous>, <ASTParser.anonymous>93</ASTParser.anonymous>, <ASTParser.anonymous>95</ASTParser.anonymous>, <ASTParser.anonymous>96</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_POINTERTO_IN_postfix_expression_2547 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_IDENTIFIER_IN_postfix_expression_2550 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>, <ASTParser.anonymous>84</ASTParser.anonymous>, <ASTParser.anonymous>87</ASTParser.anonymous>, <ASTParser.anonymous>88</ASTParser.anonymous>, <ASTParser.anonymous>93</ASTParser.anonymous>, <ASTParser.anonymous>95</ASTParser.anonymous>, <ASTParser.anonymous>96</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_PLUSPLUS_IN_postfix_expression_2562 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>, <ASTParser.anonymous>84</ASTParser.anonymous>, <ASTParser.anonymous>87</ASTParser.anonymous>, <ASTParser.anonymous>88</ASTParser.anonymous>, <ASTParser.anonymous>93</ASTParser.anonymous>, <ASTParser.anonymous>95</ASTParser.anonymous>, <ASTParser.anonymous>96</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_MINUSMINUS_IN_postfix_expression_2579 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>, <ASTParser.anonymous>84</ASTParser.anonymous>, <ASTParser.anonymous>87</ASTParser.anonymous>, <ASTParser.anonymous>88</ASTParser.anonymous>, <ASTParser.anonymous>93</ASTParser.anonymous>, <ASTParser.anonymous>95</ASTParser.anonymous>, <ASTParser.anonymous>96</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_function_call_IN_primary_expression_2616 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_IDENTIFIER_IN_primary_expression_2626 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_constant_IN_primary_expression_2636 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_LPAREN_IN_primary_expression_2646 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>49</ASTParser.anonymous>, <ASTParser.anonymous>54</ASTParser.anonymous>, <ASTParser.anonymous>55</ASTParser.anonymous>, <ASTParser.anonymous>73</ASTParser.anonymous>, <ASTParser.anonymous>82</ASTParser.anonymous>, <ASTParser.anonymous>83</ASTParser.anonymous>, <ASTParser.anonymous>84</ASTParser.anonymous>, <ASTParser.anonymous>87</ASTParser.anonymous>, <ASTParser.anonymous>88</ASTParser.anonymous>, <ASTParser.anonymous>89</ASTParser.anonymous>, <ASTParser.anonymous>90</ASTParser.anonymous>, <ASTParser.anonymous>91</ASTParser.anonymous>, <ASTParser.anonymous>92</ASTParser.anonymous>, <ASTParser.anonymous>97</ASTParser.anonymous>, <ASTParser.anonymous>98</ASTParser.anonymous>, <ASTParser.anonymous>99</ASTParser.anonymous>, <ASTParser.anonymous>100</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_assignment_expression_IN_primary_expression_2649 = Set[<ASTParser.anonymous>51</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_RPAREN_IN_primary_expression_2651 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_IDENTIFIER_IN_function_call_2680 = Set[<ASTParser.anonymous>49</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_LPAREN_IN_function_call_2682 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>49</ASTParser.anonymous>, <ASTParser.anonymous>51</ASTParser.anonymous>, <ASTParser.anonymous>54</ASTParser.anonymous>, <ASTParser.anonymous>55</ASTParser.anonymous>, <ASTParser.anonymous>73</ASTParser.anonymous>, <ASTParser.anonymous>82</ASTParser.anonymous>, <ASTParser.anonymous>83</ASTParser.anonymous>, <ASTParser.anonymous>84</ASTParser.anonymous>, <ASTParser.anonymous>87</ASTParser.anonymous>, <ASTParser.anonymous>88</ASTParser.anonymous>, <ASTParser.anonymous>89</ASTParser.anonymous>, <ASTParser.anonymous>90</ASTParser.anonymous>, <ASTParser.anonymous>91</ASTParser.anonymous>, <ASTParser.anonymous>92</ASTParser.anonymous>, <ASTParser.anonymous>97</ASTParser.anonymous>, <ASTParser.anonymous>98</ASTParser.anonymous>, <ASTParser.anonymous>99</ASTParser.anonymous>, <ASTParser.anonymous>100</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_arg_list_IN_function_call_2684 = Set[<ASTParser.anonymous>51</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_RPAREN_IN_function_call_2687 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_assignment_expression_IN_arg_list_2718 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>, <ASTParser.anonymous>52</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_COMMA_IN_arg_list_2721 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>49</ASTParser.anonymous>, <ASTParser.anonymous>54</ASTParser.anonymous>, <ASTParser.anonymous>55</ASTParser.anonymous>, <ASTParser.anonymous>73</ASTParser.anonymous>, <ASTParser.anonymous>82</ASTParser.anonymous>, <ASTParser.anonymous>83</ASTParser.anonymous>, <ASTParser.anonymous>84</ASTParser.anonymous>, <ASTParser.anonymous>87</ASTParser.anonymous>, <ASTParser.anonymous>88</ASTParser.anonymous>, <ASTParser.anonymous>89</ASTParser.anonymous>, <ASTParser.anonymous>90</ASTParser.anonymous>, <ASTParser.anonymous>91</ASTParser.anonymous>, <ASTParser.anonymous>92</ASTParser.anonymous>, <ASTParser.anonymous>97</ASTParser.anonymous>, <ASTParser.anonymous>98</ASTParser.anonymous>, <ASTParser.anonymous>99</ASTParser.anonymous>, <ASTParser.anonymous>100</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_assignment_expression_IN_arg_list_2723 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>, <ASTParser.anonymous>52</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_set_IN_constant_0 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_source_expression_IN_source_text_2812 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_COMMA_IN_source_text_2822 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_LPAREN_IN_source_text_2832 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_RPAREN_IN_source_text_2842 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_WS_IN_source_text_2852 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_IDENTIFIER_IN_macro_expansion_2871 = Set[<ASTParser.anonymous>49</ASTParser.anonymous>, <ASTParser.anonymous>50</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_WS_IN_macro_expansion_2873 = Set[<ASTParser.anonymous>49</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_LPAREN_IN_macro_expansion_2876 = Set[<ASTParser.anonymous>50</ASTParser.anonymous>, <ASTParser.anonymous>51</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_WS_IN_macro_expansion_2878 = Set[<ASTParser.anonymous>51</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_RPAREN_IN_macro_expansion_2881 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_IDENTIFIER_IN_macro_expansion_2900 = Set[<ASTParser.anonymous>49</ASTParser.anonymous>, <ASTParser.anonymous>50</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_WS_IN_macro_expansion_2902 = Set[<ASTParser.anonymous>49</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_LPAREN_IN_macro_expansion_2905 = Set[<ASTParser.anonymous>31</ASTParser.anonymous>, <ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>49</ASTParser.anonymous>, <ASTParser.anonymous>50</ASTParser.anonymous>, <ASTParser.anonymous>52</ASTParser.anonymous>, <ASTParser.anonymous>54</ASTParser.anonymous>, <ASTParser.anonymous>55</ASTParser.anonymous>, <ASTParser.anonymous>89</ASTParser.anonymous>, <ASTParser.anonymous>97</ASTParser.anonymous>, <ASTParser.anonymous>98</ASTParser.anonymous>, <ASTParser.anonymous>99</ASTParser.anonymous>, <ASTParser.anonymous>100</ASTParser.anonymous>, <ASTParser.anonymous>101</ASTParser.anonymous>, <ASTParser.anonymous>102</ASTParser.anonymous>, <ASTParser.anonymous>103</ASTParser.anonymous>, <ASTParser.anonymous>104</ASTParser.anonymous>, <ASTParser.anonymous>105</ASTParser.anonymous>, <ASTParser.anonymous>106</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_WS_IN_macro_expansion_2907 = Set[<ASTParser.anonymous>31</ASTParser.anonymous>, <ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>49</ASTParser.anonymous>, <ASTParser.anonymous>50</ASTParser.anonymous>, <ASTParser.anonymous>52</ASTParser.anonymous>, <ASTParser.anonymous>54</ASTParser.anonymous>, <ASTParser.anonymous>55</ASTParser.anonymous>, <ASTParser.anonymous>89</ASTParser.anonymous>, <ASTParser.anonymous>97</ASTParser.anonymous>, <ASTParser.anonymous>98</ASTParser.anonymous>, <ASTParser.anonymous>99</ASTParser.anonymous>, <ASTParser.anonymous>100</ASTParser.anonymous>, <ASTParser.anonymous>101</ASTParser.anonymous>, <ASTParser.anonymous>102</ASTParser.anonymous>, <ASTParser.anonymous>103</ASTParser.anonymous>, <ASTParser.anonymous>104</ASTParser.anonymous>, <ASTParser.anonymous>105</ASTParser.anonymous>, <ASTParser.anonymous>106</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_mac_args_IN_macro_expansion_2910 = Set[<ASTParser.anonymous>50</ASTParser.anonymous>, <ASTParser.anonymous>51</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_WS_IN_macro_expansion_2912 = Set[<ASTParser.anonymous>51</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_RPAREN_IN_macro_expansion_2915 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_m_arg_IN_mac_args_2948 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>, <ASTParser.anonymous>50</ASTParser.anonymous>, <ASTParser.anonymous>52</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_WS_IN_mac_args_2952 = Set[<ASTParser.anonymous>52</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_COMMA_IN_mac_args_2955 = Set[<ASTParser.anonymous>31</ASTParser.anonymous>, <ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>49</ASTParser.anonymous>, <ASTParser.anonymous>50</ASTParser.anonymous>, <ASTParser.anonymous>52</ASTParser.anonymous>, <ASTParser.anonymous>54</ASTParser.anonymous>, <ASTParser.anonymous>55</ASTParser.anonymous>, <ASTParser.anonymous>89</ASTParser.anonymous>, <ASTParser.anonymous>97</ASTParser.anonymous>, <ASTParser.anonymous>98</ASTParser.anonymous>, <ASTParser.anonymous>99</ASTParser.anonymous>, <ASTParser.anonymous>100</ASTParser.anonymous>, <ASTParser.anonymous>101</ASTParser.anonymous>, <ASTParser.anonymous>102</ASTParser.anonymous>, <ASTParser.anonymous>103</ASTParser.anonymous>, <ASTParser.anonymous>104</ASTParser.anonymous>, <ASTParser.anonymous>105</ASTParser.anonymous>, <ASTParser.anonymous>106</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_WS_IN_mac_args_2957 = Set[<ASTParser.anonymous>31</ASTParser.anonymous>, <ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>49</ASTParser.anonymous>, <ASTParser.anonymous>50</ASTParser.anonymous>, <ASTParser.anonymous>52</ASTParser.anonymous>, <ASTParser.anonymous>54</ASTParser.anonymous>, <ASTParser.anonymous>55</ASTParser.anonymous>, <ASTParser.anonymous>89</ASTParser.anonymous>, <ASTParser.anonymous>97</ASTParser.anonymous>, <ASTParser.anonymous>98</ASTParser.anonymous>, <ASTParser.anonymous>99</ASTParser.anonymous>, <ASTParser.anonymous>100</ASTParser.anonymous>, <ASTParser.anonymous>101</ASTParser.anonymous>, <ASTParser.anonymous>102</ASTParser.anonymous>, <ASTParser.anonymous>103</ASTParser.anonymous>, <ASTParser.anonymous>104</ASTParser.anonymous>, <ASTParser.anonymous>105</ASTParser.anonymous>, <ASTParser.anonymous>106</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_m_arg_IN_mac_args_2962 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>, <ASTParser.anonymous>50</ASTParser.anonymous>, <ASTParser.anonymous>52</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_source_expression_IN_m_arg_2997 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>, <ASTParser.anonymous>31</ASTParser.anonymous>, <ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>49</ASTParser.anonymous>, <ASTParser.anonymous>50</ASTParser.anonymous>, <ASTParser.anonymous>54</ASTParser.anonymous>, <ASTParser.anonymous>55</ASTParser.anonymous>, <ASTParser.anonymous>89</ASTParser.anonymous>, <ASTParser.anonymous>97</ASTParser.anonymous>, <ASTParser.anonymous>98</ASTParser.anonymous>, <ASTParser.anonymous>99</ASTParser.anonymous>, <ASTParser.anonymous>100</ASTParser.anonymous>, <ASTParser.anonymous>101</ASTParser.anonymous>, <ASTParser.anonymous>102</ASTParser.anonymous>, <ASTParser.anonymous>103</ASTParser.anonymous>, <ASTParser.anonymous>104</ASTParser.anonymous>, <ASTParser.anonymous>105</ASTParser.anonymous>, <ASTParser.anonymous>106</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_macro_expansion_IN_source_expression_3065 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_concatenate_IN_source_expression_3093 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_STRINGIFICATION_IN_source_expression_3107 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_IDENTIFIER_IN_source_expression_3109 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_primary_source_IN_source_expression_3136 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_STRING_OP_IN_source_expression_3150 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_SIZEOF_IN_source_expression_3164 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_LPAREN_IN_source_expression_3178 = Set[<ASTParser.anonymous>31</ASTParser.anonymous>, <ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>49</ASTParser.anonymous>, <ASTParser.anonymous>50</ASTParser.anonymous>, <ASTParser.anonymous>51</ASTParser.anonymous>, <ASTParser.anonymous>52</ASTParser.anonymous>, <ASTParser.anonymous>54</ASTParser.anonymous>, <ASTParser.anonymous>55</ASTParser.anonymous>, <ASTParser.anonymous>89</ASTParser.anonymous>, <ASTParser.anonymous>97</ASTParser.anonymous>, <ASTParser.anonymous>98</ASTParser.anonymous>, <ASTParser.anonymous>99</ASTParser.anonymous>, <ASTParser.anonymous>100</ASTParser.anonymous>, <ASTParser.anonymous>101</ASTParser.anonymous>, <ASTParser.anonymous>102</ASTParser.anonymous>, <ASTParser.anonymous>103</ASTParser.anonymous>, <ASTParser.anonymous>104</ASTParser.anonymous>, <ASTParser.anonymous>105</ASTParser.anonymous>, <ASTParser.anonymous>106</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_mac_args_IN_source_expression_3180 = Set[<ASTParser.anonymous>51</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_RPAREN_IN_source_expression_3183 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_SEMICOLON_IN_source_expression_3206 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_TEXT_END_IN_source_expression_3220 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_WS_IN_source_expression_3234 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_primary_source_IN_concatenate_3259 = Set[<ASTParser.anonymous>50</ASTParser.anonymous>, <ASTParser.anonymous>104</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_WS_IN_concatenate_3262 = Set[<ASTParser.anonymous>104</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_SHARPSHARP_IN_concatenate_3265 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>50</ASTParser.anonymous>, <ASTParser.anonymous>54</ASTParser.anonymous>, <ASTParser.anonymous>55</ASTParser.anonymous>, <ASTParser.anonymous>97</ASTParser.anonymous>, <ASTParser.anonymous>98</ASTParser.anonymous>, <ASTParser.anonymous>99</ASTParser.anonymous>, <ASTParser.anonymous>100</ASTParser.anonymous>, <ASTParser.anonymous>104</ASTParser.anonymous>, <ASTParser.anonymous>105</ASTParser.anonymous>, <ASTParser.anonymous>106</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_WS_IN_concatenate_3268 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>54</ASTParser.anonymous>, <ASTParser.anonymous>55</ASTParser.anonymous>, <ASTParser.anonymous>97</ASTParser.anonymous>, <ASTParser.anonymous>98</ASTParser.anonymous>, <ASTParser.anonymous>99</ASTParser.anonymous>, <ASTParser.anonymous>100</ASTParser.anonymous>, <ASTParser.anonymous>104</ASTParser.anonymous>, <ASTParser.anonymous>105</ASTParser.anonymous>, <ASTParser.anonymous>106</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_primary_source_IN_concatenate_3273 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>, <ASTParser.anonymous>50</ASTParser.anonymous>, <ASTParser.anonymous>104</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_SHARPSHARP_IN_primary_source_3309 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>50</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_WS_IN_primary_source_3311 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_IDENTIFIER_IN_primary_source_3315 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_IDENTIFIER_IN_primary_source_3337 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_constant_IN_primary_source_3351 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_CKEYWORD_IN_primary_source_3365 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_COPERATOR_IN_primary_source_3379 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_source_text_IN_macro_text_6146 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>, <ASTParser.anonymous>31</ASTParser.anonymous>, <ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>49</ASTParser.anonymous>, <ASTParser.anonymous>50</ASTParser.anonymous>, <ASTParser.anonymous>51</ASTParser.anonymous>, <ASTParser.anonymous>52</ASTParser.anonymous>, <ASTParser.anonymous>54</ASTParser.anonymous>, <ASTParser.anonymous>55</ASTParser.anonymous>, <ASTParser.anonymous>89</ASTParser.anonymous>, <ASTParser.anonymous>97</ASTParser.anonymous>, <ASTParser.anonymous>98</ASTParser.anonymous>, <ASTParser.anonymous>99</ASTParser.anonymous>, <ASTParser.anonymous>100</ASTParser.anonymous>, <ASTParser.anonymous>101</ASTParser.anonymous>, <ASTParser.anonymous>102</ASTParser.anonymous>, <ASTParser.anonymous>103</ASTParser.anonymous>, <ASTParser.anonymous>104</ASTParser.anonymous>, <ASTParser.anonymous>105</ASTParser.anonymous>, <ASTParser.anonymous>106</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_DEFINE_IN_synpred14_Cpp_611 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_IDENTIFIER_IN_synpred14_Cpp_617 = Set[<ASTParser.anonymous>49</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_LPAREN_IN_synpred14_Cpp_620 = Set[<ASTParser.anonymous>50</ASTParser.anonymous>, <ASTParser.anonymous>51</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_WS_IN_synpred14_Cpp_627 = Set[<ASTParser.anonymous>51</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_RPAREN_IN_synpred14_Cpp_634 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>, <ASTParser.anonymous>31</ASTParser.anonymous>, <ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>49</ASTParser.anonymous>, <ASTParser.anonymous>50</ASTParser.anonymous>, <ASTParser.anonymous>51</ASTParser.anonymous>, <ASTParser.anonymous>52</ASTParser.anonymous>, <ASTParser.anonymous>54</ASTParser.anonymous>, <ASTParser.anonymous>55</ASTParser.anonymous>, <ASTParser.anonymous>89</ASTParser.anonymous>, <ASTParser.anonymous>97</ASTParser.anonymous>, <ASTParser.anonymous>98</ASTParser.anonymous>, <ASTParser.anonymous>99</ASTParser.anonymous>, <ASTParser.anonymous>100</ASTParser.anonymous>, <ASTParser.anonymous>101</ASTParser.anonymous>, <ASTParser.anonymous>102</ASTParser.anonymous>, <ASTParser.anonymous>103</ASTParser.anonymous>, <ASTParser.anonymous>104</ASTParser.anonymous>, <ASTParser.anonymous>105</ASTParser.anonymous>, <ASTParser.anonymous>106</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_macro_text_IN_synpred14_Cpp_637 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_DEFINE_IN_synpred22_Cpp_658 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_IDENTIFIER_IN_synpred22_Cpp_662 = Set[<ASTParser.anonymous>49</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_LPAREN_IN_synpred22_Cpp_665 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>50</ASTParser.anonymous>, <ASTParser.anonymous>51</ASTParser.anonymous>, <ASTParser.anonymous>53</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_WS_IN_synpred22_Cpp_667 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>51</ASTParser.anonymous>, <ASTParser.anonymous>53</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_macro_param_IN_synpred22_Cpp_673 = Set[<ASTParser.anonymous>50</ASTParser.anonymous>, <ASTParser.anonymous>51</ASTParser.anonymous>, <ASTParser.anonymous>52</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_WS_IN_synpred22_Cpp_675 = Set[<ASTParser.anonymous>51</ASTParser.anonymous>, <ASTParser.anonymous>52</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_COMMA_IN_synpred22_Cpp_679 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>50</ASTParser.anonymous>, <ASTParser.anonymous>53</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_WS_IN_synpred22_Cpp_681 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>50</ASTParser.anonymous>, <ASTParser.anonymous>53</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_macro_param_IN_synpred22_Cpp_686 = Set[<ASTParser.anonymous>50</ASTParser.anonymous>, <ASTParser.anonymous>51</ASTParser.anonymous>, <ASTParser.anonymous>52</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_WS_IN_synpred22_Cpp_688 = Set[<ASTParser.anonymous>50</ASTParser.anonymous>, <ASTParser.anonymous>51</ASTParser.anonymous>, <ASTParser.anonymous>52</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_RPAREN_IN_synpred22_Cpp_695 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>, <ASTParser.anonymous>31</ASTParser.anonymous>, <ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>49</ASTParser.anonymous>, <ASTParser.anonymous>50</ASTParser.anonymous>, <ASTParser.anonymous>51</ASTParser.anonymous>, <ASTParser.anonymous>52</ASTParser.anonymous>, <ASTParser.anonymous>54</ASTParser.anonymous>, <ASTParser.anonymous>55</ASTParser.anonymous>, <ASTParser.anonymous>89</ASTParser.anonymous>, <ASTParser.anonymous>97</ASTParser.anonymous>, <ASTParser.anonymous>98</ASTParser.anonymous>, <ASTParser.anonymous>99</ASTParser.anonymous>, <ASTParser.anonymous>100</ASTParser.anonymous>, <ASTParser.anonymous>101</ASTParser.anonymous>, <ASTParser.anonymous>102</ASTParser.anonymous>, <ASTParser.anonymous>103</ASTParser.anonymous>, <ASTParser.anonymous>104</ASTParser.anonymous>, <ASTParser.anonymous>105</ASTParser.anonymous>, <ASTParser.anonymous>106</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_macro_text_IN_synpred22_Cpp_698 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_SIZEOF_IN_synpred65_Cpp_2039 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>49</ASTParser.anonymous>, <ASTParser.anonymous>54</ASTParser.anonymous>, <ASTParser.anonymous>55</ASTParser.anonymous>, <ASTParser.anonymous>73</ASTParser.anonymous>, <ASTParser.anonymous>82</ASTParser.anonymous>, <ASTParser.anonymous>83</ASTParser.anonymous>, <ASTParser.anonymous>84</ASTParser.anonymous>, <ASTParser.anonymous>87</ASTParser.anonymous>, <ASTParser.anonymous>88</ASTParser.anonymous>, <ASTParser.anonymous>89</ASTParser.anonymous>, <ASTParser.anonymous>90</ASTParser.anonymous>, <ASTParser.anonymous>91</ASTParser.anonymous>, <ASTParser.anonymous>92</ASTParser.anonymous>, <ASTParser.anonymous>97</ASTParser.anonymous>, <ASTParser.anonymous>98</ASTParser.anonymous>, <ASTParser.anonymous>99</ASTParser.anonymous>, <ASTParser.anonymous>100</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_unary_expression_IN_synpred65_Cpp_2042 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_SIZEOF_IN_synpred66_Cpp_2064 = Set[<ASTParser.anonymous>49</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_LPAREN_IN_synpred66_Cpp_2067 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_type_name_IN_synpred66_Cpp_2069 = Set[<ASTParser.anonymous>51</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_RPAREN_IN_synpred66_Cpp_2071 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_LPAREN_IN_synpred75_Cpp_2427 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_type_name_IN_synpred75_Cpp_2429 = Set[<ASTParser.anonymous>51</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_RPAREN_IN_synpred75_Cpp_2431 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>49</ASTParser.anonymous>, <ASTParser.anonymous>54</ASTParser.anonymous>, <ASTParser.anonymous>55</ASTParser.anonymous>, <ASTParser.anonymous>73</ASTParser.anonymous>, <ASTParser.anonymous>82</ASTParser.anonymous>, <ASTParser.anonymous>83</ASTParser.anonymous>, <ASTParser.anonymous>84</ASTParser.anonymous>, <ASTParser.anonymous>87</ASTParser.anonymous>, <ASTParser.anonymous>88</ASTParser.anonymous>, <ASTParser.anonymous>89</ASTParser.anonymous>, <ASTParser.anonymous>90</ASTParser.anonymous>, <ASTParser.anonymous>91</ASTParser.anonymous>, <ASTParser.anonymous>92</ASTParser.anonymous>, <ASTParser.anonymous>97</ASTParser.anonymous>, <ASTParser.anonymous>98</ASTParser.anonymous>, <ASTParser.anonymous>99</ASTParser.anonymous>, <ASTParser.anonymous>100</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_unary_expression_IN_synpred75_Cpp_2434 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_STAR_IN_synpred78_Cpp_2528 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_IDENTIFIER_IN_synpred78_Cpp_2537 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_IDENTIFIER_IN_synpred82_Cpp_2609 = Set[<ASTParser.anonymous>49</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_LPAREN_IN_synpred82_Cpp_2611 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_IDENTIFIER_IN_synpred83_Cpp_2626 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_source_expression_IN_synpred92_Cpp_2812 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_LPAREN_IN_synpred94_Cpp_2832 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_IDENTIFIER_IN_synpred98_Cpp_2871 = Set[<ASTParser.anonymous>49</ASTParser.anonymous>, <ASTParser.anonymous>50</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_WS_IN_synpred98_Cpp_2873 = Set[<ASTParser.anonymous>49</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_LPAREN_IN_synpred98_Cpp_2876 = Set[<ASTParser.anonymous>50</ASTParser.anonymous>, <ASTParser.anonymous>51</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_WS_IN_synpred98_Cpp_2878 = Set[<ASTParser.anonymous>51</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_RPAREN_IN_synpred98_Cpp_2881 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_WS_IN_synpred100_Cpp_2907 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_WS_IN_synpred103_Cpp_2957 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_source_expression_IN_synpred105_Cpp_2997 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_source_expression_IN_synpred106_Cpp_2997 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>, <ASTParser.anonymous>31</ASTParser.anonymous>, <ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>49</ASTParser.anonymous>, <ASTParser.anonymous>50</ASTParser.anonymous>, <ASTParser.anonymous>54</ASTParser.anonymous>, <ASTParser.anonymous>55</ASTParser.anonymous>, <ASTParser.anonymous>89</ASTParser.anonymous>, <ASTParser.anonymous>97</ASTParser.anonymous>, <ASTParser.anonymous>98</ASTParser.anonymous>, <ASTParser.anonymous>99</ASTParser.anonymous>, <ASTParser.anonymous>100</ASTParser.anonymous>, <ASTParser.anonymous>101</ASTParser.anonymous>, <ASTParser.anonymous>102</ASTParser.anonymous>, <ASTParser.anonymous>103</ASTParser.anonymous>, <ASTParser.anonymous>104</ASTParser.anonymous>, <ASTParser.anonymous>105</ASTParser.anonymous>, <ASTParser.anonymous>106</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_IDENTIFIER_IN_synpred108_Cpp_3055 = Set[<ASTParser.anonymous>49</ASTParser.anonymous>, <ASTParser.anonymous>50</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_WS_IN_synpred108_Cpp_3057 = Set[<ASTParser.anonymous>49</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_LPAREN_IN_synpred108_Cpp_3060 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_primary_source_IN_synpred110_Cpp_3080 = Set[<ASTParser.anonymous>50</ASTParser.anonymous>, <ASTParser.anonymous>104</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_WS_IN_synpred110_Cpp_3083 = Set[<ASTParser.anonymous>104</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_SHARPSHARP_IN_synpred110_Cpp_3086 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_primary_source_IN_synpred112_Cpp_3136 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_mac_args_IN_synpred115_Cpp_3180 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_WS_IN_synpred121_Cpp_3262 = Set[<ASTParser.anonymous>104</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_SHARPSHARP_IN_synpred121_Cpp_3265 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>50</ASTParser.anonymous>, <ASTParser.anonymous>54</ASTParser.anonymous>, <ASTParser.anonymous>55</ASTParser.anonymous>, <ASTParser.anonymous>97</ASTParser.anonymous>, <ASTParser.anonymous>98</ASTParser.anonymous>, <ASTParser.anonymous>99</ASTParser.anonymous>, <ASTParser.anonymous>100</ASTParser.anonymous>, <ASTParser.anonymous>104</ASTParser.anonymous>, <ASTParser.anonymous>105</ASTParser.anonymous>, <ASTParser.anonymous>106</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_WS_IN_synpred121_Cpp_3268 = Set[<ASTParser.anonymous>48</ASTParser.anonymous>, <ASTParser.anonymous>54</ASTParser.anonymous>, <ASTParser.anonymous>55</ASTParser.anonymous>, <ASTParser.anonymous>97</ASTParser.anonymous>, <ASTParser.anonymous>98</ASTParser.anonymous>, <ASTParser.anonymous>99</ASTParser.anonymous>, <ASTParser.anonymous>100</ASTParser.anonymous>, <ASTParser.anonymous>104</ASTParser.anonymous>, <ASTParser.anonymous>105</ASTParser.anonymous>, <ASTParser.anonymous>106</ASTParser.anonymous>]
    </ASTParser.anonymous><ASTParser.anonymous>TOKENS_FOLLOWING_primary_source_IN_synpred121_Cpp_3273 = Set[<ASTParser.anonymous>1</ASTParser.anonymous>]
    </ASTParser.anonymous></Ruby.parserBody>
  end # class <if(grammar.grammarIsRoot)_subtemplate>Parser</if(grammar.grammarIsRoot)_subtemplate> < ANTLR3::Parser
  <if(!actions.(actionScope).main)_subtemplate>
  at_exit { <if(grammar.grammarIsRoot)_subtemplate>Parser</if(grammar.grammarIsRoot)_subtemplate>.main(ARGV) } if __FILE__ == $0</if(!actions.(actionScope).main)_subtemplate></Ruby.parser>
  <Ruby.placeAction></Ruby.placeAction>end</Ruby.rootGrammarOutputFile></if(recognizer.grammar.grammarIsRoot)_subtemplate>
<Ruby.placeAction></Ruby.placeAction>
</Ruby.outputFile>