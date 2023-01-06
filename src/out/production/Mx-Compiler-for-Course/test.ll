; ModuleID = 'test.mx'
source_filename = "test.mx"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

declare i8* @__built_in_malloc(i32)
declare void @print(i8*)
declare void @println(i8*)
declare void @printInt(i32)
declare void @printlnInt(i32)
declare i8** @getString()
declare i32 @getInt()
declare i8** @toString(i32)
declare i32 @__built_in_length(i8*)
declare i8** @__built_in_substring(i8*, i32, i32)
declare i32 @__built_in_parseInt(i8*)
declare i32 @__built_in_ord(i8*, i32)
declare i8** @__build_in_str_add(i8*, i8*)
declare i1 @__build_in_str_eq(i8*, i8*)
declare i1 @__build_in_str_neq(i8*, i8*)
declare i1 @__build_in_str_sle(i8*, i8*)
declare i1 @__build_in_str_slt(i8*, i8*)
declare i1 @__build_in_str_sge(i8*, i8*)
declare i1 @__build_in_str_sgt(i8*, i8*)

@const_str = private unnamed_addr constant [4 x i8] c"yep\00"

%struct.foo = type {}

define dso_local void @__constructor__foo(%struct.foo* %__constructor__foo_this) #0 {
__constructor__fooentry:
  %this_alloca = alloca %struct.foo*
  store %struct.foo* %__constructor__foo_this, %struct.foo** %this_alloca
  br label %first_block____constructor__foo
first_block____constructor__foo:
  %occupy_empty_block = alloca i32
  br label %__constructor__fooexit
__constructor__fooexit:
  ret void
}

define dso_local i32 @main() #0 {
mainentry:
  call void @__init_function__()
  %arr = alloca %struct.foo**
  br label %first_block__main
first_block__main:
  %new_result = alloca %struct.foo**
  %array_size = mul i32 8, 10
  %alloca_size = add i32 4, %array_size
  %function_call_inst2 = call i8* @__built_in_malloc(i32 %alloca_size)
  %bit_cast_inst = bitcast i8* %function_call_inst2 to i32*
  store i32 10, i32* %bit_cast_inst
  %get_element_ptr_inst = getelementptr inbounds i32, i32* %bit_cast_inst, i32 1
  %arr_head = bitcast i32* %get_element_ptr_inst to %struct.foo**
  %arr_tail = getelementptr inbounds %struct.foo*, %struct.foo** %arr_head, i32 10
  %arr_cur_ptr = alloca %struct.foo**
  store %struct.foo** %arr_head, %struct.foo*** %arr_cur_ptr
  br label %while_condition
while_condition:
  %arr_cur = load %struct.foo**, %struct.foo*** %arr_cur_ptr
  %reach_end = icmp eq %struct.foo** %arr_cur, %arr_tail
  br i1 %reach_end, label %while_exit, label %while_repeat
while_repeat:
  store %struct.foo* null, %struct.foo** %arr_cur
  %get_element_ptr_inst2 = getelementptr inbounds %struct.foo*, %struct.foo** %arr_cur, i32 1
  store %struct.foo** %get_element_ptr_inst2, %struct.foo*** %arr_cur_ptr
  br label %while_condition
while_exit:
  store %struct.foo** %arr_head, %struct.foo*** %new_result
  %load_inst = load %struct.foo**, %struct.foo*** %new_result
  store %struct.foo** %load_inst, %struct.foo*** %arr
  %load_inst2 = load %struct.foo**, %struct.foo*** %arr
  %get_element_ptr_inst3 = getelementptr inbounds %struct.foo*, %struct.foo** %load_inst2, i32 1
  store %struct.foo* null, %struct.foo** %get_element_ptr_inst3
  %load_inst3 = load %struct.foo**, %struct.foo*** %arr
  %get_element_ptr_inst4 = getelementptr inbounds %struct.foo*, %struct.foo** %load_inst3, i32 1
  %load_inst4 = load %struct.foo*, %struct.foo** %get_element_ptr_inst4
  %r = icmp eq %struct.foo* %load_inst4, null
  br i1 %r, label %if_true, label %if_false
if_true:
  %get_element_ptr_inst5 = getelementptr inbounds [4 x i8], [4 x i8]* @const_str, i32 0, i32 0
  call void @println(i8* %get_element_ptr_inst5)
  br label %if_exit
if_false:
  %occupy_empty_block2 = alloca i32
  br label %if_exit
if_exit:
  ret i32 0
  br label %mainexit
mainexit:
  ret i32 0
  %allo = alloca i32
  %load_inst5 = load i32, i32* %allo
  ret i32 %load_inst5
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
