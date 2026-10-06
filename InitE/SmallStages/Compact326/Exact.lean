import InitE.SmallStages.Compact326.Complete
import InitE.SmallStages.Oracles326
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles326
namespace InitE.SmallStages.Compact326
theorem optimize326_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source326, oracle326) = optimized326 := by
  exact optimize326_eq.trans (by with_unfolding_all rfl)
#print axioms optimize326_exact
end InitE.SmallStages.Compact326
