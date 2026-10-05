import InitE.SmallStages.Compact559.Complete
import InitE.SmallStages.Oracles559
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles559
namespace InitE.SmallStages.Compact559
theorem optimize559_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source559, oracle559) = optimized559 := by
  exact optimize559_eq.trans (by with_unfolding_all rfl)
#print axioms optimize559_exact
end InitE.SmallStages.Compact559
