import InitE.WordStages.Parallel713.Data8
import InitE.WordStages.Parallel713.Data7
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.WordStages.Parallel713
theorem pass713_8_eq : WordAlloc.removeDeadProg (pass713_7) = pass713_8 := by
  conv => lhs; cbv
  try rfl
#print axioms pass713_8_eq
end InitE.WordStages.Parallel713
