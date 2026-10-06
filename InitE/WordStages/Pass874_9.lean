import InitE.CompactComputation
import InitE.WordStages.Pass874_8
import InitE.ClashStages874.Allocation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.WordStages
def proposed874 : Option (Spt Nat) := Parallel874.proposed874
def pass874_9 : WordLangProgHOL (BitVec 64) := Parallel874.pass874_9
theorem pass874_9_eq : WordToWord.wordAllocWith RegAlloc.regAllocExecutable 874 riscvConfig RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) pass874_8 proposed874 = pass874_9 := by
  have input_eq : pass874_8 = Parallel874.pass874_8 := by
    kernel_rfl
  rw [input_eq]
  exact InitE.ClashStages874.allocation_eq
#print axioms pass874_9_eq
end InitE.WordStages
