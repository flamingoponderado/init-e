import InitE.SmallStages.Compact365.Complete
import InitE.SmallStages.Oracles365
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles365
namespace InitE.SmallStages.Compact365
theorem optimize365_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source365, oracle365) = optimized365 := by
  exact optimize365_eq.trans (by with_unfolding_all rfl)
#print axioms optimize365_exact
end InitE.SmallStages.Compact365
