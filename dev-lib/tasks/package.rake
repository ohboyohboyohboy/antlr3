#!/usr/bin/ruby
# encoding: utf-8

namespace :package do
  desc( "build the zip and gem packages" )
  task :build do
    require 'rubygems'
    require 'rubygems/user_interaction'
    require 'rubygems/builder'
    
    package = $project.package
    mkpath( package.base )
    
    zip = package.base( '$(name)-$(version).zip' )
    gem = package.base( '$(name)-$(version).gem' )
    
    file( package.dir => package.files ) do
      for f in package.files
        target = package.dir( f )
        if test( ?d, f )
          mkpath( target )
        else
          mkpath( File.dirname( target ) )
          test( ?e, target ) and rm( target )
          safe_ln( f, target )
        end
      end
      
      $project.generate_hoe( package.dir )
    end
    
    file( zip => [ package.dir ] ) do
      zip_base = File.basename( zip )
      dir_base = File.basename( package.dir )
      cd package.base do
        sh "zip -r #{ zip_base } #{ dir_base }"
      end
    end
    
    spec = $project.gem_spec
    file( gem => [ package.dir ] ) do
      dest = abs( package.base )
      cd( package.dir ) do
        Gem::Builder.new( spec ).build
        mv( File.basename( gem ), dest )
      end
    end
    
    run_task( zip )
    run_task( gem )
  end

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
