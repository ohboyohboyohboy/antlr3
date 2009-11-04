#!/usr/bin/ruby
# encoding: utf-8

autoload :Logger, 'logger'

antlr_version = '3.2'
register :functional_tests, 'test/functional'
register :templates, 'templates'
register :java, 'java'
register :package, 'package'
register :language_templates, 'notes/templates'
register :unit_tests, 'test/unit'
register :extra_lib, 'utility'
register :package_templates, 'package/tool/src/main/resources/org/antlr/codegen/templates/Ruby'
register :package_target_classes, 'package/tool/src/main/java/org/antlr/codegen'
register :rake_helpers, 'utility/rake-helpers'

setting :antlr_version, antlr_version
setting :template_files, templates!('*.stg')
setting :antlr_jar, path("java/antlr-full-#{antlr_version}.jar")

customize do
  # create a new logger in the $base/log directory
  def open_log(name)
    log = Logger.new self.log(name.to_s + '.log')
    block_given? or return log
    result = yield(log)
    log.close rescue nil
    return result
  end
  
  def setup_extras
    defined?(@test_setup) or @test_setup = nil
    unless @test_setup
      activate
      globalize(:extra_lib)
      @test_setup = true
      require 'test-tools'
    end
  end
  
  def functional_test!
    setup_extras
    require 'grammar-output-test'
  end
  
  def jar_current?
    template_files.each do |file|
      unless test(?<, file, antlr_jar)
        open_log('project') { |log| log.warn(
          "template %p modified more recently than the ANTLR jar (%p)" %
          [file, antlr_jar]
        )}
        return false
      end
    end
    return true
  end
  
  def copy_files(glob, target_directory)
    test(?d, target_directory) or
      raise("nonexistent target directory %p" % target_directory)
    
    target_paths = []
    for file in Dir[glob]
      stat = File.stat(file)
      block_size = stat.blksize
      target = File.join(target_directory, File.basename(file))
      open(file, 'rb') do |src| open(target, 'wb') do |dest|
        while block = src.read(block_size) do dest.write(block) end
      end end
      target_paths << target
    end
    return target_paths
  end
  
  def update_jar
    jar_current? or update_jar!
  end
  
  def update_jar!
    midway_directory =
      path('package/tool/src/main/resources/org/antlr/codegen/templates/Ruby')
    template_files.each { |file| copy_files(file, midway_directory) }
    
    Dir.chdir path('package/tool/src/main/resources') do
      system("fastjar -uf #{antlr_jar} org/antlr/codegen/templates/Ruby/*.stg 2>&1 > /dev/null")
    end
    
    open_log("project") do |log|
      log.info "updated ANTLR jar #{antlr_jar}"
    end
    
  end
end

$project = self

unless defined?(Kernel::CLASS_PATH)
  require 'rbconfig'
  path_sep = Config::CONFIG['PATH_SEPARATOR'] || ':'
  if current_class_path = ENV['CLASSPATH']
    current_class_path = current_class_path.split(path_sep)
  else current_class_path = []
  end
  current_class_path.unshift($project.antlr_jar)
  
  Kernel::CLASS_PATH = current_class_path
  ENV['CLASSPATH'] = current_class_path.join(path_sep)
end

