#!/usr/bin/ruby
# encoding: utf-8

class String
  def here_indent!
    gsub!( /^[ \t]*\|[ \t]?/, '' )
    return( self )
  end
  
  def here_flow!
    here_indent!.gsub!(/\n\s+/,' ')
    return(self)
  end
end
