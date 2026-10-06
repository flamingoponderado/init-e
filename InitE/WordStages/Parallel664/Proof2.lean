import InitE.CompactComputation
import InitE.WordStages.Parallel664.Data2
import InitE.WordStages.Parallel664.Data1
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.WordStages.Parallel664
theorem pass664_2_eq : WordAlloc.fullSsaCcTrans 1 (pass664_1) = pass664_2 := by
  kernel_rfl
#print axioms pass664_2_eq
end InitE.WordStages.Parallel664
