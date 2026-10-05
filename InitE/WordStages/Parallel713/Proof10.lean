import InitE.WordStages.Parallel713.Data10
import InitE.WordStages.Parallel713.Data9
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.WordStages.Parallel713
theorem pass713_10_eq : WordRemove.removeMustTerminate (pass713_9) = pass713_10 := by
  conv => lhs; cbv
  try rfl
#print axioms pass713_10_eq
end InitE.WordStages.Parallel713
