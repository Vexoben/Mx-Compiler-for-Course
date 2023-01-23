	.text
	.file	"test.mx"
.globl   main
   .p2align   2
   .type   main,@function
main:
.main.mainentry:
   addi sp, sp, -1588
   mv s1, ra
   sw s1, 0(sp)
   mv s1, s0
   sw s1, 4(sp)
   call __init_function__
   j .main.first_block__main
.main.first_block__main:
   la s0, N
   sw s0, 8(sp)
   lw s0, 8(sp)
   lw s1, 0(s0)
   sw s1, 12(sp)
   call getInt
   mv s1, a0
   sw s1, 16(sp)
   la s0, N
   sw s0, 20(sp)
   lw s0, 16(sp)
   lw s1, 20(sp)
   sw s0, 0(s1)
   j .main.for_init
.main.for_init:
   lw s1, 24(sp)
   sw s1, 28(sp)
   li s0, 1
   sw s0, 32(sp)
   lw s0, 32(sp)
   sw s0, 24(sp)
   j .main.for_condition
.main.for_condition:
   lw s1, 24(sp)
   sw s1, 36(sp)
   la s0, N
   sw s0, 40(sp)
   lw s0, 40(sp)
   lw s1, 0(s0)
   sw s1, 44(sp)
   lw s0, 44(sp)
   lw s1, 36(sp)
   slt s0, s0, s1
   sw s0, 48(sp)
   lw s0, 48(sp)
   xori s0, s0, 1
   sw s0, 52(sp)
   lw s0, 36(sp)
   lw s1, 44(sp)
   ble s0, s1, .main.for_repeat
   j .main.for_exit
.main.for_step:
   lw s1, 24(sp)
   sw s1, 56(sp)
   li s0, 1
   sw s0, 60(sp)
   lw s0, 60(sp)
   lw s1, 56(sp)
   add s0, s0, s1
   sw s0, 64(sp)
   lw s0, 64(sp)
   sw s0, 24(sp)
   j .main.for_condition
.main.for_repeat:
   j .main.for_init2
.main.for_exit:
   la s0, total
   sw s0, 68(sp)
   lw s0, 68(sp)
   lw s1, 0(s0)
   sw s1, 72(sp)
   lw s0, 72(sp)
   mv a0, s0
   call toString
   mv s1, a0
   sw s1, 76(sp)
   lw s0, 76(sp)
   lw s1, 0(s0)
   sw s1, 80(sp)
   lw s0, 80(sp)
   mv a0, s0
   call println
   li s0, 0
   sw s0, 84(sp)
   lw s0, 84(sp)
   mv a0, s0
   lw s0, 0(sp)
   mv ra, s0
   lw s0, 4(sp)
   mv s0, s0
   addi sp, sp, 1588
   ret
   j .main.mainexit
.main.for_init2:
   lw s1, 88(sp)
   sw s1, 92(sp)
   li s0, 1
   sw s0, 96(sp)
   lw s0, 96(sp)
   sw s0, 88(sp)
   j .main.for_condition2
.main.for_condition2:
   lw s1, 88(sp)
   sw s1, 100(sp)
   la s0, N
   sw s0, 104(sp)
   lw s0, 104(sp)
   lw s1, 0(s0)
   sw s1, 108(sp)
   lw s0, 108(sp)
   lw s1, 100(sp)
   slt s0, s0, s1
   sw s0, 112(sp)
   lw s0, 112(sp)
   xori s0, s0, 1
   sw s0, 116(sp)
   lw s0, 100(sp)
   lw s1, 108(sp)
   ble s0, s1, .main.for_repeat2
   j .main.for_exit2
.main.for_step2:
   lw s1, 88(sp)
   sw s1, 120(sp)
   li s0, 1
   sw s0, 124(sp)
   lw s0, 124(sp)
   lw s1, 120(sp)
   add s0, s0, s1
   sw s0, 128(sp)
   lw s0, 128(sp)
   sw s0, 88(sp)
   j .main.for_condition2
.main.for_repeat2:
   j .main.for_init3
.main.for_exit2:
   j .main.for_step
.main.for_init3:
   lw s1, 132(sp)
   sw s1, 136(sp)
   li s0, 1
   sw s0, 140(sp)
   lw s0, 140(sp)
   sw s0, 132(sp)
   j .main.for_condition3
.main.for_condition3:
   lw s1, 132(sp)
   sw s1, 144(sp)
   la s0, N
   sw s0, 148(sp)
   lw s0, 148(sp)
   lw s1, 0(s0)
   sw s1, 152(sp)
   lw s0, 152(sp)
   lw s1, 144(sp)
   slt s0, s0, s1
   sw s0, 156(sp)
   lw s0, 156(sp)
   xori s0, s0, 1
   sw s0, 160(sp)
   lw s0, 144(sp)
   lw s1, 152(sp)
   ble s0, s1, .main.for_repeat3
   j .main.for_exit3
.main.for_step3:
   lw s1, 132(sp)
   sw s1, 164(sp)
   li s0, 1
   sw s0, 168(sp)
   lw s0, 168(sp)
   lw s1, 164(sp)
   add s0, s0, s1
   sw s0, 172(sp)
   lw s0, 172(sp)
   sw s0, 132(sp)
   j .main.for_condition3
.main.for_repeat3:
   j .main.for_init4
.main.for_exit3:
   j .main.for_step2
.main.for_init4:
   lw s1, 176(sp)
   sw s1, 180(sp)
   li s0, 1
   sw s0, 184(sp)
   lw s0, 184(sp)
   sw s0, 176(sp)
   j .main.for_condition4
.main.for_condition4:
   lw s1, 176(sp)
   sw s1, 188(sp)
   la s0, N
   sw s0, 192(sp)
   lw s0, 192(sp)
   lw s1, 0(s0)
   sw s1, 196(sp)
   lw s0, 196(sp)
   lw s1, 188(sp)
   slt s0, s0, s1
   sw s0, 200(sp)
   lw s0, 200(sp)
   xori s0, s0, 1
   sw s0, 204(sp)
   lw s0, 188(sp)
   lw s1, 196(sp)
   ble s0, s1, .main.for_repeat4
   j .main.for_exit4
