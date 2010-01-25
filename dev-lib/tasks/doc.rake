#!/usr/bin/ruby
# encoding: utf-8

=begin      ::about::
author:     Kyle Yetter <kcy5b@yahoo.com>
created on: January 25, 2010
purpose:    rake task
=end

require 'rake/rdoctask'

namespace :doc do
  desc( "" )
  task( :build ) do
    require 'rdoc/rdoc'
    arguments = %w( -N -d -o ) << $project
    RDoc.new.document( )
  end
  
  desc( "" )
  task( :ri ) do
    
  end
  
  
  Rake::RDocTask.new( 'rdoc' ) do | t |
    t.rdoc_files.include( 'lib/**/*.rb' )
    t.rdoc_dir = 'doc/rdoc'
  end
end
