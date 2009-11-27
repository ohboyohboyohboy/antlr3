#!/usr/bin/ruby
# encoding: utf-8

require 'facets/progressbar'
require 'text'
require 'enhanced-test/summary'
require 'yaml'
require 'tempfile'

module ANTLR3
module Test
class Manager
  TITLES = Hash.new do | h, word |
    word.tr('_-', '  ').split(/\s+/).
      map { | w | w.capitalize }.join(' ')
  end
  TITLES['ast-output'] = 'AST Output'
  
  TABLE_HEAD = %w[
    Name Status #T :) :| :( E! IM SX AC Time
  ]
  
  attr_accessor :out
  attr_reader :tests
  
  def initialize( options = {} )
    @tests = []
    @out = options.fetch( :out, $stdout )
    yield( self ) if block_given?
  end
  
  def functional_tests( *paths )
    paths = [ paths ].flatten!.map! do | path |
      File.expand_path( path.to_s )
    end
    
    for path in paths
      if File.file?( path )
        @tests << FunctionalTest.new( path )
      else 
        warn( "skipping #{ path } -- it is not an existing file" )
      end
    end
    
    return self
  end
  
  def include_functional_category( *categories )
    for category in categories
      functional_tests(
        $project.functional_testing!( category.to_s, '*.rb' )
      )
    end
    
    return self
  end
  
  def unit_tests( *paths )
    paths = [ paths ].flatten!.map! do | path |
      File.expand_path( path.to_s )
    end
    
    for path in paths
      if File.file?( path )
        @tests << Unit.new( path )
      else 
        warn( "skipping #{ path } -- it is not an existing file" )
      end
    end
    
    return self
  end
  
  def run_tests( options = {} )
    success = true
    
    with_progress do | bar |
      
      options[ :progress ] ||= bar
      
      for test in @tests
        current = bar.current
        
        success &= test.run( options )
        
        bar.set( test.weight + current )  # keep progress bar on expected track
      end
      
    end
    
    return( success )
  end
  
  def summarize( options = {} )
    out = options.fetch( :out, @out )
    categorized = @tests.group_by { | t | t.category }.sort
    
    out.puts(
      Text::Table.build( TABLE_HEAD, options ) do | table |
        for category, tests in categorized
          table.section TITLES[ category ], :align => 'center'
          
          tests.sort_by { |t| t.name }.each do | test |
            table.row test.summarize
          end
          
        end
        
        table.divider
        table.row( [ 'TOTAL'.cyan, '---', total.total, *total.to_a ] )
      end
    )
  end
  
  def total
    @tests.inject( Summary.new ) do | total, test |
      total << test.summary
    end
  end
  
  def failures
    @tests.select { | t | t.failed? }
  end
  
  def dump_failures( io )
    for t in failures
      io.puts( t.output )
    end
  end
  
  def dump_results( io = nil )
    YAML.dump( @tests, io )
  end
  
private
  
  def total_weight
    @tests.inject( 0 ) { | w, t | w + t.weight }
  end
  
  def with_progress( msg = '' )
    bar = ProgressBar.new( msg, total_weight, @out )
    yield( bar )
  ensure
    bar.clear
  end
  

class Test
  attr_reader :load_paths, :required_libs, :path,
              :status, :output, :test_options
  
  def initialize( path )
    @path = path
    @load_paths = []
    @required_libs = []
    @status = @output = nil
    @test_options = []
    
    load_path( $project.lib )
  end
  
  def test_option( *opts )
    opts = [ opts ].flatten!.map do | opt |
      $project.shell_escape( opt )
    end
    
    @test_options.concat( opts )
  end
  def load_path( *paths )
    paths = [ paths ].flatten!.map! do | path |
      $project.shell_escape( path )
    end
    
    @load_paths.concat( paths )
  end
  
  def require( *libs )
    libs = [ libs ].flatten!.map! do | lib |
      $project.shell_escape( lib )
    end
    
    @required_libs.concat( libs )
  end
  
  def name
    File.basename( @path, '.rb' )
  end
  
  def description
    name
  end
  
  def run( options = {} )
    progress = options[ :progress ] and progress.title = description
    cmd = command( options )
    pre_run( cmd )
    
    output =
      ENV.temporary( "COLUMNS", $stderr.screen_width ) do
        IO.popen( cmd ) do | pipe |
          @output = block_given? ? yield( pipe, progress ) : pipe.read
        end
      end
    
    @status = $?.exitstatus
    post_run( output, $? )
    
    return( @status.zero? )
  end
  
  def ran?
    not @status.nil?
  end
  
  def summarize
    description =
      if ran? then passed? ? 'passed'.green : 'failed'.red
      else 'not run'.yellow
      end
    [ name, description ]
  end
  
  def passed?
    ran? and @status.zero?
  end
  
  def failed?
    ran? and not @status.zero?
  end
  
  def command( options = {} )
    ruby = options.fetch( :ruby, 'ruby' )
    stderr = options[ :stderr ]
    
    parts = [ ruby ]
    
    parts << (
      '-I' << load_paths.join( ':' )
    ) unless load_path.empty?
    
    for lib in required_libs
      parts << ( '-r' << lib )
    end
    
    parts << $project.shell_escape( path )
    parts.concat( test_options )
    
    stderr and parts << "2>#{stderr}"
    
    return parts.join( ' ' )
  end
  
  def weight
    1
  end
  

