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
module AST

=begin rdoc ANTLR3::AST::Wizard

AST::Wizard is an extra utility class that allows quick creation of AST objects
using definitions writing in ANTLR-style tree definition syntax. It can also
define <i>tree patterns</i>, objects that are conceptually similar to regular
expressions. Patterns allow a simple method for recursively searching through an
AST for a particular node structure. These features make tree wizards useful
while testing and debugging AST constructing parsers and tree parsers. This
library has been ported to Ruby directly from the ANTLR Python runtime API.

See
http://www.antlr.org/wiki/display/~admin/2007/07/02/Exploring+Concept+of+TreeWizard
for more background on the concept of a tree wizard.

== Usage

  # setting up and creating a tree wizard
  token_names = Array.new(4, '') + %w(VAR NUMBER EQ PLUS MINUS MULT DIV)
  adaptor     = ANTLR3::AST::CommonTreeAdaptor.new
  wizard      = ANTLR3::AST::Wizard.new(adaptor, token_names)
  
  # building trees
  lone_node = wizard.create "VAR[x]"   # => x
  lone_node.type                       # => 4  # = VAR
  lone_node.text                       # => "x"
  
  expression_node = wizard.create "(MINUS VAR NUMBER)"
    # => (MINUS VAR NUMBER)
  statement_node = wizard.create "(EQ[=] VAR[x] (PLUS[+] NUMBER[1] NUMBER[2]))" 
    # => (= x (+ 1 2))
  deep_node = wizard.create(<<-TREE)
    (MULT[*] NUMBER[1] 
      (MINUS[-] 
        (MULT[*] NUMBER[3]    VAR[x])
        (DIV[/]  VAR[y] NUMBER[3.14])
        (MULT[*] NUMBER[4]    VAR[z])
      )
    )
  TREE
    # => (* 1 (- (* 3 x) (/ y 3.14) (* 4 z))
  
  bad_tree_syntax = wizard.create "(+ 1 2)"
    # => nil - invalid node names
  
  # test whether a tree matches a pattern
  wizard.parse(expression_node, '(MINUS VAR .)') # => true
  wizard.parse(lone_node, 'NUMBER NUMBER')       # => false
  
  # extract nodes matching a pattern
  wizard.find(statement_node, '(PLUS . .)')
  # => [(+ 1 2)]
  wizard.find(deep_node, 4)  # where 4 is the value of type VAR
  # => [x, y, z]
  
  # iterate through the tree and extract nodes with pattern labels
  wizard.visit(deep_node, '(MULT %n:NUMBER %v:.)') do |node, parent, local_index, labels|
    printf "n = %p\n, v = %p\n", labels['n'], labels['v']
  end
    # => prints out:
    # n = 3, v = x
    # n = 4, v = z
  
== Tree Construction Syntax
  
  Simple Token Node:     TK
  Token Node With Text:  TK[text]
  Flat Node List:        (nil TK1 TK2)
  General Node:          (RT TK1 TK2)
  Complex Nested Node:   (RT (SUB1[sometext] TK1) TK2 (SUB2 TK3 TK4[moretext]))

=== Additional Syntax for Tree Matching Patterns

  Match Any Token Node:  .
  Label a Node:          %name:TK

=end

class Wizard
  
  include ANTLR3::Constants

=begin rdoc ANTLR3::AST::Wizard::TreePatternLexer

A class that is used internally by AST::Wizard to tokenize tree patterns

=end

  class TreePatternLexer
    include ANTLR3::Constants
    
    autoload :StringScanner, 'strscan'
    
    PATTERNS = [
      [:space, /\s+/],
      [:identifier, /[a-z_]\w*/i],
      [:open, /\(/],
      [:close, /\)/],
      [:percent, /%/],
      [:colon, /:/],
      [:dot, /\./],
      [:argument, /\[((?:[^\[\]\\]|\\\[|\\\]|\\.)*?)\]/]
    ]
    
    attr_reader :text, :error, :pattern
    def initialize(pattern)
      @pattern = pattern.to_s
      @scanner = StringScanner.new(pattern)
      @text = ''
      @error = false
    end
    
    def next_token
      begin
        @scanner.eos? and return EOF
        
        type, = PATTERNS.find do |type, pattern|
          @scanner.scan(pattern)
        end
        
        case type
        when nil
          type, @text, @error = EOF, '', true
          break
        when :identifier then @text = @scanner.matched
        when :argument
          # remove escapes from \] sequences in the text argument
          (@text = @scanner[1]).gsub!(/\\(?=[\[\]])/, '')
        end
      end while type == :space
      
      return type
    end
    
    alias error? error
  end
  

