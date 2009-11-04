#!/usr/bin/ruby
# encoding: utf-8


class GroupParser
options no_result_var
rule
  group               : group_declaration members { @group }
  
  group_declaration   : GROUP ID SEMICOLON { @group.name = val[1].text }
                      | GROUP ID group_properties SEMICOLON { @group.name = val[1].text }
  
  group_properties    : supergroup 
                      | supergroup implements
                      | implements
  
  supergroup          : COLON ID { @group.supergroup = val[1].text }
  
  implements          : IMPLEMENTS interface_list

  interface_list      : ID { @group.interfaces << val[0].text }
                      | interface_list COMMA ID {
                          @group.interfaces << val[2].text
                        }
  
  members             : member
                      | members member 
  
  member              : template { add! }
                      | non_template_member { add! }
  
  template            : name OPEN_P { template! }
                        CLOSE_P DEFINE template_text {
                          @member.name       = val[0]
                          val[6]
                        }
                      | name OPEN_P { template! }
                        parameter_list CLOSE_P DEFINE template_text {
                          @member.name       = val[0]
                          val[6]
                        }
  
  name                : ID {
                          @start = val[0].index
                          val[0].text
                        }
                      | AT ID DOT ID {
                          @start = val[0].index
                          val[0,4].map { |tk| tk.text }.join('')
                        }
                        
  alias_name          : ID {
                          @finish = val[0].index
                          val[0].text
                        }
                      | AT ID DOT ID {
                          @finish = val[3].index
                          val[0,4].map { |tk| tk.text }.join('')
                        }
  
  parameter_list      : parameter
                      | parameter COMMA parameter_list
  
  parameter           : ID { @member.parameter!(val[0].text) }
                      | ID ASSIGN STRING {
                          name = val[0].text; value = val[2].text
                          @member.parameter!(name, string_literal(value))
                        }
                      | ID ASSIGN ANONYMOUS_TEMPLATE {
                          name = val[0].text; value = val[2].text
                          @member.parameter!(name, string_literal(value))
                        }
  
  template_text       : BIG_STRING {
                          @finish = val[0].index
                          val[0]
                        }
                      | STRING     {
                          @finish = val[0].index
                          val[0].text
                        }
  
  non_template_member : name DEFINE { type_map! } map {
                          @member.name = val[0]
                        }
                      | name DEFINE alias_name {
                          alias!(val[0], val[2])
                        }
  
  map                 : OPEN_B CLOSE_B  { @finish = val[1].index }
                      | OPEN_B default_pair CLOSE_B { @finish = val[2].index }
                      | OPEN_B key_pairs CLOSE_B { @finish = val[2].index }
                      | OPEN_B key_pairs COMMA default_pair CLOSE_B { @finish = val[4].index }
  
  key_pairs           : key_pair
                      | key_pairs COMMA key_pair
  
  key_pair            : STRING COLON key_value {
                          @member.pair! string_literal(val[0]), val[2]
                        }
  
  default_pair        : DEFAULT COLON key_value { @member.default = val[2] }
  
  key_value           : STRING     { string_literal val[0] }
                      | BIG_STRING { string_literal val[0] }
                      | ID
                      |

---- header
#!/usr/bin/ruby
# encoding: utf-8


module StringTemplate
  class GroupLexer < Lexer::CommonLexer
    keyword('group')
    keyword('implements')
    keyword('default')
    
    rule(:SPACE, /\s+/, :channel => :hidden)
    
    rule(:ID, /[a-z_]\w*/i)
    
    rule(:DEFINE, '::=')
    rule(:COLON, ':')
    rule(:ASSIGN, '=')
    rule(:SEMICOLON, ';')
    rule(:COMMA, ',')
    
    rule(:OPEN_B, '[')
    rule(:CLOSE_B, ']')
    rule(:OPEN_P, '(')
    rule(:CLOSE_P, ')')
    rule(:AT, '@')
    rule(:DOT, '.')
    
    delimited(:BIG_STRING, '<<', '>>')
    delimited(:STRING, '"')
    delimited(:COMMENT, '/*', '*/')
    delimited(:COMMENT, '//', "\n")
    
    nested(:ANONYMOUS_TEMPLATE, '{', '}')
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
  @group = Group.new(file_name)
  @lexer = GroupLexer.new(source, :file => file_name)
  yyparse(self, :scan)
  @group.tokens.replace(@lexer.tokens(false))
  return @group
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
    if token.type == :COMMENT
      @group.add(Comment.new(token.index))
    else
      yield(token.type, token)
    end
  end
  yield(false, '$')
end

def template!
  @member = Template.new
end

def type_map!
  @member = TypeMap.new
end

def alias!(new, old)
  orig = @group.templates[old] or
    raise "attempt to alias unknown template %p as %p" % [old, new]
  @member = orig.alias! new
end

def add!
  @member.nil? and return nil
  @member.span = @start..@finish
  @group.add @member
  @start = @finish = @member = nil
end

def string_literal(text)
  text = text.dup
  if text =~ /\A<</
    text.gsub!(/\A<<\n?/, '')
    text.gsub!(/\n?>>\Z/, '')
  elsif text =~ /\A"/
    text.gsub!(/\A"/, '')
    text.gsub!(/"\Z/, '')
    text.gsub!(/\\"/, '"')
  end
  return text
end

---- footer
end

if __FILE__ == $0
end

