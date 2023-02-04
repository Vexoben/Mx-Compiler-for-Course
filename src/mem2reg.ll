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

@const_str = private unnamed_addr constant [14 x i8] c"no solution!\0A\00"

define dso_local i32 @main() #0 {
mainentry:
  call void @__init_function__()
  br label %first_block__main
first_block__main:
  store i32 N, i32 tmp
  %function_call_inst2 = call i32 @getInt()
  store i32 %function_call_inst2, i32 N
  store i32 head, i32 tmp
  store i32 0, i32 head
  store i32 tail, i32 tmp
  store i32 0, i32 tail
  store i32 startx, i32 tmp
  store i32 0, i32 startx
  store i32 starty, i32 tmp
  store i32 0, i32 starty
  store i32 targetx, i32 tmp
  store i32 N, i32 tmp
  %r3 = sub i32 tmp, 1
  store i32 %r3, i32 targetx
  store i32 targety, i32 tmp
  store i32 N, i32 tmp
  %r4 = sub i32 tmp, 1
  store i32 %r4, i32 targety
  store i32 x, i32 tmp
  store i32 0, i32 x
  store i32 y, i32 tmp
  store i32 0, i32 y
  store i32 now, i32 tmp
  store i32 0, i32 now
  store i32 ok, i32 tmp
  store i32 0, i32 ok
  store i32 N, i32 tmp
  store i32 N, i32 tmp
  %r5 = mul i32 tmp, tmp
  %array_size = mul i32 4, %r5
  %alloca_size = add i32 4, %array_size
  %function_call_inst3 = call i8* @__built_in_malloc(i32 %alloca_size)
  %bit_cast_inst = bitcast i8* %function_call_inst3 to i32*
  store i32 %r5, i32* %bit_cast_inst
  %get_element_ptr_inst = getelementptr inbounds i32, i32* %bit_cast_inst, i32 1
  %arr_head = bitcast i32* %get_element_ptr_inst to i32*
  store i32* %arr_head, i32* new_result
  store i32* new_result, i32* tmp
  store i32* tmp, i32* xlist
  br label %for_init
for_init:
  store i32 i, i32 tmp
  store i32 0, i32 i
  br label %for_condition
for_condition:
  store i32 i, i32 tmp
  store i32 N, i32 tmp
  store i32 N, i32 tmp
  %r6 = mul i32 tmp, tmp
  %r7 = icmp slt i32 tmp, %r6
  br i1 %r7, label %for_repeat, label %for_exit
for_step:
  store i32 i, i32 tmp
  %add_inst = add i32 1, tmp
  store i32 %add_inst, i32 i
  br label %for_condition
for_repeat:
  store i32 i, i32 tmp
  store i32* xlist, i32* tmp
  %get_element_ptr_inst2 = getelementptr inbounds i32, i32* tmp, i32 tmp
  store i32 0, i32* %get_element_ptr_inst2
  br label %for_step
for_exit:
  store i32 N, i32 tmp
  store i32 N, i32 tmp
  %r8 = mul i32 tmp, tmp
  %array_size2 = mul i32 4, %r8
  %alloca_size2 = add i32 4, %array_size2
  %function_call_inst4 = call i8* @__built_in_malloc(i32 %alloca_size2)
  %bit_cast_inst2 = bitcast i8* %function_call_inst4 to i32*
  store i32 %r8, i32* %bit_cast_inst2
  %get_element_ptr_inst3 = getelementptr inbounds i32, i32* %bit_cast_inst2, i32 1
  %arr_head2 = bitcast i32* %get_element_ptr_inst3 to i32*
  store i32* %arr_head2, i32* new_result
  store i32* new_result, i32* tmp
  store i32* tmp, i32* ylist
  br label %for_init2
for_init2:
  store i32 i, i32 tmp
  store i32 0, i32 i
  br label %for_condition2
for_condition2:
  store i32 i, i32 tmp
  store i32 N, i32 tmp
  store i32 N, i32 tmp
  %r9 = mul i32 tmp, tmp
  %r10 = icmp slt i32 tmp, %r9
  br i1 %r10, label %for_repeat2, label %for_exit2
for_step2:
  store i32 i, i32 tmp
  %add_inst2 = add i32 1, tmp
  store i32 %add_inst2, i32 i
  br label %for_condition2
for_repeat2:
  store i32 i, i32 tmp
  store i32* ylist, i32* tmp
  %get_element_ptr_inst4 = getelementptr inbounds i32, i32* tmp, i32 tmp
  store i32 0, i32* %get_element_ptr_inst4
  br label %for_step2
for_exit2:
  store i32 N, i32 tmp
  %array_size3 = mul i32 8, tmp
  %alloca_size3 = add i32 4, %array_size3
  %function_call_inst5 = call i8* @__built_in_malloc(i32 %alloca_size3)
  %bit_cast_inst3 = bitcast i8* %function_call_inst5 to i32*
  store i32 tmp, i32* %bit_cast_inst3
  %get_element_ptr_inst5 = getelementptr inbounds i32, i32* %bit_cast_inst3, i32 1
  %arr_head3 = bitcast i32* %get_element_ptr_inst5 to i32**
  %arr_tail = getelementptr inbounds i32*, i32** %arr_head3, i32 tmp
  store i32** %arr_head3, i32** arr_cur_ptr
  br label %while_condition
while_condition:
  store i32** arr_cur_ptr, i32** tmp
  %reach_end = icmp eq i32** tmp, %arr_tail
  br i1 %reach_end, label %while_exit, label %while_repeat
while_repeat:
  %get_element_ptr_inst6 = getelementptr inbounds i32*, i32** tmp, i32 0
  store i32 0, i32** %get_element_ptr_inst6
  %get_element_ptr_inst7 = getelementptr inbounds i32*, i32** tmp, i32 1
  store i32** %get_element_ptr_inst7, i32** arr_cur_ptr
  br label %while_condition
