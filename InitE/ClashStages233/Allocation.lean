import InitE.AllocationComputation
import InitE.ClashStages233.Closed
import InitE.ClashStages233.Oracle
import InitE.ClashStages233.Even
import InitE.ClashStages233.Apply
import InitE.ClashStages233.Stack
import InitE.ClashStages233.Forced
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages.Parallel233
namespace InitE.ClashStages233
theorem allocation_eq : WordToWord.wordAllocWith RegAlloc.regAllocExecutable 233 riscvConfig RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) pass233_8 proposed233 = pass233_9 := by
  exact InitE.AllocationComputation.wordAllocWith_eq_of_checks _ _ _ _ _ _ _ _ _
    oracle_eq even_eq checked apply_eq stack_eq forced_eq
#print axioms allocation_eq
end InitE.ClashStages233
