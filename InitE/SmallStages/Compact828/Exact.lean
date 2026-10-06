import InitE.SmallStages.Compact828.Complete
import InitE.SmallStages.Oracles828
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles828
namespace InitE.SmallStages.Compact828
theorem optimize828_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source828, oracle828) = optimized828 := by
  exact optimize828_eq.trans (by with_unfolding_all rfl)
#print axioms optimize828_exact
end InitE.SmallStages.Compact828
