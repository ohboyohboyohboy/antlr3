#!/usr/bin/ruby
# encoding: utf-8

module Highlight
module Formatters
module HTML
class TokenSpan
  include Taggable
  attr_accessor :type, :text, :link, :attributes
  
  def []=(name, value)
    @attributes ||= {}
    @attributes[name.to_s] = value ? value.to_s : value
  end
  
  def [](name)
    @attributes ? @attributes[name.to_s] : nil
  end
  
  def initialize(group, type, text, options = nil)
    @group = group
    @type = type
    @text = text
    if options
      @link = options.delete(:link)
      @attributes = options
    end
  end
  
  def to_s
    t = ''
    @link and t << anchor
    t << %(<span #{attribute_string}>#{escape(@text)}</span>)
    @link and t << '</a>'
    return t
  end
  
private
  def attribute_string
    t = class_attribute(@type)
    @attributes and @attributes.each do |name, value|
      value and t << %( #{name}=%p) % value.to_s
    end
    return t
  end
  
  def anchor
    line_id = @group.generate_id(@link)
    %(<a href="##{line_id}">)
  end
  
  def escape(text)
    text = CGI.escapeHTML(text.to_s)
    text.gsub!(/ /, '&nbsp;')
    return text
  end
end
end
end
end
