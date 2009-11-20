#!/usr/bin/env ruby
# encoding: utf-8
require 'rbconfig'

def command?( name )
  sep = Config::CONFIG.fetch( "PATH_SEPARATOR", ':' )
  ENV[ "PATH" ].split( sep ).find do | dir |
    test( ?x, File.join( dir, name ) )
  end
end

def sh( command )
  puts command
  system( command ) or fail("command `#{command}' failed with status #{ $?.exitstatus }")
end

sh "git submodule init"
sh "git submodule update vendor/bundler"
sh "ruby scripts/gem-bundle.rb"

if command?( "less" ) and $stdout.tty?
  sh "less DEVELOPER-README.txt"
end
