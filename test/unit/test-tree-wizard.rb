#!/usr/bin/ruby
# encoding: utf-8

require 'antlr3'
require 'antlr3/tree/wizard'
require 'test/unit'
require 'spec'


include ANTLR3
include ANTLR3::AST

class TestTreePatternLexer < Test::Unit::TestCase
  
  # vvvvvvvv tests vvvvvvvvv
  
  def test_open
    lexer = Wizard::TreePatternLexer.new('(')
    type = lexer.next_token
    assert_equal(type, :open)
    assert_equal(lexer.text, '')
    assert_equal(lexer.error, false)
  end
  
  def test_close
    lexer = Wizard::TreePatternLexer.new(')')
    type = lexer.next_token
    assert_equal(type, :close)
    assert_equal(lexer.text, '')
    assert_equal(lexer.error, false)
  end
  
  def test_percent
    lexer = Wizard::TreePatternLexer.new('%')
    type = lexer.next_token
    assert_equal(type, :percent)
    assert_equal(lexer.text, '')
    assert_equal(lexer.error, false)
  end
  
  def test_dot
    lexer = Wizard::TreePatternLexer.new('.')
    type = lexer.next_token
    assert_equal(type, :dot)
    assert_equal(lexer.text, '')
    assert_equal(lexer.error, false)
  end
  
  def test_eof
    lexer = Wizard::TreePatternLexer.new(" \n \r \t ")
    type = lexer.next_token
    assert_equal(type, EOF)
    assert_equal(lexer.text, '')
    assert_equal(lexer.error, false)
  end
  
  def test_id
    lexer = Wizard::TreePatternLexer.new('__whatever_1__')
    type = lexer.next_token
    assert_equal(:identifier, type)
    assert_equal('__whatever_1__', lexer.text)
    assert( !(lexer.error) )
  end
  
  def test_arg
    lexer = Wizard::TreePatternLexer.new('[ \]bla\n]')
    type = lexer.next_token
    assert_equal(type, :argument)
    assert_equal(' ]bla\n', lexer.text)
    assert( !(lexer.error) )
  end
  
  def test_error
    lexer = Wizard::TreePatternLexer.new("1")
    type = lexer.next_token
    assert_equal(type, EOF)
    assert_equal(lexer.text, '')
    assert_equal(lexer.error, true)
  end
  
end


class TestTreePatternParser < Test::Unit::TestCase
  def setup
    @adaptor = CommonTreeAdaptor.new
    @pattern_adaptor = Wizard::TreePatternTreeAdaptor.new
    @tokens = Array.new(5, '') + %w(A B C D E ID VAR)
    @wizard = Wizard.new(@adaptor, @tokens)
  end
  
  # vvvvvvvv tests vvvvvvvvv
  def test_single_node
    lexer = Wizard::TreePatternLexer.new('ID')
    parser = Wizard::TreePatternParser.new(lexer, @wizard, @adaptor)
    tree = parser.pattern
  
    assert_instance_of(CommonTree, tree)
    assert_equal(10, tree.type)
    assert_equal('ID', tree.text)
  end
  
  def test_single_node_with_arg
    lexer = Wizard::TreePatternLexer.new('ID[foo]')
    parser = Wizard::TreePatternParser.new(lexer, @wizard, @adaptor)
    tree = parser.pattern
  
    assert_instance_of(CommonTree, tree)
    assert_equal(10, tree.type)
    assert_equal('foo', tree.text)
  end
  
  def test_single_level_tree
    lexer = Wizard::TreePatternLexer.new('(A B)')
    parser = Wizard::TreePatternParser.new(lexer, @wizard, @adaptor)
    tree = parser.pattern
  
    assert_instance_of(CommonTree, tree)
    assert_equal(5, tree.type)
    assert_equal('A', tree.text)
    assert_equal(tree.child_count, 1)
    assert_equal(tree.child(0).type, 6)
    assert_equal(tree.child(0).text, 'B')
  end
  
  def test_nil
    lexer = Wizard::TreePatternLexer.new('nil')
    parser = Wizard::TreePatternParser.new(lexer, @wizard, @adaptor)
    tree = parser.pattern
  
    assert_instance_of(CommonTree, tree)
    assert_equal(0, tree.type)
    assert_nil tree.text
  end
  
  def test_wildcard
    lexer = Wizard::Wizard::TreePatternLexer.new('(.)')
    parser = Wizard::Wizard::TreePatternParser.new(lexer, @wizard, @adaptor)
    tree = parser.pattern
  
    assert_instance_of(Wizard::WildcardTreePattern, tree)
  end
  
  def test_label
    lexer = Wizard::TreePatternLexer.new('(%a:A)')
    parser = Wizard::TreePatternParser.new(lexer, @wizard, @pattern_adaptor)
    tree = parser.pattern
  
    assert_instance_of(Wizard::TreePattern, tree)
    assert_equal('a', tree.label)
  end
  
  def test_error_1
    lexer = Wizard::TreePatternLexer.new(')')
    parser = Wizard::TreePatternParser.new(lexer, @wizard, @adaptor)
    tree = parser.pattern
    
    assert_nil tree
  end
  
  def test_error_2
    lexer = Wizard::TreePatternLexer.new('()')
    parser = Wizard::TreePatternParser.new(lexer, @wizard, @adaptor)
    tree = parser.pattern
    
    assert_nil tree
  end
  
  def test_error_3
    lexer = Wizard::TreePatternLexer.new('(A ])')
    parser = Wizard::TreePatternParser.new(lexer, @wizard, @adaptor)
    tree = parser.pattern
    
    assert_nil tree
  end
  
