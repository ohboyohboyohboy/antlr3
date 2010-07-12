#!/usr/bin/ruby
# encoding: utf-8

require 'yaml'

##########################################################################################################################################################

module ANTLRDoc

class PropertyGroup < ::Hash
  NOTHING = Object.new
  attr_reader :project
  
  alias get []
  alias put []=
  protected :put, :get
  
  def []=( name, value )
    super( name.to_s, value )
  end
  
  def []( name )
    name = name.to_s
    if has_key?( name ) then super( name )
    elsif @path_map then @path_map[ name ]
    end
  end
  
  
  def merge( h )
    super( h.stringify_keys )
  end
  
  def update( h )
    super( h.stringify_keys )
  end
  
  def initialize( values = {} )
    super()
    configure( values )
    block_given? and yield( self )
  end
  
  alias properties keys
  def property?( name )
    has_key?( name.to_s )
  end
  
  def configure( settings )
    for key, value in settings
      define_member( key.to_s, value )
    end
    return( self )
  end
  
  def method_missing( method, *args, &block )
    case name = method.to_s
    when /^(\w+)=$/
      define_member( $1, *args )
    when /^(\w+)$/
      args.empty? or return( super )
      begin
        fetch( name ) { super }
      rescue NoMethodError => e
        e.message.gsub!( /undefined method/, 'undefined method or property' )
        raise( e )
      end
    else
      super
    end
  end
  
  def define_member( name, value )
    name = name.to_s
    name_str = name.inspect
    put( name, value )
    customize( <<-END, __FILE__, __LINE__ + 1 )
      def #{ name }( value = PropertyGroup::NOTHING )
        value.equal?( PropertyGroup::NOTHING ) or put( #{ name_str }, value )
        return fetch( #{ name_str } )
      end
      
      def #{ name }=( value )
        put( #{ name_str }, value )
      end
    END
    return value
  end
  
  def metaclass
    class << self; self; end
  end
  
  def customize( *args, &block )
    metaclass.class_eval( *args, &block )
  end
  
  def import( path )
    update( YAML.load_file( path ) )
  end
  
  def load( property, path )
    data = File.read( path )
    value = 
      case path
      when /\.yaml$/i then YAML.load( data )
      when /\.erb$/i  then ERB.new( data, nil, '%' )
      else data
      end
    define_member( property, value )
  end
end

class Guide < PropertyGroup
  def initialize( config = {}, &b )
    config =
      config.with_defaults( 
        :author => nil,
        :email  => nil,
        :output => '.',
        :template => nil,
        :default_source => "h1. Coming Soon"
      ).update( 
        :articles => [],
        :article_index => {}
      )
    super( config, &b )
  end
  
  def article( path, title = nil )
    article = Article.new( self, path, title )
    self.articles << article
    put( article.name, article )
    put( article.title, article )
    block_given? and yield( article )
    return( article )
  end
  
end

class Article < PropertyGroup
  include Markup
  
  def initialize( guide, source_file, title = nil )
    name    = File.basename( source_file, '.*' )
    title ||= Inflection.title_case( name )
    if File.file?( source_file )
      source = File.read( source_file )
      time   = File.mtime( source_file )
    else
      warn( "article source #{ source_file } does not exist" )
      source = guide.default_source rescue ''
      time   = Time.now
    end
    
    super( 
      :source_file => source_file,
      :name  => name,
      :title => title,
      :guide => guide,
      :source => source,
      :time  => time,
      :stylesheets => [],
      :scripts => [],
      :inline_styles => []
    )
  end
  
  def fetch( property, default = NOTHING )
    property = property.to_s
    if has_key?( property ) then super( property )
    elsif guide and guide.has_key?( property )
      guide.fetch( property )
    elsif block_given?
      yield( property )
    elsif default != NOTHING then default
    else
      super( property )
    end
  end
  
  def empty?
    not test( ?f, source_file ) && File.size?( source_file )
  end
  
  def output_file
    dir = guide.output rescue '.'
    File.join( dir, name + '.html' )
  end
  
  def make
    html = generate
    open( output_file, 'w' ) { | f | f.write( html ) }
  end
  
  def generate
    body = markup( preprocess, false )
    
    count = 0
    outline = []
    body.gsub!( %r(<h1([^\n<>]*)>(.+?)</h1>)m ) do
      attrs, title = $1, $2
      if attrs =~ /id="(.+?)"/
        id = $1
      else
        id = "section-#{ count += 1 }"
        attrs << %( id="#{ id }")
      end
      outline << [ id, title.strip ]
      %(<h1#{ attrs }>#{ title }</h1>)
    end
    
    eval_template( guide.template, :body => body, :outline => outline )
  end
  
  def preprocess
    [ stylesheets, scripts, inline_styles ].each { | list | list.clear }
    
    source = convert_links( self.source )
    relative_file = relative( source_file )
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
    
    for list in [ stylesheets, scripts, inline_styles ]
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
      stylesheets << 'ANTLR3.css'
      CodeFrame.new( tag, content, options )
    when :ruby then
      stylesheets << "ruby.css"
      CodeFrame.new( tag, content, options )
    when :css then
      stylesheets << "generic.css"
      options = options.with_defaults( 
        :class => 'generic', :number_lines => false, :prompt => '~>'
      )
      CodeFrame.new( tag, content, options )
    when :style
      inline_styles << content
      nil
    when :eval
      result = eval_template( erb( content ) )
      raw_html( markup( result , false ) )
    when :cmd, :shell
      stylesheets << 'generic.css'
      options = options.with_defaults( 
        :class => 'generic', :number_lines => false, :prompt => '~>'
      )
      CodeFrame.new( tag, content, options )
    when :table
      Table.new( YAML.load( content ).update( options ) )
    end
  end
  
  def content_link( full, name, text )
    if article = guide[ name ]
      text ||= article.title
      link_article( article, text )
    else
      text
    end
  end
  
  def link_article( article, link_text = article.title )
    href = relative( article.output_file )
    %(<a href="#{ href }">#{ link_text }</a>)
  end
  
  def relative( file )
    File.relative( file, output )
  end
  
  private :raw_html, :relative
end

end
