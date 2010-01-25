bundler = $project.bundler

file( bundler.config )

file( bundler.plugin ) do
  sh( "git submodule init" )
  sh( "git submodule update #{ bundler.top }" )
end

file( bundler.environment => [ bundler.plugin, bundler.config ] ) do
  $project.run_bundler
end

run_task bundler.environment
