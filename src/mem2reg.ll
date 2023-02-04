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

@MAXK = dso_local global i32 zeroinitializer
@MAXN = dso_local global i32 zeroinitializer

define dso_local i32 @main() #0 {
mainentry:
  call void @__init_function__()
  br label %first_block__main
first_block__main:
  store i32 0, i32 point
  %load_inst = load i32, i32* @MAXK
  %array_size = mul i32 4, %load_inst
  %alloca_size = add i32 4, %array_size
  %function_call_inst2 = call i8* @__built_in_malloc(i32 %alloca_size)
  %bit_cast_inst = bitcast i8* %function_call_inst2 to i32*
  store i32 %load_inst, i32* %bit_cast_inst
  %get_element_ptr_inst = getelementptr inbounds i32, i32* %bit_cast_inst, i32 1
  %arr_head = bitcast i32* %get_element_ptr_inst to i32*
  store i32* %arr_head, i32* new_result
  store i32* new_result, i32* tmp
  store i32* tmp, i32* primes
  %load_inst3 = load i32, i32* @MAXK
  %array_size2 = mul i32 4, %load_inst3
  %alloca_size2 = add i32 4, %array_size2
  %function_call_inst3 = call i8* @__built_in_malloc(i32 %alloca_size2)
  %bit_cast_inst2 = bitcast i8* %function_call_inst3 to i32*
  store i32 %load_inst3, i32* %bit_cast_inst2
  %get_element_ptr_inst2 = getelementptr inbounds i32, i32* %bit_cast_inst2, i32 1
  %arr_head2 = bitcast i32* %get_element_ptr_inst2 to i32*
  store i32* %arr_head2, i32* new_result
  store i32* new_result, i32* tmp
  store i32* tmp, i32* pindex
  %load_inst5 = load i32, i32* @MAXN
  %array_size3 = mul i32 4, %load_inst5
  %alloca_size3 = add i32 4, %array_size3
  %function_call_inst4 = call i8* @__built_in_malloc(i32 %alloca_size3)
  %bit_cast_inst3 = bitcast i8* %function_call_inst4 to i32*
  store i32 %load_inst5, i32* %bit_cast_inst3
  %get_element_ptr_inst3 = getelementptr inbounds i32, i32* %bit_cast_inst3, i32 1
  %arr_head3 = bitcast i32* %get_element_ptr_inst3 to i32*
  store i32* %arr_head3, i32* new_result
  store i32* new_result, i32* tmp
  store i32* tmp, i32* ans
  store i32 K, i32 tmp
  %function_call_inst5 = call i32 @getInt()
  store i32 %function_call_inst5, i32 K
  store i32 N, i32 tmp
  %function_call_inst6 = call i32 @getInt()
  store i32 %function_call_inst6, i32 N
  br label %for_init
for_init:
  store i32 i, i32 tmp
  store i32 0, i32 i
  br label %for_condition
for_condition:
  store i32 i, i32 tmp
  store i32 K, i32 tmp
  %r = icmp slt i32 tmp, tmp
  br i1 %r, label %for_repeat, label %for_exit
for_step:
  store i32 i, i32 tmp
  %add_inst = add i32 1, tmp
  store i32 %add_inst, i32 i
  br label %for_condition
for_repeat:
  store i32 i, i32 tmp
  store i32* primes, i32* tmp
  %get_element_ptr_inst4 = getelementptr inbounds i32, i32* tmp, i32 tmp
  %function_call_inst7 = call i32 @getInt()
  store i32 %function_call_inst7, i32* %get_element_ptr_inst4
  store i32 i, i32 tmp
  store i32* pindex, i32* tmp
  %get_element_ptr_inst5 = getelementptr inbounds i32, i32* tmp, i32 tmp
  store i32 0, i32* %get_element_ptr_inst5
  br label %for_step
for_exit:
  store i32* ans, i32* tmp
  %get_element_ptr_inst6 = getelementptr inbounds i32, i32* tmp, i32 0
  store i32 1, i32* %get_element_ptr_inst6
  br label %while_condition
while_condition:
  store i32 point, i32 tmp
  store i32 N, i32 tmp
  %r2 = icmp sle i32 tmp, tmp
  br i1 %r2, label %while_repeat, label %while_exit
while_repeat:
  store i32 MIN, i32 tmp
  store i32 2139062143, i32 MIN
  br label %for_init2
while_exit:
  store i32 N, i32 tmp
  store i32* ans, i32* tmp
  %get_element_ptr_inst19 = getelementptr inbounds i32, i32* tmp, i32 tmp
  %load_inst64 = load i32, i32* %get_element_ptr_inst19
  %function_call_inst8 = call i8* @toString(i32 %load_inst64)
  store i8* %function_call_inst8, i8* allo_inst
  store i8* allo_inst, i8* tmp
  call void @print(i8* tmp)
  ret i32 0
  br label %mainexit
