import InitE.CompactComputation
import InitE.ClashStages233.Data
import InitE.WordStages.Parallel233.Data8
import InitE.WordStages.Parallel233.Data9
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages.Parallel233
namespace InitE.ClashStages233
theorem stack_eq : everyStackVarHOL (fun x => decide (2 * (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) ≤ x)) pass233_9 = true := by
  kernel_rfl
#print axioms stack_eq
end InitE.ClashStages233
