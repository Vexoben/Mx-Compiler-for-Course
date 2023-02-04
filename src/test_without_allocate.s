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
   mv tmp, N
   call getInt
   mv function_call_inst, a0
   mv N, function_call_inst
   mv tmp2, head
   li tmp3, 0
   mv head, tmp3
   mv tmp4, tail
   li tmp5, 0
   mv tail, tmp5
   mv tmp6, startx
   li tmp7, 0
   mv startx, tmp7
   mv tmp8, starty
   li tmp9, 0
   mv starty, tmp9
   mv tmp10, targetx
   mv tmp11, N
   li tmp13, 1
   sub tmp12, tmp11, tmp13
   mv targetx, tmp12
   mv tmp14, targety
   mv tmp15, N
   li tmp17, 1
   sub tmp16, tmp15, tmp17
   mv targety, tmp16
   mv tmp18, x
   li tmp19, 0
   mv x, tmp19
   mv tmp20, y
   li tmp21, 0
   mv y, tmp21
   mv tmp22, now
   li tmp23, 0
   mv now, tmp23
   mv tmp24, ok
   li tmp25, 0
   mv ok, tmp25
   mv tmp26, N
   mv tmp27, N
   mul tmp28, tmp26, tmp27
   li tmp29, 4
   mul array_size, tmp29, tmp28
   li tmp30, 4
   add alloca_size, tmp30, array_size
   mv a0, alloca_size
   call __built_in_malloc
   mv function_call_inst2, a0
   mv bit_cast_inst, function_call_inst2
   sw tmp28, 0(bit_cast_inst)
   li tmp32, 1
   li tmp33, 4
   mul tmp31, tmp32, tmp33
   add get_element_ptr_inst, tmp31, bit_cast_inst
   mv arr_head, get_element_ptr_inst
   mv new_result, arr_head
   mv tmp34, new_result
   mv xlist, tmp34
   j .main.for_init
.main.for_init:
   mv tmp35, i
   li tmp36, 0
   mv i, tmp36
   j .main.for_condition
.main.for_condition:
   mv tmp37, i
   mv tmp38, N
   mv tmp39, N
   mul tmp40, tmp38, tmp39
   slt tmp41, tmp37, tmp40
   blt tmp37, tmp40, .main.for_repeat
   j .main.for_exit
.main.for_step:
   mv tmp42, i
   li tmp43, 1
   add add_inst, tmp43, tmp42
   mv i, add_inst
   j .main.for_condition
.main.for_repeat:
   mv tmp44, i
   mv tmp45, xlist
   li tmp47, 4
   mul tmp46, tmp44, tmp47
   add get_element_ptr_inst2, tmp46, tmp45
   li tmp48, 0
   sw tmp48, 0(get_element_ptr_inst2)
   j .main.for_step
.main.for_exit:
   mv tmp49, N
   mv tmp50, N
   mul tmp51, tmp49, tmp50
   li tmp52, 4
   mul array_size2, tmp52, tmp51
   li tmp53, 4
   add alloca_size2, tmp53, array_size2
   mv a0, alloca_size2
   call __built_in_malloc
   mv function_call_inst3, a0
   mv bit_cast_inst2, function_call_inst3
   sw tmp51, 0(bit_cast_inst2)
   li tmp55, 1
   li tmp56, 4
   mul tmp54, tmp55, tmp56
   add get_element_ptr_inst3, tmp54, bit_cast_inst2
   mv arr_head2, get_element_ptr_inst3
   mv new_result2, arr_head2
   mv tmp57, new_result2
   mv ylist, tmp57
   j .main.for_init2
.main.for_init2:
   mv tmp58, i
   li tmp59, 0
   mv i, tmp59
   j .main.for_condition2
.main.for_condition2:
   mv tmp60, i
   mv tmp61, N
   mv tmp62, N
   mul tmp63, tmp61, tmp62
   slt tmp64, tmp60, tmp63
   blt tmp60, tmp63, .main.for_repeat2
   j .main.for_exit2
.main.for_step2:
   mv tmp65, i
   li tmp66, 1
   add add_inst2, tmp66, tmp65
   mv i, add_inst2
   j .main.for_condition2
.main.for_repeat2:
   mv tmp67, i
   mv tmp68, ylist
   li tmp70, 4
   mul tmp69, tmp67, tmp70
   add get_element_ptr_inst4, tmp69, tmp68
   li tmp71, 0
   sw tmp71, 0(get_element_ptr_inst4)
   j .main.for_step2
.main.for_exit2:
   mv tmp72, N
   li tmp73, 8
   mul array_size3, tmp73, tmp72
   li tmp74, 4
   add alloca_size3, tmp74, array_size3
   mv a0, alloca_size3
   call __built_in_malloc
   mv function_call_inst4, a0
   mv bit_cast_inst3, function_call_inst4
   sw tmp72, 0(bit_cast_inst3)
   li tmp76, 1
   li tmp77, 4
   mul tmp75, tmp76, tmp77
   add get_element_ptr_inst5, tmp75, bit_cast_inst3
   mv arr_head3, get_element_ptr_inst5
   li tmp79, 4
   mul tmp78, tmp72, tmp79
   add arr_tail, tmp78, arr_head3
   mv arr_cur_ptr, arr_head3
   j .main.while_condition
.main.while_condition:
   mv tmp80, arr_cur_ptr
   xor tmp81, tmp80, arr_tail
   sltiu reach_end, tmp81, 1
   beq tmp80, arr_tail, .main.while_exit
   j .main.while_repeat
.main.while_repeat:
   li tmp83, 0
   li tmp84, 4
   mul tmp82, tmp83, tmp84
   add get_element_ptr_inst6, tmp82, tmp80
   li tmp85, 0
   sw tmp85, 0(get_element_ptr_inst6)
   li tmp87, 1
   li tmp88, 4
   mul tmp86, tmp87, tmp88
   add get_element_ptr_inst7, tmp86, tmp80
   mv arr_cur_ptr, get_element_ptr_inst7
   j .main.while_condition
.main.while_exit:
   mv new_result3, arr_head3
   mv tmp89, new_result3
   mv step, tmp89
   j .main.for_init3
.main.for_init3:
   mv tmp90, i
   li tmp91, 0
   mv i, tmp91
   j .main.for_condition3
