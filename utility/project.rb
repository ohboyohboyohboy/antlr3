#!/usr/bin/ruby
# encoding: utf-8

autoload :FileUtils, 'fileutils'

class Project
  COMMON_DIRECTORIES = %w(
    app bin config db lib tasks .tasks doc log spec scratch scripts
  )

  attr_reader :name
  
  def initialize(path, name = nil, &b)
    @path = File.expand_path(path.to_s).freeze
    name ||= File.basename(@path)
    @name = name.to_s.freeze
    @directory_registry = {}
    COMMON_DIRECTORIES.each do |name|
      test(?d, self.path(name)) and
        register(name.to_sym, name)
    end
    test(?d, path('lib')) and add_to_load_path(path('lib'))
    block_given? and instance_eval(&b)
  end
  
  def add_to_load_path(pt, *args)
    path = resolve(pt, *args)
    if $:.include?(path)
      $:.delete(path)
    end
    $:.unshift(path)
  end

  def [](*globs)
    globs = globs.map { |glob| File.join(@path, glob) }
    return(Dir[*globs])
  end
  
  def customize(*args, &block)
    meta = class << self; self; end
    meta.class_eval(*args, &block)
  end
  
  def exist?(*path)
    File.exist?(File.join(@path, *paths))
  end
  
  def make_path(*location)
    location = resolve(*location)
    test(?e, location) or FileUtils.mkpath(location)
    return location
  end
  
  def path(*args)
    File.join(@path, *args)
  end
  
  def path!(*pats)
    Dir.glob(path(*pats))
  end
  
  def path?(*args)
    test ?e, path(*args)
  end
  
  def path_style(name)
    # convert a potentially CamelCase name to a dash-case version
    name.to_s.gsub(/::/, "/").tap do |str|
      str.gsub!(/([A-Z]+)([A-Z][a-z\x80-\xff])/, '\1-\2')
      str.gsub!(/([a-z\x80-\xff])([A-Z])/, '\1-\2')
      str.tr!("_", "-")
      str.downcase!
    end
  end
  
  
  def register(name, relative_path = name.to_s)
    absolute_path = self.path(relative_path)
    test(?e, absolute_path) or FileUtils.mkpath(absolute_path)
    @directory_registry[name.to_sym] = relative_path
    
    customize do
      
      # a regular path-building accessor method
      define_method :"#{name}" do |*args|
        self.path(relative_path, *args)
      end
      
      # a predicate_type method which tells if the
      # path joined with the arguments exists
      define_method :"#{name}?" do |*args|
        path = self.path(relative_path, *args)
        return test(?e, path)
      end
      
      # a bang method which joins the given path with the args
      # and treats the result as a glob pattern, returning all
      # matching paths
      define_method :"#{name}!" do |*args|
        pattern = self.path(relative_path, *args)
        Dir.glob(pattern)
      end
      
    end
  end
  
  def resolve(*location)
    location = [*location]
    location.flatten!
    case
    when location.empty? then return self.path
    when base = @directory_registry[location.first]
      location.shift
      return File.join(@path, base, *location)
    else
      location.map! { |node| node.to_s }
      return location.first[0] == ?/ ? File.join(*location) : File.join(@path, *location)
    end
  end
  
  
  def setting(name, default_value = nil, &block)
    if default_value.nil?
      customize { attr_accessor(name.to_sym) }
    else
      customize do
        attr_writer(name.to_sym)
        define_method(name.to_sym) do
          unless instance_variable_defined?(:"@#{name}")
            instance_variable_set(:"@#{name}", default_value)
          end
          instance_variable_get(:"@#{name}")
        end
      end
    end
  end
  
  def to_s
    @name.dup
  end
  
  alias :exists? :exist?
  private :path_style
end
