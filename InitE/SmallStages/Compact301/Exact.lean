import InitE.SmallStages.Compact301.Complete
import InitE.SmallStages.Oracles301
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles301
namespace InitE.SmallStages.Compact301
theorem optimize301_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source301, oracle301) = optimized301 := by
  exact optimize301_eq.trans (by with_unfolding_all rfl)
#print axioms optimize301_exact
end InitE.SmallStages.Compact301
