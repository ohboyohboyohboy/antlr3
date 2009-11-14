#!/usr/bin/ruby
# encoding: utf-8

class String
  def here_indent(chr = '| ')
    dup.here_indent!(chr)
  end
  def here_indent!(chr = '| ')
    chr = Regexp.escape(chr)
    exp = Regexp.new("^ *#{chr}")
    self.gsub!(exp,'')
    return self
  end
  def here_flow(chr = '| ')
    dup.here_flow!(chr)
  end
  def here_flow!(chr = '| ')
    here_indent!(chr).gsub!(/\n\s+/,' ')
    return(self)
  end
  
end
