import InitE.ClashStages233.Data
import InitE.WordStages.Parallel233.Data8
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.ClashStages233
theorem tree_eq : Flapjack.WordAlloc.getClashTree InitE.WordStages.Parallel233.pass233_8 [] = literal1514 := by
  conv => lhs; cbv
  try rfl
#print axioms tree_eq
end InitE.ClashStages233
