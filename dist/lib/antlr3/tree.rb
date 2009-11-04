#!/usr/bin/ruby
# encoding: utf-8

=begin LICENSE

[The "BSD licence"]
Copyright (c) 2009 Kyle Yetter
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions
are met:

 1. Redistributions of source code must retain the above copyright
    notice, this list of conditions and the following disclaimer.
 2. Redistributions in binary form must reproduce the above copyright
    notice, this list of conditions and the following disclaimer in the
    documentation and/or other materials provided with the distribution.
 3. The name of the author may not be used to endorse or promote products
    derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR
IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT,
INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

=end

require 'antlr3'

module ANTLR3
  
=begin rdoc ANTLR3::AST

Name space containing all of the entities pertaining to tree construction and
tree parsing.

=end

module AST

autoload :Wizard, 'antlr3/tree/wizard'
autoload :Visitor, 'antlr3/tree/visitor'

####################################################################################################
############################################ Tree Parser ###########################################
####################################################################################################

=begin rdoc ANTLR3::AST::TreeParser

= TreeParser

TreeParser is the default base class of ANTLR-generated tree parsers. The class
tailors the functionality provided by BaseRecognizer to the task of tree-pattern
recognition.

== About Tree Parsers

ANTLR generates three basic types of recognizers:
* lexers
* parsers
* tree parsers

Furthermore, it is capable of generating several different flavors of parser,
including parsers that take token input and use it to build Abstract Syntax
Trees (ASTs), tree structures that reflect the high-level syntactic and semantic
structures defined by the language.

You can take the information encapsulated by the AST and process it directly in
a program. However, ANTLR also provides a means to create a recognizer which is
capable of walking through the AST, verifying its structure and performing
custom actions along the way -- tree parsers.

Tree parsers are created from tree grammars. ANTLR-generated tree parsers
closely mirror the general structure of regular parsers and lexers.

For more in-depth coverage of the topic, check out the ANTLR documentation
(http://www.antlr.org).

== The Tree Parser API

Like Parser, the class does not stray too far from the BaseRecognizer API.
Mainly, it customizes a few methods specifically to deal with tree nodes
(instead of basic tokens), and adds some helper methods for working with trees.

Like all ANTLR recognizers, tree parsers contained a shared state structure and
an input stream, which should be a TreeNodeStream. ANTLR intends to keep its
tree features flexible and customizable, and thus it does not make any
assumptions about the class of the actual nodes it processes. One consequence of
this flexibility is that tree parsers also require an extra tree adaptor object,
the purpose of which is to provide a homogeneous interface for handling tree
construction and analysis of your tree nodes.

See Tree and TreeAdaptor for more information.

=end

class TreeParser < BaseRecognizer
  def self.main(argv = ARGV, options = {})
    if argv.is_a?(::Hash) then argv, options = ARGV, argv end
    main = ANTLR3::Main::WalkerMain.new(self, options)
    block_given? ? yield(main) : main.execute(argv)
  end
  
  def initialize(input, options = {})
    super(options)
    @input = input
  end
  
  alias tree_node_stream input
  alias tree_node_stream= input=
  def source_name
    @input.source_name
  end
  
  def current_input_symbol
    @input.look
  end
  
  def missing_symbol(error, expected_token_type, follow)
    name = token_name(expected_token_type).to_s
    text = "<missing " << name << '>'
    tk = create_token do |t|
      t.text = text
      t.type = expected_token_type
    end
    return(CommonTree.new(tk))
  end
  
  DOT_DOT_PATTERN = /.*[^\.]\\.{2}[^\.].*/
  DOUBLE_ETC_PATTERN = /.*\.{3}\s+\.{3}.*/
  
  def in_context?(context)
    self.class.in_context?(
      @input.tree_adaptor, token_names, @input.look, context)
  end
  
  def self.in_context?(adaptor, token_names, tree, context)
    case context
    when DOT_DOT_PATTERN then raise ArgumentError, "invalid syntax: .."
    when DOUBLE_ETC_PATTERN then raise ArgumentError, "invalid syntax: ... ..."
    end
    
    context = context.gsub(/([^\.\s])\.{3}([^\.])/, '\1 ... \2')
    context.strip!
    nodes = context.split(/\s+/)
    
    ni = nodes.length.pred
    tree = adaptor.parent(tree)
    while ni >= 0 and tree
      if nodes[ni] == '...'
        ni.zero? and return true
        goal = nodes[ni.pred]
        ancestor = ancestor(adaptor, token_names, tree, goal) or return false
        tree = ancestor
        ni -= 1
      end
      name = token_names[adaptor.type_of(tree)]
      name == nodes[ni] or return false
      ni -= 1
      tree = adaptor.parent(tree)
    end
    
    tree.nil? && ni >= 0 and return false
    return true
  end
  
  def self.ancestor(adaptor, token_names, tree, goal)
    while tree
      name = token_names[adaptor.type_of(tree)]
      name == goal and return tree
      tree = adaptor.parent(tree)
    end
    return nil
  end
  
  def match_any(ignore = nil)
    @state.error_recovery = false

    look = @input.look
    if @input.tree_adaptor.child_count(look) == 0
      @input.consume
      return
    end
    level = 0
    token_type = @input.tree_adaptor.type_of(look)
    until token_type == EOF or (token_type == UP && level == 0)
      @input.consume
      look = @input.look
      case token_type = @input.tree_adaptor.type_of(look)
      when DOWN then level += 1
      when UP then level -= 1
      end
    end
    @input.consume  # consume UP
  end
  
  def mismatch(input, type, follow = nil)
    raise MismatchedTreeNode.new(type, input)
  end
  
  def error_header(err)
    (<<-END.strip!)
    #{self.grammar_file_name}: node from #{
      err.approximate_line_info? ? 'after ' : ''
    } line #{err.line}:#{err.column}
    END
  end
  
  def error_message(e)
    adaptor = e.input.tree_adaptor
    e.token = adaptor.token(e.node)
    e.token ||= create_token do |tok|
      tok.type = adaptor.type_of(e.node)
      tok.text = adaptor.text_of(e.node)
    end
    return super(e)
  end
  
  def trace_in(rule_name, rule_index)
    super(rule_name, rule_index, @input.look)
  end
  def trace_out(rule_name, rule_index)
    super(rule_name, rule_index, @input.look)
  end
