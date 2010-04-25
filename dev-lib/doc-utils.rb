#!/usr/bin/ruby
# encoding: utf-8

require 'redcloth'
require 'highlight'
require 'hpricot'   # <- TODO: this isn't on the bundler list right now
require 'delegate'

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
    
    def self.load( file, template, options = {} )
      file = File.expand_path( file )
      unless article = $articles.find { | a | a.source_file == file }
        article = new( file )
        $articles << article
      end
      article.configure( template, options )
    end
    
    attr_accessor :source_file, :name, :source, :title, :time, :stylesheets, :scripts,
                  :author, :output_directory, :template
    
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
      @author = nil
      @stylesheets = []
      @scripts = []
      @inline_styles = []
    end
    
    def configure( template, options = {} )
      @template = template
      title = options[ :title ] and @title = title
      time  = options[ :time ]  and @time  = time
      author = options[ :author ] and @author = author
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
        doc = Hpricot( body )
        headers = ( doc / 'h1' ).map do | header |
          header[ :id ] ||= "section-#{ count += 1 }"
          [ header[ :id ], header.inner_text.strip ]
        end
        @body = doc.to_html
        headers
      end
    end
    
    def preprocess
      [ @stylesheets, @scripts, @inline_styles ].each { | list | list.clear }
      
      src = @source.gsub( REGION ) do
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
    
    def relative_path( file )
      File.relative_path( file, @output_directory )
    end
    
    private :raw_html
  end
  
  defined?( Guide ) or Guide = Class.new( DelegateClass( ::Array ) )
  
  class Guide
    def initialize( config = {} )
      super( [] )
    end
  end
  
end