.main.for_condition3:
   mv tmp92, i
   mv tmp93, N
   slt tmp94, tmp92, tmp93
   blt tmp92, tmp93, .main.for_repeat3
   j .main.for_exit3
.main.for_step3:
   mv tmp95, i
   li tmp96, 1
   add add_inst3, tmp96, tmp95
   mv i, add_inst3
   j .main.for_condition3
.main.for_repeat3:
   mv tmp97, i
   mv tmp98, step
   li tmp100, 4
   mul tmp99, tmp97, tmp100
   add get_element_ptr_inst8, tmp99, tmp98
   mv tmp101, N
   li tmp102, 4
   mul array_size4, tmp102, tmp101
   li tmp103, 4
   add alloca_size4, tmp103, array_size4
   mv a0, alloca_size4
   call __built_in_malloc
   mv function_call_inst5, a0
   mv bit_cast_inst4, function_call_inst5
   sw tmp101, 0(bit_cast_inst4)
   li tmp105, 1
   li tmp106, 4
   mul tmp104, tmp105, tmp106
   add get_element_ptr_inst9, tmp104, bit_cast_inst4
   mv arr_head4, get_element_ptr_inst9
   mv new_result4, arr_head4
   mv tmp107, new_result4
   sw tmp107, 0(get_element_ptr_inst8)
   j .main.for_init4
.main.for_exit3:
   mv tmp108, xlist
   li tmp110, 0
   li tmp111, 4
   mul tmp109, tmp110, tmp111
   add get_element_ptr_inst10, tmp109, tmp108
   mv tmp112, startx
   sw tmp112, 0(get_element_ptr_inst10)
   mv tmp113, ylist
   li tmp115, 0
   li tmp116, 4
   mul tmp114, tmp115, tmp116
   add get_element_ptr_inst11, tmp114, tmp113
   mv tmp117, starty
   sw tmp117, 0(get_element_ptr_inst11)
   mv tmp118, startx
   mv tmp119, step
   li tmp121, 4
   mul tmp120, tmp118, tmp121
   add get_element_ptr_inst12, tmp120, tmp119
   mv tmp122, starty
   lw load_inst, 0(get_element_ptr_inst12)
   li tmp124, 4
   mul tmp123, tmp122, tmp124
   add get_element_ptr_inst13, tmp123, load_inst
   li tmp125, 0
   sw tmp125, 0(get_element_ptr_inst13)
   j .main.while_condition2
.main.for_init4:
   mv tmp126, j
   li tmp127, 0
   mv j, tmp127
   j .main.for_condition4
.main.for_condition4:
   mv tmp128, j
   mv tmp129, N
   slt tmp130, tmp128, tmp129
   blt tmp128, tmp129, .main.for_repeat4
   j .main.for_exit4
.main.for_step4:
   mv tmp131, j
   li tmp132, 1
   add add_inst4, tmp132, tmp131
   mv j, add_inst4
   j .main.for_condition4
.main.for_repeat4:
   mv tmp133, i
   mv tmp134, step
   li tmp136, 4
   mul tmp135, tmp133, tmp136
   add get_element_ptr_inst14, tmp135, tmp134
   mv tmp137, j
   lw load_inst2, 0(get_element_ptr_inst14)
   li tmp139, 4
   mul tmp138, tmp137, tmp139
   add get_element_ptr_inst15, tmp138, load_inst2
   li tmp140, 0
   li tmp141, 1
   sub sub_inst, tmp140, tmp141
   sw sub_inst, 0(get_element_ptr_inst15)
   j .main.for_step4
.main.for_exit4:
   j .main.for_step3
.main.while_condition2:
   mv tmp142, head
   mv tmp143, tail
   slt tmp145, tmp143, tmp142
   xori tmp144, tmp145, 1
   ble tmp142, tmp143, .main.while_repeat2
   j .main.while_exit2
.main.while_repeat2:
   mv tmp146, now
   mv tmp147, head
   mv tmp148, xlist
   li tmp150, 4
   mul tmp149, tmp147, tmp150
   add get_element_ptr_inst16, tmp149, tmp148
   lw load_inst3, 0(get_element_ptr_inst16)
   mv tmp151, step
   li tmp153, 4
   mul tmp152, load_inst3, tmp153
   add get_element_ptr_inst17, tmp152, tmp151
   mv tmp154, head
   mv tmp155, ylist
   li tmp157, 4
   mul tmp156, tmp154, tmp157
   add get_element_ptr_inst18, tmp156, tmp155
   lw load_inst4, 0(get_element_ptr_inst18)
   lw load_inst5, 0(get_element_ptr_inst17)
   li tmp159, 4
   mul tmp158, load_inst4, tmp159
   add get_element_ptr_inst19, tmp158, load_inst5
   lw load_inst6, 0(get_element_ptr_inst19)
   mv now, load_inst6
   mv tmp160, x
   mv tmp161, head
   mv tmp162, xlist
   li tmp164, 4
   mul tmp163, tmp161, tmp164
   add get_element_ptr_inst20, tmp163, tmp162
   lw load_inst7, 0(get_element_ptr_inst20)
   li tmp166, 1
   sub tmp165, load_inst7, tmp166
   mv x, tmp165
   mv tmp167, y
   mv tmp168, head
   mv tmp169, ylist
   li tmp171, 4
   mul tmp170, tmp168, tmp171
   add get_element_ptr_inst21, tmp170, tmp169
   lw load_inst8, 0(get_element_ptr_inst21)
   li tmp173, 2
   sub tmp172, load_inst8, tmp173
   mv y, tmp172
   mv tmp174, x
   mv tmp175, N
   mv a0, tmp174
   mv a1, tmp175
   call check
   mv function_call_inst6, a0
   li tmp176, 0
   mv allo, tmp176
   bne function_call_inst6, zero, .main.logic_right2
   j .main.logic_exit2
.main.while_exit2:
   mv tmp177, ok
   li tmp179, 1
   xor tmp180, tmp177, tmp179
   sltiu tmp178, tmp180, 1
   li tmp181, 1
   beq tmp177, tmp181, .main.if_true18
   j .main.if_false18
