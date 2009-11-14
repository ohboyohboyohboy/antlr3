#!/usr/bin/ruby
# encoding: utf-8

require 'rubygems'
gem :hoe
gem :rspec

require 'hoe'
require 'spec/rake/spectask'
require './lib/antlr3.rb'

Hoe.new("antlr3", ANTLR3::VERSION_STRING) do |proj|
  
  proj.author = 'Kyle Yetter'
  proj.clean_globs  = %w(
    **/*~
    test/functional/*/*/*
    test/functional/*/*/
  )
  proj.email  = 'kcy5b@yahoo.com'
  proj.extra_dev_deps = %w(rspec)
  proj.post_install_message = <<-END
  
  END
  proj.extra_rdoc_files = %w()
  proj.test_globs = %w( test/unit/test*.rb test/functional/*/*.rb )
  proj.need_zip = true
end

namespace(:test) do
  
  desc("run all of the functional tests")
  Spec::Rake::SpecTask.new(:functional) do |t|
    t.libs = %w(./lib)
    t.ruby_opts = ['-rtest/unit']
    t.pattern = './test/functional/*/*.rb'
  end
  
end

