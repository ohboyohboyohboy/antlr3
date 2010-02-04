#!/usr/bin/env ruby
# encoding: utf-8

require 'rubygems'
require 'rubygems/gem_runner'

__DIR__ = File.dirname( __FILE__ )    # $top/scripts
top = File.dirname( __DIR__ )
load File.join( top, 'config', 'antlr3.rb' )

$project.has_bundler? or $project.bundler_missing!

$:.unshift( $project.bundler.lib )

require 'rubygems_plugin'

args = %w( bundle -m ) << $project.bundler.config
Gem::GemRunner.new.run( args )
