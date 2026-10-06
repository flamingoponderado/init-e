import InitE.CompactComputation
import InitE.ClashStages875.Data
import InitE.WordStages.Parallel875.Data8
import InitE.WordStages.Parallel875.Data9
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages.Parallel875
namespace InitE.ClashStages875
theorem forced_eq : (WordAlloc.getForced riscvConfig pass875_8 []).all (fun (x, y) => WordAlloc.totalColour colour x != WordAlloc.totalColour colour y) = true := by
  kernel_rfl
#print axioms forced_eq
end InitE.ClashStages875
