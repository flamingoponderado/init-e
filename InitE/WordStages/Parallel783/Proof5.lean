import InitE.WordStages.Parallel783.Data5
import InitE.WordStages.Parallel783.Data4
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.WordStages.Parallel783
theorem pass783_5_eq : WordCopy.copyProp (pass783_4) = pass783_5 := by
  conv => lhs; cbv
  try rfl
#print axioms pass783_5_eq
end InitE.WordStages.Parallel783
