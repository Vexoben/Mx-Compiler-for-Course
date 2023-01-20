	.text
	.file	"test.mx"
.globl   work
   .p2align   2
   .type   work,@function
work:
.work.workentry:
   addi sp, sp, -232
   mv s1, ra
   sw s1, 0(sp)
   mv s1, s0
   sw s1, 4(sp)
   mv s1, a0
   sw s1, 8(sp)
   mv s1, a1
   sw s1, 12(sp)
   j .work.first_block__work
.work.first_block__work:
   lw s0, 8(sp)
   sw s0, 16(sp)
   lw s0, 12(sp)
   sw s0, 20(sp)
   lw s1, 20(sp)
   sw s1, 24(sp)
   li s0, 8
   sw s0, 28(sp)
   lw s0, 24(sp)
   lw s1, 28(sp)
   add s0, s0, s1
   sw s0, 32(sp)
   lw s0, 32(sp)
   lw s1, 0(s0)
   sw s1, 36(sp)
   li s0, 100
   sw s0, 40(sp)
   lw s0, 40(sp)
   lw s1, 36(sp)
   slt s0, s0, s1
   sw s0, 44(sp)
   lw s0, 44(sp)
   xori s0, s0, 1
   sw s0, 48(sp)
   li s0, 100
   sw s0, 52(sp)
   lw s0, 36(sp)
   lw s1, 52(sp)
   ble s0, s1, .work.if_true
   j .work.if_false
.work.if_true:
   lw s1, 16(sp)
   sw s1, 56(sp)
   li s0, 0
   sw s0, 60(sp)
   la s0, .const_str
   sw s0, 64(sp)
   lw s0, 64(sp)
   lw s1, 60(sp)
   add s0, s0, s1
   sw s0, 68(sp)
   lw s0, 56(sp)
   mv a0, s0
   lw s0, 68(sp)
   mv a1, s0
   call __build_in_str_add
   mv s1, a0
   sw s1, 72(sp)
   lw s1, 20(sp)
   sw s1, 76(sp)
   li s0, 0
   sw s0, 80(sp)
   lw s0, 76(sp)
   lw s1, 80(sp)
   add s0, s0, s1
   sw s0, 84(sp)
   lw s0, 72(sp)
   lw s1, 0(s0)
   sw s1, 88(sp)
   lw s0, 84(sp)
   lw s1, 0(s0)
   sw s1, 92(sp)
   lw s0, 88(sp)
   mv a0, s0
   lw s0, 92(sp)
   mv a1, s0
   call __build_in_str_add
   mv s1, a0
   sw s1, 96(sp)
   lw s0, 96(sp)
   lw s1, 0(s0)
   sw s1, 100(sp)
   li s0, 0
   sw s0, 104(sp)
   la s0, .const_str2
   sw s0, 108(sp)
   lw s0, 108(sp)
   lw s1, 104(sp)
   add s0, s0, s1
   sw s0, 112(sp)
   lw s0, 100(sp)
   mv a0, s0
   lw s0, 112(sp)
   mv a1, s0
   call __build_in_str_add
   mv s1, a0
   sw s1, 116(sp)
   lw s0, 116(sp)
   lw s1, 0(s0)
   sw s1, 120(sp)
   lw s0, 120(sp)
   mv a0, s0
   call println
   j .work.if_exit