.main.if_true:
   mv tmp182, tail
   mv tmp183, tail
   li tmp185, 1
   add tmp184, tmp183, tmp185
   mv tail, tmp184
   mv tmp186, tail
   mv tmp187, xlist
   li tmp189, 4
   mul tmp188, tmp186, tmp189
   add get_element_ptr_inst22, tmp188, tmp187
   mv tmp190, x
   sw tmp190, 0(get_element_ptr_inst22)
   mv tmp191, tail
   mv tmp192, ylist
   li tmp194, 4
   mul tmp193, tmp191, tmp194
   add get_element_ptr_inst23, tmp193, tmp192
   mv tmp195, y
   sw tmp195, 0(get_element_ptr_inst23)
   mv tmp196, x
   mv tmp197, step
   li tmp199, 4
   mul tmp198, tmp196, tmp199
   add get_element_ptr_inst24, tmp198, tmp197
   mv tmp200, y
   lw load_inst9, 0(get_element_ptr_inst24)
   li tmp202, 4
   mul tmp201, tmp200, tmp202
   add get_element_ptr_inst25, tmp201, load_inst9
   mv tmp203, now
   li tmp205, 1
   add tmp204, tmp203, tmp205
   sw tmp204, 0(get_element_ptr_inst25)
   mv tmp206, x
   mv tmp207, targetx
   xor tmp209, tmp206, tmp207
   sltiu tmp208, tmp209, 1
   li tmp210, 0
   mv allo2, tmp210
   beq tmp206, tmp207, .main.logic_right4
   j .main.logic_exit4
.main.if_false:
   j .main.if_exit
.main.if_exit:
   mv tmp211, x
   mv tmp212, head
   mv tmp213, xlist
   li tmp215, 4
   mul tmp214, tmp212, tmp215
   add get_element_ptr_inst26, tmp214, tmp213
   lw load_inst10, 0(get_element_ptr_inst26)
   li tmp217, 1
   sub tmp216, load_inst10, tmp217
   mv x, tmp216
   mv tmp218, y
   mv tmp219, head
   mv tmp220, ylist
   li tmp222, 4
   mul tmp221, tmp219, tmp222
   add get_element_ptr_inst27, tmp221, tmp220
   lw load_inst11, 0(get_element_ptr_inst27)
   li tmp224, 2
   add tmp223, load_inst11, tmp224
   mv y, tmp223
   mv tmp225, x
   mv tmp226, N
   mv a0, tmp225
   mv a1, tmp226
   call check
   mv function_call_inst7, a0
   li tmp227, 0
   mv allo3, tmp227
   bne function_call_inst7, zero, .main.logic_right5
   j .main.logic_exit5
.main.logic_right2:
   mv tmp228, y
   mv tmp229, N
   mv a0, tmp228
   mv a1, tmp229
   call check
   mv function_call_inst8, a0
   mv allo, function_call_inst8
   j .main.logic_exit2
.main.logic_exit2:
   mv tmp230, allo
   li tmp231, 0
   mv allo4, tmp231
   bne tmp230, zero, .main.logic_right3
   j .main.logic_exit3
.main.logic_right3:
   mv tmp232, x
   mv tmp233, step
   li tmp235, 4
   mul tmp234, tmp232, tmp235
   add get_element_ptr_inst28, tmp234, tmp233
   mv tmp236, y
   lw load_inst12, 0(get_element_ptr_inst28)
   li tmp238, 4
   mul tmp237, tmp236, tmp238
   add get_element_ptr_inst29, tmp237, load_inst12
   li tmp239, 0
   li tmp240, 1
   sub sub_inst2, tmp239, tmp240
   lw load_inst13, 0(get_element_ptr_inst29)
   xor tmp242, load_inst13, sub_inst2
   sltiu tmp241, tmp242, 1
   mv allo4, tmp241
   j .main.logic_exit3
.main.logic_exit3:
   mv tmp243, allo4
   bne tmp243, zero, .main.if_true
   j .main.if_false
.main.if_true2:
   mv tmp244, ok
   li tmp245, 1
   mv ok, tmp245
   j .main.if_exit2
.main.if_false2:
   j .main.if_exit2
.main.if_exit2:
   j .main.if_exit
.main.logic_right4:
   mv tmp246, y
   mv tmp247, targety
   xor tmp249, tmp246, tmp247
   sltiu tmp248, tmp249, 1
   mv allo2, tmp248
   j .main.logic_exit4
.main.logic_exit4:
   mv tmp250, allo2
   bne tmp250, zero, .main.if_true2
   j .main.if_false2
.main.if_true3:
   mv tmp251, tail
   mv tmp252, tail
   li tmp254, 1
   add tmp253, tmp252, tmp254
   mv tail, tmp253
   mv tmp255, tail
   mv tmp256, xlist
   li tmp258, 4
   mul tmp257, tmp255, tmp258
   add get_element_ptr_inst30, tmp257, tmp256
   mv tmp259, x
   sw tmp259, 0(get_element_ptr_inst30)
   mv tmp260, tail
   mv tmp261, ylist
   li tmp263, 4
   mul tmp262, tmp260, tmp263
   add get_element_ptr_inst31, tmp262, tmp261
   mv tmp264, y
   sw tmp264, 0(get_element_ptr_inst31)
   mv tmp265, x
   mv tmp266, step
   li tmp268, 4
   mul tmp267, tmp265, tmp268
   add get_element_ptr_inst32, tmp267, tmp266
   mv tmp269, y
   lw load_inst14, 0(get_element_ptr_inst32)
   li tmp271, 4
   mul tmp270, tmp269, tmp271
   add get_element_ptr_inst33, tmp270, load_inst14
   mv tmp272, now
   li tmp274, 1
   add tmp273, tmp272, tmp274
   sw tmp273, 0(get_element_ptr_inst33)
   mv tmp275, x
   mv tmp276, targetx
   xor tmp278, tmp275, tmp276
   sltiu tmp277, tmp278, 1
   li tmp279, 0
   mv allo5, tmp279
   beq tmp275, tmp276, .main.logic_right7
   j .main.logic_exit7
.main.if_false3:
   j .main.if_exit3