.main.for_step4:
   lw s1, 176(sp)
   sw s1, 208(sp)
   li s0, 1
   sw s0, 212(sp)
   lw s0, 212(sp)
   lw s1, 208(sp)
   add s0, s0, s1
   sw s0, 216(sp)
   lw s0, 216(sp)
   sw s0, 176(sp)
   j .main.for_condition4
.main.for_repeat4:
   j .main.for_init5
.main.for_exit4:
   j .main.for_step3
.main.for_init5:
   lw s1, 220(sp)
   sw s1, 224(sp)
   li s0, 1
   sw s0, 228(sp)
   lw s0, 228(sp)
   sw s0, 220(sp)
   j .main.for_condition5
.main.for_condition5:
   lw s1, 220(sp)
   sw s1, 232(sp)
   la s0, N
   sw s0, 236(sp)
   lw s0, 236(sp)
   lw s1, 0(s0)
   sw s1, 240(sp)
   lw s0, 240(sp)
   lw s1, 232(sp)
   slt s0, s0, s1
   sw s0, 244(sp)
   lw s0, 244(sp)
   xori s0, s0, 1
   sw s0, 248(sp)
   lw s0, 232(sp)
   lw s1, 240(sp)
   ble s0, s1, .main.for_repeat5
   j .main.for_exit5
.main.for_step5:
   lw s1, 220(sp)
   sw s1, 252(sp)
   li s0, 1
   sw s0, 256(sp)
   lw s0, 256(sp)
   lw s1, 252(sp)
   add s0, s0, s1
   sw s0, 260(sp)
   lw s0, 260(sp)
   sw s0, 220(sp)
   j .main.for_condition5
.main.for_repeat5:
   j .main.for_init6
.main.for_exit5:
   j .main.for_step4
.main.for_init6:
   lw s1, 264(sp)
   sw s1, 268(sp)
   li s0, 1
   sw s0, 272(sp)
   lw s0, 272(sp)
   sw s0, 264(sp)
   j .main.for_condition6
.main.for_condition6:
   lw s1, 264(sp)
   sw s1, 276(sp)
   la s0, N
   sw s0, 280(sp)
   lw s0, 280(sp)
   lw s1, 0(s0)
   sw s1, 284(sp)
   lw s0, 284(sp)
   lw s1, 276(sp)
   slt s0, s0, s1
   sw s0, 288(sp)
   lw s0, 288(sp)
   xori s0, s0, 1
   sw s0, 292(sp)
   lw s0, 276(sp)
   lw s1, 284(sp)
   ble s0, s1, .main.for_repeat6
   j .main.for_exit6
.main.for_step6:
   lw s1, 264(sp)
   sw s1, 296(sp)
   li s0, 1
   sw s0, 300(sp)
   lw s0, 300(sp)
   lw s1, 296(sp)
   add s0, s0, s1
   sw s0, 304(sp)
   lw s0, 304(sp)
   sw s0, 264(sp)
   j .main.for_condition6
.main.for_repeat6:
   lw s1, 24(sp)
   sw s1, 308(sp)
   lw s1, 88(sp)
   sw s1, 312(sp)
   lw s0, 308(sp)
   lw s1, 312(sp)
   xor s0, s0, s1
   sw s0, 316(sp)
   lw s0, 316(sp)
   snez s0, s0, zero
   sw s0, 320(sp)
   li s0, 0
   sw s0, 324(sp)
   lw s0, 324(sp)
   sw s0, 328(sp)
   lw s0, 308(sp)
   lw s1, 312(sp)
   bne s0, s1, .main.logic_right
   j .main.logic_exit
.main.for_exit6:
   j .main.for_step5
.main.if_true:
   la s0, total
   sw s0, 332(sp)
   lw s0, 332(sp)
   lw s1, 0(s0)
   sw s1, 336(sp)
   li s0, 1
   sw s0, 340(sp)
   lw s0, 340(sp)
   lw s1, 336(sp)
   add s0, s0, s1
   sw s0, 344(sp)
   la s0, total
   sw s0, 348(sp)
   lw s0, 344(sp)
   lw s1, 348(sp)
   sw s0, 0(s1)
   j .main.if_exit
.main.if_false:
   j .main.if_exit
.main.if_exit:
   j .main.for_step6
.main.logic_right:
   lw s1, 24(sp)
   sw s1, 352(sp)
   lw s1, 132(sp)
   sw s1, 356(sp)
   lw s0, 352(sp)
   lw s1, 356(sp)
   xor s0, s0, s1
   sw s0, 360(sp)
   lw s0, 360(sp)
   snez s0, s0, zero
   sw s0, 364(sp)
   lw s0, 364(sp)
   sw s0, 328(sp)
   j .main.logic_exit
.main.logic_exit:
   lw s1, 328(sp)
   sw s1, 368(sp)
   li s0, 0
   sw s0, 372(sp)
   lw s0, 372(sp)
   sw s0, 376(sp)
   lw s0, 368(sp)
   bne s0, zero, .main.logic_right2
   j .main.logic_exit2
.main.logic_right2:
   lw s1, 24(sp)
   sw s1, 380(sp)
   lw s1, 176(sp)
   sw s1, 384(sp)
   lw s0, 380(sp)
   lw s1, 384(sp)
   xor s0, s0, s1
   sw s0, 388(sp)
   lw s0, 388(sp)
   snez s0, s0, zero
   sw s0, 392(sp)
   lw s0, 392(sp)
   sw s0, 376(sp)
   j .main.logic_exit2
.main.logic_exit2:
   lw s1, 376(sp)
   sw s1, 396(sp)
   li s0, 0
   sw s0, 400(sp)
   lw s0, 400(sp)
   sw s0, 404(sp)
   lw s0, 396(sp)
   bne s0, zero, .main.logic_right3
   j .main.logic_exit3