end

####################################################################################################
############################################ Tree Nodes ############################################
####################################################################################################

=begin rdoc ANTLR3::AST::Tree

= ANTLR Abstract Syntax Trees

As ANTLR is concerned, an Abstract Syntax Tree (AST) node is an object that
wraps a token, a list of child trees, and some information about the collective
source text embodied within the tree and its children.

The Tree module, like the Token and Stream modules, emulates an abstract base
class for AST classes; it specifies the attributes that are expected of basic
tree nodes as well as the methods trees need to implement.

== Terminology

While much of this terminology is probably familiar to most developers, the
following brief glossary is intended to clarify terminology used in code
throughout the AST library:

[payload] either a token value contained within a node or +nil+
[flat list (nil tree)] a tree node without a token payload, but with more 
                       than one children -- functions like an array of 
                       tree nodes
[root] a top-level tree node, i.e. a node that does not have a parent
[leaf] a node that does not have any children
[siblings] all other nodes sharing the same parent as some node
[ancestors] the list of successive parents from a tree node to the root node
[error node] a special node used to represent an erroneous series of tokens
             from an input stream

=end

module Tree
  attr_accessor :parent
  attr_accessor :token_start_index
  attr_accessor :token_stop_index
  attr_accessor :child_index
  attr_reader :type
  attr_reader :text
  attr_reader :line
  attr_reader :column
  attr_reader :children
  attr_reader :token
  
  def [](index, length = nil)           # getChild(index)
    length.nil? ? self.children[index] : self.children[index, length]
  end
  
  alias child []
  
  def child_count                       # getChildCount
    self.children.length
  end
  
  def push(node, *nodes)
    self.children.push(node, *nodes)
  end
  
  alias << push
  
  def shift
    self.children.shift
  end
  
  def unshift(node, *nodes)
    self.children.unshift(node, *nodes)
  end
  
  alias add_child shift
  
  def set_child(index, tree)
    self.children[index] = tree
  end
  
  alias []= set_child
  
  def delete_child(index)
    self.children.delete(index)
  end
  
  def replace_children(start, stop, trees)
    self.children[start..stop] = trees
  end
  
  def to_a
    child_arrays = children.map { |child| child.to_a }
    [token, *child_arrays]
  end
  
  include Enumerable
  
  def each_child
    block_given? or return enum_for(__method__)
    self.children.each { |child| yield(child)  }
  end
  
  def each_ancestor
    block_given? or return enum_for(__method__)
    self.ancestors.each { |anc| yield(anc) }
  end
  
  def walk
    block_given? or return(enum_for(__method__))
    stack = []
    cursor = self
    loop do
      begin
        yield(cursor)
        stack.push(cursor.children.clone) unless cursor.leaf?
      rescue StopIteration
        # skips adding children to prune the node
      ensure
        break if stack.empty?
        cursor = stack.last.shift
        stack.pop if stack.last.empty?
      end
    end
    return self
  end
  
  def prune
    raise StopIteration
  end
  
  alias :each :walk
  
  def root?
    parent.nil?
  end
  
  def leaf?
    children.empty?
  end
  
  def ancestors
    a = []
    cursor = self
    until cursor.root?
      a.push(cursor.parent)
      cursor = cursor.parent
    end
    return a
  end
