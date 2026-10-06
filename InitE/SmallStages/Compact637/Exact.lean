import InitE.SmallStages.Compact637.Complete
import InitE.SmallStages.Oracles637
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles637
namespace InitE.SmallStages.Compact637
theorem optimize637_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source637, oracle637) = optimized637 := by
  exact optimize637_eq.trans (by with_unfolding_all rfl)
#print axioms optimize637_exact
end InitE.SmallStages.Compact637
