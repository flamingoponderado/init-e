import InitE.SmallStages.Compact558.Complete
import InitE.SmallStages.Oracles558
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles558
namespace InitE.SmallStages.Compact558
theorem optimize558_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source558, oracle558) = optimized558 := by
  exact optimize558_eq.trans (by with_unfolding_all rfl)
#print axioms optimize558_exact
end InitE.SmallStages.Compact558
