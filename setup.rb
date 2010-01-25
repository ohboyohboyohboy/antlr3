#!/usr/bin/env ruby
# encoding: utf-8
require 'rbconfig'

Dir.chdir File.dirname( __FILE__ )

def confirm( message )
  loop do
    print( "#{ message } [yN] " )
    $stdout.flush
    case gets.chomp
    when /^y/i
      return( true )
    when /^n/i
      puts( "Aborting setup..." )
      exit( 1 )
    else
      puts( "Please answer `yes' or `no'" )
    end
  end
end

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

puts( <<END )
** NOTE **

This script will setup the development environment by
fetching the bundler package as a submodule in vendor/bundler
and downloading several gems to the vendor directory

END

confirm( "Continue with setup?" )

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
