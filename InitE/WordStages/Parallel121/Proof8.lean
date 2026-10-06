import InitE.CompactComputation
import InitE.WordStages.Parallel121.Data8
import InitE.WordStages.Parallel121.Data7
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.WordStages.Parallel121
theorem pass121_8_eq : WordAlloc.removeDeadProg (pass121_7) = pass121_8 := by
  kernel_rfl
#print axioms pass121_8_eq
end InitE.WordStages.Parallel121
