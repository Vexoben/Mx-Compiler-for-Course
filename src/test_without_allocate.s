	.text
	.file	"test.mx"
.globl   main
   .p2align   2
   .type   main,@function
main:
.main.mainentry:
   mv virtual_ra, ra
   mv virtual_s0, s0
   call __init_function__
   j .main.first_block__main
.main.first_block__main:
   la N_addr, N
   lw load_inst, 0(N_addr)
   call getInt
   mv function_call_inst, a0
   la N_addr2, N
   sw function_call_inst, 0(N_addr2)
   j .main.for_init
.main.for_init:
   lw load_inst2, 0(a)
   li tmp, 1
   sw tmp, 0(a)
   j .main.for_condition
.main.for_condition:
   lw load_inst3, 0(a)
   la N_addr3, N
   lw load_inst4, 0(N_addr3)
   slt tmp2, load_inst4, load_inst3
   xori , tmp2, 1
   ble load_inst3, load_inst4, .main.for_repeat
   j .main.for_exit
.main.for_step:
   lw load_inst5, 0(a)
   li tmp3, 1
   add add_inst, tmp3, load_inst5
   sw add_inst, 0(a)
   j .main.for_condition
.main.for_repeat:
   j .main.for_init2
.main.for_exit:
   la total_addr, total
   lw load_inst6, 0(total_addr)
   mv a0, load_inst6
   call toString
   mv function_call_inst2, a0
   lw load_inst7, 0(function_call_inst2)
   mv a0, load_inst7
   call println
   li tmp4, 0
   mv a0, tmp4
   mv ra, virtual_ra
   mv s0, virtual_s0
   ret
   j .main.mainexit
.main.for_init2:
   lw load_inst8, 0(b)
   li tmp5, 1
   sw tmp5, 0(b)
   j .main.for_condition2
.main.for_condition2:
   lw load_inst9, 0(b)
   la N_addr4, N
   lw load_inst10, 0(N_addr4)
   slt tmp6, load_inst10, load_inst9
   xori 2, tmp6, 1
   ble load_inst9, load_inst10, .main.for_repeat2
   j .main.for_exit2
.main.for_step2:
   lw load_inst11, 0(b)
   li tmp7, 1
   add add_inst2, tmp7, load_inst11
   sw add_inst2, 0(b)
   j .main.for_condition2
.main.for_repeat2:
   j .main.for_init3
.main.for_exit2:
   j .main.for_step
.main.for_init3:
   lw load_inst12, 0(c)
   li tmp8, 1
   sw tmp8, 0(c)
   j .main.for_condition3
.main.for_condition3:
   lw load_inst13, 0(c)
   la N_addr5, N
   lw load_inst14, 0(N_addr5)
   slt tmp9, load_inst14, load_inst13
   xori 3, tmp9, 1
   ble load_inst13, load_inst14, .main.for_repeat3
   j .main.for_exit3
.main.for_step3:
   lw load_inst15, 0(c)
   li tmp10, 1
   add add_inst3, tmp10, load_inst15
   sw add_inst3, 0(c)
   j .main.for_condition3
.main.for_repeat3:
   j .main.for_init4
.main.for_exit3:
   j .main.for_step2
.main.for_init4:
   lw load_inst16, 0(d)
   li tmp11, 1
   sw tmp11, 0(d)
   j .main.for_condition4
.main.for_condition4:
   lw load_inst17, 0(d)
   la N_addr6, N
   lw load_inst18, 0(N_addr6)
   slt tmp12, load_inst18, load_inst17
   xori 4, tmp12, 1
   ble load_inst17, load_inst18, .main.for_repeat4
   j .main.for_exit4
.main.for_step4:
   lw load_inst19, 0(d)
   li tmp13, 1
   add add_inst4, tmp13, load_inst19
   sw add_inst4, 0(d)
   j .main.for_condition4
.main.for_repeat4:
   j .main.for_init5
.main.for_exit4:
   j .main.for_step3
.main.for_init5:
   lw load_inst20, 0(e)
   li tmp14, 1
   sw tmp14, 0(e)
   j .main.for_condition5
.main.for_condition5:
   lw load_inst21, 0(e)
   la N_addr7, N
   lw load_inst22, 0(N_addr7)
   slt tmp15, load_inst22, load_inst21
   xori 5, tmp15, 1
   ble load_inst21, load_inst22, .main.for_repeat5
   j .main.for_exit5
