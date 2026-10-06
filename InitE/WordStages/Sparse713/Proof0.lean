import InitE.WordStages.Sparse713.Data0
import InitE.WordStages.Source713
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.WordStages.Sparse713
theorem pass713_0_eq : WordSimp.compileExp (source713.2.2) = pass713_0 := by
  conv => lhs; cbv
  try rfl
#print axioms pass713_0_eq
end InitE.WordStages.Sparse713
