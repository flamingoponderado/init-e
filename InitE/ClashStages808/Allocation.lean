import InitE.AllocationComputation
import InitE.ClashStages808.Closed
import InitE.ClashStages808.Oracle
import InitE.ClashStages808.Even
import InitE.ClashStages808.Apply
import InitE.ClashStages808.Stack
import InitE.ClashStages808.Forced
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages.Parallel808
namespace InitE.ClashStages808
theorem allocation_eq : WordToWord.wordAllocWith RegAlloc.regAllocExecutable 808 riscvConfig RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) pass808_8 proposed808 = pass808_9 := by
  exact InitE.AllocationComputation.wordAllocWith_eq_of_checks _ _ _ _ _ _ _ _ _
    oracle_eq even_eq checked apply_eq stack_eq forced_eq
#print axioms allocation_eq
end InitE.ClashStages808
