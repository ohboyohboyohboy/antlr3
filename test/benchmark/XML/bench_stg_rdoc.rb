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
<!DOCTYPE language SYSTEM "language.dtd">

<language name="StringTemplateGroup" section="Markup" extensions="*.stg" version="0.1" casesensitive="true" author="Kyle Yetter" hidden="false">
  <highlighting>
    <list name="keywords">
      <item> default </item>
      <item> first </item>
      <item> group </item>
      <item> if </item>
      <item> implements </item>
      <item> interface </item>
      <item> last </item>
      <item> length </item>
      <item> optional </item>
      <item> rest </item>
      <item> strip </item>
      <item> super </item>
      <item> trunc </item>
      <item> else </item>
      <item> endif </item>
      <item> elseif </item>
    </list>

    <contexts>
      <!-- Normal -->
      <context name="Normal" attribute="Normal Text" lineEndContext="#stay">
        <StringDetect String="group" attribute="Keyword" context="GroupDeclaration" />
        <RegExpr String="[A-Z][\w_]*" attribute="Group Or Interface Name" context="#stay" />
        <RegExpr String="^[a-zA-Z_][\w_]*" attribute="Template Name" beginRegion="template_entry" context="#stay" />
        <RegExpr String="@[a-zA-Z_][\w_]*\.[a-z_A-Z][\w_]*" beginRegion="template_entry" attribute="Template Name" context="#stay" />
        <DetectChar char=";" context="#stay" attribute="Delimiter" />
        <DetectChar char="(" context="Attribute List" attribute="Delimiter" />
        <StringDetect String="/*" context="Long Comment" beginRegion="Comment" attribute="Comment" />
        <StringDetect String="//" context="Line Comment" attribute="Comment" />
        <StringDetect String="::=" context="StartDeclaration" attribute="Operator" />
        <StringDetect String="&lt;&lt;" context="Big Template" attribute="Delimiter" />
        <StringDetect String="&quot;" context="Little Template" attribute="Delimiter" />
        <DetectSpaces context="#stay" />
      </context>
      <context name="StartDeclaration" attribute="Normal Text" lineEndContext="#stay">
        <!-- template aliases ala ``aTemplate(...) ::= anotherTemplate'' -->
        <RegExpr String="[a-zA-Z_][\w_]*" attribute="Template Name" endRegion="template_entry" context="Normal" />
        <RegExpr String="@[a-zA-Z_][\w_]*\.[a-z_A-Z][\w_]*" endRegion="template_entry" attribute="Template Name" context="Normal" />

        <!-- comments -->
        <StringDetect String="/*" context="Long Comment" beginRegion="Comment" attribute="Comment" />
        <StringDetect String="//" context="Line Comment" attribute="Comment" />

        <!-- templates -->
        <StringDetect String="&lt;&lt;" context="Big Template" attribute="Delimiter" />
        <StringDetect String="&quot;" context="Little Template" attribute="Delimiter" />

        <!-- TODO: type maps (brackets) -->
        <DetectSpaces context="#stay" />
      </context>

      <context name="GroupDeclaration" attribute="Raw String" lineEndContext="#stay">
        <RegExpr String="\b(implements|interface)\b" attribute="Keyword" context="#stay" />
        <RegExpr String="[\w_]+" attribute="Group Or Interface Name" context="#stay" />
        <DetectChar char=";" context="Normal" attribute="Delimiter" />
        <StringDetect String="/*" context="Long Comment" beginRegion="Comment" attribute="Comment" />
        <StringDetect String="//" context="Line Comment" attribute="Comment" />
        <DetectSpaces context="#stay" />
      </context>

      <!-- Attribute List -->
      <context name="Attribute List" attribute="Raw String" lineEndContext="#stay">
        <RegExpr String="[a-zA-Z_][a-zA-Z_0-9]*" attribute="Attribute" context="#stay" />
        <RegExpr String="@[a-zA-Z_][a-zA-Z_0-9]*\.[a-zA-Z_][a-zA-Z_0-9]*" attribute="Attribute" context="#stay" />
        <DetectChar context="AnonymousTemplate" char="{" attribute="Delimiter" beginRegion="anonymous_template" />
        <DetectChar char="," context="#stay" attribute="Delimiter" />
        <DetectSpaces context="#stay" />
        <DetectChar char="=" context="#stay" attribute="Operator" />
        <DetectChar char="&quot;" context="Plain String" attribute="String" />
        <DetectChar char=")" context="Normal" attribute="Delimiter" />
      </context>

      <!-- Plain String -->
      <context name="Plain String" attribute="String" lineEndContext="#stay">
        <RegExpr attribute="String" String="\\\&quot;" context="#stay"/>
        <StringDetect attribute="String" String="\\" context="#stay"/>
        <DetectChar char="&quot;" attribute="String" context="#pop" />
      </context>

      <!-- Long Comment -->
      <context name="Long Comment" attribute="Comment" lineEndContext="#stay">
        <StringDetect String="*/" context="#pop" endRegion="Comment" attribute="Comment" />
      </context>

      <!-- Line Comment -->
      <context name="Line Comment" attribute="Comment" lineEndContext="#pop">
        <RegExpr String=".*" attribute="Comment" />
      </context>


      <!-- Template -->
      <context name="Template" attribute="Template Text" lineEndContext="#stay">
        <RegExpr attribute="Template Text" String="\\." context="#stay"/>
        <RegExpr attribute="Character" String="&lt;\\[nutr ]([0-9A-Fa-F][0-9A-Fa-F][0-9A-Fa-F][0-9A-Fa-F]|)&gt;" context="#stay"/>
  	    <StringDetect attribute="Substitution Comment" String="&lt;!" beginRegion="Comment" context="Template Comment" />
        <StringDetect attribute="Substitution Delimiter" String="&lt;" context="In Directive" />
      </context>

      <!-- In Directive -->
      <context name="In Directive" attribute="Substitution" lineEndContext="#stay">
        <RegExpr String="\bif\b" attribute="Substitution Keyword" beginRegion="if_statement" />
        <RegExpr String="\belsif\b" attribute="Substitution Keyword" beginRegion="if_statement" />
        <RegExpr String="\belse\b" attribute="Substitution Keyword" />
        <RegExpr String="\bendif\b" attribute="Substitution Keyword" endRegion="if_statement" />
        <RegExpr String="\b(first|last|trunc|strip|rest|length|optional)\b" attribute="Substitution Keyword" />
        <RegExpr String="@end" attribute="Substitution Definition" endRegion="named_area" context="#stay" />
        <RegExpr String="@[a-zA-Z_][\w_]*(\.[\w_]+)?(?=\()" attribute="Substitution Expression" context="#stay" />
        <RegExpr String="@[a-zA-Z_][\w_]*(\.[\w_]+)?(?!\()" attribute="Substitution Definition" beginRegion="named_area" context="#stay" />
        <RegExpr String="[a-zA-Z_][\w_]*" attribute="Substitution Attribute" context="#stay" />
        <StringDetect attribute="Substitution Delimiter" String="&lt;" context="In Directive" />
        <DetectChar context="#stay" char="." attribute="Substitution Operator" />
        <DetectChar context="#stay" char=";" attribute="Substitution Delimiter" />
        <DetectChar context="#stay" char="=" attribute="Substitution Operator" />
        <DetectChar context="#stay" char=":" attribute="Substitution Operator" />
        <DetectChar context="#stay" char="!" attribute="Substitution Operator" />
        <DetectChar char="&quot;" context="Plain String" attribute="String" />
        <DetectChar context="#stay" char="." attribute="Substitution Operator" />
        <DetectChar context="AnonymousTemplate" char="{" attribute="Substitution Delimiter" beginRegion="anonymous_template" />
        <DetectChar attribute="Substitution Delimiter" char="(" context="#stay" />
        <DetectChar attribute="Substitution Delimiter" char="[" context="#stay" />
        <DetectChar attribute="Substitution Delimiter" char=")" context="#stay" />
        <DetectChar attribute="Substitution Delimiter" char="]" context="#stay" />
        <StringDetect attribute="Substitution Delimiter" String="&gt;" context="#pop" />
        <DetectSpaces context="#stay" />
      </context>

      <!-- Iterator -->
      <context name="AnonymousTemplate" attribute="TemplateText" lineEndContext="#stay">
        <DetectChar char="}" context="#pop" attribute="Substitution Delimiter" endRegion="anonymous_template" />
        <IncludeRules context="Template" />
      </context>

      <!-- Substitution String -->
      <context name="Substitution String" attribute="Substitution String" lineEndContext="#stay">
        <RegExpr attribute="Substitution String" String="\\\&quot;" context="#stay"/>
        <StringDetect attribute="Substitution String" String="\\" context="#stay"/>
        <DetectChar char="&quot;" attribute="Substitution String" context="#pop" />
      </context>

      <!-- Template Comment -->
      <context name="Template Comment" attribute="Substitution Comment" lineEndContext="#stay">
        <StringDetect String="!&gt;" context="#pop" endRegion="Comment" attribute="Substitution Comment" />
      </context>

      <!-- Big Template -->
      <context name="Big Template" attribute="Template Text" lineEndContext="#stay">
        <StringDetect String="&gt;&gt;" context="Normal" endRegion="template_entry" attribute="Delimiter" />
        <IncludeRules context="Template" />
      </context>

      <!-- Little Template -->
      <context name="Little Template" attribute="Template Text" lineEndContext="#stay">
        <RegExpr attribute="String" String="\\&quot;" context="#stay"/>
        <StringDetect String="&quot;" context="Normal" attribute="Delimiter" endRegion="template_entry" />
        <IncludeRules context="Template" />
      </context>

    </contexts>

    <itemDatas>
      <itemData name="Normal Text" defStyleNum="dsNormal"  />
      <itemData name="Group Or Interface Name" defStyleNum="dsString" />
      <itemData name="Template Name" defStyleNum="dsString" />
      <itemData name="Keyword" defStyleNum="dsKeyword" bold="true" />
      <itemData name="Attribute" defStyleNum="dsOthers" />
      <itemData name="Template Text" defStyleNum="dsString" />
      <itemData name="Definition" defStyleNum="dsKeyword" />
      <itemData name="String" defStyleNum="dsString" />
      <itemData name="Comment" defStyleNum="dsComment" />
      <itemData name="Character" defStyleNum="dsKeyword" />
      <itemData name="Blockcomment" defStyleNum="dsComment" />
      <itemData name="Delimiter" defStyleNum="dsChar" />
      <itemData name="Expression" defStyleNum="dsOthers" />
      <itemData name="Operator" defStyleNum="dsChar" />

      <itemData name="Substitution" defStyleNum="dsNormal" />
      <itemData name="Substitution Keyword" defStyleNum="dsKeyword" bold="true" />
      <itemData name="Substitution Attribute" defStyleNum="dsOthers"/>
      <itemData name="Substitution Definition" defStyleNum="dsKeyword"/>
      <itemData name="Substitution String" defStyleNum="dsString" />
      <itemData name="Substitution Comment" defStyleNum="dsComment" />
      <itemData name="Substitution Delimiter" defStyleNum="dsChar"/>
      <itemData name="Substitution Expression" defStyleNum="dsOthers"/>
      <itemData name="Substitution Operator" defStyleNum="dsChar"/>
    </itemDatas>

  </highlighting>

  <general>
    <comments>
      <comment name="singleLine" start="//" />
      <comment name="multiLine" start="/*" end="*/" />
    </comments>
    <keywords casesensitive="true" />
    <indentation mode="Normal" />
  </general>

</language>
