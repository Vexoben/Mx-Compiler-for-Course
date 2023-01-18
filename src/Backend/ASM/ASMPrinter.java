package Backend.ASM;

import Backend.ASM.Instructions.AsmBaseInst;
import Backend.ASM.Operands.GlobalReg;

import java.io.IOException;
import java.io.OutputStream;

public class ASMPrinter {
    OutputStream os;
    ASMModule asm;
    Boolean is_online_judge;
    int str_cnt, var_cnt, func_cnt;

    public ASMPrinter(ASMModule _asm, OutputStream output, boolean is_online_flag) {
        os = output;
        asm = _asm;
        is_online_judge = is_online_flag;
    }

    void printf(String str) throws IOException {
        os.write(str.getBytes());
    }

    public void ASM_print() throws IOException {
        printf("""
                	.text
                	.file	"test.mx"
                """);

        if (is_online_judge) {
            BuiltInPrinter built_in_printer = new BuiltInPrinter(os);
            built_in_printer.output_built_in_function();
            func_cnt = 19;
        }

        for (ASMFunction func: asm.functions) {
            print_function(func);
        }

        if (is_online_judge) {
            BuiltInPrinter built_in_printer = new BuiltInPrinter(os);
            built_in_printer.output_built_in_const_string();
            str_cnt = 4;
        }

        for (GlobalReg str: asm.const_strings) {
            print_const_string(str);
        }
        for (GlobalReg var: asm.global_vars) {
            print_global_variable(var);
        }

        printf("""
                	.ident	"clang version 10.0.0-4ubuntu1 "
                	.section	".note.GNU-stack","",@progbits
                """);
    }

    void print_function(ASMFunction func) throws IOException {
        if (func.is_built_in) return;
        printf(".globl   " + func.toString() + "\n   .p2align   2\n");
        printf("   .type   " + func.toString() + ",@function\n");
        printf(func.toString() + ":\n");
        for (ASMBlock block : func.blocks) {
            print_block(block);
        }
        String end_name = ".Lfunc_end" + (func_cnt++);
        printf( end_name + ":\n");
        printf("   .size   " + func.toString() + ", " + end_name + "-" + func.toString() + "\n");
    }

    void print_block(ASMBlock block) throws IOException {
        printf(block.label + ":\n");
        for (AsmBaseInst inst: block.instructions) {
            printf("   " + inst.toString() + "\n");
        }
    }

    void print_const_string(GlobalReg str) throws IOException {
        printf("   .type   " + str.toString() + ",@object\n");
        if (++str_cnt == 1) {
            printf(".section   .rodata.str1.1,\"aMS\",@progbits,1\n");
        }
        printf(str.toString() + ":\n");
        printf("   .asciz   \"" + str.context + "\"");
        printf("   .size   " + str.toString() + ", 4\n");
    }

    void print_global_variable(GlobalReg reg) throws IOException {
        printf("   .type   " + reg.toString() + ",@object\n");
        if (++var_cnt == 1) {
            printf("   .section   .rodata.str1.1,\"aMS\",@progbits,1\n");
        }
        printf("   .globl   " + reg.toString() + "\n   .p2align   2\n");
        printf(reg.toString() + ":\n");
        printf("   .word   0\n");
        printf("   .size   ." + reg.toString() + ", 4\n");
    }
}
