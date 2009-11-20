mode :modify do
  description( <<-END.here_indent! )
  | commands for rewriting and refactoring various
  | aspects of a grammar file
  END
  
  mode :rename do
    description( <<-END.here_indent! )
    | change the name of a rule in a grammar and update
    | references to the rule in other grammar rules.
    | 
    | NOTE: this does not make any attempt to update
    | possible references to rules within language-specific
    | action blocks.
    END
    
    mixin :GrammarRewrite
    
    argument :rule_name do
      description("the current name of the rule to rename")
    end
    
    argument :new_name do
      description("the new name of the rule")
    end
    
    def run
      setup
      old_name = params[:rule_name].value
      new_name = params[:new_name].value
      
      renamed = rewrite do |prog|
        grammar_tree.walk do |node|
          node =
            case node.type
            when RULE_REF, TOKEN_REF then node
            when RULE     then node[0]
            else next
            end
          node.token.index == -1 and node.token.index = node.start_index
          name_token = node.token
          if name_token.text == old_name
            prog.replace(name_token, new_name)
          end
        end
      end
      
      write_output { |f| f.write(renamed) }
    end
  end
  
  mode :strip do
    description( <<-END.here_indent! )
    | print the grammar with all language-specific
    | action symbols removed
    END
    mixin :GrammarRewrite
    
    TOKENS_TO_STRIP = [
      ARG, RET, T__72, ACTION, SEMPRED,
      SYN_SEMPRED, GATED_SEMPRED
    ]
    
    def run
      setup
      stripped = rewrite do |rw|
        grammar_tree.walk do |node|
          if token = node.token and TOKENS_TO_STRIP.include?( token.type )
            rw.delete( node )
          end
        end
      end
      write_output { |f| f.write(stripped) }
    end
  end
  
  mode :stylize do
    synopsis("transform ANTLR grammars into an appropriate form for Ruby code generation")
    description( <<-END.here_indent! )
    | Takes an ANTLR grammar file that is written for code generation in a language
    | like Java, and prepares sets it up for ruby code generation. This is done
    | by:
    |   * converting CamelCase parser rule names and references to the Ruby
    |     stylistic convention of snake_case names
    |   * comments out all language-specific action portions of the grammar
    |     so they may be located and tailored. The action comments
    |     are in the format /* action -> __EXISTING_CODE__ */
    |   * modifies (or adds if necessary) the language option of the grammar
    |     to Ruby
    END
    mixin :GrammarRewrite
    
    option('keep-actions', 'A') do
      description("don't comment out actions")
    end
    
    option("keep-names", 'N') do
      description("don't convert CamelCase names to snake_case")
    end
    
    option("language") do
      argument_required
      description("set the target language in the grammar options")
      default("Ruby")
    end
    
    def run
      setup
      tree = grammar_tree
      tree.set_unknown_token_boundaries
      
      tasks = []
      unless params['keep-actions'].given?
        tasks << lambda do |r, n|
          if action_node?(n)
            tokens = token_stream[n.token_range]
            for tk in tokens
              tk.text =~ /\*\// and r.replace(tk, tk.text.gsub(/\*\//,'*\\/'))
            end
            head, tail = tokens.first, tokens.last
            r.insert_before(head, '/* action -> ')
            r.insert_after(tail, ' */')
            n.prune
          end
        end
      end
      
      unless params[ 'keep-names' ].given?
        tasks << lambda do |r, n|
          n =
            case n.type
            when ANTLRv3Grammar::TokenData::RULE_REF then n
            when ANTLRv3Grammar::TokenData::RULE     then n[0]
            else next
            end
          n.token.index == -1 and n.token.index = n.start_index
          name_token = n.token
          text = name_token.text
          r.replace(name_token, text.snakecase) unless text =~ /^[A-Z]/
        end
      end
      
      language = params['language'].value
      
      stylized = rewrite do |prog|
        tree.walk do |node|
          for task in tasks do task.call(prog, node) end
        end
        
        grammar_options['language'] = language
        if node = option_node
          prog.replace(node, grammar_option_text)
        else
          i = tree[0].stop_index  # the token index of the grammar name
          begin i += 1 end until token_stream[i].text == ';'
          prog.insert_after(token_stream[i], "\n#{grammar_option_text}\n")
        end
      end
      
      write_output { |f| f.write(stylized) }
    end
  end
  
  run { help! }
end