private
  
  def command_output( cmd_pipe, progress )
    @output = cmd_pipe.read
    progress and progress.inc
  end
  
  def pre_run( cmd )
    # nothing
  end
  
  def post_run( output, process_status )
    # nothing
  end

end

class FunctionalTest < Test
  INLINE_GRAMMARS = %r[^
    \ * (?:(?:lexer|tree|parser) \ +)?
    grammar \ + ([A-Z]\w+) \ * ;
    ( .+? ) \n
    \ *END $
  ]mx
  
  attr_reader :summary, :error_output
  
  def initialize( path )
    super
    load_path( $project.dev_lib )
    require( $project.path( 'config/antlr3.rb' ) )
    test_option( '--require', $project.dev_lib( 'enhanced-test.rb' ) )
    test_option( '--format', "ANTLRFormatter" )
    test_option( '--runner', "ANTLRRunner" )
    test_option( '-b' )
    @summary = Summary.new
    @error_output = nil
    @source = @weight = nil
  end
  
  def run( options = {} )
    Tempfile.open( name ) do | error_out |
      options[ :stderr ] = error_out.path
      
      out = super(options) do | pipe, progress |
        while c = pipe.getc
          case c
          when ?. then progress.inc( 5 )
          when ?+, ?-, ?! then progress.inc
          else
            pipe.ungetc( c )
            break
          end
        end
        
        output = pipe.read
        
        if output =~ /\n__END__\n(?=\d+:)/
          output, stats = $`, $'
          @summary.restore( stats )
        end
        
        output
      end
      
      error_out.rewind
      @error_output = error_out.read
      
      out
    end
  end
  
  def summarize
    report = 
      case @status
      when nil then @summary.report( :description => 'not run'.blue )
      when 0, 2 then @summary.report
      when 1 then @summary.report( :description => 'test error'.cyan )
      else
        @summary.report(
          :description => ('huh? (%p)' % @status).yellow
        )
      end
    
    return [ name, *report ]
  end
  
  def category
    File.basename( File.dirname( path ) )
  end
  
  def description
    "#{ category }: #{ name }"
  end
  
  def weight
    @weight ||= compute_weight
  end
  
  def inline_grammars
    grammars = {}
    source.scan( INLINE_GRAMMARS ) do | name, body |
      grammars[ name ] = body
    end
    return grammars
  end
  
  def source
    @source ||= File.read( @path )
  end
  
private
  
  def compute_weight
    grammars = inline_grammars
    imported = []
    
    compile_weight = grammars.length
    for name, body in grammars
      body.scan( /^ *import +(.+?);/ ) do
        $1.strip!
        imported |= $1.split(/\s*,\s*/)
      end
    end
    compile_weight -= imported.length
    test_weight = source.scan( /^ +(example|ast_test)\b/ ).length
    @source = nil
    
    return( 5 * compile_weight.at_least( 0 ) + test_weight )
  end
  
end

class UnitTest < Test
  def initialize( path )
    super
    load_path( $project.dev_lib )
    require( $project.path( 'config/antlr3.rb' ) )
    test_option( '--require', $project.dev_lib( 'enhanced-test.rb' ) )
    test_option( '--format', "ANTLRFormatter" )
  end
end
end
end
end

class ProgressBar
  attr_reader :current
  
  def clear
    @out.print( "\r" << ' ' * get_width << "\r" )
    @out.flush
  end
end
