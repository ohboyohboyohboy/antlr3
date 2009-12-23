#!/usr/bin/ruby
# encoding: utf-8
__DIR__ = File.dirname( __FILE__ )
project_top = File.dirname( __DIR__ )
config_file = File.join( __DIR__, 'antlr3.yaml' )

load File.join( __DIR__, 'project.rb' )

$proj = $project = Project.load( project_top, config_file ) do
  
  # load external rake task setup script from the
  # project's rake library directory
  def load_task( *name )
    name.map! { |n| n.to_s }
    load( rake_tasks( *name ) << '.rake' )
  end
  
  # run the gem-bundle.rb script to reflect any
  # changes to config/gemfile
  def run_bundler
    script = path('scripts', 'gem-bundle.rb')
    ENV.temporary( 'RUBYOPT' => '' ) do
      system %(ruby '#{script}')
    end
  end
  
  # given a list of program names (like `less', `more', ...),
  # return the first program that can be found on the
  # system path or nil if none are found
  def find_program( *names )
    system_path = ENV.read( 'PATH', Array )
    [ names ].flatten!.find do | prog |
      system_path.find { | d | File.executable?( d / prog ) }
    end
  end
  
  # extract the long-form description from the README
  def description
    @description ||= begin
      readme = File.read( path( 'README.txt' ) )
      md = readme.match( /== DESCRIPTION:(.+?)\n== /m ) or
        fail( "can't find a description section in README.txt" )
      md[1].strip
    end
  end
  
  # build a gem spec from the project metadata
  def gem_spec
    require 'rubygems/specification'
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
    end
  end
  
  def increment_version( level = 'patch' )
    major, minor, patch = version.split('.').map { |i| i.to_i }
    case level.to_s.downcase
    when 'major' then major, minor, patch = major + 1, 0, 0
    when 'minor' then major, minor, patch = major, minor + 1, 0
    when 'patch' then major, minor, patch = major, minor, patch + 1
    else raise( ArgumentError,
      "level argument must be `patch', `minor', `major', but got `#{ level }'" )
    end
    
    config_file = path( 'config/antlr3.yaml' )
    source = File.read( config_file )
    File.rename( config_file, config_file + '~' )
    source[ version.inspect ] = %("#{major}.#{minor}.#{patch}")
    open( config_file, 'w' ) { |f| f.write( source ) }
    
    version_file = path( 'lib/antlr3/version.rb' )
    source = File.read( version_file )
    %w( major minor patch ).each do | l |
      rx = /^(\s*)#{ l.upcase }_VERSION\s*=\s*(\d+)$/
      source =~ rx or fail( "can't find a line matching %p in version.rb" % rx )
      old_line = $~[0]
      new_line = "#{ $1 }#{ l.upcase }_VERSION = #{ eval( l, binding ) }"
      source[ old_line ] = new_line
    end
    File.rename( version_file, version_file + '~' )
    open( version_file, 'w' ) { | f | f.write( source ) }
    self.version = "#{ major }.#{ minor }.#{ patch }"
  end
  
  def jar_command
    @jar_command ||= find_program %w( fastjar jar )
  end
  
  def shell_escape( text )
    if text.empty? then "''"
    else
      text.gsub( /([^A-Za-z0-9_\-.,:\/@\n])/n ) { '\\' << $1 }.
        gsub( /\n/, "'\n'" )
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
  
  def has_bundler?
    bundler.lib?
  end
  
  def verify_environment
    bundler.lib? or bundler_missing!
    bundler.environment? or bundler_environment_missing!
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
    |   rake setup
    | 
    END
  end
  
  def bundler_environment_missing!
    error!( <<-END.here_indent!, bundler.environment )
    | Unable to locate bundler gem environment at %s
    | To create this file, run:
    | 
    |    rake setup
    | 
    END
  end
  
  def setup?
    verify_environment
    return true
  rescue Project::Error
    return false
  end
end

$project.setup? and $project.load_environment

bin_dirs = [
  $project.path( 'scripts' ),
  $project.path( 'bin' ),
  $project.path( 'vendor/bin' )
].map! { | dir | File.expand_path( dir ) }

ENV.add_onto( 'PATH', *bin_dirs )