.main.for_step5:
   lw load_inst23, 0(e)
   li tmp16, 1
   add add_inst5, tmp16, load_inst23
   sw add_inst5, 0(e)
   j .main.for_condition5
.main.for_repeat5:
   j .main.for_init6
.main.for_exit5:
   j .main.for_step4
.main.for_init6:
   lw load_inst24, 0(f)
   li tmp17, 1
   sw tmp17, 0(f)
   j .main.for_condition6
.main.for_condition6:
   lw load_inst25, 0(f)
   la N_addr8, N
   lw load_inst26, 0(N_addr8)
   slt tmp18, load_inst26, load_inst25
   xori 6, tmp18, 1
   ble load_inst25, load_inst26, .main.for_repeat6
   j .main.for_exit6
.main.for_step6:
   lw load_inst27, 0(f)
   li tmp19, 1
   add add_inst6, tmp19, load_inst27
   sw add_inst6, 0(f)
   j .main.for_condition6
.main.for_repeat6:
   lw load_inst28, 0(a)
   lw load_inst29, 0(b)
   xor tmp20, load_inst28, load_inst29
   snez 7, tmp20, zero
   li tmp21, 0
   sw tmp21, 0(allo)
   bne load_inst28, load_inst29, .main.logic_right
   j .main.logic_exit
.main.for_exit6:
   j .main.for_step5
.main.if_true:
   la total_addr2, total
   lw load_inst30, 0(total_addr2)
   li tmp22, 1
   add add_inst7, tmp22, load_inst30
   la total_addr3, total
   sw add_inst7, 0(total_addr3)
   j .main.if_exit
.main.if_false:
   j .main.if_exit
.main.if_exit:
   j .main.for_step6
.main.logic_right:
   lw load_inst31, 0(a)
   lw load_inst32, 0(c)
   xor tmp23, load_inst31, load_inst32
   snez 8, tmp23, zero
   sw 8, 0(allo)
   j .main.logic_exit
.main.logic_exit:
   lw load, 0(allo)
   li tmp24, 0
   sw tmp24, 0(allo2)
   bne load, zero, .main.logic_right2
   j .main.logic_exit2
.main.logic_right2:
   lw load_inst33, 0(a)
   lw load_inst34, 0(d)
   xor tmp25, load_inst33, load_inst34
   snez 9, tmp25, zero
   sw 9, 0(allo2)
   j .main.logic_exit2
.main.logic_exit2:
   lw load2, 0(allo2)
   li tmp26, 0
   sw tmp26, 0(allo3)
   bne load2, zero, .main.logic_right3
   j .main.logic_exit3
.main.logic_right3:
   lw load_inst35, 0(a)
   lw load_inst36, 0(e)
   xor tmp27, load_inst35, load_inst36
   snez 10, tmp27, zero
   sw 10, 0(allo3)
   j .main.logic_exit3
.main.logic_exit3:
   lw load3, 0(allo3)
   li tmp28, 0
   sw tmp28, 0(allo4)
   bne load3, zero, .main.logic_right4
   j .main.logic_exit4
.main.logic_right4:
   lw load_inst37, 0(a)
   lw load_inst38, 0(f)
   xor tmp29, load_inst37, load_inst38
   snez 11, tmp29, zero
   sw 11, 0(allo4)
   j .main.logic_exit4
.main.logic_exit4:
   lw load4, 0(allo4)
   li tmp30, 0
   sw tmp30, 0(allo5)
   bne load4, zero, .main.logic_right5
   j .main.logic_exit5
.main.logic_right5:
   lw load_inst39, 0(a)
   la h_addr, h
   lw load_inst40, 0(h_addr)
   xor tmp31, load_inst39, load_inst40
   snez 12, tmp31, zero
   sw 12, 0(allo5)
   j .main.logic_exit5
.main.logic_exit5:
   lw load5, 0(allo5)
   li tmp32, 0
   sw tmp32, 0(allo6)
   bne load5, zero, .main.logic_right6
   j .main.logic_exit6
.main.logic_right6:
   lw load_inst41, 0(a)
   la i_addr, i
   lw load_inst42, 0(i_addr)
   xor tmp33, load_inst41, load_inst42
   snez 13, tmp33, zero
   sw 13, 0(allo6)
   j .main.logic_exit6
