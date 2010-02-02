#!/usr/bin/ruby
# encoding: utf-8

require 'erb'
require 'benchmark'
require 'facets/hash/weave'
require 'monocle'
require 'enhanced-test/summary'
require 'enhanced-test/messages'
require 'enhanced-test/ruby-command'

module ANTLR3
module Test
autoload :Grammar, 'antlr3/test/grammar'
autoload :OpenStruct, 'ostruct'
autoload :YAML, 'yaml'

class Session
  TEST_TYPES = %w( unit functional benchmark profile ).freeze
  include Monocle
  
  attr_accessor :directory
  attr_reader :success, :timestamp, :output
  
  def initialize( options = {} )
    @timestamp = Time.now
    @options = options
    @output = options.delete( :output ) || $stdout
    data_directory = options.delete( :data_directory ) || '.'
    @directory = data_directory / @timestamp.strftime("%m-%d-%y-%I%M%P")
    
    yield( self ) if block_given?
  end
  
  def options( opts = nil )
    opts and @options = @options.weave( opts )
    return( @options )
  end
  
  for type in TEST_TYPES
    class_eval( <<-END, __FILE__, __LINE__ + 1 )
      def #{ type }
        @#{ type } ||= Class.new( #{ type.capitalize }Test )
      end
      
      def add_#{ type }( *paths )
        paths = [ paths ].flatten!
        options = @options[ :#{ type } ] ||= {}
        paths.last.is_a?( Hash ) and options.update( paths.pop )
        options = @options.weave( options )
        
        klass = self.#{ type }
        for path in paths
          if File.file?( path = path.to_s )
            klass.new( path, options )
          else 
            warn "skipping #\{ path } -- it is not an existing file"
          end
        end
        
        return self
      end
    END
  end
  
  def tests
    each_type.inject( [] ) do | tests, ( type, klass ) |
      tests.concat( klass.instances.values )
    end
  end
  
  def run_tests( options = {} )
    options = @options.weave( options )
    
    total_weight = tests.inject( 0 ) do | weight, test |
      weight + test.weight
    end
    
    @success = true
    Progress.run( total_weight, :output => @output ) do | bar |
      each_type { | type, klass | @success &= klass.run( bar, options ) }
      
      bar.clear_line
      report_failures( bar )
      unless @success or not $stdout.tty? && $stdin.tty?
        Pager.open { | pager | report_failures( pager ) }
      end
    end
    return( @success )
  end
  
  def clean( options = {} )
    options = @options.weave( options )
    tests.each { |t| t.clean( options ) }
  end
  
  def save
    open( 'summary.txt' ) { | f | summarize( f ) }
    open( 'failures.txt' ) { | f | report_failures( f ) } unless @success
    each_type { | type, klass | klass.save( @directory ) }
  end
  
private
  
  def report_failures( out )
    unless @success
      out.colors( :black, :red ) do
        out.puts( "Tests Resulted in Failures and/or Errors", "Details:" )
      end
      each_type do | type, klass |
        klass.report_failures( out )
      end
    end
  end
  
  def summarize( out )
    out.center do
      each_type { | type, klass | klass.summarize( out, @options ) }
    end
  end
  
  def open( file, options = {} )
    test( ?d, @directory ) or Dir.mkdir( @directory )
    OutputDevice.open( @directory / file, options ) do | f |
      yield( f )
    end
  end
  
  def serialize
    
  end
  
  def each_type
    block_given? or return( enum_for( :each_type ) )
    for type in TEST_TYPES
      klass = instance_variable_get( "@#{ type }" )
      klass and yield( type, klass )
    end
  end
end

class Session
class Item
  class << self
    attr_accessor :title
    def options()
      @options ||= {}
    end
    def instances() @instances ||= {} end
    def tests() instances.values end
    def failures() tests.select { | t | t.ran? and t.failed? } end
    
    def report_failures( out )
      failures = tests.select { | t | t.ran? and t.failed? }
      unless failures.empty?
        title and out.foreground( :cyan ) {
          out.puts( "From #{ title }:" ) }
        
        failures.sort_by { | t | t.name }.each do | t |
          t.report_failure( out )
        end
      end
    end
    
    def save( dir )
      # do nothing
    end
    
    def new( path, options = nil )
      instances.fetch( path.to_s ) do | path |
        @instances[ path ] = super( path, options || {} )
      end
    end
    
    def summarize( out, options )
      if out and title
        out.puts( title )
        out.puts
      end
    end
    
    def run( progress, options )
      success = true
      if @instances and not @instances.empty?
        for item in tests
          progress.stage( item.description, item.weight ) do
            success &= item.run( progress, options )
            item.ran = true
          end
        end
        
        progress.hide { progress.center { summarize( progress, options ) } }
      end
      return( success )
    rescue Interrupt
      progress.clear_line
      report_failures( progress )
      raise
    end
  end
  
  include Messages
  include RubyCommand
  include Monocle
  
  attr_accessor :ran
  attr_reader :path
  alias :ran? :ran
  
  def initialize( path, options )
    @path = path.to_s.freeze
    initialize_command( options )
    environment(
      'RUBYOPT' => nil,
      'RUBYLIB' => nil
    )
  end
  
  def clean( options = {} )
    verbose = options.fetch( :verbose, true )
    dry_run = options.fetch( :dry_run, false )
    for f in byproducts
      trash!( f, dry_run, verbose )
    end
  end
  
  def byproducts() [] end
  def name() File.basename( @path, '.*' ) end
  def type() end
  def description() "[#{type}] #{name}" end
  def weight() @weight ||= compute_weight end
  def failed?()  false end
  def report_failure( out )  end # do nothing
  
private
  def compute_weight() 1 end
  
  def trash!( path, dry_run, verbose )
    if File.directory?( path )
      Dir.children( path ).each { | child |
        trash!( child, dry_run, verbose )
      }
      verbose and puts( "trashing #{ path }" )
      Dir.rmdir( path ) unless dry_run
    elsif File.exists?( path )
      verbose and puts( "trashing #{ path }" )
      File.delete( path ) unless dry_run
    end
  end
end

class TestFile < Item
  DATA_RX = /#{ Regexp.escape( DIVIDER ) }(?=\d+:)/
  
  def self.summarize( out, options )
    super( out, options )
    tests = self.tests.sort_by { | t | t.name }
    summaries = tests.map { | t | t.summary }
    total = summaries.inject( Summary.new, :<< )
    table = Table.build( table_head, options ) do | table |
      yield( tests, total, table )
    end
    
    out.puts( table )
    out.puts
  end
  
  
  attr_reader :summary, :results
  
  def initialize( path, options = {} )
    super( path, options )
    @summary = Summary.new
    @results = nil
    @ran = false
  end
  
  def run( progress_bar, options = {} )
    if Hash === progress_bar then options, progress_bar = progress_bar, nil end
    environment( 'COLUMNS' => progress_bar.width ) if progress_bar
    
    @results = ruby( @path, options ) do | cmd, out, err |
      progress( progress_bar, out )
    end
    
    if @results.stdout =~ DATA_RX
      report, data = $`, $'
      @summary.restore( data.strip )
      @results.stdout = report
    end
    return( @results.success? )
  end
  
  def source() @source ||= File.read( @path ) end
  def failed?() @results and @results.failed? end
  
  def report_failure( out )
    out.foreground( :yellow ) { out.puts( @path ) }
    if @results.status == 1
      out.puts( @results.stderr.indent( 2 ) )
    else
      out.puts( @results.stdout.indent( 2 ) )
    end
  end
  
private
  
  def compute_weight
    source.lines.grep( /^ *(def test_|example\b|ast_test\b)/ ).
      length * EXAMPLE_WEIGHT
  end
  
  def progress( bar, pipe )
    while c = pipe.getc
      case c
      when GRAMMAR_COMPILE
        bar.step( GRAMMAR_WEIGHT ) if bar
      when PASSED
        bar.step( EXAMPLE_WEIGHT ) if bar
      when PENDING
        if bar
          bar.bar_color = :yellow
          bar.step( EXAMPLE_WEIGHT )
        end
      when FAILED
        if bar
          bar.bar_color = :magenta
          bar.step( EXAMPLE_WEIGHT )
        end
      when SECTION
        pipe.getc == SECTION and break
      end
    end
  end
  
end

class FunctionalTest < TestFile
  INLINE_GRAMMARS = %r[^
    \ * (?:(?:lexer|tree|parser) \ +)?
    grammar \ + ([A-Z]\w+) \ * ;
    ( .+? ) \n
    \ *END $
  ]mx
  
  TITLES = Hash.new do | h, word |
    word.tr( '_-', '  ' ).split(/\s+/).
      map { | w | w.capitalize }.join(' ')
  end
  TITLES['ast-output'] = 'AST Output'
  
  def self.legend( options )
    fields = YAML.load( <<-'END'.fixed_indent( 0 ) )
      ---
      Name: The test name
      Status: A brief summarizing description of the test result
      "#T": Total number of examples in the test file
      ":)": Passed examples
      ":|": Pending examples
      ":(": Examples that failed expectations
      "E!": Examples that raised an error before completion
      IM: >-
        Examples which raised a runtime error while attempting
        import (via require) the ANTLR generated code
      SX: >-
        Examples which raised syntax errors originating from
        the ANTLR generated code
      AC: >-
        ANTLR compilation failure -- examples that use grammars
        which ANTLR failed to compile
      Time: Time elapsed while running all examples (in seconds)
    END
    
    Table.new( 2 ) do | table |
      legend.columns[1].wrap = true
      legend.columns[0].flow = false
      legend.section( "Legend", :align => 'center' )
      
      for field in %w[ Name Status #T :) :| :( E! IM SX AC Time ]
        table.row( field, fields[ field ] )
      end
    end
  end
  
  def self.summarize( out, options )
    super( out, options ) do | tests, total, table |
      categorized = tests.group_by { | t | t.category }.sort
      
      for category, tests in categorized
        table.section( TITLES[ category ], :align => :center )
        for test in tests.sort_by { | t | t.name }
          table.row( test.summarize )
        end
      end
      
      table.divider
      table.row( 'TOTAL', *total.report )
    end
  end
  
  def self.table_head; %w[ Name Status #T :) :| :( E! IM SX AC Time ]; end
  def self.title; "Functional Test Results"; end
  
  def type() 'functional' end
  def category() File.basename( File.dirname( path ) ) end
  def description() "[#{ type }] #{ category }: #{ name }" end
  
  def byproducts
    Dir[ File.dirname( @path ) / File.basename( @path, '.rb' ) ]
  end
  
  def summarize
    report = 
      case @results.status
      when nil then @summary.report( :description => 'not run'.blue )
      when 0, 2 then @summary.report
      when 1 then @summary.report( :description => 'test error'.cyan )
      else
        @summary.report(
          :description => ('huh? (%p)' % @status).yellow
        )
      end
    [ name, *report ]
  end
  
  
  def inline_grammars
    grammars = {}
    source.scan( INLINE_GRAMMARS ) do | name, body |
      grammars[ name ] = body
    end
    return grammars
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
    compile_weight = ( compile_weight - imported.length ).at_least( 0 )
    @source = nil
    
    return( super + GRAMMAR_WEIGHT * compile_weight )
  end
  
end

class UnitTest < TestFile
  def self.summarize( out, options )
    super( out, options ) do | tests, total, table |
      for test in tests
        table.row( test.summarize )
      end
      table.divider
      table.row( 'TOTAL', *total.unit_test_report )
    end
  end
  
  def self.title() "Unit Test Results" end
  def self.table_head() %w[ Name Status #T :) :| :( E! Time ] end
  
  def type() 'unit' end
  def name() super.gsub( /test\-/, '' ) end
  
  def summarize
    report = 
      case @results.status
      when nil then @summary.unit_test_report( :description => 'not run'.blue )
      when 0, 2 then @summary.unit_test_report
      when 1 then @summary.unit_test_report( :description => 'test error'.cyan )
      else
        @summary.unit_test_report(
          :description => ('huh? (%p)' % @status).yellow
        )
      end
    [ name, *report ]
  end
end

class PerformanceTest < Item
  result_members = RubyCommand::Result.members.map! { |m| m.to_sym }
  SampleSet = Struct.new(
    :name, :data, :script, :repetitions, :parser_rule, :tree_rule,
    :error, :performance_data, *result_members
  )
  attr_accessor :repetitions, :parser_rule, :tree_rule
  attr_reader :compile_options, :grammar, :output_directory,
              :samples, :configuration
  def self.save( directory )
    perf_tests = tests.select { |i| i.ran? }
    unless perf_tests.empty?
      directory = directory / self.directory_name
      test( ?d, directory ) or Dir.mkdir( directory )
      for pt in perf_tests
        pt.save( directory )
      end
    end
  end
  
  def initialize( file, options = {} )
    file =~ /\.yaml$/ or
      raise(ArgumentError, "expected benchmark spec file to be a .yaml file")
    super( file, options )
    
    @output_directory = file.chomp('.yaml')
    test( ?d, @output_directory ) or Dir.mkdir( @output_directory )
    
    @configuration = data = YAML.load_file( file ).freeze
    @repetitions = data.fetch( :repetitions, 10 )
    @parser_rule = data[ :parser_rule ]
    @tree_rule = data[ :parser_rule ]
    
    @samples = data.fetch( :samples, {} ).map do | name, config |
      sample = SampleSet.new( name, config.fetch( :data ) )
      sample.script      = @output_directory / script_name( name ) << '.rb'
      sample.repetitions = config.fetch( :repetitions, @repetitions )
      sample.parser_rule = config.fetch( :parser_rule, @parser_rule )
      sample.tree_rule   = config.fetch( :tree_rule,   @tree_rule   )
      sample
    end
    
    @compile_options = data.fetch( :compile_options, {} )
    @grammar = Grammar.inline(
      data[ :grammar ], :output_directory => @output_directory
    )
    @grammar.depends_on( $project.antlr.jar )
    @grammar.depends_on( file )
  end
  
  def by_products() [ @output_directory ] end
  
  def run( progress_bar, options = {} )
    if Hash === progress_bar then options, progress_bar = progress_bar, nil end
    
    if @grammar.stale?
      @grammar.compile( @compile_options )
      progress_bar.step( GRAMMAR_WEIGHT ) if progress_bar
    end
    
    for sample in @samples
      open( sample.script, 'w' ) do | f |
        f.write( generate_script( sample ) )
      end
      
      ruby( sample.script ) do | cmd, out, err |
        progress( progress_bar, out )
      end.each_pair do | field, value |
        sample[ field ] = value
      end
      
      yield( sample ) if block_given?
    end
    
    return( @samples.none? { | s | s.error } )
  end
  
  def failed?() @samples.any? { | sample | sample.error } end
  
  def report_failure( out )
    out.foreground( :yellow ) { out.puts( @path ) }
    for sample in @samples
      if err = sample.error
        out.magenta { out.puts( "  #{ sample.name }" ) }
        out.puts( "#{ err.class }: #{ err.message }".indent( 2 ) )
        out.puts( *err.backtrace.map { | call | "  - #{ call }" } )
      end
    end
  end
  
private
  def compute_weight
    @grammar.stale? ? GRAMMAR_WEIGHT : 0
  end
  
  def progress( bar, out ) end # do nothing
end

class ProfileTest < PerformanceTest
  def self.title; nil; end
  def self.directory_name() 'profiling-reports' end
  def script_name( name ) "profile_#{ name }" end
  def type() 'profile' end
  def summarize( * ) end
  
  def save( directory )
    for sample in samples
      file_name = "#{name}-#{sample.name}.html"
      open( directory / file_name, 'w' ) do | f |
        f.write( sample.stdout )
      end
    end
  end
  
private
  def compute_weight
    super + ( @samples.length * PROFILE_WEIGHT )
  end

  def progress( bar, out )
    bar and bar.step( PROFILE_WEIGHT )
  end
end

class BenchmarkTest < PerformanceTest
  BenchmarkData = Struct.new( :lexing, :parsing )
  TimeStats = Struct.new( :utime, :stime, :cutime, :cstime, :real, :total )
  Stats = Struct.new(:count, :min, :max, :mean, :standard_deviation) do
    def self.extract( values )
      if values.length == 1
        v = values.first
        new( 1, v, v, v, 0 )
      else
        n = values.length
        total = values.inject( :+ ).to_f
        mean = total / n
        stddev = Math.sqrt( values.map { | v | ( v - mean ) ** 2 }.
          inject( :+ ) / ( n - 1 ) )
        new( n, values.min, values.max, mean, stddev )
      end
    end
    
    def self.for_table( records )
      cummulative = TimeStats.new
      cummulative.members.each do | field |
        data = records.map { | r | r.send( field ) }
        cummulative[ field ] = extract( data )
      end
      return cummulative
    end
  end
  
  def self.legend
    fields = YAML.load( <<-'END'.fixed_indent( 0 ) )
      ---
      Action: >-
        The functionality for which times were measured
      Item: >-
        The name of the input sample with which the action
        was performed
      Trials: >-
        The number of times the action was repeated
      User: >-
        The average time elapsed within the test process
        during each trial
      System: >-
        The average time that the system spent on other
        processes during each trial
      Total: >-
        The sum of `User' and `System'
      Real: >-
        The average clock time elapsed during each trial
        as calculated using the Time class
        instead of Process.times
    END
    Table.build( 2 ) do | legend |
      legend.columns[1].wrap = true
      legend.columns[0].flow = false
      legend.section( "Legend", :align => 'center' )
      
      for column in %w( Action Item Trials Total User System Real )
        legend.row( column, fields[ column ] )
        legend.divider
      end
    end
  end
  
  def self.summarize( out, options )
    super( out, options )
    bench_tests = tests.sort_by { | t | t.name }
    columns = %w( Action Item Trials Total User System Real )
    out.puts(
      Table.build( columns ) do | table |
        for test in bench_tests
          test.summarize( table )
        end
      end
    )
    out.puts
  end
  
  def self.title() "Benchmarking Performance Data" end
  def self.directory_name() 'benchmark-data' end
  
  def script_name( name ) "bench_#{ name }" end
  def type() 'benchmark' end
  
  def run( progress_bar, options = {} )
    @load_times = Hash.new { |h, k| h[ k ] = [] }
    
    success = super( progress_bar, options ) do | sample |
      case obj = Marshal.load( sample.stdout )
      when Array
        sample.error = nil
        load_times, lexing, parsing = obj
        load_times.each { | file, dur | @load_times[ file ] << dur }
        lexing and lexing = Stats.for_table( lexing )
        parsing and parsing = Stats.for_table( parsing )
        sample.performance_data = BenchmarkData.new( lexing, parsing )
      else
        sample.error = obj
        sample.performance_data = nil
      end
    end
    for file, times in @load_times
      @load_times[ file ] = Stats.for_table( times )
    end
    return( success )
  end
  
  def save( directory )
    report = {}.update( @configuration )
    for sample in samples
      report[ :samples ][ sample.name ][ :performance_data ] =
        sample.performance_data.to_h!
    end
    
    open( directory / name + '.yaml', 'w' ) do | f |
      YAML.dump( report, f )
    end
  end
  
  #:name, :data, :script, :repetitions, :parser_rule, :tree_rule,
  #:error, :performance_data, *result_members
    
  def summarize( table )
    table.section( name, :align => 'center' )
    make_row = proc do | action, item, stat |
      count = stat.real.count
      r = [ :total, :utime, :stime, :real ].map! do | t |
        '%.3f' % stat.send(  t ).mean
      end
      table.row( [ action, item, count, *r ] )
    end
    
    for file, times in @load_times
      file = File.basename( file )
      make_row[ 'loading', file, times ]
    end
    
    for sample in @samples
      if data = sample.performance_data
        data.each_pair do | field, times |
          times and make_row[ field.to_s, sample.name, times ]
        end
      end
    end
  end
  
private
  def progress( bar, out )
    begin
      c = out.getc
      bar.step if bar and c == ?.
    end until c.nil? or c == ?~
  end
  
  def compute_weight
    weight = super
    benches = @samples.length * ( @repetitions + 1 )
    @grammar.has_lexer?  and weight += benches
    @grammar.has_parser? and weight += benches
    return( weight )
  end
  
end

ERB.new( <<-'PROF'.chomp!, nil, '%' ).def_method( ProfileTest, 'generate_script( sample )' )
require 'ruby-prof'

$real_stdout = $stdout.dup
$stdout.reopen( $stderr )
$input_data = DATA.read

profile_data = RubyProf.profile do
% for file in @grammar.target_files
  require( <%= file.inspect %> )
% end

% if @grammar.has_lexer?
  $input_stream = ANTLR3::StringStream.new( $input_data )
  $lexer = <%= @grammar.name %>::Lexer.new( $input_stream )
  $tokens = ANTLR3::CommonTokenStream.new( $lexer )
% end
% if @grammar.has_parser?
  $parser = <%= @grammar.name %>::Parser.new( $tokens )
  $parser_return = $parser.<%= sample.parser_rule %>
% end
end

report = RubyProf::GraphHtmlPrinter.new( profile_data )
report.print( $real_stdout )
__END__
<%= sample.data %>
PROF

ERB.new( <<-'BENCH', nil, '%' ).def_method( BenchmarkTest, 'generate_script( sample )' )
$real_stdout = $stdout.dup
$stdout.reopen( $stderr )
$progress = proc do | c |
  $real_stdout.putc( c )
  $real_stdout.flush
end

require 'benchmark'

$load_times = {}
$lexing = <% if @grammar.has_lexer? %>Array.new( <%= sample.repetitions %> )<% else %>nil<% end %>
$parsing = <% if @grammar.has_parser? %>Array.new( <%= sample.repetitions %> )<% else %>nil<% end %>
$trials = [ $load_times, $lexing, $parsing ]

$dump = proc do | obj, status |
  $progress[ ?~ ]
  Marshal.dump( obj, $real_stdout )
  $real_stdout.flush
  exit!( status )
end

$input_data = DATA.read
at_exit { $! ? $dump[ $!, 1 ] : $dump[ $trials, 0 ] }

% for file in @grammar.target_files.grep(/\.rb$/i)
% file = file.inspect
$progress[ ?. ]
$load_times[ <%= file %> ] = Benchmark.measure { load( <%= file %> ) }
% end

<%= sample.repetitions %>.times do | i |
% if @grammar.has_lexer?
  $progress[ ?. ]
  $lexing[ i ] = Benchmark.measure do
    $input_stream = ANTLR3::StringStream.new( $input_data )
    $lexer = <%= @grammar.name %>::Lexer.new( $input_stream )
    $tokens = ANTLR3::CommonTokenStream.new( $lexer )
  end
% end
% if @grammar.has_parser?
  $progress[ ?. ]
  $parsing[ i ] = Benchmark.measure do
    $parser = <%= @grammar.name %>::Parser.new( $tokens )
    $parser_return = $parser.<%= sample.parser_rule %>
  end
% end
end

__END__
<%= sample.data %>
BENCH
end  # class Session
end  # module Test
end  # module ANTLR3
