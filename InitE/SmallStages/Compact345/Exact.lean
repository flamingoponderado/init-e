import InitE.SmallStages.Compact345.Complete
import InitE.SmallStages.Oracles345
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles345
namespace InitE.SmallStages.Compact345
theorem optimize345_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source345, oracle345) = optimized345 := by
  exact optimize345_eq.trans (by with_unfolding_all rfl)
#print axioms optimize345_exact
end InitE.SmallStages.Compact345
