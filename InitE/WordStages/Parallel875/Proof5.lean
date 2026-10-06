import InitE.CompactComputation
import InitE.WordStages.Parallel875.Data5
import InitE.WordStages.Parallel875.Data4
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.WordStages.Parallel875
theorem pass875_5_eq : WordCopy.copyProp (pass875_4) = pass875_5 := by
  kernel_rfl
#print axioms pass875_5_eq
end InitE.WordStages.Parallel875
