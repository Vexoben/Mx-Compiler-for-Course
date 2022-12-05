package Middleend.llvmir;

import Frontend.ast.RootNode;
import Middleend.llvmir.Constant.Function;
import Middleend.llvmir.Type.StructType;

public class IRPrinter extends IRBuilder{
    IRPrinter(RootNode root) {
        super(root);
    }

    void printf(String str) {
        System.out.print(str);
    }

    void struct_declare() {
        for (StructType i : class_table.values()) {
            printf(i.declare());
        }
    }

    void global_variable_declare() {
        for (Value i : cur_scope.var_table.values()) {
            printf(i.variable_declare());
        }
    }

    void func_declare() {
        for (Function i: func_table.values()) {
            printf(i.declare());
        }
    }

    public void IR_print() {
        printf("; ModuleID = 'test.mx'\n" +
                "source_filename = \"test.mx\"\n" +
                "target datalayout = \"e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128\"\n" +
                "target triple = \"x86_64-pc-linux-gnu\"\n");

        struct_declare();
        global_variable_declare();
        func_declare();

        printf("attributes #0 = { noinline nounwind optnone uwtable \"correctly-rounded-divide-sqrt-fp-math\"=\"false\" \"disable-tail-calls\"=\"false\" \"frame-pointer\"=\"all\" \"less-precise-fpmad\"=\"false\" \"min-legal-vector-width\"=\"0\" \"no-infs-fp-math\"=\"false\" \"no-jump-tables\"=\"false\" \"no-nans-fp-math\"=\"false\" \"no-signed-zeros-fp-math\"=\"false\" \"no-trapping-math\"=\"false\" \"stack-protector-buffer-size\"=\"8\" \"target-cpu\"=\"x86-64\" \"target-features\"=\"+cx8,+fxsr,+mmx,+sse,+sse2,+x87\" \"unsafe-fp-math\"=\"false\" \"use-soft-float\"=\"false\" }\n");

        printf("!llvm.module.flags = !{!0}\n" +
                "!llvm.ident = !{!1}\n" +
                "\n" +
                "!0 = !{i32 1, !\"wchar_size\", i32 4}\n" +
                "!1 = !{!\"clang version 10.0.0-4ubuntu1 \"}\n");
    }
}
