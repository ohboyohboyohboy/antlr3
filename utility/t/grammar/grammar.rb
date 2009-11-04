#!/usr/bin/ruby
# encoding: utf-8

autoload :MD5, 'md5'
autoload :YAML, 'yaml'

class Grammar
  JAR_FILE = $project.antlr_jar
  
  GRAMMAR_TYPES = %w(lexer parser tree combined)
  
  TYPE_TO_CLASS = {
    'lexer'  => 'Lexer',
    'parser' => 'Parser',
    'tree'   => 'TreeParser'
  }
  
  CLASS_TO_TYPE = TYPE_TO_CLASS.invert
  
  def self.inline(source, *args)
    InlineGrammar.new(source, *args)
  end
  
  ANTLRCommand::OPTION_METHODS.each do |method|
    define_method(method) do |*args|
      command.send(method, *args)
    end
  end
  
  def source=(src)
    previous = @source
    @source = prepare_source(src.to_s)
    @source == previous or study
  end
  
  def source
    defined?(@source) or begin
      @source = File.read(path)
      study
    end
    return @source
  end
  
  def output_directory
    @output_directory ||= '.'.freeze
  end
  
  def output_directory=(path)
    previous, @output_directory = @output_directory, Dir.mkpath(path.to_s)
    unless @output_directory == previous
      @command and @command.output_directory = @output_directory
    end
  end
  
  def log=(flag)
    unless @log == flag
      @command and @command.log = flag
    end
    @log = flag
  end
  def log?
    return @log
  end
  def log!
    self.log = true
  end
  
  def force_compilation?
    @force_compilation ||= false
  end
  attr_writer :force_compilation
  def force_compilation
    @force_compilation = true
  end
  
  def command
    @command ||= begin
      if stale? then ANTLRCommand.new(path, :output_directory => output_directory, :log => @log)
      else ANTLRCommand.try_to_restore(output_directory / (@name + '.log')) or
        ANTLRCommand.try_to_restore(File.dirname(@path) / (@name + '.log')) or
        ANTLRCommand.new(path, :output_directory => output_directory, :log => @log)
      end
    end
  end
  
  def wrap=(true_or_false)
    @module = true_or_false ? Module.new : Object
  end
  
  def wrap?
    @module != Object
  end
  def loaded_classes
    @loaded_classes ||= {}
  end
  
  ##################################################################
  ######## CONSTRUCTORS ############################################
  ##################################################################
  attr_reader :path, :type, :name, :targets, :dependencies, :imports, :module
  
  def initialize(path, options = {})
    @path = path.to_s
    @dependencies = []
    @imports = []
    @targets = []
    @module = Object
    self.source = File.read(@path)
    options = options.clone
    dir = options.delete(:output_directory) and self.output_directory = dir
    build_dependencies
    options.each do |name, value|
      setter = :"#{name}="
      respond_to?(setter) and send(setter, value)
    end
    yield(self) if block_given?
  end
  
  def depends_on(path)
    path = File.expand_path path.to_s
    test(?f, path) and @dependencies << path # raise Grammar::DependencyError.new(@path, path)
  end
  
  ##################################################################
  ###### pseudo-attributes #########################################
  ##################################################################
  def lexer_file_name
    if lexer? then base = name
    elsif combined? then base = name + 'Lexer'
    else return(nil)
    end
    return(base + '.rb')
  end
  
  def parser_file_name
    if parser? then base = name
    elsif combined? then base = name + 'Parser'
    else return(nil)
    end
    return(base + '.rb')
  end
  
  def walker_file_name
    tree? and self.name + '.rb'
  end
  alias tree_parser_file_name walker_file_name
  
  def lexer_class_name
    self.name + "::Lexer"
  end
  def parser_class_name
    self.name + "::Parser"
  end
  def walker_class_name
    self.name + "::TreeParser"
  end
  alias tree_parser_class_name walker_class_name
  %w(lexer parser walker).each do |type|
    define_method(:"#{type}_class") do
      loaded_classes[self.send(:"#{type}_class_name")]
    end
  end
  alias tree_parser_class walker_class
  
  def prepare_source(text)
    text.gsub(/([^\\])%/,'\1\\%')
  end
  ##################################################################
  ##### tests / properties / predicates ############################
  ##################################################################
  def compiled?
    command.ran? or return(false)
  end
  
  GRAMMAR_TYPES.each do |grammar_type|
    define_method :"#{grammar_type}?" do
      @type == grammar_type
    end
  end
  
  def stale?
    force_compilation? and return(true)
    @dependencies.compact!
    @dependencies.delete_if { |dep| not test(?f, dep) }
    for target in @targets
      target_file = output_directory / target
      test(?f, target_file) or return true
      @dependencies.any? { |dep| test(?>, dep, target_file) } and return true
    end
    return false
  end
  
  ##################################################################
  ##### operational methods ########################################
  ##################################################################
  def compile(options = {})
    if options[:force] or stale?
      compile!(options)
    end
  end
  
  def compile!(options = {})
    command.set_options(options)
    block_given? and yield(@command)
    @command.run
    self.force_compilation = false
    return(@command)
  end
  
  def clean!
    all_targets = [@name + '.tokens', *@targets]
    for target in all_targets do delete_target(target) end
    delete_target(@name + '.log')
  end
  
  alias compilation_data command
  
  def compile_and_load(options = {})
    options[:wrap] and self.wrap = true
    compile(options)
    if command.ran?
      raise CompilationFailure.new(command) unless command.succeeded?
      require 'antlr3'
      target_files.map { |target| target.load(@module) }
      base = @module.const_get(@name)
      for klass in %w(Lexer Parser TreeParser)
        base.const_defined?(klass) and
          loaded_classes["#{@name}::#{klass}"] = base.const_get(klass)
      end
    else raise("**bug**: compilation command has not been executed for some reason")
    end
  end
  
  
  def target_files
    @targets.map { |file| RubyFile.new(output_directory / file) }
  end
  
