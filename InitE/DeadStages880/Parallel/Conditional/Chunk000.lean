import InitE.DeadStages880.Parallel.Data.Chunk000
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.CompilerComputation

namespace InitE.DeadStages880.Parallel
theorem node0_cond_eq : Flapjack.WordAlloc.removeDeadStructural input0 value0 value1 value2 = (output0, value3, value1) := by
  rw [input0_def, output0_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1 value3 value1 value2 = (output1, value4, value1) := by
  rw [input1_def, output1_def]
  try (conv => lhs; cbv)
  try rfl

theorem node2_cond_eq
    (child0 : Flapjack.WordAlloc.removeDeadStructural input0 value0 value1 value2 = (output0, value3, value1))
    (child1 : Flapjack.WordAlloc.removeDeadStructural input1 value3 value1 value2 = (output1, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input2 value0 value1 value2 = (output2, value4, value1) := by
  rw [input2_def, output2_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child0]
  try dsimp only
  rw [child1]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node3_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3 value4 value1 value2 = (output3, value5, value1) := by
  rw [input3_def, output3_def]
  try (conv => lhs; cbv)
  try rfl

theorem node4_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4 value5 value1 value2 = (output4, value5, value1) := by
  rw [input4_def, output4_def]
  try (conv => lhs; cbv)
  try rfl

theorem node5_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5 value5 value1 value2 = (output5, value5, value1) := by
  rw [input5_def, output5_def]
  try (conv => lhs; cbv)
  try rfl

theorem node6_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6 value5 value1 value2 = (output6, value5, value1) := by
  rw [input6_def, output6_def]
  try (conv => lhs; cbv)
  try rfl

theorem node7_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7 value5 value1 value2 = (output7, value5, value1) := by
  rw [input7_def, output7_def]
  try (conv => lhs; cbv)
  try rfl

theorem node8_cond_eq
    (child6 : Flapjack.WordAlloc.removeDeadStructural input6 value5 value1 value2 = (output6, value5, value1))
    (child7 : Flapjack.WordAlloc.removeDeadStructural input7 value5 value1 value2 = (output7, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8 value5 value1 value2 = (output8, value5, value1) := by
  rw [input8_def, output8_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6]
  try dsimp only
  rw [child7]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node9_cond_eq
    (child5 : Flapjack.WordAlloc.removeDeadStructural input5 value5 value1 value2 = (output5, value5, value1))
    (child8 : Flapjack.WordAlloc.removeDeadStructural input8 value5 value1 value2 = (output8, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9 value5 value1 value2 = (output9, value5, value1) := by
  rw [input9_def, output9_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5]
  try dsimp only
  rw [child8]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node10_cond_eq : Flapjack.WordAlloc.removeDeadStructural input10 value5 value1 value2 = (output10, value5, value1) := by
  rw [input10_def, output10_def]
  try (conv => lhs; cbv)
  try rfl

theorem node11_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11 value5 value1 value2 = (output11, value5, value1) := by
  rw [input11_def, output11_def]
  try (conv => lhs; cbv)
  try rfl

theorem node12_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12 value5 value1 value2 = (output12, value5, value1) := by
  rw [input12_def, output12_def]
  try (conv => lhs; cbv)
  try rfl

theorem node13_cond_eq
    (child11 : Flapjack.WordAlloc.removeDeadStructural input11 value5 value1 value2 = (output11, value5, value1))
    (child12 : Flapjack.WordAlloc.removeDeadStructural input12 value5 value1 value2 = (output12, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13 value5 value1 value2 = (output13, value5, value1) := by
  rw [input13_def, output13_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11]
  try dsimp only
  rw [child12]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node14_cond_eq
    (child10 : Flapjack.WordAlloc.removeDeadStructural input10 value5 value1 value2 = (output10, value5, value1))
    (child13 : Flapjack.WordAlloc.removeDeadStructural input13 value5 value1 value2 = (output13, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input14 value5 value1 value2 = (output14, value5, value1) := by
  rw [input14_def, output14_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10]
  try dsimp only
  rw [child13]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node15_cond_eq : Flapjack.WordAlloc.removeDeadStructural input15 value5 value1 value2 = (output15, value5, value1) := by
  rw [input15_def, output15_def]
  try (conv => lhs; cbv)
  try rfl

theorem node16_cond_eq
    (child14 : Flapjack.WordAlloc.removeDeadStructural input14 value5 value1 value2 = (output14, value5, value1))
    (child15 : Flapjack.WordAlloc.removeDeadStructural input15 value5 value1 value2 = (output15, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input16 value5 value1 value2 = (output16, value5, value1) := by
  rw [input16_def, output16_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child14]
  try dsimp only
  rw [child15]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node17_cond_eq : Flapjack.WordAlloc.removeDeadStructural input17 value5 value1 value2 = (output17, value3, value1) := by
  rw [input17_def, output17_def]
  try (conv => lhs; cbv)
  try rfl

theorem node18_cond_eq : Flapjack.WordAlloc.removeDeadStructural input18 value3 value1 value2 = (output18, value6, value1) := by
  rw [input18_def, output18_def]
  try (conv => lhs; cbv)
  try rfl

theorem node19_cond_eq
    (child17 : Flapjack.WordAlloc.removeDeadStructural input17 value5 value1 value2 = (output17, value3, value1))
    (child18 : Flapjack.WordAlloc.removeDeadStructural input18 value3 value1 value2 = (output18, value6, value1)) : Flapjack.WordAlloc.removeDeadStructural input19 value5 value1 value2 = (output19, value6, value1) := by
  rw [input19_def, output19_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child17]
  try dsimp only
  rw [child18]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node20_cond_eq : Flapjack.WordAlloc.removeDeadStructural input20 value6 value1 value2 = (output20, value5, value1) := by
  rw [input20_def, output20_def]
  try (conv => lhs; cbv)
  try rfl

theorem node21_cond_eq : Flapjack.WordAlloc.removeDeadStructural input21 value5 value1 value2 = (output21, value7, value8) := by
  rw [input21_def, output21_def]
  try (conv => lhs; cbv)
  try rfl

theorem node22_cond_eq : Flapjack.WordAlloc.removeDeadStructural input22 value7 value8 value2 = (output22, value9, value8) := by
  rw [input22_def, output22_def]
  try (conv => lhs; cbv)
  try rfl

theorem node23_cond_eq
    (child21 : Flapjack.WordAlloc.removeDeadStructural input21 value5 value1 value2 = (output21, value7, value8))
    (child22 : Flapjack.WordAlloc.removeDeadStructural input22 value7 value8 value2 = (output22, value9, value8)) : Flapjack.WordAlloc.removeDeadStructural input23 value5 value1 value2 = (output23, value9, value8) := by
  rw [input23_def, output23_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child21]
  try dsimp only
  rw [child22]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node24_cond_eq : Flapjack.WordAlloc.removeDeadStructural input24 value9 value8 value2 = (output24, value5, value8) := by
  rw [input24_def, output24_def]
  try (conv => lhs; cbv)
  try rfl

theorem node25_cond_eq : Flapjack.WordAlloc.removeDeadStructural input25 value5 value8 value2 = (output25, value5, value8) := by
  rw [input25_def, output25_def]
  try (conv => lhs; cbv)
  try rfl

theorem node26_cond_eq : Flapjack.WordAlloc.removeDeadStructural input26 value5 value8 value2 = (output26, value5, value8) := by
  rw [input26_def, output26_def]
  try (conv => lhs; cbv)
  try rfl

theorem node27_cond_eq : Flapjack.WordAlloc.removeDeadStructural input27 value5 value8 value2 = (output27, value5, value8) := by
  rw [input27_def, output27_def]
  try (conv => lhs; cbv)
  try rfl

theorem node28_cond_eq
    (child26 : Flapjack.WordAlloc.removeDeadStructural input26 value5 value8 value2 = (output26, value5, value8))
    (child27 : Flapjack.WordAlloc.removeDeadStructural input27 value5 value8 value2 = (output27, value5, value8)) : Flapjack.WordAlloc.removeDeadStructural input28 value5 value8 value2 = (output28, value5, value8) := by
  rw [input28_def, output28_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child26]
  try dsimp only
  rw [child27]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node29_cond_eq
    (child25 : Flapjack.WordAlloc.removeDeadStructural input25 value5 value8 value2 = (output25, value5, value8))
    (child28 : Flapjack.WordAlloc.removeDeadStructural input28 value5 value8 value2 = (output28, value5, value8)) : Flapjack.WordAlloc.removeDeadStructural input29 value5 value8 value2 = (output29, value5, value8) := by
  rw [input29_def, output29_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child25]
  try dsimp only
  rw [child28]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node30_cond_eq
    (child24 : Flapjack.WordAlloc.removeDeadStructural input24 value9 value8 value2 = (output24, value5, value8))
    (child29 : Flapjack.WordAlloc.removeDeadStructural input29 value5 value8 value2 = (output29, value5, value8)) : Flapjack.WordAlloc.removeDeadStructural input30 value9 value8 value2 = (output30, value5, value8) := by
  rw [input30_def, output30_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child24]
  try dsimp only
  rw [child29]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node31_cond_eq
    (child23 : Flapjack.WordAlloc.removeDeadStructural input23 value5 value1 value2 = (output23, value9, value8))
    (child30 : Flapjack.WordAlloc.removeDeadStructural input30 value9 value8 value2 = (output30, value5, value8)) : Flapjack.WordAlloc.removeDeadStructural input31 value5 value1 value2 = (output31, value5, value8) := by
  rw [input31_def, output31_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child23]
  try dsimp only
  rw [child30]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node32_cond_eq
    (child20 : Flapjack.WordAlloc.removeDeadStructural input20 value6 value1 value2 = (output20, value5, value1))
    (child31 : Flapjack.WordAlloc.removeDeadStructural input31 value5 value1 value2 = (output31, value5, value8)) : Flapjack.WordAlloc.removeDeadStructural input32 value6 value1 value2 = (output32, value5, value8) := by
  rw [input32_def, output32_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child20]
  try dsimp only
  rw [child31]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node33_cond_eq
    (child19 : Flapjack.WordAlloc.removeDeadStructural input19 value5 value1 value2 = (output19, value6, value1))
    (child32 : Flapjack.WordAlloc.removeDeadStructural input32 value6 value1 value2 = (output32, value5, value8)) : Flapjack.WordAlloc.removeDeadStructural input33 value5 value1 value2 = (output33, value5, value8) := by
  rw [input33_def, output33_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child19]
  try dsimp only
  rw [child32]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node34_cond_eq
    (child16 : Flapjack.WordAlloc.removeDeadStructural input16 value5 value1 value2 = (output16, value5, value1))
    (child33 : Flapjack.WordAlloc.removeDeadStructural input33 value5 value1 value2 = (output33, value5, value8)) : Flapjack.WordAlloc.removeDeadStructural input34 value5 value1 value2 = (output34, value5, value8) := by
  rw [input34_def, output34_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child16]
  try dsimp only
  rw [child33]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node35_cond_eq : Flapjack.WordAlloc.removeDeadStructural input35 value5 value1 value2 = (output35, value5, value1) := by
  rw [input35_def, output35_def]
  try (conv => lhs; cbv)
  try rfl

theorem node36_cond_eq : Flapjack.WordAlloc.removeDeadStructural input36 value5 value1 value2 = (output36, value5, value1) := by
  rw [input36_def, output36_def]
  try (conv => lhs; cbv)
  try rfl

theorem node37_cond_eq : Flapjack.WordAlloc.removeDeadStructural input37 value5 value1 value2 = (output37, value5, value1) := by
  rw [input37_def, output37_def]
  try (conv => lhs; cbv)
  try rfl

theorem node38_cond_eq
    (child36 : Flapjack.WordAlloc.removeDeadStructural input36 value5 value1 value2 = (output36, value5, value1))
    (child37 : Flapjack.WordAlloc.removeDeadStructural input37 value5 value1 value2 = (output37, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input38 value5 value1 value2 = (output38, value5, value1) := by
  rw [input38_def, output38_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child36]
  try dsimp only
  rw [child37]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node39_cond_eq
    (child35 : Flapjack.WordAlloc.removeDeadStructural input35 value5 value1 value2 = (output35, value5, value1))
    (child38 : Flapjack.WordAlloc.removeDeadStructural input38 value5 value1 value2 = (output38, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input39 value5 value1 value2 = (output39, value5, value1) := by
  rw [input39_def, output39_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child35]
  try dsimp only
  rw [child38]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node40_cond_eq : Flapjack.WordAlloc.removeDeadStructural input40 value5 value1 value2 = (output40, value5, value1) := by
  rw [input40_def, output40_def]
  try (conv => lhs; cbv)
  try rfl

theorem node41_cond_eq
    (child39 : Flapjack.WordAlloc.removeDeadStructural input39 value5 value1 value2 = (output39, value5, value1))
    (child40 : Flapjack.WordAlloc.removeDeadStructural input40 value5 value1 value2 = (output40, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input41 value5 value1 value2 = (output41, value5, value1) := by
  rw [input41_def, output41_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child39]
  try dsimp only
  rw [child40]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node42_cond_eq : Flapjack.WordAlloc.removeDeadStructural input42 value5 value1 value2 = (output42, value5, value1) := by
  rw [input42_def, output42_def]
  try (conv => lhs; cbv)
  try rfl

theorem node43_cond_eq
    (child41 : Flapjack.WordAlloc.removeDeadStructural input41 value5 value1 value2 = (output41, value5, value1))
    (child42 : Flapjack.WordAlloc.removeDeadStructural input42 value5 value1 value2 = (output42, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input43 value5 value1 value2 = (output43, value5, value1) := by
  rw [input43_def, output43_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child41]
  try dsimp only
  rw [child42]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node44_cond_eq
    (child34 : Flapjack.WordAlloc.removeDeadStructural input34 value5 value1 value2 = (output34, value5, value8))
    (child43 : Flapjack.WordAlloc.removeDeadStructural input43 value5 value1 value2 = (output43, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input44 value5 value1 value2 = (output44, value12, value1) := by
  rw [input44_def, output44_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child34]
  try dsimp only
  rw [child43]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try (conv => lhs; cbv)
  try rfl

theorem node45_cond_eq
    (child9 : Flapjack.WordAlloc.removeDeadStructural input9 value5 value1 value2 = (output9, value5, value1))
    (child44 : Flapjack.WordAlloc.removeDeadStructural input44 value5 value1 value2 = (output44, value12, value1)) : Flapjack.WordAlloc.removeDeadStructural input45 value5 value1 value2 = (output45, value12, value1) := by
  rw [input45_def, output45_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9]
  try dsimp only
  rw [child44]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node46_cond_eq : Flapjack.WordAlloc.removeDeadStructural input46 value12 value1 value2 = (output46, value13, value1) := by
  rw [input46_def, output46_def]
  try (conv => lhs; cbv)
  try rfl

theorem node47_cond_eq : Flapjack.WordAlloc.removeDeadStructural input47 value13 value1 value2 = (output47, value14, value1) := by
  rw [input47_def, output47_def]
  try (conv => lhs; cbv)
  try rfl

theorem node48_cond_eq : Flapjack.WordAlloc.removeDeadStructural input48 value14 value1 value2 = (output48, value14, value1) := by
  rw [input48_def, output48_def]
  try (conv => lhs; cbv)
  try rfl

theorem node49_cond_eq : Flapjack.WordAlloc.removeDeadStructural input49 value14 value1 value2 = (output49, value15, value1) := by
  rw [input49_def, output49_def]
  try (conv => lhs; cbv)
  try rfl

theorem node50_cond_eq : Flapjack.WordAlloc.removeDeadStructural input50 value15 value1 value2 = (output50, value16, value1) := by
  rw [input50_def, output50_def]
  try (conv => lhs; cbv)
  try rfl

theorem node51_cond_eq
    (child49 : Flapjack.WordAlloc.removeDeadStructural input49 value14 value1 value2 = (output49, value15, value1))
    (child50 : Flapjack.WordAlloc.removeDeadStructural input50 value15 value1 value2 = (output50, value16, value1)) : Flapjack.WordAlloc.removeDeadStructural input51 value14 value1 value2 = (output51, value16, value1) := by
  rw [input51_def, output51_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child49]
  try dsimp only
  rw [child50]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node52_cond_eq : Flapjack.WordAlloc.removeDeadStructural input52 value16 value1 value2 = (output52, value17, value1) := by
  rw [input52_def, output52_def]
  try (conv => lhs; cbv)
  try rfl

theorem node53_cond_eq
    (child51 : Flapjack.WordAlloc.removeDeadStructural input51 value14 value1 value2 = (output51, value16, value1))
    (child52 : Flapjack.WordAlloc.removeDeadStructural input52 value16 value1 value2 = (output52, value17, value1)) : Flapjack.WordAlloc.removeDeadStructural input53 value14 value1 value2 = (output53, value17, value1) := by
  rw [input53_def, output53_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child51]
  try dsimp only
  rw [child52]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node54_cond_eq : Flapjack.WordAlloc.removeDeadStructural input54 value17 value1 value2 = (output54, value18, value1) := by
  rw [input54_def, output54_def]
  try (conv => lhs; cbv)
  try rfl

theorem node55_cond_eq : Flapjack.WordAlloc.removeDeadStructural input55 value18 value1 value2 = (output55, value18, value1) := by
  rw [input55_def, output55_def]
  try (conv => lhs; cbv)
  try rfl

theorem node56_cond_eq : Flapjack.WordAlloc.removeDeadStructural input56 value18 value1 value2 = (output56, value19, value1) := by
  rw [input56_def, output56_def]
  try (conv => lhs; cbv)
  try rfl

theorem node57_cond_eq : Flapjack.WordAlloc.removeDeadStructural input57 value19 value1 value2 = (output57, value20, value1) := by
  rw [input57_def, output57_def]
  try (conv => lhs; cbv)
  try rfl

theorem node58_cond_eq
    (child56 : Flapjack.WordAlloc.removeDeadStructural input56 value18 value1 value2 = (output56, value19, value1))
    (child57 : Flapjack.WordAlloc.removeDeadStructural input57 value19 value1 value2 = (output57, value20, value1)) : Flapjack.WordAlloc.removeDeadStructural input58 value18 value1 value2 = (output58, value20, value1) := by
  rw [input58_def, output58_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child56]
  try dsimp only
  rw [child57]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node59_cond_eq : Flapjack.WordAlloc.removeDeadStructural input59 value20 value1 value2 = (output59, value21, value1) := by
  rw [input59_def, output59_def]
  try (conv => lhs; cbv)
  try rfl

theorem node60_cond_eq : Flapjack.WordAlloc.removeDeadStructural input60 value21 value1 value2 = (output60, value21, value1) := by
  rw [input60_def, output60_def]
  try (conv => lhs; cbv)
  try rfl

theorem node61_cond_eq : Flapjack.WordAlloc.removeDeadStructural input61 value21 value1 value2 = (output61, value21, value1) := by
  rw [input61_def, output61_def]
  try (conv => lhs; cbv)
  try rfl

theorem node62_cond_eq : Flapjack.WordAlloc.removeDeadStructural input62 value21 value1 value2 = (output62, value21, value1) := by
  rw [input62_def, output62_def]
  try (conv => lhs; cbv)
  try rfl

theorem node63_cond_eq : Flapjack.WordAlloc.removeDeadStructural input63 value21 value1 value2 = (output63, value21, value1) := by
  rw [input63_def, output63_def]
  try (conv => lhs; cbv)
  try rfl

theorem node64_cond_eq
    (child62 : Flapjack.WordAlloc.removeDeadStructural input62 value21 value1 value2 = (output62, value21, value1))
    (child63 : Flapjack.WordAlloc.removeDeadStructural input63 value21 value1 value2 = (output63, value21, value1)) : Flapjack.WordAlloc.removeDeadStructural input64 value21 value1 value2 = (output64, value21, value1) := by
  rw [input64_def, output64_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child62]
  try dsimp only
  rw [child63]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node65_cond_eq
    (child61 : Flapjack.WordAlloc.removeDeadStructural input61 value21 value1 value2 = (output61, value21, value1))
    (child64 : Flapjack.WordAlloc.removeDeadStructural input64 value21 value1 value2 = (output64, value21, value1)) : Flapjack.WordAlloc.removeDeadStructural input65 value21 value1 value2 = (output65, value21, value1) := by
  rw [input65_def, output65_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child61]
  try dsimp only
  rw [child64]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node66_cond_eq : Flapjack.WordAlloc.removeDeadStructural input66 value21 value1 value2 = (output66, value21, value1) := by
  rw [input66_def, output66_def]
  try (conv => lhs; cbv)
  try rfl

theorem node67_cond_eq : Flapjack.WordAlloc.removeDeadStructural input67 value21 value1 value2 = (output67, value21, value1) := by
  rw [input67_def, output67_def]
  try (conv => lhs; cbv)
  try rfl

theorem node68_cond_eq : Flapjack.WordAlloc.removeDeadStructural input68 value21 value1 value2 = (output68, value21, value1) := by
  rw [input68_def, output68_def]
  try (conv => lhs; cbv)
  try rfl

theorem node69_cond_eq
    (child67 : Flapjack.WordAlloc.removeDeadStructural input67 value21 value1 value2 = (output67, value21, value1))
    (child68 : Flapjack.WordAlloc.removeDeadStructural input68 value21 value1 value2 = (output68, value21, value1)) : Flapjack.WordAlloc.removeDeadStructural input69 value21 value1 value2 = (output69, value21, value1) := by
  rw [input69_def, output69_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child67]
  try dsimp only
  rw [child68]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node70_cond_eq
    (child66 : Flapjack.WordAlloc.removeDeadStructural input66 value21 value1 value2 = (output66, value21, value1))
    (child69 : Flapjack.WordAlloc.removeDeadStructural input69 value21 value1 value2 = (output69, value21, value1)) : Flapjack.WordAlloc.removeDeadStructural input70 value21 value1 value2 = (output70, value21, value1) := by
  rw [input70_def, output70_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child66]
  try dsimp only
  rw [child69]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node71_cond_eq : Flapjack.WordAlloc.removeDeadStructural input71 value21 value1 value2 = (output71, value21, value1) := by
  rw [input71_def, output71_def]
  try (conv => lhs; cbv)
  try rfl

theorem node72_cond_eq
    (child70 : Flapjack.WordAlloc.removeDeadStructural input70 value21 value1 value2 = (output70, value21, value1))
    (child71 : Flapjack.WordAlloc.removeDeadStructural input71 value21 value1 value2 = (output71, value21, value1)) : Flapjack.WordAlloc.removeDeadStructural input72 value21 value1 value2 = (output72, value21, value1) := by
  rw [input72_def, output72_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child70]
  try dsimp only
  rw [child71]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node73_cond_eq : Flapjack.WordAlloc.removeDeadStructural input73 value21 value1 value2 = (output73, value22, value1) := by
  rw [input73_def, output73_def]
  try (conv => lhs; cbv)
  try rfl

theorem node74_cond_eq : Flapjack.WordAlloc.removeDeadStructural input74 value22 value1 value2 = (output74, value23, value1) := by
  rw [input74_def, output74_def]
  try (conv => lhs; cbv)
  try rfl

theorem node75_cond_eq
    (child73 : Flapjack.WordAlloc.removeDeadStructural input73 value21 value1 value2 = (output73, value22, value1))
    (child74 : Flapjack.WordAlloc.removeDeadStructural input74 value22 value1 value2 = (output74, value23, value1)) : Flapjack.WordAlloc.removeDeadStructural input75 value21 value1 value2 = (output75, value23, value1) := by
  rw [input75_def, output75_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child73]
  try dsimp only
  rw [child74]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node76_cond_eq : Flapjack.WordAlloc.removeDeadStructural input76 value23 value1 value2 = (output76, value21, value1) := by
  rw [input76_def, output76_def]
  try (conv => lhs; cbv)
  try rfl

theorem node77_cond_eq : Flapjack.WordAlloc.removeDeadStructural input77 value21 value1 value2 = (output77, value24, value8) := by
  rw [input77_def, output77_def]
  try (conv => lhs; cbv)
  try rfl

theorem node78_cond_eq : Flapjack.WordAlloc.removeDeadStructural input78 value24 value8 value2 = (output78, value25, value8) := by
  rw [input78_def, output78_def]
  try (conv => lhs; cbv)
  try rfl

theorem node79_cond_eq
    (child77 : Flapjack.WordAlloc.removeDeadStructural input77 value21 value1 value2 = (output77, value24, value8))
    (child78 : Flapjack.WordAlloc.removeDeadStructural input78 value24 value8 value2 = (output78, value25, value8)) : Flapjack.WordAlloc.removeDeadStructural input79 value21 value1 value2 = (output79, value25, value8) := by
  rw [input79_def, output79_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child77]
  try dsimp only
  rw [child78]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node80_cond_eq : Flapjack.WordAlloc.removeDeadStructural input80 value25 value8 value2 = (output80, value21, value8) := by
  rw [input80_def, output80_def]
  try (conv => lhs; cbv)
  try rfl

theorem node81_cond_eq : Flapjack.WordAlloc.removeDeadStructural input81 value21 value8 value2 = (output81, value21, value8) := by
  rw [input81_def, output81_def]
  try (conv => lhs; cbv)
  try rfl

theorem node82_cond_eq : Flapjack.WordAlloc.removeDeadStructural input82 value21 value8 value2 = (output82, value21, value8) := by
  rw [input82_def, output82_def]
  try (conv => lhs; cbv)
  try rfl

theorem node83_cond_eq : Flapjack.WordAlloc.removeDeadStructural input83 value21 value8 value2 = (output83, value21, value8) := by
  rw [input83_def, output83_def]
  try (conv => lhs; cbv)
  try rfl

theorem node84_cond_eq
    (child82 : Flapjack.WordAlloc.removeDeadStructural input82 value21 value8 value2 = (output82, value21, value8))
    (child83 : Flapjack.WordAlloc.removeDeadStructural input83 value21 value8 value2 = (output83, value21, value8)) : Flapjack.WordAlloc.removeDeadStructural input84 value21 value8 value2 = (output84, value21, value8) := by
  rw [input84_def, output84_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child82]
  try dsimp only
  rw [child83]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node85_cond_eq
    (child81 : Flapjack.WordAlloc.removeDeadStructural input81 value21 value8 value2 = (output81, value21, value8))
    (child84 : Flapjack.WordAlloc.removeDeadStructural input84 value21 value8 value2 = (output84, value21, value8)) : Flapjack.WordAlloc.removeDeadStructural input85 value21 value8 value2 = (output85, value21, value8) := by
  rw [input85_def, output85_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child81]
  try dsimp only
  rw [child84]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node86_cond_eq
    (child80 : Flapjack.WordAlloc.removeDeadStructural input80 value25 value8 value2 = (output80, value21, value8))
    (child85 : Flapjack.WordAlloc.removeDeadStructural input85 value21 value8 value2 = (output85, value21, value8)) : Flapjack.WordAlloc.removeDeadStructural input86 value25 value8 value2 = (output86, value21, value8) := by
  rw [input86_def, output86_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child80]
  try dsimp only
  rw [child85]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node87_cond_eq
    (child79 : Flapjack.WordAlloc.removeDeadStructural input79 value21 value1 value2 = (output79, value25, value8))
    (child86 : Flapjack.WordAlloc.removeDeadStructural input86 value25 value8 value2 = (output86, value21, value8)) : Flapjack.WordAlloc.removeDeadStructural input87 value21 value1 value2 = (output87, value21, value8) := by
  rw [input87_def, output87_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child79]
  try dsimp only
  rw [child86]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node88_cond_eq
    (child76 : Flapjack.WordAlloc.removeDeadStructural input76 value23 value1 value2 = (output76, value21, value1))
    (child87 : Flapjack.WordAlloc.removeDeadStructural input87 value21 value1 value2 = (output87, value21, value8)) : Flapjack.WordAlloc.removeDeadStructural input88 value23 value1 value2 = (output88, value21, value8) := by
  rw [input88_def, output88_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child76]
  try dsimp only
  rw [child87]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node89_cond_eq
    (child75 : Flapjack.WordAlloc.removeDeadStructural input75 value21 value1 value2 = (output75, value23, value1))
    (child88 : Flapjack.WordAlloc.removeDeadStructural input88 value23 value1 value2 = (output88, value21, value8)) : Flapjack.WordAlloc.removeDeadStructural input89 value21 value1 value2 = (output89, value21, value8) := by
  rw [input89_def, output89_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child75]
  try dsimp only
  rw [child88]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node90_cond_eq
    (child72 : Flapjack.WordAlloc.removeDeadStructural input72 value21 value1 value2 = (output72, value21, value1))
    (child89 : Flapjack.WordAlloc.removeDeadStructural input89 value21 value1 value2 = (output89, value21, value8)) : Flapjack.WordAlloc.removeDeadStructural input90 value21 value1 value2 = (output90, value21, value8) := by
  rw [input90_def, output90_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child72]
  try dsimp only
  rw [child89]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node91_cond_eq : Flapjack.WordAlloc.removeDeadStructural input91 value21 value1 value2 = (output91, value21, value1) := by
  rw [input91_def, output91_def]
  try (conv => lhs; cbv)
  try rfl

theorem node92_cond_eq : Flapjack.WordAlloc.removeDeadStructural input92 value21 value1 value2 = (output92, value21, value1) := by
  rw [input92_def, output92_def]
  try (conv => lhs; cbv)
  try rfl

theorem node93_cond_eq : Flapjack.WordAlloc.removeDeadStructural input93 value21 value1 value2 = (output93, value21, value1) := by
  rw [input93_def, output93_def]
  try (conv => lhs; cbv)
  try rfl

theorem node94_cond_eq
    (child92 : Flapjack.WordAlloc.removeDeadStructural input92 value21 value1 value2 = (output92, value21, value1))
    (child93 : Flapjack.WordAlloc.removeDeadStructural input93 value21 value1 value2 = (output93, value21, value1)) : Flapjack.WordAlloc.removeDeadStructural input94 value21 value1 value2 = (output94, value21, value1) := by
  rw [input94_def, output94_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child92]
  try dsimp only
  rw [child93]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node95_cond_eq
    (child91 : Flapjack.WordAlloc.removeDeadStructural input91 value21 value1 value2 = (output91, value21, value1))
    (child94 : Flapjack.WordAlloc.removeDeadStructural input94 value21 value1 value2 = (output94, value21, value1)) : Flapjack.WordAlloc.removeDeadStructural input95 value21 value1 value2 = (output95, value21, value1) := by
  rw [input95_def, output95_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child91]
  try dsimp only
  rw [child94]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node96_cond_eq : Flapjack.WordAlloc.removeDeadStructural input96 value21 value1 value2 = (output96, value21, value1) := by
  rw [input96_def, output96_def]
  try (conv => lhs; cbv)
  try rfl

theorem node97_cond_eq
    (child95 : Flapjack.WordAlloc.removeDeadStructural input95 value21 value1 value2 = (output95, value21, value1))
    (child96 : Flapjack.WordAlloc.removeDeadStructural input96 value21 value1 value2 = (output96, value21, value1)) : Flapjack.WordAlloc.removeDeadStructural input97 value21 value1 value2 = (output97, value21, value1) := by
  rw [input97_def, output97_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child95]
  try dsimp only
  rw [child96]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node98_cond_eq : Flapjack.WordAlloc.removeDeadStructural input98 value21 value1 value2 = (output98, value21, value1) := by
  rw [input98_def, output98_def]
  try (conv => lhs; cbv)
  try rfl

theorem node99_cond_eq
    (child97 : Flapjack.WordAlloc.removeDeadStructural input97 value21 value1 value2 = (output97, value21, value1))
    (child98 : Flapjack.WordAlloc.removeDeadStructural input98 value21 value1 value2 = (output98, value21, value1)) : Flapjack.WordAlloc.removeDeadStructural input99 value21 value1 value2 = (output99, value21, value1) := by
  rw [input99_def, output99_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child97]
  try dsimp only
  rw [child98]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node100_cond_eq
    (child90 : Flapjack.WordAlloc.removeDeadStructural input90 value21 value1 value2 = (output90, value21, value8))
    (child99 : Flapjack.WordAlloc.removeDeadStructural input99 value21 value1 value2 = (output99, value21, value1)) : Flapjack.WordAlloc.removeDeadStructural input100 value21 value1 value2 = (output100, value27, value1) := by
  rw [input100_def, output100_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child90]
  try dsimp only
  rw [child99]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try (conv => lhs; cbv)
  try rfl

theorem node101_cond_eq
    (child65 : Flapjack.WordAlloc.removeDeadStructural input65 value21 value1 value2 = (output65, value21, value1))
    (child100 : Flapjack.WordAlloc.removeDeadStructural input100 value21 value1 value2 = (output100, value27, value1)) : Flapjack.WordAlloc.removeDeadStructural input101 value21 value1 value2 = (output101, value27, value1) := by
  rw [input101_def, output101_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child65]
  try dsimp only
  rw [child100]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node102_cond_eq : Flapjack.WordAlloc.removeDeadStructural input102 value27 value1 value2 = (output102, value28, value1) := by
  rw [input102_def, output102_def]
  try (conv => lhs; cbv)
  try rfl

theorem node103_cond_eq : Flapjack.WordAlloc.removeDeadStructural input103 value28 value1 value2 = (output103, value29, value1) := by
  rw [input103_def, output103_def]
  try (conv => lhs; cbv)
  try rfl

theorem node104_cond_eq : Flapjack.WordAlloc.removeDeadStructural input104 value29 value1 value2 = (output104, value29, value1) := by
  rw [input104_def, output104_def]
  try (conv => lhs; cbv)
  try rfl

theorem node105_cond_eq : Flapjack.WordAlloc.removeDeadStructural input105 value29 value1 value2 = (output105, value30, value1) := by
  rw [input105_def, output105_def]
  try (conv => lhs; cbv)
  try rfl

theorem node106_cond_eq : Flapjack.WordAlloc.removeDeadStructural input106 value30 value1 value2 = (output106, value31, value1) := by
  rw [input106_def, output106_def]
  try (conv => lhs; cbv)
  try rfl

theorem node107_cond_eq
    (child105 : Flapjack.WordAlloc.removeDeadStructural input105 value29 value1 value2 = (output105, value30, value1))
    (child106 : Flapjack.WordAlloc.removeDeadStructural input106 value30 value1 value2 = (output106, value31, value1)) : Flapjack.WordAlloc.removeDeadStructural input107 value29 value1 value2 = (output107, value31, value1) := by
  rw [input107_def, output107_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child105]
  try dsimp only
  rw [child106]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node108_cond_eq : Flapjack.WordAlloc.removeDeadStructural input108 value31 value1 value2 = (output108, value32, value1) := by
  rw [input108_def, output108_def]
  try (conv => lhs; cbv)
  try rfl

theorem node109_cond_eq
    (child107 : Flapjack.WordAlloc.removeDeadStructural input107 value29 value1 value2 = (output107, value31, value1))
    (child108 : Flapjack.WordAlloc.removeDeadStructural input108 value31 value1 value2 = (output108, value32, value1)) : Flapjack.WordAlloc.removeDeadStructural input109 value29 value1 value2 = (output109, value32, value1) := by
  rw [input109_def, output109_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child107]
  try dsimp only
  rw [child108]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node110_cond_eq : Flapjack.WordAlloc.removeDeadStructural input110 value32 value1 value2 = (output110, value33, value1) := by
  rw [input110_def, output110_def]
  try (conv => lhs; cbv)
  try rfl

theorem node111_cond_eq : Flapjack.WordAlloc.removeDeadStructural input111 value33 value1 value2 = (output111, value33, value1) := by
  rw [input111_def, output111_def]
  try (conv => lhs; cbv)
  try rfl

theorem node112_cond_eq : Flapjack.WordAlloc.removeDeadStructural input112 value33 value1 value2 = (output112, value34, value1) := by
  rw [input112_def, output112_def]
  try (conv => lhs; cbv)
  try rfl

theorem node113_cond_eq : Flapjack.WordAlloc.removeDeadStructural input113 value34 value1 value2 = (output113, value35, value1) := by
  rw [input113_def, output113_def]
  try (conv => lhs; cbv)
  try rfl

theorem node114_cond_eq
    (child112 : Flapjack.WordAlloc.removeDeadStructural input112 value33 value1 value2 = (output112, value34, value1))
    (child113 : Flapjack.WordAlloc.removeDeadStructural input113 value34 value1 value2 = (output113, value35, value1)) : Flapjack.WordAlloc.removeDeadStructural input114 value33 value1 value2 = (output114, value35, value1) := by
  rw [input114_def, output114_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child112]
  try dsimp only
  rw [child113]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node115_cond_eq : Flapjack.WordAlloc.removeDeadStructural input115 value35 value1 value2 = (output115, value36, value1) := by
  rw [input115_def, output115_def]
  try (conv => lhs; cbv)
  try rfl

theorem node116_cond_eq : Flapjack.WordAlloc.removeDeadStructural input116 value36 value1 value2 = (output116, value36, value1) := by
  rw [input116_def, output116_def]
  try (conv => lhs; cbv)
  try rfl

theorem node117_cond_eq : Flapjack.WordAlloc.removeDeadStructural input117 value36 value1 value2 = (output117, value36, value1) := by
  rw [input117_def, output117_def]
  try (conv => lhs; cbv)
  try rfl

theorem node118_cond_eq : Flapjack.WordAlloc.removeDeadStructural input118 value36 value1 value2 = (output118, value36, value1) := by
  rw [input118_def, output118_def]
  try (conv => lhs; cbv)
  try rfl

theorem node119_cond_eq : Flapjack.WordAlloc.removeDeadStructural input119 value36 value1 value2 = (output119, value36, value1) := by
  rw [input119_def, output119_def]
  try (conv => lhs; cbv)
  try rfl

theorem node120_cond_eq
    (child118 : Flapjack.WordAlloc.removeDeadStructural input118 value36 value1 value2 = (output118, value36, value1))
    (child119 : Flapjack.WordAlloc.removeDeadStructural input119 value36 value1 value2 = (output119, value36, value1)) : Flapjack.WordAlloc.removeDeadStructural input120 value36 value1 value2 = (output120, value36, value1) := by
  rw [input120_def, output120_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child118]
  try dsimp only
  rw [child119]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node121_cond_eq
    (child117 : Flapjack.WordAlloc.removeDeadStructural input117 value36 value1 value2 = (output117, value36, value1))
    (child120 : Flapjack.WordAlloc.removeDeadStructural input120 value36 value1 value2 = (output120, value36, value1)) : Flapjack.WordAlloc.removeDeadStructural input121 value36 value1 value2 = (output121, value36, value1) := by
  rw [input121_def, output121_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child117]
  try dsimp only
  rw [child120]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node122_cond_eq : Flapjack.WordAlloc.removeDeadStructural input122 value36 value1 value2 = (output122, value36, value1) := by
  rw [input122_def, output122_def]
  try (conv => lhs; cbv)
  try rfl

theorem node123_cond_eq : Flapjack.WordAlloc.removeDeadStructural input123 value36 value1 value2 = (output123, value36, value1) := by
  rw [input123_def, output123_def]
  try (conv => lhs; cbv)
  try rfl

theorem node124_cond_eq
    (child122 : Flapjack.WordAlloc.removeDeadStructural input122 value36 value1 value2 = (output122, value36, value1))
    (child123 : Flapjack.WordAlloc.removeDeadStructural input123 value36 value1 value2 = (output123, value36, value1)) : Flapjack.WordAlloc.removeDeadStructural input124 value36 value1 value2 = (output124, value36, value1) := by
  rw [input124_def, output124_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child122]
  try dsimp only
  rw [child123]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node125_cond_eq : Flapjack.WordAlloc.removeDeadStructural input125 value36 value1 value2 = (output125, value37, value1) := by
  rw [input125_def, output125_def]
  try (conv => lhs; cbv)
  try rfl

theorem node126_cond_eq : Flapjack.WordAlloc.removeDeadStructural input126 value37 value1 value2 = (output126, value38, value1) := by
  rw [input126_def, output126_def]
  try (conv => lhs; cbv)
  try rfl

theorem node127_cond_eq
    (child125 : Flapjack.WordAlloc.removeDeadStructural input125 value36 value1 value2 = (output125, value37, value1))
    (child126 : Flapjack.WordAlloc.removeDeadStructural input126 value37 value1 value2 = (output126, value38, value1)) : Flapjack.WordAlloc.removeDeadStructural input127 value36 value1 value2 = (output127, value38, value1) := by
  rw [input127_def, output127_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child125]
  try dsimp only
  rw [child126]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node128_cond_eq : Flapjack.WordAlloc.removeDeadStructural input128 value38 value1 value2 = (output128, value36, value1) := by
  rw [input128_def, output128_def]
  try (conv => lhs; cbv)
  try rfl

theorem node129_cond_eq : Flapjack.WordAlloc.removeDeadStructural input129 value36 value1 value2 = (output129, value39, value8) := by
  rw [input129_def, output129_def]
  try (conv => lhs; cbv)
  try rfl

theorem node130_cond_eq : Flapjack.WordAlloc.removeDeadStructural input130 value39 value8 value2 = (output130, value40, value8) := by
  rw [input130_def, output130_def]
  try (conv => lhs; cbv)
  try rfl

theorem node131_cond_eq
    (child129 : Flapjack.WordAlloc.removeDeadStructural input129 value36 value1 value2 = (output129, value39, value8))
    (child130 : Flapjack.WordAlloc.removeDeadStructural input130 value39 value8 value2 = (output130, value40, value8)) : Flapjack.WordAlloc.removeDeadStructural input131 value36 value1 value2 = (output131, value40, value8) := by
  rw [input131_def, output131_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child129]
  try dsimp only
  rw [child130]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node132_cond_eq : Flapjack.WordAlloc.removeDeadStructural input132 value40 value8 value2 = (output132, value36, value8) := by
  rw [input132_def, output132_def]
  try (conv => lhs; cbv)
  try rfl

theorem node133_cond_eq : Flapjack.WordAlloc.removeDeadStructural input133 value36 value8 value2 = (output133, value36, value8) := by
  rw [input133_def, output133_def]
  try (conv => lhs; cbv)
  try rfl

theorem node134_cond_eq : Flapjack.WordAlloc.removeDeadStructural input134 value36 value8 value2 = (output134, value36, value8) := by
  rw [input134_def, output134_def]
  try (conv => lhs; cbv)
  try rfl

theorem node135_cond_eq : Flapjack.WordAlloc.removeDeadStructural input135 value36 value8 value2 = (output135, value36, value8) := by
  rw [input135_def, output135_def]
  try (conv => lhs; cbv)
  try rfl

theorem node136_cond_eq
    (child134 : Flapjack.WordAlloc.removeDeadStructural input134 value36 value8 value2 = (output134, value36, value8))
    (child135 : Flapjack.WordAlloc.removeDeadStructural input135 value36 value8 value2 = (output135, value36, value8)) : Flapjack.WordAlloc.removeDeadStructural input136 value36 value8 value2 = (output136, value36, value8) := by
  rw [input136_def, output136_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child134]
  try dsimp only
  rw [child135]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node137_cond_eq
    (child133 : Flapjack.WordAlloc.removeDeadStructural input133 value36 value8 value2 = (output133, value36, value8))
    (child136 : Flapjack.WordAlloc.removeDeadStructural input136 value36 value8 value2 = (output136, value36, value8)) : Flapjack.WordAlloc.removeDeadStructural input137 value36 value8 value2 = (output137, value36, value8) := by
  rw [input137_def, output137_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child133]
  try dsimp only
  rw [child136]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node138_cond_eq
    (child132 : Flapjack.WordAlloc.removeDeadStructural input132 value40 value8 value2 = (output132, value36, value8))
    (child137 : Flapjack.WordAlloc.removeDeadStructural input137 value36 value8 value2 = (output137, value36, value8)) : Flapjack.WordAlloc.removeDeadStructural input138 value40 value8 value2 = (output138, value36, value8) := by
  rw [input138_def, output138_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child132]
  try dsimp only
  rw [child137]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node139_cond_eq
    (child131 : Flapjack.WordAlloc.removeDeadStructural input131 value36 value1 value2 = (output131, value40, value8))
    (child138 : Flapjack.WordAlloc.removeDeadStructural input138 value40 value8 value2 = (output138, value36, value8)) : Flapjack.WordAlloc.removeDeadStructural input139 value36 value1 value2 = (output139, value36, value8) := by
  rw [input139_def, output139_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child131]
  try dsimp only
  rw [child138]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node140_cond_eq
    (child128 : Flapjack.WordAlloc.removeDeadStructural input128 value38 value1 value2 = (output128, value36, value1))
    (child139 : Flapjack.WordAlloc.removeDeadStructural input139 value36 value1 value2 = (output139, value36, value8)) : Flapjack.WordAlloc.removeDeadStructural input140 value38 value1 value2 = (output140, value36, value8) := by
  rw [input140_def, output140_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child128]
  try dsimp only
  rw [child139]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node141_cond_eq
    (child127 : Flapjack.WordAlloc.removeDeadStructural input127 value36 value1 value2 = (output127, value38, value1))
    (child140 : Flapjack.WordAlloc.removeDeadStructural input140 value38 value1 value2 = (output140, value36, value8)) : Flapjack.WordAlloc.removeDeadStructural input141 value36 value1 value2 = (output141, value36, value8) := by
  rw [input141_def, output141_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child127]
  try dsimp only
  rw [child140]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node142_cond_eq
    (child124 : Flapjack.WordAlloc.removeDeadStructural input124 value36 value1 value2 = (output124, value36, value1))
    (child141 : Flapjack.WordAlloc.removeDeadStructural input141 value36 value1 value2 = (output141, value36, value8)) : Flapjack.WordAlloc.removeDeadStructural input142 value36 value1 value2 = (output142, value36, value8) := by
  rw [input142_def, output142_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child124]
  try dsimp only
  rw [child141]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node143_cond_eq : Flapjack.WordAlloc.removeDeadStructural input143 value36 value1 value2 = (output143, value36, value1) := by
  rw [input143_def, output143_def]
  try (conv => lhs; cbv)
  try rfl

theorem node144_cond_eq : Flapjack.WordAlloc.removeDeadStructural input144 value36 value1 value2 = (output144, value36, value1) := by
  rw [input144_def, output144_def]
  try (conv => lhs; cbv)
  try rfl

theorem node145_cond_eq
    (child143 : Flapjack.WordAlloc.removeDeadStructural input143 value36 value1 value2 = (output143, value36, value1))
    (child144 : Flapjack.WordAlloc.removeDeadStructural input144 value36 value1 value2 = (output144, value36, value1)) : Flapjack.WordAlloc.removeDeadStructural input145 value36 value1 value2 = (output145, value36, value1) := by
  rw [input145_def, output145_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child143]
  try dsimp only
  rw [child144]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node146_cond_eq : Flapjack.WordAlloc.removeDeadStructural input146 value36 value1 value2 = (output146, value36, value1) := by
  rw [input146_def, output146_def]
  try (conv => lhs; cbv)
  try rfl

theorem node147_cond_eq
    (child145 : Flapjack.WordAlloc.removeDeadStructural input145 value36 value1 value2 = (output145, value36, value1))
    (child146 : Flapjack.WordAlloc.removeDeadStructural input146 value36 value1 value2 = (output146, value36, value1)) : Flapjack.WordAlloc.removeDeadStructural input147 value36 value1 value2 = (output147, value36, value1) := by
  rw [input147_def, output147_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child145]
  try dsimp only
  rw [child146]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node148_cond_eq
    (child142 : Flapjack.WordAlloc.removeDeadStructural input142 value36 value1 value2 = (output142, value36, value8))
    (child147 : Flapjack.WordAlloc.removeDeadStructural input147 value36 value1 value2 = (output147, value36, value1)) : Flapjack.WordAlloc.removeDeadStructural input148 value36 value1 value2 = (output148, value43, value1) := by
  rw [input148_def, output148_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child142]
  try dsimp only
  rw [child147]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try (conv => lhs; cbv)
  try rfl

theorem node149_cond_eq
    (child121 : Flapjack.WordAlloc.removeDeadStructural input121 value36 value1 value2 = (output121, value36, value1))
    (child148 : Flapjack.WordAlloc.removeDeadStructural input148 value36 value1 value2 = (output148, value43, value1)) : Flapjack.WordAlloc.removeDeadStructural input149 value36 value1 value2 = (output149, value43, value1) := by
  rw [input149_def, output149_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child121]
  try dsimp only
  rw [child148]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node150_cond_eq : Flapjack.WordAlloc.removeDeadStructural input150 value43 value1 value2 = (output150, value44, value1) := by
  rw [input150_def, output150_def]
  try (conv => lhs; cbv)
  try rfl

theorem node151_cond_eq : Flapjack.WordAlloc.removeDeadStructural input151 value44 value1 value2 = (output151, value45, value1) := by
  rw [input151_def, output151_def]
  try (conv => lhs; cbv)
  try rfl

theorem node152_cond_eq
    (child150 : Flapjack.WordAlloc.removeDeadStructural input150 value43 value1 value2 = (output150, value44, value1))
    (child151 : Flapjack.WordAlloc.removeDeadStructural input151 value44 value1 value2 = (output151, value45, value1)) : Flapjack.WordAlloc.removeDeadStructural input152 value43 value1 value2 = (output152, value45, value1) := by
  rw [input152_def, output152_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child150]
  try dsimp only
  rw [child151]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node153_cond_eq : Flapjack.WordAlloc.removeDeadStructural input153 value45 value1 value2 = (output153, value46, value1) := by
  rw [input153_def, output153_def]
  try (conv => lhs; cbv)
  try rfl

theorem node154_cond_eq : Flapjack.WordAlloc.removeDeadStructural input154 value46 value1 value2 = (output154, value47, value1) := by
  rw [input154_def, output154_def]
  try (conv => lhs; cbv)
  try rfl

theorem node155_cond_eq : Flapjack.WordAlloc.removeDeadStructural input155 value47 value1 value2 = (output155, value48, value1) := by
  rw [input155_def, output155_def]
  try (conv => lhs; cbv)
  try rfl

theorem node156_cond_eq : Flapjack.WordAlloc.removeDeadStructural input156 value48 value1 value2 = (output156, value49, value1) := by
  rw [input156_def, output156_def]
  try (conv => lhs; cbv)
  try rfl

theorem node157_cond_eq : Flapjack.WordAlloc.removeDeadStructural input157 value49 value1 value2 = (output157, value50, value1) := by
  rw [input157_def, output157_def]
  try (conv => lhs; cbv)
  try rfl

theorem node158_cond_eq
    (child156 : Flapjack.WordAlloc.removeDeadStructural input156 value48 value1 value2 = (output156, value49, value1))
    (child157 : Flapjack.WordAlloc.removeDeadStructural input157 value49 value1 value2 = (output157, value50, value1)) : Flapjack.WordAlloc.removeDeadStructural input158 value48 value1 value2 = (output158, value50, value1) := by
  rw [input158_def, output158_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child156]
  try dsimp only
  rw [child157]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node159_cond_eq
    (child155 : Flapjack.WordAlloc.removeDeadStructural input155 value47 value1 value2 = (output155, value48, value1))
    (child158 : Flapjack.WordAlloc.removeDeadStructural input158 value48 value1 value2 = (output158, value50, value1)) : Flapjack.WordAlloc.removeDeadStructural input159 value47 value1 value2 = (output159, value50, value1) := by
  rw [input159_def, output159_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child155]
  try dsimp only
  rw [child158]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node160_cond_eq
    (child154 : Flapjack.WordAlloc.removeDeadStructural input154 value46 value1 value2 = (output154, value47, value1))
    (child159 : Flapjack.WordAlloc.removeDeadStructural input159 value47 value1 value2 = (output159, value50, value1)) : Flapjack.WordAlloc.removeDeadStructural input160 value46 value1 value2 = (output160, value50, value1) := by
  rw [input160_def, output160_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child154]
  try dsimp only
  rw [child159]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node161_cond_eq
    (child153 : Flapjack.WordAlloc.removeDeadStructural input153 value45 value1 value2 = (output153, value46, value1))
    (child160 : Flapjack.WordAlloc.removeDeadStructural input160 value46 value1 value2 = (output160, value50, value1)) : Flapjack.WordAlloc.removeDeadStructural input161 value45 value1 value2 = (output161, value50, value1) := by
  rw [input161_def, output161_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child153]
  try dsimp only
  rw [child160]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node162_cond_eq : Flapjack.WordAlloc.removeDeadStructural input162 value50 value1 value2 = (output162, value50, value1) := by
  rw [input162_def, output162_def]
  try (conv => lhs; cbv)
  try rfl

theorem node163_cond_eq : Flapjack.WordAlloc.removeDeadStructural input163 value50 value1 value2 = (output163, value50, value1) := by
  rw [input163_def, output163_def]
  try (conv => lhs; cbv)
  try rfl

theorem node164_cond_eq : Flapjack.WordAlloc.removeDeadStructural input164 value50 value1 value2 = (output164, value50, value1) := by
  rw [input164_def, output164_def]
  try (conv => lhs; cbv)
  try rfl

theorem node165_cond_eq : Flapjack.WordAlloc.removeDeadStructural input165 value50 value1 value2 = (output165, value50, value1) := by
  rw [input165_def, output165_def]
  try (conv => lhs; cbv)
  try rfl

theorem node166_cond_eq
    (child164 : Flapjack.WordAlloc.removeDeadStructural input164 value50 value1 value2 = (output164, value50, value1))
    (child165 : Flapjack.WordAlloc.removeDeadStructural input165 value50 value1 value2 = (output165, value50, value1)) : Flapjack.WordAlloc.removeDeadStructural input166 value50 value1 value2 = (output166, value50, value1) := by
  rw [input166_def, output166_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child164]
  try dsimp only
  rw [child165]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node167_cond_eq
    (child163 : Flapjack.WordAlloc.removeDeadStructural input163 value50 value1 value2 = (output163, value50, value1))
    (child166 : Flapjack.WordAlloc.removeDeadStructural input166 value50 value1 value2 = (output166, value50, value1)) : Flapjack.WordAlloc.removeDeadStructural input167 value50 value1 value2 = (output167, value50, value1) := by
  rw [input167_def, output167_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child163]
  try dsimp only
  rw [child166]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node168_cond_eq : Flapjack.WordAlloc.removeDeadStructural input168 value50 value1 value2 = (output168, value50, value1) := by
  rw [input168_def, output168_def]
  try (conv => lhs; cbv)
  try rfl

theorem node169_cond_eq : Flapjack.WordAlloc.removeDeadStructural input169 value50 value1 value2 = (output169, value50, value1) := by
  rw [input169_def, output169_def]
  try (conv => lhs; cbv)
  try rfl

theorem node170_cond_eq : Flapjack.WordAlloc.removeDeadStructural input170 value50 value1 value2 = (output170, value50, value1) := by
  rw [input170_def, output170_def]
  try (conv => lhs; cbv)
  try rfl

theorem node171_cond_eq
    (child169 : Flapjack.WordAlloc.removeDeadStructural input169 value50 value1 value2 = (output169, value50, value1))
    (child170 : Flapjack.WordAlloc.removeDeadStructural input170 value50 value1 value2 = (output170, value50, value1)) : Flapjack.WordAlloc.removeDeadStructural input171 value50 value1 value2 = (output171, value50, value1) := by
  rw [input171_def, output171_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child169]
  try dsimp only
  rw [child170]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node172_cond_eq
    (child168 : Flapjack.WordAlloc.removeDeadStructural input168 value50 value1 value2 = (output168, value50, value1))
    (child171 : Flapjack.WordAlloc.removeDeadStructural input171 value50 value1 value2 = (output171, value50, value1)) : Flapjack.WordAlloc.removeDeadStructural input172 value50 value1 value2 = (output172, value50, value1) := by
  rw [input172_def, output172_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child168]
  try dsimp only
  rw [child171]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node173_cond_eq : Flapjack.WordAlloc.removeDeadStructural input173 value50 value1 value2 = (output173, value50, value1) := by
  rw [input173_def, output173_def]
  try (conv => lhs; cbv)
  try rfl

theorem node174_cond_eq
    (child172 : Flapjack.WordAlloc.removeDeadStructural input172 value50 value1 value2 = (output172, value50, value1))
    (child173 : Flapjack.WordAlloc.removeDeadStructural input173 value50 value1 value2 = (output173, value50, value1)) : Flapjack.WordAlloc.removeDeadStructural input174 value50 value1 value2 = (output174, value50, value1) := by
  rw [input174_def, output174_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child172]
  try dsimp only
  rw [child173]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node175_cond_eq : Flapjack.WordAlloc.removeDeadStructural input175 value50 value1 value2 = (output175, value51, value1) := by
  rw [input175_def, output175_def]
  try (conv => lhs; cbv)
  try rfl

theorem node176_cond_eq : Flapjack.WordAlloc.removeDeadStructural input176 value51 value1 value2 = (output176, value52, value1) := by
  rw [input176_def, output176_def]
  try (conv => lhs; cbv)
  try rfl

theorem node177_cond_eq
    (child175 : Flapjack.WordAlloc.removeDeadStructural input175 value50 value1 value2 = (output175, value51, value1))
    (child176 : Flapjack.WordAlloc.removeDeadStructural input176 value51 value1 value2 = (output176, value52, value1)) : Flapjack.WordAlloc.removeDeadStructural input177 value50 value1 value2 = (output177, value52, value1) := by
  rw [input177_def, output177_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child175]
  try dsimp only
  rw [child176]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node178_cond_eq : Flapjack.WordAlloc.removeDeadStructural input178 value52 value1 value2 = (output178, value50, value1) := by
  rw [input178_def, output178_def]
  try (conv => lhs; cbv)
  try rfl

theorem node179_cond_eq : Flapjack.WordAlloc.removeDeadStructural input179 value50 value1 value2 = (output179, value53, value8) := by
  rw [input179_def, output179_def]
  try (conv => lhs; cbv)
  try rfl

theorem node180_cond_eq : Flapjack.WordAlloc.removeDeadStructural input180 value53 value8 value2 = (output180, value54, value8) := by
  rw [input180_def, output180_def]
  try (conv => lhs; cbv)
  try rfl

theorem node181_cond_eq
    (child179 : Flapjack.WordAlloc.removeDeadStructural input179 value50 value1 value2 = (output179, value53, value8))
    (child180 : Flapjack.WordAlloc.removeDeadStructural input180 value53 value8 value2 = (output180, value54, value8)) : Flapjack.WordAlloc.removeDeadStructural input181 value50 value1 value2 = (output181, value54, value8) := by
  rw [input181_def, output181_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child179]
  try dsimp only
  rw [child180]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node182_cond_eq : Flapjack.WordAlloc.removeDeadStructural input182 value54 value8 value2 = (output182, value50, value8) := by
  rw [input182_def, output182_def]
  try (conv => lhs; cbv)
  try rfl

theorem node183_cond_eq : Flapjack.WordAlloc.removeDeadStructural input183 value50 value8 value2 = (output183, value50, value8) := by
  rw [input183_def, output183_def]
  try (conv => lhs; cbv)
  try rfl

theorem node184_cond_eq : Flapjack.WordAlloc.removeDeadStructural input184 value50 value8 value2 = (output184, value50, value8) := by
  rw [input184_def, output184_def]
  try (conv => lhs; cbv)
  try rfl

theorem node185_cond_eq : Flapjack.WordAlloc.removeDeadStructural input185 value50 value8 value2 = (output185, value50, value8) := by
  rw [input185_def, output185_def]
  try (conv => lhs; cbv)
  try rfl

theorem node186_cond_eq
    (child184 : Flapjack.WordAlloc.removeDeadStructural input184 value50 value8 value2 = (output184, value50, value8))
    (child185 : Flapjack.WordAlloc.removeDeadStructural input185 value50 value8 value2 = (output185, value50, value8)) : Flapjack.WordAlloc.removeDeadStructural input186 value50 value8 value2 = (output186, value50, value8) := by
  rw [input186_def, output186_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child184]
  try dsimp only
  rw [child185]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node187_cond_eq
    (child183 : Flapjack.WordAlloc.removeDeadStructural input183 value50 value8 value2 = (output183, value50, value8))
    (child186 : Flapjack.WordAlloc.removeDeadStructural input186 value50 value8 value2 = (output186, value50, value8)) : Flapjack.WordAlloc.removeDeadStructural input187 value50 value8 value2 = (output187, value50, value8) := by
  rw [input187_def, output187_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child183]
  try dsimp only
  rw [child186]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node188_cond_eq
    (child182 : Flapjack.WordAlloc.removeDeadStructural input182 value54 value8 value2 = (output182, value50, value8))
    (child187 : Flapjack.WordAlloc.removeDeadStructural input187 value50 value8 value2 = (output187, value50, value8)) : Flapjack.WordAlloc.removeDeadStructural input188 value54 value8 value2 = (output188, value50, value8) := by
  rw [input188_def, output188_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child182]
  try dsimp only
  rw [child187]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node189_cond_eq
    (child181 : Flapjack.WordAlloc.removeDeadStructural input181 value50 value1 value2 = (output181, value54, value8))
    (child188 : Flapjack.WordAlloc.removeDeadStructural input188 value54 value8 value2 = (output188, value50, value8)) : Flapjack.WordAlloc.removeDeadStructural input189 value50 value1 value2 = (output189, value50, value8) := by
  rw [input189_def, output189_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child181]
  try dsimp only
  rw [child188]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node190_cond_eq
    (child178 : Flapjack.WordAlloc.removeDeadStructural input178 value52 value1 value2 = (output178, value50, value1))
    (child189 : Flapjack.WordAlloc.removeDeadStructural input189 value50 value1 value2 = (output189, value50, value8)) : Flapjack.WordAlloc.removeDeadStructural input190 value52 value1 value2 = (output190, value50, value8) := by
  rw [input190_def, output190_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child178]
  try dsimp only
  rw [child189]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node191_cond_eq
    (child177 : Flapjack.WordAlloc.removeDeadStructural input177 value50 value1 value2 = (output177, value52, value1))
    (child190 : Flapjack.WordAlloc.removeDeadStructural input190 value52 value1 value2 = (output190, value50, value8)) : Flapjack.WordAlloc.removeDeadStructural input191 value50 value1 value2 = (output191, value50, value8) := by
  rw [input191_def, output191_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child177]
  try dsimp only
  rw [child190]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node192_cond_eq
    (child174 : Flapjack.WordAlloc.removeDeadStructural input174 value50 value1 value2 = (output174, value50, value1))
    (child191 : Flapjack.WordAlloc.removeDeadStructural input191 value50 value1 value2 = (output191, value50, value8)) : Flapjack.WordAlloc.removeDeadStructural input192 value50 value1 value2 = (output192, value50, value8) := by
  rw [input192_def, output192_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child174]
  try dsimp only
  rw [child191]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node193_cond_eq : Flapjack.WordAlloc.removeDeadStructural input193 value50 value1 value2 = (output193, value50, value1) := by
  rw [input193_def, output193_def]
  try (conv => lhs; cbv)
  try rfl

theorem node194_cond_eq : Flapjack.WordAlloc.removeDeadStructural input194 value50 value1 value2 = (output194, value50, value1) := by
  rw [input194_def, output194_def]
  try (conv => lhs; cbv)
  try rfl

theorem node195_cond_eq : Flapjack.WordAlloc.removeDeadStructural input195 value50 value1 value2 = (output195, value50, value1) := by
  rw [input195_def, output195_def]
  try (conv => lhs; cbv)
  try rfl

theorem node196_cond_eq
    (child194 : Flapjack.WordAlloc.removeDeadStructural input194 value50 value1 value2 = (output194, value50, value1))
    (child195 : Flapjack.WordAlloc.removeDeadStructural input195 value50 value1 value2 = (output195, value50, value1)) : Flapjack.WordAlloc.removeDeadStructural input196 value50 value1 value2 = (output196, value50, value1) := by
  rw [input196_def, output196_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child194]
  try dsimp only
  rw [child195]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node197_cond_eq
    (child193 : Flapjack.WordAlloc.removeDeadStructural input193 value50 value1 value2 = (output193, value50, value1))
    (child196 : Flapjack.WordAlloc.removeDeadStructural input196 value50 value1 value2 = (output196, value50, value1)) : Flapjack.WordAlloc.removeDeadStructural input197 value50 value1 value2 = (output197, value50, value1) := by
  rw [input197_def, output197_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child193]
  try dsimp only
  rw [child196]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node198_cond_eq : Flapjack.WordAlloc.removeDeadStructural input198 value50 value1 value2 = (output198, value50, value1) := by
  rw [input198_def, output198_def]
  try (conv => lhs; cbv)
  try rfl

theorem node199_cond_eq
    (child197 : Flapjack.WordAlloc.removeDeadStructural input197 value50 value1 value2 = (output197, value50, value1))
    (child198 : Flapjack.WordAlloc.removeDeadStructural input198 value50 value1 value2 = (output198, value50, value1)) : Flapjack.WordAlloc.removeDeadStructural input199 value50 value1 value2 = (output199, value50, value1) := by
  rw [input199_def, output199_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child197]
  try dsimp only
  rw [child198]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node200_cond_eq : Flapjack.WordAlloc.removeDeadStructural input200 value50 value1 value2 = (output200, value50, value1) := by
  rw [input200_def, output200_def]
  try (conv => lhs; cbv)
  try rfl

theorem node201_cond_eq
    (child199 : Flapjack.WordAlloc.removeDeadStructural input199 value50 value1 value2 = (output199, value50, value1))
    (child200 : Flapjack.WordAlloc.removeDeadStructural input200 value50 value1 value2 = (output200, value50, value1)) : Flapjack.WordAlloc.removeDeadStructural input201 value50 value1 value2 = (output201, value50, value1) := by
  rw [input201_def, output201_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child199]
  try dsimp only
  rw [child200]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node202_cond_eq
    (child192 : Flapjack.WordAlloc.removeDeadStructural input192 value50 value1 value2 = (output192, value50, value8))
    (child201 : Flapjack.WordAlloc.removeDeadStructural input201 value50 value1 value2 = (output201, value50, value1)) : Flapjack.WordAlloc.removeDeadStructural input202 value50 value1 value2 = (output202, value56, value1) := by
  rw [input202_def, output202_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child192]
  try dsimp only
  rw [child201]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try (conv => lhs; cbv)
  try rfl

theorem node203_cond_eq
    (child167 : Flapjack.WordAlloc.removeDeadStructural input167 value50 value1 value2 = (output167, value50, value1))
    (child202 : Flapjack.WordAlloc.removeDeadStructural input202 value50 value1 value2 = (output202, value56, value1)) : Flapjack.WordAlloc.removeDeadStructural input203 value50 value1 value2 = (output203, value56, value1) := by
  rw [input203_def, output203_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child167]
  try dsimp only
  rw [child202]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node204_cond_eq : Flapjack.WordAlloc.removeDeadStructural input204 value56 value1 value2 = (output204, value57, value1) := by
  rw [input204_def, output204_def]
  try (conv => lhs; cbv)
  try rfl

theorem node205_cond_eq : Flapjack.WordAlloc.removeDeadStructural input205 value57 value1 value2 = (output205, value58, value1) := by
  rw [input205_def, output205_def]
  try (conv => lhs; cbv)
  try rfl

theorem node206_cond_eq : Flapjack.WordAlloc.removeDeadStructural input206 value58 value1 value2 = (output206, value58, value1) := by
  rw [input206_def, output206_def]
  try (conv => lhs; cbv)
  try rfl

theorem node207_cond_eq : Flapjack.WordAlloc.removeDeadStructural input207 value58 value1 value2 = (output207, value59, value1) := by
  rw [input207_def, output207_def]
  try (conv => lhs; cbv)
  try rfl

theorem node208_cond_eq : Flapjack.WordAlloc.removeDeadStructural input208 value59 value1 value2 = (output208, value60, value1) := by
  rw [input208_def, output208_def]
  try (conv => lhs; cbv)
  try rfl

theorem node209_cond_eq
    (child207 : Flapjack.WordAlloc.removeDeadStructural input207 value58 value1 value2 = (output207, value59, value1))
    (child208 : Flapjack.WordAlloc.removeDeadStructural input208 value59 value1 value2 = (output208, value60, value1)) : Flapjack.WordAlloc.removeDeadStructural input209 value58 value1 value2 = (output209, value60, value1) := by
  rw [input209_def, output209_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child207]
  try dsimp only
  rw [child208]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node210_cond_eq : Flapjack.WordAlloc.removeDeadStructural input210 value60 value1 value2 = (output210, value61, value1) := by
  rw [input210_def, output210_def]
  try (conv => lhs; cbv)
  try rfl

theorem node211_cond_eq
    (child209 : Flapjack.WordAlloc.removeDeadStructural input209 value58 value1 value2 = (output209, value60, value1))
    (child210 : Flapjack.WordAlloc.removeDeadStructural input210 value60 value1 value2 = (output210, value61, value1)) : Flapjack.WordAlloc.removeDeadStructural input211 value58 value1 value2 = (output211, value61, value1) := by
  rw [input211_def, output211_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child209]
  try dsimp only
  rw [child210]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node212_cond_eq : Flapjack.WordAlloc.removeDeadStructural input212 value61 value1 value2 = (output212, value62, value1) := by
  rw [input212_def, output212_def]
  try (conv => lhs; cbv)
  try rfl

theorem node213_cond_eq : Flapjack.WordAlloc.removeDeadStructural input213 value62 value1 value2 = (output213, value62, value1) := by
  rw [input213_def, output213_def]
  try (conv => lhs; cbv)
  try rfl

theorem node214_cond_eq : Flapjack.WordAlloc.removeDeadStructural input214 value62 value1 value2 = (output214, value63, value1) := by
  rw [input214_def, output214_def]
  try (conv => lhs; cbv)
  try rfl

theorem node215_cond_eq : Flapjack.WordAlloc.removeDeadStructural input215 value63 value1 value2 = (output215, value64, value1) := by
  rw [input215_def, output215_def]
  try (conv => lhs; cbv)
  try rfl

theorem node216_cond_eq
    (child214 : Flapjack.WordAlloc.removeDeadStructural input214 value62 value1 value2 = (output214, value63, value1))
    (child215 : Flapjack.WordAlloc.removeDeadStructural input215 value63 value1 value2 = (output215, value64, value1)) : Flapjack.WordAlloc.removeDeadStructural input216 value62 value1 value2 = (output216, value64, value1) := by
  rw [input216_def, output216_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child214]
  try dsimp only
  rw [child215]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node217_cond_eq : Flapjack.WordAlloc.removeDeadStructural input217 value64 value1 value2 = (output217, value65, value1) := by
  rw [input217_def, output217_def]
  try (conv => lhs; cbv)
  try rfl

theorem node218_cond_eq : Flapjack.WordAlloc.removeDeadStructural input218 value65 value1 value2 = (output218, value65, value1) := by
  rw [input218_def, output218_def]
  try (conv => lhs; cbv)
  try rfl

theorem node219_cond_eq : Flapjack.WordAlloc.removeDeadStructural input219 value65 value1 value2 = (output219, value65, value1) := by
  rw [input219_def, output219_def]
  try (conv => lhs; cbv)
  try rfl

theorem node220_cond_eq : Flapjack.WordAlloc.removeDeadStructural input220 value65 value1 value2 = (output220, value65, value1) := by
  rw [input220_def, output220_def]
  try (conv => lhs; cbv)
  try rfl

theorem node221_cond_eq : Flapjack.WordAlloc.removeDeadStructural input221 value65 value1 value2 = (output221, value65, value1) := by
  rw [input221_def, output221_def]
  try (conv => lhs; cbv)
  try rfl

theorem node222_cond_eq
    (child220 : Flapjack.WordAlloc.removeDeadStructural input220 value65 value1 value2 = (output220, value65, value1))
    (child221 : Flapjack.WordAlloc.removeDeadStructural input221 value65 value1 value2 = (output221, value65, value1)) : Flapjack.WordAlloc.removeDeadStructural input222 value65 value1 value2 = (output222, value65, value1) := by
  rw [input222_def, output222_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child220]
  try dsimp only
  rw [child221]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node223_cond_eq
    (child219 : Flapjack.WordAlloc.removeDeadStructural input219 value65 value1 value2 = (output219, value65, value1))
    (child222 : Flapjack.WordAlloc.removeDeadStructural input222 value65 value1 value2 = (output222, value65, value1)) : Flapjack.WordAlloc.removeDeadStructural input223 value65 value1 value2 = (output223, value65, value1) := by
  rw [input223_def, output223_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child219]
  try dsimp only
  rw [child222]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node224_cond_eq : Flapjack.WordAlloc.removeDeadStructural input224 value65 value1 value2 = (output224, value65, value1) := by
  rw [input224_def, output224_def]
  try (conv => lhs; cbv)
  try rfl

theorem node225_cond_eq : Flapjack.WordAlloc.removeDeadStructural input225 value65 value1 value2 = (output225, value65, value1) := by
  rw [input225_def, output225_def]
  try (conv => lhs; cbv)
  try rfl

theorem node226_cond_eq : Flapjack.WordAlloc.removeDeadStructural input226 value65 value1 value2 = (output226, value65, value1) := by
  rw [input226_def, output226_def]
  try (conv => lhs; cbv)
  try rfl

theorem node227_cond_eq
    (child225 : Flapjack.WordAlloc.removeDeadStructural input225 value65 value1 value2 = (output225, value65, value1))
    (child226 : Flapjack.WordAlloc.removeDeadStructural input226 value65 value1 value2 = (output226, value65, value1)) : Flapjack.WordAlloc.removeDeadStructural input227 value65 value1 value2 = (output227, value65, value1) := by
  rw [input227_def, output227_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child225]
  try dsimp only
  rw [child226]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node228_cond_eq
    (child224 : Flapjack.WordAlloc.removeDeadStructural input224 value65 value1 value2 = (output224, value65, value1))
    (child227 : Flapjack.WordAlloc.removeDeadStructural input227 value65 value1 value2 = (output227, value65, value1)) : Flapjack.WordAlloc.removeDeadStructural input228 value65 value1 value2 = (output228, value65, value1) := by
  rw [input228_def, output228_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child224]
  try dsimp only
  rw [child227]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node229_cond_eq : Flapjack.WordAlloc.removeDeadStructural input229 value65 value1 value2 = (output229, value65, value1) := by
  rw [input229_def, output229_def]
  try (conv => lhs; cbv)
  try rfl

theorem node230_cond_eq
    (child228 : Flapjack.WordAlloc.removeDeadStructural input228 value65 value1 value2 = (output228, value65, value1))
    (child229 : Flapjack.WordAlloc.removeDeadStructural input229 value65 value1 value2 = (output229, value65, value1)) : Flapjack.WordAlloc.removeDeadStructural input230 value65 value1 value2 = (output230, value65, value1) := by
  rw [input230_def, output230_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child228]
  try dsimp only
  rw [child229]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node231_cond_eq : Flapjack.WordAlloc.removeDeadStructural input231 value65 value1 value2 = (output231, value66, value1) := by
  rw [input231_def, output231_def]
  try (conv => lhs; cbv)
  try rfl

theorem node232_cond_eq : Flapjack.WordAlloc.removeDeadStructural input232 value66 value1 value2 = (output232, value67, value1) := by
  rw [input232_def, output232_def]
  try (conv => lhs; cbv)
  try rfl

theorem node233_cond_eq
    (child231 : Flapjack.WordAlloc.removeDeadStructural input231 value65 value1 value2 = (output231, value66, value1))
    (child232 : Flapjack.WordAlloc.removeDeadStructural input232 value66 value1 value2 = (output232, value67, value1)) : Flapjack.WordAlloc.removeDeadStructural input233 value65 value1 value2 = (output233, value67, value1) := by
  rw [input233_def, output233_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child231]
  try dsimp only
  rw [child232]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node234_cond_eq : Flapjack.WordAlloc.removeDeadStructural input234 value67 value1 value2 = (output234, value65, value1) := by
  rw [input234_def, output234_def]
  try (conv => lhs; cbv)
  try rfl

theorem node235_cond_eq : Flapjack.WordAlloc.removeDeadStructural input235 value65 value1 value2 = (output235, value68, value8) := by
  rw [input235_def, output235_def]
  try (conv => lhs; cbv)
  try rfl

theorem node236_cond_eq : Flapjack.WordAlloc.removeDeadStructural input236 value68 value8 value2 = (output236, value69, value8) := by
  rw [input236_def, output236_def]
  try (conv => lhs; cbv)
  try rfl

theorem node237_cond_eq
    (child235 : Flapjack.WordAlloc.removeDeadStructural input235 value65 value1 value2 = (output235, value68, value8))
    (child236 : Flapjack.WordAlloc.removeDeadStructural input236 value68 value8 value2 = (output236, value69, value8)) : Flapjack.WordAlloc.removeDeadStructural input237 value65 value1 value2 = (output237, value69, value8) := by
  rw [input237_def, output237_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child235]
  try dsimp only
  rw [child236]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node238_cond_eq : Flapjack.WordAlloc.removeDeadStructural input238 value69 value8 value2 = (output238, value65, value8) := by
  rw [input238_def, output238_def]
  try (conv => lhs; cbv)
  try rfl

theorem node239_cond_eq : Flapjack.WordAlloc.removeDeadStructural input239 value65 value8 value2 = (output239, value65, value8) := by
  rw [input239_def, output239_def]
  try (conv => lhs; cbv)
  try rfl

theorem node240_cond_eq : Flapjack.WordAlloc.removeDeadStructural input240 value65 value8 value2 = (output240, value65, value8) := by
  rw [input240_def, output240_def]
  try (conv => lhs; cbv)
  try rfl

theorem node241_cond_eq : Flapjack.WordAlloc.removeDeadStructural input241 value65 value8 value2 = (output241, value65, value8) := by
  rw [input241_def, output241_def]
  try (conv => lhs; cbv)
  try rfl

theorem node242_cond_eq
    (child240 : Flapjack.WordAlloc.removeDeadStructural input240 value65 value8 value2 = (output240, value65, value8))
    (child241 : Flapjack.WordAlloc.removeDeadStructural input241 value65 value8 value2 = (output241, value65, value8)) : Flapjack.WordAlloc.removeDeadStructural input242 value65 value8 value2 = (output242, value65, value8) := by
  rw [input242_def, output242_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child240]
  try dsimp only
  rw [child241]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node243_cond_eq
    (child239 : Flapjack.WordAlloc.removeDeadStructural input239 value65 value8 value2 = (output239, value65, value8))
    (child242 : Flapjack.WordAlloc.removeDeadStructural input242 value65 value8 value2 = (output242, value65, value8)) : Flapjack.WordAlloc.removeDeadStructural input243 value65 value8 value2 = (output243, value65, value8) := by
  rw [input243_def, output243_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child239]
  try dsimp only
  rw [child242]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node244_cond_eq
    (child238 : Flapjack.WordAlloc.removeDeadStructural input238 value69 value8 value2 = (output238, value65, value8))
    (child243 : Flapjack.WordAlloc.removeDeadStructural input243 value65 value8 value2 = (output243, value65, value8)) : Flapjack.WordAlloc.removeDeadStructural input244 value69 value8 value2 = (output244, value65, value8) := by
  rw [input244_def, output244_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child238]
  try dsimp only
  rw [child243]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node245_cond_eq
    (child237 : Flapjack.WordAlloc.removeDeadStructural input237 value65 value1 value2 = (output237, value69, value8))
    (child244 : Flapjack.WordAlloc.removeDeadStructural input244 value69 value8 value2 = (output244, value65, value8)) : Flapjack.WordAlloc.removeDeadStructural input245 value65 value1 value2 = (output245, value65, value8) := by
  rw [input245_def, output245_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child237]
  try dsimp only
  rw [child244]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node246_cond_eq
    (child234 : Flapjack.WordAlloc.removeDeadStructural input234 value67 value1 value2 = (output234, value65, value1))
    (child245 : Flapjack.WordAlloc.removeDeadStructural input245 value65 value1 value2 = (output245, value65, value8)) : Flapjack.WordAlloc.removeDeadStructural input246 value67 value1 value2 = (output246, value65, value8) := by
  rw [input246_def, output246_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child234]
  try dsimp only
  rw [child245]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node247_cond_eq
    (child233 : Flapjack.WordAlloc.removeDeadStructural input233 value65 value1 value2 = (output233, value67, value1))
    (child246 : Flapjack.WordAlloc.removeDeadStructural input246 value67 value1 value2 = (output246, value65, value8)) : Flapjack.WordAlloc.removeDeadStructural input247 value65 value1 value2 = (output247, value65, value8) := by
  rw [input247_def, output247_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child233]
  try dsimp only
  rw [child246]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node248_cond_eq
    (child230 : Flapjack.WordAlloc.removeDeadStructural input230 value65 value1 value2 = (output230, value65, value1))
    (child247 : Flapjack.WordAlloc.removeDeadStructural input247 value65 value1 value2 = (output247, value65, value8)) : Flapjack.WordAlloc.removeDeadStructural input248 value65 value1 value2 = (output248, value65, value8) := by
  rw [input248_def, output248_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child230]
  try dsimp only
  rw [child247]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node249_cond_eq : Flapjack.WordAlloc.removeDeadStructural input249 value65 value1 value2 = (output249, value65, value1) := by
  rw [input249_def, output249_def]
  try (conv => lhs; cbv)
  try rfl

theorem node250_cond_eq : Flapjack.WordAlloc.removeDeadStructural input250 value65 value1 value2 = (output250, value65, value1) := by
  rw [input250_def, output250_def]
  try (conv => lhs; cbv)
  try rfl

theorem node251_cond_eq : Flapjack.WordAlloc.removeDeadStructural input251 value65 value1 value2 = (output251, value65, value1) := by
  rw [input251_def, output251_def]
  try (conv => lhs; cbv)
  try rfl

theorem node252_cond_eq
    (child250 : Flapjack.WordAlloc.removeDeadStructural input250 value65 value1 value2 = (output250, value65, value1))
    (child251 : Flapjack.WordAlloc.removeDeadStructural input251 value65 value1 value2 = (output251, value65, value1)) : Flapjack.WordAlloc.removeDeadStructural input252 value65 value1 value2 = (output252, value65, value1) := by
  rw [input252_def, output252_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child250]
  try dsimp only
  rw [child251]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node253_cond_eq
    (child249 : Flapjack.WordAlloc.removeDeadStructural input249 value65 value1 value2 = (output249, value65, value1))
    (child252 : Flapjack.WordAlloc.removeDeadStructural input252 value65 value1 value2 = (output252, value65, value1)) : Flapjack.WordAlloc.removeDeadStructural input253 value65 value1 value2 = (output253, value65, value1) := by
  rw [input253_def, output253_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child249]
  try dsimp only
  rw [child252]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node254_cond_eq : Flapjack.WordAlloc.removeDeadStructural input254 value65 value1 value2 = (output254, value65, value1) := by
  rw [input254_def, output254_def]
  try (conv => lhs; cbv)
  try rfl

theorem node255_cond_eq
    (child253 : Flapjack.WordAlloc.removeDeadStructural input253 value65 value1 value2 = (output253, value65, value1))
    (child254 : Flapjack.WordAlloc.removeDeadStructural input254 value65 value1 value2 = (output254, value65, value1)) : Flapjack.WordAlloc.removeDeadStructural input255 value65 value1 value2 = (output255, value65, value1) := by
  rw [input255_def, output255_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child253]
  try dsimp only
  rw [child254]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

#print axioms node255_cond_eq
end InitE.DeadStages880.Parallel
