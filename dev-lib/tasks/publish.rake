#!/usr/bin/ruby
# encoding: utf-8

desc( "publish the package to rubyforge/gemcutter if the tests are clean" )
#task 'publish' => %w(test package) do
task 'publish' do
  cmd = $project.expand( 
    'rubyforge add_%s $(name) $(name) $(version) $(package.base)/$(name)-$(version).%s'
  )
  sh( cmd % %w(release gem) )
  sh( cmd % %w(file zip) )
  sh( $project.expand( "gem push $(package.base)/$(name)-$(version).gem" ) )
end
