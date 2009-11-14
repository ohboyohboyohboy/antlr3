#!/usr/bin/ruby
# encoding: utf-8


class InterfaceParser
options no_result_var
rule
  interface             : interface_declaration members { @interface }
  
  interface_declaration : INTERFACE ID SEMICOLON { @interface.name = val[1].text }
  
  members               : member
                        | members member 
  
  member                : OPTIONAL ID { @spec = Interface::Specification.new(val[1], true) } parameters SEMICOLON { @interface.add(@spec) }
                        | ID { @spec = Interface::Specification.new(val[0]) } parameters SEMICOLON { @interface.add(@spec) }
  
  parameters            : OPEN_P CLOSE_P
                        | OPEN_P parameter_list CLOSE_P

  parameter_list        : ID { @spec.parameters << val[0] }
                        | ID { @spec.parameters << val[0] } COMMA parameter_list

---- header
#!/usr/bin/ruby
# encoding: utf-8


module StringTemplate
  class InterfaceLexer < Lexer::CommonLexer
    keyword('interface')
    keyword('optional')
    
    rule(:SPACE, /\s+/, :channel => :hidden)
    
    rule(:ID, /[a-z_]\w*/i)
    
    rule(:COLON, ':')
    rule(:SEMICOLON, ';')
    rule(:COMMA, ',')
    
    rule(:OPEN_P, '(')
    rule(:CLOSE_P, ')')
    
    delimited(:COMMENT, '/*', '*/', :channel => :hidden)
    delimited(:COMMENT, '//', "\n", :channel => :hidden)
  end
  
---- inner

class ParseError < Racc::ParseError
  attr_reader :file, :token, :input, :stack
  
  def initialize(input, token, stack)
    super("parse error on value %s(%p) @ %s" % [token.type, token.text, token.location])
    @input = input
    @token = token
    @stack = stack
  end
  
  def location; @token.location; end
  def text; @token.text; end
  def type; @token.type; end
  def file; location.file; end
  def line; location.line; end
  def column; location.column; end
  def position; location.position; end
  
  def source_range(width = 2)
    line_index = line - 1
    start  = line_index - width
    finish = line_index + width
    start < 0 and start = 0
    finish >= @input.length and finish = @input.length - 1
    
    digits = Math.log10(finish + 1).floor + 1
    
    @input[start..finish].each_with_index.map do |ln, i|
      ln_number = start + i + 1
      mask = ln_number == line ? "==> %#{digits}i | %s" : "    %#{digits}i | %s"
      mask % [ln_number, ln]
    end.join("\n")
  end
  
end


def parse(source, file_name = '(string)')
  @interface = Interface.new(file_name)
  @lexer = InterfaceLexer.new(source, :file => file_name)
  yyparse(self, :scan)
  @interface.tokens.replace(@lexer.tokens(false))
  return @interface
end

def on_error(type, token, stack)
  error = ParseError.new(@lexer.scanner.string.split(/\r?\n/), token, stack)
  raise(error)
end

def parse_file(path)
  test(?f, path = path.to_s) or
    raise ArgumentError, "%p is not an existing file" % path
  source = File.read(path)
  parse(source, path)
end

def scan
  @lexer.each do |token|
    yield(token.type, token)
  end
  yield(false, '$')
end


---- footer
end

if __FILE__ == $0
end