.main.logic_exit6:
   lw load6, 0(allo6)
   li tmp34, 0
   sw tmp34, 0(allo7)
   bne load6, zero, .main.logic_right7
   j .main.logic_exit7
.main.logic_right7:
   lw load_inst43, 0(a)
   la j_addr, j
   lw load_inst44, 0(j_addr)
   xor tmp35, load_inst43, load_inst44
   snez 14, tmp35, zero
   sw 14, 0(allo7)
   j .main.logic_exit7
.main.logic_exit7:
   lw load7, 0(allo7)
   li tmp36, 0
   sw tmp36, 0(allo8)
   bne load7, zero, .main.logic_right8
   j .main.logic_exit8
.main.logic_right8:
   lw load_inst45, 0(a)
   la k_addr, k
   lw load_inst46, 0(k_addr)
   xor tmp37, load_inst45, load_inst46
   snez 15, tmp37, zero
   sw 15, 0(allo8)
   j .main.logic_exit8
.main.logic_exit8:
   lw load8, 0(allo8)
   li tmp38, 0
   sw tmp38, 0(allo9)
   bne load8, zero, .main.logic_right9
   j .main.logic_exit9
.main.logic_right9:
   lw load_inst47, 0(b)
   lw load_inst48, 0(c)
   xor tmp39, load_inst47, load_inst48
   snez 16, tmp39, zero
   sw 16, 0(allo9)
   j .main.logic_exit9
.main.logic_exit9:
   lw load9, 0(allo9)
   li tmp40, 0
   sw tmp40, 0(allo10)
   bne load9, zero, .main.logic_right10
   j .main.logic_exit10
.main.logic_right10:
   lw load_inst49, 0(b)
   lw load_inst50, 0(d)
   xor tmp41, load_inst49, load_inst50
   snez 17, tmp41, zero
   sw 17, 0(allo10)
   j .main.logic_exit10
.main.logic_exit10:
   lw load10, 0(allo10)
   li tmp42, 0
   sw tmp42, 0(allo11)
   bne load10, zero, .main.logic_right11
   j .main.logic_exit11
.main.logic_right11:
   lw load_inst51, 0(b)
   lw load_inst52, 0(e)
   xor tmp43, load_inst51, load_inst52
   snez 18, tmp43, zero
   sw 18, 0(allo11)
   j .main.logic_exit11
.main.logic_exit11:
   lw load11, 0(allo11)
   li tmp44, 0
   sw tmp44, 0(allo12)
   bne load11, zero, .main.logic_right12
   j .main.logic_exit12
.main.logic_right12:
   lw load_inst53, 0(b)
   lw load_inst54, 0(f)
   xor tmp45, load_inst53, load_inst54
   snez 19, tmp45, zero
   sw 19, 0(allo12)
   j .main.logic_exit12
.main.logic_exit12:
   lw load12, 0(allo12)
   li tmp46, 0
   sw tmp46, 0(allo13)
   bne load12, zero, .main.logic_right13
   j .main.logic_exit13
.main.logic_right13:
   lw load_inst55, 0(b)
   la h_addr2, h
   lw load_inst56, 0(h_addr2)
   xor tmp47, load_inst55, load_inst56
   snez 20, tmp47, zero
   sw 20, 0(allo13)
   j .main.logic_exit13
.main.logic_exit13:
   lw load13, 0(allo13)
   li tmp48, 0
   sw tmp48, 0(allo14)
   bne load13, zero, .main.logic_right14
   j .main.logic_exit14
.main.logic_right14:
   lw load_inst57, 0(b)
   la i_addr2, i
   lw load_inst58, 0(i_addr2)
   xor tmp49, load_inst57, load_inst58
   snez 21, tmp49, zero
   sw 21, 0(allo14)
   j .main.logic_exit14
.main.logic_exit14:
   lw load14, 0(allo14)
   li tmp50, 0
   sw tmp50, 0(allo15)
   bne load14, zero, .main.logic_right15
   j .main.logic_exit15
.main.logic_right15:
   lw load_inst59, 0(b)
   la j_addr2, j
   lw load_inst60, 0(j_addr2)
   xor tmp51, load_inst59, load_inst60
   snez 22, tmp51, zero
   sw 22, 0(allo15)
   j .main.logic_exit15
.main.logic_exit15:
   lw load15, 0(allo15)
   li tmp52, 0
   sw tmp52, 0(allo16)
   bne load15, zero, .main.logic_right16
   j .main.logic_exit16
