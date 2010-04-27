#!/usr/bin/ruby
# encoding: utf-8

require 'redcloth'
require 'highlight'

module ANTLRDoc
  class Article
    REGION = %r<
      ^(
        « \ * (\S+) \ * \n    # tag line:     « ruby
          (.*?) \n            # body:         some = ruby.code
        » \ * \n              # closing line: »
      )
    >mx
    
    RAW_HTML = <<-END.gsub( /^\s+/, '' )
      <notextile>
      %s
      </notextile>
    END
    
    $articles = []
    $article_index = {}
    
    def self.load( file, template, options = {} )
      file = File.expand_path( file )
      unless article = $articles.find { | a | a.source_file == file }
        article = new( file )
        $articles << article
      end
      
      article.configure( template, options )
      $article_index[ article.title ] =
        $article_index[ article.name ] =
        article
      
      return( article )
    end
    
    attr_accessor :source_file, :name, :source, :title, :time, :stylesheets, :scripts,
                  :author, :email, :output_directory, :template
    
    def initialize( source_file )
      @source_file = source_file
      if not test( ?f, @source_file ) and test( ?d, File.dirname( @source_file ) )
        warn( "article source #{ source_file } does not exist" )
        warn( "creating an empty source file at #{ source_file }" )
        open( @source_file, 'w' ) { | f | f.write( '' ) }
      end
      
      @name = File.basename( @source_file, '.*' )
      @template = nil
      @source = File.read( source_file )
      @time = File.mtime( source_file )
      @title = File.basename( source_file, '.*' )
      @output_directory = File.dirname( source_file )
      @email = @author = nil
      @stylesheets = []
      @scripts = []
      @inline_styles = []
    end
    
    def configure( template, options = {} )
      @template = template
      title = options[ :title ] and @title = title
      time  = options[ :time ]  and @time  = time
      author = options[ :author ] and @author = author
      email = options[ :email ] and @email = email
      dir = options[ :output_directory ] and @output_directory = dir
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
      @body ||= RedCloth.new( preprocess ).to_html
      outline
      @template.result( binding )
    end
    
    def body
      @body ||= RedCloth.new( preprocess ).to_html
    end
    
    def raw_html( src )
      RAW_HTML % src.to_s
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
      src = @source.gsub( /(\[\[((?:\S| (?=\S))+?)\]\])/ ) do
        ( article = $article_index[ $2 ] ) ? link_article( article ) : $1
      end
      src.gsub!( REGION ) do
        region, tag, content = $1, $2.downcase.to_sym, $3
        
        case tag
        when :raw then raw_html( content )
        when :antlr then
          @stylesheets << 'ANTLR3.css'
          raw_html( Highlight::Languages::ANTLR.new( content ) )
        when :ruby then
          @stylesheets << "ruby.css"
          raw_html( Highlight::Languages::Generic.new( 'ruby', content ) )
        when :style
          @inline_styles << content
          ''
        when :cmd
          @stylesheets << 'shell.css'
          raw_html(
            Highlight::Languages::Shell.new(
              content, :number_lines => false, :prompt => '> '
            )
          )
        end
      end
      
      [ @stylesheets, @scripts, @inline_styles ].each { | list | list.uniq! }
      
      return( src )
    end
    
    def link_article( article )
      href = File.relative( article.output_file, @output_directory )
      %(<a href="#{ href }">#{ article.title }</a>)
    end
    
    def relative( file )
      File.relative( file, @output_directory )
    end
    
    private :raw_html
  end
  
end
