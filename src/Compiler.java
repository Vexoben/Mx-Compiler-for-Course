import Frontend.ASTBuilder;
import Frontend.SemanticChecker;
import Frontend.ast.RootNode;
import Frontend.parser.MxStarLexer;
import Frontend.parser.MxStarParser;
import Tools.Error.BaseError;
import Tools.MxStarErrorListener;
import Tools.Type.BaseType;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.CharStreams;
import org.antlr.v4.runtime.CommonTokenStream;
import org.antlr.v4.runtime.tree.ParseTree;

import java.io.FileInputStream;
import java.io.InputStream;

public class Compiler {

    public static void main(String[] args) throws Exception {
        String inputfile = "test.mx";
        String ouputfile = "data.out";
        InputStream input = new FileInputStream(inputfile);

        try {
            System.out.println("-----------------Start!--------------------");
            //MxStarLexer lexer = new MxStarLexer(CharStreams.fromStream(input));
            MxStarLexer lexer = new MxStarLexer(CharStreams.fromStream(System.in));
            lexer.removeErrorListeners();
            lexer.addErrorListener(new MxStarErrorListener());
            CommonTokenStream tokens = new CommonTokenStream(lexer);
            MxStarParser parser = new MxStarParser(tokens);
            parser.removeErrorListeners();
            parser.addErrorListener(new MxStarErrorListener());
            ParseTree parse_tree_root = parser.mxstarcode();
            ASTBuilder astbuilder = new ASTBuilder();
            System.out.println("-----------------AST building------------------");
            RootNode astroot = (RootNode) astbuilder.visit(parse_tree_root);
            SemanticChecker semantic_checker = new SemanticChecker();
            System.out.println("-----------------Semantic Checking-------------------");
            semantic_checker.visit(astroot);
        }
        catch (BaseError error){
            System.out.println(error.get_msg());
            throw new RuntimeException();
        }
    }
}