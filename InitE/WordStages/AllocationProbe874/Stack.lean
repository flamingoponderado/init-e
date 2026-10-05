import InitE.WordStages.Parallel874.Data8
import InitE.WordStages.Parallel874.Data9
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages.Parallel874
namespace InitE.WordStages.AllocationProbe874
@[irreducible] def colour : Spt Nat := proposed874.getD .ln
theorem checked : everyStackVarHOL (fun x => decide (2 * (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) ≤ x)) pass874_9 = true := by
  conv => lhs; cbv
  try rfl
#print axioms checked
end InitE.WordStages.AllocationProbe874
