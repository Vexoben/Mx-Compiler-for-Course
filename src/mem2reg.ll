; ModuleID = 'test.mx'
source_filename = "test.mx"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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

@a = dso_local global i32* zeroinitializer

define dso_local i32 @main() #0 {
mainentry:
  call void @__init_function__()
  br label %first_block__main
first_block__main:
  %load_inst2 = load i32*, i32** @a
  %get_element_ptr_inst2 = getelementptr inbounds i32, i32* %load_inst2, i32 1
  store i32 1, i32* %get_element_ptr_inst2
  br label %mainexit
mainexit:
  ret i32 0
  store i32 allo, i32 tmp
  ret i32 tmp
}

define dso_local void @__init_function__() #0 {
__init_function__entry:
  %array_size = mul i32 4, 10000
  %alloca_size = add i32 4, %array_size
  %function_call_inst = call i8* @__built_in_malloc(i32 %alloca_size)
  %bit_cast_inst = bitcast i8* %function_call_inst to i32*
  store i32 10000, i32* %bit_cast_inst
  %get_element_ptr_inst = getelementptr inbounds i32, i32* %bit_cast_inst, i32 1
  %arr_head = bitcast i32* %get_element_ptr_inst to i32*
  store i32* %arr_head, i32* new_result
  store i32* new_result, i32* tmp
  store i32* tmp, i32** @a
  br label %__init_function__exit
__init_function__exit:
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}
