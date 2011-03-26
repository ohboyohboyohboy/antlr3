#!/usr/bin/ruby
# encoding: utf-8

=begin      ::about::
author:     Kyle Yetter <kcy5b@yahoo.com>
created on: October 22, 2011
purpose:    (program | library | utility script | ?)
summary:    
loads:      files required by this
autoloads:  autoload entries in this (e.g. YAML(yaml))
=end

module ANTLR3

class UnicodeStream < StringStream
  PACK_MASK = 'U*'.freeze
  
  # creates a new StringStream object where +data+ is the string data to stream.
  # accepts the following options in a symbol-to-value hash:
  #
  # [:file or :name] the (file) name to associate with the stream; default: <tt>'(string)'</tt>
  # [:line] the initial line number; default: +1+
  # [:column] the initial column number; default: +0+
  # 
  def initialize( data, options = {} )    # for 1.8
    @string = data.to_s
    @string.equal?( data ) and @string = @string.clone
    @string.freeze
    @data = @string.unpack( PACK_MASK )
    @position = options.fetch :position, 0
    @line = options.fetch :line, 1
    @column = options.fetch :column, 0
    @markers = []
    @name ||= options[ :file ] || options[ :name ] # || '(string)'
    mark
  end
  
  #
  # identical to #peek, except it returns the character value as a String
  # 
  def look( k = 1 )                        # for 1.8
    k == 0 and return nil
    k += 1 if k < 0
    
    index = @position + k - 1
    index.between?( 0, @data.length - 1) or return nil
    
    @data[ index, 1 ].pack( PACK_MASK )
  end
  
  #
  # return a substring around the stream cursor at a distance +k+
  # if <tt>k >= 0</tt>, return the next k characters
  # if <tt>k < 0</tt>, return the previous <tt>|k|</tt> characters
  # 
  def through( k )
    if k >= 0 then @data[ @position, k ].pack( PACK_MASK ) else
      start = ( @position + k ).at_least( 0 ) # start cannot be negative or index will wrap around
      @data[ start ... @position ].pack( PACK_MASK )
    end
  end
  
  #
  # return the string slice between position +start+ and +stop+
  # 
  def substring( start, stop )
    @data[ start, stop - start + 1 ].pack( PACK_MASK )
  end
  
  
  #
  # identical to String#[]
  # 
  def []( start, *args )
    @data[ start, *args ].pack( PACK_MASK )
  end
  
end

end