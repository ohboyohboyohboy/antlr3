#!/usr/bin/ruby
# encoding: utf-8

require 'rake/tasklib'
require 'antlr3'

module ANTLR3
class CompileTask < Rake::TaskLib
  LANGUAGES = {
    "ActionScript" => [".as", nil],
    "CSharp2" => [".cs", nil],
    "C" => [".c", ".h"],
    "ObjC" => [".m", ".h"],
    "CSharp3" => [".cs", nil],
    "Cpp" => [".cpp", ".h"],
    "Ruby" => [".rb", nil],
    "Java" => [".java", nil],
    "JavaScript" => [".js", nil],
    "Python" => [".py", nil],
    "Delphi" => [".pas", nil],
    "Perl5" => [".pm", nil]
  }.freeze
  
  def initialize( *grammar_files )
    grammar_files = [ grammar_files ].flatten!
    options = Hash === grammar_files.last ? grammar_files.pop : {}
    @grammar_files = grammar_files
    @output_directory = options[ :output_directory ]
    if block_given?
      yield( self )
      define
    end
  end
  
  def define
    
  end
  
end
end
