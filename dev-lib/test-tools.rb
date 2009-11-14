#!/usr/bin/ruby
# encoding: utf-8

this_directory = File.dirname(__FILE__)
$:.unshift(this_directory)

core_exts = Dir[ File.join(this_directory, 'core-ext', '*.rb') ]
for extension in core_exts do require(extension) end

require "util/call-stack"
require "util/terminal"
require "util/tree-like"
require 'util/progressbar'
require 'shellwords'

if RUBY_VERSION.start_with?("1.9.")
  require 'digest'
  MD5 = Digest::MD5
else
  autoload :MD5, 'md5'
end

autoload :ERB, 'erb'
autoload :Base64, 'base64'
autoload :StringIO, 'stringio'
autoload :YAML, 'yaml'
autoload :StringScanner, 'strscan'

# mixin methods to trigger output log writting
# requires the definition of these methods:
#   - report()
#   - log_path()
module LoggableOutput
  def log?
    return @log
  end
  def log!
    @log = true
  end
  attr_writer :log
  
  class_methods do
    def try_to_restore(log_path)
      if File.read(log_path) =~ /^__END__$/
        obj = YAML.load($'.strip)#Marshal.load(Base64.decode64($'.strip))
        return(obj)
      end
    rescue => err
      #puts(self.to_s + '.try_to_restore(%p): %s' % [log_path, err])
      nil
    end
  end
  
  def write_log
    log? and File.open(log_path, 'w') do |f|
      f.puts(report)
      f.puts('__END__')
      YAML.dump(self, f)
    end
  end
  
end

class RubyFile
  
  SYNTAX_CHECK_COMMAND_TEMPLATE = "ruby -c '%s' -- 2>&1".freeze

  ## ERRORS #################################################################
  BadSyntax = Class.new(StandardError)
  NotRunnable = Class.new(StandardError)

  include LoggableOutput
  
  attr_reader :syntax_errors, :path, :runtime_errors, :execution_time
  
  def log_path
    @log_path ||= directory / name << '.log'
  end
  
  def log_path=(v)
    @log_path = v.to_s
  end

  def initialize(path, log_results = true)
    @path = File.expand_path path.to_s
    @bad_syntax = nil
    @syntax_errors = []
    @runnable = nil
    @runtime_errors = []
    @execution_time = nil
    @source = nil
    @log = log_results
  end
  
  def source
    @source ||= read
  end
  
  def load(mod = nil)
    mod ? mod.module_eval(self.source, @path, 1) : eval(self.source, TOPLEVEL_BINDING, @path, 1)
  end
  
  def run
    unless bad_syntax?
      output, error = redirect($stdout, $stderr) do
        system("ruby -w #{@path.shellescape} --")
        @runnable = $?.success?
      end
      @runtime_errors.clear
      error.split(/\s+(?=\S.*?:\d+:)/).each do |error|
        @runtime_errors << error.split(/\s*:\s*/, 3)
      end
    end
    write_log
    return @runnable
  end
  
  
  def runnable?
    @runnable.nil? and run
    return @runnable
  end
  
  def has_problems?
    exists? or return true
    good_syntax? or return true
    runnable? or return true
    @syntax_errors.empty? or return true
    return false
  end
  
  def check_syntax
    if test(?f, @path)
      @execution_time = Time.now
      @syntax_errors.clear
      command = SYNTAX_CHECK_COMMAND_TEMPLATE % @path.shellescape
      output = `#{command}`.tap { |txt| txt.chomp! }
      if @bad_syntax = !($?.success?)
        @runnable = false
        output.split(/\s+(?=\S.*?:\d+:)/).each do |error|
          file, line_no, message = error.split(/\s*:\s*/, 3)
          line_no = line_no.to_i
          @syntax_errors << [file, line_no, message]
        end
      end
      return !@bad_syntax
    end
  end
  
  def directory
    File.dirname(@path)
  end
  
  def report
    ERB.new(<<-END.here_indent!).result(binding)
    | file: <%= @path %>
    | check_time: <%= @execution_time %>
    | <% if bad_syntax? %>-> bad syntax!:
    | <% for line in @syntax_errors %>    - <%= line %>
    | <% end %>
    | <% else %>-> syntax is OK
    | <% if runnable? %>-> no runtime errors
    | <% else %>-> runtime errors!:
    | <% for line in @runtime_errors %>    - <%= line %>
    | <% end %><% end %><% end %>
    |
    | __END__
    | <%= Base64.encode64(Marshal.dump(self)) %>
    END
  end
  
  def name(with_extension = true)
    with_extension ? File.basename(@path) : File.basename(@path, '.*')
  end
  def good_syntax?
    not bad_syntax?
  end
  def bad_syntax?
    @bad_syntax.nil? or check_syntax
    return @bad_syntax
  end
  def exists?
    test(?f, @path)
  end
  def read
    test(?f, @path) and begin
      code = ''
      open(@path) do |f|
        while line = f.gets and line !~ /^__END__$/
          code << line
        end
      end
      return(code)
    end
  end
