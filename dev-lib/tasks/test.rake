#!/usr/bin/ruby
# encoding: utf-8

namespace :test do
  
  def self.run_tests( *args, &status_handler )
    require 'monocle'
    out = Monocle::Output( $stdout )
    
    cmd = %w( antlr-tests ) + [ args ].flatten!
    
    ruby_program = ENV[ 'RUBY' ] and
      cmd << '--ruby' << ruby_program
    
    cmd = cmd.map! { | tk | $proj.shell_escape( tk.to_s ) }.join( ' ' )
    
    sh cmd do | passed, process |
      if passed
        out.background( :green ) { out.put( "PASSED", :align => 'center' ) }
      else
        out.background( :red ) { out.put( "FAILED", :align => 'center' ) }
        exit( 1 )
      end
    end
  end
  
  
  desc "run functional and unit tests, as well as benchmarks and profile"
  task :all => %w(antlr) do
    run_tests 'run'
  end
  
  desc "run the runtime library unit tests"
  task :unit => %w(antlr) do
    run_tests 'unit'
  end
  
  desc "test the functionality of ANTLR generated code"
  task :functional => %w(antlr) do
    run_tests 'functional'
  end
  
  desc "benchmark and profile ANTLR generated code"
  task :performance => %w(antlr) do
    run_tests %w( benchmark profile -s )
  end
  
  desc "clean generated files from embedded test grammars"
  task :clean do
    run_tests %w( clean all )
  end
  
end

desc "run all tests; specify which ruby to use with RUBY=(ruby-prog)"
task :test do
  run_tests %w( run unit functional )
end
