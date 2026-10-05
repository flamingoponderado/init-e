import InitE.ClashStages713.Data
import InitE.WordStages.Sparse713.Data8
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.ClashStages713
theorem tree_eq : Flapjack.WordAlloc.getClashTree InitE.WordStages.Sparse713.pass713_8 [] = literal12034 := by
  conv => lhs; cbv
  try rfl
#print axioms tree_eq
end InitE.ClashStages713