end


class TestTreeWizard < Test::Unit::TestCase

  def setup
    @adaptor = ANTLR3::CommonTreeAdaptor.new
    @tokens = Array.new(5, '') + %w(A B C D E ID VAR)
    @wizard = Wizard.new(@adaptor, @tokens)
  end
  
  # vvvvvvvv tests vvvvvvvvv
  def test_init
    wiz = Wizard.new(@adaptor, %w(a b))
    
    assert_equal(wiz.adaptor, @adaptor)
    assert_equal(wiz.token_name_to_type_map, { 'a' => 0, 'b' => 1 })
  end
  
  def test_token_type
    wiz = Wizard.new(@adaptor, @tokens)
    assert_equal(wiz.token_type('A'), 5)
    assert_equal(wiz.token_type('VAR'), 11)
    assert_equal(wiz.token_type('invalid'), INVALID_TOKEN_TYPE)
  end

  def test_single_node
    wiz = Wizard.new(@adaptor, @tokens)
    t = wiz.create("ID")
    
    assert_equal(t.to_string_tree, 'ID')
  end
  
  def test_single_node_with_arg
    wiz = Wizard.new(@adaptor, @tokens)
    t = wiz.create("ID[foo]")
    
    assert_equal(t.to_string_tree, 'foo')
  end
  
  def test_single_node_tree
    wiz = Wizard.new(@adaptor, @tokens)
    t = wiz.create("(A)")
    
    assert_equal(t.to_string_tree, 'A')
  end
  
  def test_single_level_tree
    wiz = Wizard.new(@adaptor, @tokens)
    t = wiz.create("(A B C D)")
    
    assert_equal(t.to_string_tree, '(A B C D)')
  end
  
  def test_list_tree
    wiz = Wizard.new(@adaptor, @tokens)
    t = wiz.create("(nil A B C)")
    
    assert_equal(t.to_string_tree, 'A B C')
  end
  
  def test_invalid_list_tree
    wiz = Wizard.new(@adaptor, @tokens)
    t = wiz.create("A B C")
    
    assert_nil t
  end
  
  def test_double_level_tree
    wiz = Wizard.new(@adaptor, @tokens)
    t = wiz.create("(A (B C) (B D) E)")
    
    assert_equal(t.to_string_tree, "(A (B C) (B D) E)")
  end
  
  SIMPLIFY_MAP = lambda do |imap|
    Hash[
      imap.map { |type, nodes| [type, nodes.map { |n| n.to_s }] }
    ]
  end
  
  def test_single_node_index
    wiz = Wizard.new(@adaptor, @tokens)
    tree = wiz.create("ID")
    index_map = SIMPLIFY_MAP[wiz.index(tree)]
    
    assert_equal(index_map, { 10 => %w(ID) })
  end
  
  
  def test_no_repeats_index
    wiz = Wizard.new(@adaptor, @tokens)
    tree = wiz.create("(A B C D)")
    index_map = SIMPLIFY_MAP[wiz.index(tree)]
    
    assert_equal(index_map,
        8 => %w(D), 6 => %w(B),
        7 => %w(C), 5 => %w(A)
    )
  end
  
  def test_repeats_index
    wiz = Wizard.new(@adaptor, @tokens)
    tree = wiz.create("(A B (A C B) B D D)")
    index_map = SIMPLIFY_MAP[wiz.index(tree)]
    
    assert_equal(index_map,
        8 => %w(D D), 6 => %w(B B B),
        7 => %w(C), 5 => %w(A A)
    )
  end
  
  
  def test_no_repeats_visit
    tree = @wizard.create("(A B C D)")
    
    elements = []
    @wizard.visit(tree, @wizard.token_type('B')) do |node, parent, child_index, labels|
      elements << node.to_s
    end
    
    assert_equal(%w(B), elements)
  end
  
  
  def test_no_repeats_visit2
    tree = @wizard.create("(A B (A C B) B D D)")
    
    elements = []
    @wizard.visit(tree, @wizard.token_type('C')) do |node, parent, child_index, labels|
      elements << node.to_s
    end
    
    assert_equal(%w(C), elements)
  end
  
  
  def test_repeats_visit
    tree = @wizard.create("(A B (A C B) B D D)")
    
    elements = []
    @wizard.visit(tree, @wizard.token_type('B')) do |node, parent, child_index, labels|
      elements << node.to_s
    end
    
    assert_equal(%w(B B B), elements)
  end
  
  
  def test_repeats_visit2
    tree = @wizard.create("(A B (A C B) B D D)")
    
    elements = []
    @wizard.visit(tree, @wizard.token_type('A')) do |node, parent, child_index, labels|
      elements << node.to_s
    end
    
    assert_equal(%w(A A), elements)
  end
  
  def context(node, parent, index)
    '%s@%s[%d]' % [node.to_s, (parent || 'nil').to_s, index]
  end
  
  def test_repeats_visit_with_context
    tree = @wizard.create("(A B (A C B) B D D)")
    
    elements = []
    @wizard.visit(tree, @wizard.token_type('B')) do |node, parent, child_index, labels|
      elements << context(node, parent, child_index)
    end
    
    assert_equal(['B@A[0]', 'B@A[1]', 'B@A[2]'], elements)
  end
  
  
  def test_repeats_visit_with_null_parent_and_context
    tree = @wizard.create("(A B (A C B) B D D)")
    
    elements = []
    @wizard.visit(tree, @wizard.token_type('A')) do |node, parent, child_index, labels|
      elements << context(node, parent, child_index)
    end
    
    assert_equal(['A@nil[0]', 'A@A[1]'], elements)
  end
  
  
  def test_visit_pattern
    tree = @wizard.create("(A B C (A B) D)")
    
    elements = []
    @wizard.visit(tree, '(A B)') do |node, parent, child_index, labels|
      elements << node.to_s
    end
    
    assert_equal(%w(A), elements)
  end
  
  
  def test_visit_pattern_multiple
    tree = @wizard.create("(A B C (A B) (D (A B)))")
    
    elements = []
    @wizard.visit(tree, '(A B)') do |node, parent, child_index, labels|
      elements << context(node, parent, child_index)
    end
    
    assert_equal( %w(A@A[2] A@D[0]) , elements )
  end
  
  def labeled_context(node, parent, index, labels, *names)
    suffix = names.map { |n| labels[n].to_s }.join('&')
    '%s@%s[%d]%s' % [node.to_s, (parent || 'nil').to_s, index, suffix]
  end
    
  def test_visit_pattern_multiple_with_labels
    tree = @wizard.create("(A B C (A[foo] B[bar]) (D (A[big] B[dog])))")
    
    elements = []
    @wizard.visit(tree, '(%a:A %b:B)') do |node, parent, child_index, labels|
      elements << labeled_context(node, parent, child_index, labels, 'a', 'b')
    end
    
    assert_equal( ['foo@A[2]foo&bar', 'big@D[0]big&dog'] , elements )
  end
  
  
  def test_parse
    tree = @wizard.create("(A B C)")
    assert @wizard.parse(tree, "(A B C)")
  end
  
  def test_parse_single_node
    tree = @wizard.create('A')
    assert @wizard.parse(tree, 'A')
  end
  
  def test_parse_single_node_fails
    tree = @wizard.create('A')
    assert( !(@wizard.parse(tree, 'B')) )
  end
  
  
  def test_parse_flat_tree
    tree = @wizard.create('(nil A B C)')
    assert @wizard.parse(tree, '(nil A B C)')
  end
  
  def test_parse_flat_tree_fails
    tree = @wizard.create('(nil A B C)')
    assert( !(@wizard.parse(tree, '(nil A B)')) )
  end

  def test_parse_flat_tree_fails2
    tree = @wizard.create('(nil A B C)')
    assert( !(@wizard.parse(tree, '(nil A B A)')) )
  end
  
  def test_wildcard
    tree = @wizard.create('(A B C)')
    assert @wizard.parse(tree, '(A . .)')
  end
  
  def test_parse_with_text
    tree = @wizard.create('(A B[foo] C[bar])')
    assert @wizard.parse(tree, '(A B[foo] C)')
  end
  
  def test_parse_with_text_fails
    tree = @wizard.create('(A B C)')
    assert( !(@wizard.parse(tree, '(A[foo] B C)')) )
  end
  
  def test_parse_labels
    tree = @wizard.create('(A B C)')
    labels = {}
    assert @wizard.parse(tree, '(%a:A %b:B %c:C)', labels)
    assert_equal('A', labels['a'].to_s)
    assert_equal('B', labels['b'].to_s)
    assert_equal('C', labels['c'].to_s)
  end
  
  def test_parse_with_wildcard_labels
    tree = @wizard.create('(A B C)')
    labels = {}
    assert @wizard.parse(tree, '(A %b:. %c:.)', labels)
    assert_equal('B', labels['b'].to_s)
    assert_equal('C', labels['c'].to_s)
  end
  
  
  def test_parse_labels_and_test_text
    tree = @wizard.create('(A B[foo] C)')
    labels = {}
    assert @wizard.parse(tree, '(%a:A %b:B[foo] %c:C)', labels)
    assert_equal('A', labels['a'].to_s)
    assert_equal('foo', labels['b'].to_s)
    assert_equal('C', labels['c'].to_s)
  end
  
  def test_parse_labels_in_nested_tree
    tree = @wizard.create('(A (B C) (D E))')
    labels = {}
    assert @wizard.parse(tree, '(%a:A (%b:B %c:C) (%d:D %e:E))', labels)
    assert_equal('A', labels['a'].to_s)
    assert_equal('B', labels['b'].to_s)
    assert_equal('C', labels['c'].to_s)
    assert_equal('D', labels['d'].to_s)
    assert_equal('E', labels['e'].to_s)
  end
  
  
  def test_equals
    tree1 = @wizard.create("(A B C)")
    tree2 = @wizard.create("(A B C)")
    assert @wizard.equals(tree1, tree2)
  end
  
  
  def test_equals_with_text
    tree1 = @wizard.create("(A B[foo] C)")
    tree2 = @wizard.create("(A B[foo] C)")
    assert @wizard.equals(tree1, tree2)
  end
  
  
  def test_equals_with_mismatched_text
    tree1 = @wizard.create("(A B[foo] C)")
    tree2 = @wizard.create("(A B C)")
    assert( !(@wizard.equals(tree1, tree2)) )
  end
  
  
  def test_equals_with_mismatched_list
    tree1 = @wizard.create("(A B C)")
    tree2 = @wizard.create("(A B A)")
    assert( !(@wizard.equals(tree1, tree2)) )
  end
  
  def test_equals_with_mismatched_list_length
    tree1 = @wizard.create("(A B C)")
    tree2 = @wizard.create("(A B)")
    assert( !(@wizard.equals(tree1, tree2)) )
  end
  
  def test_find_pattern
    tree = @wizard.create("(A B C (A[foo] B[bar]) (D (A[big] B[dog])))")
    subtrees = @wizard.find(tree, "(A B)").map { |t| t.to_s }
    assert_equal(%w(foo big), subtrees)
  end
  
  def test_find_token_type
    tree = @wizard.create("(A B C (A[foo] B[bar]) (D (A[big] B[dog])))")
    subtrees = @wizard.find(tree, @wizard.token_type('A')).map { |t| t.to_s }
    assert_equal(%w(A foo big), subtrees)
  end
end

