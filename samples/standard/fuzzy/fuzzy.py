import sys
import antlr3
from FuzzyJava import FuzzyJava

stream = antlr3.StringStream(open(sys.argv[1]).read())
lexer = FuzzyJava(stream)

while True:
    token = lexer.nextToken()
    if token.type == antlr3.EOF:
        break
