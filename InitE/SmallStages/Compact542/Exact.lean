import InitE.SmallStages.Compact542.Complete
import InitE.SmallStages.Oracles542
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles542
namespace InitE.SmallStages.Compact542
theorem optimize542_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source542, oracle542) = optimized542 := by
  exact optimize542_eq.trans (by with_unfolding_all rfl)
#print axioms optimize542_exact
end InitE.SmallStages.Compact542
