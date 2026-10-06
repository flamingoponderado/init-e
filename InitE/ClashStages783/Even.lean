import InitE.CompactComputation
import InitE.ClashStages783.Data
import InitE.WordStages.Parallel783.Data8
import InitE.WordStages.Parallel783.Data9
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages.Parallel783
namespace InitE.ClashStages783
theorem even_eq : WordAlloc.everyEvenColour colour = true := by
  kernel_rfl
#print axioms even_eq
end InitE.ClashStages783
