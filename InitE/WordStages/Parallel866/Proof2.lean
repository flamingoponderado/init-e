import InitE.CompactComputation
import InitE.WordStages.Parallel866.Data2
import InitE.WordStages.Parallel866.Data1
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.WordStages.Parallel866
theorem pass866_2_eq : WordAlloc.fullSsaCcTrans 2 (pass866_1) = pass866_2 := by
  kernel_rfl
#print axioms pass866_2_eq
end InitE.WordStages.Parallel866
