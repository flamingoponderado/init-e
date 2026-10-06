import InitE.WordStages.Parallel240.Data7
import InitE.WordStages.Parallel240.Data6
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.WordStages.Parallel240
theorem pass240_7_eq : WordUnreach.removeUnreach (pass240_6) = pass240_7 := by
  conv => lhs; cbv
  try rfl
#print axioms pass240_7_eq
end InitE.WordStages.Parallel240
