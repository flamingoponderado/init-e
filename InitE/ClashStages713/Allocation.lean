import InitE.AllocationComputation
import InitE.ClashStages713.Closed
import InitE.ClashStages713.Oracle
import InitE.ClashStages713.Even
import InitE.ClashStages713.Apply
import InitE.ClashStages713.Stack
import InitE.ClashStages713.Forced
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages.Sparse713
namespace InitE.ClashStages713
theorem allocation_eq : WordToWord.wordAllocWith RegAlloc.regAllocExecutable 713 riscvConfig RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) pass713_8 proposed713 = pass713_9 := by
  exact InitE.AllocationComputation.wordAllocWith_eq_of_checks _ _ _ _ _ _ _ _ _
    oracle_eq even_eq checked apply_eq stack_eq forced_eq
#print axioms allocation_eq
end InitE.ClashStages713
