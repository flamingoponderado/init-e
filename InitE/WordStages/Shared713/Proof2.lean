import InitE.CompactComputation
import InitE.WordStages.Shared713.Data2
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.WordStages.Shared713
theorem pass713_2_eq : WordAlloc.fullSsaCcTrans 1 (pass713_1) = pass713_2 := by
  kernel_rfl
#print axioms pass713_2_eq
end InitE.WordStages.Shared713