while_exit:
  store i32** %arr_head3, i32** new_result
  store i32** new_result, i32** tmp
  store i32** tmp, i32** step
  br label %for_init3
for_init3:
  store i32 i, i32 tmp
  store i32 0, i32 i
  br label %for_condition3
for_condition3:
  store i32 i, i32 tmp
  store i32 N, i32 tmp
  %r11 = icmp slt i32 tmp, tmp
  br i1 %r11, label %for_repeat3, label %for_exit3
for_step3:
  store i32 i, i32 tmp
  %add_inst4 = add i32 1, tmp
  store i32 %add_inst4, i32 i
  br label %for_condition3
for_repeat3:
  store i32 i, i32 tmp
  store i32** step, i32** tmp
  %get_element_ptr_inst8 = getelementptr inbounds i32*, i32** tmp, i32 tmp
  store i32 N, i32 tmp
  %array_size4 = mul i32 4, tmp
  %alloca_size4 = add i32 4, %array_size4
  %function_call_inst6 = call i8* @__built_in_malloc(i32 %alloca_size4)
  %bit_cast_inst4 = bitcast i8* %function_call_inst6 to i32*
  store i32 tmp, i32* %bit_cast_inst4
  %get_element_ptr_inst9 = getelementptr inbounds i32, i32* %bit_cast_inst4, i32 1
  %arr_head4 = bitcast i32* %get_element_ptr_inst9 to i32*
  store i32* %arr_head4, i32* new_result
  store i32* new_result, i32* tmp
  store i32* tmp, i32** %get_element_ptr_inst8
  br label %for_init4
for_exit3:
  store i32* xlist, i32* tmp
  %get_element_ptr_inst12 = getelementptr inbounds i32, i32* tmp, i32 0
  store i32 startx, i32 tmp
  store i32 tmp, i32* %get_element_ptr_inst12
  store i32* ylist, i32* tmp
  %get_element_ptr_inst13 = getelementptr inbounds i32, i32* tmp, i32 0
  store i32 starty, i32 tmp
  store i32 tmp, i32* %get_element_ptr_inst13
  store i32 startx, i32 tmp
  store i32** step, i32** tmp
  %get_element_ptr_inst14 = getelementptr inbounds i32*, i32** tmp, i32 tmp
  store i32 starty, i32 tmp
  %load_inst63 = load i32*, i32** %get_element_ptr_inst14
  %get_element_ptr_inst15 = getelementptr inbounds i32, i32* %load_inst63, i32 tmp
  store i32 0, i32* %get_element_ptr_inst15
  br label %while_condition2
for_init4:
  store i32 j, i32 tmp
  store i32 0, i32 j
  br label %for_condition4
for_condition4:
  store i32 j, i32 tmp
  store i32 N, i32 tmp
  %r12 = icmp slt i32 tmp, tmp
  br i1 %r12, label %for_repeat4, label %for_exit4
for_step4:
  store i32 j, i32 tmp
  %add_inst3 = add i32 1, tmp
  store i32 %add_inst3, i32 j
  br label %for_condition4
for_repeat4:
  store i32 i, i32 tmp
  store i32** step, i32** tmp
  %get_element_ptr_inst10 = getelementptr inbounds i32*, i32** tmp, i32 tmp
  store i32 j, i32 tmp
  %load_inst53 = load i32*, i32** %get_element_ptr_inst10
  %get_element_ptr_inst11 = getelementptr inbounds i32, i32* %load_inst53, i32 tmp
  %sub_inst = sub i32 0, 1
  store i32 %sub_inst, i32* %get_element_ptr_inst11
  br label %for_step4
for_exit4:
  br label %for_step3
while_condition2:
  store i32 head, i32 tmp
  store i32 tail, i32 tmp
  %r13 = icmp sle i32 tmp, tmp
  br i1 %r13, label %while_repeat2, label %while_exit2
while_repeat2:
  store i32 now, i32 tmp
  store i32 head, i32 tmp
  store i32* xlist, i32* tmp
  %get_element_ptr_inst16 = getelementptr inbounds i32, i32* tmp, i32 tmp
  %load_inst69 = load i32, i32* %get_element_ptr_inst16
  store i32** step, i32** tmp
  %get_element_ptr_inst17 = getelementptr inbounds i32*, i32** tmp, i32 %load_inst69
  store i32 head, i32 tmp
  store i32* ylist, i32* tmp
  %get_element_ptr_inst18 = getelementptr inbounds i32, i32* tmp, i32 tmp
  %load_inst73 = load i32, i32* %get_element_ptr_inst18
  %load_inst74 = load i32*, i32** %get_element_ptr_inst17
  %get_element_ptr_inst19 = getelementptr inbounds i32, i32* %load_inst74, i32 %load_inst73
  %load_inst75 = load i32, i32* %get_element_ptr_inst19
  store i32 %load_inst75, i32 now
  store i32 x, i32 tmp
  store i32 head, i32 tmp
  store i32* xlist, i32* tmp
  %get_element_ptr_inst20 = getelementptr inbounds i32, i32* tmp, i32 tmp
  %load_inst79 = load i32, i32* %get_element_ptr_inst20
  %r14 = sub i32 %load_inst79, 1
  store i32 %r14, i32 x
  store i32 y, i32 tmp
  store i32 head, i32 tmp
  store i32* ylist, i32* tmp
  %get_element_ptr_inst21 = getelementptr inbounds i32, i32* tmp, i32 tmp
  %load_inst83 = load i32, i32* %get_element_ptr_inst21
  %r15 = sub i32 %load_inst83, 2
  store i32 %r15, i32 y
  store i32 x, i32 tmp
  store i32 N, i32 tmp
  %function_call_inst7 = call i1 @check(i32 tmp, i32 tmp)
  store i1 0, i1 allo
  br i1 %function_call_inst7, label %logic_right2, label %logic_exit2