.main.if_exit3:
   mv tmp280, x
   mv tmp281, head
   mv tmp282, xlist
   li tmp284, 4
   mul tmp283, tmp281, tmp284
   add get_element_ptr_inst34, tmp283, tmp282
   lw load_inst15, 0(get_element_ptr_inst34)
   li tmp286, 1
   add tmp285, load_inst15, tmp286
   mv x, tmp285
   mv tmp287, y
   mv tmp288, head
   mv tmp289, ylist
   li tmp291, 4
   mul tmp290, tmp288, tmp291
   add get_element_ptr_inst35, tmp290, tmp289
   lw load_inst16, 0(get_element_ptr_inst35)
   li tmp293, 2
   sub tmp292, load_inst16, tmp293
   mv y, tmp292
   mv tmp294, x
   mv tmp295, N
   mv a0, tmp294
   mv a1, tmp295
   call check
   mv function_call_inst9, a0
   li tmp296, 0
   mv allo6, tmp296
   bne function_call_inst9, zero, .main.logic_right8
   j .main.logic_exit8
.main.logic_right5:
   mv tmp297, y
   mv tmp298, N
   mv a0, tmp297
   mv a1, tmp298
   call check
   mv function_call_inst10, a0
   mv allo3, function_call_inst10
   j .main.logic_exit5
.main.logic_exit5:
   mv tmp299, allo3
   li tmp300, 0
   mv allo7, tmp300
   bne tmp299, zero, .main.logic_right6
   j .main.logic_exit6
.main.logic_right6:
   mv tmp301, x
   mv tmp302, step
   li tmp304, 4
   mul tmp303, tmp301, tmp304
   add get_element_ptr_inst36, tmp303, tmp302
   mv tmp305, y
   lw load_inst17, 0(get_element_ptr_inst36)
   li tmp307, 4
   mul tmp306, tmp305, tmp307
   add get_element_ptr_inst37, tmp306, load_inst17
   li tmp308, 0
   li tmp309, 1
   sub sub_inst3, tmp308, tmp309
   lw load_inst18, 0(get_element_ptr_inst37)
   xor tmp311, load_inst18, sub_inst3
   sltiu tmp310, tmp311, 1
   mv allo7, tmp310
   j .main.logic_exit6
.main.logic_exit6:
   mv tmp312, allo7
   bne tmp312, zero, .main.if_true3
   j .main.if_false3
.main.if_true4:
   mv tmp313, ok
   li tmp314, 1
   mv ok, tmp314
   j .main.if_exit4
.main.if_false4:
   j .main.if_exit4
.main.if_exit4:
   j .main.if_exit3
.main.logic_right7:
   mv tmp315, y
   mv tmp316, targety
   xor tmp318, tmp315, tmp316
   sltiu tmp317, tmp318, 1
   mv allo5, tmp317
   j .main.logic_exit7
.main.logic_exit7:
   mv tmp319, allo5
   bne tmp319, zero, .main.if_true4
   j .main.if_false4
.main.if_true5:
   mv tmp320, tail
   mv tmp321, tail
   li tmp323, 1
   add tmp322, tmp321, tmp323
   mv tail, tmp322
   mv tmp324, tail
   mv tmp325, xlist
   li tmp327, 4
   mul tmp326, tmp324, tmp327
   add get_element_ptr_inst38, tmp326, tmp325
   mv tmp328, x
   sw tmp328, 0(get_element_ptr_inst38)
   mv tmp329, tail
   mv tmp330, ylist
   li tmp332, 4
   mul tmp331, tmp329, tmp332
   add get_element_ptr_inst39, tmp331, tmp330
   mv tmp333, y
   sw tmp333, 0(get_element_ptr_inst39)
   mv tmp334, x
   mv tmp335, step
   li tmp337, 4
   mul tmp336, tmp334, tmp337
   add get_element_ptr_inst40, tmp336, tmp335
   mv tmp338, y
   lw load_inst19, 0(get_element_ptr_inst40)
   li tmp340, 4
   mul tmp339, tmp338, tmp340
   add get_element_ptr_inst41, tmp339, load_inst19
   mv tmp341, now
   li tmp343, 1
   add tmp342, tmp341, tmp343
   sw tmp342, 0(get_element_ptr_inst41)
   mv tmp344, x
   mv tmp345, targetx
   xor tmp347, tmp344, tmp345
   sltiu tmp346, tmp347, 1
   li tmp348, 0
   mv allo8, tmp348
   beq tmp344, tmp345, .main.logic_right10
   j .main.logic_exit10
.main.if_false5:
   j .main.if_exit5
.main.if_exit5:
   mv tmp349, x
   mv tmp350, head
   mv tmp351, xlist
   li tmp353, 4
   mul tmp352, tmp350, tmp353
   add get_element_ptr_inst42, tmp352, tmp351
   lw load_inst20, 0(get_element_ptr_inst42)
   li tmp355, 1
   add tmp354, load_inst20, tmp355
   mv x, tmp354
   mv tmp356, y
   mv tmp357, head
   mv tmp358, ylist
   li tmp360, 4
   mul tmp359, tmp357, tmp360
   add get_element_ptr_inst43, tmp359, tmp358
   lw load_inst21, 0(get_element_ptr_inst43)
   li tmp362, 2
   add tmp361, load_inst21, tmp362
   mv y, tmp361
   mv tmp363, x
   mv tmp364, N
   mv a0, tmp363
   mv a1, tmp364
   call check
   mv function_call_inst11, a0
   li tmp365, 0
   mv allo9, tmp365
   bne function_call_inst11, zero, .main.logic_right11
   j .main.logic_exit11
.main.logic_right8:
   mv tmp366, y
   mv tmp367, N
   mv a0, tmp366
   mv a1, tmp367
   call check
   mv function_call_inst12, a0
   mv allo6, function_call_inst12
   j .main.logic_exit8
.main.logic_exit8:
   mv tmp368, allo6
   li tmp369, 0
   mv allo10, tmp369
   bne tmp368, zero, .main.logic_right9
   j .main.logic_exit9
.main.logic_right9:
   mv tmp370, x
   mv tmp371, step
   li tmp373, 4
   mul tmp372, tmp370, tmp373
   add get_element_ptr_inst44, tmp372, tmp371
   mv tmp374, y
   lw load_inst22, 0(get_element_ptr_inst44)
   li tmp376, 4
   mul tmp375, tmp374, tmp376
   add get_element_ptr_inst45, tmp375, load_inst22
   li tmp377, 0
   li tmp378, 1
   sub sub_inst4, tmp377, tmp378
   lw load_inst23, 0(get_element_ptr_inst45)
   xor tmp380, load_inst23, sub_inst4
   sltiu tmp379, tmp380, 1
   mv allo10, tmp379
   j .main.logic_exit9
