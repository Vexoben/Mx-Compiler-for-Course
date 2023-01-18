import Backend.ASM.ASMBuilder;
import Backend.ASM.ASMPrinter;
import Backend.ASM.RegAllocator;
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

    static boolean is_online_judge = true;
    static boolean debug_mode = true;

    public static void main(String[] args) throws Exception {
        String inputfile = "test.mx";
        String out_ll = "test.ll";
        OutputStream out_ll_stream = new FileOutputStream(out_ll);
        String out_asm = is_online_judge ? "output.s" : "test.s";
        OutputStream out_asm_stream = new FileOutputStream(out_asm);
        String out_asm_without_allocate = "test_without_allocate.s";
        OutputStream out_asm_without_allocate_stream = new FileOutputStream(out_asm_without_allocate);
        try {
            // System.out.println("-----------------Start!--------------------");
            MxStarLexer lexer;
            if (!is_online_judge || debug_mode) {
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
            // System.out.println("-----------------AST Building------------------");
            RootNode astroot = (RootNode) astbuilder.visit(parse_tree_root);
            SemanticChecker semantic_checker = new SemanticChecker();
            // System.out.println("-----------------Semantic Checking-------------------");
            semantic_checker.visit(astroot);
            // System.out.println("-----------------IR Building-------------------");
            IRPrinter ir_printer = new IRPrinter(astroot, out_ll_stream, is_online_judge);
            if (!is_online_judge) {
                ir_printer.IR_print();
            }
            // System.out.println("-----------------ASM Building-------------------");
            ASMBuilder asm_builder = new ASMBuilder(ir_printer);
            if (!is_online_judge) {
                ASMPrinter asm_printer1 = new ASMPrinter(asm_builder.asm, out_asm_without_allocate_stream, is_online_judge);
                asm_printer1.ASM_print();
            }
            // System.out.println("-----------------REG Allocating-------------------");
            RegAllocator reg_allocator = new RegAllocator(asm_builder.asm);
            ASMPrinter asm_printer = new ASMPrinter(reg_allocator.asm, out_asm_stream, is_online_judge);
            asm_printer.ASM_print();
        }
        catch (BaseError error){
            System.out.println(error.get_msg());
            throw new RuntimeException();
        }
    }
}