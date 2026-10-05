import InitE.WordStages.Parallel875.Data4
import InitE.WordStages.Parallel875.Data3
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.WordStages.Parallel875
theorem pass875_4_eq : WordCse.wordCommonSubexpElim (pass875_3) = pass875_4 := by
  conv => lhs; cbv
  try rfl
#print axioms pass875_4_eq
end InitE.WordStages.Parallel875
