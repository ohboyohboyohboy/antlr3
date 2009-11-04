#!/usr/bin/ruby
# encoding: utf-8

autoload :ERB, 'erb'

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
