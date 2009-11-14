#!/usr/bin/ruby
# encoding: utf-8

module Kernel
  autoload :Tempfile, 'tempfile'
  
  def redirect(*io_streams)
    temps = []
    originals = Array.new(io_streams.length) do |index|
      stream = io_streams[index]
      copy = stream.dup
      temp_name = '%s-redirect-%i' % [File.basename($0), index]
      temp = Tempfile.new(temp_name)
      temps << temp
      stream.reopen(temp.path, 'w')
      copy
    end
    begin
      yield(*io_streams)
      io_streams.each { |str| str.flush rescue next }
      temps.map { |temp|  temp.read }
    ensure
      io_streams.zip(temps, originals).each do |stream, temp, copy|
        temp.close
        stream.reopen(copy)
      end
    end
  end
  

  def silence
    redirect($stdout, $stderr) do |*ios|
      yield(*ios)
    end
  end
end
