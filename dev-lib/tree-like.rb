#!/usr/bin/ruby
# encoding: utf-8

autoload :StringIO, 'stringio'

=begin
= TreeLike

A mix-in module to give objects tree-like behavior and structure

== Usage

* when the module is mixed into a class, the class' objects are given
  attributes +parent+ & +children+
* establish the tree structure elsewhere in the class by setting +parent+
* the #parent= method automatically validates and updates the children of
  the node to which it is assigned

== Example
  require 'tree-like'
  
  class Node
    include TreeLike
    
    def initialize(text, parent = nil)
      @text = text
      self.parent = parent
    end
    
    def add_node(text)
      return Node.new(text, self)
    end
    
    def to_s
      self.map do |n|
        ('  ' * n.depth) << n.text
      end.join("\n")
    end
  end
  
  root = Node.new("whateva")
  root.add_node('some kid')
  root.add_node('another')
  
  puts(root)
  # whateva
  #   some kid
  #   another
=end

module TreeLike
  ##### Properties ###########################################################
  attr_reader :parent
  def parent=( node )
    previous, @parent = @parent, node
    
    if previous and previous.children.include?( self )
      previous.children.delete( self )
    end
    unless @parent.nil? or @parent.children.include?( self )
      @depth = @parent.depth + 1
      @parent.children << self
    else @depth = 0
    end
    return node
  end
  
  def depth
    @depth ||= ( @parent.nil? ? 0 : @parent.depth + 1 )
  end
  
  def children
    @children ||= []
  end
  
  def index_in_parent
    @parent.nil? ? 0 : @parent.children.index( self )
  end
  
  def siblings
    if @parent
      @parent.children.reject { |i| i.equal? self }
    end
  end
  
  ##### Predicates ###########################################################
  def root?
    @parent.nil?
  end
  
  def leaf?
    @children.nil? or @children.empty?
  end
  
  def is_child_of?( node )
    node.children.include? self
  end
  
  def has_child?( node )
    @children and @children.include?( node )
  end
  
  def detached?
    @parent.nil?
  end
  
  def attached?
    not @parent.nil?
  end
  
  ##### Derived Properties ###################################################
  def root
    self.root? ? self : self.ancestors[ -1 ]
  end
  
  def leaves
    self.select { |i| i.leaf? }
  end
  
  ##### Restructuring Methods ################################################
  def detach
    self.parent = nil
    return self
  end
  
  def swap_with( node )
    its_parent  = node.parent
    its_depth   = node.depth
    its_index   = node.index_in_parent
    my_parent   = parent
    my_depth    = depth
    my_index    = index_in_parent
    
    its_parent.children[ its_index ] = self
    my_parent.children[ my_index ] = node
    
    @parent, @depth = its_parent, its_depth
    node.instance_variable_set( :@parent, my_parent )
    node.instance_variable_set( :@depth,  my_depth )
    return( node )
  end

  def replace_with( node )
    my_parent   = self.parent
    my_index    = self.index_in_parent
    my_depth    = self.depth

    node.parent.children.delete( node ) if node.parent
    node.instance_variable_set( :@parent, my_parent )
    node.instance_variable_set( :@depth, my_depth )
    my_parent.children[ my_index ] = node
    @parent = nil
  end
  
  def ancestors
    a = []
    cursor = self
    until cursor.root?
      a.push( cursor.parent )
      cursor = cursor.parent
    end
    return a
  end
  
  def unravel
    out = []
    cursor = self
    until cursor.root?
      out.unshift( cursor )
      cursor = cursor.parent
    end
    out.unshift( cursor )
    return out
  end
  
  def descendant_of?( node )
    ancestors.include?( node )
  end
  
    
  ##### Iterators ############################################################
  include Enumerable
  def each_child
    block_given? or return( enum_for( __method__ ) )
    self.children.each { |child| yield( child ) }
  end
  
  def each_ancestor
    block_given? or return( enum_for( __method__ ) )
    self.ancestors.each { |anc| yield( anc ) }
  end
  
  def delete_if
    block_given? or return( enum_for( __method__ ) )
    for node in self.select { |n| yield( n ) }
      node.detach
    end
    return( self )
  end
  
  def walk
    stack = []
    cursor = self
    loop do
      begin
        yield( cursor )
        stack.push( cursor.children.dup ) unless cursor.leaf?
      rescue StopIteration
      ensure
        break if stack.empty?
        cursor = stack.last.shift
        stack.pop if stack.last.empty?
      end
    end
    return self
  end
  alias :each :walk
  
  def prune!
    raise StopIteration
  end
  
  ##### Display And Formatting ###############################################
  def inspect_structure
    out = StringIO.new( '' )
    out.puts( self.inspect )
    self.each do |n|
      next if n.root?
      current_depth = ( n.depth - 1 )
      0.upto( current_depth ) { |i| out << '|  ' }
      tail = ( n.parent.children.last == n )
      branch = tail ? '`--' : '|--'
      out << branch << n.inspect << "\n"
    end
    return out.string
  #end
  end
end