while_exit2:
  store i32 ok, i32 tmp
  %r72 = icmp eq i32 tmp, 1
  br i1 %r72, label %if_true18, label %if_false18
if_true:
  store i32 tail, i32 tmp
  store i32 tail, i32 tmp
  %r17 = add i32 tmp, 1
  store i32 %r17, i32 tail
  store i32 tail, i32 tmp
  store i32* xlist, i32* tmp
  %get_element_ptr_inst24 = getelementptr inbounds i32, i32* tmp, i32 tmp
  store i32 x, i32 tmp
  store i32 tmp, i32* %get_element_ptr_inst24
  store i32 tail, i32 tmp
  store i32* ylist, i32* tmp
  %get_element_ptr_inst25 = getelementptr inbounds i32, i32* tmp, i32 tmp
  store i32 y, i32 tmp
  store i32 tmp, i32* %get_element_ptr_inst25
  store i32 x, i32 tmp
  store i32** step, i32** tmp
  %get_element_ptr_inst26 = getelementptr inbounds i32*, i32** tmp, i32 tmp
  store i32 y, i32 tmp
  %load_inst104 = load i32*, i32** %get_element_ptr_inst26
  %get_element_ptr_inst27 = getelementptr inbounds i32, i32* %load_inst104, i32 tmp
  store i32 now, i32 tmp
  %r18 = add i32 tmp, 1
  store i32 %r18, i32* %get_element_ptr_inst27
  store i32 x, i32 tmp
  store i32 targetx, i32 tmp
  %r19 = icmp eq i32 tmp, tmp
  store i1 0, i1 allo
  br i1 %r19, label %logic_right4, label %logic_exit4
if_false:
  br label %if_exit
if_exit:
  store i32 x, i32 tmp
  store i32 head, i32 tmp
  store i32* xlist, i32* tmp
  %get_element_ptr_inst28 = getelementptr inbounds i32, i32* tmp, i32 tmp
  %load_inst114 = load i32, i32* %get_element_ptr_inst28
  %r21 = sub i32 %load_inst114, 1
  store i32 %r21, i32 x
  store i32 y, i32 tmp
  store i32 head, i32 tmp
  store i32* ylist, i32* tmp
  %get_element_ptr_inst29 = getelementptr inbounds i32, i32* tmp, i32 tmp
  %load_inst118 = load i32, i32* %get_element_ptr_inst29
  %r22 = add i32 %load_inst118, 2
  store i32 %r22, i32 y
  store i32 x, i32 tmp
  store i32 N, i32 tmp
  %function_call_inst9 = call i1 @check(i32 tmp, i32 tmp)
  store i1 0, i1 allo
  br i1 %function_call_inst9, label %logic_right5, label %logic_exit5
logic_right2:
  store i32 y, i32 tmp
  store i32 N, i32 tmp
  %function_call_inst8 = call i1 @check(i32 tmp, i32 tmp)
  store i1 %function_call_inst8, i1 allo
  br label %logic_exit2
logic_exit2:
  store i1 allo, i1 tmp
  store i1 0, i1 allo
  br i1 tmp, label %logic_right3, label %logic_exit3
logic_right3:
  store i32 x, i32 tmp
  store i32** step, i32** tmp
  %get_element_ptr_inst22 = getelementptr inbounds i32*, i32** tmp, i32 tmp
  store i32 y, i32 tmp
  %load_inst91 = load i32*, i32** %get_element_ptr_inst22
  %get_element_ptr_inst23 = getelementptr inbounds i32, i32* %load_inst91, i32 tmp
  %sub_inst2 = sub i32 0, 1
  %load_inst92 = load i32, i32* %get_element_ptr_inst23
  %r16 = icmp eq i32 %load_inst92, %sub_inst2
  store i1 %r16, i1 allo
  br label %logic_exit3
logic_exit3:
  store i1 allo, i1 tmp
  br i1 tmp, label %if_true, label %if_false
if_true2:
  store i32 ok, i32 tmp
  store i32 1, i32 ok
  br label %if_exit2
if_false2:
  br label %if_exit2
if_exit2:
  br label %if_exit
logic_right4:
  store i32 y, i32 tmp
  store i32 targety, i32 tmp
  %r20 = icmp eq i32 tmp, tmp
  store i1 %r20, i1 allo
  br label %logic_exit4
logic_exit4:
  store i1 allo, i1 tmp
  br i1 tmp, label %if_true2, label %if_false2
if_true3:
  store i32 tail, i32 tmp
  store i32 tail, i32 tmp
  %r24 = add i32 tmp, 1
  store i32 %r24, i32 tail
  store i32 tail, i32 tmp
  store i32* xlist, i32* tmp
  %get_element_ptr_inst32 = getelementptr inbounds i32, i32* tmp, i32 tmp
  store i32 x, i32 tmp
  store i32 tmp, i32* %get_element_ptr_inst32
  store i32 tail, i32 tmp
  store i32* ylist, i32* tmp
  %get_element_ptr_inst33 = getelementptr inbounds i32, i32* tmp, i32 tmp
  store i32 y, i32 tmp
  store i32 tmp, i32* %get_element_ptr_inst33
  store i32 x, i32 tmp
  store i32** step, i32** tmp
  %get_element_ptr_inst34 = getelementptr inbounds i32*, i32** tmp, i32 tmp
  store i32 y, i32 tmp
  %load_inst139 = load i32*, i32** %get_element_ptr_inst34
  %get_element_ptr_inst35 = getelementptr inbounds i32, i32* %load_inst139, i32 tmp
  store i32 now, i32 tmp
  %r25 = add i32 tmp, 1
  store i32 %r25, i32* %get_element_ptr_inst35
  store i32 x, i32 tmp
  store i32 targetx, i32 tmp
  %r26 = icmp eq i32 tmp, tmp
  store i1 0, i1 allo
  br i1 %r26, label %logic_right7, label %logic_exit7
if_false3:
  br label %if_exit3
