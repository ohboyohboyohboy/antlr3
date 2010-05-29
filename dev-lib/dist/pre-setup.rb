#!/usr/bin/ruby
# encoding: utf-8

# establish 'irb'
# interact( binding )
#

source_antlr_rb = File.join( srcdir_root, 'antlr3.rb.pre' )
target_antlr_rb = File.join( srcdir_root, 'lib', 'antlr3.rb' )

data_path = File.join( config( 'data-dir' ), 'antlr4ruby' )
lib_path  = File.expand_path( config 'rbdir' ).to_s

path_constants = <<-END
  
  LIBRARY_PATH  = #{ lib_path.to_s.inspect  }.freeze
  PROJECT_PATH  = LIBRARY_PATH.clone
  DATA_PATH     = #{ data_path.to_s.inspect }.freeze
  
END

source = File.read( source_antlr_rb )
unless source.sub!( /^ *# *BEGIN +PATHS.*?\n *# *END +PATHS.*?\n/m, path_constants )
  warn( "unable to update path constants in lib/antlr3.rb -- antlr4ruby will not be able to automatically locate the antlr4ruby jar library" )
end

open( target_antlr_rb, 'w' ) { | f | f.write( source ) }