end

# A class that functions as a means to handle building and running
# code generating commands for the ANTLR Tool.

class ANTLRCommand
  OPTION_METHODS = []
  SWITCHES = {}
  
  include LoggableOutput
  def self.switch(name, command_line = name.to_s)
    switch_string = "-#{command_line}"
    OPTION_METHODS.push(:"#{name}?", :"#{name}=")
    SWITCHES[name.to_sym] = switch_string
    class_eval(<<-END)
      def #{name}?; return @#{name}; end
      attr_writer :#{name}
      def #{name}!
        @#{name} = true
      end
    END
  end
  
  def self.option(name, command_line = name.to_s)
    attr_reader(name)
    class_eval(<<-END)
      def #{name}=(v)
        @#{name} = v.to_s
      end
    END
    switch_string = "-#{command_line}"
    OPTION_METHODS.push(name.to_sym, :"#{name}=")
    SWITCHES[name.to_sym] = switch_string
  end
  
  switch :report;  switch :debug;  switch :trace
  switch :profile; switch :verbose
  switch :generate_nfas, 'nfa'
  switch :generate_dfas, 'dfa'
  switch :debug_st, 'XdbgST'
  switch :only_stale, 'make'
  switch :print_grammar_ast, 'Xgrtree'
  switch :print_dfa_text, 'Xdfa'
  switch :dfa_dot, 'Xdfaverbose'
  option :search_path, 'lib'
  option :output_directory, 'fo'
  
  attr_reader :grammar_file
  attr_writer :output_directory
  def output_directory
    @output_directory ||= '.'
  end
  
  def log?
    return @log
  end
  attr_writer :log
  def log!
    @log = true
  end
  
  def log_path
    @log_path ||= output_directory /
      (@grammar_file ? File.basename(@grammar_file, '.g') << '.log' :
       'antlr-output.log')
  end
  
  def log_path=(v)
    @log_path = v.to_s
  end
  
  def options
    @options ||= []
  end
  
  def java_options
    @java_options ||= []
  end
  
  def output
    @output ||= []
  end
  
  def error
    @error ||= []
  end
  
  def succeeded?
    return @succeeded
  end
  
  attr_writer :succeeded
  attr_reader :execution_time, :executed_command, :exit_status
    
  def self.run(*args, &block)
    new(*args, &block).run
  end
  
  def ran?
    @execution_time ? true : false
  end
  
  def initialize(file = nil, options = {})
    @grammar_file = file
    set_options(options)
    block_given? and yield(self)
  end
  
  def initialize_copy(orig)
    super
    @output = []
    @error = []
    @execution_time = nil
    @executed_command = nil
    @exit_status = nil
  end
  
  
  def command_line
    segments = ['java', *java_options]
    segments.push('org.antlr.Tool')
    SWITCHES.each do |name, switch|
      value = instance_variable_get(:"@#{name}") rescue next
      if value then segments.push(switch)
        segments.push(value) if value.is_a?(String)
      end
    end
    grammar_file and segments.push(grammar_file)
    segments.shelljoin
  end
  alias to_s command_line
  alias timestamp execution_time
  
  def set_options(options_hash)
    options_hash.each do |name, value|
      setter = :"#{name}="
      respond_to?(setter) and send(setter, value)
    end
  end
  
  def report
    ERB.new(<<-END.here_indent!).result(binding)
    | <% if ok? %>*** ANTLR Command Succeeded ***<% else %>!!! ANTLR Command Failed !!!<% end %>
    | command: <%= @executed_command %>
    | time: <%= @timestamp %><% if failed? %>
    | status code: <%= @exit_status || 'unknown' %><% end %>
    | 
    | <% unless output.empty? %>= = = = = = = standard out = = = = = = =
    | <%= output.join("\n") %>
    | <% end %>
    | <% unless error.empty? %>= = = = = = = standard error = = = = = = =
    | <%= error.join("\n") %>
    | <% end %>
    END
  end
  
  def run
    @execution_time = Time.now
    @executed_command = self.command_line
    
    $VERBOSE and $stderr.puts(@executed_command)
    
    command_out, command_err = redirect($stdout, $stderr) do
      system(@executed_command)
      case @exit_status = $?.exitstatus
      when 130, 0 then self.succeeded = true   # i have no clue what this exit code means, but it shows up in places where compilation was successful
      else self.succeeded = false
      end
    end
    self.output.replace(command_out.lines.map { |l| l.chomp!; l })
    self.error.replace(command_err.lines.map { |l| l.chomp!; l })
    
    if succeeded?
      @debug_st and products.grep(/\.rb$/) { |rb|
        STMarkup.convert_file(rb)
      }
    end
    write_log
    return self
  end

  def products
    if @execution_time and test(?d, output_directory)
      Dir.children(output_directory).select do |file|
        File.mtime(file) > (@execution_time - 2)
      end
    else []
    end
  end
  
  alias ok? succeeded?
  def failed?
    not succeeded?
  end
