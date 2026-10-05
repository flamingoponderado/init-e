import InitE.WordStages.Parallel121.Data2
import InitE.WordStages.Parallel121.Data3
import InitE.DeadStages121.Parallel.Data.Chunk004
import InitE.WordStages.Parallel121.AgreementsParallel.Chunk003

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitE.WordStages.Parallel121.AgreementsParallel
theorem input1024_eq : InitE.DeadStages121.Parallel.input1024 =
    InitE.WordStages.Parallel121.word121_2_1379 := by
  rw [InitE.DeadStages121.Parallel.input1024_def]
  simp only [input1023_eq, input34_eq]
  with_unfolding_all rfl

theorem output1024_eq : InitE.DeadStages121.Parallel.output1024 =
    InitE.WordStages.Parallel121.word121_3_1165 := by
  rw [InitE.DeadStages121.Parallel.output1024_def]
  simp only [output1023_eq, output34_eq]
  with_unfolding_all rfl

theorem input1025_eq : InitE.DeadStages121.Parallel.input1025 =
    InitE.WordStages.Parallel121.word121_2_1381 := by
  rw [InitE.DeadStages121.Parallel.input1025_def]
  simp only [input1024_eq, input33_eq]
  with_unfolding_all rfl

theorem output1025_eq : InitE.DeadStages121.Parallel.output1025 =
    InitE.WordStages.Parallel121.word121_3_1165 := by
  rw [InitE.DeadStages121.Parallel.output1025_def]
  simp only [output1024_eq]

theorem input1026_eq : InitE.DeadStages121.Parallel.input1026 =
    InitE.WordStages.Parallel121.word121_2_1383 := by
  rw [InitE.DeadStages121.Parallel.input1026_def]
  simp only [input1025_eq, input32_eq]
  with_unfolding_all rfl

theorem output1026_eq : InitE.DeadStages121.Parallel.output1026 =
    InitE.WordStages.Parallel121.word121_3_1167 := by
  rw [InitE.DeadStages121.Parallel.output1026_def]
  simp only [output1025_eq, output32_eq]
  with_unfolding_all rfl

theorem input1027_eq : InitE.DeadStages121.Parallel.input1027 =
    InitE.WordStages.Parallel121.word121_2_1389 := by
  rw [InitE.DeadStages121.Parallel.input1027_def]
  simp only [input1026_eq, input31_eq]
  with_unfolding_all rfl

theorem output1027_eq : InitE.DeadStages121.Parallel.output1027 =
    InitE.WordStages.Parallel121.word121_3_1173 := by
  rw [InitE.DeadStages121.Parallel.output1027_def]
  simp only [output1026_eq, output31_eq]
  with_unfolding_all rfl

theorem input1028_eq : InitE.DeadStages121.Parallel.input1028 =
    InitE.WordStages.Parallel121.word121_2_1391 := by
  rw [InitE.DeadStages121.Parallel.input1028_def]
  simp only [input1027_eq, input26_eq]
  with_unfolding_all rfl

theorem output1028_eq : InitE.DeadStages121.Parallel.output1028 =
    InitE.WordStages.Parallel121.word121_3_1175 := by
  rw [InitE.DeadStages121.Parallel.output1028_def]
  simp only [output1027_eq, output26_eq]
  with_unfolding_all rfl

theorem input1029_eq : InitE.DeadStages121.Parallel.input1029 =
    InitE.WordStages.Parallel121.word121_2_1393 := by
  rw [InitE.DeadStages121.Parallel.input1029_def]
  simp only [input1028_eq, input25_eq]
  with_unfolding_all rfl

theorem output1029_eq : InitE.DeadStages121.Parallel.output1029 =
    InitE.WordStages.Parallel121.word121_3_1177 := by
  rw [InitE.DeadStages121.Parallel.output1029_def]
  simp only [output1028_eq, output25_eq]
  with_unfolding_all rfl

theorem input1030_eq : InitE.DeadStages121.Parallel.input1030 =
    InitE.WordStages.Parallel121.word121_2_1395 := by
  rw [InitE.DeadStages121.Parallel.input1030_def]
  simp only [input1029_eq, input24_eq]
  with_unfolding_all rfl

theorem output1030_eq : InitE.DeadStages121.Parallel.output1030 =
    InitE.WordStages.Parallel121.word121_3_1179 := by
  rw [InitE.DeadStages121.Parallel.output1030_def]
  simp only [output1029_eq, output24_eq]
  with_unfolding_all rfl

theorem input1031_eq : InitE.DeadStages121.Parallel.input1031 =
    InitE.WordStages.Parallel121.word121_2_1401 := by
  rw [InitE.DeadStages121.Parallel.input1031_def]
  simp only [input1030_eq, input23_eq]
  with_unfolding_all rfl

