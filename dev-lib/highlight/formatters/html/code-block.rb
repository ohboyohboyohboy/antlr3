#!/usr/bin/ruby
# encoding: utf-8

module Highlight
module Formatters
module HTML
class CodeBlock
  include Taggable
  
  attr_accessor :type, :id, :start_line, :number_lines
  attr_reader :lines
  
  def initialize(type, id, options = {})
    @type = type
    @id   = id
    @start_line = options.fetch(:start_line, 1)
    @number_lines = options.fetch(:number_lines, true)
    @lines = [ Line.new(0, self) ]
    yield(self) if block_given?
  end
  
  def add_token(type, text, options = nil, &b)
    @lines.last.add_token(type, text, options, &b)
    return self
  end
  
  def format_line_number(n)
    last_line = @start_line + @lines.length
    n.to_s.rjust(last_line.digits, '0')
  end
  
  def generate_id(suffix)
    "#@id-#{suffix}"
  end
  
  def to_s
    out = StringIO.new
    out.printf(%(<table %s id="%s">\n), class_attribute(@type), @id)
    for line in @lines
      out.puts(line.to_s(@number_lines).fixed_indent(2))
    end
    out.puts("</table>")
    return out.string
  end
  
  def token_classes
    types = Set.new
    for line in @lines
      for span in line
        types.add(span.type)
      end
    end
    return types
  end
  
  def stylesheet_template
    t = <<-END.fixed_indent(0)
      .#@type table {
          border-collapse: collapse;
          border: 1px solid black;
          margin: 0px;
          padding: 0px;
      }
      
      .#@type table .line_number {
          border-right: 1px solid black;
          border-left:  0px;
          border-top: 0px;
          border-bottom: 0px;
          margin: 0px;
          padding-left: 2px;
          padding-right: 2px;
          padding-top: 0px;
          padding-bottom: 0px;
      }
      
      .#@type table .code {
          margin: 0px;
          padding-left: 2px;
          padding-right: 2px;
          padding-top: 0px;
          padding-bottom: 0px;
      }
      
      .#@type pre {
          margin: 0px;
          padding: 0px;  
      }
      
    END
    for type in token_classes.to_a.sort
      t << ".#@type .#{type} {\n    \n}\n\n"
    end
    return t
  end
end
end
end
end
