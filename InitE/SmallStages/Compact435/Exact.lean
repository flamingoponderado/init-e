import InitE.SmallStages.Compact435.Complete
import InitE.SmallStages.Oracles435
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles435
namespace InitE.SmallStages.Compact435
theorem optimize435_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source435, oracle435) = optimized435 := by
  exact optimize435_eq.trans (by with_unfolding_all rfl)
#print axioms optimize435_exact
end InitE.SmallStages.Compact435
