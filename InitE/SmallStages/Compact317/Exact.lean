import InitE.SmallStages.Compact317.Complete
import InitE.SmallStages.Oracles317
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles317
namespace InitE.SmallStages.Compact317
theorem optimize317_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source317, oracle317) = optimized317 := by
  exact optimize317_eq.trans (by with_unfolding_all rfl)
#print axioms optimize317_exact
end InitE.SmallStages.Compact317