if_exit3:
  store i32 x, i32 tmp
  store i32 head, i32 tmp
  store i32* xlist, i32* tmp
  %get_element_ptr_inst36 = getelementptr inbounds i32, i32* tmp, i32 tmp
  %load_inst149 = load i32, i32* %get_element_ptr_inst36
  %r28 = add i32 %load_inst149, 1
  store i32 %r28, i32 x
  store i32 y, i32 tmp
  store i32 head, i32 tmp
  store i32* ylist, i32* tmp
  %get_element_ptr_inst37 = getelementptr inbounds i32, i32* tmp, i32 tmp
  %load_inst153 = load i32, i32* %get_element_ptr_inst37
  %r29 = sub i32 %load_inst153, 2
  store i32 %r29, i32 y
  store i32 x, i32 tmp
  store i32 N, i32 tmp
  %function_call_inst11 = call i1 @check(i32 tmp, i32 tmp)
  store i1 0, i1 allo
  br i1 %function_call_inst11, label %logic_right8, label %logic_exit8
logic_right5:
  store i32 y, i32 tmp
  store i32 N, i32 tmp
  %function_call_inst10 = call i1 @check(i32 tmp, i32 tmp)
  store i1 %function_call_inst10, i1 allo
  br label %logic_exit5
logic_exit5:
  store i1 allo, i1 tmp
  store i1 0, i1 allo
  br i1 tmp, label %logic_right6, label %logic_exit6
logic_right6:
  store i32 x, i32 tmp
  store i32** step, i32** tmp
  %get_element_ptr_inst30 = getelementptr inbounds i32*, i32** tmp, i32 tmp
  store i32 y, i32 tmp
  %load_inst126 = load i32*, i32** %get_element_ptr_inst30
  %get_element_ptr_inst31 = getelementptr inbounds i32, i32* %load_inst126, i32 tmp
  %sub_inst3 = sub i32 0, 1
  %load_inst127 = load i32, i32* %get_element_ptr_inst31
  %r23 = icmp eq i32 %load_inst127, %sub_inst3
  store i1 %r23, i1 allo
  br label %logic_exit6
logic_exit6:
  store i1 allo, i1 tmp
  br i1 tmp, label %if_true3, label %if_false3
if_true4:
  store i32 ok, i32 tmp
  store i32 1, i32 ok
  br label %if_exit4
if_false4:
  br label %if_exit4
if_exit4:
  br label %if_exit3
logic_right7:
  store i32 y, i32 tmp
  store i32 targety, i32 tmp
  %r27 = icmp eq i32 tmp, tmp
  store i1 %r27, i1 allo
  br label %logic_exit7
logic_exit7:
  store i1 allo, i1 tmp
  br i1 tmp, label %if_true4, label %if_false4
if_true5:
  store i32 tail, i32 tmp
  store i32 tail, i32 tmp
  %r31 = add i32 tmp, 1
  store i32 %r31, i32 tail
  store i32 tail, i32 tmp
  store i32* xlist, i32* tmp
  %get_element_ptr_inst40 = getelementptr inbounds i32, i32* tmp, i32 tmp
  store i32 x, i32 tmp
  store i32 tmp, i32* %get_element_ptr_inst40
  store i32 tail, i32 tmp
  store i32* ylist, i32* tmp
  %get_element_ptr_inst41 = getelementptr inbounds i32, i32* tmp, i32 tmp
  store i32 y, i32 tmp
  store i32 tmp, i32* %get_element_ptr_inst41
  store i32 x, i32 tmp
  store i32** step, i32** tmp
  %get_element_ptr_inst42 = getelementptr inbounds i32*, i32** tmp, i32 tmp
  store i32 y, i32 tmp
  %load_inst174 = load i32*, i32** %get_element_ptr_inst42
  %get_element_ptr_inst43 = getelementptr inbounds i32, i32* %load_inst174, i32 tmp
  store i32 now, i32 tmp
  %r32 = add i32 tmp, 1
  store i32 %r32, i32* %get_element_ptr_inst43
  store i32 x, i32 tmp
  store i32 targetx, i32 tmp
  %r33 = icmp eq i32 tmp, tmp
  store i1 0, i1 allo
  br i1 %r33, label %logic_right10, label %logic_exit10
if_false5:
  br label %if_exit5
if_exit5:
  store i32 x, i32 tmp
  store i32 head, i32 tmp
  store i32* xlist, i32* tmp
  %get_element_ptr_inst44 = getelementptr inbounds i32, i32* tmp, i32 tmp
  %load_inst184 = load i32, i32* %get_element_ptr_inst44
  %r35 = add i32 %load_inst184, 1
  store i32 %r35, i32 x
  store i32 y, i32 tmp
  store i32 head, i32 tmp
  store i32* ylist, i32* tmp
  %get_element_ptr_inst45 = getelementptr inbounds i32, i32* tmp, i32 tmp
  %load_inst188 = load i32, i32* %get_element_ptr_inst45
  %r36 = add i32 %load_inst188, 2
  store i32 %r36, i32 y
  store i32 x, i32 tmp
  store i32 N, i32 tmp
  %function_call_inst13 = call i1 @check(i32 tmp, i32 tmp)
  store i1 0, i1 allo
  br i1 %function_call_inst13, label %logic_right11, label %logic_exit11
logic_right8:
  store i32 y, i32 tmp
  store i32 N, i32 tmp
  %function_call_inst12 = call i1 @check(i32 tmp, i32 tmp)
  store i1 %function_call_inst12, i1 allo
  br label %logic_exit8
logic_exit8:
  store i1 allo, i1 tmp
  store i1 0, i1 allo
  br i1 tmp, label %logic_right9, label %logic_exit9
