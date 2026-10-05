import InitE.SmallStages.Compact701.Complete
import InitE.SmallStages.Oracles701
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles701
namespace InitE.SmallStages.Compact701
theorem optimize701_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source701, oracle701) = optimized701 := by
  exact optimize701_eq.trans (by with_unfolding_all rfl)
#print axioms optimize701_exact
end InitE.SmallStages.Compact701
