#!/usr/bin/ruby
# encoding: utf-8

=begin      ::about::
author:     Kyle Yetter <kcy5b@yahoo.com>
created on: June 07, 2009
purpose:    (program | library | utility script | ?)
summary:    
loads:      files required by this
autoloads:  autoload entries in this (e.g. YAML(yaml))
=end

module StringTemplate
class TemplateLexer < Lexer::StatefulLexer
  
  state :text do
    
    rule      :INDENT, /^[ \t]+/
    rule      :NEWLINE, /\r?\n/
    rule      :TEXT,    /([^\\<\n\r]|\\.|\r(?!\n))+/m
    delimited :COMMENT, '<!', '!>', :channel => :comment
    rule      :SPACE_ESCAPE, /<\\[ntr ]>/
    rule      :UNICODE_ESCAPE, /<\\u[0-9A-F]{4}>/
    rule      :TAG_OPEN, '<', :push => :instruction
    
  end
  
  state :instruction do
    
    %w(first if last length rest strip trunc elseif else endif).each do |word|
      keyword(word)
    end
    delimited :SHORT_STRING, '"'
    delimited :LONG_STRING, '<<', '>>'
    rule :SEMICOLON, ';'
    rule :COLON, ':'
    rule :SET, '='
    rule :ELLIPSES, '...'
    rule :DOT, '.'
    rule :COMMA, ','
    rule :PLUS, '+'
    rule :BANG, '!'
    rule :ESCAPE, /\\./m
    rule :SPACE, /\s+/, :channel => :hidden
    rule :REGION, /@[a-zA-Z_]\w*/
    rule :ID, /[a-zA-Z_]\w*/i
    rule :BRACKET_OPEN, '[', :push => :instruction
    rule :BRACKET_CLOSE, ']', :pop => :instruction
    rule :PAREN_OPEN, '(', :push => :instruction
    rule :PAREN_CLOSE, ')', :pop => :instruction
    nested :SUBTEMPLATE,   '{', '}' do
      subtemplate!
    end
    rule   :TAG_CLOSE, '>', :pop => :text
    
  end
  

  def subtemplate!
    template_token = @emission_buffer.pop
    text = template_token.text
    @location = template_token.location
    emit_token(:BRACE_OPEN, text[0,1])
    sublexer =  SubtemplateLexer.new(text[1...-1], :location => @location)
    sublexer.lex!(false) do |token|
      token.index = @tokens.length + @emission_buffer.length
      @emission_buffer << token
    end
    @location = sublexer.location
    emit_token(:BRACE_CLOSE, text[-1, 1])
  end
end


class TemplateLexer::SubtemplateLexer < TemplateLexer
  state(:variable_declaration) do
    rule :SPACE, /\s+/, :channel => :hidden
    rule :ID, /[a-z_]\w*/i
    rule :COMMA, ','
    rule :BAR, '|', :go_to => :text
  end
  
  def initialize(text, options = {})
    super
    id = /[a-z_]\w*/i
    has_vars = @scanner.check(/^(\s*(?:#{id}\s*,\s*)*#{id}\s*\|)/)
    @start_state = has_vars ? fetch_state(:variable_declaration) :
                   fetch_state(:text)
  end
  
end
end
__END__

