import InitE.SmallStages.Compact562.Complete
import InitE.SmallStages.Oracles562
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles562
namespace InitE.SmallStages.Compact562
theorem optimize562_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source562, oracle562) = optimized562 := by
  exact optimize562_eq.trans (by with_unfolding_all rfl)
#print axioms optimize562_exact
end InitE.SmallStages.Compact562