end


=begin rdoc ANTLR3::AST::BaseTree

A base implementation of an Abstract Syntax Tree Node. It mainly defines the
methods and attributes required to implement the parent-node-children
relationship that characterize a tree; it does not provide any logic concerning
a node's token <i>payload</i>.

=end

class BaseTree
  include Tree

  def initialize(node = nil)
    @children = []
    @parent = nil
    @child_index = 0
  end
  
  def child(index)
    @children[index]
  end
  
  def first_child_with_type(tree_type)
    @children.find { |child| child.type == tree_type }
  end
  
  def child_count
    @children.length
  end
  
  def add_child(child_tree)
    child_tree.nil? and return
    if child_tree.flat_list?
      if @children.equal?(child_tree.children)
        raise ArgumentError, "attempt to add child list to itself"
      end
      child_tree.children.each_with_index do |child, index|
        child.parent = self
        child.child_index = @children.length + index
      end
      @children.concat(child_tree.children)
    else
      @children << child_tree
      child_tree.parent = self
      child_tree.child_index = @children.length - 1
    end
  end
  
  def add_children(children)
    @children.concat(children)
  end
  
  def set_child(index, tree)
    return if tree.nil?
    tree.flat_list? and raise ArgumentError, "Can't set single child to a list"
    tree.parent = self
    tree.child_index = index
    @children[index] = tree
  end
  
  def delete_child(index)
    if killed = @children[index]
      @children[index, 1] = nil
      @children[index..-1].each_with_index do |child, i|
        child.child_index = index + i
      end
    end
    return killed
  end
  
  def replace_children(start_index, stop_index, new_tree)
    start_index >= @children.length or stop_index >= @children.length and
      raise IndexError, (<<-END).gsub!(/^\s+\| /,'')
      | indices span beyond the number of children:
      |  children.length = #{@children.length}
      |  start = #{start_index.inspect}
      |  stop  = #{stop_index.inspect}
      END
    new_children = new_tree.flat_list? ? new_tree.children : [new_tree]
    @children[start_index..stop_index] = new_children
    freshen_parent_and_child_indexes(start_index)
    return self
  end
  
  def flat_list?
    false
  end
  
  def freshen_parent_and_child_indexes(offset = 0)
    @children[offset..-1].each_with_index do |child, index|
      child.child_index = index + offset
      child.parent = self
    end
  end
  
  
  def sanity_check_parent_and_child_indexes(parent = nil, i = -1)
    parent == @parent or
      raise TreeInconsistency.failed_parent_check!(parent, @parent)
    i == @child_index or
      raise TreeInconsistency.failed_index_check!(i, @child_index)
    @children.each_with_index do |child, index|
      child.sanity_check_parent_and_child_indexes(self, index)
    end
  end

  def to_string_tree
    @children.empty? and return self.to_s
    buffer = []
    buffer << '(' << self.to_s << ' ' unless self.flat_list?
    buffer << @children.map { |child| child.to_string_tree }.join(' ')
    buffer << ' '
    buffer << ')' unless self.flat_list?
    return buffer.join
  end
  
  def line;  return 0;   end
  def column; return 0; end
  
  abstract :to_s
end


=begin rdoc ANTLR3::AST::CommonTree

The default Tree class implementation used by ANTLR tree-related code.

