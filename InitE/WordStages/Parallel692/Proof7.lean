import InitE.WordStages.Parallel692.Data7
import InitE.WordStages.Parallel692.Data6
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.WordStages.Parallel692
theorem pass692_7_eq : WordUnreach.removeUnreach (pass692_6) = pass692_7 := by
  conv => lhs; cbv
  try rfl
#print axioms pass692_7_eq
end InitE.WordStages.Parallel692
