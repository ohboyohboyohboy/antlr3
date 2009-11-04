#!/usr/bin/ruby
# encoding: utf-8

# mixin methods to trigger output log writting
# requires the definition of these methods:
#   - report()
#   - log_path()
module LoggableOutput
  def log?
    return @log
  end
  def log!
    @log = true
  end
  attr_writer :log
  
  class_methods do
    def try_to_restore(log_path)
      if File.read(log_path) =~ /^__END__$/
        obj = YAML.load($'.strip)#Marshal.load(Base64.decode64($'.strip))
        return(obj)
      end
    rescue => err
      #puts(self.to_s + '.try_to_restore(%p): %s' % [log_path, err])
      nil
    end
  end
  
  def write_log
    log? and File.open(log_path, 'w') do |f|
      f.puts(report)
      f.puts('__END__')
      YAML.dump(self, f)
    end
  end
  
end
