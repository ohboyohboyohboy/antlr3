#!/usr/bin/ruby
# encoding: utf-8

=begin LICENSE

[The "BSD licence"]
Copyright (c) 2010 Kyle Yetter
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions
are met:

 1. Redistributions of source code must retain the above copyright
    notice, this list of conditions and the following disclaimer.
 2. Redistributions in binary form must reproduce the above copyright
    notice, this list of conditions and the following disclaimer in the
    documentation and/or other materials provided with the distribution.
 3. The name of the author may not be used to endorse or promote products
    derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR
IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT,
INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

=end

#
# a mildly messy collection of class definitions quickly thrown together
# to create simple Project objects, which contain various project
# settings of your choosing and functions like a cascading
# open struct that can be customized with singleton methods
# for various purposes in a project
# 

require 'yaml'


class << ENV
  
  # fetch an environmental variable value and
  # parse it according to type:
  #   - array    - numeric
  #   - string   - boolean
  def read(var, as_type = String, *arguments)
    value = fetch(var.to_s) { return(nil) }
    return(parse(value, as_type, *arguments))
  end
  
  def temporary( value_map )
    current = {}
    for name, value in value_map
      name, value = name.to_s, value.to_s
      current[ name ] = fetch( name, :none )
      self[ name ] = value
    end
    yield
  ensure
    for name, value in current
      if value == :none then delete( name )
      else self[ name ] = value
      end
    end
  end
  
  def add_onto( var, *values )
    values = [values, ENV[ var.to_s ]].flatten!
    values.compact!
    ENV[ var.to_s ] = values.join( File::PATH_SEPARATOR )
  end
  
  def push_onto( var, *values )
    values = [ENV[ var.to_s ], values].flatten!
    values.compact!
    ENV[ var.to_s ] = values.join( File::PATH_SEPARATOR )
  end
  
private
  
  def parse(value, type, *args)
    result = case type.to_s.downcase
    when 'array', 'list' then parse_array(value, *args)
    when 'string' then parse_string(value, *args)
    when 'float' then parse_float(value, *args)
    when 'boolean' then parse_boolean(value, *args)
    when 'number', 'numeric', 'int'
      value =~ /\./ ? parse_float(value, *args) : parse_int(value, *args)
    else
      warn(
        ("ENV#parse (%s:%i): do not know how to parse to %p " \
        "-- returning original string value") % [__FILE__, __LINE__, type]
      )
      value
    end
    value.tainted? and result.taint
    return result
  end

  def parse_array(value, separator = File::PATH_SEPARATOR, sub_type = String, *args)
    out = value.split(separator).map! do |item|
      value.tainted? and item.taint
      parse(item, sub_type, *args)
    end
    return out
  end

  def parse_int(value, base = 10)
    value.to_i(base)
  end

  def parse_float(value)
    value.to_f
  end

  def parse_string(value)
    value.nil? || value.empty? and return(nil)
    value =~ /^(false|0+|no|off|nil)$/i and return(nil)
    return(value)
  end

  def parse_boolean(value)
    value.nil? || value.empty? and return(nil)
    value =~ /^(false|0+|no|f)$/i ? false : true
  end

end