A CommonTree object is a tree node that wraps a token <i>payload</i> (or a +nil+
value) and contains zero or more child tree nodes. Additionally, it tracks
information about the range of data collectively spanned by the tree node: 

* the token stream start and stop indexes of tokens contained throughout 
  the tree 
* that start and stop positions of the character input stream from which 
  the tokens were defined

Tracking this information simplifies tasks like extracting a block of code or
rewriting the input stream. However, depending on the purpose of the
application, building trees with all of this extra information may be
unnecessary. In such a case, a more bare-bones tree class could be written
(optionally using the BaseTree class or the Token module). Define a customized
TreeAdaptor class to handle tree construction and manipulation for the
customized node class, and recognizers will be able to build, rewrite, and parse
the customized lighter-weight trees.

=end

class CommonTree < BaseTree
  def initialize(payload = nil)
    super()
    @start_index = -1
    @stop_index = -1
    @child_index = -1
    case payload
    when CommonTree then
      @token = payload.token
      @start_index = payload.start_index
      @stop_index = payload.stop_index
    when nil, Token then @token = payload
    else raise ArgumentError, "Invalid argument type: #{payload.class} (#{payload.inspect})"
    end
  end
  
  def initialize_copy(orig)
    super
    @parent = nil
    @children = []
  end
  
  attr_reader :token
  
  def copy_node
    return CommonTree.new(@token)
  end
  
  def flat_list?
    @token.nil?
  end
  
  def type
    @token.nil? ? 0 : @token.type
  end
  
  def text
    @token.text rescue nil
  end
  
  def line
    if @token.nil? or @token.line == 0
      return (child_count > 0 ? child(0).line : 0)
    end
    return @token.line
  end
  
  def column
    if @token.nil? or @token.column == -1
      return(child_count > 0 ? child(0).column : 0)
    end
    return @token.column
  end

  def start_index
    return @token.index if @start_index == -1 and !@token.nil?
    return @start_index
  end
  
  def stop_index
    return @token.index if @stop_index == -1 and !@token.nil?
    return @stop_index
  end
  
  attr_writer :start_index, :stop_index
  alias token_start_index= start_index=
  alias token_stop_index= stop_index=
  alias token_start_index start_index
  alias token_stop_index stop_index
  
  def name
    @token.nil? ? 'INVALID' : @token.name
  end
  
  def token_range
    unknown_token_boundaries? and set_unknown_token_boundaries
    @start_index..@stop_index
  end
  def source_range
    unknown_token_boundaries? and set_unknown_token_boundaries
    tokens = self.map do |node|
      tk = node.token
      (tk && tk.index >= 0) ? tk : nil
    end
    tokens.compact!
    first, last = tokens.minmax_by { |tk| tk.index }
    (first.start)..(last.stop)
  end
  
  def set_unknown_token_boundaries
    if @children.nil? || @children.empty? and (@start_index < 0 or @stop_index < 0)
      @start_index = @stop_index = @token.index rescue -1
      return
    end
    for child in @children do child.set_unknown_token_boundaries end
    return if @start_index >= 0 and @stop_index >= 0
    
    @start_index = @children.first.token_start_index
    @stop_index = @children.last.token_stop_index
    return nil
  end
  
  def unknown_token_boundaries?
    @start_index < 0 || @stop_index < 0
  end
  
  def to_s
    flat_list? ? 'nil' : @token.text.to_s
  end
  
  def to_string_tree
    children.empty? and return self.to_s
    
    out = ''
    out << "(#{self} " unless flat_list?
    
    out << children.map { |child| child.to_string_tree }.join(' ')
    out << ')' unless flat_list?
    return out
  end
  alias inspect to_string_tree
  
  def pretty_print(printer)
    if children.empty?
      lines = self.to_s.split(/\r?\n/, -1)
      for line in lines[0...-1]
        printer.text(line)
        printer.text(printer.newline)
        printer.text(printer.genspace[printer.indent])
      end
      return(printer.text(lines.last))
    end
    
    endpoints = flat_list? ? ['', ''] : ["(#{self} ", ')']
    printer.group(1, *endpoints) do
      for child in self.children
        printer.breakable
        printer.pp(child)
      end
    end
  end
  
end


=begin rdoc ANTLR3::AST::CommonErrorNode

Represents a series of erroneous tokens from a token stream input

