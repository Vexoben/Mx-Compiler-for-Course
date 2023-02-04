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

@const_str = private unnamed_addr constant [9 x i8] c"eternal!\00"

%struct.older = type { i32 }

define dso_local i32 @main() #0 {
mainentry:
  call void @__init_function__()
  br label %first_block__main
first_block__main:
  %function_call_inst2 = call i8* @__built_in_malloc(i32 4)
  %bit_cast_inst = bitcast i8* %function_call_inst2 to %struct.older*
  call void @__constructor__older(%struct.older* %bit_cast_inst)
  assign alloca_inst, %bit_cast_inst
  assign tmp, alloca_inst
  assign mrJiang, tmp
  assign tmp, mrJiang
  call void @__in_class__older_solveAge(%struct.older* tmp)
  assign tmp, mrJiang
  %get_element_ptr_inst3 = getelementptr inbounds %struct.older, %struct.older* tmp, i32 0, i32 0
  %load_inst41 = load i32, i32* %get_element_ptr_inst3
  %r34 = icmp sgt i32 %load_inst41, 10000
  br i1 %r34, label %if_true2, label %if_false2
if_true2:
  %get_element_ptr_inst4 = getelementptr inbounds [9 x i8], [9 x i8]* @const_str, i32 0, i32 0
  call void @println(i8* %get_element_ptr_inst4)
  br label %if_exit2
if_false2:
  br label %if_exit2
if_exit2:
  ret i32 0
  br label %mainexit
mainexit:
  ret i32 0
  assign tmp, allo
  ret i32 tmp
}

define dso_local void @__init_function__() #0 {
__init_function__entry:
  br label %__init_function__exit
__init_function__exit:
  ret void
}

define dso_local void @__in_class__older_solveAge(%struct.older* %__in_class__older_solveAge_this) #0 {
__in_class__older_solveAgeentry:
  assign this_alloca, %__in_class__older_solveAge_this
  br label %first_block____in_class__older_solveAge
first_block____in_class__older_solveAge:
  br label %for_init
for_init:
  assign tmp, i
  assign i, 1
  br label %for_condition
for_condition:
  assign tmp, i
  %r = icmp slt i32 tmp, 100
  br i1 %r, label %for_repeat, label %for_exit
for_step:
  assign tmp, i
  %add_inst3 = add i32 1, tmp
  assign i, %add_inst3
  br label %for_condition
for_repeat:
  br label %for_init2
for_exit:
  br label %__in_class__older_solveAgeexit
for_init2:
  assign tmp, j
  assign tmp, i
  %r2 = add i32 tmp, 1
  assign j, %r2
  br label %for_condition2
for_condition2:
  assign tmp, j
  %r3 = icmp slt i32 tmp, 100
  br i1 %r3, label %for_repeat2, label %for_exit2
for_step2:
  assign tmp, j
  %add_inst2 = add i32 1, tmp
  assign j, %add_inst2
  br label %for_condition2
for_repeat2:
  br label %for_init3
for_exit2:
  br label %for_step
for_init3:
  assign tmp, k
  assign tmp, j
  %r4 = add i32 tmp, 1
  assign k, %r4
  br label %for_condition3
for_condition3:
  assign tmp, k
  %r5 = icmp slt i32 tmp, 100
  br i1 %r5, label %for_repeat3, label %for_exit3
for_step3:
  assign tmp, k
  %add_inst = add i32 1, tmp
  assign k, %add_inst
  br label %for_condition3
for_repeat3:
  assign tmp, i
  assign tmp, i
  %r6 = sub i32 tmp, tmp
  assign tmp, i
  %r7 = add i32 %r6, tmp
  assign tmp, j
  %r8 = add i32 %r7, tmp
  assign tmp, j
  %r9 = sub i32 %r8, tmp
  assign tmp, j
  %r10 = add i32 %r9, tmp
  assign tmp, k
  %r11 = add i32 %r10, tmp
  assign tmp, k
  %r12 = sub i32 %r11, tmp
  assign tmp, k
  %r13 = add i32 %r12, tmp
  assign tmp, i
  %r14 = mul i32 100, tmp
  assign tmp, j
  %r15 = mul i32 10, tmp
  %r16 = add i32 %r14, %r15
  assign tmp, k
  %r17 = add i32 %r16, tmp
  %r18 = mul i32 %r13, %r17
  %r19 = srem i32 %r18, 1926
  %r20 = icmp eq i32 %r19, 0
  br i1 %r20, label %if_true, label %if_false
for_exit3:
  br label %for_step2
if_true:
  assign tmp, this_alloca
  %get_element_ptr_inst2 = getelementptr inbounds %struct.older, %struct.older* tmp, i32 0, i32 0
  assign tmp, i
  assign tmp, i
  %r21 = sub i32 tmp, tmp
  assign tmp, i
  %r22 = add i32 %r21, tmp
  assign tmp, j
  %r23 = add i32 %r22, tmp
  assign tmp, j
  %r24 = sub i32 %r23, tmp
  assign tmp, j
  %r25 = add i32 %r24, tmp
  assign tmp, k
  %r26 = add i32 %r25, tmp
  assign tmp, k
  %r27 = sub i32 %r26, tmp
  assign tmp, k
  %r28 = add i32 %r27, tmp
  assign tmp, i
  %r29 = mul i32 100, tmp
  assign tmp, j
  %r30 = mul i32 10, tmp
  %r31 = add i32 %r29, %r30
  assign tmp, k
  %r32 = add i32 %r31, tmp
  %r33 = mul i32 %r28, %r32
  store i32 %r33, i32* %get_element_ptr_inst2
  br label %if_exit
if_false:
  br label %if_exit
if_exit:
  br label %for_step3
__in_class__older_solveAgeexit:
  ret void
}

define dso_local void @__constructor__older(%struct.older* %__constructor__older_this) #0 {
__constructor__olderentry:
  assign this_alloca, %__constructor__older_this
  assign tmp, this_alloca
  br label %first_block____constructor__older
first_block____constructor__older:
  br label %__constructor__olderexit
__constructor__olderexit:
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}
