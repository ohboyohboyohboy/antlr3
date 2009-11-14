#!/usr/bin/ruby
# encoding: utf-8

require 'fileutils'
require 'delegate'

class Hash
  def rekey
    Hash[ map { |k, v| [ yield(k), v ] } ]
  end
end

class Project < DelegateClass( Hash )
  COMMON_DIRECTORIES = %w(
    app bin config db doc ext lib tasks
    doc log spec scratch scripts test vendor
  )
  
  attr_accessor :paths
  
  def initialize(base, config = {})
    config = config.rekey { |k| k.to_sym }
    
    config[ :base ] = base = File.expand_path(base.to_s).freeze
    config[ :name ] ||= File.basename( base )
    
    paths = config.delete( :paths ) || {}
    # setup common project directories
    Dir.chdir( base ) do
      for dir in COMMON_DIRECTORIES
        test( ?d, dir ) and paths[ dir ] ||= dir
      end
    end
    
    @paths = Paths.new( self, base, paths )
    
    super( config )
    
    for dir in fetch( :load_path, [] )
      $:.unshift @paths.path( dir )
    end
    
    for glob in fetch( :load, [] )
      load! glob
    end
    
    for lib in fetch( :require, [] )
      require lib
    end
    
    block_given? and yield( self )
  end
  
  for m in %w([] fetch)
    class_eval(<<-END, __FILE__, __LINE__ + 1)
      def #{m}(name, *args, &b); expand( super( name.to_sym, *args, &b ) ); end
    END
  end
  
  for m in %w([]= store)
    class_eval(<<-END, __FILE__, __LINE__ + 1)
      def #{m}(name, *args, &b); super( name.to_sym, *args, &b ); end
    END
  end
  
  def error!( message, *args )
    message = expand( sprintf(message.to_s, *args) )
    raise Project::Error, message, caller
  end
  
  def warn!( message, *args )
    warn( expand( sprintf( message.to_s, *args ) ) )
  end
  
  def method_missing( method, *args )
    if has_key?( method.to_sym ) then self[ method ]
    elsif @paths.respond_to?( method ) then @paths.send( method, *args )
    elsif method.to_s =~ /^(\w+)=/ then store( $1, *args )
    elsif method.to_s =~ /^\w+/ then nil
    else super
    end
  end
  
  # recusively expand a project setting
  # note: this may cause an infinite loop if there's a dependency loop between variables
  def expand( value )
    case value
    when Array then expand_array( value )
    when Hash then expand_hash( value )
    when String then expand_string( value )
    when Paths then value.path
    else value
    end
  end
  
  def load!( path_glob )
    for lib in @paths.path!( path_glob )
      load( lib )
    end
  end
  
  def customize(*args, &block)
    meta = class << self; self; end
    meta.class_eval(*args, &block)
    return self
  end
  
private
  
  def expand_hash( hash )
    expanded = {}
    for key, value in hash
      expanded[ key ] = expand( value )
    end
    return expanded
  end
  
  def expand_array( array )
    array.map { |v| expand( v ) }
  end
  
  def expand_string( value )
    value.gsub %r| \$ \( ([\w\.]+) \) |x do
      expand( $1.split('.').inject( self )  { |rec, prop| rec.send( prop ) } )
    end
  end
  
end

class Project::Paths
  attr_accessor :base, :project
  
  def initialize( project, base, path_map )
    @project = project
    @base = File.expand_path( base.to_s )
    @definitions = {}
    
    for name, value in path_map
      self[ name ] = value
    end
  end
  
  def []( var )
    @definitions[ var.to_sym ]
  end
  
  def []=( name, value )
    case value
    when self.class, Hash
      new_child( name, value )
    else
      new_path_member( name, value.to_s )
    end
  end
  
  def path( *args )
    @project.expand( File.join( @base, *args ) )
  end
  
  def path?( *args )
    test( ?e, path( *args ) )
  end
  
  def path!( *args )
    Dir[ path( *args ) ]
  end
  
private
  
  def new_path_member( name, value )
    meta_eval( <<-END, __FILE__, __LINE__ + 1 )
      def #{name}( *args )
        path( @definitions.fetch( :#{name} ), *args )
      end
      
      def #{name}?( *args )
        path?( @definitions.fetch( :#{name} ), *args )
      end
      
      def #{name}!( *args )
        path!( @definitions.fetch( :#{name} ), *args )
      end
    END
    
    @definitions[ name.to_sym ] = value
  end
  
  def new_child( name, map )
    meta_eval( <<-END, __FILE__, __LINE__ + 1 )
      def #{name}( *args )
        pt = @definitions.fetch( :#{name} )
        if args.empty? then pt
        elsif args.first.is_a?( Symbol ) then pt.send( *args )
        else pt.path( *args )
        end
      end
    END
    
    if self.class === map
      map.project = @project
    else
      map = map.rekey { |k| k.to_sym }
      base = ( b = map.delete :base ) ? path( b ) : @base
      map = self.class.new @project, base, map
    end
    
    @definitions[ name.to_sym ] = map
  end
  
  def meta_eval( src, file, line )
    meta = class << self; self; end
    meta.class_eval( src, file, line )
  end
  
end

class Project::Error < StandardError; end
