import InitE.CompactComputation
import InitE.SmallStages.Compact675.Complete
import InitE.SmallStages.Oracles675
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles675
namespace InitE.SmallStages.Compact675
theorem optimize675_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source675, oracle675) = optimized675 := by
  exact optimize675_eq.trans (by kernel_rfl)
#print axioms optimize675_exact
end InitE.SmallStages.Compact675