.main.logic_exit9:
   mv tmp381, allo10
   bne tmp381, zero, .main.if_true5
   j .main.if_false5
.main.if_true6:
   mv tmp382, ok
   li tmp383, 1
   mv ok, tmp383
   j .main.if_exit6
.main.if_false6:
   j .main.if_exit6
.main.if_exit6:
   j .main.if_exit5
.main.logic_right10:
   mv tmp384, y
   mv tmp385, targety
   xor tmp387, tmp384, tmp385
   sltiu tmp386, tmp387, 1
   mv allo8, tmp386
   j .main.logic_exit10
.main.logic_exit10:
   mv tmp388, allo8
   bne tmp388, zero, .main.if_true6
   j .main.if_false6
.main.if_true7:
   mv tmp389, tail
   mv tmp390, tail
   li tmp392, 1
   add tmp391, tmp390, tmp392
   mv tail, tmp391
   mv tmp393, tail
   mv tmp394, xlist
   li tmp396, 4
   mul tmp395, tmp393, tmp396
   add get_element_ptr_inst46, tmp395, tmp394
   mv tmp397, x
   sw tmp397, 0(get_element_ptr_inst46)
   mv tmp398, tail
   mv tmp399, ylist
   li tmp401, 4
   mul tmp400, tmp398, tmp401
   add get_element_ptr_inst47, tmp400, tmp399
   mv tmp402, y
   sw tmp402, 0(get_element_ptr_inst47)
   mv tmp403, x
   mv tmp404, step
   li tmp406, 4
   mul tmp405, tmp403, tmp406
   add get_element_ptr_inst48, tmp405, tmp404
   mv tmp407, y
   lw load_inst24, 0(get_element_ptr_inst48)
   li tmp409, 4
   mul tmp408, tmp407, tmp409
   add get_element_ptr_inst49, tmp408, load_inst24
   mv tmp410, now
   li tmp412, 1
   add tmp411, tmp410, tmp412
   sw tmp411, 0(get_element_ptr_inst49)
   mv tmp413, x
   mv tmp414, targetx
   xor tmp416, tmp413, tmp414
   sltiu tmp415, tmp416, 1
   li tmp417, 0
   mv allo11, tmp417
   beq tmp413, tmp414, .main.logic_right13
   j .main.logic_exit13
.main.if_false7:
   j .main.if_exit7
.main.if_exit7:
   mv tmp418, x
   mv tmp419, head
   mv tmp420, xlist
   li tmp422, 4
   mul tmp421, tmp419, tmp422
   add get_element_ptr_inst50, tmp421, tmp420
   lw load_inst25, 0(get_element_ptr_inst50)
   li tmp424, 2
   sub tmp423, load_inst25, tmp424
   mv x, tmp423
   mv tmp425, y
   mv tmp426, head
   mv tmp427, ylist
   li tmp429, 4
   mul tmp428, tmp426, tmp429
   add get_element_ptr_inst51, tmp428, tmp427
   lw load_inst26, 0(get_element_ptr_inst51)
   li tmp431, 1
   sub tmp430, load_inst26, tmp431
   mv y, tmp430
   mv tmp432, x
   mv tmp433, N
   mv a0, tmp432
   mv a1, tmp433
   call check
   mv function_call_inst13, a0
   li tmp434, 0
   mv allo12, tmp434
   bne function_call_inst13, zero, .main.logic_right14
   j .main.logic_exit14
.main.logic_right11:
   mv tmp435, y
   mv tmp436, N
   mv a0, tmp435
   mv a1, tmp436
   call check
   mv function_call_inst14, a0
   mv allo9, function_call_inst14
   j .main.logic_exit11
.main.logic_exit11:
   mv tmp437, allo9
   li tmp438, 0
   mv allo13, tmp438
   bne tmp437, zero, .main.logic_right12
   j .main.logic_exit12
.main.logic_right12:
   mv tmp439, x
   mv tmp440, step
   li tmp442, 4
   mul tmp441, tmp439, tmp442
   add get_element_ptr_inst52, tmp441, tmp440
   mv tmp443, y
   lw load_inst27, 0(get_element_ptr_inst52)
   li tmp445, 4
   mul tmp444, tmp443, tmp445
   add get_element_ptr_inst53, tmp444, load_inst27
   li tmp446, 0
   li tmp447, 1
   sub sub_inst5, tmp446, tmp447
   lw load_inst28, 0(get_element_ptr_inst53)
   xor tmp449, load_inst28, sub_inst5
   sltiu tmp448, tmp449, 1
   mv allo13, tmp448
   j .main.logic_exit12
.main.logic_exit12:
   mv tmp450, allo13
   bne tmp450, zero, .main.if_true7
   j .main.if_false7
.main.if_true8:
   mv tmp451, ok
   li tmp452, 1
   mv ok, tmp452
   j .main.if_exit8
.main.if_false8:
   j .main.if_exit8
.main.if_exit8:
   j .main.if_exit7
.main.logic_right13:
   mv tmp453, y
   mv tmp454, targety
   xor tmp456, tmp453, tmp454
   sltiu tmp455, tmp456, 1
   mv allo11, tmp455
   j .main.logic_exit13
.main.logic_exit13:
   mv tmp457, allo11
   bne tmp457, zero, .main.if_true8
   j .main.if_false8
.main.if_true9:
   mv tmp458, tail
   mv tmp459, tail
   li tmp461, 1
   add tmp460, tmp459, tmp461
   mv tail, tmp460
   mv tmp462, tail
   mv tmp463, xlist
   li tmp465, 4
   mul tmp464, tmp462, tmp465
   add get_element_ptr_inst54, tmp464, tmp463
   mv tmp466, x
   sw tmp466, 0(get_element_ptr_inst54)
   mv tmp467, tail
   mv tmp468, ylist
   li tmp470, 4
   mul tmp469, tmp467, tmp470
   add get_element_ptr_inst55, tmp469, tmp468
   mv tmp471, y
   sw tmp471, 0(get_element_ptr_inst55)
   mv tmp472, x
   mv tmp473, step
   li tmp475, 4
   mul tmp474, tmp472, tmp475
   add get_element_ptr_inst56, tmp474, tmp473
   mv tmp476, y
   lw load_inst29, 0(get_element_ptr_inst56)
   li tmp478, 4
   mul tmp477, tmp476, tmp478
   add get_element_ptr_inst57, tmp477, load_inst29
   mv tmp479, now
   li tmp481, 1
   add tmp480, tmp479, tmp481
   sw tmp480, 0(get_element_ptr_inst57)
   mv tmp482, x
   mv tmp483, targetx
   xor tmp485, tmp482, tmp483
   sltiu tmp484, tmp485, 1
   li tmp486, 0
   mv allo14, tmp486
   beq tmp482, tmp483, .main.logic_right16
   j .main.logic_exit16