.main.logic_right3:
   lw s1, 24(sp)
   sw s1, 408(sp)
   lw s1, 220(sp)
   sw s1, 412(sp)
   lw s0, 408(sp)
   lw s1, 412(sp)
   xor s0, s0, s1
   sw s0, 416(sp)
   lw s0, 416(sp)
   snez s0, s0, zero
   sw s0, 420(sp)
   lw s0, 420(sp)
   sw s0, 404(sp)
   j .main.logic_exit3
.main.logic_exit3:
   lw s1, 404(sp)
   sw s1, 424(sp)
   li s0, 0
   sw s0, 428(sp)
   lw s0, 428(sp)
   sw s0, 432(sp)
   lw s0, 424(sp)
   bne s0, zero, .main.logic_right4
   j .main.logic_exit4
.main.logic_right4:
   lw s1, 24(sp)
   sw s1, 436(sp)
   lw s1, 264(sp)
   sw s1, 440(sp)
   lw s0, 436(sp)
   lw s1, 440(sp)
   xor s0, s0, s1
   sw s0, 444(sp)
   lw s0, 444(sp)
   snez s0, s0, zero
   sw s0, 448(sp)
   lw s0, 448(sp)
   sw s0, 432(sp)
   j .main.logic_exit4
.main.logic_exit4:
   lw s1, 432(sp)
   sw s1, 452(sp)
   li s0, 0
   sw s0, 456(sp)
   lw s0, 456(sp)
   sw s0, 460(sp)
   lw s0, 452(sp)
   bne s0, zero, .main.logic_right5
   j .main.logic_exit5
.main.logic_right5:
   lw s1, 24(sp)
   sw s1, 464(sp)
   la s0, h
   sw s0, 468(sp)
   lw s0, 468(sp)
   lw s1, 0(s0)
   sw s1, 472(sp)
   lw s0, 464(sp)
   lw s1, 472(sp)
   xor s0, s0, s1
   sw s0, 476(sp)
   lw s0, 476(sp)
   snez s0, s0, zero
   sw s0, 480(sp)
   lw s0, 480(sp)
   sw s0, 460(sp)
   j .main.logic_exit5
.main.logic_exit5:
   lw s1, 460(sp)
   sw s1, 484(sp)
   li s0, 0
   sw s0, 488(sp)
   lw s0, 488(sp)
   sw s0, 492(sp)
   lw s0, 484(sp)
   bne s0, zero, .main.logic_right6
   j .main.logic_exit6
.main.logic_right6:
   lw s1, 24(sp)
   sw s1, 496(sp)
   la s0, i
   sw s0, 500(sp)
   lw s0, 500(sp)
   lw s1, 0(s0)
   sw s1, 504(sp)
   lw s0, 496(sp)
   lw s1, 504(sp)
   xor s0, s0, s1
   sw s0, 508(sp)
   lw s0, 508(sp)
   snez s0, s0, zero
   sw s0, 512(sp)
   lw s0, 512(sp)
   sw s0, 492(sp)
   j .main.logic_exit6
.main.logic_exit6:
   lw s1, 492(sp)
   sw s1, 516(sp)
   li s0, 0
   sw s0, 520(sp)
   lw s0, 520(sp)
   sw s0, 524(sp)
   lw s0, 516(sp)
   bne s0, zero, .main.logic_right7
   j .main.logic_exit7
.main.logic_right7:
   lw s1, 24(sp)
   sw s1, 528(sp)
   la s0, j
   sw s0, 532(sp)
   lw s0, 532(sp)
   lw s1, 0(s0)
   sw s1, 536(sp)
   lw s0, 528(sp)
   lw s1, 536(sp)
   xor s0, s0, s1
   sw s0, 540(sp)
   lw s0, 540(sp)
   snez s0, s0, zero
   sw s0, 544(sp)
   lw s0, 544(sp)
   sw s0, 524(sp)
   j .main.logic_exit7
.main.logic_exit7:
   lw s1, 524(sp)
   sw s1, 548(sp)
   li s0, 0
   sw s0, 552(sp)
   lw s0, 552(sp)
   sw s0, 556(sp)
   lw s0, 548(sp)
   bne s0, zero, .main.logic_right8
   j .main.logic_exit8
.main.logic_right8:
   lw s1, 24(sp)
   sw s1, 560(sp)
   la s0, k
   sw s0, 564(sp)
   lw s0, 564(sp)
   lw s1, 0(s0)
   sw s1, 568(sp)
   lw s0, 560(sp)
   lw s1, 568(sp)
   xor s0, s0, s1
   sw s0, 572(sp)
   lw s0, 572(sp)
   snez s0, s0, zero
   sw s0, 576(sp)
   lw s0, 576(sp)
   sw s0, 556(sp)
   j .main.logic_exit8
.main.logic_exit8:
   lw s1, 556(sp)
   sw s1, 580(sp)
   li s0, 0
   sw s0, 584(sp)
   lw s0, 584(sp)
   sw s0, 588(sp)
   lw s0, 580(sp)
   bne s0, zero, .main.logic_right9
   j .main.logic_exit9
.main.logic_right9:
   lw s1, 88(sp)
   sw s1, 592(sp)
   lw s1, 132(sp)
   sw s1, 596(sp)
   lw s0, 592(sp)
   lw s1, 596(sp)
   xor s0, s0, s1
   sw s0, 600(sp)
   lw s0, 600(sp)
   snez s0, s0, zero
   sw s0, 604(sp)
   lw s0, 604(sp)
   sw s0, 588(sp)
   j .main.logic_exit9
.main.logic_exit9:
   lw s1, 588(sp)
   sw s1, 608(sp)
   li s0, 0
   sw s0, 612(sp)
   lw s0, 612(sp)
   sw s0, 616(sp)
   lw s0, 608(sp)
   bne s0, zero, .main.logic_right10
   j .main.logic_exit10
