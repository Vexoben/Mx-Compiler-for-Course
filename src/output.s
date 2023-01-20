	.text
	.file	"test.mx"
.globl   main
   .p2align   2
   .type   main,@function
main:
.main.mainentry:
   addi sp, sp, -404
   mv s1, ra
   sw s1, 0(sp)
   mv s1, s0
   sw s1, 4(sp)
   call __init_function__
   j .main.first_block__main
.main.first_block__main:
   la s0, a
   sw s0, 8(sp)
   lw s0, 8(sp)
   lw s1, 0(s0)
   sw s1, 12(sp)
   lw s0, 12(sp)
   mv s1, s0
   sw s1, 16(sp)
   li s0, -1
   sw s0, 20(sp)
   lw s0, 20(sp)
   li s1, 4
   mul s0, s0, s1
   sw s0, 24(sp)
   lw s0, 24(sp)
   lw s1, 16(sp)
   add s0, s0, s1
   sw s0, 28(sp)
   lw s0, 28(sp)
   lw s1, 0(s0)
   sw s1, 32(sp)
   li s0, 4
   sw s0, 36(sp)
   lw s0, 36(sp)
   lw s1, 32(sp)
   mul s0, s0, s1
   sw s0, 40(sp)
   li s0, 4
   sw s0, 44(sp)
   lw s0, 44(sp)
   lw s1, 40(sp)
   add s0, s0, s1
   sw s0, 48(sp)
   lw s0, 48(sp)
   mv a0, s0
   call __built_in_malloc
   mv s1, a0
   sw s1, 52(sp)
   lw s0, 52(sp)
   mv s1, s0
   sw s1, 56(sp)
   lw s0, 32(sp)
   lw s1, 56(sp)
   sw s0, 0(s1)
   li s0, 1
   sw s0, 60(sp)
   lw s0, 60(sp)
   li s1, 4
   mul s0, s0, s1
   sw s0, 64(sp)
   lw s0, 64(sp)
   lw s1, 56(sp)
   add s0, s0, s1
   sw s0, 68(sp)
   lw s0, 68(sp)
   mv s1, s0
   sw s1, 72(sp)
   lw s0, 72(sp)
   sw s0, 76(sp)
   lw s1, 76(sp)
   sw s1, 80(sp)
   lw s0, 80(sp)
   sw s0, 84(sp)
   j .main.for_init
.main.for_init:
   lw s1, 88(sp)
   sw s1, 92(sp)
   li s0, 0
   sw s0, 96(sp)
   lw s0, 96(sp)
   sw s0, 88(sp)
   j .main.for_condition
.main.for_condition:
   lw s1, 88(sp)
   sw s1, 100(sp)
   la s0, a
   sw s0, 104(sp)
   lw s0, 104(sp)
   lw s1, 0(s0)
   sw s1, 108(sp)
   lw s0, 108(sp)
   mv s1, s0
   sw s1, 112(sp)
   li s0, -1
   sw s0, 116(sp)
   lw s0, 116(sp)
   li s1, 4
   mul s0, s0, s1
   sw s0, 120(sp)
   lw s0, 120(sp)
   lw s1, 112(sp)
   add s0, s0, s1
   sw s0, 124(sp)
   lw s0, 124(sp)
   lw s1, 0(s0)
   sw s1, 128(sp)
   lw s0, 100(sp)
   lw s1, 128(sp)
   slt s0, s0, s1
   sw s0, 132(sp)
   lw s0, 100(sp)
   lw s1, 128(sp)
   blt s0, s1, .main.for_repeat
   j .main.for_exit
.main.for_step:
   lw s1, 88(sp)
   sw s1, 136(sp)
   li s0, 1
   sw s0, 140(sp)
   lw s0, 140(sp)
   lw s1, 136(sp)
   add s0, s0, s1
   sw s0, 144(sp)
   lw s0, 144(sp)
   sw s0, 88(sp)
   j .main.for_condition
.main.for_repeat:
   lw s1, 88(sp)
   sw s1, 148(sp)
   la s0, a
   sw s0, 152(sp)
   lw s0, 152(sp)
   lw s1, 0(s0)
   sw s1, 156(sp)
   lw s0, 148(sp)
   li s1, 4
   mul s0, s0, s1
   sw s0, 160(sp)
   lw s0, 160(sp)
   lw s1, 156(sp)
   add s0, s0, s1
   sw s0, 164(sp)
   li s0, 0
   sw s0, 168(sp)
   lw s0, 168(sp)
   lw s1, 164(sp)
   sw s0, 0(s1)
   lw s1, 88(sp)
   sw s1, 172(sp)
   lw s1, 84(sp)
   sw s1, 176(sp)
   lw s0, 172(sp)
   li s1, 4
   mul s0, s0, s1
   sw s0, 180(sp)
   lw s0, 180(sp)
   lw s1, 176(sp)
   add s0, s0, s1
   sw s0, 184(sp)
   call getInt
   mv s1, a0
   sw s1, 188(sp)
   lw s0, 188(sp)
   lw s1, 184(sp)
   sw s0, 0(s1)
   j .main.for_step
