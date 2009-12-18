require 'rake/gempackagetask'

Rake::GemPackageTask.new( $project.gem_specification ) do | t |
  t.need_zip = true
end
