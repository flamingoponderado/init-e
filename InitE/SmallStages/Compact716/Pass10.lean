import InitE.CompactComputation
import InitE.SmallStages.Compact716.Data
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.SmallOptimizerComputation InitE.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages
namespace InitE.SmallStages.Compact716
theorem pass10_eq : WordRemove.removeMustTerminate (WordToWord.wordAllocWith RegAlloc.regAllocExecutable 716 riscvConfig 3 (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) pass8 oracle) = pass10 := by
  kernel_rfl
#print axioms pass10_eq
end InitE.SmallStages.Compact716
