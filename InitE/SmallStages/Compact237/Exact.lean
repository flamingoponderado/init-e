import InitE.SmallStages.Compact237.Complete
import InitE.SmallStages.Oracles237
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles237
namespace InitE.SmallStages.Compact237
theorem optimize237_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source237, oracle237) = optimized237 := by
  exact optimize237_eq.trans (by with_unfolding_all rfl)
#print axioms optimize237_exact
end InitE.SmallStages.Compact237
