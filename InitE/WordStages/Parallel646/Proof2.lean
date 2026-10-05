import InitE.WordStages.Parallel646.Data2
import InitE.WordStages.Parallel646.Data1
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.WordStages.Parallel646
theorem pass646_2_eq : WordAlloc.fullSsaCcTrans 9 (pass646_1) = pass646_2 := by
  conv => lhs; cbv
  try rfl
#print axioms pass646_2_eq
end InitE.WordStages.Parallel646