logic_right9:
  store i32 x, i32 tmp
  store i32** step, i32** tmp
  %get_element_ptr_inst38 = getelementptr inbounds i32*, i32** tmp, i32 tmp
  store i32 y, i32 tmp
  %load_inst161 = load i32*, i32** %get_element_ptr_inst38
  %get_element_ptr_inst39 = getelementptr inbounds i32, i32* %load_inst161, i32 tmp
  %sub_inst4 = sub i32 0, 1
  %load_inst162 = load i32, i32* %get_element_ptr_inst39
  %r30 = icmp eq i32 %load_inst162, %sub_inst4
  store i1 %r30, i1 allo
  br label %logic_exit9
logic_exit9:
  store i1 allo, i1 tmp
  br i1 tmp, label %if_true5, label %if_false5
if_true6:
  store i32 ok, i32 tmp
  store i32 1, i32 ok
  br label %if_exit6
if_false6:
  br label %if_exit6
if_exit6:
  br label %if_exit5
logic_right10:
  store i32 y, i32 tmp
  store i32 targety, i32 tmp
  %r34 = icmp eq i32 tmp, tmp
  store i1 %r34, i1 allo
  br label %logic_exit10
logic_exit10:
  store i1 allo, i1 tmp
  br i1 tmp, label %if_true6, label %if_false6
if_true7:
  store i32 tail, i32 tmp
  store i32 tail, i32 tmp
  %r38 = add i32 tmp, 1
  store i32 %r38, i32 tail
  store i32 tail, i32 tmp
  store i32* xlist, i32* tmp
  %get_element_ptr_inst48 = getelementptr inbounds i32, i32* tmp, i32 tmp
  store i32 x, i32 tmp
  store i32 tmp, i32* %get_element_ptr_inst48
  store i32 tail, i32 tmp
  store i32* ylist, i32* tmp
  %get_element_ptr_inst49 = getelementptr inbounds i32, i32* tmp, i32 tmp
  store i32 y, i32 tmp
  store i32 tmp, i32* %get_element_ptr_inst49
  store i32 x, i32 tmp
  store i32** step, i32** tmp
  %get_element_ptr_inst50 = getelementptr inbounds i32*, i32** tmp, i32 tmp
  store i32 y, i32 tmp
  %load_inst209 = load i32*, i32** %get_element_ptr_inst50
  %get_element_ptr_inst51 = getelementptr inbounds i32, i32* %load_inst209, i32 tmp
  store i32 now, i32 tmp
  %r39 = add i32 tmp, 1
  store i32 %r39, i32* %get_element_ptr_inst51
  store i32 x, i32 tmp
  store i32 targetx, i32 tmp
  %r40 = icmp eq i32 tmp, tmp
  store i1 0, i1 allo
  br i1 %r40, label %logic_right13, label %logic_exit13
if_false7:
  br label %if_exit7
if_exit7:
  store i32 x, i32 tmp
  store i32 head, i32 tmp
  store i32* xlist, i32* tmp
  %get_element_ptr_inst52 = getelementptr inbounds i32, i32* tmp, i32 tmp
  %load_inst219 = load i32, i32* %get_element_ptr_inst52
  %r42 = sub i32 %load_inst219, 2
  store i32 %r42, i32 x
  store i32 y, i32 tmp
  store i32 head, i32 tmp
  store i32* ylist, i32* tmp
  %get_element_ptr_inst53 = getelementptr inbounds i32, i32* tmp, i32 tmp
  %load_inst223 = load i32, i32* %get_element_ptr_inst53
  %r43 = sub i32 %load_inst223, 1
  store i32 %r43, i32 y
  store i32 x, i32 tmp
  store i32 N, i32 tmp
  %function_call_inst15 = call i1 @check(i32 tmp, i32 tmp)
  store i1 0, i1 allo
  br i1 %function_call_inst15, label %logic_right14, label %logic_exit14
logic_right11:
  store i32 y, i32 tmp
  store i32 N, i32 tmp
  %function_call_inst14 = call i1 @check(i32 tmp, i32 tmp)
  store i1 %function_call_inst14, i1 allo
  br label %logic_exit11
logic_exit11:
  store i1 allo, i1 tmp
  store i1 0, i1 allo
  br i1 tmp, label %logic_right12, label %logic_exit12
logic_right12:
  store i32 x, i32 tmp
  store i32** step, i32** tmp
  %get_element_ptr_inst46 = getelementptr inbounds i32*, i32** tmp, i32 tmp
  store i32 y, i32 tmp
  %load_inst196 = load i32*, i32** %get_element_ptr_inst46
  %get_element_ptr_inst47 = getelementptr inbounds i32, i32* %load_inst196, i32 tmp
  %sub_inst5 = sub i32 0, 1
  %load_inst197 = load i32, i32* %get_element_ptr_inst47
  %r37 = icmp eq i32 %load_inst197, %sub_inst5
  store i1 %r37, i1 allo
  br label %logic_exit12
logic_exit12:
  store i1 allo, i1 tmp
  br i1 tmp, label %if_true7, label %if_false7
if_true8:
  store i32 ok, i32 tmp
  store i32 1, i32 ok
  br label %if_exit8
if_false8:
  br label %if_exit8
if_exit8:
  br label %if_exit7
logic_right13:
  store i32 y, i32 tmp
  store i32 targety, i32 tmp
  %r41 = icmp eq i32 tmp, tmp
  store i1 %r41, i1 allo
  br label %logic_exit13
logic_exit13:
  store i1 allo, i1 tmp
  br i1 tmp, label %if_true8, label %if_false8