.main.logic_right16:
   lw load_inst61, 0(b)
   la k_addr2, k
   lw load_inst62, 0(k_addr2)
   xor tmp53, load_inst61, load_inst62
   snez 23, tmp53, zero
   sw 23, 0(allo16)
   j .main.logic_exit16
.main.logic_exit16:
   lw load16, 0(allo16)
   li tmp54, 0
   sw tmp54, 0(allo17)
   bne load16, zero, .main.logic_right17
   j .main.logic_exit17
.main.logic_right17:
   lw load_inst63, 0(c)
   lw load_inst64, 0(d)
   xor tmp55, load_inst63, load_inst64
   snez 24, tmp55, zero
   sw 24, 0(allo17)
   j .main.logic_exit17
.main.logic_exit17:
   lw load17, 0(allo17)
   li tmp56, 0
   sw tmp56, 0(allo18)
   bne load17, zero, .main.logic_right18
   j .main.logic_exit18
.main.logic_right18:
   lw load_inst65, 0(c)
   lw load_inst66, 0(e)
   xor tmp57, load_inst65, load_inst66
   snez 25, tmp57, zero
   sw 25, 0(allo18)
   j .main.logic_exit18
.main.logic_exit18:
   lw load18, 0(allo18)
   li tmp58, 0
   sw tmp58, 0(allo19)
   bne load18, zero, .main.logic_right19
   j .main.logic_exit19
.main.logic_right19:
   lw load_inst67, 0(c)
   lw load_inst68, 0(f)
   xor tmp59, load_inst67, load_inst68
   snez 26, tmp59, zero
   sw 26, 0(allo19)
   j .main.logic_exit19
.main.logic_exit19:
   lw load19, 0(allo19)
   li tmp60, 0
   sw tmp60, 0(allo20)
   bne load19, zero, .main.logic_right20
   j .main.logic_exit20
.main.logic_right20:
   lw load_inst69, 0(c)
   la h_addr3, h
   lw load_inst70, 0(h_addr3)
   xor tmp61, load_inst69, load_inst70
   snez 27, tmp61, zero
   sw 27, 0(allo20)
   j .main.logic_exit20
.main.logic_exit20:
   lw load20, 0(allo20)
   li tmp62, 0
   sw tmp62, 0(allo21)
   bne load20, zero, .main.logic_right21
   j .main.logic_exit21
.main.logic_right21:
   lw load_inst71, 0(c)
   la i_addr3, i
   lw load_inst72, 0(i_addr3)
   xor tmp63, load_inst71, load_inst72
   snez 28, tmp63, zero
   sw 28, 0(allo21)
   j .main.logic_exit21
.main.logic_exit21:
   lw load21, 0(allo21)
   li tmp64, 0
   sw tmp64, 0(allo22)
   bne load21, zero, .main.logic_right22
   j .main.logic_exit22
.main.logic_right22:
   lw load_inst73, 0(c)
   la j_addr3, j
   lw load_inst74, 0(j_addr3)
   xor tmp65, load_inst73, load_inst74
   snez 29, tmp65, zero
   sw 29, 0(allo22)
   j .main.logic_exit22
.main.logic_exit22:
   lw load22, 0(allo22)
   li tmp66, 0
   sw tmp66, 0(allo23)
   bne load22, zero, .main.logic_right23
   j .main.logic_exit23
.main.logic_right23:
   lw load_inst75, 0(c)
   la k_addr3, k
   lw load_inst76, 0(k_addr3)
   xor tmp67, load_inst75, load_inst76
   snez 30, tmp67, zero
   sw 30, 0(allo23)
   j .main.logic_exit23
.main.logic_exit23:
   lw load23, 0(allo23)
   li tmp68, 0
   sw tmp68, 0(allo24)
   bne load23, zero, .main.logic_right24
   j .main.logic_exit24
.main.logic_right24:
   lw load_inst77, 0(d)
   lw load_inst78, 0(e)
   xor tmp69, load_inst77, load_inst78
   snez 31, tmp69, zero
   sw 31, 0(allo24)
   j .main.logic_exit24
.main.logic_exit24:
   lw load24, 0(allo24)
   li tmp70, 0
   sw tmp70, 0(allo25)
   bne load24, zero, .main.logic_right25
   j .main.logic_exit25