.main.logic_right10:
   lw s1, 88(sp)
   sw s1, 620(sp)
   lw s1, 176(sp)
   sw s1, 624(sp)
   lw s0, 620(sp)
   lw s1, 624(sp)
   xor s0, s0, s1
   sw s0, 628(sp)
   lw s0, 628(sp)
   snez s0, s0, zero
   sw s0, 632(sp)
   lw s0, 632(sp)
   sw s0, 616(sp)
   j .main.logic_exit10
.main.logic_exit10:
   lw s1, 616(sp)
   sw s1, 636(sp)
   li s0, 0
   sw s0, 640(sp)
   lw s0, 640(sp)
   sw s0, 644(sp)
   lw s0, 636(sp)
   bne s0, zero, .main.logic_right11
   j .main.logic_exit11
.main.logic_right11:
   lw s1, 88(sp)
   sw s1, 648(sp)
   lw s1, 220(sp)
   sw s1, 652(sp)
   lw s0, 648(sp)
   lw s1, 652(sp)
   xor s0, s0, s1
   sw s0, 656(sp)
   lw s0, 656(sp)
   snez s0, s0, zero
   sw s0, 660(sp)
   lw s0, 660(sp)
   sw s0, 644(sp)
   j .main.logic_exit11
.main.logic_exit11:
   lw s1, 644(sp)
   sw s1, 664(sp)
   li s0, 0
   sw s0, 668(sp)
   lw s0, 668(sp)
   sw s0, 672(sp)
   lw s0, 664(sp)
   bne s0, zero, .main.logic_right12
   j .main.logic_exit12
.main.logic_right12:
   lw s1, 88(sp)
   sw s1, 676(sp)
   lw s1, 264(sp)
   sw s1, 680(sp)
   lw s0, 676(sp)
   lw s1, 680(sp)
   xor s0, s0, s1
   sw s0, 684(sp)
   lw s0, 684(sp)
   snez s0, s0, zero
   sw s0, 688(sp)
   lw s0, 688(sp)
   sw s0, 672(sp)
   j .main.logic_exit12
.main.logic_exit12:
   lw s1, 672(sp)
   sw s1, 692(sp)
   li s0, 0
   sw s0, 696(sp)
   lw s0, 696(sp)
   sw s0, 700(sp)
   lw s0, 692(sp)
   bne s0, zero, .main.logic_right13
   j .main.logic_exit13
.main.logic_right13:
   lw s1, 88(sp)
   sw s1, 704(sp)
   la s0, h
   sw s0, 708(sp)
   lw s0, 708(sp)
   lw s1, 0(s0)
   sw s1, 712(sp)
   lw s0, 704(sp)
   lw s1, 712(sp)
   xor s0, s0, s1
   sw s0, 716(sp)
   lw s0, 716(sp)
   snez s0, s0, zero
   sw s0, 720(sp)
   lw s0, 720(sp)
   sw s0, 700(sp)
   j .main.logic_exit13
.main.logic_exit13:
   lw s1, 700(sp)
   sw s1, 724(sp)
   li s0, 0
   sw s0, 728(sp)
   lw s0, 728(sp)
   sw s0, 732(sp)
   lw s0, 724(sp)
   bne s0, zero, .main.logic_right14
   j .main.logic_exit14
.main.logic_right14:
   lw s1, 88(sp)
   sw s1, 736(sp)
   la s0, i
   sw s0, 740(sp)
   lw s0, 740(sp)
   lw s1, 0(s0)
   sw s1, 744(sp)
   lw s0, 736(sp)
   lw s1, 744(sp)
   xor s0, s0, s1
   sw s0, 748(sp)
   lw s0, 748(sp)
   snez s0, s0, zero
   sw s0, 752(sp)
   lw s0, 752(sp)
   sw s0, 732(sp)
   j .main.logic_exit14
.main.logic_exit14:
   lw s1, 732(sp)
   sw s1, 756(sp)
   li s0, 0
   sw s0, 760(sp)
   lw s0, 760(sp)
   sw s0, 764(sp)
   lw s0, 756(sp)
   bne s0, zero, .main.logic_right15
   j .main.logic_exit15
.main.logic_right15:
   lw s1, 88(sp)
   sw s1, 768(sp)
   la s0, j
   sw s0, 772(sp)
   lw s0, 772(sp)
   lw s1, 0(s0)
   sw s1, 776(sp)
   lw s0, 768(sp)
   lw s1, 776(sp)
   xor s0, s0, s1
   sw s0, 780(sp)
   lw s0, 780(sp)
   snez s0, s0, zero
   sw s0, 784(sp)
   lw s0, 784(sp)
   sw s0, 764(sp)
   j .main.logic_exit15
.main.logic_exit15:
   lw s1, 764(sp)
   sw s1, 788(sp)
   li s0, 0
   sw s0, 792(sp)
   lw s0, 792(sp)
   sw s0, 796(sp)
   lw s0, 788(sp)
   bne s0, zero, .main.logic_right16
   j .main.logic_exit16
.main.logic_right16:
   lw s1, 88(sp)
   sw s1, 800(sp)
   la s0, k
   sw s0, 804(sp)
   lw s0, 804(sp)
   lw s1, 0(s0)
   sw s1, 808(sp)
   lw s0, 800(sp)
   lw s1, 808(sp)
   xor s0, s0, s1
   sw s0, 812(sp)
   lw s0, 812(sp)
   snez s0, s0, zero
   sw s0, 816(sp)
   lw s0, 816(sp)
   sw s0, 796(sp)
   j .main.logic_exit16
.main.logic_exit16:
   lw s1, 796(sp)
   sw s1, 820(sp)
   li s0, 0
   sw s0, 824(sp)
   lw s0, 824(sp)
   sw s0, 828(sp)
   lw s0, 820(sp)
   bne s0, zero, .main.logic_right17
   j .main.logic_exit17
.main.logic_right17:
   lw s1, 132(sp)
   sw s1, 832(sp)
   lw s1, 176(sp)
   sw s1, 836(sp)
   lw s0, 832(sp)
   lw s1, 836(sp)
   xor s0, s0, s1
   sw s0, 840(sp)
   lw s0, 840(sp)
   snez s0, s0, zero
   sw s0, 844(sp)
   lw s0, 844(sp)
   sw s0, 828(sp)
   j .main.logic_exit17
