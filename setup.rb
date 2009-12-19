#!/usr/bin/env ruby
# encoding: utf-8
require 'rbconfig'

Dir.chdir File.dirname( __FILE__ )

def command?( name )
  sep = Config::CONFIG.fetch( "PATH_SEPARATOR", ':' )
  ENV[ "PATH" ].split( sep ).find do | dir |
    test( ?x, File.join( dir, name ) )
  end
end

def sh( command )
  puts command
  system( command ) or
    block_given? ? yield( command, $? ) :
    fail("command `#{command}' failed with status #{ $?.exitstatus }")
end

sh "git submodule init"
sh "git submodule update vendor/bundler" do | cmd, status |
  if test( ?d, 'vendor/bundler' )
    Dir.chdir( 'vendor/bundler' ) do
      sh 'git reset --hard'
    end
  else
    fail("command `#{cmd}' failed with status #{ status.exitstatus }")
  end
end
sh "ruby scripts/gem-bundle.rb"

if command?( "less" ) and $stdout.tty?
  sh "less DEVELOPER-README.txt"
else
  puts File.read( 'DEVELOPER-README.txt' )
end
