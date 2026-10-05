import InitE.ClashStages233.Data
import InitE.WordStages.Parallel233.Data8
import InitE.WordStages.Parallel233.Data9
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages.Parallel233
namespace InitE.ClashStages233
theorem apply_eq : WordAlloc.applyColour (WordAlloc.totalColour colour) pass233_8 = pass233_9 := by
  conv => lhs; cbv
  try rfl
#print axioms apply_eq
end InitE.ClashStages233
