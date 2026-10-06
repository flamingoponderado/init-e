import InitE.CompactComputation
import InitE.WordStages.Parallel656.Data2
import InitE.WordStages.Parallel656.Data1
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.WordStages.Parallel656
theorem pass656_2_eq : WordAlloc.fullSsaCcTrans 18 (pass656_1) = pass656_2 := by
  kernel_rfl
#print axioms pass656_2_eq
end InitE.WordStages.Parallel656
