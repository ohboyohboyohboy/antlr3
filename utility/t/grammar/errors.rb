#!/usr/bin/ruby
# encoding: utf-8

class Grammar::CompilationFailure < StandardError
  def initialize(command)
    super(<<-END.here_indent! % command.report)
    | cannot load targets due to ANTLR compilation failure:
    | %s
    END
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
