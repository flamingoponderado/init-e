import InitE.SmallStages.Compact403.Complete
import InitE.SmallStages.Oracles403
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles403
namespace InitE.SmallStages.Compact403
theorem optimize403_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source403, oracle403) = optimized403 := by
  exact optimize403_eq.trans (by with_unfolding_all rfl)
#print axioms optimize403_exact
end InitE.SmallStages.Compact403