for_init2:
  store i32 i, i32 tmp
  store i32 0, i32 i
  br label %for_condition2
for_condition2:
  store i32 i, i32 tmp
  store i32 K, i32 tmp
  %r3 = icmp slt i32 tmp, tmp
  br i1 %r3, label %for_repeat2, label %for_exit2
for_step2:
  store i32 i, i32 tmp
  %add_inst3 = add i32 1, tmp
  store i32 %add_inst3, i32 i
  br label %for_condition2
for_repeat2:
  br label %while_condition2
for_exit2:
  store i32 point, i32 tmp
  %add_inst4 = add i32 1, tmp
  store i32 %add_inst4, i32 point
  store i32* ans, i32* tmp
  %get_element_ptr_inst18 = getelementptr inbounds i32, i32* tmp, i32 %add_inst4
  store i32 MIN, i32 tmp
  store i32 tmp, i32* %get_element_ptr_inst18
  br label %while_condition
while_condition2:
  store i32 point, i32 tmp
  store i32* ans, i32* tmp
  %get_element_ptr_inst7 = getelementptr inbounds i32, i32* tmp, i32 tmp
  store i32 i, i32 tmp
  store i32* primes, i32* tmp
  %get_element_ptr_inst8 = getelementptr inbounds i32, i32* tmp, i32 tmp
  store i32 i, i32 tmp
  store i32* pindex, i32* tmp
  %get_element_ptr_inst9 = getelementptr inbounds i32, i32* tmp, i32 tmp
  %load_inst30 = load i32, i32* %get_element_ptr_inst9
  store i32* ans, i32* tmp
  %get_element_ptr_inst10 = getelementptr inbounds i32, i32* tmp, i32 %load_inst30
  %load_inst32 = load i32, i32* %get_element_ptr_inst8
  %load_inst33 = load i32, i32* %get_element_ptr_inst10
  %r4 = mul i32 %load_inst32, %load_inst33
  %load_inst34 = load i32, i32* %get_element_ptr_inst7
  %r5 = icmp sge i32 %load_inst34, %r4
  br i1 %r5, label %while_repeat2, label %while_exit2
while_repeat2:
  store i32 i, i32 tmp
  store i32* pindex, i32* tmp
  %get_element_ptr_inst11 = getelementptr inbounds i32, i32* tmp, i32 tmp
  %load_inst37 = load i32, i32* %get_element_ptr_inst11
  %add_inst2 = add i32 1, %load_inst37
  store i32 %add_inst2, i32* %get_element_ptr_inst11
  br label %while_condition2
while_exit2:
  store i32 i, i32 tmp
  store i32* primes, i32* tmp
  %get_element_ptr_inst12 = getelementptr inbounds i32, i32* tmp, i32 tmp
  store i32 i, i32 tmp
  store i32* pindex, i32* tmp
  %get_element_ptr_inst13 = getelementptr inbounds i32, i32* tmp, i32 tmp
  %load_inst42 = load i32, i32* %get_element_ptr_inst13
  store i32* ans, i32* tmp
  %get_element_ptr_inst14 = getelementptr inbounds i32, i32* tmp, i32 %load_inst42
  %load_inst44 = load i32, i32* %get_element_ptr_inst12
  %load_inst45 = load i32, i32* %get_element_ptr_inst14
  %r6 = mul i32 %load_inst44, %load_inst45
  store i32 MIN, i32 tmp
  %r7 = icmp slt i32 %r6, tmp
  br i1 %r7, label %if_true, label %if_false
if_true:
  store i32 MIN, i32 tmp
  store i32 i, i32 tmp
  store i32* primes, i32* tmp
  %get_element_ptr_inst15 = getelementptr inbounds i32, i32* tmp, i32 tmp
  store i32 i, i32 tmp
  store i32* pindex, i32* tmp
  %get_element_ptr_inst16 = getelementptr inbounds i32, i32* tmp, i32 tmp
  %load_inst52 = load i32, i32* %get_element_ptr_inst16
  store i32* ans, i32* tmp
  %get_element_ptr_inst17 = getelementptr inbounds i32, i32* tmp, i32 %load_inst52
  %load_inst54 = load i32, i32* %get_element_ptr_inst15
  %load_inst55 = load i32, i32* %get_element_ptr_inst17
  %r8 = mul i32 %load_inst54, %load_inst55
  store i32 %r8, i32 MIN
  store i32 k, i32 tmp
  store i32 i, i32 tmp
  store i32 tmp, i32 k
  br label %if_exit
if_false:
  br label %if_exit
if_exit:
  br label %for_step2
mainexit:
  ret i32 0
  store i32 allo, i32 tmp
  ret i32 tmp
}

define dso_local void @__init_function__() #0 {
__init_function__entry:
  store i32 105, i32* @MAXK
  store i32 100005, i32* @MAXN
  br label %__init_function__exit
__init_function__exit:
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}
