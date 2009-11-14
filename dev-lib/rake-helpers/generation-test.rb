#!/usr/bin/env ruby-script
# encoding: utf-8

require 'colorized-progress-bar'

class GenerationTestManager
  TEST_BASE_DIRECTORY = $project.functional_tests
  GET_TEST_DIR = Proc.new { |i| TEST_BASE_DIRECTORY / '%03i' % i }
  LEGEND = [
      ['#', 'total number of tests'],
      ['PS', '# of tests that passed'],
      ['TD', '# of tests that are pending implementation'],
      ['FL', '# of tests with failed assertions'],
      ['BR', "# of tests marked ``broken''"],
      ['CF', "# of tests raising grammar compilation failures"],
      ['BX', '# of tests that generated source code with syntax errors'],
      ['BS', '# of tests that generated source code with runtime errors']
    ]
  
  def initialize(options = {})
    start = options[:start] || 0
    finish = options[:finish] || 100
    range = start...finish
    test_dirs = range.map { |i| GET_TEST_DIR[i] }.select { |d| test(?d, d) }
    @tests = test_dirs.map! { |d| GenerationTest.new(d, self) }
    @log = options[:log]
    @thread_count = options[:threads] || 3
  end
  
  def run
    start_time = Time.now
    @bar = ColorCodedProgressBar.new(count)
    previous_description = ""
    for test in @tests
      @bar.title = "running #{test.name}/#{previous_description}"
      test.run
      previous_description = "#{test.name}:#{test.status}"
      @bar.send(test.status)
    end
    @bar.wipe
    @duration = Time.now - start_time
  end
  
  def log_result(name, command, output)
      return(nil) unless @log
      @log.puts( " Test #{name} ".center(100, '*') )
      @log.puts(command)
      @log.puts( '-' * 100 )
      @log.puts(output)
  end
  
  def step(i = 1)
    @bar.inc(i)
  end
  
  def count
    @tests.inject(0) { |sum, test| sum + test.count }
  end
  
  def clean
    for test in @tests
      test.clean
    end
  end
  
  def total_summary
    @tests.map { |t| t.summary }.inject(:+)
  end
  
  def report(output)
    output.puts(table(%w(Column Description), LEGEND))
    output.puts('')
    
    header = %w(Name Status # PS TD FL BR CF BX BS Time)
    body =  *@tests.map { |test| test.results }
    footer = [ '-', 'total'.red, *total_summary.result_summary ]
    
    table = table(header, body, footer)
    output.puts(table)
    
    output.puts('')
    output.printf("Actual Running Time: %7.3f sec\n\n", @duration)
  end
  
  def table(header, body_rows, footer = nil)
    all_rows = [header, *body_rows]
    footer and all_rows << footer
    
    widths = all_rows.transpose.map! do |col|
      col.map! { |cell| visible_width(cell) }.max
    end
    
    div = table_divider(widths)
    
    header = '| ' << header.zip(widths).map do |cell, w|
      justify(cell, w)
    end.join(' | ') << ' |'
    
    body_rows = body_rows.map do |row|
      row = row.zip(widths).map do |cell, w|
        justify(cell, w)
      end
      '| ' << row.join(' | ') << ' |'
    end
    
    table = [div, header, div, *body_rows]
    table << div
    if footer
      footer = '| ' << footer.zip(widths).map do |cell, w|
        justify(cell, w)
      end.join(' | ') << ' |'
      table << footer << div
    end
    return table
  end
  
  def table_divider(widths)
    '+-' << widths.map { |w| '-' * w }.join('-+-') << '-+'
  end
  
  @@width_cache = Hash.new do |h, k|
    h[k] = k.scan(/\e\[.+?m/).inject(0) do |w, esc|
      w + esc.length
    end
  end
  
  def invisible_width(string)
    @@width_cache[string]
  end
  
  def visible_width(string)
    string.length - @@width_cache[string]
  end
  
  def justify(string, w)
    string.ljust(w + @@width_cache[string])
  end
  
  private :table, :table_divider, :invisible_width, :visible_width, :justify
end

class GenerationTest
  STATUS_COLORS = {
    :passed => 'green',
    :compilation_failure => 'magenta',
    :bad_syntax => 'magenta',
    :bad_source => 'magenta',
    :to_do => 'yellow',
    :pending => 'yellow',
    :error => 'red',
    :test_group_error => 'red',
    :failed => 'red',
    :broken => 'blue',
    :unknown => 'cyan'
  }
  
  Summary = Struct.new(:passed, :pending, :failed, :broken, :compilation_failures,
                       :bad_syntax_generation, :bad_source_generation, :duration)
  class Summary
    def self.load(serial)
      counts = serial.split(':')
      duration = Float(counts.pop)
      counts.map! { |c| Integer(c) } << duration
      self[*counts]
    end
    def initialize(a = 0, b = 0, c = 0, d = 0, e = 0, f = 0, g = 0, h = 0.0)
      super(a,b,c,d,e,f,g,h)
    end
    def +(s)
      Summary[*self.to_a.zip(s.to_a).map! { |a,b| a + b }]
    end
    def total; self.class.members[0...-1].inject(0) { |t, c| t + self[c] }; end
    def result_summary
      [total, *to_a].map! do |i|
        case i
        when Float   then '%7.3f sec' % i
        else i.to_s
        end
      end
    end
  end
  
  attr_reader :name, :directory, :path, :category, :summary, :status
  def initialize(path, manager)
    @path = path
    @name = File.basename(path, '.rb')
    @directory = -path
    @category = +@directory
    @manager = manager
    @summary = nil
    @status = :unknown
  end
  
  def clean
    test(?d, out_dir = @directory / @name) and FileUtils.rmtree(out_dir)
  end
  
  def run
    to_go = count - 1
    if test(?f, @path)
      command = "ruby -Ilib %p 2>&1" % @path
      
      test_output = 
        File.popen(command) do |pipe|
          trap(:INT) do
            pipe.close
            exit(1)
          end
          loop do
            c = pipe.getc
            if c == ?.
              @manager and @manager.step
              to_go -= 1
            else
              pipe.ungetc(c)
              break
            end
          end
          
          sections = pipe.read.split(/^__END__$/)
          if sections.length > 1
            @summary = Summary.load(sections.pop.chomp)
          else
            @summary = Summary.new
          end
          sections.join("\n__END__\n")
        end
        
      if @manager
        @manager.log_result(@name, command, test_output)
        @manager.step(to_go) if to_go > 0
      end
      
      status = $?.exitstatus
      if status.zero?
        @status = @summary.pending > 0 ? :pending : :passed
      else
        (status & 2).zero? or @status = :failed
        (status & 4).zero? or @status = :compilation_failure
        (status & 8).zero? or @status = :test_group_error
        (status & 16).zero? or @status = :broken
        if @status == :failed
          if @summary.compilation_failures > 0 then @status = :compilation_failure
          elsif @summary.bad_source_generation > 0 then @status = :bad_syntax
          elsif @summary.bad_source_generation > 0 then @status = :bad_source
          elsif @summary.broken > 0 then @status = :broken
          elsif @summary.failed > 0 then @status = :failed
          elsif @summary.pending > 0 then @status = :pending
          else @status = :error
          end
        end
      end
    else
      @status = :to_do
    end
  end
  
  def count
    @count ||= 
      if not test(?f, @test_script) then 1
      else
        src = File.read(@test_script)
        compilations =
          case src
          when /def parse\(grammar,.+/ then $'.scan(/parse\(/).length
          else src.scan(/\bcompile/).length
          end
        compilations + 1
      end
    return @count
  end
  
  def results
    color = STATUS_COLORS[@status]
    desc = @status.to_s.send(color)
    @summary ||= Summary.new
    [@name.to_s, desc, *@summary.result_summary]
  end
  
  def to_s
    duration = @summary ? @summary.duration : 0.0
    text = ('%s %-19s %03.3f seconds' % [@name, @status.to_s, duration])
    color ? text.send(color) : text
  end
end