.work.if_false:
   lw s1, 16(sp)
   sw s1, 124(sp)
   li s0, 0
   sw s0, 128(sp)
   la s0, .const_str
   sw s0, 132(sp)
   lw s0, 132(sp)
   lw s1, 128(sp)
   add s0, s0, s1
   sw s0, 136(sp)
   lw s0, 124(sp)
   mv a0, s0
   lw s0, 136(sp)
   mv a1, s0
   call __build_in_str_add
   mv s1, a0
   sw s1, 140(sp)
   lw s1, 20(sp)
   sw s1, 144(sp)
   li s0, 0
   sw s0, 148(sp)
   lw s0, 144(sp)
   lw s1, 148(sp)
   add s0, s0, s1
   sw s0, 152(sp)
   lw s0, 140(sp)
   lw s1, 0(s0)
   sw s1, 156(sp)
   lw s0, 152(sp)
   lw s1, 0(s0)
   sw s1, 160(sp)
   lw s0, 156(sp)
   mv a0, s0
   lw s0, 160(sp)
   mv a1, s0
   call __build_in_str_add
   mv s1, a0
   sw s1, 164(sp)
   lw s0, 164(sp)
   lw s1, 0(s0)
   sw s1, 168(sp)
   li s0, 0
   sw s0, 172(sp)
   la s0, .const_str3
   sw s0, 176(sp)
   lw s0, 176(sp)
   lw s1, 172(sp)
   add s0, s0, s1
   sw s0, 180(sp)
   lw s0, 168(sp)
   mv a0, s0
   lw s0, 180(sp)
   mv a1, s0
   call __build_in_str_add
   mv s1, a0
   sw s1, 184(sp)
   lw s0, 184(sp)
   lw s1, 0(s0)
   sw s1, 188(sp)
   lw s0, 188(sp)
   mv a0, s0
   call println
   j .work.if_exit
.work.if_exit:
   lw s1, 20(sp)
   sw s1, 192(sp)
   li s0, 8
   sw s0, 196(sp)
   lw s0, 192(sp)
   lw s1, 196(sp)
   add s0, s0, s1
   sw s0, 200(sp)
   lw s1, 20(sp)
   sw s1, 204(sp)
   li s0, 8
   sw s0, 208(sp)
   lw s0, 204(sp)
   lw s1, 208(sp)
   add s0, s0, s1
   sw s0, 212(sp)
   la s0, work_anger
   sw s0, 216(sp)
   lw s0, 216(sp)
   lw s1, 0(s0)
   sw s1, 220(sp)
   lw s0, 212(sp)
   lw s1, 0(s0)
   sw s1, 224(sp)
   lw s0, 224(sp)
   lw s1, 220(sp)
   add s0, s0, s1
   sw s0, 228(sp)
   lw s0, 228(sp)
   lw s1, 200(sp)
   sw s0, 0(s1)
   j .work.workexit
.work.workexit:
   lw s0, 4(sp)
   mv s0, s0
   lw s0, 0(sp)
   mv ra, s0
   addi sp, sp, 232
   ret
.Lfunc_end0:
   .size   work, .Lfunc_end0-work
.globl   main
   .p2align   2
   .type   main,@function
main:
.main.mainentry:
   addi sp, sp, -212
   mv s1, ra
   sw s1, 0(sp)
   mv s1, s0
   sw s1, 4(sp)
   call __init_function__
   lw s1, 8(sp)
   sw s1, 12(sp)
   lw s0, 12(sp)
   mv a0, s0
   call __constructor__TA
   lw s1, 16(sp)
   sw s1, 20(sp)
   lw s0, 20(sp)
   mv a0, s0
   call __constructor__TA
   j .main.first_block__main