.main.logic_exit17:
   lw s1, 828(sp)
   sw s1, 848(sp)
   li s0, 0
   sw s0, 852(sp)
   lw s0, 852(sp)
   sw s0, 856(sp)
   lw s0, 848(sp)
   bne s0, zero, .main.logic_right18
   j .main.logic_exit18
.main.logic_right18:
   lw s1, 132(sp)
   sw s1, 860(sp)
   lw s1, 220(sp)
   sw s1, 864(sp)
   lw s0, 860(sp)
   lw s1, 864(sp)
   xor s0, s0, s1
   sw s0, 868(sp)
   lw s0, 868(sp)
   snez s0, s0, zero
   sw s0, 872(sp)
   lw s0, 872(sp)
   sw s0, 856(sp)
   j .main.logic_exit18
.main.logic_exit18:
   lw s1, 856(sp)
   sw s1, 876(sp)
   li s0, 0
   sw s0, 880(sp)
   lw s0, 880(sp)
   sw s0, 884(sp)
   lw s0, 876(sp)
   bne s0, zero, .main.logic_right19
   j .main.logic_exit19
.main.logic_right19:
   lw s1, 132(sp)
   sw s1, 888(sp)
   lw s1, 264(sp)
   sw s1, 892(sp)
   lw s0, 888(sp)
   lw s1, 892(sp)
   xor s0, s0, s1
   sw s0, 896(sp)
   lw s0, 896(sp)
   snez s0, s0, zero
   sw s0, 900(sp)
   lw s0, 900(sp)
   sw s0, 884(sp)
   j .main.logic_exit19
.main.logic_exit19:
   lw s1, 884(sp)
   sw s1, 904(sp)
   li s0, 0
   sw s0, 908(sp)
   lw s0, 908(sp)
   sw s0, 912(sp)
   lw s0, 904(sp)
   bne s0, zero, .main.logic_right20
   j .main.logic_exit20
.main.logic_right20:
   lw s1, 132(sp)
   sw s1, 916(sp)
   la s0, h
   sw s0, 920(sp)
   lw s0, 920(sp)
   lw s1, 0(s0)
   sw s1, 924(sp)
   lw s0, 916(sp)
   lw s1, 924(sp)
   xor s0, s0, s1
   sw s0, 928(sp)
   lw s0, 928(sp)
   snez s0, s0, zero
   sw s0, 932(sp)
   lw s0, 932(sp)
   sw s0, 912(sp)
   j .main.logic_exit20
.main.logic_exit20:
   lw s1, 912(sp)
   sw s1, 936(sp)
   li s0, 0
   sw s0, 940(sp)
   lw s0, 940(sp)
   sw s0, 944(sp)
   lw s0, 936(sp)
   bne s0, zero, .main.logic_right21
   j .main.logic_exit21
.main.logic_right21:
   lw s1, 132(sp)
   sw s1, 948(sp)
   la s0, i
   sw s0, 952(sp)
   lw s0, 952(sp)
   lw s1, 0(s0)
   sw s1, 956(sp)
   lw s0, 948(sp)
   lw s1, 956(sp)
   xor s0, s0, s1
   sw s0, 960(sp)
   lw s0, 960(sp)
   snez s0, s0, zero
   sw s0, 964(sp)
   lw s0, 964(sp)
   sw s0, 944(sp)
   j .main.logic_exit21
.main.logic_exit21:
   lw s1, 944(sp)
   sw s1, 968(sp)
   li s0, 0
   sw s0, 972(sp)
   lw s0, 972(sp)
   sw s0, 976(sp)
   lw s0, 968(sp)
   bne s0, zero, .main.logic_right22
   j .main.logic_exit22
.main.logic_right22:
   lw s1, 132(sp)
   sw s1, 980(sp)
   la s0, j
   sw s0, 984(sp)
   lw s0, 984(sp)
   lw s1, 0(s0)
   sw s1, 988(sp)
   lw s0, 980(sp)
   lw s1, 988(sp)
   xor s0, s0, s1
   sw s0, 992(sp)
   lw s0, 992(sp)
   snez s0, s0, zero
   sw s0, 996(sp)
   lw s0, 996(sp)
   sw s0, 976(sp)
   j .main.logic_exit22
.main.logic_exit22:
   lw s1, 976(sp)
   sw s1, 1000(sp)
   li s0, 0
   sw s0, 1004(sp)
   lw s0, 1004(sp)
   sw s0, 1008(sp)
   lw s0, 1000(sp)
   bne s0, zero, .main.logic_right23
   j .main.logic_exit23
.main.logic_right23:
   lw s1, 132(sp)
   sw s1, 1012(sp)
   la s0, k
   sw s0, 1016(sp)
   lw s0, 1016(sp)
   lw s1, 0(s0)
   sw s1, 1020(sp)
   lw s0, 1012(sp)
   lw s1, 1020(sp)
   xor s0, s0, s1
   sw s0, 1024(sp)
   lw s0, 1024(sp)
   snez s0, s0, zero
   sw s0, 1028(sp)
   lw s0, 1028(sp)
   sw s0, 1008(sp)
   j .main.logic_exit23
.main.logic_exit23:
   lw s1, 1008(sp)
   sw s1, 1032(sp)
   li s0, 0
   sw s0, 1036(sp)
   lw s0, 1036(sp)
   sw s0, 1040(sp)
   lw s0, 1032(sp)
   bne s0, zero, .main.logic_right24
   j .main.logic_exit24
.main.logic_right24:
   lw s1, 176(sp)
   sw s1, 1044(sp)
   lw s1, 220(sp)
   sw s1, 1048(sp)
   lw s0, 1044(sp)
   lw s1, 1048(sp)
   xor s0, s0, s1
   sw s0, 1052(sp)
   lw s0, 1052(sp)
   snez s0, s0, zero
   sw s0, 1056(sp)
   lw s0, 1056(sp)
   sw s0, 1040(sp)
   j .main.logic_exit24