=end

class CommonErrorNode < CommonTree
  include ANTLR3::Error
  include ANTLR3::Constants
  
  attr_accessor :input, :start, :stop, :error
  
  def initialize(input, start, stop, error)
    super(nil)
    stop = start if stop.nil? or
      (stop.token_index < start.token_index and stop.type != EOF)
    @input = input
    @start = start
    @stop = stop
    @error = error
  end
  
  def flat_list?
    return false
  end
  
  def type
    INVALID_TOKEN_TYPE
  end
  
  def text
    case @start
    when Token
      i = @start.token_index
      j = (@stop.type == EOF) ? @input.size : @stop.token_index
      @input.to_s(i,j)            # <- the bad text
    when Tree
      @input.to_s(@start, @stop)  # <- the bad text
    else
      "<unknown>"
    end
  end
  
  def to_s
    case @error
    when MissingToken
      "<missing type: #{@error.missing_type}>"
    when UnwantedToken
      "<extraneous: #{@error.token.inspect}, resync = #{self.text}>"
    when MismatchedToken
      "<mismatched token: #{@error.token.inspect}, resync = #{self.text}>"
    when NoViableAlternative
      "<unexpected: #{@error.token.inspect}, resync = #{self.text}>"
    else "<error: #{text}>"
    end
  end
  
end

Constants::INVALID_NODE = CommonTree.new(ANTLR3::INVALID_TOKEN)

####################################################################################################
########################################### Tree Adaptors ##########################################
####################################################################################################

=begin rdoc ANTLR3::AST::TreeAdaptor

Since a tree can be represented by a multitude of formats, ANTLR's tree-related
code mandates the use of Tree Adaptor objects to build and manipulate any actual
trees. Using an adaptor object permits a single recognizer to work with any
number of different tree structures without adding rigid interface requirements
on customized tree structures. For example, if you want to represent trees using
simple arrays of arrays, you just need to design an appropriate tree adaptor and
provide it to the parser.

Tree adaptors are tasked with:

* copying and creating tree nodes and tokens
* defining parent-child relationships between nodes
* cleaning up / normalizing a full tree structure after construction
* reading and writing the attributes ANTLR expects of tree nodes
* providing node access and iteration

=end

module TreeAdaptor
  include TokenFactory
  include Constants
  
  def add_child(tree, child)
    tree.add_child(child) if tree and child
  end
  
  def child_count(tree)
    tree.child_count
  end
  
  def child_index(tree)
    tree.child_index rescue 0
  end
  
  def child_of(tree, index)
    tree.nil? ? nil : tree.child(index)
  end
  
  def copy_node(tree_node)
    tree_node.dup unless tree_node.nil?
  end

  def copy_tree(tree, parent = nil)
    tree or return nil
    new_tree = copy_node(tree)
    set_child_index(new_tree, child_index(tree))
    set_parent(new_tree, parent)
    each_child(tree) do |child|
      new_sub_tree = copy_tree(child, tree)
      add_child(new_tree, new_sub_tree)
    end
    return new_tree
  end
  
  def delete_child(tree, index)
    tree.delete_child(index)
  end
  
  def each_child(tree)
    block_given? or return enum_for(__method__)
    i = 0
    n = child_count(tree)
    while i < n
      yield child_of(tree, i)
      i += 1
    end
  end
  
  def flat_list?(tree)
    tree.flat_list?
  end

  def parent(tree)
    tree.parent
  end
  
  def replace_children(parent, start_index, stop_index, replacement_tree)
    parent.nil? or
      parent.replace_children(start_index, stop_index, replacement_tree)
  end

  def rule_post_processing(root)
    if root and root.flat_list?
      case root.child_count
      when 0 then root = nil
      when 1
        root = root.child(0)
        root.parent = nil
        root.child_index = -1
      end
    end
    return root
  end
  
  def set_child_index(tree, index)
    tree.child_index = index
  end

  def set_parent(tree, parent)
    tree.parent = parent
  end
  
  def set_token_boundaries(tree, start_token = nil, stop_token = nil)
    return(nil) if tree.nil?
    start = stop = 0
    start = start_token.index unless start_token.nil?
    stop = stop_token.index unless stop_token.nil?
    tree.token_start_index = start
    tree.token_stop_index = stop
    return tree
  end

  def text_of(tree)
    tree.text rescue nil
  end

  def token(tree)
    tree.is_a?(CommonTree) ? tree.token : nil
  end

  def token_start_index(tree)
    tree.nil? ? -1 : tree.token_start_index
  end
  
  def token_stop_index(tree)
    tree.nil? ? -1 : tree.token_stop_index
  end
  
  def type_name(tree)
    tree.nil? ? 'INVALID' : tree.name
  end
  
  def type_of(tree)
    tree.nil? ? INVALID_TOKEN_TYPE : tree.type
  end
  
  def unique_id(node)
    node.hash
  end