.main.if_false9:
   j .main.if_exit9
.main.if_exit9:
   mv tmp487, x
   mv tmp488, head
   mv tmp489, xlist
   li tmp491, 4
   mul tmp490, tmp488, tmp491
   add get_element_ptr_inst58, tmp490, tmp489
   lw load_inst30, 0(get_element_ptr_inst58)
   li tmp493, 2
   sub tmp492, load_inst30, tmp493
   mv x, tmp492
   mv tmp494, y
   mv tmp495, head
   mv tmp496, ylist
   li tmp498, 4
   mul tmp497, tmp495, tmp498
   add get_element_ptr_inst59, tmp497, tmp496
   lw load_inst31, 0(get_element_ptr_inst59)
   li tmp500, 1
   add tmp499, load_inst31, tmp500
   mv y, tmp499
   mv tmp501, x
   mv tmp502, N
   mv a0, tmp501
   mv a1, tmp502
   call check
   mv function_call_inst15, a0
   li tmp503, 0
   mv allo15, tmp503
   bne function_call_inst15, zero, .main.logic_right17
   j .main.logic_exit17
.main.logic_right14:
   mv tmp504, y
   mv tmp505, N
   mv a0, tmp504
   mv a1, tmp505
   call check
   mv function_call_inst16, a0
   mv allo12, function_call_inst16
   j .main.logic_exit14
.main.logic_exit14:
   mv tmp506, allo12
   li tmp507, 0
   mv allo16, tmp507
   bne tmp506, zero, .main.logic_right15
   j .main.logic_exit15
.main.logic_right15:
   mv tmp508, x
   mv tmp509, step
   li tmp511, 4
   mul tmp510, tmp508, tmp511
   add get_element_ptr_inst60, tmp510, tmp509
   mv tmp512, y
   lw load_inst32, 0(get_element_ptr_inst60)
   li tmp514, 4
   mul tmp513, tmp512, tmp514
   add get_element_ptr_inst61, tmp513, load_inst32
   li tmp515, 0
   li tmp516, 1
   sub sub_inst6, tmp515, tmp516
   lw load_inst33, 0(get_element_ptr_inst61)
   xor tmp518, load_inst33, sub_inst6
   sltiu tmp517, tmp518, 1
   mv allo16, tmp517
   j .main.logic_exit15
.main.logic_exit15:
   mv tmp519, allo16
   bne tmp519, zero, .main.if_true9
   j .main.if_false9
.main.if_true10:
   mv tmp520, ok
   li tmp521, 1
   mv ok, tmp521
   j .main.if_exit10
.main.if_false10:
   j .main.if_exit10
.main.if_exit10:
   j .main.if_exit9
.main.logic_right16:
   mv tmp522, y
   mv tmp523, targety
   xor tmp525, tmp522, tmp523
   sltiu tmp524, tmp525, 1
   mv allo14, tmp524
   j .main.logic_exit16
.main.logic_exit16:
   mv tmp526, allo14
   bne tmp526, zero, .main.if_true10
   j .main.if_false10
.main.if_true11:
   mv tmp527, tail
   mv tmp528, tail
   li tmp530, 1
   add tmp529, tmp528, tmp530
   mv tail, tmp529
   mv tmp531, tail
   mv tmp532, xlist
   li tmp534, 4
   mul tmp533, tmp531, tmp534
   add get_element_ptr_inst62, tmp533, tmp532
   mv tmp535, x
   sw tmp535, 0(get_element_ptr_inst62)
   mv tmp536, tail
   mv tmp537, ylist
   li tmp539, 4
   mul tmp538, tmp536, tmp539
   add get_element_ptr_inst63, tmp538, tmp537
   mv tmp540, y
   sw tmp540, 0(get_element_ptr_inst63)
   mv tmp541, x
   mv tmp542, step
   li tmp544, 4
   mul tmp543, tmp541, tmp544
   add get_element_ptr_inst64, tmp543, tmp542
   mv tmp545, y
   lw load_inst34, 0(get_element_ptr_inst64)
   li tmp547, 4
   mul tmp546, tmp545, tmp547
   add get_element_ptr_inst65, tmp546, load_inst34
   mv tmp548, now
   li tmp550, 1
   add tmp549, tmp548, tmp550
   sw tmp549, 0(get_element_ptr_inst65)
   mv tmp551, x
   mv tmp552, targetx
   xor tmp554, tmp551, tmp552
   sltiu tmp553, tmp554, 1
   li tmp555, 0
   mv allo17, tmp555
   beq tmp551, tmp552, .main.logic_right19
   j .main.logic_exit19
.main.if_false11:
   j .main.if_exit11
.main.if_exit11:
   mv tmp556, x
   mv tmp557, head
   mv tmp558, xlist
   li tmp560, 4
   mul tmp559, tmp557, tmp560
   add get_element_ptr_inst66, tmp559, tmp558
   lw load_inst35, 0(get_element_ptr_inst66)
   li tmp562, 2
   add tmp561, load_inst35, tmp562
   mv x, tmp561
   mv tmp563, y
   mv tmp564, head
   mv tmp565, ylist
   li tmp567, 4
   mul tmp566, tmp564, tmp567
   add get_element_ptr_inst67, tmp566, tmp565
   lw load_inst36, 0(get_element_ptr_inst67)
   li tmp569, 1
   sub tmp568, load_inst36, tmp569
   mv y, tmp568
   mv tmp570, x
   mv tmp571, N
   mv a0, tmp570
   mv a1, tmp571
   call check
   mv function_call_inst17, a0
   li tmp572, 0
   mv allo18, tmp572
   bne function_call_inst17, zero, .main.logic_right20
   j .main.logic_exit20
.main.logic_right17:
   mv tmp573, y
   mv tmp574, N
   mv a0, tmp573
   mv a1, tmp574
   call check
   mv function_call_inst18, a0
   mv allo15, function_call_inst18
   j .main.logic_exit17
