#!/usr/bin/ruby
# encoding: utf-8

module StringTemplate

module CodeObject
  include LoFiLexer::Locatable
  
  def tokens
    @tokens ||= []
  end
  
  def location
    tokens.first
  end
  
  def source
    tokens.join('')
  end
end

end