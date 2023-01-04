; ModuleID = 'link.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.foo = type { i32* }

@a = dso_local global %struct.foo* null
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__in_class__foo_a(%struct.foo* %__in_class__foo_a_this) #0 {
__in_class__foo_aentry:
  %this_alloca = alloca %struct.foo*
  store %struct.foo* %__in_class__foo_a_this, %struct.foo** %this_alloca
  br label %first_block____in_class__foo_a

first_block____in_class__foo_a:                   ; preds = %__in_class__foo_aentry
  %load_inst2 = load %struct.foo*, %struct.foo** %this_alloca
  %get_element_ptr_inst2 = getelementptr inbounds %struct.foo, %struct.foo* %load_inst2, i32 0, i32 0
  %new_result = alloca i32*
  %array_size = mul i32 4, 10
  %alloca_size = add i32 4, %array_size
  %function_call_inst2 = call i8* @__built_in_malloc(i32 %alloca_size)
  %bit_cast_inst = bitcast i8* %function_call_inst2 to i32*
  store i32 10, i32* %bit_cast_inst
  %get_element_ptr_inst3 = getelementptr inbounds i32, i32* %bit_cast_inst, i32 1
  %arr_head = bitcast i32* %get_element_ptr_inst3 to i32*
  store i32* %arr_head, i32** %new_result
  %load_inst3 = load i32*, i32** %new_result
  store i32* %load_inst3, i32** %get_element_ptr_inst2
  %load_inst4 = load %struct.foo*, %struct.foo** %this_alloca
  %get_element_ptr_inst4 = getelementptr inbounds %struct.foo, %struct.foo* %load_inst4, i32 0, i32 0
  %load_inst5 = load i32*, i32** %get_element_ptr_inst4
  %get_element_ptr_inst5 = getelementptr inbounds i32, i32* %load_inst5, i32 1
  store i32 1, i32* %get_element_ptr_inst5
  br label %__in_class__foo_aexit

__in_class__foo_aexit:                            ; preds = %first_block____in_class__foo_a
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__constructor__foo(%struct.foo* %__constructor__foo_this) #0 {
__constructor__fooentry:
  %this_alloca2 = alloca %struct.foo*
  store %struct.foo* %__constructor__foo_this, %struct.foo** %this_alloca2
  %load_inst = load %struct.foo*, %struct.foo** %this_alloca2
  br label %first_block____constructor__foo

first_block____constructor__foo:                  ; preds = %__constructor__fooentry
  br label %__constructor__fooexit

__constructor__fooexit:                           ; preds = %first_block____constructor__foo
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
mainentry:
  call void @__init_function__()
  br label %first_block__main

first_block__main:                                ; preds = %mainentry
  %load_inst6 = load %struct.foo*, %struct.foo** @a
  call void @__in_class__foo_a(%struct.foo* %load_inst6)
  br label %mainexit

mainexit:                                         ; preds = %first_block__main
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__init_function__() #0 {
__init_function__entry:
  %allo = alloca %struct.foo
  store %struct.foo* %allo, %struct.foo** @a
  call void @__constructor__foo(%struct.foo* %allo)
  br label %__init_function__exit

__init_function__exit:                            ; preds = %__init_function__entry
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local noalias i8* @__built_in_malloc(i32 %0) #1 {
  %2 = sext i32 %0 to i64
  %3 = tail call noalias i8* @malloc(i64 %2) #10
  ret i8* %3
}

; Function Attrs: nofree nounwind
declare dso_local noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind readonly uwtable
define dso_local i32 @__built_in_length(i8* nocapture readonly %0) local_unnamed_addr #3 {
  %2 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #11
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: argmemonly nofree nounwind readonly
declare dso_local i64 @strlen(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noalias i8** @__built_in_substring(i8* nocapture readonly %0, i32 %1, i32 %2) local_unnamed_addr #5 {
  %4 = tail call noalias dereferenceable_or_null(8) i8* @malloc(i64 8) #10
  %5 = bitcast i8* %4 to i8**
  %6 = sub nsw i32 %2, %1
  %7 = add nsw i32 %6, 1
  %8 = sext i32 %7 to i64
  %9 = tail call noalias i8* @malloc(i64 %8) #10
  store i8* %9, i8** %5, align 8, !tbaa !2
  %10 = sext i32 %1 to i64
  %11 = getelementptr inbounds i8, i8* %0, i64 %10
  %12 = sext i32 %6 to i64
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 %11, i64 %12, i1 false)
  %13 = getelementptr inbounds i8, i8* %9, i64 %12
  store i8 0, i8* %13, align 1, !tbaa !6
  ret i8** %5
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define dso_local i32 @__built_in_parseInt(i8* nocapture readonly %0) local_unnamed_addr #5 {
  %2 = alloca i32, align 4
  %3 = bitcast i32* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #10
  %4 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* nonnull %2) #10
  %5 = load i32, i32* %2, align 4, !tbaa !7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #10
  ret i32 %5
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: nofree nounwind
declare dso_local i32 @__isoc99_sscanf(i8* nocapture readonly, i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: norecurse nounwind readonly uwtable
define dso_local i32 @__built_in_ord(i8* nocapture readonly %0, i32 %1) local_unnamed_addr #7 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds i8, i8* %0, i64 %3
  %5 = load i8, i8* %4, align 1, !tbaa !6
  %6 = sext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local noalias i8** @__build_in_str_add(i8* nocapture readonly %0, i8* nocapture readonly %1) local_unnamed_addr #5 {
  %3 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %0) #11
  %4 = trunc i64 %3 to i32
  %5 = tail call i64 @strlen(i8* nonnull dereferenceable(1) %1) #11
  %6 = trunc i64 %5 to i32
  %7 = tail call noalias dereferenceable_or_null(8) i8* @malloc(i64 8) #10
  %8 = bitcast i8* %7 to i8**
  %9 = add nsw i32 %6, %4
  %10 = add nsw i32 %9, 1
  %11 = sext i32 %10 to i64
  %12 = tail call noalias i8* @malloc(i64 %11) #10
  store i8* %12, i8** %8, align 8, !tbaa !2
  %13 = shl i64 %3, 32
  %14 = ashr exact i64 %13, 32
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 %0, i64 %14, i1 false)
  %15 = getelementptr inbounds i8, i8* %12, i64 %14
  %16 = shl i64 %5, 32
  %17 = ashr exact i64 %16, 32
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %15, i8* align 1 %1, i64 %17, i1 false)
  %18 = sext i32 %9 to i64
  %19 = getelementptr inbounds i8, i8* %12, i64 %18
  store i8 0, i8* %19, align 1, !tbaa !6
  ret i8** %8
}

