; ModuleID = 'link.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.foo = type { i32 }

@a = dso_local global i32 0
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__in_class__foo_f(%struct.foo* %__in_class__foo_f_this, i32 %__in_class__foo_f_x) #0 {
__in_class__foo_fentry:
  br label %first_block____in_class__foo_f

first_block____in_class__foo_f:                   ; preds = %__in_class__foo_fentry
  %x = alloca i32
  store i32 %__in_class__foo_f_x, i32* %x
  %get_element_ptr_inst4 = getelementptr inbounds %struct.foo, %struct.foo* %__in_class__foo_f_this, i32 0, i32 0
  %load_inst3 = load i32, i32* %get_element_ptr_inst4
  %get_element_ptr_inst5 = getelementptr inbounds %struct.foo, %struct.foo* %__in_class__foo_f_this, i32 0, i32 0
  %load_inst4 = load i32, i32* %get_element_ptr_inst5
  %load_inst5 = load i32, i32* %x
  %r = add i32 %load_inst4, %load_inst5
  store i32 %r, i32* %get_element_ptr_inst4
  %get_element_ptr_inst6 = getelementptr inbounds %struct.foo, %struct.foo* %__in_class__foo_f_this, i32 0, i32 0
  %load_inst6 = load i32, i32* %get_element_ptr_inst6
  call void @printlnInt(i32 %load_inst6)
  br label %__in_class__foo_fexit

__in_class__foo_fexit:                            ; preds = %first_block____in_class__foo_f
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__constructor__foo(%struct.foo* %__constructor__foo_this) #0 {
__constructor__fooentry:
  %get_element_ptr_inst = getelementptr inbounds %struct.foo, %struct.foo* %__constructor__foo_this, i32 0, i32 0
  store i32 1, i32* %get_element_ptr_inst
  br label %first_block____constructor__foo

first_block____constructor__foo:                  ; preds = %__constructor__fooentry
  %get_element_ptr_inst2 = getelementptr inbounds %struct.foo, %struct.foo* %__constructor__foo_this, i32 0, i32 0
  %load_inst = load i32, i32* %get_element_ptr_inst2
  store i32 1, i32* %get_element_ptr_inst2
  %get_element_ptr_inst3 = getelementptr inbounds %struct.foo, %struct.foo* %__constructor__foo_this, i32 0, i32 0
  %load_inst2 = load i32, i32* %get_element_ptr_inst3
  call void @printlnInt(i32 %load_inst2)
  br label %__constructor__fooexit

__constructor__fooexit:                           ; preds = %first_block____constructor__foo
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f(i32 %f_a) #0 {
fentry:
  br label %first_block__f

first_block__f:                                   ; preds = %fentry
  %a = alloca i32
  store i32 %f_a, i32* %a
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
mainentry:
  call void @__init_function__()
  br label %first_block__main

first_block__main:                                ; preds = %mainentry
  %tmp = alloca %struct.foo
  call void @__constructor__foo(%struct.foo* %tmp)
  %load_inst7 = load i32, i32* @a
  store i32 1, i32* @a
  %load_inst8 = load i32, i32* @a
  %load_inst9 = load i32, i32* @a
  %r2 = add i32 1, %load_inst9
  store i32 %r2, i32* @a
  %load_inst10 = load i32, i32* @a
  call void @__in_class__foo_f(%struct.foo* %tmp, i32 %load_inst10)
  %load_inst11 = load i32, i32* @a
  call void @printlnInt(i32 %load_inst11)
  br label %mainexit

mainexit:                                         ; preds = %first_block__main
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__init_function__() #0 {
__init_function__entry:
  store i32 0, i32* @a
  br label %__init_function__exit

__init_function__exit:                            ; preds = %__init_function__entry
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @__built_in_malloc(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sext i32 %3 to i64
  %5 = call noalias i8* @malloc(i64 %4) #5
  ret i8* %5
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__built_in_length(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i64 @strlen(i8* %3) #6
  %5 = trunc i64 %4 to i32
  ret i32 %5
}

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @__built_in_substring(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = sub nsw i32 %8, %9
  %11 = add nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = mul i64 1, %12
  %14 = call noalias i8* @malloc(i64 %13) #5
  store i8* %14, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = sub nsw i32 %20, %21
  %23 = sext i32 %22 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %15, i8* align 1 %19, i64 %23, i1 false)
  %24 = load i8*, i8** %7, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %5, align 4
  %27 = sub nsw i32 %25, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %24, i64 %28
  store i8 0, i8* %29, align 1
  %30 = load i8*, i8** %7, align 8
  ret i8* %30
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__built_in_parseInt(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %3) #5
  %6 = load i32, i32* %3, align 4
  ret i32 %6
}

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__built_in_ord(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i8*, i8** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i8, i8* %5, i64 %7
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @__build_in_str_add(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i64 @strlen(i8* %8) #6
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %5, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = call i64 @strlen(i8* %11) #6
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %14, %15
  %17 = add nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = mul i64 1, %18
  %20 = call noalias i8* @malloc(i64 %19) #5
  store i8* %20, i8** %7, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %21, i8* align 1 %22, i64 %24, i1 false)
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load i8*, i8** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %28, i8* align 1 %29, i64 %31, i1 false)
  %32 = load i8*, i8** %7, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %32, i64 %36
  store i8 0, i8* %37, align 1
  %38 = load i8*, i8** %7, align 8
  ret i8* %38
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @__build_in_str_eq(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i32 @strcmp(i8* %5, i8* %6) #6
  %8 = icmp eq i32 %7, 0
  ret i1 %8
}

; Function Attrs: nounwind readonly
declare dso_local i32 @strcmp(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @__build_in_str_neq(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i32 @strcmp(i8* %5, i8* %6) #6
  %8 = icmp ne i32 %7, 0
  ret i1 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @__build_in_str_slt(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i32 @strcmp(i8* %5, i8* %6) #6
  %8 = icmp slt i32 %7, 0
  ret i1 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @__build_in_str_sle(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i32 @strcmp(i8* %5, i8* %6) #6
  %8 = icmp sle i32 %7, 0
  ret i1 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @__build_in_str_sgt(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i32 @strcmp(i8* %5, i8* %6) #6
  %8 = icmp sgt i32 %7, 0
  ret i1 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @__build_in_str_sge(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i32 @strcmp(i8* %5, i8* %6) #6
  %8 = icmp eq i32 %7, 0
  ret i1 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %3)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @println(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %3)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printInt(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %3)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printlnInt(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %3)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @getString() #0 {
  %1 = alloca i8*, align 8
  %2 = call noalias i8* @malloc(i64 256) #5
  store i8* %2, i8** %1, align 8
  %3 = load i8*, i8** %1, align 8
  %4 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %3)
  %5 = load i8*, i8** %1, align 8
  ret i8* %5
}

declare dso_local i32 @__isoc99_scanf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getInt() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %1)
  %3 = load i32, i32* %1, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @toString(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call noalias i8* @malloc(i64 256) #5
  store i8* %4, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i32, i32* %2, align 4
  %7 = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %6) #5
  %8 = load i8*, i8** %3, align 8
  ret i8* %8
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 10.0.0-4ubuntu1 "}
!1 = !{i32 1, !"wchar_size", i32 4}