end



class Grammar
  
  def self.inline(source, *args)
    InlineGrammar.new(source, *args)
  end
  
  GRAMMAR_TYPES = %w(lexer parser tree combined)
  TYPE_TO_CLASS = {
    'lexer'  => 'Lexer',
    'parser' => 'Parser',
    'tree'   => 'TreeParser'
  }
  CLASS_TO_TYPE = TYPE_TO_CLASS.invert
  JAR_FILE = $project.antlr_jar
  
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
  #@@grammars = {}
  #
  #class << self; define_method(:__new__, Class.instance_method(:new)); end
  #def self.[](name)
  #  @@grammars[name]
  #end
  #
  #def self.new(source, *args)
  #  gram = __new__(source, *args)
  #  if @@grammars.has_key?(gram.name)
  #    raise(NamingConflict.new(gram, @@grammars[gram.name]))
  #  else @@grammars[gram.name] = gram
  #  end
  #  return(gram)
  #end

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

class Grammar::CompilationFailure < StandardError
  def initialize(command)
    super(<<-END.here_indent! % command.report)
    | cannot load targets due to ANTLR compilation failure:
    | %s
    END
  end
end

class Grammar::InlineGrammar::NamingConflict < StandardError
  def initialize(new_grammar, existing_grammar)
    grammar_summary = 
      [new_grammar, existing_grammar].zip(%w(intended existing)).map do |gram, desc|
        summary = "#{desc} grammar: #{gram.name} in file #{gram.host_file} at line #{gram.host_line}\n"
        gram.source.each_line { |line| summary << '  ' << line }
      end.join("\n---\n")
    message = (<<-END.here_indent!) % [new_grammar.name, grammar_summary]
    | cannot create inline grammar %s as an existing grammar has its name:
    | %s
    | ---
    | the generated code for these two classes will have the same namespace, and thus
    | they will interfere with each others contents
    END
    super(message)
  end
end
class Grammar::DependencyError < StandardError
  attr_reader :target, :source
  def initialize(target, source)
    @target = target
    @source = source
    message = <<-END.here_flow!
    | compilation target #{target.inspect} has been
    | declared dependant upon nonexistent file #{source.inspect}
    END
    super(message)
  end
