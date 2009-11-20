mode :compile do
  option 'output-directory', 'o' do
    argument_required
    arity(1)
    validate do |pt|
      test(?d, File.dirname(pt))
    end
    default('.')
  end
  
  option :force, 'f' do
    description(<<-END.here_flow!)
    | force compilation even if an up-to-date target source exists
    END
  end
  
  option :debug, 'd' do
    description(<<-END.here_flow!)
    | compile the grammar with the -debug switch
    END
  end
  
  if $stdin.tty?
    argument(:grammar_file) do
      required
      arity(1)
    end
  end
  
  def run
    Ruby.project.test_mode!
    self.class.send(:include, PrettyException)
    
    output_directory = params['output-directory'].value
    
    @grammar =
      if $stdin.tty?
        Grammar.new(params[:grammar_file].value, :output_directory => output_directory)
      else
        Grammar.inline($<.read, :output_directory => output_directory)
      end
    
    @grammar.debug_st = true
    
    @grammar.force_compilation if params[:force].given?
    @grammar.debug = true if params[:debug].given?
    compile
  end
  
  def compile
    unless @grammar.stale?
      puts "---> the grammar's targets need no updating; doing nothing"
      puts "     (to force compilation, use the --force option)"
      exit
    end
    
    puts '---> compiling the grammar and converting the resulting ST Markup'
    
    result = @grammar.compile
    
    unless result.succeeded?
      $stderr.puts '!!!! compilation failed !!!!'
      $stderr.puts ''
      e = Grammar::CompilationFailure.new(result)
      pretty_error(e) rescue nil
      $stderr.puts(e)
      exit_failure
    end
    
    errors_seen = false
    for target in @grammar.target_files
      puts "---> checking #{target.path}"
      begin
        target.load
      rescue Exception => e
        errors_seen = true
        $stderr.puts("!!!! #{target.path} has problems !!!!")
        $stderr.puts ''
        begin
          pretty_error(e)
          $stderr.puts e
        rescue => pe
          $stderr.puts("!!!! note: failed to gussy up the error report due to an exception #{pe.inspect}")
          $stderr.puts ''
          $stderr.puts "#{e.class}: #{e.message}"
          $stderr.puts(e.backtrace)
          $stderr.puts ''
        end
      end
    end
    if errors_seen
      exit_failure
    else
      puts "**** OK, it compiled without any apparent problems ****"
      puts ''
      exit
    end
  end
  
end

