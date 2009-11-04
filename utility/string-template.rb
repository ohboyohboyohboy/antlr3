#!/usr/bin/ruby
# encoding: utf-8

module StringTemplate
  
  VERSION = [1,0,0]
  
  LIBRARY_PATH = ::File.expand_path(::File.dirname(__FILE__)) + ::File::SEPARATOR
  CORE_EXT_PATH = ::File.join(LIBRARY_PATH, 'core-ext')
  PROJECT_PATH = ::File.dirname(LIBRARY_PATH) + ::File::SEPARATOR
  
    # Returns the library path for the module. If any arguments are given,
  # they will be joined to the end of the libray path using
  # <tt>File.join</tt>.
  #
  def self.library_path( *args )
    ::File.join(LIBRARY_PATH, *args)
  end

  # Returns the lpath for the module. If any arguments are given,
  # they will be joined to the end of the path using
  # <tt>File.join</tt>.
  #
  def self.project_path( *args )
    ::File.join(PROJECT_PATH, *args)
  end

  
end

require 'part'
require 'strscan'

$:.unshift(StringTemplate.library_path)

require 'lexer'
#require 'string-template/lexer-with-states'
require 'string-template/group'
require 'string-template/group-parser'
require 'string-template/template-lexer'