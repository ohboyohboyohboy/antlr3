#!/usr/bin/ruby
# encoding: utf-8

=begin ::about::
author:     Kyle Yetter <kcy5b@yahoo.com>
created_on: March 21, 2009
summary:    a simple Kernel extension to use temp files to
            temporarily redirect io streams such as stdout
autoloads:  'tempfile' from the standard library upon calls to Kernel#redirect
=end


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

if __FILE__ == $0
  require 'test/unit'
  class TestRedirect < Test::Unit::TestCase
    def test_without_exceptions
      out_text = "test stdout text"
      error_text = "test stderr text"
      out_tty = $stdout.tty?
      out, error = redirect($stdout, $stderr) do
        out_tty and assert(!$stdout.tty?)
        $stdout << out_text
        $stderr << error_text
      end
      assert_equal(out_text, out)
      assert_equal(error_text, error)
      ObjectSpace.each_object(Tempfile) do |tfile|
        tfile.path =~ /#{$0}\-redirect/ and assert(tfile.closed?)
      end
    end
    
    def test_with_exception
      out_tty = $stdout.tty?
      redirect($stdout, $stderr) do
        raise FloatDomainError
      end
    rescue FloatDomainError
      assert_equal(out_tty, $stdout.tty?)
      ObjectSpace.each_object(Tempfile) do |tfile|
        tfile.path =~ /#{$0}\-redirect/ and assert(tfile.closed?)
      end
    end
  end
end
