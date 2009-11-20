#!/usr/bin/ruby
# encoding: utf-8

SourceNote = Struct.new( :tag, :file, :line, :text ) do
  def self.scan( tags, paths )
    block_given? or return enum_for( :scan, tags, paths )
    ( tags = [tags] ).flatten!
    tags = Regexp.union( *tags )
    tag_pattern = /\b(#{tags})\b:? *(.*?)$/o
    
    for path in paths
      open( path ) do | file |
        file.grep( tag_pattern ) do
          yield( SourceNote[ $1, File.relative_path( path ), file.lineno, $2 ] )
        end
      end
    end
  end

  def colorize( color_map )
    each_pair.map do | field, value |
      color = color_map[ field ]
      color ? value.to_s.send( color ) : value
    end
  end
  
  def to_s(color_map = nil)
    if color_map
      tag, file, line, text = colorize( color_map )
    end
    sprintf( "%s:%03i:%s: %s", file, line, tag, text )
  end
end
