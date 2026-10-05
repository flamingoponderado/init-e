import InitE.WordStages.Parallel231.Data0
import InitE.WordStages.Source231
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.WordStages.Parallel231
theorem pass231_0_eq : WordSimp.compileExp (source231.2.2) = pass231_0 := by
  conv => lhs; cbv
  try rfl
#print axioms pass231_0_eq
end InitE.WordStages.Parallel231
