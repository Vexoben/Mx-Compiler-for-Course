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
declare i8* @__build_in_str_eq(i8*, i8*)
declare i8* @__build_in_str_neq(i8*, i8*)
declare i8* @__build_in_str_sle(i8*, i8*)
declare i8* @__build_in_str_slt(i8*, i8*)
declare i8* @__build_in_str_sge(i8*, i8*)
declare i8* @__build_in_str_sgt(i8*, i8*)

%struct.foo = type { i32 }

define dso_local %struct.foo** @__in_class__foo_get_this(%struct.foo* %__in_class__foo_get_this_this) #0 {
__in_class__foo_get_thisentry:
  %this_alloca2 = alloca %struct.foo*
  store %struct.foo* %__in_class__foo_get_this_this, %struct.foo** %this_alloca2
  br label %first_block____in_class__foo_get_this
first_block____in_class__foo_get_this:
  ret %struct.foo** %this_alloca2
}

define dso_local void @__in_class__foo_f(%struct.foo* %__in_class__foo_f_this) #0 {
__in_class__foo_fentry:
  %this_alloca = alloca %struct.foo*
  store %struct.foo* %__in_class__foo_f_this, %struct.foo** %this_alloca
  br label %first_block____in_class__foo_f
first_block____in_class__foo_f:
  %load_inst4 = load %struct.foo*, %struct.foo** %this_alloca
  %get_element_ptr_inst3 = getelementptr inbounds %struct.foo, %struct.foo* %load_inst4, i32 0, i32 0
  %load_inst5 = load i32, i32* %get_element_ptr_inst3
  store i32 2, i32* %get_element_ptr_inst3
  br label %__in_class__foo_fexit
__in_class__foo_fexit:
  ret void
}

define dso_local void @__constructor__foo(%struct.foo* %__constructor__foo_this) #0 {
__constructor__fooentry:
  %this_alloca4 = alloca %struct.foo*
  store %struct.foo* %__constructor__foo_this, %struct.foo** %this_alloca4
  %load_inst = load %struct.foo*, %struct.foo** %this_alloca4
  br label %first_block____constructor__foo
first_block____constructor__foo:
  %load_inst2 = load %struct.foo*, %struct.foo** %this_alloca4
  %get_element_ptr_inst2 = getelementptr inbounds %struct.foo, %struct.foo* %load_inst2, i32 0, i32 0
  %load_inst3 = load i32, i32* %get_element_ptr_inst2
  store i32 9, i32* %get_element_ptr_inst2
  br label %__constructor__fooexit
__constructor__fooexit:
  ret void
}

define dso_local %struct.foo** @h() #0 {
hentry:
  %s = alloca %struct.foo*
  %allo = alloca %struct.foo
  store %struct.foo* %allo, %struct.foo** %s
  call void @__constructor__foo(%struct.foo* %allo)
  %h = alloca %struct.foo*
  %allo2 = alloca %struct.foo
  store %struct.foo* %allo2, %struct.foo** %h
  call void @__constructor__foo(%struct.foo* %allo2)
  %t = alloca %struct.foo*
  br label %first_block__h
first_block__h:
  %load_inst10 = load %struct.foo*, %struct.foo** %s
  call void @__in_class__foo_g(%struct.foo* %load_inst10)
  %load_inst11 = load %struct.foo*, %struct.foo** %s
  store %struct.foo* %load_inst11, %struct.foo** %h
  %load_inst12 = load %struct.foo*, %struct.foo** %h
  %function_call_inst4 = call %struct.foo** @__in_class__foo_get_this(%struct.foo* %load_inst12)
  %load_inst13 = load %struct.foo*, %struct.foo** %function_call_inst4
  store %struct.foo* %load_inst13, %struct.foo** %t
  ret %struct.foo** %t
}

define dso_local void @__in_class__foo_g(%struct.foo* %__in_class__foo_g_this) #0 {
__in_class__foo_gentry:
  %this_alloca3 = alloca %struct.foo*
  store %struct.foo* %__in_class__foo_g_this, %struct.foo** %this_alloca3
  br label %first_block____in_class__foo_g
first_block____in_class__foo_g:
  %load_inst6 = load %struct.foo*, %struct.foo** %this_alloca3
  %get_element_ptr_inst4 = getelementptr inbounds %struct.foo, %struct.foo* %load_inst6, i32 0, i32 0
  %load_inst7 = load i32, i32* %get_element_ptr_inst4
  store i32 2, i32* %get_element_ptr_inst4
  %load_inst8 = load %struct.foo*, %struct.foo** %this_alloca3
  %get_element_ptr_inst5 = getelementptr inbounds %struct.foo, %struct.foo* %load_inst8, i32 0, i32 0
  %load_inst9 = load i32, i32* %get_element_ptr_inst5
  store i32 4, i32* %get_element_ptr_inst5
  br label %__in_class__foo_gexit
__in_class__foo_gexit:
  ret void
}

define dso_local i32 @main() #0 {
mainentry:
  call void @__init_function__()
  br label %first_block__main
first_block__main:
  %function_call_inst6 = call %struct.foo** @h()
  %load_inst14 = load %struct.foo*, %struct.foo** %function_call_inst6
  %get_element_ptr_inst6 = getelementptr inbounds %struct.foo, %struct.foo* %load_inst14, i32 0, i32 0
  %load_inst15 = load i32, i32* %get_element_ptr_inst6
  call void @printlnInt(i32 %load_inst15)
  ret i32 0
  br label %mainexit
mainexit:
  ret i32 0
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
