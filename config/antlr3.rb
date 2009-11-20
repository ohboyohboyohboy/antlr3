#!/usr/bin/ruby
# encoding: utf-8
__DIR__ = File.dirname( __FILE__ )
project_top = File.dirname( __DIR__ )
load File.join( __DIR__, 'project.rb' )

$project = Project.load( project_top, 'config/antlr3.yaml' ) do
  # load external rake task setup script from the
  # project's rake library directory
  def load_task( *name )
    load( rake_tasks( *name ) << '.rake' )
  end
  
  def run_bundler
    script = path('scripts', 'gem-bundle.rb')
    system %(ruby '#{script}')
  end
  
  def program_available?( name )
    system_path.find { |d| test( ?x, d / name ) }
  end
  
  def system_path
    ENV.read( 'PATH', Array )
  end
  
  def bundler_initialized?
    bundler.lib?
  end
  
  def bundler_missing!
    dir = File.relative_path( bundler.top, base )
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
    |   rake dev:setup
    | 
    END
  end
  
  
  def bundler_environment_missing!
    file = File.relative_path( bundler.environment, base )
    error!( <<-END.here_indent!, file )
    | Unable to locate bundler gem environment at %s
    | To create this file, run:
    | 
    |    rake dev:setup
    | 
    END
  end
  
  def description
    @description ||= begin
      readme = File.read( path( 'README.txt' ) )
      md = readme.match( /== DESCRIPTION:(.+?)\n== /m ) or
        fail( "can't find a description section in README.txt" )
      md[1].strip
    end
  end
  
  def load_environment
    @load_environment ||= begin
      verify_environment
      load( bundler.environment )
      
      for lib in environment_require
        require lib
      end
      
      true
    end
  end
  
  def gem_specification
    require 'rubygems'
    spec_fields = %w(
      name author email has_rdoc rubyforge_project summary
      version description required_ruby_version
    )
    Gem::Specification.new do | spec |
      for field in spec_fields
        value = self.send( field )
        spec.send( "#{field}=", value )
      end
      
      spec.files = package_files.to_a
      spec.test_files = unit_tests.to_a + functional_tests.to_a
      
      spec.executables.push( *executables )
      spec.requirements.push( *requirements )
      
      for dep in development_dependencies
        Array === dep or dep = [ dep ]
        spec.add_development_dependency( *dep )
      end
      
    end
  end
  
  def shell_escape( text )
    if text.empty? then "''"
    else
      text.gsub( /([^A-Za-z0-9_\-.,:\/@\n])/n ) { '\\' << $1 }.
        gsub( /\n/, "'\n'" )
    end
  end
  
  def verify_environment
    bundler.lib? or bundler_missing!
    bundler.environment? or bundler_environment_missing!
  end
  
  def setup?
    verify_environment
    return true
  rescue Project::Error
    return false
  end
end

$project.jar_command = %w( fastjar jar ).find do | cmd |
  $project.program_available? cmd
end

