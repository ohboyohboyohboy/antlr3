####################################################################################################
############################################ Helper Code ###########################################
####################################################################################################
def freeze_path(path)
  test(?f, path) and chmod(0b100_100_100, path)   # make read-only
end

def thaw_path(path)
  test(?f, path) and chmod(0b110_100_100, path)   # make writable
end

####################################################################################################
########################################## RubyTarget.java #########################################
####################################################################################################
working_ruby_target = $project.java 'RubyTarget.java'
package_ruby_target = $project.antlr.targets 'RubyTarget.java'

file( working_ruby_target )

file( package_ruby_target => working_ruby_target ) do
  thaw_path(package_ruby_target) and rm(package_ruby_target)
  cp(working_ruby_target, package_ruby_target)
  freeze_path(package_ruby_target)
end


####################################################################################################
############################################# Templates ############################################
####################################################################################################

# the files templates/*.stg
template_files = $project.templates! '*.stg'

# the corresponding Ruby/*.stg files deep in the java package tree
package_template_files =
  template_files.map { |f| f.pathmap( $project.antlr.templates / '%f' ) }

template_files.zip( package_template_files ) do |local, package|
  
  # if the java package version of the template is older than the
  # local version of the template, delete the package version,
  # copy the local version into the package tree, and
  # make the package copy read only
  file(package => local) do
    thaw_path(package) and rm(package)
    cp(local, package)
    freeze_path(package)
  end

  # templates/BlahDeBlah.stg is being edited on a single-template per file
  # mode if the directory templates/BlahDeBlah/ exists. In this case,
  # templates/BlahDeBlah.stg is dependent upon all files
  # templates/BlahDeBlah/*.st
  fragment_directory = $project.templates(File.basename(local, '.stg'))
  if test(?d, fragment_directory)
    
    fragments = Dir[fragment_directory / '*.st']
    fragments.each { |frag| file(frag) }
    
    file local => fragments do
      sh("./scripts/stg zip #{fragment_directory} > temp") do |ok, status|
        unless ok
          rm('temp')
          $stderr.puts("zip command failed")
          exit(status.exitstatus)
        end
      end
      thaw_path(local) and mv(local, "#{local}.backup")
      mv("temp", local)
      freeze_path(local)
    end
    
  else
    
    file( local )
    
  end
end

####################################################################################################
############################################# ANTLR Jar ############################################
####################################################################################################

# this is the maven target product jar, which contains only the
# ANTLR tool code, not the runtime stuff. It needs to be rebuilt
# when any change to the templates or the RubyTarget.java class
# have been made

if Rake::Task[ package_ruby_target ].needed? or not test(?f, $project.antlr.tool_jar)
  # a full maven build is required
  
  file $project.antlr.tool_jar => [package_ruby_target, *package_template_files] do
    log_path = $project.log('antlr-build.log')
    cd $project.antlr.tool do
      # build the jar using maven
      sh "mvn -Dmaven.test.skip=true > #{log_path}" do |ok, status|
        unless ok
          # report the failure by dumping the log
          $stderr.puts("---------- FAILURE ------------")
          $stderr.puts( File.read( log_path ) )
          fail("build command failed with status %p" % status.exitstatus)
        end
      end
    end
  end

else
  
  # this is a quick shortcut if a full recompile isn't needed
  # - just add the templates to the current jar
  
  file $project.antlr.tool_jar => package_template_files do
    
    local_jar = $project.antlr.tool_jar.pathmap('%f')
    test(?d, '.build-temp') or mkdir('.build-temp')
    cp $project.antlr.tool_jar, '.build-temp'
    
    cd '.build-temp' do
      sh("fastjar xvf #{ local_jar }")
      rm( local_jar )
      for f in Dir['org/antlr/codegen/templates/Ruby/*.stg']
        thaw_path(f) and rm(f)
      end
      for f in package_template_files
        cp(f, 'org/antlr/codegen/templates/Ruby')
      end
      sh("fastjar cvfm #{ local_jar } META-INF/MANIFEST.MF .")
      cp local_jar, $project.antlr.tool_jar
    end
    
    rmtree('.build-temp')
    
  end
  
end

# add empty file tasks for the jars that antlr is dependant upon,
# forcing rebuild if any of these jars change
$project.lib_jars = $project.lib_jars.map do |jar|
  $project.antlr.lib( jar )
end

for jar in $project.lib_jars
  file( jar )
end

# ok so here's the ultimate target of this complicated
# mess of build tasks, java/antlr-full-x.x.jar
file $project.antlr.jar => [$project.antlr.tool_jar, *$project.lib_jars] do
  # make necessary directory if any of them don't exist
  test(?d, $project.java) or mkdir($project.java)
  test(?d, $project.antlr.temp) or mkdir($project.antlr.temp)
  
  include_jar = proc do |jar_path|
    cp jar_path, $project.antlr.temp
    jar = jar_path.pathmap('%f') # base name
    cd $project.antlr.temp do
      sh("fastjar -xf #{jar}")
      rm( jar )
    end
  end
  
  for j in $project.lib_jars
    include_jar[j]
  end
  include_jar[$project.antlr.tool_jar]
  
  # unpack all of the component library jars into the same directory
  local_jar = $project.antlr.jar.pathmap('%f')
  cd $project.antlr.temp do
    # pack all the remaining files into a single jar
    content = Dir['*'].join(' ')
    sh("fastjar cvfm #{ local_jar } META-INF/MANIFEST.MF #{ content }")
    # put the full jar in the output directory
    cp local_jar, $project.java
  end
  
  rmtree $project.antlr.temp
end

build_task = Rake::Task[ $project.antlr.jar ]
build_task.invoke