.main.logic_right25:
   lw load_inst79, 0(d)
   lw load_inst80, 0(f)
   xor tmp71, load_inst79, load_inst80
   snez 32, tmp71, zero
   sw 32, 0(allo25)
   j .main.logic_exit25
.main.logic_exit25:
   lw load25, 0(allo25)
   li tmp72, 0
   sw tmp72, 0(allo26)
   bne load25, zero, .main.logic_right26
   j .main.logic_exit26
.main.logic_right26:
   lw load_inst81, 0(d)
   la h_addr4, h
   lw load_inst82, 0(h_addr4)
   xor tmp73, load_inst81, load_inst82
   snez 33, tmp73, zero
   sw 33, 0(allo26)
   j .main.logic_exit26
.main.logic_exit26:
   lw load26, 0(allo26)
   li tmp74, 0
   sw tmp74, 0(allo27)
   bne load26, zero, .main.logic_right27
   j .main.logic_exit27
.main.logic_right27:
   lw load_inst83, 0(d)
   la i_addr4, i
   lw load_inst84, 0(i_addr4)
   xor tmp75, load_inst83, load_inst84
   snez 34, tmp75, zero
   sw 34, 0(allo27)
   j .main.logic_exit27
.main.logic_exit27:
   lw load27, 0(allo27)
   li tmp76, 0
   sw tmp76, 0(allo28)
   bne load27, zero, .main.logic_right28
   j .main.logic_exit28
.main.logic_right28:
   lw load_inst85, 0(d)
   la j_addr4, j
   lw load_inst86, 0(j_addr4)
   xor tmp77, load_inst85, load_inst86
   snez 35, tmp77, zero
   sw 35, 0(allo28)
   j .main.logic_exit28
.main.logic_exit28:
   lw load28, 0(allo28)
   li tmp78, 0
   sw tmp78, 0(allo29)
   bne load28, zero, .main.logic_right29
   j .main.logic_exit29
.main.logic_right29:
   lw load_inst87, 0(d)
   la k_addr4, k
   lw load_inst88, 0(k_addr4)
   xor tmp79, load_inst87, load_inst88
   snez 36, tmp79, zero
   sw 36, 0(allo29)
   j .main.logic_exit29
.main.logic_exit29:
   lw load29, 0(allo29)
   li tmp80, 0
   sw tmp80, 0(allo30)
   bne load29, zero, .main.logic_right30
   j .main.logic_exit30
.main.logic_right30:
   lw load_inst89, 0(e)
   lw load_inst90, 0(f)
   xor tmp81, load_inst89, load_inst90
   snez 37, tmp81, zero
   sw 37, 0(allo30)
   j .main.logic_exit30
.main.logic_exit30:
   lw load30, 0(allo30)
   li tmp82, 0
   sw tmp82, 0(allo31)
   bne load30, zero, .main.logic_right31
   j .main.logic_exit31
.main.logic_right31:
   lw load_inst91, 0(e)
   la h_addr5, h
   lw load_inst92, 0(h_addr5)
   xor tmp83, load_inst91, load_inst92
   snez 38, tmp83, zero
   sw 38, 0(allo31)
   j .main.logic_exit31
.main.logic_exit31:
   lw load31, 0(allo31)
   li tmp84, 0
   sw tmp84, 0(allo32)
   bne load31, zero, .main.logic_right32
   j .main.logic_exit32
.main.logic_right32:
   lw load_inst93, 0(e)
   la i_addr5, i
   lw load_inst94, 0(i_addr5)
   xor tmp85, load_inst93, load_inst94
   snez 39, tmp85, zero
   sw 39, 0(allo32)
   j .main.logic_exit32
.main.logic_exit32:
   lw load32, 0(allo32)
   li tmp86, 0
   sw tmp86, 0(allo33)
   bne load32, zero, .main.logic_right33
   j .main.logic_exit33
.main.logic_right33:
   lw load_inst95, 0(e)
   la j_addr5, j
   lw load_inst96, 0(j_addr5)
   xor tmp87, load_inst95, load_inst96
   snez 40, tmp87, zero
   sw 40, 0(allo33)
   j .main.logic_exit33
.main.logic_exit33:
   lw load33, 0(allo33)
   li tmp88, 0
   sw tmp88, 0(allo34)
   bne load33, zero, .main.logic_right34
   j .main.logic_exit34
