#!/usr/bin/ruby
# encoding: utf-8

=begin      ::about::
author:     Kyle Yetter <kcy5b@yahoo.com>
created on: January 25, 2010
purpose:    rake task
=end

require 'antlr3/task'
namespace :doc do
  task( :rdoc ) do
    require 'rdoc/rdoc'
    args = $project.doc.options + %w( -o ) << $project.doc.rdoc
    args.concat( $project.doc.files.to_a )
    RDoc::RDoc.new.document( args )
  end
  
  task( :ri ) do
    require 'rdoc/rdoc'
    args = %w( -r -o ) << $project.doc.ri
    args.concat( $project.doc.files.to_a )
    RDoc::RDoc.new.document( args )
  end
  
  samples = %w( CSS ANTLRv3Grammar Python CPP )
  ANTLR3::CompileTask.define( :name => 'samples' ) do | tasks |
    samples.each do | sample |
      file = "samples/#{ sample }.g"
      output_directory = "samples/#{ sample }"
      tasks.grammar_set( file, :output_directory => output_directory )
    end
  end
  
  desc( "generate project RDoc and RI files" )
  task( :build => %w( ri rdoc ) )
  
  desc( "trash any previous RDoc and RI files" )
  task( :clobber ) do
    rdoc_dir = $project.doc.rdoc
    ri_dir   = $project.doc.ri
    test( ?d, rdoc_dir ) and rm_r( rdoc_dir )
    test( ?d, ri_dir )   and rm_r( ri_dir )
  end
  
  desc( "Force a complete rebuild of project documentation" )
  task( :rebuild => %w( clobber build ) )
end

desc( "make RDoc, RI, and ANTLR sample files" )
task( :doc => %w( doc:rebuild doc:samples:compile ) )
