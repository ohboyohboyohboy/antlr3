plugin_lib = $project.bundler.lib( 'rubygems_plugin.rb' )

file( $project.bundler.config )

file( plugin_lib ) do
  relative = File.relative_path( $project.bundler.top )
  sh( "git submodule init" )
  sh( "git submodule update #{relative}" )
end

file( $project.bundler.environment => [ plugin_lib, $project.bundler.config ] ) do
  $project.run_bundler
end

Rake::Task[ $project.bundler.environment ].invoke