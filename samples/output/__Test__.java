import java.io.*;
import org.antlr.runtime.*;
import org.antlr.runtime.debug.DebugEventSocketProxy;


public class __Test__ {

    public static void main(String args[]) throws Exception {
        CPPLexer lex = new CPPLexer(new ANTLRFileStream("/home/kyle/lib/ruby/projects/antlr3/samples/output/__Test___input.txt", "UTF8"));
        CommonTokenStream tokens = new CommonTokenStream(lex);

        CPPParser g = new CPPParser(tokens, 49100, null);
        try {
            g.preprocess();
        } catch (RecognitionException e) {
            e.printStackTrace();
        }
    }
}