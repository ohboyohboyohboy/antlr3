require 'doc-utils'

guide = $project.guide
template = ERB.new( File.read( guide.template ), nil, '%' )

options = {
  :output_directory => guide.output,
  :author => $project.author,
  :email  => $project.email
}
articles = []

links = YAML.load_file( guide.links )
$project_links = links[ 'project_links' ]
$external_links = links[ 'external_links' ]

for line in File.read( guide.article_list ).split( $/ )
  line.strip!
  line.empty? and next
  name, title = line.split( /\s*:\s*/, 2 )
  title ||= Inflection.title_case( name )
  source_file = guide.input( "#{ name }.textile" )
  
  articles << ANTLRDoc::Article.load(
    source_file, template, options.merge( :title => title )
  )
end

file( guide.article_list )
file( guide.template )

articles.each do | article |
  source_file = article.source_file
  
  file( source_file )
  file( article.output_file => [ guide.template, guide.links, guide.article_list, source_file, __FILE__ ] ) do
    article.convert
    puts( "wrote #{ article.output_file }" )
  end
end


desc( "construct the ANTLR guide" )
task( :guide => articles.map { | a | a.output_file } )