.main.for_exit:
   j .main.for_init2
.main.for_init2:
   lw s1, 88(sp)
   sw s1, 192(sp)
   li s0, 0
   sw s0, 196(sp)
   lw s0, 196(sp)
   sw s0, 88(sp)
   j .main.for_condition2
.main.for_condition2:
   lw s1, 88(sp)
   sw s1, 200(sp)
   la s0, a
   sw s0, 204(sp)
   lw s0, 204(sp)
   lw s1, 0(s0)
   sw s1, 208(sp)
   lw s0, 208(sp)
   mv s1, s0
   sw s1, 212(sp)
   li s0, -1
   sw s0, 216(sp)
   lw s0, 216(sp)
   li s1, 4
   mul s0, s0, s1
   sw s0, 220(sp)
   lw s0, 220(sp)
   lw s1, 212(sp)
   add s0, s0, s1
   sw s0, 224(sp)
   lw s0, 224(sp)
   lw s1, 0(s0)
   sw s1, 228(sp)
   lw s0, 200(sp)
   lw s1, 228(sp)
   slt s0, s0, s1
   sw s0, 232(sp)
   lw s0, 200(sp)
   lw s1, 228(sp)
   blt s0, s1, .main.for_repeat2
   j .main.for_exit2
.main.for_step2:
   lw s1, 88(sp)
   sw s1, 236(sp)
   li s0, 1
   sw s0, 240(sp)
   lw s0, 240(sp)
   lw s1, 236(sp)
   add s0, s0, s1
   sw s0, 244(sp)
   lw s0, 244(sp)
   sw s0, 88(sp)
   j .main.for_condition2
.main.for_repeat2:
   lw s1, 88(sp)
   sw s1, 248(sp)
   la s0, a
   sw s0, 252(sp)
   lw s0, 252(sp)
   lw s1, 0(s0)
   sw s1, 256(sp)
   lw s0, 248(sp)
   li s1, 4
   mul s0, s0, s1
   sw s0, 260(sp)
   lw s0, 260(sp)
   lw s1, 256(sp)
   add s0, s0, s1
   sw s0, 264(sp)
   lw s0, 264(sp)
   lw s1, 0(s0)
   sw s1, 268(sp)
   lw s0, 268(sp)
   mv a0, s0
   call toString
   mv s1, a0
   sw s1, 272(sp)
   lw s0, 272(sp)
   lw s1, 0(s0)
   sw s1, 276(sp)
   lw s0, 276(sp)
   mv a0, s0
   call print
   j .main.for_step2
.main.for_exit2:
   li s0, 0
   sw s0, 280(sp)
   la s0, .const_str
   sw s0, 284(sp)
   lw s0, 284(sp)
   lw s1, 280(sp)
   add s0, s0, s1
   sw s0, 288(sp)
   lw s0, 288(sp)
   mv a0, s0
   call println
   lw s1, 84(sp)
   sw s1, 292(sp)
   la s0, a
   sw s0, 296(sp)
   lw s0, 292(sp)
   lw s1, 296(sp)
   sw s0, 0(s1)
   j .main.for_init3
.main.for_init3:
   lw s1, 88(sp)
   sw s1, 300(sp)
   li s0, 0
   sw s0, 304(sp)
   lw s0, 304(sp)
   sw s0, 88(sp)
   j .main.for_condition3
.main.for_condition3:
   lw s1, 88(sp)
   sw s1, 308(sp)
   la s0, a
   sw s0, 312(sp)
   lw s0, 312(sp)
   lw s1, 0(s0)
   sw s1, 316(sp)
   lw s0, 316(sp)
   mv s1, s0
   sw s1, 320(sp)
   li s0, -1
   sw s0, 324(sp)
   lw s0, 324(sp)
   li s1, 4
   mul s0, s0, s1
   sw s0, 328(sp)
   lw s0, 328(sp)
   lw s1, 320(sp)
   add s0, s0, s1
   sw s0, 332(sp)
   lw s0, 332(sp)
   lw s1, 0(s0)
   sw s1, 336(sp)
   lw s0, 308(sp)
   lw s1, 336(sp)
   slt s0, s0, s1
   sw s0, 340(sp)
   lw s0, 308(sp)
   lw s1, 336(sp)
   blt s0, s1, .main.for_repeat3
   j .main.for_exit3