.main.logic_exit24:
   lw s1, 1040(sp)
   sw s1, 1060(sp)
   li s0, 0
   sw s0, 1064(sp)
   lw s0, 1064(sp)
   sw s0, 1068(sp)
   lw s0, 1060(sp)
   bne s0, zero, .main.logic_right25
   j .main.logic_exit25
.main.logic_right25:
   lw s1, 176(sp)
   sw s1, 1072(sp)
   lw s1, 264(sp)
   sw s1, 1076(sp)
   lw s0, 1072(sp)
   lw s1, 1076(sp)
   xor s0, s0, s1
   sw s0, 1080(sp)
   lw s0, 1080(sp)
   snez s0, s0, zero
   sw s0, 1084(sp)
   lw s0, 1084(sp)
   sw s0, 1068(sp)
   j .main.logic_exit25
.main.logic_exit25:
   lw s1, 1068(sp)
   sw s1, 1088(sp)
   li s0, 0
   sw s0, 1092(sp)
   lw s0, 1092(sp)
   sw s0, 1096(sp)
   lw s0, 1088(sp)
   bne s0, zero, .main.logic_right26
   j .main.logic_exit26
.main.logic_right26:
   lw s1, 176(sp)
   sw s1, 1100(sp)
   la s0, h
   sw s0, 1104(sp)
   lw s0, 1104(sp)
   lw s1, 0(s0)
   sw s1, 1108(sp)
   lw s0, 1100(sp)
   lw s1, 1108(sp)
   xor s0, s0, s1
   sw s0, 1112(sp)
   lw s0, 1112(sp)
   snez s0, s0, zero
   sw s0, 1116(sp)
   lw s0, 1116(sp)
   sw s0, 1096(sp)
   j .main.logic_exit26
.main.logic_exit26:
   lw s1, 1096(sp)
   sw s1, 1120(sp)
   li s0, 0
   sw s0, 1124(sp)
   lw s0, 1124(sp)
   sw s0, 1128(sp)
   lw s0, 1120(sp)
   bne s0, zero, .main.logic_right27
   j .main.logic_exit27
.main.logic_right27:
   lw s1, 176(sp)
   sw s1, 1132(sp)
   la s0, i
   sw s0, 1136(sp)
   lw s0, 1136(sp)
   lw s1, 0(s0)
   sw s1, 1140(sp)
   lw s0, 1132(sp)
   lw s1, 1140(sp)
   xor s0, s0, s1
   sw s0, 1144(sp)
   lw s0, 1144(sp)
   snez s0, s0, zero
   sw s0, 1148(sp)
   lw s0, 1148(sp)
   sw s0, 1128(sp)
   j .main.logic_exit27
.main.logic_exit27:
   lw s1, 1128(sp)
   sw s1, 1152(sp)
   li s0, 0
   sw s0, 1156(sp)
   lw s0, 1156(sp)
   sw s0, 1160(sp)
   lw s0, 1152(sp)
   bne s0, zero, .main.logic_right28
   j .main.logic_exit28
.main.logic_right28:
   lw s1, 176(sp)
   sw s1, 1164(sp)
   la s0, j
   sw s0, 1168(sp)
   lw s0, 1168(sp)
   lw s1, 0(s0)
   sw s1, 1172(sp)
   lw s0, 1164(sp)
   lw s1, 1172(sp)
   xor s0, s0, s1
   sw s0, 1176(sp)
   lw s0, 1176(sp)
   snez s0, s0, zero
   sw s0, 1180(sp)
   lw s0, 1180(sp)
   sw s0, 1160(sp)
   j .main.logic_exit28
.main.logic_exit28:
   lw s1, 1160(sp)
   sw s1, 1184(sp)
   li s0, 0
   sw s0, 1188(sp)
   lw s0, 1188(sp)
   sw s0, 1192(sp)
   lw s0, 1184(sp)
   bne s0, zero, .main.logic_right29
   j .main.logic_exit29
.main.logic_right29:
   lw s1, 176(sp)
   sw s1, 1196(sp)
   la s0, k
   sw s0, 1200(sp)
   lw s0, 1200(sp)
   lw s1, 0(s0)
   sw s1, 1204(sp)
   lw s0, 1196(sp)
   lw s1, 1204(sp)
   xor s0, s0, s1
   sw s0, 1208(sp)
   lw s0, 1208(sp)
   snez s0, s0, zero
   sw s0, 1212(sp)
   lw s0, 1212(sp)
   sw s0, 1192(sp)
   j .main.logic_exit29
.main.logic_exit29:
   lw s1, 1192(sp)
   sw s1, 1216(sp)
   li s0, 0
   sw s0, 1220(sp)
   lw s0, 1220(sp)
   sw s0, 1224(sp)
   lw s0, 1216(sp)
   bne s0, zero, .main.logic_right30
   j .main.logic_exit30
.main.logic_right30:
   lw s1, 220(sp)
   sw s1, 1228(sp)
   lw s1, 264(sp)
   sw s1, 1232(sp)
   lw s0, 1228(sp)
   lw s1, 1232(sp)
   xor s0, s0, s1
   sw s0, 1236(sp)
   lw s0, 1236(sp)
   snez s0, s0, zero
   sw s0, 1240(sp)
   lw s0, 1240(sp)
   sw s0, 1224(sp)
   j .main.logic_exit30
.main.logic_exit30:
   lw s1, 1224(sp)
   sw s1, 1244(sp)
   li s0, 0
   sw s0, 1248(sp)
   lw s0, 1248(sp)
   sw s0, 1252(sp)
   lw s0, 1244(sp)
   bne s0, zero, .main.logic_right31
   j .main.logic_exit31
.main.logic_right31:
   lw s1, 220(sp)
   sw s1, 1256(sp)
   la s0, h
   sw s0, 1260(sp)
   lw s0, 1260(sp)
   lw s1, 0(s0)
   sw s1, 1264(sp)
   lw s0, 1256(sp)
   lw s1, 1264(sp)
   xor s0, s0, s1
   sw s0, 1268(sp)
   lw s0, 1268(sp)
   snez s0, s0, zero
   sw s0, 1272(sp)
   lw s0, 1272(sp)
   sw s0, 1252(sp)
   j .main.logic_exit31
