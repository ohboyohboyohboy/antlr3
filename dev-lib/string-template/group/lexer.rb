#!/usr/bin/ruby
# encoding: utf-8

module StringTemplate
class Group
class Lexer < LoFiLexer::CommonLexer
  keyword( 'group' )
  keyword( 'implements' )
  keyword( 'default' )
  
  rule( :SPACE, /\s+/, :channel => :hidden )
  
  rule( :ID, /[a-z_]\w*/i )
  
  rule( :DEFINE, '::=' )
  rule( :COLON, ':' )
  rule( :ASSIGN, '=' )
  rule( :SEMICOLON, ';' )
  rule( :COMMA, ',' )
  
  rule( :OPEN_B, '[' )
  rule( :CLOSE_B, ']' )
  rule( :OPEN_P, '(' )
  rule( :CLOSE_P, ')' )
  rule( :AT, '@' )
  rule( :DOT, '.' )
  
  delimited( :BIG_STRING, '<<', '>>' )
  delimited( :STRING, '"' )
  delimited( :COMMENT, '/*', '*/' )
  delimited( :COMMENT, '//', "\n" )
  
  nested( :ANONYMOUS_TEMPLATE, '{', '}' )
end
end
end
