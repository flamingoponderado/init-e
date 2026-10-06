import InitE.CompactComputation
import InitE.SmallStages.Compact470.Complete
import InitE.SmallStages.Oracles470
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.WordStages InitE.SmallStages.Oracles470
namespace InitE.SmallStages.Compact470
theorem optimize470_exact : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source470, oracle470) = optimized470 := by
  exact optimize470_eq.trans (by kernel_rfl)
#print axioms optimize470_exact
end InitE.SmallStages.Compact470
