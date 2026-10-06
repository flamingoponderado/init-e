import InitE.CompactComputation
import InitE.ClashStages874.Data
import InitE.WordStages.Parallel874.Data8
import InitE.WordStages.Parallel874.Data9
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages.Parallel874
namespace InitE.ClashStages874
theorem even_eq : WordAlloc.everyEvenColour colour = true := by
  kernel_rfl
#print axioms even_eq
end InitE.ClashStages874
