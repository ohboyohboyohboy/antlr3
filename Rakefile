#!/usr/bin/ruby
# encoding: utf-8



unless defined?(Ruby)
  warn("overriding bare environment")
  t = File.expand_path('~/lib/ruby')
  $:.unshift( t, File.join( t, 'more' ) )
  require 'environments/base'
end
Ruby.project ||= 'antlr3'

# add the project helper lib ./test/lib to the load path
# and load 'test-tools'
$project.setup_extras
$project.globalize(:rake_helpers)
require 'generation-test'
require 'colorized-progress-bar'
require 'ansi-color'
require 'rake/rdoctask'
require 'rake/testtask'
require 'rcov/rcovtask'
require 'antlr3'
$, = "\n"

namespace :antlr do
  desc("rebuild the modified ANTLR jar if necessary")
  task :build do
    load '.tasks/antlr.rake'
    antlr_version = $project.antlr_version
    antlr_jar = $project.java("antlr-full-#{antlr_version}.jar")
    Rake::Task[antlr_jar].invoke
  end
end

namespace :bzr do
  BZR_BACKUP_DISK = '/home/kyle/disks/green'
  BZR_BACKUP_BASE_DIR = BZR_BACKUP_DISK / 'archives/bzr-depot/ruby/projects'
  BZR_BACKUP_DIR = BZR_BACKUP_BASE_DIR / File.basename(File.dirname(__FILE__))
  
  desc "add files and commit to the bzr repository (autogenerates a message if one isn't provided)"
  task :commit, :message do |t, args|
    command = %w(bzr commit -m)
    message = args[:message] ||
      'just a commit -- too busy and/or lazy to say anything, pretty much -- I have my reasons'
    command << message
    sh("bzr add")
    sh(command.shelljoin)
  end
  
  desc "back up copy of the bzr repo to ~/disks/green/archives/bzr-depot"
  task :backup do
    sh("mountpoint", BZR_BACKUP_DISK) do |ok, status|
      unless ok
        $stderr.puts("failed to find mounted disk at #{BZR_BACKUP_DISK}")
        $stderr.puts("mount it")
        exit(1)
      end
    end
    test(?d, BZR_BACKUP_DIR) or mkdir(BZR_BACKUP_DIR)
    
    command = %w(bzr export --format zip)
    file_name = Time.now.strftime("%m-%d-%y-%I%M%P.zip")
    command << file_name
    
    sh(command.shelljoin)
    
    mv(file_name, BZR_BACKUP_DIR)
  end
end


namespace :notes do
  EXCLUDE = %w(
    ./java/** ./log/** ./notes/** ./package/**
    ./scratch/** ./**/*.py ./**/*.java
    ./.tasks/notes.rake ./.bzr** ./coverage
    ./doc ./Rakefile
  )
  
  def exclude?(path)
    EXCLUDE.any? { |glob| File.fnmatch(glob, path, File::FNM_DOTMATCH) }
  end
  
  ################################################################################
  ############################ TASK SOURCE CODE ##################################
  ################################################################################
  
  desc('list FIXME annotations')
  task(:fixme) do
    require 'find'
    
    Find.find('.') do |path|
      exclude?(path) and Find.prune
  
      if test(?f, path)
  
        fixmes = open(path) do |f|
          f.grep(/\bFIXME\b/) do |line|
            message = '%5i | ' % f.lineno
            message <<
              case line.chomp
              when /<! *FIXME *: *(.+?) *!>/ then $1
              when /\# *FIXME(?: *\-\- *| *: *)(.*)$/ then $1
              when /FIXME\(\d+\)/ then line.strip
              when /FIXME *\((.*?)\)/ then $1
              else line.strip
              end
          end
        end
        
        unless fixmes.empty?
          head = ("~~ " << path << " ").ljust(screen_width, '~')
          puts head.magenta
          for fix in fixmes
            puts(fix.cyan)
          end
        end
  
      end # if test
    end   # Find.find
  end     # task :fixme
  
  desc('list TODO annotations')
  task(:todo) do
    require 'find'
    
    Find.find('.') do |path|
      exclude?(path) and Find.prune
  
      if test(?f, path)
  
        todos = open(path) do |f|
          f.grep(/\bTO[\- ]?DO\b/) do |line|
            message = '%5i | ' % f.lineno
            message <<
              case line.chomp
              when /<! *TO[\- ]?DO *: *(.+?) *!>/ then $1
              when /\# *TO[\- ]?DO(?: *\-\- *| *: *)(.*)$/ then $1
              when /TO[\- ]?DO\(\d+\)/ then line.strip
              when /TO[\- ]?DO *\((.*?)\)/ then $1
              else line.strip
              end
          end
        end
        
        unless todos.empty?
          head = ("~~ " << path << " ").ljust(screen_width, '~')
          puts head.magenta
          for todo in todos
            puts(todo.cyan)
          end
        end
  
      end # if test
    end   # Find.find
  end     # task :fixme