if_true9:
  store i32 tail, i32 tmp
  store i32 tail, i32 tmp
  %r45 = add i32 tmp, 1
  store i32 %r45, i32 tail
  store i32 tail, i32 tmp
  store i32* xlist, i32* tmp
  %get_element_ptr_inst56 = getelementptr inbounds i32, i32* tmp, i32 tmp
  store i32 x, i32 tmp
  store i32 tmp, i32* %get_element_ptr_inst56
  store i32 tail, i32 tmp
  store i32* ylist, i32* tmp
  %get_element_ptr_inst57 = getelementptr inbounds i32, i32* tmp, i32 tmp
  store i32 y, i32 tmp
  store i32 tmp, i32* %get_element_ptr_inst57
  store i32 x, i32 tmp
  store i32** step, i32** tmp
  %get_element_ptr_inst58 = getelementptr inbounds i32*, i32** tmp, i32 tmp
  store i32 y, i32 tmp
  %load_inst244 = load i32*, i32** %get_element_ptr_inst58
  %get_element_ptr_inst59 = getelementptr inbounds i32, i32* %load_inst244, i32 tmp
  store i32 now, i32 tmp
  %r46 = add i32 tmp, 1
  store i32 %r46, i32* %get_element_ptr_inst59
  store i32 x, i32 tmp
  store i32 targetx, i32 tmp
  %r47 = icmp eq i32 tmp, tmp
  store i1 0, i1 allo
  br i1 %r47, label %logic_right16, label %logic_exit16
if_false9:
  br label %if_exit9
if_exit9:
  store i32 x, i32 tmp
  store i32 head, i32 tmp
  store i32* xlist, i32* tmp
  %get_element_ptr_inst60 = getelementptr inbounds i32, i32* tmp, i32 tmp
  %load_inst254 = load i32, i32* %get_element_ptr_inst60
  %r49 = sub i32 %load_inst254, 2
  store i32 %r49, i32 x
  store i32 y, i32 tmp
  store i32 head, i32 tmp
  store i32* ylist, i32* tmp
  %get_element_ptr_inst61 = getelementptr inbounds i32, i32* tmp, i32 tmp
  %load_inst258 = load i32, i32* %get_element_ptr_inst61
  %r50 = add i32 %load_inst258, 1
  store i32 %r50, i32 y
  store i32 x, i32 tmp
  store i32 N, i32 tmp
  %function_call_inst17 = call i1 @check(i32 tmp, i32 tmp)
  store i1 0, i1 allo
  br i1 %function_call_inst17, label %logic_right17, label %logic_exit17
logic_right14:
  store i32 y, i32 tmp
  store i32 N, i32 tmp
  %function_call_inst16 = call i1 @check(i32 tmp, i32 tmp)
  store i1 %function_call_inst16, i1 allo
  br label %logic_exit14
logic_exit14:
  store i1 allo, i1 tmp
  store i1 0, i1 allo
  br i1 tmp, label %logic_right15, label %logic_exit15
logic_right15:
  store i32 x, i32 tmp
  store i32** step, i32** tmp
  %get_element_ptr_inst54 = getelementptr inbounds i32*, i32** tmp, i32 tmp
  store i32 y, i32 tmp
  %load_inst231 = load i32*, i32** %get_element_ptr_inst54
  %get_element_ptr_inst55 = getelementptr inbounds i32, i32* %load_inst231, i32 tmp
  %sub_inst6 = sub i32 0, 1
  %load_inst232 = load i32, i32* %get_element_ptr_inst55
  %r44 = icmp eq i32 %load_inst232, %sub_inst6
  store i1 %r44, i1 allo
  br label %logic_exit15
logic_exit15:
  store i1 allo, i1 tmp
  br i1 tmp, label %if_true9, label %if_false9
if_true10:
  store i32 ok, i32 tmp
  store i32 1, i32 ok
  br label %if_exit10
if_false10:
  br label %if_exit10
if_exit10:
  br label %if_exit9
logic_right16:
  store i32 y, i32 tmp
  store i32 targety, i32 tmp
  %r48 = icmp eq i32 tmp, tmp
  store i1 %r48, i1 allo
  br label %logic_exit16
logic_exit16:
  store i1 allo, i1 tmp
  br i1 tmp, label %if_true10, label %if_false10
if_true11:
  store i32 tail, i32 tmp
  store i32 tail, i32 tmp
  %r52 = add i32 tmp, 1
  store i32 %r52, i32 tail
  store i32 tail, i32 tmp
  store i32* xlist, i32* tmp
  %get_element_ptr_inst64 = getelementptr inbounds i32, i32* tmp, i32 tmp
  store i32 x, i32 tmp
  store i32 tmp, i32* %get_element_ptr_inst64
  store i32 tail, i32 tmp
  store i32* ylist, i32* tmp
  %get_element_ptr_inst65 = getelementptr inbounds i32, i32* tmp, i32 tmp
  store i32 y, i32 tmp
  store i32 tmp, i32* %get_element_ptr_inst65
  store i32 x, i32 tmp
  store i32** step, i32** tmp
  %get_element_ptr_inst66 = getelementptr inbounds i32*, i32** tmp, i32 tmp
  store i32 y, i32 tmp
  %load_inst279 = load i32*, i32** %get_element_ptr_inst66
  %get_element_ptr_inst67 = getelementptr inbounds i32, i32* %load_inst279, i32 tmp
  store i32 now, i32 tmp
  %r53 = add i32 tmp, 1
  store i32 %r53, i32* %get_element_ptr_inst67
  store i32 x, i32 tmp
  store i32 targetx, i32 tmp
  %r54 = icmp eq i32 tmp, tmp
  store i1 0, i1 allo
  br i1 %r54, label %logic_right19, label %logic_exit19
if_false11:
  br label %if_exit11
if_exit11:
  store i32 x, i32 tmp
  store i32 head, i32 tmp
  store i32* xlist, i32* tmp
  %get_element_ptr_inst68 = getelementptr inbounds i32, i32* tmp, i32 tmp
  %load_inst289 = load i32, i32* %get_element_ptr_inst68
  %r56 = add i32 %load_inst289, 2
  store i32 %r56, i32 x
  store i32 y, i32 tmp
  store i32 head, i32 tmp
  store i32* ylist, i32* tmp
  %get_element_ptr_inst69 = getelementptr inbounds i32, i32* tmp, i32 tmp
  %load_inst293 = load i32, i32* %get_element_ptr_inst69
  %r57 = sub i32 %load_inst293, 1
  store i32 %r57, i32 y
  store i32 x, i32 tmp
  store i32 N, i32 tmp
  %function_call_inst19 = call i1 @check(i32 tmp, i32 tmp)
  store i1 0, i1 allo
  br i1 %function_call_inst19, label %logic_right20, label %logic_exit20
