#!/usr/bin/ruby
# encoding: utf-8

module ANTLR3
module Test
module RubyCommand
  VARS = %w(
    load_path ruby_options require arguments environment
  ).map! { |v| v.to_sym }
  
  Result = Struct.new( :command, :stdout, :stderr, :process ) do
    
    def pid
      process.pid
    end
    
    def status
      process.exitstatus
    end
    
    def failed?
      not process.success?
    end
    
    def success?
      process.success?
    end
    
  end
  
  attr_accessor :ruby_program
  
  def require( *libs )
    ( @require ||= [] ).concat( libs )
  end
  
  def load_path( *paths )
    ( @load_path ||= [] ).concat( paths )
  end
  
  def ruby_options( *args )
    ( @ruby_options ||= [] ).concat( args )
  end
  
  def arguments( *args )
    ( @arguments ||= [] ).concat( args )
  end
  
  def environment( vars = nil )
    @environment ||= {}
    vars and @environment.update( vars )
    return( @environment )
  end
  
  
  def initialize_command( options = {} )
    @load_path = @require = @arguments =
    @ruby_options = @environment = nil
    VARS.each { | var | val = options[ var ] and send( var, val ) }
    @ruby_name = options.fetch( :ruby, 'ruby' )
  end
  private :initialize_command
  
  module_function
  
  def ruby( path, options = {}, &block )
    command = ruby_command( path, options )
    env = 
      if vars = options[ :environment ]
        environment.merge( vars )
      else environment
      end
    ENV.temporary( env ) do 
      execute( command ) { |out, err|
        yield( command, out, err ) if block_given?
      }
    end
  end
  
  def ruby_command( path, options = {} )
    ruby = options.fetch( :ruby, @ruby_name )
    parts = [ ruby ]
    
    load_path = option_list( options, :load_path, @load_path ).join(':')
    parts.push( '-I' << load_path ) unless load_path.empty?
    
    option_list( options, :require, @require ).
      each { | r | parts.push( '-r' << r ) }
    option_list( options, :ruby_options, @ruby_options ).
      each { | arg | parts.push( arg ) }
    
    parts.push( escape( path.to_s ) )
    
    option_list( options, :arguments, @arguments ).
      each { | a | parts.push( a ) }
    
    return( parts.join( ' ' ) )
  end
  
  def execute( command )
    result = Result.new( command )
    stdios = [ $stdout, $stderr ].map! { | io | [ io, *IO.pipe ] }
    
    pid = fork do
      stdios.each { |io, r, w| io.reopen( w ); r.close; w.close; }
      exec( command )
    end
    
    outputs = stdios.map { |io, r, w| w.close; r }
    block_given? and yield( *outputs )
    
    outputs.each_with_index do | out, i |
      result[ i + 1 ] = out.read
      out.close
    end
    
    Process.waitpid( pid )
    result.process = $?
    return( result )
  end
  
  def escape( text )
    if text.empty? then "''"
    else
      text.gsub( /([^A-Za-z0-9_\-.,:\/@\n])/n ) { '\\' << $1 }.
        gsub( /\n/, "'\n'" )
    end
  end
  
  def option_list( opts, name, var_values = nil )
    list = [ opts[ name ] ]
    var_values and list.concat( var_values.flatten! || var_values )
    
    list.flatten!; list.compact!
    list.map! { |arg| escape( arg.to_s ) }
  end
  
end
end
end
