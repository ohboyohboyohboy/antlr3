#!/usr/bin/ruby
# encoding: utf-8

module Highlight
module Formatters
module HTML
class Line < DelegateClass( Array )
  include Taggable
  
  TEMPLATE = ERB.new( <<-END.here_indent!, $SAFE, '%' )
  | <tr class="code_line" id="<%= id %>">
  | % if with_numbers
  |   <td <%= class_attribute('line_number', alt_tag) %>><pre><%= n = number and @group.format_line_number(number) %></pre></td>
  | % end
  |   <td <%= class_attribute('code') %>><pre><% for span in self %><%= span %><% end %></pre></td>
  | </tr>
  END
  attr_reader :group, :offset
  
  def initialize( n, group )
    super( [] )
    @group = group
    @offset = n
  end
  
  def number
    @offset and @group.start_line + @offset
  end
  
  def number=( v )
    @offset = v.nil? ? v : v.to_i - @group.start_line
  end
  
  def alt_tag
    n = number and ( n % 2 ).zero? ? 'even' : 'odd'
  end
  
  def add_token( type, text, options = nil, &b )
    text = text.to_s
    if text.empty? then return
    elsif text =~ /\r?\n/
      my_text, next_text = $`, $'
      add_span( type, my_text, options, &b )
      continue_line.add_token( type, next_text, options, &b )
    else
      add_span( type, text, options, &b )
    end
  end
  
  def to_s( with_numbers = true )
    TEMPLATE.result( binding )
  end
  
  def id
    @group.generate_id( number )
  end
  
protected
  def add_span( type, text, options )
    span = TokenSpan.new( @group, type, text, options )
    block_given? and yield( span )
    self << span
    return span
  end
  
  def continue_line
    @group.lines[ @offset + 1 ] ||= Line.new( @offset + 1, @group )
  end
end
end
end
end
