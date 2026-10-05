import InitE.WordStages.Parallel651.Data2
import InitE.WordStages.Parallel651.Data1
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.WordStages.Parallel651
theorem pass651_2_eq : WordAlloc.fullSsaCcTrans 2 (pass651_1) = pass651_2 := by
  conv => lhs; cbv
  try rfl
#print axioms pass651_2_eq
end InitE.WordStages.Parallel651
