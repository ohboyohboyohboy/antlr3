#!/usr/bin/ruby
# encoding: utf-8

=begin LICENSE

[The "BSD licence"]
Copyright (c) 2009-2011 Ruben Laguna
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

module ANTLR3
module AST

=begin rdoc ANTLR3::AST::TreeRewriter

AST::TreeFilter 

From ANTLR blog:
Instead of specifying an entire tree grammar, a tree pattern matcher 
lets us focus on just those subtrees we care about. That's useful 
because different phases of a language application care about different 
parts of the tree. A tree pattern matcher also decouples the order in 
which we apply tree patterns from the tree patterns themselves. Unlike
embedded walkers, visitors, and tree grammars, tree patterns don't 
specify how to walk the tree. ANTLR's new tree pattern matching engine
dictates the tree traversal strategy. In its simplest form, a pattern 
matcher repeatedly tries to match patterns against subtrees. When it 
finds a match, the pattern matcher triggers an action or tree rewrite.

=end



class TreeFilter <  ANTLR3::TreeParser
  def initialize(input,options={})
    super( input, options )
    @originaladaptor = input.tree_adaptor
    @originaltokenstream = input.token_stream
  end
  
  def apply_once(t,&whichrule)
    return unless t
    begin
      @state = RecognizerSharedState.new
      @input = CommonTreeNodeStream.new(@originaladaptor, t)
      @input.token_stream = @originaltokenstream
      backtrack &whichrule
      # backtracking_level = 1
      # whichrule.call
      # backtracking_level = 0 
    rescue ANTLR3::Error::BacktrackingFailed => re
      puts "RecognitionError catched"
    end
  end
  
  def downup(t)
    v = Visitor.new
    v.pre_action { |tree| apply_once(tree){topdown};tree }
    v.post_action { |tree| apply_once(tree){bottomup};tree }
    v.visit t
  end
  
end
  
  
end
end