.main.logic_right34:
   lw load_inst97, 0(e)
   la k_addr5, k
   lw load_inst98, 0(k_addr5)
   xor tmp89, load_inst97, load_inst98
   snez 41, tmp89, zero
   sw 41, 0(allo34)
   j .main.logic_exit34
.main.logic_exit34:
   lw load34, 0(allo34)
   li tmp90, 0
   sw tmp90, 0(allo35)
   bne load34, zero, .main.logic_right35
   j .main.logic_exit35
.main.logic_right35:
   lw load_inst99, 0(f)
   la h_addr6, h
   lw load_inst100, 0(h_addr6)
   xor tmp91, load_inst99, load_inst100
   snez 42, tmp91, zero
   sw 42, 0(allo35)
   j .main.logic_exit35
.main.logic_exit35:
   lw load35, 0(allo35)
   li tmp92, 0
   sw tmp92, 0(allo36)
   bne load35, zero, .main.logic_right36
   j .main.logic_exit36
.main.logic_right36:
   lw load_inst101, 0(f)
   la i_addr6, i
   lw load_inst102, 0(i_addr6)
   xor tmp93, load_inst101, load_inst102
   snez 43, tmp93, zero
   sw 43, 0(allo36)
   j .main.logic_exit36
.main.logic_exit36:
   lw load36, 0(allo36)
   li tmp94, 0
   sw tmp94, 0(allo37)
   bne load36, zero, .main.logic_right37
   j .main.logic_exit37
.main.logic_right37:
   lw load_inst103, 0(f)
   la j_addr6, j
   lw load_inst104, 0(j_addr6)
   xor tmp95, load_inst103, load_inst104
   snez 44, tmp95, zero
   sw 44, 0(allo37)
   j .main.logic_exit37
.main.logic_exit37:
   lw load37, 0(allo37)
   li tmp96, 0
   sw tmp96, 0(allo38)
   bne load37, zero, .main.logic_right38
   j .main.logic_exit38
.main.logic_right38:
   lw load_inst105, 0(f)
   la k_addr6, k
   lw load_inst106, 0(k_addr6)
   xor tmp97, load_inst105, load_inst106
   snez 45, tmp97, zero
   sw 45, 0(allo38)
   j .main.logic_exit38
.main.logic_exit38:
   lw load38, 0(allo38)
   li tmp98, 0
   sw tmp98, 0(allo39)
   bne load38, zero, .main.logic_right39
   j .main.logic_exit39
.main.logic_right39:
   la i_addr7, i
   lw load_inst107, 0(i_addr7)
   la j_addr7, j
   lw load_inst108, 0(j_addr7)
   xor tmp99, load_inst107, load_inst108
   snez 46, tmp99, zero
   sw 46, 0(allo39)
   j .main.logic_exit39
.main.logic_exit39:
   lw load39, 0(allo39)
   li tmp100, 0
   sw tmp100, 0(allo40)
   bne load39, zero, .main.logic_right40
   j .main.logic_exit40
.main.logic_right40:
   la h_addr7, h
   lw load_inst109, 0(h_addr7)
   la k_addr7, k
   lw load_inst110, 0(k_addr7)
   xor tmp101, load_inst109, load_inst110
   snez 47, tmp101, zero
   sw 47, 0(allo40)
   j .main.logic_exit40
.main.logic_exit40:
   lw load40, 0(allo40)
   bne load40, zero, .main.if_true
   j .main.if_false
.main.mainexit:
   li tmp102, 0
   mv a0, tmp102
   mv ra, virtual_ra
   mv s0, virtual_s0
   ret
   lw load_inst111, 0(allo41)
   mv a0, load_inst111
   mv ra, virtual_ra
   mv s0, virtual_s0
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
   la N_addr9, N
   li tmp103, 0
   sw tmp103, 0(N_addr9)
   la h_addr8, h
   li tmp104, 99
   sw tmp104, 0(h_addr8)
   la i_addr8, i
   li tmp105, 100
   sw tmp105, 0(i_addr8)
   la j_addr8, j
   li tmp106, 101
   sw tmp106, 0(j_addr8)
   la k_addr8, k
   li tmp107, 102
   sw tmp107, 0(k_addr8)
   la total_addr4, total
   li tmp108, 0
   sw tmp108, 0(total_addr4)
   j .__init_function__.__init_function__exit
.__init_function__.__init_function__exit:
   mv ra, virtual_ra2
   mv s0, virtual_s02
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
