#!/usr/bin/ruby
# encoding: utf-8

module StringTemplate
class Group
class TemplateAlias < Template
  
  def initialize( template, name )
    @template = template
    @name = name
  end
  
  %w(parameters parameter! alias! body_token body body_location lex!).each do |m|
    class_eval( <<-END, __FILE__, __LINE__ + 1 )
    def #{ m }(*args)
      return @template.#{ m }(*args)
    end
    END
  end
  
end
end
end
