import InitE.CompactComputation
import InitE.WordStages.Parallel121.Data2
import InitE.WordStages.Parallel121.Data1
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.WordStages.Parallel121
theorem pass121_2_eq : WordAlloc.fullSsaCcTrans 9 (pass121_1) = pass121_2 := by
  kernel_rfl
#print axioms pass121_2_eq
end InitE.WordStages.Parallel121
