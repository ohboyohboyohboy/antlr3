#!/usr/bin/ruby
# encoding: utf-8

class Parser
  attr_reader :stack, :node, :document, :scanner
  
  def initialize(source, file = nil)
    @scanner = StringScanner.new(source)
    @stack = []
    @location = Location[0,1,0,0]
    @node = nil
    
    @document = Document.new( file )
    @tag_index = Hash.new do | table, tag |
      id = table[ tag ] = @document.tags.length
      @document.tags << tag.freeze
      id
    end
    
    @document.top = open('top')
  end
  
  def parse
    @scanner.eos? and return( @document )
    until @scanner.eos?
      before_pos = @scanner.pos
      step
      push_ahead if @scanner.pos == before_pos
      block_given? and yield(self)
    end
    complete
    return @document
  end
  
  def push_ahead(chars = 1)
    text = @scanner.peek(chars)
    add(text)
    @scanner.pos += chars
  end
  
  OPEN_TAG_RX = %r(
    < (
        \w+ \. (?:<.*?>|\S+?)
      | (?: if | else | elseif | elsif ) (?: \( \S*? \) )? _subtemplate
      )
    >
  )x
  
  CLOSE_TAG_RX = %r(
    < / (
        \w+ \. (?:<.*?>|\S+?)
      | (?: if | else | elseif | elsif ) (?: \( \S*? \) )? _subtemplate
      )
    >
  )x
  
  BEFORE_TAG_RX = %r((?=
    < /?
      (?:
        \w+ \. (?: < .*? > | \S+?)
      | (?: if | else | elseif | elsif ) (?: \( .*? \) )? _subtemplate
      )
    >
  ))x
  
  def step
    case
    when @scanner.scan(CLOSE_TAG_RX) then close(@scanner[1])
    when @scanner.check(OPEN_TAG_RX)
      open @scanner[1]
      @scanner.scan(OPEN_TAG_RX)
    when text = @scanner.scan_until(BEFORE_TAG_RX) then add(text)
    else add @scanner.scan_until(/\z/)
    end
  end

  def add(text)
    @document.ruby_source << text
    @location += text
  end

  def close(tag)
    if @node.tag == tag
      @node.finish = location
      @node = @stack.pop
    else
      $stderr.puts("=" * 80)
      $stderr.puts("bad closing tag %p" % tag)
      $stderr.puts("tag stack:")
      $stderr.puts(@stack.reverse.map { |node| '  - ' << node.tag })
      $stderr.puts("=" * 80)
    end
  end
  
  def open(tag)
    @stack.push(@node) unless @node.nil?
    @node = @document.create_node( @tag_index[ tag ], location, @node )
  end
  
  def location
    @location.markup_position = @scanner.pos
    return @location
  end
  
  def complete
    close( 'top' )
    @document.index.freeze
    @document.tags.freeze
    @document.ruby_source.freeze
  end
  
end


