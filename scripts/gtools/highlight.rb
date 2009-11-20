mode :highlight do
  mode :actions do
    mixin :input
    mixin :colors
    
    def run
      for token in token_stream
        if ACTION_TOKENS.include?(token.name) || action_ranges.any? { |r| r === token.index }
          print(color_text(token.text))
        else
          print(token.text)
        end
      end
    end
  end
  
  mode :colors do
    mixin :colors
    
    run do
      names = (plain_colors.keys | named_colors.keys).sort
      list(names)
    end
  end

end