private
  def delete_target(target)
    file = output_directory / target
    log = target_file + '.log'
    [file, log].each do |f|
      test(?f, f) and begin File.delete(f)
        $VERBOSE and $stderr.puts("deleted %s" % f)
      end
    end
  end

  def study
    @source =~ /^\s*(lexer|parser|tree)?\s*grammar\s*(\S+)\s*;/ or
      raise Grammar::Format_Error[source, path]
    
    @name = $2
    @type = $1 || 'combined'
    
    @imports.clear
    @targets.clear
    
    @source.scan(/^\s+import\s+(\w+)\s*;/) do |name|
      @imports << name
    end
    
    for target_type in %w(lexer parser walker)
      target_name = self.send(:"#{target_type}_file_name") and
        @targets << target_name
    end
    
    for delegate in @imports
      @targets << "#{@name}_#{delegate}.rb"
    end
  end
  
  def build_dependencies
    @dependencies.clear
    
    depends_on @path
    depends_on JAR_FILE
    
    if @source =~ /tokenVocab\s*=\s*(\S+)\s*;/
      grammar_name = $1
      token_file = (@output_directory / grammar_name + '.tokens')
      if test(?f, token_file)
        depends_on(token_file)
      else
        grammar_file = File.dirname( @path ) / $1 << '.g'
        depends_on(grammar_file)
      end
    end    
  end
end



class Grammar::InlineGrammar < Grammar
  attr_accessor :host_file, :host_line
  
  attr_reader :path
  def path=(v)
    previous, @path = @path, v.to_s
    previous == @path or write_to_disk
    v
  end
  
  def initialize(source, options = {})
    options = options.clone
    
    host = call_stack.find { |call| call.file != __FILE__ }
    
    @host_file = File.expand_path(options[:file] || host.file)
    @host_line = (options[:line] || host.line)
    
    self.output_directory = options.delete(:output_directory) || '.'
    
    @targets = []
    @dependencies = []
    @imports = []
    
    source = source.to_s.fixed_indent(0)
    source.strip!
    self.source = source
    
    write_to_disk
    build_dependencies
    
    options.each do |name, value|
      setter = :"#{name}="
      respond_to?(setter) and send(setter, value)
    end
    
    yield(self) if block_given?
  end
  
private
  
  def write_to_disk
    @path ||= output_directory / @name + '.g'
    unless test(?f, @path) and MD5.digest(@source) == MD5.digest(File.read(@path))
      open(@path, 'w') { |f| f.write(@source) }
    end
    return(@path)
  end
end


