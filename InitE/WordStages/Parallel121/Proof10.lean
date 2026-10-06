import InitE.CompactComputation
import InitE.WordStages.Parallel121.Data10
import InitE.WordStages.Parallel121.Data9
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.WordStages.Parallel121
theorem pass121_10_eq : WordRemove.removeMustTerminate (pass121_9) = pass121_10 := by
  kernel_rfl
#print axioms pass121_10_eq
end InitE.WordStages.Parallel121
