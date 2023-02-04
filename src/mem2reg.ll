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

define dso_local void @foo(i32 %foo_d, i32 %foo_x, i32 %foo_y) #0 {
fooentry:
  br label %first_block__foo
first_block__foo:
  store i32 %foo_d, i32 d
  store i32 %foo_x, i32 x
  store i32 %foo_y, i32 y
  store i32 d, i32 tmp
  %r = mul i32 tmp, 1000
  store i32 x, i32 tmp
  %r2 = mul i32 tmp, 10
  %r3 = add i32 %r, %r2
  store i32 y, i32 tmp
  %r4 = add i32 %r3, tmp
  %function_call_inst = call i8* @toString(i32 %r4)
  store i8* %function_call_inst, i8* allo_inst
  store i8* allo_inst, i8* tmp
  call void @println(i8* tmp)
  store i32 d, i32 tmp
  %r5 = icmp eq i32 tmp, 1
  br i1 %r5, label %if_true, label %if_false
if_true:
  ret void
  br label %if_exit
if_false:
  br label %if_exit
if_exit:
  store i32 x, i32 tmp
  store i32 tmp, i32 t
  store i32 x, i32 tmp
  store i32 y, i32 tmp
  store i32 tmp, i32 x
  store i32 y, i32 tmp
  store i32 t, i32 tmp
  store i32 tmp, i32 y
  store i32 x, i32 tmp
  store i32 y, i32 tmp
  call void @foo(i32 1, i32 tmp, i32 tmp)
  store i32 d, i32 tmp
  %r6 = mul i32 tmp, 1000
  store i32 x, i32 tmp
  %r7 = mul i32 tmp, 10
  %r8 = add i32 %r6, %r7
  store i32 y, i32 tmp
  %r9 = add i32 %r8, tmp
  %function_call_inst4 = call i8* @toString(i32 %r9)
  store i8* %function_call_inst4, i8* allo_inst
  store i8* allo_inst, i8* tmp
  call void @println(i8* tmp)
  br label %fooexit
fooexit:
  ret void
}

define dso_local i32 @main() #0 {
mainentry:
  call void @__init_function__()
  br label %first_block__main
first_block__main:
  call void @foo(i32 7, i32 5, i32 3)
  ret i32 0
  br label %mainexit
mainexit:
  ret i32 0
  store i32 allo, i32 tmp
  ret i32 tmp
}

define dso_local void @__init_function__() #0 {
__init_function__entry:
  br label %__init_function__exit
__init_function__exit:
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}
