#!/usr/bin/ruby
# encoding: utf-8

require 'redcloth'
require 'highlight'

module ANTLRDoc
  module_function
  
  def raw_html(src)
    RAW_HTML % src.to_s
  end
  
  def embed(path)
    raw_html('<iframe src=%p />' % path)
  end
  
  def highlight_cmd(code, prompt = nil)
    high = Highlight::Languages::Shell.new(code, :number_lines => false, :prompt => prompt)
    @stylesheets << 'shell.css'
    raw_html( high )
  end
  
  def highlight_antlr(antlr_code)
    high = Highlight::Languages::ANTLR.new(antlr_code)
    @stylesheets << 'ANTLR3.css'
    raw_html( high )
  end
  
  def highlight(lang, code)
    high = Highlight::Languages::Generic.new(lang, code)
    @stylesheets << "#{lang}.css"
    raw_html( high.to_s )
  end
  
  def inline_style content
    @inline_style_sections << content
    ''
  end
  
  def preprocess(src)
    src.gsub!(REGION) do
      region = $1
      tag = $2.downcase.to_sym
      content = $3
      case tag
      when :raw then raw_html(content)
      when :antlr then highlight_antlr(content)
      when :ruby then highlight('ruby', content)
      when :style then inline_style(content)
      when :cmd then highlight_cmd(content, '%')
      end
    end
  end
  
  def postprocess(html)
    @html = DOCUMENT.result(binding)
  end
  
  def convert(file)
    @path = file
    @directory = File.dirname(file)
    @name = File.basename(file, '.*')
    @source = File.read(file)
    @stylesheets = []
    @inline_style_sections = []
    preprocess(@source)
    @html = RedCloth.new(@source).to_html
    postprocess(@html)
    @out_path = File.join(@directory, @name + '.html')
    open(@out_path, 'w') do |f|
      f.write(@html)
    end
  end

REGION = /^(
  « \ * (\S+) \ * \n    # tag line:     « ruby
    (.*?) \n            # body:         some = ruby.code
  » \ * \n )            # closing line: »
  /mx

RAW_HTML = <<-END
  <notextile>
  %s
  </notextile>
END

DOCUMENT = ERB.new(<<-END)
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--

Design by NodeThirtyThree <http://www.nodethirtythree.com>
Published by Free CSS Templates <http://www.freecsstemplates.org/>
Released for free under a Creative Commons Attribution 2.5 License

Title      : stylized
Version    : 1.1
Released   : 20070716
Description: A two-column fixed width template for 1024x768 resolutions.

-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="general.css" rel="stylesheet" type="text/css" media="screen" />
<% for css in @stylesheets.uniq %>
<link rel="stylesheet" type="text/css" href="<%= css %>" />
<% end %>
<style type="text/css">
<% for style in @inline_style_sections %>
<%= style.fixed_indent(6) %>
<% end %>
</style>
</head>
<body>
<%= html.fixed_indent(2) %>
</body>
</html>
END

end