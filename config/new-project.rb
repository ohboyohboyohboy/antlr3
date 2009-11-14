#!/usr/bin/ruby
# encoding: utf-8

require 'ostruct'
require 'yaml'

class ProjectInfo < OpenStruct
  
  def initialize(path, config)
    for name, value in config
      config.is_a?( Hash ) and config[ name ] = ProjectInfo.new( path, value )
    end
    @path = path.to_s
    super
  end
  
  def path( *args )
    base = (Symbol === args.first) ? File.join( @path, @table[args.shift] ) : @path
    File.join( base, *args )
  end
  
end

__DIR__ = File.expand_path( File.dirname( __FILE__ ) )
config_file = File.join( __DIR__, 'config.yaml' )
project_top = File.dirname( __DIR__ )
config = YAML.load_file( config_file )

$project = ProjectInfo.new( project_top, config )

if $project.autoload
  for klass, lib in $project.autoload
    autoload klass, lib
  end
end

if load_paths = $project.load_path
  for load_path in load_paths
    $:.unshift( $project.path( load_path.to_s ) )
  end
end

