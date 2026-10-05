import InitE.ClashStages875.Data
import InitE.WordStages.Parallel875.Data8
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.ClashStages875
theorem tree_eq : Flapjack.WordAlloc.getClashTree InitE.WordStages.Parallel875.pass875_8 [] = literal2518 := by
  conv => lhs; cbv
  try rfl
#print axioms tree_eq
end InitE.ClashStages875