=begin rdoc ANTLR3::AST::Wizard::TreePatternParser

A class that is used internally by AST::Wizard to construct AST tree objects
from a tokenized tree pattern

=end

  class TreePatternParser
    include ANTLR3::Constants
    
    def initialize(tokenizer, wizard, adaptor)
      @tokenizer = tokenizer
      @wizard    = wizard
      @adaptor   = adaptor
      @token_type = tokenizer.next_token
    end
    
    def pattern
      case @token_type
      when :open then return parse_tree
      when :identifier
        node = parse_node
        @token_type == EOF and return node
        return nil
      end
      return nil
    end
    
    CONTINUE_TYPES = [:open, :identifier, :percent, :dot]
    
    def parse_tree
      @token_type != :open and return nil
      @token_type = @tokenizer.next_token
      root = parse_node or return nil
      
      loop do
        case @token_type
        when :open
          subtree = parse_tree()
          @adaptor.add_child(root, subtree)
        when :identifier, :percent, :dot
          child = parse_node or return nil
          @adaptor.add_child(root, child)
        else break
        end
      end
      @token_type == :close or return nil
      @token_type = @tokenizer.next_token
      return root
    end
    
    def parse_node
      label = nil
      if @token_type == :percent
        (@token_type = @tokenizer.next_token) == :identifier or return nil
        label = @tokenizer.text
        (@token_type = @tokenizer.next_token) == :colon or return nil
        @token_type = @tokenizer.next_token
      end
      
      if @token_type == :dot
        @token_type = @tokenizer.next_token
        wildcard_payload = CommonToken.create(:type => 0, :text => '.')
        node = WildcardTreePattern.new(wildcard_payload)
        label and node.label = label
        return node
      end
      
      @token_type == :identifier or return nil
      token_name = @tokenizer.text
      @token_type = @tokenizer.next_token
      token_name == 'nil' and return @adaptor.create_flat_list!
      
      text = token_name
      arg = nil
      if @token_type == :argument
        arg = @tokenizer.text
        text = arg
        @token_type = @tokenizer.next_token
      end
      
      tree_node_type = @wizard.token_type(token_name)
      tree_node_type == INVALID_TOKEN_TYPE and return nil
      
      node = @adaptor.create_from_type!(tree_node_type, text)
      label && node.is_a?(TreePattern) and node.label = label
      arg && node.is_a?(TreePattern) and node.has_text_arg = true
      return node
    end
  end
  

=begin rdoc ANTLR3::AST::Wizard::TreePattern

A simple tree class that represents the skeletal structure of tree. It is used
to validate tree structures as well as to extract nodes that match the pattern.

=end

  class TreePattern < CommonTree
    attr_accessor :label, :has_text_arg
    def initialize(payload)
      super(payload)
      @label = nil
      @has_text_arg = nil
    end
    
    def to_s
      prefix = @label ? '%' << @label << ':' : ''
      return prefix << super()
    end
    
  end
  
=begin rdoc ANTLR3::AST::Wizard::WildcardTreePattern

A simple tree node used to represent the operation "match any tree node type" in
a tree pattern. They are represented by '.' in tree pattern specifications.

=end
  
  class WildcardTreePattern < TreePattern; end
  

=begin rdoc ANTLR3::AST::Wizard::TreePatternTreeAdaptor

A customized TreeAdaptor used by AST::Wizards to build tree patterns.