.main.for_step3:
   lw s1, 88(sp)
   sw s1, 344(sp)
   li s0, 1
   sw s0, 348(sp)
   lw s0, 348(sp)
   lw s1, 344(sp)
   add s0, s0, s1
   sw s0, 352(sp)
   lw s0, 352(sp)
   sw s0, 88(sp)
   j .main.for_condition3
.main.for_repeat3:
   lw s1, 88(sp)
   sw s1, 356(sp)
   la s0, a
   sw s0, 360(sp)
   lw s0, 360(sp)
   lw s1, 0(s0)
   sw s1, 364(sp)
   lw s0, 356(sp)
   li s1, 4
   mul s0, s0, s1
   sw s0, 368(sp)
   lw s0, 368(sp)
   lw s1, 364(sp)
   add s0, s0, s1
   sw s0, 372(sp)
   lw s0, 372(sp)
   lw s1, 0(s0)
   sw s1, 376(sp)
   lw s0, 376(sp)
   mv a0, s0
   call toString
   mv s1, a0
   sw s1, 380(sp)
   lw s0, 380(sp)
   lw s1, 0(s0)
   sw s1, 384(sp)
   lw s0, 384(sp)
   mv a0, s0
   call print
   j .main.for_step3
.main.for_exit3:
   li s0, 0
   sw s0, 388(sp)
   lw s0, 388(sp)
   mv a0, s0
   lw s0, 4(sp)
   mv s0, s0
   lw s0, 0(sp)
   mv ra, s0
   addi sp, sp, 404
   ret
   j .main.mainexit
.main.mainexit:
   li s0, 0
   sw s0, 392(sp)
   lw s0, 392(sp)
   mv a0, s0
   lw s0, 4(sp)
   mv s0, s0
   lw s0, 0(sp)
   mv ra, s0
   addi sp, sp, 404
   ret
   lw s1, 396(sp)
   sw s1, 400(sp)
   lw s0, 400(sp)
   mv a0, s0
   lw s0, 4(sp)
   mv s0, s0
   lw s0, 0(sp)
   mv ra, s0
   addi sp, sp, 404
   ret
.Lfunc_end0:
   .size   main, .Lfunc_end0-main
.globl   __init_function__
   .p2align   2
   .type   __init_function__,@function
__init_function__:
.__init_function__.__init_function__entry:
   addi sp, sp, -68
   mv s1, ra
   sw s1, 0(sp)
   mv s1, s0
   sw s1, 4(sp)
   li s0, 4
   sw s0, 8(sp)
   li s0, 4
   sw s0, 12(sp)
   lw s0, 8(sp)
   lw s1, 12(sp)
   mul s0, s0, s1
   sw s0, 16(sp)
   li s0, 4
   sw s0, 20(sp)
   lw s0, 20(sp)
   lw s1, 16(sp)
   add s0, s0, s1
   sw s0, 24(sp)
   lw s0, 24(sp)
   mv a0, s0
   call __built_in_malloc
   mv s1, a0
   sw s1, 28(sp)
   lw s0, 28(sp)
   mv s1, s0
   sw s1, 32(sp)
   li s0, 4
   sw s0, 36(sp)
   lw s0, 36(sp)
   lw s1, 32(sp)
   sw s0, 0(s1)
   li s0, 1
   sw s0, 40(sp)
   lw s0, 40(sp)
   li s1, 4
   mul s0, s0, s1
   sw s0, 44(sp)
   lw s0, 44(sp)
   lw s1, 32(sp)
   add s0, s0, s1
   sw s0, 48(sp)
   lw s0, 48(sp)
   mv s1, s0
   sw s1, 52(sp)
   lw s0, 52(sp)
   sw s0, 56(sp)
   lw s1, 56(sp)
   sw s1, 60(sp)
   la s0, a
   sw s0, 64(sp)
   lw s0, 60(sp)
   lw s1, 64(sp)
   sw s0, 0(s1)
   j .__init_function__.__init_function__exit
.__init_function__.__init_function__exit:
   lw s0, 4(sp)
   mv s0, s0
   lw s0, 0(sp)
   mv ra, s0
   addi sp, sp, 68
   ret
.Lfunc_end1:
   .size   __init_function__, .Lfunc_end1-__init_function__
   .type   .const_str,@object
.section   .rodata.str1.1,"aMS",@progbits,1
.const_str:
   .asciz   "\00"   .size   .const_str, 4
   .type   a,@object
   .section   .rodata.str1.1,"aMS",@progbits,1
   .globl   a
   .p2align   2
a:
   .word   0
   .size   .a, 4
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
