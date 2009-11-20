mode :show do
  mixin :GrammarInput
  
  mode :tree do
    def run
      printer = PP.new(stdout, stdout.screen_width - 2, $/) do |n|
        '  ' * n
      end
      
      printer.guard_inspect_key do
        printer.pp(grammar_tree)
      end
      
      printer.flush
      
      stdout.puts('')
    end
  end
  
  mode :rules do
    mixin :TextFormatting
    
    option('lexer', 'L') do
      description("only list lexer rule names")
    end
    
    option('parser', 'P') do
      description("only list parser rule names")
    end
    
    option('plain', 'p') do
      description("print the names in a plain list with one name per line")
    end
    
    for opt in %w( lexer parser plain )
      class_eval( <<-END, __FILE__, __LINE__ + 1 )
        def #{ opt }?
          params[ :#{ opt } ].given?
        end
      END
    end
    
    def run
      if lexer?
        list_names("lexer rules", lexer_rules)
      elsif parser?
        list_names("parser rules", parser_rules)
      else
        list_names("lexer rules", lexer_rules)
        list_names("parser rules", parser_rules)
      end
    end
    
    def list_names(title, rules)
      unless rules.empty?
        if plain?
          puts(rules)
        else
          leading = '  '
          w = (screen_width * 0.8).round
          puts("===[#{title}]".ljust(w, '='), '')
          list = Text::ColumnList.new(rules, :width_limit => w - leading.length)
          puts(list.render.gsub(/^/, leading), '')
        end
      end
    end
    
    def plain_list( items )
      puts( items )
    end
    
    def columnized_list( items )
      list = Text::ColumnList.new( rules, :width_limit => screen_width )
      
    end
    
    def title_bar( title )
      stdout.puts( "===[ #{ title } ]".ljust( screen_width ) )
    end
    
    def screen_width
      @screen_width ||= ( stdout.screen_width * 0.8 ).round
    end
    
    def lexer_rules
      @lexer_rules ||= rule_names.grep(/^[A-Z]/)
    end
    
    def parser_rules
      @parser_rules ||= rule_names - lexer_rules
    end
    
  end
  
  mode :rule do
    argument :names do
      arity(-2)
      description("name of the rule to display")
    end
    
    def run
      for name in params[:names].values
        if node = rules[name.to_s]
          puts node_source(node), ''
        else
          error { (<<-END.here_flow!) }
          | unable to locate a rule declaration named #{name}
          | in the grammar source
          END
        end
      end
    end
  end
  
  run { help! }
end