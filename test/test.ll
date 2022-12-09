; ModuleID = 'test.mx'
source_filename = "test.mx"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.foo = type { i32, i32 }

define dso_local void @__constructor__foo(%struct.foo* class_this_arg) #0 {
__constructor__fooentry:
  %get_element_ptr_inst = getelementptr inbounds %struct.foo, %struct.foo* %@__constructor__foo_this, 0, 0
  store 1, i32* %get_element_ptr_inst
  br label %first_block__@__constructor__foo
first_block__@__constructor__foo:
  %get_element_ptr_inst3 = getelementptr inbounds %struct.foo, %struct.foo* %@__constructor__foo_this, 0, 1
  %load_inst = load i32, i32* %get_element_ptr_inst3
  store 1, i32* %get_element_ptr_inst2
  %get_element_ptr_inst4 = getelementptr inbounds %struct.foo, %struct.foo* %@__constructor__foo_this, 0, 0
  %load_inst2 = load i32, i32* %get_element_ptr_inst4
  call void @printlnInt(i32 %load_inst2)
  %get_element_ptr_inst5 = getelementptr inbounds %struct.foo, %struct.foo* %@__constructor__foo_this, 0, 1
  %load_inst3 = load i32, i32* %get_element_ptr_inst5
  call void @printlnInt(i32 %load_inst3)
  br label %__constructor__fooexit
__constructor__fooexit:
  ret void
}

define dso_local i32 @main() #0 {
mainentry:
  call void @__init_function__()
first_block__@main:
  br label %mainexit
mainexit:
  ret 0
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
