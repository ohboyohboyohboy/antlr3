$real_stdout = $stdout.dup
$stdout.reopen( $stderr )
$progress = proc do | c |
  $real_stdout.putc( c )
  $real_stdout.flush
end

require 'benchmark'

$load_times = {}
$lexing = Array.new( 10 )
$parsing = nil
$trials = [ $load_times, $lexing, $parsing ]

$dump = proc do | obj, status |
  $progress[ ?~ ]
  Marshal.dump( obj, $real_stdout )
  $real_stdout.flush
  exit!( status )
end

$input_data = DATA.read
at_exit { $! ? $dump[ $!, 1 ] : $dump[ $trials, 0 ] }

$progress[ ?. ]
$load_times[ "/home/kyle/lib/ruby/projects/antlr3/test/benchmark/XML/XML.rb" ] = Benchmark.measure { load( "/home/kyle/lib/ruby/projects/antlr3/test/benchmark/XML/XML.rb" ) }

10.times do | i |
  $progress[ ?. ]
  $lexing[ i ] = Benchmark.measure do
    $input_stream = ANTLR3::StringStream.new( $input_data )
    $lexer = XML::Lexer.new( $input_stream )
    $tokens = ANTLR3::CommonTokenStream.new( $lexer )
  end
end

__END__
<?xml version="1.0" encoding="utf-8"?>
<rdoc>
<file-list>
  <file name="antlr3.rb" id="lib%2fantlr3.rb">
    <file-info>
      <path>lib/antlr3.rb</path>
      <dtm-modified>Tue Aug 11 11:25:02 -0400 2009</dtm-modified>
    </file-info>

    <description>
<p>
encoding: utf-8
</p>

    </description>
    <contents>
      <required-file-list>
         <required-file name="set"
         />
         <required-file name="stringio"
         />
         <required-file name="antlr3/constants"
         />
         <required-file name="antlr3/errors"
         />
         <required-file name="antlr3/tokens"
         />
         <required-file name="antlr3/recognizers"
         />
         <required-file name="antlr3/dfa"
         />
         <required-file name="antlr3/streams"
         />
      </required-file-list>
     </contents>

  </file>
</file-list>
<class-module-list>
  <Module name="ANTLR3" id="ANTLR3">
    <classmod-info>
      <infiles>      
        <infile><a href="#lib%2fantlr3.rb">lib/antlr3.rb</a></infile>
      </infiles>
    </classmod-info>

    <description>
<p>
encoding: utf-8
</p>

    </description>
    <contents>
     </contents>

  </Module>
</class-module-list>
</rdoc>
