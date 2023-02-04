package Middleend.llvmir;

import Frontend.ast.RootNode;
import Middleend.llvmir.Hierarchy.IRFunction;
import Middleend.llvmir.Type.PointerType;
import Middleend.llvmir.Type.StructType;
import Middleend.llvmir.ValueAndUser.GlobalValue;
import Middleend.llvmir.ValueAndUser.Value;

import java.io.IOException;
import java.io.OutputStream;

public class IRPrinter extends IRBuilder{
    public OutputStream os;
    Boolean is_online_judge;

    public IRPrinter(RootNode root, OutputStream output, boolean is_online_flag) {
        super(root);
        os = output;
        is_online_judge = is_online_flag;
    }

    void printf(String str) throws IOException {
/*        if (is_online_judge) {
            System.out.print(str);
        } else {
            os.write(str.getBytes());
        }*/
        os.write(str.getBytes());
    }

    void global_string_declare() throws IOException {
        for (String str : const_string_table.keySet()) {
            GlobalValue v = const_string_table.get(str);
            printf(v.get_name() + " = private unnamed_addr constant " + ((PointerType) v.get_type()).get_pointed_type().toString() + " c\"" + v.const_string_data + "\"\n");
        }
        if (const_string_table.values().size() > 0) {
            printf("\n");
        }
    }

    void struct_declare() throws IOException {
        for (StructType i : class_table.values()) {
            printf(i.declare());
        }
        if (class_table.values().size() > 0) {
            printf("\n");
        }
    }

    void global_variable_declare() throws IOException {
        for (Value i : cur_scope.var_table.values()) {
            printf(i.global_variable_declare());
        }
        if (cur_scope.var_table.values().size() > 0) {
            printf("\n");
        }
    }

    void func_declare() throws IOException {
        for (IRFunction i: func_table.values()) {
            printf(i.declare());
            printf("\n");
        }
    }

    public void IR_print() throws IOException {
        printf("""
                ; ModuleID = 'test.mx'
                source_filename = "test.mx"
                target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
                target triple = "x86_64-pc-linux-gnu"

                """);

        printf("""
                declare i8* @__built_in_malloc(i32)
                declare void @print(i8*)
                declare void @println(i8*)
                declare void @printInt(i32)
                declare void @printlnInt(i32)
                declare i8* @getString()
                declare i32 @getInt()
                declare i8* @toString(i32)
                declare i32 @__built_in_length(i8*)
                declare i8* @__built_in_substring(i8*, i32, i32)
                declare i32 @__built_in_parseInt(i8*)
                declare i32 @__built_in_ord(i8*, i32)
                declare i8* @__build_in_str_add(i8*, i8*)
                declare i1 @__build_in_str_eq(i8*, i8*)
                declare i1 @__build_in_str_neq(i8*, i8*)
                declare i1 @__build_in_str_sle(i8*, i8*)
                declare i1 @__build_in_str_slt(i8*, i8*)
                declare i1 @__build_in_str_sge(i8*, i8*)
                declare i1 @__build_in_str_sgt(i8*, i8*)
                
                """);

        global_string_declare();
        struct_declare();
        global_variable_declare();
        func_declare();

        printf("attributes #0 = { noinline nounwind optnone uwtable \"correctly-rounded-divide-sqrt-fp-math\"=\"false\" \"disable-tail-calls\"=\"false\" \"frame-pointer\"=\"all\" \"less-precise-fpmad\"=\"false\" \"min-legal-vector-width\"=\"0\" \"no-infs-fp-math\"=\"false\" \"no-jump-tables\"=\"false\" \"no-nans-fp-math\"=\"false\" \"no-signed-zeros-fp-math\"=\"false\" \"no-trapping-math\"=\"false\" \"stack-protector-buffer-size\"=\"8\" \"target-cpu\"=\"x86-64\" \"target-features\"=\"+cx8,+fxsr,+mmx,+sse,+sse2,+x87\" \"unsafe-fp-math\"=\"false\" \"use-soft-float\"=\"false\" }\n");

        printf("""
                !llvm.module.flags = !{!0}
                !llvm.ident = !{!1}

                !0 = !{i32 1, !"wchar_size", i32 4}
                !1 = !{!"clang version 10.0.0-4ubuntu1 "}
                """);
    }
}