end
class Grammar::FormatError < StandardError
  attr_reader :file, :source
  def self.[](*args); new(*args); end
  
  def initialize(source, file = nil)
    @file = file
    @source = source
    message = ''
    if file.nil? # inline
      message << "bad inline grammar source:\n"
      message << ("-" * 80) << "\n"
      message << @source
      message[-1] == ?\n or message << "\n"
      message << ("-" * 80) << "\n"
      message << "could not locate a grammar name and type declaration matching\n"
      message << "/^\s*(lexer|parser|tree)?\s*grammar\s*(\S+)\s*;/"
    else
      message << 'bad grammar source in file %p' % @file
      message << ("-" * 80) << "\n"
      message << @source
      message[-1] == ?\n or message << "\n"
      message << ("-" * 80) << "\n"
      message << "could not locate a grammar name and type declaration matching\n"
      message << "/^\s*(lexer|parser|tree)?\s*grammar\s*(\S+)\s*;/"
    end
    super(message)
  end
end

module PrettyException
  FILE_CACHE = Hash.new do |cache, path|
    test(?f, path) and cache[path] = File.readlines(path)
  end
  def FILE_CACHE.[](key)
    file = File.expand_path(key.to_s)
    if File.extname(file) == '.so'
      return "<binary .so extension>"
    else
      super(file)
    end
  end
  
  @@blacklist = [/rubygems\/custom_require/]
  def self.measure_invisible(text)
    text.scan(/\e\[.*?m/).inject(0) do |width, escape|
      width + escape.length
    end
  end
  
  DetailedCall = Struct.new(:depth, :file, :line, :method, :source, :string_template_nodes)
  class DetailedCall
    def initialize(depth, file, line, method, range_width = 2)
      case source_lines = FILE_CACHE[file]
      when Array
        start, finish = (line - range_width - 1), (line + range_width - 1)
        start < 0 and start = 0
        source = source_lines[start..finish].join('').fixed_indent(0)
        ndigits = Math.log10(finish + 1).floor + 1
        source = source.split(/\n/).each_with_index.map do |ln, index|
          ln = ln.expand_tabs(4)
          line_no = start + index + 1
          prefix = index == range_width ? "==> %#{ndigits}i | " : "    %#{ndigits}i | "
          prefix %= line_no
          prefix << ln
        end.join("\n")
      when String then source = source_lines
      when nil then source = ''
      end
      nodes = nil
      markup = (STMarkup.load(file) rescue nil) and
        nodes = markup.nodes_covering_line(line).reject { |n| n.tag == 'top' }
      
      super(depth, file, line, method, source, nodes)
    end
    
    def format(width)
      lines = []
      lines << ('╠═════╤' << '═' * (width - 8) << '╣')
      ln = '║ %2i  │ %s @ %i ' % [depth, file, line]
      method and ln << "in `#{method}' "
      lines << (ln.ljust(width + 3) << '║')
      if nodes = string_template_nodes and not nodes.empty?
        ndigits = Math.log10(nodes[0].finish_line).floor + 1
        divider = '╠═════╧' << '═' * (width - 14 - 2*ndigits) << '╤' <<
          '═' * (ndigits + 2) << '╤' << '═' * (ndigits + 2) << '╣'
        lines << divider
        for n in nodes
          lines <<
            ('║ ' << [ (' ' * n.depth << n.tag).ljust(width - 2*ndigits - 10),
              n.start_line.to_s.center(ndigits),
              n.finish_line.to_s.center(ndigits) ].join(' │ ') << ' ║')
        end
        divider = '╠' << '═' * (width - 8 - 2*ndigits) << '╧' <<
          '═' * (ndigits + 2) << '╧' << '═' * (ndigits + 2) << '╣'
        lines << divider
      else
        lines << ('╠═════╧' << '═' * (width - 8) << '╣')
      end
      
      for src_line in source.split(/[ \t]*\n/)
        lines << ('║ ' << src_line.ljust(width - 4) << ' ║')
      end
      
      return(lines.join("\n"))
    end
    
    
  end
  SyntaxErrorInformation = Struct.new(:index, :file, :line, :description, :source, :string_template_nodes)
  class SyntaxErrorInformation
    def initialize(index, file, line, error_text, range_width = 2)
      line = line.to_i
      error_column = 
        if error_text =~ /^( *)\^$/
          # then this is one of those syntax errors with extra info about
          # where in the line the syntax error occurs
          error_column = $1.length
        else 0
        end
      
      # fetch the source range
      if source_lines = FILE_CACHE[file]
        start, finish = (line - range_width - 1), (line + range_width - 1)
        start < 0 and start = 0
        lines = source_lines[start..finish].map! { |ln| ln.clone }
        
        # highlight the error
        error_line = lines[range_width]
        error_line.insert(error_line.length - 1, ' <~~~ ')
        error_line.insert(error_column, ' ~~~> ')
        
        lines = lines.join("\n").fixed_indent(0).split("\n")
        
        ndigits = Math.log10(finish + 1).floor + 1
        source = lines.each_with_index.map do |ln, i|
          ln = ln.expand_tabs(4)
          line_no = start + i + 1
          prefix = i == range_width ? "==> %#{ndigits}i | " : "    %#{ndigits}i | "
          prefix %= line_no
          prefix << ln
        end.join("\n")
      else source = ''
      end
      
      nodes = nil
      markup = (STMarkup.load(file) rescue nil) and
        nodes = markup.nodes_covering_line(line).reject { |n| n.tag == 'top' }
      
      description = error_text.split("\n")[0]
      super(index, file, line, description, source, nodes)
    end
    
    def format(width)
      
       # format:
       #   1. fancy separation line
       #   2. index & location boxes
       #   3. another separation line
       #   4. error description boxy
       # if string template data available
       #   * separation line
       #   * string template tree display
       # if source code availble
       #   * separation line
       #   * source code region display box
      
      lines = []
      lines << ('╠═════╤' << '═' * (width - 8) << '╣')
      
      prefix = '║ %2i  │ ' % [index]               # fixed width of 8 visible chars
      body = "#{file} @ #{line}".ljust(width - 10) # fill to visible width to avoid multi-byte box char count issues
      tail = ' ║'                                  # fixed width of 2 visible chars
      lines << (prefix << body << tail)
      
      lines << ('╠═════╧' << '═' * (width - 8) << '╣')
      lines << ('║ ' << description.center(width - 4) << ' ║')
      
      if nodes = string_template_nodes and not nodes.empty?
        ndigits = Math.log10(nodes[0].finish_line).floor + 1
        
        divider = '╠' << '═' * (width - 8 - 2*ndigits) << '╤' <<
          '═' * (ndigits + 2) << '╤' << '═' * (ndigits + 2) << '╣'
        
        lines << divider
        
        for n in nodes
          lines <<
            ('║ ' << [ (' ' * n.depth << n.tag).ljust(width - 2*ndigits - 10),
              n.start_line.to_s.center(ndigits),
              n.finish_line.to_s.center(ndigits) ].join(' │ ') << ' ║')
        end
        
        divider = '╠' << '═' * (width - 8 - 2*ndigits) << '╧' <<
          '═' * (ndigits + 2) << '╧' << '═' * (ndigits + 2) << '╣'
        lines << divider
      else
        lines << ('╠' << '═' * (width - 2) << '╣')
      end
      
      for src_line in source.split(/[ \t]*\n/)
        lines << ('║ ' << src_line.ljust(width - 4) << ' ║')
      end
      
      return(lines.join("\n"))
    end
  end
  
  module_function
  def blacklist(rx)
    @@blacklist << (rx.is_a?(Regexp) ? rx : Regexp.new(Regexp.escape(rx)))
  end
  
  def pretty_error(exception, options = {})
    width = options[:width] ||= screen_width - 10
    backtrace = options.fetch(:backtrace, true)
    
    buffer = StringIO.new
    buffer.puts('')
    
    case exception
    when SyntaxError
      syntax_error_header(buffer, exception, width)
      syntax_error_list(buffer, exception, width)
    else
      error_header(buffer, exception, width)
    end
    
    
    if backtrace
      error_backtrace(buffer, exception, width, backtrace)
      exception.set_backtrace([])
    end
    
    message = buffer.string.gsub!(/^/,'   ')
    exception.message.replace(message)
    return(exception)
  end
  
  def error_header(buffer, exception, width)
    buffer.puts('╔' << '═' * (width - 2) << '╗')
    buffer.puts('║ ' << exception.class.name.center(width - 4) << ' ║')
    buffer.puts('╟' << '─' * (width - 2) << '╢')
    for line in exception.message.split(/\n/)
      w = width + PrettyException.measure_invisible(line) - 4
      buffer.puts('║ ' << line.ljust(w) << ' ║')
    end
    buffer.puts('╚' << '═' * (width - 2) << '╝')
    buffer.puts('')
  end
  
  def syntax_error_header(buffer, exception, width)
    buffer.puts('╔' << '═' * (width - 2) << '╗')
    buffer.puts('║ ' << exception.class.name.center(width - 4) << ' ║')
    buffer.puts('╟' << '─' * (width - 2) << '╢')
    buffer.puts('║ ' << "compilation error (see list below)".ljust(width - 4) << ' ║')
    buffer.puts('╚' << '═' * (width - 2) << '╝')
    buffer.puts('')
  end
  
  def error_backtrace(buffer, exception, width, limit = nil)
    trace = exception.backtrace!
    trace.delete_if { |call| @@blacklist.any? { |rx| rx === call.file } }
    if limit and Integer === limit
      trace = trace.first(limit)
      label = "Detailed Backtrace (Last #{limit} Calls)"
    else
      label = "Detailed Backtrace"
    end
    
    calls = trace.each_with_index.map do |call, i|
      DetailedCall.new(trace.length - i, call.file, call.line, call.method)
    end
    
    buffer.puts('╔' << '═' * (width - 2) << '╗')
    buffer.puts('║ ' << label.center(width - 4) << ' ║')
    for call in calls do buffer.puts(call.format(width)) end
    buffer.puts('╚' << '═' * (width - 2) << '╝')
  end
  
  
  def syntax_error_list(buffer, exception, width)
    errors = exception.message.scan(/^([^\n\r]*?):(\d+):(.*?)(?=\z|\n[^\n\r]*?:\d+:)/m)
    errors = errors.each_with_index.map do |segments, i|
      file, line, error_text = segments
      SyntaxErrorInformation.new(i + 1, file, line, error_text)
    end
    buffer.puts('╔' << '═' * (width - 2) << '╗')
    buffer.puts('║ ' << 'List of Syntax Errors'.center(width - 4) << ' ║')
    for error in errors do buffer.puts(error.format(width)) end
    buffer.puts('╚' << '═' * (width - 2) << '╝')
    buffer.puts('')
  end
end

class STMarkup
  class Node
    include TreeLike
    attr_accessor :tag, :id, :start, :finish
    
    def initialize(tag, document, parent = nil)
      @tag = tag
      @document = document
      @id = nil
      @start = nil
      @finish = nil
      self.parent = parent unless parent.nil?
      block_given? and yield(self)
    end
    
    def start_line;    start.line                rescue nil; end
    def start_column;  start.column              rescue nil; end
    def finish_line;   finish.line               rescue nil; end
    def finish_column; finish.column             rescue nil; end
    def line_span;     (start_line..finish_line) rescue nil; end
    def last
      children.last
    end
    def <<(child); children << child; end
    
    def extract_tag_information
      case @tag
      when /^(\w+)\.region__(.+)__(.+)$/
      when /^(\w+)\.anonymous$/
      when /^(\w+)\.(\w+)$/ then [$1, $2]
      when /^(if|else|elsif|elseif).*?_subtemplate/
      
      end
    end
    
    def region?
      @tag =~ /^(\w+)\.region__(.+)__(.+)$/ ? true : false
    end
    def anonymous?
      @tag =~ /^(\w+)\.anonymous$/ ? true : false
    end
    def conditional_subtemplate?
      @tag =~ /^(if|else|elsif|elseif).*?_subtemplate$/ ? true : false
    end
    def top_level_template?
      not anonymous? || conditional_subtemplate? || region?
    end
    
    def group
      @tag =~ /^(.+?)\./ ? $1 : parent ? parent.group : nil
    end
    def template
      conditional_subtemplate? and return(parent ? parent.template : nil)
      case @tag
      when "top" then 'top'
      when /^\w+\.region__(.+)__(.+)$/ then $2
      when /^\w+\.anonymous$/ then parent ? parent.template : nil
      when /^\w+\.(\w+)$/ then $1
      when /^\w+\.<.*>$/
        'anonymous'
      else
        raise("failed to match @tag=%p (node id %p)" % [@tag, @ids])
      end
    end
    
    def =~(tag_expression)
      return false unless top_level_template?
      template, group = tag_expression.split(/\./, 2).reverse!
      group && (group != '*') && self.group != group and return false
      return File.fnmatch(template, self.template)
    end
    
    def inspect
      '<%s id=%p file=%p span=l%pc%p..l%pc%p>' % [@tag, @id, file,
        @start.line, @start.column, @finish.line, @finish.column]
    end
    
    def file
      @document.file
    end
    def source_code_context(before = 0, after = before)
      lines = @document.ruby_source.split("\n")
      start, finish = (@start.line - 1 - before), (@finish.line - 1 + after)
      start < 0 and start = 0
      finish >= lines.length and finish = lines.length  - 1
      out = ''
      start.upto(finish) do |line_index|
        line = lines[line_index]
        if line_index == (@finish.line - 1)
          line.insert(@finish.column, 255.chr)
        end
        if line_index == (@start.line - 1)
          line.insert(@start.column, 255.chr)
        end
        out << line << "\n"
      end
      return [out, start]
    end
    
    def to_s
      @document.ruby_source[ (@start.position)...(@finish.position) ]
    end
    
    def node_display
      '  ' * depth << tag
    end
    
    def serialization_record(tag_symbol)
      parent_id = parent.nil? ? 0 : parent.id
      record = [@id, parent_id, index_in_parent, tag_symbol]
      record.concat(@start.to_a)
      record.concat(@finish.to_a)
      record.pack("L10")
    end
    
    def markup
      buffer = ''
      buffer << "<#@tag>" if @start
      children.each { |child| buffer << child.markup }
      buffer << "</#@tag>" if @finish
      buffer
    end
    
  end

  Location = Struct.new(:position, :line, :column, :markup_position)
  class Location
    def to_a; [position, line, column]; end
    def to_s; [line, column].join(':'); end
    
    def <<(text)
      length     = text.length
      line_count = text.count("\n")
      line_count.zero? ? (self.column += length) :
        (self.column = length - text.rindex("\n") - 1)
      self.line += line_count
      self.position += length
      return self
    end
    def +(text); self.dup << text; end
    def <=>(location); position <=> location.position; end
    include Comparable
  end
  attr_reader :index, :top
  
  class Parser
    attr_reader :stack, :node
    
    def initialize(document, source)
      @document = document
      @scanner = StringScanner.new(source)
      @stack = []
      @location = Location[0,1,0,0]
      @node = nil
      @document.top = open('top')
    end
    
    def parse
      unless @scanner.eos?
        until @scanner.eos?
          before_pos = @scanner.pos
          step
          push_ahead if @scanner.pos == before_pos
          block_given? and yield(self)
        end
        close('top')
      end
    end
    
    def push_ahead(chars = 1)
      text = @scanner.peek(chars)
      add(text)
      @scanner.pos += chars
    end
    
    OPEN_TAG_RX = %r(
      < (
          \w+ \. (?:<.*?>|\S+?)
        | (?: if | else | elseif | elsif ) (?: \( \S*? \) )? _subtemplate
        )
      >
    )x
    CLOSE_TAG_RX = %r(
      < / (
          \w+ \. (?:<.*?>|\S+?)
        | (?: if | else | elseif | elsif ) (?: \( \S*? \) )? _subtemplate
        )
      >
    )x
    BEFORE_TAG_RX = %r((?=
      < /?
        (?:
          \w+ \. (?: < .*? > | \S+?)
        | (?: if | else | elseif | elsif ) (?: \( .*? \) )? _subtemplate
        )
      >
    ))x
    
    def step
      case
      when @scanner.scan(CLOSE_TAG_RX) then close(@scanner[1])
      when @scanner.check(OPEN_TAG_RX)
        open @scanner[1]
        @scanner.scan(OPEN_TAG_RX)
      when text = @scanner.scan_until(BEFORE_TAG_RX) then add(text)
      else add @scanner.scan_until(/\z/)
      end
    end

    def add(text)
      @document.ruby_source << text
      @location += text
    end

    def close(tag)
      if @node.tag == tag
        @node.finish = location
        @node = @stack.pop
      else
        $stderr.puts("=" * 80)
        $stderr.puts("bad closing tag %p" % tag)
        $stderr.puts("tag stack:")
        $stderr.puts(@stack.reverse.map { |node| '  - ' << node.tag })
        $stderr.puts("=" * 80)
      end
    end
    
    def open(tag)
      node = Node.new(tag, @document, @node)
      node.start = location
      @stack.push(@node) unless @node.nil?
      @node = node
    end
    
    def location
      @location.markup_position = @scanner.pos
      return @location
    end
    
  end
  
  def self.convert_file(path, &block)
    source = File.read(path)
    markup = new(source, path, &block)
    open(path, 'w') { |f| f.write(markup.serialize) }
    return markup
  end
  
  def self.has_st_data?(path)
    source = File.read(path)
    source =~ /^__END__\n\-\-> STMarkup: ([a-fA-F0-9]+)\n/ ? [$`, $', $1] : false
  end
  
  def self.load(path)
    parts = has_st_data?(path) or
      raise "no String Template markup data found in file `%s'" % path
    mark = allocate
    mark.send(:deserialize, path, *parts)
    return mark
  end
  
  
  attr_accessor :top, :index, :ruby_source, :file
  def initialize(source, file = '(string)', &block)
    @file = file
    @index = []
    @ruby_source = ''
    Parser.new(self, source).parse(&block)
    build_index
  end
  
  def build_index
    @top.enum_for(:each).with_index do |node, i|
      node.id = i + 1
      @index[i] = node
    end
    @index.compact!
  end
  
  def serialize
    __type_id__ = 0
    name_table = Hash.new do |h, k|
      val = h[k] = __type_id__
      __type_id__ += 1
      val
    end
    
    unless @index.empty?
      db = ''
      for node in @index
        db << node.serialization_record(name_table[node.tag])
      end
      
      names = name_table.keys.sort_by { |name| name_table[name] }
      width = names.map { |n| n.length }.max
      header = [width, names.length, @index.length].pack('L3')
      pack_template = "a#{width}" * names.length
      header << names.pack(pack_template)
      
      header << db
      header = Base64.encode64(header)
      checksum = MD5.md5(header).to_s
      body = @ruby_source + ("\n__END__\n--> STMarkup: #{checksum}\n")
      body << header
    end
    body
  end
  
  def deserialize(file, ruby_source, db, expected_digest)
    @file = file
    @ruby_source = ruby_source
    digest = MD5.md5(db).to_s
    digest == expected_digest or
      raise "corrupted String Template markup database in file `%s':\n  - data digest (%p) does not match recorded digest (%p)" % [@file, digest, expected_digest]
    db = Base64.decode64(db)
    
    tag_width, tag_count, node_count, db = db.unpack("L3a*")
    tag_mask = "A#{tag_width}" * tag_count << 'a*'
    
    tags = db.unpack(tag_mask)
    db = tags.pop
    
    node_mask = 'L10' * node_count
    node_index = {}
    @index = db.unpack(node_mask).each_slice(10).map do |details|
      id, parent_id, index_in_parent, tag_id,
      start_pos, start_line, start_col,
      finish_pos, finish_line, finish_col = details
      
      node = Node.new(tags[tag_id], self)
      node.id = id
      if parent = node_index[parent_id]
        node.instance_variable_set(:@parent, parent)
        parent.children[index_in_parent] = node
      else
        @top = node
      end
      node_index[id] = node
      node.start = Location[start_pos, start_line, start_col]
      node.finish = Location[finish_pos, finish_line, finish_col]
      node
    end
  end
  
  def nodes_covering_line(line)
    @index.select do |node|
      node.line_span === line
    end
  end
  
  def tree_slice(region)
    require 'text/table'
    region = region..region unless Range === region
    slice = @index.select { |node| node.line_span.overlap?(region) }
    rows = slice.map { |node| [node.node_display, node.start.to_s, node.finish.to_s] }
    Text::Table.new(rows) do |t, c1, c2, c3|
      c1.title = 'Tag Tree'
      c2.title = 'Start'
      c3.title = 'End'
    end
  end
end

