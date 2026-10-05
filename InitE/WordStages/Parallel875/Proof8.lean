import InitE.WordStages.Parallel875.Data8
import InitE.WordStages.Parallel875.Data7
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.WordStages.Parallel875
theorem pass875_8_eq : WordAlloc.removeDeadProg (pass875_7) = pass875_8 := by
  conv => lhs; cbv
  try rfl
#print axioms pass875_8_eq
end InitE.WordStages.Parallel875
