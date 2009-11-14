#!/usr/bin/ruby
# encoding: utf-8

class String
  
  def /(subpath)
    File.join(self, subpath.to_s)
  end
  
end
