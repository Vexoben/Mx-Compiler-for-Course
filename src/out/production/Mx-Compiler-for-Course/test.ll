; ModuleID = 'test.mx'
source_filename = "test.mx"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
@a = dso_local global i32* zeroinitializer
define dso_local i32 @f(i32 %a_addr) #0 {
fentry:
  br label %first_block__f
first_block__f:
  %a_addr = alloca i32
  ret i32 0
}
define dso_local i32 @main() #0 {
mainentry:
  call void @__init_function__()
first_block__main:
  br label %mainexit
mainexit:
  ret i32 0
}
define dso_local void @__init_function__() #0 {
__init_function__entry:
  store i32 0, i32* @a
__init_function__exit:
  ret void
}
attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}
