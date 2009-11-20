mixin :GrammarInput do
  include ANTLRv3Grammar::TokenData
  
  if $stdin.tty?
    argument(:grammar_file) do
      synopsis('grammar-file.g')
      description("path of the grammar file to use as input")
      required
      arity(1)
    end
  end
  
  def grammar_source
    @grammar_source ||= begin
      stdin.tty? ? File.read(params[:grammar_file].value) : stdin.read
    end
  end
  
  def file_name
    stdin.tty? ? params[:grammar_file].value : '$stdin'
  end
  
  def lexer
    @lexer ||= setup_recognizer(
      ANTLRv3Grammar::Lexer.new( grammar_source, :file => file_name )
    )
  end
  
  def token_stream
    @token_stream ||= ANTLR3::CommonTokenStream.new(lexer)
  end
  
  def parser
    @parser ||= setup_recognizer(
      ANTLRv3Grammar::Parser.new( token_stream )
    )
  end
  
  def grammar_tree
    @grammar_tree ||= begin
      info { "parsing #{ file_name } and building the grammar AST" }
      parser.grammar_def.tree
    end
  end
  
  def action_ranges
    @action_ranges ||= begin
      grammar_tree.select { |node| node.text == '@' }.map { |node|
        node.token_range }.tap { |list| list.uniq! }.sort_by { |r| [r.begin, r.end] }
    end
  end
  
  def node_source(node)
    token_slice = token_stream[node.token_range]
    grammar_source[(token_slice[0].start)..(token_slice[-1].stop)]
  end
  
  def option_node
    @option_node ||= begin
      grammar_tree.children.find { |child| child.type == OPTIONS }
    end
  end
  
  def grammar_options
    @grammar_options ||= begin
      opts = Hash.new
      if node = option_node
        for child in node.children
          opts[child[0].text] = child[1].text
        end
      end
      opts
    end
  end
  
  def grammar_option_text
    text = "options {"
    body = grammar_options.map { |pair| "%s = %s;" % pair }.join("\n  ")
    if body.count("\n") == 1
      text << " " << body << " }"
    else
      text << "\n  " << body << "\n}"
    end
    return(text)
  end
  
  def action_node?(node)
    ACTION_TOKENS.include?(node.name) and return true
  end
  
  def rules
    @rules ||= begin
      rules = {}
      grammar_tree.walk do |node|
        if node.type == RULE
          rules[node[0].text] = node
        end
      end
      rules
    end
  end
  
  def rule_names
    list = rules.keys
    list.compact!
    list.sort!
  end
  
  def setup_recognizer( r )
    r.instance_exec( logger ) do | log |
      @log = log
      
      def self.emit_error_message( message )
        @log.error { message }
      end
      
    end
    
    return( r )
  end
  
end
