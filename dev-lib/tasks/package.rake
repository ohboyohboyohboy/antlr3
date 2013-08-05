#!/usr/bin/ruby
# encoding: utf-8

$package_targets = []
include RakeFileUtils

def package_task( config, &build_block )
  package       = $project.package
  pkg_file      = package.name + config.ext
  core_files    = $project.package.files
  transforms    = config.relocations
  all_files     = ( core_files + config.files ).to_a
  target        = package.base( pkg_file )
  
  config.target    = target
  config.file_name = pkg_file
  
  file( target => all_files ) do
    $project.package_skeleton( config.dir, core_files, config.files, transforms )
    result = config.instance_eval( &build_block )
    mv( result, target )
  end
  
  $package_targets << target
end

$project.package.files.each { | f |  file( f )  }

hoe_rakefile = 'dev-lib/dist/rakefile'
hoe_template = 'dev-lib/dist/rakefile.erb'
hoe_depends  = [ 
  hoe_template,
  'config/antlr3.yaml',
  'config/antlr3.rb'
]
hoe_depends.each { | f | file( f ) }

file( hoe_rakefile => hoe_depends ) do
  $project.process_template( hoe_template, hoe_rakefile )
end


namespace :package do
  
  package_task( $project.package.zip ) do
    parent, base = File.split( dir )
    Dir.chdir( parent ) do
      sh "zip -r #{ file_name } #{ base }"
      File.expand_path( file_name )
    end
  end
  
  package_task( $project.package.gem ) do
    require 'rubygems'
    require 'rubygems/package_task'
    require 'rubygems/builder'
    
    Dir.chdir( dir ) do
      Gem::PackageTask.new( $project.gem_spec ).define
      #Gem::Builder.new( $project.gem_spec ).build
      
      File.expand_path( file_name )
    end
  end

  desc( "build the zip and gem packages" )
  task :build => $package_targets

  desc( "trash the build files from the zip and gem packages" )
  task :clobber do
    rm_r( $project.package.base ) if test( ?d, $project.package.base )
  end
end

task :package => %w( package:build )

desc( "build the project gem and install it to the system" )
task( :install => %w( package ) ) do
  gem = $project.package.base( '$(name)-$(version).gem' ).to_s
  sh %(gem install #{ gem.inspect })
end
