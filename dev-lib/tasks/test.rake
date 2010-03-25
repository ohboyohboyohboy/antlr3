#!/usr/bin/ruby
# encoding: utf-8

namespace :test do
  
  desc "run functional and unit tests, as well as benchmarks and profile"
  task :all => %w(antlr) do
    sh "antlr-tests run"
  end
  
  desc "run the runtime library unit tests"
  task :unit => %w(antlr) do
    sh "antlr-tests unit"
  end
  
  desc "test the functionality of ANTLR generated code"
  task :functional => %w(antlr) do
    sh "antlr-tests functional"
  end
  
  desc "benchmark and profile ANTLR generated code"
  task :performance => %w(antlr) do
    sh "antlr-tests run benchmark profile -s"
  end
  
  desc "clean generated files from embedded test grammars"
  task :clean do
    sh "antlr-tests clean all"
  end
  
end

desc "run all tests"
task :test do
  sh "antlr-tests run unit functional"
end