; Function Attrs: nounwind readonly uwtable
define dso_local zeroext i1 @__build_in_str_eq(i8* nocapture readonly %0, i8* nocapture readonly %1) local_unnamed_addr #3 {
  %3 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(1) %1) #11
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: nofree nounwind readonly
declare dso_local i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #8

; Function Attrs: nounwind readonly uwtable
define dso_local zeroext i1 @__build_in_str_neq(i8* nocapture readonly %0, i8* nocapture readonly %1) local_unnamed_addr #3 {
  %3 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(1) %1) #11
  %4 = icmp ne i32 %3, 0
  ret i1 %4
}

; Function Attrs: nounwind readonly uwtable
define dso_local zeroext i1 @__build_in_str_slt(i8* nocapture readonly %0, i8* nocapture readonly %1) local_unnamed_addr #3 {
  %3 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(1) %1) #11
  %4 = icmp slt i32 %3, 0
  ret i1 %4
}

; Function Attrs: nounwind readonly uwtable
define dso_local zeroext i1 @__build_in_str_sle(i8* nocapture readonly %0, i8* nocapture readonly %1) local_unnamed_addr #3 {
  %3 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(1) %1) #11
  %4 = icmp slt i32 %3, 1
  ret i1 %4
}

; Function Attrs: nounwind readonly uwtable
define dso_local zeroext i1 @__build_in_str_sgt(i8* nocapture readonly %0, i8* nocapture readonly %1) local_unnamed_addr #3 {
  %3 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(1) %1) #11
  %4 = icmp sgt i32 %3, 0
  ret i1 %4
}

; Function Attrs: nounwind readonly uwtable
define dso_local zeroext i1 @__build_in_str_sge(i8* nocapture readonly %0, i8* nocapture readonly %1) local_unnamed_addr #3 {
  %3 = tail call i32 @strcmp(i8* nonnull dereferenceable(1) %0, i8* nonnull dereferenceable(1) %1) #11
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @print(i8* %0) local_unnamed_addr #1 {
  %2 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %0)
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define dso_local void @println(i8* nocapture readonly %0) local_unnamed_addr #1 {
  %2 = tail call i32 @puts(i8* nonnull dereferenceable(1) %0)
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #9

; Function Attrs: nofree nounwind uwtable
define dso_local void @printInt(i32 %0) local_unnamed_addr #1 {
  %2 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %0)
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @printlnInt(i32 %0) local_unnamed_addr #1 {
  %2 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %0)
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local noalias i8** @getString() local_unnamed_addr #1 {
  %1 = tail call noalias dereferenceable_or_null(8) i8* @malloc(i64 8) #10
  %2 = bitcast i8* %1 to i8**
  %3 = tail call noalias dereferenceable_or_null(256) i8* @malloc(i64 256) #10
  store i8* %3, i8** %2, align 8, !tbaa !2
  %4 = tail call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %3)
  ret i8** %2
}

; Function Attrs: nofree nounwind
declare dso_local i32 @__isoc99_scanf(i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @getInt() local_unnamed_addr #5 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #10
  %3 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* nonnull %1)
  %4 = load i32, i32* %1, align 4, !tbaa !7
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #10
  ret i32 %4
}

; Function Attrs: nofree nounwind uwtable
define dso_local noalias i8** @toString(i32 %0) local_unnamed_addr #1 {
  %2 = tail call noalias dereferenceable_or_null(8) i8* @malloc(i64 8) #10
  %3 = bitcast i8* %2 to i8**
  %4 = tail call noalias dereferenceable_or_null(256) i8* @malloc(i64 256) #10
  store i8* %4, i8** %3, align 8, !tbaa !2
  %5 = tail call i32 (i8*, i8*, ...) @sprintf(i8* nonnull dereferenceable(1) %4, i8* nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %0) #10
  ret i8** %3
}

; Function Attrs: nofree nounwind
declare dso_local i32 @sprintf(i8* noalias nocapture, i8* nocapture readonly, ...) local_unnamed_addr #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind willreturn }
attributes #7 = { norecurse nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nofree nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nofree nounwind }
attributes #10 = { nounwind }
attributes #11 = { nounwind readonly }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 10.0.0-4ubuntu1 "}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!4, !4, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !4, i64 0}
