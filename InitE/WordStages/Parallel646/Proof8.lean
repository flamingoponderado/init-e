import InitE.CompactComputation
import InitE.WordStages.Parallel646.Data8
import InitE.WordStages.Parallel646.Data7
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.WordStages.Parallel646
theorem pass646_8_eq : WordAlloc.removeDeadProg (pass646_7) = pass646_8 := by
  kernel_rfl
#print axioms pass646_8_eq
end InitE.WordStages.Parallel646
