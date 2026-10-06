import InitE.CompactComputation
import InitE.SmallStages.Compact351.Complete
import InitE.SmallStages.Oracles351
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles351
namespace InitE.SmallStages.Compact351
theorem optimize351_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source351, oracle351) = optimized351 := by
  exact optimize351_eq.trans (by kernel_rfl)
#print axioms optimize351_exact
end InitE.SmallStages.Compact351