.main.logic_exit17:
   mv tmp575, allo15
   li tmp576, 0
   mv allo19, tmp576
   bne tmp575, zero, .main.logic_right18
   j .main.logic_exit18
.main.logic_right18:
   mv tmp577, x
   mv tmp578, step
   li tmp580, 4
   mul tmp579, tmp577, tmp580
   add get_element_ptr_inst68, tmp579, tmp578
   mv tmp581, y
   lw load_inst37, 0(get_element_ptr_inst68)
   li tmp583, 4
   mul tmp582, tmp581, tmp583
   add get_element_ptr_inst69, tmp582, load_inst37
   li tmp584, 0
   li tmp585, 1
   sub sub_inst7, tmp584, tmp585
   lw load_inst38, 0(get_element_ptr_inst69)
   xor tmp587, load_inst38, sub_inst7
   sltiu tmp586, tmp587, 1
   mv allo19, tmp586
   j .main.logic_exit18
.main.logic_exit18:
   mv tmp588, allo19
   bne tmp588, zero, .main.if_true11
   j .main.if_false11
.main.if_true12:
   mv tmp589, ok
   li tmp590, 1
   mv ok, tmp590
   j .main.if_exit12
.main.if_false12:
   j .main.if_exit12
.main.if_exit12:
   j .main.if_exit11
.main.logic_right19:
   mv tmp591, y
   mv tmp592, targety
   xor tmp594, tmp591, tmp592
   sltiu tmp593, tmp594, 1
   mv allo17, tmp593
   j .main.logic_exit19
.main.logic_exit19:
   mv tmp595, allo17
   bne tmp595, zero, .main.if_true12
   j .main.if_false12
.main.if_true13:
   mv tmp596, tail
   mv tmp597, tail
   li tmp599, 1
   add tmp598, tmp597, tmp599
   mv tail, tmp598
   mv tmp600, tail
   mv tmp601, xlist
   li tmp603, 4
   mul tmp602, tmp600, tmp603
   add get_element_ptr_inst70, tmp602, tmp601
   mv tmp604, x
   sw tmp604, 0(get_element_ptr_inst70)
   mv tmp605, tail
   mv tmp606, ylist
   li tmp608, 4
   mul tmp607, tmp605, tmp608
   add get_element_ptr_inst71, tmp607, tmp606
   mv tmp609, y
   sw tmp609, 0(get_element_ptr_inst71)
   mv tmp610, x
   mv tmp611, step
   li tmp613, 4
   mul tmp612, tmp610, tmp613
   add get_element_ptr_inst72, tmp612, tmp611
   mv tmp614, y
   lw load_inst39, 0(get_element_ptr_inst72)
   li tmp616, 4
   mul tmp615, tmp614, tmp616
   add get_element_ptr_inst73, tmp615, load_inst39
   mv tmp617, now
   li tmp619, 1
   add tmp618, tmp617, tmp619
   sw tmp618, 0(get_element_ptr_inst73)
   mv tmp620, x
   mv tmp621, targetx
   xor tmp623, tmp620, tmp621
   sltiu tmp622, tmp623, 1
   li tmp624, 0
   mv allo20, tmp624
   beq tmp620, tmp621, .main.logic_right22
   j .main.logic_exit22
.main.if_false13:
   j .main.if_exit13
.main.if_exit13:
   mv tmp625, x
   mv tmp626, head
   mv tmp627, xlist
   li tmp629, 4
   mul tmp628, tmp626, tmp629
   add get_element_ptr_inst74, tmp628, tmp627
   lw load_inst40, 0(get_element_ptr_inst74)
   li tmp631, 2
   add tmp630, load_inst40, tmp631
   mv x, tmp630
   mv tmp632, y
   mv tmp633, head
   mv tmp634, ylist
   li tmp636, 4
   mul tmp635, tmp633, tmp636
   add get_element_ptr_inst75, tmp635, tmp634
   lw load_inst41, 0(get_element_ptr_inst75)
   li tmp638, 1
   add tmp637, load_inst41, tmp638
   mv y, tmp637
   mv tmp639, x
   mv tmp640, N
   mv a0, tmp639
   mv a1, tmp640
   call check
   mv function_call_inst19, a0
   li tmp641, 0
   mv allo21, tmp641
   bne function_call_inst19, zero, .main.logic_right23
   j .main.logic_exit23
.main.logic_right20:
   mv tmp642, y
   mv tmp643, N
   mv a0, tmp642
   mv a1, tmp643
   call check
   mv function_call_inst20, a0
   mv allo18, function_call_inst20
   j .main.logic_exit20
.main.logic_exit20:
   mv tmp644, allo18
   li tmp645, 0
   mv allo22, tmp645
   bne tmp644, zero, .main.logic_right21
   j .main.logic_exit21
.main.logic_right21:
   mv tmp646, x
   mv tmp647, step
   li tmp649, 4
   mul tmp648, tmp646, tmp649
   add get_element_ptr_inst76, tmp648, tmp647
   mv tmp650, y
   lw load_inst42, 0(get_element_ptr_inst76)
   li tmp652, 4
   mul tmp651, tmp650, tmp652
   add get_element_ptr_inst77, tmp651, load_inst42
   li tmp653, 0
   li tmp654, 1
   sub sub_inst8, tmp653, tmp654
   lw load_inst43, 0(get_element_ptr_inst77)
   xor tmp656, load_inst43, sub_inst8
   sltiu tmp655, tmp656, 1
   mv allo22, tmp655
   j .main.logic_exit21
.main.logic_exit21:
   mv tmp657, allo22
   bne tmp657, zero, .main.if_true13
   j .main.if_false13
.main.if_true14:
   mv tmp658, ok
   li tmp659, 1
   mv ok, tmp659
   j .main.if_exit14
.main.if_false14:
   j .main.if_exit14
.main.if_exit14:
   j .main.if_exit13
.main.logic_right22:
   mv tmp660, y
   mv tmp661, targety
   xor tmp663, tmp660, tmp661
   sltiu tmp662, tmp663, 1
   mv allo20, tmp662
   j .main.logic_exit22
.main.logic_exit22:
   mv tmp664, allo20
   bne tmp664, zero, .main.if_true14
   j .main.if_false14
