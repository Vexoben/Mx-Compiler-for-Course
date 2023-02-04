	.text
	.file	"test.mx"
.globl   main
   .p2align   2
   .type   main,@function
main:
.main.mainentry:
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
   call __init_function__
   j .main.first_block__main
.main.first_block__main:
   la n_addr, n
   lw load_inst, 0(n_addr)
   call getInt
   mv function_call_inst, a0
   la n_addr2, n
   sw function_call_inst, 0(n_addr2)
   j .main.for_init
.main.for_init:
   la i_addr, i
   lw load_inst2, 0(i_addr)
   la i_addr2, i
   li tmp, 0
   sw tmp, 0(i_addr2)
   j .main.for_condition
.main.for_condition:
   la i_addr3, i
   lw load_inst3, 0(i_addr3)
   la n_addr3, n
   lw load_inst4, 0(n_addr3)
   slt tmp2, load_inst3, load_inst4
   blt load_inst3, load_inst4, .main.for_repeat
   j .main.for_exit
.main.for_step:
   la i_addr4, i
   lw load_inst5, 0(i_addr4)
   li tmp3, 1
   add add_inst, tmp3, load_inst5
   la i_addr5, i
   sw add_inst, 0(i_addr5)
   j .main.for_condition
.main.for_repeat:
   la p_addr, p
   lw load_inst6, 0(p_addr)
   call getInt
   mv function_call_inst2, a0
   la p_addr2, p
   sw function_call_inst2, 0(p_addr2)
   la q_addr, q
   lw load_inst7, 0(q_addr)
   call getInt
   mv function_call_inst3, a0
   la q_addr2, q
   sw function_call_inst3, 0(q_addr2)
   la r_addr, r
   lw load_inst8, 0(r_addr)
   call getInt
   mv function_call_inst4, a0
   la r_addr2, r
   sw function_call_inst4, 0(r_addr2)
   la x_addr, x
   lw load_inst9, 0(x_addr)
   la x_addr2, x
   lw load_inst10, 0(x_addr2)
   la p_addr3, p
   lw load_inst11, 0(p_addr3)
   add tmp4, load_inst10, load_inst11
   la x_addr3, x
   sw tmp4, 0(x_addr3)
   la y_addr, y
   lw load_inst12, 0(y_addr)
   la y_addr2, y
   lw load_inst13, 0(y_addr2)
   la q_addr3, q
   lw load_inst14, 0(q_addr3)
   add tmp5, load_inst13, load_inst14
   la y_addr3, y
   sw tmp5, 0(y_addr3)
   la z_addr, z
   lw load_inst15, 0(z_addr)
   la z_addr2, z
   lw load_inst16, 0(z_addr2)
   la r_addr3, r
   lw load_inst17, 0(r_addr3)
   add tmp6, load_inst16, load_inst17
   la z_addr3, z
   sw tmp6, 0(z_addr3)
   j .main.for_step
.main.for_exit:
   la x_addr4, x
   lw load_inst18, 0(x_addr4)
   li tmp8, 0
   xor tmp9, load_inst18, tmp8
   sltiu tmp7, tmp9, 1
   li tmp10, 0
   mv allo, tmp10
   li tmp11, 0
   beq load_inst18, tmp11, .main.logic_right
   j .main.logic_exit
.main.if_true:
   li tmp12, 0
   la str.addr, .const_str
   add get_element_ptr_inst, str.addr, tmp12
   mv a0, get_element_ptr_inst
   call print
   j .main.if_exit
.main.if_false:
   li tmp13, 0
   la str.addr2, .const_str2
   add get_element_ptr_inst2, str.addr2, tmp13
   mv a0, get_element_ptr_inst2
   call print
   j .main.if_exit
.main.if_exit:
   j .main.mainexit
.main.logic_right:
   la y_addr4, y
   lw load_inst19, 0(y_addr4)
   li tmp15, 0
   xor tmp16, load_inst19, tmp15
   sltiu tmp14, tmp16, 1
   mv allo, tmp14
   j .main.logic_exit
.main.logic_exit:
   li tmp17, 0
   mv allo2, tmp17
   bne allo, zero, .main.logic_right2
   j .main.logic_exit2
.main.logic_right2:
   la z_addr4, z
   lw load_inst20, 0(z_addr4)
   li tmp19, 0
   xor tmp20, load_inst20, tmp19
   sltiu tmp18, tmp20, 1
   mv allo2, tmp18
   j .main.logic_exit2
.main.logic_exit2:
   bne allo2, zero, .main.if_true
   j .main.if_false
.main.mainexit:
   li tmp21, 0
   mv a0, tmp21
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
   mv a0, allo3
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
   .size   main, .Lfunc_end0-main
.globl   __init_function__
   .p2align   2
   .type   __init_function__,@function
__init_function__:
.__init_function__.__init_function__entry:
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
   la p_addr4, p
   li tmp22, 0
   sw tmp22, 0(p_addr4)
   la q_addr4, q
   li tmp23, 0
   sw tmp23, 0(q_addr4)
   la r_addr4, r
   li tmp24, 0
   sw tmp24, 0(r_addr4)
   la x_addr5, x
   li tmp25, 0
   sw tmp25, 0(x_addr5)
   la y_addr5, y
   li tmp26, 0
   sw tmp26, 0(y_addr5)
   la z_addr5, z
   li tmp27, 0
   sw tmp27, 0(z_addr5)
   la n_addr4, n
   li tmp28, 0
   sw tmp28, 0(n_addr4)
   la i_addr6, i
   li tmp29, 0
   sw tmp29, 0(i_addr6)
   j .__init_function__.__init_function__exit
.__init_function__.__init_function__exit:
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
   .size   __init_function__, .Lfunc_end1-__init_function__
   .type   .const_str,@object
.section   .rodata.str1.1,"aMS",@progbits,1
.const_str:
   .asciz   "YES"
   .type   .const_str2,@object
.const_str2:
   .asciz   "NO"
   .type   p,@object
   .section   .rodata.str1.1,"aMS",@progbits,1
   .globl   p
   .p2align   2
p:
   .word   0
   .size   .p, 4
   .type   q,@object
   .globl   q
   .p2align   2
q:
   .word   0
   .size   .q, 4
   .type   r,@object
   .globl   r
   .p2align   2
r:
   .word   0
   .size   .r, 4
   .type   x,@object
   .globl   x
   .p2align   2
x:
   .word   0
   .size   .x, 4
   .type   y,@object
   .globl   y
   .p2align   2
y:
   .word   0
   .size   .y, 4
   .type   z,@object
   .globl   z
   .p2align   2
z:
   .word   0
   .size   .z, 4
   .type   n,@object
   .globl   n
   .p2align   2
n:
   .word   0
   .size   .n, 4
   .type   i,@object
   .globl   i
   .p2align   2
i:
   .word   0
   .size   .i, 4
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
