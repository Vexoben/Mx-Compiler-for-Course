import Frontend.ASTBuilder;
import Frontend.SemanticChecker;
import Frontend.ast.RootNode;
import Frontend.parser.MxStarLexer;
import Frontend.parser.MxStarParser;
import Frontend.Tools.Error.BaseError;
import Frontend.Tools.MxStarErrorListener;
import Middleend.llvmir.IRPrinter;
import org.antlr.v4.runtime.CharStreams;
import org.antlr.v4.runtime.CommonTokenStream;
import org.antlr.v4.runtime.tree.ParseTree;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

public class Compiler {

    static boolean is_online_judge = false;

    public static void main(String[] args) throws Exception {
        String inputfile = "test.mx";
        String outputfile = "test.ll";
        OutputStream output = new FileOutputStream(outputfile);
        try {
            // System.out.println("-----------------Start!--------------------");
            MxStarLexer lexer;
            if (!is_online_judge) {
                InputStream input = new FileInputStream(inputfile);
                lexer = new MxStarLexer(CharStreams.fromStream(input));
            } else {
                lexer = new MxStarLexer(CharStreams.fromStream(System.in));
            }
            lexer.removeErrorListeners();
            lexer.addErrorListener(new MxStarErrorListener());
            CommonTokenStream tokens = new CommonTokenStream(lexer);
            MxStarParser parser = new MxStarParser(tokens);
            parser.removeErrorListeners();
            parser.addErrorListener(new MxStarErrorListener());
            ParseTree parse_tree_root = parser.mxstarcode();
            ASTBuilder astbuilder = new ASTBuilder();
            // System.out.println("-----------------AST building------------------");
            RootNode astroot = (RootNode) astbuilder.visit(parse_tree_root);
            SemanticChecker semantic_checker = new SemanticChecker();
            // System.out.println("-----------------Semantic Checking-------------------");
            semantic_checker.visit(astroot);
            IRPrinter ir_printer = new IRPrinter(astroot, output, is_online_judge);
            ir_printer.IR_print();
        }
        catch (BaseError error){
            System.out.println(error.get_msg());
            throw new RuntimeException();
        }
    }
}