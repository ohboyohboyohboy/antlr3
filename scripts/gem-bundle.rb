#!/usr/bin/ruby
# encoding: utf-8

__DIR__ = File.dirname( __FILE__ )    # $top/scripts
top = File.dirname( __DIR__ )
load File.join( top, 'config', 'antlr3.rb' )

$project.bundler_initialized? or $project.bundler_missing!

$:.unshift( $project.bundler.lib )
require 'rubygems'
require 'rubygems/gem_runner'
require 'rubygems_plugin'

args = %w( bundle -m ) << $project.bundler.config
Gem::GemRunner.new.run( args )
