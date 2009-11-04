#!/usr/bin/ruby
# encoding: utf-8


project.setup_extras

GRAMMAR = 'XML.g'
REPETITIONS = 10
####################################################################################################
####################################################################################################


$benchmarks = []
Stats = Struct.new(:count, :min, :max, :mean, :standard_deviation) do
  def self.extract(values)
    stats = new
    stats.count = values.length
    stats.min = values.min
    stats.max = values.max
    total = values.length == 1 ? values.first.to_f : values.inject(:+).to_f
    stats.mean = total / values.length
    devs = values.map { |v| (v - stats.mean) ** 2 }
    dev_sum = devs.length == 1 ? devs.first.to_f : devs.inject(:+).to_f
    var = dev_sum / values.length
    stats.standard_deviation = Math.sqrt(var)
    return stats
  end
end

def add_bench_value(name, value)
  if set = $benchmarks.assoc(name)
    set << value
  else
    $benchmarks << [name, value]
  end
end

def bench(name)
  GC.disable
  before = Time.now
  yield
  elapsed = Time.now - before
  add_bench_value(name, elapsed)
  GC.enable
end

require 'test-tools'
require 'fileutils'
include FileUtils

__DIR__ = File.dirname(__FILE__)
output_directory = File.join(__DIR__, 'grammar-output')
test(?d, output_directory) or mkdir(output_directory)

input_glob  = File.join(__DIR__, 'input-samples', '*.*')

input_samples = Dir.glob(input_glob).map! do |path|
  [File.basename( path ), File.read( path )]
end

grammar = Grammar.new( File.join(__DIR__, GRAMMAR), :output_directory => output_directory )
grammar.compile

ruby_libs = grammar.target_files.map { |rb_f| File.expand_path(rb_f.path) }

for lib in ruby_libs
  lib_name = File.basename(lib)
  
  bench("loading #{lib_name}") do
    load lib
  end
end

mod = Object.const_get(grammar.name)
lexer_class = mod::Lexer

REPETITIONS.times do

for input_name, source in input_samples
  
  input = ANTLR3::StringStream.new(source)
  lexer = lexer_class.new(input)

  tokens = ANTLR3::CommonTokenStream.new(lexer)
  bench("lexing #{input_name}") do
    tokens.look
  end
end

end

require 'text/table'

$benchmarks.map! do |name, *values|
  stats = Stats.extract(values).to_a.map! { |v| Float === v ? '%g' % v : v.to_s }
  [name, *stats]
end

table = Text::Table.new($benchmarks) do |tb, *cols|
  titles = %w(segment count min max mean stdev)
  cols.zip(titles) { |col, title| col.title = title }
end

puts(table)