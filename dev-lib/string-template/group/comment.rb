#!/usr/bin/ruby
# encoding: utf-8

module StringTemplate
class Group
class Comment < Member
  def initialize(index)
    @span = index..index
  end
  
  def token
    tokens[0]
  end
  
  def doc_comment?
    source.start_with?("/**")
  end
  
  def to_s
    token.text
  end
end
end
end
