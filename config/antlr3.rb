#!/usr/bin/ruby
# encoding: utf-8
__DIR__ = File.dirname( __FILE__ )
project_top = File.dirname( __DIR__ )
config_file = File.join( __DIR__, 'antlr3.yaml' )

autoload :FileUtils, 'fileutils'

load File.join( __DIR__, 'project.rb' )

$proj = $project = Project.load( project_top, config_file ) do
  
  # load external rake task setup script from the
  # project's rake library directory
  def load_task( *name )
    files = name.map { |n| rake_tasks!( n.to_s << '.rake' ) }.flatten
    for f in files
      load( f )
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
      readme = File.read( path( 'README.rdoc' ) )
      md = readme.match( /== DESCRIPTION:(.+?)\n== /m ) or
        fail( "can't find a description section in README.txt" )
      '==' << md[1].strip
    end
  end
  
  # build a gem spec from the project metadata
  def gem_spec
    require 'rubygems/specification'
    spec_fields = %w(
      name author email has_rdoc rubyforge_project summary
      version description required_ruby_version homepage license
    )
    
    gem_config = package.gem
    relocations = gem_config.relocations
    
    Gem::Specification.new do | spec |
      for field in spec_fields
        value = self.send( field )
        spec.send( "#{field}=", value )
      end
      
      spec.files = package_transform(
        package.files.to_a + %w( Manifest.txt ), relocations
      )
      
      spec.test_files = package_transform(
        unit_tests.to_a + functional_tests.to_a, relocations
      )
      
      spec.executables.push( *executables )
      spec.requirements.push( *requirements )
    end
  end
  
  def package_skeleton( package_dir, core_files, support_files, name_map )
    defined?( Rake ) or extend_with_rake
    manifest = []
    mappings = []
    
    for file in core_files
      target_suffix = package_target_name( file, name_map )
      target = File.join( package_dir, target_suffix )
      
      if File.directory?( file )
        mkpath( target )
      else
        mkpath( File.dirname( target ) )
        File.exist?( target ) and rm( target )
        safe_ln( file, target )
        manifest << target_suffix
      end
    end
    
    for file in support_files
      target_suffix = package_target_name( file, name_map )
      target = File.join( package_dir, target_suffix )
      
      if File.directory?( file )
        mkpath( target )
      else
        mkpath( File.dirname( target ) )
        File.exist?( target ) and rm_f( target )
        safe_ln( file, target )
      end
    end
    
    manifest_file = File.join( package_dir, 'Manifest.txt' )
    File.open( manifest_file, 'w' ) do | f |
      f.puts( manifest )
    end
  end
  
  def package_transform( file_list, mapping_rules )
    file_list.map { | f | package_target_name( f, mapping_rules ) }
  end
  
  def package_target_name( source_path, name_map )
    pattern, map = name_map.find { | glob, m | File.fnmatch?( glob, source_path ) }
    map ? source_path.pathmap( map ) : source_path
  end
  
  def process_template( template_file, target = template_file.ext )
    require 'erb'
    template_file = path( template_file )
    target = path( target )
    
    template_file == target and raise(
      ArgumentError, "target argument `#{ target }' will overwrite source `#{ template_file }'"
    )
    
    template = ERB.new( File.read( template_file ), nil, '%' )
    code = template.result( binding )
    open( target, 'w' ) { | f | f.write( code ) }
    return target
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
      require 'isolate'
      #require 'rubygems'
      
      Isolate.now!( :file => isolate.config )
      
      for lib in environment_require
        begin
          require lib
        rescue => e
          warn( "error raised while requiring `#{ lib }':" )
          e.dump
        end
      end
      
      true
    end
  end
  
  def confirm( message )
    loop do
      print( "#{ message } [yN] " )
      $stdout.flush
      case $stdin.gets.strip
      when /^y/i
        return( true )
      when /^n/i
        return( false )
      else
        puts( "Please answer `yes' or `no'" )
      end
    end
  end
  
  def extend_with_rake
    require 'rake'
    extend( RakeFileUtils )
  end
end

$project.load_environment

