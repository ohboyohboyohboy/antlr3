#!/usr/bin/ruby
# encoding: utf-8

class STMarkup
  attr_accessor :top, :index, :ruby_source, :file
  
  def self.convert_file(path, &block)
    source = File.read(path)
    markup = new(source, path, &block)
    open(path, 'w') { |f| f.write(markup.serialize) }
    return markup
  end
  
  def self.has_st_data?(path)
    source = File.read(path)
    source =~ /^__END__\n\-\-> STMarkup: ([a-fA-F0-9]+)\n/ ? [$`, $', $1] : false
  end
  
  def self.load(path)
    parts = has_st_data?(path) or
      raise "no String Template markup data found in file `%s'" % path
    mark = allocate
    mark.send(:deserialize, path, *parts)
    return mark
  end
  
  def initialize(source, file = '(string)', &block)
    @file = file
    @index = []
    @ruby_source = ''
    Parser.new(self, source).parse(&block)
    build_index
  end
  
  def build_index
    @top.enum_for(:each).with_index do |node, i|
      node.id = i + 1
      @index[i] = node
    end
    @index.compact!
  end
  
  def serialize
    __type_id__ = 0
    name_table = Hash.new do |h, k|
      val = h[k] = __type_id__
      __type_id__ += 1
      val
    end
    
    unless @index.empty?
      db = ''
      for node in @index
        db << node.serialization_record(name_table[node.tag])
      end
      
      names = name_table.keys.sort_by { |name| name_table[name] }
      width = names.map { |n| n.length }.max
      header = [width, names.length, @index.length].pack('L3')
      pack_template = "a#{width}" * names.length
      header << names.pack(pack_template)
      
      header << db
      header = Base64.encode64(header)
      checksum = MD5.md5(header).to_s
      body = @ruby_source + ("\n__END__\n--> STMarkup: #{checksum}\n")
      body << header
    end
    body
  end
  
  def deserialize(file, ruby_source, db, expected_digest)
    @file = file
    @ruby_source = ruby_source
    digest = MD5.md5(db).to_s
    digest == expected_digest or
      raise "corrupted String Template markup database in file `%s':\n  - data digest (%p) does not match recorded digest (%p)" % [@file, digest, expected_digest]
    db = Base64.decode64(db)
    
    tag_width, tag_count, node_count, db = db.unpack("L3a*")
    tag_mask = "A#{tag_width}" * tag_count << 'a*'
    
    tags = db.unpack(tag_mask)
    db = tags.pop
    
    node_mask = 'L10' * node_count
    node_index = {}
    @index = db.unpack(node_mask).each_slice(10).map do |details|
      id, parent_id, index_in_parent, tag_id,
      start_pos, start_line, start_col,
      finish_pos, finish_line, finish_col = details
      
      node = Node.new(tags[tag_id], self)
      node.id = id
      if parent = node_index[parent_id]
        node.instance_variable_set(:@parent, parent)
        parent.children[index_in_parent] = node
      else
        @top = node
      end
      node_index[id] = node
      node.start = Location[start_pos, start_line, start_col]
      node.finish = Location[finish_pos, finish_line, finish_col]
      node
    end
  end
  
  def nodes_covering_line(line)
    @index.select do |node|
      node.line_span === line
    end
  end
  
  def tree_slice(region)
    require 'text/table'
    region = region..region unless Range === region
    slice = @index.select { |node| node.line_span.overlap?(region) }
    rows = slice.map { |node| [node.node_display, node.start.to_s, node.finish.to_s] }
    Text::Table.new(rows) do |t, c1, c2, c3|
      c1.title = 'Tag Tree'
      c2.title = 'Start'
      c3.title = 'End'
    end
  end
end

class STMarkup::Node
  include TreeLike
  attr_accessor :tag, :id, :start, :finish
  
  def initialize(tag, document, parent = nil)
    @tag = tag
    @document = document
    @id = nil
    @start = nil
    @finish = nil
    self.parent = parent unless parent.nil?
    block_given? and yield(self)
  end
  
  def start_line;    start.line                rescue nil; end
  def start_column;  start.column              rescue nil; end
  def finish_line;   finish.line               rescue nil; end
  def finish_column; finish.column             rescue nil; end
  def line_span;     (start_line..finish_line) rescue nil; end
  def last
    children.last
  end
  def <<(child); children << child; end
  
  def extract_tag_information
    case @tag
    when /^(\w+)\.region__(.+)__(.+)$/
    when /^(\w+)\.anonymous$/
    when /^(\w+)\.(\w+)$/ then [$1, $2]
    when /^(if|else|elsif|elseif).*?_subtemplate/
    end
  end
  
  def region?
    @tag =~ /^(\w+)\.region__(.+)__(.+)$/ ? true : false
  end
  
  def anonymous?
    @tag =~ /^(\w+)\.anonymous$/ ? true : false
  end
  
  def conditional_subtemplate?
    @tag =~ /^(if|else|elsif|elseif).*?_subtemplate$/ ? true : false
  end
  
  def top_level_template?
    not anonymous? || conditional_subtemplate? || region?
  end
  
  def group
    @tag =~ /^(.+?)\./ ? $1 : parent ? parent.group : nil
  end
  
  def template
    conditional_subtemplate? and return(parent ? parent.template : nil)
    case @tag
    when "top" then 'top'
    when /^\w+\.region__(.+)__(.+)$/ then $2
    when /^\w+\.anonymous$/ then parent ? parent.template : nil
    when /^\w+\.(\w+)$/ then $1
    when /^\w+\.<.*>$/
      warn("got one of these weird tags: %p" % @tag)
      ''
    else
      raise("failed to match @tag=%p (node id %p)" % [@tag, @ids])
    end
  end
  
  def =~(tag_expression)
    return false unless top_level_template?
    template, group = tag_expression.split(/\./, 2).reverse!
    group && (group != '*') && self.group != group and return false
    return File.fnmatch(template, self.template)
  end
  
  def inspect
    '<%s id=%p file=%p span=l%pc%p..l%pc%p>' % [@tag, @id, file,
      @start.line, @start.column, @finish.line, @finish.column]
  end
  
  def file
    @document.file
  end
  
  def source_code_context(before = 0, after = before)
    lines = @document.ruby_source.split("\n")
    start, finish = (@start.line - 1 - before), (@finish.line - 1 + after)
    start < 0 and start = 0
    finish >= lines.length and finish = lines.length  - 1
    out = ''
    start.upto(finish) do |line_index|
      line = lines[line_index]
      if line_index == (@finish.line - 1)
        line.insert(@finish.column, 255.chr)
      end
      if line_index == (@start.line - 1)
        line.insert(@start.column, 255.chr)
      end
      out << line << "\n"
    end
    return [out, start]
  end
  
  def to_s
    @document.ruby_source[ (@start.position)...(@finish.position) ]
  end
  
  def node_display
    '  ' * depth << tag
  end
  
  def serialization_record(tag_symbol)
    parent_id = parent.nil? ? 0 : parent.id
    record = [@id, parent_id, index_in_parent, tag_symbol]
    record.concat(@start.to_a)
    record.concat(@finish.to_a)
    record.pack("L10")
  end
  
  def markup
    buffer = ''
    buffer << "<#@tag>" if @start
    children.each { |child| buffer << child.markup }
    buffer << "</#@tag>" if @finish
    buffer
  end
end

STMarkup::Location =
Struct.new(:position, :line, :column, :markup_position) do
  include Comparable
  
  def to_a
    [position, line, column]
  end
  
  def to_s
    [line, column].join(':')
  end
  
  def <<(text)
    length     = text.length
    line_count = text.count("\n")
    line_count.zero? ? (self.column += length) :
      (self.column = length - text.rindex("\n") - 1)
    self.line += line_count
    self.position += length
    return self
  end
  
  def +(text)
    self.dup << text
  end
  
  def <=>(location)
    position <=> location.position
  end
end

class STMarkup::Parser
  attr_reader :stack, :node
  
  def initialize(document, source)
    @document = document
    @scanner = StringScanner.new(source)
    @stack = []
    @location = Location[0,1,0,0]
    @node = nil
    @document.top = open('top')
  end
  
  def parse
    unless @scanner.eos?
      until @scanner.eos?
        before_pos = @scanner.pos
        step
        push_ahead if @scanner.pos == before_pos
        block_given? and yield(self)
      end
      close('top')
    end
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
    node = Node.new(tag, @document, @node)
    node.start = location
    @stack.push(@node) unless @node.nil?
    @node = node
  end
  
  def location
    @location.markup_position = @scanner.pos
    return @location
  end
  
end

