$jar_files = []
$antlr = $project.antlr

unless $project.jar_command
  $project.error!(
    "cannot locate a `fastjar' or `jar' program in the system path"
  )
end

def javac( java )
  sh( "javac -classpath #{ $antlr.jar } #{ java }" )
  return( Dir[ File.dirname( java ) / '*.class' ] )
end

def jar_file( f, jar_dir, *deps, &action )
  file( f => deps, &action )
  run_task( f )
  
  if test( ?>, f, $antlr.jar )
    target_file = abs( f.pathmap( "#{ jar_dir }/%f" ) )
    test( ?d, jar_dir ) or mkpath( jar_dir )
    cp( f, target_file )
    if f =~ /\.java/
      $jar_files.concat(
        javac( target_file ).map do | cl |
          cl = abs( cl )
          file( cl )
          cl
        end
      )
    else
      target_file = abs( target_file )
      file( target_file )
      $jar_files << target_file
    end
  end
end

jar_file( $antlr.target, $antlr.targets )

$project.path!( 'templates', '*.stg' ).each do | template |
  name = template.pathmap( '%n' )
  fragments = $project.path!( 'templates', name, '*.st' )
  manifest = $project.path?( 'templates', name, name + '.stg' ) and
    fragments << manifest
  jar_file( template, $antlr.templates, *fragments ) do
    require 'string-template'
    StringTemplate::Zip.zip( manifest, :verbose => true )
  end
end

file( $antlr.jar => $jar_files ) do
  unless $jar_files.empty?
    jar_args = [ $antlr.jar, *$jar_files ].map! do | jar |
      $project.shell_escape( rel( jar, $project.java ) )
    end
    
    cd $project.java do
      command = [ $project.jar_command, 'uvf', *jar_args ].join( ' ' )
      sh( command )
      test( ?d, 'org' ) and rm_r( 'org' )
    end
  end
end

run_task( $antlr.jar )