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

%struct.foo = type { i32, i32, i32, i32, i32, i32 }

@a = dso_local global i32 zeroinitializer
@b = dso_local global i32 zeroinitializer
@c = dso_local global i32 zeroinitializer
@tmp = dso_local global %struct.foo* zeroinitializer

define dso_local void @__constructor__foo(%struct.foo* %__constructor__foo_this) #0 {
__constructor__fooentry:
  %this_alloca = alloca %struct.foo*
  store %struct.foo* %__constructor__foo_this, %struct.foo** %this_alloca
  %load_inst2 = load %struct.foo*, %struct.foo** %this_alloca
  %load_inst3 = load %struct.foo*, %struct.foo** %this_alloca
  %load_inst4 = load %struct.foo*, %struct.foo** %this_alloca
  %load_inst5 = load %struct.foo*, %struct.foo** %this_alloca
  %load_inst6 = load %struct.foo*, %struct.foo** %this_alloca
  %load_inst7 = load %struct.foo*, %struct.foo** %this_alloca
  br label %first_block____constructor__foo
first_block____constructor__foo:
  %occupy_empty_block = alloca i32
  br label %__constructor__fooexit
__constructor__fooexit:
  ret void
}

define dso_local i32 @f() #0 {
fentry:
  %occupy_empty_block2 = alloca i32
  br label %first_block__f
first_block__f:
  %load_inst8 = load %struct.foo*, %struct.foo** @tmp
  %get_element_ptr_inst7 = getelementptr inbounds %struct.foo, %struct.foo* %load_inst8, i32 0, i32 0
  br label %fexit
fexit:
  %occupy_empty_block3 = alloca i32
  %allo = alloca i32
  %load_inst9 = load i32, i32* %allo
  ret i32 %load_inst9
}

define dso_local i32 @main() #0 {
mainentry:
  call void @__init_function__()
  %a = alloca i32
  %b = alloca i32
  br label %first_block__main
first_block__main:
  %load_inst10 = load i32, i32* @c
  %load_inst11 = load i32, i32* %a
  %load_inst12 = load i32, i32* %b
  %r = add i32 %load_inst11, %load_inst12
  store i32 %r, i32* @c
  br label %mainexit
mainexit:
  ret i32 0
  %allo2 = alloca i32
  %load_inst13 = load i32, i32* %allo2
  ret i32 %load_inst13
}

define dso_local void @__init_function__() #0 {
__init_function__entry:
  store i32 0, i32* @a
  store i32 0, i32* @b
  store i32 0, i32* @c
  %function_call_inst = call i8* @__built_in_malloc(i32 24)
  %bit_cast_inst = bitcast i8* %function_call_inst to %struct.foo*
  call void @__constructor__foo(%struct.foo* %bit_cast_inst)
  %alloca_inst = alloca %struct.foo*
  store %struct.foo* %bit_cast_inst, %struct.foo** %alloca_inst
  %load_inst = load %struct.foo*, %struct.foo** %alloca_inst
  store %struct.foo* %load_inst, %struct.foo** @tmp
  br label %__init_function__exit
__init_function__exit:
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}
