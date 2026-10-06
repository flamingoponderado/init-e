import InitE.SmallStages.Compact860.Complete
import InitE.SmallStages.Oracles860
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles860
namespace InitE.SmallStages.Compact860
theorem optimize860_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source860, oracle860) = optimized860 := by
  exact optimize860_eq.trans (by with_unfolding_all rfl)
#print axioms optimize860_exact
end InitE.SmallStages.Compact860
