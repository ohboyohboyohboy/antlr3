#!/usr/bin/ruby
# encoding: utf-8

=begin      ::about::
author:     Kyle Yetter <kcy5b@yahoo.com>
created on: January 25, 2010
purpose:    rake task set
=end

namespace :notes do
  desc( "find and list FIXME notes in the library and test source code")
  task :FIXME do
    require 'source-notes'
    color_map = { :tag => 'red', :text => 'yellow' }
    files = $project.package.files.select { |path| test( ?f, path ) }
    SourceNote.scan( 'FIXME', files ) do |note|
      puts( note.to_s( color_map ) )
    end
  end
  
  desc( "find and list TODO notes in the library and test source code")
  task :TODO do
    require 'source-notes'
    color_map = { :tag => 'magenta', :text => 'yellow' }
    files = $project.package.files.select { |path| test( ?f, path ) }
    SourceNote.scan( 'TODO', files ) do |note|
      puts( note.to_s( color_map ) )
    end
  end
  
  desc( "find and list notes with tag (like FIXME) provided by the tag argument")
  task :with_tag, [:tag] do |t, args|
    tag = args[ :tag ] or fail( "provide a tag argument" )
    
    require 'source-notes'
    color_map = { :tag => 'blue', :text => 'yellow' }
    files = $project.package.files.select { |path| test( ?f, path ) }
    
    SourceNote.scan( tag, files ) do |note|
      puts( note.to_s( color_map ) )
    end
  end
end

desc( "list both TODO and FIXME annotations in source code" )
task :notes do
  require 'source-notes'
  color_map = { :tag => 'magenta', :text => 'yellow' }
  files = $project.package.files.select { |path| test( ?f, path ) }
  tags = %w( TODO FIXME TO\ DO )
  SourceNote.scan( tags, files ) do |note|
    puts( note.to_s( color_map ) )
  end
end
