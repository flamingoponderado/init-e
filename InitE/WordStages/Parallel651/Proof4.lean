import InitE.WordStages.Parallel651.Data4
import InitE.WordStages.Parallel651.Data3
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.WordStages.Parallel651
theorem pass651_4_eq : WordCse.wordCommonSubexpElim (pass651_3) = pass651_4 := by
  conv => lhs; cbv
  try rfl
#print axioms pass651_4_eq
end InitE.WordStages.Parallel651
