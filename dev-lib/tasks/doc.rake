#!/usr/bin/ruby
# encoding: utf-8

=begin      ::about::
author:     Kyle Yetter <kcy5b@yahoo.com>
created on: January 25, 2010
purpose:    rake task
=end

require 'antlr3/task'

require 'yard'

namespace :doc do
  YARD::Rake::YardocTask.new( 'api' ) do | task |
    task.files.push( *$project.doc.files )
    task.options.push( '-o', $project.doc.yard, *$project.doc.options )
  end
  
  $project.load_task( 'guide' )
  
  samples = %w( CSS ANTLRv3Grammar Python CPP )
  ANTLR3::CompileTask.define( :name => 'samples' ) do | tasks |
    samples.each do | sample |
      file = "samples/#{ sample }.g"
      output_directory = "samples/#{ sample }"
      tasks.grammar_set( file, :output_directory => output_directory )
    end
  end
  
  desc( "trash any previous API documentation files" )
  task( :clobber => %w( clobber_guide ) ) do
    test( ?d, $project.doc.yard ) and rm_r( $project.doc.yard )
  end
  
  desc( "Force a complete rebuild of project documentation" )
  task( :rebuild => %w( clobber api ) )
end

desc( "make API documentation with YARD and compile the ANTLR sample files" )
task( :doc => %w( doc:api doc:guide doc:samples:compile ) )
