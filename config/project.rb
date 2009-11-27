#!/usr/bin/ruby
# encoding: utf-8

#
# a mildly messy collection of class definitions quickly thrown together
# to create simple Project objects, which contain various project
# settings of your choosing and functions like a cascading
# open struct that can be customized with singleton methods
# for various purposes in a project
# 

require 'yaml'

class PropertyGroup
  include Enumerable
  NOTHING = Object.new
  
  attr_accessor :group_owner
  
  def initialize( values = {} )
    @table = Hash.new do |h, k|
      h[ k.to_sym ] = PropertyGroup.new( :group_owner => self, :name => k.to_sym )
    end
    
    for key, value in values
      case key = key.to_sym
      when :group_owner then @group_owner = value
      else
        define_member( key, value )
      end
    end
    
    block_given? and yield( self )
  end
  
  def property_group_name
    @group_owner ? "#{@group_owner.propert_group_name}.#{name}" : name
  end
  
  def properties
    @table.keys
  end
  
  def each
    block_given? or return( enum_for( :each ) )
    @table.each { | name, value | yield( name, value ) }
  end
  
  def []( name )
    @table[ name.to_sym ]
  end
  
  def []=( name, value )
    @table[ name.to_sym ] = value
  end
  
  def method_missing( method, *args, &block)
    name = method.to_s
    if name =~ /^(\w+)=$/
      return define_member( $1, *args )
    elsif name =~ /^\w+$/
      case args.length
      when 0
        message = "%s has no property or method named ``%s''" % [property_group_name, method]
        error = NoMethodError.new( message, method )
        error.set_backtrace( caller )
        raise( error )
      when 1
        return define_member( method, *args )
      end
    end
    super
  end
  
  def to_hash
    @table.dup
  end
  
  def create_property_group( name, settings = {} )
    settings[ :group_owner ] = self
    settings[ :name ] = name
    PropertyGroup.new( settings )
  end
  
  def define_member( name, value = PropertyGroup.new )
    name = name.to_sym
    value.is_a?( Hash ) and value = create_property_group( name, value )
    @table[ name ] = value
    
    unless self.respond_to?( name )
      meta_eval( <<-END, __FILE__, __LINE__ + 1 )
        def #{ name }( value = PropertyGroup::NOTHING )
          value.equal?( PropertyGroup::NOTHING ) or self.#{name} = value
          return self[ :#{name} ]
        end
        
        def #{ name }=( value )
          self[ :#{name} ] = value
        end
      END
    end
    return value
  end
  
  def metaclass
    class << self; self; end
  end
  
  def meta_eval( *args, &block )
    metaclass.class_eval( *args, &block )
  end
  
  def symbolize( hash )
    Hash[ hash.map { | k, v | [ k.to_sym, v ] } ]
  end
  
end

class Project < PropertyGroup
  def self.load( base, config_path, &block)
    config = YAML.load_file( File.join( base, config_path ) )
    new( base, config, &block )
  end
  
  def initialize(base, config, &block)
    super()
    config = symbolize( config )
    config[ :name ] ||= File.basename( base )
    base = File.expand_path(base.to_s).freeze
    define_member( :base, base )
    general_paths = PathMap.define( self, {} )
    extend( general_paths )
    
    load_path = config.delete( :load_path ) || []
    load_libs = config.delete( :load ) || []
    require_libs = config.delete( :require ) || []
    
    for key, value in config
      case value
      when YAML::DomainType
        define_special_member( key, value.type_id, value.value )
      else define_member( key, value )
      end
    end
    
    # perform value expansion after all values have been established
    expand!( @table )
    expand!( general_paths )
    
    for dir in load_path
      $:.unshift( path( expand!( dir ) ) )
    end
    
    for lib in load_libs
      load!( expand!( lib ) )
    end
    
    for lib in require_libs
      require( expand!( lib ) )
    end
    
    block_given? and customize( &block )
  end
  
  def error!( message, *args )
    message = format_string( message, *args )
    raise Project::Error, message, caller
  end
  
  def full_group_name
    '$project( %p )' % name
  end
  
  def warn!( message, *args )
    warn( format_string( message, *args ) )
  end
  
  def format_string( message, *args )
    sprintf( message.to_s, *args )
  end
  
  def path( *args )
    File.expand_path( File.join( base, *args ) )
  end
  
  def path?( *args )
    test( ?e, path( *args ) )
  end
  
  def path!( *args )
    Dir[ path( *args ) ]
  end
  
  # recusively expand a project setting
  # note: this may cause an infinite loop if there's a dependency loop between variables
  def expand!( value )
    case value
    when Array then expand_array( value )
    when Hash, PropertyGroup then expand_hash( value )
    when String then expand_string( value )
    when PathMap then expand_path_map( value )
    when PathList then expand_path_list( value )
    when Regexp then expand_regex( value )
    else value
    end
  end
  
  def load!( path_glob )
    path!( path_glob ).each { |lib| load( lib ) }
  end
  
  alias customize meta_eval
  
  def create_path_list( spec )
    if spec.is_a?( Hash )
      spec = symbolize( spec )
      inclusions = spec.fetch( :include, [] )
      exclusions = spec.fetch( :exclude, [] )
      list = PathList.new( *inclusions )
      list.exclude( *exclusions )
    else
      list = PathList.new( *spec.to_a )
    end
    return list
  end
  
  def create_path_map( paths )
    PathMap.define( self, paths )
  end
  
private
  
  def define_special_member( name, tag, value )
    case tag
    when 'pathmap' then define_member( name, create_path_map( value ) )
    when 'pathlist' then define_member( name, create_path_list( value ) )
    when 'path' then define_path( name, value )
    else define_member( name, value )
    end
  end
  
  def expand_hash( hash )
    for key, value in hash
      hash[ key ] = expand!( value )
    end
    return hash
  end
  
  def expand_array( array )
    array.map! { |v| expand!( v ) }
  end
  
  def expand_string( value )
    value.gsub! %r| \$ \( ([\w\.]+) \) |x do
      variable_value = $1.split('.').inject( self )  { |rec, prop| rec[ prop ] }
      expand!( variable_value )
    end
    return value
  end
  
  def expand_path_map( value )
    paths = value::PATHS
    for name, path in paths
      paths[ name ] = expand!( path )
    end
    return value
  end
  
  def expand_path_list( list )
    for var in list.instance_variables
      value = list.instance_variable_get( var )
      list.instance_variable_set( var, expand!( value ) )
    end
    return list
  end
  
  def expand_regex( value )
    pattern = /\\ \$ \\ \( ([\w\.]+) \\ \)/x
    regex_source = value.source
    regex_source.gsub!( pattern ) do
      variable_value = $1.split('.').inject( self ) { |rec, prop| rec[ prop ] }
      expand!( variable_value )
    end
    Regexp.new( regex_source, value.options )
  end
  
end


class Project::PathMap < Module
  
  def self.define(project, map)
    m = new do
      const_set( :PROJECT, project )
      const_set( :PATHS, map )
      const_set( :PATH_MAP, self )
      class_eval( <<-END, __FILE__, __LINE__ + 1 )
        def define_path( name, value )
          PATH_MAP.define_path!( name, value )
        end
      END
      extend( self )
    end
    
    for name, path in map
      m.define_path!( name, path )
    end
    
    return m
  end
  
  private_class_method :new
  
  def define_path!( name, value )
    self[ name ] = value
    class_eval( <<-END, __FILE__, __LINE__ + 1 )
      def #{name}( *args )
        PROJECT.path( PATHS[ :#{ name } ], *args )
      end
      
      def #{name}?( *args )
        PROJECT.path?( PATHS[ :#{ name } ], *args )
      end
      
      def #{name}!( *args )
        PROJECT.path!( PATHS[ :#{ name } ], *args )
      end
    END
  end
  
  def []( name )
    self::PATHS[ name.to_sym ]
  end
  
  def []=( name, value )
    self::PATHS[ name.to_sym ] = value.to_s
  end
  
end

class Project::Error < StandardError
  
end



# = FileList
#
# A FileList is essentially an array with helper methods
# to make file manipulation easier.
#
# FileLists are lazy.  When given a list of glob patterns for
# possible files to be included in the file list, instead of
# searching the file structures to find the files, a FileList holds
# the pattern for latter use.
#
# This allows us to define a number of FileList to match any number of
# files, but only search out the actual files when then FileList
# itself is actually used.  The key is that the first time an
# element of the FileList/Array is requested, the pending patterns
# are resolved into a real list of file names.
#
#   fl = FileList.new
#   fl.include('./**/*')
#   fl.exclude('./*~')
#
# == History
#
#   FileList was ported from Jim Weirich's Rake.
#
# == Authors
#
# * Jim Weirich
#
# == Todo
#
# * Should the exclusions really be the default?
#   Maybe have #exclude_typical instead.
#
# == Copying
#
# Copyright (C) 2002 Jim Weirich
#
# General Public License (GPL)
#
# Permission is hereby granted, free of charge, to any person obtaining
# a copy of this software and associated documentation files (the
# "Software"), to deal in the Software without restriction, including
# without limitation the rights to use, copy, modify, merge, publish,
# distribute, sublicense, and/or sell copies of the Software, and to
# permit persons to whom the Software is furnished to do so, subject to
# the following conditions:
#
# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
# LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
# OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
# WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

# = FileList
#
# A FileList is essentially an array with helper methods
# to make file manipulation easier.
#
# FileLists are lazy.  When given a list of glob patterns for
# possible files to be included in the file list, instead of
# searching the file structures to find the files, a FileList holds
# the pattern for latter use.
#
# This allows us to define a number of FileList to match any number of
# files, but only search out the actual files when then FileList
# itself is actually used.  The key is that the first time an
# element of the FileList/Array is requested, the pending patterns
# are resolved into a real list of file names.
#
#   fl = FileList.new
#   fl.include('./**/*')
#   fl.exclude('./*~')
#
class Project::PathList

  # TODO: Add glob options.
  #attr :glob_options

  #include Cloneable
  def clone
    sibling = self.class.new
    instance_variables.each do |ivar|
      value = self.instance_variable_get(ivar)
      sibling.instance_variable_set(ivar, value.rake_dup)
    end
    sibling
  end
  alias_method :dup, :clone

  # == Method Delegation
  #
  # The lazy evaluation magic of FileLists happens by implementing
  # all the array specific methods to call +resolve+ before
  # delegating the heavy lifting to an embedded array object
  # (@items).
  #
  # In addition, there are two kinds of delegation calls.  The
  # regular kind delegates to the @items array and returns the
  # result ectly.  Well, almost directly.  It checks if the
  # returned value is the @items object itself, and if so will
  # return the FileList object instead.
  #
  # The second kind of delegation call is used in methods that
  # normally return a new Array object.  We want to capture the
  # return value of these methods and wrap them in a new FileList
  # object.  We enumerate these methods in the +SPECIAL_RETURN+ list
  # below.

  # List of array methods (that are not in +Object+) that need to be
  # delegated.
  ARRAY_METHODS = Array.instance_methods - Object.instance_methods

  # List of additional methods that must be delegated.
  MUST_DEFINE = %w[to_a inspect]

  # List of methods that should not be delegated here (we define
  # special versions of them explicitly below).
  MUST_NOT_DEFINE = %w[to_a to_ary partition *]

  # List of delegated methods that return new array values which
  # need wrapping.
  SPECIAL_RETURN = %w[
    map collect sort sort_by select find_all reject grep
    compact flatten uniq values_at
    + - & |
  ]

  DELEGATING_METHODS =  (ARRAY_METHODS + MUST_DEFINE - MUST_NOT_DEFINE).
                          sort_by { |m| m.to_s }.uniq

  # Now do the delegation.
  DELEGATING_METHODS.each_with_index do |sym, i|
    if SPECIAL_RETURN.include?(sym)
      ln = __LINE__+1
      class_eval(%{
        def #{sym}(*args, &block)
          resolve if @pending
          result = @items.send(:#{sym}, *args, &block)
          self.class.new.import(result)
        end
      }, __FILE__, ln)
    else
      ln = __LINE__+1
      class_eval(%{
        def #{sym}(*args, &block)
          resolve if @pending
          result = @items.send(:#{sym}, *args, &block)
          result.object_id == @items.object_id ? self : result
        end
      }, __FILE__, ln)
    end
  end

  # Create a file list from the globbable patterns given.  If you
  # wish to perform multiple includes or excludes at object build
  # time, use the "yield self" pattern.
  #
  # Example:
  #   file_list = FileList.new['lib/**/*.rb', 'test/test*.rb']
  #
  #   pkg_files = FileList.new['lib/**/*'] do |fl|
  #     fl.exclude(/\bCVS\b/)
  #   end
  #
  def initialize( *patterns )
    @pending_add = []
    @pending = false
    @exclude_patterns = DEFAULT_IGNORE_PATTERNS.dup
    @exclude_re = nil
    @items = []
    patterns.each { |pattern| include(pattern) }
    yield self if block_given?
  end

  # Add file names defined by glob patterns to the file list.  If an
  # array is given, add each element of the array.
  #
  # Example:
  #   file_list.include("*.java", "*.cfg")
  #   file_list.include %w( math.c lib.h *.o )
  #
  def include(*filenames)
    # TODO: check for pending
    filenames.each do |fn|
      if fn.respond_to? :to_ary
        include(*fn.to_ary)
      else
        @pending_add << fn
      end
    end
    @pending = true
    self
  end
  alias :add :include

  # Register a list of file name patterns that should be excluded
  # from the list.  Patterns may be regular expressions, glob
  # patterns or regular strings.
  #
  # Note that glob patterns are expanded against the file system.
  # If a file is explicitly added to a file list, but does not exist
  # in the file system, then an glob pattern in the exclude list
  # will not exclude the file.
  #
  # Examples:
  #   FileList['a.c', 'b.c'].exclude("a.c") => ['b.c']
  #   FileList['a.c', 'b.c'].exclude(/^a/)  => ['b.c']
  #
  # If "a.c" is a file, then ...
  #   FileList['a.c', 'b.c'].exclude("a.*") => ['b.c']
  #
  # If "a.c" is not a file, then ...
  #   FileList['a.c', 'b.c'].exclude("a.*") => ['a.c', 'b.c']
  #
  def exclude(*patterns)
    patterns.each do |pat| @exclude_patterns << pat end
    if ! @pending
      calculate_exclude_regexp
      reject! { |fn| fn =~ @exclude_re }
    end
    self
  end

  # Clear all the exclude patterns so that we exclude nothing.
  def clear_exclude
    @exclude_patterns = []
    calculate_exclude_regexp if ! @pending
  end

  # Define equality.
  def ==(array)
    to_ary == array
  end

  # Return the internal array object.
  def to_a
    resolve
    @items
  end

  # Return the internal array object.
  def to_ary
    resolve
    @items
  end

  # Redefine * to return either a string or a new file list.
  def *(other)
    result = @items * other
    case result
    when Array
      PathList.new.import(result)
    else
      result
    end
  end

  # Resolve all the pending adds now.
  def resolve
    if @pending
      @pending = false
      @pending_add.each do |fn| resolve_add(fn) end
      @pending_add = []
      resolve_exclude
    end
    self
  end

  def calculate_exclude_regexp
    ignores = []
    @exclude_patterns.each do |pat|
      case pat
      when Regexp
        ignores << pat
      when /[*.]/
        Dir[ pat ].each do |p| ignores << p end
      else
        ignores << Regexp.quote(pat)
      end
    end
    if ignores.empty?
      @exclude_re = /^$/
    else
      re_str = ignores.collect { |p| "(" + p.to_s + ")" }.join("|")
      @exclude_re = Regexp.new(re_str)
    end
  end

  def resolve_add(fn)
    case fn
    when Array
      fn.each { |f| resolve_add(f) }
    when %r{[*?]}
      add_matching(fn)
    else
      self << fn
    end
  end

  def resolve_exclude
    @exclude_patterns.each do |pat|
      case pat
      when Regexp
        reject! { |fn| fn =~ pat }
      when /[*.]/
        reject_list = Dir[ pat ]
        reject! { |fn| reject_list.include?(fn) }
      else
        reject! { |fn| fn == pat }
      end
    end
    self
  end

  # Return a new FileList with the results of running +sub+ against
  # each element of the oringal list.
  #
  # Example:
  #   FileList['a.c', 'b.c'].sub(/\.c$/, '.o')  => ['a.o', 'b.o']
  #
  def sub(pat, rep)
    inject(PathList.new) { |res, fn| res << fn.sub(pat,rep) }
  end

  # Return a new FileList with the results of running +gsub+ against
  # each element of the original list.
  #
  # Example:
  #   FileList['lib/test/file', 'x/y'].gsub(/\//, "\\")
  #      => ['lib\\test\\file', 'x\\y']
  #
  def gsub(pat, rep)
    inject(PathList.new) { |res, fn| res << fn.gsub(pat,rep) }
  end

  # Same as +sub+ except that the oringal file list is modified.
  def sub!(pat, rep)
    each_with_index { |fn, i| self[i] = fn.sub(pat,rep) }
    self
  end

  # Same as +gsub+ except that the original file list is modified.
  def gsub!(pat, rep)
    each_with_index { |fn, i| self[i] = fn.gsub(pat,rep) }
    self
  end

  # Return a new array with <tt>String#ext</tt> method applied to
  # each member of the array.
  #
  # This method is a shortcut for:
  #
  #    array.collect { |item| item.ext(newext) }
  #
  # +ext+ is a user added method for the Array class.
  def ext(newext='')
    collect { |fn| fn.ext(newext) }
  end

  # Grep each of the files in the filelist using the given pattern.
  # If a block is given, call the block on each matching line,
  # passing the file name, line number, and the matching line of
  # text.  If no block is given, a standard emac style
  # file:linenumber:line message will be printed to standard out.
  def egrep(pattern)
    each do |fn|
      open(fn) do |inf|
        count = 0

        inf.each do |line|
          count += 1
          if pattern.match(line)
            if block_given?
              yield fn, count, line
            else
              puts "#{fn}:#{count}:#{line}"
            end
          end
        end
        
      end
    end
  end

  # FileList version of partition.  Needed because the nested arrays
  # should be FileLists in this version.
  def partition(&block) # :nodoc:
    resolve
    result = @items.partition(&block)
    [
      PathList.new.import(result[0]),
      PathList.new.import(result[1]),
    ]
  end

  # Convert a FileList to a string by joining all elements with a space.
  def to_s
    resolve if @pending
    self.join(' ')
  end

  # Add matching glob patterns.
  def add_matching(pattern)
    Dir[ pattern ].each do |fn|
      self << fn unless exclude?(fn)
    end
  end
  private :add_matching

  # Should the given file name be excluded?
  def exclude?(fn)
    calculate_exclude_regexp unless @exclude_re
    fn =~ @exclude_re
  end

  DEFAULT_IGNORE_PATTERNS = [
    /(^|[\/\\])CVS([\/\\]|$)/,
    /(^|[\/\\])\.svn([\/\\]|$)/,
    /(^|[\/\\])_darcs([\/\\]|$)/,
    /\.bak$/,
    /~$/,
    /(^|[\/\\])core$/
  ]
  @exclude_patterns = DEFAULT_IGNORE_PATTERNS.dup

  def import(array)
    @items = array
    self
  end

  class << self
    # Create a new file list including the files listed. Similar to:
    #
    #   FileList.new(*args)
    def [](*args)
      new(*args)
    end

    # Set the ignore patterns back to the default value.  The
    # default patterns will ignore files
    # * containing "CVS" in the file path
    # * containing ".svn" in the file path
    # * containing "_darcs" in the file path
    # * ending with ".bak"
    # * ending with "~"
    # * named "core"
    #
    # Note that file names beginning with "." are automatically
    # ignored by Ruby's glob patterns and are not specifically
    # listed in the ignore patterns.
    def select_default_ignore_patterns
      @exclude_patterns = DEFAULT_IGNORE_PATTERNS.dup
    end
    
    # Clear the ignore patterns.
    def clear_ignore_patterns
      @exclude_patterns = [ /^$/ ]
    end
  end

end # FileList
