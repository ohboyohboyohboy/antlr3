#!/usr/bin/ruby
# encoding: utf-8

require 'logger'

module ANTLR3
module Test
module Loggable
  include Logger::Severity
  
  attr_reader :log
  
  def initialize_log( options = {} )
    self.log = options[ :log ]
    self.log_level = options.fetch( :log_level, WARN )
  end
  private :initialize_log
  
  def log=( log )
    @log = 
      case log
      when Logger, nil then log
      else Logger.new( log )
      end
  end
  
  def log_level
    @log and @log.level
  end
  
  def log_level=( level )
    @log and @log.level = level
  end
  
  for c in Logger::Severity.constants
    m = c.downcase
    class_eval( <<-END, __FILE__, __LINE__ + 1 )
      def #{ m }!( *args )
        @log and @log.#{ m }( *args ) { block_given? and yield }
      end
    END
  end
  
  def warn( message )
    warn! { message }
    super
  end
  
end
end
end
