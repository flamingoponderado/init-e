import InitE.CompactComputation
import InitE.SmallStages.Compact673.Complete
import InitE.SmallStages.Oracles673
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles673
namespace InitE.SmallStages.Compact673
theorem optimize673_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source673, oracle673) = optimized673 := by
  exact optimize673_eq.trans (by kernel_rfl)
#print axioms optimize673_exact
end InitE.SmallStages.Compact673
