#!/usr/bin/ruby
# encoding: utf-8

class Module
  # Returns the module's container module.
  #
  #   module Example
  #     class Demo
  #     end
  #   end
  #
  #   Example::Demo.modspace   #=> Example
  #
  # See also Module#basename.
  #
  #   CREDIT: Trans

  def modspace
    space = name[ 0...(name.rindex( '::' ) || 0)]
    space.empty? ? Object : eval(space)
  end
  
  def module_load(script_path)
    source = File.read(script_path).split(/^__END__$/, 2)[0]
    module_eval(source, script_path, 1)
  end

end
