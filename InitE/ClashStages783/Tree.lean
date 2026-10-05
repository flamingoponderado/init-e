import InitE.ClashStages783.Data
import InitE.WordStages.Parallel783.Data8
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.ClashStages783
theorem tree_eq : Flapjack.WordAlloc.getClashTree InitE.WordStages.Parallel783.pass783_8 [] = literal1222 := by
  conv => lhs; cbv
  try rfl
#print axioms tree_eq
end InitE.ClashStages783
