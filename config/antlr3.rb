#!/usr/bin/ruby
# encoding: utf-8

require 'yaml'

__DIR__ = File.expand_path( File.dirname( __FILE__ ) )  # $top/config
config_file = File.join( __DIR__, 'antlr3.yaml' )       # $top/config/project.yaml
project_top = File.dirname( __DIR__ )                   # $top
config = YAML.load_file( config_file )

load File.join( __DIR__, 'project.rb' )


$project = Project.new( project_top, config ).customize do
  
  # load external rake task setup script from the
  # project's rake library directory
  def load_task( name )
    path = paths.rake( "#{name}.rake" )
    src = File.read( path )
    eval( src, TOPLEVEL_BINDING, path, 1 )
  end
  
  def run_bundler
    script = path('scripts', 'gem-bundle.rb')
    system %(ruby '#{script}')
    return $?
  end
  
  def bundler_initialized?
    paths.bundler.lib?
  end
  
  def bundler_missing!
    dir = File.relative_path( paths.bundler.top, base )
    error!(<<-END.here_indent!, dir, dir)
    | Unable to load the project environment -- cannot locate bundler library
    | 
    | Bundler is an external package used to handle this project's
    | gem dependencies for its various development tasks and utilities.
    | The package should be imported into the project tree as a git submodule,
    | but the submodule does not appear to be initialized.
    | 
    | Run the following commands from the project's base directory:
    | 
    |   git submodule init
    |   git submodule update %s
    | 
    | Afterward, the full bundler library should appear within %s.
    | To complete the development environment set up, run:
    | 
    |   rake update_gems
    | 
    END
  end
  
  def bundler_environment_missing!
    file = File.relative_path( paths.bundler.environment, base )
    error!( <<-END.here_indent!, file )
    | Unable to locate bundler gem environment at %s
    | To create this file, run:
    |
    |    rake update_gems
    | 
    END
  end
  
  def bundler
    paths.bundler
  end
  
  def load_environment
    @load_environment ||= begin
      verify_environment
      load( paths.bundler.environment )
      
      for lib in environment_require
        require lib
      end
      
      true
    end
  end
  
  def verify_environment
    bundler_initialized? or bundler_missing!
    paths.bundler.environment? or bundler_environment_missing!
  end
  
  def setup?
    verify_environment
    return true
  rescue Project::Error
    return false
  end
  
end