.main.first_block__main:
   li s0, 12
   sw s0, 24(sp)
   lw s0, 24(sp)
   mv a0, s0
   call __built_in_malloc
   mv s1, a0
   sw s1, 28(sp)
   lw s0, 28(sp)
   mv s1, s0
   sw s1, 32(sp)
   lw s0, 32(sp)
   mv a0, s0
   call __constructor__TA
   lw s0, 32(sp)
   sw s0, 36(sp)
   lw s1, 36(sp)
   sw s1, 40(sp)
   lw s0, 40(sp)
   sw s0, 8(sp)
   lw s1, 8(sp)
   sw s1, 44(sp)
   li s0, 0
   sw s0, 48(sp)
   lw s0, 44(sp)
   lw s1, 48(sp)
   add s0, s0, s1
   sw s0, 52(sp)
   li s0, 0
   sw s0, 56(sp)
   la s0, .const_str4
   sw s0, 60(sp)
   lw s0, 60(sp)
   lw s1, 56(sp)
   add s0, s0, s1
   sw s0, 64(sp)
   lw s0, 64(sp)
   lw s1, 52(sp)
   sw s0, 0(s1)
   lw s1, 8(sp)
   sw s1, 68(sp)
   li s0, 8
   sw s0, 72(sp)
   lw s0, 68(sp)
   lw s1, 72(sp)
   add s0, s0, s1
   sw s0, 76(sp)
   li s0, 0
   sw s0, 80(sp)
   lw s0, 80(sp)
   lw s1, 76(sp)
   sw s0, 0(s1)
   li s0, 12
   sw s0, 84(sp)
   lw s0, 84(sp)
   mv a0, s0
   call __built_in_malloc
   mv s1, a0
   sw s1, 88(sp)
   lw s0, 88(sp)
   mv s1, s0
   sw s1, 92(sp)
   lw s0, 92(sp)
   mv a0, s0
   call __constructor__TA
   lw s0, 92(sp)
   sw s0, 96(sp)
   lw s1, 96(sp)
   sw s1, 100(sp)
   lw s0, 100(sp)
   sw s0, 16(sp)
   lw s1, 16(sp)
   sw s1, 104(sp)
   li s0, 0
   sw s0, 108(sp)
   lw s0, 104(sp)
   lw s1, 108(sp)
   add s0, s0, s1
   sw s0, 112(sp)
   li s0, 0
   sw s0, 116(sp)
   la s0, .const_str5
   sw s0, 120(sp)
   lw s0, 120(sp)
   lw s1, 116(sp)
   add s0, s0, s1
   sw s0, 124(sp)
   lw s0, 124(sp)
   lw s1, 112(sp)
   sw s0, 0(s1)
   lw s1, 16(sp)
   sw s1, 128(sp)
   li s0, 8
   sw s0, 132(sp)
   lw s0, 128(sp)
   lw s1, 132(sp)
   add s0, s0, s1
   sw s0, 136(sp)
   la s0, init_anger
   sw s0, 140(sp)
   lw s0, 140(sp)
   lw s1, 0(s0)
   sw s1, 144(sp)
   lw s0, 144(sp)
   lw s1, 136(sp)
   sw s0, 0(s1)
   li s0, 0
   sw s0, 148(sp)
   la s0, .const_str6
   sw s0, 152(sp)
   lw s0, 152(sp)
   lw s1, 148(sp)
   add s0, s0, s1
   sw s0, 156(sp)
   lw s1, 8(sp)
   sw s1, 160(sp)
   lw s0, 156(sp)
   mv a0, s0
   lw s0, 160(sp)
   mv a1, s0
   call work
   li s0, 0
   sw s0, 164(sp)
   la s0, .const_str7
   sw s0, 168(sp)
   lw s0, 168(sp)
   lw s1, 164(sp)
   add s0, s0, s1
   sw s0, 172(sp)
   lw s1, 16(sp)
   sw s1, 176(sp)
   lw s0, 172(sp)
   mv a0, s0
   lw s0, 176(sp)
   mv a1, s0
   call work
   li s0, 0
   sw s0, 180(sp)
   la s0, .const_str7
   sw s0, 184(sp)
   lw s0, 184(sp)
   lw s1, 180(sp)
   add s0, s0, s1
   sw s0, 188(sp)
   lw s1, 16(sp)
   sw s1, 192(sp)
   lw s0, 188(sp)
   mv a0, s0
   lw s0, 192(sp)
   mv a1, s0
   call work
   li s0, 0
   sw s0, 196(sp)
   lw s0, 196(sp)
   mv a0, s0
   lw s0, 4(sp)
   mv s0, s0
   lw s0, 0(sp)
   mv ra, s0
   addi sp, sp, 212
   ret
   j .main.mainexit