.main.logic_exit31:
   lw s1, 1252(sp)
   sw s1, 1276(sp)
   li s0, 0
   sw s0, 1280(sp)
   lw s0, 1280(sp)
   sw s0, 1284(sp)
   lw s0, 1276(sp)
   bne s0, zero, .main.logic_right32
   j .main.logic_exit32
.main.logic_right32:
   lw s1, 220(sp)
   sw s1, 1288(sp)
   la s0, i
   sw s0, 1292(sp)
   lw s0, 1292(sp)
   lw s1, 0(s0)
   sw s1, 1296(sp)
   lw s0, 1288(sp)
   lw s1, 1296(sp)
   xor s0, s0, s1
   sw s0, 1300(sp)
   lw s0, 1300(sp)
   snez s0, s0, zero
   sw s0, 1304(sp)
   lw s0, 1304(sp)
   sw s0, 1284(sp)
   j .main.logic_exit32
.main.logic_exit32:
   lw s1, 1284(sp)
   sw s1, 1308(sp)
   li s0, 0
   sw s0, 1312(sp)
   lw s0, 1312(sp)
   sw s0, 1316(sp)
   lw s0, 1308(sp)
   bne s0, zero, .main.logic_right33
   j .main.logic_exit33
.main.logic_right33:
   lw s1, 220(sp)
   sw s1, 1320(sp)
   la s0, j
   sw s0, 1324(sp)
   lw s0, 1324(sp)
   lw s1, 0(s0)
   sw s1, 1328(sp)
   lw s0, 1320(sp)
   lw s1, 1328(sp)
   xor s0, s0, s1
   sw s0, 1332(sp)
   lw s0, 1332(sp)
   snez s0, s0, zero
   sw s0, 1336(sp)
   lw s0, 1336(sp)
   sw s0, 1316(sp)
   j .main.logic_exit33
.main.logic_exit33:
   lw s1, 1316(sp)
   sw s1, 1340(sp)
   li s0, 0
   sw s0, 1344(sp)
   lw s0, 1344(sp)
   sw s0, 1348(sp)
   lw s0, 1340(sp)
   bne s0, zero, .main.logic_right34
   j .main.logic_exit34
.main.logic_right34:
   lw s1, 220(sp)
   sw s1, 1352(sp)
   la s0, k
   sw s0, 1356(sp)
   lw s0, 1356(sp)
   lw s1, 0(s0)
   sw s1, 1360(sp)
   lw s0, 1352(sp)
   lw s1, 1360(sp)
   xor s0, s0, s1
   sw s0, 1364(sp)
   lw s0, 1364(sp)
   snez s0, s0, zero
   sw s0, 1368(sp)
   lw s0, 1368(sp)
   sw s0, 1348(sp)
   j .main.logic_exit34
.main.logic_exit34:
   lw s1, 1348(sp)
   sw s1, 1372(sp)
   li s0, 0
   sw s0, 1376(sp)
   lw s0, 1376(sp)
   sw s0, 1380(sp)
   lw s0, 1372(sp)
   bne s0, zero, .main.logic_right35
   j .main.logic_exit35
.main.logic_right35:
   lw s1, 264(sp)
   sw s1, 1384(sp)
   la s0, h
   sw s0, 1388(sp)
   lw s0, 1388(sp)
   lw s1, 0(s0)
   sw s1, 1392(sp)
   lw s0, 1384(sp)
   lw s1, 1392(sp)
   xor s0, s0, s1
   sw s0, 1396(sp)
   lw s0, 1396(sp)
   snez s0, s0, zero
   sw s0, 1400(sp)
   lw s0, 1400(sp)
   sw s0, 1380(sp)
   j .main.logic_exit35
.main.logic_exit35:
   lw s1, 1380(sp)
   sw s1, 1404(sp)
   li s0, 0
   sw s0, 1408(sp)
   lw s0, 1408(sp)
   sw s0, 1412(sp)
   lw s0, 1404(sp)
   bne s0, zero, .main.logic_right36
   j .main.logic_exit36
.main.logic_right36:
   lw s1, 264(sp)
   sw s1, 1416(sp)
   la s0, i
   sw s0, 1420(sp)
   lw s0, 1420(sp)
   lw s1, 0(s0)
   sw s1, 1424(sp)
   lw s0, 1416(sp)
   lw s1, 1424(sp)
   xor s0, s0, s1
   sw s0, 1428(sp)
   lw s0, 1428(sp)
   snez s0, s0, zero
   sw s0, 1432(sp)
   lw s0, 1432(sp)
   sw s0, 1412(sp)
   j .main.logic_exit36
.main.logic_exit36:
   lw s1, 1412(sp)
   sw s1, 1436(sp)
   li s0, 0
   sw s0, 1440(sp)
   lw s0, 1440(sp)
   sw s0, 1444(sp)
   lw s0, 1436(sp)
   bne s0, zero, .main.logic_right37
   j .main.logic_exit37
.main.logic_right37:
   lw s1, 264(sp)
   sw s1, 1448(sp)
   la s0, j
   sw s0, 1452(sp)
   lw s0, 1452(sp)
   lw s1, 0(s0)
   sw s1, 1456(sp)
   lw s0, 1448(sp)
   lw s1, 1456(sp)
   xor s0, s0, s1
   sw s0, 1460(sp)
   lw s0, 1460(sp)
   snez s0, s0, zero
   sw s0, 1464(sp)
   lw s0, 1464(sp)
   sw s0, 1444(sp)
   j .main.logic_exit37
.main.logic_exit37:
   lw s1, 1444(sp)
   sw s1, 1468(sp)
   li s0, 0
   sw s0, 1472(sp)
   lw s0, 1472(sp)
   sw s0, 1476(sp)
   lw s0, 1468(sp)
   bne s0, zero, .main.logic_right38
   j .main.logic_exit38
