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

@const_str = private unnamed_addr constant [4 x i8] c"YES\00"
@const_str2 = private unnamed_addr constant [3 x i8] c"NO\00"

@p = dso_local global i32 zeroinitializer
@q = dso_local global i32 zeroinitializer
@r = dso_local global i32 zeroinitializer
@x = dso_local global i32 zeroinitializer
@y = dso_local global i32 zeroinitializer
@i = dso_local global i32 zeroinitializer
@z = dso_local global i32 zeroinitializer
@n = dso_local global i32 zeroinitializer

define dso_local i32 @main() #0 {
mainentry:
  call void @__init_function__()
  br label %first_block__main
first_block__main:
  %load_inst = load i32, i32* @n
  %function_call_inst2 = call i32 @getInt()
  store i32 %function_call_inst2, i32* @n
  br label %for_init
for_init:
  %load_inst2 = load i32, i32* @i
  store i32 0, i32* @i
  br label %for_condition
for_condition:
  %load_inst3 = load i32, i32* @i
  %load_inst4 = load i32, i32* @n
  %r = icmp slt i32 %load_inst3, %load_inst4
  br i1 %r, label %for_repeat, label %for_exit
for_step:
  %load_inst17 = load i32, i32* @i
  %add_inst = add i32 1, %load_inst17
  store i32 %add_inst, i32* @i
  br label %for_condition
for_repeat:
  %load_inst5 = load i32, i32* @p
  %function_call_inst3 = call i32 @getInt()
  store i32 %function_call_inst3, i32* @p
  %load_inst6 = load i32, i32* @q
  %function_call_inst4 = call i32 @getInt()
  store i32 %function_call_inst4, i32* @q
  %load_inst7 = load i32, i32* @r
  %function_call_inst5 = call i32 @getInt()
  store i32 %function_call_inst5, i32* @r
  %load_inst8 = load i32, i32* @x
  %load_inst9 = load i32, i32* @x
  %load_inst10 = load i32, i32* @p
  %r2 = add i32 %load_inst9, %load_inst10
  store i32 %r2, i32* @x
  %load_inst11 = load i32, i32* @y
  %load_inst12 = load i32, i32* @y
  %load_inst13 = load i32, i32* @q
  %r3 = add i32 %load_inst12, %load_inst13
  store i32 %r3, i32* @y
  %load_inst14 = load i32, i32* @z
  %load_inst15 = load i32, i32* @z
  %load_inst16 = load i32, i32* @r
  %r4 = add i32 %load_inst15, %load_inst16
  store i32 %r4, i32* @z
  br label %for_step
for_exit:
  %load_inst18 = load i32, i32* @x
  %r5 = icmp eq i32 %load_inst18, 0
  assign allo, 0
  br i1 %r5, label %logic_right, label %logic_exit
if_true:
  %get_element_ptr_inst = getelementptr inbounds [4 x i8], [4 x i8]* @const_str, i32 0, i32 0
  call void @print(i8* %get_element_ptr_inst)
  br label %if_exit
if_false:
  %get_element_ptr_inst2 = getelementptr inbounds [3 x i8], [3 x i8]* @const_str2, i32 0, i32 0
  call void @print(i8* %get_element_ptr_inst2)
  br label %if_exit
if_exit:
  br label %mainexit
logic_right:
  %load_inst19 = load i32, i32* @y
  %r6 = icmp eq i32 %load_inst19, 0
  assign allo, %r6
  br label %logic_exit
logic_exit:
  assign allo, 0
  br i1 allo, label %logic_right2, label %logic_exit2
logic_right2:
  %load_inst20 = load i32, i32* @z
  %r7 = icmp eq i32 %load_inst20, 0
  assign allo, %r7
  br label %logic_exit2
logic_exit2:
  br i1 allo, label %if_true, label %if_false
mainexit:
  ret i32 0
  ret i32 allo
}

define dso_local void @__init_function__() #0 {
__init_function__entry:
  store i32 0, i32* @p
  store i32 0, i32* @q
  store i32 0, i32* @r
  store i32 0, i32* @x
  store i32 0, i32* @y
  store i32 0, i32* @z
  store i32 0, i32* @n
  store i32 0, i32* @i
  br label %__init_function__exit
__init_function__exit:
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}
