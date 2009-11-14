#!/usr/bin/ruby
# encoding: utf-8

module StringTemplate
module Zip
  module_function
  
  def unzip( group_file, options = {} )
    output_directory = options[ :output_directory] || File.dirname( group_file )
    verbose = options.fetch( :verbose, false )
    
    group = Group.load( group_file )
    mkdir( output_directory, verbose )
    directory = output_directory / group.name
    mkdir( directory, verbose )
    
    tokens = group.tokens.dup
    members = group.members.reverse
    
    until members.empty?
      case member = members.shift
      when Group::Template, Group::TemplateAlias, Group::TypeMap
        member_file = directory / member.name + '.st'
        
        next_one = members.first
        if next_one.is_a?( Group::Comment ) and next_one.doc_comment?
          members.shift
          span = next_one.through( member )
        else span = member.span
        end
        
        source = tokens[ span ].join('')
        tokens[ span ] = "<%= #{member.name} %>"
        
        open( member_file, 'w' ) do |f|
          f.write( source )
          if verbose
            type = member.class.to_s.split('::').last.snakecase
            $stderr.printf( "- wrote %s %s to %s\n", type, member.name, member_file )
          end
        end
      end
    end
    
    manifest_source = tokens.join('')
    manifest_file = directory / group.name + '.stg'
    open( manifest_file, 'w' ) do |f|
      f.write( manifest_source )
      verbose and $stderr.printf( "- wrote group manifest to %s\n", manifest_file )
    end
    return directory
  end
  
  def zip( manifest_file, options = {} )
    template_directory = options.fetch( :template_directory ) do
      File.dirname( manifest_file )
    end
    output_directory = options.fetch( :output_directory ) do
      File.dirname( template_directory )
    end
    verbose = options.fetch( :verbose, false )
    
    manifest = File.read( manifest_file )
    target_file = output_directory / File.basename( manifest_file )
    
    templates = {}
    for t in Dir[ template_directory / '*.st' ]
      name = File.basename( t, '.st' )
      templates[ name ] = File.read( t )
    end
    
    group_source = manifest.gsub( /<%= *(\S+) *%>/) do
      name = $1
      template = templates.fetch( name ) do
        raise("found no template file #{name}.st for group file #{manifest_file}")
      end
      verbose and $stderr.printf( "- included template %s\n", name )
      template
    end
    
    open_with_backup( target_file, verbose ) do |f|
      f.write( group_source )
      f.flush
      verbose and $stderr.puts "- validating resulting template group's syntax"
      Group.load( target_file )  # validate the group's syntax by parsing it
    end
    
    verbose and $stderr.printf( "- wrote template group file %s\n", target_file )
    return target_file
  end
  
  def open_with_backup( path, verbose )
    if backup = test( ?f, path )
      verbose and $stderr.puts("- backing up #{path} to #{path}.backup")
      File.rename( path, path + '.backup' )
    end
    
    begin
      open( path, 'w' ) do | file |
        yield( file )
      end
    rescue => error
      if backup
        File.rename( path + '.backup', path )
        verbose and $stderr.puts("! restored backup of #{path}")
      end
      raise error
    end
  end
  
  def mkdir( path, verbose )
    unless test( ?d, path )
      Dir.mkdir( path )
      verbose and $stderr.printf( "- mkdir( %p )\n", path )
    end
  end
  
end
end
