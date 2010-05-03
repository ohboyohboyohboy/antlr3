require 'doc-utils'

guide = $project.guide
config = YAML.load_file( guide.config )
template = ERB.new( File.read( guide.template ), nil, '%' )
options = {
  :output_directory => guide.output,
  :author => $project.author,
  :email  => $project.email
}

$project_links  = config.fetch( 'project_links', [] )
$external_links = config.fetch( 'external_links', [] )

articles = config.fetch( 'articles', [] ).map do | name, title |
  title ||= Inflection.title_case( name )
  source_file = guide.input( "#{ name }.textile" )
  
  ANTLRDoc::Article.load(
    source_file, template, options.merge( :title => title )
  )
end

file( guide.config )
file( guide.template )

articles.each do | article |
  source_file = article.source_file
  
  file( source_file )
  file( article.output_file => [ guide.template, guide.config, source_file, __FILE__ ] ) do
    article.convert
    puts( "wrote #{ article.output_file }" )
  end
end

desc( "construct the ANTLR guide" )
task( :guide => articles.map { | a | a.output_file } )