logic_right17:
  store i32 y, i32 tmp
  store i32 N, i32 tmp
  %function_call_inst18 = call i1 @check(i32 tmp, i32 tmp)
  store i1 %function_call_inst18, i1 allo
  br label %logic_exit17
logic_exit17:
  store i1 allo, i1 tmp
  store i1 0, i1 allo
  br i1 tmp, label %logic_right18, label %logic_exit18
logic_right18:
  store i32 x, i32 tmp
  store i32** step, i32** tmp
  %get_element_ptr_inst62 = getelementptr inbounds i32*, i32** tmp, i32 tmp
  store i32 y, i32 tmp
  %load_inst266 = load i32*, i32** %get_element_ptr_inst62
  %get_element_ptr_inst63 = getelementptr inbounds i32, i32* %load_inst266, i32 tmp
  %sub_inst7 = sub i32 0, 1
  %load_inst267 = load i32, i32* %get_element_ptr_inst63
  %r51 = icmp eq i32 %load_inst267, %sub_inst7
  store i1 %r51, i1 allo
  br label %logic_exit18
logic_exit18:
  store i1 allo, i1 tmp
  br i1 tmp, label %if_true11, label %if_false11
if_true12:
  store i32 ok, i32 tmp
  store i32 1, i32 ok
  br label %if_exit12
if_false12:
  br label %if_exit12
if_exit12:
  br label %if_exit11
logic_right19:
  store i32 y, i32 tmp
  store i32 targety, i32 tmp
  %r55 = icmp eq i32 tmp, tmp
  store i1 %r55, i1 allo
  br label %logic_exit19
logic_exit19:
  store i1 allo, i1 tmp
  br i1 tmp, label %if_true12, label %if_false12
if_true13:
  store i32 tail, i32 tmp
  store i32 tail, i32 tmp
  %r59 = add i32 tmp, 1
  store i32 %r59, i32 tail
  store i32 tail, i32 tmp
  store i32* xlist, i32* tmp
  %get_element_ptr_inst72 = getelementptr inbounds i32, i32* tmp, i32 tmp
  store i32 x, i32 tmp
  store i32 tmp, i32* %get_element_ptr_inst72
  store i32 tail, i32 tmp
  store i32* ylist, i32* tmp
  %get_element_ptr_inst73 = getelementptr inbounds i32, i32* tmp, i32 tmp
  store i32 y, i32 tmp
  store i32 tmp, i32* %get_element_ptr_inst73
  store i32 x, i32 tmp
  store i32** step, i32** tmp
  %get_element_ptr_inst74 = getelementptr inbounds i32*, i32** tmp, i32 tmp
  store i32 y, i32 tmp
  %load_inst314 = load i32*, i32** %get_element_ptr_inst74
  %get_element_ptr_inst75 = getelementptr inbounds i32, i32* %load_inst314, i32 tmp
  store i32 now, i32 tmp
  %r60 = add i32 tmp, 1
  store i32 %r60, i32* %get_element_ptr_inst75
  store i32 x, i32 tmp
  store i32 targetx, i32 tmp
  %r61 = icmp eq i32 tmp, tmp
  store i1 0, i1 allo
  br i1 %r61, label %logic_right22, label %logic_exit22
if_false13:
  br label %if_exit13
if_exit13:
  store i32 x, i32 tmp
  store i32 head, i32 tmp
  store i32* xlist, i32* tmp
  %get_element_ptr_inst76 = getelementptr inbounds i32, i32* tmp, i32 tmp
  %load_inst324 = load i32, i32* %get_element_ptr_inst76
  %r63 = add i32 %load_inst324, 2
  store i32 %r63, i32 x
  store i32 y, i32 tmp
  store i32 head, i32 tmp
  store i32* ylist, i32* tmp
  %get_element_ptr_inst77 = getelementptr inbounds i32, i32* tmp, i32 tmp
  %load_inst328 = load i32, i32* %get_element_ptr_inst77
  %r64 = add i32 %load_inst328, 1
  store i32 %r64, i32 y
  store i32 x, i32 tmp
  store i32 N, i32 tmp
  %function_call_inst21 = call i1 @check(i32 tmp, i32 tmp)
  store i1 0, i1 allo
  br i1 %function_call_inst21, label %logic_right23, label %logic_exit23
logic_right20:
  store i32 y, i32 tmp
  store i32 N, i32 tmp
  %function_call_inst20 = call i1 @check(i32 tmp, i32 tmp)
  store i1 %function_call_inst20, i1 allo
  br label %logic_exit20
logic_exit20:
  store i1 allo, i1 tmp
  store i1 0, i1 allo
  br i1 tmp, label %logic_right21, label %logic_exit21
logic_right21:
  store i32 x, i32 tmp
  store i32** step, i32** tmp
  %get_element_ptr_inst70 = getelementptr inbounds i32*, i32** tmp, i32 tmp
  store i32 y, i32 tmp
  %load_inst301 = load i32*, i32** %get_element_ptr_inst70
  %get_element_ptr_inst71 = getelementptr inbounds i32, i32* %load_inst301, i32 tmp
  %sub_inst8 = sub i32 0, 1
  %load_inst302 = load i32, i32* %get_element_ptr_inst71
  %r58 = icmp eq i32 %load_inst302, %sub_inst8
  store i1 %r58, i1 allo
  br label %logic_exit21
logic_exit21:
  store i1 allo, i1 tmp
  br i1 tmp, label %if_true13, label %if_false13
if_true14:
  store i32 ok, i32 tmp
  store i32 1, i32 ok
  br label %if_exit14
if_false14:
  br label %if_exit14
if_exit14:
  br label %if_exit13
