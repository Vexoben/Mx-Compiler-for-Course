	.text
	.file	"test.mx"
.globl   foo
   .p2align   2
   .type   foo,@function
foo:
.foo.fooentry:
   mv virtual_ra, ra
   mv virtual_s0, s0
   mv virtual_s1, s1
   mv virtual_s2, s2
   mv virtual_s3, s3
   mv virtual_s4, s4
   mv virtual_s5, s5
   mv virtual_s6, s6
   mv virtual_s7, s7
   mv virtual_s8, s8
   mv virtual_s9, s9
   mv virtual_s10, s10
   mv virtual_s11, s11
   mv foo_d, a0
   mv foo_x, a1
   mv foo_y, a2
   j .foo.first_block__foo
.foo.first_block__foo:
   mv d, foo_d
   mv x, foo_x
   mv y, foo_y
   mv tmp, d
   li tmp3, 1000
   mul tmp2, tmp, tmp3
   mv tmp4, x
   li tmp6, 10
   mul tmp5, tmp4, tmp6
   add tmp7, tmp2, tmp5
   mv tmp8, y
   add tmp9, tmp7, tmp8
   mv a0, tmp9
   call toString
   mv function_call_inst, a0
   mv allo_inst, function_call_inst
   mv tmp10, allo_inst
   mv a0, tmp10
   call println
   mv tmp11, d
   li tmp13, 1
   xor tmp14, tmp11, tmp13
   sltiu tmp12, tmp14, 1
   li tmp15, 1
   beq tmp11, tmp15, .foo.if_true
   j .foo.if_false
.foo.if_true:
   mv ra, virtual_ra
   mv s0, virtual_s0
   mv s1, virtual_s1
   mv s2, virtual_s2
   mv s3, virtual_s3
   mv s4, virtual_s4
   mv s5, virtual_s5
   mv s6, virtual_s6
   mv s7, virtual_s7
   mv s8, virtual_s8
   mv s9, virtual_s9
   mv s10, virtual_s10
   mv s11, virtual_s11
   ret
   j .foo.if_exit
.foo.if_false:
   j .foo.if_exit
.foo.if_exit:
   mv tmp16, x
   mv t, tmp16
   mv tmp17, x
   mv tmp18, y
   mv x, tmp18
   mv tmp19, y
   mv tmp20, t
   mv y, tmp20
   mv tmp21, x
   mv tmp22, y
   li tmp23, 1
   mv a0, tmp23
   mv a1, tmp21
   mv a2, tmp22
   call foo
   mv tmp24, d
   li tmp26, 1000
   mul tmp25, tmp24, tmp26
   mv tmp27, x
   li tmp29, 10
   mul tmp28, tmp27, tmp29
   add tmp30, tmp25, tmp28
   mv tmp31, y
   add tmp32, tmp30, tmp31
   mv a0, tmp32
   call toString
   mv function_call_inst2, a0
   mv allo_inst2, function_call_inst2
   mv tmp33, allo_inst2
   mv a0, tmp33
   call println
   j .foo.fooexit
.foo.fooexit:
   mv ra, virtual_ra
   mv s0, virtual_s0
   mv s1, virtual_s1
   mv s2, virtual_s2
   mv s3, virtual_s3
   mv s4, virtual_s4
   mv s5, virtual_s5
   mv s6, virtual_s6
   mv s7, virtual_s7
   mv s8, virtual_s8
   mv s9, virtual_s9
   mv s10, virtual_s10
   mv s11, virtual_s11
   ret
.Lfunc_end0:
   .size   foo, .Lfunc_end0-foo
.globl   main
   .p2align   2
   .type   main,@function
main:
.main.mainentry:
   mv virtual_ra2, ra
   mv virtual_s02, s0
   mv virtual_s12, s1
   mv virtual_s22, s2
   mv virtual_s32, s3
   mv virtual_s42, s4
   mv virtual_s52, s5
   mv virtual_s62, s6
   mv virtual_s72, s7
   mv virtual_s82, s8
   mv virtual_s92, s9
   mv virtual_s102, s10
   mv virtual_s112, s11
   call __init_function__
   j .main.first_block__main
.main.first_block__main:
   li tmp34, 7
   mv a0, tmp34
   li tmp35, 5
   mv a1, tmp35
   li tmp36, 3
   mv a2, tmp36
   call foo
   li tmp37, 0
   mv a0, tmp37
   mv ra, virtual_ra2
   mv s0, virtual_s02
   mv s1, virtual_s12
   mv s2, virtual_s22
   mv s3, virtual_s32
   mv s4, virtual_s42
   mv s5, virtual_s52
   mv s6, virtual_s62
   mv s7, virtual_s72
   mv s8, virtual_s82
   mv s9, virtual_s92
   mv s10, virtual_s102
   mv s11, virtual_s112
   ret
   j .main.mainexit
.main.mainexit:
   li tmp38, 0
   mv a0, tmp38
   mv ra, virtual_ra2
   mv s0, virtual_s02
   mv s1, virtual_s12
   mv s2, virtual_s22
   mv s3, virtual_s32
   mv s4, virtual_s42
   mv s5, virtual_s52
   mv s6, virtual_s62
   mv s7, virtual_s72
   mv s8, virtual_s82
   mv s9, virtual_s92
   mv s10, virtual_s102
   mv s11, virtual_s112
   ret
   mv tmp39, allo
   mv a0, tmp39
   mv ra, virtual_ra2
   mv s0, virtual_s02
   mv s1, virtual_s12
   mv s2, virtual_s22
   mv s3, virtual_s32
   mv s4, virtual_s42
   mv s5, virtual_s52
   mv s6, virtual_s62
   mv s7, virtual_s72
   mv s8, virtual_s82
   mv s9, virtual_s92
   mv s10, virtual_s102
   mv s11, virtual_s112
   ret
.Lfunc_end1:
   .size   main, .Lfunc_end1-main
.globl   __init_function__
   .p2align   2
   .type   __init_function__,@function
__init_function__:
.__init_function__.__init_function__entry:
   mv virtual_ra3, ra
   mv virtual_s03, s0
   mv virtual_s13, s1
   mv virtual_s23, s2
   mv virtual_s33, s3
   mv virtual_s43, s4
   mv virtual_s53, s5
   mv virtual_s63, s6
   mv virtual_s73, s7
   mv virtual_s83, s8
   mv virtual_s93, s9
   mv virtual_s103, s10
   mv virtual_s113, s11
   j .__init_function__.__init_function__exit
.__init_function__.__init_function__exit:
   mv ra, virtual_ra3
   mv s0, virtual_s03
   mv s1, virtual_s13
   mv s2, virtual_s23
   mv s3, virtual_s33
   mv s4, virtual_s43
   mv s5, virtual_s53
   mv s6, virtual_s63
   mv s7, virtual_s73
   mv s8, virtual_s83
   mv s9, virtual_s93
   mv s10, virtual_s103
   mv s11, virtual_s113
   ret
.Lfunc_end2:
   .size   __init_function__, .Lfunc_end2-__init_function__
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
