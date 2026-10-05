import InitE.SmallStages.Compact450.Complete
import InitE.SmallStages.Oracles450
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles450
namespace InitE.SmallStages.Compact450
theorem optimize450_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source450, oracle450) = optimized450 := by
  exact optimize450_eq.trans (by with_unfolding_all rfl)
#print axioms optimize450_exact
end InitE.SmallStages.Compact450
