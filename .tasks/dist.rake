namespace('dist') do
desc 'freshen up Manifest.txt manifest'
task :manifest do
  libs = FileList['lib/**/*.rb']
  libs.exclude('lib/antlr3/streams/linked.rb')
  
  top_docs = %w[
      History.txt ANTLR-LICENSE.txt  README.txt Rakefile
    ]
  
  samples = %w(Cpp Java ANTLRv3Grammar)
  
  open('Manifest.txt', 'w') do |f|
    f.puts( Dir['bin/*'] )
    f.puts( Dir['java/*.java'] )
    f.puts( 'java' / (+$project.antlr_jar) )
    
    samples.each do |n|
      "samples/#{n}.g"
    end
    
    f.puts( libs )
    f.puts( top_docs )
    
    f.puts( 'samples/Cpp.g' )
    f.puts( 'samples/ANTLRv3Grammar.g' )
    f.puts( 'samples/Java.g' )
    
    f.puts( Dir['templates/*.stg'] )
    f.puts( Dir['test/functional/*/*.rb'] )
    f.puts( Dir['test/unit/test-*.rb'] )
    f.puts( Dir['test/unit/sample-input/*'] )
  end
end

desc "try to build like ... everything"
task :make => 'dist:manifest' do
  load '.tasks/antlr.rake'
  directory 'dist'
  directory 'pkg'
  
  all_files = File.read('Manifest.txt').split("\n")
  all_files << 'Manifest.txt'
  dist_files = []
  all_files.each do |file|
    dist_files << (dist_file = 'dist' / file)
    file == 'Rakefile' and next
    
    Rake::Task[file] or file(file)
    
    file(dist_file => file) do
      test(?f, dist_file) and rm(dist_file)
      test(?d, -dist_file) or mkpath(-dist_file)
      cp(file, dist_file)
    end
    
  end
  
  file('dist/Rakefile' => 'utility/dist-rakefile.rb') do
    cp('utility/dist-rakefile.rb', 'dist/Rakefile')
  end
  
  gem_target_name = "antlr3-#{ANTLR3::VERSION_STRING}.gem"
  tgz_target_name = "antlr3-#{ANTLR3::VERSION_STRING}.tgz"
  zip_target_name = "antlr3-#{ANTLR3::VERSION_STRING}.zip"
  dist_gem_target = 'dist/pkg' / gem_target_name
  dist_tgz_target = 'dist/pkg' / tgz_target_name
  dist_zip_target = "dist/pkg" / zip_target_name
  gem_target = 'pkg' / gem_target_name
  tgz_target = 'pkg' / tgz_target_name
  zip_target = 'pkg' / zip_target_name
  
  task 'verify' => dist_files do
    cd 'dist' do
      ENV.delete('RUBYOPT')
      ENV.delete('RUBYLIB')
      sh("rake test")
    end
  end
  
  file(dist_gem_target => 'verify') do
    cd 'dist' do
      sh("rake gem")
    end
  end
  
  file(dist_tgz_target => 'verify') do
    cd('dist') { sh("rake package") }
  end
  
  file(dist_zip_target => dist_tgz_target)
  
  file(gem_target => dist_gem_target) do
    cp(dist_gem_target, gem_target)
  end
  
  file(tgz_target => dist_tgz_target) do
    cp dist_tgz_target, tgz_target
  end
  
  file(zip_target => dist_zip_target) do
    cp dist_zip_target, zip_target
  end
  
  task 'package' => [gem_target, tgz_target, zip_target]
  
  Rake::Task['package'].invoke
  
  
end

end