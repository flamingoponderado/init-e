import InitE.SmallStages.Compact329.Complete
import InitE.SmallStages.Oracles329
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles329
namespace InitE.SmallStages.Compact329
theorem optimize329_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source329, oracle329) = optimized329 := by
  exact optimize329_eq.trans (by with_unfolding_all rfl)
#print axioms optimize329_exact
end InitE.SmallStages.Compact329