logic_right22:
  store i32 y, i32 tmp
  store i32 targety, i32 tmp
  %r62 = icmp eq i32 tmp, tmp
  store i1 %r62, i1 allo
  br label %logic_exit22
logic_exit22:
  store i1 allo, i1 tmp
  br i1 tmp, label %if_true14, label %if_false14
if_true15:
  store i32 tail, i32 tmp
  store i32 tail, i32 tmp
  %r66 = add i32 tmp, 1
  store i32 %r66, i32 tail
  store i32 tail, i32 tmp
  store i32* xlist, i32* tmp
  %get_element_ptr_inst80 = getelementptr inbounds i32, i32* tmp, i32 tmp
  store i32 x, i32 tmp
  store i32 tmp, i32* %get_element_ptr_inst80
  store i32 tail, i32 tmp
  store i32* ylist, i32* tmp
  %get_element_ptr_inst81 = getelementptr inbounds i32, i32* tmp, i32 tmp
  store i32 y, i32 tmp
  store i32 tmp, i32* %get_element_ptr_inst81
  store i32 x, i32 tmp
  store i32** step, i32** tmp
  %get_element_ptr_inst82 = getelementptr inbounds i32*, i32** tmp, i32 tmp
  store i32 y, i32 tmp
  %load_inst349 = load i32*, i32** %get_element_ptr_inst82
  %get_element_ptr_inst83 = getelementptr inbounds i32, i32* %load_inst349, i32 tmp
  store i32 now, i32 tmp
  %r67 = add i32 tmp, 1
  store i32 %r67, i32* %get_element_ptr_inst83
  store i32 x, i32 tmp
  store i32 targetx, i32 tmp
  %r68 = icmp eq i32 tmp, tmp
  store i1 0, i1 allo
  br i1 %r68, label %logic_right25, label %logic_exit25
if_false15:
  br label %if_exit15
if_exit15:
  store i32 ok, i32 tmp
  %r70 = icmp eq i32 tmp, 1
  br i1 %r70, label %if_true17, label %if_false17
logic_right23:
  store i32 y, i32 tmp
  store i32 N, i32 tmp
  %function_call_inst22 = call i1 @check(i32 tmp, i32 tmp)
  store i1 %function_call_inst22, i1 allo
  br label %logic_exit23
logic_exit23:
  store i1 allo, i1 tmp
  store i1 0, i1 allo
  br i1 tmp, label %logic_right24, label %logic_exit24
logic_right24:
  store i32 x, i32 tmp
  store i32** step, i32** tmp
  %get_element_ptr_inst78 = getelementptr inbounds i32*, i32** tmp, i32 tmp
  store i32 y, i32 tmp
  %load_inst336 = load i32*, i32** %get_element_ptr_inst78
  %get_element_ptr_inst79 = getelementptr inbounds i32, i32* %load_inst336, i32 tmp
  %sub_inst9 = sub i32 0, 1
  %load_inst337 = load i32, i32* %get_element_ptr_inst79
  %r65 = icmp eq i32 %load_inst337, %sub_inst9
  store i1 %r65, i1 allo
  br label %logic_exit24
logic_exit24:
  store i1 allo, i1 tmp
  br i1 tmp, label %if_true15, label %if_false15
if_true16:
  store i32 ok, i32 tmp
  store i32 1, i32 ok
  br label %if_exit16
if_false16:
  br label %if_exit16
if_exit16:
  br label %if_exit15
logic_right25:
  store i32 y, i32 tmp
  store i32 targety, i32 tmp
  %r69 = icmp eq i32 tmp, tmp
  store i1 %r69, i1 allo
  br label %logic_exit25
logic_exit25:
  store i1 allo, i1 tmp
  br i1 tmp, label %if_true16, label %if_false16
if_true17:
  br label %while_exit2
  br label %if_exit17
if_false17:
  br label %if_exit17
if_exit17:
  store i32 head, i32 tmp
  store i32 head, i32 tmp
  %r71 = add i32 tmp, 1
  store i32 %r71, i32 head
  br label %while_condition2
if_true18:
  store i32 targetx, i32 tmp
  store i32** step, i32** tmp
  %get_element_ptr_inst84 = getelementptr inbounds i32*, i32** tmp, i32 tmp
  store i32 targety, i32 tmp
  %load_inst363 = load i32*, i32** %get_element_ptr_inst84
  %get_element_ptr_inst85 = getelementptr inbounds i32, i32* %load_inst363, i32 tmp
  %load_inst364 = load i32, i32* %get_element_ptr_inst85
  %function_call_inst23 = call i8* @toString(i32 %load_inst364)
  store i8* %function_call_inst23, i8* allo_inst
  store i8* allo_inst, i8* tmp
  call void @println(i8* tmp)
  br label %if_exit18
if_false18:
  %get_element_ptr_inst86 = getelementptr inbounds [14 x i8], [14 x i8]* @const_str, i32 0, i32 0
  call void @print(i8* %get_element_ptr_inst86)
  br label %if_exit18
if_exit18:
  ret i32 0
  br label %mainexit
mainexit:
  ret i32 0
  store i32 allo, i32 tmp
  ret i32 tmp
}

define dso_local i1 @check(i32 %check_a, i32 %check_N) #0 {
checkentry:
  br label %first_block__check
first_block__check:
  store i32 %check_a, i32 a
  store i32 %check_N, i32 N
  store i32 a, i32 tmp
  store i32 N, i32 tmp
  %r = icmp slt i32 tmp, tmp
  store i1 0, i1 allo
  br i1 %r, label %logic_right, label %logic_exit
logic_right:
  store i32 a, i32 tmp
  %r2 = icmp sge i32 tmp, 0
  store i1 %r2, i1 allo
  br label %logic_exit
logic_exit:
  store i1 allo, i1 tmp
  ret i1 tmp
  br label %checkexit
checkexit:
  store i1 allo, i1 tmp
  ret i1 tmp
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
