#!/usr/bin/ruby
# encoding: utf-8

require 'antlr3/test/functional'
require 'antlr3'
require 'antlr3/tree/wizard'
require 'test/unit'
require 'spec'

include ANTLR3
include ANTLR3::AST
class TestTreePatternMatching < ANTLR3::Test::Functional
  Tokens = TokenScheme.build %w(BLOCK METHOD_DECL ID ARG_DECL VAR_DECL ELIST EXPR INT )
  include Tokens
  
   
  example "filter" do
    compile_and_load inline_grammar( <<-'END' )
    tree grammar DefRef;

    options {
      ASTLabelType = CommonTree;
      filter = true;
    }
    tokens {
      BLOCK; METHOD_DECL; ID; ARG_DECL; VAR_DECL; ELIST; EXPR; INT;
    }

    @members { include ANTLR3::Test::CaptureOutput }

    enterBlock
      : BLOCK { self.capture "block {"   }
      ;

    exitBlock
      : BLOCK { self.capture "}"}
      ;

    enterMethod
      : ^(METHOD_DECL type ID .*)  { self.capture "method {}"      }
      ;

    exitMethod
      : METHOD_DECL { self.capture "}"}
      ;

    type 
      : 'float'
      | 'int'
      | 'void'
      ;
    varDeclaration
      : ^(VAR_DECL  ID)   { self.capture " varDeclaration"}
      ;

    idref
      : {$start.ancestors.include?(EXPR)}? ID
        { self.capture " idref "}
      ;

    topdown : enterBlock|enterMethod|varDeclaration;
    bottomup : exitBlock|exitMethod|idref;
   
    END
    
    #lexer  = FlatList::Lexer.new( "abc 34" )
    #tokens = ANTLR3::CommonTokenStream.new( lexer )
    #parser = FlatList::Parser.new( tokens )
    
    #result = parser.a
    @adaptor = CommonTreeAdaptor.new( Tokens.token_class )
    @pattern_adaptor = Wizard::PatternAdaptor.new( Tokens.token_class )
    @wizard = Wizard.new( :adaptor => @adaptor, :token_scheme => Tokens )
    
    tree = @wizard.create(<<PATTERN17)
(nil (VAR_DECL  ID[i])  )
PATTERN17
    nodes = ANTLR3::AST::CommonTreeNodeStream.new( tree )
    #nodes.token_stream = tokens
    walker = DefRef::TreeParser.new( nodes )
    walker.downup(tree)
    walker.output.should == "enterBLOCK exitBLOCK "
  end
end