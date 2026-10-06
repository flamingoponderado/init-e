import InitE.CompactComputation
import InitE.SmallStages.Compact886.Complete
import InitE.SmallStages.Oracles886
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles886
namespace InitE.SmallStages.Compact886
theorem optimize886_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source886, oracle886) = optimized886 := by
  exact optimize886_eq.trans (by kernel_rfl)
#print axioms optimize886_exact
end InitE.SmallStages.Compact886