.main.logic_right38:
   lw s1, 264(sp)
   sw s1, 1480(sp)
   la s0, k
   sw s0, 1484(sp)
   lw s0, 1484(sp)
   lw s1, 0(s0)
   sw s1, 1488(sp)
   lw s0, 1480(sp)
   lw s1, 1488(sp)
   xor s0, s0, s1
   sw s0, 1492(sp)
   lw s0, 1492(sp)
   snez s0, s0, zero
   sw s0, 1496(sp)
   lw s0, 1496(sp)
   sw s0, 1476(sp)
   j .main.logic_exit38
.main.logic_exit38:
   lw s1, 1476(sp)
   sw s1, 1500(sp)
   li s0, 0
   sw s0, 1504(sp)
   lw s0, 1504(sp)
   sw s0, 1508(sp)
   lw s0, 1500(sp)
   bne s0, zero, .main.logic_right39
   j .main.logic_exit39
.main.logic_right39:
   la s0, i
   sw s0, 1512(sp)
   lw s0, 1512(sp)
   lw s1, 0(s0)
   sw s1, 1516(sp)
   la s0, j
   sw s0, 1520(sp)
   lw s0, 1520(sp)
   lw s1, 0(s0)
   sw s1, 1524(sp)
   lw s0, 1516(sp)
   lw s1, 1524(sp)
   xor s0, s0, s1
   sw s0, 1528(sp)
   lw s0, 1528(sp)
   snez s0, s0, zero
   sw s0, 1532(sp)
   lw s0, 1532(sp)
   sw s0, 1508(sp)
   j .main.logic_exit39
.main.logic_exit39:
   lw s1, 1508(sp)
   sw s1, 1536(sp)
   li s0, 0
   sw s0, 1540(sp)
   lw s0, 1540(sp)
   sw s0, 1544(sp)
   lw s0, 1536(sp)
   bne s0, zero, .main.logic_right40
   j .main.logic_exit40
.main.logic_right40:
   la s0, h
   sw s0, 1548(sp)
   lw s0, 1548(sp)
   lw s1, 0(s0)
   sw s1, 1552(sp)
   la s0, k
   sw s0, 1556(sp)
   lw s0, 1556(sp)
   lw s1, 0(s0)
   sw s1, 1560(sp)
   lw s0, 1552(sp)
   lw s1, 1560(sp)
   xor s0, s0, s1
   sw s0, 1564(sp)
   lw s0, 1564(sp)
   snez s0, s0, zero
   sw s0, 1568(sp)
   lw s0, 1568(sp)
   sw s0, 1544(sp)
   j .main.logic_exit40
.main.logic_exit40:
   lw s1, 1544(sp)
   sw s1, 1572(sp)
   lw s0, 1572(sp)
   bne s0, zero, .main.if_true
   j .main.if_false
.main.mainexit:
   li s0, 0
   sw s0, 1576(sp)
   lw s0, 1576(sp)
   mv a0, s0
   lw s0, 0(sp)
   mv ra, s0
   lw s0, 4(sp)
   mv s0, s0
   addi sp, sp, 1588
   ret
   lw s1, 1580(sp)
   sw s1, 1584(sp)
   lw s0, 1584(sp)
   mv a0, s0
   lw s0, 0(sp)
   mv ra, s0
   lw s0, 4(sp)
   mv s0, s0
   addi sp, sp, 1588
   ret
.Lfunc_end0:
   .size   main, .Lfunc_end0-main
.globl   __init_function__
   .p2align   2
   .type   __init_function__,@function
__init_function__:
.__init_function__.__init_function__entry:
   addi sp, sp, -56
   mv s1, ra
   sw s1, 0(sp)
   mv s1, s0
   sw s1, 4(sp)
   la s0, N
   sw s0, 8(sp)
   li s0, 0
   sw s0, 12(sp)
   lw s0, 12(sp)
   lw s1, 8(sp)
   sw s0, 0(s1)
   la s0, h
   sw s0, 16(sp)
   li s0, 99
   sw s0, 20(sp)
   lw s0, 20(sp)
   lw s1, 16(sp)
   sw s0, 0(s1)
   la s0, i
   sw s0, 24(sp)
   li s0, 100
   sw s0, 28(sp)
   lw s0, 28(sp)
   lw s1, 24(sp)
   sw s0, 0(s1)
   la s0, j
   sw s0, 32(sp)
   li s0, 101
   sw s0, 36(sp)
   lw s0, 36(sp)
   lw s1, 32(sp)
   sw s0, 0(s1)
   la s0, k
   sw s0, 40(sp)
   li s0, 102
   sw s0, 44(sp)
   lw s0, 44(sp)
   lw s1, 40(sp)
   sw s0, 0(s1)
   la s0, total
   sw s0, 48(sp)
   li s0, 0
   sw s0, 52(sp)
   lw s0, 52(sp)
   lw s1, 48(sp)
   sw s0, 0(s1)
   j .__init_function__.__init_function__exit
.__init_function__.__init_function__exit:
   lw s0, 0(sp)
   mv ra, s0
   lw s0, 4(sp)
   mv s0, s0
   addi sp, sp, 56
   ret
.Lfunc_end1:
   .size   __init_function__, .Lfunc_end1-__init_function__
   .type   N,@object
   .section   .rodata.str1.1,"aMS",@progbits,1
   .globl   N
   .p2align   2
N:
   .word   0
   .size   .N, 4
   .type   h,@object
   .globl   h
   .p2align   2
h:
   .word   0
   .size   .h, 4
   .type   i,@object
   .globl   i
   .p2align   2
i:
   .word   0
   .size   .i, 4
   .type   j,@object
   .globl   j
   .p2align   2
j:
   .word   0
   .size   .j, 4
   .type   k,@object
   .globl   k
   .p2align   2
k:
   .word   0
   .size   .k, 4
   .type   total,@object
   .globl   total
   .p2align   2
total:
   .word   0
   .size   .total, 4
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
