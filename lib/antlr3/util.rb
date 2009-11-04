#!/usr/bin/ruby
# encoding: utf-8

module ANTLR3
module Util

module_function
  
  def snake_case(str)
    str = str.to_s.gsub(/([A-Z]+)([A-Z][a-z])/,'\1_\2')
    str.gsub!(/([a-z\d])([A-Z])/,'\1_\2')
    str.tr!("-", "_")
    str.downcase!
    str
  end
  
  def tidy(here_doc, flow = false)
    here_doc.gsub!(/^ *\| ?/, '')
    if flow
      here_doc.strip!
      here_doc.gsub!(/\s+/, ' ')
    end
    return here_doc
  end
  
  def silence_warnings
    verbosity, $VERBOSE = $VERBOSE, nil
    return yield
  ensure
    $VERBOSE = verbosity
  end
  
end

module ClassMacros

private
  
  def shared_attribute( name, *additional_members )
    attr_reader name
    
    additional_writers = additional_members.inject('') do |src, attr|
      src << "@#{attr} = value if @#{attr}\n"
    end
    
    file, line, = caller[1].split(':', 3)
    class_eval(<<-END, file, line.to_i)
      def #{name}= value
        @#{name} = value
        
        each_delegate do |del|
          del.#{name} = value
        end
        
        #{additional_writers}
      end
    END
  end
  
  def abstract( name, message = nil )
    message ||= "abstract method -- #{self.class}::#{name} has not been implemented"
    file, line, = caller[1].split(':', 3)
    class_eval(<<-END, file, line.to_i)
      def #{name}( * )
        raise TypeError, #{message.to_s.inspect}
      end
    END
  end
  
  def alias_accessor( alias_name, attr_name )
    alias_method( alias_name, attr_name )
    alias_method( :"#{alias_name}=", :"#{attr_name}=" )
  end

end

end
