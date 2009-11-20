####################################################################################################
############################################ Helper Code ###########################################
####################################################################################################
def freeze_path(path)
  test(?f, path) and chmod(0b100_100_100, path)   # make read-only
end

def thaw_path(path)
  test(?f, path) and chmod(0b110_100_100, path)   # make writable
  yield
ensure
  freeze_path( path )
end

def update_jar
  command = [ $project.jar_command, 'uvf', $project.antlr.jar ]
  
  cd $project.java do
    files = yield
    files.each { |f| command << $project.shell_escape( f ) }
    sh( command.join(' ') )
  end
end

template_directory = $project.java( $project.antlr.templates )
test( ?d, template_directory ) or mkpath( template_directory )

####################################################################################################
########################################## RubyTarget.java #########################################
####################################################################################################

target_source = $project.java( 'RubyTarget.java' )
compiled_target = $project.java( $project.antlr.targets, 'RubyTarget.class' )
antlr_jar = $project.java( $project.antlr.jar )

file( compiled_target => [target_source] ) do
  directory = compiled_target.pathmap( '%d' )
  cp( target_source, directory )
  
  cd $project.java do
    java_file = compiled_target.ext( 'java' )
    sh "javac -classpath #{ $project.antlr.jar } #{ java_file }"
    rm java_file
  end
end

file( antlr_jar => [ compiled_target ] ) do
  update_jar { Dir[ $project.antlr.targets / '*.class' ] }
end

####################################################################################################
############################################# Templates ############################################
####################################################################################################

# the files templates/*.stg
template_files = $project.path! 'templates', '*.stg'
antlr_template_directory = $project.java( $project.antlr.templates )
test( ?d, antlr_template_directory ) or mkpath( antlr_template_directory )

# the corresponding Ruby/*.stg files deep in the java package tree
package_template_files = template_files.map do | working_template |
  file( working_template )
  
  file_name = working_template.pathmap( '%f' )
  package_template = $project.java( $project.antlr.templates, file_name )
  
  file( package_template => [ working_template ] ) do
    thaw_path( working_template ) do
      cp( working_template, package_template )
    end
  end
  
  fragment_dir = working_template.ext
  fragments = Dir[ fragment_dir / '*.st' ]
  manifest = fragment_dir / working_template.pathmap( '%f' )
  
  if test( ?f, manifest )
    file( manifest )
    
    for fragment in fragments
      file( fragment )
    end
    
    file( working_template => [ manifest, *fragments ] ) do
      require 'string-template'
      thaw_path( working_template ) do
        StringTemplate::Zip.zip( manifest )
      end
    end
  end
  
  package_template
end

file( antlr_jar => package_template_files ) do
  update_jar { Dir[ $project.antlr.templates / '*.stg' ] }
end

build_task = Rake::Task[ antlr_jar ]
build_task.invoke