theorem output1031_eq : InitE.DeadStages121.Parallel.output1031 =
    InitE.WordStages.Parallel121.word121_3_1185 := by
  rw [InitE.DeadStages121.Parallel.output1031_def]
  simp only [output1030_eq, output23_eq]
  with_unfolding_all rfl

theorem input1032_eq : InitE.DeadStages121.Parallel.input1032 =
    InitE.WordStages.Parallel121.word121_2_1403 := by
  rw [InitE.DeadStages121.Parallel.input1032_def]
  simp only [input1031_eq, input18_eq]
  with_unfolding_all rfl

theorem output1032_eq : InitE.DeadStages121.Parallel.output1032 =
    InitE.WordStages.Parallel121.word121_3_1187 := by
  rw [InitE.DeadStages121.Parallel.output1032_def]
  simp only [output1031_eq, output18_eq]
  with_unfolding_all rfl

theorem input1033_eq : InitE.DeadStages121.Parallel.input1033 =
    InitE.WordStages.Parallel121.word121_2_1405 := by
  rw [InitE.DeadStages121.Parallel.input1033_def]
  simp only [input1032_eq, input17_eq]
  with_unfolding_all rfl

theorem output1033_eq : InitE.DeadStages121.Parallel.output1033 =
    InitE.WordStages.Parallel121.word121_3_1189 := by
  rw [InitE.DeadStages121.Parallel.output1033_def]
  simp only [output1032_eq, output17_eq]
  with_unfolding_all rfl

theorem input1034_eq : InitE.DeadStages121.Parallel.input1034 =
    InitE.WordStages.Parallel121.word121_2_1407 := by
  rw [InitE.DeadStages121.Parallel.input1034_def]
  simp only [input1033_eq, input16_eq]
  with_unfolding_all rfl

theorem output1034_eq : InitE.DeadStages121.Parallel.output1034 =
    InitE.WordStages.Parallel121.word121_3_1191 := by
  rw [InitE.DeadStages121.Parallel.output1034_def]
  simp only [output1033_eq, output16_eq]
  with_unfolding_all rfl

theorem input1035_eq : InitE.DeadStages121.Parallel.input1035 =
    InitE.WordStages.Parallel121.word121_2_1413 := by
  rw [InitE.DeadStages121.Parallel.input1035_def]
  simp only [input1034_eq, input15_eq]
  with_unfolding_all rfl

theorem output1035_eq : InitE.DeadStages121.Parallel.output1035 =
    InitE.WordStages.Parallel121.word121_3_1197 := by
  rw [InitE.DeadStages121.Parallel.output1035_def]
  simp only [output1034_eq, output15_eq]
  with_unfolding_all rfl

theorem input1036_eq : InitE.DeadStages121.Parallel.input1036 =
    InitE.WordStages.Parallel121.word121_2_1415 := by
  rw [InitE.DeadStages121.Parallel.input1036_def]
  simp only [input1035_eq, input10_eq]
  with_unfolding_all rfl

theorem output1036_eq : InitE.DeadStages121.Parallel.output1036 =
    InitE.WordStages.Parallel121.word121_3_1199 := by
  rw [InitE.DeadStages121.Parallel.output1036_def]
  simp only [output1035_eq, output10_eq]
  with_unfolding_all rfl

theorem input1037_eq : InitE.DeadStages121.Parallel.input1037 =
    InitE.WordStages.Parallel121.word121_2_1417 := by
  rw [InitE.DeadStages121.Parallel.input1037_def]
  simp only [input1036_eq, input9_eq]
  with_unfolding_all rfl

theorem output1037_eq : InitE.DeadStages121.Parallel.output1037 =
    InitE.WordStages.Parallel121.word121_3_1201 := by
  rw [InitE.DeadStages121.Parallel.output1037_def]
  simp only [output1036_eq, output9_eq]
  with_unfolding_all rfl

theorem input1038_eq : InitE.DeadStages121.Parallel.input1038 =
    InitE.WordStages.Parallel121.word121_2_1419 := by
  rw [InitE.DeadStages121.Parallel.input1038_def]
  simp only [input1037_eq, input8_eq]
  with_unfolding_all rfl

theorem output1038_eq : InitE.DeadStages121.Parallel.output1038 =
    InitE.WordStages.Parallel121.word121_3_1203 := by
  rw [InitE.DeadStages121.Parallel.output1038_def]
  simp only [output1037_eq, output8_eq]
  with_unfolding_all rfl

