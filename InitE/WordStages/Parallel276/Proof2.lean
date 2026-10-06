import InitE.CompactComputation
import InitE.WordStages.Parallel276.Data2
import InitE.WordStages.Parallel276.Data1
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.WordStages.Parallel276
theorem pass276_2_eq : WordAlloc.fullSsaCcTrans 3 (pass276_1) = pass276_2 := by
  kernel_rfl
#print axioms pass276_2_eq
end InitE.WordStages.Parallel276
