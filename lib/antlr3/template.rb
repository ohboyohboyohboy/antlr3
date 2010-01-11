#!/usr/bin/ruby
# encoding: utf-8

require 'erb'
require 'antlr3'

module ANTLR3
module Template
module Builder
  extend ClassMacros
  
  module ClassMethods
    attr_writer :template_library
    
    def template_library
      @template_library ||= ANTLR3::Template::Group.new
    end
    
    def return_scope_members
      super.push( :template )
    end
    
    def define_template( name, source, &block )
      template_library.define_template( name, source, &block )
    end
  end
  
  def self.included( klass )
    klass.extend( ClassMethods )
  end
  
  def initialize( input, options = {} )
    templates = @templates || options.fetch( :templates ) do
      self.class.template_library or ANTLR3::Template::Group.new
    end
    super( input, options )
    self.templates = templates
  end
  
  shared_attribute( :templates )
  
  def create_template( source, values = {} )
    @templates.new( source, values )
  end
  
  def fetch_template( name, values = {} )
    @templates.fetch( name, values )
  end
end

class Group < Module
  autoload :Lexer, 'antlr3/template/group-lexer'
  autoload :Parser, 'antlr3/template/group-parser'
  
  def self.parse( source, options = {} )
    namespace = options.fetch( :namespace, ::Object )
    lexer  = Lexer.new( source, options )
    parser = Parser.new( lexer, options )
    return( parser.group( namespace ) )
  end
  
  def self.load( group_file, options = {} )
    namespace = options.fetch( :namespace, ::Object )
    input = ANTLR3::FileStream.new( group_file, options )
    lexer = Lexer.new( input, options )
    parser = Parser.new( lexer, options )
    return( parser.group( namespace ) )
  end
  
  def self.new( &block )
    super do
      const_set( :TEMPLATES, {} )
      block_given? and module_eval( &block )
    end
  end
  
  def new( source, values = {} )
    erb = ERB.new( source, nil, '%' )
    template = Context.new( values )
    template.extend( self )
    sclass = class << template; self; end
    erb.def_method( sclass, 'to_s' )
    return( template )
  end
  
  def fetch( name, values = {} )
    self::TEMPLATES.fetch( name.to_s ).new( values )
  end
  
  def templates
    self::TEMPLATES
  end
  
  def template_defined?( name )
    self::TEMPLATES.has_key?( name.to_s )
  end
  
  def define_template( name, source, &block )
    name = name.to_s
    group = self
    template_class = Class.new( Context ) do
      @group = group
      include( group )
      # attr_accessor( *attributes )
      block and class_eval( &block )
    end
    erb = ERB.new( source, nil, '%' )
    erb.def_method( template_class, 'to_s' )
    self::TEMPLATES[ name ] = template_class
    define_template_methods( name )
    return( self )
  end
  
  def alias_template( new_name, old_name )
    template_class = self::TEMPLATES.fetch( old_name.to_s ) do
      raise( NameError,
        "undefined template `%s' for template group %p" % [ old_name, self ]
      )
    end
    TEMPLATES[ new_name.to_s ] = template_class.clone
    define_template_methods( new_name )
    return( self )
  end
  
private
  
  def define_template_methods( name )
    module_eval( <<-END )
      module_function
      
      def #{ name }( values = {} )
        TEMPLATES[ #{ name.to_s.inspect } ].new( values )
      end
      
      def #{ name }!( values = {} )
        TEMPLATES[ #{ name.to_s.inspect } ].new( values ).to_s
      end
    END
  end
end

class Context
  VARIABLE_FORM = /^(@)?[a-z_\x80-\xff][\w\x80-\xff]*$/
  SETTER_FORM = /^([a-z_\x80-\xff][\w\x80-\xff]*)=$/
  ATTR_FORM = /^[a-z_\x80-\xff][\w\x80-\xff]*$/
  
  def method_missing( method, *args )
    case name = method.to_s
    when SETTER_FORM then return( self[ $1 ] = *args )
    when ATTR_FORM
      args.empty? and has_ivar?( name ) and return( self[ name ] )
    end
    super
  end
  
  def []=( name, value )
    instance_variable_set( make_ivar( name ), value )
  end
  
  def []( name )
    name = make_ivar( name )
    instance_variable_defined?( name ) ? instance_variable_get( name ) : nil
  end
  
  def <<( variable_map )
    variable_map.each_pair do | name, value |
      self[ name ] = value
    end
    return( self )
  end
  
  def initialize( variable_map = {} )
    self << variable_map
  end
  
private
  
  def has_ivar?( name )
    instance_variable_defined?( make_ivar( name ) )
  end
  
  def make_ivar( name )
    name = name.to_s
    VARIABLE_FORM =~ name or
      raise ArgumentError, "cannot convert %p to an instance variable name" % name
    $1 ? name : "@#{ name }"
  end
  
end
end
end
