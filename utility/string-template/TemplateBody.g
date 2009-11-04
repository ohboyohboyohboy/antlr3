lexer grammar TemplateBody;

COMMENT
      :  '<!' ( options {greedy=false;} : '\r'? '\n' | . ) 
        
        )