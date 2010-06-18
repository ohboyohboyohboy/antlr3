#!/usr/bin/env fish

if not set -q ANTLR_DEV_MODE
  set -g __PATH $PATH
  set -g __RUBYLIB $RUBYLIB
  set -g ANTLR_DEV_MODE true
  
  set -gx ANTLR3_BASE (realpath .)
  set -gx PATH (realpath ./bin) (realpath ./scripts) (realpath ./vendor/bin) $PATH
  set -gx RUBYLIB (realpath ./lib) $RUBYLIB
  set -gx IRB_EXTRA (realpath ./config/antlr3.rb)
  
  function etest
    set -l lib $ANTLR3_BASE/lib
    set -l dev $ANTLR3_BASE/dev-lib
    set -l config $ANTLR3_BASE/config/antlr3.rb
    ruby -I"$lib:$dev" -r"$config" $argv --require 'enhanced-test' --format ANTLRFormatter --runner ANTLRRunner --backtrace
  end
  
  function alias-func
    set new $argv[1]
    set original $argv[2]
    if functions -q $original
      functions $original | perl -pe "s/^(\s*function\s+.*?\s*)$original/\1$new/" > /tmp/alias-func.fish
      . /tmp/alias-func.fish
      rm /tmp/alias-func.fish
    else
      return 1
    end
  end
  
  alias-func __fish_prompt__ fish_prompt
  
  function fish_prompt --description 'Write out the prompt'
    printf '%sA%s:' (set_color cyan) (set_color normal)
    __fish_prompt__ $argv
  end
  
  function top!
    cd $ANTLR3_BASE
  end
  
  function git-ignore
    for f in $argv
      echo $f >> .gitignore
    end
  end
  
  function quit-project
    set -e ANTLR3_BASE
    set -e IRB_EXTRA
    set -e ANTLR_DEV_MODE
    set -x PATH $__PATH
    set -x RUBYLIB $__RUBYLIB
    . ~/.config/fish/config.fish
    alias-func fish_prompt __fish_prompt__
    for f in __fish_prompt__ top! git-ignore
      functions -e $f
    end
  end
end