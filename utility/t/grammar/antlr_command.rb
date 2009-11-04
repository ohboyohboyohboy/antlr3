#!/usr/bin/ruby
# encoding: utf-8

autoload :ERB, 'erb'

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
