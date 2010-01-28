import antlr3
from CalculatorLexer import CalculatorLexer
from CalculatorParser import CalculatorParser


while True:
    expr = raw_input('>>> ')
    if expr == '':
        break
    
    cStream = antlr3.StringStream(expr)
    lexer = CalculatorLexer(cStream)
    tStream = antlr3.CommonTokenStream(lexer)
    parser = CalculatorParser(tStream)
    result = parser.evaluate()
    print result