.main.if_true15:
   mv tmp665, tail
   mv tmp666, tail
   li tmp668, 1
   add tmp667, tmp666, tmp668
   mv tail, tmp667
   mv tmp669, tail
   mv tmp670, xlist
   li tmp672, 4
   mul tmp671, tmp669, tmp672
   add get_element_ptr_inst78, tmp671, tmp670
   mv tmp673, x
   sw tmp673, 0(get_element_ptr_inst78)
   mv tmp674, tail
   mv tmp675, ylist
   li tmp677, 4
   mul tmp676, tmp674, tmp677
   add get_element_ptr_inst79, tmp676, tmp675
   mv tmp678, y
   sw tmp678, 0(get_element_ptr_inst79)
   mv tmp679, x
   mv tmp680, step
   li tmp682, 4
   mul tmp681, tmp679, tmp682
   add get_element_ptr_inst80, tmp681, tmp680
   mv tmp683, y
   lw load_inst44, 0(get_element_ptr_inst80)
   li tmp685, 4
   mul tmp684, tmp683, tmp685
   add get_element_ptr_inst81, tmp684, load_inst44
   mv tmp686, now
   li tmp688, 1
   add tmp687, tmp686, tmp688
   sw tmp687, 0(get_element_ptr_inst81)
   mv tmp689, x
   mv tmp690, targetx
   xor tmp692, tmp689, tmp690
   sltiu tmp691, tmp692, 1
   li tmp693, 0
   mv allo23, tmp693
   beq tmp689, tmp690, .main.logic_right25
   j .main.logic_exit25
.main.if_false15:
   j .main.if_exit15
.main.if_exit15:
   mv tmp694, ok
   li tmp696, 1
   xor tmp697, tmp694, tmp696
   sltiu tmp695, tmp697, 1
   li tmp698, 1
   beq tmp694, tmp698, .main.if_true17
   j .main.if_false17
.main.logic_right23:
   mv tmp699, y
   mv tmp700, N
   mv a0, tmp699
   mv a1, tmp700
   call check
   mv function_call_inst21, a0
   mv allo21, function_call_inst21
   j .main.logic_exit23
.main.logic_exit23:
   mv tmp701, allo21
   li tmp702, 0
   mv allo24, tmp702
   bne tmp701, zero, .main.logic_right24
   j .main.logic_exit24
.main.logic_right24:
   mv tmp703, x
   mv tmp704, step
   li tmp706, 4
   mul tmp705, tmp703, tmp706
   add get_element_ptr_inst82, tmp705, tmp704
   mv tmp707, y
   lw load_inst45, 0(get_element_ptr_inst82)
   li tmp709, 4
   mul tmp708, tmp707, tmp709
   add get_element_ptr_inst83, tmp708, load_inst45
   li tmp710, 0
   li tmp711, 1
   sub sub_inst9, tmp710, tmp711
   lw load_inst46, 0(get_element_ptr_inst83)
   xor tmp713, load_inst46, sub_inst9
   sltiu tmp712, tmp713, 1
   mv allo24, tmp712
   j .main.logic_exit24
.main.logic_exit24:
   mv tmp714, allo24
   bne tmp714, zero, .main.if_true15
   j .main.if_false15
.main.if_true16:
   mv tmp715, ok
   li tmp716, 1
   mv ok, tmp716
   j .main.if_exit16
.main.if_false16:
   j .main.if_exit16
.main.if_exit16:
   j .main.if_exit15
.main.logic_right25:
   mv tmp717, y
   mv tmp718, targety
   xor tmp720, tmp717, tmp718
   sltiu tmp719, tmp720, 1
   mv allo23, tmp719
   j .main.logic_exit25
.main.logic_exit25:
   mv tmp721, allo23
   bne tmp721, zero, .main.if_true16
   j .main.if_false16
.main.if_true17:
   j .main.while_exit2
   j .main.if_exit17
.main.if_false17:
   j .main.if_exit17
.main.if_exit17:
   mv tmp722, head
   mv tmp723, head
   li tmp725, 1
   add tmp724, tmp723, tmp725
   mv head, tmp724
   j .main.while_condition2
.main.if_true18:
   mv tmp726, targetx
   mv tmp727, step
   li tmp729, 4
   mul tmp728, tmp726, tmp729
   add get_element_ptr_inst84, tmp728, tmp727
   mv tmp730, targety
   lw load_inst47, 0(get_element_ptr_inst84)
   li tmp732, 4
   mul tmp731, tmp730, tmp732
   add get_element_ptr_inst85, tmp731, load_inst47
   lw load_inst48, 0(get_element_ptr_inst85)
   mv a0, load_inst48
   call toString
   mv function_call_inst22, a0
   mv allo_inst, function_call_inst22
   mv tmp733, allo_inst
   mv a0, tmp733
   call println
   j .main.if_exit18
.main.if_false18:
   li tmp734, 0
   la str.addr, .const_str
   add get_element_ptr_inst86, str.addr, tmp734
   mv a0, get_element_ptr_inst86
   call print
   j .main.if_exit18
.main.if_exit18:
   li tmp735, 0
   mv a0, tmp735
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
   j .main.mainexit
.main.mainexit:
   li tmp736, 0
   mv a0, tmp736
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
   mv tmp737, allo25
   mv a0, tmp737
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
.globl   check
   .p2align   2
   .type   check,@function
check:
.check.checkentry:
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
   mv check_a, a0
   mv check_N, a1
   j .check.first_block__check
.check.first_block__check:
   mv a, check_a
   mv N2, check_N
   mv tmp738, a
   mv tmp739, N2
   slt tmp740, tmp738, tmp739
   li tmp741, 0
   mv allo26, tmp741
   blt tmp738, tmp739, .check.logic_right
   j .check.logic_exit
.check.logic_right:
   mv tmp742, a
   li tmp744, 0
   slt tmp745, tmp742, tmp744
   xori tmp743, tmp745, 1
   mv allo26, tmp743
   j .check.logic_exit
.check.logic_exit:
   mv tmp746, allo26
   mv a0, tmp746
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
   j .check.checkexit
.check.checkexit:
   mv tmp747, allo27
   mv a0, tmp747
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
   .size   check, .Lfunc_end1-check
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
   .type   .const_str,@object
.section   .rodata.str1.1,"aMS",@progbits,1
.const_str:
   .asciz   "no solution!\n"
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
