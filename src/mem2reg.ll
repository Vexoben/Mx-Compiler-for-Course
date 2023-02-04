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

@r = dso_local global i32 zeroinitializer
@c = dso_local global i32 zeroinitializer
@i = dso_local global i32 zeroinitializer
@j = dso_local global i32 zeroinitializer
@n = dso_local global i32 zeroinitializer

define dso_local i32 @abs(i32 %abs_c) #0 {
absentry:
  br label %first_block__abs
first_block__abs:
  assign c, %abs_c
  %r = icmp sgt i32 c, 0
  br i1 %r, label %if_true, label %if_false
if_true:
  ret i32 c
  br label %if_exit
if_false:
  br label %if_exit
if_exit:
  %sub_inst = sub i32 0, c
  ret i32 %sub_inst
  br label %absexit
absexit:
  ret i32 allo
}

define dso_local i32 @main() #0 {
mainentry:
  call void @__init_function__()
  br label %first_block__main
first_block__main:
  br label %for_init
for_init:
  %load_inst5 = load i32, i32* @i
  store i32 0, i32* @i
  br label %for_condition
for_condition:
  %load_inst6 = load i32, i32* @i
  %r2 = icmp slt i32 %load_inst6, 5
  br i1 %r2, label %for_repeat, label %for_exit
for_step:
  %load_inst16 = load i32, i32* @i
  %add_inst2 = add i32 1, %load_inst16
  store i32 %add_inst2, i32* @i
  br label %for_condition
for_repeat:
  br label %for_init2
for_exit:
  %load_inst17 = load i32, i32* @r
  %r5 = sub i32 2, %load_inst17
  %function_call_inst3 = call i32 @abs(i32 %r5)
  %load_inst18 = load i32, i32* @c
  %r6 = sub i32 2, %load_inst18
  %function_call_inst4 = call i32 @abs(i32 %r6)
  %r7 = add i32 %function_call_inst3, %function_call_inst4
  call void @printInt(i32 %r7)
  ret i32 0
  br label %mainexit
for_init2:
  %load_inst7 = load i32, i32* @j
  store i32 0, i32* @j
  br label %for_condition2
for_condition2:
  %load_inst8 = load i32, i32* @j
  %r3 = icmp slt i32 %load_inst8, 5
  br i1 %r3, label %for_repeat2, label %for_exit2
for_step2:
  %load_inst15 = load i32, i32* @j
  %add_inst = add i32 1, %load_inst15
  store i32 %add_inst, i32* @j
  br label %for_condition2
for_repeat2:
  %load_inst9 = load i32, i32* @n
  %function_call_inst2 = call i32 @getInt()
  store i32 %function_call_inst2, i32* @n
  %load_inst10 = load i32, i32* @n
  %r4 = icmp eq i32 %load_inst10, 1
  br i1 %r4, label %if_true2, label %if_false2
for_exit2:
  br label %for_step
if_true2:
  %load_inst11 = load i32, i32* @r
  %load_inst12 = load i32, i32* @i
  store i32 %load_inst12, i32* @r
  %load_inst13 = load i32, i32* @c
  %load_inst14 = load i32, i32* @j
  store i32 %load_inst14, i32* @c
  br label %if_exit2
if_false2:
  br label %if_exit2
if_exit2:
  br label %for_step2
mainexit:
  ret i32 0
  ret i32 allo
}

define dso_local void @__init_function__() #0 {
__init_function__entry:
  store i32 0, i32* @n
  store i32 0, i32* @r
  store i32 0, i32* @c
  store i32 0, i32* @i
  store i32 0, i32* @j
  br label %__init_function__exit
__init_function__exit:
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}
