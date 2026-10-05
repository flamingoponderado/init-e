import InitE.WordStages.Parallel646.Data7
import InitE.WordStages.Parallel646.Data6
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.WordStages.Parallel646
theorem pass646_7_eq : WordUnreach.removeUnreach (pass646_6) = pass646_7 := by
  conv => lhs; cbv
  try rfl
#print axioms pass646_7_eq
end InitE.WordStages.Parallel646
