#!/usr/bin/fish

set -x PATH (realpath ./bin) (realpath ./scripts) $PATH
set -x RUBY_PROJECT antlr3
set -x python_stg (realpath ./notes/templates/Python/Python.stg)
set -x PROJECT_HOME /home/kyle/lib/ruby/projects/antlr3
set -x CLASSPATH (realpath $PROJECT_HOME/java/antlr-full-3.2.jar)

function st
  cat $python_stg | st-list show $argv
end

echo '**added function st**'

function dump
  cat $argv | ruby -ne '
    BEGIN { $off = false }
    ~/__END__/ and $off = true
    puts $_ unless $off' |  color -l ruby | texas number
end
echo '**added function dump**'

function top!
  cd $PROJECT_HOME
end
echo '** added function top! **'

function recap
  if test -z $argv
    cat $PROJECT_HOME/log/test-results
  else
    ruby -e '
      ARGV.map! { |a| a.to_i }
      sections = Hash[$stdin.read.scan(/^\*+ Test (\d+) \*+\n(.+?)(?=\z|\n\*)/m).map! { |k, v| [k.to_i, v] }]
      for arg in ARGV
        result = sections[arg] or begin
          $stderr.puts("could not find test results for test #{arg}")
          $stderr.puts
          next
        end
        puts("====[ Test #{arg} ]=======================================================")
        puts(result)
      end
    ' -- $argv < $PROJECT_HOME/log/test-script-results
  end
end
echo '** added function recap **'

function j
  launch jedit $argv
end
echo '** added jedit launcher function j **'

function new_template
  set group $argv[1]
  set name $argv[2]
  set tdir $PROJECT_HOME/templates/$group
  set group_file $tdir/$group.stg
  set t_file $tdir/$name.stg
  
  echo "
<%= $name.stg %>
" >> $group_file
  echo "$name() ::= <<
  
>>" >> $t_file
  
  kt $group_file
  kt $t_file
end
echo '** added quick template generating function new_template'

function rb-strip
  set -e RUBYOPT
  set -x RUBYLIB (realpath $PROJECT_HOME/dist/lib)
end
echo '** added function rb-strip'

function rb-normal
  set -x RUBYOPT -renvironments/base
  set -x RUBYLIB ~/lib/ruby/extensions ~/lib/ruby/more ~/lib/ruby ~/lib/ruby/util ~/lib/ruby/lore
end
echo '** added function rb-normal'
