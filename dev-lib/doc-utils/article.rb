#!/usr/bin/ruby
# encoding: utf-8

=begin      ::about::
author:     Kyle Yetter <kcy5b@yahoo.com>
created on: June 05, 2010
purpose:    (program | library | utility script | ?)
summary:    
loads:      files required by this
autoloads:  autoload entries in this (e.g. YAML(yaml))
=end

module ANTLRDoc
class Article
  DEFAULT_SOURCE = "h1. Coming Soon".freeze
  
  attr_accessor :source_file, :name, :title, :time, :stylesheets, :scripts,
                :output_directory, :template
  
  def initialize( source_file, title = nil, guide = nil )
    @source_file = source_file
    @guide = guide
    
    if not test( ?f, @source_file ) and test( ?d, File.dirname( @source_file ) )
      warn( "article source #{ source_file } does not exist" )
      warn( "creating an empty source file at #{ source_file }" )
      open( @source_file, 'w' ) { | f | f.write( '' ) }
    end
    
    @name  = File.basename( @source_file, '.*' )
    @title = title || Inflection.title_case( @name )
    @template = @source =  nil
    @email = @author = nil
    @time = File.mtime( source_file )
    @stylesheets = []
    @scripts = []
    @inline_styles = []
  end
  
  def output_path( *args )
    dir = @guide ? @guide.output : '.'
    File.join( dir, *args )
  end
  
  %w( email author template ).each do | property |
    class_eval( <<-END, __FILE__, __LINE__ + 1 )
      attr_writer :#{ property }
      
      def #{ property }
        @#{ property } or @guide && @guide.#{ property }
      end
    END
  end
  
  def empty?
    not File.size?( @source_file )
  end
  
  def source
    @source ||= begin
      empty? ? DEFAULT_SOURCE.dup : File.read( @source_file )
    rescue => e
      warn( "could not read article source from `#@source_file':" )
      e.dump
      DEFAULT_SOURCE.dup
    end
  end
  
  def configure( template, options = {} )
    @template = template
    title = options[ :title ] and @title = title
    time  = options[ :time ]  and @time  = time
    author = options[ :author ] and @author = author
    email = options[ :email ] and @email = email
    return( self )
  end
  
  def convert( dest = output_file )
    open( dest, 'w' ) do | out |
      out.write( generate )
    end
  end
  
  def output_file
    File.join( @output_directory, "#@name.html" )
  end
  
  def generate
    outline
    @template.result( binding )
  end
  
  def body
    @body ||= begin
      rc = RedCloth.new( preprocess )
      rc.hard_breaks = false
      rc.to_html
    end
  end
  
  def raw_html( src )
    ( "<notextile>\n" << src.to_s ).chomp( "\n" ) << "\n</notextile>"
  end
  
  def outline
    @outline ||= begin
      count = 0
      headers = []
      body.gsub!( %r(<h1([^\n<>]*)>(.+?)</h1>)m ) do
        attrs, title = $1, $2
        if attrs =~ /id="(.+?)"/
          id = $1
        else
          id = "section-#{ count += 1 }"
          attrs << %( id="#{ id }")
        end
        headers << [ id, title.strip ]
        %(<h1#{ attrs }>#{ title }</h1>)
      end
      headers
    end
  end
  
  def preprocess
    [ @stylesheets, @scripts, @inline_styles ].each { | list | list.clear }
    
    source = self.source.gsub( WIKI_LINK_RX ) do
      raw, article_name, link_text = $~[ 0..2 ]
      if article = $article_index[ article_name ]
        link_text ||= article.title
        link_article( article, link_text )
      else raw
      end
    end
    
    relative_file = File.relative( @source_file )
    line_no = 0
    out = []
    block = tag = options = nil
    for line in source.split( $/ )
      line_no += 1
      if ( line =~ /^« *(\S+) *(.*)/ ) ... ( line =~ /^»/ )
        if tag.nil? then
          tag, options = $1, YAML.load( "{ #$2 }" )
          tag = tag.downcase.to_sym
          
          options = options.with_defaults( :line => line_no + 1, :file => relative_file )
          block = ''
        elsif line =~ /^»/
          out << special_block( tag, block.chomp, options )
          tag = block = nil
        else
          block << line << $/
        end
      else
        out << line
      end
    end
    
    for list in [ @stylesheets, @scripts, @inline_styles ]
      list.compact!
      list.uniq!
    end
    
    out.compact!
    
    return( out.join( $/ ) )
  end
  
  def special_block( tag, content, options )
    case tag
    when :raw then raw_html( content )
    when :antlr then
      @stylesheets << 'ANTLR3.css'
      CodeFrame.new( tag, content, options )
    when :ruby then
      @stylesheets << "ruby.css"
      CodeFrame.new( tag, content, options )
    when :css then
      @stylesheets << "generic.css"
      options = options.with_defaults( 
        :class => 'generic', :number_lines => false, :prompt => '~>'
      )
      CodeFrame.new( tag, content, options )
    when :style
      @inline_styles << content
      nil
    when :eval
      output = ERB.new( content, nil, '%' ).result( binding )
      raw_html( Markup.convert( output ) )
    when :cmd, :shell
      @stylesheets << 'generic.css'
      options = options.with_defaults( 
        :class => 'generic', :number_lines => false, :prompt => '~>'
      )
      CodeFrame.new( tag, content, options )
    when :table
      Table.new( YAML.load( content ).update( options ) )
    end
  end
  
  
  def convert_markup( textile )
    Markup.inline( textile )
  end
  
  def link_article( article, link_text = article.title )
    href = File.relative( article.output_file, @output_directory )
    %(<a href="#{ href }">#{ link_text }</a>)
  end
  
  def relative( file )
    File.relative( file, @output_directory )
  end
  
  private :raw_html
end
end
