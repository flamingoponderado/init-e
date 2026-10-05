import InitE.SmallStages.Compact787.Complete
import InitE.SmallStages.Oracles787
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles787
namespace InitE.SmallStages.Compact787
theorem optimize787_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source787, oracle787) = optimized787 := by
  exact optimize787_eq.trans (by with_unfolding_all rfl)
#print axioms optimize787_exact
end InitE.SmallStages.Compact787