end

Rcov::RcovTask.new do |t|
  t.libs << './lib'
  t.test_files = FileList['test/unit/test-*.rb', 'test/functional/0*/test.rb']
  t.output_dir = './rcov'
end

namespace :string_template do
  library = 'lib/string-template'
  parser_grammar = library / 'group-parser.y'
  parser_library = library / 'group-parser.rb'
  
  file(parser_library => [parser_grammar]) do |task, args|
    sh("racc -o #{parser_library} #{parser_grammar}")
  end
  
  desc("generate lib/string-template/group-parser.rb using racc")
  task(:update_parser => parser_library)
end

namespace :test do
  desc("ruby runtime library unit tests")
  Rake::TestTask.new(:unit) do |task|
    task.libs = [$project.lib]
    task.test_files = Dir['test/unit/test-*.rb']
  end
  
  
  gem 'rspec'
  require 'spec/rake/spectask'
  
  desc("run all of the functional tests")
  Spec::Rake::SpecTask.new(:functional) do |t|
    t.libs = %w(./lib)
    t.ruby_opts = ['-rtest/unit']
    t.pattern = './test/functional/*/*.rb'
  end
  
  task :functional => %w(antlr:build)
  
  #namespace :functional do
  #  desc('run the code functional tests')
  #  task(:run, [:start, :stop] => PACKAGE_GROUPS) do |t, args|
  #    args.with_defaults(:start => 0, :stop => 100)
  #    $project.test_mode!
  #    require 'test-tools'
  #    
  #    begin
  #      log = open($project.path('log/test-script-results'), 'w')
  #      start = args[:start].to_i
  #      finish = args[:stop].to_i
  #      
  #      test_manager = GenerationTestManager.new(
  #        :start => start, :finish => finish, :log => log
  #      )
  #      
  #      test_manager.run
  #    ensure
  #      log.close
  #    end
  #
  #    $stdout.print(' ' * screen_width << "\r")
  #    $stdout.flush
  #    
  #    test_manager.report($stdout)
  #    open('log/test-results','w') { |f| test_manager.report(f) }
  #  end
  #  
  #  desc %(trash all of the test by-product files)
  #  task(:clean, :start, :stop) do |t, args|
  #    args.with_defaults(:start => 0, :stop => 100)
  #    
  #    $project.test_mode!
  #    require 'test-tools'
  #    
  #    start, finish = args[:start].to_i, args[:stop].to_i
  #    test_manager = GenerationTestManager.new(:start => start, :finish => finish)
  #    test_manager.clean
  #  end
  #end
  #
  #desc('run the functional tests to verify ANTLR ruby code generation')
  #task(:functional => %w[test:functional:run])
end

desc "run both unit and functional tests"
task :test => %w(test:unit test:functional)


eval(File.read('.tasks/dist.rake'), binding, '.tasks/dist.rake')

#desc "copy out-of-date templates to the package directory"
#task :update_templates => PACKAGE_GROUPS do
#  if $templates_updated
#    antlr_jar = File.expand_path('./java/antlr-full-3.1.3.jar')
#    
#    cd 'package/tool/src/main/resources' do
#      sh("fastjar -uf #{antlr_jar} org/antlr/codegen/templates/Ruby/*.stg")
#    end
#  else
#    puts "templates appear up to date"
#  end
#end
desc "discover, run, and record benchmark scripts"
task :benchmark do
  stamp = Time.now.strftime('%m-%d-%y@%I:%M%P')
  result_dir = "./log/benchmark/#{stamp}"
  mkpath(result_dir)
  
  bench_dir = './test/benchmark'
  scripts = FileList["#{bench_dir}/*/bench.rb"]
  
  for script in scripts
    name = File.basename( File.dirname(script) )
    results = `ruby #{script}`
    open("#{result_dir}/#{name}.txt", 'w') do |f|
      f.write(results)
    end
    puts "[ #{name} ]"
    puts results
    puts ''
  end
  
end