end



=begin rdoc ANTLR3::AST::CommonTreeAdaptor

The default tree adaptor used by ANTLR-generated tree code. It, of course,
builds and manipulates CommonTree nodes.

=end

class CommonTreeAdaptor
  include TreeAdaptor
  include ANTLR3::Constants
  
  def initialize(token_class = ANTLR3::CommonToken)
    @token_class = token_class
  end
  
  def create_flat_list!
    return self.create_with_payload!(nil)
  end
  
  def become_root(new_root, old_root)
    new_root = create!(new_root) if new_root.is_a?(Token)
    old_root.nil? and return(new_root)
    
    new_root = create_with_payload!(new_root) unless new_root.is_a?(CommonTree)
    if new_root.flat_list?
      count = new_root.child_count
      if count == 1
        new_root = new_root.child(0)
      elsif count > 1
        raise TreeInconsistency.multiple_roots!
      end
    end
    
    new_root.add_child(old_root)
    return new_root
  end
  
  def create_from_token!(token_type, from_token, text = nil)
    from_token = from_token.clone
    from_token.type = token_type
    from_token.text = text unless text.nil?
    tree = create_with_payload!(from_token)
    return tree
  end
  
  def create_from_type!(token_type, text)
    from_token = create_token(token_type, DEFAULT_CHANNEL, text)
    create_with_payload!(from_token)
  end
  
  def create_error_node!(input, start, stop, exc)
    CommonErrorNode.new(input, start, stop, exc)
  end
  
  def create_with_payload!(payload)
    return CommonTree.new(payload)
  end
  
  def create!(*args)
    n = args.length
    if n == 1 and args.first.is_a?(Token) then create_with_payload!(args[0])
    elsif n >= 2 and args[0].is_a?(Integer) and args[1].is_a?(Token)
      create_from_token!(*args)
    elsif n == 2 and args[0].is_a?(Integer) and args[1].is_a?(String)
      create_from_type!(*args)
    else
      sig = args.map { |f| f.class }.join(', ')
      raise TypeError, "No create method with this signature found: (#{sig})"
    end
  end  
end


####################################################################################################
########################################### Tree Streams ###########################################
####################################################################################################

=begin rdoc ANTLR3::AST::TreeNodeStream

TreeNodeStreams flatten two-dimensional tree structures into one-dimensional
sequences. They preserve the two-dimensional structure of the tree by inserting
special +UP+ and +DOWN+ nodes.

