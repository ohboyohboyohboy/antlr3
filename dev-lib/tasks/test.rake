#!/usr/bin/ruby
# encoding: utf-8

path = ENV.read( :PATH, Array )
path.unshift( $project.path( 'scripts' ) )

namespace :test do
  
  desc "run functional and unit tests, as well as benchmarks and profile"
  task :all => %w(antlr) do
    sh "antlr-tests run"
  end
  
  desc "run unit tests"
  task :unit => %w(antlr) do
    sh "antlr-tests unit"
  end
  
  desc "run functional tests"
  task :functional => %w(antlr) do
    sh "antlr-tests functional"
  end
  
end

desc "run all tests"
task :test => %w( test:all )