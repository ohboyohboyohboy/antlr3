#!/usr/bin/ruby
# encoding: utf-8

require 'redcloth'
require 'highlight'
require 'erb'
require 'yaml'
require 'inflection'
autoload :OpenStruct, 'ostruct'

module ANTLRDoc
  WIKI_LINK_RX = %r<
    ‹
    ( (?:\S|\ (?=\S))+? )
    (?: : \ ? ( (?:\S|\ (?=\S))+? ) )?
    ›
  >x

  REGION = %r<
    ^(
      « \ * (\S+) \ * \n    # tag line:     « ruby
        (.*?) \n            # body:         some = ruby.code
      » \ * \n              # closing line: »
    )
  >mx
  
end

require 'doc-utils/markup'
require 'doc-utils/guide'
require 'doc-utils/code-frame'
require 'doc-utils/table'