.main.mainexit:
   li s0, 0
   sw s0, 200(sp)
   lw s0, 200(sp)
   mv a0, s0
   lw s0, 4(sp)
   mv s0, s0
   lw s0, 0(sp)
   mv ra, s0
   addi sp, sp, 212
   ret
   lw s1, 204(sp)
   sw s1, 208(sp)
   lw s0, 208(sp)
   mv a0, s0
   lw s0, 4(sp)
   mv s0, s0
   lw s0, 0(sp)
   mv ra, s0
   addi sp, sp, 212
   ret
.Lfunc_end1:
   .size   main, .Lfunc_end1-main
.globl   __init_function__
   .p2align   2
   .type   __init_function__,@function
__init_function__:
.__init_function__.__init_function__entry:
   addi sp, sp, -24
   mv s1, ra
   sw s1, 0(sp)
   mv s1, s0
   sw s1, 4(sp)
   la s0, init_anger
   sw s0, 8(sp)
   li s0, 100
   sw s0, 12(sp)
   lw s0, 12(sp)
   lw s1, 8(sp)
   sw s0, 0(s1)
   la s0, work_anger
   sw s0, 16(sp)
   li s0, 10
   sw s0, 20(sp)
   lw s0, 20(sp)
   lw s1, 16(sp)
   sw s0, 0(s1)
   j .__init_function__.__init_function__exit
.__init_function__.__init_function__exit:
   lw s0, 4(sp)
   mv s0, s0
   lw s0, 0(sp)
   mv ra, s0
   addi sp, sp, 24
   ret
.Lfunc_end2:
   .size   __init_function__, .Lfunc_end2-__init_function__
.globl   __constructor__TA
   .p2align   2
   .type   __constructor__TA,@function
__constructor__TA:
.__constructor__TA.__constructor__TAentry:
   addi sp, sp, -24
   mv s1, ra
   sw s1, 0(sp)
   mv s1, s0
   sw s1, 4(sp)
   mv s1, a0
   sw s1, 8(sp)
   lw s0, 8(sp)
   sw s0, 12(sp)
   lw s1, 12(sp)
   sw s1, 16(sp)
   lw s1, 12(sp)
   sw s1, 20(sp)
   j .__constructor__TA.first_block____constructor__TA
.__constructor__TA.first_block____constructor__TA:
   j .__constructor__TA.__constructor__TAexit
.__constructor__TA.__constructor__TAexit:
   lw s0, 4(sp)
   mv s0, s0
   lw s0, 0(sp)
   mv ra, s0
   addi sp, sp, 24
   ret
.Lfunc_end3:
   .size   __constructor__TA, .Lfunc_end3-__constructor__TA
   .type   .const_str,@object
.section   .rodata.str1.1,"aMS",@progbits,1
.const_str:
   .asciz   ", \00"   .size   .const_str, 4
   .type   .const_str6,@object
.const_str6:
   .asciz   "MR\00"   .size   .const_str6, 4
   .type   .const_str3,@object
.const_str3:
   .asciz   " wants to give up!!!!!\00"   .size   .const_str3, 4
   .type   .const_str7,@object
.const_str7:
   .asciz   "Mars\00"   .size   .const_str7, 4
   .type   .const_str5,@object
.const_str5:
   .asciz   "the striking TA\00"   .size   .const_str5, 4
   .type   .const_str4,@object
.const_str4:
   .asciz   "the leading TA\00"   .size   .const_str4, 4
   .type   .const_str2,@object
.const_str2:
   .asciz   " enjoys this work. XD\00"   .size   .const_str2, 4
   .type   init_anger,@object
   .section   .rodata.str1.1,"aMS",@progbits,1
   .globl   init_anger
   .p2align   2
init_anger:
   .word   0
   .size   .init_anger, 4
   .type   work_anger,@object
   .globl   work_anger
   .p2align   2
work_anger:
   .word   0
   .size   .work_anger, 4
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
