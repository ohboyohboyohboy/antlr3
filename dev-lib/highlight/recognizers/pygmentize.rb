#!/usr/bin/ruby
# encoding: utf-8

require 'open3'
require 'antlr3'

class Pygmentize
  const_defined?(:TokenData) or TokenData = ANTLR3::TokenScheme.new
  
  token_names = %w(
    Token.Comment Token.Comment.Multiline Token.Comment.Preproc
    Token.Comment.Single Token.Comment.Special Token.Error Token.Generic
    Token.Generic.Deleted Token.Generic.Emph Token.Generic.Error
    Token.Generic.Heading Token.Generic.Inserted Token.Generic.Output
    Token.Generic.Prompt Token.Generic.Strong Token.Generic.Subheading
    Token.Generic.Traceback Token.Keyword Token.Keyword.Constant
    Token.Keyword.Declaration Token.Keyword.Pseudo Token.Keyword.Reserved
    Token.Keyword.Type Token.Literal Token.Literal.Date Token.Literal.Number
    Token.Literal.Number.Float Token.Literal.Number.Hex Token.Literal.Number.Integer
    Token.Literal.Number.Integer.Long Token.Literal.Number.Oct Token.Literal.String
    Token.Literal.String.Backtick Token.Literal.String.Char Token.Literal.String.Doc
    Token.Literal.String.Double Token.Literal.String.Escape
    Token.Literal.String.Heredoc Token.Literal.String.Interpol
    Token.Literal.String.Other Token.Literal.String.Regex
    Token.Literal.String.Single Token.Literal.String.Symbol Token.Name
    Token.Name.Attribute Token.Name.Builtin Token.Name.Builtin.Pseudo
    Token.Name.Class Token.Name.Constant Token.Name.Decorator Token.Name.Entity
    Token.Name.Exception Token.Name.Function Token.Name.Label Token.Name.Namespace
    Token.Name.Other Token.Name.Property Token.Name.Tag Token.Name.Variable
    Token.Name.Variable.Class Token.Name.Variable.Global
    Token.Name.Variable.Instance Token.Operator Token.Operator.Word Token.Other
    Token.Punctuation Token.Text Token.Text.Whitespace
  )
  
  token_class_names = %w(
    c cm cp c1 cs err g gd ge gr gh gi go gp gs gu gt k kc kd kp kr kt l ld m mf
    mh mi il mo s sb sc sd s2 se sh si sx sr s1 ss n na nb bp nc no nd ni ne nf nl
    nn nx py nt nv vc vg vi o ow x p tx w
  )
  
  PYGMENTIZE_MAP = {}
  
  token_names.each_with_index do |type_name, i|
    value = ANTLR3::MIN_TOKEN_TYPE + i
    PYGMENTIZE_MAP[type_name] = value
    TokenData.define_token(:"T__#{value}", value)
  end
  TokenData.register_names(*token_class_names)
  
  include Open3
  include TokenData
  include ANTLR3::TokenSource
  
  def initialize(lang, options = {})
    @lang = lang
    @tokens = []
    @buffer = StringIO.new
    source = options[:source] and lex(source, options)
  end
  
  def lex(source, options = {})
    @line = options.fetch(:line, 1)
    @column = options.fetch(:column, 0)
    @position = 0
    popen3("pygmentize -l #@lang -f raw") do |inp, out, err|
      inp.write(source)
      inp.close
      read_tokens(out)
      out.close
      err.close
    end
    return self
  end
  
  def reset
    @tokens.clear
    @buffer.string = ''
    @buffer.rewind
  end
  
  def next_token
    @tokens.shift
  end
  
private
  
  def read_tokens(pipe)
    while token_line = pipe.gets
      token_line.chomp!
      type, text = token_line.split("\t", 2)
      @tokens << create_token(type, text)
    end
  end
  
  def create_token(type, text)
    type = PYGMENTIZE_MAP[type]
    text = parse_python_string(text)
    line, column, position = @line, @column, @position
    
    if tail = text.rindex(?\n)
      @column = text.length - tail - 1
      @line += text.count("\n")
    else
      @column += text.length
    end
    @position += text.length
    
    Token.new(type, ANTLR3::DEFAULT_CHANNEL, text, nil, position, @position - 1, -1, line, column)
  end
  
  def parse_python_string(pystr)
    case pystr
    when /^u(['"])(.*)\1$/
      buffer($2)
      out = ''
      loop { out << char }
      return out
    else
      raise(TypeError, "unhandled python string format: %s" % pystr)
    end
  end
  
  def buffer(text)
    @buffer.string = text.to_s
    @buffer.rewind
  end
  
  def char
    c = @buffer.getc or raise StopIteration
    return(c == ?\\ ? escape : c)
  end

  ESCAPE_MAP = Array.new(256) { |i| i }
  ESCAPE_MAP[?n] = ?\n
  ESCAPE_MAP[?f] = ?\f
  ESCAPE_MAP[?r] = ?\r
  ESCAPE_MAP[?t] = ?\t
  ESCAPE_MAP[?v] = ?\v
  ESCAPE_MAP[?a] = ?\a
  ESCAPE_MAP[?b] = ?\b
  ESCAPE_MAP[?O] = 0
  ESCAPE_MAP[?u] = nil
  ESCAPE_MAP[?x] = nil
  ESCAPE_MAP[?U] = nil
  ?0.upto(?9) { |i| ESCAPE_MAP[i] = nil }
  
  def escape
    c = @buffer.getc or raise StopIteration
    val = ESCAPE_MAP[c] and return val
    case c
    when ?0..?9
      @buffer.ungetc(c)
      @buffer.read(3).to_i(8)
    when ?x
      @buffer.read(2).to_i(16)
    when ?u
      raise NotImplementedError, "have not implemented unicode interpretation yet: %p" % @buffer.string
    end
  end
end
