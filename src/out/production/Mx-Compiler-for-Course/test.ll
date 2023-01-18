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

%struct.foo = type { i32 }

@a = dso_local global i32* zeroinitializer
@b = dso_local global %struct.foo** zeroinitializer

define dso_local void @__constructor__foo(%struct.foo* %__constructor__foo_this) #0 {
__constructor__fooentry:
  %this_alloca = alloca %struct.foo*
  store %struct.foo* %__constructor__foo_this, %struct.foo** %this_alloca
  %load_inst2 = load %struct.foo*, %struct.foo** %this_alloca
  br label %first_block____constructor__foo
first_block____constructor__foo:
  %load_inst3 = load %struct.foo*, %struct.foo** %this_alloca
  %get_element_ptr_inst3 = getelementptr inbounds %struct.foo, %struct.foo* %load_inst3, i32 0, i32 0
  store i32 2, i32* %get_element_ptr_inst3
  br label %__constructor__fooexit
__constructor__fooexit:
  ret void
}

define dso_local i32 @main() #0 {
mainentry:
  call void @__init_function__()
  %i = alloca i32
  %i2 = alloca i32
  br label %first_block__main
first_block__main:
  %new_result2 = alloca %struct.foo**
  %array_size2 = mul i32 8, 10
  %alloca_size2 = add i32 4, %array_size2
  %function_call_inst3 = call i8* @__built_in_malloc(i32 %alloca_size2)
  %bit_cast_inst2 = bitcast i8* %function_call_inst3 to i32*
  store i32 10, i32* %bit_cast_inst2
  %get_element_ptr_inst4 = getelementptr inbounds i32, i32* %bit_cast_inst2, i32 1
  %arr_head2 = bitcast i32* %get_element_ptr_inst4 to %struct.foo**
  %arr_tail = getelementptr inbounds %struct.foo*, %struct.foo** %arr_head2, i32 10
  %arr_cur_ptr = alloca %struct.foo**
  store %struct.foo** %arr_head2, %struct.foo*** %arr_cur_ptr
  br label %while_condition
while_condition:
  %arr_cur = load %struct.foo**, %struct.foo*** %arr_cur_ptr
  %reach_end = icmp eq %struct.foo** %arr_cur, %arr_tail
  br i1 %reach_end, label %while_exit, label %while_repeat
while_repeat:
  store %struct.foo* null, %struct.foo** %arr_cur
  %get_element_ptr_inst5 = getelementptr inbounds %struct.foo*, %struct.foo** %arr_cur, i32 1
  store %struct.foo** %get_element_ptr_inst5, %struct.foo*** %arr_cur_ptr
  br label %while_condition
while_exit:
  store %struct.foo** %arr_head2, %struct.foo*** %new_result2
  %load_inst4 = load %struct.foo**, %struct.foo*** %new_result2
  store %struct.foo** %load_inst4, %struct.foo*** @b
  br label %for_init
for_init:
  store i32 0, i32* %i
  br label %for_condition
for_condition:
  %load_inst5 = load i32, i32* %i
  %r = icmp slt i32 %load_inst5, 10
  br i1 %r, label %for_repeat, label %for_exit
for_step:
  %load_inst10 = load i32, i32* %i
  %add_inst = add i32 1, %load_inst10
  store i32 %add_inst, i32* %i
  br label %for_condition
for_repeat:
  %load_inst6 = load i32, i32* %i
  %load_inst7 = load %struct.foo**, %struct.foo*** @b
  %get_element_ptr_inst6 = getelementptr inbounds %struct.foo*, %struct.foo** %load_inst7, i32 %load_inst6
  %load_inst8 = load %struct.foo*, %struct.foo** %get_element_ptr_inst6
  %get_element_ptr_inst7 = getelementptr inbounds %struct.foo, %struct.foo* %load_inst8, i32 0, i32 0
  %load_inst9 = load i32, i32* %i
  store i32 %load_inst9, i32* %get_element_ptr_inst7
  br label %for_step
for_exit:
  %occupy_empty_block = alloca i32
  br label %for_init2
for_init2:
  store i32 0, i32* %i2
  br label %for_condition2
for_condition2:
  %load_inst11 = load i32, i32* %i2
  %r2 = icmp slt i32 %load_inst11, 10
  br i1 %r2, label %for_repeat2, label %for_exit2
for_step2:
  %load_inst16 = load i32, i32* %i2
  %add_inst2 = add i32 1, %load_inst16
  store i32 %add_inst2, i32* %i2
  br label %for_condition2
for_repeat2:
  %load_inst12 = load i32, i32* %i2
  %load_inst13 = load %struct.foo**, %struct.foo*** @b
  %get_element_ptr_inst8 = getelementptr inbounds %struct.foo*, %struct.foo** %load_inst13, i32 %load_inst12
  %load_inst14 = load %struct.foo*, %struct.foo** %get_element_ptr_inst8
  %get_element_ptr_inst9 = getelementptr inbounds %struct.foo, %struct.foo* %load_inst14, i32 0, i32 0
  %load_inst15 = load i32, i32* %get_element_ptr_inst9
  call void @printlnInt(i32 %load_inst15)
  br label %for_step2
for_exit2:
  ret i32 0
  br label %mainexit
mainexit:
  ret i32 0
  %allo = alloca i32
  %load_inst17 = load i32, i32* %allo
  ret i32 %load_inst17
}

define dso_local void @__init_function__() #0 {
__init_function__entry:
  %new_result = alloca i32*
  %array_size = mul i32 4, 10
  %alloca_size = add i32 4, %array_size
  %function_call_inst = call i8* @__built_in_malloc(i32 %alloca_size)
  %bit_cast_inst = bitcast i8* %function_call_inst to i32*
  store i32 10, i32* %bit_cast_inst
  %get_element_ptr_inst = getelementptr inbounds i32, i32* %bit_cast_inst, i32 1
  %arr_head = bitcast i32* %get_element_ptr_inst to i32*
  store i32* %arr_head, i32** %new_result
  %load_inst = load i32*, i32** %new_result
  store i32* %load_inst, i32** @a
  br label %__init_function__exit
__init_function__exit:
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}
