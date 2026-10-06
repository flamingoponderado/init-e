import InitE.CompactComputation
import InitE.SmallStages.Compact429.Complete
import InitE.SmallStages.Oracles429
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles429
namespace InitE.SmallStages.Compact429
theorem optimize429_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source429, oracle429) = optimized429 := by
  exact optimize429_eq.trans (by kernel_rfl)
#print axioms optimize429_exact
end InitE.SmallStages.Compact429
