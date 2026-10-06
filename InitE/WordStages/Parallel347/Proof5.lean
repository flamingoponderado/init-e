import InitE.CompactComputation
import InitE.WordStages.Parallel347.Data5
import InitE.WordStages.Parallel347.Data4
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.WordStages.Parallel347
theorem pass347_5_eq : WordCopy.copyProp (pass347_4) = pass347_5 := by
  kernel_rfl
#print axioms pass347_5_eq
end InitE.WordStages.Parallel347
