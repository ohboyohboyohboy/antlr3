#!/usr/bin/ruby
# encoding: utf-8

def setup_guide
  require 'doc-utils'
  settings = $project.guide
  
  ANTLRDoc::Guide.new do | g |
    g.author = $project.author
    g.email  = $project.email
    
    g.output = settings.output
    
    g.import( settings.menu )
    g.load( :template, settings.template )
    g.load( :changelog, settings.changelog )
    
    for base, title in g.contents
      path = settings.input( "#{ base }.textile" )
      g.article( path, title )
    end
  end
end

desc( "generate the guide-style docs" )
task( :guide ) do
  guide = setup_guide
  for article in guide.articles
    article.make
    puts( "wrote `#{ article.title }' to `#{ article.output_file }'".green )
  end
end

namespace :guide do
  desc( "remove guide-style generated HTML files" )
  task( :clobber ) do
    for article in setup_guide.articles
      file = article.output_file
      test( ?f, file ) and rm( file )
    end
  end
end
