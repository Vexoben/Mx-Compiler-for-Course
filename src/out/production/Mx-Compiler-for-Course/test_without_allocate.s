	.text
	.file	"test.mx"
	.globl	main
	.p2align	2
	.type	main,@function
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
	j .main.first_block__main  lw load_inst, 0(a)
  li tmp, 1
  sw a, 0(tmp)
  j .main.mainexit  li tmp, 0
  mv a0, tmp
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
  mv ra, virtual_ra
  ret
  lw load_inst, 0(allo)
  mv a0, load_inst
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
  mv ra, virtual_ra
  ret


.main.first_block__main:
	lw load_inst, 0(a)
	li tmp, 1
	sw a, 0(tmp)
	j .main.mainexit  li tmp, 0
  mv a0, tmp
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
  mv ra, virtual_ra
  ret
  lw load_inst, 0(allo)
  mv a0, load_inst
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
  mv ra, virtual_ra
  ret

.main.mainexit:
	li tmp, 0
	mv a0, tmp
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
	mv ra, virtual_ra
	ret
	lw load_inst, 0(allo)
	mv a0, load_inst
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
	mv ra, virtual_ra
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.globl	__init_function__
	.p2align	2
	.type	__init_function__,@function
__init_function__:
.__init_function__.__init_function__entry:
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
	j .__init_function__.__init_function__exit  mv s0, virtual_s0
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
  mv ra, virtual_ra
  ret

.__init_function__.__init_function__exit:
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
	mv ra, virtual_ra
	ret
.Lfunc_end1:
	.size	__init_function__, .Lfunc_end1-__init_function__
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
