#!/usr/bin/ruby
# encoding: utf-8

class String
  def /(subpath)
    File.join(self, subpath.to_s)
  end

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

  # Indent left or right by n spaces.
  # (This used to be called #tab and aliased as #indent.)
  #
  #  CREDIT: Gavin Sinclair
  #  CREDIT: Trans

  def indent(n)
    if n >= 0
      gsub(/^/, ' ' * n)
    else
      gsub(/^ {0,#{-n}}/, "")
    end
  end

  # Outdent just indents a negative number of spaces.
  #
  #  CREDIT: Noah Gibbs

  def outdent(n)
    indent(-n)
  end
  
  # Returns the shortest length of leading whitespace for all non-blank lines
  #
  #   n = %Q(
  #     a = 3
  #       b = 4
  #   ).level_of_indent  #=> 2
  #
  #   CREDIT: Kyle Yetter
  def level_of_indent
    self.scan(/^ *(?=\S)/).map { |space| space.length }.min || 0
  end
  
  def fixed_indent(n)
    self.outdent(self.level_of_indent).indent(n)
  end
  
  # Provides a margin controlled string.
  #
  #   x = %Q{
  #         | This
  #         |   is
  #         |     margin controlled!
  #         }.margin
  #
  #
  #   NOTE: This may still need a bit of tweaking.
  #
  #  CREDIT: Trans

  def margin(n=0)
    #d = /\A.*\n\s*(.)/.match( self )[1]
    #d = /\A\s*(.)/.match( self)[1] unless d
    d = ((/\A.*\n\s*(.)/.match(self)) ||
        (/\A\s*(.)/.match(self)))[1]
    return '' unless d
    if n == 0
      gsub(/\n\s*\Z/,'').gsub(/^\s*[#{d}]/, '')
    else
      gsub(/\n\s*\Z/,'').gsub(/^\s*[#{d}]/, ' ' * n)
    end
  end


end