class PropertyGroup < ::Hash
  NOTHING = Object.new
  attr_reader :project
  
  alias get []
  alias put []=
  private :put, :get
  
  def []=( name, value )
    super( name.to_s, value )
  end
  
  def []( name )
    name = name.to_s
    if has_key?( name ) then super( name )
    elsif @path_map then @path_map[ name ]
    end
  end
  
  def merge( h )
    super( normalize( h ) )
  end
  
  def initialize( project, values = {} )
    super()
    @project = project
    configure( values )
    block_given? and yield( self )
  end
  
  alias properties keys
  
  def configure( settings )
    for key, value in settings
      if Hash === value and value.key?( ".type" )
        define_special_member( key.to_s, value.delete( ".type" ), value )
      elsif value =~ /^path:(.*)$/
        define_special_member( key.to_s, "path", $1 )
      else
        define_member( key, value )
      end
    end
    return( self )
  end
  
  def method_missing( method, *args, &block)
    case name = method.to_s
    when /^(\w+)=$/
      define_member( $1, *args )
    when /^(\w+)$/
      args.empty? or return( super )
      begin
        fetch( name ) { super }
      rescue NoMethodError => e
        e.message.gsub!( /undefined method/, 'undefined method or property' )
        raise( e )
      end
    else
      super
    end
  end
  
  
  def define_member( name, value )
    name = name.to_s
    name_str = name.inspect
    put( name, value )
    customize( <<-END, __FILE__, __LINE__ + 1 )
      def #{ name }( value = PropertyGroup::NOTHING )
        value.equal?( PropertyGroup::NOTHING ) or put( #{ name_str }, value )
        return get( #{ name_str } )
      end
      
      def #{ name }=( value )
        put( #{ name_str }, value )
      end
    END
    return value
  end
  
  def metaclass
    class << self; self; end
  end
  
  def customize( *args, &block )
    metaclass.class_eval( *args, &block )
  end
  
  
private
  def path_map
    @path_map ||= begin
      map = PropertyGroup::PathMap.define( @project, {} )
      extend( map )
      map
    end
  end
  
  def normalize( hash )
    stringified = {}
    for key, value in hash
      stringified[ key.to_s ] = value
    end
    return( stringified )
  end
end

module PropertyGroup::Expansion
  # recusively expand a project setting
  # note: this may cause an infinite loop if there's a dependency loop between variables
  def expand( value )
    case value
    when Array then expand_array( value )
    when PropertyGroup then value.expand!
    when Hash then expand_hash( value )
    when String then expand_string( value )
    when PropertyGroup::PathMap then expand_path_map( value )
    when PropertyGroup::PathList then expand_path_list( value )
    when Regexp then expand_regex( value )
    else value
    end
  end
  
  def expand!
    expand_hash( self )
    expand( path_map )
    return( self )
  end
  
private

  def expand_hash( hash )
    for key, value in hash
      hash[ key ] = expand( value )
    end
    return hash
  end
  
  def expand_array( array )
    array.map! { |v| expand( v ) }
  end
  
  def expand_string( value )
    value.gsub! %r| \$ \( ([\w\.]+) \) |x do
      variable_value = $1.split( '.' ).
        inject( @project )  { |rec, prop| rec[ prop ] }
      expand( variable_value )
    end
    return value
  end
  
  def expand_path_map( value )
    paths = value::PATHS
    for name, path in paths
      paths[ name ] = expand( path )
    end
    return value
  end
  
  def expand_path_list( list )
    for var in list.instance_variables
      value = list.instance_variable_get( var )
      list.instance_variable_set( var, expand( value ) )
    end
    return list
  end
  
  def expand_regex( value )
    pattern = /\\ \$ \\ \( ([\w\.]+) \\ \)/x
    regex_source = value.source
    regex_source.gsub!( pattern ) do
      variable_value = $1.split('.').
        inject( @project ) { |rec, prop| rec[ prop ] }
      expand( variable_value )
    end
    Regexp.new( regex_source, value.options )
  end
end

module PropertyGroup::SpecialTypes
  def create_property_group( props )
    PropertyGroup.new( @project, props )
  end
  
  def create_path_map( paths )
    PropertyGroup::PathMap.define( @project, paths )
  end
  
  def create_path_list( spec )
    if spec.is_a?( Hash )
      spec = normalize( spec )
      inclusions = spec.fetch( 'include', [] )
      exclusions = spec.fetch( 'exclude', [] )
      list = PropertyGroup::PathList.new( *inclusions )
      list.exclude( *exclusions )
    else
      list = PropertyGroup::PathList.new( *spec.to_a )
    end
    return list
  end
  
  def define_path( name, relative_path )
    path_map.define_path( name, relative_path )
    put( name.to_s, self.send( name ) )
  end
  
  def define_special_member( name, tag, value )
    case tag
    when 'pathmap' then define_member( name, create_path_map( value ) )
    when 'pathlist' then define_member( name, create_path_list( value ) )
    when 'path' then define_path( name, value )
    when 'group' then
      props = create_property_group( value )
      define_member( name, props )
    else define_member( name, value )
    end
  end
end

class PropertyGroup
  include Expansion
  include SpecialTypes
end

class Project < PropertyGroup
  def self.load( base, config_path, &block)
    config = YAML.load_file( config_path )
    new( base, config, &block )
  end
  
  def initialize( base, config, &block )
    super( self )
    config = normalize( config )
    config[ 'name' ] ||= File.basename( base )
    base = base.to_s.dup
    define_member( 'base', base )
    
    load_path = config.delete( 'load_path' ) || []
    load_libs = config.delete( 'load' ) || []
    require_libs = config.delete( 'require' ) || []
    system_path = config.delete( 'system_path' )
    configure( config )
    
    # perform value expansion after all values have been established
    expand!
    
    system_path and
      ENV.add_onto( 'PATH', *system_path.map! { | name | path( name ) } )
    
    for dir in load_path
      $:.unshift( path( dir ) )
    end
    
    for lib in load_libs
      load!( lib )
    end
    
    for lib in require_libs
      require( lib )
    end
    
    block_given? and customize( &block )
  end
  
  def error!( message, *args )
    message = format_string( message, *args )
    raise Project::Error, message, caller
  end
  
  def warn!( message, *args )
    warn( format_string( message, *args ) )
  end
  
  def format_string( message, *args )
    expand( sprintf( message.to_s, *args ) )
  end
  
  def path( *args )
    expand( File.join( base, *args ) )
  end
  
  def path?( *args )
    pt = path( *args )
    File.exist?( pt ) and pt
  end
  
  def path!( *args )
    Dir[ path( *args ) ]
  end
  
  
  def load!( path_glob )
    path!( path_glob ).each { |lib| load( lib ) }
  end
end

class PropertyGroup::PathMap < Module
  def self.define( project, map )
    m = new do
      const_set( :PROJECT, project )
      const_set( :PATHS, {} )
      const_set( :PATH_MAP, self )
      extend( self )
    end
    
    for name, path in map
      m.define_path( name, path )
    end
    
    return m
  end
  
  private_class_method :new
  
  def define_path( name, value )
    name, value = name.to_s, value.to_s
    self[ name ] = value
    name_str = name.inspect
    
    class_eval( <<-END, __FILE__, __LINE__ + 1 )
      def #{name}( *args )
        PROJECT.path( PATHS[ #{ name_str } ], *args )
      end
      
      def #{name}?( *args )
        PROJECT.path?( PATHS[ #{ name_str } ], *args )
      end
      
      def #{name}!( *args )
        PROJECT.path!( PATHS[ #{ name_str } ], *args )
      end
    END
  end
  
  def []( name )
    self::PATHS[ name.to_s ]
  end
  
  def []=( name, value )
    self::PATHS[ name.to_s ] = value.to_s
  end
end

Project::Error = Class.new( StandardError )



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
class PropertyGroup::PathList

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
      PropertyGroup::PathList.new.import(result)
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
    inject(PropertyGroup::PathList.new) { |res, fn| res << fn.sub(pat,rep) }
  end

  # Return a new FileList with the results of running +gsub+ against
  # each element of the original list.
  #
  # Example:
  #   FileList['lib/test/file', 'x/y'].gsub(/\//, "\\")
  #      => ['lib\\test\\file', 'x\\y']
  #
  def gsub(pat, rep)
    inject(PropertyGroup::PathList.new) { |res, fn| res << fn.gsub(pat,rep) }
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
      PropertyGroup::PathList.new.import(result[0]),
      PropertyGroup::PathList.new.import(result[1]),
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
