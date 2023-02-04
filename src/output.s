	.text
	.file	"test.mx"
.globl   main
   .p2align   2
   .type   main,@function
main:
.main.mainentry:
   addi sp, sp, -1032
   sw ra, 456(sp)
   sw s0, 876(sp)
   sw s1, 304(sp)
   sw s2, 228(sp)
   sw s3, 408(sp)
   sw s4, 708(sp)
   sw s5, 612(sp)
   sw s6, 508(sp)
   sw s7, 724(sp)
   sw s8, 328(sp)
   sw s9, 316(sp)
   sw s10, 364(sp)
   sw s11, 580(sp)
   call __init_function__
   j .main.first_block__main
.main.first_block__main:
   li t2, 4
   li a0, 1
   mul t2, t2, a0
   li a0, 4
   add a0, a0, t2
   call __built_in_malloc
   li t2, 1
   sw t2, 0(a0)
   li t2, 1
   li a3, 4
   mul t2, t2, a3
   add t2, t2, a0
   la a0, count
   sw t2, 0(a0)
   la t2, count
   lw a0, 0(t2)
   li a3, 0
   li t2, 4
   mul t2, a3, t2
   add a0, t2, a0
   li t2, 0
   sw t2, 0(a0)
   lw t2, 952(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 952(sp)
   lw t2, 560(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 560(sp)
   lw t2, 916(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 916(sp)
   lw t2, 832(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 832(sp)
   lw t2, 188(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 188(sp)
   lw t2, 572(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 572(sp)
   lw t2, 96(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 96(sp)
   lw t2, 312(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 312(sp)
   lw t2, 548(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 548(sp)
   lw t2, 512(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 512(sp)
   lw t2, 564(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 564(sp)
   lw t2, 200(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 200(sp)
   lw t2, 108(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 108(sp)
   lw t2, 584(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 584(sp)
   lw t2, 472(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 472(sp)
   lw t2, 476(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 476(sp)
   lw t2, 844(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 844(sp)
   lw t2, 372(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 372(sp)
   lw t2, 1028(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 1028(sp)
   lw t2, 276(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 276(sp)
   lw t2, 452(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 452(sp)
   lw t2, 836(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 836(sp)
   lw t2, 100(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 100(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   mv s11, a0
   lw t2, 404(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 404(sp)
   lw t2, 540(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 540(sp)
   lw t2, 932(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 932(sp)
   lw t2, 128(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 128(sp)
   lw t2, 1016(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 1016(sp)
   lw t2, 148(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 148(sp)
   lw t2, 1020(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 1020(sp)
   lw t2, 744(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 744(sp)
   lw t2, 712(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 712(sp)
   lw t2, 156(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 156(sp)
   lw t2, 628(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 628(sp)
   lw t2, 416(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 416(sp)
   lw t2, 184(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 184(sp)
   lw t2, 556(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 556(sp)
   lw t2, 44(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 44(sp)
   lw t2, 80(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 80(sp)
   lw t2, 464(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 464(sp)
   lw t2, 736(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 736(sp)
   lw t2, 236(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 236(sp)
   lw t2, 624(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 624(sp)
   lw t2, 676(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 676(sp)
   lw t2, 400(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 400(sp)
   lw t2, 340(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 340(sp)
   lw t2, 252(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 252(sp)
   lw t2, 380(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 380(sp)
   lw t2, 680(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 680(sp)
   lw t2, 988(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 988(sp)
   lw t2, 24(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 24(sp)
   lw t2, 852(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 852(sp)
   lw t2, 904(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 904(sp)
   lw t2, 776(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 776(sp)
   lw t2, 296(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 296(sp)
   lw t2, 592(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 592(sp)
   lw t2, 984(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 984(sp)
   lw t2, 292(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 292(sp)
   lw t2, 440(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 440(sp)
   lw t2, 620(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 620(sp)
   lw t2, 356(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 356(sp)
   lw t2, 176(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 176(sp)
   lw t2, 216(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 216(sp)
   lw t2, 448(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 448(sp)
   lw t2, 468(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 468(sp)
   lw t2, 0(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 0(sp)
   lw t2, 424(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 424(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   mv s4, a0
   lw t2, 848(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 848(sp)
   lw t2, 872(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 872(sp)
   lw t2, 224(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 224(sp)
   lw t2, 792(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 792(sp)
   lw t2, 260(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 260(sp)
   lw t2, 244(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 244(sp)
   lw t2, 432(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 432(sp)
   lw t2, 64(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 64(sp)
   lw t2, 480(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 480(sp)
   la s1, count
   lw a0, 0(s1)
   call getcount
   mv s1, a0
   lw t2, 164(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 164(sp)
   lw t2, 520(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 520(sp)
   lw t2, 272(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 272(sp)
   lw t2, 48(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 48(sp)
   lw t2, 912(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 912(sp)
   lw t2, 524(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 524(sp)
   lw t2, 368(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 368(sp)
   lw t2, 820(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 820(sp)
   lw t2, 588(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 588(sp)
   lw t2, 428(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 428(sp)
   lw t2, 980(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 980(sp)
   lw t2, 132(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 132(sp)
   lw t2, 956(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 956(sp)
   lw t2, 496(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 496(sp)
   la s5, count
   lw a0, 0(s5)
   call getcount
   mv s5, a0
   lw t2, 112(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 112(sp)
   la s10, count
   lw a0, 0(s10)
   call getcount
   mv s10, a0
   lw t2, 284(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 284(sp)
   lw t2, 664(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 664(sp)
   lw t2, 884(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 884(sp)
   lw t2, 796(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 796(sp)
   lw t2, 972(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 972(sp)
   lw t2, 248(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 248(sp)
   lw t2, 388(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 388(sp)
   lw t2, 688(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 688(sp)
   lw t2, 536(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 536(sp)
   lw t2, 936(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 936(sp)
   lw t2, 460(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 460(sp)
   lw t2, 352(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 352(sp)
   lw t2, 172(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 172(sp)
   lw t2, 544(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 544(sp)
   lw t2, 320(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 320(sp)
   lw t2, 672(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 672(sp)
   lw t2, 516(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 516(sp)
   lw t2, 864(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 864(sp)
   lw t2, 944(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 944(sp)
   lw t2, 208(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 208(sp)
   lw t2, 256(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 256(sp)
   lw t2, 1004(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 1004(sp)
   lw t2, 828(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 828(sp)
   lw t2, 40(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 40(sp)
   lw t2, 920(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 920(sp)
   lw t2, 960(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 960(sp)
   lw t2, 8(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 8(sp)
   lw t2, 824(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 824(sp)
   lw t2, 868(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 868(sp)
   lw t2, 280(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 280(sp)
   lw t2, 300(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 300(sp)
   lw t2, 924(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 924(sp)
   lw t2, 968(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 968(sp)
   lw t2, 976(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 976(sp)
   lw t2, 204(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 204(sp)
   lw t2, 160(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 160(sp)
   lw t2, 804(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 804(sp)
   lw t2, 4(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 4(sp)
   lw t2, 740(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 740(sp)
   lw t2, 700(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 700(sp)
   lw t2, 644(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 644(sp)
   lw t2, 732(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 732(sp)
   lw t2, 728(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 728(sp)
   lw t2, 532(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 532(sp)
   lw t2, 436(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 436(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   mv s7, a0
   lw t2, 856(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 856(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   mv s3, a0
   lw t2, 240(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 240(sp)
   lw t2, 772(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 772(sp)
   lw t2, 192(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 192(sp)
   lw t2, 716(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 716(sp)
   lw t2, 344(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 344(sp)
   lw t2, 232(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 232(sp)
   lw t2, 324(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 324(sp)
   lw t2, 36(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 36(sp)
   lw t2, 308(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 308(sp)
   lw t2, 376(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 376(sp)
   lw t2, 768(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 768(sp)
   lw t2, 784(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 784(sp)
   lw t2, 996(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 996(sp)
   lw t2, 52(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 52(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   mv s2, a0
   lw t2, 92(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 92(sp)
   lw t2, 104(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 104(sp)
   lw t2, 908(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 908(sp)
   lw t2, 392(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 392(sp)
   lw t2, 948(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 948(sp)
   lw t2, 616(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 616(sp)
   lw t2, 120(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 120(sp)
   lw t2, 764(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 764(sp)
   lw t2, 928(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 928(sp)
   lw t2, 32(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 32(sp)
   lw t2, 212(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 212(sp)
   lw t2, 1000(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 1000(sp)
   lw t2, 76(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 76(sp)
   lw t2, 632(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 632(sp)
   lw t2, 144(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 144(sp)
   lw t2, 220(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 220(sp)
   lw t2, 1024(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 1024(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   mv s9, a0
   lw t2, 608(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 608(sp)
   lw t2, 696(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 696(sp)
   lw t2, 704(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 704(sp)
   lw t2, 808(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 808(sp)
   lw t2, 124(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 124(sp)
   lw t2, 568(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 568(sp)
   lw t2, 12(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 12(sp)
   lw t2, 964(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 964(sp)
   lw t2, 636(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 636(sp)
   lw t2, 652(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 652(sp)
   lw t2, 168(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 168(sp)
   lw t2, 360(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 360(sp)
   lw t2, 900(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 900(sp)
   lw t2, 488(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 488(sp)
   lw t2, 68(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 68(sp)
   lw t2, 756(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 756(sp)
   lw t2, 396(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 396(sp)
   lw t2, 1012(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 1012(sp)
   lw t2, 648(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 648(sp)
   lw t2, 72(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 72(sp)
   lw t2, 860(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 860(sp)
   lw t2, 600(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 600(sp)
   lw t2, 116(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 116(sp)
   lw t2, 656(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 656(sp)
   lw t2, 940(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 940(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   mv s8, a0
   lw t2, 780(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 780(sp)
   lw t2, 896(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 896(sp)
   lw t2, 492(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 492(sp)
   lw t2, 748(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 748(sp)
   lw t2, 596(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 596(sp)
   lw t2, 1008(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 1008(sp)
   lw t2, 444(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 444(sp)
   lw t2, 992(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 992(sp)
   lw t2, 196(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 196(sp)
   lw t2, 892(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 892(sp)
   lw t2, 384(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 384(sp)
   lw t2, 788(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 788(sp)
   lw t2, 840(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 840(sp)
   lw t2, 420(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 420(sp)
   lw t2, 348(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 348(sp)
   lw t2, 880(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 880(sp)
   lw t2, 604(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 604(sp)
   lw t2, 752(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 752(sp)
   lw t2, 640(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 640(sp)
   lw t2, 500(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 500(sp)
   lw t2, 816(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 816(sp)
   lw t2, 140(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 140(sp)
   lw t2, 136(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 136(sp)
   lw t2, 660(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 660(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   mv s0, a0
   lw t2, 288(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 288(sp)
   lw t2, 888(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 888(sp)
   lw t2, 692(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 692(sp)
   lw t2, 88(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 88(sp)
   lw t2, 28(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 28(sp)
   lw t2, 552(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 552(sp)
   lw t2, 84(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 84(sp)
   lw t2, 180(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 180(sp)
   lw t2, 336(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 336(sp)
   lw t2, 60(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 60(sp)
   lw t2, 484(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 484(sp)
   lw t2, 812(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 812(sp)
   lw t2, 504(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 504(sp)
   lw t2, 684(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 684(sp)
   lw t2, 760(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 760(sp)
   lw t2, 528(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 528(sp)
   lw t2, 332(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 332(sp)
   lw t2, 20(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 20(sp)
   lw t2, 412(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 412(sp)
   lw t2, 264(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 264(sp)
   lw t2, 720(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 720(sp)
   lw t2, 56(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 56(sp)
   lw t2, 576(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 576(sp)
   lw t2, 668(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 668(sp)
   lw t2, 152(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 152(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   mv s6, a0
   lw t2, 268(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 268(sp)
   lw t2, 16(sp)
   la t2, count
   lw a0, 0(t2)
   call getcount
   sw a0, 16(sp)
   lw a0, 952(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 560(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 916(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 832(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 188(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 572(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 96(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 312(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 548(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 512(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 564(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 200(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 108(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 584(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 472(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 476(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 844(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 372(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 1028(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 276(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 452(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 836(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 100(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   mv a0, s11
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 404(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 540(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 932(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 128(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 1016(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 148(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 1020(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 744(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 712(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 156(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 628(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 416(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 184(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 556(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 44(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 80(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 464(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 736(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 236(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 624(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 676(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 400(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 340(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 252(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 380(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 680(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 988(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 24(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 852(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 904(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 776(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 296(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 592(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 984(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 292(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 440(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 620(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 356(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 176(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 216(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 448(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 468(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 0(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 424(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   mv a0, s4
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 848(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 872(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 224(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 792(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 260(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 244(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 432(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 64(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 480(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   mv a0, s1
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 164(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 520(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 272(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 48(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 912(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 524(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 368(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 820(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 588(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 428(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 980(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 132(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 956(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 496(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   mv a0, s5
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 112(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   mv a0, s10
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 284(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 664(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 884(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 796(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 972(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 248(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 388(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 688(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 536(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 936(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 460(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 352(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 172(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 544(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 320(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 672(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 516(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 864(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 944(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 208(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 256(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 1004(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 828(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 40(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 920(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 960(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 8(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 824(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 868(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 280(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 300(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 924(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 968(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 976(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 204(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 160(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 804(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 4(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 740(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 700(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 644(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 732(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 728(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 532(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 436(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   mv a0, s7
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 856(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   mv a0, s3
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 240(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 772(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 192(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 716(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 344(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 232(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 324(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 36(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 308(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 376(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 768(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 784(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 996(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 52(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   mv a0, s2
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 92(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 104(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 908(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 392(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 948(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 616(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 120(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 764(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 928(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 32(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 212(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 1000(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 76(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 632(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 144(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 220(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 1024(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   mv a0, s9
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 608(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 696(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 704(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 808(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 124(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 568(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 12(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 964(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 636(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 652(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 168(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 360(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 900(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 488(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 68(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 756(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 396(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 1012(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 648(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 72(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 860(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 600(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 116(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 656(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 940(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   mv a0, s8
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 780(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 896(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 492(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 748(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 596(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 1008(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 444(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 992(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 196(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 892(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 384(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 788(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 840(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 420(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 348(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 880(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 604(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 752(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 640(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 500(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 816(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 140(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 136(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 660(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   mv a0, s0
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 288(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 888(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 692(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 88(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 28(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 552(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 84(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 180(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 336(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 60(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 484(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 812(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 504(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 684(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 760(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 528(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 332(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 20(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 412(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 264(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 720(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 56(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 576(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 668(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 152(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   mv a0, s6
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 268(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 16(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   li t2, 0
   la a0, .const_str2
   add a0, a0, t2
   call println
   lw a0, 952(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 560(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 916(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 832(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 188(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 572(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 96(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 312(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 548(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 512(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 564(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 200(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 108(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 584(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 472(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 476(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 844(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 372(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 1028(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 276(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 452(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 836(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 100(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   mv a0, s11
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 404(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 540(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 932(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 128(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 1016(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 148(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 1020(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 744(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 712(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 156(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 628(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 416(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 184(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 556(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 44(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 80(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 464(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 736(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 236(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 624(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 676(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 400(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 340(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 252(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 380(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 680(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 988(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 24(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 852(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 904(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 776(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 296(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 592(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 984(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 292(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 440(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 620(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 356(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 176(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 216(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 448(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 468(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 0(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 424(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   mv a0, s4
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 848(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 872(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 224(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 792(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 260(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 244(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 432(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   lw a0, 64(sp)
   call toString
   li t2, 0
   la a3, .const_str
   add a1, a3, t2
   call __build_in_str_add
   call print
   lw a0, 480(sp)
   call toString
   li a3, 0
   la t2, .const_str
   add a1, t2, a3
   call __build_in_str_add
   call print
   mv a0, s1
   call toString
   li t2, 0
   la s1, .const_str
   add a1, s1, t2
   call __build_in_str_add
   call print
   lw a0, 164(sp)
   call toString
   li t2, 0
   la s1, .const_str
   add a1, s1, t2
   call __build_in_str_add
   call print
   lw a0, 520(sp)
   call toString
   li s1, 0
   la t2, .const_str
   add a1, t2, s1
   call __build_in_str_add
   call print
   lw a0, 272(sp)
   call toString
   li t2, 0
   la s1, .const_str
   add a1, s1, t2
   call __build_in_str_add
   call print
   lw a0, 48(sp)
   call toString
   li t2, 0
   la s1, .const_str
   add a1, s1, t2
   call __build_in_str_add
   call print
   lw a0, 912(sp)
   call toString
   li s1, 0
   la t2, .const_str
   add a1, t2, s1
   call __build_in_str_add
   call print
   lw a0, 524(sp)
   call toString
   li s1, 0
   la t2, .const_str
   add a1, t2, s1
   call __build_in_str_add
   call print
   lw a0, 368(sp)
   call toString
   li t2, 0
   la s1, .const_str
   add a1, s1, t2
   call __build_in_str_add
   call print
   lw a0, 820(sp)
   call toString
   li t2, 0
   la s1, .const_str
   add a1, s1, t2
   call __build_in_str_add
   call print
   lw a0, 588(sp)
   call toString
   li s1, 0
   la t2, .const_str
   add a1, t2, s1
   call __build_in_str_add
   call print
   lw a0, 428(sp)
   call toString
   li s1, 0
   la t2, .const_str
   add a1, t2, s1
   call __build_in_str_add
   call print
   lw a0, 980(sp)
   call toString
   li s1, 0
   la t2, .const_str
   add a1, t2, s1
   call __build_in_str_add
   call print
   lw a0, 132(sp)
   call toString
   li t2, 0
   la s1, .const_str
   add a1, s1, t2
   call __build_in_str_add
   call print
   lw a0, 956(sp)
   call toString
   li s1, 0
   la t2, .const_str
   add a1, t2, s1
   call __build_in_str_add
   call print
   lw a0, 496(sp)
   call toString
   li t2, 0
   la s1, .const_str
   add a1, s1, t2
   call __build_in_str_add
   call print
   mv a0, s5
   call toString
   li s5, 0
   la s1, .const_str
   add a1, s1, s5
   call __build_in_str_add
   call print
   lw a0, 112(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   mv a0, s10
   call toString
   li s5, 0
   la s1, .const_str
   add a1, s1, s5
   call __build_in_str_add
   call print
   lw a0, 284(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 664(sp)
   call toString
   li s5, 0
   la s1, .const_str
   add a1, s1, s5
   call __build_in_str_add
   call print
   lw a0, 884(sp)
   call toString
   li s5, 0
   la s1, .const_str
   add a1, s1, s5
   call __build_in_str_add
   call print
   lw a0, 796(sp)
   call toString
   li s5, 0
   la s1, .const_str
   add a1, s1, s5
   call __build_in_str_add
   call print
   lw a0, 972(sp)
   call toString
   li s5, 0
   la s1, .const_str
   add a1, s1, s5
   call __build_in_str_add
   call print
   lw a0, 248(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 388(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 688(sp)
   call toString
   li s5, 0
   la s1, .const_str
   add a1, s1, s5
   call __build_in_str_add
   call print
   lw a0, 536(sp)
   call toString
   li s5, 0
   la s1, .const_str
   add a1, s1, s5
   call __build_in_str_add
   call print
   lw a0, 936(sp)
   call toString
   li s5, 0
   la s1, .const_str
   add a1, s1, s5
   call __build_in_str_add
   call print
   lw a0, 460(sp)
   call toString
   li s5, 0
   la s1, .const_str
   add a1, s1, s5
   call __build_in_str_add
   call print
   lw a0, 352(sp)
   call toString
   li s5, 0
   la s1, .const_str
   add a1, s1, s5
   call __build_in_str_add
   call print
   lw a0, 172(sp)
   call toString
   li s5, 0
   la s1, .const_str
   add a1, s1, s5
   call __build_in_str_add
   call print
   lw a0, 544(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 320(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 672(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 516(sp)
   call toString
   li s5, 0
   la s1, .const_str
   add a1, s1, s5
   call __build_in_str_add
   call print
   lw a0, 864(sp)
   call toString
   li s5, 0
   la s1, .const_str
   add a1, s1, s5
   call __build_in_str_add
   call print
   lw a0, 944(sp)
   call toString
   li s5, 0
   la s1, .const_str
   add a1, s1, s5
   call __build_in_str_add
   call print
   lw a0, 208(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 256(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 1004(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 828(sp)
   call toString
   li s5, 0
   la s1, .const_str
   add a1, s1, s5
   call __build_in_str_add
   call print
   lw a0, 40(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 920(sp)
   call toString
   li s5, 0
   la s1, .const_str
   add a1, s1, s5
   call __build_in_str_add
   call print
   lw a0, 960(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 8(sp)
   call toString
   li s5, 0
   la s1, .const_str
   add a1, s1, s5
   call __build_in_str_add
   call print
   lw a0, 824(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 868(sp)
   call toString
   li s5, 0
   la s1, .const_str
   add a1, s1, s5
   call __build_in_str_add
   call print
   lw a0, 280(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 300(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 924(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 968(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 976(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 204(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 160(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 804(sp)
   call toString
   li s5, 0
   la s1, .const_str
   add a1, s1, s5
   call __build_in_str_add
   call print
   lw a0, 4(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 740(sp)
   call toString
   li s5, 0
   la s1, .const_str
   add a1, s1, s5
   call __build_in_str_add
   call print
   lw a0, 700(sp)
   call toString
   li s5, 0
   la s1, .const_str
   add a1, s1, s5
   call __build_in_str_add
   call print
   lw a0, 644(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 732(sp)
   call toString
   li s5, 0
   la s1, .const_str
   add a1, s1, s5
   call __build_in_str_add
   call print
   lw a0, 728(sp)
   call toString
   li s5, 0
   la s1, .const_str
   add a1, s1, s5
   call __build_in_str_add
   call print
   lw a0, 532(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 436(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   mv a0, s7
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 856(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   mv a0, s3
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 240(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 772(sp)
   call toString
   li s5, 0
   la s1, .const_str
   add a1, s1, s5
   call __build_in_str_add
   call print
   lw a0, 192(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 716(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 344(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 232(sp)
   call toString
   li s5, 0
   la s1, .const_str
   add a1, s1, s5
   call __build_in_str_add
   call print
   lw a0, 324(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 36(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 308(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 376(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 768(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 784(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 996(sp)
   call toString
   li s5, 0
   la s1, .const_str
   add a1, s1, s5
   call __build_in_str_add
   call print
   lw a0, 52(sp)
   call toString
   li s5, 0
   la s1, .const_str
   add a1, s1, s5
   call __build_in_str_add
   call print
   mv a0, s2
   call toString
   li s5, 0
   la s1, .const_str
   add a1, s1, s5
   call __build_in_str_add
   call print
   lw a0, 92(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 104(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 908(sp)
   call toString
   li s5, 0
   la s1, .const_str
   add a1, s1, s5
   call __build_in_str_add
   call print
   lw a0, 392(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 948(sp)
   call toString
   li s5, 0
   la s1, .const_str
   add a1, s1, s5
   call __build_in_str_add
   call print
   lw a0, 616(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 120(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 764(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 928(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 32(sp)
   call toString
   li s5, 0
   la s1, .const_str
   add a1, s1, s5
   call __build_in_str_add
   call print
   lw a0, 212(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 1000(sp)
   call toString
   li s5, 0
   la s1, .const_str
   add a1, s1, s5
   call __build_in_str_add
   call print
   lw a0, 76(sp)
   call toString
   li s5, 0
   la s1, .const_str
   add a1, s1, s5
   call __build_in_str_add
   call print
   lw a0, 632(sp)
   call toString
   li s5, 0
   la s1, .const_str
   add a1, s1, s5
   call __build_in_str_add
   call print
   lw a0, 144(sp)
   call toString
   li s5, 0
   la s1, .const_str
   add a1, s1, s5
   call __build_in_str_add
   call print
   lw a0, 220(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 1024(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   mv a0, s9
   call toString
   li s5, 0
   la s1, .const_str
   add a1, s1, s5
   call __build_in_str_add
   call print
   lw a0, 608(sp)
   call toString
   li s5, 0
   la s1, .const_str
   add a1, s1, s5
   call __build_in_str_add
   call print
   lw a0, 696(sp)
   call toString
   li s5, 0
   la s1, .const_str
   add a1, s1, s5
   call __build_in_str_add
   call print
   lw a0, 704(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 808(sp)
   call toString
   li s5, 0
   la s1, .const_str
   add a1, s1, s5
   call __build_in_str_add
   call print
   lw a0, 124(sp)
   call toString
   li s5, 0
   la s1, .const_str
   add a1, s1, s5
   call __build_in_str_add
   call print
   lw a0, 568(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 12(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 964(sp)
   call toString
   li s5, 0
   la s1, .const_str
   add a1, s1, s5
   call __build_in_str_add
   call print
   lw a0, 636(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 652(sp)
   call toString
   li s5, 0
   la s1, .const_str
   add a1, s1, s5
   call __build_in_str_add
   call print
   lw a0, 168(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 360(sp)
   call toString
   li s5, 0
   la s1, .const_str
   add a1, s1, s5
   call __build_in_str_add
   call print
   lw a0, 900(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 488(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 68(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 756(sp)
   call toString
   li s5, 0
   la s1, .const_str
   add a1, s1, s5
   call __build_in_str_add
   call print
   lw a0, 396(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 1012(sp)
   call toString
   li s5, 0
   la s1, .const_str
   add a1, s1, s5
   call __build_in_str_add
   call print
   lw a0, 648(sp)
   call toString
   li s5, 0
   la s1, .const_str
   add a1, s1, s5
   call __build_in_str_add
   call print
   lw a0, 72(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 860(sp)
   call toString
   li s5, 0
   la s1, .const_str
   add a1, s1, s5
   call __build_in_str_add
   call print
   lw a0, 600(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 116(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 656(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 940(sp)
   call toString
   li s5, 0
   la s1, .const_str
   add a1, s1, s5
   call __build_in_str_add
   call print
   mv a0, s8
   call toString
   li s5, 0
   la s1, .const_str
   add a1, s1, s5
   call __build_in_str_add
   call print
   lw a0, 780(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 896(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 492(sp)
   call toString
   li s5, 0
   la s1, .const_str
   add a1, s1, s5
   call __build_in_str_add
   call print
   lw a0, 748(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 596(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 1008(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 444(sp)
   call toString
   li s5, 0
   la s1, .const_str
   add a1, s1, s5
   call __build_in_str_add
   call print
   lw a0, 992(sp)
   call toString
   li s5, 0
   la s1, .const_str
   add a1, s1, s5
   call __build_in_str_add
   call print
   lw a0, 196(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 892(sp)
   call toString
   li s5, 0
   la s1, .const_str
   add a1, s1, s5
   call __build_in_str_add
   call print
   lw a0, 384(sp)
   call toString
   li s5, 0
   la s1, .const_str
   add a1, s1, s5
   call __build_in_str_add
   call print
   lw a0, 788(sp)
   call toString
   li s5, 0
   la s1, .const_str
   add a1, s1, s5
   call __build_in_str_add
   call print
   lw a0, 840(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 420(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 348(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 880(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 604(sp)
   call toString
   li s5, 0
   la s1, .const_str
   add a1, s1, s5
   call __build_in_str_add
   call print
   lw a0, 752(sp)
   call toString
   li s5, 0
   la s1, .const_str
   add a1, s1, s5
   call __build_in_str_add
   call print
   lw a0, 640(sp)
   call toString
   li s5, 0
   la s1, .const_str
   add a1, s1, s5
   call __build_in_str_add
   call print
   lw a0, 500(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 816(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 140(sp)
   call toString
   li s5, 0
   la s1, .const_str
   add a1, s1, s5
   call __build_in_str_add
   call print
   lw a0, 136(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 660(sp)
   call toString
   li s5, 0
   la s1, .const_str
   add a1, s1, s5
   call __build_in_str_add
   call print
   mv a0, s0
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 288(sp)
   call toString
   li s5, 0
   la s1, .const_str
   add a1, s1, s5
   call __build_in_str_add
   call print
   lw a0, 888(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 692(sp)
   call toString
   li s5, 0
   la s1, .const_str
   add a1, s1, s5
   call __build_in_str_add
   call print
   lw a0, 88(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 28(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 552(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 84(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 180(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 336(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 60(sp)
   call toString
   li s5, 0
   la s1, .const_str
   add a1, s1, s5
   call __build_in_str_add
   call print
   lw a0, 484(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 812(sp)
   call toString
   li s5, 0
   la s1, .const_str
   add a1, s1, s5
   call __build_in_str_add
   call print
   lw a0, 504(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 684(sp)
   call toString
   li s5, 0
   la s1, .const_str
   add a1, s1, s5
   call __build_in_str_add
   call print
   lw a0, 760(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 528(sp)
   call toString
   li s5, 0
   la s1, .const_str
   add a1, s1, s5
   call __build_in_str_add
   call print
   lw a0, 332(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 20(sp)
   call toString
   li s5, 0
   la s1, .const_str
   add a1, s1, s5
   call __build_in_str_add
   call print
   lw a0, 412(sp)
   call toString
   li s5, 0
   la s1, .const_str
   add a1, s1, s5
   call __build_in_str_add
   call print
   lw a0, 264(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 720(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 56(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 576(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 668(sp)
   call toString
   li s5, 0
   la s1, .const_str
   add a1, s1, s5
   call __build_in_str_add
   call print
   lw a0, 152(sp)
   call toString
   li s5, 0
   la s1, .const_str
   add a1, s1, s5
   call __build_in_str_add
   call print
   mv a0, s6
   call toString
   li s5, 0
   la s1, .const_str
   add a1, s1, s5
   call __build_in_str_add
   call print
   lw a0, 268(sp)
   call toString
   li s1, 0
   la s5, .const_str
   add a1, s5, s1
   call __build_in_str_add
   call print
   lw a0, 16(sp)
   call toString
   li s5, 0
   la s1, .const_str
   add a1, s1, s5
   call __build_in_str_add
   call print
   li s5, 0
   la s1, .const_str2
   add a0, s1, s5
   call println
   li a0, 0
   lw ra, 456(sp)
   lw s0, 876(sp)
   lw s1, 304(sp)
   lw s2, 228(sp)
   lw s3, 408(sp)
   lw s4, 708(sp)
   lw s5, 612(sp)
   lw s6, 508(sp)
   lw s7, 724(sp)
   lw s8, 328(sp)
   lw s9, 316(sp)
   lw s10, 364(sp)
   lw s11, 580(sp)
   addi sp, sp, 1032
   ret
   j .main.mainexit
.main.mainexit:
   li a0, 0
   lw ra, 456(sp)
   lw s0, 876(sp)
   lw s1, 304(sp)
   lw s2, 228(sp)
   lw s3, 408(sp)
   lw s4, 708(sp)
   lw s5, 612(sp)
   lw s6, 508(sp)
   lw s7, 724(sp)
   lw s8, 328(sp)
   lw s9, 316(sp)
   lw s10, 364(sp)
   lw s11, 580(sp)
   addi sp, sp, 1032
   ret
   lw a0, 800(sp)
   lw ra, 456(sp)
   lw s0, 876(sp)
   lw s1, 304(sp)
   lw s2, 228(sp)
   lw s3, 408(sp)
   lw s4, 708(sp)
   lw s5, 612(sp)
   lw s6, 508(sp)
   lw s7, 724(sp)
   lw s8, 328(sp)
   lw s9, 316(sp)
   lw s10, 364(sp)
   lw s11, 580(sp)
   addi sp, sp, 1032
   ret
.Lfunc_end0:
   .size   main, .Lfunc_end0-main
.globl   __init_function__
   .p2align   2
   .type   __init_function__,@function
__init_function__:
.__init_function__.__init_function__entry:
   j .__init_function__.__init_function__exit
.__init_function__.__init_function__exit:
   ret
.Lfunc_end1:
   .size   __init_function__, .Lfunc_end1-__init_function__
.globl   getcount
   .p2align   2
   .type   getcount,@function
getcount:
.getcount.getcountentry:
   j .getcount.first_block__getcount
.getcount.first_block__getcount:
   li a3, 0
   li t0, 4
   mul a3, a3, t0
   add a3, a3, a0
   lw a0, 0(a3)
   li t0, 1
   add a0, t0, a0
   sw a0, 0(a3)
   ret
   j .getcount.getcountexit
.getcount.getcountexit:
   mv a0, t2
   ret
.Lfunc_end2:
   .size   getcount, .Lfunc_end2-getcount
   .type   .const_str,@object
.section   .rodata.str1.1,"aMS",@progbits,1
.const_str:
   .asciz   " "
   .type   .const_str2,@object
.const_str2:
   .asciz   ""
   .type   count,@object
   .section   .rodata.str1.1,"aMS",@progbits,1
   .globl   count
   .p2align   2
count:
   .word   0
   .size   .count, 4
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