Consider a hypothetical tree:

  [A]
   +--[B]
   |   +--[C]
   |   `--[D]
   `--[E]
       `--[F]

A tree node stream would serialize the tree into the following sequence:

  A DOWN B DOWN C D UP E DOWN F UP UP EOF

Other than serializing a tree into a sequence of nodes, a tree node stream
operates similarly to other streams. They are commonly used by tree parsers as
the main form of input. #peek, like token streams, returns the type of the token
of the next node. #look returns the next full tree node.

=end

module TreeNodeStream
  include Stream
  include Constants
  
  abstract :get
  abstract :look
  abstract :tree_source
  abstract :token_stream
  abstract :tree_adaptor
  abstract :unique_navigation_nodes=
  abstract :to_s
  abstract :replace_children
end

=begin rdoc ANTLR3::AST::CommonTreeNodeStream

An implementation of TreeNodeStream tailed for streams based on CommonTree
objects. CommonTreeNodeStreams are the default input streams for tree parsers.

=end

class CommonTreeNodeStream
  include TreeNodeStream
  
  def initialize(*args)
    
    case args.length
    when 1
      adaptor = CommonTreeAdaptor.new
      tree = args[0]
      @nodes = @down = @up = @eof = nil
    when 2
      adaptor, tree = *args
      @nodes = @down = @up = @eof = nil
    when 3
      parent, start, stop = *args
      adaptor = parent.adaptor
      tree = parent.root
      @nodes = parent.nodes[start...stop]
      @down = parent.down
      @up = parent.up
      @eof = parent.eof
    else raise ArgumentError, "Invalid arguments"
    end
    @down  ||= adaptor.create_from_type!(DOWN, 'DOWN')
    @up    ||= adaptor.create_from_type!(UP, 'UP')
    @eof   ||= adaptor.create_from_type!(EOF, 'EOF')
    @nodes ||= []
    @root = tree
    @tokens = nil
    @adaptor = adaptor
    @unique_navigation_nodes = false
    @position = -1
    @last_marker = nil
    @calls = []
  end
  
  def fill_buffer
    __fill_buffer__(@root)
    @position = 0
  end
  
  def node_index(node)
    @position == -1 and fill_buffer
    return @nodes.index(node)
  end
  
  def add_navigation_node(type)
    navigation_node =
      case type
      when DOWN
        has_unique_navigation_nodes? ? @adaptor.create_from_type!(DOWN, 'DOWN') : @down
      else
        has_unique_navigation_nodes? ? @adaptor.create_from_type!(UP, 'UP') : @up
      end
    @nodes << navigation_node
  end
  
  def get(index)
    @position == -1 and fill_buffer
    @nodes[index]
  end
  
  def look(k = 1)
    @position == -1 and fill_buffer
    k == 0 and return nil
    k < 0 and return self.lookbehind(-k)
    
    absolute = @position + k - 1
    return(absolute >= @nodes.length ? @eof : @nodes[absolute])
  end
  
  def current_symbol
    look
  end
  
  def lookbehind(k = 1)
    k == 0 and return nil
    absolute = @position - k
    return((absolute < 0) ? nil : @nodes[absolute])
  end
  
  def tree_source
    @root
  end
  
  def source_name
    self.token_stream.source_name
  end
  
  def token_stream
    @tokens
  end
  
  def token_stream=(tokens)
    @tokens = tokens
  end
  
  def tree_adaptor
    @adaptor
  end
  
  def has_unique_navigation_nodes?
    return @unique_navigation_nodes
  end
  attr_writer :unique_navigation_nodes
  
  def consume
    @position == -1 and fill_buffer
    @position += 1
  end
  
  def peek(i = 1)
    @adaptor.type_of self.look(i)
  end
  
  alias >> peek
  def <<(k)
    self >> -k
  end
  
  def mark
    @position == -1 and fill_buffer
    @last_marker = self.index
    return @last_marker
  end
  
  def release(marker = nil)
    # do nothing?
  end
  
  def index
    @position
  end
  
  def rewind(marker = @last_marker)
    seek(marker)
  end
  
  def seek(index)
    @position == -1 and fill_buffer
    @position = index
  end
  
  def push(index)
    @calls << @position
    seek(index)
  end
  
  def pop
    ret = @calls.pop and seek(ret)
    return ret
  end
  
  def reset
    @position = 0
    @last_marker = 0
    @calls = []
  end
  
  def replace_children(parent, start_index, stop_index, replacement_tree)
    parent.nil? or
      @adaptor.replace_children(parent, start_index,
                                stop_index, replacement_tree)
  end
  
  def size
    @position == -1 and fill_buffer
    return @nodes.length
  end
  
  def inspect
    @position == -1 and fill_buffer
    @nodes.map { |nd| @adaptor.type_of(nd) }.join(' ')
  end
  
  def to_s(start = nil, stop = nil)
    start.nil? || stop.nil? and return nil
    @position == -1 and fill_buffer
    
    unless @tokens.nil?
      begin_token_index = @adaptor.token_start_index(start)
      end_token_index = @adaptor.token_stop_index(stop)
      
      if @adaptor.type_of(stop) == UP
        end_token_index = @adaptor.token_stop_index(start)
      elsif @adaptor.type_of(stop) == EOF
        end_token_index = size() - 2
      end
      return @tokens.to_string(begin_token_index, end_token_index)
    end
    
    t, ind = @nodes.each_with_index.find { |nd, ind| nd == start }
    
    buffer = []
    until t == stop
      text = (@adaptor.text_of(t) || ' ' << @adaptor.type_of(t).to_s)
      buffer << text
      ind += 1
      t = @nodes[ind]
    end
    
    text = (@adaptor.text_of(stop) || ' ' << @adaptor.type_of(stop).to_s)
    buffer << text
    
    return buffer,join
  end
  
  def each
    @position == -1 and fill_buffer
    block_given? or return enum_for(:each)
    @nodes.each { |node| yield(node) }
  end
  
  include Enumerable
  
  def to_a
    return @nodes.dup
  end
  
  private
  def linear_node_index(node)
    @position == -1 and fill_buffer
    @nodes.each_with_index do |n, i|
      node == n and return(i)
    end
    return -1
  end
  
  def __fill_buffer__(tree)
    nil_tree = @adaptor.flat_list?(tree)
    unless nil_tree
      @nodes << tree
    end
    
    n = @adaptor.child_count(tree)
    add_navigation_node(DOWN) if not nil_tree and n > 0
    
    n.times { |c| __fill_buffer__ @adaptor.child_of(tree, c) }
    
    add_navigation_node(UP) if not nil_tree and n > 0
  end
  
end

=begin rdoc ANTLR3::AST::RewriteRuleElementStream

Special type of stream that is used internally by tree-building and tree-
rewriting parsers.

=end

class RewriteRuleElementStream
  include Error
  def initialize(adaptor, element_description, elements = nil)
    @cursor = 0
    @single_element = nil
    @elements = nil
    @dirty = false
    @element_description = element_description
    @adaptor = adaptor
    if elements.is_a?(Array)
      @single_element = nil
      @elements = elements
    else
      add(elements)
    end
  end
  
  def reset
    @cursor = 0
    @dirty = true
  end
  
  def add(el)
    return(nil) unless el
    unless @elements.nil?
      @elements << el
      return
    end
    if @single_element.nil?
      @single_element = el
      return
    end
    @elements = [@single_element, el]
    @single_element = nil
    return(@elements)
  end
  
  def next_tree
    if @dirty or (@cursor >= self.length && self.length == 1)
      el = __next__()
      return self.dup(el)
    end
    el = __next__()
    return el
  end
  
  abstract :dup
  
  def to_tree(el)
    return el
  end
  
  def has_next?
    return(!@single_element.nil? && @cursor < 1 or !@elements.nil? && @cursor < @elements.length)
  end
  
  def size
    @single_element and return 1
    @elements and return @elements.length
    return 0
  end
  alias length size
  
  private
  def __next__
    if self.length == 0
      raise Error::RewriteEmptyStream.new(@element_description)
    end
    if @cursor >= self.length
      self.length == 1 and return self.to_tree(@single_element)
      raise RewriteCardinalityError.new(@element_description)
    end
    unless @single_element.nil?
      @cursor += 1
      return self.to_tree(@single_element)
    end
    out = self.to_tree(@elements[@cursor])
    @cursor += 1
    return out
  end
end


=begin rdoc ANTLR3::AST::RewriteRuleTokenStream

Special type of stream that is used internally by tree-building and tree-
rewriting parsers.

=end
class RewriteRuleTokenStream < RewriteRuleElementStream
  def to_tree(el)
    return el
  end
  
  def next_node
    t = __next__
    return @adaptor.create_with_payload!(t)
  end
  
  def next
    return __next__()
  end
  
  def dup(el)
    raise TypeError, "dup can't be called for a token stream"
  end
end

=begin rdoc ANTLR3::AST::RewriteRuleSubtreeStream

Special type of stream that is used internally by tree-building and tree-
rewriting parsers.

=end

class RewriteRuleSubtreeStream < RewriteRuleElementStream
  def next_node
    if @dirty or (@cursor >= self.length) && (self.length == 1)
      el = __next__
      return @adaptor.copy_node(el)
    end
    el = __next__
    return el
  end
  
  def dup(el)
    @adaptor.copy_tree(el)
  end
end

=begin rdoc ANTLR3::AST::RewriteRuleNodeStream

Special type of stream that is used internally by tree-building and tree-
rewriting parsers.

=end

class RewriteRuleNodeStream < RewriteRuleElementStream
  def next_node
    __next__
  end
  def to_tree(el)
    @adaptor.copy_node(el)
  end
  def dup(el)
    raise TypeError, "dup can't be called for a node stream"
  end
end
end

include AST
end
