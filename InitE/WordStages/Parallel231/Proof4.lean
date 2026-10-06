import InitE.CompactComputation
import InitE.WordStages.Parallel231.Data4
import InitE.WordStages.Parallel231.Data3
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.WordStages.Parallel231
theorem pass231_4_eq : WordCse.wordCommonSubexpElim (pass231_3) = pass231_4 := by
  kernel_rfl
#print axioms pass231_4_eq
end InitE.WordStages.Parallel231
