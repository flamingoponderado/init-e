import InitE.ClashStages808.Data
import InitE.WordStages.Parallel808.Data8
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.ClashStages808
theorem tree_eq : Flapjack.WordAlloc.getClashTree InitE.WordStages.Parallel808.pass808_8 [] = literal646 := by
  conv => lhs; cbv
  try rfl
#print axioms tree_eq
end InitE.ClashStages808
