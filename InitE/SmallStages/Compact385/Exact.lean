import InitE.CompactComputation
import InitE.SmallStages.Compact385.Complete
import InitE.SmallStages.Oracles385
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles385
namespace InitE.SmallStages.Compact385
theorem optimize385_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source385, oracle385) = optimized385 := by
  exact optimize385_eq.trans (by kernel_rfl)
#print axioms optimize385_exact
end InitE.SmallStages.Compact385
