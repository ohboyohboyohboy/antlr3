home = File.expand_path( '../..', __FILE__ )
gem_home = File.join( home, 'vendor/gems' )

options :path => gem_home


# main is a command-line app builder library used in the scripts
gem "main", "4.2.0"

# console based user interface utilities
gem 'highline', "1.5.1"

# a big bag of bric-a-brac 
gem "facets", "2.7.0"

gem 'rubyforge', "2.0.4"

gem 'rake', "0.8.7"

gem "test-unit", "~> 1.2"
# antlr tests use a rspec environment with a test/unit structure
gem "rspec", "1.1.11"

# code coverage
gem "rcov", "0.9.6"


# fast code profiling
gem "ruby-prof"

# textile markup for documentation
gem "RedCloth", "4.2.2"

# enhanced rdoc
gem "yard"