theorem input1039_eq : InitE.DeadStages121.Parallel.input1039 =
    InitE.WordStages.Parallel121.word121_2_1421 := by
  rw [InitE.DeadStages121.Parallel.input1039_def]
  simp only [input1038_eq, input7_eq]
  with_unfolding_all rfl

theorem output1039_eq : InitE.DeadStages121.Parallel.output1039 =
    InitE.WordStages.Parallel121.word121_3_1205 := by
  rw [InitE.DeadStages121.Parallel.output1039_def]
  simp only [output1038_eq, output7_eq]
  with_unfolding_all rfl

theorem input1040_eq : InitE.DeadStages121.Parallel.input1040 =
    InitE.WordStages.Parallel121.word121_2_1423 := by
  rw [InitE.DeadStages121.Parallel.input1040_def]
  simp only [input1039_eq, input6_eq]
  with_unfolding_all rfl

theorem output1040_eq : InitE.DeadStages121.Parallel.output1040 =
    InitE.WordStages.Parallel121.word121_3_1207 := by
  rw [InitE.DeadStages121.Parallel.output1040_def]
  simp only [output1039_eq, output6_eq]
  with_unfolding_all rfl

theorem input1041_eq : InitE.DeadStages121.Parallel.input1041 =
    InitE.WordStages.Parallel121.word121_2_1425 := by
  rw [InitE.DeadStages121.Parallel.input1041_def]
  simp only [input1040_eq, input5_eq]
  with_unfolding_all rfl

theorem output1041_eq : InitE.DeadStages121.Parallel.output1041 =
    InitE.WordStages.Parallel121.word121_3_1209 := by
  rw [InitE.DeadStages121.Parallel.output1041_def]
  simp only [output1040_eq, output5_eq]
  with_unfolding_all rfl

theorem input1042_eq : InitE.DeadStages121.Parallel.input1042 =
    InitE.WordStages.Parallel121.word121_2_1427 := by
  rw [InitE.DeadStages121.Parallel.input1042_def]
  simp only [input1041_eq, input4_eq]
  with_unfolding_all rfl

theorem output1042_eq : InitE.DeadStages121.Parallel.output1042 =
    InitE.WordStages.Parallel121.word121_3_1211 := by
  rw [InitE.DeadStages121.Parallel.output1042_def]
  simp only [output1041_eq, output4_eq]
  with_unfolding_all rfl

theorem input1043_eq : InitE.DeadStages121.Parallel.input1043 =
    InitE.WordStages.Parallel121.word121_2_1429 := by
  rw [InitE.DeadStages121.Parallel.input1043_def]
  simp only [input1042_eq, input3_eq]
  with_unfolding_all rfl

theorem output1043_eq : InitE.DeadStages121.Parallel.output1043 =
    InitE.WordStages.Parallel121.word121_3_1213 := by
  rw [InitE.DeadStages121.Parallel.output1043_def]
  simp only [output1042_eq, output3_eq]
  with_unfolding_all rfl

theorem input1044_eq : InitE.DeadStages121.Parallel.input1044 =
    InitE.WordStages.Parallel121.word121_2_1433 := by
  rw [InitE.DeadStages121.Parallel.input1044_def]
  simp only [input1043_eq, input2_eq]
  with_unfolding_all rfl

theorem output1044_eq : InitE.DeadStages121.Parallel.output1044 =
    InitE.WordStages.Parallel121.word121_3_1217 := by
  rw [InitE.DeadStages121.Parallel.output1044_def]
  simp only [output1043_eq, output2_eq]
  with_unfolding_all rfl

theorem input1045_eq : InitE.DeadStages121.Parallel.input1045 =
    InitE.WordStages.Parallel121.word121_2_0 := by
  rw [InitE.DeadStages121.Parallel.input1045_def]
  with_unfolding_all rfl

theorem output1045_eq : InitE.DeadStages121.Parallel.output1045 =
    InitE.WordStages.Parallel121.word121_3_0 := by
  rw [InitE.DeadStages121.Parallel.output1045_def]
  with_unfolding_all rfl

theorem input1046_eq : InitE.DeadStages121.Parallel.input1046 =
    InitE.WordStages.Parallel121.word121_2_1434 := by
  rw [InitE.DeadStages121.Parallel.input1046_def]
  simp only [input1045_eq, input1044_eq]
  with_unfolding_all rfl

theorem output1046_eq : InitE.DeadStages121.Parallel.output1046 =
    InitE.WordStages.Parallel121.word121_3_1218 := by
  rw [InitE.DeadStages121.Parallel.output1046_def]
  simp only [output1045_eq, output1044_eq]
  with_unfolding_all rfl

#print axioms output1046_eq
end InitE.WordStages.Parallel121.AgreementsParallel