=end

  class TreePatternTreeAdaptor < CommonTreeAdaptor
    def create_with_payload!(payload)
      return TreePattern.new(payload)
    end
  end

  attr_accessor :token_name_to_type_map, :adaptor

  def initialize(adaptor = CommonTreeAdaptor.new, token_names_or_type_map = {})
    @adaptor = adaptor
    @token_name_to_type_map = 
      case token_names_or_type_map
      when Array, nil then compute_token_types(token_names_or_type_map)
      else token_names_or_type_map
      end
  end
  
  def token_type(name)
    @token_name_to_type_map[name]
  end
  
  def create(pattern)
    tokenizer = TreePatternLexer.new(pattern)
    parser = TreePatternParser.new(tokenizer, self, @adaptor)
    return parser.pattern
  end
  
  def index(tree)
    m = {}
    index!(tree, m)
    return(m)
  end
  
  def find(tree, what)
    case what
    when Integer then find_token_type(tree, what)
    when String then find_pattern(tree, what)
    else raise ArgumentError, "search subject must be a token type (integer) or a string"
    end
  end
  
  def find_token_type(tree, type)
    nodes = []
    visit(tree, type) do |t, parent, child_index, labels|
      nodes << t
    end
    return nodes
  end
  
  def find_pattern(tree, pattern)
    subtrees = []
    tokenizer = TreePatternLexer.new(pattern)
    parser = TreePatternParser.new(tokenizer, self, TreePatternTreeAdaptor.new)
    pattern = parser.pattern()
    
    return nil if pattern.nil? or pattern.flat_list? or
      pattern.is_a?(WildcardTreePattern)
      
    root_token_type = pattern.type
    visit(tree, root_token_type) do |t, parent, child_index, label|
      ( parse! t, pattern, nil ) and subtrees << t
    end
    return subtrees
  end
  
  def visit(tree, what, &block)
    case what
    when Integer then self.visit_type(tree, nil, 0, what, &block)
    when String then self.visit_pattern(tree, what, &block)
    else raise ArgumentError,
      "the 'what' filter argument must be a tree pattern (String) or a token type (Integer) -- got #{what.inspect}"
    end
  end
  
  def visit_type(tree, parent, child_index, type, &block)
    tree.nil? and return(nil)
    @adaptor.type_of(tree) == type and yield(tree, parent, child_index, nil)
    @adaptor.child_count(tree).times do |i|
      child = @adaptor.child_of(tree, i)
      visit_type(child, tree, i, type, &block)
    end
  end
  
  def visit_pattern(tree, pattern, &block)
    tokenizer = TreePatternLexer.new(pattern)
    parser    = TreePatternParser.new(tokenizer, self, TreePatternTreeAdaptor.new)
    pattern = parser.pattern()
    
    return nil if pattern.nil? or pattern.flat_list? or
      pattern.is_a?(WildcardTreePattern)
    
    root_token_type = pattern.type
    
    visit tree, root_token_type do |tree, parent, child_index, labels|
      labels = {}
      ( parse! tree, pattern, labels ) and yield(tree, parent, child_index, labels)
    end
  end
  
  def parse(tree, pattern, labels = nil)
    tokenizer = TreePatternLexer.new(pattern)
    parser = TreePatternParser.new(tokenizer, self, TreePatternTreeAdaptor.new)
    pattern = parser.pattern
    
    parse! tree, pattern, labels
  end
  
  def parse!(tree, pattern, labels)
    tree.nil? || pattern.nil? and return false
    unless pattern.is_a? WildcardTreePattern
      @adaptor.type_of(tree) == pattern.type or return false
      pattern.has_text_arg && (@adaptor.text_of(tree) != pattern.text) and
        return false
    end
    labels[pattern.label] = tree if labels && pattern.label
    
    number_of_children = @adaptor.child_count(tree)
    return false unless number_of_children == pattern.child_count
    
    number_of_children.times do |index|
      actual_child = @adaptor.child_of(tree, index)
      pattern_child = pattern.child(index)
      return false unless parse! actual_child, pattern_child, labels
    end
    
    return true
  end
  
  def equals(tree_a, tree_b, adaptor = nil)
    adaptor ||= @adaptor
    return equals!(tree_a, tree_b, adaptor)
  end
  
  def equals! tree_a, tree_b, adaptor
    tree_a && tree_b or return false    # -> if either argument is nil, return false
    
    adaptor.type_of(tree_a) == adaptor.type_of(tree_b) or return false
    adaptor.text_of(tree_a) == adaptor.text_of(tree_b) or return false
    
    child_count_a = adaptor.child_count(tree_a)
    child_count_b = adaptor.child_count(tree_b)
    child_count_a == child_count_b or return false
    
    child_count_a.times do |index|
      child_a = adaptor.child_of(tree_a, index)
      child_b = adaptor.child_of(tree_b, index)
      equals!(child_a, child_b, adaptor) or return false
    end
    return true
  end
  
  def index!(tree, m)
    tree or return nil
    type = @adaptor.type_of(tree)
    elements = (m[type] ||= [])
    elements << tree
    @adaptor.child_count(tree).times do |i|
      child = @adaptor.child_of(tree, i)
      index!(child, m)
    end
  end
  
  def compute_token_types(token_names)
    token_names or return({})
    map = Hash.new(INVALID_TOKEN_TYPE)
    token_names.each_with_index do |name, index|
      map[name] = index
    end
    return map
  end
  
  private :parse!, :index!, :equals!
end
end
end
