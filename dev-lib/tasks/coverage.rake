#!/usr/bin/ruby
# encoding: utf-8

=begin      ::about::
author:     Kyle Yetter <kcy5b@yahoo.com>
created on: January 27, 2010
purpose:    rake tasks for rcov-based code coverage
=end

require 'rcov/rcovtask'

Rcov::RcovTask.new( :coverage ) do |t|
  t.libs << $project.lib
  t.test_files = $project.unit_tests + $project.functional_tests
end
