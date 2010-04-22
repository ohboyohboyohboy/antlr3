#!/usr/bin/ruby
# encoding: utf-8

require 'redcloth'
require 'highlight'
require 'hpricot'   # <- TODO: this isn't on the bundler list right now

module ANTLRDoc
  class Article
    Outline = Struct.new( :id, :title )
    
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
    
    defined?( @@articles ) or
      @@articles = {}
    
    def self.articles
      @@articles.values
    end
    
    def self.load( file, template, options = {} )
      @@articles.fetch( file ) do
        @@articles[ file ] = new( file )
      end.configure( template, options )
    end
    
    attr_accessor :source_file, :source, :title, :time, :stylesheets, :scripts,
                  :author, :output_directory, :template
    
    def initialize( source_file )
      @source_file = source_file
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
      File.join( @output_directory, "#@title.html" )
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
    
    #if $wiki_mode
    #  require 'strscan'
    #  require 'stringio'
    #  
    #  def preprocess( source )
    #    out = StringIO.new( '' )
    #    source = StringScanner.new( source )
    #    
    #    until source.eos?
    #      text = source.scan_until( /(?=«)/ ) or break
    #      out.print( text )
    #      
    #      source.scan( REGION )
    #      tag, body = source[ 2 ], source[ 3 ]
    #      
    #      if tag.strip == 'raw'
    #        out.puts( "<notextile>" )
    #        out.puts( body )
    #        out.puts( '</notextile>' )
    #      elsif body !~ /\A\s*\Z/
    #        body.rstrip!
    #        
    #        lines = body.split( $/ )
    #        lines = lines.drop_while { | ln | ln =~ /^\s*$/ }
    #        out.puts( "bc.. #{ lines.shift }" )
    #        for line in lines
    #          out.puts( line )
    #        end
    #        
    #        out.puts
    #        
    #        source.scan_until( /(?=\S)/ )
    #        if text = source.scan( /\S+\. / )
    #          out.print( text )
    #        else
    #          out.print( "p. " ) unless source.eos?
    #        end
    #      end
    #    end
    #    
    #    out.print( source.rest )
    #    
    #    return out.string
    #  end
    #  
    #end
    
    def relative_path( file )
      File.relative_path( file, @output_directory )
    end
    
    private :raw_html
  end
  
end
