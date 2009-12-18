require 'ruby-prof'

$real_stdout = $stdout.dup
$stdout.reopen( $stderr )
$input_data = DATA.read

profile_data = RubyProf.profile do
  require( "/home/kyle/lib/ruby/projects/antlr3/test/benchmark/XML/XML.rb" )

  $input_stream = ANTLR3::StringStream.new( $input_data )
  $lexer = XML::Lexer.new( $input_stream )
  $tokens = ANTLR3::CommonTokenStream.new( $lexer )
end

report = RubyProf::GraphHtmlPrinter.new( profile_data )
report.print( $real_stdout )
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